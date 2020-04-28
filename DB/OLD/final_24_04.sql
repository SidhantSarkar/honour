
CREATE TABLE `Clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Firms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Est` year(4) DEFAULT NULL,
  `Spec_Area` varchar(30) DEFAULT NULL,
  `License_Status` varchar(10) NOT NULL,
  `Rating` tinyint(1) DEFAULT '0',
  `Fees_Range` int(11) DEFAULT '200',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `Lawyers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Ed_Profile` varchar(30) DEFAULT NULL,
  `Spec_Area` varchar(30) DEFAULT NULL,
  `AIBE` year(4) NOT NULL,
  `License_status` varchar(10) NOT NULL,
  `FirmID` int(11) DEFAULT NULL,
  `Rating` tinyint(1) DEFAULT '0',
  `Fees_range` int(11) DEFAULT '200',
  PRIMARY KEY (`ID`),
  KEY `FirmID` (`FirmID`),
  CONSTRAINT `Lawyers_ibfk_1` FOREIGN KEY (`FirmID`) REFERENCES `Firms` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Judges` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Recruit_Src` varchar(30) NOT NULL,
  `Apptmnt_Date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `Active_Cases` (
  `CNRno` int(11) NOT NULL AUTO_INCREMENT,
  `FilingNo` int(11) NOT NULL,
  `FilingDate` date NOT NULL,
  `FirstHearing` datetime DEFAULT NULL,
  `NextHearing` datetime DEFAULT NULL,
  `PrevHearing` datetime DEFAULT NULL,
  `Stage` varchar(20) DEFAULT NULL,
  `CourtNo` int(11) NOT NULL,
  `JudgeID` int(11) NOT NULL,
  `VictimID` int(11) NOT NULL,
  `VictimStmnt` varchar(100) DEFAULT NULL,
  `AccusedID` int(11) DEFAULT NULL,
  `AccusedStmnt` varchar(100) DEFAULT NULL,
  `Acts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CNRno`),
  KEY `JudgeID` (`JudgeID`),
  KEY `VictimID` (`VictimID`),
  KEY `AccusedID` (`AccusedID`),
  CONSTRAINT `Active_Cases_ibfk_1` FOREIGN KEY (`JudgeID`) REFERENCES `Judges` (`ID`),
  CONSTRAINT `Active_Cases_ibfk_2` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Active_Cases_ibfk_3` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Closed_Cases` (
  `CNRno` int(11) NOT NULL,
  `FilingNo` int(11) NOT NULL,
  `FilingDate` date NOT NULL,
  `JudgeID` int(11) NOT NULL,
  `VictimID` int(11) NOT NULL,
  `Victim_LawyerID` int(11) NOT NULL,
  `AccusedID` int(11) DEFAULT NULL,
  `Accused_LawyerID` int(11) DEFAULT NULL,
  `CaseStmnt` varchar(100) NOT NULL,
  `Acts` varchar(100) NOT NULL,
  `FinalVerdict` varchar(50) NOT NULL,
  `Verdict_Date` date NOT NULL,
  `WonID_Client` int(11) NOT NULL,
  `WonID_Lawyer` int(11) NOT NULL,
  PRIMARY KEY (`CNRno`),
  KEY `JudgeID` (`JudgeID`),
  KEY `VictimID` (`VictimID`),
  KEY `Victim_LawyerID` (`Victim_LawyerID`),
  KEY `AccusedID` (`AccusedID`),
  KEY `Accused_LawyerID` (`Accused_LawyerID`),
  KEY `WonID_Client` (`WonID_Client`),
  KEY `WonID_Lawyer` (`WonID_Lawyer`),
  CONSTRAINT `Closed_Cases_ibfk_1` FOREIGN KEY (`JudgeID`) REFERENCES `Judges` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_2` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_3` FOREIGN KEY (`Victim_LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_4` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_5` FOREIGN KEY (`Accused_LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_6` FOREIGN KEY (`WonID_Client`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_7` FOREIGN KEY (`WonID_Lawyer`) REFERENCES `Lawyers` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Hearings` (
  `Date` datetime NOT NULL,
  `CNRno` int(11) NOT NULL,
  `Prev_date` datetime DEFAULT NULL,
  `Purpose` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Date`,`CNRno`),
  KEY `CNRno` (`CNRno`),
  CONSTRAINT `Hearings_ibfk_1` FOREIGN KEY (`CNRno`) REFERENCES `Active_Cases` (`CNRno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Lawyer_Client` (
  `LawyerID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `CNRno` int(11) NOT NULL,
  `Side` tinyint(1) NOT NULL,
  `Fee` int(11) DEFAULT NULL,
  `isPaid` tinyint(1) DEFAULT '0',
  `isRequested` tinyint(1) DEFAULT '0',
  `datePaid` datetime DEFAULT NULL,
  PRIMARY KEY (`LawyerID`,`ClientID`,`CNRno`),
  KEY `ClientID` (`ClientID`),
  KEY `CNRno` (`CNRno`),
  CONSTRAINT `Lawyer_Client_ibfk_1` FOREIGN KEY (`LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Lawyer_Client_ibfk_2` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Lawyer_Client_ibfk_3` FOREIGN KEY (`CNRno`) REFERENCES `Active_Cases` (`CNRno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Pending_Cases` (
  `FilingNo` int(11) NOT NULL AUTO_INCREMENT,
  `FilingDate` date NOT NULL,
  `VictimID` int(11) NOT NULL,
  `Victim_LawyerID` int(11) NOT NULL,
  `AccusedID` int(11) DEFAULT NULL,
  `Accused_LawyerID` int(11) DEFAULT NULL,
  `Type` tinyint(1) NOT NULL,
  `FIRno` int(11) DEFAULT NULL,
  `Doc_Uploaded_Victim` tinyint(1) DEFAULT '0',
  `Doc_Uploaded_Accused` tinyint(1) DEFAULT '0',
  `is_Verified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`FilingNo`),
  KEY `VictimID` (`VictimID`),
  KEY `Victim_LawyerID` (`Victim_LawyerID`),
  KEY `AccusedID` (`AccusedID`),
  KEY `Accused_LawyerID` (`Accused_LawyerID`),
  CONSTRAINT `Pending_Cases_ibfk_1` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Pending_Cases_ibfk_2` FOREIGN KEY (`Victim_LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Pending_Cases_ibfk_3` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Pending_Cases_ibfk_4` FOREIGN KEY (`Accused_LawyerID`) REFERENCES `Lawyers` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Documents` (
  `DocID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL,
  `FilingNo` int(11) NOT NULL,
  `Doc` varchar(256) NOT NULL,
  PRIMARY KEY (`DocID`),
  KEY `ClientID` (`ClientID`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `Documents_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Documents_ibfk_2` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `FIR` (
  `FIRno` int(11) NOT NULL AUTO_INCREMENT,
  `FilingNo` int(11) NOT NULL,
  `InspectorName` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`FIRno`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `FIR_ibfk_1` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `Firm_Request` (
  `ClientID` int(11) NOT NULL,
  `FirmID` int(11) NOT NULL,
  `FilingNo` int(11) DEFAULT NULL,
  `Client_Note` varchar(100) DEFAULT NULL,
  `Quotation` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ClientID`,`FirmID`),
  KEY `FirmID` (`FirmID`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `Firm_Request_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Firm_Request_ibfk_2` FOREIGN KEY (`FirmID`) REFERENCES `Firms` (`ID`),
  CONSTRAINT `Firm_Request_ibfk_3` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `Lawyer_Request` (
  `ClientID` int(11) NOT NULL,
  `LawyerID` int(11) NOT NULL,
  `FilingNo` int(11) DEFAULT NULL,
  `Client_Note` varchar(100) DEFAULT NULL,
  `Quotation` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ClientID`,`LawyerID`),
  KEY `LawyerID` (`LawyerID`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `Lawyer_Request_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Lawyer_Request_ibfk_2` FOREIGN KEY (`LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Lawyer_Request_ibfk_3` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (1, 'Audie Bruen II', '2012-07-26');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (2, 'Kendrick Farrell', '2004-02-19');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (3, 'Wayne Russel', '1991-09-05');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (4, 'Madilyn Fay I', '2011-05-20');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (5, 'Reilly Terry', '1996-04-30');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (6, 'Prof. Issac Barrows PhD', '2011-07-04');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (7, 'Ms. Wanda Wisozk', '2014-09-21');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (8, 'Prof. Elian Kuhic I', '1981-09-26');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (9, 'Earline Von', '1999-04-02');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (10, 'Prof. Misty Hessel I', '1991-08-29');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (11, 'Nola Towne Jr.', '1982-07-04');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (12, 'Mr. Marlon Buckridge', '1997-11-25');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (13, 'Van Sipes', '1986-02-22');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (14, 'Prof. Josephine Doyle Jr.', '1994-05-09');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (15, 'Jackeline Padberg IV', '1985-05-05');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (16, 'Ike Gorczany', '2010-03-07');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (17, 'Mossie Labadie', '1984-12-22');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (18, 'Delphine Swift', '2003-10-25');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (19, 'Frederic Simonis', '1970-03-15');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (20, 'Mr. Douglas Kiehn DVM', '2012-07-26');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (21, 'Dr. Cary Wisozk', '1976-08-23');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (22, 'Delilah Hills', '1977-03-15');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (23, 'Prof. Catherine Klein', '1989-06-30');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (24, 'Esteban McDermott', '1987-07-22');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (25, 'Laverne Pacocha I', '1974-09-08');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (26, 'Prof. Karley Lowe', '1984-03-03');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (27, 'Dr. Eve Dickens', '1975-05-30');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (28, 'Dominic Feest', '2015-09-09');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (29, 'Carmen Kerluke', '1986-03-24');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (30, 'Mrs. Rubie Heidenreich', '1971-09-08');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (31, 'Rodolfo Hammes', '2002-02-21');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (32, 'Marvin Bogan Jr.', '2002-04-28');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (33, 'Leif Grant', '2016-01-28');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (34, 'Phoebe Zulauf', '2013-01-25');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (35, 'Justyn Jacobs', '2014-02-09');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (36, 'Miss Jenifer Konopelski', '1971-06-03');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (37, 'Ebony Buckridge', '1997-06-08');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (38, 'Herta Steuber', '2015-01-07');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (39, 'Dr. Maeve Auer IV', '2005-12-18');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (40, 'Christ Fadel', '1978-09-07');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (41, 'Dr. Allen Shanahan', '1993-10-14');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (42, 'Justine Fadel', '1977-07-11');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (43, 'Jazmin Aufderhar', '1979-02-02');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (44, 'Ms. Annabell Stokes III', '2001-04-14');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (45, 'Imani Harber', '1996-02-12');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (46, 'Wayne Cruickshank', '2020-02-03');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (47, 'Asha Aufderhar', '1998-01-26');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (48, 'Geovany Predovic', '2009-05-19');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (49, 'Mr. Bradly Baumbach', '1982-09-01');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (50, 'Mrs. Savanna Connelly PhD', '2017-11-26');


INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (1, 'Greenfelder Group', '2002', 'crime', ' deactive', 1, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (2, 'Schmidt, Goldner and Harvey', '1970', 'crime', 'active', 5, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (3, 'Tremblay and Sons', '1996', 'civil', ' deactive', 2, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (4, 'Larson, Mann and Brown', '1993', 'crime', 'active', 3, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (5, 'Ward LLC', '1976', 'crime', 'active', 4, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (6, 'Kerluke, Reynolds and Bergnaum', '2005', 'crime', 'active', 5, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (7, 'Gutkowski-Rogahn', '2005', 'crime', ' deactive', 5, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (8, 'Langworth, Terry and Murray', '1972', 'civil', ' deactive', 4, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (9, 'Spinka-Lubowitz', '2007', 'crime', ' deactive', 2, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (10, 'Brekke LLC', '1982', 'crime', 'active', 3, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (11, 'Stoltenberg Group', '2017', 'civil', 'active', 4, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (12, 'Mertz Group', '1999', 'civil', 'active', 5, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (13, 'Hodkiewicz-Welch', '1983', 'civil', ' deactive', 2, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (14, 'Blick, Nolan and McKenzie', '1977', 'civil', ' deactive', 5, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (15, 'Kozey, Gutmann and Jakubowski', '2009', 'civil', 'active', 2, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (16, 'Feil-Lockman', '1984', 'civil', 'active', 1, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (17, 'Lind Group', '2012', 'crime', ' deactive', 5, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (18, 'Huel-Conn', '1978', 'crime', ' deactive', 1, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (19, 'Dickinson PLC', '2000', 'civil', ' deactive', 2, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (20, 'Fritsch PLC', '2014', 'civil', ' deactive', 2, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (21, 'Halvorson Inc', '1975', 'civil', 'active', 2, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (22, 'Mann Inc', '2009', 'crime', ' deactive', 4, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (23, 'Gerhold-Harvey', '2011', 'crime', ' deactive', 3, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (24, 'Mertz PLC', '1973', 'civil', 'active', 1, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (25, 'Koepp LLC', '1974', 'crime', ' deactive', 3, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (26, 'Schowalter-Cartwright', '1993', 'crime', ' deactive', 4, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (27, 'Kshlerin-Skiles', '2017', 'civil', 'active', 5, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (28, 'Ondricka-Emmerich', '1984', 'crime', ' deactive', 4, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (29, 'Carroll-Lindgren', '1989', 'crime', 'active', 3, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (30, 'Leuschke and Sons', '1985', 'civil', ' deactive', 5, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (31, 'Haag Inc', '2019', 'civil', 'active', 4, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (32, 'Adams, Lubowitz and Spinka', '1993', 'crime', ' deactive', 1, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (33, 'Wolff-Kuhn', '2005', 'crime', 'active', 1, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (34, 'Swaniawski-Klein', '2019', 'crime', ' deactive', 4, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (35, 'Douglas-Flatley', '2002', 'civil', ' deactive', 3, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (36, 'Kilback Ltd', '2002', 'civil', 'active', 5, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (37, 'Kub, Bailey and Larson', '1971', 'crime', ' deactive', 3, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (38, 'Murphy, Steuber and Dare', '2004', 'civil', 'active', 2, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (39, 'Shields, Roberts and Kulas', '2000', 'civil', ' deactive', 1, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (40, 'Sipes, Dietrich and Larson', '2005', 'crime', 'active', 3, 1);

INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (1, 'Michaela Schumm', 'March Hare. \'Sixteenth,\'.', '1995-04-30');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (2, 'June Torphy', 'I must, I must,\' the King.', '1976-05-17');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (3, 'Ervin Morissette PhD', 'Alice: \'three inches is such.', '2012-03-24');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (4, 'Clemmie Kshlerin', 'Hatter. \'You might just as.', '1986-03-11');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (5, 'Audreanne Gerlach', 'Alice, very much of it at.', '1990-12-10');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (6, 'Janelle Reinger', 'I am so VERY nearly at the.', '1982-07-23');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (7, 'Demarcus Haag', 'I did: there\'s no use.', '1996-12-10');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (8, 'Benedict Wuckert', 'Mock Turtle recovered his.', '1980-04-17');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (9, 'Domingo Zieme', 'Duchess; \'and the moral of.', '2017-03-25');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (10, 'Tabitha Moore', 'King. (The jury all.', '1992-08-22');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (11, 'Warren Okuneva', 'Knave of Hearts, he stole.', '2007-02-10');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (12, 'Fern Tillman', 'What happened to you? Tell.', '1970-05-28');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (13, 'Imelda Satterfield', 'Alice quietly said, just as.', '1998-02-25');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (14, 'Aiyana Greenfelder', 'But I\'ve got to?\' (Alice had.', '2002-08-05');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (15, 'Monserrat Parisian', 'Queen\'s hedgehog just now,.', '1985-09-12');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (16, 'Dr. Darryl Schmidt', 'Caterpillar. \'Well, perhaps.', '1986-07-02');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (17, 'Sid Bradtke', 'And he got up and say \"How.', '1986-10-03');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (18, 'Brielle Rippin', 'There was no one listening,.', '2009-12-02');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (19, 'Dr. Franz Zboncak', 'And the executioner went off.', '2008-07-30');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (20, 'Prof. Nico Jast', 'I get it home?\' when it saw.', '1975-01-30');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (21, 'Billie Leuschke MD', 'The door led right into it..', '1980-07-27');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (22, 'Efrain Torp', 'I COULD NOT SWIM--\" you.', '1984-08-11');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (23, 'Jayden Lockman Jr.', 'I shall see it quite plainly.', '2005-02-06');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (24, 'Catalina Pacocha I', 'I know is, it would make.', '1998-03-02');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (25, 'Mr. Mateo Durgan IV', 'Why, I wouldn\'t say anything.', '2015-04-08');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (26, 'Roberto Doyle', 'Alice, \'and those twelve.', '1976-12-26');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (27, 'Jayden Hahn', 'Alice; \'I can\'t explain it,\'.', '1984-03-29');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (28, 'Rosendo Reichert', 'Alice thought), and it was.', '1992-07-21');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (29, 'Sunny Moore', 'An enormous puppy was.', '2014-09-05');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (30, 'Makayla Roob', 'Majesty!\' the soldiers did..', '1997-09-03');

INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (1, 'Julianne Mohr', 'Indeed, she had nothing.', 'crime', '1998', ' deactive', 12, 2, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (2, 'Stephanie Wisozk', 'But she went on. \'Or would.', 'civil', '1970', ' deactive', 16, 3, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (3, 'Kiley Leannon', 'Gryphon, \'she wants for to.', 'crime', '1974', 'active', 3, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (4, 'Dr. Brenden Emmerich', 'And will talk in.', 'civil', '2005', ' deactive', 9, 3, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (5, 'Dr. Justice Roob', 'Where CAN I have done just.', 'civil', '1975', 'active', 36, 2, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (6, 'Kade Kerluke', 'While the Owl and the.', 'civil', '2018', 'active', 9, 3, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (7, 'Gerda Wiegand', 'Duchess said after a few.', 'civil', '1996', 'active', 29, 4, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (8, 'Edison Runolfsdottir', 'HE was.\' \'I never could.', 'crime', '1987', ' deactive', 28, 2, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (9, 'Ms. Mylene Breitenberg MD', 'Pigeon. \'I can hardly.', 'civil', '1982', ' deactive', 13, 2, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (10, 'Mr. Berta Rodriguez', 'Caterpillar. \'Well, perhaps.', 'crime', '1987', ' deactive', 13, 1, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (11, 'Ettie White', 'Mercia and Northumbria,.', 'crime', '1977', ' deactive', 5, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (12, 'Winifred Mertz', 'White Rabbit hurried by--the.', 'civil', '1998', 'active', 11, 4, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (13, 'Mr. Madisen Roob DDS', 'Alice. \'Anything you like,\'.', 'crime', '1983', ' deactive', 8, 4, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (14, 'Dr. Keagan Emmerich III', 'Alice did not feel.', 'civil', '2019', ' deactive', 34, 1, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (15, 'Emily Monahan', 'ME.\' \'You!\' said the last.', 'civil', '1985', 'active', 15, 5, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (16, 'Clemmie Krajcik DVM', 'Alice\'s, and they lived at.', 'civil', '1984', 'active', 14, 2, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (17, 'Estelle Wintheiser IV', 'Dodo, \'the best way you.', 'civil', '2005', 'active', 14, 3, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (18, 'Larry Larkin', 'The executioner\'s argument.', 'crime', '1978', 'active', 17, 3, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (19, 'Clementine Herman Sr.', 'She\'ll get me executed, as.', 'civil', '1971', 'active', 2, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (20, 'Mara Auer', 'Mabel! I\'ll try if I only.', 'crime', '1998', 'active', 40, 3, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (21, 'Cortez Okuneva', 'King triumphantly, pointing.', 'civil', '2014', ' deactive', 32, 2, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (22, 'Dr. Laurence Dicki', 'Hatter, \'or you\'ll be asleep.', 'crime', '1998', 'active', 15, 4, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (23, 'Alexane Mayer', 'CHAPTER V. Advice from a.', 'civil', '1991', 'active', 4, 1, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (24, 'Mr. Noah Kirlin DVM', 'Presently she began.', 'crime', '2020', ' deactive', 2, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (25, 'Mr. Albert Mohr', 'But the snail replied \"Too.', 'crime', '1973', ' deactive', 2, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (26, 'Mrs. Michelle Spencer Jr.', 'You see the Hatter grumbled:.', 'civil', '2009', 'active', 2, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (27, 'Prof. Shyann Vandervort', 'March Hare. \'Exactly so,\'.', 'civil', '1984', 'active', 1, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `Rating`, `Fees_range`) VALUES (28, 'Donny Wunsch I', 'Majesty must cross-examine.', 'civil', '2019', 'active', 5, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (29, 'Dr. Grace Bashirian', 'Alice, and sighing. \'It IS.', 'civil', '2002', 'active', 31, 3, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (30, 'Prof. Verona Littel', 'SHE,\' said the Duchess: \'and.', 'civil', '1972', 'active', 15, 2, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (31, 'Khalil Kertzmann', 'Alice again. \'No, I didn\'t,\'.', 'civil', '2005', ' deactive', 20, 1, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (32, 'Ed Kovacek', 'FIT you,\' said Alice, a.', 'crime', '2010', 'active', 5, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (33, 'Jewel Heathcote', 'Gryphon, lying fast asleep.', 'civil', '1973', 'active', 5, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (34, 'Kellen Wilkinson', 'Mouse to Alice a good many.', 'crime', '2009', 'active', 4, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (35, 'Oleta Roberts', 'Duchess replied, in a great.', 'civil', '1996', ' deactive', 2, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (36, 'Prof. Daron Halvorson II', 'Alice. \'Why?\' \'IT DOES THE.', 'civil', '2005', ' deactive', 5, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (37, 'Branson Davis V', 'I\'LL soon make you grow.', 'civil', '1973', 'active', 2, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (38, 'Mitchel Runolfsdottir', 'I think.\' And she opened it,.', 'civil', '2006', ' deactive', 4, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (39, 'Mckayla Torphy', 'Down, down, down. There was.', 'civil', '1974', ' deactive', 5, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (40, 'Dr. Mathew Rutherford III', 'Alice quite jumped; but she.', 'crime', '1989', ' deactive', 1, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (41, 'Rodrigo Treutel', 'And Alice was not a moment.', 'crime', '2002', ' deactive', 4, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (42, 'Miss Darby Sauer', 'Nile On every golden scale!.', 'civil', '2009', 'active', 1, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (43, 'Mya Rodriguez', 'I don\'t like them raw.\'.', 'crime', '2014', ' deactive', 2, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (44, 'Kole Beier PhD', 'Hatter trembled so, that he.', 'crime', '2010', ' deactive', 3, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (45, 'Nia Zemlak', 'Gryphon only answered \'Come.', 'civil', '1991', 'active', 1, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (46, 'Mr. Delbert Mitchell III', 'Alice. One of the.', 'civil', '1990', 'active', 1, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (47, 'Alayna Kirlin', 'I only wish they WOULD go.', 'crime', '2000', ' deactive', 4, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (48, 'Ebba Rath', 'Alice replied, so eagerly.', 'crime', '2016', ' deactive', 2, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (49, 'Edyth Flatley', 'Majesty,\' said Alice.', 'crime', '2010', 'active', 2, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Fees_range`) VALUES (50, 'Prof. German Olson V', 'England the nearer is to do.', 'crime', '1999', ' deactive', 3, 4);

