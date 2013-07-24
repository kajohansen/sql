# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: WORealEstate
# Generation Time: 2011-06-14 15:49:22 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table AGENT_PHOTO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AGENT_PHOTO`;

CREATE TABLE `AGENT_PHOTO` (
  `AGENT_ID` int(11) NOT NULL,
  `PHOTO` longtext,
  PRIMARY KEY (`AGENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `AGENT_PHOTO` WRITE;
/*!40000 ALTER TABLE `AGENT_PHOTO` DISABLE KEYS */;
INSERT INTO `AGENT_PHOTO` (`AGENT_ID`,`PHOTO`)
VALUES
	(102,NULL),
	(0,NULL),
	(2,NULL),
	(4,NULL);

/*!40000 ALTER TABLE `AGENT_PHOTO` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table AGENT_RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `AGENT_RATING`;

CREATE TABLE `AGENT_RATING` (
  `USER_ID` int(11) NOT NULL,
  `AGENT_RATING_ID` int(11) NOT NULL,
  `SUMMARY` text,
  `RATING_ID` int(11) NOT NULL,
  PRIMARY KEY (`AGENT_RATING_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `AGENT_RATING` WRITE;
/*!40000 ALTER TABLE `AGENT_RATING` DISABLE KEYS */;
INSERT INTO `AGENT_RATING` (`USER_ID`,`AGENT_RATING_ID`,`SUMMARY`,`RATING_ID`)
VALUES
	(10,4,NULL,2),
	(10,2,NULL,3),
	(10,3,NULL,4);

/*!40000 ALTER TABLE `AGENT_RATING` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table CONTACT_INFO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CONTACT_INFO`;

CREATE TABLE `CONTACT_INFO` (
  `CONTACT` varchar(40) NOT NULL,
  `CONTACT_ID` int(11) NOT NULL,
  `CONTACT_TYPE_ID` int(11) DEFAULT NULL,
  `NOTES` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`CONTACT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `CONTACT_INFO` WRITE;
/*!40000 ALTER TABLE `CONTACT_INFO` DISABLE KEYS */;
INSERT INTO `CONTACT_INFO` (`CONTACT`,`CONTACT_ID`,`CONTACT_TYPE_ID`,`NOTES`,`USER_ID`)
VALUES
	('147-852-3690',2,1,'9 AM - 5 PM',3),
	('rsugg@woexample.com',6,5,NULL,3),
	('785-236-9014',8,6,NULL,3),
	('852-369-0147',9,4,'9 AM - 5 PM',7),
	('parker@woexample.com',11,5,NULL,6),
	('236-901-4785',10,3,'9 AM - 7 PM',6),
	('369-014-7852',12,6,'10 AM - 3 PM',10),
	('fhsu@woexample.com',13,5,NULL,10),
	('901-478-5236',14,6,'7 AM - 3 PM',39),
	('357-869-4210',16,2,'office',39),
	('poyser@woexample.com',15,5,NULL,39);

/*!40000 ALTER TABLE `CONTACT_INFO` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table CONTACT_TYPE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CONTACT_TYPE`;

CREATE TABLE `CONTACT_TYPE` (
  `CONTACT_TYPE_ID` int(11) NOT NULL,
  `TYPE` varchar(40) NOT NULL,
  PRIMARY KEY (`CONTACT_TYPE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `CONTACT_TYPE` WRITE;
/*!40000 ALTER TABLE `CONTACT_TYPE` DISABLE KEYS */;
INSERT INTO `CONTACT_TYPE` (`CONTACT_TYPE_ID`,`TYPE`)
VALUES
	(3,'Cell Phone'),
	(5,'E-Mail'),
	(6,'Work Phone'),
	(2,'Fax'),
	(1,'Home Phone'),
	(4,'Pager');

/*!40000 ALTER TABLE `CONTACT_TYPE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EO_PK_TABLE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EO_PK_TABLE`;

CREATE TABLE `EO_PK_TABLE` (
  `NAME` char(40) NOT NULL,
  `PK` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `EO_PK_TABLE` WRITE;
/*!40000 ALTER TABLE `EO_PK_TABLE` DISABLE KEYS */;
INSERT INTO `EO_PK_TABLE` (`NAME`,`PK`)
VALUES
	('USER',104);

/*!40000 ALTER TABLE `EO_PK_TABLE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table FEATURE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FEATURE`;

CREATE TABLE `FEATURE` (
  `FEATURE` varchar(40) NOT NULL,
  `FEATURE_ID` int(11) NOT NULL,
  PRIMARY KEY (`FEATURE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `FEATURE` WRITE;
/*!40000 ALTER TABLE `FEATURE` DISABLE KEYS */;
INSERT INTO `FEATURE` (`FEATURE`,`FEATURE_ID`)
VALUES
	('Pool',3),
	('Air Conditioning',2),
	('2 Stories',4),
	('Garage',1),
	('2 Car Garage',5);

/*!40000 ALTER TABLE `FEATURE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LISTING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LISTING`;

CREATE TABLE `LISTING` (
  `AGENT_ID` int(11) NOT NULL,
  `ASKING_PRICE` decimal(10,2) NOT NULL,
  `BATHROOMS` double DEFAULT NULL,
  `BEDROOMS` double DEFAULT NULL,
  `ISSOLD` tinyint(4) DEFAULT NULL,
  `LISTING_ID` int(11) NOT NULL,
  `LISTING_IDENTIFIER` varchar(20) NOT NULL,
  `LISTING_TYPE_ID` int(11) NOT NULL,
  `LOT_SQFT` int(11) DEFAULT NULL,
  `SELLING_PRICE` decimal(10,2) DEFAULT NULL,
  `SIZE_SQFT` int(11) DEFAULT NULL,
  `MOVIE_URL` varchar(255) DEFAULT NULL,
  `YEAR_BUILT` int(11) DEFAULT NULL,
  PRIMARY KEY (`LISTING_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `LISTING` WRITE;
/*!40000 ALTER TABLE `LISTING` DISABLE KEYS */;
INSERT INTO `LISTING` (`AGENT_ID`,`ASKING_PRICE`,`BATHROOMS`,`BEDROOMS`,`ISSOLD`,`LISTING_ID`,`LISTING_IDENTIFIER`,`LISTING_TYPE_ID`,`LOT_SQFT`,`SELLING_PRICE`,`SIZE_SQFT`,`MOVIE_URL`,`YEAR_BUILT`)
VALUES
	(39,500000.00,2.5,4,NULL,1,'LN #795550',1,4500,NULL,1350,NULL,1973),
	(39,700000.00,4,4,NULL,4,'LN #796380',1,9000,NULL,3000,NULL,1992),
	(6,300000.00,1,2,NULL,5,'LN #123456',1,5000,NULL,800,NULL,1943),
	(6,300000.00,2,3,NULL,6,'LN #777787',3,6000,NULL,1400,NULL,1962),
	(10,600000.00,1,1,NULL,7,'LN #066380',2,4500,NULL,820,NULL,1994),
	(39,3000000.00,2,4,NULL,9,'LN #162352',1,9000,NULL,1700,NULL,1977),
	(6,355000.00,1.5,3,1,12,'LN #642871',3,6800,362000.00,1300,NULL,1983),
	(10,350000.00,2,3,0,14,'LN #006736',3,5000,NULL,1400,NULL,1989),
	(39,375000.00,1.5,3,1,15,'LN #457874',1,6200,380000.00,1500,NULL,1975),
	(39,275000.00,1,1,0,16,'LN #114787',2,3000,NULL,725,NULL,1988),
	(10,550000.00,2.5,3,0,17,'LN #754436',1,5000,NULL,1500,NULL,1972),
	(10,620000.00,2.5,4,0,18,'LN #882184',1,7000,NULL,1800,NULL,1978),
	(6,400000.00,2,4,0,19,'LN #479524',1,8000,NULL,1900,NULL,1982),
	(10,650000.00,1,1,NULL,21,'LN #425118',2,8400,NULL,900,NULL,1994);

/*!40000 ALTER TABLE `LISTING` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LISTING_ADDRESS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LISTING_ADDRESS`;

CREATE TABLE `LISTING_ADDRESS` (
  `APTNUM` varchar(10) DEFAULT NULL,
  `CITY` varchar(40) NOT NULL,
  `LISTING_ID` int(11) NOT NULL,
  `STATE` varchar(2) NOT NULL,
  `STREET` varchar(80) NOT NULL,
  `ZIP` varchar(10) NOT NULL,
  PRIMARY KEY (`LISTING_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `LISTING_ADDRESS` WRITE;
/*!40000 ALTER TABLE `LISTING_ADDRESS` DISABLE KEYS */;
INSERT INTO `LISTING_ADDRESS` (`APTNUM`,`CITY`,`LISTING_ID`,`STATE`,`STREET`,`ZIP`)
VALUES
	(NULL,'San Jose',1,'CA','2289 Dudiedo Drive','95132'),
	(NULL,'Cupertino',4,'CA','7 Infinite Loop','95130'),
	(NULL,'Santa Clara',5,'CA','123 Lucky Drive','95131'),
	(NULL,'Sunnyvale',6,'CA','1234 Evelyn Ave','95132'),
	('287','Palo Alto',7,'CA','124 Florence Ave','95133'),
	(NULL,'Tracy',9,'CA','127 Everyone St','94111'),
	(NULL,'Mountain View',12,'CA','772 California Ave','95134'),
	(NULL,'Cupertino',14,'CA','17 Turin Dr','95014'),
	('34','San Jose',15,'CA','47 Calabazas Ave','95015'),
	('105','Sunnyvale',16,'CA','65 Evergreen Terrace','95011'),
	(NULL,'Cupertino',17,'CA','62 Renoit Dr','95014'),
	(NULL,'Cupertino',18,'CA','77 Abercrombie Ave','95014'),
	(NULL,'San Jose',19,'CA','11 Bernal Ave','95019'),
	('288','Palo Alto',21,'CA','124 Florence Ave','95133');

/*!40000 ALTER TABLE `LISTING_ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LISTING_FEATURE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LISTING_FEATURE`;

CREATE TABLE `LISTING_FEATURE` (
  `FEATURE_ID` int(11) NOT NULL,
  `LISTING_ID` int(11) NOT NULL,
  PRIMARY KEY (`FEATURE_ID`,`LISTING_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `LISTING_FEATURE` WRITE;
/*!40000 ALTER TABLE `LISTING_FEATURE` DISABLE KEYS */;
INSERT INTO `LISTING_FEATURE` (`FEATURE_ID`,`LISTING_ID`)
VALUES
	(1,5),
	(1,15),
	(1,18),
	(2,1),
	(2,7),
	(2,12),
	(2,14),
	(2,16),
	(2,21),
	(3,7),
	(3,16),
	(3,19),
	(3,21),
	(4,6),
	(4,14),
	(5,1),
	(5,9),
	(5,17),
	(5,19);

/*!40000 ALTER TABLE `LISTING_FEATURE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LISTING_PHOTO
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LISTING_PHOTO`;

CREATE TABLE `LISTING_PHOTO` (
  `IS_PRIMARY_PHOTO` tinyint(4) DEFAULT NULL,
  `LISTING_ID` int(11) NOT NULL,
  `LISTING_PHOTO_ID` int(11) NOT NULL,
  `PHOTO` longtext,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `PHOTO_TYPE` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`LISTING_PHOTO_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table LISTING_TYPE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LISTING_TYPE`;

CREATE TABLE `LISTING_TYPE` (
  `LISTING_TYPE` varchar(40) NOT NULL,
  `LISTING_TYPE_ID` int(11) NOT NULL,
  PRIMARY KEY (`LISTING_TYPE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `LISTING_TYPE` WRITE;
/*!40000 ALTER TABLE `LISTING_TYPE` DISABLE KEYS */;
INSERT INTO `LISTING_TYPE` (`LISTING_TYPE`,`LISTING_TYPE_ID`)
VALUES
	('Town House',3),
	('Condo',2),
	('Single Family Residence',1);

/*!40000 ALTER TABLE `LISTING_TYPE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table RATING
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RATING`;

CREATE TABLE `RATING` (
  `RATING` int(11) NOT NULL,
  `RATING_DESCRIPTION` varchar(40) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  PRIMARY KEY (`RATING_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `RATING` WRITE;
/*!40000 ALTER TABLE `RATING` DISABLE KEYS */;
INSERT INTO `RATING` (`RATING`,`RATING_DESCRIPTION`,`RATING_ID`)
VALUES
	(1,'1 - Great',3),
	(2,'2 - Good',2),
	(3,'3 - Poor',4),
	(4,'4 - No Sell',1);

/*!40000 ALTER TABLE `RATING` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SUGGESTIONS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SUGGESTIONS`;

CREATE TABLE `SUGGESTIONS` (
  `CUSTOMER_ID` int(11) NOT NULL,
  `LISTING_ID` int(11) NOT NULL,
  PRIMARY KEY (`LISTING_ID`,`CUSTOMER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `SUGGESTIONS` WRITE;
/*!40000 ALTER TABLE `SUGGESTIONS` DISABLE KEYS */;
INSERT INTO `SUGGESTIONS` (`CUSTOMER_ID`,`LISTING_ID`)
VALUES
	(3,1),
	(14,1),
	(3,4),
	(12,4),
	(13,4),
	(14,4),
	(28,4),
	(29,4),
	(33,4),
	(36,4),
	(38,4),
	(3,5),
	(12,5),
	(14,5),
	(36,6),
	(27,7),
	(34,7),
	(3,9),
	(8,9),
	(28,9),
	(3,12),
	(8,12),
	(12,12),
	(32,12),
	(33,12),
	(30,14),
	(36,14),
	(38,14),
	(15,15),
	(18,15),
	(21,15),
	(19,16),
	(31,16),
	(34,16),
	(24,17),
	(25,17),
	(28,17),
	(29,17),
	(35,17),
	(11,18),
	(15,18),
	(16,18),
	(17,18),
	(19,18),
	(21,18),
	(22,18),
	(26,18),
	(27,18),
	(15,19),
	(18,19),
	(26,19),
	(30,19),
	(32,19),
	(34,19),
	(16,21),
	(23,21),
	(27,21);

/*!40000 ALTER TABLE `SUGGESTIONS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table USER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `FIRST_NAME` varchar(80) NOT NULL,
  `LAST_NAME` varchar(80) NOT NULL,
  `LOGIN` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_TYPE` int(11) NOT NULL,
  `AGENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` (`FIRST_NAME`,`LAST_NAME`,`LOGIN`,`PASSWORD`,`USER_ID`,`USER_TYPE`,`AGENT_ID`)
VALUES
	('Adam','Parker','apark','parker',3,2,6),
	('Seth','Basset','sbass','basset',6,1,NULL),
	('Lisbeth','Byng','lbyng','byng',7,9,NULL),
	('Martin','Smith','msmit','smith',8,2,39),
	('Arthur','Jackson','ajack','jackson',9,2,6),
	('Dinah','Travers','dtrav','travers',10,1,NULL),
	('Hester','Stoker','hstok','stoker',11,2,6),
	('Judith','Bunter','jbunt','bunter',12,2,6),
	('Flora','Hsu','fhsu','hsu',13,2,39),
	('Miriam','Purvis','mpurv','purvis',14,2,10),
	('Mary','Miller','mmill','miller',15,2,6),
	('Reuben','Turner','rturn','turner',16,2,6),
	('Ada','Fells','afell','fells',17,2,39),
	('Micah','Johnson','mjohn','johnson',18,2,39),
	('Ezra','Peale','epeal','peale',19,2,39),
	('Ronald','Daly','rdaly','daly',20,2,6),
	('Eustace','Locke','elock','locke',21,2,39),
	('Mike','Trumbull','mtrum','trumbull',22,2,10),
	('Bertram','Waverley','bwave','waverley',23,2,39),
	('Reginald','Sugg','rsugg','sugg',24,2,6),
	('Dahlia','Perry','dperr','perry',25,2,39),
	('Thomas','Poyser','tpoys','poyser',26,2,10),
	('Agatha','Sanchez','asanc','sanchez',27,2,10),
	('Florence','Bede','fbede','bede',28,2,39),
	('Bobbi','Benkins','bbenk','benkins',29,2,6),
	('Madeleine','Blair','mblai','blair',30,2,10),
	('Augustus','Moore','amoor','moore',31,2,10),
	('Honoria','Simpson','hsimp','simpson',32,2,39),
	('Pauline','Morris','pmorr','morris',33,2,10),
	('Richard','Chang','rchan','chang',34,2,10),
	('Oliver','Bond','obond','bond',35,2,39),
	('Peter','Campbell','pcamp','campbell',36,2,39),
	('Marvin','Graham','mgrah','graham',38,2,39),
	('Charles','Chesterton','cches','chesterton',39,1,NULL),
	('Admin','Admin','woadmin','woadmin',101,9,NULL),
	('Agent','Agent','woagent','woagent',102,1,NULL),
	('Customer','Customer','wocustomer','wocustomer',103,2,102),
	('Karl','Johansen','karlanj','dispara',104,2,6);

/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table USER_DEFAULTS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER_DEFAULTS`;

CREATE TABLE `USER_DEFAULTS` (
  `USER_DEFAULTS` text,
  `USER_DEFAULTS_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  PRIMARY KEY (`USER_DEFAULTS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `USER_DEFAULTS` WRITE;
/*!40000 ALTER TABLE `USER_DEFAULTS` DISABLE KEYS */;
INSERT INTO `USER_DEFAULTS` (`USER_DEFAULTS`,`USER_DEFAULTS_ID`,`USER_ID`)
VALUES
	(NULL,1,101);

/*!40000 ALTER TABLE `USER_DEFAULTS` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table USERS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USERS`;

CREATE TABLE `USERS` (
  `FIRST_NAME` varchar(80) NOT NULL,
  `LAST_NAME` varchar(80) NOT NULL,
  `LOGIN` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_TYPE` int(11) NOT NULL,
  `AGENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` (`FIRST_NAME`,`LAST_NAME`,`LOGIN`,`PASSWORD`,`USER_ID`,`USER_TYPE`,`AGENT_ID`)
VALUES
	('Adam','Parker','apark','parker',3,2,6),
	('Seth','Basset','sbass','basset',6,1,NULL),
	('Lisbeth','Byng','lbyng','byng',7,9,NULL),
	('Martin','Smith','msmit','smith',8,2,39),
	('Arthur','Jackson','ajack','jackson',9,2,6),
	('Dinah','Travers','dtrav','travers',10,1,NULL),
	('Hester','Stoker','hstok','stoker',11,2,6),
	('Judith','Bunter','jbunt','bunter',12,2,6),
	('Flora','Hsu','fhsu','hsu',13,2,39),
	('Miriam','Purvis','mpurv','purvis',14,2,10),
	('Mary','Miller','mmill','miller',15,2,6),
	('Reuben','Turner','rturn','turner',16,2,6),
	('Ada','Fells','afell','fells',17,2,39),
	('Micah','Johnson','mjohn','johnson',18,2,39),
	('Ezra','Peale','epeal','peale',19,2,39),
	('Ronald','Daly','rdaly','daly',20,2,6),
	('Eustace','Locke','elock','locke',21,2,39),
	('Mike','Trumbull','mtrum','trumbull',22,2,10),
	('Bertram','Waverley','bwave','waverley',23,2,39),
	('Reginald','Sugg','rsugg','sugg',24,2,6),
	('Dahlia','Perry','dperr','perry',25,2,39),
	('Thomas','Poyser','tpoys','poyser',26,2,10),
	('Agatha','Sanchez','asanc','sanchez',27,2,10),
	('Florence','Bede','fbede','bede',28,2,39),
	('Bobbi','Benkins','bbenk','benkins',29,2,6),
	('Madeleine','Blair','mblai','blair',30,2,10),
	('Augustus','Moore','amoor','moore',31,2,10),
	('Honoria','Simpson','hsimp','simpson',32,2,39),
	('Pauline','Morris','pmorr','morris',33,2,10),
	('Richard','Chang','rchan','chang',34,2,10),
	('Oliver','Bond','obond','bond',35,2,39),
	('Peter','Campbell','pcamp','campbell',36,2,39),
	('Marvin','Graham','mgrah','graham',38,2,39),
	('Charles','Chesterton','cches','chesterton',39,1,NULL),
	('Admin','Admin','woadmin','woadmin',101,9,NULL),
	('Agent','Agent','woagent','woagent',102,1,NULL),
	('Customer','Customer','wocustomer','wocustomer',103,2,102);

/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
