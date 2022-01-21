from django import forms
from django.forms import ModelForm
from django.forms import models
from django.forms.models import ModelChoiceField
from .models import Student_Details,Company_Details, Summary_detail

class studentForm(ModelForm):
    class Meta:
        model=Student_Details
        fields='__all__'

class companyForm(ModelForm):
    # university_serial_id=ModelChoiceField(queryset=Student_Details.objects.all())
    class Meta:
        model=Company_Details
        fields='__all__'

class summaryForm(ModelForm):
    class Meta:
        model=Summary_detail
        fields='__all__'