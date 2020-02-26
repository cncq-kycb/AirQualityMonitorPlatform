#coding:utf-8
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import MySQLdb
import os
import sys
sys.path.append("..")
import db_properties

def plot(city_name):
    #中文字体 MacOS可用，WIN自行更改
    plt.rcParams['font.sans-serif'] = ['Arial Unicode MS']
    #连接数据库并获取数据
    db = MySQLdb.connect(db_properties.HOST, db_properties.USER, db_properties.PASSWORD, db_properties.DATABASE, charset='utf8' )
    cursor = db.cursor()
    sql = "SELECT * from recent_items where city_name='"+city_name+"'"
    cursor.execute(sql)
    results = cursor.fetchall()
    x = []
    y_aqi = []
    y_pm25 = []
    y_pm10 = []
    y_no2 = []
    y_o31h = []
    y_o38h = []
    y_so2 = []
    city_id = []
    #保存选择城市近期数据
    for row in results:
        x.append(row[9])
        y_aqi.append(row[1])
        y_pm25.append(row[2])
        y_pm10.append(row[3])
        y_no2.append(row[5])
        y_o31h.append(row[6])
        y_o38h.append(row[7])
        y_so2.append(row[8])
        city_id.append(row[10])
    db.close()
    #画图
    plt.figure(num=3, figsize=(20, 10),)
    plt.plot(x,y_aqi, color='green', linewidth=1.0, linestyle='-',label='AQI')
    plt.plot(x,y_pm25, color='purple', linewidth=1.0, linestyle='-',label='PM2.5')
    plt.plot(x,y_pm10, color='black', linewidth=1.0, linestyle='-',label='PM10')
    plt.plot(x,y_no2, color='red', linewidth=1.0, linestyle='-',label='NO2')
    plt.plot(x,y_o31h, color='pink', linewidth=1.0, linestyle='-',label='O3/h')
    plt.plot(x,y_o38h, color='blue', linewidth=1.0, linestyle='-',label='O3/8h')
    plt.plot(x,y_so2, color='orange', linewidth=1.0, linestyle='-',label='SO2')
    #设置坐标轴与图例等
    plt.gca().xaxis.set_major_formatter(mdates.DateFormatter('%m/%d/%Y'))
    plt.gca().xaxis.set_major_locator(mdates.MonthLocator())
    plt.gcf().autofmt_xdate()
    plt.xlabel("时间")
    plt.xticks(x)
    plt.ylabel("空气质量指数")
    plt.title(city_name+"历史空气质量")
    plt.legend(loc=1)
    #保存
    plt.savefig('DjangoProject/static/img/'+str(city_id[0])+'.jpg')
    plt.close('all')

def plotAll():
    #连接数据库
    db = MySQLdb.connect(db_properties.HOST, db_properties.USER, db_properties.PASSWORD, db_properties.DATABASE, charset='utf8' )
    cursor = db.cursor()
    sql = "SELECT city_name from WeatherSystem_city"
    cursor.execute(sql)
    results = cursor.fetchall()
    city_name_list = []
    #获取全部城市名称
    for row in results:
        city_name_list.append(row[0])
    db.close()
    #对全部城市绘制空气质量曲线
    os.chdir('..')
    for city_name in city_name_list:
        plot(city_name)

plotAll()