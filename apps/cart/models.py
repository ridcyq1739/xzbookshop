from django.db import models
from datetime import datetime
# Create your models here.


class Cart(models.Model):
    """
    购物车
    """
    user = models.ForeignKey('users.UserProfile',on_delete=models.CASCADE,verbose_name="用户")
    book = models.ForeignKey('books.Books', on_delete=models.CASCADE,verbose_name="书")
    count = models.CharField(max_length=1000,verbose_name="数量")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = "购物车"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.user.nick_name

    def total(self):
        total = self.book.price * int(self.count)
        return total
