from django.contrib import admin
from .models import Contractor, Customer
# Register your models here.

#Admin
@admin.register(Contractor)
class ContractorAdmin(admin.ModelAdmin):
  list_display = ['id', 'contractor_name', 'contractor_email', 'contractor_phone', 'contractor_zipcode']

@admin.register(Customer)
class CustomerAdmin(admin.ModelAdmin):
  list_display = ['id', 'customer_name', 'customer_email', 'customer_phone', 'customer_address', 'customer_zipcode']

