from django.db import models

# Create your models here.
class City(models.Model):
    city_name = models.CharField(max_length=20,unique=True,db_index=True)
    city_name_eng = models.CharField(max_length=50,unique=True,db_index=True)
    def __str__(self):
        return self.city_name

class AirQuality(models.Model):
    city_name = models.CharField(max_length=20,db_index=True)
    aqi = models.IntegerField()
    pm25 = models.IntegerField()
    pm10 = models.IntegerField()
    co = models.FloatField(max_length=5)
    no2 = models.IntegerField()
    o31h = models.IntegerField()
    o38h = models.IntegerField()
    so2 = models.IntegerField()
    record_date = models.DateTimeField()

class CitySort(models.Model):
    city_name = models.CharField(max_length=20)
    aqi = models.IntegerField()
    pm25 = models.IntegerField()
    pm10 = models.IntegerField()
    co = models.FloatField(max_length=5)
    no2 = models.IntegerField()
    o31h = models.IntegerField()
    o38h = models.IntegerField()
    so2 = models.IntegerField()
    class Meta:
        managed = False
        db_table = "city_sort"


