import json
import datetime
from flask import jsonify, Flask

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
        resp = Flask.response_class(response=json.dumps(result, default = myconverter), status=200, mimetype='application/json')
        return resp

    except Exception as e:
        resp = Flask.response_class(response=json.dumps({'res': 'failed', 'err': str(e)}, default = myconverter), status=400, mimetype='application/json')
        return resp

def insertUpdateDeleteWrapper(insert, params):
    try:        
        cursor.execute(insert, params)

        if(cursor.rowcount):
            resp = Flask.response_class(response=json.dumps({'res': 'success'}), status=200, mimetype='application/json')
            return resp
        else:
            resp = Flask.response_class(response=json.dumps({'res': 'failed'}), status=400, mimetype='application/json')
            return resp
            
    except Exception as e:
        resp = Flask.response_class(response=json.dumps({'res': 'failed', 'err': str(e)}, default = myconverter), status=400, mimetype='application/json')
        return resp

# # Handle circular imports
# # do not change the structure of this file
# import API.Stakeholder.client as client
# import API.Stakeholder.firms as firms
# import API.Stakeholder.judge as judge
# import API.Stakeholder.lawyer as lawyer
# import API.Stakeholder.officer as officer