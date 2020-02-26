from scrapy.crawler import CrawlerProcess
from scrapy.utils.project import get_project_settings

def runSpider():
    process = CrawlerProcess(get_project_settings())

    # 'followall' is the name of one of the spiders of the project.
    process.crawl('PMSpider')
    process.start()  # the script will block here until the crawling is finished
runSpider()