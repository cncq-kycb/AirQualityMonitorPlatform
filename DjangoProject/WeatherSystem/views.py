from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from WeatherSystem.models import City,CitySort
from django.http import HttpResponseRedirect
from .forms import SearchForm,CITYCATEGORY

# Create your views here.
def index(request):
    sort_list = CitySort.objects.order_by('aqi')
    city_list = City.objects.order_by('id')
    context = {
        'sort_list': sort_list,
        'city_list': city_list,
        'form': SearchForm(),
        'img': '../static/img/1.jpg',
    }
    return render(request, 'WeatherSystem/index.html', context)

def search(request):
    city_id = request.POST['category']
    sort_list = CitySort.objects.order_by('aqi')
    city_list = City.objects.order_by('id')
    if request.method == 'POST':
        context = {
            'sort_list': sort_list,
            'city_list': city_list,
            'form': SearchForm(),
            'img': '../static/img/'+city_id+'.jpg',
        }
    return render(request, 'WeatherSystem/index.html', context)