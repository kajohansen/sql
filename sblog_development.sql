# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: sblog_development
# Generation Time: 2011-06-14 15:55:31 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table blog_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog_posts`;

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `comments_count` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_blog_posts_on_author_id` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
INSERT INTO `blog_posts` (`id`,`title`,`content`,`author_id`,`status`,`created_at`,`updated_at`,`comments_count`)
VALUES
	(1,'My test post','This is the body of my test post Lets see if auto_link works : http://apple.com',1,'published','2011-03-12 12:00:00','2011-03-23 07:55:37',2),
	(2,'Test from console','Testing IRB from script/console..',1,'published','2011-03-21 06:35:00','2011-03-23 07:47:34',2),
	(3,'Post testing M2M relationship','Got an SQL duplicate PRIMARY KEY error, now checking with fresh post..',1,'published','2011-03-21 07:20:00','2011-03-23 07:47:43',1),
	(4,'Counter Cache test','Counter cache with format posts_count in SQLtable and with :counter_cache => true in posts table',2,'published','2011-03-21 10:43:00','2011-03-23 07:50:01',0),
	(5,'Testing HTML form','Also testing select Author pop-up created at and Status, still to be implemented is the Category selector.auto_link here too : http://rubyonrails.org',1,'published','2011-03-21 15:57:00','2011-03-23 07:57:06',2),
	(6,'HTML form test 2','Checking to see if user exists in database before saving, by pulling the user params for the user, then delete and cache the user id and then doing a find on the database for the id. now editing it!',2,'published','2011-03-21 16:04:00','2011-03-23 07:50:23',1),
	(7,'Post verifying that new post still works','After doing so much editing I hope I got it with the @all_categories = get_all_categories added to the new method',5,'published','2011-03-23 15:33:00','2011-03-23 15:35:53',0);

/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `short_name` varchar(25) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`,`name`,`short_name`,`description`)
VALUES
	(1,'General','MyGeneral','Posts about testing Ruby db ActiveRecord'),
	(2,'My Category','MyCat','Category now updated with turnary operator ? this : that'),
	(3,'HTML form test category','HTMLtest','Moving categories CRUD to one(this) page');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories_posts`;

CREATE TABLE `categories_posts` (
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `index_categories_posts_on_category_id` (`category_id`),
  KEY `index_categories_posts_on_post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

LOCK TABLES `categories_posts` WRITE;
/*!40000 ALTER TABLE `categories_posts` DISABLE KEYS */;
INSERT INTO `categories_posts` (`category_id`,`post_id`,`id`)
VALUES
	(1,1,2),
	(1,3,3),
	(2,5,5),
	(1,6,6),
	(2,6,7),
	(2,4,8),
	(3,7,9);

/*!40000 ALTER TABLE `categories_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `author` varchar(25) NOT NULL DEFAULT '',
  `author_email` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(25) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`,`content`,`author`,`author_email`,`status`,`created_at`,`post_id`)
VALUES
	(1,'I saw Your post..','Steve Jones','steve@jones.com','spam','2011-03-21 08:12:22',1),
	(2,'Keep up the good work.','Jane Doe','jane@doe.com','approved','2011-03-21 08:18:18',1),
	(3,'Im interested in hearing more.','Bob Rich','bob@rich.com','approved','2011-03-21 08:54:36',2),
	(4,'This is a post with more than 90 characters to test out the read more function of the comments list page to display in the comments show page. Dont take this comment as anything personal, its just text and nothing intential about it. to finish off im not sure when I have reched 90 characters but I hope that now I have reached my goal. So thats it for now.','John Doe','john@doe.com','approved','2011-03-22 12:30:40',2),
	(5,'Interesting proposal, I want to take you up on that!','Jack Smith','jack@smith.com','approved','2011-03-23 04:17:05',3),
	(6,'This is my HTML test comment. Hope it works!','John Public','jp@test.com','approved','2011-03-23 11:13:34',6),
	(7,'Now testing some validations in comment.rb','Tom Smith','ts@test.com','approved','2011-03-23 14:12:44',5),
	(8,'Tom Smith now wants to check out the author_email string validation done with regular expressions.','Tom Smith','ts@test.no','approved','2011-03-23 14:18:12',5);

/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table disp_users
# ------------------------------------------------------------

DROP VIEW IF EXISTS `disp_users`;

CREATE TABLE `disp_users` (
   `FullName` VARCHAR(101) NOT NULL DEFAULT ''
) ENGINE=MyISAM;;



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
	('20110412061920'),
	('20110412064130'),
	('20110412064140'),
	('20110412070417'),
	('20110412071404'),
	('20110412071743'),
	('20110412072458'),
	('20110414075616'),
	('20110414080750'),
	('20110414131246');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `display_name` varchar(25) DEFAULT '',
  `user_level` tinyint(4) NOT NULL DEFAULT '0',
  `posts_count` mediumint(9) NOT NULL DEFAULT '0',
  `salt` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`username`,`hashed_password`,`first_name`,`last_name`,`email`,`display_name`,`user_level`,`posts_count`,`salt`)
VALUES
	(1,'kajohansen','04c9f22839553e00c35193c720f1967dc8194563','Karl','Johansen','kajohansen.1@gmail.com','kalle',3,4,'1edb0e8073ca167794090aef2b745305dee5da45'),
	(2,'testuser','9d7e2a48c05c836f861d20f8595db2b8b019adae','Test','User','test@user.com','tuser',1,2,'17d3cbbd14daa8fd9efbb4b5cb57582e2d1e052f'),
	(3,'admin','2218e2425106b231751c7a6b4dc3014bf680af33','Admin','Istrator','admin@istrator.com','Administrator',9,0,'ce4befce508304c7c50accce62f70a97ed2b39ce'),
	(4,'bwatson','7b1ddaa25d201d91ae920fd015ba07da0220af0a','Barbara','Watson','barb@wats.com','bwatson',1,0,'a01be0e04c095db339aced189886b8ab9cb5e950'),
	(5,'bildo','ac570ce368e223df404d7ad3950b91112facc36c','Larry','Donaldson','bill@dona.com','bildo',1,1,'1d14284c4eef91d50f24c72804eef34a2cf0a960'),
	(7,'salthasheduser','4cc2422ffe4ed433b0e1cbe4527d0b3779ec7ae5','Salt Hashed','User','salthashed@user.com','SHU',1,0,'07ab4a5dcd5a0dd57ed4b12b7730a41f89a0d211');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;




DROP TABLE `disp_users`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `disp_users`
AS select
   concat(`users`.`first_name`,' ',`users`.`last_name`) AS `FullName`
from `users`;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
