-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:39 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `contact_form`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `contact_con`
-- 

CREATE TABLE `contact_con` (
  `id_con` tinyint(3) NOT NULL auto_increment,
  `id_dep_con` tinyint(3) NOT NULL default '0',
  `name_con` varchar(128) NOT NULL default '',
  `email_con` varchar(64) NOT NULL default '',
  `phone_con` varchar(16) default NULL,
  `address_con` varchar(128) NOT NULL default '',
  `preferred_con` tinyint(1) NOT NULL default '0',
  `message_con` text NOT NULL,
  PRIMARY KEY  (`id_con`),
  KEY `id_con` (`id_con`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `contact_con`
-- 

INSERT INTO `contact_con` (`id_con`, `id_dep_con`, `name_con`, `email_con`, `phone_con`, `address_con`, `preferred_con`, `message_con`) VALUES (1, 2, 'Lisa Marion', 'lm@somesite.com', '0789759968', '24 Sunset Bd, Los Angeles', 2, 'Hello! I get an error message when I connect to my site. Do you know what is the cause of this problem?'),
(2, 1, 'Ema Burton', 'ema@somesite.com', '555800011', '33, Roosevelt Avenue, Chicago', 1, 'I just love your new commercial! Great work, guys!'),
(3, 3, 'John Doe', 'jdoe@john.com', '5550220011', '7, Esplanade Henri de France, Paris', 2, 'I cannot pay through money transfer. Is your account blocked?'),
(4, 2, 'Jane Doe', 'jdoe@jane.com', '55500780311', 'Viale Mazzini, 23, Roma, Italy', 2, 'You are doing a fine job. Keep it up!');

-- --------------------------------------------------------

-- 
-- Table structure for table `department_dep`
-- 

CREATE TABLE `department_dep` (
  `id_dep` tinyint(3) NOT NULL auto_increment,
  `name_dep` varchar(64) NOT NULL default '',
  `email_dep` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id_dep`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `department_dep`
-- 

INSERT INTO `department_dep` (`id_dep`, `name_dep`, `email_dep`) VALUES (1, 'Sales&Marketing', 'sales@somesite.com'),
(2, 'Technical Support', 'technical@somesite.com'),
(3, 'Financial Department', 'finance@somesite.com');
