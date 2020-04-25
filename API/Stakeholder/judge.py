from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper

def prevCasesCNRno(CNR):
	'''JUDGE: See Previous Judgments based on CNR No.'''
	query = 'SELECT * from Closed_Cases WHERE CNRno=%s'
	param = (CNR,)
	return selectWrapper(query, param)

def prevCasesAct(Act):
	'''JUDGE: See previous judgements based on Act'''
	query = "SELECT * from Closed_Cases WHERE Acts like %s"
	param = ("%"+Act+"%",)
	return selectWrapper(query, param)

def schedule(J_ID):
	'''JUDGE: See Schedule for the day'''
	query = "SELECT * from Active_Cases WHERE NextHearing BETWEEN 'CURDATE() 00:00:00' AND 'CURDATE() 23:59:59' AND JudgeID = %s"
	param = (J_ID,)
	return selectWrapper(query, param)

def lawyerTrackRecord(L_ID):
	'''JUDGE: Track record of a Lawyer'''
	query = "SELECT * from Closed_Cases where Victim_LawyerID = %s OR Accused_LawyerID = %s"
	param = (L_ID, L_ID,)
	return selectWrapper(query, param)

def clientTrackRecord(C_ID):
	'''JUDGE: Track record of a Client'''
	query = "SELECT * from Closed_Cases where VictimID = %s OR AccusedID = %s"
	param = (C_ID, C_ID)
	return selectWrapper(query, param)

def viewCase(CNRno):
	'''JUDGE: View details of an Active case'''
	query = "SELECT * from Active_Cases where CNRno=%s"
	param = (CNRno,)
	return selectWrapper(query, param)

def viewActiveCases(J_ID):
	'''JUDGE: View ongoing Active Cases'''
	query = "SELECT * from Active_Cases where JudgeID=%s"
	param = (J_ID,)
	return selectWrapper(query, param)

def announceVerdict(CNR, Vic_L_ID, Acc_L_ID, CaseStmt, Verdict , WinC, WinL):
	'''JUDGE: Announce final verdict for a case'''
	result = ViewCase(CNR) #values extracted from Active_Cases

	query = "SET FOREIGN_KEY_CHECKS = 0"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)

	query = "DELETE from Active_Cases WHERE CNRno=%s"
	param = (CNR,)
	res1 = insertUpdateDeleteWrapper(query, param)

	query = "SET FOREIGN_KEY_CHECKS = 1"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)
	
	if(res1['res'] == 'failed'):
		return res1
	
	if(result['res'] == 'ok'):
		values = result['arr'][0]
		query = "INSERT INTO Closed_Cases(CNRno, FilingNo, FilingDate, JudgeID, VictimID, Victim_LawyerID, AccusedID, Accused_LawyerID, CaseStmnt, Acts, FinalVerdict, Verdict_Date, WonID_Client, WonID_Lawyer) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,CURDATE(),%s,%s);"
		param = (CNR, values['FilingNo'], values['FilingDate'], values['JudgeID'], values['VictimID'], Vic_L_ID, values['AccusedID'], Acc_L_ID, CaseStmt, values['Acts'], Verdict, WinC, WinL,)
		return insertUpdateDeleteWrapper(query, param)

def setHearing(CNR, PrevDate, NextDate, Purpose):
	'''JUDGE: Set the date for next Hearing'''
	query = "UPDATE Active_Cases SET NextHearing = %s, PrevHearing = %s WHERE CNRno = %s"
	param = (NextDate, PrevDate, CNR,)
	res = insertUpdateDeleteWrapper(query, param)
	
	if(res['res'] == 'failed'):
		return res

	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,%s,%s)"
	param = (NextDate, CNR, PrevDate, Purpose)
	return insertUpdateDeleteWrapper(query, param)

def viewPendingCases():
	'''JUDGE: View approved pending cases'''
	query = "SELECT * from Pending_Cases where is_Verified = 1"
	param = ()
	return selectWrapper(query,param)

def acceptCase(Filno, Fildate, firstHear, Stage, CrtNo, J_ID, VicID, VicSt, Acts, AccID=None, AccSt=""):
	'''JUDGE: Accept a pending case'''

	query = "SELECT Victim_LawyerID, Accused_LawyerID from Pending_Cases where FilingNo=%s"
	param = (Filno,)
	lawyers = selectWrapper(query, param)

	lawyers = lawyers['arr'][0] #extract corresponding lawyers

	#delete from pending cases
	query = "SET FOREIGN_KEY_CHECKS = 0"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)

	query = "DELETE from Pending_Cases where FilingNo=%s"
	param = (Filno,)
	result =  insertUpdateDeleteWrapper(query, param)
	
	query = "SET FOREIGN_KEY_CHECKS = 1"
	param = ()
	res = insertUpdateDeleteWrapper(query, param)

	if(result['res'] == 'failed'):
		return result

	#add to active cases
	query = "INSERT into Active_Cases(FilingNo, FilingDate, FirstHearing, Stage, CourtNo, JudgeID, VictimID, VictimStmnt, AccusedID, AccusedStmnt, Acts) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
	param = (Filno, Fildate, firstHear, Stage, CrtNo, J_ID, VicID, VicSt, AccID, AccSt, Acts,)
	result = insertUpdateDeleteWrapper(query, param)

	if(result['res'] == 'failed'):
		return result

	#add to lawyer client
	query = "SELECT CNRno from Active_Cases where FilingNo = %s"
	param = (Filno,)
	res = selectWrapper(query, param)
	res = res['arr'][-1]

	CNR = res['CNRno']
	query = "INSERT into Lawyer_Client(LawyerID, ClientID, CNRno, Side) VALUES(%s,%s,%s,0)"
	param = (lawyers['Victim_LawyerID'], VicID, CNR)
	result = insertUpdateDeleteWrapper(query, param)

	if(AccID!=None):
		query = "INSERT into Lawyer_Client(LawyerID, ClientID, CNRno, Side) VALUES(%s,%s,%s,1)"
		param = (lawyers['Accused_LawyerID'], AccID, CNR)
		result = insertUpdateDeleteWrapper(query, param)

	#add to hearings
	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,null,'First Hearing')"
	param = (firstHear, CNR)
	result = insertUpdateDeleteWrapper(query, param)
	
	return result
