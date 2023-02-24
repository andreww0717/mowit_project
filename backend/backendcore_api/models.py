from django.db import models

# Create your models here.
class Contractor(models.Model):
  contractor_name = models.CharField(max_length=100)
  contractor_email = models.CharField(max_length=100)
  contractor_phone = models.CharField(max_length=10)

class Customer(models.Model):
  customer_name = models.CharField(max_length=100)
  customer_email = models.CharField(max_length=100)
  customer_phone = models.CharField(max_length=10)