db_setting = {
    'host' : 'localhost',
    'port' : 3306,
    'user' : 'user',
    'passwd' : 'user123',
    'database' : 'honour',
    'autocommit' : True
}

class config(object):
    SQLALCHEMY_DATABASE_URI = 'mysql://%s:%s@%s:%s/%s' %(db_setting.get('user'),  db_setting.get('passwd'), db_setting.get('host'), db_setting.get('port'), db_setting.get('database'))
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_POOL_RECYCLE = 599
    SQLALCHEMY_POOL_TIMEOUT = 20