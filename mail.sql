/*
 Navicat MySQL Data Transfer

 Source Server         : aws-ubuntu
 Source Server Version : 50529
 Source Host           : localhost
 Source Database       : mail

 Target Server Version : 50529
 File Encoding         : utf-8

 Date: 03/26/2013 14:55:22 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `virtual_aliases`
-- ----------------------------
DROP TABLE IF EXISTS `virtual_aliases`;
CREATE TABLE `virtual_aliases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `virtual_user_email` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `aliases` (`alias`,`virtual_user_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Postfix virtual recipient aliases';

-- ----------------------------
--  Table structure for `virtual_mailbox_domains`
-- ----------------------------
DROP TABLE IF EXISTS `virtual_mailbox_domains`;
CREATE TABLE `virtual_mailbox_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `domains` (`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Postfix virtual domains';

-- ----------------------------
--  Table structure for `virtual_users`
-- ----------------------------
DROP TABLE IF EXISTS `virtual_users`;
CREATE TABLE `virtual_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `userrealm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userpassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth` tinyint(1) DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `virtual_uid` smallint(5) DEFAULT '1007',
  `virtual_gid` smallint(5) DEFAULT '1007',
  `virtual_mailbox` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `recipient` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='SMTP AUTH and virtual mailbox users';

SET FOREIGN_KEY_CHECKS = 1;
