import json
from flask import jsonify, Flask

cursor = None

def selectWrapper(select, params):
    try:
        cursor.execute(select, params)
        res = cursor.fetchall()
        headers=[x[0] for x in cursor.description]
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
        cursor.execute(insert, params)

        if(cursor.rowcount):
            resp = {'res': 'success'}
            return resp
        else:
            resp = {'res': 'failed'}
            return resp
            
    except Exception as e:
        resp = {'res': 'failed', 'err': str(e)}
        return resp

# # Handle circular imports
# # do not change the structure of this file
# import API.Stakeholder.client as client
# import API.Stakeholder.firms as firms
# import API.Stakeholder.judge as judge
# import API.Stakeholder.lawyer as lawyer
# import API.Stakeholder.officer as officer