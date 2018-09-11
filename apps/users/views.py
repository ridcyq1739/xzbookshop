from django.shortcuts import render, HttpResponse, render_to_response
from django.views.decorators.csrf import csrf_exempt
from django.views.generic import View
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate,login,logout
from django.http import HttpResponseRedirect
from django.urls import reverse
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

from .forms import RegisterForm, LoginForm, UserForm, SiteForm
from .models import UserProfile
from order.models import Order
from books.models import Books
from cart.models import Cart
from utils.mixin_utils import LoginRequiredMixin
# Create your views here.
class CustomBackend(ModelBackend):
    def authenticate(self,  username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username)|Q(phone=username)|Q(nick_name=username))
            if user.check_password(password):
                return user
        except Exception as e:
            return None



class RegisterView(View):
    """
    注册
    """
    def get(self, request):
        form = RegisterForm
        return render(request, 'register.html', {'form':form})

    def post(self,request):
        form = RegisterForm(request.POST)
        if form.is_valid():
            phone = request.POST.get("phone", "")
            if UserProfile.objects.filter(phone=phone):
                return render(request, 'register.html', {"phone_msg": "手机已存在"})
            else:
                password1 = request.POST.get("password1", "")
                password2 = request.POST.get("password2", "")
                if password1 == password2:
                    email = request.POST.get("email", "")
                    password = make_password(password1)
                    user = UserProfile()
                    user.nick_name,user.phone,user.username = phone,phone,phone
                    user.password = password
                    user.email = email
                    user.save()
                    return render(request, 'login.html', {})
                return render(request, 'register.html', {"pwd_msg":"注册失败,密码不一致"})
        else:
            return render(request, "register.html", {"form": form})


class LoginView(View):
    """
    登录
    """
    def get(self, request):
        form = LoginForm()
        return render(request, 'login.html', {})

    def post(self, request):
        form = LoginForm(request.POST)
        if form.is_valid():
            username = request.POST.get("username", "")
            if UserProfile.objects.filter(username=username):
                password = request.POST.get("password", "")
                user = authenticate(username=username, password=password)
                if user is None:
                    return render(request, 'login.html',{'msg':'密码错误'})
                else:
                    login(request, user)
                    return HttpResponseRedirect(reverse("index"))

            return render(request, 'login.html', {'ph_error': '用户不存在'})
        return render(request, 'login.html', {'form': form})


class LogoutView(View):
    """
    退出
    """
    def get(self,request):
        logout(request)
        return HttpResponseRedirect(reverse("index"))


class UserInfoView(LoginRequiredMixin,View):
    """
    个人中心
    """
    def get(self,request):
        form = UserForm()
        books = Books.objects.all()
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
        return render(request,'user_info.html',{'form':form,'books':books})

    def post(self,request):
        form = UserForm(request.POST)
        books = Books.objects.all()
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
        if form.is_valid():
            user = UserProfile.objects.get(id=request.user.id)
            nick_name = request.POST.get("nick_name")
            phone = request.POST.get("phone")
            address = request.POST.get("address")
            if UserProfile.objects.filter(phone=phone):
                return render(request,'user_info.html',{'form':form,'msg':'手机号已存在'})
            else:
                user.nick_name = nick_name
                user.address = address
                if phone != '':
                    user.username, user.phone = phone,phone
                    user.save()
                else:
                    user.save()
            return HttpResponseRedirect('/users/info/')
        return render(request,'user_info.html',{'form':form,'books':books})


class UserOrderView(View):
    """
    个人订单
    """
    def get(self,request):
        no_order_list = Order.objects.filter(Q(user_id=request.user.id)&Q(is_pay=False))
        yes_order_list = Order.objects.filter(Q(user_id=request.user.id) & Q(is_pay=True))
        books = Books.objects.all()
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))

        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(yes_order_list, 12, request=request)

        yes_order_list = p.page(page)
        return render(request,'user_order.html',{'books':books,'no_order_list':no_order_list,'yes_order_list':yes_order_list})


class UserSiteView(View):
    """
    收货地址
    """
    def get(self,request):
        form = SiteForm()
        books = Books.objects.all()
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
        return render(request,'user_site.html',{'form':form,'books':books})

    def post(self,request):
        form = SiteForm(request.POST)
        books = Books.objects.all()
        q = request.GET.get("q", "")
        if q:
            books = Books.objects.filter(Q(title__icontains=q) | Q(author__icontains=q))
        if form.is_valid():
            user = UserProfile.objects.get(id=request.user.id)
            s_name = request.POST.get("s_name","")
            s_address = request.POST.get("s_address", "")
            s_phone = request.POST.get("s_phone", "")
            postcode = request.POST.get("postcode", "")
            user.s_phone = s_phone
            user.s_address = s_address
            user.s_name = s_name
            user.postcode = postcode
            user.save()
            return HttpResponseRedirect('/users/site/')
        return render(request, 'user_site.html', {'form': form,'books':books})



def page_not_found(request):

    return render_to_response('404.html')



def page_error(request):

    return render_to_response('500.html')

