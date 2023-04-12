from django.contrib import admin
from django.contrib.auth.models import Group
from .models import Profile
# Register your models here.


# Registered Users with Profile
admin.site.register(Profile)

# Add User info into Profile
# class UserProfileInfo(admin.StackedInline):
#   model = Profile
