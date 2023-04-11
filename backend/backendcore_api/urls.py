from django.urls import path, include
from . import views

app_name = 'backendcore_api'
urlpatterns = [

    # If user not logged in
    path('', views.login_request, name='login'),

    # Registration
    # path('', views.homepage, name='homepage'),
    path('home/', views.homepage, name='homepage'),
    path('register/', views.register_request, name='register'),
    path('login/', views.login_request, name='login'),
    path('logout/', views.logout_request, name='logout'),
    path('profile/', views.profile_request, name='profile'),
    path('profile/edit/', views.profile_edit, name='profile_edit'),

    # Contractor path
    # path('contractor/', include('Contractor.urls')),
    # path('contractor/', include('django.contrib.auth.urls')),
    # path('home/contractor/', include('Contractor.urls')),
    # path('home/contractor/homepage/', views.contractor_homepage, name='Contractor_homepage'),
    # #path('home/contractor/login/', include('Contractor.urls', namespace='Contractor_login')),
    # path('contractor/login', views.contractor_login_request, name='Contractor_login'),

    # Customer path
    # path('customer/', include('Customer.urls')),
    # path('customer/', include('django.contrib.auth.urls')),
    # path('home/customer/', include('Customer.urls')),
    # path('home/customer/homepage/', views.customer_homepage, name='Customer_homepage'),
    # #path('home/customer/login/', include('Customer.urls', namespace='Customer_login')),
    # path('customer/login', views.customer_login_request, name='Customer_login'),

]





