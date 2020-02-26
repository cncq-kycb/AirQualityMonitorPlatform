from django import forms
from WeatherSystem.models import City

CITYCATEGORY = City.objects.all().order_by('id')

class SearchForm(forms.Form):
    category = forms.ModelChoiceField(queryset=CITYCATEGORY, empty_label='请选择城市',label='选择城市',to_field_name='id')