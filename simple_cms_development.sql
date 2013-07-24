# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: simple_cms_development
# Generation Time: 2011-06-14 15:55:44 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table admin_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `salt` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_users_on_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` (`id`,`first_name`,`last_name`,`email`,`hashed_password`,`created_at`,`updated_at`,`username`,`salt`)
VALUES
	(1,'Karl Andreas','Johansen','kajohansen.1@gmail.com','add36b518780e5096a23fdde1abcf48919acf953','2011-03-24 16:07:48','2011-03-27 08:19:01','kajohansen','0f1cffdae3ea3218966d698b1b7f4f820d80882e'),
	(3,'Test','User Updated','test@user.com','f3c6e9fd897cf307f861f067e08937bbef3a6d39','2011-03-27 14:48:20','2011-03-27 14:48:37','testuser','0a8bd5c1d90ab1222819d6332dddaf012062ca18');

/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table admin_users_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `admin_users_pages`;

CREATE TABLE `admin_users_pages` (
  `admin_user_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  KEY `index_admin_users_pages_on_admin_user_id_and_page_id` (`admin_user_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `admin_users_pages` WRITE;
/*!40000 ALTER TABLE `admin_users_pages` DISABLE KEYS */;
INSERT INTO `admin_users_pages` (`admin_user_id`,`page_id`)
VALUES
	(1,3),
	(1,4),
	(1,5),
	(1,6),
	(1,7),
	(1,8);

/*!40000 ALTER TABLE `admin_users_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_subject_id` (`subject_id`),
  KEY `index_pages_on_permalink` (`permalink`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`,`subject_id`,`name`,`permalink`,`position`,`visible`,`created_at`,`updated_at`)
VALUES
	(3,1,'First Page updated','setup_one',2,1,'2011-03-25 03:40:25','2011-03-28 11:06:26'),
	(4,1,'Second Page','setup_two',1,0,'2011-03-25 03:42:40','2011-03-28 11:06:03'),
	(5,2,'Third Page','revised_one',1,1,'2011-03-25 03:54:15','2011-03-28 11:07:24'),
	(6,2,'Fourth Page','revised_two',2,1,'2011-03-25 03:54:58','2011-03-28 11:07:34'),
	(7,4,'Fifth Page','ruby_one',1,1,'2011-03-25 03:58:11','2011-03-28 11:08:33'),
	(8,4,'Sixth Page','ruby_two',2,1,'2011-03-25 03:58:11','2011-03-28 11:08:43'),
	(15,12,'Flash Page new admin test','flash',1,1,'2011-03-28 06:51:14','2011-03-28 11:00:25'),
	(16,1,'Third page','setup_three',3,1,'2011-03-28 08:21:08','2011-03-28 11:05:03');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
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
	('20110324104848'),
	('20110324112137'),
	('20110324114225'),
	('20110324114235'),
	('20110324114241'),
	('20110325041701'),
	('20110325052621');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table section_edits
# ------------------------------------------------------------

DROP TABLE IF EXISTS `section_edits`;

CREATE TABLE `section_edits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_user_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_section_edits_on_admin_user_id_and_section_id` (`admin_user_id`,`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `section_edits` WRITE;
/*!40000 ALTER TABLE `section_edits` DISABLE KEYS */;
INSERT INTO `section_edits` (`id`,`admin_user_id`,`section_id`,`summary`,`created_at`,`updated_at`)
VALUES
	(1,1,1,'Test Edit','2011-03-25 05:40:10','2011-03-25 05:41:07'),
	(2,1,2,'Test Edit 2','2011-03-25 05:44:49','2011-03-25 05:44:49');

/*!40000 ALTER TABLE `section_edits` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sections`;

CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `content_type` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sections_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` (`id`,`page_id`,`name`,`position`,`visible`,`content_type`,`text`,`created_at`,`updated_at`)
VALUES
	(1,3,'Section One',1,1,'HTML','Some Sample Text','2011-03-25 04:07:39','2011-03-27 06:24:34'),
	(2,3,'Section Two',2,1,'text','Some Sample Text','2011-03-25 04:07:39','2011-03-25 04:07:39'),
	(3,4,'Section Three',2,1,'text','Some Sample Text','2011-03-25 04:08:02','2011-03-28 10:04:46'),
	(4,4,'Section Four',1,1,'text','Some Sample Text','2011-03-25 04:08:02','2011-03-28 10:04:33'),
	(5,5,'Section Five',1,1,'text','Some Sample Text','2011-03-25 04:08:16','2011-03-28 10:07:44'),
	(6,5,'Section Six',2,1,'text','Some Sample Text','2011-03-25 04:08:16','2011-03-28 10:07:49'),
	(7,6,'Section Seven',1,1,'text','Some Sample Text','2011-03-25 04:08:34','2011-03-28 10:08:13'),
	(8,6,'Section Eigth',2,1,'text','Some Sample Text','2011-03-25 04:08:34','2011-03-28 10:08:18'),
	(9,7,'Section Nine',1,1,'text','Some Sample Text','2011-03-25 04:08:54','2011-03-28 10:08:41'),
	(10,7,'Section Ten',2,1,'text','Some Sample Text','2011-03-25 04:08:54','2011-03-28 10:08:46'),
	(11,8,'Section Eleven',1,1,'HTML','Ruby on Rails is a breakthrough in lowering the <br/>barriers of entry to programming.\r\nPowerful web applications that formerly might have<br/> taken weeks or months\r\nto develop can be produced in a matter of days.<br/>\r\n<i>-Tim O\'Reilly, Founder of O\'Reilly Media </i>','2011-03-25 04:09:15','2011-03-28 11:16:35'),
	(12,8,'Section Twelve',2,1,'HTML','<a href=\"http://rubyonrails.org\">Ruby on Rails home site</a>','2011-03-25 04:09:15','2011-03-28 11:16:01'),
	(15,15,'Flash section one',1,1,'HTML','Now seriously, missing method for \'content\', check the model!! now updated.','2011-03-28 08:23:22','2011-03-28 08:49:18'),
	(18,16,'Section One',1,1,'HTML','<strong>Section added</strong> after move_to_position was implemented\r\n','2011-03-28 10:05:48','2011-03-28 11:02:38');

/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subjects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subjects`;

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` (`id`,`name`,`position`,`visible`,`created_at`,`updated_at`)
VALUES
	(1,'Initial Set up',1,1,'2011-03-24 12:32:29','2011-03-28 11:04:26'),
	(2,'Revised Projects',2,1,'2011-03-24 12:35:36','2011-03-28 11:06:56'),
	(4,'Ruby on Rails',3,1,'2011-03-24 15:51:23','2011-03-28 11:08:14'),
	(12,'Flash test updated',4,0,'2011-03-25 08:56:24','2011-03-28 10:07:12');

/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;





/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
