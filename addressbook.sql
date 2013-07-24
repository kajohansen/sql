-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:35 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `addressbook`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `contacts`
-- 

CREATE TABLE `contacts` (
  `contact ID` tinyint(4) NOT NULL auto_increment,
  `lastName` tinytext NOT NULL,
  `firstName` tinytext NOT NULL,
  `phone` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `picFile` tinytext NOT NULL,
  `caption` tinytext NOT NULL,
  PRIMARY KEY  (`contact ID`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `contacts`
-- 

INSERT INTO `contacts` (`contact ID`, `lastName`, `firstName`, `phone`, `email`, `picFile`, `caption`) VALUES (1, 'Anderson', 'Lois', '301-424-5555', 'lois@yahoo.com', 'lois.jpg', 'Lois, 2001');
