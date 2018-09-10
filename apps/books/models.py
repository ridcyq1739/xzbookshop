from django.db import models
from DjangoUeditor.models import UEditorField
from datetime import datetime
from ckeditor.fields import RichTextField

from users.models import UserProfile
# Create your models here.


class Category(models.Model):
    """
    书籍类型
    """
    category = models.CharField(max_length=20, verbose_name='类型')
    tag = models.CharField(max_length=20, default='', verbose_name='标签')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"类型"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.category


class Books(models.Model):
    """
    书籍
    """
    title = models.CharField(max_length= 20,verbose_name=u"标题")
    author = models.CharField(max_length= 20,default='', verbose_name=u"作者")
    image = models.ImageField(upload_to="goods/%Y/%m",blank=True, null=True, verbose_name=u"图片")
    price = models.DecimalField(max_digits=5,decimal_places=2,verbose_name=u"价格")
    click = models.IntegerField(default=0,verbose_name=u"点击数")
    desc = models.CharField(max_length=100,verbose_name=u"描述")
    storage = models.CharField(max_length=6,verbose_name=u"库存")
    content = UEditorField(verbose_name=u"详情", width=600, height=300, imagePath="books/ueditor/",
                           filePath="books/ueditor/",
                           default='')
    category = models.ForeignKey(Category,verbose_name=u"类型",on_delete=models.CASCADE)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = u"书籍"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title

    def get_comment_num(self):
        return self.comment_set.all().count()


class Review(models.Model):
    """
    书评
    """
    title = models.CharField(max_length=50,verbose_name="标题")
    author = models.CharField(max_length=20,verbose_name="作者")
    content = UEditorField(verbose_name=u"内容", width=600, height=300, imagePath="books/ueditor/",
                           filePath="reviews/ueditor/",
                           default='')
    click_num = models.IntegerField(default=0,verbose_name=u"点击数")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = "书评"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title


class Comment(models.Model):
    """
    评论
    """
    user = models.ForeignKey(UserProfile,verbose_name="用户",on_delete=models.CASCADE)
    comment = models.CharField(max_length=200,verbose_name="评论")
    book = models.ForeignKey(Books,verbose_name="书籍",on_delete=models.CASCADE)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u"添加时间")

    class Meta:
        verbose_name = "评论"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.user.nick_name