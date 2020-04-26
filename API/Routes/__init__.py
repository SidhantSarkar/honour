from flask import Flask
import datetime
import json

def dataSource(request):
    res = {}
    if (request.json):
        res = request.json
    if (request.form):
        temp = request.form
        # Flatten form data
        res = {}
        for key in temp:
            res[key] = temp[key]
    print(res)
    return res

def validateResponse(arr, res):
    for i in arr:
        if (i not in res):
            return False
    
    return True

def returnMissingParams(arr, res):
    required = set(arr)
    supplied = set(res.keys())
    missing = required - supplied
    return list(missing)

def addtionalParams(arr, res):
    required = set(arr)
    supplied = set(res.keys())
    if(len(required) == len(supplied)):
        return True
    return False

def myconverter(o):
    if isinstance(o, datetime.date):
        return o.__str__()
    if isinstance(o, datetime.datetime):
        return o.__str__()

def convertToJson(resp):
    if(resp['res'] == 'failed'):
        return Flask.response_class(response=json.dumps(resp, default = myconverter), status=400, mimetype='application/json')
    else:
        return Flask.response_class(response=json.dumps(resp, default = myconverter), status=200, mimetype='application/json')