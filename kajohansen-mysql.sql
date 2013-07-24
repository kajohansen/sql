/*
 Navicat MySQL Data Transfer

 Source Server         : localConn
 Source Server Version : 50610
 Source Host           : localhost
 Source Database       : kajohansen

 Target Server Version : 50610
 File Encoding         : utf-8

 Date: 07/24/2013 17:40:59 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `client_form_line_items`
-- ----------------------------
DROP TABLE IF EXISTS `client_form_line_items`;
CREATE TABLE `client_form_line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` double(30,0) DEFAULT NULL,
  `this_is` varchar(255) DEFAULT NULL,
  `looking_for` varchar(255) DEFAULT NULL,
  `already_have` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `client_form_options`
-- ----------------------------
DROP TABLE IF EXISTS `client_form_options`;
CREATE TABLE `client_form_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `this_is_a` varchar(255) DEFAULT NULL,
  `this_is_a_selection` varchar(255) DEFAULT NULL,
  `we_are_looking_for` varchar(255) DEFAULT NULL,
  `looking_for_selection` varchar(255) DEFAULT NULL,
  `we_already_have` varchar(255) DEFAULT NULL,
  `already_have_selection` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `budget_selection` varchar(255) DEFAULT NULL,
  `submit` varchar(255) DEFAULT NULL,
  `not_logged_in` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `facebook_users`
-- ----------------------------
DROP TABLE IF EXISTS `facebook_users`;
CREATE TABLE `facebook_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` double(25,0) NOT NULL,
  `name` varchar(50) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(70) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `google_users`
-- ----------------------------
DROP TABLE IF EXISTS `google_users`;
CREATE TABLE `google_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` double(30,0) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `given_name` varchar(255) DEFAULT NULL,
  `family_name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `locale` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `linkedin_users`
-- ----------------------------
DROP TABLE IF EXISTS `linkedin_users`;
CREATE TABLE `linkedin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `locale` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `panel_contents`
-- ----------------------------
DROP TABLE IF EXISTS `panel_contents`;
CREATE TABLE `panel_contents` (
  `id` int(2) NOT NULL DEFAULT '0',
  `h2` varchar(50) DEFAULT NULL,
  `p` text,
  `a` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `h3` varchar(255) DEFAULT NULL,
  `p` text,
  `img` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Procedure structure for `sp_facebook_users_work`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_facebook_users_work`;
delimiter ;;
CREATE DEFINER=`superuser`@`localhost` PROCEDURE `sp_facebook_users_work`(IN f_user_id DOUBLE)
BEGIN
SELECT * FROM facebook_users_work
JOIN facebook_users ON facebook_users.uid=facebook_users_work.uid
WHERE facebook_users.uid=f_user_id;
END
 ;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
