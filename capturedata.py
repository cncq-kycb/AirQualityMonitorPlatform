#coding:utf-8
import os
import sys
import time
#from apscheduler.schedulers.background import BackgroundScheduler

def job():
    print('\nJob start at', time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(time.time())))
    try:
        os.chdir('scrapyPM25')
        os.system('scrapy crawl PMSpider')
        print('Scrapy work finished')
    except IOError:
        print('Scrapy work failed')
        sys.exit(0)
    try:
        os.chdir('..')
        os.chdir('PlotUtils')
        os.system('python plot.py')
        print('Plot work finished')
    except IOError:
        print('Plot work failed')
        sys.exit(0)
    print('\r', "Finished...     ", end='\n')

# 如果需要异步任务处理可以使用如下方法
# scheduler = BackgroundScheduler()
# # 采用固定时间间隔，每隔1H执行一次
# scheduler.add_job(job, 'interval', seconds=3600)
# # 独立的线程启动
# scheduler.start()

job()
# 下一次运行任务时间提示
SEC=3600
while True:
    if SEC < 0:
        SEC=3600
        print('\r', "Running...         ", end='')
        job()
    else :
        print('\r', "{:>4} seconds to run".format(SEC), end='')
        SEC-=1
        time.sleep(1)

    
