from django.urls import path, include
from backendcore_api import views

# app_name = 'customer_api'
urlpatterns = [
    
    
    # Registration
    path('', views.customer_homepage, name='home'),
    path('homepage/', views.customer_homepage, name='homepage'),
    path('register/', views.customer_register_request, name='register'),
    path('login/', views.customer_login_request, name='login'),
    path('profile/', views.customer_profile, name='profile'),
    path('customer/login/', views.customer_login_request, name='login'),
    path('customer/profile/', views.customer_profile, name='profile'),
    #path('customer/logout', include('Customer.urls', namespace='contractorcustomer_logout')),

    

    
]
