# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.5.9)
# Database: mediaTest
# Generation Time: 2011-04-30 17:13:45 -0700
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
	('The E.N.D.','2009',1,1,1,'/media/coverart/The_E_N_D_2009.jpg'),
	('Doo-Wops & Hooligans','2010',2,2,4,'/media/coverart/Doo_Wops_And_Hooligans_2010.jpg'),
	('Universal Mind Control','2008',3,3,1,'/media/coverart/Universal_Mind_Control_2008.jpg'),
	('Raymond V Raymond','2010',4,4,1,'/media/coverart/Raymond_V_Raymond_2010.jpg'),
	('808s & Heartbreak','2008',5,5,1,'/media/coverart/808s_And_Heartbreak_2008.jpg'),
	('Periphery','2010',6,6,2,'/media/coverart/Periphery_2010.jpg'),
	('Pulse','2011',7,7,2,'/media/coverart/Pulse_2011.jpg'),
	('Sound Awake','2010',8,8,2,'/media/coverart/Sound_Awake_2010.jpg'),
	('Concealing Fate - EP','2010',9,9,3,'/media/coverart/Concealing_Fate_EP_2010.jpg'),
	('Just Like Vinyl','2010',10,10,2,'/media/coverart/Just_Like_Vinyl_2010.jpg'),
	('Demos','0000',11,11,2,'/media/coverart/demos.jpg'),
	('Doppelganger','2005',12,11,2,'/media/coverart/Doppelganger_2005.jpg'),
	('The Fall Of Troy','2003',13,11,2,'/media/coverart/The_Fall_Of_Troy_2003.jpg'),
	('In The Unlikely Event','2010',14,11,2,'/media/coverart/In_The_Unlikely_Event_2010.jpg'),
	('Manipulator','2007',15,11,2,'/media/coverart/Manipulator_2007.jpg'),
	('The Phantom On the Horizon','2008',16,11,2,'/media/coverart/The_Phantom_On_The_Horizon_2008.jpg'),
	('Animals As Leaders','2000',17,12,3,'/media/coverart/Animals_As_Leaders_2000.jpg'),
	('Wave of Babies - Single','2010',18,12,3,'/media/coverart/Wave_Of_Babies_[Single]_2010.jpg'),
	('Alaska','2005',19,13,3,'/media/coverart/Alaska_2005.jpg'),
	('The Anatomy Of [Bonus Tracks]','2006',20,13,3,'/media/coverart/The_Anatomy_Of[Bonus_Tracks]_2006.jpg'),
	('Between The Buried & Me','2002',21,13,3,'/media/coverart/Between_The_Buried_And_Me_2002.jpg'),
	('Colors','2007',22,13,3,'/media/coverart/Colors_2007.jpg'),
	('Colors Live','2008',23,13,3,'/media/coverart/Colors_Live_2008.jpg'),
	('The Great Misdirection','2009',24,13,3,'/media/coverart/The_Great_Misdirection_2009.jpg'),
	('The Silent Circus','2003',25,13,3,'/media/coverart/The_Silent_Circus_2003.jpg'),
	('Constellations','2009',26,14,3,'/media/coverart/Constellations_2009.jpg'),
	('Lost Messengers: The Outtakes','2009',27,14,3,'/media/coverart/Lost_Messengers_The_Outtakes_2009.jpg'),
	('Messengers','2007',28,14,3,'/media/coverart/Messengers_2007.jpg'),
	('Thrill Seeker','2005',29,14,3,'/media/coverart/Thrill_Seeker_2005.jpg');

/*!40000 ALTER TABLE `Album` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Artist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Artist`;

CREATE TABLE `Artist` (
  `Name` char(100) DEFAULT NULL,
  `Artist_ID` int(11) NOT NULL,
  `Info` longtext NOT NULL,
  `Logo` char(200) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` (`Name`,`Artist_ID`,`Info`,`Logo`)
VALUES
	('Black Eyed Peas',1,'The Black Eyed Peas are an American hip hop group, formed in Los Angeles, California in 1995.\nThe group is composed of rapper and multi-instrumentalist will.i.am, rappers apl.de.ap and Taboo,\nand singer-rapper Fergie. Since the release of their third album, Elephunk, in 2003, the group \nhas sold an estimated 27 million albums worldwide, 20 million singles and 47 million copies with \nboth sales combined.In 2009, the group became one of only 11 artists to have ever simultaneously \nheld the #1 and #2 spots on the Billboard Hot 100, with their singles \"Boom Boom Pow\" and \"I Gotta \nFeeling\", with the next single \"Meet Me Halfway\" achieving similar success, from the album The E.N.D. \nCombined, these three singles also topped the chart for an unprecedented 30 consecutive weeks in 2009. \nThe album later produced a third Hot 100 number-one placement with \"Imma Be\", making the group one of \nfew to ever place three number one singles on the chart from the same album before being followed with \n\"Rock That Body\" which managed to peak in the Top 10 of Hot 100. \"I Gotta Feeling\" has become the first \nsingle to sell more than 1 million downloads in the United Kingdom.','/media/artistlogo/black_eyed_peas.jpg'),
	('Bruno Mars',2,'Peter Gene Hernandez (born October 8, 1985), better known by his stage name Bruno Mars, \nis an American singer-songwriter and music producer. Raised in Honolulu, Hawaii by a \nfamily of musicians, Mars began making music at a young age. After performing in various\nmusical venues in his hometown throughout his childhood, he decided to pursue a musical \ncareer and moved to Los Angeles after graduating from high school. Mars began producing \nsongs for other artists, joining production team The Smeezingtons.\nAfter an unsuccessful stint with Motown Records, Mars signed with Atlantic Records in 2009.\nHe became recognized as a solo artist after lending his vocals and co-writing the hooks for\nthe songs \"Nothin\' on You\" by B.o.B, and \"Billionaire\" by Travie McCoy. He also co-wrote the\nhits \"Right Round\" by Flo Rida featuring Kesha, \"Wavin\' Flag\" by K\'naan, and \"Fuck You!\" by\nCee Lo Green. In October 2010, he released his debut album, Doo-Wops & Hooligans. Anchored\nby the worldwide number one singles \"Just the Way You Are\" and \"Grenade\", the album peaked\nat number three on the Billboard 200. He was nominated for seven Grammys at the 53rd Grammy\nAwards, winning Best Male Pop Vocal Performance for \"Just the Way You Are\".','/media/artistlogo/bruno_mars.jpg'),
	('Common',3,'Lonnie Rashid Lynn, Jr. (born March 13, 1972), better known by his stage name Common (previously Common Sense), \nis an American hip hop artist and actor. Common debuted in 1992 with the album Can I Borrow a Dollar? and maintained\na significant underground following into the late 90s, after which he gained notable mainstream success through his \nwork with the Soulquarians. His first major label album, Like Water for Chocolate, received widespread critical \nacclaim and tremendous commercial success. His first Grammy award was in 2003 for Best R&B Song for \"Love of My Life \n(An Ode to Hip-Hop)\" with Erykah Badu. Its popularity was matched by May 2005\'s Be, which was nominated in the \n2006 Grammy Awards for Best Rap Album. Common was awarded his second Grammy for Best Rap Performance by a Duo or Group, \nfor \"Southside\" (featuring Kanye West), from his July 2007 album Finding Forever. His best-of album Thisisme Then: \nThe Best of Common was released on November 27, 2007.','/media/artistlogo/common.jpg'),
	('Usher',4,'Usher Raymond IV was born on October 14, 1978. He performs under the name Usher, is an American recording artist,\ndancer, and actor. He rose to fame in the late 1990s with the release of his second album My Way, which spawned his \nfirst Billboard Hot 100 number-one hit, \"Nice and Slow\". His followup album 8701 (2001) produced the Billboard Hot \n100 number-one hits \"U Remind Me\" and \"U Got It Bad\". Both albums sold over 8 million copies worldwide, establishing \nUsher as one of the biggest selling R&B artists of the 1990s. Usher\'s success continued with his 2004 album Confessions,\nwhich has sold over ten million copies in the United States, and been certified diamond by the RIAA. Confessions has \nthe highest first week sales for an R&B artist in history, and sold over 20 million copies worldwide. It spawned \na record breaking four consecutive Billboard Hot 100 number-one hits?\"Yeah!\", \"Burn\", \"Confessions Part II\", and \n\"My Boo\". Usher\'s 2008 album Here I Stand sold over 5 million copies worldwide, and its lead single \"Love In This \nClub\" peaked at number-one on the Billboard Hot 100.','/media/artistlogo/usher.jpg'),
	('Kanye West',5,'Kanye Omari West, who was born on born June 8, 1977, is an American rapper, singer, and record producer. \nWest first rose to fame as a producer for Roc-A-Fella Records, where he eventually achieved recognition \nfor his work on Jay-Z\'s album The Blueprint, as well as hit singles for musical artists including Alicia \nKeys, Ludacris, and Janet Jackson. His style of production originally used pitched-up vocal samples from \nsoul songs incorporated with his own drums and instruments. However, subsequent productions saw him \nbroadening his musical palette and expressing influences encompassing \'70s R&B, baroque pop, trip hop, \narena rock, folk, alternative, electronica, synth-pop, and classical music.','/media/artistlogo/kanye_west.jpg'),
	('Periphery',6,'Periphery is a notable American progressive metal band from Bethesda, Maryland \n(by way of Baltimore, Maryland), formed in 2005.Periphery was formed by guitarist \nMisha Mansoor in 2005. He slowly gained a reputation on the internet, primarily \nvia a regularly-updated Soundclick account, Meshuggah and John Petrucci forums, \nand the sevenstring.org message boards. Before and during Periphery\'s tenure in \nthe metal scene, Mansoor developed a reputation for doing his own audio production, \nthe majority of which was performed with a home computer and a Pod XT during this period. \nMansoor has continued to update his personal project, Bulb, which preceded Periphery, \noften transferring songs between the two projects. Mansoor continues to be involved in \na number of other musical projects, including Haunted Shores with Mark Holcomb, Being \n(a space-prog metal outfit), and Of Man Not of Machine with Elliot Coleman (Sky Eats \nAirplane) and Holcomb.','/media/artistlogo/periphery.jpg'),
	('Thomas Giles',7,'Tommy Giles Rogers (born December 24, 1980) is an American musician, most notable for being the lead vocalist,\nkeyboardist, and founding member of the American heavy metal band Between the Buried and Me. His vocal style\ncombines death growls and screams with peaceful, sometimes falsetto singing melodies.Rogers started his musical \ncareer in 1999 by being a guitarist for the metalcore band, Prayer for Cleansing, when they disbanded; Rogers \nfounded the metalcore band, Between the Buried and Me in 2001; after acquiring a full-lineup they released their \nthree-song demo and then their self-titled debut album in 2002. In 2004 Rogers released a self-titled debut album \nfor his electronica side project, named Giles. Rogers was one of the vocalists for the metal band From Here On and \nhas appeared in numerous other musical projects including the influential metal band, Undying. He is a part of a \nclothing line and a small musical duo project with Jacob Troth that is known as Jacob Rogers.\nHe is featured in the August Burns Red song \"Indonesia\" and will appear on the upcoming Devin Townsend solo album \nDeconstruction on the song \"Planet of the Apes\".Rogers has recorded a solo album under the name of Thomas Giles, \nentitled \"Pulse\", which was released on February 1, 2011.','/media/artistlogo/thomas_giles.jpg'),
	('Karnivool',8,'Karnivool are an Australian progressive metal band formed in Perth in 1997.\n The group currently consists of Ian Kenny on vocals, Drew Goddard and Mark\n Hosking on guitar, Jon Stockman on bass guitar, and Steve Judd on drums. \nKarnivool emerged from a band Kenny and Goddard formed during high school. \nTheir two extended plays, 1999\'s Karnivool and 2001\'s Persona, and their \n2005 debut album Themata, possessed an alternative metal sound; their 2009 \nfollow-up Sound Awake developed a more progressive rock sound.','/media/artistlogo/karnivool.jpg'),
	('TesseracT',9,'TesseracT are a British progressive metal band formed in 2003.\nThey are currently signed to Century Media Records. TesseracT \nstarted out back in 2003 as an archetypal djent band in then-teenage \nAcle Kahney\'s bedroom as a side project to his main band, Fellsilent.\nWhat started as an outlet for creativity and experimentation grew and \nKahney posted clips of his technically heavy guitar work on forums such \nas Sevenstring.org, taking the feedback on board and gradually improving \nhis technique. It was in this way that a community of bedroom \nproducer-musicians were spawned and this new wave of progressive music \nwas created, along with names such as Misha Mansoor (Periphery), Paul \nOrtiz (Chimp Spanner) and John Browne (Monuments), who was a bandmate \nof Kahney\'s in Fellsilent.','/media/artistlogo/tesseract.jpg'),
	('Just Like Vinyl',10,'Just Like Vinyl are an American Rock group based in Washington. \nThe group consists of Thomas Erak (vocals, guitar), Jake Carden (vocals, guitar),\nJay Beaman (drums, percussion) and Henry Batts (bass, backing vocals). The group \nrecorded their debut LP, Thomas Erak updated his Twitter with the latest news on \nthe band while it was in progress.\n\nRumors of Thomas Erak\'s new project surfaced when his previous band, The Fall of Troy,\ndisbanded early in 2010. He formed the new group with Jay Beaman who had been the drummer\nof Erak\'s high school band Tribune as well as previously being a member of Red Museum and\nSchoolyard Heroes. Carden (The Filthy None) and Batts rounded off the line-up and the band \nquickly started practicing and writing new material. Information about the band\'s progress \nwas revealed through Erak\'s Twitter and eventually a dedicated Just Like Vinyl Twitter. The \nquartet played their first live set on the 16th of June 2010 in a house in Seattle and entered \nthe studio to record a debut LP on the 2nd of August. Just Like Vinyl released an unmastered \nversion of new song \'Death of the Sheep\' on their Facebook page on the 27th of September 2010, \nthis is the group\'s first official recording. During their first tour in October of 2010, \nthe band released their self-titled album. The album was released online in December of 2010.','/media/artistlogo/just_like_vinyl.jpg'),
	('The Fall of Troy',11,'The Fall of Troy was an American rock trio from Mukilteo, Washington. The trio consisted \nof Thomas Erak (lead vocals, guitars, keyboards), Andrew Forsman (drums, percussion) and \nFrank Ene (bass, backing vocals) The trio was characterized by a technical, intricate style, \nknown for Erak\'s sporadic guitar riffs and their alternation between clean vocals and harsh \nscreams. Over the course of their career of about eight years, the group has released four \nfull-length albums, one EP, and one single. Prior to The Fall of Troy\'s formation, when each \nmember was about 17 years old, all three founding members were in another group named The 30 \nYears War, who released two EPs.','/media/artistlogo/the_fall_of_troy.jpg'),
	('Animals As Leaders',12,'Animals as Leaders is an American Washington, D.C.???based instrumental progressive metal project by\nguitarist Tosin Abasi which now includes guitarist Javier Reyes and drummer Navene Koperweis. The \nself-titled debut album was released in April 2009 by Prosthetic Records. Tosin Abasi and Javier \nReyes are also members of the supergroup T.R.A.M alongside formerThe Mars Volta wind instrumentalist \nAdrian Terrazas and Suicidal Tendencies drummer Eric Moore.','/media/artistlogo/animals_as_leaders.jpg'),
	('Between The Buried & Me',13,'Between the Buried and Me is an American heavy metal band from Raleigh, North Carolina.\nThey have released five studio albums since 2000, as well as a cover album and a live DVD/CD.\nTheir follow-up to Colors, titled The Great Misdirect, was released October 27, 2009.\n\nThe band\'s name is derived from a section of lyrics in the Counting Crows song, \"Ghost Train;\n\"\"Took the cannonball down to the ocean/Across the desert from the sea to shining sea/I rode a \nladder that climbed across the nation/Fifty million feet of earth between the buried and me\"','/media/artistlogo/between_the_buried_and_me.jpg'),
	('August Burns Red',14,'August Burns Red is an American metalcore band from Lancaster, Pennsylvania.\nFormed in March 2003, the band began their first performances while a majority\nof the members were still attending high school, and soon began playing shows \naround Lancaster. The band name is derived from an incident involving their first \nvocalist, Jon Hershey.\n\nThe band is primarily known for their heavy breakdowns and odd-meter riffs. \nThey state Between the Buried and Me, Misery Signals and Hopesfall as their \nmain influences.','/media/artistlogo/august_burns_red.jpg');

/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `Name` char(40) DEFAULT NULL,
  `Type` char(10) DEFAULT NULL,
  `Size` decimal(10,0) DEFAULT NULL,
  `File_ID` int(11) NOT NULL AUTO_INCREMENT,
  `File_Loc` char(200) DEFAULT NULL,
  PRIMARY KEY (`File_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=latin1;

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` (`Name`,`Type`,`Size`,`File_ID`,`File_Loc`)
VALUES
	('1','mp3',NULL,1,'/media/music/black_eyed_peas/the_e.n.d./1.mp3'),
	('2','mp3',NULL,2,'/media/music/black_eyed_peas/the_e.n.d./2.mp3'),
	('3','mp3',NULL,3,'/media/music/black_eyed_peas/the_e.n.d./3.mp3'),
	('4','mp3',NULL,4,'/media/music/black_eyed_peas/the_e.n.d./4.mp3'),
	('5','mp3',NULL,5,'/media/music/black_eyed_peas/the_e.n.d./5.mp3'),
	('6','mp3',NULL,6,'/media/music/black_eyed_peas/the_e.n.d./6.mp3'),
	('7','mp3',NULL,7,'/media/music/black_eyed_peas/the_e.n.d./7.mp3'),
	('8','mp3',NULL,8,'/media/music/black_eyed_peas/the_e.n.d./8.mp3'),
	('9','mp3',NULL,9,'/media/music/black_eyed_peas/the_e.n.d./9.mp3'),
	('10','mp3',NULL,10,'/media/music/black_eyed_peas/the_e.n.d./10.mp3'),
	('11','mp3',NULL,11,'/media/music/black_eyed_peas/the_e.n.d./11.mp3'),
	('12','mp3',NULL,12,'/media/music/black_eyed_peas/the_e.n.d./12.mp3'),
	('13','mp3',NULL,13,'/media/music/black_eyed_peas/the_e.n.d./13.mp3'),
	('14','mp3',NULL,14,'/media/music/black_eyed_peas/the_e.n.d./14.mp3'),
	('1','mp3',NULL,15,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/1.mp3'),
	('2','mp3',NULL,16,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/2.mp3'),
	('3','mp3',NULL,17,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/3.mp3'),
	('4','mp3',NULL,18,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/4.mp3'),
	('5','mp3',NULL,19,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/5.mp3'),
	('6','mp3',NULL,20,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/6.mp3'),
	('7','mp3',NULL,21,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/7.mp3'),
	('8','mp3',NULL,22,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/8.mp3'),
	('9','mp3',NULL,23,'/media/music/bruno_mars/Doo-Wops_&_Hooligans/9.mp3'),
	('1','mp3',NULL,24,'/media/music/common/universal_mind_control/1.mp3'),
	('2','mp3',NULL,25,'/media/music/common/universal_mind_control/2.mp3'),
	('3','mp3',NULL,26,'/media/music/common/universal_mind_control/3.mp3'),
	('4','mp3',NULL,27,'/media/music/common/universal_mind_control/4.mp3'),
	('5','mp3',NULL,28,'/media/music/common/universal_mind_control/5.mp3'),
	('6','mp3',NULL,29,'/media/music/common/universal_mind_control/6.mp3'),
	('7','mp3',NULL,30,'/media/music/common/universal_mind_control/7.mp3'),
	('8','mp3',NULL,31,'/media/music/common/universal_mind_control/8.mp3'),
	('9','mp3',NULL,32,'/media/music/common/universal_mind_control/9.mp3'),
	('10','mp3',NULL,33,'/media/music/common/universal_mind_control/10.mp3'),
	('1','mp3',NULL,34,'/media/music/usher/raymond_v_raymond/1.mp3'),
	('2','mp3',NULL,35,'/media/music/usher/raymond_v_raymond/2.mp3'),
	('3','mp3',NULL,36,'/media/music/usher/raymond_v_raymond/3.mp3'),
	('4','mp3',NULL,37,'/media/music/usher/raymond_v_raymond/4.mp3'),
	('5','mp3',NULL,38,'/media/music/usher/raymond_v_raymond/5.mp3'),
	('6','mp3',NULL,39,'/media/music/usher/raymond_v_raymond/6.mp3'),
	('7','mp3',NULL,40,'/media/music/usher/raymond_v_raymond/7.mp3'),
	('8','mp3',NULL,41,'/media/music/usher/raymond_v_raymond/8.mp3'),
	('9','mp3',NULL,42,'/media/music/usher/raymond_v_raymond/9.mp3'),
	('10','mp3',NULL,43,'/media/music/usher/raymond_v_raymond/10.mp3'),
	('11','mp3',NULL,44,'/media/music/usher/raymond_v_raymond/11.mp3'),
	('12','mp3',NULL,45,'/media/music/usher/raymond_v_raymond/12.mp3'),
	('13','mp3',NULL,46,'/media/music/usher/raymond_v_raymond/13.mp3'),
	('14','mp3',NULL,47,'/media/music/usher/raymond_v_raymond/14.mp3'),
	('1','mp3',NULL,48,'/media/music/kanye_west/808s_and_Hearbreak/1.mp3'),
	('2','mp3',NULL,49,'/media/music/kanye_west/808s_and_Hearbreak/2.mp3'),
	('3','mp3',NULL,50,'/media/music/kanye_west/808s_and_Hearbreak/3.mp3'),
	('4','mp3',NULL,51,'/media/music/kanye_west/808s_and_Hearbreak/4.mp3'),
	('5','mp3',NULL,52,'/media/music/kanye_west/808s_and_Hearbreak/5.mp3'),
	('6','mp3',NULL,53,'/media/music/kanye_west/808s_and_Hearbreak/6.mp3'),
	('7','mp3',NULL,54,'/media/music/kanye_west/808s_and_Hearbreak/7.mp3'),
	('8','mp3',NULL,55,'/media/music/kanye_west/808s_and_Hearbreak/8.mp3'),
	('9','mp3',NULL,56,'/media/music/kanye_west/808s_and_Hearbreak/9.mp3'),
	('10','mp3',NULL,57,'/media/music/kanye_west/808s_and_Hearbreak/10.mp3'),
	('11','mp3',NULL,58,'/media/music/kanye_west/808s_and_Hearbreak/11.mp3'),
	('12','mp3',NULL,59,'/media/music/kanye_west/808s_and_Hearbreak/12.mp3'),
	('1','m4a',NULL,60,'/media/music/periphery/periphery/1.m4a'),
	('2','m4a',NULL,61,'/media/music/periphery/periphery/2.m4a'),
	('3','m4a',NULL,62,'/media/music/periphery/periphery/3.m4a'),
	('4','m4a',NULL,63,'/media/music/periphery/periphery/4.m4a'),
	('5','m4a',NULL,64,'/media/music/periphery/periphery/5.m4a'),
	('6','m4a',NULL,65,'/media/music/periphery/periphery/6.m4a'),
	('7','m4a',NULL,66,'/media/music/periphery/periphery/7.m4a'),
	('8','m4a',NULL,67,'/media/music/periphery/periphery/8.m4a'),
	('9','m4a',NULL,68,'/media/music/periphery/periphery/9.m4a'),
	('10','m4a',NULL,69,'/media/music/periphery/periphery/10.m4a'),
	('11','m4a',NULL,70,'/media/music/periphery/periphery/11.m4a'),
	('12','m4a',NULL,71,'/media/music/periphery/periphery/12.m4a'),
	('13','m4a',NULL,72,'/media/music/periphery/periphery/13.m4a'),
	('14','m4a',NULL,73,'/media/music/periphery/periphery/14.m4a'),
	('15','m4a',NULL,74,'/media/music/periphery/periphery/15.m4a'),
	('1','m4a',NULL,75,'/media/music/thomas_giles/pulse/1.m4a'),
	('2','m4a',NULL,76,'/media/music/thomas_giles/pulse/2.m4a'),
	('3','m4a',NULL,77,'/media/music/thomas_giles/pulse/3.m4a'),
	('4','m4a',NULL,78,'/media/music/thomas_giles/pulse/4.m4a'),
	('5','m4a',NULL,79,'/media/music/thomas_giles/pulse/5.m4a'),
	('6','m4a',NULL,80,'/media/music/thomas_giles/pulse/6.m4a'),
	('7','m4a',NULL,81,'/media/music/thomas_giles/pulse/7.m4a'),
	('8','m4a',NULL,82,'/media/music/thomas_giles/pulse/8.m4a'),
	('9','m4a',NULL,83,'/media/music/thomas_giles/pulse/9.m4a'),
	('10','m4a',NULL,84,'/media/music/thomas_giles/pulse/10.m4a'),
	('11','m4a',NULL,85,'/media/music/thomas_giles/pulse/11.m4a'),
	('1','m4a',NULL,86,'/media/music/karnivool/sound_awake/1.m4a'),
	('2','m4a',NULL,87,'/media/music/karnivool/sound_awake/2.m4a'),
	('3','m4a',NULL,88,'/media/music/karnivool/sound_awake/3.m4a'),
	('4','m4a',NULL,89,'/media/music/karnivool/sound_awake/4.m4a'),
	('5','m4a',NULL,90,'/media/music/karnivool/sound_awake/5.m4a'),
	('6','m4a',NULL,91,'/media/music/karnivool/sound_awake/6.m4a'),
	('7','m4a',NULL,92,'/media/music/karnivool/sound_awake/7.m4a'),
	('8','m4a',NULL,93,'/media/music/karnivool/sound_awake/8.m4a'),
	('9','m4a',NULL,94,'/media/music/karnivool/sound_awake/9.m4a'),
	('10','m4a',NULL,95,'/media/music/karnivool/sound_awake/10.m4a'),
	('1','m4a',NULL,96,'/media/music/tesseract/concealing_fate/1.m4a'),
	('2','m4a',NULL,97,'/media/music/tesseract/concealing_fate/2.m4a'),
	('3','m4a',NULL,98,'/media/music/tesseract/concealing_fate/3.m4a'),
	('4','m4a',NULL,99,'/media/music/tesseract/concealing_fate/4.m4a'),
	('5','m4a',NULL,100,'/media/music/tesseract/concealing_fate/5.m4a'),
	('6','m4a',NULL,101,'/media/music/tesseract/concealing_fate/6.m4a'),
	('7','m4a',NULL,102,'/media/music/tesseract/concealing_fate/7.m4a'),
	('1','m4a',NULL,103,'/media/music/just_like_vinyl/just_like_vinyl/1.m4a'),
	('2','m4a',NULL,104,'/media/music/just_like_vinyl/just_like_vinyl/2.m4a'),
	('3','m4a',NULL,105,'/media/music/just_like_vinyl/just_like_vinyl/3.m4a'),
	('4','m4a',NULL,106,'/media/music/just_like_vinyl/just_like_vinyl/4.m4a'),
	('5','m4a',NULL,107,'/media/music/just_like_vinyl/just_like_vinyl/5.m4a'),
	('6','m4a',NULL,108,'/media/music/just_like_vinyl/just_like_vinyl/6.m4a'),
	('7','m4a',NULL,109,'/media/music/just_like_vinyl/just_like_vinyl/7.m4a'),
	('8','m4a',NULL,110,'/media/music/just_like_vinyl/just_like_vinyl/8.m4a'),
	('9','m4a',NULL,111,'/media/music/just_like_vinyl/just_like_vinyl/9.m4a'),
	('10','m4a',NULL,112,'/media/music/just_like_vinyl/just_like_vinyl/10.m4a'),
	('11','m4a',NULL,113,'/media/music/just_like_vinyl/just_like_vinyl/11.m4a'),
	('1','m4a',NULL,114,'/media/music/the_fall_of_troy/demos/1.m4a'),
	('1','m4a',NULL,115,'/media/music/the_fall_of_troy/doppelganger/1.m4a'),
	('2','m4a',NULL,116,'/media/music/the_fall_of_troy/doppelganger/2.m4a'),
	('3','m4a',NULL,117,'/media/music/the_fall_of_troy/doppelganger/3.m4a'),
	('4','m4a',NULL,118,'/media/music/the_fall_of_troy/doppelganger/4.m4a'),
	('5','m4a',NULL,119,'/media/music/the_fall_of_troy/doppelganger/5.m4a'),
	('6','m4a',NULL,120,'/media/music/the_fall_of_troy/doppelganger/6.m4a'),
	('7','m4a',NULL,121,'/media/music/the_fall_of_troy/doppelganger/7.m4a'),
	('8','m4a',NULL,122,'/media/music/the_fall_of_troy/doppelganger/8.m4a'),
	('9','m4a',NULL,123,'/media/music/the_fall_of_troy/doppelganger/9.m4a'),
	('10','m4a',NULL,124,'/media/music/the_fall_of_troy/doppelganger/10.m4a'),
	('11','m4a',NULL,125,'/media/music/the_fall_of_troy/doppelganger/11.m4a'),
	('1','m4a',NULL,126,'/media/music/the_fall_of_troy/the_fall_of_troy/1.m4a'),
	('2','m4a',NULL,127,'/media/music/the_fall_of_troy/the_fall_of_troy/2.m4a'),
	('3','m4a',NULL,128,'/media/music/the_fall_of_troy/the_fall_of_troy/3.m4a'),
	('4','m4a',NULL,129,'/media/music/the_fall_of_troy/the_fall_of_troy/4.m4a'),
	('5','m4a',NULL,130,'/media/music/the_fall_of_troy/the_fall_of_troy/5.m4a'),
	('6','m4a',NULL,131,'/media/music/the_fall_of_troy/the_fall_of_troy/6.m4a'),
	('7','m4a',NULL,132,'/media/music/the_fall_of_troy/the_fall_of_troy/7.m4a'),
	('8','m4a',NULL,133,'/media/music/the_fall_of_troy/the_fall_of_troy/8.m4a'),
	('9','m4a',NULL,134,'/media/music/the_fall_of_troy/the_fall_of_troy/9.m4a'),
	('10','m4a',NULL,135,'/media/music/the_fall_of_troy/the_fall_of_troy/10.m4a'),
	('11','m4a',NULL,136,'/media/music/the_fall_of_troy/the_fall_of_troy/11.m4a'),
	('1','m4a',NULL,137,'/media/music/the_fall_of_troy/in_the_unlikely_event/1.m4a'),
	('2','m4a',NULL,138,'/media/music/the_fall_of_troy/in_the_unlikely_event/2.m4a'),
	('3','m4a',NULL,139,'/media/music/the_fall_of_troy/in_the_unlikely_event/3.m4a'),
	('4','m4a',NULL,140,'/media/music/the_fall_of_troy/in_the_unlikely_event/4.m4a'),
	('5','m4a',NULL,141,'/media/music/the_fall_of_troy/in_the_unlikely_event/5.m4a'),
	('6','m4a',NULL,142,'/media/music/the_fall_of_troy/in_the_unlikely_event/6.m4a'),
	('7','m4a',NULL,143,'/media/music/the_fall_of_troy/in_the_unlikely_event/7.m4a'),
	('8','m4a',NULL,144,'/media/music/the_fall_of_troy/in_the_unlikely_event/8.m4a'),
	('9','m4a',NULL,145,'/media/music/the_fall_of_troy/in_the_unlikely_event/9.m4a'),
	('10','m4a',NULL,146,'/media/music/the_fall_of_troy/in_the_unlikely_event/10.m4a'),
	('11','m4a',NULL,147,'/media/music/the_fall_of_troy/in_the_unlikely_event/11.m4a'),
	('12','m4a',NULL,148,'/media/music/the_fall_of_troy/in_the_unlikely_event/12.m4a'),
	('1','m4a',NULL,149,'/media/music/the_fall_of_troy/manipulator/1.m4a'),
	('2','m4a',NULL,150,'/media/music/the_fall_of_troy/manipulator/2.m4a'),
	('3','m4a',NULL,151,'/media/music/the_fall_of_troy/manipulator/3.m4a'),
	('4','m4a',NULL,152,'/media/music/the_fall_of_troy/manipulator/4.m4a'),
	('5','m4a',NULL,153,'/media/music/the_fall_of_troy/manipulator/5.m4a'),
	('6','m4a',NULL,154,'/media/music/the_fall_of_troy/manipulator/6.m4a'),
	('7','m4a',NULL,155,'/media/music/the_fall_of_troy/manipulator/7.m4a'),
	('8','m4a',NULL,156,'/media/music/the_fall_of_troy/manipulator/8.m4a'),
	('9','m4a',NULL,157,'/media/music/the_fall_of_troy/manipulator/9.m4a'),
	('10','m4a',NULL,158,'/media/music/the_fall_of_troy/manipulator/10.m4a'),
	('11','m4a',NULL,159,'/media/music/the_fall_of_troy/manipulator/11.m4a'),
	('12','m4a',NULL,160,'/media/music/the_fall_of_troy/manipulator/12.m4a'),
	('1','m4a',NULL,161,'/media/music/the_fall_of_troy/the_phantom_on_the_horizon/1.m4a'),
	('2','m4a',NULL,162,'/media/music/the_fall_of_troy/the_phantom_on_the_horizon/2.m4a'),
	('3','m4a',NULL,163,'/media/music/the_fall_of_troy/the_phantom_on_the_horizon/3.m4a'),
	('4','m4a',NULL,164,'/media/music/the_fall_of_troy/the_phantom_on_the_horizon/4.m4a'),
	('5','m4a',NULL,165,'/media/music/the_fall_of_troy/the_phantom_on_the_horizon/5.m4a'),
	('1','m4a',NULL,166,'/media/music/animals_as_leaders/animals_as_leaders/1.m4a'),
	('2','m4a',NULL,167,'/media/music/animals_as_leaders/animals_as_leaders/2.m4a'),
	('3','m4a',NULL,168,'/media/music/animals_as_leaders/animals_as_leaders/3.m4a'),
	('4','m4a',NULL,169,'/media/music/animals_as_leaders/animals_as_leaders/4.m4a'),
	('5','m4a',NULL,170,'/media/music/animals_as_leaders/animals_as_leaders/5.m4a'),
	('6','m4a',NULL,171,'/media/music/animals_as_leaders/animals_as_leaders/6.m4a'),
	('7','m4a',NULL,172,'/media/music/animals_as_leaders/animals_as_leaders/7.m4a'),
	('8','m4a',NULL,173,'/media/music/animals_as_leaders/animals_as_leaders/8.m4a'),
	('9','m4a',NULL,174,'/media/music/animals_as_leaders/animals_as_leaders/9.m4a'),
	('10','m4a',NULL,175,'/media/music/animals_as_leaders/animals_as_leaders/10.m4a'),
	('11','m4a',NULL,176,'/media/music/animals_as_leaders/animals_as_leaders/11.m4a'),
	('12','m4a',NULL,177,'/media/music/animals_as_leaders/animals_as_leaders/12.m4a'),
	('1','m4a',NULL,178,'/media/music/animals_as_leaders/wave_of_babies/1.m4a'),
	('1','m4a',NULL,179,'/media/music/between_the_buried_and_me/alaska/1.m4a'),
	('2','m4a',NULL,180,'/media/music/between_the_buried_and_me/alaska/2.m4a'),
	('3','m4a',NULL,181,'/media/music/between_the_buried_and_me/alaska/3.m4a'),
	('4','m4a',NULL,182,'/media/music/between_the_buried_and_me/alaska/4.m4a'),
	('5','m4a',NULL,183,'/media/music/between_the_buried_and_me/alaska/5.m4a'),
	('6','m4a',NULL,184,'/media/music/between_the_buried_and_me/alaska/6.m4a'),
	('7','m4a',NULL,185,'/media/music/between_the_buried_and_me/alaska/7.m4a'),
	('8','m4a',NULL,186,'/media/music/between_the_buried_and_me/alaska/8.m4a'),
	('9','m4a',NULL,187,'/media/music/between_the_buried_and_me/alaska/9.m4a'),
	('10','m4a',NULL,188,'/media/music/between_the_buried_and_me/alaska/10.m4a'),
	('11','m4a',NULL,189,'/media/music/between_the_buried_and_me/alaska/11.m4a'),
	('1','m4a',NULL,190,'/media/music/between_the_buried_and_me/the_anatomy_of/1.m4a'),
	('2','m4a',NULL,191,'/media/music/between_the_buried_and_me/the_anatomy_of/2.m4a'),
	('3','m4a',NULL,192,'/media/music/between_the_buried_and_me/the_anatomy_of/3.m4a'),
	('4','m4a',NULL,193,'/media/music/between_the_buried_and_me/the_anatomy_of/4.m4a'),
	('5','m4a',NULL,194,'/media/music/between_the_buried_and_me/the_anatomy_of/5.m4a'),
	('6','m4a',NULL,195,'/media/music/between_the_buried_and_me/the_anatomy_of/6.m4a'),
	('7','m4a',NULL,196,'/media/music/between_the_buried_and_me/the_anatomy_of/7.m4a'),
	('8','m4a',NULL,197,'/media/music/between_the_buried_and_me/the_anatomy_of/8.m4a'),
	('9','m4a',NULL,198,'/media/music/between_the_buried_and_me/the_anatomy_of/9.m4a'),
	('10','m4a',NULL,199,'/media/music/between_the_buried_and_me/the_anatomy_of/10.m4a'),
	('11','m4a',NULL,200,'/media/music/between_the_buried_and_me/the_anatomy_of/11.m4a'),
	('12','m4a',NULL,201,'/media/music/between_the_buried_and_me/the_anatomy_of/12.m4a'),
	('13','m4a',NULL,202,'/media/music/between_the_buried_and_me/the_anatomy_of/13.m4a'),
	('14','m4a',NULL,203,'/media/music/between_the_buried_and_me/the_anatomy_of/14.m4a'),
	('1','m4a',NULL,204,'/media/music/between_the_buried_and_me/between_the_buried_and_me/1.m4a'),
	('2','m4a',NULL,205,'/media/music/between_the_buried_and_me/between_the_buried_and_me/2.m4a'),
	('3','m4a',NULL,206,'/media/music/between_the_buried_and_me/between_the_buried_and_me/3.m4a'),
	('4','m4a',NULL,207,'/media/music/between_the_buried_and_me/between_the_buried_and_me/4.m4a'),
	('5','m4a',NULL,208,'/media/music/between_the_buried_and_me/between_the_buried_and_me/5.m4a'),
	('6','m4a',NULL,209,'/media/music/between_the_buried_and_me/between_the_buried_and_me/6.m4a'),
	('7','m4a',NULL,210,'/media/music/between_the_buried_and_me/between_the_buried_and_me/7.m4a'),
	('8','m4a',NULL,211,'/media/music/between_the_buried_and_me/between_the_buried_and_me/8.m4a'),
	('1','m4a',NULL,212,'/media/music/between_the_buried_and_me/colors/1.m4a'),
	('2','m4a',NULL,213,'/media/music/between_the_buried_and_me/colors/2.m4a'),
	('3','m4a',NULL,214,'/media/music/between_the_buried_and_me/colors/3.m4a'),
	('4','m4a',NULL,215,'/media/music/between_the_buried_and_me/colors/4.m4a'),
	('5','m4a',NULL,216,'/media/music/between_the_buried_and_me/colors/5.m4a'),
	('6','m4a',NULL,217,'/media/music/between_the_buried_and_me/colors/6.m4a'),
	('7','m4a',NULL,218,'/media/music/between_the_buried_and_me/colors/7.m4a'),
	('8','m4a',NULL,219,'/media/music/between_the_buried_and_me/colors/8.m4a'),
	('1','m4a',NULL,220,'/media/music/between_the_buried_and_me/colors_live/1.m4a'),
	('2','m4a',NULL,221,'/media/music/between_the_buried_and_me/colors_live/2.m4a'),
	('3','m4a',NULL,222,'/media/music/between_the_buried_and_me/colors_live/3.m4a'),
	('4','m4a',NULL,223,'/media/music/between_the_buried_and_me/colors_live/4.m4a'),
	('5','m4a',NULL,224,'/media/music/between_the_buried_and_me/colors_live/5.m4a'),
	('6','m4a',NULL,225,'/media/music/between_the_buried_and_me/colors_live/6.m4a'),
	('7','m4a',NULL,226,'/media/music/between_the_buried_and_me/colors_live/7.m4a'),
	('8','m4a',NULL,227,'/media/music/between_the_buried_and_me/colors_live/8.m4a'),
	('1','m4a',NULL,228,'/media/music/between_the_buried_and_me/the_great_misdirection/1.m4a'),
	('2','m4a',NULL,229,'/media/music/between_the_buried_and_me/the_great_misdirection/2.m4a'),
	('3','m4a',NULL,230,'/media/music/between_the_buried_and_me/the_great_misdirection/3.m4a'),
	('4','m4a',NULL,231,'/media/music/between_the_buried_and_me/the_great_misdirection/4.m4a'),
	('5','m4a',NULL,232,'/media/music/between_the_buried_and_me/the_great_misdirection/5.m4a'),
	('6','m4a',NULL,233,'/media/music/between_the_buried_and_me/the_great_misdirection/6.m4a'),
	('1','m4a',NULL,234,'/media/music/between_the_buried_and_me/the_silent_circus/1.m4a'),
	('2','m4a',NULL,235,'/media/music/between_the_buried_and_me/the_silent_circus/2.m4a'),
	('3','m4a',NULL,236,'/media/music/between_the_buried_and_me/the_silent_circus/3.m4a'),
	('4','m4a',NULL,237,'/media/music/between_the_buried_and_me/the_silent_circus/4.m4a'),
	('5','m4a',NULL,238,'/media/music/between_the_buried_and_me/the_silent_circus/5.m4a'),
	('6','m4a',NULL,239,'/media/music/between_the_buried_and_me/the_silent_circus/6.m4a'),
	('7','m4a',NULL,240,'/media/music/between_the_buried_and_me/the_silent_circus/7.m4a'),
	('8','m4a',NULL,241,'/media/music/between_the_buried_and_me/the_silent_circus/8.m4a'),
	('9','m4a',NULL,242,'/media/music/between_the_buried_and_me/the_silent_circus/9.m4a'),
	('1','m4a',NULL,243,'/media/music/august_burns_red/constellations/1.m4a'),
	('2','m4a',NULL,244,'/media/music/august_burns_red/constellations/2.m4a'),
	('3','m4a',NULL,245,'/media/music/august_burns_red/constellations/3.m4a'),
	('4','m4a',NULL,246,'/media/music/august_burns_red/constellations/4.m4a'),
	('5','m4a',NULL,247,'/media/music/august_burns_red/constellations/5.m4a'),
	('6','m4a',NULL,248,'/media/music/august_burns_red/constellations/6.m4a'),
	('7','m4a',NULL,249,'/media/music/august_burns_red/constellations/7.m4a'),
	('8','m4a',NULL,250,'/media/music/august_burns_red/constellations/8.m4a'),
	('9','m4a',NULL,251,'/media/music/august_burns_red/constellations/9.m4a'),
	('10','m4a',NULL,252,'/media/music/august_burns_red/constellations/10.m4a'),
	('11','m4a',NULL,253,'/media/music/august_burns_red/constellations/11.m4a'),
	('12','m4a',NULL,254,'/media/music/august_burns_red/constellations/12.m4a'),
	('1','m4a',NULL,255,'/media/music/august_burns_red/lost_messages/1.m4a'),
	('2','m4a',NULL,256,'/media/music/august_burns_red/lost_messages/2.m4a'),
	('3','m4a',NULL,257,'/media/music/august_burns_red/lost_messages/3.m4a'),
	('4','m4a',NULL,258,'/media/music/august_burns_red/lost_messages/4.m4a'),
	('5','m4a',NULL,259,'/media/music/august_burns_red/lost_messages/5.m4a'),
	('6','m4a',NULL,260,'/media/music/august_burns_red/lost_messages/6.m4a'),
	('7','m4a',NULL,261,'/media/music/august_burns_red/lost_messages/7.m4a'),
	('1','m4a',NULL,262,'/media/music/august_burns_red/messangers/1.m4a'),
	('2','m4a',NULL,263,'/media/music/august_burns_red/messangers/2.m4a'),
	('3','m4a',NULL,264,'/media/music/august_burns_red/messangers/3.m4a'),
	('4','m4a',NULL,265,'/media/music/august_burns_red/messangers/4.m4a'),
	('5','m4a',NULL,266,'/media/music/august_burns_red/messangers/5.m4a'),
	('6','m4a',NULL,267,'/media/music/august_burns_red/messangers/6.m4a'),
	('7','m4a',NULL,268,'/media/music/august_burns_red/messangers/7.m4a'),
	('8','m4a',NULL,269,'/media/music/august_burns_red/messangers/8.m4a'),
	('9','m4a',NULL,270,'/media/music/august_burns_red/messangers/9.m4a'),
	('10','m4a',NULL,271,'/media/music/august_burns_red/messangers/10.m4a'),
	('11','m4a',NULL,272,'/media/music/august_burns_red/messangers/11.m4a'),
	('1','m4a',NULL,273,'/media/music/august_burns_red/thrill_seeker/1.m4a'),
	('2','m4a',NULL,274,'/media/music/august_burns_red/thrill_seeker/2.m4a'),
	('3','m4a',NULL,275,'/media/music/august_burns_red/thrill_seeker/3.m4a'),
	('4','m4a',NULL,276,'/media/music/august_burns_red/thrill_seeker/4.m4a'),
	('5','m4a',NULL,277,'/media/music/august_burns_red/thrill_seeker/5.m4a'),
	('6','m4a',NULL,278,'/media/music/august_burns_red/thrill_seeker/6.m4a'),
	('7','m4a',NULL,279,'/media/music/august_burns_red/thrill_seeker/7.m4a'),
	('8','m4a',NULL,280,'/media/music/august_burns_red/thrill_seeker/8.m4a'),
	('9','m4a',NULL,281,'/media/music/august_burns_red/thrill_seeker/9.m4a'),
	('10','m4a',NULL,282,'/media/music/august_burns_red/thrill_seeker/10.m4a'),
	('11','m4a',NULL,283,'/media/music/august_burns_red/thrill_seeker/11.m4a');

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



# Dump of table Info2
# ------------------------------------------------------------

DROP VIEW IF EXISTS `Info2`;

CREATE TABLE `Info2` (
   `Artist` CHAR(100) DEFAULT NULL,
   `Album` CHAR(100) DEFAULT NULL,
   `Song` CHAR(100) DEFAULT NULL,
   `Length` TIME DEFAULT NULL,
   `Genre` CHAR(50) DEFAULT NULL,
   `Art` CHAR(100) DEFAULT NULL,
   `Location` CHAR(200) DEFAULT NULL,
   `Rating` INT(11) DEFAULT '0'
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
  `Playlist_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(100) DEFAULT 'Playlist',
  `Date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `User_ID` int(11) DEFAULT '1',
  PRIMARY KEY (`Playlist_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `Playlist` WRITE;
/*!40000 ALTER TABLE `Playlist` DISABLE KEYS */;
INSERT INTO `Playlist` (`Playlist_ID`,`Name`,`Date`,`User_ID`)
VALUES
	(1,'Playlist','2011-04-30 17:10:21',1),
	(2,'Playlist','2011-04-30 17:10:31',2),
	(3,'Playlist','2011-04-30 17:10:35',3);

/*!40000 ALTER TABLE `Playlist` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Rating
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Rating`;

CREATE TABLE `Rating` (
  `Song_ID` int(11) DEFAULT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Value` int(11) DEFAULT '0',
  `Rating_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Rating_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=latin1;

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
INSERT INTO `Rating` (`Song_ID`,`User_ID`,`Value`,`Rating_ID`)
VALUES
	(1,2,5,1),
	(2,2,0,2),
	(3,2,0,3),
	(4,2,0,4),
	(5,2,0,5),
	(6,2,0,6),
	(7,2,0,7),
	(8,2,0,8),
	(9,2,0,9),
	(10,2,0,10),
	(11,2,0,11),
	(12,2,0,12),
	(13,2,0,13),
	(14,2,0,14),
	(15,2,0,15),
	(16,2,0,16),
	(17,2,0,17),
	(18,2,0,18),
	(19,2,0,19),
	(20,2,0,20),
	(21,2,0,21),
	(22,2,0,22),
	(23,2,0,23),
	(24,2,0,24),
	(25,2,0,25),
	(26,2,0,26),
	(27,2,0,27),
	(28,2,0,28),
	(29,2,0,29),
	(30,2,0,30),
	(31,2,0,31),
	(32,2,0,32),
	(33,2,0,33),
	(34,2,0,34),
	(35,2,0,35),
	(36,2,0,36),
	(37,2,0,37),
	(38,2,0,38),
	(39,2,0,39),
	(40,2,0,40),
	(41,2,0,41),
	(42,2,0,42),
	(43,2,0,43),
	(44,2,0,44),
	(45,2,0,45),
	(46,2,0,46),
	(47,2,0,47),
	(48,2,0,48),
	(49,2,0,49),
	(50,2,0,50),
	(51,2,0,51),
	(52,2,0,52),
	(53,2,0,53),
	(54,2,0,54),
	(55,2,0,55),
	(56,2,0,56),
	(57,2,0,57),
	(58,2,0,58),
	(59,2,0,59),
	(60,2,0,60),
	(61,2,0,61),
	(62,2,0,62),
	(63,2,0,63),
	(64,2,0,64),
	(65,2,0,65),
	(66,2,0,66),
	(67,2,0,67),
	(68,2,0,68),
	(69,2,0,69),
	(70,2,0,70),
	(71,2,0,71),
	(72,2,0,72),
	(73,2,0,73),
	(74,2,0,74),
	(75,2,0,75),
	(76,2,0,76),
	(77,2,0,77),
	(78,2,0,78),
	(79,2,0,79),
	(80,2,0,80),
	(81,2,0,81),
	(82,2,0,82),
	(83,2,0,83),
	(84,2,0,84),
	(85,2,0,85),
	(86,2,0,86),
	(87,2,0,87),
	(88,2,0,88),
	(89,2,0,89),
	(90,2,0,90),
	(91,2,0,91),
	(92,2,0,92),
	(93,2,0,93),
	(94,2,0,94),
	(95,2,0,95),
	(96,2,0,96),
	(97,2,0,97),
	(98,2,0,98),
	(99,2,0,99),
	(100,2,0,100),
	(101,2,0,101),
	(102,2,0,102),
	(103,2,0,103),
	(104,2,0,104),
	(105,2,0,105),
	(106,2,0,106),
	(107,2,0,107),
	(108,2,0,108),
	(109,2,0,109),
	(110,2,0,110),
	(111,2,0,111),
	(112,2,0,112),
	(113,2,0,113),
	(114,2,0,114),
	(115,2,0,115),
	(116,2,0,116),
	(117,2,0,117),
	(118,2,0,118),
	(119,2,0,119),
	(120,2,0,120),
	(121,2,0,121),
	(122,2,0,122),
	(123,2,0,123),
	(124,2,0,124),
	(125,2,0,125),
	(126,2,0,126),
	(127,2,0,127),
	(128,2,0,128),
	(129,2,0,129),
	(130,2,0,130),
	(131,2,0,131),
	(132,2,0,132),
	(133,2,0,133),
	(134,2,0,134),
	(135,2,0,135),
	(136,2,0,136),
	(137,2,0,137),
	(138,2,0,138),
	(139,2,0,139),
	(140,2,0,140),
	(141,2,0,141),
	(142,2,0,142),
	(143,2,0,143),
	(144,2,0,144),
	(145,2,0,145),
	(146,2,0,146),
	(147,2,0,147),
	(148,2,0,148),
	(149,2,0,149),
	(150,2,0,150),
	(151,2,0,151),
	(152,2,0,152),
	(153,2,0,153),
	(154,2,0,154),
	(155,2,0,155),
	(156,2,0,156),
	(157,2,0,157),
	(158,2,0,158),
	(159,2,0,159),
	(160,2,0,160),
	(161,2,0,161),
	(162,2,0,162),
	(163,2,0,163),
	(164,2,0,164),
	(165,2,0,165),
	(166,2,0,166),
	(167,2,0,167),
	(168,2,0,168),
	(169,2,0,169),
	(170,2,0,170),
	(171,2,0,171),
	(172,2,0,172),
	(173,2,0,173),
	(174,2,0,174),
	(175,2,0,175),
	(176,2,0,176),
	(177,2,0,177),
	(178,2,0,178),
	(179,2,0,179),
	(180,2,0,180),
	(181,2,0,181),
	(182,2,0,182),
	(183,2,0,183),
	(184,2,0,184),
	(185,2,0,185),
	(186,2,0,186),
	(187,2,0,187),
	(188,2,0,188),
	(189,2,0,189),
	(190,2,0,190),
	(191,2,0,191),
	(192,2,0,192),
	(193,2,0,193),
	(194,2,0,194),
	(195,2,0,195),
	(196,2,0,196),
	(197,2,0,197),
	(198,2,0,198),
	(199,2,0,199),
	(200,2,0,200),
	(201,2,0,201),
	(202,2,0,202),
	(203,2,0,203),
	(204,2,0,204),
	(205,2,0,205),
	(206,2,0,206),
	(207,2,0,207),
	(208,2,0,208),
	(209,2,0,209),
	(210,2,0,210),
	(211,2,0,211),
	(212,2,0,212),
	(213,2,0,213),
	(214,2,0,214),
	(215,2,0,215),
	(216,2,0,216),
	(217,2,0,217),
	(218,2,0,218),
	(219,2,0,219),
	(220,2,0,220),
	(221,2,0,221),
	(222,2,0,222),
	(223,2,0,223),
	(224,2,0,224),
	(225,2,0,225),
	(226,2,0,226),
	(227,2,0,227),
	(228,2,0,228),
	(229,2,0,229),
	(230,2,0,230),
	(231,2,0,231),
	(232,2,0,232),
	(233,2,0,233),
	(234,2,0,234),
	(235,2,0,235),
	(236,2,0,236),
	(237,2,0,237),
	(238,2,0,238),
	(239,2,0,239),
	(240,2,0,240),
	(241,2,0,241),
	(242,2,0,242),
	(243,2,0,243),
	(244,2,0,244),
	(245,2,0,245),
	(246,2,0,246),
	(247,2,0,247),
	(248,2,0,248),
	(249,2,0,249),
	(250,2,0,250),
	(251,2,0,251),
	(252,2,0,252),
	(253,2,0,253),
	(254,2,0,254),
	(255,2,0,255),
	(256,2,0,256),
	(257,2,0,257),
	(258,2,0,258),
	(259,2,0,259),
	(260,2,0,260),
	(261,2,0,261),
	(262,2,0,262),
	(263,2,0,263),
	(264,2,0,264),
	(265,2,0,265),
	(266,2,0,266),
	(267,2,0,267),
	(268,2,0,268),
	(269,2,0,269),
	(270,2,0,270),
	(271,2,0,271),
	(272,2,0,272),
	(273,2,0,273),
	(274,2,0,274),
	(275,2,0,275),
	(276,2,0,276),
	(277,2,0,277),
	(278,2,0,278),
	(279,2,0,279),
	(280,2,0,280),
	(281,2,0,281),
	(282,2,0,282),
	(283,2,0,283);

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
  `Song_ID` int(11) DEFAULT NULL,
  `Track_Number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `Song_Playlist` WRITE;
/*!40000 ALTER TABLE `Song_Playlist` DISABLE KEYS */;
INSERT INTO `Song_Playlist` (`Song_Playlist_ID`,`Playlist_ID`,`Song_ID`,`Track_Number`)
VALUES
	(2,2,85,1);

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
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` (`Username`,`UserPassword`,`User_ID`)
VALUES
	('NicoleK','heynowbrowncow',1),
	('TimH','timboslice',2),
	('MattM','aznrmx1112',3);

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;




DROP TABLE `Info2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Info2`
AS select
   `AR`.`Name` AS `Artist`,
   `AL`.`Name` AS `Album`,
   `S`.`Name` AS `Song`,
   `S`.`Length` AS `Length`,
   `G`.`Name` AS `Genre`,
   `AL`.`Cover_Art` AS `Art`,
   `F`.`File_Loc` AS `Location`,
   `Rating`.`Value` AS `Rating`
from (((((`Artist` `AR` join `Album` `AL`) join `Song` `S`) join `Genre` `G`) join `File` `F`) join `Rating`)
where ((`S`.`Album_ID` = `AL`.`Album_ID`) and (`AL`.`Artist_ID` = `AR`.`Artist_ID`) and (`AL`.`Genre_ID` = `G`.`Genre_ID`) and (`F`.`File_ID` = `S`.`Song_ID`) and (`Rating`.`Song_ID` = `S`.`Song_ID`)) order by `AR`.`Name`;


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
