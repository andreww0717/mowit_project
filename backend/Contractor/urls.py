from django.urls import path

from backendcore_api import views

app_name = 'contractor_api'
urlpatterns = [
    
    
    # Registration
    path('', views.homepage, name='Contractor_homepage'),
    path('register/', views.contractor_register_request, name='Contractor_register'),
   
    

    #path('registration/', registration_view, name="register" ),
]
