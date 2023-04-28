from django.forms import ModelForm
from Contractor.models import Service
from django import forms


# class ServiceForm(ModelForm):
  # name = ModelForm.CharField(max_length=200, null=True)
  # price = forms.FloatField(null=True)
  # description = forms.CharField(max_length=200, null=True)
  # class Meta:
  #   model = Service
  #   fields = ("name", "price", "description", "tags")



# =====Database not showing up=====
class ServiceForm(forms.ModelForm):

  class Meta:
    model = Service
    fields = ("name", "price", "description", "tags")

  def save(self, commit=True):
        service = super(ServiceForm, self).save(commit=False)

        if commit:
            service.save()
        return service

