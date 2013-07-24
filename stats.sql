-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:48 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `stats`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `failed_login_flg`
-- 

CREATE TABLE `failed_login_flg` (
  `id_flg` int(11) NOT NULL auto_increment,
  `date_flg` datetime NOT NULL default '0000-00-00 00:00:00',
  `name_flg` varchar(255) default NULL,
  `ip_address_flg` varchar(255) default NULL,
  PRIMARY KEY  (`id_flg`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `failed_login_flg`
-- 

INSERT INTO `failed_login_flg` (`id_flg`, `date_flg`, `name_flg`, `ip_address_flg`) VALUES (1, '2005-10-26 18:49:42', 'Hacker', '192.168.0.1'),
(2, '2006-07-23 21:15:52', 'kajohansen', '127.0.0.1'),
(3, '2006-08-10 16:17:06', 'admin', '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Table structure for table `qub3_queries_que`
-- 

CREATE TABLE `qub3_queries_que` (
  `name_que` varchar(50) NOT NULL default '',
  `query_que` longtext NOT NULL,
  `desc_que` longtext NOT NULL,
  `tables_que` longtext NOT NULL,
  `version_que` varchar(10) NOT NULL default ''
) TYPE=MyISAM;

-- 
-- Dumping data for table `qub3_queries_que`
-- 

INSERT INTO `qub3_queries_que` (`name_que`, `query_que`, `desc_que`, `tables_que`, `version_que`) VALUES ('qTotalRegUsers', 'SELECT%20count%28user_usr.id_usr%29%20%20AS%20count_id_usr_1%0AFROM%20user_usr%0A', '/*%20Created%20with%20MX%20Query%20Builder%20-%20version%20%5B3.6.5%5D.*/var%20z%20%3D%20new%20SQLQuery%28%22qTotalRegUsers%22%29%3Bvar%20ret%20%3D%20z%3Bz.version%20%3D%20%223.6.5%22%3Bz.date_creation%20%3D%20new%20Date%28%29.objdeserialize%28%2220060623113421%22%29%3Bz.date_modified%20%3D%20new%20Date%28%29.objdeserialize%28%2220060623113421%22%29%3Bz.distinct%20%3D%20false%3Bvar%20tmp%20%3D%20z.new_table%28%22user_usr%22%2C%20%22user_usr%22%29%3Btmp.table_name%20%3D%20%22user_usr%22%3Btmp.select_all%20%3D%20false%3Btmp.ui%20%3D%20new%20UIObject%28%22user_usr%22%2C30%2C30%2Cfalse%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22*%22%2C%20%22*%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22id_usr%22%2C%20%22id_usr%22%29%3Btmp2.output%20%3D%20true%3B%0D%0Avar%20tmp2%20%3D%20tmp.new_column%28%22name_usr%22%2C%20%22name_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22email_usr%22%2C%20%22email_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22password_usr%22%2C%20%22password_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22regtime_usr%22%2C%20%22regtime_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22count_id_usr_1%22%2C%20%22id_usr%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.aggFunc%20%3D%20%22count%22%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%200%3B', ' ', '1.2'),
('qLastLoggedIn', 'SELECT%20user_usr.name_usr%2C%20success_login_scl.date_scl%0AFROM%20%28user_usr%0ALEFT%20JOIN%20success_login_scl%20ON%20success_login_scl.idusr_scl%3Duser_usr.id_usr%29%0AORDER%20BY%20success_login_scl.date_scl%20DESC%0A', '/*%20Created%20with%20MX%20Query%20Builder%20-%20version%20%5B3.6.5%5D.*/var%20z%20%3D%20new%20SQLQuery%28%22qLastLoggedIn%22%29%3Bvar%20ret%20%3D%20z%3Bz.version%20%3D%20%223.6.5%22%3Bz.date_creation%20%3D%20new%20Date%28%29.objdeserialize%28%2220060623114757%22%29%3Bz.date_modified%20%3D%20new%20Date%28%29.objdeserialize%28%2220060623114757%22%29%3Bz.distinct%20%3D%20false%3Bvar%20tmp%20%3D%20z.new_table%28%22user_usr%22%2C%20%22user_usr%22%29%3Btmp.table_name%20%3D%20%22user_usr%22%3Btmp.select_all%20%3D%20false%3Btmp.ui%20%3D%20new%20UIObject%28%22user_usr%22%2C30%2C30%2Cfalse%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22*%22%2C%20%22*%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22id_usr%22%2C%20%22id_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22name_usr%22%2C%20%22name_usr%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%200%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22email_usr%22%2C%20%22email_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22password_usr%22%2C%20%22password_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22regtime_usr%22%2C%20%22regtime_usr%22%29%3Bvar%20tmp%20%3D%20z.new_table%28%22success_login_scl%22%2C%20%22success_login_scl%22%29%3Btmp.table_name%20%3D%20%22success_login_scl%22%3Btmp.select_all%20%3D%20false%3Btmp.ui%20%3D%20new%20UIObject%28%22success_login_scl%22%2C281%2C55%2Cfalse%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22*%22%2C%20%22*%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22id_scl%22%2C%20%22id_scl%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22idusr_scl%22%2C%20%22idusr_scl%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22date_scl%22%2C%20%22date_scl%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.order%20%3D%20%22DESC%22%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%201%3Bvar%20tmp%20%3D%20z.new_relation%28%22iaktuid_1214_6_%22%29%3Btmp.table1%20%3D%20%22user_usr%22%3Btmp.table2%20%3D%20%22success_login_scl%22%3Btmp.field1%20%3D%20%22id_usr%22%3Btmp.field2%20%3D%20%22idusr_scl%22%3Btmp.card1%20%3D%20%221%22%3Btmp.card2%20%3D%20%22n%22%3Btmp.restrict%20%3D%20%22no%22%3Btmp.ui%20%3D%20%7BrelLeft%3A242%2C%20relTop1%3A43.5%2C%20relTop2%3A58.5%7D%3B', ' ', '1.2'),
('qUserStats', 'SELECT%20user_usr.name_usr%2C%20count%28success_login_scl.id_scl%29%20%20AS%20count_id_scl_1%2C%20user_usr.regtime_usr%0AFROM%20%28user_usr%0ALEFT%20JOIN%20success_login_scl%20ON%20success_login_scl.idusr_scl%3Duser_usr.id_usr%29%0AGROUP%20BY%20user_usr.name_usr%2C%20user_usr.regtime_usr%0A', '/*%20Created%20with%20MX%20Query%20Builder%20-%20version%20%5B3.6.5%5D.*/var%20z%20%3D%20new%20SQLQuery%28%22qUserStats%22%29%3Bvar%20ret%20%3D%20z%3Bz.version%20%3D%20%223.6.5%22%3Bz.date_creation%20%3D%20new%20Date%28%29.objdeserialize%28%2220060623121647%22%29%3Bz.date_modified%20%3D%20new%20Date%28%29.objdeserialize%28%2220060623121647%22%29%3Bz.distinct%20%3D%20false%3Bvar%20tmp%20%3D%20z.new_table%28%22user_usr%22%2C%20%22user_usr%22%29%3Btmp.table_name%20%3D%20%22user_usr%22%3Btmp.select_all%20%3D%20false%3Btmp.ui%20%3D%20new%20UIObject%28%22user_usr%22%2C49%2C67%2Cfalse%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22*%22%2C%20%22*%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22id_usr%22%2C%20%22id_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22name_usr%22%2C%20%22name_usr%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%200%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22email_usr%22%2C%20%22email_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22password_usr%22%2C%20%22password_usr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22regtime_usr%22%2C%20%22regtime_usr%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%202%3Bvar%20tmp%20%3D%20z.new_table%28%22success_login_scl%22%2C%20%22success_login_scl%22%29%3Btmp.table_name%20%3D%20%22success_login_scl%22%3Btmp.select_all%20%3D%20false%3Btmp.ui%20%3D%20new%20UIObject%28%22success_login_scl%22%2C283%2C86%2Cfalse%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22*%22%2C%20%22*%22%29%3Btmp2.output%20%3D%20true%3B%0D%0Avar%20tmp2%20%3D%20tmp.new_column%28%22id_scl%22%2C%20%22id_scl%22%29%3Btmp2.output%20%3D%20true%3B%0D%0Avar%20tmp2%20%3D%20tmp.new_column%28%22idusr_scl%22%2C%20%22idusr_scl%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22date_scl%22%2C%20%22date_scl%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22count_id_scl_1%22%2C%20%22id_scl%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.aggFunc%20%3D%20%22count%22%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%201%3Bvar%20tmp%20%3D%20z.new_relation%28%22iaktuid_2063_5_%22%29%3Btmp.table1%20%3D%20%22user_usr%22%3Btmp.table2%20%3D%20%22success_login_scl%22%3Btmp.field1%20%3D%20%22id_usr%22%3Btmp.field2%20%3D%20%22idusr_scl%22%3Btmp.card1%20%3D%20%221%22%3Btmp.card2%20%3D%20%22n%22%3Btmp.restrict%20%3D%20%22no%22%3Btmp.ui%20%3D%20%7BrelLeft%3A251%2C%20relTop1%3A43.5%2C%20relTop2%3A58.5%7D%3B', ' ', '1.0');

-- --------------------------------------------------------

-- 
-- Table structure for table `qub3_relations_rel`
-- 

CREATE TABLE `qub3_relations_rel` (
  `table1_rel` varchar(100) NOT NULL default '',
  `table2_rel` varchar(100) NOT NULL default '',
  `t1id_rel` varchar(100) NOT NULL default '',
  `t2id_rel` varchar(100) NOT NULL default '',
  `type_rel` varchar(10) NOT NULL default '',
  `restrict_rel` int(11) NOT NULL default '0'
) TYPE=MyISAM;

-- 
-- Dumping data for table `qub3_relations_rel`
-- 

INSERT INTO `qub3_relations_rel` (`table1_rel`, `table2_rel`, `t1id_rel`, `t2id_rel`, `type_rel`, `restrict_rel`) VALUES ('user_usr', 'success_login_scl', 'id_usr', 'idusr_scl', '1-n', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `qub3_settings_set`
-- 

CREATE TABLE `qub3_settings_set` (
  `setting_name_set` varchar(32) NOT NULL default '',
  `setting_value_set` varchar(32) NOT NULL default ''
) TYPE=MyISAM;

-- 
-- Dumping data for table `qub3_settings_set`
-- 

INSERT INTO `qub3_settings_set` (`setting_name_set`, `setting_value_set`) VALUES ('dateseparator', ''''),
('notequals', '!='),
('use_asname', 'true');

-- --------------------------------------------------------

-- 
-- Table structure for table `success_login_scl`
-- 

CREATE TABLE `success_login_scl` (
  `id_scl` int(11) NOT NULL auto_increment,
  `idusr_scl` int(11) NOT NULL default '0',
  `date_scl` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_scl`)
) TYPE=MyISAM AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `success_login_scl`
-- 

INSERT INTO `success_login_scl` (`id_scl`, `idusr_scl`, `date_scl`) VALUES (1, 1, '2005-10-26 16:59:00'),
(2, 1, '2005-10-26 18:24:37'),
(3, 2, '2005-10-27 13:27:45'),
(4, 3, '2006-07-23 12:24:53'),
(5, 3, '2006-07-23 21:16:03'),
(6, 3, '2006-08-10 16:17:18');

-- --------------------------------------------------------

-- 
-- Table structure for table `user_usr`
-- 

CREATE TABLE `user_usr` (
  `id_usr` int(11) NOT NULL auto_increment,
  `name_usr` varchar(255) NOT NULL default '',
  `email_usr` varchar(255) NOT NULL default '',
  `password_usr` varchar(255) NOT NULL default '',
  `regtime_usr` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_usr`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `user_usr`
-- 

INSERT INTO `user_usr` (`id_usr`, `name_usr`, `email_usr`, `password_usr`, `regtime_usr`) VALUES (1, 'Jane', 'jane@domain.org', '63a9f0ea7bb98050796b649e85481845', '2005-10-23 16:31:20'),
(2, 'John Doe', 'jdoe@domain.org', '63a9f0ea7bb98050796b649e85481845', '2005-10-25 17:14:01'),
(3, 'kajohansen', 'karl_a_johansen@hotmail.com', '49a0c668df900d7643f7631ff27b5f61', '2006-07-23 12:24:38');
