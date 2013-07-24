# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: collabtive
# Generation Time: 2011-06-14 15:51:04 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table chat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) NOT NULL DEFAULT '',
  `ufrom` varchar(255) NOT NULL DEFAULT '',
  `ufrom_id` int(10) NOT NULL DEFAULT '0',
  `userto` varchar(255) NOT NULL DEFAULT '',
  `userto_id` int(10) NOT NULL DEFAULT '0',
  `text` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table company
# ------------------------------------------------------------

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table company_assigned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `company_assigned`;

CREATE TABLE `company_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `company` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `company` (`company`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `project` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  `user` int(10) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `added` varchar(255) NOT NULL DEFAULT '',
  `datei` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `folder` int(10) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `datei` (`datei`),
  KEY `added` (`added`),
  KEY `project` (`project`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table files_attached
# ------------------------------------------------------------

DROP TABLE IF EXISTS `files_attached`;

CREATE TABLE `files_attached` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` int(10) unsigned NOT NULL DEFAULT '0',
  `message` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `file` (`file`,`message`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `action` int(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `datum` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `datum` (`datum`),
  KEY `type` (`type`),
  KEY `action` (`action`),
  FULLTEXT KEY `username` (`username`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `posted` varchar(255) NOT NULL DEFAULT '',
  `user` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `replyto` int(11) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`),
  KEY `user` (`user`),
  KEY `replyto` (`replyto`),
  KEY `tags` (`tags`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table milestones
# ------------------------------------------------------------

DROP TABLE IF EXISTS `milestones`;

CREATE TABLE `milestones` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `name` (`name`),
  KEY `end` (`end`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table milestones_assigned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `milestones_assigned`;

CREATE TABLE `milestones_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table projectfolders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projectfolders`;

CREATE TABLE `projectfolders` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `visible` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `project` (`project`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table projekte
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projekte`;

CREATE TABLE `projekte` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `budget` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table projekte_assigned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `projekte_assigned`;

CREATE TABLE `projekte_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `projekt` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `projekt` (`projekt`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `projects` text NOT NULL,
  `tasks` text NOT NULL,
  `milestones` text NOT NULL,
  `messages` text NOT NULL,
  `files` text NOT NULL,
  `chat` text NOT NULL,
  `timetracker` text NOT NULL,
  `admin` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table roles_assigned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles_assigned`;

CREATE TABLE `roles_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL,
  `role` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `ID` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `subtitle` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `timezone` varchar(60) DEFAULT NULL,
  `dateformat` varchar(50) DEFAULT NULL,
  `template` varchar(255) DEFAULT '',
  `mailnotify` tinyint(1) DEFAULT '1',
  `mailfrom` varchar(255) DEFAULT NULL,
  `mailfromname` varchar(255) DEFAULT NULL,
  `mailmethod` varchar(5) DEFAULT NULL,
  `mailhost` varchar(255) DEFAULT NULL,
  `mailuser` varchar(255) DEFAULT NULL,
  `mailpass` varchar(255) DEFAULT NULL,
  `rssuser` varchar(255) DEFAULT NULL,
  `rsspass` varchar(255) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `name` (`name`),
  KEY `subtitle` (`subtitle`),
  KEY `locale` (`locale`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`ID`,`name`,`subtitle`,`locale`,`timezone`,`dateformat`,`template`,`mailnotify`,`mailfrom`,`mailfromname`,`mailmethod`,`mailhost`,`mailuser`,`mailpass`,`rssuser`,`rsspass`)
VALUES
	(0,'Collabtive','Projectmanagement','en','Europe/Berlin','d.m.Y','standard',1,'collabtive@localhost',NULL,'mail',NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tasklist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasklist`;

CREATE TABLE `tasklist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `project` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `start` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `access` tinyint(4) NOT NULL DEFAULT '0',
  `milestone` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `status` (`status`),
  KEY `milestone` (`milestone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `start` varchar(255) NOT NULL DEFAULT '',
  `end` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `liste` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `liste` (`liste`),
  KEY `status` (`status`),
  KEY `end` (`end`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table tasks_assigned
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasks_assigned`;

CREATE TABLE `tasks_assigned` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`),
  KEY `task` (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table timetracker
# ------------------------------------------------------------

DROP TABLE IF EXISTS `timetracker`;

CREATE TABLE `timetracker` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `user` int(10) NOT NULL DEFAULT '0',
  `project` int(10) NOT NULL DEFAULT '0',
  `task` int(10) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `started` varchar(255) NOT NULL DEFAULT '',
  `ended` varchar(255) NOT NULL DEFAULT '',
  `hours` float NOT NULL DEFAULT '0',
  `pstatus` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user` (`user`,`project`,`task`),
  KEY `started` (`started`),
  KEY `ended` (`ended`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `tel1` varchar(255) DEFAULT NULL,
  `tel2` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT '',
  `company` varchar(255) DEFAULT '',
  `lastlogin` varchar(255) DEFAULT '',
  `zip` varchar(10) DEFAULT NULL,
  `gender` char(1) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `adress` varchar(255) DEFAULT '',
  `adress2` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `locale` varchar(6) DEFAULT '',
  `avatar` varchar(255) DEFAULT '',
  `rate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `name` (`name`),
  KEY `pass` (`pass`),
  KEY `locale` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;






/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
