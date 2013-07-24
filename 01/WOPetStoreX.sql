# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: WOPetStoreX
# Generation Time: 2011-06-14 15:49:09 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ACCOUNT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ACCOUNT`;

CREATE TABLE `ACCOUNT` (
  `ADDR1` char(80) DEFAULT NULL,
  `ADDR2` char(40) DEFAULT NULL,
  `CITY` char(80) DEFAULT NULL,
  `COUNTRY` char(20) DEFAULT NULL,
  `EMAIL` char(80) DEFAULT NULL,
  `FIRSTNAME` char(80) DEFAULT NULL,
  `LASTNAME` char(80) DEFAULT NULL,
  `PASSWORD` char(20) DEFAULT NULL,
  `PHONE` char(80) DEFAULT NULL,
  `STATE` char(80) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `ZIP` char(20) DEFAULT NULL,
  `USERID` char(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `ACCOUNT` WRITE;
/*!40000 ALTER TABLE `ACCOUNT` DISABLE KEYS */;
INSERT INTO `ACCOUNT` (`ADDR1`,`ADDR2`,`CITY`,`COUNTRY`,`EMAIL`,`FIRSTNAME`,`LASTNAME`,`PASSWORD`,`PHONE`,`STATE`,`STATUS`,`ZIP`,`USERID`)
VALUES
	('901 San Antonio Road','MS UCUP02-206','Palo Alto','USA','yourname@yourdomain.com','WOUser','XYZ','wojava','555-555-5555','California','OK','94303','wojava'),
	('123 elm',NULL,'Seattle','USA','kelly@apple.com','kelly','kazem','kellyk','555-1212','New York',NULL,'99999','kellyk');

/*!40000 ALTER TABLE `ACCOUNT` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table CATEGORY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CATEGORY`;

CREATE TABLE `CATEGORY` (
  `DESCN` varchar(255) DEFAULT NULL,
  `NAME` char(80) DEFAULT NULL,
  `CATID` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `CATEGORY` WRITE;
/*!40000 ALTER TABLE `CATEGORY` DISABLE KEYS */;
INSERT INTO `CATEGORY` (`DESCN`,`NAME`,`CATID`)
VALUES
	('<image src=../images/fish_icon.gif><font size=5 color=blue> Fish</font>','Fish','FISH'),
	('<image src=../images/dogs_icon.gif><font size=5 color=blue> Dogs</font>','Dogs','DOGS'),
	('<image src=../images/reptiles_icon.gif><font size=5 color=blue>Reptiles</font>','Reptiles','REPTILES'),
	('<image src=../images/cats_icon.gif><font size=5 color=blue> Cats</font>','Cats','CATS'),
	('<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>','Birds','BIRDS');

/*!40000 ALTER TABLE `CATEGORY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table INVENTORY
# ------------------------------------------------------------

DROP TABLE IF EXISTS `INVENTORY`;

CREATE TABLE `INVENTORY` (
  `QTY` int(11) DEFAULT NULL,
  `ITEMID` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` (`QTY`,`ITEMID`)
VALUES
	(0,'EST-1'),
	(10,'EST-2'),
	(10,'EST-3'),
	(100,'EST-4'),
	(100,'EST-5'),
	(99,'EST-6'),
	(0,'EST-7'),
	(9,'EST-8'),
	(10,'EST-9'),
	(10,'EST-10'),
	(10,'EST-11'),
	(10,'EST-12'),
	(0,'EST-13'),
	(10,'EST-14'),
	(10,'EST-15'),
	(10,'EST-16'),
	(10,'EST-17'),
	(10,'EST-18'),
	(10,'EST-19'),
	(10,'EST-20'),
	(10,'EST-21'),
	(10,'EST-22'),
	(10,'EST-23'),
	(10,'EST-24'),
	(9,'EST-25'),
	(10,'EST-26'),
	(10,'EST-27'),
	(9,'EST-28');

/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ITEM
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ITEM`;

CREATE TABLE `ITEM` (
  `ATTR1` char(80) DEFAULT NULL,
  `ATTR2` char(80) DEFAULT NULL,
  `ATTR3` char(80) DEFAULT NULL,
  `ATTR4` char(80) DEFAULT NULL,
  `ATTR5` char(80) DEFAULT NULL,
  `PRODUCTID` char(10) NOT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `SUPPLIER` int(11) DEFAULT NULL,
  `ITEMID` char(10) NOT NULL,
  `UNITCOST` decimal(10,2) DEFAULT NULL,
  `LISTPRICE` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `ITEM` WRITE;
/*!40000 ALTER TABLE `ITEM` DISABLE KEYS */;
INSERT INTO `ITEM` (`ATTR1`,`ATTR2`,`ATTR3`,`ATTR4`,`ATTR5`,`PRODUCTID`,`STATUS`,`SUPPLIER`,`ITEMID`,`UNITCOST`,`LISTPRICE`)
VALUES
	('Large',NULL,NULL,NULL,NULL,'FI-SW-01','P',1,'EST-1',10.00,16.00),
	('Small',NULL,NULL,NULL,NULL,'FI-SW-01','P',1,'EST-2',10.00,16.00),
	('Toothless',NULL,NULL,NULL,NULL,'FI-SW-02','P',1,'EST-3',12.00,18.00),
	('Spotted',NULL,NULL,NULL,NULL,'FI-FW-01','P',1,'EST-4',12.00,18.00),
	('Spotless',NULL,NULL,NULL,NULL,'FI-FW-01','P',1,'EST-5',12.00,18.00),
	('Male Adult',NULL,NULL,NULL,NULL,'K9-BD-01','P',1,'EST-6',12.00,18.00),
	('Female Puppy',NULL,NULL,NULL,NULL,'K9-BD-01','P',1,'EST-7',12.00,18.00),
	('Male Puppy',NULL,NULL,NULL,NULL,'K9-PO-02','P',1,'EST-8',12.00,18.00),
	('Spotless Male Puppy',NULL,NULL,NULL,NULL,'K9-DL-01','P',1,'EST-9',12.00,18.00),
	('Spotted Adult Female',NULL,NULL,NULL,NULL,'K9-DL-01','P',1,'EST-10',12.00,18.00),
	('Venomless',NULL,NULL,NULL,NULL,'RP-SN-01','P',1,'EST-11',12.00,18.00),
	('Rattleless',NULL,NULL,NULL,NULL,'RP-SN-01','P',1,'EST-12',12.00,18.00),
	('Green Adult',NULL,NULL,NULL,NULL,'RP-LI-02','P',1,'EST-13',12.00,18.00),
	('Tailless',NULL,NULL,NULL,NULL,'FL-DSH-01','P',1,'EST-14',12.00,58.00),
	('With tail',NULL,NULL,NULL,NULL,'FL-DSH-01','P',1,'EST-15',12.00,23.00),
	('Adult Female',NULL,NULL,NULL,NULL,'FL-DLH-02','P',1,'EST-16',12.00,93.00),
	('Adult Male',NULL,NULL,NULL,NULL,'FL-DLH-02','P',1,'EST-17',12.00,93.00),
	('Adult Male',NULL,NULL,NULL,NULL,'AV-CB-01','P',1,'EST-18',92.00,193.00),
	('Adult Male',NULL,NULL,NULL,NULL,'AV-SB-02','P',1,'EST-19',2.00,15.00),
	('Adult Male',NULL,NULL,NULL,NULL,'FI-FW-02','P',1,'EST-20',2.00,5.00),
	('Adult Female',NULL,NULL,NULL,NULL,'FI-FW-02','P',1,'EST-21',1.00,5.00),
	('Adult Male',NULL,NULL,NULL,NULL,'K9-RT-02','P',1,'EST-22',100.00,135.00),
	('Adult Female',NULL,NULL,NULL,NULL,'K9-RT-02','P',1,'EST-23',100.00,145.00),
	('Adult Male',NULL,NULL,NULL,NULL,'K9-RT-02','P',1,'EST-24',92.00,255.00),
	('Adult Female',NULL,NULL,NULL,NULL,'K9-RT-02','P',1,'EST-25',90.00,325.00),
	('Adult Male',NULL,NULL,NULL,NULL,'K9-CW-01','P',1,'EST-26',92.00,125.00),
	('Adult Female',NULL,NULL,NULL,NULL,'K9-CW-01','P',1,'EST-27',90.00,155.00),
	('Adult Female',NULL,NULL,NULL,NULL,'K9-RT-01','P',1,'EST-28',90.00,155.00);

/*!40000 ALTER TABLE `ITEM` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LINEITEM
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LINEITEM`;

CREATE TABLE `LINEITEM` (
  `ITEMID` char(10) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `LINEITEMID` int(11) NOT NULL,
  `ORDERID` int(11) NOT NULL,
  `UNITPRICE` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table ORDER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ORDER`;

CREATE TABLE `ORDER` (
  `BILLADDR1` char(80) DEFAULT NULL,
  `BILLADDR2` char(80) DEFAULT NULL,
  `BILLCITY` char(80) DEFAULT NULL,
  `BILLCOUNTRY` char(20) DEFAULT NULL,
  `BILLSTATE` char(80) DEFAULT NULL,
  `BILLTOFIRSTNAME` char(80) DEFAULT NULL,
  `BILLTOLASTNAME` char(80) DEFAULT NULL,
  `BILLZIP` char(20) DEFAULT NULL,
  `CARDTYPE` char(80) DEFAULT NULL,
  `COURIER` char(80) DEFAULT NULL,
  `CREDITCARD` char(80) DEFAULT NULL,
  `EXPRDATE` char(7) DEFAULT NULL,
  `ORDERDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SHIPADDR1` char(80) DEFAULT NULL,
  `SHIPADDR2` char(80) DEFAULT NULL,
  `SHIPCITY` char(80) DEFAULT NULL,
  `SHIPCOUNTRY` char(20) DEFAULT NULL,
  `SHIPSTATE` char(80) DEFAULT NULL,
  `SHIPTOFIRSTNAME` char(80) DEFAULT NULL,
  `SHIPTOLASTNAME` char(80) DEFAULT NULL,
  `SHIPZIP` char(20) DEFAULT NULL,
  `USERID` char(80) DEFAULT NULL,
  `ORDERID` int(11) NOT NULL,
  `TOTALPRICE` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table ORDERSTATUS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ORDERSTATUS`;

CREATE TABLE `ORDERSTATUS` (
  `STATUS` char(2) DEFAULT NULL,
  `UPDATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LINENUM` int(11) NOT NULL,
  `ORDERID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table PRODUCT
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PRODUCT`;

CREATE TABLE `PRODUCT` (
  `CATEGORY` char(10) NOT NULL,
  `DESCN` varchar(255) DEFAULT NULL,
  `NAME` char(80) DEFAULT NULL,
  `PRODUCTID` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` (`CATEGORY`,`DESCN`,`NAME`,`PRODUCTID`)
VALUES
	('FISH','<image src=\"../images/fish1.jpg\">Salt Water fish from Australia','Angelfish','FI-SW-01'),
	('FISH','<image src=\"../images/fish4.gif\">Salt Water fish from Australia','Tiger Shark','FI-SW-02'),
	('FISH','<image src=\"../images/fish3.gif\">Fresh Water fish from Japan','Koi','FI-FW-01'),
	('FISH','<image src=\"../images/fish2.gif\">Fresh Water fish from China','Goldfish','FI-FW-02'),
	('DOGS','<image src=\"../images/dog2.gif\">Friendly dog from England','Bulldog','K9-BD-01'),
	('DOGS','<image src=\"../images/dog6.gif\">Cute dog from France','Poodle','K9-PO-02'),
	('DOGS','<image src=\"../images/dog5.gif\">Great dog for a Fire Station','Dalmation','K9-DL-01'),
	('DOGS','<image src=\"../images/dog1.gif\">Great family dog','Golden Retriever','K9-RT-01'),
	('DOGS','<image src=\"../images/dog5.gif\">Great hunting dog','Labrador Retriever','K9-RT-02'),
	('DOGS','<image src=\"../images/dog4.gif\">Great companion dog','Chihuahua','K9-CW-01'),
	('REPTILES','<image src=\"../images/lizard3.gif\">Doubles as a watch dog','Rattlesnake','RP-SN-01'),
	('REPTILES','<image src=\"../images/lizard2.gif\">Friendly green friend','Iguana','RP-LI-02'),
	('CATS','<image src=\"../images/cat3.gif\">Great for reducing mouse populations','Manx','FL-DSH-01'),
	('CATS','<image src=\"../images/cat1.gif\">Friendly house cat,doubles as a princess','Persian','FL-DLH-02'),
	('BIRDS','<image src=\"../images/bird4.gif\">Great companion for up to 75 years','Amazon Parrot','AV-CB-01'),
	('BIRDS','<image src=\"../images/bird1.gif\">Great stress reliever','Finch','AV-SB-02');

/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table PROFILE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PROFILE`;

CREATE TABLE `PROFILE` (
  `BANNEROPT` int(11) DEFAULT NULL,
  `FAVCATEGORY` char(30) DEFAULT NULL,
  `LANGPREF` char(80) DEFAULT NULL,
  `MYLISTOPT` int(11) DEFAULT NULL,
  `USER_TYPE` char(80) DEFAULT NULL,
  `USERID` char(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `PROFILE` WRITE;
/*!40000 ALTER TABLE `PROFILE` DISABLE KEYS */;
INSERT INTO `PROFILE` (`BANNEROPT`,`FAVCATEGORY`,`LANGPREF`,`MYLISTOPT`,`USER_TYPE`,`USERID`)
VALUES
	(1,'dogs','English',1,NULL,'wojava'),
	(1,'Fish','English',1,NULL,'kellyk');

/*!40000 ALTER TABLE `PROFILE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SUPPLIER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SUPPLIER`;

CREATE TABLE `SUPPLIER` (
  `ADDR1` char(80) DEFAULT NULL,
  `ADDR2` char(80) DEFAULT NULL,
  `CITY` char(80) DEFAULT NULL,
  `NAME` char(80) DEFAULT NULL,
  `PHONE` char(80) DEFAULT NULL,
  `STATE` char(80) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `ZIP` char(5) DEFAULT NULL,
  `SUPPID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `SUPPLIER` WRITE;
/*!40000 ALTER TABLE `SUPPLIER` DISABLE KEYS */;
INSERT INTO `SUPPLIER` (`ADDR1`,`ADDR2`,`CITY`,`NAME`,`PHONE`,`STATE`,`STATUS`,`ZIP`,`SUPPID`)
VALUES
	('600 Avon Way','','Los Angeles','XYZ Pets','212-947-0797','CA','AC','94024',1),
	('700 Abalone Way','','San Francisco','ABC Pets','415-947-0797','CA','AC','94024',2);

/*!40000 ALTER TABLE `SUPPLIER` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
