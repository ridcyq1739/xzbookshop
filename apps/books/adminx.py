# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/8/28 16:23'

import xadmin
from .models import Books,Category,Review,Comment


class BooksAdmin(object):
    list_display = ['title', 'author', 'price','storage','click','category','add_time']
    search_fields =['title','author', 'price','storage','click','category','add_time']
    list_filter = ['title', 'author', 'price','storage','click','category','add_time']
    style_fields = {"content": "ueditor"}


class CategoryAdmin(object):
    list_display = ['category', 'add_time']
    search_fields = ['category', 'add_time']
    list_filter = ['category', 'add_time']


class ReviewAdmin(object):
    list_display = ['title','author', 'add_time']
    search_fields = ['title','author', 'add_time']
    list_filter = ['title','author', 'add_time']
    style_fields = {"content": "ueditor"}


class CommentAdmin(object):
    list_display = ['user', 'comment','book', 'add_time']
    search_fields = ['user', 'comment','book', 'add_time']
    list_filter = ['user', 'comment','book', 'add_time']


xadmin.site.register(Books,BooksAdmin)
xadmin.site.register(Category,CategoryAdmin)
xadmin.site.register(Review,ReviewAdmin)
xadmin.site.register(Comment,CommentAdmin)