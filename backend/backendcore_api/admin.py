from django.contrib import admin
from django.contrib.auth.models import Group
from .models import Profile, UserInfo
# Register your models here.


# Registered Users with Profile
admin.site.register(Profile)
admin.site.register(UserInfo)
# admin.site.register(RatingSystem)
