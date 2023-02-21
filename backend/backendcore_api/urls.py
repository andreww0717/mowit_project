from django.urls import path
from .views import UserRecordView

app_name = 'backendcore_api'
urlpatterns = [
    path('user/', UserRecordView.as_view(), name='users'),
]


