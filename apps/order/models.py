from django.db import models
from datetime import datetime
# Create your models here.


class Order(models.Model):
    """
    订单
    """
    order_id = models.CharField(max_length=100,verbose_name="订单编号",default="")
    user = models.ForeignKey('users.UserProfile', on_delete=models.CASCADE, verbose_name="用户")
    book = models.ForeignKey('books.Books', on_delete=models.CASCADE, verbose_name="书")
    count = models.CharField(max_length=1000, verbose_name="数量")
    fare = models.DecimalField(max_digits=5,decimal_places=2,verbose_name=u"运费",default=10.00)
    is_pay = models.BooleanField(verbose_name="是否支付",default=False)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = "订单"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.user.nick_name

    def get_total(self):
        return int(self.count) * self.book.price
