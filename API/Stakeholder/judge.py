from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper

def prevCasesCNRno(CNRno):
	'''JUDGE: See Previous Judgments based on CNR No.'''
	query = 'SELECT * from Closed_Cases WHERE CNRno=%s'
	param = (CNRno,)
	return selectWrapper(query, param)

def prevCasesAct(Acts):
	'''JUDGE: See previous judgements based on Act'''
	query = "SELECT * from Closed_Cases WHERE Acts like %s"
	param = ("%"+Acts+"%",)
	return selectWrapper(query, param)

def schedule(JudgeID):
	'''JUDGE: See Schedule for the day'''
	query = "SELECT * from Active_Cases WHERE NextHearing BETWEEN 'CURDATE() 00:00:00' AND 'CURDATE() 23:59:59' AND JudgeID = %s"
	param = (JudgeID,)
	return selectWrapper(query, param)

def lawyerTrackRecord(LawyerID):
	'''JUDGE: Track record of a Lawyer'''
	query = "SELECT * from Closed_Cases where Victim_LawyerID = %s OR Accused_LawyerID = %s"
	param = (LawyerID, LawyerID	,)
	return selectWrapper(query, param)

def clientTrackRecord(ClientID):
	'''JUDGE: Track record of a Client'''
	query = "SELECT * from Closed_Cases where VictimID = %s OR AccusedID = %s"
	param = (ClientID, ClientID)
	return selectWrapper(query, param)

def viewCase(CNRno):
	'''JUDGE: View details of an Active case'''
	query = "SELECT * from Active_Cases where CNRno=%s"
	param = (CNRno,)
	return selectWrapper(query, param)

def viewActiveCases(JudgeID):
	'''JUDGE: View ongoing Active Cases'''
	query = "SELECT * from Active_Cases where JudgeID=%s"
	param = (JudgeID,)
	return selectWrapper(query, param)

def announceVerdict(CNRno, Victim_LawyerID, Accused_LawyerID, CaseStmnt, FinalVerdict , WonID_Client, WonID_Lawyer):
	'''JUDGE: Announce final verdict for a case'''
	result = viewCase(CNRno) #values extracted from Active_Cases

	query = "SET FOREIGN_KEY_CHECKS = 0"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)

	query = "DELETE from Active_Cases WHERE CNRno=%s"
	param = (CNRno,)
	res1 = insertUpdateDeleteWrapper(query, param)

	query = "SET FOREIGN_KEY_CHECKS = 1"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)
	
	if(res1['res'] == 'failed'):
		return res1
	
	if(result['res'] == 'ok'):
		values = result['arr'][0]
		query = "INSERT INTO Closed_Cases(CNRno, FilingNo, FilingDate, JudgeID, VictimID, Victim_LawyerID, AccusedID, Accused_LawyerID, CaseStmnt, Acts, FinalVerdict, Verdict_Date, WonID_Client, WonID_Lawyer) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,CURDATE(),%s,%s);"
		param = (CNRno, values['FilingNo'], values['FilingDate'], values['JudgeID'], values['VictimID'], Victim_LawyerID, values['AccusedID'], Accused_LawyerID, CaseStmnt, values['Acts'], FinalVerdict, WonID_Client, WonID_Lawyer,)
		return insertUpdateDeleteWrapper(query, param)

def setHearing(CNRno, PrevHearing, NextHearing, Purpose):
	'''JUDGE: Set the date for next Hearing'''
	query = "UPDATE Active_Cases SET NextHearing = %s, PrevHearing = %s WHERE CNRno = %s"
	param = (NextHearing, PrevHearing, CNRno,)
	res = insertUpdateDeleteWrapper(query, param)
	
	if(res['res'] == 'failed'):
		return res

	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,%s,%s)"
	param = (NextHearing, CNRno, PrevHearing, Purpose)
	return insertUpdateDeleteWrapper(query, param)

def viewPendingCases():
	'''JUDGE: View approved pending cases'''
	query = "SELECT * from Pending_Cases where is_Verified = 1"
	param = ()
	return selectWrapper(query,param)

def acceptCase(FilingNo, FilingDate, FirstHearing, Stage, CourtNo, JudgeID, VictimID, VictimStmnt, Acts, AccusedID=None, AccusedStmnt=""):
	'''JUDGE: Accept a pending case'''

	query = "SELECT Victim_LawyerID, Accused_LawyerID from Pending_Cases where FilingNo=%s"
	param = (FilingNo,)
	lawyers = selectWrapper(query, param)

	lawyers = lawyers['arr'][0] #extract corresponding lawyers

	#delete from pending cases
	query = "SET FOREIGN_KEY_CHECKS = 0"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)

	query = "DELETE from Pending_Cases where FilingNo=%s"
	param = (FilingNo,)
	result =  insertUpdateDeleteWrapper(query, param)
	
	query = "SET FOREIGN_KEY_CHECKS = 1"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)

	if(result['res'] == 'failed'):
		return result

	#add to active cases
	query = "INSERT into Active_Cases(FilingNo, FilingDate, FirstHearing, Stage, CourtNo, JudgeID, VictimID, VictimStmnt, AccusedID, AccusedStmnt, Acts) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
	param = (FilingNo, FilingDate, FirstHearing, Stage, CourtNo, JudgeID, VictimID, VictimStmnt, AccusedID, AccusedStmnt, Acts,)
	result = insertUpdateDeleteWrapper(query, param)

	if(result['res'] == 'failed'):
		return result

	#add to lawyer client
	query = "SELECT CNRno from Active_Cases where FilingNo = %s"
	param = (FilingNo,)
	res = selectWrapper(query, param)
	res = res['arr'][-1]

	CNR = res['CNRno']
	query = "INSERT into Lawyer_Client(LawyerID, ClientID, CNRno, Side) VALUES(%s,%s,%s,0)"
	param = (lawyers['Victim_LawyerID'], VictimID, CNR)
	result = insertUpdateDeleteWrapper(query, param)

	if(AccusedID!=None):
		query = "INSERT into Lawyer_Client(LawyerID, ClientID, CNRno, Side) VALUES(%s,%s,%s,1)"
		param = (lawyers['Accused_LawyerID'], AccusedID, CNR)
		result = insertUpdateDeleteWrapper(query, param)

	#add to hearings
	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,null,'First Hearing')"
	param = (FirstHearing, CNR)
	result = insertUpdateDeleteWrapper(query, param)
	
	return result