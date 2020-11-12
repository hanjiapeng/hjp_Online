from users.views import LoginView,RegisterView,ForgetPwdView,ResetView,ModifyPwdView,UserinfoView,UploadImageView
from django.urls import path,re_path
from .views import quit
from . import views

app_name = 'users'


urlpatterns = [
    path('login/',LoginView.as_view(),name='login'),
    path('register/',RegisterView.as_view(),name='register'),
    path('forget/',ForgetPwdView.as_view(),name='forget'),
    re_path('reset/(?P<active_code>.*)/', ResetView.as_view(), name='reset_pwd'),
    path('modify/',ModifyPwdView.as_view(),name='modify'),
    path('info/',UserinfoView.as_view(),name='user_info'),
    path('image/upload',UploadImageView.as_view(),name='image_upload'),
    path('quit/',views.quit,name='quit'),
]
