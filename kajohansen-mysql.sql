/*
 Navicat MySQL Data Transfer

 Source Server         : localConn
 Source Server Version : 50160
 Source Host           : localhost
 Source Database       : kajohansen

 Target Server Version : 50160
 File Encoding         : utf-8

 Date: 02/14/2013 15:25:08 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

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
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `facebook_users`
-- ----------------------------
BEGIN;
INSERT INTO `facebook_users` VALUES ('1', '1019278346', 'Test F User', 'Test', 'F', 'User', 'male', '1', 'testuser', 'test@user.com', 'https://www.facebook.com/testuser');
COMMIT;

-- ----------------------------
--  Table structure for `facebook_users_education`
-- ----------------------------
DROP TABLE IF EXISTS `facebook_users_education`;
CREATE TABLE `facebook_users_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` double(25,0) NOT NULL DEFAULT '0',
  `school` varchar(255) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `concentration` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `facebook_users_work`
-- ----------------------------
DROP TABLE IF EXISTS `facebook_users_work`;
CREATE TABLE `facebook_users_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` double(25,0) NOT NULL DEFAULT '0',
  `employer` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `facebook_users_work`
-- ----------------------------
BEGIN;
INSERT INTO `facebook_users_work` VALUES ('1', '740895782', 'ABBA publicidad Madrid', 'Madrid', 'Graphic Designer', 'Sommerjobb', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `panel_content`
-- ----------------------------
DROP TABLE IF EXISTS `panel_content`;
CREATE TABLE `panel_content` (
  `id` int(2) NOT NULL DEFAULT '0',
  `h2` varchar(50) DEFAULT NULL,
  `p` text,
  `a` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `panel_content`
-- ----------------------------
BEGIN;
INSERT INTO `panel_content` VALUES ('1', 'Creation of a Logo', 'The Company Logo is the most important thing you can invest in. There is no other way of letting the public know who you are and what you stand for. If a picture says a thousand words, the company logo says everything. It is the most important asset for your company or organisation, but it\'s also where a lot of people get it wrong. The company logo and profile is not an open window for the public into your bussiness it\'s also the badge under which your employees will unite. A good company logo is essential for success and a bad one will do the opposite.', '\"products/logo.html\"'), ('2', 'The future\'s in the Web', 'If the company logo is the window for which the public can look into your business, then the company\'s website is an open door. People seeking an opinion on of you and your bussiness will at some point or the other visit your site on the internet. Will they find the information they are looking for? What will be their first impression? These are things you need to be aware of, the internet is changing and so should your website, if a site is not up to date with what the customer is expecting the impression will stick.', '\"products/web.html\"'), ('4', 'iPhone, iPad, Web App Mac', 'Why not make a rhyme about it. Are you ready? Android, Windows Phone, blackbery Linux. What kind of interaction do you want?Discovering how to present your content can be an eye-opener, and many companies are moving to more integrated solutions for their services. Employees love them. How is your company tackling the new media paradigm. They used to say if you have nothing to say, say it with a song. Nowadays here are so many more creative solutions you could come up with without even saying a single word.. ', '\"products/apps.html\"'), ('5', 'Hosting your App', 'There is a lot of talk about hosting and the cloud, and there is lot\'s options out there. But I am going to assume that you are looking for all in one package, and that\'s what you\'ll get at KAjohansen. Unless you explicitly want a particular hosting service, we will do it for you as part of our bussiness services. To see what\'s included and make a decision as to what your needs are, follow the link below to get a better understanding of how it all fit\'s together.', '\"products/hosting.html\"'), ('6', '3D everywhere', 'KAjohansen will provide 3D models for your enterprise. Wheather it is for video\'s, logo\'s, games, simulations or even the web. As web browsers are becomming more capable, what was up unitl recently exclusively for native Applications running on your system is comming to your web browser. In the near future there will not be much left that the browser can\'t handle. If you are interested in any of these exciting new possiblilities, follow the link below or use the contact form to tell us what you want.', '\"products/3d.html\"'), ('7', 'Computer Graphics and effects', 'What we can offer you the client if you have some film footage that you want to incorporate in your project is an option to do short film cuts.\nWe can for example do some simple effects, color correction, color matching, etc. Or if you have some footage that needs titles, title transitions\nand the like then we can do that for you. We can also shoot simple demonstration videos, no feature film quality but for smaller screens like the web.\nIf you are interested, please click learn more to see if our services suits your needs.', '\"products/cg.html\"'), ('8', 'Network Office Solution', 'KAjohansen is a small bussiness, with a (Media wise) small budget and have small business Network requirements.\nOur business network is built on the Macintosh platform and here we have over 10 years of experience now.\nIf you are looking to set up a small business or organisation or office network then we can help you with this.\nWe use Apple products at the main network platform and offer integration with Linux and Windows through Apple\'s server product-services.', '\"products/network.html\"'), ('9', 'Social Media Profiling', 'Inegrating your Internet appearance with the social media platform is probably a nice move weather you are a business or organisation.\nLetting your users connect and integrate with your organisation through their preferred social media account (Facebook, Twitter, Linkedin, google, etc.)\nWill most lightly lower the barrier for interaction with your internet front-end. We offer services like connect with facebook, facebook advertisement, \nuser queries and much more. Let us know what you want and we\'ll give you our solution!', '\"products/social.html\"');
COMMIT;

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
