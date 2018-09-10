from django.shortcuts import render, redirect, HttpResponse
from django.views.generic import View
from django.db.models import Q
from utils.alipay import AliPay
import json
import time

from books.models import Books
from .models import Order
from cart.models import Cart

# Create your views here.


class OrderView(View):
    """
    订单页面
    """
    def get(self,request):
        books = Books.objects.all()
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
        cart_list = Cart.objects.filter(user_id=request.user.id)
        order_list = Order.objects.filter(user_id=request.user.id, is_pay=False)

        return render(request, 'order.html', {'order_list': order_list, 'books': books})


class OrderListView(View):
    """
    订单列表
    """
    def get(self,request):
        if request.user.is_authenticated:
            books = Books.objects.all()
            q = request.GET.get("q", "")
            if q:
                books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
            cart_list = Cart.objects.filter(user_id=request.user.id)
            order = Order()
            for i in cart_list:
                order.user_id = i.user_id
                order.book_id = i.book_id
                order.count = i.count
                order.save()
                print(order.add_time)
            Cart.objects.filter(user_id=request.user.id).delete()

            order_list = Order.objects.filter(user_id=request.user.id,is_pay=False)

            return render(request, 'order.html', {'order_list':order_list,'books':books})

    def post(self,request):
        if request.user.is_authenticated:
            books = Books.objects.all()
            q = request.GET.get("q", "")
            if q:
                books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
            order_id = request.POST.get('order_id', '')
            order = Order.objects.get(id=int(order_id))
            if order:
                order.delete()

            order_list = Order.objects.filter(user_id=request.user.id, is_pay=False)

            return render(request, 'order.html', {'order_list':order_list,'books':books})


def get_ali_object():
    # 沙箱环境地址：https://openhome.alipay.com/platform/appDaily.htm?tab=info
    app_id = "2016091700528904"  #  APPID （沙箱应用）

    # 支付完成后，支付偷偷向这里地址发送一个post请求，识别公网IP,如果是 192.168.20.13局域网IP ,支付宝找不到，def page2() 接收不到这个请求
    # notify_url = "http://47.94.172.250:8804/page2/"
    notify_url = "http://127.0.0.1:8888/page2/"

    # 支付完成后，跳转的地址。
    return_url = "http://127.0.0.1:8888/page2/"

    merchant_private_key_path = "key/alipay_pri_2048.txt" # 应用私钥
    alipay_public_key_path = "key/alipay_pub_2048.txt"  # 支付宝公钥

    alipay = AliPay(
        appid=app_id,
        app_notify_url=notify_url,
        return_url=return_url,
        app_private_key_path=merchant_private_key_path,
        alipay_public_key_path=alipay_public_key_path,  # 支付宝的公钥，验证支付宝回传消息使用，不是你自己的公钥
        debug=True,  # 默认False,
    )
    return alipay


def page1(request):
    # 根据当前用户的配置，生成URL，并跳转。
    money = float(request.POST.get('money'))
    alipay = get_ali_object()

    # 生成支付的url
    query_params = alipay.direct_pay(
        subject="行致书屋",  # 商品简单描述
        out_trade_no="x2" + str(time.time()),  # 用户购买的商品订单号（每次不一样） 20180301073422891
        total_amount=money,  # 交易金额(单位: 元 保留俩位小数)
    )

    pay_url = "https://openapi.alipaydev.com/gateway.do?{0}".format(query_params)  # 支付宝网关地址（沙箱应用）

    return redirect(pay_url)


def page2(request):
    alipay = get_ali_object()
    if request.method == "POST":
        # 检测是否支付成功
        # 去请求体中获取所有返回的数据：状态/订单号
        from urllib.parse import parse_qs
        # name&age=123....
        body_str = request.body.decode('utf-8')
        post_data = parse_qs(body_str)

        post_dict = {}
        for k, v in post_data.items():
            post_dict[k] = v[0]

        # post_dict有10key： 9 ，1
        sign = post_dict.pop('sign', None)
        status = alipay.verify(post_dict, sign)
        print('------------------开始------------------')
        print('POST验证', status)
        print(post_dict)
        out_trade_no = post_dict['out_trade_no']

        # 修改订单状态
        # models.Order.objects.filter(trade_no=out_trade_no).update(status=2)
        print('------------------结束------------------')
        # 修改订单状态：获取订单号
        return HttpResponse('POST返回')

    else:
        params = request.GET.dict()
        sign = params.pop('sign', None)
        status = alipay.verify(params, sign)
        order_list = Order.objects.filter(is_pay=False)
        for i in order_list:
            i.is_pay = True
            i.save()
        print('==================开始==================')
        print('GET验证', status)
        print('==================结束==================')
        return HttpResponse('支付成功')

