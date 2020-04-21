import datetime    
from init import selectWrapper,insertUpdateDeleteWrapper
# datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

def showLawyers(spec_area):
    '''CLIENT: search for lawyer'''
    query = 'SELECT * FROM Lawyers WHERE Spec_Area = %s OR Spec_Area IS NULL ORDER BY rating DESC, Fees_range ASC'
    param = (spec_area,)
    return selectWrapper(query, param)

def showFirms(spec_area):
    '''CLIENT: search for firm'''
    query = 'SELECT * FROM Firms WHERE Spec_Area = %s OR Spec_Area IS NULL ORDER BY rating DESC, Fees_range ASC'
    param = (spec_area,)
    return selectWrapper(query, param)

def lawyerRequest(Client_ID, Lawyer_ID, Client_Note, Quotation, Filing_No=''):
    '''CLIENT: insert to lawyer request table'''
    if (Filing_No):
        query = 'INSERT INTO Lawyer_Request (ClientID, LawyerID, Client_Note, Quotation, FilingNo) VALUES (%s, %s, %s, %s, %s)'
        param = (Client_ID,Lawyer_ID,Client_Note,Quotation,Filing_No)
        res = insertUpdateDeleteWrapper(query,param)
    else:
        query = 'INSERT INTO Lawyer_Request (ClientID, LawyerID, Client_Note, Quotation) VALUES (%s, %s, %s, %s)'
        param = (Client_ID,Lawyer_ID,Client_Note,Quotation)
        res = insertUpdateDeleteWrapper(query, param)
    return res  

def firmRequest(Client_ID, Firm_ID, Client_Note, Quotation, Filing_No=''):
    '''CLIENT: insert to lawyer request table'''
    if (Filing_No):
        query = 'INSERT INTO Firm_Request (ClientID, FirmID, Client_Note, Quotation, FilingNo) VALUES (%s, %s, %s, %s, %s)'
        param = (Client_ID,Firm_ID,Client_Note,Quotation,Filing_No)
        res = insertUpdateDeleteWrapper(query, param)
    else:
        query = 'INSERT INTO Firm_Request (ClientID, FirmID, Client_Note, Quotation) VALUES (%s, %s, %s, %s)'
        param = (Client_ID,Firm_ID,Client_Note,Quotation)
        res = insertUpdateDeleteWrapper(query, param)
    return res

def addDocument(ClientID, Filing_No, Document):
    '''CLIENT: insert Document'''
    query = 'INSERT INTO Documents (ClientID, FilingNo, Document) VALUES (%s, %s, %s)'
    param = (ClientID,Filing_No,Document)
    res = insertUpdateDeleteWrapper(query, param)
    if(res['res'] == 'failed'):
        return res
    else:
        query = 'UPDATE Pending_Cases SET Doc_Uploaded_Victim = 1 WHERE VictimID=%s AND FilingNo=%s'
        param = (ClientID,Filing_No)
        res = insertUpdateDeleteWrapper(query, param)
        if (res['res'] == 'failed'):
            query = 'UPDATE Pending_Cases SET Doc_Uploaded_Accused = 1 WHERE AccusedID=%s AND FilingNo=%s'
            param = (ClientID,Filing_No)
            res = insertUpdateDeleteWrapper(query, param)
            return res
        else:
            return res

def getActiveCases(User_ID):
    '''CLIENT: get active cases'''
    query = 'SELECT * FROM Active_Cases WHERE VictimID = %s OR AccusedID = %s'
    param = (User_ID,)
    return selectWrapper(query, param)

def getPendindCases(User_ID):
    '''CLIENT: get pending cases'''
    query = 'SELECT * FROM Pending_Cases WHERE VictimID = %s OR AccusedID = %s AND is_Verified = 0'
    param = (User_ID,)
    return selectWrapper(query, param)

def withdrawCase(Case_ID, User_ID):
    '''CLIENT: withdraw cases'''
    query = 'DELETE FROM Pending_Cases WHERE FilingNo = %s AND VictimID = %s AND is_Verified = 0'
    param = (Case_ID, User_ID)
    res = insertUpdateDeleteWrapper(query, param)
    
    if(res['res'] == 'failed'):
        if('err' not in res.keys()):
            query = 'DELETE FROM Active_Cases WHERE CNRno = %s'
            param = (Case_ID,)
            res = insertUpdateDeleteWrapper(query, param)
            return res
        return res
    return res

def viewPaymentRequests(User_ID):
    '''CLIENT: View Requested Payments'''
    query = 'SELECT * FROM Lawyer_Client WHERE ClientID = %s AND isRequested = 1  AND isPaid = 0'
    param = (User_ID,)
    return selectWrapper(query, param)

def makePayment(User_ID, Lawyer_ID, CNRno):
    '''CLIENT: Make Payment'''
    query = 'UPDATE Lawyer_Client SET isPaid = 1, datePaid = %s WHERE ClientID = %s AND LawyerID = %s AND CNRno = %s'
    param = (datetime.datetime.now().strftime('%Y-%m-%d'), User_ID, Lawyer_ID, CNRno)
    return insertUpdateDeleteWrapper(query, param)

# print(showLawyers('crime'))
# print(lawyerRequest(1,1,'Test Chall raha hai',10000)) 