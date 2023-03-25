from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

# Create your forms here.

class NewUserForm(UserCreationForm):
	firstname = forms.CharField(max_length=100, required=False)
	lastname = forms.CharField(max_length=100, required=False)
	email = forms.EmailField(required=True)
	class Meta:
		model = User
		fields = ("firstname", "lastname", "username", "email", "password1", "password2")

	def save(self, commit=True):
		user = super(NewUserForm, self).save(commit=False)
		user.firstname = self.cleaned_data['firstname']
		user.lastname = self.cleaned_data['lastname']
		user.email = self.cleaned_data['email']
		
		if commit:
			user.save()
		return user
	
