# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/9/7 13:50'


from django.urls import path,re_path
from .views import OrderListView,OrderView


app_name = 'order'


urlpatterns = [
    re_path(r'^$', OrderView.as_view(), name='order'),
    re_path(r'^list/$', OrderListView.as_view(), name='list'),
]