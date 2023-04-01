
from django.contrib.auth.models import AbstractUser
from django.db import models

class UserRole(models.Model):



  class role(models.Model):

    USER_ROLE = [
    ('CUSTOMER', 'Customer'),
    ('CONTRACTOR', 'Contractor'),
  ]

    role = models.CharField(max_length=50, choices=USER_ROLE)




