#from WeatherSystem.models import City,AirQuality
import matplotlib.pyplot as plt
import numpy as np
from pylab import *

def plot_data(_city_name):
    x = np.linspace(-3,3,50)
    y1 = 2*x + 1    
    y2 = x**2
    plt.figure(num=3, figsize=(20, 10),)
    plt.plot(x, y2)
    plt.plot(x, y1, color='red', linewidth=1.0, linestyle='--') 
    plt.title(_city_name+'历史空气质量')
    #plt.savefig('/Users/alberto/CodingSpace/VSCode-workspace/DjangoProject/static/img/1.jpg')
    plt.show()

    #return AirQuality.objects.raw("select * from WeatherSystem_airquality where city_name='"+_city_name+"'")
plot_data('a')