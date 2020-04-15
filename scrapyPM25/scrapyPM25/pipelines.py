# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
import  pymysql
import sys
sys.path.append("..")
sys.path.append("..")
import db_properties

class Scrapypm25Pipeline(object):
    def __init__(self):
        self.connect=pymysql.connect(host=db_properties.HOST,user=db_properties.USER,password=db_properties.PASSWORD,db=db_properties.DATABASE,port=3306)
        self.cursor=self.connect.cursor()

    def process_item(self, item, spider):
        
        insert_sql = """
        insert into WeatherSystem_airquality (city_name,record_date,aqi,pm25,pm10,co,no2,o3,so2) VALUES(%s,now(),%s,%s,%s,%s,%s,%s,%s)
        """
        self.cursor.execute(insert_sql, (item['city_name'].replace('市',''),item['aqi'],item['pm25'],item['pm10'],item['co'],item['no2'],item['o3'],item['so2']))

        self.connect.commit()
        return item

    def close_spider(self, spider):
        self.cursor.close()
        self.connect.close()
