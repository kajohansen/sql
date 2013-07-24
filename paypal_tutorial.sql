-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:47 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `paypal_tutorial`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `accounting_paypal`
-- 

CREATE TABLE `accounting_paypal` (
  `uid` bigint(20) NOT NULL auto_increment,
  `date` timestamp(14) NOT NULL,
  `item_name` varchar(130) NOT NULL default 'joi',
  `receiver_email` varchar(125) default NULL,
  `item_number` varchar(130) NOT NULL default '0',
  `quantity` smallint(6) NOT NULL default '0',
  `invoice` varchar(25) NOT NULL default '0',
  `custom` varchar(60) default NULL,
  `payment_status` set('Completed','Pending','Failed','Denied') NOT NULL default 'Failed',
  `pending_reason` set('echeck','intl','verify','address','upgrade','unilateral','other') NOT NULL default 'other',
  `payment_gross` float NOT NULL default '0',
  `payment_fee` float NOT NULL default '0',
  `payment_type` set('echeck','instant') NOT NULL default 'instant',
  `payment_date` varchar(50) NOT NULL default '0',
  `txn_id` varchar(20) NOT NULL default '0',
  `payer_email` varchar(125) default NULL,
  `payer_status` set('verified','unverified','intl_verified') NOT NULL default 'unverified',
  `txn_type` set('web_accept','cart','send_money','subscr_signup','subscr_cancel','subscr_failed','subscr_payment','subscr_eot') NOT NULL default 'subscr_payment',
  `first_name` varchar(35) default NULL,
  `last_name` varchar(60) default NULL,
  `address_city` varchar(60) default NULL,
  `address_street` varchar(60) default NULL,
  `address_state` varchar(60) default NULL,
  `address_zip` varchar(15) default NULL,
  `address_country` varchar(60) default NULL,
  `address_status` set('confirmed','unconfirmed') NOT NULL default 'unconfirmed',
  `subscr_date` varchar(50) NOT NULL default '0',
  `period1` varchar(20) NOT NULL default 'UNK',
  `period2` varchar(20) NOT NULL default 'UNK',
  `period3` varchar(20) NOT NULL default 'UNK',
  `amount1` float NOT NULL default '0',
  `amount2` float NOT NULL default '0',
  `amount3` float NOT NULL default '0',
  `recurring` tinyint(4) NOT NULL default '1',
  `reattempt` tinyint(4) NOT NULL default '0',
  `retry_at` varchar(50) default NULL,
  `recur_times` smallint(6) NOT NULL default '0',
  `username` varchar(25) default NULL,
  `password` varchar(20) default NULL,
  `subscr_id` varchar(20) default NULL,
  `entirepost` text,
  `paypal_verified` set('VERIFIED','INVALID') NOT NULL default 'INVALID',
  `verify_sign` varchar(125) default NULL,
  PRIMARY KEY  (`uid`),
  KEY `txn_type` (`txn_type`),
  KEY `payment_status` (`payment_status`),
  KEY `pending_reason` (`pending_reason`),
  KEY `payer_status` (`payer_status`),
  KEY `payment_type` (`payment_type`),
  KEY `retry_at` (`retry_at`),
  KEY `receiver_email` (`receiver_email`),
  KEY `date` (`date`)
) TYPE=MyISAM COMMENT='Recieve posts FROM paypal servers' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `accounting_paypal`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `uid` bigint(20) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL default '',
  `password` varchar(30) NOT NULL default '',
  `created` timestamp(14) NOT NULL,
  `paid` enum('N','Y') NOT NULL default 'N',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `username` (`username`)
) TYPE=MyISAM COMMENT='Store user paid y/n information' AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `users`
-- 

