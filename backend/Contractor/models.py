from django.db import models
from django.contrib.auth.models import User, AbstractBaseUser

# Create your models here.

class Contractor(AbstractBaseUser):

  firstname = models.CharField(max_length=100)
  lastname = models.CharField(max_length=100)
  username = models.CharField(max_length=100)
  email = models.CharField(max_length=100)
  phone = models.CharField(max_length=10)
  zipcode = models.CharField(max_length=10)
  USERNAME_FIELD = 'username'

#class Services(models.Model):
  
