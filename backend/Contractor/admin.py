from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import *

@admin.register(Contractor)
class ContractorAdmin(admin.ModelAdmin):
  list_display = ['id','firstname', 'lastname','username', 'email', 'phone', 'zipcode']



admin.site.register(Service)
admin.site.register(Order)