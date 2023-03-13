
# Rest_Framework
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import IsAdminUser
#from rest_framework.decorators import api_view


# Django Contrib
from django.contrib.auth.models import User 
from django.contrib.auth import login, logout, authenticate
from django.contrib.auth.forms import AuthenticationForm
from django.contrib import messages

# Django shortcuts
from django.shortcuts import HttpResponse, render, redirect

# Django views
from django.views import generic
from django.views.generic import DetailView

# Customer
from Customer.forms import NewCustomerForm

# Contractor
from Contractor.forms import NewContractorForm
from Contractor.models import *

from .forms import NewUserForm

# Create your views here.

# Homepage
def homepage(request):
	return render(request=request, template_name='homepage.html')

# Registration Form
def register_request(request):
	if request.method == "POST":
		form = NewUserForm(request.POST)
		if form.is_valid():
			user = form.save()
			login(request, user)
			return redirect("backendcore_api:login")
	else:
		form = NewUserForm()
	return render (request=request, template_name='register.html', context={"register_form":form})

#Login Form
def login_request(request):
	if request.method == "POST":
		form = AuthenticationForm(request, data=request.POST)
		if form.is_valid():
			username = form.cleaned_data.get('username')
			password = form.cleaned_data.get('password')
			user = authenticate(username=username, password=password)
			if user is not None:
				login(request, user)
				messages.info(request, f"You are now logged in as {username}.")
				return redirect("backendcore_api:homepage")
			else:
				messages.error(request,"Invalid username or password.")
		else:
			messages.error(request,"Invalid username or password.")
	else:
		form = AuthenticationForm()
	return render(request=request, template_name="login.html", context={"login_form":form})

#Logout Form
def logout_request(request):
    logout(request)
    messages.info(request, "You have been logged out.")
    return redirect('backendcore_api:homepage')

#Profile
def profile_request(request):
	return render(request=request, template_name='profile.html')

#=========================================================================================
#=============Contractor==================================================================
#=========================================================================================

#Contractor Homepage

# class ContractorProfilePage(DetailView):
# 	model = Profile 
# 	template_name = 'Contractor/contractor_profile.html'

def contractor_homepage(request):
	return render(request=request, template_name='contractor_homepage.html')

#Contractor Registration
def contractor_register_request(request):

	contractor_form = NewContractorForm()
	if request.method == "POST":
		contractor_form = NewContractorForm(request.POST)
		if contractor_form.is_valid():
			contractor = contractor_form.save()
			# login(request, contractor)
			contractor = contractor_form .cleaned_data.get('username')
			messages.success(request, "Registration successful for: " + contractor)
			return redirect("backendcore_api:Contractor_login")
		messages.error(request, "Unsuccessful registration. Invalid information.")
	contractor_form  = NewContractorForm()
	return render (request=request, template_name="contractor_register.html", context={"contractor_register_form":contractor_form })

#Contractor Login
def contractor_login_request(request):
	if request.method == "POST":
		contractor_form = AuthenticationForm(request, data=request.POST)
		if contractor_form.is_valid():
			username = contractor_form.cleaned_data.get('username')
			password = contractor_form.cleaned_data.get('password')
			contractor = authenticate(request, username=username, password=password)
			if contractor is not None:
				login(request, contractor)
				messages.info(request, f"You are now logged in as {username}.")
				return redirect("backendcore_api:Contractor_homepage")
			else:
				messages.error(request,"Invalid username or password.")
		else:
			messages.error(request,"Invalid username or password.")
	else:
		contractor_form = AuthenticationForm()
	return render(request=request, template_name="contractor_login.html", context={"contractor_login_form":contractor_form})

#Contractor Logout
def contractor_logout_request(request):
    logout(request)
    messages.info(request, "You have been logged out.")
    return redirect('backendcore_api:homepage')

#Contractor Profile
def contractor_profile(request):
	return render(request=request, template_name='contractor_profile.html')






#=========================================================================================
#=============Customer====================================================================
#=========================================================================================

#Customer Homepage
def customer_homepage(request):
	return render(request=request, template_name='customer_homepage.html')

#customer Registration
def customer_register_request(request):

	customer_form = NewCustomerForm()
	if request.method == "POST":
		customer_form = NewCustomerForm(request.POST)
		if customer_form.is_valid():
			customer = customer_form.save()
			# login(request, customer)
			customer = customer_form .cleaned_data.get('username')
			messages.success(request, "Registration successful for: " + customer)
			return redirect("backendcore_api:Customer_login")
		messages.error(request, "Unsuccessful registration. Invalid information.")
	customer_form  = NewCustomerForm()
	return render (request=request, template_name="customer_register.html", context={"customer_register_form":customer_form })

#Contractor Login
def customer_login_request(request):
	if request.method == "POST":
		customer_form = AuthenticationForm(request, data=request.POST)
		if customer_form.is_valid():
			username = customer_form.cleaned_data.get('username')
			password = customer_form.cleaned_data.get('password')
			customer = authenticate(username=username, password=password)
			if customer is not None:
				login(request, customer)
				messages.info(request, f"You are now logged in as {username}.")
				return redirect("backendcore_api:Contractor_homepage")
			else:
				messages.error(request,"Invalid username or password.")
		else:
			messages.error(request,"Invalid username or password.")
	else:
		customer_form = AuthenticationForm()
	return render(request=request, template_name="customer_login.html", context={"customer_login_form":customer_form})

#Contractor Logout
def customer_logout_request(request):
    logout(request)
    messages.info(request, "You have been logged out.")
    return redirect('backendcore_api:homepage')

#Contractor Profile
def customer_profile(request):
	return render(request=request, template_name='customer_profile.html')