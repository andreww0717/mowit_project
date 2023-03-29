from django.shortcuts import render
from django.http import HttpResponse
from .models import *
from .views import *

#Display lists

def dashboard(request):
	services = Service.objects.all()
	# customers = Customer.objects.all()

	# context = {'services':services, 'customers':customers}

	# return render(request,'contractor_dashboard.html', context)



# def services(request):
# 	services = Service.objects.all()
# 	return render(request, 'templates/contractor_dashboard.html', {'services':services })
