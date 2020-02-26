import os
os.system('conda install Django==3.0.3')
os.system('conda install scrapy')
os.system('conda install mysqlclient')
os.system('conda install MySQL-python')

import sys
os.chdir('DjangoProject')
os.system('python manage.py makemigrations WeatherSystem')
# os.system('python manage.py migrate')