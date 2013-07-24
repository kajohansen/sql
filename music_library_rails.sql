# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: music_library32
# Generation Time: 2011-06-14 15:53:59 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table albums
# ------------------------------------------------------------

DROP TABLE IF EXISTS `albums`;

CREATE TABLE `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `release_date` datetime NOT NULL,
  `genre` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `artist_id` int(11) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` (`id`,`title`,`release_date`,`genre`,`created_at`,`updated_at`,`image_path`,`artist_id`,`price`)
VALUES
	(1,'Abbey Road','1969-01-01 12:00:00','Rock','2011-03-14 07:06:00','0000-00-00 00:00:00','abbey_road.jpg',1,9.99),
	(2,'Let it be','1970-01-01 12:00:00','Rock','2011-03-14 07:11:00','0000-00-00 00:00:00','let_it_be.jpg',1,9.99),
	(3,'Fear of Music','1979-01-01 12:00:00','Rock','2011-03-14 07:33:00','0000-00-00 00:00:00','fear_of_music.jpg',2,9.99),
	(4,'Remain in Light','1980-01-01 12:00:00','Rock','2011-03-14 07:39:00','0000-00-00 00:00:00','remain_in_light.jpg',2,9.99),
	(5,'My Generation','1965-01-01 12:00:00','Rock','2011-03-14 07:54:00','0000-00-00 00:00:00','my_generation.jpg',3,9.99),
	(6,'Tommy','1969-01-01 12:00:00','Rock','2011-03-14 08:15:00','0000-00-00 00:00:00','tommy.jpg',3,9.99),
	(7,'A Shot of Love','1981-01-01 12:00:00','Rock','2011-03-14 08:21:00','0000-00-00 00:00:00','a_shot_of_love.jpg',4,9.99),
	(8,'Highway 61 revisited','1965-01-01 12:00:00','Rock','2011-03-14 08:45:00','0000-00-00 00:00:00','highway_61_revisited.jpg',4,9.99),
	(9,'Strange days','1967-01-01 12:00:00','Rock','2011-03-14 08:48:00','0000-00-00 00:00:00','strange_days.jpg',5,9.99),
	(10,'The Soft parade','1969-01-01 12:00:00','Rock','2011-03-14 09:23:00','0000-00-00 00:00:00','the_soft_parade.jpg',5,9.99),
	(11,'Aftermath','1966-01-01 12:00:00','Rock','2011-03-14 09:30:00','0000-00-00 00:00:00','aftermath.jpg',6,9.99),
	(12,'Beggars Banquet','1968-01-01 12:00:00','Rock','2011-03-15 05:25:00','0000-00-00 00:00:00','beggars_banquet.jpg',6,9.99),
	(13,'Electric Ladyland','1968-01-01 12:00:00','Rock','2011-03-14 09:04:00','0000-00-00 00:00:00','electric_ladyland.jpg',7,9.99),
	(15,'Are you Experienced','1967-05-12 12:00:00','Rock','2011-03-14 07:05:00','0000-00-00 00:00:00','are_you_experienced.jpg',7,9.99),
	(16,'Bloodflowers','2000-01-01 12:00:00','Rock','2011-03-14 09:31:00','0000-00-00 00:00:00','bloodflowers.jpg',8,9.99),
	(17,'Disintegration','1989-01-01 12:00:00','Rock','2011-03-14 09:22:00','0000-00-00 00:00:00','disintegration.jpg',8,9.99),
	(18,'Born to run','1975-01-01 12:00:00','Rock','2011-03-14 09:22:00','0000-00-00 00:00:00','born_to_run.jpg',9,9.99),
	(20,'The River','1980-01-01 12:00:00','Rock','2011-03-14 10:21:00','0000-00-00 00:00:00','the_river.jpg',9,9.99),
	(21,'Yellow Submarine','1969-01-01 10:23:00','Rock','2011-03-14 10:23:00','0000-00-00 00:00:00','yellow_submarine.jpg',1,9.99),
	(22,'Led Zeppelin II','1969-01-01 10:38:00','Rock','2011-03-14 10:38:00','0000-00-00 00:00:00','led_zeppelin_II.jpg',10,9.99),
	(23,'Led Zeppelin IV','1971-01-01 10:38:00','Rock','2011-03-14 10:38:00','0000-00-00 00:00:00','led_zeppelin_IV.jpg',10,9.99),
	(24,'Houses of the Holy','1973-01-01 12:35:00','Rock','2011-03-14 12:35:00','0000-00-00 00:00:00','houses_of_the_holy.jpg',10,9.99),
	(25,'Hard Rain','1976-01-01 04:59:00','Rock','2011-03-15 04:59:00','0000-00-00 00:00:00','hard_rain.jpg',4,9.99),
	(26,'Singles 1963-1965','2004-01-01 05:08:00','Rock','2011-03-15 05:08:00','0000-00-00 00:00:00','singles_1963_1965.jpg',6,19.99),
	(27,'She a Rainbow','2008-01-15 05:18:00','Rock','2011-03-15 05:18:00','0000-00-00 00:00:00','shes_a_rainbow.jpg',6,9.99);

/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table albums_features
# ------------------------------------------------------------

DROP TABLE IF EXISTS `albums_features`;

CREATE TABLE `albums_features` (
  `album_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `albums_features` WRITE;
/*!40000 ALTER TABLE `albums_features` DISABLE KEYS */;
INSERT INTO `albums_features` (`album_id`,`feature_id`)
VALUES
	(3,3),
	(18,1),
	(3,1),
	(20,1),
	(6,1),
	(7,1),
	(1,1),
	(2,1),
	(24,2),
	(24,1),
	(9,1),
	(9,9),
	(11,1),
	(11,9),
	(4,1),
	(5,1),
	(8,5),
	(10,1),
	(25,1),
	(25,3),
	(26,1),
	(26,4),
	(23,1),
	(27,7),
	(12,1),
	(13,5),
	(15,1),
	(6,11);

/*!40000 ALTER TABLE `albums_features` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table artists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `artists`;

CREATE TABLE `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `active_years` varchar(20) DEFAULT NULL,
  `biography` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` (`id`,`name`,`active_years`,`biography`,`created_at`,`updated_at`)
VALUES
	(1,'The Beatles','1960-1970','most critically acclaimed and successful pop groups in history.','2011-03-13 06:27:00','2011-03-18 09:55:32'),
	(2,'The Talking Heads','1974-1991','Rock sensibilities with pop, funk, world music, and art school intellectualism.','2011-03-13 06:30:00','2011-03-14 10:11:53'),
	(3,'The Who','1964-2010','The Who are an English rock band formed in 1964. They became known for energetic live performances which often included instrument destruction.','2011-03-13 06:43:10','2011-03-13 06:43:10'),
	(4,'Bob Dylan','1962-present','American singer-songwriter, poet, and painter. He has been a major figure in music for five decades.','2011-03-13 06:46:34','2011-03-13 06:46:34'),
	(5,'The Doors','1965-1971','The Doors were an American rock band formed in 1965 in Los Angeles, California, with vocalist Jim Morrison.','2011-03-13 07:08:53','2011-03-13 07:08:53'),
	(6,'The Rolling Stones','1962-present','The Rolling Stones are an English rock band formed in London.','2011-03-13 07:11:46','2011-03-13 07:11:46'),
	(7,'Jimmy Hendrix','1967-1970','He is widely considered to be the greatest electric guitarist in musical history, and one of the most influential musicians of his era across a range of genres.','2011-03-14 05:04:01','2011-03-14 05:04:01'),
	(8,'The Cure','1976-present','The band has experienced several line-up changes, with frontman, vocalist, guitarist and principal songwriter Robert Smith being the only constant member.','2011-03-14 05:07:35','2011-03-14 05:07:35'),
	(9,'Bruce Springsteen','1972-present','Bruce Frederick Joseph Springsteen, nicknamed \"The Boss\", is an American singer-songwriter who records and tours with the E Street Band.','2011-03-14 05:09:36','2011-03-14 05:09:36'),
	(10,'Led Zeppelin','1968-1980','Led Zeppelin did not release songs from their albums as singles in the United Kingdom, as they preferred to develop the concept of \"album-oriented rock\".','2011-03-14 10:36:00','2011-03-14 10:37:41');

/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`,`first_name`,`last_name`,`zip_code`,`created_at`,`updated_at`)
VALUES
	(3,'Karl','Johansen',28008,'2011-03-15 13:51:58','2011-03-15 13:51:58'),
	(4,'Aud ','Riis',738,'2011-03-15 14:16:42','2011-03-15 14:16:42');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table features
# ------------------------------------------------------------

DROP TABLE IF EXISTS `features`;

CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` (`id`,`name`)
VALUES
	(1,'CD'),
	(2,'Double CD'),
	(3,'LIVE'),
	(4,'BOX Set'),
	(5,'Vinyl'),
	(6,'EP'),
	(7,'Single'),
	(8,'Greatest Hits'),
	(9,'Remastered'),
	(10,'LP'),
	(11,'Deluxe Edition');

/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table line_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `line_items`;

CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `quantity` bigint(20) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`,`invoice_number`,`created_at`,`updated_at`,`customer_id`)
VALUES
	(1,'','2011-03-15 13:51:58','2011-03-15 13:51:58',3),
	(2,'','2011-03-15 14:16:42','2011-03-15 14:16:42',4);

/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` (`version`)
VALUES
	('20110409143909'),
	('20110409155406'),
	('20110409162252'),
	('20110409162729'),
	('20110409162943'),
	('20110409163340'),
	('20110409163546'),
	('20110409164409'),
	('20110410054155'),
	('20110410073927'),
	('20110410080507'),
	('20110411053139');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `hashed_password` varchar(40) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`name`,`hashed_password`,`salt`,`created_at`,`updated_at`)
VALUES
	(2,'Test','c57f121d89a27cd19f813131436cff8130b2b879','53a55b69960a503869d6ba90df0381ed0b22d296','2011-04-11 13:34:04','2011-04-11 13:34:04'),
	(3,'kajohansen','7a049fdb600dcf219e5cef20c2fbb5903280f596','1042cae540921a2ce5dc237e75bef1baaf28c8ec','2011-04-11 13:36:44','2011-04-11 13:36:44');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
