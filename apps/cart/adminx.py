# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/9/7 12:59'

import xadmin
from .models import Cart


class CartAdmin(object):
    list_display = ['user', 'count', 'book', 'add_time']
    search_fields = ['user', 'count', 'book', 'add_time']
    list_filter = ['user', 'count', 'book', 'add_time']


xadmin.site.register(Cart,CartAdmin)