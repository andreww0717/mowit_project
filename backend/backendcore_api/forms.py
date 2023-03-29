from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


# Create your forms here.

class NewUserForm(UserCreationForm):

  CUSTOMER = 1
  CONTRACTOR = 2

  ROLE_CHOICES = (
		(CUSTOMER, 'Customer'),
  	(CONTRACTOR, 'Contractor'),
   )

  firstname = forms.CharField(max_length=100, required=False)
  lastname = forms.CharField(max_length=100, required=False)
  email = forms.EmailField(required=True)
  role = forms.ChoiceField(widget=forms.RadioSelect, choices=ROLE_CHOICES)
class Meta:
	model = User
	fields = ("firstname", "lastname", "username", "email", "password1", "password2", "role")

def save(self, commit=True):
	user = super(NewUserForm, self).save(commit=False)
	user.firstname = self.cleaned_data['firstname']
	user.lastname = self.cleaned_data['lastname']
	user.email = self.cleaned_data['email']
	user.role = self.cleaned_data['role']

	if commit:
		user.save()
	return user

