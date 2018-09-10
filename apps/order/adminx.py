# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/9/7 17:54'


import xadmin
from .models import Order


class OrderAdmin(object):
    list_display = ['user', 'count', 'book', 'is_pay', 'add_time']
    search_fields = ['user', 'count', 'book', 'is_pay', 'add_time']
    list_filter = ['user', 'count', 'book', 'is_pay', 'add_time']


xadmin.site.register(Order, OrderAdmin)