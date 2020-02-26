from django.urls import path

from . import views

app_name = 'WeatherSystem'
urlpatterns = [
    # ex: /WeatherSystem/
    path('', views.index, name='index'),
    path('search',views.search,name='search'),
    # # ex: /WeatherSystem/5/
    # path('<city_name>/', views.detail, name='detail'),
    # # ex: /WeatherSystem/5/results/
    # path('<int:city_name>/results/', views.results, name='results'),
    # # ex: /WeatherSystem/5/vote/
    # path('<int:city_name>/vote/', views.vote, name='vote'),
]