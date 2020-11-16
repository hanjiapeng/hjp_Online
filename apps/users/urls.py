from users.views import LoginView,RegisterView,ForgetPwdView,ResetView,ModifyPwdView,UserinfoView,UploadImageView,UpdatePwdView,SendEmailCodeView,UpdateEmailView,MyCourseView,MyFavTeacherView,MyFavCourseView,MyFavOrgView,MyMessageView,IndexView


from django.urls import path,re_path
from .views import quit
from . import views

app_name = 'users'


urlpatterns = [
    path('', IndexView.as_view(), name="index"),
    path('login/',LoginView.as_view(),name='login'),
    path('register/',RegisterView.as_view(),name='register'),
    path('forget/',ForgetPwdView.as_view(),name='forget'),
    re_path('reset/(?P<active_code>.*)/', ResetView.as_view(), name='reset_pwd'),
    path('modify/',ModifyPwdView.as_view(),name='modify'),
    path('info/',UserinfoView.as_view(),name='user_info'),
    path('image/upload',UploadImageView.as_view(),name='image_upload'),
    path('update/pwd',UpdatePwdView.as_view(),name='update_pwd'),
    path('sendmail_code/',SendEmailCodeView.as_view(),name='sendmail_code'),
    path('update_email/',UpdateEmailView.as_view(),name='update_email'),
    path('my_course/',MyCourseView.as_view(),name='my_course'),
    path('myfav/org/', MyFavOrgView.as_view(), name="myfav_org"),
    path('myfav/teacher/',MyFavTeacherView.as_view(),name="myfav_teacher"),
    path('myfav/course/',MyFavCourseView.as_view(),name="myfav_course"),
    path('my_message/', MyMessageView.as_view(), name="my_message"),
    path('quit/',views.quit,name='quit'),
]
