# MonitorPlatform
### 基于 Django + Scrapy 框架实现的空气质量监测系统
An air quality monitor platform based on Django frame. Related data are crawled by Scrapy on [PM25](http://pm25.in/)  

## 食用方法
### 初始化环境  

1. 在使用本项目前请确认你已经拥有了 **conda** 环境以及 **MySQL** 数据库，以下命令会调用到 conda 相关命令。    

2. 在 *MonitorPlatform/db_properties.py* 中设置数据库的相关配置，并将 *MonitorPlatform/extra-recourse* 中的 *django_data.sql* 部署到你的数据库中。   

    关于项目内相关参数的修改 : 
    * 如需修改获取空气质量城市的数据，可以在数据库内的 *WeatherSystem_city* 表中修改。  
    * 如需修改前端页面的城市空气质量排名数，可以修改 *city_sort* 视图中的 ```LIMIT 排名数```。  
    * 如需修改图表中的数据实效，可以修改 *recent_items* 视图中的 ``` `weathersystem_airquality`.`record_date`, now( ) ) <= ( ( ( 60 * 60 ) * 24 ) * 有效天数 ) )```

3. 进入该项目目录内，运行命令 ```python init_project.py``` 。  
由于该文件还未测试，若报错或无法使用，请参照该文件内的命令安装依赖的包，具体需要执行命令如下：
    ```bash
        conda install Django==3.0.3
        conda install scrapy
        conda install mysqlclient
        conda install MySQL-python
    ```
    
### 选择你想干的事儿  
* 如果要启动 Web 服务器，进入该项目目录内，运行命令 ```python runserver.py``` ，打开浏览器访问 *http://localhost:8000/WeatherSystem* 即可打开 Web 页面。  

* 如果要启动定时获取空气质量数据并绘制图表功能，进入该项目目录内，运行命令 ```python capturedata.py``` 即可创建定时获取数据功能。  
*(获取数据的时间间隔可以在 *MonitorPlatform/data.py* 中的 ```SEC``` 变量内重新定义)*  

### Powered by [AlbertoWang](https://github.com/AlbertoWang) and  [ShaneCN](https://github.com/ShaneCN)

##### 免责声明 : 本项目仅供学习交流使用,项目内相关网站爬虫使用请遵守相关法律法规,若产生纠纷或问题,本 Repo 作者不承担一切责任。
##### Disclaimer : This project is only for learning and communication. Please use the website crawlers in the project under complying with relevant laws and regulations. In case of disputes or problems, the author of this Repo is not responsible for them all.
