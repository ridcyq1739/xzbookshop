from django.shortcuts import render
from .models import Cart
from django.http import HttpResponseRedirect,JsonResponse,HttpResponse
from django.urls import reverse
from django.views.generic import View
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.db.models import Q

from books.models import Books

# Create your views here.


class AddCartView(View):
    '''
    加入购物车
    '''
    def post(self,request):
        if request.user.is_authenticated:
            cart = Cart()
            book = request.POST.get('book_id','')
            count = request.POST.get('count', '')
            if Cart.objects.filter(book_id=book,user_id=request.user.id):
                cart = Cart.objects.get(book_id=book,user_id=request.user.id)
                cart.count = int(cart.count) + int(count)
                cart.save()
            else:
                cart.user_id = request.user.id
                cart.book_id = book
                cart.count = count
                cart.save()
            return JsonResponse(data='{"status": "success"}', safe=False)
        else:
            return JsonResponse(data='{"status": "fail", "error_msg": "未登录"}', safe=False)


class ToBuyView(View):
    """
    立即购买
    """
    def post(self,request):
        if request.user.is_authenticated:
            cart = Cart()
            book = request.POST.get('book_id', '')
            count = request.POST.get('count', '')
            if Cart.objects.filter(book_id=book, user_id=request.user.id):
                cart = Cart.objects.get(book_id=book, user_id=request.user.id)
                cart.count = int(cart.count) + int(count)
                cart.save()
            else:
                cart.user_id = request.user.id
                cart.book_id = book
                cart.count = count
                cart.save()
            return HttpResponseRedirect(reverse('cart:cart_list'))



class CartListView(View):
    '''
    订单列表
    '''
    def get(self,request):
        if request.user.is_authenticated:
            cart_list = Cart.objects.filter(user_id=request.user.id)
            books = Books.objects.all()
            q = request.GET.get("q", "")
            if q:
                books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
            return render(request, 'cart.html', {
                'cart_list':cart_list,
                'books':books
            })
    def post(self,request):
        if request.user.is_authenticated:
            books = Books.objects.all()
            q = request.GET.get("q", "")
            if q:
                books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
            cart_list = Cart.objects.filter(user_id=request.user.id)
            cart_id = request.POST.get('cart','')
            cart = Cart.objects.get(id=cart_id)
            if cart:
                cart.delete()
            return render(request,'cart.html',{
                'cart_list': cart_list,
                'books':books,
            })


