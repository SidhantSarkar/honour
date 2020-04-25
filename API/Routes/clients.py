import inspect
from flask import request, jsonify
from API.Routes import dataSource, validateResponse, convertToJson

import API.Stakeholder.client as client
from API import api

@api.route('/client/showLawyers', methods=['POST'])
def client_showLawyers():
    res = dataSource(request)
    params = inspect.getargspec(client.showLawyers).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.showLawyers(**res))

@api.route('/client/showFirms', methods=['POST'])
def client_showFirms():
    res = dataSource(request)
    params = inspect.getargspec(client.showFirms).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.showFirms(**res))

@api.route('/client/lawyerRequest', methods=['POST'])
def client_lawyerRequest():
    res = dataSource(request)
    params = inspect.getargspec(client.lawyerRequest).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.lawyerRequest(**res))

@api.route('/client/firmRequest', methods=['POST'])
def client_firmRequest():
    res = dataSource(request)
    params = inspect.getargspec(client.firmRequest).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.firmRequest(**res))

@api.route('/client/addDocument', methods=['POST'])
def client_addDocument():
    res = dataSource(request)
    params = inspect.getargspec(client.addDocument).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.addDocument(**res))

@api.route('/client/getActiveCases', methods=['POST'])
def client_getActiveCases():
    res = dataSource(request)
    params = inspect.getargspec(client.getActiveCases).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.getActiveCases(**res))

@api.route('/client/getPendindCases', methods=['POST'])
def client_getPendindCases():
    res = dataSource(request)
    params = inspect.getargspec(client.getPendindCases).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.getPendindCases(**res))

@api.route('/client/withdrawCase', methods=['POST'])
def client_withdrawCase():
    res = dataSource(request)
    params = inspect.getargspec(client.withdrawCase).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.withdrawCase(**res))

@api.route('/client/viewPaymentRequests', methods=['POST'])
def client_viewPaymentRequests():
    res = dataSource(request)
    params = inspect.getargspec(client.viewPaymentRequests).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.viewPaymentRequests(**res))

@api.route('/client/makePayment', methods=['POST'])
def client_makePayment():
    res = dataSource(request)
    params = inspect.getargspec(client.makePayment).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(client.makePayment(**res))
