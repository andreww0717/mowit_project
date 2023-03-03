from django.contrib import admin
from .models import Contractor

@admin.register(Contractor)
class ContractorAdmin(admin.ModelAdmin):
  list_display = ['id', 'contractor_name', 'contractor_email', 'contractor_phone', 'contractor_zipcode']

