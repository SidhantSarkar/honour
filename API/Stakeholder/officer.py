# from init import selectWrapper, insertUpdateDeleteWrapper
from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper


def fileFIR(FIRno, FilingNo, InspectorName, Description):
	'''OFFICER: File FIR'''
	query = "INSERT into FIR(FIRno, FilingNo, InspectorName, Description) values(%s,%s,%s,%s)"
	param = (FIRno, FilingNo, InspectorName, Description)
	return insertUpdateDeleteWrapper(query, param)

def checkDocStatus(Type):
	'''OFFICER: Check Document upload status'''
	query = "SELECT * from Pending_Cases where is_Verified = 0 and Type = %s"
	param = (Type,)
	return selectWrapper(query, param)

def verifyDoc(FilingNo):
	'''OFFICER: Verify Document'''
	query = "UPDATE Pending_Cases SET is_Verified = 1 where FilingNo = %s"
	param = (FilingNo,)
	return insertUpdateDeleteWrapper(query, param)

def addHearing(CNR, PrevHearing, NextHearing, Purpose):
	'''OFFICER: Add hearings'''
	query = "UPDATE Active_Cases SET NextHearing = %s, PrevHearing = %s WHERE CNRno = %s"
	param = (NextHearing, PrevHearing, CNR)
	res = insertUpdateDeleteWrapper(query, param)
	
	if(res['res'] == 'failed'):
		return res

	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,%s,%s)"
	param = (NextHearing, CNR, NextHearing, Purpose)
	return insertUpdateDeleteWrapper(query, param)

def schedule():
	'''OFFICER: Check Schedule'''
	query = "SELECT * from Active_Cases where NextHearing BETWEEN 'CURDATE() 00:00:00' AND 'CURDATE() 23:59:59'"
	param = tuple()
	return selectWrapper(query, param)
