# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/8/28 20:58'


from django import forms
from .models import UserProfile


#注册表单
class RegisterForm(forms.Form):
    phone = forms.CharField(required=True,min_length=5,max_length=20)
    password1 = forms.CharField(required=True,min_length=8,max_length=20)
    password2 = forms.CharField(required=True,min_length=8,max_length=20)
    email = forms.EmailField(required=True)


#登录表单
class LoginForm(forms.Form):
    username = forms.CharField(required=True,min_length=5)
    password = forms.CharField(required=True,min_length=6)


#个人信息表单
class UserForm(forms.Form):
    nick_name = forms.CharField(max_length=20)
    phone = forms.CharField(max_length=11,required=False)
    address = forms.CharField(max_length=200)


#收货地址表单
class SiteForm(forms.Form):
    s_name = forms.CharField(required=True,max_length=40)
    s_address = forms.CharField(required=True,max_length=200)
    postcode = forms.CharField(required=True,max_length=6)
    s_phone = forms.CharField(required=True,max_length=11)