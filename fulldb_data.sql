#
# TABLE STRUCTURE FOR: Clients
#

DROP TABLE IF EXISTS `Clients`;

CREATE TABLE `Clients` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (1, 'Alejandra Abbott', '1997-06-04');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (2, 'Carlee Windler', '1999-08-07');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (3, 'Hardy Sipes', '1976-12-05');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (4, 'Prof. Mark McKenzie Jr.', '1996-12-10');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (5, 'Mr. Abelardo Hoppe', '2001-03-24');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (6, 'Elnora Langworth', '1977-06-16');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (7, 'Jermey Kemmer', '1987-01-05');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (8, 'Dewayne Mann', '1974-01-01');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (9, 'Quentin Champlin', '2019-03-14');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (10, 'Mrs. Ludie Daniel', '1973-04-15');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (11, 'Earlene Sipes I', '2012-03-31');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (12, 'Dr. Tabitha Hoppe III', '2000-01-22');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (13, 'Dr. Lew Koch III', '1983-09-15');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (14, 'Prof. Tiffany Pacocha I', '1979-11-25');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (15, 'Cole Green', '1985-09-12');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (16, 'Queenie Thiel', '1977-09-11');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (17, 'Katheryn Rohan', '2007-08-25');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (18, 'Asa Padberg', '2003-01-10');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (19, 'Emmitt Kshlerin', '1975-11-23');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (20, 'Annamarie Hickle', '2010-11-25');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (21, 'Ms. Aleen Hodkiewicz', '2006-05-23');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (22, 'Eryn Marquardt', '2001-08-24');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (23, 'Ms. Nella Gibson Jr.', '1993-03-14');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (24, 'Madaline Murray', '1988-06-16');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (25, 'Miles Wyman', '1999-05-12');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (26, 'Dr. Elton Kuhn Sr.', '2019-10-06');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (27, 'Ms. Elsie Leannon', '1976-06-19');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (28, 'Micheal Lemke MD', '1970-05-24');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (29, 'Kobe Corwin', '1978-09-29');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (30, 'Erica Wolff', '1996-01-21');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (31, 'Mr. Harry Sipes PhD', '2012-12-12');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (32, 'Hazle Muller', '1998-03-08');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (33, 'Darrell Metz', '2014-01-14');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (34, 'Aimee Krajcik', '2014-02-21');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (35, 'Gerhard Purdy', '1981-12-06');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (36, 'Helene Rutherford', '1987-09-15');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (37, 'Edd Schinner', '2011-01-29');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (38, 'Ruth Grimes', '1976-12-14');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (39, 'Miss Mariah Denesik I', '2012-06-20');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (40, 'Ari Harber', '2018-09-14');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (41, 'Mrs. Kylee Schowalter', '2012-06-29');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (42, 'Desiree Champlin', '1976-01-19');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (43, 'Miss Gracie Heathcote PhD', '1977-12-19');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (44, 'Shanelle Denesik', '1976-09-05');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (45, 'Camden Cummings', '2009-07-08');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (46, 'Prof. Brendan Stroman', '1981-08-29');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (47, 'Mrs. Tabitha Williamson Jr.', '2015-07-21');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (48, 'Demetrius Hartmann', '1989-01-03');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (49, 'Enid Gleason III', '2002-08-03');
INSERT INTO `Clients` (`ID`, `Name`, `DOB`) VALUES (50, 'Margaret Beer', '1977-11-14');


#
# TABLE STRUCTURE FOR: Firms
#

DROP TABLE IF EXISTS `Firms`;

CREATE TABLE `Firms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Est` year(4) DEFAULT NULL,
  `Spec_Area` varchar(30) DEFAULT NULL,
  `License_Status` varchar(10) NOT NULL,
  `Rating` tinyint(1) DEFAULT 0,
  `Fees_Range` int(11) DEFAULT 200,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (1, 'Prof. Erika Botsford', '2007', 'crime', 'active', 2, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (2, 'Mrs. Romaine Sawayn I', '2005', 'civil', ' deactive', 1, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (3, 'Tommie Ward', '2012', 'civil', ' deactive', 4, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (4, 'Rodger Jacobs', '1971', 'civil', 'active', 4, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (5, 'Hans Metz', '2003', 'civil', ' deactive', 2, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (6, 'Isidro Buckridge II', '1989', 'crime', ' deactive', 3, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (7, 'Dillon Schulist', '1976', 'crime', ' deactive', 2, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (8, 'Prof. Cora Watsica', '2013', 'civil', ' deactive', 3, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (9, 'Ignacio Macejkovic', '1997', 'crime', ' deactive', 2, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (10, 'Carlee Cole', '1986', 'civil', 'active', 1, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (11, 'Miss Ava O\'Reilly', '1991', 'crime', 'active', 4, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (12, 'Karen Greenfelder', '1988', 'crime', 'active', 4, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (13, 'Dino Runte', '2015', 'civil', ' deactive', 5, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (14, 'Tyra Haag', '1990', 'crime', 'active', 3, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (15, 'Lacey Bradtke', '2008', 'crime', ' deactive', 2, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (16, 'Madyson Bailey', '1977', 'civil', 'active', 4, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (17, 'Triston Rau', '2001', 'civil', 'active', 1, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (18, 'Mr. Josh Sawayn', '2014', 'civil', 'active', 1, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (19, 'Arden Breitenberg', '1997', 'civil', ' deactive', 4, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (20, 'Shaun Swift', '1979', 'crime', ' deactive', 3, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (21, 'Prof. Stuart Gerhold DDS', '1978', 'civil', 'active', 1, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (22, 'Dr. Carissa Blanda Jr.', '2005', 'crime', ' deactive', 3, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (23, 'Miss Raina Langworth III', '1971', 'civil', 'active', 2, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (24, 'Mrs. Gail Jerde III', '1989', 'crime', ' deactive', 5, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (25, 'Kacie Quigley', '2001', 'civil', ' deactive', 4, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (26, 'Donna Heathcote', '2007', 'civil', ' deactive', 5, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (27, 'Dessie Wyman', '1970', 'crime', 'active', 5, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (28, 'Mrs. Nyah Howell', '2008', 'crime', ' deactive', 2, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (29, 'Dario Padberg', '1993', 'civil', 'active', 3, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (30, 'Dr. Rossie Cruickshank III', '1978', 'civil', ' deactive', 2, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (31, 'May Eichmann', '2002', 'crime', ' deactive', 4, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (32, 'Billie Towne', '1970', 'crime', 'active', 3, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (33, 'Schuyler Pfeffer', '2019', 'crime', ' deactive', 5, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (34, 'Bernadette Lindgren DDS', '1994', 'crime', ' deactive', 5, 3);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (35, 'Graciela Fay', '1997', 'civil', ' deactive', 5, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (36, 'Dr. Eleazar Hartmann', '2017', 'civil', ' deactive', 4, 2);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (37, 'Jettie Schuppe', '1973', 'civil', ' deactive', 2, 4);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (38, 'Virginie O\'Connell', '2008', 'crime', ' deactive', 4, 5);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (39, 'Sven Dare', '2008', 'civil', 'active', 1, 1);
INSERT INTO `Firms` (`ID`, `Name`, `Est`, `Spec_Area`, `License_Status`, `Rating`, `Fees_Range`) VALUES (40, 'Felicita Beatty', '1975', 'crime', 'active', 4, 4);


#
# TABLE STRUCTURE FOR: Lawyers
#

DROP TABLE IF EXISTS `Lawyers`;

CREATE TABLE `Lawyers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Ed_Profile` varchar(30) DEFAULT NULL,
  `Spec_Area` varchar(30) DEFAULT NULL,
  `AIBE` year(4) NOT NULL,
  `License_status` varchar(10) NOT NULL,
  `FirmID` int(11) DEFAULT NULL,
  `Rating` tinyint(1) DEFAULT 0,
  `Fees_range` int(11) DEFAULT 200,
  PRIMARY KEY (`ID`),
  KEY `FirmID` (`FirmID`),
  CONSTRAINT `Lawyers_ibfk_1` FOREIGN KEY (`FirmID`) REFERENCES `Firms` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (1, 'Franecki-Abbott', 'After these came the guests,.', 'civil', '1983', 'active', NULL, 1, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (2, 'Lind Group', 'DON\'T know,\' said the White.', 'crime', '1973', 'active', NULL, 5, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (3, 'Schmidt-Wolf', 'And she began thinking over.', 'civil', '1977', 'active', NULL, 3, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (4, 'Murray, Rosenbaum and Toy', 'Soup of the trees as well.', 'crime', '2016', ' deactive', NULL, 1, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (5, 'Hartmann, Reynolds and O\'Keefe', 'The pepper when he sneezes;.', 'civil', '1988', ' deactive', NULL, 3, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (6, 'Ledner LLC', 'Caterpillar. This was quite.', 'crime', '1991', 'active', NULL, 2, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (7, 'Mante, Krajcik and Bergstrom', 'I was a large dish of tarts.', 'crime', '1995', 'active', NULL, 4, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (8, 'Ledner Ltd', 'Stigand, the patriotic.', 'crime', '2010', 'active', NULL, 4, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (9, 'Feil, Wuckert and Durgan', 'The Mock Turtle\'s heavy.', 'civil', '2008', ' deactive', NULL, 1, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (10, 'Donnelly-VonRueden', 'English coast you find a.', 'crime', '2003', ' deactive', NULL, 3, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (11, 'Yost-Schinner', 'Mock Turtle recovered his.', 'crime', '2000', ' deactive', 1, 1, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (12, 'Graham, Nolan and Lubowitz', 'Cheshire Cat,\' said Alice:.', 'civil', '2000', 'active', 2, 5, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (13, 'Auer-Reynolds', 'King, \'and don\'t look at the.', 'civil', '1985', ' deactive', 3, 5, 1);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (14, 'Ziemann-Goldner', 'However, this bottle was NOT.', 'civil', '1986', 'active', 4, 5, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (15, 'Bode-O\'Kon', 'Gryphon. \'It\'s all about.', 'civil', '1979', ' deactive', 5, 3, 2);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (16, 'Osinski-D\'Amore', 'Knave of Hearts, and I had.', 'civil', '1974', ' deactive', 6, 2, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (17, 'Glover-Leffler', 'At this the whole pack of.', 'crime', '2018', ' deactive', 7, 3, 5);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (18, 'McCullough LLC', 'I to get out of its mouth,.', 'civil', '1973', ' deactive', 8, 3, 4);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (19, 'Wiza, Howe and Douglas', 'I should have croqueted the.', 'crime', '1987', 'active', 9, 2, 3);
INSERT INTO `Lawyers` (`ID`, `Name`, `Ed_Profile`, `Spec_Area`, `AIBE`, `License_status`, `FirmID`, `Rating`, `Fees_range`) VALUES (20, 'Krajcik Group', 'White Rabbit, jumping up in.', 'crime', '1994', ' deactive', 10, 4, 4);


#
# TABLE STRUCTURE FOR: Judges
#

DROP TABLE IF EXISTS `Judges`;

CREATE TABLE `Judges` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Recruit_Src` varchar(30) NOT NULL,
  `Apptmnt_Date` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (1, 'Mr. Conor Lemke II', 'Next came an angry.', '1986-09-02');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (2, 'Destiney Stehr V', 'Mouse to tell them something.', '1976-02-22');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (3, 'Jordon Ledner DVM', 'English); \'now I\'m opening.', '1978-06-23');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (4, 'Miss Aliza Moore PhD', 'Alice, very much what would.', '1971-05-01');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (5, 'Andre West', 'AND WASHING--extra.\"\' \'You.', '1989-02-20');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (6, 'Myriam Koss V', 'Lizard in head downwards,.', '1994-10-11');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (7, 'Steve Wolff', 'Duchess, \'chop off her.', '2014-11-06');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (8, 'Kenyatta Moore', 'Mock Turtle. \'Very much.', '1979-04-03');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (9, 'Miguel Monahan', 'I should be like then?\' And.', '1976-11-27');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (10, 'Mrs. Duane Jerde II', 'Pigeon; \'but if they do, why.', '1989-04-15');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (11, 'Dr. Nikita Feil', 'But here, to Alice\'s great.', '1995-02-23');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (12, 'Mr. Bertrand Schuster I', 'First, however, she went on..', '2004-11-24');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (13, 'Mr. Ross Williamson Sr.', 'Then she went on, \'you see,.', '2014-08-05');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (14, 'Presley Morissette', 'Gryphon whispered in reply,.', '1975-11-18');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (15, 'Modesta Shanahan', 'I hadn\'t mentioned Dinah!\'.', '2009-06-27');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (16, 'Ova Rohan', 'There\'s no pleasing them!\'.', '1973-11-25');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (17, 'Prof. Nicolas Emmerich', 'The poor little thing.', '2019-01-20');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (18, 'Walker Jones', 'YET,\' she said aloud. \'I.', '1972-08-13');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (19, 'Dayton Bednar', 'They all returned from him.', '1976-01-19');
INSERT INTO `Judges` (`ID`, `Name`, `Recruit_Src`, `Apptmnt_Date`) VALUES (20, 'Roger Ryan', 'QUITE as much right,\' said.', '1998-12-18');


#
# TABLE STRUCTURE FOR: Pending_Cases
#

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
  `Doc_Uploaded_Victim` tinyint(1) DEFAULT 0,
  `Doc_Uploaded_Accused` tinyint(1) DEFAULT 0,
  `is_Verified` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`FilingNo`),
  KEY `VictimID` (`VictimID`),
  KEY `Victim_LawyerID` (`Victim_LawyerID`),
  KEY `AccusedID` (`AccusedID`),
  KEY `Accused_LawyerID` (`Accused_LawyerID`),
  CONSTRAINT `Pending_Cases_ibfk_1` FOREIGN KEY (`VictimID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Pending_Cases_ibfk_2` FOREIGN KEY (`Victim_LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Pending_Cases_ibfk_3` FOREIGN KEY (`AccusedID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Pending_Cases_ibfk_4` FOREIGN KEY (`Accused_LawyerID`) REFERENCES `Lawyers` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (1, '2005-11-18', 1, 1, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (2, '2007-01-03', 2, 2, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (3, '2011-11-16', 3, 3, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (4, '1976-03-23', 4, 4, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (5, '1990-04-07', 5, 5, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (6, '1998-05-25', 6, 6, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (7, '1997-03-12', 7, 7, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (8, '1983-03-09', 8, 8, NULL, NULL, 0, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (9, '1997-10-20', 1, 1, NULL, NULL, 0, NULL, 1, 0, 1);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (10, '1993-08-11', 2, 2, NULL, NULL, 0, NULL, 1, 0, 1);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (11, '1981-06-05', 3, 3, NULL, NULL, 0, NULL, 1, 0, 1);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (12, '2014-06-03', 4, 4, NULL, NULL, 0, NULL, 1, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (13, '1990-05-31', 5, 5, NULL, NULL, 0, NULL, 1, 0, 1);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (14, '1983-01-23', 1, 1, 23, NULL, 1, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (15, '2018-09-19', 2, 2, 4, NULL, 1, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (16, '1991-03-03', 1, 1, 1, 1, 1, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (17, '1976-09-20', 2, 2, 2, 2, 1, NULL, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (18, '1993-05-03', 1, 1, 1, 1, 1, 4, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (19, '2007-12-02', 2, 2, 2, 2, 1, 4, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (20, '1980-07-20', 1, 1, 1, 1, 1, 2, 1, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (21, '1979-05-23', 2, 2, 2, 2, 1, 4, 0, 1, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (22, '1998-06-05', 3, 3, 3, 3, 1, 4, 0, 1, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (23, '2006-03-31', 4, 4, 4, 4, 1, 3, 1, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (24, '1986-01-29', 5, 5, 5, 5, 1, 1, 0, 0, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (25, '2012-02-27', 1, 1, 1, 1, 1, 13, 1, 1, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (26, '1980-01-27', 2, 2, 2, 2, 1, 12, 1, 1, 1);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (27, '2006-02-06', 3, 3, 3, 3, 1, 15, 1, 1, 1);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (28, '1971-04-15', 4, 4, 4, 4, 1, 10, 1, 1, 0);
INSERT INTO `Pending_Cases` (`FilingNo`, `FilingDate`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `Type`, `FIRno`, `Doc_Uploaded_Victim`, `Doc_Uploaded_Accused`, `is_Verified`) VALUES (29, '2011-09-05', 5, 5, 5, 5, 1, 12, 1, 1, 0);



#
# TABLE STRUCTURE FOR: Firm_Request
#

DROP TABLE IF EXISTS `Firm_Request`;

CREATE TABLE `Firm_Request` (
  `ClientID` int(11) NOT NULL,
  `FirmID` int(11) NOT NULL,
  `FilingNo` int(11) DEFAULT NULL,
  `Client_Note` varchar(100) DEFAULT NULL,
  `Quotation` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ClientID`,`FirmID`),
  KEY `FirmID` (`FirmID`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `Firm_Request_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Firm_Request_ibfk_2` FOREIGN KEY (`FirmID`) REFERENCES `Firms` (`ID`),
  CONSTRAINT `Firm_Request_ibfk_3` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (1, 25, NULL, 'It\'s enough to look about her and to wonder what was going to begin with,\' the Mock Turtle sighed.', 17787, 0);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (3, 24, 17, 'However, the Multiplication Table doesn\'t signify: let\'s try the thing yourself, some winter day,.', 39175, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (3, 25, NULL, 'Gryphon interrupted in a piteous tone. And the Gryphon remarked: \'because they lessen from day to.', 5292, 0);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (4, 36, NULL, 'Footman, \'and that for the baby, and not to be a very difficult question. However, at last in the.', 38923, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (9, 15, NULL, 'So she called softly after it, never once considering how in the pool was getting quite crowded.', 43652, 0);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (11, 21, NULL, 'And it\'ll fetch things when you come to the little passage: and THEN--she found herself lying on.', 28475, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (13, 33, 28, 'Prizes!\' Alice had no pictures or conversations?\' So she went back to the shore, and then the Mock.', 47934, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (15, 33, 10, 'Alice had been anything near the door, and knocked. \'There\'s no such thing!\' Alice was just in.', 41620, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (19, 16, 24, 'Soup does very well without--Maybe it\'s always pepper that makes the world you fly, Like a.', 27516, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (22, 16, 26, 'I tell you!\' said Alice. \'What sort of life! I do so like that curious song about the right.', 45954, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (23, 25, 8, 'Queen, and Alice, were in custody and under sentence of execution. Then the Queen said--\' \'Get to.', 3964, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (24, 17, NULL, 'Jack-in-the-box, and up I goes like a writing-desk?\' \'Come, we shall get on better.\' \'I\'d rather.', 15512, 0);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (25, 10, NULL, 'HIS time of life. The King\'s argument was, that if you drink much from a Caterpillar The.', 8608, 0);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (26, 8, NULL, 'She was moving them about as it can\'t possibly make me smaller, I suppose.\' So she set to work.', 44598, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (28, 3, 10, 'March Hare. \'Yes, please do!\' but the Gryphon answered, very nearly getting up and bawled out,.', 16075, 0);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (31, 18, NULL, 'However, when they had settled down again into its face to see some meaning in it,\' said Alice.', 28025, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (33, 10, 25, 'Alice. \'Of course it is,\' said the March Hare meekly replied. \'Yes, but I can\'t be civil, you\'d.', 9111, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (33, 29, 28, 'She went on again: \'Twenty-four hours, I THINK; or is it I can\'t quite follow it as well as she.', 46886, 1);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (45, 25, NULL, 'Good-bye, feet!\' (for when she went on, \'I must be collected at once to eat the comfits: this.', 18884, 0);
INSERT INTO `Firm_Request` (`ClientID`, `FirmID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (45, 37, 23, 'She took down a large piece out of his Normans--\" How are you getting on now, my dear?\' it.', 24613, 0);


#
# TABLE STRUCTURE FOR: Lawyer_Request
#

DROP TABLE IF EXISTS `Lawyer_Request`;

CREATE TABLE `Lawyer_Request` (
  `ClientID` int(11) NOT NULL,
  `LawyerID` int(11) NOT NULL,
  `FilingNo` int(11) DEFAULT NULL,
  `Client_Note` varchar(100) DEFAULT NULL,
  `Quotation` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`ClientID`,`LawyerID`),
  KEY `LawyerID` (`LawyerID`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `Lawyer_Request_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Lawyer_Request_ibfk_2` FOREIGN KEY (`LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Lawyer_Request_ibfk_3` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (1, 2, 23, 'And she thought it must make me giddy.\' And then, turning to the waving of the lefthand bit. * * *.', 28490, 1);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (4, 3, NULL, 'Alice looked very anxiously into her eyes--and still as she could. The next thing is, to get.', 35929, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (6, 20, NULL, 'And certainly there was hardly room to grow up again! Let me see: I\'ll give them a new idea to.', 19328, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (10, 5, NULL, 'I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet!.', 14774, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (13, 2, NULL, 'Yet you turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was a large pool.', 32178, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (13, 19, 12, 'Queen will hear you! You see, she came upon a neat little house, on the same side of the March.', 31366, 1);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (14, 9, NULL, 'When she got up very carefully, nibbling first at one end to the Mock Turtle, and said to herself.', 6774, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (20, 10, 20, 'KNOW IT TO BE TRUE--\" that\'s the jury-box,\' thought Alice, \'as all the things between whiles.\'.', 27248, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (20, 14, 4, 'I\'ve tried to get in?\' asked Alice again, in a minute or two, which gave the Pigeon in a low.', 13590, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (20, 15, 27, 'Alice soon began talking again. \'Dinah\'ll miss me very much what would happen next. First, she.', 42812, 1);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (21, 8, 10, 'The moment Alice felt so desperate that she was always ready to talk to.\' \'How are you getting on.', 21750, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (28, 20, 3, 'Alice)--\'and perhaps you haven\'t found it so yet,\' said the March Hare: she thought it over.', 45226, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (31, 9, NULL, 'I was going on, as she came up to them to be sure; but I can\'t be civil, you\'d better ask HER.', 32265, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (37, 11, NULL, 'Then she went down on one knee. \'I\'m a poor man, your Majesty,\' the Hatter added as an.', 48795, 1);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (37, 19, 24, 'Alice would not give all else for two reasons. First, because I\'m on the shingle--will you come.', 3095, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (39, 1, NULL, 'Don\'t let him know she liked them best, For this must ever be A secret, kept from all the unjust.', 49795, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (39, 2, NULL, 'Alice caught the flamingo and brought it back, the fight was over, and both creatures hid their.', 24339, 1);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (39, 4, 23, 'The judge, by the English, who wanted leaders, and had been found and handed them round as prizes..', 45326, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (39, 14, 18, 'Take your choice!\' The Duchess took no notice of her sister, who was sitting on a little shriek.', 20770, 0);
INSERT INTO `Lawyer_Request` (`ClientID`, `LawyerID`, `FilingNo`, `Client_Note`, `Quotation`, `Status`) VALUES (41, 9, NULL, 'I\'ll manage better this time,\' she said to the Duchess: \'flamingoes and mustard both bite. And the.', 20107, 1);




#
# TABLE STRUCTURE FOR: Documents
#

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (1, 28, 14, 'King exclaimed, turning to the Knave \'Turn them over!\' The Knave of Hearts, who only bowed and smiled in reply. \'Please come back and see what the moral of that is--\"Be what you mean,\' said Alice..');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (2, 43, 5, 'At this moment Alice felt a violent shake at the door--I do wish they COULD! I\'m sure she\'s the best way to explain it is all the other guinea-pig cheered, and was in March.\' As she said this, she.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (3, 11, 2, 'I\'m sure I have to turn into a tidy little room with a melancholy air, and, after folding his arms and legs in all my life!\' She had just succeeded in bringing herself down to nine inches high..');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (4, 17, 12, 'Alice in a confused way, \'Prizes! Prizes!\' Alice had no reason to be nothing but out-of-the-way things to happen, that it might end, you know,\' the Mock Turtle with a deep voice, \'are done with a.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (5, 18, 7, 'Gryphon: and Alice rather unwillingly took the thimble, saying \'We beg your pardon!\' said the Lory, who at last the Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (6, 15, 11, 'Never heard of such a new kind of authority among them, called out, \'Sit down, all of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice angrily. \'It wasn\'t very.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (7, 8, 15, 'Don\'t let me help to undo it!\' \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what did the archbishop find?\' The Mouse looked at Two. Two began in a melancholy tone. \'Nobody.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (8, 19, 24, 'Alice. \'I\'ve read that in the prisoner\'s handwriting?\' asked another of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think, at your age, it is right?\' \'In my.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (9, 36, 15, 'I must be kind to them,\' thought Alice, \'or perhaps they won\'t walk the way YOU manage?\' Alice asked. The Hatter was out of its mouth again, and all that,\' said the Mock Turtle. \'Certainly not!\'.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (10, 22, 11, 'Her listeners were perfectly quiet till she heard a little way off, and found in it about four inches deep and reaching half down the bottle, saying to her to speak first, \'why your cat grins like.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (11, 6, 22, 'They all sat down again in a hurry that she was surprised to find that her flamingo was gone across to the other, and growing sometimes taller and sometimes shorter, until she had never done such a.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (12, 28, 27, 'I will prosecute YOU.--Come, I\'ll take no denial; We must have been changed several times since then.\' \'What do you mean \"purpose\"?\' said Alice. \'Why, there they lay sprawling about, reminding her.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (13, 21, 15, 'And then, turning to Alice as she passed; it was as long as I was a real Turtle.\' These words were followed by a very short time the Mouse in the air. She did not quite like the largest telescope.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (14, 21, 8, 'Alice. \'I wonder what I could say if I know I have done just as she did not quite sure whether it was in the distance, and she tried to look for her, and the great question is, what?\' The great.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (15, 31, 16, 'After these came the royal children; there were any tears. No, there were three little sisters--they were learning to draw, you know--\' \'What did they draw the treacle from?\' \'You can draw water out.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (16, 46, 5, 'Alice an excellent opportunity for showing off her unfortunate guests to execution--once more the pig-baby was sneezing and howling alternately without a moment\'s delay would cost them their lives..');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (17, 50, 22, 'I\'ve fallen by this time.) \'You\'re nothing but the Hatter began, in rather a hard word, I will prosecute YOU.--Come, I\'ll take no denial; We must have been that,\' said the Cat, \'or you wouldn\'t.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (18, 16, 6, 'Alice. One of the song, perhaps?\' \'I\'ve heard something splashing about in all directions, \'just like a star-fish,\' thought Alice. \'I\'ve read that in about half no time! Take your choice!\' The.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (19, 41, 19, 'The Hatter was out of a muchness?\' \'Really, now you ask me,\' said Alice, seriously, \'I\'ll have nothing more to come, so she felt a little pattering of footsteps in the wood, \'is to grow larger.');
INSERT INTO `Documents` (`DocID`, `ClientID`, `FilingNo`, `Doc`) VALUES (20, 30, 5, 'Alice said; but was dreadfully puzzled by the way I want to get in?\' asked Alice again, in a very interesting dance to watch,\' said Alice, very loudly and decidedly, and there they lay sprawling.');


#
# TABLE STRUCTURE FOR: FIR
#

DROP TABLE IF EXISTS `FIR`;

CREATE TABLE `FIR` (
  `FIRno` int(11) NOT NULL AUTO_INCREMENT,
  `FilingNo` int(11) NOT NULL,
  `InspectorName` varchar(30) NOT NULL,
  `Description` varchar(100) NOT NULL,
  PRIMARY KEY (`FIRno`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `FIR_ibfk_1` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (1, 26, 'Vivian Collins', 'Ann! Mary Ann!\' said the Gryphon, and all would change to tinkling sheep-bells, and the Queen\'s.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (2, 11, 'Fabiola Stanton', 'I\'m a hatter.\' Here the other arm curled round her once more, while the Mouse only growled in.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (3, 29, 'Deonte Cruickshank III', 'CAN have happened to me! I\'LL soon make you a present of everything I\'ve said as yet.\' \'A cheap.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (4, 12, 'Mrs. Elfrieda Ledner', 'Then they all moved off, and she told her sister, as well she might, what a dear little puppy it.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (5, 5, 'Roel Koss', 'Nobody moved. \'Who cares for you?\' said the March Hare. \'It was the King; \'and don\'t be nervous,.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (6, 27, 'Mckayla Kunze', 'I grow at a reasonable pace,\' said the Rabbit say to this: so she waited. The Gryphon lifted up.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (7, 5, 'Patsy Anderson', 'English,\' thought Alice; \'but when you throw them, and was going to begin lessons: you\'d only have.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (8, 2, 'Fern Boehm', 'Father William replied to his son, \'I feared it might belong to one of the Shark, But, when the.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (9, 26, 'Camilla McKenzie', 'At this moment the King, \'or I\'ll have you executed on the bank--the birds with draggled feathers,.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (10, 20, 'Ms. Leilani Sanford IV', 'Alice: he had come to the other: the Duchess by this very sudden change, but very glad to find it.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (11, 27, 'Miss Tierra Stroman', 'I never knew so much contradicted in her pocket) till she was out of a globe of goldfish she had.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (12, 1, 'Royce Gorczany', 'YET,\' she said these words her foot slipped, and in another minute the whole place around her.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (13, 8, 'Carley Harvey', 'They had a bone in his throat,\' said the Gryphon. Alice did not see anything that had fluttered.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (14, 29, 'Dr. Una Boyer PhD', 'The Frog-Footman repeated, in the sea. But they HAVE their tails fast in their proper.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (15, 2, 'Gordon Parker', 'She got up and rubbed its eyes: then it chuckled. \'What fun!\' said the Hatter: \'but you could keep.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (16, 2, 'Miss Icie Kassulke DVM', 'Turtle--we used to know. Let me see: I\'ll give them a new idea to Alice, that she was in a.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (17, 17, 'Miss Agnes Shields III', 'COULD! I\'m sure _I_ shan\'t be able! I shall only look up in spite of all this time. \'I want a.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (18, 10, 'Art Jenkins', 'Alice, \'Have you seen the Mock Turtle; \'but it doesn\'t understand English,\' thought Alice; \'I.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (19, 9, 'Oscar Dibbert', 'Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (20, 23, 'Sydnie Herman', 'I would talk on such a curious croquet-ground in her haste, she had got so much already, that it.');



#
# TABLE STRUCTURE FOR: Active_Cases
#

DROP TABLE IF EXISTS `Active_Cases`;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (1, 1, '2018-09-06', '2013-09-23 11:10:53', '1992-02-22 05:07:31', '1984-06-25 07:38:35', 'ducimus', 2, 20, 9, 'Queen said severely \'Who is it I can\'t tell you how the Dodo suddenly called out \'The Queen! The.', NULL, NULL, 'White Rabbit with pink eyes ran close by it, and then nodded. \'It\'s no business of MINE.\' The.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (2, 2, '2019-12-26', '2012-12-14 02:42:18', '2007-06-08 07:53:08', '2000-02-24 15:54:12', 'quae', 22, 5, 21, 'However, the Multiplication Table doesn\'t signify: let\'s try the first position in which the words.', NULL, NULL, 'Majesty,\' said Alice loudly. \'The idea of the Lobster; I heard him declare, \"You have baked me too.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (3, 3, '2008-03-03', '2010-04-12 04:22:24', '2017-12-24 15:08:49', '1999-02-02 04:03:50', 'tempora', 3, 3, 3, 'Yet you balanced an eel on the ground as she spoke. (The unfortunate little Bill had left off when.', NULL, NULL, 'Alice replied very gravely. \'What else have you executed on the bank, with her head!\' Those whom.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (4, 4, '2009-04-27', '1991-08-19 15:37:13', '2005-10-04 18:44:02', '2017-04-11 09:54:12', 'nihil', 75, 20, 28, 'Alice. \'And ever since that,\' the Hatter replied. \'Of course not,\' said the Dormouse; \'--well in.\'.', NULL, NULL, 'But said I didn\'t!\' interrupted Alice. \'You did,\' said the Mouse, who was reading the list of the.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (5, 5, '2006-11-10', '2014-06-29 07:47:24', '2017-04-03 03:07:23', '1993-08-15 10:23:18', 'illo', 15, 10, 48, 'CHAPTER X. The Lobster Quadrille The Mock Turtle to the other players, and shouting \'Off with his.', NULL, NULL, 'THIS witness.\' \'Well, if I would talk on such a fall as this, I shall have to ask any more HERE.\'.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (6, 6, '2018-04-08', '2019-01-31 01:45:38', '1979-01-06 06:55:13', '1971-01-17 10:55:00', 'aut', 62, 7, 5, 'I\'ll just see what would be QUITE as much as she went on, without attending to her, so she bore it.', NULL, NULL, 'Mock Turtle went on. \'We had the door began sneezing all at once. \'Give your evidence,\' the King.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (7, 7, '1972-04-21', '1975-10-17 11:13:43', '1985-12-28 16:10:31', '1995-08-31 22:34:09', 'sit', 96, 20, 35, 'At this moment Alice felt a little animal (she couldn\'t guess of what sort it was) scratching and.', NULL, NULL, 'Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you know about it,.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (8, 8, '1996-01-24', '2014-06-07 01:06:16', '1971-04-03 03:58:35', '1996-04-11 17:17:52', 'ut', 69, 16, 22, 'I can\'t show it you myself,\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when.', NULL, NULL, 'I should like to be in Bill\'s place for a moment that it was out of breath, and said nothing..');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (9, 9, '1976-07-22', '2001-11-11 07:11:27', '2007-12-24 19:20:17', '1976-08-19 08:13:49', 'sapiente', 61, 7, 20, 'Pigeon, raising its voice to a mouse: she had to fall a long argument with the Gryphon. \'I mean,.', NULL, NULL, 'Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse gave a look.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (10, 10, '2005-12-10', '2000-08-05 05:15:00', '1988-12-07 04:14:03', '1982-03-02 00:02:54', 'quas', 33, 20, 13, 'I eat one of the party were placed along the sea-shore--\' \'Two lines!\' cried the Gryphon. \'We can.', NULL, NULL, 'It\'s by far the most confusing thing I ever was at in all directions, \'just like a mouse, That he.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (11, 1, '2006-06-06', '1989-05-10 18:54:56', '1993-03-30 02:42:36', '1991-02-22 02:14:39', 'blanditiis', 29, 6, 48, 'Pigeon went on, \'What HAVE you been doing here?\' \'May it please your Majesty,\' he began. \'You\'re a.', 19, 'VERY remarkable in that; nor did Alice think it was,\' he said. \'Fifteenth,\' said the Hatter, and.', 'There was nothing else to do, so Alice went on, \'you see, a dog growls when it\'s pleased. Now I.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (12, 2, '2015-10-27', '1988-05-26 01:33:57', '1976-03-07 17:18:48', '2002-11-25 20:25:51', 'facere', 31, 15, 18, 'Alice quite hungry to look through into the earth. At last the Gryphon as if nothing had happened..', 47, 'The Cat seemed to be sure, she had wept when she first saw the White Rabbit was no more to come,.', 'Alice. \'Then it ought to be no chance of this, so that altogether, for the garden!\' and she had.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (13, 3, '1992-08-11', '1983-02-08 15:35:29', '1997-04-07 09:30:29', '1975-09-16 04:55:53', 'modi', 42, 5, 9, 'Dodo replied very solemnly. Alice was more than that, if you drink much from a bottle marked.', 2, 'Caterpillar, just as usual. \'Come, there\'s no use now,\' thought poor Alice, \'it would have done.', 'Gryphon is, look at the thought that she had finished, her sister on the end of the sort,\' said.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (14, 4, '2009-10-28', '1992-05-05 05:14:16', '2012-10-30 06:08:44', '2002-05-26 23:39:04', 'nesciunt', 55, 6, 12, 'NOT be an old Turtle--we used to it!\' pleaded poor Alice in a trembling voice to its feet, \'I move.', 20, 'Alice herself, and once again the tiny hands were clasped upon her face. \'Wake up, Alice dear!\'.', 'Mock Turtle in a low voice, to the cur, \"Such a trial, dear Sir, With no jury or judge, would be.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (15, 5, '2019-01-30', '1996-02-01 20:05:23', '2000-08-11 09:21:25', '1992-10-15 18:15:41', 'repellendus', 47, 15, 42, 'Alice, that she let the jury--\' \'If any one left alive!\' She was looking down with her head down.', 2, 'Queen to play croquet with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice,.', 'Alice. \'I\'m glad they don\'t give birthday presents like that!\' By this time the Queen shrieked.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (16, 6, '2000-11-03', '2007-11-03 08:39:06', '2017-02-21 09:54:10', '2010-03-14 19:28:20', 'ipsa', 78, 19, 48, 'Dodo, a Lory and an old conger-eel, that used to say anything. \'Why,\' said the Cat. \'I don\'t know.', 43, 'Alice, \'I\'ve often seen a cat without a great hurry; \'this paper has just been picked up.\' \'What\'s.', 'Was kindly permitted to pocket the spoon: While the Duchess replied, in a confused way, \'Prizes!.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (17, 7, '1982-12-01', '2012-12-20 06:42:57', '1995-01-31 09:44:29', '2018-08-25 16:51:08', 'voluptate', 19, 3, 18, 'Alice. \'And be quick about it,\' added the Gryphon; and then at the great hall, with the other: he.', 43, 'And with that she ran off as hard as it settled down again very sadly and quietly, and looked at.', 'Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Dodo solemnly, rising to.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (18, 8, '1973-11-01', '2002-04-24 17:56:38', '2002-06-07 04:50:53', '1976-06-13 06:41:29', 'tempora', 51, 11, 10, 'Alice would not allow without knowing how old it was, and, as they all crowded round it, panting,.', 48, 'Turtle.\' These words were followed by a row of lodging houses, and behind it was addressed to the.', 'An enormous puppy was looking for them, but they began running about in all my life, never!\' They.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (19, 9, '1986-05-15', '1996-03-05 21:06:15', '1995-12-10 12:15:07', '1976-08-12 18:29:55', 'et', 48, 12, 16, 'Father William,\' the young lady to see that she was quite a crowd of little cartwheels, and the.', 28, 'I\'ve offended it again!\' For the Mouse was bristling all over, and both the hedgehogs were out of.', 'When the procession came opposite to Alice, and she jumped up on to the jury, of course--\"I GAVE.');
INSERT INTO `Active_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `FirstHearing`, `NextHearing`, `PrevHearing`, `Stage`, `CourtNo`, `JudgeID`, `VictimID`, `VictimStmnt`, `AccusedID`, `AccusedStmnt`, `Acts`) VALUES (20, 10, '1988-05-30', '1971-10-02 00:07:19', '1994-02-20 09:39:32', '1976-03-19 19:18:23', 'nesciunt', 52, 4, 21, 'I must sugar my hair.\" As a duck with its legs hanging down, but generally, just as well she.', 26, 'Alice; \'living at the window, and some \'unimportant.\' Alice could speak again. The Mock Turtle\'s.', 'There was no time to see a little way out of the goldfish kept running in her head, she tried to.');


#
# TABLE STRUCTURE FOR: Lawyer_Client
#

DROP TABLE IF EXISTS `Lawyer_Client`;

CREATE TABLE `Lawyer_Client` (
  `LawyerID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `CNRno` int(11) NOT NULL,
  `Side` tinyint(1) NOT NULL,
  `Fee` int(11) DEFAULT NULL,
  `isPaid` tinyint(1) DEFAULT 0,
  `isRequested` tinyint(1) DEFAULT 0,
  `datePaid` datetime DEFAULT NULL,
  PRIMARY KEY (`LawyerID`,`ClientID`,`CNRno`),
  KEY `ClientID` (`ClientID`),
  KEY `CNRno` (`CNRno`),
  CONSTRAINT `Lawyer_Client_ibfk_1` FOREIGN KEY (`LawyerID`) REFERENCES `Lawyers` (`ID`),
  CONSTRAINT `Lawyer_Client_ibfk_2` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Lawyer_Client_ibfk_3` FOREIGN KEY (`CNRno`) REFERENCES `Active_Cases` (`CNRno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (2, 5, 1, 1, 5922, 0, 1, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (2, 19, 10, 1, 45971, 0, 1, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (5, 15, 15, 1, NULL, 0, 0, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (5, 27, 14, 0, 34542, 1, 1, '1982-09-13 00:00:00');
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (7, 47, 20, 0, 14357, 0, 1, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (8, 12, 16, 0, NULL, 0, 0, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (11, 10, 6, 1, 2687, 0, 1, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (12, 28, 16, 0, NULL, 0, 0, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (12, 40, 20, 1, NULL, 0, 0, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (16, 48, 16, 1, 49224, 1, 1, '1992-03-30 00:00:00');
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (18, 32, 7, 1, 36539, 1, 1, '1979-04-28 00:00:00');
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (18, 38, 2, 1, 46720, 1, 1, '1985-05-27 00:00:00');
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (18, 41, 17, 0, 8510, 0, 1, NULL);
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (19, 33, 9, 0, 15058, 1, 1, '1972-05-01 00:00:00');
INSERT INTO `Lawyer_Client` (`LawyerID`, `ClientID`, `CNRno`, `Side`, `Fee`, `isPaid`, `isRequested`, `datePaid`) VALUES (20, 5, 5, 0, NULL, 0, 0, NULL);


#
# TABLE STRUCTURE FOR: Hearings
#

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

INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1970-06-08 04:19:27', 3, '2007-09-21 22:40:55', 'Duchess, \'as pigs have to beat time when she had hoped) a fan and the White Rabbit was no more of.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1971-06-29 12:10:20', 7, '2010-07-06 18:04:48', 'Alice. \'I don\'t believe it,\' said Alice to herself. \'I dare say there may be ONE.\' \'One, indeed!\'.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1972-09-19 18:34:45', 20, '1980-07-23 19:54:56', 'Alice appeared, she was looking at the mushroom for a conversation. \'You don\'t know what \"it\".');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1973-03-22 03:58:26', 19, '2002-06-14 21:10:09', 'Northumbria--\"\' \'Ugh!\' said the Hatter: \'but you could only see her. She is such a capital one for.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1973-09-16 00:51:25', 10, '1990-02-08 00:58:39', 'However, everything is to-day! And yesterday things went on again:-- \'I didn\'t know how to speak.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1975-10-28 23:57:12', 18, '1971-12-24 04:02:44', 'I\'m sure she\'s the best of educations--in fact, we went to school in the air. \'--as far out to her.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1978-10-04 05:44:04', 9, '1970-08-23 15:16:46', 'I\'ve had such a rule at processions; \'and besides, what would happen next. The first witness was.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1980-04-22 03:22:56', 5, '1987-01-22 06:21:09', 'I dare say there may be ONE.\' \'One, indeed!\' said the last concert!\' on which the March Hare said.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1981-07-04 00:39:31', 13, '2008-07-24 12:53:41', 'The Mouse did not venture to go from here?\' \'That depends a good deal to come once a week: HE.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1981-08-03 18:40:41', 5, '2008-02-26 07:38:14', 'Alice, \'we learned French and music.\' \'And washing?\' said the Hatter said, turning to Alice, they.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1982-06-01 01:16:55', 1, '1984-11-29 15:55:11', 'Next came the royal children; there were TWO little shrieks, and more puzzled, but she could even.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1983-01-20 03:05:31', 20, '2017-03-16 06:37:57', 'No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance?.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1983-10-31 18:29:27', 11, '2014-12-19 17:24:15', 'The Footman seemed to follow, except a tiny golden key, and unlocking the door between us. For.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1985-12-05 06:08:53', 15, '1998-11-05 02:37:04', 'The Footman seemed to be rude, so she felt very curious to see if she could not remember ever.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1987-10-21 23:34:41', 12, '1983-03-21 23:22:22', 'Pigeon; \'but if you\'ve seen them so often, of course was, how to set about it; if I\'m Mabel, I\'ll.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1988-07-15 09:17:59', 16, '1986-01-14 11:45:45', 'Eaglet, and several other curious creatures. Alice led the way, was the first figure!\' said the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1988-10-18 12:34:24', 4, '1977-09-23 13:34:57', 'March Hare. \'Sixteenth,\' added the Dormouse, after thinking a minute or two, she made it out to.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1989-12-15 00:46:05', 7, '2002-09-02 17:15:56', 'And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1990-02-02 19:54:26', 20, '1988-10-12 08:56:16', 'Alice could see, as they came nearer, Alice could not even room for YOU, and no room at all.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1990-04-14 11:26:59', 20, '1980-09-04 10:48:26', 'Let me see--how IS it to speak first, \'why your cat grins like that?\' \'It\'s a Cheshire cat,\' said.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1990-09-03 20:38:01', 20, '2012-08-09 09:54:52', 'Alice had not a mile high,\' said Alice. \'Then you may nurse it a minute or two sobs choked his.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1991-09-24 10:01:07', 12, '1993-02-02 18:31:26', 'Lory, who at last in the shade: however, the moment how large she had put on his flappers,.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1993-02-05 18:54:19', 2, '2001-12-07 04:54:08', 'The chief difficulty Alice found at first she thought it over afterwards, it occurred to her chin.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1993-05-30 22:06:40', 11, '2015-07-31 10:05:18', 'I\'ve kept her waiting!\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to listen, the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1995-05-31 13:50:10', 14, '2018-02-05 20:57:53', 'Alice; \'it\'s laid for a minute, nurse! But I\'ve got to the other, saying, in a melancholy tone..');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1998-02-23 19:39:42', 2, '1982-09-03 02:00:58', 'She said the Mock Turtle went on. \'We had the door opened inwards, and Alice\'s elbow was pressed.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1999-08-03 05:29:26', 5, '1994-12-29 01:23:08', 'I\'ll have you executed.\' The miserable Hatter dropped his teacup instead of onions.\' Seven flung.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('1999-11-27 02:41:41', 17, '1979-11-11 11:09:17', 'Mouse had changed his mind, and was going off into a butterfly, I should think you\'ll feel it a.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2000-06-29 10:37:20', 1, '2010-09-21 00:07:51', 'And so she went on in the trial one way of keeping up the chimney, and said \'That\'s very.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2001-02-01 22:11:57', 7, '1985-04-14 07:08:48', 'King said to Alice, she went on, \'that they\'d let Dinah stop in the kitchen. \'When I\'M a Duchess,\'.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2001-04-14 01:53:46', 8, '1977-12-17 02:11:32', 'I was thinking I should like it very nice, (it had, in fact, a sort of a tree a few minutes to see.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2001-07-14 10:41:40', 17, '1999-06-02 18:19:47', 'This time there were three little sisters,\' the Dormouse went on, \'you throw the--\' \'The.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2002-09-13 16:38:22', 18, '2010-02-10 13:57:42', 'Mock Turtle repeated thoughtfully. \'I should like to hear his history. I must have a prize.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2002-09-15 04:41:32', 4, '2007-09-23 12:33:12', 'So she stood still where she was exactly one a-piece all round. (It was this last remark that had.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2002-11-03 00:54:38', 1, '2009-03-05 12:44:33', 'King. On this the White Rabbit, who was peeping anxiously into its face in her life before, and.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2003-03-07 09:38:58', 6, '1983-02-15 22:03:39', 'Alice called after it; and the beak-- Pray how did you do lessons?\' said Alice, (she had kept a.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2003-05-20 10:44:45', 19, '1984-03-01 05:29:26', 'For really this morning I\'ve nothing to do.\" Said the mouse to the King, \'that only makes the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2005-03-31 01:16:23', 12, '1995-06-30 07:20:24', 'Gryphon. \'Do you mean by that?\' said the Lory hastily. \'I thought it would feel with all speed.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2005-04-24 08:00:12', 13, '1990-01-28 06:22:50', 'Alice, who felt very glad to get to,\' said the King; \'and don\'t look at the thought that SOMEBODY.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2006-01-10 13:56:15', 10, '1998-09-09 19:04:38', 'I\'m quite tired and out of the sort,\' said the Hatter. \'I told you butter wouldn\'t suit the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2007-08-29 01:09:14', 11, '1980-12-06 10:39:20', 'I do hope it\'ll make me giddy.\' And then, turning to the conclusion that it might end, you know,\'.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2007-12-25 03:55:27', 12, '1978-05-28 10:03:21', 'I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t opened it yet,\' said the Gryphon..');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2008-01-25 05:55:32', 10, '2003-05-03 20:49:36', 'In the very tones of her little sister\'s dream. The long grass rustled at her own mind (as well as.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2010-03-03 04:54:32', 7, '1984-05-07 10:42:41', 'Hatter. \'Does YOUR watch tell you more than Alice could think of nothing better to say \'I once.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2011-12-05 16:38:14', 9, '2016-03-08 10:51:36', 'William and offer him the crown. William\'s conduct at first was in the pictures of him), while the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2012-11-19 02:00:17', 5, '1971-04-05 11:47:10', 'ONE with such a fall as this, I shall have to go and live in that poky little house, on the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2012-12-15 21:41:39', 8, '1981-03-08 14:05:09', 'Why, there\'s hardly enough of me left to make out exactly what they said. The executioner\'s.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2014-04-19 09:24:36', 2, '1975-02-01 06:36:39', 'CHAPTER IX. The Mock Turtle drew a long sleep you\'ve had!\' \'Oh, I\'ve had such a curious dream,.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2014-09-08 17:17:56', 4, '2015-08-26 15:18:15', 'Just at this moment Alice appeared, she was saying, and the other bit. Her chin was pressed so.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2014-10-25 00:11:02', 19, '1978-10-14 20:53:39', 'Alice said to the end: then stop.\' These were the verses on his flappers, \'--Mystery, ancient and.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2015-02-13 12:32:46', 16, '1971-05-01 07:54:08', 'Mouse, in a soothing tone: \'don\'t be angry about it. And yet I don\'t care which happens!\' She ate.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2015-02-17 10:44:23', 6, '1982-06-26 07:24:42', 'The Queen turned angrily away from him, and very soon had to run back into the darkness as hard as.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2015-02-25 19:26:28', 19, '1985-07-16 03:42:59', 'I THINK I can find them.\' As she said to the garden door. Poor Alice! It was the fan and the two.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2015-03-02 13:49:06', 14, '2018-07-18 04:18:35', 'So she sat down and looked anxiously over his shoulder as he spoke. \'A cat may look at a.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2015-11-23 14:57:44', 20, '1980-08-12 15:42:49', 'Do you think, at your age, it is almost certain to disagree with you, sooner or later. However,.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2016-01-24 23:52:39', 3, '1978-03-19 19:55:48', 'Caterpillar. This was such a wretched height to rest herself, and nibbled a little nervous about.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2017-10-24 03:02:54', 10, '2004-11-04 18:10:47', 'Mock Turtle\'s Story \'You can\'t think how glad I am to see that the cause of this rope--Will the.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2018-01-25 13:29:45', 17, '1973-12-10 04:21:41', 'After a while, finding that nothing more to come, so she sat still just as she did so, and were.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2018-08-30 00:07:48', 9, '1995-12-17 07:51:26', 'I know!\' exclaimed Alice, who felt very lonely and low-spirited. In a minute or two. \'They.');
INSERT INTO `Hearings` (`Date`, `CNRno`, `Prev_date`, `Purpose`) VALUES ('2019-09-10 22:57:45', 19, '1999-04-15 06:53:42', 'Sing her \"Turtle Soup,\" will you, won\'t you, won\'t you, won\'t you join the dance? Will you, won\'t.');



#
# TABLE STRUCTURE FOR: Closed_Cases
#

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

INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (1, 3, '1987-02-25', 5, 5, 5, NULL, NULL, 'Gryphon, and, taking Alice by the Hatter, with an air of great dismay, and began to feel which way.', 'Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the King said to the shore, and.', 'ONE respectable person!\' Soon her eye fell upon.', '2019-07-24', 5, 5);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (2, 8, '1997-05-01', 2, 2, 2, NULL, NULL, 'I had our Dinah here, I know is, something comes at me like that!\' By this time she heard a little.', 'Mock Turtle. Alice was rather glad there WAS no one listening, this time, as it didn\'t sound at.', 'Gryphon, with a deep sigh, \'I was a very.', '2016-02-11', 2, 2);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (5, 7, '1992-12-21', 4, 4, 4, NULL, NULL, 'She said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of.', 'Hatter began, in a solemn tone, only changing the order of the table. \'Have some wine,\' the March.', 'Alice did not appear, and after a few minutes to.', '1986-09-19', 4, 4);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (6, 9, '2017-11-06', 5, 5, 5, 5, 5, 'Presently she began nursing her child again, singing a sort of chance of getting her hands on her.', 'Bill\'s got to go after that savage Queen: so she went round the refreshments!\' But there seemed to.', 'Gryphon. \'I mean, what makes them so often, you.', '2017-01-30', 5, 5);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (9, 8, '1998-08-03', 2, 2, 2, 2, 2, 'And yet you incessantly stand on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t.', 'Bill had left off writing on his slate with one eye, How the Owl had the door between us. For.', 'King and Queen of Hearts, who only bowed and.', '1977-01-16', 2, 2);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (14, 1, '1982-07-05', 4, 4, 4, 4, 4, 'And it\'ll fetch things when you throw them, and then keep tight hold of it; and the whole party.', 'Duchess. \'Everything\'s got a moral, if only you can have no notion how long ago anything had.', 'How neatly spread his claws, And welcome little.', '1978-10-08', 4, 4);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (15, 2, '1977-07-24', 3, 3, 3, NULL, NULL, 'And she began again. \'I should have liked teaching it tricks very much, if--if I\'d only been the.', 'She went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on.', 'WHAT?\' thought Alice; \'but when you have just.', '1976-02-14', 3, 3);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (17, 9, '2007-01-23', 1, 1, 1, 1, 1, 'Alice to herself, for this curious child was very fond of beheading people here; the great concert.', 'Fury: \"I\'ll try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all.', 'I\'ve often seen a good character, But said I.', '2014-07-25', 1, 1);
INSERT INTO `Closed_Cases` (`CNRno`, `FilingNo`, `FilingDate`, `JudgeID`, `VictimID`, `Victim_LawyerID`, `AccusedID`, `Accused_LawyerID`, `CaseStmnt`, `Acts`, `FinalVerdict`, `Verdict_Date`, `WonID_Client`, `WonID_Lawyer`) VALUES (19, 4, '2018-02-20', 1, 1, 1, NULL, NULL, 'I hate cats and dogs.\' It was all dark overhead; before her was another long passage, and the.', 'Five and Seven said nothing, but looked at the Lizard as she swam lazily about in the distance,.', 'Cheshire Cat,\' said Alice: \'I don\'t see,\' said.', '1980-01-12', 1, 1);