-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:43 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `macromusica`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `Album`
-- 

CREATE TABLE `Album` (
  `AlbumID` int(11) NOT NULL auto_increment,
  `AlbumName` varchar(255) NOT NULL default '',
  `ArtistID` int(11) NOT NULL default '0',
  `AlbumPrice` decimal(2,0) NOT NULL default '0',
  `AlbumNotes` text NOT NULL,
  `AlbumCatalogNumber` varchar(11) NOT NULL default '',
  `AlbumAvailable` tinyint(4) NOT NULL default '0',
  `AlbumCoverURL` varchar(255) NOT NULL default '',
  `AlbumCoverThumbnailURL` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`AlbumID`)
) TYPE=MyISAM AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `Album`
-- 

INSERT INTO `Album` (`AlbumID`, `AlbumName`, `ArtistID`, `AlbumPrice`, `AlbumNotes`, `AlbumCatalogNumber`, `AlbumAvailable`, `AlbumCoverURL`, `AlbumCoverThumbnailURL`) VALUES (1, 'Blackcover', 1, 15, 'Stellar performances and driving beat make this album a must for all Macromusica fans and collectors. Featuring Color Combination', '101', 1, 'assets/bands/HLT_blackcover.jpg', 'assets/bands/HLT_blackcover_thumbnail.jpg'),
(2, 'Have you seen Tintin?', 2, 16, 'Experimental music that challenges the mind and the ear.', '201', 1, 'assets/bands/YL_hyst.jpg', 'assets/bands/YL_hyst_thumbnail.jpg'),
(3, 'Porch Scriptures', 3, 15, '', '301', 1, 'assets/bands/DOILY_cover.jpg', 'assets/bands/DOILY_thumbnail.jpg'),
(4, 'The Road Less Traveled', 4, 16, '', '401', 1, 'assets/bands/JAENUS_cover.jpg', 'assets/bands/JAENUS_thumbnail.jpg'),
(5, 'KODJ', 5, 11, 'Software isn''t the only thing these engineer types produce. 12 Dreamweaver inspired songs developed along with the software. \r\nThe feelgood CD of the season', '501', 1, 'assets/bands/KODJ_cover.jpg', 'assets/bands/KODJ_thumbnail.jpg'),
(6, 'Call out the Cavalry', 6, 11, 'These guys talk a lot of smack, the friendly website visitor says to themself, I wonder what they sound like.', '601', 1, 'assets/bands/LS_cover.JPG', 'assets/bands/LS_thumbnail.JPG'),
(7, 'Exit Gilman Street', 7, 10, '', '701', 1, 'assets/bands/UB_cover.jpg', 'assets/bands/UB_thumbnail.jpg'),
(8, 'JLo', 8, 15, '', '801', 1, 'assets/cd01.gif', 'assets/cd01.gif'),
(9, 'Alicia', 9, 16, '', '901', 1, 'assets/cd03.gif', 'assets/cd03.gif'),
(10, 'Word of Moufh', 10, 15, '', '111', 1, 'assets/cd05.gif', 'assets/cd05.gif');

-- --------------------------------------------------------

-- 
-- Table structure for table `Artist`
-- 

CREATE TABLE `Artist` (
  `ArtistID` int(11) NOT NULL default '0',
  `ArtistGroupName` varchar(255) NOT NULL default '',
  `ArtistStyle` varchar(255) NOT NULL default '',
  `ArtistNames` varchar(255) NOT NULL default '',
  `ArtistPhoto` varchar(255) NOT NULL default ''
) TYPE=MyISAM;

-- 
-- Dumping data for table `Artist`
-- 

INSERT INTO `Artist` (`ArtistID`, `ArtistGroupName`, `ArtistStyle`, `ArtistNames`, `ArtistPhoto`) VALUES (1, 'Helen Lundy Trio', 'Rock', 'Karla Milosevich, Craig Goodman, and Kota Ezawa', 'assets/bands/HLT_wall.jpg'),
(2, 'Yellow Lotus', 'Experimental', 'Raven, Winnie Davis, and dd macdonald', 'assets/bands/YL_band.jpg'),
(3, 'The Doilies', 'Country-Folk', '', 'assets/bands/DOILY_band.gif'),
(4, 'Jaenus', 'Rock', 'Niles Rowland, Brian Schretzmann, Dan Hoffman, Sepehr Valizadeh', 'assets/bands/JAENUS_band.jpg'),
(5, 'KODJ', 'Rock', 'Alyn Kelley, Mark Fletche, Kevin Christian, Greg Costanzo, Alan Cole, Tom Haunert', 'assets/bands/KODJ_grouppic.jpg'),
(6, 'LS', 'Hardcore', '', 'assets/bands/LS_group.JPG'),
(7, 'Ultra Band', 'Singer/Songwriter', '', 'assets/bands/UB_band.jpg'),
(8, 'JLo', 'Rn''B', 'Jennifer Lopez', ''),
(9, 'Alicia Keys', 'Rn''B', 'Alicia Keys', ''),
(10, 'Ludacris', 'HIPHOP', 'Ludacris', 'assets/bands/nopicavailable_band.jpg');

-- --------------------------------------------------------

-- 
-- Table structure for table `news`
-- 

CREATE TABLE `news` (
  `NewsID` int(11) NOT NULL auto_increment,
  `NewsDate` date NOT NULL default '0000-00-00',
  `NewsItem` text NOT NULL,
  PRIMARY KEY  (`NewsID`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `news`
-- 

INSERT INTO `news` (`NewsID`, `NewsDate`, `NewsItem`) VALUES (1, '2006-04-28', 'RecordStore hits the road! Find RecordStore reps in your town. In your favorite CD shop. ON YOUR BLOCK. Come here the latest and meet the RecordStore Team');

-- --------------------------------------------------------

-- 
-- Table structure for table `userauthentication`
-- 

CREATE TABLE `userauthentication` (
  `UserID` int(11) NOT NULL auto_increment,
  `UserName` varchar(255) NOT NULL default '',
  `UserPassword` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`UserID`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `userauthentication`
-- 

INSERT INTO `userauthentication` (`UserID`, `UserName`, `UserPassword`) VALUES (1, 'admin', 'admin');
