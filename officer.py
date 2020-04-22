from init import selectWrapper, insertUpdateDeleteWrapper
import json


def FileFIR(FIRno, Filno, InsName, Desc):
	'''OFFICER: File FIR'''
	query = "INSERT into FIR(FIRno, FilingNo, InspectorName, Description) values(%s,%s,%s,%s)"
	param = (FIRno, Filno, InsName, Desc,)
	return insertUpdateDeleteWrapper(query, param)

def CheckDocStatus(typ):
	'''OFFICER: Check Document upload status'''
	query = "SELECT * from Pending_Cases where is_Verified = 0 and Type = %s"
	param = (typ,)
	return selectWrapper(query, param)

def VerifyDoc(Filno):
	'''OFFICER: Verify Document'''
	query = "UPDATE Pending_Cases SET is_Verified = 1 where FilingNo = %s"
	param = (Filno,)
	return insertUpdateDeleteWrapper(query, param)

def AddHearing(CNR, Prevdate, NextDate, Purpose):
	'''OFFICER: Add hearings'''
	query = "UPDATE Active_Cases SET NextHearing = %s, PrevHearing = %s WHERE CNRno = %s"
	param = (NextDate, PrevDate, CNR,)
	res = insertUpdateDeleteWrapper(query, param)
	res = json.loads(res)
	if(res['res'] == 'failed'):
		return res

	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,%s,%s)"
	param = (NextDate, CNR, PrevDate, Purpose,)
	return insertUpdateDeleteWrapper(query, param)

def Schedule():
	'''OFFICER: Check Schedule'''
	query = "SELECT * from Active_Cases where NextHearing BETWEEN 'CURDATE() 00:00:00' AND 'CURDATE() 23:59:59'"
	param = ()
	return selectWrapper(query, param)
