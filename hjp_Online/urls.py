import xadmin
from django.urls import path,include,re_path
from django.views.static import serve
from hjp_Online.settings import MEDIA_ROOT
from django.views.generic import TemplateView
from users.views import ActiveUserView

urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    path('media/<path:path>',serve,{'document_root':MEDIA_ROOT}),  # 将文件或图片保存到media文件夹中路由
    path('ueditor/',include('DjangoUeditor.urls')),  # 富文本编辑器路由
    path('',TemplateView.as_view(template_name='index.html'),name='index'),  # 访问首页路由
    path('',include('users.urls'),name='login'),
    path('captcha/',include('captcha.urls')),  # 获取验证码路由
    re_path('active/(?P<active_code>.*)/',ActiveUserView.as_view(),name='user_active'),  # 发送邮箱路由
    path('org/',include('organization.urls',namespace='org')),
    path('course/',include('course.urls',namespace='course')),
    path('users/',include('users.urls',namespace='users')),

]

