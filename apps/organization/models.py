from django.db import models
from datetime import datetime
# Create your models here.


# 城市表
class CityDict(models.Model):
    name = models.CharField(verbose_name='城市',max_length=20)
    desc = models.CharField(verbose_name='描述',max_length=200)
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        db_table = 'citydict'
        verbose_name = '城市'
        verbose_name_plural= verbose_name

    def __str__(self):
        return self.name



# 课程机构表
class CourseOrg(models.Model):
    ORG_CHOICES = (
        ('pxjg','培训机构'),
        ('gx','高校'),
        ('gr','个人')
    )
    name = models.CharField(verbose_name='机构名称',max_length=50)
    desc = models.TextField(verbose_name='机构描述')
    category = models.CharField(max_length=20, choices=ORG_CHOICES, verbose_name='机构类别', default='pxjg')
    click_nums = models.IntegerField(verbose_name='点击数',default=0)
    fav_nums = models.IntegerField(verbose_name='收藏数',default=0)
    students = models.IntegerField(default=0,verbose_name='学习人数')
    course_nums = models.IntegerField(default=0,verbose_name='课程数')
    image = models.ImageField(verbose_name='封面图',upload_to='org/%Y%m',max_length=100)
    address = models.CharField(verbose_name='机构地址',max_length=150,)
    city = models.ForeignKey(CityDict,verbose_name='所在城市',on_delete=models.CASCADE)
    tag = models.CharField(max_length=10,default='全国知名',verbose_name='机构标签')
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        db_table = 'courseorg'
        verbose_name = '课程机构'
        verbose_name_plural = verbose_name

    def get_teacher_nums(self):
        # 获取机构的教师数
        return self.teacher_set.all().count()

    def __str__(self):
        return self.name


# 教师表
class Teacher(models.Model):
    org = models.ForeignKey(CourseOrg,verbose_name='所属机构',on_delete=models.CASCADE)
    name = models.CharField(verbose_name='教师名',max_length=50)
    work_years = models.IntegerField(verbose_name='工作年限',default=0)
    work_company = models.CharField(verbose_name='就职公司',max_length=50)
    work_position = models.CharField(verbose_name='公司职位',max_length=50)
    points = models.CharField(verbose_name='教学特点',max_length=50)
    click_nums = models.IntegerField(verbose_name='点击数',default=0)
    fav_nums = models.IntegerField(verbose_name='收藏数',default=0)
    image = models.ImageField(default='',upload_to='teacher/%Y/%m',max_length=100,verbose_name='头像')
    take_office = models.CharField(max_length=100,default='',verbose_name='就职')
    teacher_age = models.IntegerField(default=25,verbose_name='年龄')
    add_time = models.DateTimeField(default=datetime.now)

    def get_course_nums(self):
        return self.course_set.all().count()

    class Meta:
        db_table = 'teacher'
        verbose_name = '教师'
        verbose_name_plural = verbose_name

    def __str__(self):
        return "[{0}]的教师: {1}".format(self.org, self.name)




