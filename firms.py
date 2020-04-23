from init import selectWrapper, insertUpdateDeleteWrapper
import json


def SearchClients(F_ID):
	'''FIRM: Search about its clients'''
	query = "SELECT * from Clients where ID in (SELECT ClientID from Firm_Request where FirmID = %s and Status = 1)"
	param = (F_ID,)
	return selectWrapper(query, param)


def getRequests(F_ID):
	'''FIRM: Get requests for the firm'''
	query = "SELECT * from Firm_Request where FirmID = %s and Status = 0"
	param = (F_ID,)
	return selectWrapper(query, param)


def getLawyers(F_ID):
	'''FIRM: Get lawyers under the firm'''
	query = "SELECT * from Lawyers where FirmID = %s"
	param = (F_ID,)
	return selectWrapper(query, param)


def AppointLawyer(F_ID, C_ID, Status, L_ID=""):
	'''FIRM: Appoint a lawyer to a client'''
	query = "UPDATE Firm_Request SET Status = %s where FirmID = %s and ClientID = %s"
	param = (Status, F_ID, C_ID,)
	result = insertUpdateDeleteWrapper(query, param)
	if(Status == 2):
		return result
	else:
		query = "SELECT * from Firm_Request where FirmID = %s and ClientID = %s"
		param = (F_ID, C_ID,)
		res = selectWrapper(query, param)
		res = json.loads(res)
		if(res['res'] == 'failed'):
			return res
		else:
			values = res['arr'][0]
			query = "INSERT into Lawyer_Request(ClientID, LawyerID, FilingNo, Client_Note, Quotation, Status) VALUES(%s,%s,%s,%s,%s,0)"
			param = (C_ID, L_ID, values['FilingNo'], values['Client_Note'], values['Quotation'],)
			return insertUpdateDeleteWrapper(query, param)


def LawyerPerformance(L_ID):
	'''FIRM: Look at lawyer's performance'''
	query = "SELECT COUNT(*) as 'wins' from Closed_Cases where WonID_Lawyer = %s"
	param = (L_ID,)
	wins = selectWrapper(query, param)
	wins = json.loads(wins)
	if(wins['res'] == 'failed'):
		return wins
	else:
		n_wins = wins['arr'][0]

	query = "SELECT COUNT(*) as 'loses' from Closed_Cases where (Accused_LawyerID = %s OR Victim_LawyerID = %s) AND NOT WonID_Lawyer = %s"
	param = (L_ID, L_ID, L_ID,)
	loses = selectWrapper(query, param)
	loses = json.loads(loses)
	if(loses['res'] == 'failed'):
		return loses
	else:
		n_loses = loses['arr'][0]
	return json.dumps({'res': 'ok', 'arr':[{'LawyerID':L_ID, 'wins': n_wins['wins'], 'loses': n_loses['loses']}]})


def EarningByClients(F_ID, date):
	'''FIRM: Look at overall earning based on clients'''
	query = "SELECT ClientID, SUM(Fee) from Lawyer_Client where datePaid>=%s and datePaid<=CURDATE() and ClientID in (SELECT ClientID from Firm_Request where FirmID=%s and Status = 1) GROUP BY ClientID  ORDER BY SUM(Fee) DESC"
	param = (date, F_ID,)
	return selectWrapper(query, param)


def EarningByLawyers(F_ID, date):
	'''FIRM: Look at overall earning based on Lawyers'''
	query = "SELECT LawyerID, SUM(Fee) from Lawyer_Client where datePaid>=%s and datePaid<=CURDATE() and LawyerID in (SELECT ID from Lawyers where FirmID=%s) GROUP BY LawyerID  ORDER BY SUM(Fee) DESC"
	param = (date, F_ID,)
	return selectWrapper(query, param)


def WinsLoses(F_ID):
	'''FIRM: Look at total wins and loses'''
	query = "SELECT COUNT(*) as 'Wins' from Closed_Cases where WonID_Lawyer in (SELECT ID from Lawyers where FirmID = %s)"
	param = (F_ID,)
	wins = selectWrapper(query, param)
	wins = json.loads(wins)
	if(wins['res'] == 'failed'):
		return wins
	else:
		n_wins = wins['arr'][0]

	query = "SELECT COUNT(*) as 'Loses' from Closed_Cases where WonID_Lawyer NOT IN (SELECT ID from Lawyers where FirmID = %s) AND (Victim_LawyerID IN (SELECT ID from Lawyers where FirmID = %s) OR Accused_LawyerID IN (SELECT ID from Lawyers where FirmID = %s))"
	param = (F_ID, F_ID, F_ID,)
	loses = selectWrapper(query, param)
	loses = json.loads(loses)
	if(loses['res'] == 'failed'):
		return loses
	else:
		n_loses = loses['arr'][0]

	return json.dumps({'res': 'ok', 'arr':[{'FirmID':F_ID, 'Wins': n_wins['Wins'], 'Loses': n_loses['Loses']}]})
