from django.urls import path
from django.contrib import admin
from .views import (UserRecordView, registration_view)
from . import views

app_name = 'backendcore_api'
urlpatterns = [
    #path('', views.homepage, name='homepage'),
    path('user/', UserRecordView.as_view(), name='users'),
    path('routes/', views.getRoutes),

    # Registration
    path('', views.homepage, name='homepage'),
    path('admin/', admin.site.urls, name='admin'),
    path('register/', views.register_request, name='register'),
    path('login/', views.login_request, name='login')
    #path('logout/', views.logout_request, name='logout')
    #path('registration/', registration_view, name="register" ),
]


