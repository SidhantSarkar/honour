import json
from flask import jsonify, Flask

cursor = None

def selectWrapper(select, params):
    try:
        cursor_res = cursor.execute(select, params)
        res = cursor_res.fetchall()
        headers=[x[0] for x in cursor_res._cursor_description()]
        json_data=[]
        for result in res:
            json_data.append(dict(zip(headers,result)))
        resp = {'res': 'ok', 'arr': json_data}
        return resp

    except Exception as e:
        resp = {'res': 'failed', 'err': str(e)}
        return resp

def insertUpdateDeleteWrapper(insert, params):
    try:        
        cursor_res = cursor.execute(insert, params)

        if(cursor_res.rowcount):
            resp = {'res': 'success'}
            return resp
        else:
            resp = {'res': 'failed'}
            return resp
            
    except Exception as e:
        resp = {'res': 'failed', 'err': str(e)}
        return resp