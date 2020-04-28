import inspect
from flask import request, jsonify
from API.Routes import dataSource, validateResponse, convertToJson, returnMissingParams, addtionalParams

import API.Stakeholder.student as student
from API import api

@api.route('/student/getCasesByKeywords', methods=['POST'])
def student_getCasesByKeywords():
    res = dataSource(request)
    params = inspect.getargspec(student.getCasesByKeywords).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(student.getCasesByKeywords(**res))

@api.route('/student/getCasesByActs', methods=['POST'])
def student_getCasesByActs():
    res = dataSource(request)
    params = inspect.getargspec(student.getCasesByActs).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(student.getCasesByActs(**res))

@api.route('/student/getCasesDetails', methods=['POST'])
def student_getCasesDetails():
    res = dataSource(request)
    params = inspect.getargspec(student.getCasesDetails).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(student.getCasesDetails(**res))