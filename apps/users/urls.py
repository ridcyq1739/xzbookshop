# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/8/28 20:26'

from django.urls import path,re_path
from .views import RegisterView,LoginView,LogoutView,UserInfoView,UserOrderView,UserSiteView


app_name = 'users'

urlpatterns = [
    re_path(r'^register/$', RegisterView.as_view(), name='register'),
    re_path(r'^login/$', LoginView.as_view(), name='login'),
    re_path(r'^logout/$', LogoutView.as_view(), name='logout'),
    re_path(r'^info/$', UserInfoView.as_view(), name='info'),
    re_path(r'^order/$', UserOrderView.as_view(), name='order'),
    re_path(r'^site/$', UserSiteView.as_view(), name='site'),

]