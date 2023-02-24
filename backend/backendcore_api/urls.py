from django.urls import path
from .views import UserRecordView
from . import views

app_name = 'backendcore_api'
urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),
    path('', views.getRoutes),
]


