# -*- coding: utf-8 -*-
import scrapy
import time
import re
from scrapyPM25.items import Scrapypm25Item
from .utils import get_city
import sys
sys.path.append("..")
sys.path.append("..")
sys.path.append("..")
import db_properties

class PmspiderSpider(scrapy.Spider):
    name = 'PMSpider'
    # allowed_domains = ['pm25.in']
    # base_urls = 'http://pm25.in/'
    allowed_domains = ['www.tianqi.com']
    base_urls = 'https://www.tianqi.com/air/'
    cityList = get_city(db_properties.HOST,db_properties.USER,db_properties.PASSWORD,db_properties.DATABASE)
    i = 0
    start_urls = [base_urls+cityList[i]]
    def parse(self, response):
        item = Scrapypm25Item()
        # city_name = response.xpath('/html/body/div[2]/div[1]/div[1]/div[1]/h2/text()').extract_first()
        # aqi  = response.xpath('/html/body/div[2]/div[1]/div[3]/div[1]/div[1]/text()').extract_first()
        # pm25 = response.xpath('/html/body/div[2]/div[1]/div[3]/div[2]/div[1]/text()').extract_first()
        # pm10 = response.xpath('/html/body/div[2]/div[1]/div[3]/div[3]/div[1]/text()').get()
        # co   = response.xpath('/html/body/div[2]/div[1]/div[3]/div[4]/div[1]/text()').get()
        # no2  = response.xpath('/html/body/div[2]/div[1]/div[3]/div[5]/div[1]/text()').get()
        # o31h = response.xpath('/html/body/div[2]/div[1]/div[3]/div[6]/div[1]/text()').get()
        # o38h = response.xpath('/html/body/div[2]/div[1]/div[3]/div[7]/div[1]/text()').get()
        # so2  = response.xpath('/html/body/div[2]/div[1]/div[3]/div[8]/div[1]/text()').get()
        
        city_name = response.xpath('/html/body/div[8]/div[1]/div[1]/div[1]/span[1]/text()').get()
        aqi  = response.xpath('/html/body/div[8]/div[1]/div[2]/div[1]/div[2]/div[2]/text()').get()
        co = response.xpath('/html/body/div[8]/div[1]/div[2]/div[3]/div[2]/ul/li[1]/div[2]/span[1]/text()').get()
        no2 = response.xpath('/html/body/div[8]/div[1]/div[2]/div[3]/div[2]/ul/li[2]/div[2]/span[1]/text()').get()
        o3   = response.xpath('/html/body/div[8]/div[1]/div[2]/div[3]/div[2]/ul/li[3]/div[2]/span[1]/text()').get()
        pm10  = response.xpath('/html/body/div[8]/div[1]/div[2]/div[3]/div[2]/ul/li[4]/div[2]/span[1]/text()').get()
        so2 = response.xpath('/html/body/div[8]/div[1]/div[2]/div[3]/div[2]/ul/li[5]/div[2]/span[1]/text()').get()
        pm25 = response.xpath('/html/body/div[8]/div[1]/div[2]/div[3]/div[2]/ul/li[6]/div[2]/span[1]/text()').get()
        
        print('-----------------------------')
        item['city_name'] = city_name
        item['aqi'] = aqi
        item['pm25'] = pm25
        item['pm10'] = pm10
        item['co'] = co
        item['no2'] = no2
        item['o3'] = o3
        # item['o38h'] = ''.join([x for x in o38h if (x.isdigit() or x=='.')])
        item['so2'] = so2
        yield item
        if self.i+1 < len(self.cityList):
            self.i=self.i+1
            url = self.base_urls+self.cityList[self.i]
            yield scrapy.Request(url, callback=self.parse)