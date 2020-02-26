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
    allowed_domains = ['pm25.in']
    base_urls = 'http://pm25.in/'
    cityList = get_city(db_properties.HOST,db_properties.USER,db_properties.PASSWORD,db_properties.DATABASE)
    i = 0
    start_urls = [base_urls+cityList[i]]
    def parse(self, response):
        item = Scrapypm25Item()
        city_name = response.xpath('/html/body/div[2]/div[1]/div[1]/div[1]/h2/text()').extract_first()
        aqi  = response.xpath('/html/body/div[2]/div[1]/div[3]/div[1]/div[1]/text()').extract_first()
        pm25 = response.xpath('/html/body/div[2]/div[1]/div[3]/div[2]/div[1]/text()').extract_first()
        pm10 = response.xpath('/html/body/div[2]/div[1]/div[3]/div[3]/div[1]/text()').get()
        co   = response.xpath('/html/body/div[2]/div[1]/div[3]/div[4]/div[1]/text()').get()
        no2  = response.xpath('/html/body/div[2]/div[1]/div[3]/div[5]/div[1]/text()').get()
        o31h = response.xpath('/html/body/div[2]/div[1]/div[3]/div[6]/div[1]/text()').get()
        o38h = response.xpath('/html/body/div[2]/div[1]/div[3]/div[7]/div[1]/text()').get()
        so2  = response.xpath('/html/body/div[2]/div[1]/div[3]/div[8]/div[1]/text()').get()
        print('-----------------------------')
        item['city_name'] = city_name
        item['aqi'] = ''.join([x for x in aqi if (x.isdigit() or x=='.')])
        item['pm25'] = ''.join([x for x in pm25 if (x.isdigit() or x=='.')])
        item['pm10'] = ''.join([x for x in pm10 if (x.isdigit() or x=='.')])
        item['co'] = ''.join([x for x in co if (x.isdigit() or x=='.')])
        item['no2'] = ''.join([x for x in no2 if (x.isdigit() or x=='.')])
        item['o31h'] = ''.join([x for x in o31h if (x.isdigit() or x=='.')])
        item['o38h'] = ''.join([x for x in o38h if (x.isdigit() or x=='.')])
        item['so2'] = ''.join([x for x in so2 if (x.isdigit() or x=='.')])
        yield item
        if self.i+1 < len(self.cityList):
            self.i=self.i+1
            url = self.base_urls+self.cityList[self.i]
            yield scrapy.Request(url, callback=self.parse)