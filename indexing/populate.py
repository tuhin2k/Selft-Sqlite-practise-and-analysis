import mysql.connector
import string
import random

db = mysql.connector.connect(
    host = 'localhost' ,
    user = 'root' ,
    passwd = 'password' ,
    database = 'demo_db_a'
)

cursor = db.cursor()

def getUniqueName() :
    res = ''.join(random.choices(string.ascii_uppercase + string.digits,k=20)) 
    return res


s="insert into test(name) values (\"{}\");"

for i in range (0,100000) :
    q=s.format(getUniqueName())
    print(q)
    cursor.execute(q)

db.commit()


#480TGQLCPCI8X8EFP2Y7