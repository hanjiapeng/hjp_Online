import xadmin
from .models import Course,Lesson,Video,CourseResource


class CourseAdmin(object):
    list_display = ['name','desc','detail','learn_times','add_time']
    search_fields = ['name','desc','detail','degree']
    list_filter = ['name','desc','detail','degree','learn_times']
    ordering = ['-add_time']
    readonly_fields = []


class LessonAdmin(object):
    list_display = ['course','name','add_time']
    search_fields = ['course','name']
    # course_name是根据课程名称过滤
    list_filter = ['course','name','add_time']
    ordering = ['-add_time']


class VideoAdmin(object):
    list_display = ['lesson','name','add_time']
    search_fields = ['lesson','name']
    list_filter = ['lesson','name','add_time']
    ordering = ['-add_time']


class CourseResourceAdmin(object):
    list_display = ['course','name','download','add_time']
    search_fields = ['course','name','download']
    list_filter = ['course','name','download','add_time']
    ordering = ['-add_time']


xadmin.site.register(Course,CourseAdmin)

xadmin.site.register(Lesson,LessonAdmin)

xadmin.site.register(Video,VideoAdmin)

xadmin.site.register(CourseResource,CourseResourceAdmin)

