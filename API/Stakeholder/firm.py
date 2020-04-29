from API.Stakeholder import selectWrapper, insertUpdateDeleteWrapper


def searchClients(FirmID):
	'''FIRM: Search about its clients'''
	query = "SELECT * from Clients where ID in (SELECT ClientID from Firm_Request where FirmID = %s and Status = 1)"
	param = (FirmID,)
	return selectWrapper(query, param)


def getRequests(FirmID):
	'''FIRM: Get requests for the firm'''
	query = "SELECT * from Firm_Request where FirmID = %s and Status = 0"
	param = (FirmID,)
	return selectWrapper(query, param)


def getLawyers(FirmID):
	'''FIRM: Get lawyers under the firm'''
	query = "SELECT * from Lawyers where FirmID = %s"
	param = (FirmID,)
	return selectWrapper(query, param)


def appointLawyer(FirmID, ClientID, Status, LawyerID=""):
	'''FIRM: Appoint a lawyer to a client'''
	query = "UPDATE Firm_Request SET Status = %s where FirmID = %s and ClientID = %s"
	param = (Status, FirmID, ClientID,)
	result = insertUpdateDeleteWrapper(query, param)
	if(Status == 2):
		return result
	else:
		query = "SELECT * from Firm_Request where FirmID = %s and ClientID = %s"
		param = (FirmID, ClientID,)
		res = selectWrapper(query, param)
		if(res['res'] == 'failed'):
			return res
		else:
			values = res['arr'][0]
			query = "INSERT into Lawyer_Request(ClientID, LawyerID, FilingNo, Client_Note, Quotation, Status) VALUES(%s,%s,%s,%s,%s,0)"
			param = (ClientID, LawyerID, values['FilingNo'], values['Client_Note'], values['Quotation'],)
			return insertUpdateDeleteWrapper(query, param)


def lawyerPerformance(LawyerID):
	'''FIRM: Look at lawyer's performance'''
	query = "SELECT COUNT(*) as 'wins' from Closed_Cases where WonID_Lawyer = %s"
	param = (LawyerID,)
	wins = selectWrapper(query, param)
	if(wins['res'] == 'failed'):
		return wins
	else:
		n_wins = wins['arr'][0]

	query = "SELECT COUNT(*) as 'loses' from Closed_Cases where (Accused_LawyerID = %s OR Victim_LawyerID = %s) AND NOT WonID_Lawyer = %s"
	param = (LawyerID, LawyerID, LawyerID,)
	loses = selectWrapper(query, param)
	if(loses['res'] == 'failed'):
		return loses
	else:
		n_loses = loses['arr'][0]
	return {'res': 'success', 'arr':[{'LawyerID':LawyerID, 'wins': n_wins['wins'], 'loses': n_loses['loses']}]}


def earningByClients(FirmID, datePaid):
	'''FIRM: Look at overall earning based on clients'''
	query = "SELECT ClientID, SUM(Fee) from Lawyer_Client where datePaid>=%s and datePaid<=CURDATE() and ClientID in (SELECT ClientID from Firm_Request where FirmID=%s and Status = 1) GROUP BY ClientID  ORDER BY SUM(Fee) DESC"
	param = (datePaid, FirmID,)
	return selectWrapper(query, param)


def earningByLawyers(FirmID, datePaid):
	'''FIRM: Look at overall earning based on Lawyers'''
	query = "SELECT LawyerID, SUM(Fee) from Lawyer_Client where datePaid>=%s and datePaid<=CURDATE() and LawyerID in (SELECT ID from Lawyers where FirmID=%s) GROUP BY LawyerID  ORDER BY SUM(Fee) DESC"
	param = (datePaid, FirmID,)
	return selectWrapper(query, param)


def winsLoses(FirmID):
	'''FIRM: Look at total wins and loses'''
	query = "SELECT COUNT(*) as 'Wins' from Closed_Cases where WonID_Lawyer in (SELECT ID from Lawyers where FirmID = %s)"
	param = (FirmID,)
	wins = selectWrapper(query, param)

	if(wins['res'] == 'failed'):
		return wins
	else:
		n_wins = wins['arr'][0]

	query = "SELECT COUNT(*) as 'Loses' from Closed_Cases where WonID_Lawyer NOT IN (SELECT ID from Lawyers where FirmID = %s) AND (Victim_LawyerID IN (SELECT ID from Lawyers where FirmID = %s) OR Accused_LawyerID IN (SELECT ID from Lawyers where FirmID = %s))"
	param = (FirmID, FirmID, FirmID,)
	loses = selectWrapper(query, param)

	if(loses['res'] == 'failed'):
		return loses
	else:
		n_loses = loses['arr'][0]

	return {'res': 'success', 'arr':[{'FirmID':FirmID, 'Wins': n_wins['Wins'], 'Loses': n_loses['Loses']}]}

def showLawyers(Spec_Area):
    '''FIRM: search for lawyer'''
    query = 'SELECT * FROM Lawyers WHERE (Spec_Area = %s OR Spec_Area IS NULL) AND FirmID IS NULL ORDER BY rating DESC, Fees_range ASC'
    param = (Spec_Area,)
    return selectWrapper(query, param)

def recruitLawyer(FirmID, LawyerID):
	'''FIRM: recruit lawyer'''
	query = 'UPDATE Lawyers SET FirmID = %s WHERE ID = %s'
	param = (FirmID, LawyerID)
	return insertUpdateDeleteWrapper(query, param)

def getAccountDetails(FirmID):
    '''FIRM: Get Account Details'''
    query = 'SELECT * FROM Firms WHERE ID = %s'
    param = (FirmID,)
    return selectWrapper(query, param)