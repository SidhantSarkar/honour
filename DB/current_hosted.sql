-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: remotemysql.com    Database: E1C0vcc33H
-- ------------------------------------------------------
-- Server version	8.0.13-4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `E1C0vcc33H`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `E1C0vcc33H` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `E1C0vcc33H`;

--
-- Table structure for table `Active_Cases`
--

DROP TABLE IF EXISTS `Active_Cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Active_Cases` (
  `CNRno` int(11) NOT NULL AUTO_INCREMENT,
  `FilingNo` int(11) NOT NULL,
  `FilingDate` date NOT NULL,
  `FirstHearing` datetime DEFAULT NULL,
  `NextHearing` datetime DEFAULT NULL,
  `PrevHearing` datetime DEFAULT NULL,
  `Stage` int(11) DEFAULT '0',
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
  CONSTRAINT `Active_Cases_ibfk_1` FOREIGN KEY (`JudgeID`) REFERENCES `Judges` (`id`),
  CONSTRAINT `Active_Cases_ibfk_2` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Active_Cases_ibfk_3` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Active_Cases`
--

LOCK TABLES `Active_Cases` WRITE;
/*!40000 ALTER TABLE `Active_Cases` DISABLE KEYS */;
INSERT INTO `Active_Cases` VALUES (3,15,'2020-04-28','2020-04-29 12:00:00','2020-04-29 12:00:00',NULL,0,3,3,5,NULL,NULL,NULL,NULL),(4,19,'2020-04-28','2020-04-29 13:00:00','2020-04-29 13:00:00',NULL,0,4,4,9,NULL,2,NULL,NULL);
/*!40000 ALTER TABLE `Active_Cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES (1,'Audie Bruen II','2012-07-26'),(2,'Kendrick Farrell','2004-02-19'),(3,'Wayne Russel','1991-09-05'),(4,'Madilyn Fay I','2011-05-20'),(5,'Reilly Terry','1996-04-30'),(6,'Prof. Issac Barrows PhD','2011-07-04'),(7,'Ms. Wanda Wisozk','2014-09-21'),(8,'Prof. Elian Kuhic I','1981-09-26'),(9,'Earline Von','1999-04-02'),(10,'Prof. Misty Hessel I','1991-08-29'),(11,'Nola Towne Jr.','1982-07-04'),(12,'Mr. Marlon Buckridge','1997-11-25'),(13,'Van Sipes','1986-02-22'),(14,'Prof. Josephine Doyle Jr.','1994-05-09'),(15,'Jackeline Padberg IV','1985-05-05'),(16,'Ike Gorczany','2010-03-07'),(17,'Mossie Labadie','1984-12-22'),(18,'Delphine Swift','2003-10-25'),(19,'Frederic Simonis','1970-03-15'),(20,'Mr. Douglas Kiehn DVM','2012-07-26'),(21,'Dr. Cary Wisozk','1976-08-23'),(22,'Delilah Hills','1977-03-15'),(23,'Prof. Catherine Klein','1989-06-30'),(24,'Esteban McDermott','1987-07-22'),(25,'Laverne Pacocha I','1974-09-08'),(26,'Prof. Karley Lowe','1984-03-03'),(27,'Dr. Eve Dickens','1975-05-30'),(28,'Dominic Feest','2015-09-09'),(29,'Carmen Kerluke','1986-03-24'),(30,'Mrs. Rubie Heidenreich','1971-09-08'),(31,'Rodolfo Hammes','2002-02-21'),(32,'Marvin Bogan Jr.','2002-04-28'),(33,'Leif Grant','2016-01-28'),(34,'Phoebe Zulauf','2013-01-25'),(35,'Justyn Jacobs','2014-02-09'),(36,'Miss Jenifer Konopelski','1971-06-03'),(37,'Ebony Buckridge','1997-06-08'),(38,'Herta Steuber','2015-01-07'),(39,'Dr. Maeve Auer IV','2005-12-18'),(40,'Christ Fadel','1978-09-07'),(41,'Dr. Allen Shanahan','1993-10-14'),(42,'Justine Fadel','1977-07-11'),(43,'Jazmin Aufderhar','1979-02-02'),(44,'Ms. Annabell Stokes III','2001-04-14'),(45,'Imani Harber','1996-02-12'),(46,'Wayne Cruickshank','2020-02-03'),(47,'Asha Aufderhar','1998-01-26'),(48,'Geovany Predovic','2009-05-19'),(49,'Mr. Bradly Baumbach','1982-09-01'),(50,'Mrs. Savanna Connelly PhD','2017-11-26'),(51,'kinshuk chopra','2020-04-03'),(52,'sidhant sidhant','2020-04-04'),(53,'k k','0200-03-03'),(54,'Mickey Mouse','1999-01-01'),(55,'Dushyant Panchal','2000-01-01'),(56,'CLIENT CLIENT','2000-05-03'),(57,'atul gupta','2000-01-01'),(58,'Bhaskar Singh','2001-11-11'),(59,'Bhaskar Singh','2010-11-11'),(60,'parth kumar','1999-05-04'),(61,'Bhaskar Singh','2001-11-11');
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Closed_Cases`
--

DROP TABLE IF EXISTS `Closed_Cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `FinalVerdict` varchar(100) NOT NULL,
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
  CONSTRAINT `Closed_Cases_ibfk_1` FOREIGN KEY (`JudgeID`) REFERENCES `Judges` (`id`),
  CONSTRAINT `Closed_Cases_ibfk_2` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Closed_Cases_ibfk_3` FOREIGN KEY (`Victim_LawyerID`) REFERENCES `Lawyers` (`id`),
  CONSTRAINT `Closed_Cases_ibfk_4` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Closed_Cases_ibfk_5` FOREIGN KEY (`Accused_LawyerID`) REFERENCES `Lawyers` (`id`),
  CONSTRAINT `Closed_Cases_ibfk_6` FOREIGN KEY (`WonID_Client`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Closed_Cases_ibfk_7` FOREIGN KEY (`WonID_Lawyer`) REFERENCES `Lawyers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Closed_Cases`
--

LOCK TABLES `Closed_Cases` WRITE;
/*!40000 ALTER TABLE `Closed_Cases` DISABLE KEYS */;
INSERT INTO `Closed_Cases` VALUES (1,1,'2020-04-25',1,2,2,NULL,NULL,'Tum Jeet Gaye!','Act 5, Act 2','Tum Jeet Gaye! pt2','2020-04-28',2,2),(2,14,'2020-04-28',2,3,7,NULL,NULL,'over','Act 2, Act 3','closed','2020-04-29',3,7),(7,31,'2020-04-29',32,51,56,NULL,NULL,'house milgya','Act 7','donee','2020-04-30',51,56),(8,13,'2020-04-26',32,2,4,1,57,'case over','Act 7','game over','2020-04-30',1,57);
/*!40000 ALTER TABLE `Closed_Cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Documents`
--

DROP TABLE IF EXISTS `Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Documents` (
  `DocID` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL,
  `FilingNo` int(11) NOT NULL,
  `Doc` varchar(256) NOT NULL,
  PRIMARY KEY (`DocID`),
  KEY `ClientID` (`ClientID`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `Documents_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Documents_ibfk_2` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`filingno`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Documents`
--

LOCK TABLES `Documents` WRITE;
/*!40000 ALTER TABLE `Documents` DISABLE KEYS */;
INSERT INTO `Documents` VALUES (1,2,1,'aadhar'),(2,3,14,'ASASFSF ASFJKF AS FKAF ASKFJ SKJAF KJAS FKJAS FKJA SFJ ASJF J KJS FA'),(3,5,15,'ASASFSF ASFJKF AS FKAF ASKFJ SKJAF KJAS FKJAS FKJA SFJ ASJF J KJS FA'),(4,6,16,'ASASFSF ASFJKF AS FKAF ASKFJ SKJAF KJAS FKJAS FKJA SFJ ASJF J KJS FA'),(5,9,19,'ASASFSF ASFJKF AS FKAF ASKFJ SKJAF KJAS FKJAS FKJA SFJ ASJF J KJS FA'),(6,2,19,'ASASFSF ASFJKF AS FKAF ASKFJ SKJAF KJAS FKJAS FKJA SFJ ASJF J KJS FA'),(7,3,20,'ASASFSF ASFJKF AS FKAF ASKFJ SKJAF KJAS FKJAS FKJA SFJ ASJF J KJS FA'),(8,10,20,'ASASFSF ASFJKF AS FKAF ASKFJ SKJAF KJAS FKJAS FKJA SFJ ASJF J KJS FA'),(9,2,13,'IMPORTANT INFORMATION'),(11,2,13,'doc'),(12,2,13,'1'),(15,2,13,'1'),(19,2,13,'11'),(21,2,13,'1'),(22,2,13,'1'),(24,2,13,'1'),(25,2,13,'1'),(26,2,13,'1'),(27,2,13,'1'),(28,2,13,'11'),(30,51,31,'Property Papers'),(32,1,13,'done');
/*!40000 ALTER TABLE `Documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FIR`
--

DROP TABLE IF EXISTS `FIR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FIR` (
  `FIRno` int(11) NOT NULL AUTO_INCREMENT,
  `FilingNo` int(11) NOT NULL,
  `InspectorName` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`FIRno`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `FIR_ibfk_1` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`filingno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FIR`
--

LOCK TABLES `FIR` WRITE;
/*!40000 ALTER TABLE `FIR` DISABLE KEYS */;
INSERT INTO `FIR` VALUES (1,19,'Baba Black Sheep','VV big Crime please!'),(2,20,'Baba Black DADDY','VV big Crime COmmited please!'),(3,21,'Singham','Main Ajay Devgon hoon!'),(4,22,'Singham pt2','Main Ajay Devgon kyu hoon?'),(5,13,'Singham','Car stollen');
/*!40000 ALTER TABLE `FIR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Firm_Request`
--

DROP TABLE IF EXISTS `Firm_Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `Firm_Request_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Firm_Request_ibfk_2` FOREIGN KEY (`FirmID`) REFERENCES `Firms` (`id`),
  CONSTRAINT `Firm_Request_ibfk_3` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`filingno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Firm_Request`
--

LOCK TABLES `Firm_Request` WRITE;
/*!40000 ALTER TABLE `Firm_Request` DISABLE KEYS */;
INSERT INTO `Firm_Request` VALUES (1,7,NULL,'My murder was attempted',3000,0),(2,16,NULL,'Test',99000,1),(2,27,13,'Active case',1000,0),(2,44,10,'I was killed',3000,1),(4,5,NULL,'Help please',3200,2),(6,2,NULL,'I need Help',2000,0),(6,12,NULL,'Help me',2500,0),(8,2,NULL,'Need help',2500,0),(10,1,NULL,'Help me please',3000,0),(13,5,NULL,'Bachalo Mujhe pls',8000,1),(17,3,NULL,'I need Help!',2100,0),(18,14,NULL,'Property dispute',2000,0),(19,8,NULL,'I need your Help',3100,0),(29,18,NULL,'I really need your Help',1800,0),(51,48,NULL,'1000',1000,1);
/*!40000 ALTER TABLE `Firm_Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Firms`
--

DROP TABLE IF EXISTS `Firms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Firms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Est` year(4) DEFAULT NULL,
  `Spec_Area` varchar(30) DEFAULT NULL,
  `License_Status` varchar(10) NOT NULL,
  `Rating` tinyint(1) DEFAULT '0',
  `Fees_Range` int(11) DEFAULT '200',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Firms`
--

LOCK TABLES `Firms` WRITE;
/*!40000 ALTER TABLE `Firms` DISABLE KEYS */;
INSERT INTO `Firms` VALUES (1,'Greenfelder Group',2002,'crime','deactive',1,1),(2,'Schmidt, Goldner and Harvey',1970,'crime','active',5,1),(3,'Tremblay and Sons',1996,'civil','deactive',2,3),(4,'Larson, Mann and Brown',1993,'crime','active',3,3),(5,'Ward LLC',1976,'crime','active',4,5),(6,'Kerluke, Reynolds and Bergnaum',2005,'crime','active',5,2),(7,'Gutkowski-Rogahn',2005,'crime','deactive',5,1),(8,'Langworth, Terry and Murray',1972,'civil','deactive',4,4),(9,'Spinka-Lubowitz',2007,'crime','deactive',2,4),(10,'Brekke LLC',1982,'crime','active',3,5),(11,'Stoltenberg Group',2017,'civil','active',4,4),(12,'Mertz Group',1999,'civil','active',5,5),(13,'Hodkiewicz-Welch',1983,'civil','deactive',2,2),(14,'Blick, Nolan and McKenzie',1977,'civil','deactive',5,1),(15,'Kozey, Gutmann and Jakubowski',2009,'civil','active',2,3),(16,'Feil-Lockman',1984,'civil','active',1,2),(17,'Lind Group',2012,'crime','deactive',5,1),(18,'Huel-Conn',1978,'crime','deactive',1,4),(19,'Dickinson PLC',2000,'civil','deactive',2,5),(20,'Fritsch PLC',2014,'civil','deactive',2,5),(21,'Halvorson Inc',1975,'civil','active',2,4),(22,'Mann Inc',2009,'crime','deactive',4,5),(23,'Gerhold-Harvey',2011,'crime','deactive',3,4),(24,'Mertz PLC',1973,'civil','active',1,5),(25,'Koepp LLC',1974,'crime','deactive',3,1),(26,'Schowalter-Cartwright',1993,'crime','deactive',4,3),(27,'Kshlerin-Skiles',2017,'civil','active',5,1),(28,'Ondricka-Emmerich',1984,'crime','deactive',4,4),(29,'Carroll-Lindgren',1989,'crime','active',3,4),(30,'Leuschke and Sons',1985,'civil','deactive',5,5),(31,'Haag Inc',2019,'civil','active',4,5),(32,'Adams, Lubowitz and Spinka',1993,'crime','deactive',1,2),(33,'Wolff-Kuhn',2005,'crime','active',1,2),(34,'Swaniawski-Klein',2019,'crime','deactive',4,3),(35,'Douglas-Flatley',2002,'civil','deactive',3,4),(36,'Kilback Ltd',2002,'civil','active',5,4),(37,'Kub, Bailey and Larson',1971,'crime','deactive',3,1),(38,'Murphy, Steuber and Dare',2004,'civil','active',2,2),(39,'Shields, Roberts and Kulas',2000,'civil','deactive',1,4),(40,'Sipes, Dietrich and Larson',2005,'crime','active',3,1),(43,'iiitd',2020,'crime','active',3,3),(44,'DnD CO.',2000,'civil','active',3,3),(45,'FIRM',2000,'civil','active',3,3),(46,'nakli firm',2020,'civil','active',3,3),(47,'GB PANT',1990,'crime','deactive',3,3),(48,'FIRMK',2000,'crime','active',3,3);
/*!40000 ALTER TABLE `Firms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hearings`
--

DROP TABLE IF EXISTS `Hearings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hearings` (
  `Date` datetime NOT NULL,
  `CNRno` int(11) NOT NULL,
  `Prev_date` datetime DEFAULT NULL,
  `Purpose` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Date`,`CNRno`),
  KEY `CNRno` (`CNRno`),
  CONSTRAINT `Hearings_ibfk_1` FOREIGN KEY (`CNRno`) REFERENCES `Active_Cases` (`cnrno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hearings`
--

LOCK TABLES `Hearings` WRITE;
/*!40000 ALTER TABLE `Hearings` DISABLE KEYS */;
INSERT INTO `Hearings` VALUES ('2020-01-01 02:02:00',5,'2020-06-05 11:01:00','success'),('2020-03-03 05:05:00',5,'2020-05-05 05:05:00','success'),('2020-03-03 12:12:00',6,'2202-02-20 00:00:00','bored'),('2020-04-28 15:00:00',2,'2020-04-29 12:00:00','FOund big1 evidence.'),('2020-04-29 11:00:00',1,'2020-04-28 12:00:00','FOund new evidence.'),('2020-04-29 12:00:00',2,'2020-04-28 13:00:00','FOund big1 evidence.'),('2020-04-30 12:00:00',1,'2020-04-29 11:00:00','FOund big1 evidence.'),('2020-04-30 12:00:00',2,'2020-04-28 15:00:00','doneeeee'),('2020-05-05 05:05:00',5,'2020-10-28 00:59:00','success'),('2020-05-05 12:12:00',7,'2020-03-03 00:00:00','success'),('2020-05-05 12:12:00',8,'2020-05-05 00:00:00','announce'),('2020-05-30 10:10:00',5,'2020-04-24 00:00:00','testing time date'),('2020-06-05 11:01:00',5,'2020-03-03 05:05:00','success'),('2020-06-20 10:10:00',5,'2020-05-30 10:10:00','success'),('2020-10-28 00:59:00',5,'2020-06-20 10:10:00','success');
/*!40000 ALTER TABLE `Hearings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Judges`
--

DROP TABLE IF EXISTS `Judges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Judges` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Recruit_Src` varchar(30) NOT NULL,
  `Apptmnt_Date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Judges`
--

LOCK TABLES `Judges` WRITE;
/*!40000 ALTER TABLE `Judges` DISABLE KEYS */;
INSERT INTO `Judges` VALUES (1,'Michaela Schumm','March Hare. \'Sixteenth,\'.','1995-04-30'),(2,'June Torphy','I must, I must,\' the King.','1976-05-17'),(3,'Ervin Morissette PhD','Alice: \'three inches is such.','2012-03-24'),(4,'Clemmie Kshlerin','Hatter. \'You might just as.','1986-03-11'),(5,'Audreanne Gerlach','Alice, very much of it at.','1990-12-10'),(6,'Janelle Reinger','I am so VERY nearly at the.','1982-07-23'),(7,'Demarcus Haag','I did: there\'s no use.','1996-12-10'),(8,'Benedict Wuckert','Mock Turtle recovered his.','1980-04-17'),(9,'Domingo Zieme','Duchess; \'and the moral of.','2017-03-25'),(10,'Tabitha Moore','King. (The jury all.','1992-08-22'),(11,'Warren Okuneva','Knave of Hearts, he stole.','2007-02-10'),(12,'Fern Tillman','What happened to you? Tell.','1970-05-28'),(13,'Imelda Satterfield','Alice quietly said, just as.','1998-02-25'),(14,'Aiyana Greenfelder','But I\'ve got to?\' (Alice had.','2002-08-05'),(15,'Monserrat Parisian','Queen\'s hedgehog just now,.','1985-09-12'),(16,'Dr. Darryl Schmidt','Caterpillar. \'Well, perhaps.','1986-07-02'),(17,'Sid Bradtke','And he got up and say \"How.','1986-10-03'),(18,'Brielle Rippin','There was no one listening,.','2009-12-02'),(19,'Dr. Franz Zboncak','And the executioner went off.','2008-07-30'),(20,'Prof. Nico Jast','I get it home?\' when it saw.','1975-01-30'),(21,'Billie Leuschke MD','The door led right into it..','1980-07-27'),(22,'Efrain Torp','I COULD NOT SWIM--\" you.','1984-08-11'),(23,'Jayden Lockman Jr.','I shall see it quite plainly.','2005-02-06'),(24,'Catalina Pacocha I','I know is, it would make.','1998-03-02'),(25,'Mr. Mateo Durgan IV','Why, I wouldn\'t say anything.','2015-04-08'),(26,'Roberto Doyle','Alice, \'and those twelve.','1976-12-26'),(27,'Jayden Hahn','Alice; \'I can\'t explain it,\'.','1984-03-29'),(28,'Rosendo Reichert','Alice thought), and it was.','1992-07-21'),(29,'Sunny Moore','An enormous puppy was.','2014-09-05'),(30,'Makayla Roob','Majesty!\' the soldiers did..','1997-09-03'),(31,'kinshuk kinshuk','appointed','3333-03-03'),(32,'Judge Ju','appointed','3333-03-03'),(33,'JUDGE JUDGE','RECRUITED','2000-05-04'),(34,'mohit kumar','Appointment','2000-06-03');
/*!40000 ALTER TABLE `Judges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lawyer_Client`
--

DROP TABLE IF EXISTS `Lawyer_Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `Lawyer_Client_ibfk_1` FOREIGN KEY (`LawyerID`) REFERENCES `Lawyers` (`id`),
  CONSTRAINT `Lawyer_Client_ibfk_2` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Lawyer_Client_ibfk_3` FOREIGN KEY (`CNRno`) REFERENCES `Active_Cases` (`cnrno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lawyer_Client`
--

LOCK TABLES `Lawyer_Client` WRITE;
/*!40000 ALTER TABLE `Lawyer_Client` DISABLE KEYS */;
INSERT INTO `Lawyer_Client` VALUES (2,2,1,0,10000,1,1,'2020-04-28 00:00:00'),(4,2,8,0,NULL,0,0,NULL),(7,3,2,0,NULL,0,0,NULL),(7,5,3,0,NULL,0,0,NULL),(7,6,6,0,NULL,0,0,NULL),(7,9,4,0,NULL,0,0,NULL),(7,10,5,0,NULL,0,0,NULL),(9,3,5,1,NULL,0,0,NULL),(10,2,4,1,NULL,0,0,NULL),(56,51,7,0,10000,1,1,'2020-04-30 00:00:00'),(57,1,8,1,NULL,0,0,NULL);
/*!40000 ALTER TABLE `Lawyer_Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lawyer_Request`
--

DROP TABLE IF EXISTS `Lawyer_Request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `Lawyer_Request_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Lawyer_Request_ibfk_2` FOREIGN KEY (`LawyerID`) REFERENCES `Lawyers` (`id`),
  CONSTRAINT `Lawyer_Request_ibfk_3` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`filingno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lawyer_Request`
--

LOCK TABLES `Lawyer_Request` WRITE;
/*!40000 ALTER TABLE `Lawyer_Request` DISABLE KEYS */;
INSERT INTO `Lawyer_Request` VALUES (1,2,NULL,'Please help',2000,1),(1,7,NULL,'Bachalo Mujhe pls',8000,2),(1,9,18,'Bachalo Mujhe pls',8000,2),(1,57,13,'save me',1000,1),(2,2,NULL,'Please help me',5000,2),(2,5,NULL,'aaaaaaaa',12131,1),(2,6,13,'1',1,0),(2,7,NULL,'Bachalo Mujhe pls',8000,2),(2,9,19,'Bachalo Mujhe pls',8000,2),(2,10,19,'Bachalo Mujhe pls',8000,1),(2,15,13,'1',1,0),(2,17,13,'1',1,0),(2,18,13,'1',1,0),(2,22,13,'1',1000,0),(2,26,13,'1',1,0),(2,27,13,'1',1,0),(2,29,13,'1',1,0),(2,32,13,'Testing',100000,0),(2,33,13,'1',1,0),(2,34,13,'Q',1,0),(2,37,13,'1',1,0),(2,49,13,'1',1,0),(3,7,NULL,'Bachalo Mujhe pls',8000,1),(3,9,20,'Bachalo Mujhe pls',8000,1),(4,2,NULL,'Bachalo Mujhe pls',2000,2),(4,3,NULL,'Help please',3000,1),(4,7,NULL,'Bachalo Mujhe pls',8000,2),(4,9,21,'Bachalo Mujhe pls',8000,1),(5,2,NULL,'Bachalo Mujhe pls',2000,2),(5,4,NULL,'Help please',2000,1),(5,7,NULL,'Bachalo Mujhe pls',8000,1),(5,8,NULL,'Help please!!',2300,1),(5,9,22,'Bachalo Mujhe pls',8000,1),(6,2,NULL,'Bachalo Mujhe pls',2000,0),(6,7,NULL,'Bachalo Mujhe pls',8000,1),(7,2,NULL,'Bachalo Mujhe pls',2000,0),(7,7,NULL,'Bachalo Mujhe pls',8000,1),(8,2,NULL,'Bachalo Mujhe pls',2000,0),(8,7,NULL,'Bachalo Mujhe pls',8000,1),(9,1,NULL,'Bachalo Mujhe pls',2000,0),(9,2,NULL,'Bachalo Mujhe pls',2000,0),(9,7,NULL,'Bachalo Mujhe pls',8000,1),(10,1,NULL,'Bachalo Mujhe pls',2000,0),(10,2,NULL,'Bachalo Mujhe pls',2000,0),(10,7,NULL,'Bachalo Mujhe pls',8000,1),(11,2,NULL,'Bachalo Mujhe pls',2000,0),(11,7,NULL,'Bachalo Mujhe pls',8000,1),(12,2,NULL,'Bachalo Mujhe pls',2000,0),(12,7,NULL,'Bachalo Mujhe pls',8000,1),(13,2,NULL,'Bachalo Mujhe pls',8000,0),(13,5,6,'Bachalo Mujhe pls',8000,1),(13,7,NULL,'Bachalo Mujhe pls',8000,1),(14,7,NULL,'Bachalo Mujhe pls',8000,0),(15,6,NULL,'I am getting death threats',3500,1),(15,7,NULL,'Bachalo Mujhe pls',8000,0),(17,7,NULL,'I was stabbed',3000,2),(20,10,NULL,'Online fraud',1500,1),(21,9,NULL,'Help',1500,1),(27,10,NULL,'Help me',2000,1),(28,11,NULL,'Property dispute',2000,1),(51,32,13,'1',1000,0),(51,56,NULL,'First case',1000,1);
/*!40000 ALTER TABLE `Lawyer_Request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lawyers`
--

DROP TABLE IF EXISTS `Lawyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  CONSTRAINT `Lawyers_ibfk_1` FOREIGN KEY (`FirmID`) REFERENCES `Firms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lawyers`
--

LOCK TABLES `Lawyers` WRITE;
/*!40000 ALTER TABLE `Lawyers` DISABLE KEYS */;
INSERT INTO `Lawyers` VALUES (1,'Julianne Mohr','Indeed, she had nothing.','crime',1998,'deactive',12,2,3),(2,'Stephanie Wisozk','But she went on. \'Or would.','civil',1970,'deactive',16,3,2),(3,'Kiley Leannon','Gryphon, \'she wants for to.','crime',1974,'active',NULL,3,3),(4,'Dr. Brenden Emmerich','And will talk in.','civil',2005,'deactive',9,3,4),(5,'Dr. Justice Roob','Where CAN I have done just.','civil',1975,'active',36,2,5),(6,'Kade Kerluke','While the Owl and the.','civil',2018,'active',9,3,2),(7,'Gerda Wiegand','Duchess said after a few.','civil',1996,'active',29,4,5),(8,'Edison Runolfsdottir','HE was.\' \'I never could.','crime',1987,'deactive',28,2,5),(9,'Ms. Mylene Breitenberg MD','Pigeon. \'I can hardly.','civil',1982,'deactive',13,2,4),(10,'Mr. Berta Rodriguez','Caterpillar. \'Well, perhaps.','crime',1987,'deactive',13,1,3),(11,'Ettie White','Mercia and Northumbria,.','crime',1977,'deactive',44,5,2),(12,'Winifred Mertz','White Rabbit hurried by--the.','civil',1998,'active',11,4,5),(13,'Mr. Madisen Roob DDS','Alice. \'Anything you like,\'.','crime',1983,'deactive',8,4,1),(14,'Dr. Keagan Emmerich III','Alice did not feel.','civil',2019,'deactive',34,1,5),(15,'Emily Monahan','ME.\' \'You!\' said the last.','civil',1985,'active',15,5,1),(16,'Clemmie Krajcik DVM','Alice\'s, and they lived at.','civil',1984,'active',14,2,5),(17,'Estelle Wintheiser IV','Dodo, \'the best way you.','civil',2005,'active',14,3,4),(18,'Larry Larkin','The executioner\'s argument.','crime',1978,'active',17,3,4),(19,'Clementine Herman Sr.','She\'ll get me executed, as.','civil',1971,'active',44,2,4),(20,'Mara Auer','Mabel! I\'ll try if I only.','crime',1998,'active',40,3,2),(21,'Cortez Okuneva','King triumphantly, pointing.','civil',2014,'deactive',32,2,3),(22,'Dr. Laurence Dicki','Hatter, \'or you\'ll be asleep.','crime',1998,'active',15,4,4),(23,'Alexane Mayer','CHAPTER V. Advice from a.','civil',1991,'active',4,1,1),(24,'Mr. Noah Kirlin DVM','Presently she began.','crime',2020,'deactive',NULL,2,2),(25,'Mr. Albert Mohr','But the snail replied \"Too.','crime',1973,'deactive',NULL,2,1),(26,'Mrs. Michelle Spencer Jr.','You see the Hatter grumbled:.','civil',2009,'active',NULL,2,3),(27,'Prof. Shyann Vandervort','March Hare. \'Exactly so,\'.','civil',1984,'active',NULL,1,4),(28,'Donny Wunsch I','Majesty must cross-examine.','civil',2019,'active',NULL,5,4),(29,'Dr. Grace Bashirian','Alice, and sighing. \'It IS.','civil',2002,'active',31,3,1),(30,'Prof. Verona Littel','SHE,\' said the Duchess: \'and.','civil',1972,'active',15,2,1),(31,'Khalil Kertzmann','Alice again. \'No, I didn\'t,\'.','civil',2005,'deactive',20,1,5),(32,'Ed Kovacek','FIT you,\' said Alice, a.','crime',2010,'active',NULL,5,4),(33,'Jewel Heathcote','Gryphon, lying fast asleep.','civil',1973,'active',NULL,5,3),(34,'Kellen Wilkinson','Mouse to Alice a good many.','crime',2009,'active',NULL,4,2),(35,'Oleta Roberts','Duchess replied, in a great.','civil',1996,'deactive',NULL,2,4),(36,'Prof. Daron Halvorson II','Alice. \'Why?\' \'IT DOES THE.','civil',2005,'deactive',NULL,5,3),(37,'Branson Davis V','I\'LL soon make you grow.','civil',1973,'active',NULL,2,3),(38,'Mitchel Runolfsdottir','I think.\' And she opened it,.','civil',2006,'deactive',NULL,4,5),(39,'Mckayla Torphy','Down, down, down. There was.','civil',1974,'deactive',NULL,5,2),(40,'Dr. Mathew Rutherford III','Alice quite jumped; but she.','crime',1989,'deactive',NULL,1,5),(41,'Rodrigo Treutel','And Alice was not a moment.','crime',2002,'deactive',NULL,4,5),(42,'Miss Darby Sauer','Nile On every golden scale!.','civil',2009,'active',NULL,1,4),(43,'Mya Rodriguez','I don\'t like them raw.\'.','crime',2014,'deactive',NULL,2,1),(44,'Kole Beier PhD','Hatter trembled so, that he.','crime',2010,'deactive',NULL,3,5),(45,'Nia Zemlak','Gryphon only answered \'Come.','civil',1991,'active',NULL,1,1),(46,'Mr. Delbert Mitchell III','Alice. One of the.','civil',1990,'active',NULL,1,3),(47,'Alayna Kirlin','I only wish they WOULD go.','crime',2000,'deactive',NULL,4,5),(48,'Ebba Rath','Alice replied, so eagerly.','crime',2016,'deactive',NULL,2,5),(49,'Edyth Flatley','Majesty,\' said Alice.','crime',2010,'active',NULL,2,4),(50,'Prof. German Olson V','England the nearer is to do.','crime',1999,'deactive',NULL,3,4),(51,'nitin nitin','iiitd','civil',2000,'active',NULL,3,3),(52,'kinshuk kinshuk','iiitd','civil',2000,'ls',NULL,3,3),(53,'LAWYER LAWYER','iiitd','civil',2000,'active',NULL,3,3),(54,'Dushyant Panchal','b.tech. xD','CSE',2020,'Active',NULL,3,3),(55,'mohit kumar','iiitd','civil',2000,'active',NULL,3,3),(56,'abhishek kumar','DU','civil',2000,'active',48,3,3),(57,'abhi abhi','gb pant','crime',2000,'active',NULL,3,3);
/*!40000 ALTER TABLE `Lawyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pending_Cases`
--

DROP TABLE IF EXISTS `Pending_Cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pending_Cases` (
  `FilingNo` int(11) NOT NULL AUTO_INCREMENT,
  `FilingDate` date NOT NULL,
  `VictimID` int(11) NOT NULL,
  `Victim_LawyerID` int(11) NOT NULL,
  `AccusedID` int(11) DEFAULT NULL,
  `Accused_LawyerID` int(11) DEFAULT NULL,
  `Type` tinyint(1) NOT NULL,
  `Fir_Uploaded` tinyint(1) DEFAULT '0',
  `Doc_Uploaded_Victim` tinyint(1) DEFAULT '0',
  `Doc_Uploaded_Accused` tinyint(1) DEFAULT '0',
  `is_Verified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`FilingNo`),
  KEY `VictimID` (`VictimID`),
  KEY `Victim_LawyerID` (`Victim_LawyerID`),
  KEY `AccusedID` (`AccusedID`),
  KEY `Accused_LawyerID` (`Accused_LawyerID`),
  CONSTRAINT `Pending_Cases_ibfk_1` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Pending_Cases_ibfk_2` FOREIGN KEY (`Victim_LawyerID`) REFERENCES `Lawyers` (`id`),
  CONSTRAINT `Pending_Cases_ibfk_3` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `Pending_Cases_ibfk_4` FOREIGN KEY (`Accused_LawyerID`) REFERENCES `Lawyers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pending_Cases`
--

LOCK TABLES `Pending_Cases` WRITE;
/*!40000 ALTER TABLE `Pending_Cases` DISABLE KEYS */;
INSERT INTO `Pending_Cases` VALUES (3,'2020-04-26',4,3,29,NULL,1,0,0,0,0),(4,'2020-04-26',5,4,NULL,NULL,0,0,0,0,0),(5,'2020-04-26',15,6,NULL,NULL,0,0,0,0,0),(6,'2020-04-26',5,8,13,5,1,0,0,0,0),(7,'2020-04-26',21,9,NULL,NULL,0,0,0,0,0),(8,'2020-04-26',20,10,16,NULL,1,0,0,0,0),(9,'2020-04-26',27,10,25,NULL,1,0,0,0,0),(10,'2020-04-26',28,11,30,NULL,1,0,0,0,0),(17,'2020-04-28',7,7,NULL,NULL,0,0,0,0,0),(18,'2020-04-28',8,7,1,NULL,1,0,0,0,0),(21,'2020-04-28',11,7,4,9,1,1,0,0,0),(22,'2020-04-28',12,7,5,9,1,1,0,0,0),(23,'2020-04-28',13,7,6,NULL,1,0,0,0,0),(32,'2020-04-29',51,57,52,NULL,1,0,0,0,0),(33,'2020-04-29',51,51,60,NULL,1,0,0,0,0);
/*!40000 ALTER TABLE `Pending_Cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `ClientID` int(11) DEFAULT NULL,
  `LawyerID` int(11) DEFAULT NULL,
  `JudgeID` int(11) DEFAULT NULL,
  `FirmID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username` (`Username`),
  KEY `ClientID` (`ClientID`),
  KEY `JudgeID` (`JudgeID`),
  KEY `LawyerID` (`LawyerID`),
  KEY `FirmID` (`FirmID`),
  CONSTRAINT `User_ibfk_1` FOREIGN KEY (`JudgeID`) REFERENCES `Judges` (`id`),
  CONSTRAINT `User_ibfk_2` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`id`),
  CONSTRAINT `User_ibfk_3` FOREIGN KEY (`LawyerID`) REFERENCES `Lawyers` (`id`),
  CONSTRAINT `User_ibfk_4` FOREIGN KEY (`FirmID`) REFERENCES `Firms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'kinshuk','kinshuk',51,NULL,NULL,NULL),(2,'sidhant','sidhant',52,NULL,NULL,NULL),(3,'nitin','nitin',NULL,51,NULL,NULL),(4,'kinshuk11','kinshuk',NULL,NULL,31,NULL),(5,'iiitd','iiitd',NULL,NULL,NULL,43),(6,'judge','judge',NULL,NULL,32,NULL),(7,'kin','kin',53,NULL,NULL,NULL),(8,'lawyer','lawyer',NULL,52,NULL,NULL),(9,'Deepi','deepi123',NULL,NULL,NULL,44),(10,'test_client','test_client',54,NULL,NULL,NULL),(11,'dush','panch',55,NULL,NULL,NULL),(12,'CLIENT','CLIENT',56,NULL,NULL,NULL),(13,'LAWYER1','LAWYER1',NULL,53,NULL,NULL),(14,'FIRM','FIRM1',NULL,NULL,NULL,45),(15,'JUDGE2','JUDGE',NULL,NULL,33,NULL),(16,'dush1','panch',NULL,7,NULL,NULL),(17,'atul','atul123',57,NULL,NULL,NULL),(18,'dush123','panch',NULL,NULL,NULL,46),(19,'mohit','kumar',NULL,55,NULL,NULL),(20,'mohiiit','kumarrr',NULL,NULL,34,NULL),(21,'GBPANT','GBPANT',NULL,NULL,NULL,47),(22,'bhaskar18332','bhaskar1234',58,NULL,NULL,NULL),(23,'Abhikumar','abhi',NULL,56,NULL,NULL),(24,'bhaskar2001','bhaskar1234',59,NULL,NULL,NULL),(25,'FIRMK','FIRMK',NULL,NULL,NULL,48),(26,'abhi','abhi',NULL,57,NULL,NULL),(27,'Parth','parth',60,NULL,NULL,NULL),(28,'bhaskar','12345678',61,NULL,NULL,NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-30 10:54:26
