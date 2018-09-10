# -*- coding:utf-8 -*-
__author__ = 'kreg'
__date__ = '2018/8/28 16:24'

import xadmin
from xadmin import views
from .models import Banner,UserProfile


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    site_title = "行致书屋管理系统"
    site_footer = "行致书屋管理系统"
    menu_style = "accordion"


class BannerAdmin(object):
    list_display = ['title','banner','add_time']
    search_fields = ['title','banner','add_time']
    list_filter = ['title','banner','add_time']


xadmin.site.register(Banner,BannerAdmin)
xadmin.site.register(views.BaseAdminView,BaseSetting)
xadmin.site.register(views.CommAdminView,GlobalSettings)