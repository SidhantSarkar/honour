import datetime    
from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper

# datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')

def showLawyers(Spec_Area):
    '''CLIENT: search for lawyer'''
    query = 'SELECT * FROM Lawyers WHERE Spec_Area = %s OR Spec_Area IS NULL ORDER BY rating DESC, Fees_range ASC'
    param = (Spec_Area,)
    return selectWrapper(query, param)

def showFirms(Spec_Area):
    '''CLIENT: search for firm'''
    query = 'SELECT * FROM Firms WHERE Spec_Area = %s OR Spec_Area IS NULL ORDER BY rating DESC, Fees_range ASC'
    param = (Spec_Area,)
    return selectWrapper(query, param)

def lawyerRequest(ClientID, LawyerID, Client_Note, Quotation, FilingNo=''):
    '''CLIENT: insert to lawyer request table'''
    if (FilingNo):
        query = 'INSERT INTO Lawyer_Request (ClientID, LawyerID, Client_Note, Quotation, FilingNo) VALUES (%s, %s, %s, %s, %s)'
        param = (ClientID,LawyerID,Client_Note,Quotation,FilingNo)
        res = insertUpdateDeleteWrapper(query,param)
    else:
        query = 'INSERT INTO Lawyer_Request (ClientID, LawyerID, Client_Note, Quotation) VALUES (%s, %s, %s, %s)'
        param = (ClientID,LawyerID,Client_Note,Quotation)
        res = insertUpdateDeleteWrapper(query, param)
    return res  

def firmRequest(ClientID, FirmID, Client_Note, Quotation, FilingNo=''):
    '''CLIENT: insert to lawyer request table'''
    if (FilingNo):
        query = 'INSERT INTO Firm_Request (ClientID, FirmID, Client_Note, Quotation, FilingNo) VALUES (%s, %s, %s, %s, %s)'
        param = (ClientID,FirmID,Client_Note,Quotation,FilingNo)
        res = insertUpdateDeleteWrapper(query, param)
    else:
        query = 'INSERT INTO Firm_Request (ClientID, FirmID, Client_Note, Quotation) VALUES (%s, %s, %s, %s)'
        param = (ClientID,FirmID,Client_Note,Quotation)
        res = insertUpdateDeleteWrapper(query, param)
    return res

def addDocument(ClientID, FilingNo, Doc):
    '''CLIENT: insert Document'''
    query = 'INSERT INTO Documents (ClientID, FilingNo, Doc) VALUES (%s, %s, %s)'
    param = (ClientID,FilingNo,Doc)
    res = insertUpdateDeleteWrapper(query, param)
    if(res['res'] == 'failed'):
        return res
    else:
        query = 'UPDATE Pending_Cases SET Doc_Uploaded_Victim = 1 WHERE VictimID=%s AND FilingNo=%s'
        param = (ClientID,FilingNo)
        res = insertUpdateDeleteWrapper(query, param)
        if (res['res'] == 'failed'):
            query = 'UPDATE Pending_Cases SET Doc_Uploaded_Accused = 1 WHERE AccusedID=%s AND FilingNo=%s'
            param = (ClientID,FilingNo)
            res = insertUpdateDeleteWrapper(query, param)
            return res
        else:
            return res

def getActiveCases(ClientID):
    '''CLIENT: get active cases'''
    query = 'SELECT * FROM Active_Cases WHERE CNRno in (SELECT DISTINCT(CNRno) FROM Lawyer_Client WHERE ClientID = %s)'
    param = (ClientID,)
    return selectWrapper(query, param)

def getPendindCases(User_ID):
    '''CLIENT: get pending cases'''
    query = 'SELECT * FROM Pending_Cases WHERE VictimID = %s OR AccusedID = %s AND is_Verified = 0'
    param = (User_ID, User_ID)
    return selectWrapper(query, param)

def withdrawCase(Case_ID, VictimID):
    '''CLIENT: withdraw cases'''

    query = "SET FOREIGN_KEY_CHECKS = 0"
    param = ()
    res1 = insertUpdateDeleteWrapper(query, param)

    query = 'DELETE FROM Pending_Cases WHERE FilingNo = %s AND VictimID = %s AND is_Verified = 0'
    param = (Case_ID, VictimID)
    res = insertUpdateDeleteWrapper(query, param)

    query = "SET FOREIGN_KEY_CHECKS = 1"
    param = ()
    res1 = insertUpdateDeleteWrapper(query, param)
    
    if(res['res'] == 'failed'):
        if('err' not in res.keys()):
            
            query = "SET FOREIGN_KEY_CHECKS = 0"
            param = ()
            res1 = insertUpdateDeleteWrapper(query, param)

            query = 'DELETE FROM Active_Cases WHERE CNRno = %s'
            param = (Case_ID,)
            res = insertUpdateDeleteWrapper(query, param)
            
            query = "SET FOREIGN_KEY_CHECKS = 1"
            param = ()
            res1 = insertUpdateDeleteWrapper(query, param)

            return res
        return res
    return res

def viewPaymentRequests(ClientID):
    '''CLIENT: View Requested Payments'''
    query = 'SELECT * FROM Lawyer_Client WHERE ClientID = %s AND isRequested = 1  AND isPaid = 0'
    param = (ClientID,)
    return selectWrapper(query, param)

def makePayment(ClientID, LawyerID, CNRno):
    '''CLIENT: Make Payment'''
    query = 'UPDATE Lawyer_Client SET isPaid = 1, datePaid = %s WHERE ClientID = %s AND LawyerID = %s AND CNRno = %s'
    param = (datetime.datetime.now().strftime('%Y-%m-%d'), ClientID, LawyerID, CNRno)
    return insertUpdateDeleteWrapper(query, param)

# print(showLawyers('crime'))
# print(lawyerRequest(1,1,'Test Chall raha hai',10000)) 