from django import forms
from django.contrib.auth.forms import UserCreationForm

#from django.forms import ModelForm
from Contractor.models import Contractor

class NewContractorForm(UserCreationForm):
  firstname = forms.CharField(max_length=100, required=True)
  lastname = forms.CharField(max_length=100, required=True)
  username = forms.CharField(max_length=100, required=True)
  email = forms.EmailField(required=True)
  phone = forms.CharField(max_length=100, required=True)
  zipcode = forms.CharField(max_length=100, required=True)

  class Meta:
      model = Contractor
      fields = ("firstname", "lastname", "username", "email","phone","zipcode", "password1", "password2")
  def save(self, commit=True):
      contractor = super(NewContractorForm, self).save(commit=False)
      contractor.firstname = self.cleaned_data['firstname']
      contractor.lastname = self.cleaned_data['lastname']
      contractor.email = self.cleaned_data['email']
      contractor.username = self.cleaned_data['username']
      contractor.phone = self.cleaned_data['phone']
      contractor.zipcode = self.cleaned_data['zipcode']
      
      if commit:
        contractor.save()
      return contractor