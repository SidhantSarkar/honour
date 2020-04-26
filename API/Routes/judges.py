import inspect
from flask import request, jsonify
from API.Routes import dataSource, validateResponse, convertToJson

import API.Stakeholder.judge as judge
from API import api

@api.route('/judge/prevCasesCNRno', methods=['POST'])
def judge_prevCasesCNRno():
    res = dataSource(request)
    params = inspect.getargspec(judge.prevCasesCNRno).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.prevCasesCNRno(**res))

@api.route('/judge/prevCasesAct', methods=['POST'])
def judge_prevCasesAct():
    res = dataSource(request)
    params = inspect.getargspec(judge.prevCasesAct).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.prevCasesAct(**res))

@api.route('/judge/schedule', methods=['POST'])
def judge_schedule():
    res = dataSource(request)
    params = inspect.getargspec(judge.schedule).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.schedule(**res))

@api.route('/judge/lawyerTrackRecord', methods=['POST'])
def judge_lawyerTrackRecord():
    res = dataSource(request)
    params = inspect.getargspec(judge.lawyerTrackRecord).args

    # check params should be in res
    if (not validateResponse(params, res)):
         return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.LawyerlrackRecord(**res))

@api.route('/judge/clientTrackRecord', methods=['POST'])
def judge_clientTrackRecord():
    res = dataSource(request)
    params = inspect.getargspec(judge.clientTrackRecord).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.clientTrackRecord(**res))

@api.route('/judge/viewCase', methods=['POST'])
def judge_viewCase():
    res = dataSource(request)
    params = inspect.getargspec(judge.viewCase).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.viewCase(**res))

@api.route('/judge/viewActiveCases', methods=['POST'])
def judge_viewActiveCases():
    res = dataSource(request)
    params = inspect.getargspec(judge.viewActiveCases).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.viewActiveCases(**res))

@api.route('/judge/announceVerdict', methods=['POST'])
def judge_announceVerdict():
    res = dataSource(request)
    params = inspect.getargspec(judge.announceVerdict).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.announceVerdict(**res))

@api.route('/judge/setHearing', methods=['POST'])
def judge_setHearing():
    res = dataSource(request)
    params = inspect.getargspec(judge.setHearing).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.setHearing(**res))

@api.route('/judge/viewPendingCases', methods=['POST'])
def judge_viewPenAccusedStmnts():
    res = dataSource(request)
    params = inspect.getargspec(judge.viewPendingCases).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.viewPendingCases(**res))

@api.route('/judge/acceptCase', methods=['POST'])
def judge_acceptCase():
    res = dataSource(request)
    params = inspect.getargspec(judge.acceptCase).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return convertToJson(judge.acceptCase(**res))
