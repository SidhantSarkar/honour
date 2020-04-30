from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper
from datetime import datetime

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
	curr_start = datetime.now().strftime('%Y-%m-%d') + ' 00:00:00'
	curr_end = datetime.now().strftime('%Y-%m-%d') + ' 23:59:59'
	query = 'SELECT * from Active_Cases WHERE NextHearing BETWEEN %s AND %s AND JudgeID = %s'
	param = (curr_start, curr_end, JudgeID,)
	return selectWrapper(query, param)

def lawyerTrackRecord(LawyerID):
	'''JUDGE: Track record of a Lawyer'''
	query = "SELECT * from Closed_Cases where Victim_LawyerID = %s OR Accused_LawyerID = %s"
	param = (LawyerID, LawyerID	,)
	res = selectWrapper(query, param)

	if(res['res'] == 'failed'):
		return res
	
	query = "SELECT * from Lawyers where ID = %s"
	param = (LawyerID,)
	temp = selectWrapper(query, param)

	if(temp['res'] == 'failed'):
		return temp

	res['details'] = temp['arr']

	return res

def clientTrackRecord(ClientID):
	'''JUDGE: Track record of a Client'''
	query = "SELECT * from Closed_Cases where VictimID = %s OR AccusedID = %s"
	param = (ClientID, ClientID)
	res = selectWrapper(query, param)

	if(res['res'] == 'failed'):
		return res
	
	query = "SELECT * from Clients where ID = %s"
	param = (ClientID,)
	temp = selectWrapper(query, param)

	if(temp['res'] == 'failed'):
		return temp

	res['details'] = temp['arr']

	return res

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

def announceVerdict(CNRno, Victim_LawyerID, CaseStmnt, FinalVerdict , WonID_Client, WonID_Lawyer, Accused_LawyerID=None):
	'''JUDGE: Announce final verdict for a case'''
	result = viewCase(CNRno) #values extracted from Active_Cases

	if(result['res'] == 'failed'):
		return result
	
	if(result['arr'][0]['Stage'] == 0):
		return {'res': 'failed', 'type':'Case is still at Stage 0'}

	if(not result['arr'][0]['Acts']):
		return {'res': 'failed', 'type':'No acts given'}

	if(result['res'] == 'success'):
		values = result['arr'][0]

		query = "INSERT INTO Closed_Cases(CNRno, FilingNo, FilingDate, JudgeID, VictimID, Victim_LawyerID, AccusedID, Accused_LawyerID, CaseStmnt, Acts, FinalVerdict, Verdict_Date, WonID_Client, WonID_Lawyer) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,CURDATE(),%s,%s);"
		param = (CNRno, values['FilingNo'], values['FilingDate'], values['JudgeID'], values['VictimID'], Victim_LawyerID, values['AccusedID'], Accused_LawyerID, CaseStmnt, values['Acts'], FinalVerdict, WonID_Client, WonID_Lawyer,)

		intermediate_res = insertUpdateDeleteWrapper(query, param)

		if(intermediate_res['res'] == 'failed'):
			return intermediate_res

		if(not Accused_LawyerID):
			Accused_LawyerID = None

		query = "SET FOREIGN_KEY_CHECKS = OFF"
		param = ()
		res = insertUpdateDeleteWrapper(query, param)

		query = "DELETE from Active_Cases WHERE CNRno=%s"
		param = (CNRno,)
		res1 = insertUpdateDeleteWrapper(query, param)

		query = "SET FOREIGN_KEY_CHECKS = ON"
		param = ()
		res = insertUpdateDeleteWrapper(query, param)

		if(res1['res'] == 'failed'):
			query = "DELETE FROM Closed_Cases WHERE CNRno = %s"
			param = (CNRno,)
			temp = insertUpdateDeleteWrapper(query, param)
			
			return res1
	
		return intermediate_res
	
	return {"res": "failed"}

def setHearing(CNRno, PrevHearing, NextHearing, Purpose):
	'''JUDGE: Set the date for next Hearing'''
	query = "UPDATE Active_Cases SET NextHearing = %s, PrevHearing = %s, Stage = Stage + 1 WHERE CNRno = %s"
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

def acceptCase(FilingNo, FirstHearing, CourtNo, JudgeID):
	'''JUDGE: Accept a pending case'''

	query = "SELECT * from Pending_Cases where is_Verified = 1 AND FilingNo = %s"
	param = (FilingNo,)
	res = selectWrapper(query, param)

	if(res['res'] == 'failed' or len(res['arr'])==0):
		return {'res': 'failed', 'type': 'some error occured please recheck param values.'}

	data = res['arr'][0]

	#delete from pending cases
	query = "SET FOREIGN_KEY_CHECKS = OFF"
	param = tuple()
	res = insertUpdateDeleteWrapper(query, param)

	query = "DELETE from Pending_Cases where FilingNo=%s"
	param = (FilingNo,)
	result =  insertUpdateDeleteWrapper(query, param)

	if(result['res'] == 'failed'):
		return result
	
	query = "SET FOREIGN_KEY_CHECKS = ON"
	param = tuple()
	res = insertUpdateDeleteWrapper(query, param)

	#add to active cases
	query = "INSERT into Active_Cases(FilingNo, FilingDate, FirstHearing, NextHearing, CourtNo, JudgeID, VictimID, AccusedID) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"
	param = (FilingNo, data['FilingDate'], FirstHearing, FirstHearing, CourtNo, JudgeID, data['VictimID'], data['AccusedID'])
	result = insertUpdateDeleteWrapper(query, param)

	if(result['res'] == 'failed'):
		return result

	#add to lawyer client
	query = "SELECT CNRno from Active_Cases where FilingNo = %s"
	param = (FilingNo,)
	result = selectWrapper(query, param)

	if(result['res'] == 'failed'):
		return result

	res = result['arr'][0]
	CNR = res['CNRno']

	query = "INSERT into Lawyer_Client(LawyerID, ClientID, CNRno, Side) VALUES(%s,%s,%s,0)"
	param = (data['Victim_LawyerID'], data['VictimID'], CNR)
	result = insertUpdateDeleteWrapper(query, param)

	if(result['res'] == 'failed'):
		return result

	if(data['Type'] == 1):
		query = "INSERT into Lawyer_Client(LawyerID, ClientID, CNRno, Side) VALUES(%s,%s,%s,1)"
		param = (data['Accused_LawyerID'], data['AccusedID'], CNR)
		result = insertUpdateDeleteWrapper(query, param)

	return result

def getAccountDetails(JudgeID):
    '''JUDGE: Get Account Details'''
    query = 'SELECT * FROM Judges WHERE ID = %s'
    param = (JudgeID,)
    return selectWrapper(query, param)

def getRelatedUser(CNRno):
	'''JUDGE: Get Related Users'''
	query = 'SELECT * FROM Lawyer_Client WHERE CNRno = %s'
	param = (CNRno,)

	res = selectWrapper(query, param)

	if(res['res'] == 'failed'):
		return res

	data = res['arr']

	result = {'res': 'success', 'Accused': [], 'Victim': [], 'Accused_Lawyer': [], 'Victim_Lawyer': []}

	for enteries in data:
		query = 'SELECT * FROM Clients WHERE ID = %s'
		param = (enteries['ClientID'],)

		client = selectWrapper(query, param)

		if(client['res'] == 'failed'):
			return client

		query = 'SELECT * FROM Lawyers WHERE ID = %s'
		param = (enteries['LawyerID'],)

		lawyer = selectWrapper(query, param)

		if(lawyer['res'] == 'failed'):
			return lawyer

		if(enteries['Side'] == 0):
			result['Victim'] = client['arr']
			result['Victim_Lawyer'] = lawyer['arr']
		
		else:
			result['Accused'] = client['arr']
			result['Accused_Lawyer'] = lawyer['arr']

	return result	