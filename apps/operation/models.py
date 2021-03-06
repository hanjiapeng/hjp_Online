from django.db import models
from datetime import datetime
from users.models import UserProfile
from course.models import Course
# Create your models here.


# 用户咨询表
class UserAsk(models.Model):
    name = models.CharField(verbose_name='姓名',max_length=20)
    mobile = models.CharField(verbose_name='手机',max_length=11)
    course_name = models.CharField(verbose_name='课程名',max_length=50)
    add_time = models.DateTimeField(verbose_name='添加时间',default=datetime.now)

    class Meta:
        db_table = 'userask'
        verbose_name = '用户咨询'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 用户消息表
class UserMessage(models.Model):
    user = models.IntegerField(verbose_name='接受用户',default=0)
    message = models.CharField(verbose_name='消息内容',max_length=500)
    has_read = models.BooleanField(verbose_name='是否已读',default=False)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)

    class Meta:
        db_table = 'usermessage'
        verbose_name = '用户消息'
        verbose_name_plural = verbose_name


# 用户评论表
class CourseComments(models.Model):
    user = models.ForeignKey(UserProfile,verbose_name='用户',on_delete=models.CASCADE)
    course = models.ForeignKey(Course,verbose_name='课程',on_delete=models.CASCADE)
    comments = models.CharField(verbose_name='评论',max_length=200)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)

    class Meta:
        db_table = 'coursecomments'
        verbose_name = '课程评论'
        verbose_name_plural = verbose_name


# 用户学习的课程表
class UserCourse(models.Model):
    user = models.ForeignKey(UserProfile,verbose_name='用户',on_delete=models.CASCADE)
    course = models.ForeignKey(Course,verbose_name='课程',on_delete=models.CASCADE)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)

    class Meta:
        db_table = 'usercourse'
        verbose_name = '用户课程'
        verbose_name_plural = verbose_name


# 用户收藏表
class UserFavorite(models.Model):
    FAV_TYPE = (
        (1,'课程'),
        (2,'课程机构'),
        (3,'讲师')
    )

    user = models.ForeignKey(UserProfile,verbose_name='用户',on_delete=models.CASCADE)
    fav_id = models.IntegerField(verbose_name='数据id',default=0)
    fav_type = models.IntegerField(verbose_name='收藏类型',choices=FAV_TYPE,default=1)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)

    class Meta:
        db_table = 'userfavorite'
        verbose_name = '用户收藏'
        verbose_name_plural = verbose_name