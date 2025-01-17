from django.urls import path, include
from backendcore_api import views

# app_name = 'contractor_api'
urlpatterns = [
    
    
    # Registration
    path('', views.contractor_homepage, name='home'),
    path('homepage/', views.contractor_homepage, name='homepage'),
    path('register/', views.contractor_register_request, name='register'),

    path('login/', views.contractor_login_request, name='login'),
    path('contractor/login/', views.contractor_login_request, name='login'),

    path('profile/', views.contractor_profile, name='profile'),
    path('contractor/profile/', views.contractor_profile, name='profile'),
    
    #path('contractor/profile/<int:pk>', ContractorProfilePage.as_view(), name ='contractor_profile_page' )
    #path('contractor/logout', include('Contractor.urls', namespace='contractor_logout')),

    

    
]
