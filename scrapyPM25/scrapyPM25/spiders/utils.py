import MySQLdb

def get_city(HOST,USER,PASSWORD,DATABASE):
    db = MySQLdb.connect(HOST,USER,PASSWORD,DATABASE, charset='utf8' )
    cursor = db.cursor()
    sql = "SELECT city_name_eng from WeatherSystem_city"
    cursor.execute(sql)
    results = cursor.fetchall()
    result = []
    for row in results:
        result.append(row[0])
    db.close()
    return result