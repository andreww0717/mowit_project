from django.db import models
from django.conf import settings
from django.contrib import admin
from django.contrib.auth.models import User, AbstractBaseUser, AbstractUser



# from Customer.models import Customer

# Create your models here.

# class Contractor(AbstractBaseUser):

#   user = models.OneToOneField(
#       settings.AUTH_USER_MODEL,
#       on_delete=models.CASCADE,
#       null=True
#   )

#   firstname = models.CharField(max_length=100, null=True)
#   lastname = models.CharField(max_length=100, null=True)
#   username = models.CharField(max_length=100, null=True)
#   email = models.EmailField(max_length=100, unique=True)
#   phone = models.CharField(max_length=10, null=True)
#   zipcode = models.CharField(max_length=10, null=True)
#   #date_created = models.DateField(auto_now_add=True, null=True)

#   is_staff = models.BooleanField(default=True)
#   is_active = models.BooleanField(default=True)
#   role = models.CharField(max_length=100, blank=True, null=True)



#   USERNAME_FIELD = 'username'


class Tag(models.Model):
  name = models.CharField(max_length=200, null=True)
  def __str__(self):
    return self.name

class Service(models.Model):

  name = models.CharField(max_length=200, null=True)
  price = models.FloatField(null=True)
  description = models.CharField(max_length=200, null=True)
  date_created = models.DateTimeField(auto_now_add=True, null=True)
  tags = models.ManyToManyField(Tag)


  def __str__(self):
    return self.name

class OrderStatus(models.Model):
  STATUS = (
    ('Pending', 'Pending'),
    ('Out for Service', 'Out for Service'),
    ('Completed', 'Completed'),
  )
  # customer = models.ForeignKey(Customer, null=True, on_delete=models.SET_NULL)
  service = models.ForeignKey(Service, null=True, on_delete=models.SET_NULL)
  date_created = models.DateTimeField(auto_now_add=True, null=True)
  status = models.CharField(max_length=200, null=True, choices=STATUS)


  STATUS_FIELD = 'status'



#Rating System for Contractor

#User Profile
