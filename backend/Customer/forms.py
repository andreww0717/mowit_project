from django import forms
from django.contrib.auth.forms import UserCreationForm

#from django.forms import ModelForm
from Customer.models import Customer

class NewCustomerForm(UserCreationForm):
  firstname = forms.CharField(max_length=100, required=True)
  lastname = forms.CharField(max_length=100, required=True)
  username = forms.CharField(max_length=100, required=True)
  email = forms.EmailField(required=True)
  phone = forms.CharField(max_length=100, required=True)
  zipcode = forms.CharField(max_length=100, required=True)

  class Meta:
      model = Customer
      fields = ("firstname", "lastname", "username", "email","phone", "zipcode", "password1", "password2")
      
      #Contractors has permission to add, change, delete services
      permissions = [
         
      ]
  def save(self, commit=True):
      customer = super(NewCustomerForm, self).save(commit=False)
      customer.firstname = self.cleaned_data['firstname']
      customer.lastname = self.cleaned_data['lastname']
      customer.email = self.cleaned_data['email']
      customer.username = self.cleaned_data['username']
      customer.phone = self.cleaned_data['phone']
      customer.zipcode = self.cleaned_data['zipcode']
      
      
      if commit:
        customer.save()
      return customer