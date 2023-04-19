from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User, Group
from .models import Profile, UserInfo





# Create your forms here.

class NewUserForm(UserCreationForm):

    group = forms.ModelChoiceField(queryset=Group.objects.all(), required=True, label='Are you a customer or contractor')
    first_name = forms.CharField(max_length=100, required=True)
    last_name = forms.CharField(max_length=100, required=True)
    email = forms.EmailField(required=True)
    phone_number = forms.CharField(max_length=10, required=False)
    address = forms.CharField(max_length=100, required=False)
    zipcode = forms.CharField(max_length=5, required=False)
    class Meta:
        model = User
        fields = ("first_name", "last_name", "username", "email", "password1", "password2", "group", "phone_number", "address", "zipcode")


    def save(self, commit=True):
        user = super(NewUserForm, self).save(commit=False)

        if commit:
            user.save()
        return user

class UserUpdateForm(forms.ModelForm):
    email = forms.EmailField()

    class Meta:
        model = User
        fields = ['username', 'email', 'first_name', 'last_name']

# Create a ProfileUpdateForm to update image.
class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ['image']

class UserInfoUpdateForm(forms.ModelForm):

  phone_number = forms.CharField(max_length=10, required=False)
  address = forms.CharField(max_length=100, required=False)
  zipcode = forms.CharField(max_length=5, required=False)
  class Meta:
        model = User
        fields = ['phone_number', 'address', 'zipcode']
