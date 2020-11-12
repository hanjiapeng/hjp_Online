from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.
from datetime import datetime
from DjangoUeditor.models import UEditorField


# 用户表
class UserProfile(AbstractUser):
    gender_choices = (
        ('male', '男'),
        ('female', '女')
    )

    nick_name = models.CharField(max_length=50,default='',verbose_name='昵称')
    birthday = models.DateField(null=True,blank=True,verbose_name='生日')
    gender = models.CharField(max_length=10,choices=gender_choices,default='male',verbose_name='性别')
    address = UEditorField(max_length=100,null=True,blank=True,verbose_name='地址')
    mobile = models.CharField(max_length=11,null=True,blank=True,verbose_name='手机号')
    image = models.ImageField(upload_to='image/%Y%m',default='image/default.png',max_length=100)

    class Meta:
        db_table = 'userprofile'
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username


# 邮箱验证码
class EmailVerifyRecord(models.Model):
    send_choices = (
        ('register','注册'),
        ('forget','找回密码')
    )
    code = models.CharField(max_length=20,verbose_name='验证码')
    email = models.EmailField(max_length=50,verbose_name='邮箱')
    send_type = models.CharField(choices=send_choices,max_length=10)
    send_time = models.DateTimeField(default=datetime.now)

    class Meta:
        db_table = 'emailverifyrecord'
        verbose_name = '邮箱验证码'
        verbose_name_plural = verbose_name


# Banner 轮播图
class Banner(models.Model):
    title = models.CharField(max_length=100,verbose_name='标题')
    image = models.ImageField(upload_to='banner/%Y%m',max_length=100,verbose_name='轮播图')
    url = models.URLField(max_length=200,verbose_name='访问地址')
    index = models.IntegerField(default=100,verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        db_table = 'banner'
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name

















































