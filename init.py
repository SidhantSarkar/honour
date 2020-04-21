import json
import datetime

cursor = None

def myconverter(o):
    if isinstance(o, datetime.date):
        return o.__str__()
    if isinstance(o, datetime.datetime):
        return o.__str__()

def selectWrapper(select, params):
    try:
        cursor.execute(select, params)
        res = cursor.fetchall()
        headers=[x[0] for x in cursor.description]
        json_data=[]
        for result in res:
            json_data.append(dict(zip(headers,result)))
        result = {'res': 'ok', 'arr': json_data}
        return json.dumps(result, default = myconverter)

    except Exception as e:
        return json.dumps({'res': 'failed', 'err': str(e)})

def insertUpdateDeleteWrapper(insert, params):
    try:        
        cursor.execute(insert, params)

        if(cursor.rowcount):
            return json.dumps({'res': 'success'})
        else:
            return json.dumps({'res': 'failed'})
    except Exception as e:
        return json.dumps({'res': 'failed', 'err': str(e)})