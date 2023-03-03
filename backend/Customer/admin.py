from django.contrib import admin
from .models import Customer
# Register your models here.

@admin.register(Customer)
class CustomerAdmin(admin.ModelAdmin):
  list_display = ['id', 'customer_name', 'customer_email', 'customer_phone', 'customer_address', 'customer_zipcode']

