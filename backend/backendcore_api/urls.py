from django.urls import path, include
from django.contrib import admin
# from .views import (
#     UserRecordView, registration_view
#     )
from . import views

app_name = 'backendcore_api'
urlpatterns = [
    
    

    # Registration
    path('', views.homepage, name='homepage'),
    path('home/', views.homepage, name='homepage'),
    path('register/', views.register_request, name='register'),
    path('login/', views.login_request, name='login'),
    path('logout/', views.logout_request, name='logout'),


    # Contractor path
     path('contractor/', include('Contractor.urls', namespace='contractor_api')),
    # Customer path
]


