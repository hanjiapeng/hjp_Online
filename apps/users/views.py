from django.shortcuts import render,redirect,reverse,HttpResponse,HttpResponseRedirect
from django.contrib.auth import authenticate,login,logout

from django.contrib.auth.backends import ModelBackend
from users.models import UserProfile,EmailVerifyRecord,Banner
from django.db.models import Q
from django.views.generic.base import View
from users.forms import LoginForm,RegisterForm,ForgetPwdForm,ModifyPwdForm,UploadImageForm,UserInfoForm
from django.contrib.auth.hashers import make_password
from apps.utils.email_send import send_register_email
from apps.utils.mixin_utils import LoginRequireMixin
import json
from operation.models import UserCourse,UserFavorite,UserMessage
from course.models import CourseOrg,Teacher,Course
from pure_pagination.paginator import PageNotAnInteger,Paginator
from django.shortcuts import render_to_response
# Create your views here.


def pag_not_found(request):
    # 全局404处理函数
    # response = render_to_response('errors/../../templates/404.html', {})
    # response.status_code = 404
    # return response
    return render(request,'404.html',status=404)



def page_error(request):
    # 全局500处理函数
    from django.shortcuts import render_to_response
    response = render_to_response('errors/../../templates/500.html', {})
    response.status_code = 500
    return response


class IndexView(View):
    '''首页'''
    def get(self,request):
        #轮播图

        all_banners = Banner.objects.all().order_by('index')
        print('all_banners=',all_banners)
        print(6666)
        #课程
        courses = Course.objects.filter(is_banner=False)[:6]
        #轮播课程
        banner_courses = Course.objects.filter(is_banner=True)[:3]
        #课程机构
        course_orgs = Course.objects.all()[:15]
        print('course_orgs=',course_orgs)
        return render(request,'index.html',{

            'all_banners':all_banners,
            'courses':courses,
            'banner_courses':banner_courses,
            'course_orgs':course_orgs,
        })


# 登录
class LoginView(View):
    def get(self,request):
        return render(request,'login.html')

    def post(self,request):
        # 实例化
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            # 获取用户名和密码
            user_name = request.POST.get('username',None)
            user_pwd = request.POST.get('password',None)
            # 成功返回user对象，失败返回None
            user = authenticate(username=user_name,password=user_pwd)
            print('user=',user)
            if user is not None:
                if user.is_active:
                    # 只有注册才能登录
                    login(request,user)
                    return HttpResponseRedirect(reverse('users:index'))
                else:
                    return render(request,'login.html',{'errmsg':'用户名或密码错误','login_form':login_form})
            else:
                return render(request,'login.html',{'errmsg':'用户名或密码错误','login_form':login_form})
        # form.is_valid()已经判断不合法了，所以这里不需要在返回错误信息到前端了
        else:
            return render(request,'login.html',{'login_form':login_form})


# 邮箱和用户名都可以登录
# 基于ModelBackend类，因为它有authenticate方法
# 一定要在settings中配置
class CustomBackend(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            # 不希望用户存在两个，get只能有一个。两个是get失败的一种原因 Q为使用并集查询
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))

            # django的后台中密码加密，所以不能用password==password
            # UserProfile继承的AbstractUser中有def check_password(),函数
            if user.check_password(password):
                return user
        except Exception as e:
            return None


# 激活用户
class ActiveUserView(View):
    def get(self,request,active_code):
        # 查询邮箱验证记录是否存在
        all_record = EmailVerifyRecord.objects.filter(code=active_code)

        if all_record:
            for record in all_record:
                # 获取到对应的邮箱
                email = record.email
                # 查找到邮箱对应的user
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()
        # 验证码部队的时候跳转到激活失败页面
        else:
            return render(request,'active_fail.html')
        # 激活成功跳转到登录页面
        return render(request,'login.html')


class RegisterView(View):
    def get(self,request):
        register_form = RegisterForm()
        return render(request,'register.html',{'register_form':register_form})

    def post(self,request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_name = request.POST.get('email',None)
            # 如果用户存在，则显示错误信息
            if UserProfile.objects.filter(email=user_name):
                return render(request,'register.html',{'register_form':register_form,'message':'用户名已存在'})

            pass_word = request.POST.get('password',None)
            pass_word2 = request.POST.get('pwd',None)
            if pass_word == pass_word2:
                # 实例化一个user_profile对象
                user_profile = UserProfile()
                user_profile.username = user_name
                user_profile.email = user_name
                user_profile.is_active = False
                # 对保存到数据库的密码加密
                user_profile.password = make_password(pass_word)
                user_profile.save()
                send_register_email(user_name,'register')
                return render(request,'login.html')
            else:
                return render(request,'register.html',{'errmsg':'两次密码输入不一致','register_form':register_form})

        else:
            return render(request,'register.html',{'register_form':register_form})


# 找回密码
class ForgetPwdView(View):
    '''找回密码'''
    def get(self,request):
        forget_form = ForgetPwdForm()
        return render(request,'forgetpwd.html',{'forget_form':forget_form})

    def post(self,request):
        forget_form = ForgetPwdForm(request.POST)
        if forget_form.is_valid():
            email = request.POST.get('email',None)
            send_register_email(email,'forget')  # 发送注册邮件
            return render(request,'send_success.html')
        else:
            return render(request,'forgetpwd.html',{'forget_form':forget_form})


# 重置密码
class ResetView(View):
    def get(self,request,active_code):
        all_records = EmailVerifyRecord.objects.filter(code=active_code)
        if all_records:
            for record in all_records:
                email = record.email
                return render(request,'password_reset.html',{'email':email})
        else:
            return render(request,'active_fail.html')
        return render(request,'login.html')


# 修改密码
class ModifyPwdView(View):
    def post(self,request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get('password1','')
            pwd2 = request.POST.get('password2','')
            email = request.POST.get('email','')
            if pwd1 != pwd2:
                return render(request,'password_reset.html',{'email':email,'msg':'密码不一致'})
            user = UserProfile.objects.get(email=email)
            user.password = make_password(pwd2)
            user.save()

            return render(request,'login.html')
        else:
            email = request.POST.get('email','')
            return render(request,'password_reset.html',{'email':email,'modify_form':modify_form})


class UserinfoView(LoginRequireMixin,View):
    '''用户个人信息'''
    def get(self,request):
        return render(request,'users/usercenter-info.html',{})

    def post(self,request):
        user_info_form = UserInfoForm(request.POST,instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return HttpResponse('{"status":"success"}',content_type='application/json')
        else:
            return HttpResponse(json.dumps(user_info_form),content_type='application/json')


class UploadImageView(LoginRequireMixin,View):
    '''用户更改头像'''
    def post(self,request):
        # 上传的文件都在request.FILES里面获取，所以这里要多传一个这个参数
        image_form = UploadImageForm(request.POST,request.FILES)
        if image_form.is_valid():
            image = image_form.cleaned_data['image']
            request.user.image = image
            request.user.save()
            return HttpResponse('{"status":"success"}',content_type='application/json')
        else:
            return HttpResponse('{"status":"fail"}',content_type='application/json')


class UpdatePwdView(View):
    """
    个人中心修改用户密码
    """
    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            if pwd1 != pwd2:
                return HttpResponse('{"status":"fail","msg":"密码不一致"}',  content_type='application/json')
            user = request.user
            user.password = make_password(pwd2)
            user.save()

            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse(json.dumps(modify_form.errors), content_type='application/json')


class SendEmailCodeView(LoginRequireMixin,View):
    '''发送邮箱修改验证码'''
    def get(self,request):
        email = request.GET.get('email','')

        if UserProfile.objects.filter(email=email):
            return HttpResponse('{"email":"邮箱已经存在"}',content_type='application/json')
        send_register_email(email,'update_email')
        return HttpResponse('{"status":"success"}',content_type='application/json')


class UpdateEmailView(View):
    '''修改邮箱'''
    def post(self,request):
        email = request.POST.get('email','')
        code = request.POST.get('code','')

        existed_records = EmailVerifyRecord.objects.filter(email=email,code=code,send_type='update_email')
        if existed_records:
            user = request.user
            user.email = email
            user.save()
            return HttpResponse('{"status":"success"}',content_type='application/json')
        else:
            return HttpResponse('{"email":"验证码无效"}',content_type='application/json')


class MyCourseView(LoginRequireMixin,View):
    '''我的课程'''
    def get(self,request):
        user_courses = UserCourse.objects.filter(user=request.user)
        return render(request,'users/usercenter-mycourse.html',{
            'user_courses':user_courses,
        })


class MyFavOrgView(LoginRequireMixin,View):
    '''我收藏的课程机构'''

    def get(self,request):
        org_list = []
        fav_orgs = UserFavorite.objects.filter(user=request.user,fav_type=2)
        # 上面的fav_orgs只是存放了id，我们还需要通过id找到机构对象
        for fav_org in fav_orgs:
            org_id = fav_org.fav_id
            # 取出这个机构对象
            org = CourseOrg.objects.get(id=org_id)
            org_list.append(org)
        return render(request,'users/usercenter-fav-org.html',{
            'org_list':org_list,
        })


class MyFavTeacherView(LoginRequireMixin,View):
    '''我收藏的授课讲师'''
    def get(self,request):
        teacher_list = []
        fav_teachers = UserFavorite.objects.filter(user=request.user,fav_type=3)
        for fav_teacher in fav_teachers:
            teacher_id = fav_teacher.fav_id
            teacher = Teacher.objects.get(id=teacher_id)
            teacher_list.append(teacher)
        return render(request,'users/usercenter-fav-teacher.html',{
            'teacher_list':teacher_list,
        })


class MyFavCourseView(LoginRequireMixin,View):
    '''我收藏的课程'''
    def get(self,request):
        course_list = []
        fav_courses = UserFavorite.objects.filter(user=request.user,fav_type=1)
        for fav_course in fav_courses:
            course_id = fav_course.fav_id
            course = Course.objects.get(id=course_id)
            course_list.append(course)

        return render(request,'users/usercenter-fav-course.html',{
            'course_list':course_list,
        })


class MyMessageView(LoginRequireMixin,View):
    '''我的消息'''
    def get(self,request):
        all_message = UserMessage.objects.filter(user=request.user.id)

        try:
            page = request.GET.get('page',1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_message,4,request=request)
        messages = p.page(page)
        return render(request,'users/usercenter-message.html',{
            'messages':messages,
        })





# 退出用户
def quit(request):
    logout(request)
    return redirect(reverse('users:index'))







