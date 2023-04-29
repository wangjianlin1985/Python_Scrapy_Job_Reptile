import os
from django.db import models
from django.contrib.auth.models import User
from django.utils.timezone import now as timezone_now


# Create your models here.
def upload_to(instance, filename):
    now = timezone_now()
    base, ext = os.path.splitext(filename)
    ext = ext.lower()
    return f"users/{now:%Y/%m/%Y%m%d%H%M%S}{ext}"


class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    phone_number = models.CharField(blank=True, null=True, max_length=11)
    picture = models.FileField(blank=True, null=True, upload_to=upload_to)
    sex = models.CharField(max_length=2, choices=(("1", '男'), ("2", '女')), default="1")
    is_law = models.BooleanField(default=False)
    law_id = models.CharField(max_length=100,default="")
    class Meta:
        verbose_name="用户信息"
        verbose_name_plural= verbose_name


    def __str__(self):
        return self.user.username