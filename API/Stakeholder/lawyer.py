from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper

def getRequests(LawyerID):
    query = 'SELECT * FROM Lawyer_Request WHERE LawyerID = %s AND Status = 0'
    param = (LawyerID,)
    return selectWrapper(query, param)

def updateStatus(LawyerID, ClientID, Status, AccusedID='', Type='', FilingNo=''):
    query = 'UPDATE Lawyer_Request SET Status = %s WHERE LawyerID = %s AND ClientID = %s' 
    param = (Status, LawyerID, ClientID)
    res = insertUpdateDeleteWrapper(query, param)

    if(Status == 2):
        return res
    else:
        # CIVIL
        if(Type == 0):
            query = 'INSERT INTO Pending_Cases (FilingDate, VictimID, Victim_LawyerID, Type) VALUES (CURDATE(), %s, %s, %s)'
            param = (ClientID, LawyerID, Type)
            return insertUpdateDeleteWrapper(query, param)

        # CRIME
        else:
            if(not AccusedID):
                query = 'UPDATE Lawyer_Request SET Status = 0 WHERE LawyerID = %s AND ClientID = %s' 
                param = (LawyerID, ClientID)
                res = insertUpdateDeleteWrapper(query, param)
                return {'res':'failed'}
            
            if(not FilingNo):
                query = 'INSERT INTO Pending_Cases (FilingDate, VictimID, Victim_LawyerID, AccusedID, Type) VALUES (CURDATE(), %s, %s, %s, %s)'
                param = (ClientID, LawyerID, AccusedID, Type)
                return insertUpdateDeleteWrapper(query, param)

            else:
                return attachAccusedLawyer(FilingNo, LawyerID)

def attachAccusedLawyer(FilingNo, Accused_LawyerID):
    query = 'UPDATE Pending_Cases SET Accused_LawyerID = %s WHERE FilingNo = %s'
    param = (Accused_LawyerID, FilingNo)
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

def createPaymentRequest(LawyerID, ClientID, Fee, CNRno):
    query = 'UPDATE Lawyer_Client SET isRequested = 1, Fee = %s WHERE ClientID = %s AND LawyerID = %s AND CNRno = %s'
    param = (Fee, ClientID, LawyerID, CNRno)
    return updateStatus(query, param)


            

