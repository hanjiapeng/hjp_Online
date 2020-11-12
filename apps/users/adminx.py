import xadmin
from .models import UserProfile
from xadmin import views


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    """
        设置网站标题和页脚
    """
    site_title = '在线教育后台管理系统'
    site_footer = 'Powered By 1906c - 2020'
    menu_style = 'accordion'  # 设置菜单折叠


class UserProfileAdmin(object):
    list_display = ['username','gender','mobile','address']
    search_fields = ['username','gender','mobile','address']
    list_filter = ['username']
    model_icon = 'fa fa-user'
    style_fields = {"address": "ueditor"}
    ordering = {'-date_joined'}  # 排序
    readonly_fields = ['username']  # 只读字段，不能编辑
    exclude = ['gender']  # 不显示的字段
    list_editable = ['mobile']  # 显示修改
    refresh_times = [3,5]  # 自动刷新(里面是秒数)


xadmin.site.unregister(UserProfile)
xadmin.site.register(UserProfile,UserProfileAdmin)


xadmin.site.register(views.BaseAdminView,BaseSetting)
xadmin.site.register(views.CommAdminView,GlobalSettings)













