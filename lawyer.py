from init import selectWrapper,insertUpdateDeleteWrapper
import json

def getRequests(Lawyer_Id):
    query = 'SELECT * FROM lawyer_request WHERE LawyerID = %s AND Status = 0'
    param = (Lawyer_Id,)
    return selectWrapper(query, param)

def updateStatus(Lawyer_Id, Client_Id, Status, Accussed_Id='', Type=''):
    query = 'UPDATE lawyer_request SET Status = %s WHERE LawyerID = %s AND ClientID = %s' 
    param = (Status, Lawyer_Id, Client_Id)
    res = insertUpdateDeleteWrapper(query, param)

    if(Status == 2):
        return res
    else:
        # CIVIL
        if(Type == 0):
            query = 'INSERT INTO Pending_Cases (FilingDate, VictimID, Victim_LawyerID, Type) VALUES (CURDATE(), %s, %s, %s)'
            param = (Client_Id, Lawyer_Id, Type)
        # CRIME
        else:
            if(not Accussed_Id):
                return json.dump({'res':'failed'})
            
            query = 'INSERT INTO Pending_Cases (FilingDate, VictimID, Victim_LawyerID, AccusedID, Type) VALUES (CURDATE(), %s, %s, %s, %s)'
            param = (Client_Id, Lawyer_Id, Accussed_Id, Type)
        
        return insertUpdateDeleteWrapper(query, param)

def attachAccusedLawyer(FilingNo, Lawyer_Id):
    query = 'UPDATE Pending_Cases SET Accused_LawyerID = %s WHERE FilingNo = %s'
    param = (Lawyer_Id, FilingNo)
    return insertUpdateDeleteWrapper(query, param)

def getPendingCases(LawyerID):
    query = 'SELECT * FROM Pending_Cases WHERE Victim_LawyerID = %s OR Accused_LawyerID = %s'
    param = (LawyerID,LawyerID)
    return selectWrapper(query,param)

def getActiveCases(LawyerID):
    query = 'SELECT * FROM Active_Cases WHERE CNRno in (SELECT DISTINCT CNRno FROM Lawyer_Client WHERE LawyerID = %s)'
    param = (LawyerID,)
    return selectWrapper(query, param)

def todaySchedule(LawyerID):
    query = 'SELECT * FROM Active_Cases WHERE NextHearing BETWEEN "CURDATE() 00:00:00" AND "CURDATE() 23:59:59" AND CNRno in (SELECT DISTINCT CNRno FROM Lawyer_Client WHERE LawyerID = %s)'
    param = (LawyerID,)
    return selectWrapper(query, param)

def getClosedCases():
    query = 'SELECT * FROM Closed_Cases'
    param = tuple()
    return selectWrapper(query, param)

def getPrevHearings(CNRno):
    query = 'SELECT * FROM Hearings WHERE CNRno = %s'
    param = (CNRno,)
    return selectWrapper(query, param)

def getNotPaidClients(LawyerID):
    query = 'SELECT * FROM Lawyer_Client WHERE LawyerID = %s AND isRequested = 0'
    param = (LawyerID,)
    return selectWrapper(query, param)

def createPaymentRequest(Lawyer_Id, Client_Id, Fees, CNRno):
    query = 'UPDATE Lawyer_Client SET isRequested = 1, Fee = %s WHERE ClientID = %s AND LawyerID = %s AND CNRno = %s'
    param = (Fees, Client_Id, Lawyer_Id, CNRno)
    return updateStatus(query, param)


            

