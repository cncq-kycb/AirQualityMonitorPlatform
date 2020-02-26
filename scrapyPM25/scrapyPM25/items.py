# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class Scrapypm25Item(scrapy.Item):
    # define the fields for your item here like:

    city_name = scrapy.Field()
    aqi = scrapy.Field()
    pm25 = scrapy.Field()
    pm10 = scrapy.Field()
    co = scrapy.Field()
    no2 = scrapy.Field()
    o31h = scrapy.Field()
    o38h = scrapy.Field()
    so2 = scrapy.Field()
