import client
import mysql.connector as mysql

mydb = mysql.connect(
        host='localhost',
        port=3306,
        user='user',
        passwd='user123',
        database='ecourt',
        autocommit=True
    )

client.cursor = mydb.cursor()

print(client.showLawyers('crime'))