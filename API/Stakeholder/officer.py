# from init import selectWrapper, insertUpdateDeleteWrapper
from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper

def fileFIR(FilingNo, InspectorName, Description):
	'''OFFICER: File FIR'''
	query = "INSERT into FIR(FilingNo, InspectorName, Description) values(%s,%s,%s)"
	param = (FilingNo, InspectorName, Description)
	res = insertUpdateDeleteWrapper(query, param)

	if (res['res'] == 'failed'):
		return res

	query = "UPDATE Pending_Cases SET Fir_Uploaded = 1 WHERE FilingNo = %s"
	param = (FilingNo,)
	return insertUpdateDeleteWrapper(query, param)

def checkDocStatus(Type):
	'''OFFICER: Check Document upload status'''
	query = "SELECT * from Pending_Cases WHERE is_Verified = 0 and Type = %s"
	param = (Type,)
	return selectWrapper(query, param)

def viewRelatedDocuments(FilingNo, Type):
	'''OFFICER: View Documents and FIR'''
	if(Type == 0):
		query = "SELECT * FROM Documents WHERE FilingNo = %s"
		param = (FilingNo,)
		return selectWrapper(query, param)
	
	else:
		query = "SELECT * FROM Documents WHERE FilingNo = %s"
		param = (FilingNo,)
		docs = selectWrapper(query, param)

		if(docs['res'] == 'failed'):
			return docs

		query = "SELECT * FROM FIR WHERE FilingNo = %s"
		param = (FilingNo,)

		fir = selectWrapper(query, param)

		if(fir['res'] == 'failed'):
			return fir

		return {'res': 'success', 'doc': docs['arr'], 'fir': fir['arr']}

def verifyDoc(FilingNo, Type):
	'''OFFICER: Verify Document'''
	if(Type == 0):
		query = "UPDATE Pending_Cases SET is_Verified = 1 WHERE FilingNo = %s AND Doc_Uploaded_Victim = 1"

	else:
		query = "UPDATE Pending_Cases SET is_Verified = 1 WHERE FilingNo = %s AND AccusedID IS NOT NULL AND Accused_LawyerID IS NOT NULL AND Fir_Uploaded = 1 AND Doc_Uploaded_Victim = 1 AND Doc_Uploaded_Accused = 1"
	
	param = (FilingNo,)
	return insertUpdateDeleteWrapper(query, param)

def addHearing(CNR, PrevHearing, NextHearing, Purpose):
	'''OFFICER: Add hearings'''
	query = "UPDATE Active_Cases SET NextHearing = %s, PrevHearing = %s, Stage = Stage + 1 WHERE CNRno = %s"
	param = (NextHearing, PrevHearing, CNR)
	res = insertUpdateDeleteWrapper(query, param)
	
	if(res['res'] == 'failed'):
		return res

	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,%s,%s)"
	param = (NextHearing, CNR, PrevHearing, Purpose)
	return insertUpdateDeleteWrapper(query, param)

def schedule():
	'''OFFICER: Check Schedule'''
	query = "SELECT * from Active_Cases WHERE NextHearing BETWEEN 'CURDATE() 00:00:00' AND 'CURDATE() 23:59:59'"
	param = tuple()
	return selectWrapper(query, param)

def updateCaseStatements(CNRno, VictimStmnt='', AccusedStmnt='', Acts=''):
	'''OFFICER: Update Victime Statements, Add acts'''
	
	result = {}

	if(not VictimStmnt and not AccusedStmnt and not Acts):
		return {'res': 'failed', 'type': 'empty params'}

	if(VictimStmnt):
		query = "UPDATE Active_Cases SET VictimStmnt = %s WHERE CNRno = %s"
		param = (VictimStmnt, CNRno)
		result = insertUpdateDeleteWrapper(query, param)

		if(result['res'] == 'failed'):
			return result

	if(AccusedStmnt):
		query = "UPDATE Active_Cases SET AccusedStmnt = %s WHERE CNRno = %s"
		param = (AccusedStmnt, CNRno)
		result = insertUpdateDeleteWrapper(query, param)

		if(result['res'] == 'failed'):
			return result

	if(Acts):
		query = "UPDATE Active_Cases SET Acts = %s WHERE CNRno = %s"
		param = (Acts, CNRno)
		result = insertUpdateDeleteWrapper(query, param)

		if(result['res'] == 'failed'):
			return result
	
	return result
