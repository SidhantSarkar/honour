#
# TABLE STRUCTURE FOR: Documents
#

DROP TABLE IF EXISTS `Documents`;

CREATE TABLE `Documents` (
  `ClientID` varchar(10) NOT NULL,
  `FilingNo` int(11) NOT NULL,
  `Document` varchar(256) NOT NULL,
  `DocID` int(11) NOT NULL,
  PRIMARY KEY (`DocID`),
  KEY `ClientID` (`ClientID`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `Documents_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `Clients` (`ID`),
  CONSTRAINT `Documents_ibfk_2` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('100', 2, 'http://reichert.com/', 2);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('106', 4, 'http://sipespouros.org/', 8);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('107', 7, 'http://www.orn.net/', 9);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('108', 10, 'http://schimmel.com/', 18);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('100', 16, 'http://www.strosinkling.com/', 21);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('106', 18, 'http://schroeder.org/', 22);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('107', 2, 'http://www.considine.com/', 25);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('108', 4, 'http://block.biz/', 27);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('100', 7, 'http://www.nader.com/', 30);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('106', 10, 'http://oharaking.com/', 35);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('107', 16, 'http://watsicarunte.net/', 36);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('108', 18, 'http://www.littel.org/', 39);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('100', 2, 'http://welch.info/', 51);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('106', 4, 'http://www.goldner.biz/', 57);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('107', 7, 'http://grimesswift.biz/', 60);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('108', 10, 'http://pouros.com/', 64);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('100', 16, 'http://jacobi.org/', 65);
INSERT INTO `Documents` (`ClientID`, `FilingNo`, `Document`, `DocID`) VALUES ('106', 18, 'http://www.jaskolski.com/', 69);


#
# TABLE STRUCTURE FOR: FIR
#

DROP TABLE IF EXISTS `FIR`;

CREATE TABLE `FIR` (
  `FIRno` int(11) NOT NULL,
  `FilingNo` int(11) DEFAULT NULL,
  `InspectorName` varchar(30) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`FIRno`),
  KEY `FilingNo` (`FilingNo`),
  CONSTRAINT `FIR_ibfk_1` FOREIGN KEY (`FilingNo`) REFERENCES `Pending_Cases` (`FilingNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (5, 2, 'Simone Morar', 'Footman remarked, \'till tomorrow--\' At this moment Alice appeared, she was now, and she did so, very carefully, nibbling first at one end to the waving of the Lizard\'s slate-pencil, and the little.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (8, 4, 'Ambrose Hackett II', 'I tell you!\' said Alice. \'And be quick about it,\' added the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice hastily; \'but I\'m not the same, the next moment she felt.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (12, 7, 'Rosella Moore', 'The Dormouse slowly opened his eyes. He looked at Alice. \'I\'M not a mile high,\' said Alice. \'Why not?\' said the Caterpillar, and the Queen, the royal children, and make one quite giddy.\' \'All.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (15, 10, 'Charlie Howe', 'Duck and a fall, and a fan! Quick, now!\' And Alice was beginning to think that very few little girls in my time, but never ONE with such a dreadful time.\' So Alice got up in her hand, and made a.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (17, 16, 'Mrs. Carlotta Cronin DVM', 'The Mouse did not feel encouraged to ask any more if you\'d rather not.\' \'We indeed!\' cried the Gryphon. \'It\'s all her riper years, the simple rules their friends had taught them: such as, \'Sure, I.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (21, 18, 'Dr. Arnold Bergstrom', 'I\'ll stay down here with me! There are no mice in the way I want to go! Let me see: I\'ll give them a new idea to Alice, flinging the baby with some surprise that the Queen had ordered. They very.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (23, 2, 'Karlee Buckridge', 'First, however, she again heard a little way forwards each time and a fall, and a large ring, with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, jumping up in a low trembling.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (32, 4, 'Valentin Skiles V', 'White Rabbit, who was sitting between them, fast asleep, and the m--\' But here, to Alice\'s side as she left her, leaning her head down to look about her other little children, and make THEIR eyes.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (37, 7, 'Randal Stark', 'Alice. \'I\'ve read that in the air. \'--as far out to sea!\" But the insolence of his tail. \'As if it makes rather a hard word, I will tell you just now what the flame of a bottle. They all sat down at.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (44, 10, 'Prof. Gideon Franecki', 'Let me see: four times five is twelve, and four times five is twelve, and four times five is twelve, and four times five is twelve, and four times five is twelve, and four times five is twelve, and.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (48, 16, 'Kolby Davis', 'Hatter. Alice felt that she let the jury--\' \'If any one left alive!\' She was walking by the Hatter, it woke up again as she could. \'The game\'s going on rather better now,\' she added in an angry.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (49, 18, 'Lora Wyman I', 'An obstacle that came between Him, and ourselves, and it. Don\'t let me hear the name of the March Hare said to herself, \'the way all the time they were nowhere to be a person of authority over.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (51, 2, 'Quinton Wilkinson', 'Alice was a different person then.\' \'Explain all that,\' said the King: \'however, it may kiss my hand if it began ordering people about like that!\' \'I couldn\'t help it,\' she thought, and looked.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (63, 4, 'Prof. Raheem Fay PhD', 'Cheshire Cat,\' said Alice: \'she\'s so extremely--\' Just then she looked down at her for a dunce? Go on!\' \'I\'m a poor man,\' the Hatter were having tea at it: a Dormouse was sitting between them, fast.');
INSERT INTO `FIR` (`FIRno`, `FilingNo`, `InspectorName`, `Description`) VALUES (65, 7, 'Prof. Kay Hintz', 'COULD! I\'m sure _I_ shan\'t be beheaded!\' said Alice, \'and those twelve creatures,\' (she was obliged to say \'I once tasted--\' but checked herself hastily, and said to herself. \'I dare say there may.');
