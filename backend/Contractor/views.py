from django.shortcuts import get_object_or_404, render, redirect
from django.http import HttpResponse
from .models import *
from .forms import ServiceForm
from .views import *
from backendcore_api import views

def service_register_request(request):
  if request.method == "POST":
    form = ServiceForm(request.POST)
    if form.is_valid():
      service = form.save()

      return redirect("backendcore_api:homepage")
  else:
    form = ServiceForm()
  return render (request=request, template_name='service_registration.html', context={"service_form":form})




#Display lists

def dashboard(request):
	services = Service.objects.all()
	# customers = Customer.objects.all()

	# context = {'services':services, 'customers':customers}

	# return render(request,'contractor_dashboard.html', context)



# def services(request):
# 	services = Service.objects.all()
# 	return render(request, 'templates/contractor_dashboard.html', {'services':services })
