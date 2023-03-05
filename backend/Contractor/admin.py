from django.contrib import admin
from .models import Contractor

@admin.register(Contractor)
class ContractorAdmin(admin.ModelAdmin):
  list_display = ['firstname', 'lastname','username', 'email', 'phone', 'zipcode']

