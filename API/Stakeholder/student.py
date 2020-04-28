from API.Stakeholder import selectWrapper

def getCasesByKeywords(keywords, date=""):
    '''STUDENT: Search previous cases by keywords [and date]'''
    if(not keywords):
        return {'res':'failed', 'type': 'empty param'}

    keywords = keywords.split(",")
    query = "SELECT * FROM Closed_Cases WHERE ("
    param = []

    if(date):
        query += "Verdict_Date > %s) AND ("
        param.append(date)

    for words in keywords:
        query+= "CaseStmnt LIKE %s OR FinalVerdict LIKE %s OR "
        temp = "%" + words + "%"
        param.extend([temp, temp])
    
    query = query[:-4] + ")"
    param = tuple(param)
    print(query, param)
    return selectWrapper(query,param)

def getCasesByActs(acts, date=""):
    '''STUDENT: Search previous cases by acts [and date]'''
    if(not acts):
        return {'res':'failed', 'type': 'empty param'}

    acts = acts.split(",")
    query = "SELECT * FROM Closed_Cases WHERE ("
    param = []

    if(date):
        query += "Verdict_Date > %s) AND ("
        param.append(date)

    for words in acts:
        query+= "Acts LIKE %s OR "
        temp = "%" + words + "%"
        param.append(temp)
    
    query = query[:-4] + ")"
    param = tuple(param)

    return selectWrapper(query,param)

def getCasesDetails(CNRno):
    '''STUDENT: Get case documents and fir'''
    query = "SELECT * FROM Closed_Cases WHERE CNRno = %s"
    param = (CNRno,)

    res = selectWrapper(query, param)

    if(res['res']=='failed' or len(res['arr']) == 0):
        return res
    
    data = res['arr'][0]
    query = "SELECT * FROM Documents WHERE FilingNo = %s"
    param = (data['FilingNo'],)

    doc = selectWrapper(query, param)

    if(doc['res']=='failed'):
        return doc

    res['doc'] = doc['arr']

    if(data['AccusedID']):
        query = "SELECT * FROM FIR WHERE FilingNo = %s"
        param = (data['FilingNo'],)

        fir = selectWrapper(query, param)

        if(fir['res']=='failed'):
            return fir
        
        res['fir'] = fir['arr']

    return res


    





    


