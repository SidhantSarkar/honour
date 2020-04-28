db_setting = {
    'host' : 'remotemysql.com',
    'port' : 3306,
    'user' : 'E1C0vcc33H',
    'passwd' : 'qTjpeu0lbl',
    'database' : 'E1C0vcc33H',
    'autocommit' : True,
    'SQLALCHEMY_POOL_RECYCLE': 299
}

db_setting_local = {
    'host' : 'localhost',
    'port' : 3306,
    'user' : 'user',
    'passwd' : 'user123',
    'database' : 'honour',
    'autocommit' : True,
    'SQLALCHEMY_POOL_RECYCLE': 599
}

class config(object):
    SQLALCHEMY_DATABASE_URI = 'mysql://%s:%s@%s:%s/%s' %(db_setting.get('user'),  db_setting.get('passwd'), db_setting.get('host'), db_setting.get('port'), db_setting.get('database'))
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_POOL_RECYCLE = db_setting.get('SQLALCHEMY_POOL_RECYCLE')
    SQLALCHEMY_POOL_TIMEOUT = 20