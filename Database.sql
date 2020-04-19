-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: Honour
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1


--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;

CREATE TABLE `Clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `Firms`
--

DROP TABLE IF EXISTS `Firms`;

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


--
-- Dumping data for table `Firms`
--

LOCK TABLES `Firms` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `Lawyers`
--

DROP TABLE IF EXISTS `Lawyers`;

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


--
-- Dumping data for table `Lawyers`
--

LOCK TABLES `Lawyers` WRITE;

UNLOCK TABLES;


--
-- Table structure for table `Judges`
--

DROP TABLE IF EXISTS `Judges`;

CREATE TABLE `Judges` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Recruit_Src` varchar(30) NOT NULL,
  `Apptmnt_Date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `Judges`
--

LOCK TABLES `Judges` WRITE;

UNLOCK TABLES;


--
-- Table structure for table `Active_Cases`
--


DROP TABLE IF EXISTS `Active_Cases`;

CREATE TABLE `Active_Cases` (
  `CNRno` int(11) NOT NULL AUTO_INCREMENT,
  `FilingNo` int(11) NOT NULL,
  `FilingDate` date NOT NULL,
  `FirstHearing` date DEFAULT NULL,
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


--
-- Dumping data for table `Active_Cases`
--

LOCK TABLES `Active_Cases` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `Closed_Cases`
--

DROP TABLE IF EXISTS `Closed_Cases`;

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
  `WonID` int(11) NOT NULL,
  PRIMARY KEY (`CNRno`),
  KEY `JudgeID` (`JudgeID`),
  KEY `VictimID` (`VictimID`),
  KEY `Victim_LawyerID` (`Victim_LawyerID`),
  KEY `AccusedID` (`AccusedID`),
  KEY `Accused_LawyerID` (`Accused_LawyerID`),
  KEY `WonID` (`WonID`),
  CONSTRAINT `Closed_Cases_ibfk_1` FOREIGN KEY (`JudgeID`) REFERENCES `Judges` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_2` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_3` FOREIGN KEY (`Victim_LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_4` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_5` FOREIGN KEY (`Accused_LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Closed_Cases_ibfk_6` FOREIGN KEY (`WonID`) REFERENCES `Clients` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `Closed_Cases`
--

LOCK TABLES `Closed_Cases` WRITE;

UNLOCK TABLES;



--
-- Table structure for table `Hearings`
--

DROP TABLE IF EXISTS `Hearings`;

CREATE TABLE `Hearings` (
  `Date` datetime NOT NULL,
  `CNRno` int(11) NOT NULL,
  `Prev_date` datetime DEFAULT NULL,
  `Purpose` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Date`,`CNRno`),
  KEY `CNRno` (`CNRno`),
  CONSTRAINT `Hearings_ibfk_1` FOREIGN KEY (`CNRno`) REFERENCES `Active_Cases` (`CNRno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Hearings`
--

LOCK TABLES `Hearings` WRITE;

UNLOCK TABLES;


--
-- Table structure for table `Lawyer_Client`
--

DROP TABLE IF EXISTS `Lawyer_Client`;

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


--
-- Dumping data for table `Lawyer_Client`
--

LOCK TABLES `Lawyer_Client` WRITE;

UNLOCK TABLES;


--
-- Table structure for table `Pending_Cases`
--

DROP TABLE IF EXISTS `Pending_Cases`;

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


--
-- Dumping data for table `Pending_Cases`
--

LOCK TABLES `Pending_Cases` WRITE;

UNLOCK TABLES;


--
-- Table structure for table `Documents`
--

DROP TABLE IF EXISTS `Documents`;

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


--
-- Dumping data for table `Documents`
--

LOCK TABLES `Documents` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `FIR`
--

DROP TABLE IF EXISTS `FIR`;

CREATE TABLE `FIR` (
  `FIRno` int(11) NOT NULL AUTO_INCREMENT,
  `FilingNo` int(11) NOT NULL,
  `InspectorName` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`FIRno`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `FIR_ibfk_1` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `FIR`
--

LOCK TABLES `FIR` WRITE;

UNLOCK TABLES;

--
-- Table structure for table `Firm_Request`
--

DROP TABLE IF EXISTS `Firm_Request`;

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

--
-- Dumping data for table `Firm_Request`
--

LOCK TABLES `Firm_Request` WRITE;

UNLOCK TABLES;


--
-- Table structure for table `Lawyer_Request`
--

DROP TABLE IF EXISTS `Lawyer_Request`;

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


--
-- Dumping data for table `Lawyer_Request`
--

LOCK TABLES `Lawyer_Request` WRITE;

UNLOCK TABLES;


-- Dump completed on 2020-04-20  1:44:17
