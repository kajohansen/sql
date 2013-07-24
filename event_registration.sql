-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema event_registration
--

CREATE DATABASE IF NOT EXISTS event_registration;
USE event_registration;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `AdminID` int(10) NOT NULL auto_increment,
  `AdminUsername` varchar(50) default NULL,
  `AdminPassword` varchar(50) default NULL,
  PRIMARY KEY  (`AdminID`),
  KEY `ID` (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `presentations`
--

DROP TABLE IF EXISTS `presentations`;
CREATE TABLE `presentations` (
  `PresentID` int(10) NOT NULL auto_increment,
  `PresentName` varchar(50) default NULL,
  `PresentDescShort` varchar(50) default NULL,
  `PresentDescFull` longtext,
  `PresentDate` datetime default NULL,
  `PresentSpeaker` varchar(50) default NULL,
  `PresentDuration` int(10) default NULL,
  `PresentPic` varchar(50) default NULL,
  `PresentDay` int(10) default NULL,
  PRIMARY KEY  (`PresentID`),
  KEY `SessionID` (`PresentID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presentations`
--

/*!40000 ALTER TABLE `presentations` DISABLE KEYS */;
INSERT INTO `presentations` (`PresentID`,`PresentName`,`PresentDescShort`,`PresentDescFull`,`PresentDate`,`PresentSpeaker`,`PresentDuration`,`PresentPic`,`PresentDay`) VALUES 
 (1,'Getting Started in Realty','Your first steps in starting as a realtor','Everything you need to know about getting going as a realtor. This session will cover the basic steps of getting your license, working with your first sellers, and tips on closing your first sale.','2008-03-01 09:00:00','John Eversol',1,'john_eversol.gif',1),
 (2,'Real Estate 2.0: Marketing Online','Tips and tricks for real estate Web sites','A nitty-gritty exploration of the best online real estate sites--and how you can replicate their success! A great intro for the less than technically inclined.','2008-03-01 10:00:00','Patti Jefferson',1,'patti_jefferson.gif',1),
 (3,'Green RE - Wave of the Future?','The environmentally sound real estate company','The environmental movement has come to the real estate industry. Learn how to cope with the increasing demands and benefits for going green.','2008-03-01 13:00:00','Jeffery Meyer',2,'jeffrey_meyer.gif',1),
 (4,'Resorts and Realty','Jump into this new field early!','Want a hot new market for your real estate needs? Check out what\'s happening on the resort front! You\'ll be amazed at the breadth of opportunities for both business and fun!','2008-03-02 09:00:00','Patti Jefferson',1,'patti_jefferson.gif',2),
 (5,'Luxury Realty: Market Deluxe','Marketing to the upperclass lifestyle','It\'s every realtor\'s dream: landing a multi-million dollar sale, with a six figure commision. Take a tip or two from one of the country\'s leading realtors to the rich and work your way up the ladder of success.','2008-03-02 10:00:00','Simon Browne',1,'simon_browne.gif',2),
 (6,'No Cost Marketing','Low budget techniques for getting business','Build an effective marketing campaign for your RE office with little or no money. You\'ll also learn how to avoid common marketing mistakes that cost you money.','2008-03-02 13:00:00','J. P. Smithee',2,'jp_smithee.gif',2);
/*!40000 ALTER TABLE `presentations` ENABLE KEYS */;


--
-- Definition of table `registrants`
--

DROP TABLE IF EXISTS `registrants`;
CREATE TABLE `registrants` (
  `RegID` int(10) NOT NULL auto_increment,
  `RegFirstName` varchar(30) default NULL,
  `RegLastName` varchar(50) default NULL,
  `RegEmail` varchar(50) default NULL,
  `RegEvent` varchar(50) default NULL,
  `RegDay` int(10) NOT NULL,
  PRIMARY KEY  (`RegID`),
  KEY `ContactLastName` (`RegLastName`),
  KEY `EmailAddress` (`RegEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrants`
--

/*!40000 ALTER TABLE `registrants` DISABLE KEYS */;
INSERT INTO `registrants` (`RegID`,`RegFirstName`,`RegLastName`,`RegEmail`,`RegEvent`,`RegDay`) VALUES 
 (1,'Allen','Warren','awarren@bigbrowd.com','Realty Conference',-1),
 (2,'Fred','Templeton','ftemp@bigsky.com','Realty Conference',2),
 (3,'Sally','Newman','snewman@newmanesq.com','Realty Conference',-1);
/*!40000 ALTER TABLE `registrants` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
