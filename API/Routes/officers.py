import inspect
from flask import request, jsonify
from API.Routes import dataSource, validateResponse, convertToJson, returnMissingParams, addtionalParams

import API.Stakeholder.officer as officer
from API import api

@api.route('/officer/fileFIR', methods=['POST'])
def officer_fileFIR():
    res = dataSource(request)
    params = inspect.getargspec(officer.fileFIR).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(officer.fileFIR(**res))

@api.route('/officer/checkDocStatus', methods=['POST'])
def officer_checkDocStatus():
    res = dataSource(request)
    params = inspect.getargspec(officer.checkDocStatus).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(officer.checkDocStatus(**res))

@api.route('/officer/verifyDoc', methods=['POST'])
def officer_verifyDoc():
    res = dataSource(request)
    params = inspect.getargspec(officer.verifyDoc).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(officer.verifyDoc(**res))

@api.route('/officer/addHearing', methods=['POST'])
def officer_addHearing():
    res = dataSource(request)
    params = inspect.getargspec(officer.addHearing).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(officer.addHearing(**res))

@api.route('/officer/schedule', methods=['POST'])
def officer_schedule():
    res = dataSource(request)
    params = inspect.getargspec(officer.schedule).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(officer.schedule(**res))
