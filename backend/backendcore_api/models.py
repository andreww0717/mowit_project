from django.db import models

# Create your models here.
# Contractor Portion
class Contractor(models.Model):
  contractor_name = models.CharField(max_length=100)
  contractor_email = models.CharField(max_length=100)
  contractor_phone = models.CharField(max_length=10)
  contractor_zipcode = models.CharField(max_length=10)

#Customer Portion
class Customer(models.Model):
  customer_name = models.CharField(max_length=100)
  customer_email = models.CharField(max_length=100)
  customer_phone = models.CharField(max_length=10)
  customer_address = models.CharField(max_length=100)
  customer_zipcode = models.CharField(max_length=10)


class Account(models.Model):
  username = models.CharField(max_length=100)
  email = models.CharField(max_length=100)
  password = models.CharField(max_length=100)
  password2 = models.CharField(max_length=100)
  