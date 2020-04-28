import inspect
from flask import request, jsonify
from API.Routes import dataSource, validateResponse, convertToJson, returnMissingParams, addtionalParams

import API.Stakeholder.firm as firm
from API import api

@api.route('/firm/searchClients', methods=['POST'])
def firm_searchClients():
    res = dataSource(request)
    params = inspect.getargspec(firm.searchClients).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.searchClients(**res))

@api.route('/firm/getRequests', methods=['POST'])
def firm_getRequests():
    res = dataSource(request)
    params = inspect.getargspec(firm.getRequests).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.getRequests(**res))

@api.route('/firm/getLawyers', methods=['POST'])
def firm_getLawyers():
    res = dataSource(request)
    params = inspect.getargspec(firm.getLawyers).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.getLawyers(**res))

@api.route('/firm/appointLawyer', methods=['POST'])
def firm_appointLawyer():
    res = dataSource(request)
    params = inspect.getargspec(firm.appointLawyer).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.appointLawyer(**res))

@api.route('/firm/lawyerPerformance', methods=['POST'])
def firm_lawyerPerformance():
    res = dataSource(request)
    params = inspect.getargspec(firm.lawyerPerformance).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.lawyerPerformance(**res))

@api.route('/firm/earningByClients', methods=['POST'])
def firm_earningByClients():
    res = dataSource(request)
    params = inspect.getargspec(firm.earningByClients).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.earningByClients(**res))

@api.route('/firm/earningByLawyers', methods=['POST'])
def firm_earningByLawyers():
    res = dataSource(request)
    params = inspect.getargspec(firm.earningByLawyers).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.earningByLawyers(**res))

@api.route('/firm/winsLoses', methods=['POST'])
def firm_winsLoses():
    res = dataSource(request)
    params = inspect.getargspec(firm.winsLoses).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.winsLoses(**res))

@api.route('/firm/showLawyers', methods=['POST'])
def firm_showLawyers():
    res = dataSource(request)
    params = inspect.getargspec(firm.showLawyers).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.showLawyers(**res))

@api.route('/firm/recruitLawyer', methods=['POST'])
def firm_recruitLawyer():
    res = dataSource(request)
    params = inspect.getargspec(firm.recruitLawyer).args
    
    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'failed', 'type':'missing params %s' %returnMissingParams(params, res)})
    
    if(not addtionalParams(params, res)):
        return jsonify({'res':'failed', 'reason': 'Additional Param Supplied.'})
    
    return convertToJson(firm.recruitLawyer(**res))