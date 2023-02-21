from django.contrib import admin
from .models import Contractor
# Register your models here.

@admin.register(Contractor)
class ContractorAdmin(admin.ModelAdmin):
  list_display = ['id', 'contractor_name', 'contractor_email', 'contractor_phone']