
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

# from .serializers import (
# 	#UserSerializer 
#     #RegistrationSerializer
#     )

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
			# else:
			# 	messages.error(request,"Invalid username or password.")
		# else:
		# 	messages.error(request,"Invalid username or password.")
	else:
		form = AuthenticationForm()
	return render(request=request, template_name="login.html", context={"login_form":form})

#Logout Form
def logout_request(request):
    logout(request)
    messages.info(request, "You have been logged out.")
    return redirect('backendcore_api:homepage')

#=============Contractor===============

#Contractor Homepage

#Contractor Registration
def contractor_register_request(request):
	if request.method == "POST":
		form = NewUserForm(request.POST)
		if form.is_valid():
			user = form.save()
			login(request, user)
			messages.success(request, "Registration successful." )
			return redirect("backendcore_api:login")
		messages.error(request, "Unsuccessful registration. Invalid information.")
	form = NewUserForm()
	return render (request=request, template_name="register.html", context={"register_form":form})

#==============Customer================

#Customer Homepage

#Customer Registration