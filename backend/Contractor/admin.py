from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import *



admin.site.register(Service)
admin.site.register(OrderStatus)
admin.site.register(Tag)
