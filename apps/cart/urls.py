# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/9/7 13:50'


from django.urls import path,re_path
from .views import AddCartView,CartListView,ToBuyView


app_name = 'cart'


urlpatterns = [
    re_path(r'^add_cart/$',AddCartView.as_view(), name='add_cart'),
    re_path(r'^$',ToBuyView.as_view(), name='to_buy'),
    re_path(r'^list/$',CartListView.as_view(), name='cart_list'),
]