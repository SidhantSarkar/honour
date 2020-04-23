import inspect
from flask import request, jsonify
from API.Routes import dataSource, validateResponse

import API.Stakeholder.judge as judge
from API import api

@api.route('/judge/PrevCasesCNRno', methods=['POST'])
def judge_PrevCasesCNRno():
    res = dataSource(request)
    params = inspect.getargspec(judge.PrevCasesCNRno).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.PrevCasesCNRno(**res)

@api.route('/judge/PrevCasesAct', methods=['POST'])
def judge_PrevCasesAct():
    res = dataSource(request)
    params = inspect.getargspec(judge.PrevCasesAct).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.PrevCasesAct(**res)

@api.route('/judge/Schedule', methods=['POST'])
def judge_Schedule():
    res = dataSource(request)
    params = inspect.getargspec(judge.Schedule).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.Schedule(**res)

@api.route('/judge/LawyerTrackRecord', methods=['POST'])
def judge_LawyerTrackRecord():
    res = dataSource(request)
    params = inspect.getargspec(judge.LawyerTrackRecord).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.LawyerTrackRecord(**res)

@api.route('/judge/ClientTrackRecord', methods=['POST'])
def judge_ClientTrackRecord():
    res = dataSource(request)
    params = inspect.getargspec(judge.ClientTrackRecord).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.ClientTrackRecord(**res)

@api.route('/judge/ViewCase', methods=['POST'])
def judge_ViewCase():
    res = dataSource(request)
    params = inspect.getargspec(judge.ViewCase).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.ViewCase(**res)

@api.route('/judge/ViewActiveCases', methods=['POST'])
def judge_ViewActiveCases():
    res = dataSource(request)
    params = inspect.getargspec(judge.ViewActiveCases).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.ViewActiveCases(**res)

@api.route('/judge/AnnounceVerdict', methods=['POST'])
def judge_AnnounceVerdict():
    res = dataSource(request)
    params = inspect.getargspec(judge.AnnounceVerdict).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.AnnounceVerdict(**res)

@api.route('/judge/SetHearing', methods=['POST'])
def judge_SetHearing():
    res = dataSource(request)
    params = inspect.getargspec(judge.SetHearing).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.SetHearing(**res)

@api.route('/judge/ViewPendingCases', methods=['POST'])
def judge_ViewPendingCases():
    res = dataSource(request)
    params = inspect.getargspec(judge.ViewPendingCases).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.ViewPendingCases(**res)

@api.route('/judge/AcceptCase', methods=['POST'])
def judge_AcceptCase():
    res = dataSource(request)
    params = inspect.getargspec(judge.AcceptCase).args

    # check params should be in res
    if (not validateResponse(params, res)):
        return jsonify({'res': 'missing params'})
    
    return judge.AcceptCase(**res)
