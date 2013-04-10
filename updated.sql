# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: test
# Generation Time: 2011-04-22 16:15:18 -0700
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Album
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Album`;

CREATE TABLE `Album` (
  `Name` char(100) DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `Album_ID` int(11) NOT NULL,
  `Artist_ID` int(11) DEFAULT NULL,
  `Genre_ID` int(11) DEFAULT NULL,
  `Cover_Art` char(100) DEFAULT NULL,
  PRIMARY KEY (`Album_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Album` WRITE;
/*!40000 ALTER TABLE `Album` DISABLE KEYS */;
INSERT INTO `Album` (`Name`,`Year`,`Album_ID`,`Artist_ID`,`Genre_ID`,`Cover_Art`)
VALUES
	('The E.N.D.','2009',1,1,1,'media/coverart/The_E_N_D_2009.jpg'),
	('Doo-Wops & Hooligans','2010',2,2,4,NULL),
	('Universal Mind Control','2008',3,3,1,NULL),
	('Raymond V Raymond','2010',4,4,1,NULL),
	('808s & Heartbreak','2008',5,5,1,NULL),
	('Periphery','2010',6,6,2,NULL),
	('Pulse','2011',7,7,2,NULL),
	('Sound Awake','2010',8,8,2,NULL),
	('Concealing Fate - EP','2010',9,9,3,NULL),
	('Just Like Vinyl','2010',10,10,2,NULL),
	('Demos','0000',11,11,2,NULL),
	('Doppelganger','2005',12,11,2,NULL),
	('The Fall Of Troy','2003',13,11,2,NULL),
	('In The Unlikely Event','2010',14,11,2,NULL),
	('Manipulator','2007',15,11,2,NULL),
	('The Phantom On the Horizon','2008',16,11,2,NULL),
	('Animals As Leaders','2000',17,12,3,NULL),
	('Wave of Babies - Single','2010',18,12,3,NULL),
	('Alaska','2005',19,13,3,NULL),
	('The Anatomy Of [Bonus Tracks]','2006',20,13,3,NULL),
	('Between The Buried & Me','2002',21,13,3,NULL),
	('Colors','2007',22,13,3,NULL),
	('Colors Live','2008',23,13,3,NULL),
	('The Great Misdirection','2009',24,13,3,NULL),
	('The Silent Circus','2003',25,13,3,NULL),
	('Constellations','2009',26,14,3,NULL),
	('Lost Messengers: The Outtakes','2009',27,14,3,NULL),
	('Messengers','2007',28,14,3,NULL),
	('Thrill Seeker','2005',29,14,3,NULL);

/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Artist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Artist`;

CREATE TABLE `Artist` (
  `Name` char(100) DEFAULT NULL,
  `Artist_ID` int(11) NOT NULL,
  `Info` text NOT NULL,
  `Logo` char(1) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` (`Name`,`Artist_ID`,`Info`,`Logo`)
VALUES
	('Black Eyed Peas',1,'The Black Eyed Peas are an American hip hop group, formed in Los Angeles, California in 1995.\r\nThe group is composed of rapper and multi-instrumentalist will.i.am, rappers apl.de.ap and Taboo,\r\nand singer-rapper Fergie. Since the release of their third album, Elephunk, in 2003, the group \r\nhas sold an estimated 27 million albums worldwide, 20 million singles and 47 million copies with \r\nboth sales combined.In 2009, the group became one of only 11 artists to have ever simultaneously \r\nheld the #1 and #2 spots on the Billboard Hot 100, with their singles \"Boom Boom Pow\" and \"I Gotta \r\nFeeling\", with the next single \"Meet Me Halfway\" achieving similar success, from the album The E.N.D. \r\nCombined, these three singles also topped the chart for an unprecedented 30 consecutive weeks in 2009. \r\nThe album later produced a third Hot 100 number-one placement with \"Imma Be\", making the group one of \r\nfew to ever place three number one singles on the chart from the same album before being followed with \r\n\"Rock That Body\" which managed to peak in the Top 10 of Hot 100. \"I Gotta Feeling\" has become the first \r\nsingle to sell more than 1 million downloads in the United Kingdom.',NULL),
	('Bruno Mars',2,'Peter Gene Hernandez (born October 8, 1985), better known by his stage name Bruno Mars, \r\nis an American singer-songwriter and music producer. Raised in Honolulu, Hawaii by a \r\nfamily of musicians, Mars began making music at a young age. After performing in various\r\nmusical venues in his hometown throughout his childhood, he decided to pursue a musical \r\ncareer and moved to Los Angeles after graduating from high school. Mars began producing \r\nsongs for other artists, joining production team The Smeezingtons.\r\nAfter an unsuccessful stint with Motown Records, Mars signed with Atlantic Records in 2009.\r\nHe became recognized as a solo artist after lending his vocals and co-writing the hooks for\r\nthe songs \"Nothin\' on You\" by B.o.B, and \"Billionaire\" by Travie McCoy. He also co-wrote the\r\nhits \"Right Round\" by Flo Rida featuring Kesha, \"Wavin\' Flag\" by K\'naan, and \"Fuck You!\" by\r\nCee Lo Green. In October 2010, he released his debut album, Doo-Wops & Hooligans. Anchored\r\nby the worldwide number one singles \"Just the Way You Are\" and \"Grenade\", the album peaked\r\nat number three on the Billboard 200. He was nominated for seven Grammys at the 53rd Grammy\r\nAwards, winning Best Male Pop Vocal Performance for \"Just the Way You Are\".',NULL),
	('Common',3,'Lonnie Rashid Lynn, Jr. (born March 13, 1972), better known by his stage name Common (previously Common Sense), \r\nis an American hip hop artist and actor. Common debuted in 1992 with the album Can I Borrow a Dollar? and maintained\r\na significant underground following into the late 90s, after which he gained notable mainstream success through his \r\nwork with the Soulquarians. His first major label album, Like Water for Chocolate, received widespread critical \r\nacclaim and tremendous commercial success. His first Grammy award was in 2003 for Best R&B Song for \"Love of My Life \r\n(An Ode to Hip-Hop)\" with Erykah Badu. Its popularity was matched by May 2005\'s Be, which was nominated in the \r\n2006 Grammy Awards for Best Rap Album. Common was awarded his second Grammy for Best Rap Performance by a Duo or Group, \r\nfor \"Southside\" (featuring Kanye West), from his July 2007 album Finding Forever. His best-of album Thisisme Then: \r\nThe Best of Common was released on November 27, 2007.',NULL),
	('Usher',4,'Usher Raymond IV was born on October 14, 1978. He performs under the name Usher, is an American recording artist,\r\ndancer, and actor. He rose to fame in the late 1990s with the release of his second album My Way, which spawned his \r\nfirst Billboard Hot 100 number-one hit, \"Nice and Slow\". His followup album 8701 (2001) produced the Billboard Hot \r\n100 number-one hits \"U Remind Me\" and \"U Got It Bad\". Both albums sold over 8 million copies worldwide, establishing \r\nUsher as one of the biggest selling R&B artists of the 1990s. Usher\'s success continued with his 2004 album Confessions,\r\nwhich has sold over ten million copies in the United States, and been certified diamond by the RIAA. Confessions has \r\nthe highest first week sales for an R&B artist in history, and sold over 20 million copies worldwide. It spawned \r\na record breaking four consecutive Billboard Hot 100 number-one hits‚\"Yeah!\", \"Burn\", \"Confessions Part II\", and \r\n\"My Boo\". Usher\'s 2008 album Here I Stand sold over 5 million copies worldwide, and its lead single \"Love In This \r\nClub\" peaked at number-one on the Billboard Hot 100.',NULL),
	('Kanye West',5,'Kanye Omari West, who was born on born June 8, 1977, is an American rapper, singer, and record producer. \r\nWest first rose to fame as a producer for Roc-A-Fella Records, where he eventually achieved recognition \r\nfor his work on Jay-Z\'s album The Blueprint, as well as hit singles for musical artists including Alicia \r\nKeys, Ludacris, and Janet Jackson. His style of production originally used pitched-up vocal samples from \r\nsoul songs incorporated with his own drums and instruments. However, subsequent productions saw him \r\nbroadening his musical palette and expressing influences encompassing \'70s R&B, baroque pop, trip hop, \r\narena rock, folk, alternative, electronica, synth-pop, and classical music.\r\n',NULL),
	('Periphery',6,'Periphery is a notable American progressive metal band from Bethesda, Maryland \r\n(by way of Baltimore, Maryland), formed in 2005.Periphery was formed by guitarist \r\nMisha Mansoor in 2005. He slowly gained a reputation on the internet, primarily \r\nvia a regularly-updated Soundclick account, Meshuggah and John Petrucci forums, \r\nand the sevenstring.org message boards. Before and during Periphery\'s tenure in \r\nthe metal scene, Mansoor developed a reputation for doing his own audio production, \r\nthe majority of which was performed with a home computer and a Pod XT during this period. \r\nMansoor has continued to update his personal project, Bulb, which preceded Periphery, \r\noften transferring songs between the two projects. Mansoor continues to be involved in \r\na number of other musical projects, including Haunted Shores with Mark Holcomb, Being \r\n(a space-prog metal outfit), and Of Man Not of Machine with Elliot Coleman (Sky Eats \r\nAirplane) and Holcomb.',NULL),
	('Thomas Giles',7,'Tommy Giles Rogers (born December 24, 1980) is an American musician, most notable for being the lead vocalist,\r\nkeyboardist, and founding member of the American heavy metal band Between the Buried and Me. His vocal style\r\ncombines death growls and screams with peaceful, sometimes falsetto singing melodies.Rogers started his musical \r\ncareer in 1999 by being a guitarist for the metalcore band, Prayer for Cleansing, when they disbanded; Rogers \r\nfounded the metalcore band, Between the Buried and Me in 2001; after acquiring a full-lineup they released their \r\nthree-song demo and then their self-titled debut album in 2002. In 2004 Rogers released a self-titled debut album \r\nfor his electronica side project, named Giles. Rogers was one of the vocalists for the metal band From Here On and \r\nhas appeared in numerous other musical projects including the influential metal band, Undying. He is a part of a \r\nclothing line and a small musical duo project with Jacob Troth that is known as Jacob Rogers.\r\nHe is featured in the August Burns Red song \"Indonesia\" and will appear on the upcoming Devin Townsend solo album \r\nDeconstruction on the song \"Planet of the Apes\".Rogers has recorded a solo album under the name of Thomas Giles, \r\nentitled \"Pulse\", which was released on February 1, 2011.',NULL),
	('Karnivool',8,'Karnivool are an Australian progressive metal band formed in Perth in 1997.\r\n The group currently consists of Ian Kenny on vocals, Drew Goddard and Mark\r\n Hosking on guitar, Jon Stockman on bass guitar, and Steve Judd on drums. \r\nKarnivool emerged from a band Kenny and Goddard formed during high school. \r\nTheir two extended plays, 1999\'s Karnivool and 2001\'s Persona, and their \r\n2005 debut album Themata, possessed an alternative metal sound; their 2009 \r\nfollow-up Sound Awake developed a more progressive rock sound.\r\n',NULL),
	('TesseracT',9,'TesseracT are a British progressive metal band formed in 2003.\r\nThey are currently signed to Century Media Records. TesseracT \r\nstarted out back in 2003 as an archetypal djent band in then-teenage \r\nAcle Kahney\'s bedroom as a side project to his main band, Fellsilent.\r\nWhat started as an outlet for creativity and experimentation grew and \r\nKahney posted clips of his technically heavy guitar work on forums such \r\nas Sevenstring.org, taking the feedback on board and gradually improving \r\nhis technique. It was in this way that a community of bedroom \r\nproducer-musicians were spawned and this new wave of progressive music \r\nwas created, along with names such as Misha Mansoor (Periphery), Paul \r\nOrtiz (Chimp Spanner) and John Browne (Monuments), who was a bandmate \r\nof Kahney\'s in Fellsilent.',NULL),
	('Just Like Vinyl',10,'Just Like Vinyl are an American Rock group based in Washington. \r\nThe group consists of Thomas Erak (vocals, guitar), Jake Carden (vocals, guitar),\r\nJay Beaman (drums, percussion) and Henry Batts (bass, backing vocals). The group \r\nrecorded their debut LP, Thomas Erak updated his Twitter with the latest news on \r\nthe band while it was in progress.\r\n\r\nRumors of Thomas Erak\'s new project surfaced when his previous band, The Fall of Troy,\r\ndisbanded early in 2010. He formed the new group with Jay Beaman who had been the drummer\r\nof Erak\'s high school band Tribune as well as previously being a member of Red Museum and\r\nSchoolyard Heroes. Carden (The Filthy None) and Batts rounded off the line-up and the band \r\nquickly started practicing and writing new material. Information about the band\'s progress \r\nwas revealed through Erak\'s Twitter and eventually a dedicated Just Like Vinyl Twitter. The \r\nquartet played their first live set on the 16th of June 2010 in a house in Seattle and entered \r\nthe studio to record a debut LP on the 2nd of August. Just Like Vinyl released an unmastered \r\nversion of new song \"Death of the Sheep\" on their Facebook page on the 27th of September 2010, \r\nthis is the group\'s first official recording. During their first tour in October of 2010, \r\nthe band released their self-titled album. The album was released online in December of 2010.',NULL),
	('The Fall of Troy',11,'The Fall of Troy was an American rock trio from Mukilteo, Washington. The trio consisted \r\nof Thomas Erak (lead vocals, guitars, keyboards), Andrew Forsman (drums, percussion) and \r\nFrank Ene (bass, backing vocals) The trio was characterized by a technical, intricate style, \r\nknown for Erak\'s sporadic guitar riffs and their alternation between clean vocals and harsh \r\nscreams. Over the course of their career of about eight years, the group has released four \r\nfull-length albums, one EP, and one single. Prior to The Fall of Troy\'s formation, when each \r\nmember was about 17 years old, all three founding members were in another group named The 30 \r\nYears War, who released two EPs.',NULL),
	('Animals As Leaders',12,'Animals as Leaders is an American Washington, D.C.‚based instrumental progressive metal project by\r\nguitarist Tosin Abasi which now includes guitarist Javier Reyes and drummer Navene Koperweis. The \r\nself-titled debut album was released in April 2009 by Prosthetic Records. Tosin Abasi and Javier \r\nReyes are also members of the supergroup T.R.A.M alongside formerThe Mars Volta wind instrumentalist \r\nAdrian Terrazas and Suicidal Tendencies drummer Eric Moore.\r\n',NULL),
	('Between The Buried & Me',13,'Between the Buried and Me is an American heavy metal band from Raleigh, North Carolina.\r\nThey have released five studio albums since 2000, as well as a cover album and a live DVD/CD.\r\nTheir follow-up to Colors, titled The Great Misdirect, was released October 27, 2009.\r\n\r\nThe band\'s name is derived from a section of lyrics in the Counting Crows song, \"Ghost Train;\r\n\"\"Took the cannonball down to the ocean/Across the desert from the sea to shining sea/I rode a \r\nladder that climbed across the nation/Fifty million feet of earth between the buried and me\"',NULL),
	('August Burns Red',14,'August Burns Red is an American metalcore band from Lancaster, Pennsylvania.\r\nFormed in March 2003, the band began their first performances while a majority\r\nof the members were still attending high school, and soon began playing shows \r\naround Lancaster. The band name is derived from an incident involving their first \r\nvocalist, Jon Hershey.\r\n\r\nThe band is primarily known for their heavy breakdowns and odd-meter riffs. \r\nThey state Between the Buried and Me, Misery Signals and Hopesfall as their \r\nmain influences.',NULL);

/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `Name` char(40) DEFAULT NULL,
  `Type` char(10) DEFAULT NULL,
  `Size` decimal(10,0) DEFAULT NULL,
  `File_ID` int(11) NOT NULL,
  `File_Loc` char(200) DEFAULT NULL,
  PRIMARY KEY (`File_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` (`Name`,`Type`,`Size`,`File_ID`,`File_Loc`)
VALUES
	('test','mp3',4,1,'/home');

/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Genre
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Genre`;

CREATE TABLE `Genre` (
  `Name` char(50) DEFAULT NULL,
  `Genre_ID` int(11) NOT NULL,
  PRIMARY KEY (`Genre_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` (`Name`,`Genre_ID`)
VALUES
	('Hip Hop',1),
	('Rock',2),
	('Metal',3),
	('Pop',4);

/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Info
# ------------------------------------------------------------

DROP VIEW IF EXISTS `Info`;

CREATE TABLE `Info` (
   `Artist` CHAR(100) DEFAULT NULL,
   `Album` CHAR(100) DEFAULT NULL,
   `Song` CHAR(100) DEFAULT NULL,
   `Length` TIME DEFAULT NULL,
   `Genre` CHAR(50) DEFAULT NULL
) ENGINE=MyISAM;;



# Dump of table Members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Members`;

CREATE TABLE `Members` (
  `Name` char(100) DEFAULT NULL,
  `Artist_ID` int(11) DEFAULT NULL,
  `Type_ID` int(11) DEFAULT NULL,
  `Members_ID` int(11) NOT NULL,
  PRIMARY KEY (`Members_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Members` WRITE;
/*!40000 ALTER TABLE `Members` DISABLE KEYS */;
INSERT INTO `Members` (`Name`,`Artist_ID`,`Type_ID`,`Members_ID`)
VALUES
	('Fergie',1,1,1),
	('will.i.am',1,1,2),
	('Taboo',1,1,3),
	('apl.de.ap',1,1,4);

/*!40000 ALTER TABLE `Members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table MVideo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `MVideo`;

CREATE TABLE `MVideo` (
  `Title` char(100) DEFAULT NULL,
  `Length` time DEFAULT NULL,
  `File_ID` int(11) DEFAULT NULL,
  `MVideo_ID` int(11) NOT NULL,
  PRIMARY KEY (`MVideo_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `MVideo` WRITE;
/*!40000 ALTER TABLE `MVideo` DISABLE KEYS */;
INSERT INTO `MVideo` (`Title`,`Length`,`File_ID`,`MVideo_ID`)
VALUES
	('test','02:00:00',1,1);

/*!40000 ALTER TABLE `MVideo` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Playlist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Playlist`;

CREATE TABLE `Playlist` (
  `Playlist_ID` int(11) NOT NULL,
  `Name` char(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Playlist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Playlist` WRITE;
/*!40000 ALTER TABLE `Playlist` DISABLE KEYS */;
INSERT INTO `Playlist` (`Playlist_ID`,`Name`,`Date`,`User_ID`)
VALUES
	(1,'Playlist 1','0000-00-00',1),
	(2,'NewPlaylist1','0000-00-00',1),
	(3,'NewPlaylist1','0000-00-00',1),
	(4,'NewPlaylist1','0000-00-00',1);

/*!40000 ALTER TABLE `Playlist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Rating`;

CREATE TABLE `Rating` (
  `Song_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Value` int(11) DEFAULT '0',
  `Rating_ID` int(11) NOT NULL,
  PRIMARY KEY (`Rating_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
INSERT INTO `Rating` (`Song_ID`,`User_ID`,`Value`,`Rating_ID`)
VALUES
	(1,1,6,1),
	(1,2,20,2),
	(1,3,-3,3);

/*!40000 ALTER TABLE `Rating` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Song
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Song`;

CREATE TABLE `Song` (
  `Name` char(100) DEFAULT NULL,
  `Length` time DEFAULT NULL,
  `Song_ID` int(11) NOT NULL,
  `File_ID` int(11) DEFAULT NULL,
  `Album_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Song_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Song` WRITE;
/*!40000 ALTER TABLE `Song` DISABLE KEYS */;
INSERT INTO `Song` (`Name`,`Length`,`Song_ID`,`File_ID`,`Album_ID`)
VALUES
	('Boom Boom Pow','04:11:00',1,1,1),
	('Rock That Body','04:29:00',2,2,1),
	('Meet Me Halfway','04:44:00',3,3,1),
	('Imma Be','04:17:00',4,4,1),
	('I Gotta Feeling','04:49:00',5,5,1),
	('Alive','05:03:00',6,6,1),
	('Ring-A-Ling','04:33:00',7,7,1),
	('Party All The Time','04:43:00',8,8,1),
	('Out Of My Head','03:52:00',9,9,1),
	('Electric City','04:08:00',10,10,1),
	('Showdown','04:27:00',11,11,1),
	('Now Generation','04:06:00',12,12,1),
	('One Tribe','04:40:00',13,13,1),
	('Rockin To The Beat','03:46:00',14,14,1),
	('Grenade','03:42:00',15,15,2),
	('Just The Way You Are','03:40:00',16,16,2),
	('Our First Time','04:03:00',17,17,2),
	('Runaway Baby','03:08:00',18,18,2),
	('The Lazy Song','03:50:00',19,19,2),
	('Talking To The Moon','03:37:00',20,20,2),
	('Liquor Store Blues','03:49:00',21,21,2),
	('Count On Me','03:17:00',22,22,2),
	('The Other Side','03:47:00',23,23,2),
	('Universal Mind Control','03:33:00',24,24,3),
	('Punch Drunk Love','04:14:00',25,25,3),
	('Make My Day','03:58:00',26,26,3),
	('Sex 4 Suga','04:02:00',27,27,3),
	('Announcement','03:45:00',28,28,3),
	('Gladiator','04:07:00',29,29,3),
	('Changes','03:58:00',30,30,3),
	('Inhale','03:11:00',31,31,3),
	('What A World','03:58:00',32,32,3),
	('Everywhere','03:15:00',33,33,3),
	('Monstar','05:01:00',34,34,4),
	('Hey Daddy (Daddy\'s Home)','03:44:00',35,35,4),
	('There Goes My Baby','04:41:00',36,36,4),
	('Lil Freak','03:54:00',37,37,4),
	('She Don\'t Know','04:03:00',38,38,4),
	('OMG','04:29:00',39,39,4),
	('Mars vs. Venus','04:22:00',40,40,4),
	('Pro Lover','05:02:00',41,41,4),
	('Foolin\' Around','04:11:00',42,42,4),
	('Papers','04:21:00',43,43,4),
	('So Many Girls','04:36:00',44,44,4),
	('Guilty','03:44:00',45,45,4),
	('Okay','03:15:00',46,46,4),
	('Making Love (Into the Night)','03:36:00',47,47,4),
	('Say You Will','06:18:00',48,48,5),
	('Welcome To Heartbreak','04:23:00',49,49,5),
	('Heartless','03:31:00',50,50,5),
	('Amazing','03:58:00',51,51,5),
	('Love Lockdown','04:30:00',52,52,5),
	('Paranoid','04:48:00',53,53,5),
	('RoboCop','04:34:00',54,54,5),
	('Street Lights','03:10:00',55,55,5),
	('Bad News','03:59:00',56,56,5),
	('See You In My Nightmares','04:18:00',57,57,5),
	('Coldest Winter','02:44:00',58,58,5),
	('Pinocchio Story (Freestyle Live From Singapore)','06:02:00',59,59,5),
	('Insomnia','04:49:00',60,60,6),
	('The Walk','05:06:00',61,61,6),
	('Letter Experiment','06:51:00',62,62,6),
	('Jetpacks Was Yes','03:57:00',63,63,6),
	('Light','05:50:00',64,64,6),
	('All New Materials','05:20:00',65,65,6),
	('Buttersnips','05:54:00',66,66,6),
	('Party All The Time','04:43:00',67,67,6),
	('Icarus Lives','03:11:00',68,68,6),
	('Totla Mad','04:00:00',69,69,6),
	('Ow My Feelings','06:06:00',70,70,6),
	('Zyglrox','05:06:00',71,71,6),
	('Racecar','15:23:00',72,72,6),
	('Captain On','03:13:00',73,73,6),
	('Ragtime Dandies','01:12:00',74,74,6),
	('Sleep Shake','04:55:00',75,75,7),
	('Reverb Island','03:55:00',76,76,7),
	('Mr. Bird','04:24:00',77,77,7),
	('Catch & Release','03:25:00',78,78,7),
	('Hamilton Anxiety Scale','04:09:00',79,79,7),
	('Scared','02:36:00',80,80,7),
	('Reject Falicon','04:21:00',81,81,7),
	('Medic','02:48:00',82,82,7),
	('Suspend the Death Watch','05:14:00',83,83,7),
	('Armchair Travel','03:38:00',84,84,7),
	('Hypoxia','05:07:00',85,85,7),
	('Simple Boy','05:47:00',86,86,8),
	('Goliath','04:38:00',87,87,8),
	('New Day','08:21:00',88,88,8),
	('Set Fire to the Hive','04:28:00',89,89,8),
	('Umbra','07:51:00',90,90,8),
	('All I Know','04:54:00',91,91,8),
	('The Medicine Wears Off','01:50:00',92,92,8),
	('The Caudal Lure','06:16:00',93,93,8),
	('Illumine','05:13:00',94,94,8),
	('Deadman','12:04:00',95,95,8),
	('Change','10:47:00',96,96,9),
	('Acceptance: Concealing Fate Pt.1','08:33:00',97,97,9),
	('Deception: Concealing Fate Pt.2','05:23:00',98,98,9),
	('The Impossible: Concealing Fate Pt.3','04:51:00',99,99,9),
	('Perfection: Concealing Fate Pt.4','02:38:00',100,100,9),
	('Epiphany: Concealing Fate Pt.5','01:29:00',101,101,9),
	('Origin: Concealing Fate Pt.6','04:04:00',102,102,9),
	('Wisdom Teeth','02:07:00',103,103,10),
	('Cardiac Harassment','05:33:00',104,104,10),
	('The Circulatory System','04:20:00',105,105,10),
	('Big Words','03:02:00',106,106,10),
	('Death of the Sheep','03:48:00',107,107,10),
	('D.R.U.M.S.','01:13:00',108,108,10),
	('Kite','08:05:00',109,109,10),
	('Epiphany','04:22:00',110,110,10),
	('No Friend Of Mine','04:43:00',111,111,10),
	('Pulled Apart','03:28:00',112,112,10),
	('It\'s Over','08:29:00',113,113,10),
	('The Vomiting Winter(Demo)','04:20:00',114,114,11),
	('I Just Got This Symphony Goin\'','04:09:00',115,115,12),
	('Act One, Scene One','05:01:00',116,116,12),
	('F.C.P.R.E.M.I.X.','03:58:00',117,117,12),
	('You Got A Death Wish, Johnny Traunt?','02:13:00',118,118,12),
	('Mouths Like Sidewinder Misssles','03:44:00',119,119,12),
	('The Hol[ ]y Tape...','04:51:00',120,120,12),
	('Laces Out, Dan!','02:32:00',121,121,12),
	('We Better Learn To Hotwire A Uterus','02:11:00',122,122,12),
	('Whacko Jacko Steals The Elephant Man\'s Bones','04:51:00',123,123,12),
	('Tom Waits','03:03:00',124,124,12),
	('Macaulay MvVulkin','08:06:00',125,125,12),
	('Rockstar Nailbomb!','02:02:00',126,126,13),
	('Spartacus','01:15:00',127,127,13),
	('The Circus That Has brought Us Back to These Nights (Yo Chocola)','03:09:00',128,128,13),
	('Mouths Like Sidewinder Missiles','03:52:00',129,129,13),
	('The Last March Of The Ents','02:59:00',130,130,13),
	('F.C.P.S.I.T.S.G.E.P.G.E.P.G.E.P.','04:41:00',131,131,13),
	('Whacko Jacko Steals The Elephant Man\'s Bones','04:52:00',132,132,13),
	('Reassurance Rests In The Sea','03:58:00',133,133,13),
	('The Adventures of Allan Gordon','04:07:00',134,134,13),
	('I Just Got This Symphony Goin\'','04:14:00',135,135,13),
	('What Sound Does A Mastodon Make?','07:13:00',136,136,13),
	('Panic Attack!','03:34:00',137,137,14),
	('Straight-Jacket Keelhauled','02:23:00',138,138,14),
	('The Battleship Graveyard','05:10:00',139,139,14),
	('A Classic case Of Transference','04:43:00',140,140,14),
	('Single','03:06:00',141,141,14),
	('Empty The Clip, The King Has Been Slain, Long Live The Queen','03:17:00',142,142,14),
	('People And Their Lives','06:18:00',143,143,14),
	('Dirty Pillow Talk','04:18:00',144,144,14),
	('Nobody\'s Perfect','04:44:00',145,145,14),
	('Webs','04:18:00',146,146,14),
	('Walk Of Fame','05:20:00',147,147,14),
	('Nature Vs. Nurture','05:43:00',148,148,14),
	('Cut Down All The Trees And Name The Streets After Them','02:38:00',149,149,15),
	('The Dark Trail','04:31:00',150,150,15),
	('Quarter Past','04:51:00',151,151,15),
	('Problem!?','01:56:00',152,152,15),
	('Semi-Fiction','04:27:00',153,153,15),
	('Oh! The Casino!','02:18:00',154,154,15),
	('Sledgehammer','06:02:00',155,155,15),
	('Seattlantis','04:02:00',156,156,15),
	('Ex-Creations','03:09:00',157,157,15),
	('Shhh!!! If Your\'e Quiet, I\'ll Show You A Dinosaur','02:44:00',158,158,15),
	('Caught Up','02:30:00',159,159,15),
	('A Man. A Plan. A Canal. Panama.','05:43:00',160,160,15),
	('Chapter I: Introverting Dimensions','10:51:00',161,161,16),
	('Chapter II: A Strange Conversation','04:42:00',162,162,16),
	('Chapter III: Nostalgic Mannerisms','07:52:00',163,163,16),
	('Chapter IV: Enter the Black Demon','05:36:00',164,164,16),
	('Chapter V: The Walls Bled Lust','08:08:00',165,165,16),
	('Tempting Time','05:24:00',166,166,17),
	('Soraya','04:27:00',167,167,17),
	('Thoroughly At Home','04:02:00',168,168,17),
	('On Impulse','06:10:00',169,169,17),
	('Tessitura','01:06:00',170,170,17),
	('Behaving Badly','04:26:00',171,171,17),
	('The Price of Everything and the Value of Nothing','05:32:00',172,172,17),
	('CAFO','06:41:00',173,173,17),
	('Inamorata','06:08:00',174,174,17),
	('Point to Point','01:44:00',175,175,17),
	('Modern Meat','02:07:00',176,176,17),
	('Song Of Solomon','04:17:00',177,177,17),
	('Wave of Babies','05:30:00',178,178,18),
	('All Bodies','06:12:00',179,179,19),
	('Alaska','03:58:00',180,180,19),
	('Croakies And Boatshoes','02:22:00',181,181,19),
	('Selkies: The Endless Obsession','07:23:00',182,182,19),
	('Breathe In, Breathe Out','00:56:00',183,183,19),
	('Roboturner','07:07:00',184,184,19),
	('Backwards Marathon','08:27:00',185,185,19),
	('Medicine Wheel','04:18:00',186,186,19),
	('The Primer','04:46:00',187,187,19),
	('Autodidact','05:31:00',188,188,19),
	('Laser Speed','02:53:00',189,189,19),
	('Blackened','06:40:00',190,190,20),
	('Kickstart My Heart','04:55:00',191,191,20),
	('The Day I Tried To Live','05:29:00',192,192,20),
	('Bicycle Race','03:10:00',193,193,20),
	('Three Of A Perfect Pair','04:11:00',194,194,20),
	('Us And Them','07:53:00',195,195,20),
	('Geek U.S.A.','05:25:00',196,196,20),
	('Forced March','03:52:00',197,197,20),
	('Territory','04:51:00',198,198,20),
	('Change','04:07:00',199,199,20),
	('Malpractice','04:02:00',200,200,20),
	('Little 15','04:32:00',201,201,20),
	('Cemetary Gates','07:06:00',202,202,20),
	('Colorblind','03:48:00',203,203,20),
	('More Of Myself To Kill','06:48:00',204,204,21),
	('Arsonist','04:50:00',205,205,21),
	('Aspirations','05:46:00',206,206,21),
	('What We Have Become','05:07:00',207,207,21),
	('Fire For A Dry Mouth','06:05:00',208,208,21),
	('Naked By The Computer','05:34:00',209,209,21),
	('Use Of A Weapon','04:51:00',210,210,21),
	('Shevanel Cut A Flip','09:27:00',211,211,21),
	('Foam Born: The Backtrack','02:14:00',212,212,22),
	('Foam Born: The Decade Of Statues','05:20:00',213,213,22),
	('Informal Gluttony','06:48:00',214,214,22),
	('Sun Of Nothing','10:59:00',215,215,22),
	('Ants Of The Sky','13:11:00',216,216,22),
	('Prequel To The Sequel','08:37:00',217,217,22),
	('Viridian','02:51:00',218,218,22),
	('White Walls','14:13:00',219,219,22),
	('Foam Born (A) The Backtrack','03:13:00',220,220,23),
	('Foam Born (B) The Decade Of Statues','05:20:00',221,221,23),
	('Informal Gluttony','06:48:00',222,222,23),
	('Sun Of Nothing','10:59:00',223,223,23),
	('Ants Of The Sky','13:11:00',224,224,23),
	('Prequel To The Sequel','09:08:00',225,225,23),
	('Viridian','02:06:00',226,226,23),
	('White Walls','15:31:00',227,227,23),
	('Mirrors','03:38:00',228,228,24),
	('Obfuscation','09:15:00',229,229,24),
	('Disease, Injury, Madness','11:03:00',230,230,24),
	('Fossil Genera - A Feed From Cloud Mountain','12:11:00',231,231,24),
	('Desert Of Song','05:33:00',232,232,24),
	('Swim To The Moon','17:54:00',233,233,24),
	('Lost Perfection: Coulrophobia','04:13:00',234,234,25),
	('Lost Perfection: Anablephobia','03:01:00',235,235,25),
	('Camilla Rhodes','04:49:00',236,236,25),
	('Mordecai','05:48:00',237,237,25),
	('Reaction','02:01:00',238,238,25),
	('(Shavanel, Take 2)','03:14:00',239,239,25),
	('Destructo Spin','04:46:00',240,240,25),
	('Aesthetic','03:45:00',241,241,25),
	('The Need For Repetition','13:39:00',242,242,25),
	('Thirty And Seven','03:19:00',243,243,26),
	('Existence','03:54:00',244,244,26),
	('Ocean Of Apathy','03:57:00',245,245,26),
	('White Washed','03:46:00',246,246,26),
	('Marianas Trench','04:18:00',247,247,26),
	('The Escape Artist','03:58:00',248,248,26),
	('Indonesia','03:34:00',249,249,26),
	('Paradox','03:19:00',250,250,26),
	('Meridian','06:00:00',251,251,26),
	('Rationalist','02:39:00',252,252,26),
	('Meddler','03:54:00',253,253,26),
	('Crusades','05:12:00',254,254,26),
	('Chasing The Dragon','04:21:00',255,255,27),
	('Mosely','03:52:00',256,256,27),
	('Carol of the Bells','02:44:00',257,257,27),
	('To Those Who Are About To Rock','01:00:00',258,258,27),
	('Piano Man','01:43:00',259,259,27),
	('Truth Of A Liar (Demo)','04:10:00',260,260,27),
	('Vital Signs (Demo)','03:31:00',261,261,27),
	('Truth Of A Liar','04:12:00',262,262,28),
	('Up Against The Ropes','05:04:00',263,263,28),
	('Back Burner','03:43:00',264,264,28),
	('The Blinding Light','05:28:00',265,265,28),
	('Composure','04:13:00',266,266,28),
	('Vital Signs','03:17:00',267,267,28),
	('The Eleventh Hour','04:06:00',268,268,28),
	('The Balance','03:21:00',269,269,28),
	('Black Sheep','03:53:00',270,270,28),
	('An American Dream','04:42:00',271,271,28),
	('Redemption','06:16:00',272,272,28),
	('Your Little Suburbia Is In Ruins','03:59:00',273,273,29),
	('Speech Impediment','04:01:00',274,274,29),
	('Endorphins','03:10:00',275,275,29),
	('Too Late For Roses','03:19:00',276,276,29),
	('Barbarian','03:46:00',277,277,29),
	('The Reflective Property','03:51:00',278,278,29),
	('A Wish Full Of Dreams','02:58:00',279,279,29),
	('Consumer','04:11:00',280,280,29),
	('A Shot Below The Belt','04:10:00',281,281,29),
	('Eve Of The End','03:09:00',282,282,29),
	('The Seventh Trumpet','08:12:00',283,283,29);

/*!40000 ALTER TABLE `Song` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Song_Playlist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Song_Playlist`;

CREATE TABLE `Song_Playlist` (
  `Song_Playlist_ID` int(11) DEFAULT NULL,
  `Playlist_ID` int(11) DEFAULT NULL,
  `Track_Number` int(11) NOT NULL,
  `Song_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Track_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Song_Playlist` WRITE;
/*!40000 ALTER TABLE `Song_Playlist` DISABLE KEYS */;
INSERT INTO `Song_Playlist` (`Song_Playlist_ID`,`Playlist_ID`,`Track_Number`,`Song_ID`)
VALUES
	(1,1,1,1),
	(1,1,2,5),
	(1,1,3,2),
	(1,1,4,3),
	(1,1,5,4);

/*!40000 ALTER TABLE `Song_Playlist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Type`;

CREATE TABLE `Type` (
  `Name` char(50) DEFAULT NULL,
  `Type_ID` int(11) NOT NULL,
  PRIMARY KEY (`Type_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Type` WRITE;
/*!40000 ALTER TABLE `Type` DISABLE KEYS */;
INSERT INTO `Type` (`Name`,`Type_ID`)
VALUES
	('Vocals',1),
	('Drummer',2),
	('Guitar',3),
	('Bass',4),
	('Keyboard',5),
	('Back Up Vocals',6);

/*!40000 ALTER TABLE `Type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table User
# ------------------------------------------------------------

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `Username` char(50) DEFAULT NULL,
  `UserPassword` char(50) DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` (`Username`,`UserPassword`,`User_ID`)
VALUES
	('NicoleK','heynowbrowncow',1),
	('TimH','timboslice',2),
	('MattM','aznrmx1112',3);

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;




DROP TABLE `Info`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Info`
AS select
   `AR`.`Name` AS `Artist`,
   `AL`.`Name` AS `Album`,
   `S`.`Name` AS `Song`,
   `S`.`Length` AS `Length`,
   `G`.`Name` AS `Genre`
from (((`Artist` `AR` join `Album` `AL`) join `Song` `S`) join `Genre` `G`)
where ((`S`.`Album_ID` = `AL`.`Album_ID`) and (`AL`.`Artist_ID` = `AR`.`Artist_ID`) and (`AL`.`Genre_ID` = `G`.`Genre_ID`)) order by `AR`.`Name`;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
