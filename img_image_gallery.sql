-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:41 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `img_image_gallery`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `album_alb`
-- 

CREATE TABLE `album_alb` (
  `id_alb` int(11) NOT NULL auto_increment,
  `title_alb` varchar(100) NOT NULL default '',
  `description_alb` varchar(255) NOT NULL default '',
  `date_alb` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id_alb`),
  UNIQUE KEY `title_alb` (`title_alb`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `album_alb`
-- 

INSERT INTO `album_alb` (`id_alb`, `title_alb`, `description_alb`, `date_alb`) VALUES (1, 'Vacations', 'Whether in mountains, or at the seaside, I always spend a wonderful time with my family.', '2004-12-09'),
(2, 'Conferences', 'Last year I participated in several IT conferences. Here are some of the events I attended.', '2003-10-05'),
(3, 'Home, sweet home', 'Some pictures with my house, my wife, my kids and my dog.', '2005-02-01');

-- --------------------------------------------------------

-- 
-- Table structure for table `image_img`
-- 

CREATE TABLE `image_img` (
  `id_img` int(11) NOT NULL auto_increment,
  `idalb_img` int(11) NOT NULL default '0',
  `filename_img` varchar(100) NOT NULL default '',
  `description_img` varchar(255) NOT NULL default '',
  `date_img` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_img`)
) TYPE=MyISAM AUTO_INCREMENT=46 ;

-- 
-- Dumping data for table `image_img`
-- 

INSERT INTO `image_img` (`id_img`, `idalb_img`, `filename_img`, `description_img`, `date_img`) VALUES (1, 3, 'Laura.jpg', 'My daughter, Laura, and our dog, Dino.', '2005-03-01 09:38:32'),
(2, 3, 'Dino.gif', 'Dino playing in the garden.', '2005-04-01 16:38:32'),
(3, 1, 'Winter.jpg', 'Christmas morning in the Alps.', '2005-04-01 16:45:17'),
(4, 1, 'Sunset.jpg', 'Breath-taking sunset in Malibu.', '2005-02-14 17:40:21'),
(5, 2, 'London.jpg', 'Urban Transportation Conference in London.', '2005-03-25 16:38:25'),
(6, 2, 'Paris.jpg', 'Environmental Protection Conference in Paris', '2005-04-01 10:38:10'),
(45, 1, 'dalimagazine.gif', 'TRY', '2006-08-10 18:52:44'),
(44, 3, 'Dino.gif', 'Dino playing in the garden.', '2006-07-14 15:52:24'),
(43, 3, 'Laura.jpg', 'My daughter, Laura, and our dog, Dino.', '2006-07-14 15:51:50'),
(42, 1, 'Laura_1.jpg', 'My daughter, Laura, and our dog, Dino.', '2006-07-14 15:50:24'),
(41, 1, 'Laura.jpg', 'My daughter, Laura, and our dog, Dino.', '2006-07-14 15:50:24'),
(39, 2, 'Paris.jpg', 'Environmental Protection Conference in Paris', '2006-07-14 15:49:34'),
(38, 2, 'London.jpg', 'Urban Transportation Conference in London.', '2006-07-14 15:48:35'),
(37, 1, 'Winter.jpg', 'Christmas morning in the Alps.', '2006-07-14 15:46:32'),
(35, 1, 'Sunset.jpg', 'Breath-taking sunset in Malibu.', '2006-07-14 15:43:18');
