from django.db import models
from django.contrib.auth.models import AbstractUser
from datetime import datetime
# Create your models here.


class UserProfile(AbstractUser):
    """
    用户
    """
    nick_name = models.CharField(max_length=20,verbose_name=u"用户姓名")
    password = models.CharField(max_length=128,verbose_name=u"用户密码")
    email = models.EmailField(max_length=40,verbose_name=u"邮箱")
    address = models.CharField(max_length=200,verbose_name=u"地址",default='')
    postcode = models.CharField(max_length=6,verbose_name=u"邮编",default='')
    phone = models.CharField(max_length=11,verbose_name=u"手机",default='')
    s_name = models.CharField(max_length=40, verbose_name=u"收货人", default='')
    s_phone = models.CharField(max_length=11,verbose_name=u"收货手机",default='')
    s_address = models.CharField(max_length=200,verbose_name=u"收货地址",default='')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"用户"
        verbose_name_plural = verbose_name

    def __str__(self):
        return  self.nick_name

    def get_cart_num(self):
        return self.cart_set.count()

    def get_total(self):
        total = 0
        for i in self.cart_set.all():
            total += (i.book.price * int(i.count))
        return total

    def get_order_num(self):
        return self.order_set.filter(is_pay=False).count()

    def get_total_order(self):
        total = 0
        for i in self.order_set.filter(is_pay=False):
            total += (i.book.price * int(i.count))
        return total

    def get_total_all(self):
        total = 0
        for i in self.order_set.filter(is_pay=False):
            total += (i.book.price * int(i.count))
        total += 10
        return total

class Banner(models.Model):
    """
    轮播图
    """
    title = models.CharField(max_length=20,verbose_name=u"标题",default="")
    banner = models.ImageField(upload_to="banner/",verbose_name=u"轮播图")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"轮播图"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title
