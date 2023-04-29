from django.shortcuts import render, redirect
from django.urls import reverse
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

from .models import UserProfile
from .forms import UserForm


# Create your views here.
def custom_login(request):
    if request.method == 'POST':
        # 获取数据
        username = request.POST['username']
        password = request.POST['password']
        # print(username, password)
        # 验证用户是否合法
        user = authenticate(username=username, password=password)
        if user:
            # 登录
            if user.is_active:
                login(request, user)
                # 返回页面
                return redirect(reverse('app01:index'))
            else:
                return render(request, 'accounts/login.html', {'error_message': '用户没有被激活，联系DE8UG'})
        else:
            return render(request, 'accounts/login.html', {'error_message': '用户名或密码错误！'})

    return render(request, 'accounts/login.html')


def register(request):
    form = UserForm(request.POST or None)
    if form.is_valid():
        # 如果数据合法，保存到user
        user = form.save(commit=False)
        print(form.cleaned_data)
        user.set_password(form.cleaned_data['password'])
        user.save()

        # 同步保存到profile
        profile = UserProfile()
        profile.user = user
        profile.save()

        login(request, user)
        return redirect('app01:index')

    context = {
        'form': form
    }
    return render(request, 'accounts/register.html', context)


def custom_logout(request):
    logout(request)
    return redirect('accounts:login')


@login_required
def update_userprofile(request):
    try: 
        if request.method == 'POST':
            # 获取数据
            data = request.POST
            f = request.FILES
            print(data, f)
            # 找到用户
            user = User.objects.get(username=data['username'])
            print(user)
            # 更新数据
            profile = UserProfile.objects.get(user=user)
            if profile:
                profile.email = data['email']
                profile.sex = data['gridRadios']
                profile.phone_number = data['phoneNumber']
                profile.picture = f['picture']
                profile.law_id = data['inputLawId']
                # 保存
                profile.save()
    except Exception as e:
        print(e)
    return redirect("app01:my-page")


