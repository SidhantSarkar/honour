import client
import init
import mysql.connector as mysql
import lawyer

mydb = mysql.connect(
        host='localhost',
        port=3306,
        user='user',
        passwd='user123',
        database='ecourt',
        autocommit=True
    )

init.cursor = mydb.cursor()

# print(client.showLawyers('crime'))
print(lawyer.getClosedCases())