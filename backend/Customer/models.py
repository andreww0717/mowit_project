from django.db import models
from django.conf import settings
from django.contrib.auth.models import User, AbstractBaseUser, AbstractUser
# Create your models here.

# class Customer(models.Model):
#   customer_name = models.CharField(max_length=100)
#   customer_email = models.CharField(max_length=100)
#   customer_phone = models.CharField(max_length=10)
#   customer_address = models.CharField(max_length=100)
#   customer_zipcode = models.CharField(max_length=10)

class Customer(AbstractBaseUser):
  user = models.OneToOneField(
      settings.AUTH_USER_MODEL,
      on_delete=models.CASCADE,
      null=True
  )

  firstname = models.CharField(max_length=100, null=True)
  lastname = models.CharField(max_length=100, null=True)
  username = models.CharField(max_length=100, unique=True)
  email = models.EmailField(max_length=100, unique=True)
  phone = models.CharField(max_length=10, null=True)
  address = models.CharField(max_length=200, null=True)
  zipcode = models.CharField(max_length=10, null=True)
  #date_created = models.DateField(auto_now_add=True, null=True)
  USERNAME_FIELD = 'username'

  

