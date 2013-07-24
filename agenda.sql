-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:36 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `agenda`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `category_ctg`
-- 

CREATE TABLE `category_ctg` (
  `id_ctg` int(11) NOT NULL auto_increment,
  `name_ctg` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_ctg`)
) TYPE=MyISAM AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `category_ctg`
-- 

INSERT INTO `category_ctg` (`id_ctg`, `name_ctg`) VALUES (1, 'National holidays'),
(2, 'Conference'),
(3, 'Meeting'),
(4, 'Appointment'),
(5, 'Party'),
(6, 'Birthday');

-- --------------------------------------------------------

-- 
-- Table structure for table `event_eve`
-- 

CREATE TABLE `event_eve` (
  `id_eve` int(11) NOT NULL auto_increment,
  `idctg_eve` int(11) NOT NULL default '0',
  `idusr_eve` int(11) NOT NULL default '0',
  `title_eve` varchar(255) default NULL,
  `description_eve` text,
  `location_eve` varchar(255) default NULL,
  `date_start_eve` date NOT NULL default '0000-00-00',
  `date_end_eve` date default NULL,
  `recurring_eve` varchar(10) default NULL,
  PRIMARY KEY  (`id_eve`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `event_eve`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `user_category_uct`
-- 

CREATE TABLE `user_category_uct` (
  `id_uct` int(11) NOT NULL auto_increment,
  `idusr_uct` int(11) NOT NULL default '0',
  `idctg_uct` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_uct`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `user_category_uct`
-- 

INSERT INTO `user_category_uct` (`id_uct`, `idusr_uct`, `idctg_uct`) VALUES (1, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `user_usr`
-- 

CREATE TABLE `user_usr` (
  `id_usr` int(11) NOT NULL auto_increment,
  `name_usr` varchar(255) NOT NULL default '',
  `email_usr` varchar(255) NOT NULL default '',
  `password_usr` varchar(255) NOT NULL default '',
  `active_usr` tinyint(2) NOT NULL default '0',
  `level_usr` tinyint(2) NOT NULL default '0',
  `randomkey_usr` varchar(255) default NULL,
  PRIMARY KEY  (`id_usr`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `user_usr`
-- 

INSERT INTO `user_usr` (`id_usr`, `name_usr`, `email_usr`, `password_usr`, `active_usr`, `level_usr`, `randomkey_usr`) VALUES (1, 'John Doe', 'johndoe@domain.org', '63a9f0ea7bb98050796b649e85481845', 1, 1, '3ed7740b3fbe18c06fa4d5f4facace60'),
(2, 'Jane', 'jane@domain.org', '63a9f0ea7bb98050796b649e85481845', 1, 0, '178caac1f5f7379a602ffcade18f3bf6');
