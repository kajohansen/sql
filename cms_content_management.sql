-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:38 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `cms_content_management`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `page_pag`
-- 

CREATE TABLE `page_pag` (
  `id_pag` int(11) NOT NULL auto_increment,
  `idpag_pag` int(11) NOT NULL default '0',
  `title_pag` varchar(255) NOT NULL default '',
  `description_pag` varchar(255) NOT NULL default '',
  `body_pag` text NOT NULL,
  `date_pag` date NOT NULL default '0000-00-00',
  `visible_pag` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id_pag`),
  KEY `idpag_pag` (`idpag_pag`)
) TYPE=MyISAM AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `page_pag`
-- 

INSERT INTO `page_pag` (`id_pag`, `idpag_pag`, `title_pag`, `description_pag`, `body_pag`, `date_pag`, `visible_pag`) VALUES (1, 0, 'IT Conferences', 'Our Agenda for this year is full. And the word of the day is Conferences! They present us with the opportunity to meet with the end-users of our products, discus and exchange ideas and make our vision heard throughout the Developer''s community.', '', '2005-03-12', 1),
(2, 1, 'ColdFusion/Flash Conference', 'Held between 9-10 April, Powered by Detroit is a ColdFusion/Flash conference. Powered by Detroit Conference is designed to promote the use of Flash and ColdFusion together as the dynamic medium for the future of the Internet.', 'We are proud to announce that we are Platinum Sponsors of the event that promises to be a sure hit. Attendees will hear presentations from expert speakers and have an opportunity to be a part of the Flash and ColdFusion community. Among the speaker''s list you will find two familiar figures, Alexandru Costin who will talk about UI concepts for Intranet Web and Bogdan Ripa who chose to attack the new Dreamweaver ColdFusion MX7 support, one of InterAKT''s greatest achievements for this winter.', '2006-07-17', 1),
(3, 1, 'Web Conference', 'The sixth TODCON web conference event will take place April 25 - 27, 2005 at the Excalibur Hotel and Casino in Las Vegas, NV.', 'To present the conference best, let''s hear it from one of lats years'' attendees: "TODCON is the best! The meeting is a real community, even if it''s your first time there. Top level speakers, lots of socializing, and well-organized. It''s the one conference I try to attend every year." - Patsy W.', '2005-02-14', 1),
(4, 1, 'CeBIT Conference', 'Bucharest, February 23, 2005 - InterAKT Online announces its participation at the 2005 edition of the Hannover CeBIT Exhibition.', 'During 10-16 March 2005 in the German town of Hannover 6000 companies from the IT industry will join forces into the largest exhibitions of the kind in Europe. ', '2005-03-20', 1),
(5, 0, 'InterAKT''s Fourth Anniversary', 'This has been one of the greatest years in InterAKT history. This piece of news is here to tell the story of days gone by, and fill you in on what has happened this last year.', 'We have grown a lot, and so did our customer base in the last few years. Day by day, we are reaching more and more people. First we went over the 2000 client mark at the beginning of this year, then we reached almost 4000 satisfied customers for our commercial products. Instead of listening to what we have to say about this, how about tuning in to the customers'' voice? Here''s what one of the guys had to say about us right after our Three Year Anniversary:', '2004-12-29', 1),
(6, 5, 'InterAKT''s Fifth Anniversary', 'InterAKT is celebrating five years of hard work.', 'These five years have brought along a new way of doing web development with Dreamweaver extensions. All these have built up into the company that we are today.', '2005-12-24', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `user_usr`
-- 

CREATE TABLE `user_usr` (
  `id_usr` int(11) NOT NULL auto_increment,
  `email_usr` varchar(50) NOT NULL default '',
  `password_usr` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id_usr`),
  UNIQUE KEY `email_usr` (`email_usr`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `user_usr`
-- 

INSERT INTO `user_usr` (`id_usr`, `email_usr`, `password_usr`) VALUES (1, 'admin@domain.org', 'root');
