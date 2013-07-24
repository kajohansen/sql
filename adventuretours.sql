# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: adventuretours
# Generation Time: 2011-06-14 15:50:22 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ratings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ratings`;

CREATE TABLE `ratings` (
  `rating_id` int(11) NOT NULL,
  `rating_description` varchar(255) DEFAULT NULL,
  `rating_image` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` (`rating_id`,`rating_description`,`rating_image`)
VALUES
	(0,NULL,NULL),
	(1,'Easy','rating1.gif'),
	(2,'Easy to Moderate','rating2.gif'),
	(3,'Moderate','rating3.gif'),
	(4,'Moderate to Advanced','rating4.gif'),
	(5,'Advanced','rating5.gif');

/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tours
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tours`;

CREATE TABLE `tours` (
  `tour_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `activities` varchar(255) NOT NULL,
  `length` varchar(20) NOT NULL,
  `accommodations` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `activity_code` varchar(20) NOT NULL,
  `region_code` varchar(20) NOT NULL,
  `home_image` varchar(30) NOT NULL,
  `compare_image` varchar(40) NOT NULL,
  PRIMARY KEY (`tour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` (`tour_id`,`title`,`rating_id`,`activities`,`length`,`accommodations`,`price`,`activity_code`,`region_code`,`home_image`,`compare_image`)
VALUES
	(1,'surf the gold coast',4,'Surf the wild waves. Amateurs, heavies, and legends come out for the good vibes.','4 days, 5 nights','A beautiful cabana on the beach',860,'Surfing','Gold Coast','surftour_home.png','surftour_compare.png'),
	(2,'skydive over tasmania',2,'It\'s the world\'s best commute, with reality coming at you at terminal velocity.','5 days, 6 nights','Super duper hotel with exquisite spa',1430,'Skydiving','Tasmania','skydivetour_home.png','skydivetour_compare.png'),
	(3,'great barrier reef dive',1,'Some of the finest and most exotic scuba diving and snorkeling in the world.','2 days','A tent on the beach',225,'Diving','Great Barrier Reef','scubadivetour_home.png','scubadivetour_compare.png');

/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
