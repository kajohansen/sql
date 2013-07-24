-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:46 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `order_ord`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `order_ord`
-- 

CREATE TABLE `order_ord` (
  `id_ord` int(20) NOT NULL auto_increment,
  `idusr_ord` int(20) NOT NULL default '0',
  `date_ord` date NOT NULL default '0000-00-00',
  `idsta_ord` int(5) NOT NULL default '0',
  `sesid_ord` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_ord`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `order_ord`
-- 

INSERT INTO `order_ord` (`id_ord`, `idusr_ord`, `date_ord`, `idsta_ord`, `sesid_ord`) VALUES (2, 4, '2006-07-21', 1, '2794c570f33ea6cb710fc712c19ffc40'),
(3, 4, '2006-10-22', 3, '44bd07d3065f8b6da498d19008e7bf8b');

-- --------------------------------------------------------

-- 
-- Table structure for table `order_product_opr`
-- 

CREATE TABLE `order_product_opr` (
  `id_opr` int(20) NOT NULL auto_increment,
  `idprd_opr` int(20) NOT NULL default '0',
  `idord_opr` int(20) NOT NULL default '0',
  `quantity_opr` int(10) NOT NULL default '0',
  PRIMARY KEY  (`id_opr`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `order_product_opr`
-- 

INSERT INTO `order_product_opr` (`id_opr`, `idprd_opr`, `idord_opr`, `quantity_opr`) VALUES (2, 2, 2, 12),
(3, 3, 3, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `product_prd`
-- 

CREATE TABLE `product_prd` (
  `id_prd` int(20) NOT NULL auto_increment,
  `name_prd` varchar(255) NOT NULL default '',
  `price_prd` int(20) NOT NULL default '0',
  `quantity_prd` int(20) NOT NULL default '0',
  PRIMARY KEY  (`id_prd`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `product_prd`
-- 

INSERT INTO `product_prd` (`id_prd`, `name_prd`, `price_prd`, `quantity_prd`) VALUES (1, 'Mouse', 25, 0),
(2, 'Keyboard', 30, 1),
(3, 'Monitor 17"', 150, 3);

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

INSERT INTO `qub3_queries_que` (`name_que`, `query_que`, `desc_que`, `tables_que`, `version_que`) VALUES ('qOrder', 'SELECT%20product_prd.name_prd%2C%20product_prd.price_prd%2C%20order_product_opr.idord_opr%2C%20order_product_opr.quantity_opr%0AFROM%20%28product_prd%0AINNER%20JOIN%20order_product_opr%20ON%20order_product_opr.idprd_opr%3Dproduct_prd.id_prd%29%0AWHERE%20order_product_opr.idord_opr%3D%22.%24_SESSION%5B%22kt_order_id%22%5D.%22%0D%0A%0A', '/*%20Created%20with%20MX%20Query%20Builder%20-%20version%20%5B3.6.5%5D.*/var%20z%20%3D%20new%20SQLQuery%28%22qOrder%22%29%3Bvar%20ret%20%3D%20z%3Bz.version%20%3D%20%223.6.5%22%3Bz.date_creation%20%3D%20new%20Date%28%29.objdeserialize%28%2220060621200112%22%29%3Bz.date_modified%20%3D%20new%20Date%28%29.objdeserialize%28%2220060621200112%22%29%3Bz.distinct%20%3D%20false%3Bvar%20tmp%20%3D%20z.new_table%28%22product_prd%22%2C%20%22product_prd%22%29%3Btmp.table_name%20%3D%20%22product_prd%22%3Btmp.select_all%20%3D%20false%3Btmp.ui%20%3D%20new%20UIObject%28%22product_prd%22%2C30%2C30%2Cfalse%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22*%22%2C%20%22*%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22id_prd%22%2C%20%22id_prd%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22name_prd%22%2C%20%22name_prd%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%200%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22price_prd%22%2C%20%22price_prd%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%201%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22quantity_prd%22%2C%20%22quantity_prd%22%29%3Bvar%20tmp%20%3D%20z.new_table%28%22order_product_opr%22%2C%20%22order_product_opr%22%29%3Btmp.table_name%20%3D%20%22order_product_opr%22%3Btmp.select_all%20%3D%20false%3Btmp.ui%20%3D%20new%20UIObject%28%22order_product_opr%22%2C299%2C66%2Cfalse%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22*%22%2C%20%22*%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22id_opr%22%2C%20%22id_opr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22idprd_opr%22%2C%20%22idprd_opr%22%29%3Bvar%20tmp2%20%3D%20tmp.new_column%28%22idord_opr%22%2C%20%22idord_opr%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%202%3Btmp3%20%3D%20new%20SQLCondition%28%29%3B%0D%0Atmp3.name%20%3D%20%22iaktuid_4318_10_%22%3Btmp3.column%20%3D%20tmp2%3B%0D%0Atmp3.cond_type%20%3D%20%22%3D%22%3Btmp3.var_type%20%3D%20%22Session%20Variable%22%3Btmp3.param_name%20%3D%20%22kt_order_id%22%3Btmp3.test_value%20%3D%20%22-1%22%3Btmp2.condition%20%3D%20tmp3%3B%0D%0Avar%20tmp2%20%3D%20tmp.new_column%28%22quantity_opr%22%2C%20%22quantity_opr%22%29%3Btmp2.checked%20%3D%20true%3Btmp2.output%20%3D%20true%3B%0D%0Atmp2.cindex%20%3D%203%3Bvar%20tmp%20%3D%20z.new_relation%28%22iaktuid_4318_8_%22%29%3Btmp.table1%20%3D%20%22product_prd%22%3Btmp.table2%20%3D%20%22order_product_opr%22%3Btmp.field1%20%3D%20%22id_prd%22%3Btmp.field2%20%3D%20%22idprd_opr%22%3Btmp.card1%20%3D%20%221%22%3Btmp.card2%20%3D%20%221%22%3Btmp.restrict%20%3D%20%22yes%22%3Btmp.ui%20%3D%20%7BrelLeft%3A247%2C%20relTop1%3A43.5%2C%20relTop2%3A58.5%7D%3B', ' ', '1.2');

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

INSERT INTO `qub3_relations_rel` (`table1_rel`, `table2_rel`, `t1id_rel`, `t2id_rel`, `type_rel`, `restrict_rel`) VALUES ('product_prd', 'order_product_opr', 'id_prd', 'idprd_opr', '1-1', 1);

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
-- Table structure for table `status_sta`
-- 

CREATE TABLE `status_sta` (
  `id_sta` int(20) NOT NULL default '0',
  `name_sta` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_sta`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `status_sta`
-- 

INSERT INTO `status_sta` (`id_sta`, `name_sta`) VALUES (0, 'Initiated'),
(1, 'Pending'),
(2, 'Waiting for acknowledgement'),
(4, 'Processing'),
(3, 'Acknowledged');

-- --------------------------------------------------------

-- 
-- Table structure for table `user_usr`
-- 

CREATE TABLE `user_usr` (
  `id_usr` int(20) NOT NULL auto_increment,
  `name_usr` varchar(255) NOT NULL default '',
  `password_usr` varchar(255) NOT NULL default '',
  `active_usr` tinyint(2) NOT NULL default '0',
  `level_usr` tinyint(2) NOT NULL default '0',
  `randomkey_usr` varchar(255) default NULL,
  `email_usr` varchar(255) NOT NULL default '',
  `address_usr` varchar(255) default '',
  PRIMARY KEY  (`id_usr`),
  UNIQUE KEY `name_usr` (`name_usr`),
  UNIQUE KEY `email_usr` (`email_usr`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `user_usr`
-- 

INSERT INTO `user_usr` (`id_usr`, `name_usr`, `password_usr`, `active_usr`, `level_usr`, `randomkey_usr`, `email_usr`, `address_usr`) VALUES (1, 'John Doe', '63a9f0ea7bb98050796b649e85481845', 0, 0, '361d32a9064ac6cc42351679e8c62f11', 'johndoe@domain.org', '15, Rue Park str. Washington'),
(2, 'Jane', '63a9f0ea7bb98050796b649e85481845', 0, 0, '97fc297100f83c9b220d156281f8cb84', 'jane@domain.org', '32 Philladelphia street'),
(3, 'Karl Andreas Johansen', 'd0f99e503ddd4d3b28c250fcaa54a0c1', 1, 1, 'ef4f777c0f8d23f3b6adf5d55a171956', 'karl_a_johansen@hotmail.com', 'Neufeldtsgt 217030 TrondheimNorway'),
(4, 'Karl A Johansen', 'd0f99e503ddd4d3b28c250fcaa54a0c1', 1, 0, '86e24b8bba58ef045328b3e451f7c295', 'karl_a_johansen@yahoo.es', 'Neufeldtsgt 217030 TrondheimNorge');
