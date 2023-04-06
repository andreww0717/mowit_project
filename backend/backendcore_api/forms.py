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

	first_name = forms.CharField(max_length=30, required=True)
	last_name = forms.CharField(max_length=30, required=True)
	email = forms.EmailField(required=True)
	role = forms.ChoiceField(widget=forms.RadioSelect, choices=ROLE_CHOICES)

	class Meta:
		model = User
		fields = ("first_name", "last_name", "username", "email", "password1", "password2", "role")
	def save(self, commit=True):
		user = super(NewUserForm, self).save(commit=False)
		user.first_name = self.cleaned_data['first_name']
		user.last_name = self.cleaned_data['last_name']
		user.email = self.cleaned_data['email']
		user.role = self.cleaned_data['role']

		if commit:
			user.save()
		return user

