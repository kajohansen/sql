# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: CrazyEights
# Generation Time: 2011-06-14 15:47:20 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table CARD
# ------------------------------------------------------------

DROP TABLE IF EXISTS `CARD`;

CREATE TABLE `CARD` (
  `CARD_ID` int(11) NOT NULL DEFAULT '0',
  `FILENAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `RANK` varchar(50) DEFAULT NULL,
  `SUIT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CARD_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `CARD` WRITE;
/*!40000 ALTER TABLE `CARD` DISABLE KEYS */;
INSERT INTO `CARD` (`CARD_ID`,`FILENAME`,`NAME`,`RANK`,`SUIT`)
VALUES
	(1,'hjerteratte.png','hjerter åtte','8','hearts'),
	(2,'hjerterdam.png','hjerter dame','12','hearts'),
	(3,'hjerteress.png','hjerter ess','14','hearts'),
	(4,'hjerterfem.png','hjerter fem','5','hearts'),
	(5,'hjerterfire.png','hjerter fire','4','hearts'),
	(6,'hjerterknekt.png','hjerter knekt','11','hearts'),
	(7,'hjerterkong.png','hjerter konge','13','hearts'),
	(8,'hjerterni.png','hjerter ni','9','hearts'),
	(9,'hjerterseks.png','hjerter seks','6','hearts'),
	(10,'hjertersju.png','hjerter sju','7','hearts'),
	(11,'hjerterti.png','hjerter ti','10','hearts'),
	(12,'hjerterto.png','hjerter to','2','hearts'),
	(13,'hjertertre.png','hjerter tre','3','hearts'),
	(14,'kloveratte.png','kløver åtte','8','klubs'),
	(15,'kloverdam.png','kløver dame','12','klubs'),
	(16,'kloveress.png','kløver ess','14','klubs'),
	(17,'kloverfem.png','kløver fem','5','klubs'),
	(18,'kloverfire.png','kløver fire','4','klubs'),
	(19,'kloverknekt.png','kløver knekt','11','klubs'),
	(20,'kloverkong.png','kløver konge','13','klubs'),
	(21,'kloverni.png','kløver ni','9','klubs'),
	(22,'kloverseks.png','klover seks','6','klubs'),
	(23,'kloversju.png','kløver sju','7','klubs'),
	(24,'kloverti.png','kløver ti','10','klubs'),
	(25,'kloverto.png','kløver to','2','klubs'),
	(26,'klovertre.png','kløver tre','3','klubs'),
	(27,'ruteratte.png','ruter åtte','8','diamonds'),
	(28,'ruterdam.png','ruter dame','12','diamonds'),
	(29,'ruteress.png','ruter ess','14','diamonds'),
	(30,'ruterfem.png','ruter fem','5','diamonds'),
	(31,'ruterfire.png','ruter fire','4','diamonds'),
	(32,'ruterknekt.png','ruter knekt','11','diamonds'),
	(33,'ruterkong.png','ruter konge','13','diamonds'),
	(34,'ruterni.png','ruter ni','9','diamonds'),
	(35,'ruterseks.png','ruter seks','6','diamonds'),
	(36,'rutersju.png','ruter sju','7','diamonds'),
	(37,'ruterti.png','ruter ti','10','diamonds'),
	(38,'ruterto.png','ruter to','2','diamonds'),
	(39,'rutertre.png','ruter tre','3','diamonds'),
	(40,'sparatte.png','spar åtte','8','spades'),
	(41,'spardam.png','spar dame','12','spades'),
	(42,'sparess.png','spar ess','14','spades'),
	(43,'sparfem.png','spar fem','5','spades'),
	(44,'sparfire.png','spar fire','4','spades'),
	(45,'sparknekt.png','spar knekt','11','spades'),
	(46,'sparkong.png','spar konge','13','spades'),
	(47,'sparni.png','spar ni','9','spades'),
	(48,'sparseks.png','spar seks','6','spades'),
	(49,'sparsju.png','spar sju','7','spades'),
	(50,'sparti.png','spar ti','10','spades'),
	(51,'sparto.png','spar to','2','spades'),
	(52,'spartre.png','spar tre','3','spades');

/*!40000 ALTER TABLE `CARD` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EO_PK_TABLE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EO_PK_TABLE`;

CREATE TABLE `EO_PK_TABLE` (
  `NAME` char(40) NOT NULL DEFAULT '',
  `PK` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;






/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
