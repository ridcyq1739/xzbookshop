# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/8/28 20:26'

from django.urls import path,re_path
from .views import ListView, ClassifyListView,DetailView,ReviewListView,ReviewDetailView,CommentView


app_name = 'books'

urlpatterns = [
    re_path(r'^list/$',ListView.as_view(), name='list'),
    re_path(r'^list/(?P<category_id>\d+)/$',ClassifyListView.as_view(),name='c_list'),
    re_path(r'^detail/(?P<book_id>\d+)/$',DetailView.as_view(),name='detail'),
    re_path(r'^reviewlist/$',ReviewListView.as_view(),name='r_list'),
    re_path(r'^reviewdetail/(?P<review_id>\d+)/$',ReviewDetailView.as_view(),name='r_detail'),
    re_path(r'^commentdetail/(?P<book_id>\d+)/$',CommentView.as_view(),name='comment'),
]