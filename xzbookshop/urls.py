"""xzbookshop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,re_path,include
from xzbookshop.settings import MEDIA_ROOT,STATIC_ROOT
from django.views.static import serve
from django.views.generic.base import RedirectView
import xadmin
from books.views import IndexView
from order.views import page1, page2



urlpatterns = [
    #xadmin配置
    path('xadmin/', xadmin.site.urls),

    #首页
    re_path(r'^$', IndexView.as_view(), name='index'),

    #用户url
    re_path(r'^users/', include('users.urls',namespace='users')),

    #图书url
    re_path(r'^books/', include('books.urls',namespace='books')),

    #购物车
    re_path(r'^cart/', include('cart.urls',namespace='cart')),

    #订单
    re_path(r'^order/', include('order.urls',namespace='order')),

    #配置ueditor
    re_path(r'^ueditor/',include('DjangoUeditor.urls')),

    #静态文件目录配置
    re_path(r'^static/(?P<path>.*)$',serve,{"document_root":STATIC_ROOT}),

    #上传文件目录配置
    re_path(r'^media/(?P<path>.*)$',serve,{"document_root":MEDIA_ROOT}),

    #支付
    re_path(r'^page1/', page1, name='page1'),
    re_path(r'^page2/', page2 , name='page2'),

    #图标
    re_path(r'^favicon.ico$',RedirectView.as_view(url=r'static/favicon.ico')),  
]

#handler404 = "users.views.page_not_found"
handler500 = "users.views.page_error"
