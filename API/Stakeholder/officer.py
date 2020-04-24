# from init import selectWrapper, insertUpdateDeleteWrapper
from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper
import json


def fileFIR(FIRno, Filno, InsName, Desc):
	'''OFFICER: File FIR'''
	query = "INSERT into FIR(FIRno, FilingNo, InspectorName, Description) values(%s,%s,%s,%s)"
	param = (FIRno, Filno, InsName, Desc)
	return insertUpdateDeleteWrapper(query, param)

def checkDocStatus(typ):
	'''OFFICER: Check Document upload status'''
	query = "SELECT * from Pending_Cases where is_Verified = 0 and Type = %s"
	param = (typ,)
	return selectWrapper(query, param)

def verifyDoc(Filno):
	'''OFFICER: Verify Document'''
	query = "UPDATE Pending_Cases SET is_Verified = 1 where FilingNo = %s"
	param = (Filno,)
	return insertUpdateDeleteWrapper(query, param)

def addHearing(CNR, Prevdate, NextDate, Purpose):
	'''OFFICER: Add hearings'''
	query = "UPDATE Active_Cases SET NextHearing = %s, PrevHearing = %s WHERE CNRno = %s"
	param = (NextDate, Prevdate, CNR)
	res = insertUpdateDeleteWrapper(query, param)
	res = json.loads(res)
	if(res['res'] == 'failed'):
		return res

	query = "INSERT into Hearings(Date, CNRno, Prev_date, Purpose) VALUES(%s,%s,%s,%s)"
	param = (NextDate, CNR, Prevdate, Purpose)
	return insertUpdateDeleteWrapper(query, param)

def schedule():
	'''OFFICER: Check Schedule'''
	query = "SELECT * from Active_Cases where NextHearing BETWEEN 'CURDATE() 00:00:00' AND 'CURDATE() 23:59:59'"
	param = tuple()
	return selectWrapper(query, param)
