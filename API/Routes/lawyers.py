import inspect
from flask import request, jsonify
from API.Routes import dataSource, validateResponse

import API.Stakeholder.lawyer as lawyer
from API import api

@api.route('/lawyer/getRequests', methods=['POST'])
def lawyer_getRequests():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.getRequests).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.getRequests(**res)

@api.route('/lawyer/updateStatus', methods=['POST'])
def lawyer_updateStatus():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.updateStatus).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.updateStatus(**res)

@api.route('/lawyer/attachAccusedLawyer', methods=['POST'])
def lawyer_attachAccusedLawyer():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.attachAccusedLawyer).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.attachAccusedLawyer(**res)

@api.route('/lawyer/getPendingCases', methods=['POST'])
def lawyer_getPendingCases():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.getPendingCases).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.getPendingCases(**res)

@api.route('/lawyer/getActiveCases', methods=['POST'])
def lawyer_getActiveCases():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.getActiveCases).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.getActiveCases(**res)

@api.route('/lawyer/todaySchedule', methods=['POST'])
def lawyer_todaySchedule():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.todaySchedule).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.todaySchedule(**res)

@api.route('/lawyer/getClosedCases', methods=['POST'])
def lawyer_getClosedCases():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.getClosedCases).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.getClosedCases(**res)

@api.route('/lawyer/getPrevHearings', methods=['POST'])
def lawyer_getPrevHearings():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.getPrevHearings).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.getPrevHearings(**res)

@api.route('/lawyer/getNotPaidClients', methods=['POST'])
def lawyer_getNotPaidClients():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.getNotPaidClients).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.getNotPaidClients(**res)

@api.route('/lawyer/createPaymentRequest', methods=['POST'])
def lawyer_createPaymentRequest():
    res = dataSource(request)
    params = inspect.getargspec(lawyer.createPaymentRequest).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return lawyer.createPaymentRequest(**res)