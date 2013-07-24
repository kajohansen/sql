-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:45 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `mxshop3`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `categories_ctg`
-- 

CREATE TABLE `categories_ctg` (
  `id_ctg` int(11) NOT NULL auto_increment,
  `idctg_ctg` int(11) default NULL,
  `name_ctg` varchar(33) NOT NULL default '',
  `longname_ctg` varchar(85) NOT NULL default '',
  `order_ctg` int(11) NOT NULL default '0',
  `hlooper_ctg` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id_ctg`),
  UNIQUE KEY `unique_name` (`idctg_ctg`,`name_ctg`),
  KEY `idctg_ctg` (`idctg_ctg`),
  KEY `order_ctg` (`order_ctg`)
) TYPE=MyISAM AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `categories_ctg`
-- 

INSERT INTO `categories_ctg` (`id_ctg`, `idctg_ctg`, `name_ctg`, `longname_ctg`, `order_ctg`, `hlooper_ctg`) VALUES (1, NULL, 'Cameras', 'Photo & Video Cameras', 1, 1),
(2, NULL, 'Handheld & PDA', 'Handheld & PDA', 2, 1),
(3, NULL, 'MP3 Players', 'Portable MP3 Players', 3, 1),
(4, NULL, 'Notebooks', 'Portable Computers', 4, 1),
(5, NULL, 'Storage', 'Storage Devices', 5, 1),
(6, 5, 'Flash drive', 'Flash drives', 6, 1),
(7, 5, 'Hard-drives', 'Hard-drives', 7, 1),
(8, 5, 'Optical', 'Optical media', 8, 1),
(9, 5, 'External drives', 'External drives', 9, 1),
(10, NULL, 'Tablet PC', 'Ultra portable notebooks', 10, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `countries_cnt`
-- 

CREATE TABLE `countries_cnt` (
  `id_cnt` int(11) NOT NULL auto_increment,
  `name_cnt` varchar(21) NOT NULL default '',
  `iso2_cnt` char(2) NOT NULL default '',
  `iso3_cnt` char(3) NOT NULL default '',
  PRIMARY KEY  (`id_cnt`)
) TYPE=MyISAM AUTO_INCREMENT=240 ;

-- 
-- Dumping data for table `countries_cnt`
-- 

INSERT INTO `countries_cnt` (`id_cnt`, `name_cnt`, `iso2_cnt`, `iso3_cnt`) VALUES (1, 'Afghanistan', 'AF', 'AFG'),
(2, 'Albania', 'AL', 'ALB'),
(3, 'Algeria', 'DZ', 'DZA'),
(4, 'American Samoa', 'AS', 'ASM'),
(5, 'Andorra', 'AD', 'AND'),
(6, 'Angola', 'AO', 'AGO'),
(7, 'Anguilla', 'AI', 'AIA'),
(8, 'Antarctica', 'AQ', 'ATA'),
(9, 'Antigua and Barbuda', 'AG', 'ATG'),
(10, 'Argentina', 'AR', 'ARG'),
(11, 'Armenia', 'AM', 'ARM'),
(12, 'Aruba', 'AW', 'ABW'),
(13, 'Australia', 'AU', 'AUS'),
(14, 'Austria', 'AT', 'AUT'),
(15, 'Azerbaijan', 'AZ', 'AZE'),
(16, 'Bahamas', 'BS', 'BHS'),
(17, 'Bahrain', 'BH', 'BHR'),
(18, 'Bangladesh', 'BD', 'BGD'),
(19, 'Barbados', 'BB', 'BRB'),
(20, 'Belarus', 'BY', 'BLR'),
(21, 'Belgium', 'BE', 'BEL'),
(22, 'Belize', 'BZ', 'BLZ'),
(23, 'Benin', 'BJ', 'BEN'),
(24, 'Bermuda', 'BM', 'BMU'),
(25, 'Bhutan', 'BT', 'BTN'),
(26, 'Bolivia', 'BO', 'BOL'),
(27, 'Bosnia and Herzegowin', 'BA', 'BIH'),
(28, 'Botswana', 'BW', 'BWA'),
(29, 'Bouvet Island', 'BV', 'BVT'),
(30, 'Brazil', 'BR', 'BRA'),
(31, 'British Indian Ocean', 'IO', 'IOT'),
(32, 'Brunei Darussalam', 'BN', 'BRN'),
(33, 'Bulgaria', 'BG', 'BGR'),
(34, 'Burkina Faso', 'BF', 'BFA'),
(35, 'Burundi', 'BI', 'BDI'),
(36, 'Cambodia', 'KH', 'KHM'),
(37, 'Cameroon', 'CM', 'CMR'),
(38, 'Canada', 'CA', 'CAN'),
(39, 'Cape Verde', 'CV', 'CPV'),
(40, 'Cayman Islands', 'KY', 'CYM'),
(41, 'Central African Repub', 'CF', 'CAF'),
(42, 'Chad', 'TD', 'TCD'),
(43, 'Chile', 'CL', 'CHL'),
(44, 'China', 'CN', 'CHN'),
(45, 'Christmas Island', 'CX', 'CXR'),
(46, 'Cocos (Keeling) Islan', 'CC', 'CCK'),
(47, 'Colombia', 'CO', 'COL'),
(48, 'Comoros', 'KM', 'COM'),
(49, 'Congo', 'CG', 'COG'),
(50, 'Cook Islands', 'CK', 'COK'),
(51, 'Costa Rica', 'CR', 'CRI'),
(52, 'Cote D''Ivoire', 'CI', 'CIV'),
(53, 'Croatia', 'HR', 'HRV'),
(54, 'Cuba', 'CU', 'CUB'),
(55, 'Cyprus', 'CY', 'CYP'),
(56, 'Czech Republic', 'CZ', 'CZE'),
(57, 'Denmark', 'DK', 'DNK'),
(58, 'Djibouti', 'DJ', 'DJI'),
(59, 'Dominica', 'DM', 'DMA'),
(60, 'Dominican Republic', 'DO', 'DOM'),
(61, 'East Timor', 'TP', 'TMP'),
(62, 'Ecuador', 'EC', 'ECU'),
(63, 'Egypt', 'EG', 'EGY'),
(64, 'El Salvador', 'SV', 'SLV'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ'),
(66, 'Eritrea', 'ER', 'ERI'),
(67, 'Estonia', 'EE', 'EST'),
(68, 'Ethiopia', 'ET', 'ETH'),
(69, 'Falkland Islands (Mal', 'FK', 'FLK'),
(70, 'Faroe Islands', 'FO', 'FRO'),
(71, 'Fiji', 'FJ', 'FJI'),
(72, 'Finland', 'FI', 'FIN'),
(73, 'France', 'FR', 'FRA'),
(74, 'France, Metropolitan', 'FX', 'FXX'),
(75, 'French Guiana', 'GF', 'GUF'),
(76, 'French Polynesia', 'PF', 'PYF'),
(77, 'French Southern Terri', 'TF', 'ATF'),
(78, 'Gabon', 'GA', 'GAB'),
(79, 'Gambia', 'GM', 'GMB'),
(80, 'Georgia', 'GE', 'GEO'),
(81, 'Germany', 'DE', 'DEU'),
(82, 'Ghana', 'GH', 'GHA'),
(83, 'Gibraltar', 'GI', 'GIB'),
(84, 'Greece', 'GR', 'GRC'),
(85, 'Greenland', 'GL', 'GRL'),
(86, 'Grenada', 'GD', 'GRD'),
(87, 'Guadeloupe', 'GP', 'GLP'),
(88, 'Guam', 'GU', 'GUM'),
(89, 'Guatemala', 'GT', 'GTM'),
(90, 'Guinea', 'GN', 'GIN'),
(91, 'Guinea-bissau', 'GW', 'GNB'),
(92, 'Guyana', 'GY', 'GUY'),
(93, 'Haiti', 'HT', 'HTI'),
(94, 'Heard and Mc Donald I', 'HM', 'HMD'),
(95, 'Honduras', 'HN', 'HND'),
(96, 'Hong Kong', 'HK', 'HKG'),
(97, 'Hungary', 'HU', 'HUN'),
(98, 'Iceland', 'IS', 'ISL'),
(99, 'India', 'IN', 'IND'),
(100, 'Indonesia', 'ID', 'IDN'),
(101, 'Iran (Islamic Republi', 'IR', 'IRN'),
(102, 'Iraq', 'IQ', 'IRQ'),
(103, 'Ireland', 'IE', 'IRL'),
(104, 'Israel', 'IL', 'ISR'),
(105, 'Italy', 'IT', 'ITA'),
(106, 'Jamaica', 'JM', 'JAM'),
(107, 'Japan', 'JP', 'JPN'),
(108, 'Jordan', 'JO', 'JOR'),
(109, 'Kazakhstan', 'KZ', 'KAZ'),
(110, 'Kenya', 'KE', 'KEN'),
(111, 'Kiribati', 'KI', 'KIR'),
(112, 'Korea, Democratic Peo', 'KP', 'PRK'),
(113, 'Korea, Republic of', 'KR', 'KOR'),
(114, 'Kuwait', 'KW', 'KWT'),
(115, 'Kyrgyzstan', 'KG', 'KGZ'),
(116, 'Lao People''s Democrat', 'LA', 'LAO'),
(117, 'Latvia', 'LV', 'LVA'),
(118, 'Lebanon', 'LB', 'LBN'),
(119, 'Lesotho', 'LS', 'LSO'),
(120, 'Liberia', 'LR', 'LBR'),
(121, 'Libyan Arab Jamahiriy', 'LY', 'LBY'),
(122, 'Liechtenstein', 'LI', 'LIE'),
(123, 'Lithuania', 'LT', 'LTU'),
(124, 'Luxembourg', 'LU', 'LUX'),
(125, 'Macau', 'MO', 'MAC'),
(126, 'Macedonia, The Former', 'MK', 'MKD'),
(127, 'Madagascar', 'MG', 'MDG'),
(128, 'Malawi', 'MW', 'MWI'),
(129, 'Malaysia', 'MY', 'MYS'),
(130, 'Maldives', 'MV', 'MDV'),
(131, 'Mali', 'ML', 'MLI'),
(132, 'Malta', 'MT', 'MLT'),
(133, 'Marshall Islands', 'MH', 'MHL'),
(134, 'Martinique', 'MQ', 'MTQ'),
(135, 'Mauritania', 'MR', 'MRT'),
(136, 'Mauritius', 'MU', 'MUS'),
(137, 'Mayotte', 'YT', 'MYT'),
(138, 'Mexico', 'MX', 'MEX'),
(139, 'Micronesia, Federated', 'FM', 'FSM'),
(140, 'Moldova, Republic of', 'MD', 'MDA'),
(141, 'Monaco', 'MC', 'MCO'),
(142, 'Mongolia', 'MN', 'MNG'),
(143, 'Montserrat', 'MS', 'MSR'),
(144, 'Morocco', 'MA', 'MAR'),
(145, 'Mozambique', 'MZ', 'MOZ'),
(146, 'Myanmar', 'MM', 'MMR'),
(147, 'Namibia', 'NA', 'NAM'),
(148, 'Nauru', 'NR', 'NRU'),
(149, 'Nepal', 'NP', 'NPL'),
(150, 'Netherlands', 'NL', 'NLD'),
(151, 'Netherlands Antilles', 'AN', 'ANT'),
(152, 'New Caledonia', 'NC', 'NCL'),
(153, 'New Zealand', 'NZ', 'NZL'),
(154, 'Nicaragua', 'NI', 'NIC'),
(155, 'Niger', 'NE', 'NER'),
(156, 'Nigeria', 'NG', 'NGA'),
(157, 'Niue', 'NU', 'NIU'),
(158, 'Norfolk Island', 'NF', 'NFK'),
(159, 'Northern Mariana Isla', 'MP', 'MNP'),
(160, 'Norway', 'NO', 'NOR'),
(161, 'Oman', 'OM', 'OMN'),
(162, 'Pakistan', 'PK', 'PAK'),
(163, 'Palau', 'PW', 'PLW'),
(164, 'Panama', 'PA', 'PAN'),
(165, 'Papua New Guinea', 'PG', 'PNG'),
(166, 'Paraguay', 'PY', 'PRY'),
(167, 'Peru', 'PE', 'PER'),
(168, 'Philippines', 'PH', 'PHL'),
(169, 'Pitcairn', 'PN', 'PCN'),
(170, 'Poland', 'PL', 'POL'),
(171, 'Portugal', 'PT', 'PRT'),
(172, 'Puerto Rico', 'PR', 'PRI'),
(173, 'Qatar', 'QA', 'QAT'),
(174, 'Reunion', 'RE', 'REU'),
(175, 'Romania', 'RO', 'ROM'),
(176, 'Russian Federation', 'RU', 'RUS'),
(177, 'Rwanda', 'RW', 'RWA'),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA'),
(179, 'Saint Lucia', 'LC', 'LCA'),
(180, 'Saint Vincent and the', 'VC', 'VCT'),
(181, 'Samoa', 'WS', 'WSM'),
(182, 'San Marino', 'SM', 'SMR'),
(183, 'Sao Tome and Principe', 'ST', 'STP'),
(184, 'Saudi Arabia', 'SA', 'SAU'),
(185, 'Senegal', 'SN', 'SEN'),
(186, 'Seychelles', 'SC', 'SYC'),
(187, 'Sierra Leone', 'SL', 'SLE'),
(188, 'Singapore', 'SG', 'SGP'),
(189, 'Slovakia (Slovak Repu', 'SK', 'SVK'),
(190, 'Slovenia', 'SI', 'SVN'),
(191, 'Solomon Islands', 'SB', 'SLB'),
(192, 'Somalia', 'SO', 'SOM'),
(193, 'South Africa', 'ZA', 'ZAF'),
(194, 'South Georgia and the', 'GS', 'SGS'),
(195, 'Spain', 'ES', 'ESP'),
(196, 'Sri Lanka', 'LK', 'LKA'),
(197, 'St. Helena', 'SH', 'SHN'),
(198, 'St. Pierre and Miquel', 'PM', 'SPM'),
(199, 'Sudan', 'SD', 'SDN'),
(200, 'Suriname', 'SR', 'SUR'),
(201, 'Svalbard and Jan Maye', 'SJ', 'SJM'),
(202, 'Swaziland', 'SZ', 'SWZ'),
(203, 'Sweden', 'SE', 'SWE'),
(204, 'Switzerland', 'CH', 'CHE'),
(205, 'Syrian Arab Republic', 'SY', 'SYR'),
(206, 'Taiwan', 'TW', 'TWN'),
(207, 'Tajikistan', 'TJ', 'TJK'),
(208, 'Tanzania, United Repu', 'TZ', 'TZA'),
(209, 'Thailand', 'TH', 'THA'),
(210, 'Togo', 'TG', 'TGO'),
(211, 'Tokelau', 'TK', 'TKL'),
(212, 'Tonga', 'TO', 'TON'),
(213, 'Trinidad and Tobago', 'TT', 'TTO'),
(214, 'Tunisia', 'TN', 'TUN'),
(215, 'Turkey', 'TR', 'TUR'),
(216, 'Turkmenistan', 'TM', 'TKM'),
(217, 'Turks and Caicos Isla', 'TC', 'TCA'),
(218, 'Tuvalu', 'TV', 'TUV'),
(219, 'Uganda', 'UG', 'UGA'),
(220, 'Ukraine', 'UA', 'UKR'),
(221, 'United Arab Emirates', 'AE', 'ARE'),
(222, 'United Kingdom', 'GB', 'GBR'),
(223, 'United States', 'US', 'USA'),
(224, 'United States Minor O', 'UM', 'UMI'),
(225, 'Uruguay', 'UY', 'URY'),
(226, 'Uzbekistan', 'UZ', 'UZB'),
(227, 'Vanuatu', 'VU', 'VUT'),
(228, 'Vatican City State (H', 'VA', 'VAT'),
(229, 'Venezuela', 'VE', 'VEN'),
(230, 'Viet Nam', 'VN', 'VNM'),
(231, 'Virgin Islands (Briti', 'VG', 'VGB'),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR'),
(233, 'Wallis and Futuna Isl', 'WF', 'WLF'),
(234, 'Western Sahara', 'EH', 'ESH'),
(235, 'Yemen', 'YE', 'YEM'),
(236, 'Yugoslavia', 'YU', 'YUG'),
(237, 'Zaire', 'ZR', 'ZAR'),
(238, 'Zambia', 'ZM', 'ZMB'),
(239, 'Zimbabwe', 'ZW', 'ZWE');

-- --------------------------------------------------------

-- 
-- Table structure for table `coupons_cou`
-- 

CREATE TABLE `coupons_cou` (
  `id_cou` int(11) NOT NULL auto_increment,
  `couponnumber_cou` varchar(33) NOT NULL default '',
  `idprd_cou` int(11) NOT NULL default '0',
  `discount_cou` float NOT NULL default '0',
  `startdate_cou` date NOT NULL default '0000-00-00',
  `enddate_cou` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`id_cou`),
  KEY `couponnumber_cou` (`couponnumber_cou`),
  KEY `idprd_cou` (`idprd_cou`),
  KEY `startdate_cou` (`startdate_cou`),
  KEY `enddate_cou` (`enddate_cou`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `coupons_cou`
-- 

INSERT INTO `coupons_cou` (`id_cou`, `couponnumber_cou`, `idprd_cou`, `discount_cou`, `startdate_cou`, `enddate_cou`) VALUES (1, '1234', 5, 20, '2006-01-01', '2007-01-01'),
(2, '353567', 11, 30, '2006-05-01', '2006-12-01');

-- --------------------------------------------------------

-- 
-- Table structure for table `currency_cur`
-- 

CREATE TABLE `currency_cur` (
  `id_cur` int(11) NOT NULL auto_increment,
  `name_cur` varchar(4) NOT NULL default '',
  `prefix_cur` varchar(4) default NULL,
  `postfix_cur` varchar(4) default NULL,
  `thsep_cur` char(1) NOT NULL default ',',
  `decsep_cur` char(1) NOT NULL default '.',
  `decimals_cur` tinyint(4) NOT NULL default '0',
  `default_cur` tinyint(4) NOT NULL default '0',
  `exchangerate_cur` float NOT NULL default '1',
  PRIMARY KEY  (`id_cur`),
  UNIQUE KEY `name_cur` (`name_cur`),
  KEY `default_cur` (`default_cur`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `currency_cur`
-- 

INSERT INTO `currency_cur` (`id_cur`, `name_cur`, `prefix_cur`, `postfix_cur`, `thsep_cur`, `decsep_cur`, `decimals_cur`, `default_cur`, `exchangerate_cur`) VALUES (1, 'USD', '$', NULL, '.', ',', 2, 1, 1),
(2, 'EUR', 'EUR', NULL, ',', '.', 2, 0, 1.19),
(3, 'GBP', '?', '', '.', ',', 2, 0, 1.764),
(4, 'ROL', NULL, ' lei', ',', '.', 0, 0, 3.0303e-05);

-- --------------------------------------------------------

-- 
-- Table structure for table `handling_hnd`
-- 

CREATE TABLE `handling_hnd` (
  `id_hnd` int(11) NOT NULL auto_increment,
  `fee_hnd` float NOT NULL default '0',
  PRIMARY KEY  (`id_hnd`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `handling_hnd`
-- 

INSERT INTO `handling_hnd` (`id_hnd`, `fee_hnd`) VALUES (1, 15);

-- --------------------------------------------------------

-- 
-- Table structure for table `iakt_products_prd`
-- 

CREATE TABLE `iakt_products_prd` (
  `id_prd` smallint(6) NOT NULL auto_increment,
  `idctg_prd` smallint(6) NOT NULL default '0',
  `name_prd` varchar(67) NOT NULL default '',
  `sku_prd` varchar(85) default NULL,
  `price_prd` float NOT NULL default '0',
  `description_prd` text NOT NULL,
  `shortdesc_prd` text NOT NULL,
  `weight_prd` float NOT NULL default '0',
  `file_prd` varchar(255) default NULL,
  `downloadcounter_prd` int(11) default NULL,
  `idtxc_prd` smallint(6) NOT NULL default '1',
  `visible_prd` tinyint(2) NOT NULL default '1',
  `qty_prd` int(11) NOT NULL default '0',
  `length_prd` float default NULL,
  `width_prd` float default NULL,
  `depth_prd` float default NULL,
  `alertlevel_prd` smallint(6) default NULL,
  `userrate_prd` float default '0',
  PRIMARY KEY  (`id_prd`),
  KEY `userrate_prd` (`userrate_prd`),
  KEY `idctg_prd` (`idctg_prd`),
  FULLTEXT KEY `description_prd` (`description_prd`)
) TYPE=MyISAM AUTO_INCREMENT=50 ;

-- 
-- Dumping data for table `iakt_products_prd`
-- 

INSERT INTO `iakt_products_prd` (`id_prd`, `idctg_prd`, `name_prd`, `sku_prd`, `price_prd`, `description_prd`, `shortdesc_prd`, `weight_prd`, `file_prd`, `downloadcounter_prd`, `idtxc_prd`, `visible_prd`, `qty_prd`, `length_prd`, `width_prd`, `depth_prd`, `alertlevel_prd`, `userrate_prd`) VALUES (1, 1, 'Olympus FE-100', 'OLY-FE-100', 90, '<b>From the Manufacturer</b><br />  <B>4.0 Megapixel CCD</B><BR> Capture your images in all their detail. Then print them, without loss of clarity.<P>  <B>2.8x Optical, 11x Total Zoom</B><BR> Together with Olympus precision-crafted lenses, this handy zoom lets you move in on the action, without moving a step.<P>  <B>Built-in Help Guide</B><BR> Brief in-camera descriptions and tips help you choose the ideal setting for each situation and purpose--no stopping to consult the manual.<P>  <B>Effortless Printing</B><BR> Connect to any PictBridge-enabled printer (like the Olympus P-11) and the rest is easy. Just one touch gives you photo-lab quality. No computer necessary.<P>  <B>Simple Connection to PC</B><BR> Quickly transfer images and movies to almost any computer using a simple USB connection. There''s no software required.<P>  <B>One-Touch Design</B><BR> Quickly access individual buttons to shoot, review and delete images. To set up your shots, use the arrow pad and locate Macro and Flash modes, as well as Self Timer.<P>  <B>Six Shooting Modes</B><BR> We''ve made it simple to find the right light and mood. Just turn the dial on the back of the camera to one of six options--including landscape, portrait and night scene. You can even shoot short movies, if you like.<P>  <B>Olympus Master Software</B><BR> This easy-to-use bundle provides online support, templates, firmware upgrades, as well as one-click editing tools like red-eye reduction (so you can touch up images before you print or e-mail them).<P>  <B>What''s in the Box</B><BR> Olympus FE-100 digital camera, wrist strap, USB cable, video cable, 2 AA Alkaline-type batteries, quick start guide, basic manual, CD-ROM: Olympus Master Software, advanced manual, and warranty.<br /><br /><b>Product Description:</b><br />Olympus FE-100 is a digital-camera designed for anyone seeking easy use with virtually no compromise in visual quality. With 4.0 million pixels, the Olympus FE-100 delivers excellent results and features a 2.8x optical zoom for added versatility.  Four scene modes (Portrait, Self-Portrait, Night Scene, Landscape)    Super Macro close-up from as close as 2 cm    Movie function (recording time limited only by the size of the available memory)    PictBridge support - connection to compatible printers, such as the Olympus photo printer is possible without the need for a PC   Comes with 28MB internal memory for immediate use plus xD-Picture Card slot for adding optional xD-PictureCard memory cards for longer, more practical use    Built-in multimode electronic-flash   Uses 2 AA batteries - alkaline or rechargeable', 'Olympus FE-100 4MP Digital Camera with 2.8x Optical Zoom', 1.4, '', NULL, 1, 1, 100, 7, 2, 1, 10, -5),
(2, 1, 'Canon PowerShot A510', 'CAN-A510', 159, '<b>From the Manufacturer</b><br />  Canon''s new compact 3.2-megapixel PowerShot A510 digital camera with a powerful 4x optical zoom provides you with a comfortable introduction to the fun and freedom of digital photography.<P>   Named for their use of AA batteries, Canon''s A-series digital cameras offer easy-to-use, high quality features to consumers looking to capture, save, and share meaningful memories, personal milestones and family functions.<P>  The next generation PowerShot A510 digital camera is 13 percent smaller and 10 percent lighter than its predecessor, yet it is equipped with a longer 4.0x 35-140mm (35mm format equivalent) optical zoom lens with Canon optics for sharp images. The new lens features all-glass construction and two aspherical elements in a seven-element formula.<P>  In order to make the camera smaller, Canon engineered the new PowerShot A510 model to accept SD media. Even with its small size, the camera sports a large 1.8-inch LCD screen for easy preview and review. It also includes Canon''s exclusive DIGIC image processor for faster processing speed and excellent image quality with crisp, vibrant colors.<P>  The PowerShot A510 digital camera requires only two AA batteries, while providing the same number of shots (300 with LCD screen on) as previous models that used four batteries, thanks to reductions in power consumption made possible by improvements in key components and circuit design.<P>  Like its A75 predecessor, the PowerShot A510 digital camera is equipped with a nine-point AiAF "smart" autofocus system and 13 shooting modes. The standard shooting modes are Full Auto, Program, Manual, Shutter-priority, and Aperture-priority with additional modes including Portrait, Landscape, Night Scene, Fast Shutter, Slow Shutter, Special Scene, Stitch Assist, and Movie. The Special Scene mode, which makes it easy for beginners to achieve optimum results in many popular photo opportunities, has been enhanced with the addition of two new settings called Night Snapshot and Kids and Pets. The PowerShot A510 digital camera is also capable of recording movies with sound for up to three minutes per clip, making it perfect for capturing memories in motion.<P>  The new camera''s grip is ergonomically improved, and the control layout is even easier to use than before. Other camera functions including self-timer and review have also been enhanced for greater creative flexibility.<P>  <B>The DIGIC Difference</B><BR>  Image quality is enhanced and improved as a result of Canon''s proprietary DIGIC (Digital Imaging Integrated Circuit) image processor. DIGIC combines the roles of image processing and camera function control into one chip, resulting in faster display and write times for each image and lower power consumption, which extends battery life. Moreover, because DIGIC technology was designed specifically for use in digital cameras it is also capable of handling JPEG compression and expansion, memory card control, LCD/video control and processing gain control (control of CCD signal amplification), autoexposure, autofocus, auto white balance control, and most other functions.<P>  <B>Print/Share Button</B><BR>  Located on the backside of the PowerShot A510 digital camera is the Print/Share button. This button simplifies and accelerates direct printing to compatible Canon and PictBridge-enabled printers and one-touch image transfer to Windows XP, Me, 2000, and 98 computers for use with image processing programs, uploading to the Internet, or as e-mail attachments. When the camera is connected to a compatible printer or computer, the Print/Share button illuminates to let the user know to press the Print/Share button to begin the printing or downloading process.<P>  <B>Optional Accessories</B><BR>  In addition to its rich feature set, the PowerShot A510 digital camera is compatible with a wide variety of optional accessories including supplementary wide-angle (WC-DC52), telephoto (TC-DC52A) and close-up lenses (52mm Close-up Lens 250D). These accessories enhance the new camera''s versatility and make it easier to use in specialized applications such as real estate and insurance photography. A waterproof case WP-DC60 is also available and can be used at depths up to 130 feet. The combination of the A510 digital camera with the WP-DC60 housing is great for family vacations at the beach, while skiing, or simply to protect the camera from the elements.<P>  <B>What''s in the Box:</B><BR> The PowerShot A510 digital camera kit includes Interface Cable IFC-400PCU, AV Cable AVC-DC300, Wrist Strap WS-200, SD MultiMediaCard MMC-16M and two AA-size Alkaline batteries as well as Canon Digital Camera Solution Disc Version 22, featuring the latest versions of Canon&#146;s powerful software and ArcSoft PhotoStudio.<br /><br /><b>Product Description:</b><br />This compact and lightweight Canon PowerShot 3&#46;2MP Digital Camera comes fully equipped with big&#45;time technological features&#46; The A510 has a 3&#46;2&#45;megapixel resolution with a 4x optical zoom and 3&#46;2x digital zoom&#46; Camera&#39;s 1&#46;8&#34; low&#45;temperature polycrystalline silicon TFT color LCD &#40;115&#44;000 pixels&#41; gives a big image preview and playback&#46; Other features include 9&#45;point autofocus; built&#45;in flash with auto and red&#45;eye reduction modes and continuous shooting&#58; 2&#46;3 shots per second&#46; ', 'Canon PowerShot A510 3.2MP Digital Camera with 4x Optical Zoom', 1.2, '', NULL, 1, 1, 100, 5, 2.5, 1, 10, -4),
(3, 1, 'Canon Powershot S2 IS', 'CAN-S2', 449.94, '<b>From the Manufacturer</b><br />  Have it all in one ultra-compact camera. 5.0 megapixels of imaging power deliver stunning detail and clarity, even to oversized prints and the closest crop-ins. The impressively long 12x optical zoom is a feat of engineering, with Image Stabilizer (IS) technology that eliminates camera shake and a UD lens that provides brilliant color accuracy across the entire zoom range. The 4x digital zoom brings combined zooming power all the way to 48x for superb detail at sporting events, school concerts and more. <P>  <table align="right" width="350" cellpadding="3"><tr><td><img border="0" alt="The Canon S2 IS''s Image Stabilization" src="http://images.amazon.com/images/G/01/photo/detailpages/canon_s2_is_image_stab_350.jpg"></td></tr> <tr><td><center><b><i>The Canon S2 IS''s powerful image stabilization compensates for camera shake.</i></b></center></td></tr></table>  <B>Because great shots can happen any time</B><BR> Now there''s no need to interrupt your movie when you see a great shot. With the S2 IS''s new MovieSnap feature, you can simply press the shutter to capture a full 5.0-megapixel still image at any time while recording a movie.<P> <B>True motion pictures with high-end options</B><BR> Wait until you see the difference that 30 frames-per-second VGA continuous movie recording makes in your films. You''ll hear the difference, too: The S2 IS is equipped to record in stereo, with a high sampling rate, adjustable microphone level setting, and wind filter option for excellent sound quality. The camera even allows digital zooming and manual focus during movie recording. <P>   <B>Advanced imaging technology improves every photo</B><BR> <I>DIGIC II Image Processor </I><BR> Canon''s DIGIC II Image Processor is designed to improve processing speed and image quality, so the DIGIC II processor provides markedly faster camera startup, autofocus and playback plus it assures that every image is more colorfully vibrant.<P> <I>iSAPS Technology</I><BR> iSAPS Technology is an entirely original scene-recognition technology developed for digital cameras by Canon. Using an internal database of thousands of different photos, iSAPS works with the fast DIGIC II Image Processor to improve focus speed and accuracy, as well as exposure and white balance.<P> <B>Fastest performance standard</B><BR> PowerShot S2 IS supports the USB 2.0 Hi-Speed standard, so you''ll enjoy the highest possible data transfer speeds when using a USB 2.0 compatible computer. The camera''s performance level is high enough to take full advantage of super-high-speed SD memory cards as well. <P> <table align="left" width="275" cellpadding="3"><tr><td><img border="0" alt="The Canon S2 IS''s vari-angle LCD" src="http://images.amazon.com/images/G/01/photo/detailpage/canon_s2_is_lcd_275.jpg"></td></tr> <tr><td><center><b><i>Find just the right angle with the S2 IS''s 1.8-inch vari-angle LCD display.</i></b></center></td></tr></table> <B>See it on the big screen</B><BR> Bright and sharp, the camera''s power-saving LCD monitor measures a full 1.8 inches with a stunning 115,000 pixel resolution. With it, you can view your scene before and after you shoot it with extraordinary clarity. And when you''re shooting at dusk or at night, Night Display function lets you see the display clearly. It brightens the object by reducing the frame rate on the LCD screen. <P> <B>A substantial lineup of available accessories</B><BR> PowerShot S2 IS lets you add value and take your photography even further with optional accessories. Wide-angle converter and teleconverter lenses prepare you for capturing any shot perfectly, while a high-power flash doubles your flash range for pro-level illumination.\r\n<P> <B>Direct Photo Printers</B><BR> For desktop large-format printing, try one\r\n  of the Direct Photo Printers, which allow you to print directly in one of two\r\n  ways: plug the compatible PowerShot camera into the Direct Photo Printer using\r\n  the supplied cable, or simply insert a memory card with supplied adapter. You\r\n  can also connect the printer to your computer for more options. Print high\r\n  resolution borderless images in post card size or 8.5 x 11-inch size within\r\n  minutes.  \r\n<P><B>What''s in the Box</B><BR> PowerShot S2 IS body, neck strap NS-DC3, AA-size Alkaline batteries (x4), stereo video cable STV-250N, interface cable IFC-400PCU, SD memory card SDC-16MB, digital camera solution CD-ROM, lens cap<br /><br /><b>Product Description:</b><br />Capture your family&#146;s active lifestyle with a digital camera that can keep up&#46; This Canon PowerShot has a super long 12x optical&#47;4x digital&#47;48x combined zoom for up&#45;close shots and 5MP of imaging power for stunning detail&#46; The camera also shoots movies with an exclusive MovieSnap feature with high&#45;quality 30 fps VGA continuous movie recording&#46; Includes a 1&#46;8&#34; vari&#45;angle LCD screen for clear images and a USB 2&#46;0 hi&#45;speed interface for faster downloads and file transfers&#46; Imported&#46; 3Hx4&#45;1&#47;2Wx3L&#34;&#46;  \r\n', 'Canon Powershot S2 IS 5MP Digital Camera with 12x Optical Image Stabilized Zoom', 2, '', NULL, 1, 1, 100, 6, 3.2, 1.1, 10, -5),
(4, 1, 'Nikon D50', 'NIK_D50', 600, '<b>From the Manufacturer</b><br />  Nikon''s D50 interchangeable-lens digital SLR camera is designed to make it easier than ever to enjoy the thrill of outstanding digital SLR picture quality easily and instantly. Combining the outstanding response of Nikon''s patented digital and photographic performance with optical performance available only from renowned Nikkor interchangeable lenses and expanded shooting options only available in a quality digital SLR camera, the Nikon D50 makes exceptional digital SLR photography a reality for everyone.<P>  The next evolution of Nikon''s scene-optimized Digital Vari-Program modes simplifies picture taking, freeing the photographer to concentrate on capturing the evanescence of special moments. Selecting one of the seven easily distinguishable icons from the handy exposure mode dial optimizes otherwise complex settings and ISO-equivalent sensitivity to produce consistently remarkable results. Newly added is Child mode, which makes it easier to take memorable pictures of the little ones complete with ideal vivid color and contrast--ready to print beautifully without the fuss of later adjustments at the computer. Full manual exposure control is also available, allowing more advanced photographers all the creative freedom they desire while also making it possible for all photographers to expand their enjoyment of photography.<P>  The D50 features a new 6.1 effective megapixel Nikon DX Format CCD image sensor and a highly advanced image processing engine that team together to create truly faithful image files that are capable of significant enlargement while remaining manageable in overall file size, making it easier to take and store more great pictures. These optimized components produce more consistent results, even under shooting conditions that challenge other digital cameras, such as when working with light-colored subjects or long exposure shots.<P>  Distinguishing itself over lesser systems, the Nikon D50 is always ready to shoot when that special moment or expression presents itself. When the power is turned on, the camera is ready to shoot in just 0.2 seconds for near-instant readiness. The shutter''s release lag time is also minimized for near-instant response that virtually eliminates a common frustration of digital photography.<P>  <table align="right" width="350" cellpadding="3"><tr><td></td></tr> <tr><td><center><b><i><small>The D50 is capable of continuous shooting at 2.5 frames per second for bursts of up to 137 pictures.</i></b></small></center></td></tr></table>  Continuous shooting at 2.5 frames per second can be maintained for bursts of up to 137 pictures, making action photography a reality. Pictures taken are instantly processed and recorded to the photographer''s compact SD (Secure Digital) memory card. A new USB 2.0 Hi-Speed interface supports faster transfer of images when connected to a compatible computer.<P>  Shutter speed choices extend from 30 seconds to an action-stopping 1/4,000 second. A high-speed flash sync speed up to 1/500 second makes great fill flash photography possible, and Nikon technology makes it automatic. A bulb setting is also included for long exposures. The shutter is designed to ensure fast curtain action for consistent operation and accurate, predictable results, even at high shutter speed settings. Auto ISO maximizes available light by automatically setting ISO-equivalent sensitivity across the available range of 200 to 1600. D50 photographers can also opt to set the ISO sensitivity manually for personal control.<P>  The D50''s 5-area autofocus system inherits Nikon''s proven cross-type center sensor, broad frame coverage, and class-leading low-light detection found only in the award-winning Nikon D70 camera, and it delivers even greater AF precision with fast, more consistent subject acquisition and improved focus tracking. The new system adopts AF-A mode for smooth automated operation that switches between AF-S (single-servo autofocus) and AF-C (continuous-servo autofocus) depending on the movement of the subject in the framed shot. An AF-assist illuminator is also included, which helps maximize performance when shooting in low lighting conditions.<P>  The D50 produces consistently natural coloration by measuring the entire frame of the shot and matching white balance to the light source. Advanced auto white balance handles most lighting situations, but the flexible options include a choice of six specific manual settings, white balance bracketing for added creative choice of results, as well as a preset option for using a gray or white object as a calibrating reference under mixed lighting conditions.<P>  Nikon''s new 3D Color Matrix Metering II ensures accurate exposure control in most types of lighting situations by automatically comparing input from its frame-wide 420-pixel sensor for each scene to a large onboard database of over 30,000 scenes from actual photography. Professionals and amateurs alike rely on Nikon''s exclusive light metering technologies that produce ideal exposures instantly. Newly developed exposure evaluation methods detect highlights and shadows in the frame and compensate for them to help minimize under- or over-exposure by comparing the lighting pattern of the frame with the onboard database of scenes, thus enhancing performance for more accurate and consistent exposures.<P>  The compact, lightweight design of the new D50 makes it easy to carry on any outing, while its body contours and easily accessible controls provide handling efficiency and easy operation. Newly designed on-screen menus present clear and helpful user information in plain language on the D50''s large 2.0-inch LCD monitor, and intuitive help dialogs are available for on-the-spot reference to the respective menu selections. The high-capacity rechargeable lithium-ion battery helps extend mobility and convenience by delivering the power to shoot up to 2,000 images on a single charge.<P>  <table align="left" width="240" cellpadding="3"><tr><td></td></tr> <tr><td><center><b><i><small>The D50''s 2.0-inch LCD display is larger than the 1.8-inch screens found in cameras such as the Canon Digital Rebel XT.</i></b></small></center></td></tr></table>  The D50 is an outstanding performer, right down to its diverse playback options, versatile custom settings, USB 2.0 Hi-Speed interface for easy connectivity or direct printing to any PictBridge compatible printer with in-camera page setup, and Nikon''s complimentary PictureProject software that will extend anyone''s photographic experience with easy image transfers, effective image organization and editing, creative page layout design, plus printing and sharing. PictureProject''s new version 1.5 provides customers with an exceptional added value topped only by its excellent performance.<P>  These inherent advantages combine with the empowering and creatively inspiring components of Nikon''s Total Imaging System, including high-quality AF and DX Nikkor lenses, Speedlights and Nikon''s Creative Lighting System, as well as versatile software options, to deliver a new level of operating ease, expanded creative possibilities, and pure enjoyment. The Nikon D50 presents the perfect opportunity for anyone to start enjoying the advantages of Nikon digital SLR photography today.<P>  <B>18-55mm ED AF-S DX Zoom Nikkor Lens Included</B><BR> A key advantage and one source of the fun associated with Nikon digital SLR photography is the ability to take advantage of the creative possibilities offered by interchangeable lenses. The new D50 offers seamless compatibility with Nikon''s extensive family of high-performance AF Nikkor lenses, as well as the expanding family of digital-dedicated DX Nikkor lenses, providing superb color reproduction, razor-sharp image clarity, and fast and accurate autofocus performance.<P>  This D50 camera kit comes with an 18-55mm f3.5-5.6G ED AF-S DX Zoom Nikkor lens. Ideal as a normal lens designed exclusively for Nikon DX format SLRs, this ultra-compact 3x zoom provides superb versatility in a wide variety of shooting situations. Its new compact rod-type Silent Wave Motor (SWM) enables ultra-high speed autofocusing with exceptional accuracy and super-quiet operation, its ED glass element achieves minimized chromatic aberration and superior optical performance, and its hybrid aspherical element ensures high resolution and contrast.<P>  The 18-55mm lens also features a Focus Mode switch that enables quick switching between A (autofocus) and M (manual focus), plus a seven-blade rounded diaphragm for more natural out-of-focus highlights. In addition, the lens'' Nikon Super Integrated Coating minimizes ghosting and flare to provide even higher contrast and more vivid images, even in challenging light conditions.<br /><br /><b>Product Description:</b><br />18-55mm f/3.5-5.6G ED Lens  / D50 is the smallest, lightest and easiest-to-use Nikon''s digital SLR camera series 2 Inch Color LCD screen   Self-Timer -  Electronically controlled timer with 2 to 20 seconds duration   Storage (Number of frames per 256MB SD Memory Card, image size L) -  RAW approx. 33, FINE approx. 70NORMAL approx. 137BASIC approx. 258, RAW & BASIC approx. 29 **We suggest getting a 512MB memory card or larger for more flexible use.**   Video Output -  Can be selected from NTSC and PAL      Interface -  USB 2.0 (Hi-Speed)     Shutter -  Combined mechanical and CCD electronic shutter,30 to 1/4000 sec. in steps of 1/3 or 1/2 EV, bulb   Flash Control -  1) TTL -  TTL flash control by 420-pixel RGB sensorBuilt-in Speedlight -  i-TTL Balanced Fill-Flash or standard i-TTL flash (spot metering) SB-800 or 600 -  i-TTL Balanced Fill-Flash or standard i-TTL flash (spot metering)2) Auto aperture -  Available with SB-800 with CPU lens3) Non-TTL Auto -  Available with Speedlights such as SB-800, 80DX, 28DX, 28, 27, and 22s4) Distance-priority manual available with SB-800   Unit Dimension (WxHxD) -  Approx. 5.2 x 4.0 x 3.0 inches / Weight -  About 1 pound without battery or lens   Tripod socket', 'Nikon D50 6.1MP Digital SLR Camera with 18-55mm f/3.5-5.6G ED AF-S DX Zoom Nikkor Lens', 2, '', NULL, 1, 1, 100, 8, 4, 2, 10, -5),
(5, 1, 'Canon EOS 5D', 'CAN-5D', 3000, '<b>From the Manufacturer</b><br />  The 12.8-megapixel Canon EOS 5D creates a new D-SLR category, combining a full frame CMOS sensor with a lightweight, compact magnesium-alloy body. Weighing just 810 grams, it features a second generation 35.8 x 23.9-millimeter CMOS sensor, 3 frame-per-second, 60-Large-JPEG-frame burst, and 0.2 second start-up time operation.<P>  Marking five years since Canon''s first CMOS image sensor appeared in the EOS D30, the release represents Canon''s fifth new CMOS sensor to be released since April 2004.<P>  Equivalent in size to a frame of 35mm film, the camera''s 35.8 x 23.9-millimeter CMOS sensor gives photographers a full angle of view without magnification or cropping effect. It provides tighter control over depth of field and improves image quality by capturing more light with its large pixels.<P>  <B>Key features</B><BR>  Super responsive, the EOS 5D is driven by the same DIGIC II processor found in Canon''s EOS-1D professional range cameras.<P>  Protected with a rugged yet lightweight magnesium-alloy exterior, the camera also features new Picture Style pre-sets, a new hi-resolution 2.5-inch LCD monitor, 9-point auto focus with 6 invisible Assist AF points to improve tracking performance, compatibility with Wireless File Transmitter WFT-E1, custom mode for fast recall of user defined camera set-ups, USB 2.0 Hi-Speed interface for fast downloads and 1/8000- to 30-second shutter speed with X-sync at 1/200 second.<P>  <B>The CMOS advantage</B><BR>  With five years of in-house CMOS development since the original EOS D30, Canon''s latest CMOS sensor features 12.8-megapixel resolution, and the same second-generation on-chip noise reduction circuitry used on the <a href="/exec/obidos/ASIN/B0007Y793K/002-5874727-5663227">EOS-1Ds Mark II</A>. This effectively suppresses random noise and eliminates fixed-pattern noise for extremely clean, high-fidelity images. The wide 100-1600 ISO speed range is extendable to L:50 and H:3200.<P>  <B>Improved in-camera control</B><BR>  New Picture Style presets simplify in-camera control over image quality. Delivering more immediately usable JPEG images straight out of the camera without need for post-production, Picture Style pre-sets can be likened to different film types--each one offering a different color response. Within each easily selectable pre-set, photographers have control over sharpness, contrast, color tone, and saturation.<P>  The pre-sets include:  <ul><li><I>Standard</I>--for crisp, vivid images that don''t require post-processing; <li><I>Portrait</I>--optimizes color tone and saturation and weakens sharpening to achieve attractive skin tones; <li><I>Landscape</I>--for deep greens and blues with stronger sharpening to give a crisp edge to mountain, tree, and building outlines; <li><I>Neutral</I>--ideal for post-processing; <li><I>Faithful</I>--adjusts color to match the subject color when shot under a color temperature of 5200K; <li><I>Monochrome</I>--for black and white shooting with a range of filter effects (yellow, orange, red, and green) and toning effects (sepia, blue, purple, and green)</ul>  Additionally, three user-defined entries allow the possibility to create additional variations on the in-camera styles or install additional custom Picture Style files. Additional custom Picture Style files may be downloaded from Canon''s web site.<P>  Picture Style replaces internal image processing previously controlled by setting processing parameters and color matrix. Picture Style is also supported by the supplied Digital Photo Professional and RAW Image Task software.<P>  <B>New LCD monitor</B><BR>  For improved image review and menu readability, the EOS 5D is fitted with a new large-size high-resolution 2.5-inch 230K pixel poly-silicon TFT LCD monitor. The improved screen retains brightness and visibility throughout a wide 170-degree angle of view, both vertically and horizontally, making it easy to view images when the camera is mounted in a fixed position.<P>  <B>Autofocus</B><BR>  A newly developed 9-point auto focus system features 6 additional invisible Assist AF points located inside the spot-metering circle. These points come into effect when the camera is switched to AI SERVO AF with the center focus point selected and are automatically used to improve the camera''s subject tracking performance.<P>  <B>Ergonomics and control</B><BR>  The ''Premium EOS'' design features a magnesium alloy exterior with rubberized grip surfaces. The discreet and lightweight compact body measures just 152 x 113 x 75 millimeters and weighs only 810 grams, making it two thirds the volume and weight of the EOS-1Ds Mark II.<P>  In a handy new feature, current camera settings can be stored and assigned to the C (camera settings) position on the Mode Dial. This allows photographers to switch quickly between two completely different camera set-ups without having to switch bodies--ideal for photographers who need to rapidly switch their cameras from an indoor to outdoor shooting condition, for example. Exposure mode, ISO speed, AF mode, drive mode, Picture Style, white balance, and custom functions are all stored in the custom setting. There are 21 custom functions with 57 user-definable settings to enable photographers to configure the camera for their preferred way of working.<P>  <B>Connectivity</B><BR>  With the optional Wireless File Transmitter WFT-E1 (not included--must be purchased separately), photographers can work cable-free as full-frame image files can be transferred automatically through a wireless LAN to a computer in seconds.<P>  A USB 2.0 Hi-Speed interface allows rapid transfer of images from camera to computer, ideal for shooting straight-to-hard-drive with the camera tethered to a computer in a studio environment, thus providing full screen previews of images as they are shot. The EOS 5D also has a video out interface to allow playback and review on a TV monitor, and it''s PictBridge compliant to support direct printing to any compatible photo printer without the need for a computer. It takes both CompactFlash Type I and Type II cards, including cards of 2 GB capacity and larger.<P>  <B>Compatibility and accessories</B><BR>  The EOS 5D offers complete compatibility with all Canon EF lenses, providing photographers with access to a vast range of lenses with focal lengths from 14 to 600mm.<P>  The camera is also compatible with the new (as of August 2005) high-performance <a href="/exec/obidos/ASIN/B000AZ57M6/002-5874727-5663227">EF 24-105mm f4L IS USM</A>, a lightweight Image Stabilizer lens. Completing Canon''s f4L-series zoom lens range, the new lens complements the <a href="/exec/obidos/ASIN/B00009R6WO/002-5874727-5663227">EF 17-40mm f4L USM</A> and <a href="/exec/obidos/ASIN/B000053HH5/002-5874727-5663227">EF 70-200mm f4L USM</A> lenses. An ideal match for the lightweight EOS 5D, these lenses are designed for professional photographers requiring high-quality lightweight lenses with a fixed aperture throughout the zoom range.<P>  Also compatible with EX series Speedlites and other EOS accessories, the camera provides photographers with a highly adaptable and flexible camera system. Canon''s E-TTL II flash metering ensures accurate flash exposures by taking into account such factors as lens distance information, ambient light readings and the detection of reflective objects in order to calculate flash output.<P>  The BG-E4 is a new battery grip designed especially for the EOS 5D. (Not included--must be purchased separately.) Constructed with the same magnesium alloy as the camera''s exterior, it has a solid and comfortable hold. The grip can accommodate two BP-511A/514/512/511 battery packs or six AA batteries. The Battery Grip BG-E4 features a shutter release button, AE/FE lock button, AF point selector, and main dial to enable comfortable use of the camera when held vertically.<P>  The camera''s focusing screens are interchangeable: In addition to the "Standard Precision Matte" (Ee-A) focusing screen supplied with the camera, "Precision Matte with Grid" (Ee-D) and "Super Precision Matte" (Ee-S) screens are available.<P>  The EOS 5D supports the optional Data Verification Kit DVK-E2 v2.2 (not included--must be purchased separately), which verifies the authenticity of images taken with the camera.<P>  <B>New software</B><BR>  The EOS 5D is supplied with the EOS Digital Solution Disk v11, which includes a new version of Canon''s Digital Photo Professional (DPP) RAW processing software--now at version 2.0. DPP now supports RAW images shot on all EOS digital cameras from the EOS D30 onwards, and includes support for Picture Styles. Improvements and additions are aimed at improving functionality and workflow efficiency for professionals, and include: easy image selection with three levels of check marks; real-time adjustment of sharpness; improved image correction (Copy Stamp); enhanced image transfer function (single-image transfer to PhotoShop is possible); extended color space support, now including Apple RGB and ColorMatch RGB; and improved usability of the CMYK simulation function.<P>  Also provided is on the EOS Digital Solution Disk v11 is ZoomBrowser EX (PC) and ImageBrowser (MAC) v5.5 for managing images, EOS Capture v1.5 for remote shooting, PhotoStitch v3.1, PhotoRecord v2.2 (PC) and RAW ImageTask v2.2. The EOS 5D is compatible with Canon iMAGE Gateway, which provides a 100 MB online photo album.<br /><br /><b>Product Description:</b><br />The new Canon EOS 5D offers advanced photographers a lightweight, robust digital SLR that uses Canon''s superlative EF lenses without a conversion factor. Its full-frame 12.8 Megapixel CMOS sensor combines with Canon''s DIGIC II Image Processor, a high-precision 9-point AF system with 6 assist points, and "Picture Style" color control to deliver images of superior quality with enough resolution for any application. With its wide-angle capabilities, 2.5 inch LCD and magnesium-alloy body, the 5D is the perfect addition to the Digital EOS line.    USB 2.0 Hi-Speed, NTSC/PAL for video output connectivity   Focus Modes - Autofocus, (One-Shot AF, Predictive AI Servo AF, AI Focus AF (automatic switching between One-Shot/Predictive AI Servo AF)), Manual Focus (MF)   Exposure Modes - Program AE (Shiftable), Shutter speed-priority AE, Aperture-priority AE, Full Auto, E-TTL II autoflash program AE, Manual exposure   Shooting Modes - Single, Continuous (approx. 3 fps), Self-timer   Pentaprism viewfinder and 2.5 LCD TFT Color Screen   Uses one of these battery packs - BP-511A/BP-514/BP-511/BP-512   Unit Dimensions (W x H x D) - 6.0 x 4.4 x 3.0 in./152 x 113 x 75mm (no lens) / Weight - 28.6 oz./810g (Body only) ', 'Canon EOS 5D 12.8 MP Digital SLR Camera (Body Only)', 2, '', NULL, 1, 1, 100, 9, 3, 2, 10, -5),
(6, 1, 'Canon EOS 20D', 'CAN-20D', 1379.94, '<b>From the Manufacturer</b><br /> The perfect EOS for advanced amateurs and professionals alike, the EOS 20D sets new standards in its class. Featuring an all-new 8.2 MP CMOS sensor, a second-generation DIGIC II image processor, 5 fps performance for up to 23 consecutive frames, and a 0.2 second start-up time, the EOS 20D is designed to capture richly detailed, perfectly exposed images with speed formerly found only in cameras several times the price. Other features include a top shutter speed of 1/8,000 seconds, flash sync at 1/250, a new high-precision nine-point AF system, a built-in multicontroller for fast focusing point selection, and a refined magnesium alloy body for rugged, go-anywhere photography. Compatible with not only Canon''s new EF-S lenses but the entire EOS system of lenses and flashes, the EOS 20D is a professionally featured camera with a consumer price tag. <p><b>8.2-Megapixel CMOS Sensor</b><br> Canon''s all-new large-area CMOS (complementary metal oxide semiconductor) sensor captures images with exceptional clarity and tonal range, and offers the most pixels in its class. This second-generation APS-C-size sensor (22.5 by 15.0mm) has the same 3:2 ratio as film cameras, enabling an effective angle of view that is 1.6 times the normal EF lens focal length. The EOS 20D has an extensive ISO range (from 100 to 1600 plus ISO 3200 in extended mode), and the sensor features a newly developed set of narrow-gap microlenses and noise-reduction circuits to improve performance at high ISOs and optimized photodiode configurations for improved performance at all ISOs. This results in larger, clearer, sharper, and more detailed photographs right from the start.  <p><b>Second-Generation DIGIC II Image Processor	</b><br> The EOS 20D benefits from Canon''s in-house development: The DIGIC II image processor was developed originally for the EOS-1D Mark II and enhances every aspect of image capture. Information captured by the CMOS sensor is processed and assembled into images of exceptional quality by this new image processor. With the DIGIC II image processor on board, photographers can expect precise, natural colors and spot-on white balance in any number of lighting situations. Through sophisticated signal processing algorithms, the DIGIC II image processor even accelerates all aspects of image capture, while consuming less energy than other processors.  <p><b>Every Function Optimized for Speedy RAW and JPEG Capture  </b><br> The EOS 20D has been designed to capture images with speeds that had been reserved for professional-level cameras. Whether it''s the 0.2 second start-up time, the high-speed mirror drive, the class-leading 65 microsecond shutter release lag time, or the predictive AF focusing at speeds up to 5 frames per second, the EOS 20D will amaze and delight photographers who don''t want to wait for their camera when they''re ready to shoot. The 20D''s CMOS sensor allows four-channel high-speed data readout, and the DIGIC II image processor processes the data quickly, writing files to the CompactFlash card faster, and allowing continuous shooting for up to 23 frames (JPEG Large/Fine) with significant reductions in buffer clearing times.  <p><b>JPEG or Simultaneous RAW+JPEG  </b><br> Whenever you shoot the EOS 20D, you can choose to have it record RAWs or JPEGs alone, or in RAW plus JPEG formats simultaneously. The JPEG recording format is ideal for purposes such as Internet image transfers that require reduced file sizes. Canon''s proprietary RAW (.CR2) format, on the other hand, employs lossless compression to ensure the highest possible image quality, and is recorded at 12 bits per pixel to provide a wider range of tones and superior detail in bright highlights and deep shadows when compared with JPEG files. RAW files must be processed before they can be opened in your computer''s image-editing software. This conversion process typically takes only a few seconds using the dedicated driver software, which will convert the RAW file into a standard 8-bit-per-channel JPEG or TIFF file, or for maximum tonal range, a 16-bit TIFF. There are six selectable settings for in-camera JPEG image quality, when CF card space is at a premium.  <p><b>Expansive Sensor Array for Easier Composition  </b><br> The EOS 20D has a newly developed high-precision nine-point AF system for speedy and accurate focusing in any situation. An improved focusing screen with precision matte finish enables brighter and easier manual focus. A newly developed multicontroller, conveniently located on the back of the camera for thumb-controlled action, allows the photographer to instantly choose any of the nine focus points or direct the camera to choose them automatically. Focusing points are positioned in the viewfinder in a wide diamond-shaped array, allowing the user to achieve focus quickly in numerous compositions and situations.  <p><b>Features Formerly Offered Only in Canon''s Pro Cameras Allow for More Fine-Tuning  </b><br> Photographers will find their options for color settings greatly expanded in the new EOS 20D. Taken directly from the EOS-1D Mark II, the white-balance compensation function utilizes the new multicontroller and a nifty LCD monitor display to tune any white balance setting up to +/-9 steps in blue, amber, magenta, or green hues to ensure spot-on color. The new white-balance bracketing feature produces a series of three files varying white balance from magenta to green or blue to amber, depending on the lighting situation. <p> Images can be processed directly for the industry print standard Adobe RGB or standard sRGB, and are compatible with DCF 2.0 and Exif 2.21 standards for greater flexibility. A range of in-camera image processing parameters can optimize JPEG files for direct printing or post-processing, or can be customized to the user''s tastes and needs. <p> The EOS 20D also features a built-in monochrome mode, a first in Canon digital SLRs, which uses digital processing to re-create the effects of a number of different black and white filters and toning effects. These features help to take the guesswork out of black-and-white photography, reducing the need for post-processing by delivering the desired detail and contrast of a black-and-white image from the start.  <p><b>Strength and Elegance Combined	</b><br> The EOS 20D feels solid and rugged in your hands, ensuring stable, easy handling. Its rigid chassis combines engineering plastic with stainless steel and is covered by strong, lightweight magnesium alloy panels on the top, front, and rear. Controls are ergonomically shaped and positioned to sustain the EOS tradition of ergonomic excellence and sure-fire operation. The newly designed grip, shutter button, and rubber skin contribute to this excellent holding comfort, and the camera''s high-profile built-in flash is compact and hides itself neatly into the top of the body. A newly refined finish adds to the elegance of the camera body.  <p><b>Expanded Zoom Display During Playback  </b><br> While viewing recorded images on the camera''s 1.8-inch, high-definition TFT color LCD, you can enter enlargement mode and enlarge them up to 10 times in 15 stops for detailed analysis of lighting, composition, camera movement, focusing accuracy, facial expression, and more. The new multicontroller enables horizontal and vertical scrolling, while the main dial enables viewing of the previous or next image stored in the CF card at the same enlarged view. In the maximum reduced view, nine images are displayed simultaneously on the screen, making them quicker to find. The camera can be set to automatically rotate vertical images so they can be viewed easily on the monitor and also after downloading to your computer.  <p><b>Direct Printing with PictBridge-Compatible Printers	 </b><br> The EOS 20D lets you print beautiful photos with minimum time and effort--directly from the camera. Simply connect the camera to any PictBridge-compatible printer via the high-speed USB 2.0 port to print images stored on the CF card. You can even set the EOS 20D to trim the image, add a surrounding "frame," superimpose a date, or print multiple copies. The EOS 20D''s direct-printing feature complies with Exif v2.2 (Exif Print) and DPOF v1.1. With a host of portable and home printers available from Canon, including the new PIXMA iP4000 and PIXMA iP3000 photo printers, getting tangible results from the camera has never been faster or easier.  <p><b>Software  </b><br> The EOS 20D comes bundled with three software CDs: Canon''s Digital Photo Professional 1.1, the EOS Solution Disk 8.0, and Photoshop Elements 2.0. Each application is designed to optimize captured images and streamline the digital workflow.  <p><b>Includes EF-S 18-55mm f3.5-5.6 Lens  </b><br> The EF-S 18-55mm f3.5-5.6 is a standard zoom lens. Effective focal length is equivalent to 29-88mm in 35mm film format. <ul> <li>Compact and lightweight <li>11 elements in nine groups, including one high-precision aspherical lens element <li>High image quality at all focal lengths <li>Optimized lens coatings to minimize ghosting and flare <li>Fast AF speed <li>Very close focusing distance (0.28 meters at all focal lengths) <li>Circular aperture gives a more attractive appearance to out-of-focus background areas in photos shot using the widest apertures <li>Lead-free optics </ul> <p> <B>EF and EF-S Lenses</B><br> The EOS 20D is compatible with all Canon lenses in the EF lineup, ranging from ultrawide-angle to super-telephoto lenses, and including Canon''s new EF-S series lenses, manufactured specifically for the 20D and Digital Rebel. The EF lineup employs advanced optical know-how and micron precision engineering to deliver unprecedented performance in all facets of the photographic process. Aspherical optics and fluorite elements, for example, are featured in the universally acclaimed L-series lenses. Canon''s image stabilization feature minimizes the effect of camera shake. Through Canon''s EF lenses, photographers can truly maximize the quality and liberating performance of the EOS 20D.  <p><b>Flash Photography  </b><br> The EOS 20D features the acclaimed E-TTL II flash metering system introduced with the EOS-1D Mark II. Whether using its flush mounted integral flash (guide no. of 43/13 @ ISO 100 m/ft.) or any of the flashes in the EX Speedlite line, E-TTL II provides stable flash brightness through numerous exposures.  <p><b>Additional Accessories	</b><br> In addition to Canon''s EF series of lenses and Speedlites, several other accessories are designed to work specifically with the EOS 20D. The Battery Grip BG-E2 adds a vertical shutter release, and is compatible with up to two of Canon''s BP-511/511A/512/514 lithium-ion battery packs, or alternatively a set of six AA batteries, for greater convenience when traveling. Canon''s Semi Hard Case EH/7-L can accommodate the EOS 20D with a small zoom lens (EF-S17-85mm f4-5.6 IS USM included), and the EOS 20D is compatible with Canon''s DVK-E2 image data verification kit to check original image data authenticity, whenever verification is essential.  <P><B>What''s in the Box</B><BR> EOS 20D digital camera, EF-S 18-55mm f3.5-5.6 lens, Lithium-ion battery pack (BP-511A) with protective cover, battery charger (CG-580), USB cable (IFC-400PCU), video cable (VC-100), EB eyecup, wide neck strap, EOS Digital Solutions Software CD-ROM, Adobe Photoshop Elements 2.0 Software CD-ROM, EOS 20D instruction manual, 1-year USA limited warranty<br /><br /><b>Product Description:</b><br />The perfect EOS for advanced-amateurs and professionals alike, the EOS 20D sets new standards in its class. Featuring an all-new 8.2 MP CMOS Sensor, a second generation DIGIC II Image Processor, 5 fps performance for up to 23 consecutive frames and a 0.2 second start-up time, the EOS 20D is designed to capture richly detailed, perfectly exposed images with speed formerly found only in cameras several times the price. Other features include a top shutter speed of 1/8000 sec., flash sync at 1/250, a new high-precision 9-point AF System, a built-in multi-controller for fast focusing point selection and a refined magnesium alloy body, for rugged, go anywhere photography. Compatible with not only Canon''s new EF-S Lenses, but with the entire EOS System of lenses and flashes, the EOS 20D offers lots of creative growth potential.  Advanced Viewing and Printing, Powerful Software     Compatible with all EF/EF-S Lenses and Many EOS System Accessories     Built-in electronic-flash with shoe for optional add-on flashes   1.8 LCD screen and Viewfinder   Self Timer   Unit Dimensions (W x H x D) -  5.7 x 4.2 x 2.8 in.   Uses CompactFlash memory storage cards for image storage (Type 1 & 2)       Canon BP511 rechargeable battery        Images transferable to PC Macintosh or PictBridge and Canon-Direct    Includes Canon 18-55mm (3x) EF Zoom Lens\r\n', 'Canon EOS 20D 8.2MP Digital SLR Camera with EF-S 18-55mm f/3.5-5.6 Lens', 2.5, '', NULL, 1, 1, 100, 7, 4, 2, 10, -5),
(7, 1, 'Nikon D70S', 'NIK-D70s', 899, '6.1 Megapixel / 2" LCD / Uses CompactFlash Memory Card / Fast Shutter / Auto and Manual Focus and Exposure Modes / Built-in Speedlight / PC and Mac 3 fps Continuous Shooting - for up to 144 consecutive shots                                                                                                                                             Refined 5-Area AF System - with NEW All-Area Search / 3D Color Matrix Metering   Fast - 1/8000 sec. Maximum Shutter Speed & 1/500 Sec. Flash Sync   Built-in Speedlight Electronic-Flash   Dimension (WxHxD) -  Approx. 5.5 x 4.4 x 3.1 inch / Weighs 1.25 lbs ', 'Nikon D70S SLR 6.1 Megapixel Digital Camera Body (Lens not included)', 1.25, '', NULL, 1, 1, 100, 8, 5, 2, 10, -5);
INSERT INTO `iakt_products_prd` (`id_prd`, `idctg_prd`, `name_prd`, `sku_prd`, `price_prd`, `description_prd`, `shortdesc_prd`, `weight_prd`, `file_prd`, `downloadcounter_prd`, `idtxc_prd`, `visible_prd`, `qty_prd`, `length_prd`, `width_prd`, `depth_prd`, `alertlevel_prd`, `userrate_prd`) VALUES (8, 1, 'Sony Cybershot DSCP73', 'SON-P73', 199, '<b>Amazon.com Product Description</b><br />With its small size and quick reaction time, the Sony DSCP73 digital camera will be your constant photographic companion. The affordable DSCP73 offers point-and-shoot simplicity with a variety of features normally found in higher-end models. This 4-megapixel camera features a 3x optical zoom, 4-shot burst mode, conversion lens compatibility, A/V connection to view images on your TV, and a high-resolution movie mode that''s limited only by your Memory Stick''s capacity. For a step up in price, the <a href="/exec/obidos/ASIN/B0001G6UCA/002-5874727-5663227">Sony DSCP93</a> adds a 5-megapixel CCD, higher resolution LCD screen, and 9-shot burst mode. <p> <b>Optics and Resolution</b><br> The 1/2.7-inch Super HAD (Hole Accumulation Diode) CCD allows more light to pass to each pixel, increasing sensitivity and reducing noise, and provides a 4.1-megapixel effective resolution (2304 x 1728).  The Real Imaging Processor offers greater clarity and picture quality as well as improved response time and battery life and decreased shutter lag. The DSCP73 has a 3x optical zoom lens that''s combined with a smooth 2x digital zoom for a 6x total. <p> <b>Movie Mode</b><br> Capture video with audio at 30 frames per second (fps) at VGA size 640 x 480;  the included 16 MB memory card will store 42 seconds of vide at this setting. Movie length is only limited by the amount of storage you have on hand. The Video Mail mode captures a smaller movie (160 x 112 pixels) that''s more suitable to sending to friends and family via e-mail. <p> <b>More Features</b><br> The DSCP73 offers the following additional features to the DSCP41:  <ul> <li>Live Histogram Display: Available in capture and playback, the Live Histogram displays the concentration of pixels at each luminosity value making it easy to evaluate the correct exposure.  <li>Manual Exposure Mode: Manual Exposure Mode provides extended control with 46-step adjustable Shutter speed (30 &#208; 1/1000 sec.), and 2-step Aperture control.  <li>Conversion Lens Compatibility: Increase your shooting options by adding either telephoto lenses to increase your optical zoom or wide-angle lenses to increase the width of your field of view. You can even add filters for special effects.  <li>Audio/Video Output: For reviewing images and MPEG movies, the DSCP73 offers an A/V output for convenient connection to a TV or VCR, this makes sharing images with family and friends easy.  </ul> <p> Other features include: <ul> <li>Resolution modes: 2304 x 1728 (4.1MP), 2048 x 1536 (3MP), 1280 x 960 (1MP), 640 x 480 (VGA) <li>1.5-inch, 64K LCD monitor makes framing shots and reviewing pictures easy.  <li>Selectable Focus Mode: Monitoring AF (Auto Focus) helps you anticipate the action by focusing even before you press the shutter release.  <li>5 Area Multi-Point Auto Focus: By evaluating 5 separate focus areas of the frame, Sony&#213;s Multi-Point AF system can intelligently focus on the subject and avoid mistakenly focusing on the background.  <li>AF (Auto Focus) Illuminator: Briefly illuminating the subject, in low--or no--light conditions, the AF Illuminator helps establish a positive focus lock.  <li>Multi-Pattern Measuring: Independently light-metering 49 points of the frame, Multi-Pattern Measuring establishes the optimum exposure, even when highlight and shadow isn&#213;t centered in the frame.  <li>Multi-Burst Mode: Captures 16 320 x 240 frames as part of a single 1280 x 960 image which plays back sequentially in the camera (selectable 1/7.5, 1/15, 1/30 second).  <li>Scene Selection Mode: With 6 Scene Modes, parameters can be matched to the shooting conditions. Choose from one of the following: Twilight, Twilight Portrait, Landscape, Soft Snap, Candle, or Beach.  <li>Slow Shutter Noise Reduction: During long exposures, Slow Shutter NR captures the scene, and then the CCD noise pattern with a dark frame exposure. By subtracting the two, even long exposures can be clear.  <li>Pre-Flash Metering: With a momentary pre-flash, the camera illuminates the subject and sets exposure through the lens for accurate flash metering. Adjustable flash level and red-eye reduction ensure great flash shots.  <li>4 Shot Burst Mode: Capture up to 4 shots (fine) or 6 shots (standard) at 1.3 frames/sec. even at 4 MP resolution. Perfect for high speed subjects or fast moving action such as sports.   </ul> <p> <b>Direct Printing</b><br> The Cybershot DSCP73 offers PictBridge functionality, which enables you to transfer pictures from your digital camera to a compatible printer--such as the Sony PictureStation DPP-EX50--without a PC or image-editing software. Images can be viewed and selected for printing right on the camera''s LCD, with menus for print quantity, date, and index print. <p> <b>Storage and Transfer</b><br> Images are stored on Memory Sticks, and the Cybershot DSCP73 is compatible with Memory Stick Pro media--for storage up to 1 gigabyte. The included 16 MB Memory Stick will store 8 Fine and 14 Standard 4.1-megapixel images. The DSCP73 transfers images to PCs and Macs via a speedy USB 2.0 connection (which is backward compatible with USB 1.1 ports). <p> <b>Power and Size</b><br> The camera is powered by two rechargeable NiMH AA-sized batteries (2100 mAh). The included adapter/charger provides power while you transfer images from the camera to your PC. It measures 4.63 x 2.13 x 1.38 inches (W x H x D) and weighs 7 ounces without Memory Stick or batteries. <p> <b>What''s in the Box</b><br> This package contains the Sony DSCP73 digital camera, 16 MB Memory Stick, two AA-size NiMH rechargeable batteries (NH-AA-DA), battery charger (BC-CS2), A/V and USB cables, wrist strap, and CD-ROM with photo editing software. <p> <b>Sony Photo Vault</b><br> The optional <a href="/exec/obidos/tg/detail/-/B0002JSTF2/002-5874727-5663227">Sony Photo Vault</a> mini CD burner eliminates worry about running out of space on your Memory Stick when travelling. It burns images to mini CD-R''s without a PC interface--just connect your camera using a USB cable. The Photo Vault also has a Memory Stick slot (compatible with Memory Stick Pro and Duo) and features a built-in photo album capability to display photos on a television screen using a television''s standard AV input.<br /><br /><b>Product Description:</b><br />SONY Cybershot Digital Camera DS-CP73 - A successor to the popular DSC-P72, this camera increases resolution to 4 megapixel and adds a faster processing chip to allow fast, repetitive burst still picture taking. This Real Image processor is also extremely efficient and allows you to take as many as 400 pictures per full charge. You can shoot video-clips at VGA resolution. Overall, this compact, lightweight camera is really easy to use and carry on all your trips in town and around the world.<LI>3x Optical zoom lens<LI>2x Digital Zoom<LI>Still Image Modes: Normal (JPEG Fine/Standard), Burst, Multi-Burst<LI>Movie Clips using MPEG Fine for superior imaging at up to 640x480 VGA and 30 frames per second<LI>Includes 16MB MemoryStick card; also capable of accepting MemoryStick Pro cards <LI>Auto and Manual Focus modes<LI>Programmed auto and manual exposure modes<LI>Multi-mode auto electronic-flash   <LI>1.5" Color LCD<LI>10-second self-timer mode<LI>Tripod mount (tripod not included)<LI>Features USB-2 and Video output modes for transferring images to a computer or TV or video recording device<LI>Uses 2 AA batteries (2 NIMH rechargeable are included) for worldwide versatility <LI>Compact (4.7 x 2.3 x 1.3 inches) and comfortable to carry (about 9 ounces with batteries)<LI>OS Compatibility: Microsoft Windows 98/98SE/Me/ 2000/XP Home/XP Pro; Macintosh OS 9.1/9.2/X (10.0, 10.1, 10.2, 10.3) <LI>Supplied Accessories: NH-AA-DA Rechargeable AA Batteries, BC-CS2 Battery Charger, A/V and USB Cables, Wrist Strap, MSA-16A 16MB Memory Stick(R) Media, Software CD-ROM <LI>Note: For greater image storage capacity, we suggest purchasing an optional MemoryStick of 128MB or higher  ', 'Sony Cybershot DSCP73 4.1MP Digital Camera with 3x Optical Zoom', 0.9, '', NULL, 1, 1, 100, 4.7, 2.3, 1.3, 10, -3),
(9, 1, 'Sony Cybershot DSCH1', 'SON-H1', 427.44, '<b>From the Manufacturer</b><br /> Sony''s new Cybershot DSCH1 digital camera gets you closer to the action than ever with an optically stabilized 12x zoom lens, then allows you to capture stunning detail with a 5.1-megapixel CCD. The extra-large 2.5-inch LCD display helps you compose great images, and the optical viewfinder--unusual on a camera with such a huge LCD--expands your composition options.<P>  <B>1/2.4-Inch 5.1-Megapixel Super HAD CCD</B><BR> Super HAD (Hole Accumulation Diode) CCDs provide excellent image quality by allowing more light to pass to each pixel, increasing sensitivity and reducing noise.<P>  <B>12x Optical/2x Digital/24x Total Zoom</B><BR> Optical zoom helps you fill the frame with your subject for better pictures. And Sony''s Precision Digital Zoom helps bring your subject closer with an extra 2x magnification.<P>  <B>0 to 48x Smart Zoom Feature (at VGA Resolution)</B><BR> The Smart Zoom feature intelligently uses the full CCD to let you zoom into the portion of interest by cropping the image size, thus avoiding the image degradation of digital zooms.<P>  <B>Super SteadyShot Optical Image Stabilization</B><BR> Super SteadyShot Optical Image Stabilization fights motion blur, even during longer exposures at full zoom.<P>  <B>Real Imaging Processor Technology</B><BR> The innovative Real Imaging Processor in the DSC-H1 not only improves picture quality and clarity but also improves camera response time, decreases shutter lag and improves battery stamina.<P> <table align="right" width="300" cellpadding="3"><tr><td><img border="0" alt="The extra-large screen of the Sony Cybershot DSCH1" src="http://images.amazon.com/images/G/01/photo/detailpage/sony_dsch1_display_300.jpg"></td></tr> <tr><td><center><b><i><small>The Sony Cyber-shot DSCH1''s super-sized 2.5-inch Hybrid LCD is much larger than the 1.5-inch displays common to other cameras in its class.</i></b></small></center></td></tr></table> <B>2.5-Inch LCD Monitor</B><BR> The 2.5-inch 115K LCD monitor makes framing shots and reviewing pictures easy.<P>  <B>Live Histogram Display</B><BR> Available in capture and playback the Live Histogram Displays the concentration of pixels at each luminosity value making it easy to evaluate correct exposure.<P>  <B>14-Bit DXP A/D Conversion</B><BR> Sony''s 14-bit Digital EXtended Processor captures the range between highlight and shadow with up to 16,384 values, for extended dynamic contrast and detail.<P>  <B>5-Area Multi-Point Autofocus</B><BR> By evaluating 5 separate focus areas of the frame, Sony''s Multi- Point AF system can intelligently focus on the subject and avoid mistakenly focusing on the background.<P>  <B>Manual Exposure Mode</B><BR> Manual Exposure Mode provides extended control with 46-step adjustable shutter speed (30 seconds to 1/1000 second), and aperture control (f2.8 to f8.0).<P>  <B>AF (Autofocus) Illuminator</B><BR> Briefly illuminating the subject, in low- or no-light conditions, the AF Illuminator helps establish a positive focus lock.<P>  <B>Selectable Focus Mode</B><BR> Monitoring AF (Autofocus) helps you anticipate the action by focusing even before you press the shutter release.<P>  <B>Multi-Pattern Measuring</B><BR> Independently light-metering 49 points of the frame, Multi-Pattern Measuring establishes the optimum exposure, even when highlight and shadow isn''t centered in the frame.<P>  <B>Scene Selection Mode</B><BR> With 7 Scene Modes, parameters can be matched to the shooting conditions. Choose from one of the following: Twilight, Twilight portrait, Soft snap, Landscape, Beach, Snow, and Candle.<P>  <B>Pre-Flash Metering</B><BR> With a momentary pre-flash, the camera illuminates the subject and sets exposure through the lens for accurate flash metering. Adjustable flash level and red-eye reduction ensure great flash shots.<P>  <B>Slow-Shutter Noise Reduction</B><BR> During long exposures, Slow Shutter NR captures the scene, and then the CCD noise pattern with a dark frame exposure. By subtracting the two, even long exposures can be clear.<P>  <B>Memory Stick Media and Memory Stick PRO Media</B><BR> Digital. Powerful. Transportable. Memory Stick media is compact, portable and rugged--connecting a variety of hardware and software applications.<P>  <B>32MB Internal Memory Included</B><BR> Shoot without a flash memory card with 32 MB internal memory1; Slot for optional Memory Stick, Memory Stick PRO media. Full 32MB of internal memory can be copied to optional Memory Stick media.<P>  <B>9-Shot Burst Mode</B><BR> Capture up to 9 5MP shots (fine) or 100 shots VGA (standard) at 0.7 frames per second. Perfect for high speed subjects or fast moving action such as sports or small children.<P>  <B>Multi-Burst Mode</B><BR> Captures 16 320 x 240 frames as part of a single 1280 x 960 image which plays back sequentially in the camera. Selectable 1/7.5, 1/15, 1/30 second. MPEG Movie VX Standard/Fine Mode with Audio Captures VGA (640 x 480) high frame rate (up to 30 frames per second) audio/video clips with length limited only by the capacity of the media. Video mail mode captures smaller file sizes suitable for e-mail.<P>  <B>Conversion Lens Compatible</B><BR> You can add tele- or wide-conversion lenses for greater magnification or wider field of view, as well as protective and special effect filters.<P>  <B>PictBridge Compatibility</B><BR> Connect to any PictBridge compatible printer with the supplied USB cable and print directly from the camera. Images can be viewed and selected for printing right on the camera''s LCD, with menus for print quantity, date and index print.<br /><br /><b>Product Description:</b><br />Get closer than ever with the Cyber&#45;shot DSC&#45;H1 digital camera from Sony&#46; With its incredible 12x optical zoom lens combined with the Super SteadyShot optical image stabilization system you can capture stunning long&#45;distance images with minimized blurring&#44; even during longer exposures&#46; Conversion lens compatible to easily add optional telephoto and wide&#45;angle lenses for even greater optical range&#46; Compose perfectly framed shots with its comfortable SLR body design and live histogram display&#46;', 'Sony Cybershot DSCH1 5.1MP Digital Camera with 12x "Steady Shot" Zoom', 1.3, '', NULL, 1, 1, 100, 6, 3, 2, 10, -3),
(10, 1, 'Kodak EasyShare C310 4MP', 'KOD-C310', 149, '<b>Amazon.com Product Description</b><br />Kodak''s C310 is a reliable, easy-to-use digital camera designed to take beautiful shots anywhere, anytime. In fact, the C310 is so smart that it can automatically rotate your vertical shots so they''re right-side-up when viewing or downloading to your computer, deliver optimal settings for most standard shooting environments, and even let you immediately tag your shots for later printing or sharing via e-mail. <P> The power of the C310 starts with the large 4-megapixel image sensor, which can capture enough detail to create photo-quality 11-by-15-inch prints. Kodak''s Color Science chip consistently delivers rich, vibrant colors that are sure to wow your friends and family. Best of all, the camera''s fast click-to-capture time (0.32 seconds) means you won''t miss that fleeting moment when you press the shutter button. <P> The camera features a 5x digital zoom to help you frame those far away shots, as well as a video capture mode that allows you to take short, silent QuickTime video clips--perfect for nature, sporting events, and other action environments. You can even add a little creativity to your pictures by shooting in one of the camera''s color modes: color, sepia, and black &amp; white. <P> You can store your images in the camera''s 16MB of built-in memory or on separately sold <a href="/exec/obidos/tg/browse/-/13827251/002-5874727-5663227">Secure Digital memory cards</a>. The camera is powered by AA-size batteries--a size that offers both the money-saving flexibility of rechargeables and the convenience of readily available alkaline batteries. <p> The C310 is a part of Kodak''s popular EasyShare system. The included EasyShare software provides a simple way to edit, organize, print, and view your images on your computer. It is designed to work seamlessly with Kodak''s separately sold <a href="/exec/obidos/ASIN/B0007KQWGO/002-5874727-5663227">EasyShare Camera Dock Series 3</a> and <a href="/exec/obidos/ASIN/B0007KQWGE/002-5874727-5663227">EasyShare Printer Dock Series 3</a>. The Camera Dock provides easy uploading and battery recharging and the Printer Dock does that plus makes high-quality Kodak prints from your digital images in just minutes. <p> <b>What''s in the Box</b><br> Kodak EasyShare C310 digital camera, Kodak non-rechargeable digital camera battery, USB cable, wrist strap, Kodak EasyShare software, getting started kit, custom camera insert for optional Kodak EasyShare Camera and Printer Docks<br /><br /><b>Product Description:</b><br />The EASYSHARE C310 camera delivers a simple, fixed-focus camera (4 MP resolution) for people interested in exploring digital photography, while at the same time providing high quality pictures at the touch of a button.EASYSHARE C310 Digital Camera is on the friendly side of digital with 4.0 MP for amazing-quality prints up to 20 ', 'Kodak EasyShare C310 4MP Digital Camera', 0.7, '', NULL, 1, 1, 99, 3, 2, 1, 10, -2),
(11, 1, 'Kodak EasyShare V550', 'KOD-V550', 330, '<b>Amazon.com Product Description</b><br />  The Kodak EasyShare V550 5MP Digital Camera with 3x Optical Zoom raises the bar for family-friendly digital photography. As powerful as it is petite, you''ll not only turn heads while you''re taking pictures or shooting video with this baby. You''ll also gain the enthusiastic accolades of your friends and family when you start sharing the shots you''ve taken. Whether its a TV-quality video of your child''s first step, or a 20-inch by 30-inch family photo you have printed for framing, the EasyShare V550 is designed to deliver.<P>  <table align="right" width="250" cellpadding="3"><tr><td></td></tr> <tr><td><center><b><i><small>The included Photo Frame 2 Dock enables stylish display of your photos and easy transfer to your computer.</i></b></small></center></td></tr></table>  And this camera proves that looks can truly be deceiving. At about the size of a man''s wallet, with a stylish silver casing, the EasyShare V550 is loaded with features that were formerly reserved for cameras twice as large and much more expensive. Included among the many features are: <ul> <li>5.0-megapixel resolution for poster-size prints of amazing clarity <li>36-108 mm f2.8-4.8 lens (35mm film camera equivalent) with 3x optical zoom for close-up shots <li>Up to 80 minutes of continuous MPEG-4 video with audio capture and playback at <li>2.5-inch high-resolution color display with 170-degree viewing angle <li>Quicktime video format and one-button EasyShare system for quick, universal sharing of videos and photos <li>Photo Frame Dock 2 for stylish display of your photos and easy transfer to your computer </ul> With a resolution of up to 5.0 megapixels, you won''t have to worry about grainy, pixelated images when it''s time to print. Sporting a 3x Schneider-Kreuznach C-Variogon Optical Zoom lens, the EasyShare V550 is built to produce professional-quality prints with remarkable clarity, precision, and sharpness from edge to edge. You no longer have to sacrifice quality for the convenience that digital photography delivers. Kodak''s proprietary Color Science Chip ensures that the colors and flesh tones that you capture are accurate, clear, and precise. <P> And when it''s time to make a movie, the EasyShare V550 will be waiting to deliver outstanding video that you can simply plug straight into your TV for instant viewing. With up to 640 x 480 pixels of resolution, and a zoom-in feature and digital stabilization that will keep your frames from shaking, you''ll have the confidence you capture to take those once-in-a-lifetime moments.<P> Kodak''s high standards means that you won''t have to worry about the standard features that the EasyShare V550 will deliver time and time again. Digital red-eye reduction, cropping, and blurry picture alert features and more will keep your subjects looking great shot after shot. <P> Kodak''s EasyShare software, a simple way to edit, organize, print and view a slide show of your photos on your computer, is included. Also included is the Kodak EasyShare Photo Frame Dock 2, a unique way to display your photos and easily transfer your photos to your computer while recharging your battery at the same time.<P> In short, the Kodak EasyShare V550 gives you everything you need right out of the box to start capturing your own Kodak moments with professional-quality photos and videos.<P> <b>What''s in the Box</b><br> V550 digital camera, Photo Frame Dock 2, custom camera insert for camera and printer docks, KLIC-7001 Li-Ion digital camera battery, USB cable, audio/video cable, wrist strap, camera bag, software, and getting started kit.<br /><br /><b>Product Description:</b><br />Its small size (W ', 'Kodak EasyShare V550 5MP Digital Camera with 3x Optical Zoom (Silver)', 0.5, '', NULL, 1, 1, 100, 3, 2, 0.5, 10, -4),
(12, 1, 'Canon Optura 600', 'CAN-OP-600', 1199, '<b>From the Manufacturer</b><br />The Canon Optura 600 delivers a superior level of performance in a luxurious, upright, sculpted design. And, with its 4.3-megapixel image sensor, advanced photo features, and superior Canon optics, you get incredible video and photos. It''s a versatile performer for those with a truly versatile lifestyle.  <p> <b>True Widescreen Video</b><br> You want your memories to last forever--that''s why you''ve taken the time to shoot them. And you want to shoot in widescreen format to get everything you can out of your new widescreen TV or home theater system.  <p> <TABLE ALIGN="left" BORDER=0 CELLSPACING=0 width="300" CELLPADDING=5> <TR ALIGN="center" VALIGN="middle"> <TD> <IMG SRC="http://images.amazon.com/images/G/01/photo/detailpages/optura-600-widescreen.jpg" ALT="True Widescreen Format" BORDER=0><br><small><b><i>The Optura 600 uses the entire width of its image sensor to capture video in true 16:9 format.</i></b></small> </TD> </TR> </TABLE>  <p> So why is the way you record widescreen images so important? Because you want an image made for widescreen, not adapted for widescreen. Widescreen is the future--every HD television is widescreen. <p> The story of how we do it may be a bit technical, but the result is clear to see. Canon camcorders use the entire width of its image sensor to capture your precious video in true 16:9 format. What difference does that make? It''s simple. With more pixels captured, you get better image quality. Other camcorders force the wider picture into a smaller space on the sensor--giving you a less true image, with fewer pixels and lower quality. On a Canon camcorder, the canals of Venice will be as grand as you remembered seeing them.  <p> In addition, the viewfinder on your Optura 600 will display the image in a "letterbox" view--from side to side and top to bottom, what you see will be what you get. No guessing and extra work, looking at an image that''s distorted like a fun house mirror. You can also use the widescreen feature in both Program Mode and Easy Recording Mode and can be used along with the camcorder''s advanced image stabilization.  <p> <b>Optical Performance You Can See</b><br> The Optura 600 comes with a 10x optical zoom lens, precisely matched to the camcorder''s CCD and featuring a unique spectral coating to reduce flare and ghosting. Combined with the camcorder''s 200x digital zoom, the lens gives an impressive range of focal lengths, ensuring you never miss the shots you want.  <p> <TABLE ALIGN="right" BORDER=0 CELLSPACING=0 width="190" CELLPADDING=5> <TR ALIGN="center" VALIGN="middle"> <TD> <IMG SRC="http://images.amazon.com/images/G/01/photo/detailpages/b0007d9b9g-canon-zr200-is2.jpg" ALT="With Image Stabilization" BORDER=0> </TD> </TR> <TR ALIGN="center" VALIGN="middle"> <TD> <IMG SRC="http://images.amazon.com/images/G/01/photo/detailpages/b0007d9b9g-canon-zr200-is1.jpg" ALT="Without Image Stabilization" BORDER=0> </TD> </TR> <TR ALIGN="center" VALIGN="middle"> <TD colspan="2"> <small><b><i>With image stabilization (top) and without</i></b></small></TD> </TR> </TABLE>  <p> <b>Image Stabilization:</b> Canon''s Advanced Image Stabilization also ensures unsurpassed optical performance--whether you''re shooting sporting events, evenings out with friends, or capturing the perfect vacation memory at a long focal length. Thanks to Canon''s superior electronic expertise, the Optura 600''s built-in high-quality image stabilizer allows you to shoot rock-steady video, even when you''re at maximum telephoto without a tripod. It even works while panning and zooming.  <p> <b>Megapixel CCD</b><br> The Optura 600 features a class-leading 4.3-megapixel CCD along with an RGB primary color filter to deliver crisp images with stunning true-to-life color. Other camcorders process color using a standard CMYG filter, resulting in duller colors. Canon''s RGB filter separates light into its red, green, and blue components, resulting in professional-quality images with natural-looking tones and vivid hues. Together, the 4.3-megapixel CCD and RGB color filter deliver uncompromisingly brilliant results.  <p> <b>Digic DV</b><br> Because Canon''s exclusive Digic DV signal processing circuit processes video and still images differently, you get uncompromising image quality for both. Video and still images have different color requirements and Digic DV technology processes the two signals accordingly. That means your video images are maximized for viewing on monitors and for projection. Digic DV is just one of Canon''s DV Photo Plus technologies that help to unleash the performance potential of the Optura 600.  <p> <TABLE ALIGN="left" BORDER=0 CELLSPACING=0 width="275" CELLPADDING=5> <TR ALIGN="center" VALIGN="middle"> <TD> <IMG SRC="http://images.amazon.com/images/G/01/photo/detailpages/b0007d9b9g-canon-zr200-lowlight.jpg" ALT="Night Mode" BORDER=0><br><small><b><i>Night Mode brings out low-light detail other camcorders miss.</i></b></small> </TD> </TR> </TABLE>  <p> <b>Low-Light Performance</b><br> Dinner with friends, evening festivals, late-night excursions--now you can capture them all thanks to Optura 600''s low-light performance. With the Night Mode, the sensitivity of the camera''s CCD is automatically boosted and the shutter speed is lowered to give you better performance in low-light conditions.  <p> In SuperNight mode, your camcorder''s white LED assist lamp lights up whenever light levels fall too low. And, in Night Plus Mode, you can keep the camcorder''s LED lamp on continuously, for shooting under the most demanding conditions.  <p> For the times when even Night Plus Mode isn''t enough, the Optura 600 comes with a built-in Mini Video Light. Approximately 4x brighter than the camcorder''s LED assist lamp, this light lets you shoot color in low light conditions at distances up to 4.9 feet.  <p> <b>Stunning Digital Photography</b><br> The timeless style of the Optura S1 is perfectly matched with superior photographic features.  <p> <TABLE ALIGN="right" BORDER=0 CELLSPACING=0 width="200" CELLPADDING=5> <TR ALIGN="center" VALIGN="middle"> <TD> <IMG SRC="http://images.amazon.com/images/G/01/photo/detailpages/optura-600-CCD.jpg" ALT="4.3 MP CCD" BORDER=0><br><small><b><i>The Optura 600''s 4.3 MP CCD and RGB color filter produce stunning, true-to-life tones.</i></b></small> </TD> </TR> </TABLE>  <p> Digital still features include: <ul> <li>Digic DV</li> <li>Simultaneous photo recording lets you capture e-mail ready digital photos to a memory card while you record video</li> <li>Auto-exposure dial with 12 shooting modes, including Portrait, Sports, Night, Snow, Beach, Sunset, Spotlight and Fireworks</li> <li>Four image settings, including Vivid, Neutral, Low Sharpening, and Soft Skin Detail</li> <li>Nine-point auto intelligent autofocus (AiAF)</li> <li>Continuous shooting mode</li> <li>Photo review button</li> <li>Stitch Assist software</li> </ul>  <p> <b>Share Your Video</b><br> Your Optura 600 comes with a variety of features that make it fast and easy to share your video.  <p> <b>Firewire/IEEE 1394 DV Terminal</b><br> Otherwise known as Firewire or iLink, the Optura 600''s IEEE 1394 DV Terminal is a high-speed digital interface that ensures virtually no loss of video or audio quality when transferring videos to a computer. Simply use a DV cable to connect the camcorder to your computer''s DV Terminal and you can be sure that your favorite, recorded moments retain their pristine image and sound.  <p> <b>Motion JPEG Mode</b><br> With the Optura 600''s Motion JPEG Mode you can record movie clips directly to the camcorder''s memory card, transfer it to your computer, and e-mail or stream it over the web. When using an SD Memory Card, you can also record for the full length of the card. That''s a 60-minute movie with a 512MB card. (With MultiMedia Cards, movie clips are limited to 10 seconds in 320 x 240 resolution, and 30 seconds in 160 x 120.)  <p> <b>Analog Line-In/Converter</b><br> By using audio/video cables (composite) or S-Video, it''s possible to send an analog video signal from your TV, VCR, or a camcorder into the Optura 600 and record it onto DV. Similarly, you can output an analog signal via composite or S-Video cables to an analog device such as a TV or VCR.  <p> <b>Share Your Photos</b><br> In addition to its powerful photo-taking capabilities, the Optura 600 makes it easy to share your photos with family and friends.  <p> <b>Print & Share</b><br> Print & Share--another of the powerful Canon DV Photo Plus technologies--turns your Optura 600 into a photo lab in the palm of your hand. Simply connect your camcorder directly to select Canon printers or any PictBridge-compatible printer with the supplied USB cable. Then, with nothing more than the touch of the Print and Share button, you can print directly from your Optura 600 without going through a computer. (The same button lets you quickly download images to your computer.) And because the camcorder tags each photo you take with information based on Exif 2.2 Print standards, your printer is able to produce more realistic images. Print and Share also gives you all the printing controls you need, right in your camcorder. Crop and rotate your photos, or choose borderless prints. With the Optura 600''s Print and Share capability, no one has to wait to share in the memories.  <p> <b>USB 2.0 High Speed Terminal</b><br> Quickly transfer images from the Optura 600 to a computer with the USB 2.0 High Speed Terminal.  <p> <b>SD MultiMedia Card</b><br> For portable storage versatility, the Optura 600 can accommodate either a Secure Digital (SD) memory card or a MultiMedia card. Store up to 512 MB worth of photos with resolutions up to 1280 x 960.  <p> <b>What''s in the Box</b><br> Optura 600 Camcorder Body, Battery Pack BP-308, Compact Power Adapter CA-570S, MTC-100 Multi-AV Cable, Wireless Controller WL-D85, 16MB SD Card, USB Cable IFC-300PCU, Digital Video Solution Disk for Windows & Macintosh, 1 Year Parts and Labor Limited Warranty.<br /><br /><b>Product Description:</b><br />Canon Optura 600 Mini-DV camcorder is really two sophisticated products in one. Although it may look like a camcorder on the outside, inside lies a high-quality 4.3 megapixel digital camera with all the features needed to take outstanding photos. The CCD in the Optura 600 camcorder works alongside an RGB Primary Color Filter to deliver crisp, true-to-life images that can be printed up to 8.5x11 inches. It is among the smallest 4.3 megapixel camcorders on the market. Combine all that with the superior optics Canon is known for and you have a powerful digital imaging machine that can capture video and snap stills with equal agility. <p> The Optura 600 camcorder has all the tools needed to take great digital photos. For accurate exposure, the model lets the user choose the metering and scene mode that''s right for the subject or select Auto Exposure Bracketing to ensure they always get the right shot. By combining the 4.3 megapixel CCD image sensor with Superior Canon Optics, a DIGIC DV Image Processor and Print & Share, the Optura 600 takes full advantage of Canon''s DV Photo Plus system. The Selectable nine-point AiAF (Auto Intelligent Auto Focus) helps keep the subject in sharp focus and such photo-centric features as Continuous Shooting Mode, Image Effects, and Built-in Flash with Red-Eye Reduction provide the essentials for great digital photography. Simultaneous Photo Recording even allows the user to capture still images while shooting video. For fast and easy one-touch printing of photos virtually anywhere, users connect to any Canon PIXMA, Selphy or CP series photo printer, or any PictBridge enabled printer and simply press the Optura 600 camcorder''s Print & Share button and they''re good to go. The button can also be used for one-touch downloading of images to a computer. The camcorder features an SD Memory Card slot as well as a USB 2.0 Hi-Speed Terminal for speedy transfers of high-res images. ', 'Canon Optura 600 4.3MP MiniDV Camcorder w/10x Optical Zoom', 2, '', NULL, 1, 1, 100, 4, 7, 2, 10, -3),
(13, 1, 'Sony PV-GS250', 'SON-GS250', 999.95, '<b>Amazon.com Product Decription</b><br />Customers interested in the best that camcorder technology has to offer will be impressed by the new compact <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87E/002-5874727-5663227">PV-GS65</a>, <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87O/002-5874727-5663227">PV-GS150</a>, and PV-GS250 3CCD camcorders from Panasonic. <p> <table align="left" width="200" cellpadding="5"><tr><td></td></tr> <tr><td><center><b><i><small>Illustration of 3CCD imaging device inside the PV-GS250</i></b></small></center></td></tr></table> These models are small enough to fit in the palm of your hand, but aren''t short on innovative features. Equipped with a 3CCD imaging system, high-powered digital still capability, and ease of use, these new digital video cameras will deliver high-quality digital still and moving images for the novice and expert videographer alike.<p> These top-of-the-line camcorders incorporate the same type of 3CCD imaging system used in Panasonic''s celebrated professional camcorders. Individual CCDs are used to reproduce the red, green, and blue colors that compose an image for vivid, true-to-life pictures with remarkable depth and presence. The <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87O/002-5874727-5663227">PV-GS150</a> and PV-GS250 also feature the sophisticated Leica Dicomar lens, which has become known for its ability to capture and finely render the most delicate nuances of light and shade.<p> High-resolution digital still images can be captured via the models'' built-in digital still camera feature, which records to a stamp-sized SD memory card. The 1.2-megapixel <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87E/002-5874727-5663227">PV-GS65</a>, 2.3-megapixel <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87O/002-5874727-5663227">PV-GS150</a>, and 3.1-megapixel PV-GS250 feature a 10x telescopic optical zoom lens; a 700x digital zoom that allows for amazing 700:1 clear close-ups from wide angle to full telephoto zoom; and a macro zoom feature, which lets users shoot extreme close-ups at distances as near as 40 centimeters.<p> Transferring recorded video to a PC is also quick and easy via the USB port included on each model. All three models incorporate USB 2.0; however, the <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87O/002-5874727-5663227">PV-GS150</a> and PV-GS250 support USB 2.0 high speed, enabling real-time video transfers. All three models have miniDV outputs to maximize compatibility with the PC. <p> <table align="right" width="200" cellpadding="5"><tr><td></td></tr> <tr><td><center><b><i><small>10x optical zoom of the PV-GS250</i></b></small></center></td></tr></table> To steady shaky video, the new <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87E/002-5874727-5663227">PV-GS65</a> and <a href="http://www.amazon.com/exec/obidos/ASIN/B0007QN87O/002-5874727-5663227">PV-GS150</a> incorporate digital electronic image stabilization (EIS), which compensates for unintentional hand and camcorder movement. The PV-GS250 uses optical image stabilization, which intuitively compensates for any hand movement, so that every shot is beautifully crisp and clear. <p> The PV-GS250 also includes a manual focus ring giving the user more creative control over the video being captured. Additionally, all models include a Soft Skin Detail function that detects skin''s different tones and softens the focus to create a realistic blend. <p><b>Features of the Panasonic PV-GS250</b><br> <ul> <li>3CCD digital video camera <li>10x optical zoom; 700x digital zoom <li>Optical image stabilization <li>3.1 megapixel still picture capability <li>Leica lens; manual focus ring <li>SD slot <li>USB 2.0 </ul><br /><br /><b>Product Description:</b><br />The Panasonic PV-GS250 MiniDV Camcorder has a powerful combination of innovative features that will redefine your photography and digital video. Its 10x optical and 700x digital zoom will provide you with sharp, detailed images that show incredible depth and presence. The fantastic Leica Dicomar lens captures and finely renders nuances of light and shade.  Electronic Image Stabilization(EIS) provides you with perfect pictures and video. The 3.1-megapixel CCD gives photographers the best that camcorder technology has to offer.  Soft Skin Detail creates a realistic skin tone     Records to SD card    Hi-Speed USB 2.0 port    MiniDV output   Unit Dimensions - approx. 3 (h) x 3.25 (w) x 6 (d)   Unit Weight - 1.1 lbs.<br /><br /><b>', 'Sony PV-GS250 3.1MP 3CCD MiniDV Camcorder w/10x Optical Zoom', 2.1, '', NULL, 1, 1, 100, 8, 3, 1.5, 10, -5),
(14, 1, 'Sony CCD-TRV138 Hi8', 'SON-138', 239, '<b>From the manufacturer</b><br /> Capture Hi8 quality video and Hi-Fi sound with the compact, affordable, and easy-to-use CCD-TRV138 Handycam camcorder. It features a CCD imager with 320K gross pixels that provides detail and image precision along with exceptional analog video performance. Digital zoom interpolation creates clearer, sharper images for extreme digital zooming.<P>  Along with a variety of features to capture quality images and sound, the CCD-TRV138 lets you customize your personal videos with such tools as fader effects, picture effects, and titling. Choose from a variety of modes to add creative fades, pictorial exposures, and titles. Get creative and enhance your home movies with professional looking video effects.<P>  <b>Video Hi8 recording</b><br> Records outstanding video quality up to 400 lines of horizontal resolution with hi-fi sound on affordable 8 millimeter and Hi8 tapes.<P>  <b>1/6-inch CCD imager, 320K pixels gross</b><br> 1/6-inch CCD imager with 200K (effective) pixels provides great detail and clarity along with exceptional analog video performance.<P>  <b>20x Optical/990x digital zoom</b><br> Offers up to 500 lines of horizontal resolution, 3x the color bandwidth and a significantly higher signal to noise ratio, to provide spectacular video performance.<P>  <b>2.5-inch swivel screen LCD display (123K pixels)</b><br> Provides excellent viewing clarity with improved resolution. The high resolution 123K pixel LCD screen rotates up to 270 degrees for multiple viewing angles providing sharp, detailed images for monitoring or playback.<P>  <b>InfoLithium battery with AccuPower meter system</b><br> Charge the battery at anytime because unlike NiCad (nickel cadmium) batteries, Sony''s rechargeable lithium-ion batteries are not subjected to a life shortening memory effect. Sony''s exclusive AccuPower meter displays the battery time remaining in minutes, in either the viewfinder or on the LCD screen.<P>  <b>Multi-language menu</b><br> Change the menu display from English to English (simplified), Canadian French, Latin American Spanish, Brazilian Portuguese, Korean, or traditional Chinese.<P>  <b>Easy dubbing</b><br> Connect the handycam camcorder to a VCR to effortlessly make VHS copies of your home videos. The camcorder can control up to 59 brands of VCRs.<P>  <b>NightShot Plus infrared system</b><br> With Sony''s Super NightShot infrared system you can capture natural looking video, even when shooting in low light. Record subjects up to 10 feet away using the built-in infrared system, without the monochrome color common with earlier low-light recording systems.<P>  <b>Stamina battery power management system</b><br> Using the optional NP-QM91D InfoLithium battery, the DCR-TRV480 can continuously record for up to 12 hours on a single full charge, providing extra long battery life.<P>  <b>Program AE (auto exposure) modes</b><br> Program AE modes make recording easy even when filming in challenging situations. Choose from portrait, beach and ski, sports lesson, landscape, spotlight, or sunset and moon modes.<P>  <b>Picture effects</b><br> Get creative when recording or playing back your videos with Sony''s picture effect modes. Effects available in camera mode: negative art, sepia, monotone, solarize, pastel and mosaic. Effects available in playback mode: negative art, sepia, monotone, and solarize.<P>  <b>End search</b><br> Automatically advances the video tape to the last 5 seconds of the recorded scene. This prevents accidentally recording over previously recorded videos.<P>  <b>Fader effects</b><br> Enhance your personal videos by adding professional looking fader effects. Choose from black, mosaic, white, monotone, and stripe.<P>  <b>Titling</b><br> Add professional looking titles to your video. Select from 8 presets, or customize 2 titles with up to 22 characters.<P>  <b>Battery information</b><br> At the touch of a button, battery information is displayed on the LCD screen when charging and when the camcorder is turned off. The display will show how much the battery is charged, in 10 percent increments and the recordable time left when using the LCD screen or in the viewfinder.<P>  <b>Built-in white LED light</b><br> Brighten your video, and reduce shadows when shooting in low-light situations. The LED light uses considerably less power than bulb-based light systems, with the same light output.<P>  <b>Manual focus</b><br> Allows the user to manually adjust the focus of the camcorder using the touch panel. Manual focusing also allows the user to control the focus in difficult situations where either the environment or the subject does not allow the camcorder''s auto focus to perform optimally, such as when shooting through a window or in a crowded environment.<P>  <b>Easy Handycam button</b><br> Using a camcorder can be intimidating for some people, so with a press of the easy Handycam button, most of the advanced features of the camcorder are locked out leaving only the buttons essential for recording operational.<br /><br /><b>Product Description:</b><br /><b>Box includes: AC-L15 Power Adapter/In-Camera Charger, NP-FM30 InfoLithium(R) Rechargeable Battery, AV Cable, Lens Cap, Shoulder Strap</b> Sony''s CCD-TRV138 Hi8(TM) Handycam(R) Camcorder delivers outstanding video quality with Hi-Fi sound in a compact, affordable, and easy-to-use package. The high-quality Hi8(TM) Recording can be enhanced with new features to customize your personal video. Use Fader Effects, Picture Effects, and Titling to get creative - enhance your home movies with creative fades, pictorial exposures, and titles. The Digital Zoom Interpolation and CCD imager with 320K gross pixels provide clear, sharp detail during zooming or playback.   Dial exposure (24 steps)    Dimensions(WxHxD) -  3 3/8 x 3 7/8 x 6 (85 x 98 x 151 mm)   Weight -  1 lb. 11 oz (780g) without Tape and Battery', 'Sony CCD-TRV138 Hi8 Handycam Camcorder w/20x Optical Zoom', 2, '', NULL, 1, 1, 100, 3.8, 3, 2, 10, -3),
(15, 1, 'Canon ES75 Hi8', 'CAn-ES75', 199, 'Hi8 technology has been ignored lately because of the digital revolution, but price-conscious buyers can still find great picture quality and feature-laden Hi8 camcorders, and the Canon ES75 is no exception. Some of its many features include a color viewfinder, built-in video light, time base corrector for a more accurate picture, and digital effects such as art, black and white, sepia, negative, and 16:9 screen ratio. There are also custom keys where you can set the most used or favorite functions close to your fingers.<p>  <B>Lens</B><br> The optical zoom has a power of 22x and a digital zoom of 800x. The digital zoom works by electronically enhancing the optical image and comes in handy for objects far away. The autofocus and autoexposure functions keep you concentrated on the action rather than on trying to find the ideal setting for each moment. For greater control you can use the focus controller and direct the camera to focus on an off-center subject. The ES75 has programmed autoexposure settings to match a variety of shooting situations: auto, sports, portrait, spotlight, and sand and snow.<p>  <B>Inputs and Outputs</B><br> The standard RCA input-output and cable are included so you can hook the camcorder to a TV for convenient viewing or a VCR for dubbing to regular VHS.<p>  <B>Contents</B><br> This package contains the ES75 camcorder, battery pack (model BP-911K), shoulder strap, power adapter (model CA-550K), and AV cable.<br /><br /><b>Product Description:</b><br />If you''re looking for your first camcorder, the Canon ES75 Hi8 camcorder offers flexible features and unbeatable affordability. The ES75 comes packed with a top-quality Canon lens that magnifies your creative possibilities. Its powerful optical zoom range covers everything from sweeping panoramas to action-grabbing telephoto shots. It''s so easy to use. Canon''s convenient Custom Keys enable you to personalize your camera by putting the most commonly used functions at your fingertips. <LI>Programmed auto-exposure and Flexizone Auto-Focus for pont-and-shoot simplicity <li>22x optical, 700x digital zoom <li>High-res color viewfinder <li>Photo Mode records still pictures for approximately 7 seconds <LI>Time Base Corrector <LI>Select among Special Effects modes <LI>Dimensions: 3 3/4" x 4 x 6 5/8" <li>Includes BP-911K Battery Pack, CA-550K Compact Power Adapter, Shoulder Strap, and C-250 AV Cable<br /><br /><b>\r\n', 'Canon ES75 Hi8 Camcorder with Color Viewfinder', 3.5, '', NULL, 1, 1, 97, 8, 4, 3, 10, -2),
(16, 1, 'Olympus Stylus 80 QD', 'OLY-80', 59, '<b>From the Manufacturer</b><br />The Stylus Epic Zoom 80 combines the best in portability and performance in one world-class camera. A flowing, contour design fits comfortably in your hand while lightweight construction makes it easy to carry. A full range of features including Infinity mode and Backlight control, along with a 38-80mm autofocus zoom lens, further help make this camera a popular member of the award-winning Stylus series. <p> The Stylus Epic Zoom 80 sports the unique clamshell design, one of the many popular features that Stylus cameras have come to be known for, protecting the lens while also enhancing its portability, durability and aesthetic appeal. Additionally, the special all-weather construction protects the camera against sand, dust and water to help it function under almost any condition. <p> <b>SUPER-COMPACT STYLUS DESIGN</b><br> Perfect for pocket, purse or palm. <p> <b>CLIMATE CONTROL</b><br> All-weather for smiles in rain, snow, sea spray - or shine! <p> <b>ADVANCED MULTI-MODE FLASH</b><br> Auto-S for Red-Eye reduction. <p> <b>Features</b><br> <ul> <li>Unique clamshell design protects the lens, enhancing its portability, durability and aesthetic appeal <li>Special all-weather construction protects the camera against sand, dust and water  <li>Optional remote control can be triggered from up to 16 feet away <li>Variable power flash with exclusive auto color-balancing for natural color and correct exposure  <li>Infinity Mode ensures sharp, clear focus for a landscape or distant scenery <li>Backlight control adjusts the exposure to +1.5Ev, to avoid the washed-out "silhouette" effects from a backlit subject </ul><br /><br /><b>Product Description:</b><br />The Olympus Stylus 38-80mm Zoom Camera is compact and ready for all outdoor conditions thanks to a sleek all-weather body. The 38-80mm zoom lens and aspherical glass elements provide crisp, clean pictures from edge to edge. Features: camera shake indicator; auto exposure system with 2 unique optical sensors; auto-color balancing; 6-mode flash; advanced 11-point multi-wide autofocus system; quartz date imprinting; spot mode; focus lock; self-timer; automatic operations including auto film load, advance, rewind, flash and focus; and real-image zoom viewfinder. ', 'Olympus Stylus 80 QD 35mm Camera w/ 38-80mm Zoom', 0.5, '', NULL, 1, 1, 100, 4, 2, 0.8, 10, -5);
INSERT INTO `iakt_products_prd` (`id_prd`, `idctg_prd`, `name_prd`, `sku_prd`, `price_prd`, `description_prd`, `shortdesc_prd`, `weight_prd`, `file_prd`, `downloadcounter_prd`, `idtxc_prd`, `visible_prd`, `qty_prd`, `length_prd`, `width_prd`, `depth_prd`, `alertlevel_prd`, `userrate_prd`) VALUES (17, 1, 'Canon Sure Shot 115u II Date', 'CAN-SS115', 100, '<b>From the Manufacturer</b><br />   The Sure Shot 115u II Date is equipped with the same high-quality optics that have made Canon a legend around the globe. With its 38-115mm zoom lens you have the power to capture dramatic close-ups or distant landscapes with one touch. Don''t worry about focus. The Multi-Point Smart AF system takes care of everything for you. It automatically scans three points across the frame to keep things sharp--even if your subject is not centered.<P>  <B>Precision optics</B><BR> Benefiting from Canon''s 60-year heritage in precision optics and featuring aspherical lens technology, the Sure Shot 115u II Date is capable of focusing at just 17.7 inches (45 centimeters) from the subject. The Sure Shot 115u II Date has a 3x zoom and a focal length of 38-115mm. It features passive 3 point AiAF that ensures sharp focused images even when the subject is off center.<P>  <B>Multi-purpose </B><BR> Designed to cover a wide range of shooting opportunities, the camera features five picture modes for the user to select from: Action (for continuous in-focus shooting of moving subjects), Night Portrait (flash for subject and slow shutter speed for background), Portrait, Close-up, and fast response RT (Real-Time). The Canon zoom flash links to the zoom lens, so that the light from the flash can be focused more intensely and maintain good illumination of the subject.<P>  <B>Go anywhere </B><BR> With real image viewfinder, the Sure Shot 115u II Date is remarkably light for a camera of its quality and zoom capabilities. At 6.9 ounces (195 grams), the Sure Shot 115u II Date is a multi-purpose compact cameras that can be taken anywhere.<br /><br /><b>Product Description:</b><br />The Sure Shot 115u II Date is equipped with the same high-quality optics that have made Canon a legend around the globe. With its 38-115mm zoom lens you have the power to capture dramatic close-ups or distant landscapes with one touch. Don''t worry about focus. The Multi-Point Smart AF system takes care of everything for you. It automatically scans three points across the frame to keep things sharp - even if your subject is not centered. It uses 35mm film. If you''re looking for a simple yet feature packed camera that requires no effort, no technology expertise, and no thought other than point-and-shoot, the Sure Shot is your sure camera.  Dimensions (W x H x D) - 4.2 x 2.4 x 1.7 inch/107.2 x 60.2 x 42.6mm / Weight 6.9 oz./195g (excluding battery)', 'Canon Sure Shot 115u II Date 35mm Film Camera', 0.4, '', NULL, 1, 1, 100, 4, 3, 1.4, 10, -5),
(18, 1, 'Nikon N70', 'NIK-N70', 249.99, 'Nikon is legendary for its meticulous construction and amazing picture quality. The N70 is Nikon''s top model in its non-pro SLR line. It has a wide range of advanced features that let you take incredible photos in any shooting situation. With a built-in flash, improved autofocus, and a good selection of exposure modes, the Nikon N70 makes it easy to take perfectly exposed and focused pictures with little effort. At 7mm by 3mm, Nikon''s cross-type autofocus sensor module has an extra-wide focus detection area that swiftly locks onto a moving subject. The autofocus can detect subjects in light as dim as EV minus 1 (at ISO 100). The N70 also offers both spot and wide-area autofocus--the latter is especially handy when you want to loosen up your composition.<p>The Nikon N70 uses 3-D matrix metering for incredibly accurate exposure. An SPD (Silicon Photo Diode) sensor divides scenes into eight segments; the N70''s microcomputer then reads the light pattern for data on brightness and calculates contrast to put out optimum exposure value. The Nikon N70''s built-in speedlight flash uses a five-segment TTL multi-sensor for optimal flash balance.<p>In addition to standard program, manual, and shutter- and aperture-priority modes, the Nikon N70 offers bracketing and a useful mode called flexible program, which lets you shift the combination of shutter speed and aperture normally set by the program mode. <br /><br /><b>Product Description:</b><br />Quiet power is what you sense when you hold this camera. Quick, responsive. The N70 is a camera that can turn your vision into reality. Examine the controls - the Command Dial and the newly designed, color-coordinated, large Liquid Crystal Display. Within minutes, you''ll understand how the N70 works. Press the shutter release. Watch the image snap into focus, then fire. Listen...operation so quiet it won''t distract. A powerful yet quiet motor drives AF Nikkor lenses for crystal-sharp pictures. And Nikon Light is built in. The world''s first built-in 3D Multi-Sensor Balanced Fill-Flash. Packed in a compact, lightweight body. With the N70, you''ll see the difference. The world''s greatest pictures. Yours.<br />', 'Nikon N70 SLR Camera', 2.2, '', NULL, 1, 1, 100, 8, 4, 2, 10, -3),
(19, 1, 'Canon EOS Rebel K2', 'CAN_RK2', 289, '<b>Product Description:</b><br />The Rebel K2 incorporates many of the most sought after attributes of the market leading Rebel Ti model including Canon''s premier 7-point wide area AF system, lightning-fast shutter speeds up to 1/2000 of a second, and 35-zone AF-linked evaluative metering that optimizes exposure accuracy. Compact and feature-packed, the Rebel K2 is a stylish, ergonomically streamlined, lightweight camera that yields heavyweight results. Weighing in at a mere 12 ounces, the new K2 is extremely compact and light, with advanced ergonomic design that makes single-handed operation a snap.  A step-up from (and a step quicker than) Canon''s entry level EOS Rebel GII, the EOS Rebel K2 features fast autofocus and film advance permitting users to shoot at 1.5 frames per second, 50 percent faster than the GII. Tracking and keeping moving subjects in focus is a breeze thanks to the Rebel K2''s AI Servo AF mode and seven point selectable autofocus system (with focusing points superimposed on Canon''s glareless new laser matte focusing screen). Users can also opt for manual focusing point selection by simply pressing the Focusing Point Selector and rotating the main dial until the preferred focus point is indicated below the picture area in the viewfinder data display, or on the large, easy-to-read LCD data panel on the back of the camera.  Like the Rebel Ti (K2''s senior sibling), this newest Rebel anticipates virtually any common shooting circumstance and offers photographers fast and easy', 'Canon EOS Rebel K2 35mm SLR Camera with EF 28 to 90mm II USM Lens', 1.5, '', NULL, 1, 1, 100, 8.7, 5, 2, 10, -4),
(20, 1, 'Hasselblad H1 645AF Kit', 'HAS-H1', 4900, '<table>\r\n<tr>\r\n<td class="deschdr">Description</td>\r\n</tr>\r\n</table>\r\n<table>\r\n<tr>\r\n<td class="longdesc">In the past, many professional photographers have shied away from auto-focus cameras, complaining that the slow speed of the auto-focus let valuable shots slip away. Quite often it was simply quicker, not to mention more reliable, to focus manually. The H1, however, offers lightning fast, super-accurate focusing under almost any conditions, guaranteeing that even the most fleeting of instants can be frozen accurately and clearly. And the auto-focus features an instant override function, enabling easy access to manual focusing without leaving the auto-focus mode.<br><br>The H1''s central lens shutter design enables virtually vibration-free exposures at even the longest shutter speeds and makes the H1 capable of flash-synchronization at all shutter speeds, up to 1/800 of a second.<br><br>The advanced auto functions of the H1 take the guesswork out of your photography, allowing even the most spontaneous of shots to be perfectly focused and exposed. In addition, the H1 can be customized to suit your individual needs. The H1 allows you to save specific setting groups as so called profiles so you can then instantly access a whole range of pre-determined options at a press of a button. This extremely useful feature enables the H1 to adapt to your specific work method or style, not the other way around. But even when changing settings manually, the H1''s ergonomic design and intuitive user interface enable you to make fast, easy adjustments without removing your eye from the viewfinder or your hand from the grip.<br><br>The H1''s super-fast, advanced auto-focus system focuses rapidly and reliably time after time, allowing you to concentrate on the image at hand, with no need to fiddle with detailed control. Unless of course, control is what you''re after.<br><br>On the H1, a simple touch of the lens allows manual override at any time you choose without leaving the auto-focus mode. No need to take your eye from the viewfinder or your hands from the camera. And while the H1 incorporates a great number of easy to use features found only on sophisticated 35mm or consumer digital cameras, it still oFers all the advantages of the medium format and the time honored Hasselblad quality, reliability, and system flexibility.<br><br> By simply switching from the interchangeable film magazines (for 120/220 or instant film) to a digital back, you move freely from the analogue to the digital world at will.<br><br>Combining standard film with digital imaging, studio sharpness with location reliability, and the ease of auto-focus and auto-exposure with hands-on, detailed control, the H1 doesn''t just oFer the best of both worlds - it oFers the best of all worlds.</td>\r\n</tr>\r\n</table>\r\n<table>\r\n<tr>\r\n<td class="deschdr">Features</td>\r\n</tr>\r\n</table>\r\n<table>\r\n<tr>\r\n<td class="featbulet"><img border="0" src="artworks2/blackbulet.gif" width="7" height="7"></td>\r\n<td class="featdesc">Auto Focus</td>\r\n</tr>\r\n<tr>\r\n<td class="featbulet"><img border="0" src="artworks2/blackbulet.gif" width="7" height="7"></td>\r\n<td class="featdesc">Built-in fill flash</td>\r\n</tr>\r\n<tr>\r\n<td class="featbulet"><img border="0" src="artworks2/blackbulet.gif" width="7" height="7"></td>\r\n<td class="featdesc">Removable battery grip</td>\r\n</tr>\r\n<tr>\r\n<td class="featbulet"><img border="0" src="artworks2/blackbulet.gif" width="7" height="7"></td>\r\n<td class="featdesc">Built in dark slide</td>\r\n</tr>\r\n<tr>\r\n<td class="featbulet"><img border="0" src="artworks2/blackbulet.gif" width="7" height="7"></td>\r\n<td class="featdesc">Data-imprinting feature</td>\r\n</tr>\r\n</table>\r\n<br>\r\n<table>\r\n<tr>\r\n<td class="deschdr">Specifications</td>\r\n</tr>\r\n</table>\r\n<table class="spectable" cellpadding="5" cellspacing="0">\r\n<tr>\r\n<td class="specq">Camera Type</td><td class="speca">Auto Focus Medium Format SLR (Single Lens Reflex) Camera</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Format</td><td class="speca">6x4.5 cm (actual size 56 x41.5 mm).<br>Film choice: 120 and 220 roll film.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Lens Mount</td><td class="speca">Hasselblad AF lenses with built-in electronically controlled shutter and aperture. Automatic or manual focusing with instant manual focus override. All H1 lenses have been especially designed to meet the exacting requirements of digital photography. Lens shades can be mounted in reverse for transport.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Viewfinder</td><td class="speca">HV90 - A 90�? reflex viewfinder, providing 100% field of view even when wearing eyeglasses, and built-in multi-mode light metering system. Image magnification 2.7X. Integrated fill-in flash with guide number 12. Hot-shoe for automatic flash (Metz SCA3002 system/ adapter SCA3902). Dot matrix LCD with presentation of all relevant information.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">LCD</td><td class="speca">Three dot-matrix LCD''s that provide clear and easy-to-understand information to the user. One is located on top of the right hand grip and the other in the 90�? viewfinder. The magazine has a segment based LCD on the left upper side.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Focus Type</td><td class="speca">Automatic and manual focusing with electronic focus aid in manual mode. Instant manual focus override. Automatic focusing using passive central cross type phase detection sensor.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Focus Screen</td><td class="speca">Bright Spherical Acute-Matte D type. Optional type with grid markings also available.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Exposure Compensation</td><td class="speca">Yes; Adjustable from -5 to +5 in 1, 1/2 or 1/3rd steps; Activation button located on viewfinder; Settings remain until changed</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Exposure Metering</td><td class="speca">at f/2.8 and ISO 100: Spot: EV 2 to 21.<br>Center-weighted: EV 1 to 21<br>Average: EV 1 to 21.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Exposure Bracketing</td><td class="speca">Bracketing using predetermined number of exposures (2, 3 or 5) in 1/3, 1/2, or 1-step intervals and interval timing from 1 s to 24 hrs.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">AF Metering Range</td><td class="speca">EV 1 to 19 (ISO 100).</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Shutter /Release</td><td class="speca">Electronically controlled lens shutter with speeds ranging from 18 hours to 1/800 s including B- and T-mode.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">ISO Range</td><td class="speca">ISO 6 to 6400.<br>Automatic setting with Barcode film.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Flash sync</td><td class="speca">TTL center-weighted system. Can be used with the built-in flash or a wide variety of flashes compatible with the SCA3002 ( Metz ) system using adapter SCA3902. Film speed range ISO16 to 6400. Flash output can be adjusted for fill-in purposes dependent of ambient light.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Flash Range</td><td class="speca">The H1 has a built-in measurement  <br>  <br>  <br>  <br> system that measures flash light  <br>  <br>  <br>  <br> from non-TTL flashes, such as studio</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Drive Mode</td><td class="speca">single and continuous</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Film Transport</td><td class="speca">Automatic film advance at approx. 2 frames per second. Multi-exposure capability.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Camera Back</td><td class="speca">Interchangeable film backs with film insert for both 120 and 220 film types. Automatic film length setting. Built-in curtain type, dark slide. Automatic wind to frame one and wind off. Multi-mode data imprinting outside image area. Features Barcode recognition.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Date/Time</td><td class="speca">Imprinted outside the image area.<br>any text the user desires, such as exposure data, time and date, the photographer''s name, copyright symbols, etc.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Tripod Socket</td><td class="speca">Accepts 1/4"-20 and 3/8" screw mounts</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Diopter Correction</td><td class="speca">Built-in dioptre adjustment from -4 to +2.5.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Self Timer</td><td class="speca">Number of frames from 2 to 32 and interval from 1 s to 24 hours.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Remote Control</td><td class="speca">Two M5 threads and an electrical connector for advanced control.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Depth Of Field Preview</td><td class="speca">Yes; "Stop Down" button located on right front of body</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Mirror Lock Up</td><td class="speca">Yes; Located on right front of body - Press this button to raise the mirror and press again to lower it (toggle function); A rapid "double-press" of this button will access the self-timer function</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Multiple Exposure</td><td class="speca">Yes; Frame options are 2,3,4,5 and "No Limit"; Function is activated through DRIVE button on grip - Button controls "Single", "Continuous" and "Multi-Exposure"</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Custom Functions</td><td class="speca">"Profile" feature allows rapid and secure access to pre-determined combinations of settings<br>A large number of the H1''s functions can be customized by the photographer to suit specific styles or situations through the built-in menu system<br>Both basic and advanced functions are set using buttons and control wheels on the camera body in conjunction with the graphic interfaces</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Power Source</td><td class="speca">A cassette for 3 CR-123 Lithium type batteries. Optional cassette with fixed rechargeable batteries (8 AAA NiMh).</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Dimensions</td><td class="speca">Body: 5.66 x 4.33 x 3.5" (144 x 110 x 88 mm) <br>90 Degree Viewfinder: 3 x 1.85 x 5.2" (78 x 47 x 132 mm) <br>120/220 Magazine: 3.8 x 3.3 x 2.2" (97 x 83 x 56 mm) <br>Lens: 2.8/80 3.3 x 2.7" (83 x 69 mm)</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Weight</td><td class="speca">Camera body: 28.6oz (800 g incl. batteries)<br>Magazine: 17oz. (475 g incl. film)<br>Viewfinder: 12oz (330 g) <br>Lens: 80mm f/2.8 16oz (450 g)</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">&nbsp;</td><td class="speca">&nbsp;</td>\r\n</tr>\r\n</table>', 'Hasselblad H1 645AF Kit with 80mm f/2.8 Lens, HV90x Viewfinder, & Magazine HM', 0.8, '', NULL, 1, 1, 100, 5.6, 4.3, 3.5, 10, -3),
(21, 1, 'Linhof Kardan GT', 'LIN-K', 3796.95, '<table>\r\n<tr>\r\n<td class="longdesc">Lightweight system camera for studio and location, combining the proven design details of the KARDAN range with an innovative monorail and new base tilt elements providing tri-axial camera adjustments to yield yaw-free movements both with direct and indirect displacements. The telescoping monorail guarantees outstanding stability. Special dovetail fittings allow to freely slide the entire monorail back and forth on all tripod heads thus featuring full macro focusing capability and wide angle efficiency as no encircling clamp has to be used. Center swings and tilts for uncomplicated Scheimpflug adjustments, factory adjusted parallel locks on the base tilt elements guarantee perfect camera alignment also with inclined monorail. There are three formats of the Kardan GT available: 4x5, 5x7, 8x10 inch</td>\r\n</tr>\r\n</table>\r\n<table>\r\n<tr>\r\n<td class="deschdr">Features</td>\r\n</tr>\r\n</table>\r\n<table>\r\n<tr>\r\n<td class="featbulet"><img border="0" src="artworks2/blackbulet.gif" width="7" height="7"></td>\r\n<td class="featdesc">yaw free system with telescoping rail and optical axis movements. Available in 4x5 to 8x10"</td>\r\n</tr>\r\n</table>\r\n<br>\r\n<table>\r\n<tr>\r\n<td class="deschdr">Specifications</td>\r\n</tr>\r\n</table>\r\n<table class="spectable" cellpadding="5" cellspacing="0">\r\n<tr>\r\n<td class="specq">Type</td><td class="speca">Monorail Camera</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Format</td><td class="speca">4x5</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Camera Movements</td><td class="speca">-</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Rise</td><td class="speca">Front: 2.2" (56mm) rise, 1" (25mm) fall, Rear: 2.2" (56mm) rise, 1" (25mm) fall</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Swing</td><td class="speca">360 degrees</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Tilt</td><td class="speca">30 degrees forward + 40 degrees base tilt, 40 degrees backward + 40 degrees base tilt</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Lateral shift</td><td class="speca">Front: 2.4" (60mm) left, 3.2" (80mm) right, Rear:3.2" (80mm) left, 2.4" (60mm) right - as per calibrations</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Back swing</td><td class="speca">360 degrees</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Back tilt</td><td class="speca">30 degrees forward + 40 degrees base tilt, 40 degrees backward + 40 degrees base tilt</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Camera back</td><td class="speca">4x5" Vertical/Horizontal quickchange International Standard Graflok</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Track extention</td><td class="speca">Telescopes from 15-23" (380-585mm)</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Bellows extention</td><td class="speca">Min.:100mm (4") with standard bellows and flat lensboard, 80mm (3.2") with wide-angle bellows and flat lensboard, 60mm (2.4") with wide-angle bellows and recessed lensboard <br>Max.:  20" (500mm) limited by included bellows</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Lens panel</td><td class="speca">Linhof Kardan Type 162x162mm</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Dimentions</td><td class="speca">15 x 9.5 x 14" (380 x 240 x 355mm) L.W.H.</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">Weight</td><td class="speca">9.7 lbs. (4.4kg)</td>\r\n</tr>\r\n<tr>\r\n<td class="specq">&nbsp;</td><td class="speca">&nbsp;</td>\r\n</tr>\r\n</table>', 'Linhof Kardan GT 4x5" Camera', 9.7, '', NULL, 1, 1, 100, 15, 9.5, 14, 10, -5),
(22, 2, 'Compaq Presario ML-2', 'COM-1', 999.99, '<table cellspacing=0 cellpadding=0 border=0>\r\n<tr>\r\n<td width=5></td>\r\n<td >AMD64 technology provides simultaneous support for 32-bit and 64-bit computing, including today''s 32-bit applications and tomorrow''s 64-bit software</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >14" WXGA high-definition widescreen display with BrightView technology and 1280 x 768 resolution</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >80GB hard drive (4200 rpm)</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >ATI RADEON XPRESS 200M IGP graphics with 128MB DDR shared video memory; S-video TV-out</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >6-in-1 digital media reader supports Secure Digital, MultiMediaCard, Memory Stick, Memory Stick PRO, SmartMedia and xD-Picture Card (does not support Memory Stick Duo media or adapters)</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >IEEE 1394 (FireWire) interface and 3 high-speed USB 2.0 ports for fast digital video, audio and data transfer</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Built-in 54g high-speed wireless LAN (802.11b/g) with 125HSM/SpeedBooster support; 10/100Base-T Ethernet with RJ-45 connector; 56 Kbps high-speed modem; Expansion Port 2 connector</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Weighs only 5.4 lbs. and measures just 1.5" thin for easy portability; lithium-ion battery and AC adapter</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Microsoft Windows XP Home Edition Service Pack 2 (SP2) operating system preinstalled; software package included with Adobe Photoshop Album, muvee autoProducer DVD Edition with Burning, Apple&#174; iTunes and more</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td ><span class=''Legal''>AMD, AMD Arrow logo, AMD Turion, AMD PowerNow!, HyperTransport and combinations thereof are trademarks of Advanced Micro Devices, Inc.<br><br>*Model number indicates relative mobility and performance among this AMD processor class.</td>\r\n</tr>\r\n</table>', 'Compaq Presario Notebook with AMD Turion', 4.5, '', NULL, 1, 1, 100, 15, 15, 1, 10, -4),
(24, 2, 'Acer FERRARI 4005WLMI', 'ACE-4005', 2119.99, 'Get ready to feel the high-speed computing power of the Acer Ferrari 4000 (model LX.FR406.035), a continuation of the speedy, mobile-centric laptops the two companies have previously collaborated on. Sleekly styled, the the Ferrari 4000''s carbon-fiber casing--which is stronger and lighter than aluminum--comes in a more conservative black and is accented with exclusive Ferrari red edges and the classic yellow prancing horse Ferrari logo, and the interior has a rubberized coating. Made for today''s demanding applications and ready to continue working into tomorrow, the Ferrari 4000 is powered by an AMD Turion 64 Mobile processor. Other hardware features include a bright 15.4-inch LCD, 100 GB hard drive, 1 GB of installed RAM (with a 2 GB maximum), integrated 54g wireless LAN and Bluetooth wireless connectivity, gigabit LAN, multiformat memory card reader, dual-layer DVD/CD burner, and Windows XP Professional. <p> <b>The Basics</b><br> <ul> <li><i>Hard Drive:</i> The 100 GB hard drive (5400 RPM) is above average in size for notebook PCs, and its capacity is a welcome size for road warriors.  <li><i>Processor:</i> Combining strong performance with efficient usage of power, the 2.0 GHz AMD Turion 64 ML-37 is uniquely optimized to power today''s thinnest notebooks. It''s also built for tomorrow''s 64-bit applications, which will require a processor with significant power. It includes such AMD technology features as HyperTransport (which increases the communication between integrated circuits), PowerNow! (which enables longer battery life and reduced heat generation), and Enhanced Virus Protection (which works with Windows XP Service Pack 2 to better withstand attacks from certain classes of viruses). It also features a 1 MB L2 cache. (An L2, or secondary, cache temporarily stores data; and a larger L2 cache can help speed up your system''s performance.)   <li><i>Memory:</i> The 1 GB of installed RAM (512 MB DDR333 SDRAM, installed in each of two memory slots) is an excellent start at the races, and the Ferrari 4000 has room for extra pimping with a 2 GB maximum RAM size (1 GB x 2).  <li><i>CD/DVD Drive:</i> Offering the latest in DVD writing technology, the Ferrari 4000 multiformat DVD/CD drive is compatible with both DVD+ and DVD- disc formats as well as dual-layer DVD+R discs, which can store up to 8.5 GB of data. You can also burn your favorite music mixes to CD. It offers the following write speeds: 24x for CD-Rs, 8x for single-layer DVD+R and DVD-R, 2.4x for dual-layer DVD+R, and 2x for DVD-RAM.  <li><i>Keyboard &amp; Mouse:</i> This notebook features an 88-key Acer FineTouch keyboard with five-degree curve, inverted T cursor layout, 2.5mm minimum key travel, and international language support. It also offers a touchpad with four-way integrated scroll button and an external gloss-black optical mouse.  </ul> <b>Screen, Graphics and Sound</b><br> The 15.4-inch TFT LCD screen has a 1680 x 1050-pixel resolution and can display up to 16.7 million colors. It''s powered by the ATI Mobility Radeon X700 video/graphics card with 128 MB of DDR RAM memory on PCI Express architecture. With 8 parallel pixel pipelines and breakthrough  image enhancement technology, it provides extremely smooth, responsive high-definition video that''s great for fully immersive 3D gaming as well as DVD movies and graphics-intensive presentations. It offers VGA and S-Video outputs as well as a DVI-D connection for high-def output. This notebook has an integrated audio card that''s AC97 compliant and it features a line-in/microphone, line-out/headphone, and two stereo speakers. <p> <b>Connectivity and Expansion Slots</b><br> This notebook features an integrated 54g wireless LAN for connecting to 802.11b and 802.11g wi-fi routers as well as integrated Bluetooth wireless connectivity (for synchronizing and transferring data between your PC and your PDA or cell phone, connecting to Bluetooth-enabled printers, and more). It features the following connectivity options: <ul> <li>4 USB 2.0 ports for connecting a wide range of peripherals--from digital cameras to MP3 players <li>1 FireWire (also known as IEEE 1394 or i.Link) port for connecting digital video camcorders and other peripherals <li>Type II PC Card slot, 32-bit PC CardBus architecture <li>5-in-1 memory card reader (compatible with MultiMediaCard, Secure Digital, Memory Stick, Memory Stick PRO, and xD-Picture Card) <li>Connector for optional ezDock docking station </ul> It also has an integrated 56K modem (V.90) and an RJ-45 LAN network port (for a 10/100/1000 Gigabit Ethernet connection to networks and DSL/cable modems). <p> <b>Preloaded System and Software</b><br> This system comes with the Windows XP Professional Edition (which adds Microsoft''s IIS Web server, back-up and recovery utilities, Remote Desktop, and other enhanced business features) with Service Pack 2 featuring Advanced Security Technologies, which helps to reduce unwanted downloads and pop-ups while surfing the Web. Other preloaded software includes Cyberlink PowerDVD, Norton AntiVirus, and NTI CD Maker. <p> <b>Dimensions and Weight</b><br> This notebook measures 14.3 by 10.5 by 1.4 inches and weighs 6.3 pounds. <p> <b>Power</b><br> It comes with an 8-cell lithium ion battery, which provides up to 3.0 hours life depending on configuration and usage. It has a 2.5-hour recharge time with system off, 3.5 hours with system in use. <p> <b>What''s in the Box</b><br> Ferrari 4000 laptop, rechargable battery, optical mouse, AC adapter, and operating instructions. It is backed by a one-year limiited hardware warranty.<br /><br /><b>Product Description:</b><br />Acer Ferrari 4005WLMi Notebook PC Mainstream Notebook in Ferrari Colors with AMD Processor  Based on the new 64-bit technology, the Ferrari 4000 from Acer features advanced graphics capabilities, wide-screen display and wireless connectivity.  Powerful, dark and purposeful, this notebook has the presence of a true champion.', 'Acer FERRARI 4005WLMI AMD Turion 64 Mobile Technology ML-30 1GB ', 6, '', NULL, 1, 1, 100, 12, 12, 2, 10, -4),
(23, 2, 'Dell Inspiron', 'TOS-1', 1199.99, '<table cellspacing=0 cellpadding=0 border=0>\r\n<tr>\r\n<td width=5></td>\r\n<td >15.4" active-matrix TFT-LCD widescreen display with TruBrite technology and 1 x 800 resolution</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >100GB Serial ATA hard drive (5400 rpm)</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Intel&#174; Graphics Media Accelerator 900 with 8-128MB dynamically shared video memory; SRS TruSurround XT and SRS WOW audio enhancements</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Express Media Player with CD/DVD launch and control buttons, including play, stop and next/previous track</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >6-in-1 bridge media adapter supports Secure Digital, MultiMediaCard, Memory Stick, Memory Stick PRO, SmartMedia and xD-Picture Card</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >i.LINK (IEEE 1394) port and 3 high-speed USB 2.0 ports for fast digital video, audio and data transfer</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Built-in Marvell 10Base-T/100Base Ethernet LAN with RJ-45 connector; V.92 high-speed modem</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Weighs 6.1 lbs. and measures 1.1" thin for portable power; lithium-ion battery and AC adapter</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td >Microsoft Windows XP Home Edition operating system preinstalled; software package included with InterVideo WinDVD Creator 2 Platinum, Microsoft Office OneNote 2003, Sonic Solutions RecordNow! Basic and more</td>\r\n</tr>\r\n<tr>\r\n<td width=5></td>\r\n<td ><span class=''Legal''>Intel, Pentium, Celeron, Centrino, Intel Inside and the Intel Inside logo are trademarks or registered trademarks of Intel Corporation or its subsidiaries in the United States and other countries.</span></td>\r\n</tr>\r\n</table>', 'Dell Inspiron Notebook with Intel', 6, '', NULL, 1, 1, 100, 12, 12, 1, 10, -5),
(27, 2, 'Toshiba Satellite M65-S809', 'TOS-M65', 1299.99, 'Unhook yourself from your desktop with the powerful and nicely portable Toshiba Satellite M65-S809 notebook PC, which features a widescreen 17-inch XGA display with TruBrite technology and the Intel Graphics Media Accelerator 900 with 128 MB of shared video RAM. The large screen real estate is great for multi-tasking through multiple documents and application windows as well as enjoying DVD movies in their native aspect ratio. It also features a battery-sipping 1.73 GHz Pentium M (Centrino) processor, a 100 GB hard drive, 512 MB of installed RAM (2 GB maximum), dual-layer multiformat DVD drive that also burns CDs, integrated 54g wireless connectivity, multi-format memory card reader, and Windows XP Home edition operating system. <p> <b>The Basics</b><br> <ul> <li><i>Hard Drive:</i> A welcome size for road warriors, the 100 GB Enhanced IDE hard drive is a bit above average in size for notebook PCs, and faster than average at 5400 RPM. It''s also user removable, enabling you to upgrade its size at some point down the line. <br><li><i>Processor:</i> The 1.73 GHz Pentium M 740 (Centrino) processor is in the middle of the speed spectrum for this processor class (October 2005). It is well equipped for office productivity software tasks, from complex spreadsheets to databases. The Pentium M processor is designed specifically for low-power mobile usage, and it features the latest in power-saving technologies--ensuring you push your battery and productivity to the max. It also has a large 2 MB L2 cache--which will help speed up your system''s performance--and a 533 MHz front-side bus (FSB). <br><li><i>Memory:</i> The 512 MB of built-in memory (2 x 256 MB, PC4200, DDR2 SDRAM) is a good start for power users, and it offers a very fast 533 MHz speed. It has two memory slots in total, with a maximum memory expansion up to 2 GB (2 x 1024 MB).  <br><li><i>CD/DVD Drive:</i> The double-layer DVD drive is compatible with a wide range of formats, including both DVD+RW and DVD-RW discs, CD-RW discs, and dual-layer (DL) DVD+R discs, which can hold up to 8.5 GB of data--great for backing up your MP3 collection or your most important documents. It features the following speeds: 8x DVD+R DL, 4x DVD+R, 2.4x DVD+RW, 8x DVD-R, 2x DVD-RW, 4x DVD-RAM, and 24x/4x for CD-R/RW. It reads DVD-ROM discs at 8x and CD-ROMs at 24x. <br><li><i>Keyboard &amp; Mouse:</i> This notebook has a standard 85-key keyboard and electro-static two-button touchpad. It also offers a launch button for the Express CD/DVD media player and control buttons (play, stop, next, previous). </ul> <b>Screen, Graphics and Sound</b><br> The M65-S809 has a 17-inch TruBrite TFT screen with a widescreen 1440 x 900-pixel resolution. It also provides TruBrite technology, which makes images brighter and more vivid thanks to its anti-glare feature. Video and graphics are powered by the Intel Graphics Media Accelerator 900, which uses Intel Dynamic Video Memory Technology (DVMT) and provides up to 128 MB of shared video memory. It also features an integrated audio card with headphone and microphone jacks and the capability to deliver SRS TruSurround XT virtual surround sound and SRS WOW stereo enhancement through the two built-in speakers. <p> <b>Connectivity and Expansion Slots</b><br> The M65-S809 has an integrated Intel Pro/Wireless Network Connection 2200BG LAN, which supports both 802.11b and 802.11g (54g) wireless connections in your office, home, and at Wi-Fi hotspots. You get a good offering of connectivity options, including Firewire: <ul> <li>3 USB 2.0 ports for connecting a wide range of peripherals--from digital cameras to MP3 players <li>1 FireWire (also known as IEEE 1394 or i.Link) port for connecting digital video camcorders and other peripherals <li>1 VGA monitor port <li>1 S-Video out <li>1 PCMCIA (or PC Card) slot (Type II, PCMCIA R2.01, PC Card16, CardBus) <li>1 headphone jack, 1 microphone jack <li>5-in-1 memory card reader, compatible with Secure Digital (SD), MultiMedia (MMC), Memory Stick, Memory Stick Pro, and XD Picture Card </ul> It also has an integrated 56K modem (V.90) and an RJ-45 LAN network port (for a 10/100 Gigabit Ethernet connection to networks and DSL/cable modems). <p> <b>Preloaded System and Software</b><br> This system comes with the Windows XP Home Edition Service Pack 2 operating system with Advanced Security Technologies, which helps to reduce unwanted downloads and pop-ups while surfing the Web. It also comes preloaded with Microsoft Works, Microsoft Office OneNote 2003, McAfee AntiVirus, InterVideo WinDVD and WinDVD Creator, Sonic Solutions RecordNow. <p> <b>Dimensions and Weight</b><br> This notebook measures 15.5 x 11 x 1.5 (WxDxH) and weighs 7.1 pounds. <p> <b>Power</b><br> It''s powered by an 8-cell rechargeable lithium-ion battery, which has a battery life of up to 4.5 hours (depending on usage). It has a 4-hour full charging time with the notebook off, and 12 hours with the computer active. <p> <b>What''s in the Box</b><br> This package contains the M65-S809 notebook PC, rechargeable lithium-ion battery, AC adapter, and operating instructions. It is backed by a one-year limited hardware warranty.<br /><br /><b>Product Description:</b><br />The Satellite M65 is a notebook PC that''s a virtual complete replacement to desktop PC use.  Graphics - Intel Graphics Media Accelerator 900 with 8MB-128MB dynamically allocated shared graphics memory   Realtek ALC250 16-bit stereo software sound supports 3D Sound, Direct 3D Sound, DirectSound, Direct Music, MIDI (playback), Sound Volume Control Dial; Built-in harman/kardon stereo speakers with SRS Labs audio enhancements featuring SRS TruSurround XT virtual surround sound   Integrated V.92 software modem   10/100 Base-TX Ethernet   Integrated Intel Pro/Wireless Network Connection 2200BG 802.11b 802.11g   1 PC Card slot support 1 Type II, PCMCIA R2.01, PC Card16, CardBus   ExpressCard slot supporting ExpressCard/34 and ExpressCard/54   5-in-1 Bridge Media Adapter (Secure Digital, Memory Stick, Memory Stick PRO, Multi Media Card, xD Picture Card)   Ports - RGB (monitor) port / TV-out (S-Video) / i.LINK IEEE-1394 / 3 Universal Serial Bus (USB) ports (v2.0) / External Microphone jack /  Headphone jack / RJ-45 LAN port / RJ-11 modem port   Dimensions (WxDxH Front/H Rear) -  15.5'''' (394.0mm) x 11.0'''' (280.3mm) x 1.2'''' (29.8mm)[F]/1.5'''' (37.0mm)[R] without feet / Weight -  About 7.5 lbs   Pre-installed Operating System - Windows XP Home Service Pack 2 / Software -  Toshiba Software and Utilities; Electronic User''s Guide;  Microsoft Office OneNote 2003; Microsoft Works Version 8.0; McAfee VirusScan (30-day trial); Sun Java 2 Runtime Environment; Adobe Acrobat Reader version 5.0; InterVideo WinDVD 5; InterVideo WinDVD Creator 2 Platinum; Sonic Solutions PrimeTime; Sonic Solutions RecordNow! Basic for Toshiba; Sonic Solutions', 'Toshiba Satellite M65-S809 17" Notebook PC (Intel Pentium M Processor 740 (Centrino), 512 MB RAM, 100 GB Hard Drive, DVD SuperMulti Drive)', 7.8, '', NULL, 1, 1, 100, 15.5, 11, 1.5, 10, -3),
(25, 2, 'Sony VAIO VGN-A290', 'SON-VGN', 1568, '<strong>The Basics </strong><br>Sony takes mobile computing to new heights with its impressive VAIO VGN-A290 Notebook PC. Much like extra-bulky, battery-draining "desktop replacement" notebooks, the VAIO VGN-A290 offers such amenities as a massive 17-inch widescreen display, a huge 100 GB hard drive and both CD and DVD burning. Yet the unit is far more power efficient than most desktop replacements and comparatively compact at just 8.6 lbs. Though it may cost a bit more than a standard notebook, the VAIO VGN-A290 is perfect for those who crave the next generation of portable computing today.<p> <table width="100%" border="1" bordercolor="#FFFFFF">   <tr>     <td width="23%" height="100" align="center" valign="top">       <p><strong><font size="2">Sony Series A Display Sizes</font></strong><p><br>         <font size="2"><strong><em>The VGN-A290 features a 17" screen.</em></strong></font></p>       </td>     <td width="77%" rowspan="2" align="left" valign="top"><p><strong>Processor<br>         </strong>At the heart of any computer lies the CPU (or processor), a massive          collection of miniature transistors that governs the speed and power of          the entire unit. Some of today''s notebooks are equipped with high-end          CPU''s on par with those found in top-of-the-line desktop PCs, while others          are quick enough only for basic duties such as word processing, email          and the like. The VAIO VGN-A250 is equipped with an Intel Pentium M 725          processor operating at 1.6 GHz. This is one of three components that comprise          Intel''s efficient Centrino system (the others being a specialized Intel          chipset and integrated wireless support). Centrino-equipped notebooks          are generally smaller, easier on the batteries, and more versatile than          their non-Centrino counterparts. This particular CPU is part of Intel''s          upgraded Pentium M lineup, featuring an amazing 2 MB of Level 2 cache          for extremely fast access to recently opened data and a fast 400 MHz front          side bus to help reduce data streaming bottlenecks. Though its raw clock          speed is not on par with that of a high-end Intel Pentium or AMD Athlon,          this CPU will easily handle most every mobile task while at the same time          improving battery life. Moreover, Sony has equipped the system with solid          graphics support and adequate memory -- two components vital to overall          performance.</p>       <p><strong>Memory</strong><br>         Computers typically store information on their hard drive, but they keep          frequently and recently accessed data in Random Access Memory (RAM) for          faster retrieval. More RAM means more efficient computing, superior multitasking          and less strain on your hard drive. The VAIO VGN-A290 incorporates a startling          one GB of RAM. This is a massive allotment for a notebook and substantially          more than that of most desktops as well. Thusly, users can expect superb          multitasking and virtually no slowdowns during ultra-complex tasks.<br>       </p></td>   </tr>   <tr>     <td height="150" align="center" valign="top"><br>       <font size="2"><strong><em>The <a href="http://www.amazon.com/exec/obidos/ASIN/B0002XUXBG/002-5874727-5663227">VGN-A250</a>        features a 15.4" screen.</em></strong></font><em></p></em></td>   </tr> </table> <p><strong>Video</strong> <br>   CPU''s are usually so busy doing basic calculations that they need help translating    visual output to the viewing screen. This is the duty of the graphics card (or    graphics controller). This system''s graphics controller is an ATI Mobility Radeon    9200 with 64 MB of dedicated video RAM. Dedicated video memory is far preferable    to &quot;shared&quot; video memory (where the graphics controller appropriates    a portion of the main system memory), and this 64 MB allotment is considered    plenty for 3D graphics, midlevel 3D animation packages and many of the latest    3D games. <table width="100%" border="1" bordercolor="#FFFFFF" bgcolor="#FFFFFF">   <tr bordercolor="#FFFFFF">      <td width="58%" rowspan="2"> <p><b>Display</b><br>         The VAIO VGN-A290 sports a 17-inch WUXGA display. This is a comparatively          enormous screen when compared to other notebook displays, and all the          more spectacular given the unit''s surprisingly compact size and lightweight          mass. It''s highly sophisticated too -- sporting Sony''s new XBRITE Technology          for better contrast and a brighter picture, and an exceedingly detailed          1920 by 1200 maximum resolution. Furthermore, the widescreen format is          perfectly suited to watching the Hollywood blockbusters you''ll play on          the system''s DVD-compatible optical drive.       <p><b>Hard Disk</b><br>         A 100 GB hard drive in a mobile computer many be a rarity, but that didn''t          stop Sony. This level of data storage is a welcome perk indeed for those          who need to operate a broad range of applications and also keep a generous          library of space-gobbling music and/or multimedia files.       <p><strong>Audio</strong><br>         The unit is equipped with integrated stereo speakers and audio amplifier.       </td>     <td colspan="2" align="center" valign="top">       <p>&nbsp;</p>       <p><strong><font size="2">Dimensions When Closed</font></strong><p></p><strong><font size="2">Other Series A Computers</font></strong><p></td>   </tr>   <tr bordercolor="#000000">     <td width="17%" height="83" align="center" valign="top" bordercolor="#FFFFFF"><font size="2">Sony        VAIO VGN-A290<br>       <strong>1.70 GHz Pentium M<br>       1 GB RAM<br>       100 GB HD</strong></font></p></td>     <td width="25%" align="center" valign="top" bordercolor="#FFFFFF"> <font size="2"><a href="http://www.amazon.com/exec/obidos/ASIN/B0002XUXBG/002-5874727-5663227">Sony        VAIO VGN-A250</a><br>       <strong>1.6 GHz Pentium M<br>       512 MB RAM<br>80 GB HD<br>       </strong></font></td>   </tr> </table> <p><b>Optical Drive</b><br>   An optical drive is essential in today''s computing environment. A &quot;CD-ROM&quot;    drive allows you to install CD-based applications and play music CDs. A &quot;CD-RW&quot;    drive adds CD &quot;burning&quot;, so you can also backup your important files    to long-lasting discs and create personalized music CDs. With a DVD-ROM drive    you can watch DVD movies. And with a DVD-RW drive, you can &quot;write&quot;    home movies to durable discs and archive files to DVD (DVDs boast more than    seven times the storage capacity of a CD). Some drives allow you to do a combination    of all of these tasks. This system features a DVD+R Double Layer/DVD&plusmn;RW    Drive, through which you can do all of the above. The drive also supports today''s    hot new double layer DVD format that effectively doubles the capacity of typical    DVDs.</p> <p><strong>Keyboard and Controls</strong><br>   You''ll control your notebook via an 82-key keyboard and a standard electro-static    touch pad.</p> <p><strong>Connectivity and Expansion</strong><br>   The VAIO VGN-A290 features a bevy of connectivity facilities, including a 56K    modem for low-speed dial-up Internet and email access, a 10BASE-T/100BASE-TX    Ethernet port for high-speed wired network and Internet, and an integrated Intel    PRO/Wireless 2200BG Network Connection (802.11b/g) for cord-free e-communication    at home, at the office or on the road via a local public hotspot. Other key    amenities include high-speed USB 2.0 ports for plug and play devices such as    external drives and digital cameras, an IEEE 1394 FireWire port (commonly used    for quick data uploads from digital camcorders), and an AV Entertainment Dock    with high-end perks such as a TV Tuner and MPEG Encoder, VGA Monitor port, VHF/UHF    TV port, S-Video in/out, DVI-D, Optical out, Line in (RCA Pin), Line out (RCA    Pin) and more. Suffice to say that no matter what sort of connections you want    to make, you can likely do it with the VAIO VGN-A290.</p> <p><strong>Operating System and Software</strong><br>   Sony will install Microsoft''s Windows XP Home Edition operating system, a variety    of productivity and business applications, and a broad range of digital photo,    audio and video utilities.</p> <p><strong>Dimensions and Weight</strong><br>   Many of today''s most powerful notebooks are also the largest, weighing ten or    twelve lbs or more and therefore too big and cumbersome for extensive, continuous    traveling. These are often referred to as &quot;desktop replacements&quot;.    On the other extreme are &quot;thin and lights&quot; or &quot;ultra-portables&quot;,    super-miniaturized units that are typically less powerful than their larger    brethren but weigh as little as two lbs and will often fit comfortably inside    a large purse. Despite its impressively spacious display and cutting-edge capabilities,    the VAIO VGN-A290 is not excessively heavy at just 8.6 lbs. It is larger than    average at 16 by 11 inches, though not nearly as bulky as most other similarly    equipped portables. <br><br /><br /><b>Product Description:</b><br />The VAIO A290 is the desktop replacement notebook that can perform like an entertainment center. When connected to the AV dock, the A290 has the power of a TV tuner, video recorder and digital amplifier. Fully equipped with a DVD+R Double Layer with DVD+RW/CD-RW Drive, a 17" wide XBRITE LCD screen and powerful Intel Centrino Mobile Technology, this sleek and powerful tool will be all you need wherever you go. ', 'Sony VAIO VGN-A290 17" Notebook PC (Intel Pentium M Processor 735 (Centrino), 1 GB RAM, 100 GB Hard Drive, DVD+/-RW Double Layer Drive)', 8.6, '', NULL, 1, 1, 100, 16, 11, 1.8, 10, -4);
INSERT INTO `iakt_products_prd` (`id_prd`, `idctg_prd`, `name_prd`, `sku_prd`, `price_prd`, `description_prd`, `shortdesc_prd`, `weight_prd`, `file_prd`, `downloadcounter_prd`, `idtxc_prd`, `visible_prd`, `qty_prd`, `length_prd`, `width_prd`, `depth_prd`, `alertlevel_prd`, `userrate_prd`) VALUES (26, 2, 'Sony VAIO VGN-FJ170/B', 'SON-FJ170', 1349.99, 'Sleekly compact and nicely lightweight at just 5.3 pounds, the Sony Vaio VGN-FJ170/B notebook PC sports a 14-inch widescreen display with Sony''s exclusive XBRITE-ECO LCD technology. Road warriors will appreciate the quick, responsive performance, supplied by the super-fast 5400rpm Serial ATA hard drive, advanced DDR2 memory, and Intel Graphics Media Accelerator 900 video card with 128 MB of shared video RAM. The built-in camera and microphone keep you connected to family and friends by allowing you to easily chat or video mail. Other features include a 1.73 GHz Intel Centrino Pentium M processor, generous 100 GB hard drive, 512 MB of installed RAM (2 GB maximum), dual-layer, multi-format DVD/CD burner, multi-format memory card slot, Memory Stick slot, and printers), and a wide assortment of pre-loaded software titles. <p> <b>The Basics</b><br> <ul> <li><i>Hard Drive:</i> This performance-driven desktop is loaded with a 100 GB Serial ATA (SATA) hard drive, which offers higher speed transfer of data--akin to Firewire and USB 2.0--than typical ATA hard drives. It''s larger than average (which is typically 60 GB) and offers a fast 5400 RPM speed. It offers more than enough capacity for storing documents and productivity software for road warriors. You''ll also be able to store hundreds of hours of digital audio. <br><li><i>Processor:</i> The Intel Centrino M 740 processor is designed specifically for mobile computing, offering a balanced level of mobile-optimized processor technology, good mobile performance, and exceptional value. It features a Deep Sleep state, which helps enable longer battery life by minimizing the power consumption of the processor during brief periods of inactivity. The 1.73 GHz speed is in the middle of the speed spectrum for this processor (as of autumn, 2005), and it also offers a fast 533 MHz front-side bus (FSB) speed and a large 2 MB L2 cache. (An L2, or secondary, cache temporarily stores data; and a larger L2 cache can help speed up your system''s performance.) <br><li><i>Memory:</i> The 512 MB of built-in memory (2 x 256 MB, PC3200, 400 MHz DDR2) is a good start for power users, and it offers a faster than average RAM speed (333 MHz). It has two memory slots in total, with a maximum memory expansion of 2 GB (2 x 1 GB). <br><li><i>CD/DVD Drive:</i> Offering the latest in DVD writing technology, the multi-format DVD/CD drive is compatible with both DVD+ and DVD- disc formats as well as dual-layer DVD+R discs, which can store up to 8.5 GB of data. For DVD-RW discs, it has a 8x write/6x rewrite speed, while for DVD+RW discs it has a 16x write/4x rewrite speed. For double-layer DVD+R, it has a 4x write speed. For CDs, it has a 24x write/24x rewrite speed. It also offers an 8x DVD-ROM read speed. <li><i>Keyboard &amp; Mouse:</i> This notebook has a standard 88-key keyboard and electro-static two-button touchpad. </ul> <b>Screen, Graphics and Sound</b><br> The 14.1-inch XBRITE-ECO LCD has a resolution of 1280 x 800 pixels--perfect for watching movies in their intended 16:9 widescreen aspect ratio. Sony''s Smart Display Sensor feature instantly adjusts resolution when you connect to a display or projector. Video is powered by the Intel Graphics Media Accelerator 900, which uses Intel Dynamic Video Memory Technology (DVMT) and provides up to 128 MB of shared video memory. The integrated audio card provides 16-bit stereo sound via the built-in stereo speakers. <p> <b>Connectivity and Expansion Slots</b><br> The VGN-FJ170/B has an integrated 54g wireless LAN (Intel PRO/Wireless 2200BG) that''s compatible with 802.11b and 802.11g networks. You get a basic offering of connectivity options, including both USB 2.0 and i.Link (Firewire): <ul> <li>3 USB 2.0 ports for connecting a wide range of peripherals--from digital cameras to MP3 players <li>1 FireWire (also known as IEEE 1394 or i.Link) port for connecting digital video camcorders and other peripherals <li>1 VGA monitor port <li>1 PCMCIA (or PC Card) slot (Type I/II, 32-bit) <li>1 headphone jack <li>1 microphone jack <li>Port replicator connector <li>Memory Stick media slot, compatible with Memory Stick, Memory Stick Pro, Memory Stick Duo with MagicGate functionality </ul> It has an integrated 56K modem (V.90) and an RJ-45 LAN network port (for a 10/100 Ethernet connection to networks and DSL/cable modems). The optional Port Replicator unit also includes 3 additional USB 2.0, VGA, RJ-45, and DVI-D video out (for a crisp, lossless digital picture to an external LCD monitor) ports. <p> <b>Preloaded System and Software</b><br> This system comes with the Windows XP Home Edition Service Pack 2 operating system with Advanced Security Technologies, which helps to reduce unwanted downloads and pop-ups while surfing the Web. It also comes loaded with a bevy of Sony multimedia software: Click to DVD (DVD creation), SonicStage (digital music), Vaio Media (network file sharing), DVgate Plus (digital video), Vaio Zone with WinDVD (for watching DVD movies), and Image Converter (for PSP transfer). Other preloaded software includes Adobe Photoshop Album Starter Edition, Quicken 2005 New User Edition, Microsoft Works 8.0 (with word processing, spreadsheet, and calendar), Norton Internet Security (with 90-day subscription), Roxio DigitalMedia SE, and SpySubtract. <p> <b>Dimensions and Weight</b><br> Easily portable, the VGN-FJ170/B weighs 5.3 pounds with standard battery and measures 13.4 x 1.3 x 10 inches (WxHxD). <p> <b>Power</b><br> It is powered by the VGP-BPS2A standard lithium-ion rechargeable battery, which produces a battery life of up to 3.5 hours. The optional VGP-BPL2 large-capacity battery enables battery life up to 5.5 hours. <p> <b>What''s in the Box</b><br> This package contains the VGN-FJ170/B notebook PC, rechargeable lithium-ion battery, AC adapter, and operating instructions. It is backed by a one-year limited hardware warranty, and Sony offers 1-year of toll-free telephone technical assistance.<br /><br /><b>Product Description:</b><br /><b>Includes: lithium-ion battery, AC adapter, Microsoft Windows XP Home with Service Pack 2, Photoshop Album Starter Edition, WinDVD, Works 8.0, Roxio DigitalMedia SE, Norton Internet Security (90-day subscription) & more.</b> Sony VAIO(R) VGN-FJ170/B Notebook Computer - This slim notebook computer is designed to be easy to take with you, while still providing you with some amazing features. You get the Intel Pentium M Processor 740 (1.73GHz) and 512MB of DDR2 RAM to power your applications. A 14.1" widescreen display that''s great for multi-tasking or enjoying your favorite DVD movie. Integrated 802.11b/g Wi-Fi adapter that keeps you connected to the world around you - without those pesky wires!<li>Intel Pentium M Processor 740 (1.73GHz)<li>2MB of L2 Cache<li>533MHz FSB<li>Built-in 802.11b/g Wi-Fi Wireless Network Adapter<li>14.1" WXGA Widescreen LCD<li>Native Resolution - 1280x800<li>100GB 5400RPM Serial ATA(TM) HDD<li>512MB of PC-3200 400MHz DDR2 SDRAM (expandable to 2GB)<li>Double Layer DVD Writer - (write speeds) up to 4x Double Layer DVD+R, 8x DVD-R, 8x DVD+R, 6x DVD-RW, 8x DVD+RW, 24x CD-R, & 24x CD-RW<li>Double Layer DVD Writer - (read speeds) up to 8x DVD-ROM & 24x CD-ROM<li>Intel Graphics Media Accelerator 900 with up to 128MB of shared RAM (memory is taken from the main system''s RAM)<li>Integrated MOTION-EYE Camera with built-in microphone<li>Integrated v.90 Fax Modem<li>Ports - 10/100 Ethernet, 1 4-pin Firewire, 3 USB 2.0, 1 VGA, 1 DVI-D, 1 Printer, 1 Microphone Jack, & 1 Headphone Jack<li>Memory Stick Media Slot - supports Memory Stick, Memory Stick(R) PRO, & Memory Stick(R) DUO with MagicGate(TM) functionality<li>PCMCIA Type I/II Card Slot with CardBus support<li>Unit Dimensions - 13.4" (w) x 1.3" (h) x 10" (d)  ', 'Sony VAIO VGN-FJ170/B 14.1" Notebook PC (Intel Pentium M Processor 740, 512 MB RAM, 100 GB Hard Drive, DVD+R Dobule Layer/DVD+/-RW Drive)', 5.3, '', NULL, 1, 1, 100, 10, 13.4, 1.3, 10, -5),
(28, 2, 'Toshiba Satellite M55-S329', 'TOS-M55', 1169, 'Maximize your mobile performance as well as your multimedia capabilities with the Toshiba Satellite M55-S139 notebook PC featuring a bright 14-inch TrueBrite screen and the Intel Graphics Media Accelerator 900 with 128 MB of shared video RAM. It''s ideal for both savvy professionals and students who want outstanding performance and advanced capabilities at an affordable price. It has a powerful 1.86 GHz Celeron M processor, an 100 GB hard drive, 512 MB of installed RAM (2 GB maximum), dual-layer multiformat DVD drive that also burns CDs, integrated 54g wireless connectivity with support for Atheros SuperG technology, and Windows XP Home edition operating system. <p> <b>The Basics</b><br> <ul> <li><i>Hard Drive:</i> A welcome size for road warriors, the 100 GB Enhanced IDE hard drive is a bit above average in size for notebook PCs, and faster than average at 5400 RPM. It''s also user removable, enabling you to upgrade its size at some point down the line. <br><li><i>Processor:</i> The Intel Centrino Pentium M 750 processor is designed specifically for mobile computing, offering a balanced level of mobile-optimized processor technology, good mobile performance, and exceptional value. It features a Deep Sleep state, which helps enable longer battery life by minimizing the power consumption of the processor during brief periods of inactivity. The 1.86 GHz speed is in the upper-middle of the speed spectrum for this processor (as of autumn, 2005), and it also offers a fast 533 MHz front-side bus (FSB) speed and a large 2 MB L2 cache. (An L2, or secondary, cache temporarily stores data; and a larger L2 cache can help speed up your system''s performance.) <br><li><i>Memory:</i> The 512 MB of built-in memory (1 x 512 MB, PC4200, DDR2 SDRAM) is a good start for power users, and it offers a very fast 533 MHz speed. It has two memory slots in total, with a maximum memory expansion up to 2 GB (2 x 1024 MB). It has one service-accessible memory slot and one user-accessible slot. <br><li><i>CD/DVD Drive:</i> The double-layer DVD drive is compatible with a wide range of formats, including both DVD+RW and DVD-RW discs, CD-RW discs, and dual-layer (DL) DVD+/-R discs, which can hold up to 8.5 GB of data--great for backing up your MP3 collection or your most important documents. It features the following speeds: 4x DVD+R DL, 2x DVD-R DL, 4x for both DVD+R/RW, 8x DVD-R, 2x DVD-RW, 5x DVD-RAM, and 24x/10x for CD-R/RW. It reads DVD-ROM discs at 8x and CD-ROMs at 24x. <br><li><i>Keyboard &amp; Mouse:</i> This notebook has a standard 85-key keyboard and electro-static two-button touchpad. It also offers a launch button for the Express CD/DVD media player and control buttons (play, stop, next, previous). </ul> <b>Screen, Graphics and Sound</b><br> The M55-S329 has a 14-inch TruBrite TFT screen with a widescreen 1280 x 768-pixel resolution. Video and graphics are powered by the Intel Graphics Media Accelerator 900, which uses Intel Dynamic Video Memory Technology (DVMT) and provides up to 128 MB of shared video memory. It also features an integrated audio card with headphone and microphone jacks and the capability to deliver SRS TruSurround XT virtual surround sound and SRS WOW stereo enhancement through the two built-in speakers. <p> <b>Connectivity and Expansion Slots</b><br> The M55-S329 has an integrated Atheros 802.11b/g wireless-LAN that supports Atheros SuperG technology, which uses packet-bursting, fast frames, on-the-fly data compression/decompression, and dual-channel bonding to enhance throughput to double that of 802.11g. You get a good offering of connectivity options, including Firewire: <ul> <li>4 USB 2.0 ports for connecting a wide range of peripherals--from digital cameras to MP3 players <li>1 FireWire (also known as IEEE 1394 or i.Link) port for connecting digital video camcorders and other peripherals <li>1 VGA monitor port <li>1 S-Video out <li>1 PCMCIA (or PC Card) slot (Type II, PCMCIA R2.01, PC Card16, CardBus) <li>1 headphone jack, 1 microphone jack <li>5-in-1 memory card reader, compatible with Secure Digital (SD), MultiMedia (MMC), Memory Stick, Memory Stick Pro, and XD Picture Card </ul> It also has an integrated 56K modem (V.90) and an RJ-45 LAN network port (for a 10/100 Gigabit Ethernet connection to networks and DSL/cable modems). <p> <b>Preloaded System and Software</b><br> This system comes with the Windows XP Home Edition Service Pack 2 operating system with Advanced Security Technologies, which helps to reduce unwanted downloads and pop-ups while surfing the Web. It also comes preloaded with Microsoft Works, Microsoft Office OneNote 2003, McAfee AntiVirus, InterVideo WinDVD and WinDVD Creator, Sonic Solutions RecordNow. <p> <b>Dimensions and Weight</b><br> This notebook measures 13.5 in x 9.5 in x 1.5 (WxDxH) and weighs 5.1 pounds. <p> <b>Power</b><br> It''s powered by a 6-cell rechargeable lithium-ion battery, which has a battery life of up to 2.5 hours (depending on usage). It has a 4-hour full charging time with the notebook off, and 12 hours with the computer active. <p> <b>What''s in the Box</b><br> This package contains the M55-S329 notebook PC, rechargeable lithium-ion battery, AC adapter, and operating instructions. It is backed by a one-year limited hardware warranty.<br /><br /><b>Product Description:</b><br />The Satellite M55-S329 is a powerful, lightweight notebook loaded with high-performance and entertainment features. Toshiba features an ultra-lightweight of under 5.31 pounds, a light-fast Intel Pentium M Processor and robust multi media components. With the Intel Pentium M Processor, this notebook is equipped for advanced productivity and entertainment applications. The DVD SuperMulti Drive supports 11 formats for +/- Double Layer burning. The 14 inch diagonal widescreen TruBrite TFT active-matrix LCD display at a 1280x768 native resolution.   Intel PRO/Wireless 2200BG (802.11b/g)   512MB DDR SDRAM (1 Slot Available)   100GB (5400 RPM) Enhanced IDE ATA-6 Hard Drive   Bridge Media Adapter -  Secure Digital SD, Memory Stick, Memory Stick PRO, Multi Media Card, SmartMedia, xD Picture Card   4 Universal Serial Bus (USB) 2.0 ports   S-Video TV-out   External Microphone Jack   Headphone Jack   RJ-45 LAN Port   RJ-11 Modem Port   Battery life of Up to 2 1/2 hours   Dimensions -  13.5 x 9.53 x 1.17 inches   Weight -  Under 5.31 pounds   Includes Windows XP Home Edition and pre-installed software suite from Toshiba ', 'Toshiba Satellite M55-S329 14" Notebook PC (Intel Pentium M Processor 750 (Centrino), 512 MB RAM, 100 GB Hard Drive, DVD SuperMulti)', 8, '', NULL, 1, 1, 100, 13.5, 9.5, 1.2, 10, -5),
(29, 2, 'Acer Computer LX.FR306.002', 'ACE-LX', 1889, 'Let your fingers step into this Ferrari as it takes you beyond your dreams. Coated in Ferrari-red and sporting the coveted Prancing Horse emblem, the Ferrari 3400LMi epitomises the exclusivity of an elite performance machine and handles like the thoroughbred that it is.  This mobile powerhouse runs on a furiously fast AMD Athlon 64 3000+ processor (2.0GHz) with AMD HyperTransport technology, 512MB of sizzling DDR memory can be upgraded to 2GB, a huge 80GB hard drive and the award-winning Microsoft Windows XP Professional SP2 operating system. From bumper to bumper, the Ferrari 3400LMi is loaded with the finest components in the industry, including the astonishing ATI MOBILITY RADEON 9700 chip with an awesome 128MB of video memory to provide crisp, sharp images and 3D graphics, Wireless LAN 802.11g for instantaneous Internet surfing, a Bluetooth wireless option, and a fantastic built-in DVD dual drive that allows you create your own movies and play them wherever you go. Watch your DVDs and do all your work using the Ferrari 3400''s bright, clear, high-res 15-inch TFT LCD screen.  15.0 SXGA+ (1400 x 1050) TFT LCD, up to 16.7 million colors    ATI MOBILITY RADEON 9700 graphics, 128MB video memory, AGP8X support    VGA and S-video TV-out ports with support for simultaneous display on notebook LCD and external monitor    Integrated stereo speakers and microphone    Interface Ports -  Four USB 2.0, parallel, DC in, RJ-11 modem, RJ-45 LAN, VGA, S-video TV out, microphone/line in, stereo eadphones/speakers/line out, FireWire (IEEE 1394), FIR (fast infrared), connector, connector for optional Port Replicator  ', 'Acer Computer LX.FR306.002 Amd ATHLON64 3000+,512MB,80GB', 13, '', NULL, 1, 1, 100, 17.2, 6.5, 13.9, 10, -4),
(30, 2, 'Acer AS3003WLCi AMD', 'ACE-AS3003', 649, 'Laptop Price Drop! Powerful Acer Aspire 3000 Notebook. Here''s a fast, powerful no-nonsense machine that will meet your needs while you''re on the road. Acer''s Aspire 3000 Series sets the industry pace for performance, excellence and style. And this Acer laptop is the perfect traveling companion for anyone who demands solid, all-around computing anywhere they go. With a fast, powerful AMD Sempron 3000+ processor, 256MB of RAM and a high-performance 40GB hard drive, the Acer AS3003WLCi has the speed and bluster to power through the most complex applications with ease. From the mundane to the extraordinary -- your Acer AS303WLCi will make it easy. And at this affordable price you''ll be able to work within your budget now and for the holiday season. The Acer Aspire 3000 Series laptop - a pefect PC for work, study or play!', 'Acer AS3003WLCi AMD Sempron 3000+ / 15.4-Inch / 256MB / 40GB / CD-RW DVD-ROM Combo / Windows XP Home Notebook PC ', 123, '', NULL, 1, 1, 100, 13, 11, 1.5, 10, -3),
(31, -1, 'Gift Certificates', '', 0, '', '', 0, NULL, NULL, 3, 1, 100, NULL, NULL, NULL, NULL, -4),
(32, 3, '300 GB External USB 2.0/FireWire', 'SEA_EXT300', 224.99, 'dddd', 'Seagate 300 GB External USB 2.0/FireWire Hard Drive with Backup', 5.5, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -5),
(33, 3, 'L01P200 200Gb', 'MXT_L01P', 119.99, '<br>MAXTOR L01P200 ? This 3.5-inch ATA / EIDE 200GB DiamondMax Plus 7200 RPM hard drive can improve system performance by as much as 33% over an equivalent 5400 RPM drive. That means faster system booting and application launching, game playing, and file saving! <li>7200 RPM speed with Ultra ATA/133 connectivity yields a data transfer rate up to 133MB/sec. </li><li>Ideal for speed intensive applications like digital video editing, database searches, and the latest games </li><li>Included MaxBlast Plus software for PC guides you step by step through the installation process </li><li>The latest advances in mechanical and electronic design provide one of the industry''s most reliable drives </li><li>Includes internal Ultra ATA cable &amp; illustrated installation poster </li><li>Warranty: One Year </li><li><b>Note: Your motherboard must be ATA -133 compatible to achieve full speed benefits -- or you can add an optional PCI Adapter Card</b>', 'Maxtor L01P200 7200 RPM 200 GB Hard Drive', 2, '', NULL, 1, 1, 100, 10.3, 7.5, 0.5, NULL, -5),
(34, 3, 'ST3200822A-RK 200 GB', 'SEA_ST3200', 99.9, '<b>Features</b><br> <ul> <li>7,200 RPM desktop performance </li><li>350 Gs non-op shock </li><li>3-D Defense System </li><li>Fast performance </li><li>Protection against handling damage </li><li>Protection against handling damage and data loss </li><li>Best combination of performance, acoustics and robustness  </li><li>Best-in-class non-operating shock for excellent reliability  </li><li>Idle acoustics of 2.5 bels- the industry''s best  </li></ul><p>  <b>Drive Defense</b><br> </p><ul> <li>SeaShell packaging for drive protection against 1,000 Gs of nonoperational shock </li><li>Enhanced G-Force Protection </li></ul><p>  <b>Data Defense</b><br> </p><ul> <li>Error-correction code (ECC) </li><li>Safe Sparing </li></ul><p>  <b>Diagnostic Defense</b><br> </p><ul> <li>SeaTools Suite diagnostic software </li><li>S.M.A.R.T. Technology </li><li>Web-based tools </li><li>Enhanced Drive Self-Test (NDST)', 'Seagate ST3200822A-RK 200 GB ATA Internal Hard Drive', 2.3, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -4),
(35, 3, '1GB DataTraveler II', 'KIN_KUSBDTII', 67.99, '<p>Take your files anywhere with this fast, reliable USB flash drive.  Store, carry and transfer important files quickly in a convenient, reliable medium with DataTraveler II from Kingston.  Smaller than a highlighter, the DataTraveler II helps break storage barriers and is ideal for home and small-office users. </p><p>The DataTraveler II is designed for high performance and exceptional reliability With its SecureTraveler security software for Windows®-based systems, DataTraveler II protects your data from unauthorized access.  Using password protection and private zone partitioning, guard your most important content - reports, presentations, pictures, spreadsheets and other valuable records. </p><p>For additional peace of mind, it''s backed by a five-year warranty and Kingston''s legendary service and support. </p>', 'Kingston 1GB DataTraveler II USB 2.0 ( KUSBDTII/1GB )', 1, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -5),
(36, 3, 'DATATRAVELER I 128MB', 'KIN_KUSBDTI', 17.99, '<p>Now you can store, carry and transfer large files in an affordable, convenient device - the DataTraveler from Kingston. </p><p>As easy as click and drag, the DataTraveler can hold just about any digital file you can think of: term papers, theses, digital images, spreadsheets, presentations and more.<br><br></p><b>Features</b><ul><li><b>Convenient</b> - Pocket-Sized With Lanyard For Easy Transportability</li><li><b>Simple</b> - Just Plug-And-Play Into A Usb Port</li><li><b>Fast</b> - Uses The Usb 2.0 Interface</li><li><b>Compatible</b> - Crosses Platforms With Windows® 98<b> </b>, Me, 2000 And Xp; Macintosh Os 9.X, 10.X</li><li><b>Shielded</b> - Protective Plug-In Cap</li><li><b>Fashionable</b> - Sleek Profile And Hip Design</li></ul><b> </b><i>Drivers required (included on CD) for Windows 98 users.</i><br>', 'KINGSTON DATATRAVELER I 128MB ( KUSBDTI/128 )', 0.29, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -3),
(37, 3, '52x32x52 Internal', 'LIT_52X', 60.99, 'LiteOn''s mission is to consistently meet or exceed its customers'' expectations by providing solutions with outstanding performance, competitiveness, and punctuality.PRODUCT FEATURES:The shortest physical drive length design, 170mm only;Innovated SMART-BURN technology to automatically check media quality and set limit to burning speed to ensure successful writing sessions and data retainability;Buffer underrun error free and automatically adjust writing strategy plus running OPC to meet various burning condition;SMART-X supporting high speed DAE &amp; VCD extraction for copying;VAS (Vibration Absorber System) to reduce vibration &amp; noise during recording and reading;Support Fixed Packet, Variable Packet, TAO, SAO, DAO, Raw Mode Burning &amp; Over-Burn;Support formats of CD Family, CD-R and CD-RW discs (up to 99min);Support Mt.Rainier;Conforms to Orange Book Part 2, 3, Volume 2: High Speed and MMC2 commands;Plug and Play Device with Emergency Manual Eject function. ', 'Lite-On 52x32x52 Internal CD-RW Drive', 3, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -5),
(38, 3, ' SOHR-5239S-RET-B', 'LIT_ SOHR', 23.99, 'his internal CD burner from Lite-On has advanced technologies to deliver quality recording and playing  for a modest price. Fast and easy to use, it comes in a slim case with a black bevel.   Interface - ATAPI/E-IDE,Support up to Ultra-DMA Mode2 33.3MB/sec (UDMA-33)    Plug &amp; Play Device with Emergency Manual Eject function    Speed -  52x Write, 32x Rewrite, 52x Read, Maximum Speed 48X   Access Time  -  80ms (typical)/ Buffer Size -  2MB       Operating System Compatibility  -  Windows 98SE/NT/ME/2000/XP   Dimensions (WxHxD) -  5.71 x 1.63 x 6.69 inches (145.0 x 41.3 x 170.0 mm) Weight -  &lt;1.98 lbs (&lt;0.9Kg)  ', 'Lite-On SOHR-5239S-RET-B 52x Internal CD-RW Drive', 1, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -4),
(39, 3, 'DRX-530UL External', 'SNY_DRX', 84.99, 'The hot DRX-530UL is Sony''s 4th generation dual format DVD burner. What''s new? How about ultra fast 8X DVD+R burning that will burn an entire disc in about 10 minutes. Also, CD-R/RW burning has been enhanced, the DRU-530UL drive can burn CD-Rs at 40X, and CD-RWs at 24X! Now burning your home movies, digital pictures, music, and data onto DVD &amp; CD is faster and more convenient than ever. External drive is compact and easy to connect to your PC using USB 2.0/1.1 or i.LINK (IEEE1394/FireWire compatible) interfaces. What hasn''t changed is legendary Sony quality and reliability. Choose the brand that is #1 in the DVD burning market, Sony invented dual format burners, and still does it best.', 'Sony DRX-530UL External DVD+RW/CD-RW 8X Drive 40X/24X/40X', 3, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -3),
(40, 3, ' DDU1622/C1 Internal', NULL, 59.99, '<p>Sony''s affordable DDU1622/C1 internal DVD-ROM/CD-ROM drive offers high-performance 48x maximum CD reading with 16x maximum DVD (DVD+/-R/RW) reading and DVD-Video playback capabilities for your PC or home theater--all in the space of a standard 5.25-inch, half-height drive. The PC-compatible DDU1622/C1 offers sustained data-transfer rates of 8.8 to 21.6 MB/sec for single-layer DVDs and 3 to 6 MB/sec for CDs.</p>\r\n\r\n<p>The drive benefits from a proprietary mechanism, Sony Advanced Spindle (SAS), that enhances its stability while playing an unbalanced or uneven disc, ensuring even, error-free reads. A redesigned balancing mechanism is in place to minimize media crashes.</p>\r\n\r\n<p>Compatible discs include single-/dual-layer DVD-ROM/DVD-Video, DVD+/-R/RW, CD-DA, CD-ROM, CD-ROM XA, photo CD, video CD, CD Extra, CD-Text, CD-R, and CD-RW.</p>\r\n\r\n<p>The drive will demand as little as 0.22 to 0.58 Amps (+5V) or 0.022 to 1.32 Amps (+12V), thanks to its efficient power-saving feature. This is a RPC2 drive, and as such its starting region code will depend on the DVD title you play. You are allowed to modify the region code 5 times. After the fifth alteration, the region code will be locked and only those DVD titles with matching region codes will</p>\r\n', '<p>Sony DDU1622/C1 Internal 16x DVD-ROM/48x CD-ROM Drive (EIDE)</p>\r\n', 2.6, '', NULL, 1, 1, 100, 9.8, 7.9, 4.1, 3, -4),
(41, 4, 'iRiver H10', 'IRIV_H10', 239.99, 'The iRiver 20 GB model H10 is the perfect portable digital player/recorder for true music and audio enthusiasts. Hardly bigger than a deck of cards, its 1.8-inch hard drive has space for over 5,000 songs (128 kbps MP3, 4 minutes per song) or more than 330 hours of music. Yet the whole player measures just 2.4 x 4 inches (W x H) and less than an inch deep. Sensibly arranged controls--including an intuitive central touchpad--make it child''s play to setup and use, and an internal battery delivers up to 16 hours of non-stop music between charges.<p>  But the H10 is about more than just music. It comes complete with a brilliant, full-color 1.8-inch TFT LCD that supports up to 260,000 colors, rendering your favorite JPEG digital photos with breathtaking clarity. (Yep, it does slide shows, too.) What''s more, an integrated text viewer lets you lose yourself in paperless novels, news, essays, short stories--you name it.</p><p>  A built-in microphone facilitates use as a voice recorder, with 3 quality settings to choose from. The unit also features a built-in FM tuner with a choice of automatic and manual channel-search functions, including 20 station presets for one-touch tuning to your favorites, especially handy for traffic and news updates when you''re out and about. An antenna built into the supplied headset ensures crystal-clear sound quality, and a timer lets you set the H10 to record radio programs with real-time MP3 encoding at specific times of your choosing.</p><p>  The H10 is PlaysForSure compatible and fully integrated with Microsoft Windows Media Player 10, which makes it even easier to enjoy your digital media. In addition to a range of options for managing digital content, you''ll enjoy fast access to the H10''s "digital media hall," where you can scavenge the virtual shelves of numerous online shops (including Napster To Go) in search of cool songs old and new. With the player/recorder connected to your PC, you''ll be able to purchase and download songs straight into the H10. An auto-sync function synchronizes music and image files on the H10 with those stored on your PC, just like a PDA.</p><p>  Icing on the cake, the H10 also a guaranteed head turner with a high-grade aluminum casing whose purist elegance is as pleasing to the eye as the touch.</p><p>  <b>What''s in the Box</b><br> Digital music player/recorder, stereo earphones, a carrying case with belt clip, a USB 2.0 interface cable, an installation CD, an AC adapter, a user''s manual, and warranty information.<br><br><b>Product Description:</b><br>iRiver''s H10 20GB Digital Audio Player is a portable hard drive and digital media player in one. This sleek device feature 20GB of storage space, for all your favorite songs or important images. Transfer your data more easily with the super-fast USB 2.0 interface, and preview photos and text on the bright 1.8-inch screen. The ultra-intuitive interface and convenient touch strip let you access your files just by pushing a button.   Rechargeable, removable Battery that lasts up to 12 hours   Touch Strip Interface    USB 2.0 Connection    Dimensions -  4 x 2.4 x 0.86    Color -  Remix Blue  </p>', 'iRiver H10 20 GB MP3 Player/Recorder (Blue)', 1.7, '', NULL, 1, 1, 98, 9.3, 9.6, 2.4, NULL, -5),
(42, 4, 'Zen Micro Photo 8 GB', 'CRT_ZEN', 249.99, '<b>Includes: high fidelity Creative earphones with dynamic bass response, USB 2.0 cable, removable rechargeable lithium ion battery, pouch, &amp; more.</b> Creative Labs Zen Micro Photo 8GB - The Zen Micro Photo is an extremely portable digital audio device, with the ability to display photos and slide shows. The photos and audio information are viewed on a 1.5", first-of-its-kind, OLED display. OLED technology provides you with a host of benefits when compared to basic LCD displays. OLED can be viewed easily from any angle and in sunlight. It also supports an impressive 262,144 colors - 4 times as many as the current iPod Photo!! Giving you menus in wild and bright colors, and photos that are incredibly sharp, detailed and extraordinarily clear!<li>8GB of Storage Space</li><li>Up to 4,000 Songs</li><li>Thousands of Photos</li><li>Can also hold any type of data</li><li>262,144-color OLED Display</li><li>Photo Album &amp; Slide Show Modes</li><li>Supports MP3 &amp; WMA Audio Formats</li><li>Supports the JPG Photo Format</li><li>Zen Blue Glow - the controls illuminate with a vivid blue every time you use it</li><li>Vertical Touch Pad makes navigation extremely easy</li><li>Micro-sized and curved to fit into your hand more comfortably</li><li>Removable and Rechargeable 15-Hour Battery</li><li>FM Radio &amp; Recorder</li><li>32 Preset Stations</li><li>Integrated Voice Recorder</li><li>Organizer</li><li>Syncs with Microsoft Outlook Contacts, Calendar, &amp; Tasks</li><li>8 Preset EQ Settings</li><li>Color - Gray  </li>', 'Creative Zen Micro Photo 8 GB MP3 Player Titanium Grey', 1.1, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -5),
(43, 4, '30 GB iPod Video', 'APP_', 299.99, '<b>Includes: iTunes for Mac and Windows, earbud headphones, &amp; USB cable.</b> iPod - The iPod is known around the world as a  premier digital audio player. Then they added a color screen and photo support. Now they complete the trilogy of multimedia features with  a new 4:3 2.5" color display, and support for video playback. You can create your own movies or purchase music videos,  Pixar short films, or select TV episodes via iTunes 6.  Connectivity - USB through dock connector, composite video (with A/V cable - sold separately), and audio through headphone jack or line out on the iPod Universal Dock (sold separately)   Charge Time - about 4 hrs. (2 hrs. fast charge to 80% capacity)   Audio Support - AAC (16 to 320 Kbps), Protected AAC (from iTunes Music Store), MP3 (16 to 320 Kbps), MP3 VBR, Audible (formats 2, 3, and 4), Apple Lossless, WAV, &amp; AIFF   Photo Support - syncs iPod-viewable photos in JPEG, BMP, GIF, TIFF, PSD (Mac only), and PNG formats   Video Support - H.264 video -  up to 768 Kbps, 320 x 240, 30 fps, Baseline Profile up to Level 1.3 with AAC-LC up to 160 Kbps, 48 Khz, stereo audio in. m4v,. mp4 and. mov file formats / MPEG-4 video -  up to 2.5 mbps, 480 x 480, 30 fps, Simple Profile with AAC-LC up to 160 Kbps, 48 Khz, stereo audio in. m4v,. mp4 and. mov file formats   Backlight Timer   Sleep Timer   20 Equalizer Settings   Shuffle Songs or Albums   Date and Time   Unit Dimensions - 4.1 x 2.4 x 0.43   Unit Weight - 4.8 oz.   Color - White', 'Apple 30 GB iPod with Video Playback White', 1.3, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -5),
(44, 4, ' MuVo TX FM 1 GB', 'CRT_MUVOTX', 129.99, 'Creative Labs MuVoTX 1GB MP3 Player  Ultra-light MP3 Player and Super Fast USB 2.0 - Digital Music Made Simple! MuVo TX is an ultra-light, high-performance MP3 Player with a super fast USB 2.0 interface that lets you enjoy hours of WMA or MP3 music anywhere. Offering 128MB, 256MB or 512MB of built-in flash memory, MuVo TX is equipped with super fast USB 2.0, so now you can transfer music and data up to 40x faster than conventional USB 1.1. And, because it gives you skip free playback, it is designed for flawless performance during exercise and other rigorous activity.   Simply attach this portable jukebox to any PC or notebook with the built-in USB 2.0 connector, and drag and drop your songs to your MuVo TX in lightning fast speed. You can also use it to store documents, photos and any other data files between computers at home, work or on the road. Use the handy built-in microphone to record up to 32 hours of voice recordings, notes and conversations. Plus the high-resolution backlit LCD provides full track information (ID3 tags), access to custom settings and allows easy folder navigation with the convenient rocker button. Load it, snap it and go!', 'Creative MuVo TX FM 1 GB MP3 Player', 1.02, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -3),
(45, 4, 'iRiver iFP 780T', 'IRIV_IFP', 99.99, 'The iFP-780T combines advanced iRiver sound quality with a stylish, wearable design. It features 128 MB of internal memory for up to 4 hours of music, extended battery life up to 40 hours on one AA, a built-in FM tuner and voice recorder. It also records music from any audio source. Plus, this ultra-light, skip-free player can be used to store music or transfer files of any type.<p>  <b>Box Contents</b></p><p> </p><ul> <li>iFP-780T music player  </li><li>iRiver earphones  </li><li>Sport arm band and carrying case  </li><li>Neck strap  </li><li>Preloaded tracks from eMusic  </li><li>USB cable  </li><li>Line-in cable  </li><li>Installation CD (PC/Mac)  </li><li>1 AA battery  </li></ul>', 'iRiver iFP 780T 128 MB Flash MP3 Player', 1, '', NULL, 1, 1, 96, NULL, NULL, NULL, NULL, -5),
(46, 5, 'Tungsten E2', 'PAL_TGSTE2', 179.99, 'The juggling act of modern life gets easier with a smart, versatile and reliable friend like this stylish Tungsten E2 handheld from PalmOne. Manage your calendar, contacts, documents, presentations, photos and videos with welcome clarity thanks to a brighter, richer color screen. With 32MB of built-in flash memory your data is safe even when you don''t have time to recharge. Bluetooth technology gives you wireless freedom to work on the go. View and edit spreadsheets and word processing documents and easily sync your calendar and contacts from Outlook. But, we know what all-work-and-no-play does to Jack. Once your work is done, crank up some tunes because the E2 plays your digital music files too! Imported. 3-1/10Hx4-3/4Wx3/5D".', 'PalmOne Tungsten E2 Handheld', 1.6, '', NULL, 1, 1, 100, 10, 6.7, 3.5, NULL, -4),
(47, 5, 'iPAQ rx1955', 'HP_RX', 299.99, 'Enjoy music, videos, and Internet applications on the go, with control at your fingertips! Powered by Microsoft Windows Mobile 5.0 Pocket PC, the iPAQ rx1955 has big functionality for not much money.<br><br><b>Features:</b><ul><li>Go on the Internet at your local Wi-Fi hot spot or at home using the integrated 802.11b wireless LAN</li><li>Add speed and agility with Microsoft Windows Mobile 5.0 Premium for Pocket PC Professional  </li><li>View and edit Microsoft Office documents: work with Excel charts and Powerpoint presentations, including custom animations and slide transitions  </li><li>Protect your important data when your iPAQ runs out of battery power with the persistent store feature  </li><li>Enjoy music and videos in MP3 (or WMA or WMV) format; transfer fresh music and video to your iPAQ as your mood dictates via Windows Media Player version 10  </li><li>Store music and videos on SD/MMC memory cards using the SD slot  </li><li>Get where you want to go fast with the five-way navigation button and four application launch buttons  </li><li>View color snapshots in both portrait and landscape modes on the 3.5" TFT display (64,000 colors)  </li><li>Listen privately in stereo via headphones (sold separately) through the 3.5 mm headphone jack  </li><li>Challenge yourself to the included games from Microsoft; download other popular titles  </li><li>Stay in touch with your business and personal contacts using the integrated personal information manager (PIM) software </li></ul><b>Award-winning HP service and support:</b><ul><li>Get peace of mind with the 90-day limited warranty, plus HP''s renowned Total Care service and reliability  </li><li>Get answers to all your questions 24 x 7, toll-free, or via e-mail in as little time as an hour, at www.HP.com/go/supportwhether the product is in or out of warranty </li></ul> ', 'HP iPAQ rx1955 Pocket PC', 3, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -5),
(48, 5, 'LifeDrive Mobile Manager', 'PALM_MM', 499.99, 'Quickly drag and drop thousands of files from your PC onto your LifeDrive mobile manager. Your folder structure remains intact so you can easily locate important information when you need it. Plus, select the files you want to keep in sync, and they’ll be automatically updated whenever you sync with your computer.', 'PalmOne LifeDrive Mobile Manager', 1.8, '', NULL, 1, 1, 100, 6.5, 6.5, 4, NULL, -5),
(49, 5, 'hx2755 Pocket PC', 'HP_HX', 408.1, 'This iPAQ is compact and carryable enough to keep with you at all times, yet it packs a big punch in performance and expandability, connectivity, and security. The highlight: it protects your information using your fingerprint or your fingerprint combined with a personal information number (PIN).<br><br><b>Features:</b><ul><li>Automatically back up applications and data and store in the main memory or iPAQ File Store, or on a memory card </li><li>Stay connected in and out of the office with the integrated 802.11b for high-speed wireless access to the Internet, e-mail, and corporate data solutions </li><li>Take advantage of the Bluetooth® wireless technology to communicate with other Bluetooth devices, create personal area networks using peer-to-peer communication, and wirelessly print documents, e-mail, brochures, and pictures to a Bluetooth-enabled printer </li><li>Exchange data with Serial-IR-enabled devices </li><li>Protect your iPAQ and wireless connection with the HP ProtectTools feature (in collaboration with CREDANT Technologies), which lets you use a PIN or password to control access and impose industry-standard encryption to protect stored data and provide fail-safe action it''s lost or stolen </li><li>Carry easily with the soft rubberized side grips and slip-free grip </li><li>Keep the display clear with the plastic flip cover that prevents scratches </li></ul> ', 'HP iPAQ hx2755 Pocket PC', 3.5, '', NULL, 1, 1, 100, NULL, NULL, NULL, NULL, -3);

-- --------------------------------------------------------

-- 
-- Table structure for table `manufacturers_man`
-- 

CREATE TABLE `manufacturers_man` (
  `id_man` int(11) NOT NULL auto_increment,
  `name_man` varchar(66) NOT NULL default '',
  `description_man` text NOT NULL,
  PRIMARY KEY  (`id_man`),
  UNIQUE KEY `name_man` (`name_man`)
) TYPE=MyISAM AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `manufacturers_man`
-- 

INSERT INTO `manufacturers_man` (`id_man`, `name_man`, `description_man`) VALUES (1, 'Canon', '<br>'),
(2, 'Hasselblad', '<br>'),
(3, 'Kodak', '<br>'),
(4, 'Linhof', '<br>'),
(5, 'Nikon', '<br>'),
(6, 'Olympus', '<br>'),
(7, 'Sony', '<br>'),
(8, 'HP', '<br>'),
(9, 'Palm', '<br>'),
(10, 'Apple', '<br>'),
(11, 'Creative', '<br>'),
(12, 'iRiver', '<br>'),
(13, 'Acer', '<br>'),
(14, 'Dell', '<br>'),
(15, 'Compaq', '<br>'),
(16, 'Toshiba', '<br>'),
(17, 'Kingston', '<br>'),
(18, 'Lite-on', '<br>'),
(19, 'Maxtor', '<br>'),
(20, 'Seagate', '<br>');

-- --------------------------------------------------------

-- 
-- Table structure for table `option_opt`
-- 

CREATE TABLE `option_opt` (
  `id_opt` int(11) NOT NULL auto_increment,
  `order_opt` int(11) NOT NULL default '1',
  `name_opt` varchar(85) NOT NULL default '',
  PRIMARY KEY  (`id_opt`),
  KEY `order_opt` (`order_opt`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `option_opt`
-- 

INSERT INTO `option_opt` (`id_opt`, `order_opt`, `name_opt`) VALUES (1, 1, 'Capacity'),
(2, 2, 'Connector');

-- --------------------------------------------------------

-- 
-- Table structure for table `optionvalue_ova`
-- 

CREATE TABLE `optionvalue_ova` (
  `id_ova` int(11) NOT NULL auto_increment,
  `idopt_ova` int(11) NOT NULL default '0',
  `order_ova` int(11) NOT NULL default '1',
  `name_ova` varchar(33) NOT NULL default '',
  `pricediff_ova` float NOT NULL default '0',
  `weightdiff_ova` float NOT NULL default '0',
  PRIMARY KEY  (`id_ova`),
  UNIQUE KEY `unique_name_ova` (`idopt_ova`,`name_ova`),
  KEY `idopt_ova` (`idopt_ova`),
  KEY `order_ova` (`order_ova`)
) TYPE=MyISAM AUTO_INCREMENT=39 ;

-- 
-- Dumping data for table `optionvalue_ova`
-- 

INSERT INTO `optionvalue_ova` (`id_ova`, `idopt_ova`, `order_ova`, `name_ova`, `pricediff_ova`, `weightdiff_ova`) VALUES (38, 2, 23, 'Memory Card', 5, 0),
(37, 2, 22, 'USB 2.0', 1, 0),
(36, 2, 21, 'USB 1.0', 0, 0),
(27, 8, 12, 'USB', 0, 0),
(26, 8, 11, 'PS2', 0, 0),
(35, 1, 20, '1 GB', 10, 0),
(34, 1, 19, '512 MB', 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `order_ord`
-- 

CREATE TABLE `order_ord` (
  `id_ord` varchar(85) NOT NULL default '',
  `userid_ord` int(11) default NULL,
  `amount_ord` float NOT NULL default '0',
  `taxes_ord` float NOT NULL default '0',
  `shipping_ord` float NOT NULL default '0',
  `currency_ord` char(3) default NULL,
  `date_ord` datetime NOT NULL default '0000-00-00 00:00:00',
  `status_ord` varchar(85) NOT NULL default 'Initialized',
  `ordernumber_ord` varchar(85) default NULL,
  `firstname_ord` varchar(85) default NULL,
  `lastname_ord` varchar(85) default NULL,
  `email_ord` varchar(85) default NULL,
  `phone_ord` varchar(85) default NULL,
  `streetaddress_ord` varchar(85) default NULL,
  `city_ord` varchar(85) default NULL,
  `state_ord` varchar(85) default NULL,
  `country_ord` varchar(85) default NULL,
  `zip_ord` varchar(85) default NULL,
  `details_ord` text,
  `shipmethod_ord` varchar(85) default NULL,
  `shipname_ord` varchar(85) default NULL,
  `shipstreetaddress_ord` varchar(85) default NULL,
  `shipcity_ord` varchar(85) default NULL,
  `shipstate_ord` varchar(85) default NULL,
  `shipcountry_ord` varchar(85) default NULL,
  `shipzip_ord` varchar(85) default NULL,
  PRIMARY KEY  (`id_ord`),
  KEY `userid_ord` (`userid_ord`),
  KEY `date_ord` (`date_ord`),
  KEY `status_ord` (`status_ord`),
  KEY `ordernumber_ord` (`ordernumber_ord`),
  KEY `email_ord` (`email_ord`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `order_ord`
-- 

INSERT INTO `order_ord` (`id_ord`, `userid_ord`, `amount_ord`, `taxes_ord`, `shipping_ord`, `currency_ord`, `date_ord`, `status_ord`, `ordernumber_ord`, `firstname_ord`, `lastname_ord`, `email_ord`, `phone_ord`, `streetaddress_ord`, `city_ord`, `state_ord`, `country_ord`, `zip_ord`, `details_ord`, `shipmethod_ord`, `shipname_ord`, `shipstreetaddress_ord`, `shipcity_ord`, `shipstate_ord`, `shipcountry_ord`, `shipzip_ord`) VALUES ('4458453540541535654069957690', 3, 75.99, 0, 15, 'USD', '2006-05-03 13:36:31', 'Initialized', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', ''),
('445896212051801034529413', 1, 97.753, 14.562, 17, 'USD', '2006-05-03 15:27:07', 'Initialized', NULL, 'John', 'Doe', 'jdoe@gmail.com', '1111-2222-3333', 'Redneck Drive 15', 'Philadelphia', 'PA', 'US', '19175', NULL, 'Next Day', 'Mary Doe', 'East River 15', 'Philadelphia', 'PA', 'US', '19128'),
('445951545612622538044636668', 1, 346.989, 59.398, 17.6, 'USD', '2006-05-04 10:54:00', 'Initialized', NULL, 'John', 'Doe', 'jdoe@gmail.com', '1111-2222-3333', 'Redneck Drive 15', 'Philadelphia', 'PA', 'US', '19175', NULL, 'Next Day', 'Mary Doe', 'East River 15', 'Philadelphia', 'PA', 'US', '19128'),
('445954638256515549016407042', 1, 69.891, 0, 15, 'USD', '2006-05-04 13:24:09', 'Initialized', NULL, 'John', 'Doe', 'jdoe@gmail.com', '1111-2222-3333', 'Redneck Drive 15', 'Philadelphia', 'PA', 'US', '19175', NULL, 'Next Day', 'Mary Doe', 'East River 15', 'Philadelphia', 'PA', 'US', '19128'),
('44636288354525421003840931', NULL, 524.468, 89.9778, 25.5, 'USD', '2006-05-11 19:28:54', '<span style="color:red; font-weight: bold;">This Transaction is in test Mode</span>', '0', 'MIhai', 'Pricope', 'mpricope@gmail.com', '23482364', '892738477', 'Bucharest', 'Moldova', 'RO', NULL, '2006-05-11 19:41:16 Error: Test Mode Attack (order number=0)<br>\n', 'Standard', 'Vasile', 'Vesa', 'Bucharest', 'Moldova', 'RO', '1823744'),
('4463693575452000000325453', 9, 152.978, 21.978, 31.1, 'USD', '2006-05-11 19:45:48', '<span style="color:red; font-weight: bold;">This Transaction is in test Mode</span>', '0', 'Mihai', 'Pricope', 'mpricope@gmail.com', NULL, NULL, 'BUcharest', 'Moldova', 'RO', NULL, '2006-05-11 19:51:59 Error: Test Mode Attack (order number=0)<br>\n', 'Standard', NULL, NULL, '', 'Moldova', 'RO', ''),
('4463652545515255630090718855', 9, 2777.5, 495, 32.5, 'USD', '2006-05-11 19:54:39', 'URL Attack', '0', 'Mihai', 'Pricope', 'mpricope@gmail.com', NULL, NULL, 'BUcharest', 'Moldova', 'RO', NULL, '2006-05-11 19:55:08 Error: URL Parameter Attack<br>\n2006-05-11 19:57:41 Error: URL Parameter Attack<br>\n', 'Standard', NULL, NULL, '', 'Moldova', 'RO', ''),
('4463638125212559023383718', 9, 1076.84, 155.251, 215.9, 'USD', '2006-05-11 20:00:06', 'URL Attack', '0', 'Mihai', 'Pricope', 'mpricope@gmail.com', NULL, NULL, 'BUcharest', 'Moldova', 'RO', NULL, '2006-05-11 20:03:36 Error: URL Parameter Attack<br>\n2006-05-11 20:09:13 Error: URL Parameter Attack<br>\n2006-05-11 20:11:43 Error: URL Parameter Attack<br>\n', 'Standard', NULL, NULL, '', 'Moldova', 'RO', ''),
('446370516276519052942891', 9, 2777.5, 495, 32.5, 'USD', '2006-05-11 20:11:42', '<span style="color:red; font-weight: bold;">This Transaction is in test Mode</span>', '0', 'Mihai', 'Pricope', 'mpricope@gmail.com', NULL, NULL, 'BUcharest', 'Moldova', 'RO', NULL, '2006-05-11 20:12:22 Error: URL Parameter Attack<br>\n2006-05-11 20:14:34 Error: Test Mode Attack (order number=0)<br>\n', 'Standard', NULL, NULL, '', 'Moldova', 'RO', ''),
('44636540515251053559044075710', 9, 104.948, 14.9578, 22, 'USD', '2006-05-11 20:19:19', '<span style="color:red; font-weight: bold;">This Transaction is in test Mode</span>', '0', 'Mihai', 'Pricope', 'mpricope@gmail.com', NULL, NULL, 'BUcharest', 'Moldova', 'RO', NULL, '2006-05-11 20:19:59 Error: Test Mode Attack (order number=0)<br>\n', 'Standard', NULL, NULL, '', 'Moldova', 'RO', ''),
('4464515685558614000445687', 9, 3162.2, 257.004, 1737, 'USD', '2006-05-12 19:01:36', '<span style="color:red; font-weight: bold;">This Transaction is in test Mode</span>', '0', 'Mihai', 'Pricope', 'mpricope@gmail.com', NULL, NULL, 'BUcharest', 'Moldova', 'RO', NULL, '2006-05-12 19:13:54 Error: Test Mode Attack (order number=0)<br>\n', 'Standard', NULL, NULL, NULL, 'Moldova', 'RO', NULL),
('446552565354324697035810441', NULL, 1013.19, 135.641, 261, 'EUR', '2006-05-13 14:15:58', 'Initialized', NULL, 'aaa', 'aaaaa', 'asdasdasd@me.com', NULL, NULL, 'aaaaa', 'Bangladesh', 'BD', NULL, NULL, 'Next Day', NULL, NULL, NULL, 'Bangladesh', 'BD', NULL),
('4452856552805451562047719706', 7, 1261.95, 0, 20, 'USD', '2006-07-15 17:14:39', 'Initialized', NULL, 'Karl', 'Johansen', 'karl_a_johansen@hotmail.com', '73533457', 'Neufeldtsgt 21', 'Trondheim', 'S�r Tr�ndelag', 'Norway', '7030', NULL, 'Next Day', 'Karl Johansen', 'Neufeldtsgt 21', 'Trondheim', 'S�r Tr�ndelag', 'Norway', '7030');

-- --------------------------------------------------------

-- 
-- Table structure for table `orderdetail_ode`
-- 

CREATE TABLE `orderdetail_ode` (
  `id_ode` int(10) unsigned NOT NULL auto_increment,
  `idord_ode` varchar(85) NOT NULL default '',
  `pid_ode` varchar(85) default NULL,
  `pquantity_ode` varchar(85) default NULL,
  `pname_ode` varchar(85) default NULL,
  `pproperties_ode` text,
  `pprice_ode` varchar(85) default NULL,
  PRIMARY KEY  (`id_ode`),
  KEY `idord_ode` (`idord_ode`)
) TYPE=MyISAM AUTO_INCREMENT=103 ;

-- 
-- Dumping data for table `orderdetail_ode`
-- 

INSERT INTO `orderdetail_ode` (`id_ode`, `idord_ode`, `pid_ode`, `pquantity_ode`, `pname_ode`, `pproperties_ode`, `pprice_ode`) VALUES (1, '4458453540541535654069957690', '7', '1', '52x32x52 Internal', NULL, '60.99'),
(4, '445896212051801034529413', '4', '1', 'DataTraveler II', '1 GB: Red<br>512 MB: Default<br>', '66.191'),
(8, '445951545612622538044636668', '5', '1', ' iPod Video', NULL, '269.991'),
(12, '445954638256515549016407042', '7', '1', '52x32x52 Internal', NULL, '54.891'),
(53, '44636288354525421003840931', '28', '1', 'Kodak EasyShare V550', NULL, '330'),
(54, '44636288354525421003840931', '4', '1', 'DataTraveler II', 'Capacity: 1 GB<br>Connector: USB 2.0<br>', '78.99'),
(58, '4463693575452000000325453', '43', '1', 'ST3200822A-RK 200 GB', NULL, '99.9'),
(60, '4463652545515255630090718855', '54', '1', 'Acer TravelMate 8130', NULL, '2250'),
(84, '4463638125212559023383718', '4', '1', 'DataTraveler II', 'Capacity: 512 MB<br>Connector: USB 1.0<br>', '64.5905'),
(83, '4463638125212559023383718', '43', '1', 'ST3200822A-RK 200 GB', NULL, '94.905'),
(82, '4463638125212559023383718', '29', '1', 'L01P200 200Gb', NULL, '113.9905'),
(80, '4463638125212559023383718', '21', '1', 'DRX-530UL External', NULL, '80.7405'),
(81, '4463638125212559023383718', '1', '1', ' DDU1622/C1 Internal', NULL, '56.9905'),
(79, '4463638125212559023383718', '7', '1', '52x32x52 Internal', NULL, '57.9405'),
(78, '4463638125212559023383718', '3', '1', 'SOHR-5239S-RET-B', NULL, '22.7905'),
(77, '4463638125212559023383718', '6', '1', '300 GB External USB 2.0/', NULL, '213.7405'),
(86, '446370516276519052942891', '54', '1', 'Acer TravelMate 8130', NULL, '2250'),
(90, '44636540515251053559044075710', '4', '1', 'DataTraveler II', 'Capacity: 512 MB<br>Connector: USB 1.0<br>', '67.99'),
(95, '4464515685558614000445687', '8', '2', 'Acer AS3003WLCi AMD', NULL, '584.1'),
(99, '446552565354324697035810441', '8', '1', 'Acer AS3003WLCi AMD', NULL, '616.55'),
(102, '4452856552805451562047719706', '11', '1', 'Canon EOS 20D', NULL, '1241.946');

-- --------------------------------------------------------

-- 
-- Table structure for table `pages_pag`
-- 

CREATE TABLE `pages_pag` (
  `id_pag` int(11) NOT NULL auto_increment,
  `order_pag` int(11) default NULL,
  `name_pag` varchar(33) NOT NULL default '',
  `content_pag` text NOT NULL,
  PRIMARY KEY  (`id_pag`),
  KEY `order_pag` (`order_pag`)
) TYPE=MyISAM AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `pages_pag`
-- 

INSERT INTO `pages_pag` (`id_pag`, `order_pag`, `name_pag`, `content_pag`) VALUES (7, 8, 'Privacy Info', '<DIV><STRONG></STRONG>\r\n<P>We are protecting your privacy while browsing our site</P></DIV>'),
(6, 9, 'Contact', '<DIV>\r\n<P>Please contact us by phone, fax or&nbsp;email at</P>\r\n<P><A href="http://acmehardware.com">http://acmehardware.com</A> </P></DIV>'),
(5, 6, 'About US', '<DIV align=left>\r\n<P>ACME inc is a company that provides hardware for your computing needs.</P>\r\n<P>We are in the market since 1992 and have empowered government, blue-chip companies and more.</P></DIV>');

-- --------------------------------------------------------

-- 
-- Table structure for table `productdiscount_pdi`
-- 

CREATE TABLE `productdiscount_pdi` (
  `id_pdi` int(11) NOT NULL auto_increment,
  `idprd_pdi` int(11) NOT NULL default '0',
  `discountedprice_pdi` float NOT NULL default '0',
  `startdate_pdi` datetime NOT NULL default '0000-00-00 00:00:00',
  `enddate_pdi` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id_pdi`),
  KEY `idprd_pdi` (`idprd_pdi`),
  KEY `startdate_pdi` (`startdate_pdi`),
  KEY `enddate_pdi` (`enddate_pdi`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `productdiscount_pdi`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `productoption_pop`
-- 

CREATE TABLE `productoption_pop` (
  `id_pop` int(11) NOT NULL auto_increment,
  `idprd_pop` int(11) NOT NULL default '0',
  `idova_pop` int(11) NOT NULL default '0',
  `pricediff_pop` float NOT NULL default '0',
  `weightdiff_pop` float NOT NULL default '0',
  PRIMARY KEY  (`id_pop`),
  UNIQUE KEY `idprd_pro_2` (`idprd_pop`,`idova_pop`)
) TYPE=MyISAM AUTO_INCREMENT=217 ;

-- 
-- Dumping data for table `productoption_pop`
-- 

INSERT INTO `productoption_pop` (`id_pop`, `idprd_pop`, `idova_pop`, `pricediff_pop`, `weightdiff_pop`) VALUES (213, 4, 34, 0, 0),
(216, 4, 37, 1, 0),
(215, 4, 36, 0, 0),
(214, 4, 35, 10, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `products_prd`
-- 

CREATE TABLE `products_prd` (
  `id_prd` int(11) NOT NULL auto_increment,
  `idctg_prd` int(11) NOT NULL default '0',
  `idman_prd` int(11) NOT NULL default '0',
  `name_prd` varchar(67) NOT NULL default '',
  `sku_prd` varchar(85) NOT NULL default '',
  `price_prd` float NOT NULL default '0',
  `description_prd` text NOT NULL,
  `offer_prd` tinyint(4) NOT NULL default '0',
  `weight_prd` float NOT NULL default '0',
  `idtxc_prd` int(11) NOT NULL default '1',
  `visible_prd` tinyint(2) NOT NULL default '1',
  PRIMARY KEY  (`id_prd`),
  FULLTEXT KEY `description_prd` (`description_prd`)
) TYPE=MyISAM AUTO_INCREMENT=55 ;

-- 
-- Dumping data for table `products_prd`
-- 

INSERT INTO `products_prd` (`id_prd`, `idctg_prd`, `idman_prd`, `name_prd`, `sku_prd`, `price_prd`, `description_prd`, `offer_prd`, `weight_prd`, `idtxc_prd`, `visible_prd`) VALUES (1, 8, 7, ' DDU1622/C1 Internal', ' DDU1622', 59.99, '<p>Sony DDU1622/C1 Internal 16x DVD-ROM/48x CD-ROM Drive (EIDE)</p>', 0, 2.6, 1, 1),
(2, 3, 11, ' MuVo TX FM 1 GB', 'CRT_MUVOTX', 129.99, 'Creative MuVo TX FM 1 GB MP3 Player', 0, 1.02, 1, 1),
(3, 8, 18, 'SOHR-5239S-RET-B', 'LIT_ SOHR', 23.99, 'Lite-On SOHR-5239S-RET-B 52x Internal CD-RW Drive', 0, 1, 1, 1),
(52, 10, 4, 'Lenovo A132', 'LNA132', 1200, '<P>This model has the ability to function both as a tablet and an ultraportable notebook, providing the flexibility to take handwritten notes directly on the screen with the Tablet Digitizer Pen.</P>', 1, 3.4, 1, 1),
(54, 10, 13, 'Acer TravelMate 8130', 'ATM_8130', 2500, 'The thin &amp; light performance notebook that is fully-loaded and made to handle most of the latest games.', 1, 2.5, 1, 1),
(4, 6, 17, 'DataTraveler II', 'KIN_KUSBDTII', 67.99, 'Kingston 1GB DataTraveler II USB 2.0 ( KUSBDTII/1GB )', 1, 1, 1, 1),
(5, 3, 10, ' iPod Video', 'APP_', 299.99, 'Apple 30 GB iPod with Video Playback White', 1, 1.3, 1, 1),
(6, 9, 20, '300 GB External USB 2.0/', 'SEA_EXT300', 224.99, 'Seagate 300 GB External USB 2.0/FireWire Hard Drive with Backup', 0, 5.5, 1, 1),
(7, 8, 18, '52x32x52 Internal', 'LIT_52X', 60.99, 'Lite-On 52x32x52 Internal CD-RW Drive', 0, 3, 1, 1),
(8, 4, 13, 'Acer AS3003WLCi AMD', 'ACE-AS3003', 649, 'Acer AS3003WLCi AMD Sempron 3000+ / 15.4-Inch / 256MB / 40GB / CD-RW DVD-ROM Combo / Windows XP Home Notebook PC ', 1, 123, 1, 1),
(9, 4, 13, 'Acer Computer LX.FR306.002', 'ACE-LX', 1889, 'Acer Computer LX.FR306.002 Amd ATHLON64 3000+,512MB,80GB', 0, 13, 1, 1),
(10, 4, 13, 'Acer FERRARI 4005WLMI', 'ACE-4005', 2119.99, 'Acer FERRARI 4005WLMI AMD Turion 64 Mobile Technology ML-30 1GB ', 0, 6, 1, 1),
(11, 1, 1, 'Canon EOS 20D', 'CAN-20D', 1379.94, 'Canon EOS 20D 8.2MP Digital SLR Camera with EF-S 18-55mm f/3.5-5.6 Lens', 0, 2.5, 1, 1),
(12, 1, 1, 'Canon EOS 5D', 'CAN-5D', 3000, 'Canon EOS 5D 12.8 MP Digital SLR Camera (Body Only)', 0, 2.5, 1, 1),
(13, 1, 1, 'Canon EOS Rebel K2', 'CAN_RK2', 289, 'Canon EOS Rebel K2 35mm SLR Camera with EF 28 to 90mm II USM Lens', 0, 1.7, 1, 1),
(14, 1, 1, 'Canon ES75 Hi8', 'CAn-ES75', 199, 'Canon ES75 Hi8 Camcorder with Color Viewfinder', 0, 3.5, 1, 1),
(15, 1, 1, 'Canon Optura 600', 'CAN-OP-600', 1199, 'Canon Optura 600 4.3MP MiniDV Camcorder w/10x Optical Zoom', 0, 2, 1, 1),
(16, 1, 1, 'Canon Powershot S2 IS', 'CAN-S2', 450, 'Canon Powershot S2 IS 5MP Digital Camera with 12x Optical Image Stabilized Zoom', 0, 2, 1, 1),
(17, 1, 1, 'Canon Sure Shot 115u II Date', 'CAN-SS115', 100, 'Canon Sure Shot 115u II Date 35mm Film Camera', 0, 0.4, 1, 1),
(18, 4, 15, 'Compaq Presario ML-2', 'COM-1', 4.5, 'Compaq Presario Notebook with AMD Turion', 0, 999.99, 1, 1),
(19, 6, 17, 'DATATRAVELER I 128MB', 'KIN_KUSBDTI', 17.99, 'KINGSTON DATATRAVELER I 128MB ( KUSBDTI/128 )', 0, 1, 1, 1),
(20, 4, 14, 'Dell Inspiron', 'TOS-1', 1199.99, 'Dell Inspiron Notebook with Intel', 0, 6, 1, 1),
(21, 8, 7, 'DRX-530UL External', 'SNY_DRX', 84.99, 'Sony DRX-530UL External DVD+RW/CD-RW 8X Drive 40X/24X/40X', 0, 3, 1, 1),
(22, 1, 2, 'Hasselblad H1 645AF Kit', 'HAS-H1', 4900, 'Hasselblad H1 645AF Kit with 80mm f/2.8 Lens, HV90x Viewfinder, & Magazine HM', 0, 0.8, 1, 1),
(23, 2, 8, 'hx2755 Pocket PC', 'HP_HX', 408.1, 'HP iPAQ hx2755 Pocket PC', 0, 3.5, 1, 1),
(24, 2, 8, 'iPAQ rx1955', 'HP_RX', 299.99, 'HP iPAQ rx1955 Pocket PC', 0, 3, 1, 1),
(25, 3, 12, 'iRiver iFP 780T', 'IRIV_IFP', 99.99, 'iRiver iFP 780T 128 MB Flash MP3 Player', 0, 1, 1, 1),
(26, 3, 12, 'iRiver H10', 'IRIV_H10', 239.99, 'iRiver H10 20 GB MP3 Player/Recorder (Blue)', 0, 1.7, 1, 1),
(27, 1, 3, 'Kodak EasyShare C310 4MP', 'KOD-C310', 149, 'Kodak EasyShare C310 4MP Digital Camera', 0, 0.7, 1, 1),
(28, 1, 3, 'Kodak EasyShare V550', 'KOD-V550', 330, 'Kodak EasyShare V550 5MP Digital Camera with 3x Optical Zoom (Silver)', 0, 0.5, 1, 1),
(29, 7, 19, 'L01P200 200Gb', 'MXT_L01P', 119.99, 'Maxtor L01P200 7200 RPM 200 GB Hard Drive', 0, 10.3, 1, 1),
(30, 2, 9, 'LifeDrive Mobile Manager', 'PALM_MM', 499.99, 'PalmOne LifeDrive Mobile Manager', 0, 1.8, 1, 1),
(31, 1, 4, 'Linhof Kardan GT', 'LIN-K', 3796.95, 'Linhof Kardan GT 4x5" Camera', 0, 9.7, 1, 1),
(32, 1, 5, 'Nikon D50', 'NIK_D50', 600, 'Nikon D50 6.1MP Digital SLR Camera with 18-55mm f/3.5-5.6G ED AF-S DX Zoom Nikkor Lens', 0, 2, 1, 1),
(33, 1, 5, 'Nikon D70S', 'NIK-D70s', 899, 'Nikon D70S SLR 6.1 Megapixel Digital Camera Body (Lens not included)', 0, 1.25, 1, 1),
(34, 1, 5, 'Nikon N70', 'NIK-N70', 249.99, 'Nikon N70 SLR Camera', 0, 2.2, 1, 1),
(35, 1, 6, 'Olympus FE-100', 'OLY-FE-100', 90, 'Olympus FE-100 4MP Digital Camera with 2.8x Optical Zoom', 0, 1.4, 1, 1),
(36, 1, 6, 'Olympus Stylus 80 QD', 'OLY-80', 59, 'Olympus Stylus 80 QD 35mm Camera w/ 38-80mm Zoom', 0, 0.8, 1, 1),
(37, 1, 6, 'Olympus Stylus 80 QD', 'OLY-80', 59, 'Olympus Stylus 80 QD 35mm Camera w/ 38-80mm Zoom', 0, 0.5, 1, 1),
(38, 1, 7, 'Sony CCD-TRV138 Hi8', 'SON-138', 239, 'Sony CCD-TRV138 Hi8 Handycam Camcorder w/20x Optical Zoom', 0, 2, 1, 1),
(39, 1, 7, 'Sony Cybershot DSCH1', 'SON-H1', 427.44, 'Sony Cybershot DSCH1 5.1MP Digital Camera with 12x "Steady Shot" Zoom', 0, 1.3, 1, 1),
(40, 1, 7, 'Sony Cybershot DSCP73', 'SON-P73', 199, 'Sony Cybershot DSCP73 4.1MP Digital Camera with 3x Optical Zoom', 0, 0.9, 1, 1),
(41, 1, 7, 'Sony PV-GS250', 'SON-GS250', 999.95, 'Sony PV-GS250 3.1MP 3CCD MiniDV Camcorder w/10x Optical Zoom', 0, 2.1, 1, 1),
(42, 4, 7, 'Sony VAIO VGN-A290', 'SON-VGN', 1568, 'Sony VAIO VGN-A290 17" Notebook PC (Intel Pentium M Processor 735 (Centrino), 1 GB RAM, 100 GB Hard Drive, DVD+/-RW Double Layer Drive)', 0, 8.6, 1, 1),
(43, 7, 20, 'ST3200822A-RK 200 GB', 'SEA_ST3200', 99.9, 'Seagate ST3200822A-RK 200 GB ATA Internal Hard Drive', 0, 2.3, 1, 1),
(45, 4, 16, 'Toshiba Satellite M55-S329', 'TOS-M55', 1169, 'Toshiba Satellite M55-S329 14" Notebook PC (Intel Pentium M Processor 750 (Centrino), 512 MB RAM, 100 GB Hard Drive, DVD SuperMulti)', 0, 8, 1, 1),
(47, 4, 16, 'Toshiba Satellite M65-S809', 'TOS-M65', 1299.99, 'Toshiba Satellite M65-S809 17" Notebook PC (Intel Pentium M Processor 740 (Centrino), 512 MB RAM, 100 GB Hard Drive, DVD SuperMulti Drive)', 0, 7.8, 1, 1),
(49, 2, 9, 'Tungsten E2', 'PAL_TGSTE2', 179.99, 'PalmOne Tungsten E2 Handheld', 0, 1.6, 1, 1),
(50, 3, 11, 'Zen Micro Photo 8 GB', 'CRT_ZEN', 249.99, 'Creative Zen Micro Photo 8 GB MP3 Player Titanium Grey', 0, 1.1, 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `shipmethods_smt`
-- 

CREATE TABLE `shipmethods_smt` (
  `id_smt` int(11) NOT NULL auto_increment,
  `method_smt` varchar(10) NOT NULL default '',
  `rate_smt` float NOT NULL default '0',
  PRIMARY KEY  (`id_smt`),
  KEY `method_smt` (`method_smt`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `shipmethods_smt`
-- 

INSERT INTO `shipmethods_smt` (`id_smt`, `method_smt`, `rate_smt`) VALUES (1, 'Next Day', 2),
(2, 'Standard', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `states_sta`
-- 

CREATE TABLE `states_sta` (
  `id_sta` int(11) NOT NULL auto_increment,
  `idcnt_sta` int(11) NOT NULL default '0',
  `code_sta` varchar(10) NOT NULL default '',
  `name_sta` varchar(10) NOT NULL default '',
  `shiprate_sta` float NOT NULL default '0',
  `idtxz_sta` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id_sta`),
  KEY `idcnt_sta` (`idcnt_sta`),
  KEY `code_sta` (`code_sta`),
  KEY `idtxz_sta` (`idtxz_sta`)
) TYPE=MyISAM AUTO_INCREMENT=417 ;

-- 
-- Dumping data for table `states_sta`
-- 

INSERT INTO `states_sta` (`id_sta`, `idcnt_sta`, `code_sta`, `name_sta`, `shiprate_sta`, `idtxz_sta`) VALUES (1, 223, 'AL', 'Alabama', 0.02, 2),
(2, 223, 'AK', 'Alaska', 0.02, 1),
(3, 223, 'AS', 'American S', 0, 1),
(4, 223, 'AZ', 'Arizona', 0, 1),
(5, 223, 'AR', 'Arkansas', 0, 1),
(6, 223, 'AF', 'Armed Forc', 0, 1),
(7, 223, 'AA', 'Armed Forc', 0, 1),
(8, 223, 'AC', 'Armed Forc', 0, 1),
(9, 223, 'AE', 'Armed Forc', 0, 1),
(10, 223, 'AM', 'Armed Forc', 0, 1),
(11, 223, 'AP', 'Armed Forc', 0, 1),
(12, 223, 'CA', 'California', 0, 1),
(13, 223, 'CO', 'Colorado', 0, 1),
(14, 223, 'CT', 'Connecticu', 0, 1),
(15, 223, 'DE', 'Delaware', 0, 1),
(16, 223, 'DC', 'District o', 0, 1),
(17, 223, 'FM', 'Federated', 0, 1),
(18, 223, 'FL', 'Florida', 0, 1),
(19, 223, 'GA', 'Georgia', 0, 1),
(20, 223, 'GU', 'Guam', 0, 1),
(21, 223, 'HI', 'Hawaii', 0, 1),
(22, 223, 'ID', 'Idaho', 0, 1),
(23, 223, 'IL', 'Illinois', 0, 1),
(24, 223, 'IN', 'Indiana', 0, 1),
(25, 223, 'IA', 'Iowa', 0, 1),
(26, 223, 'KS', 'Kansas', 0, 1),
(27, 223, 'KY', 'Kentucky', 0, 1),
(28, 223, 'LA', 'Louisiana', 0, 1),
(29, 223, 'ME', 'Maine', 0, 1),
(30, 223, 'MH', 'Marshall I', 0, 1),
(31, 223, 'MD', 'Maryland', 0, 1),
(32, 223, 'MA', 'Massachuse', 0, 1),
(33, 223, 'MI', 'Michigan', 0, 1),
(34, 223, 'MN', 'Minnesota', 0, 1),
(35, 223, 'MS', 'Mississipp', 0, 1),
(36, 223, 'MO', 'Missouri', 0, 1),
(37, 223, 'MT', 'Montana', 0, 1),
(38, 223, 'NE', 'Nebraska', 0, 1),
(39, 223, 'NV', 'Nevada', 0, 1),
(40, 223, 'NH', 'New Hampsh', 0, 1),
(41, 223, 'NJ', 'New Jersey', 0, 1),
(42, 223, 'NM', 'New Mexico', 0, 1),
(43, 223, 'NY', 'New York', 0, 1),
(44, 223, 'NC', 'North Caro', 0, 1),
(45, 223, 'ND', 'North Dako', 0, 1),
(46, 223, 'MP', 'Northern M', 0, 1),
(47, 223, 'OH', 'Ohio', 0, 1),
(48, 223, 'OK', 'Oklahoma', 0, 1),
(49, 223, 'OR', 'Oregon', 0, 1),
(50, 223, 'PW', 'Palau', 0, 1),
(51, 223, 'PA', 'Pennsylvan', 0, 1),
(52, 223, 'PR', 'Puerto Ric', 0, 1),
(53, 223, 'RI', 'Rhode Isla', 0, 1),
(54, 223, 'SC', 'South Caro', 0, 1),
(55, 223, 'SD', 'South Dako', 0, 1),
(56, 223, 'TN', 'Tennessee', 0, 1),
(57, 223, 'TX', 'Texas', 0, 1),
(58, 223, 'UT', 'Utah', 2, 2),
(59, 223, 'VT', 'Vermont', 0, 1),
(60, 223, 'VI', 'Virgin Isl', 0, 1),
(61, 223, 'VA', 'Virginia', 0, 1),
(62, 223, 'WA', 'Washington', 0, 1),
(63, 223, 'WV', 'West Virgi', 0, 1),
(64, 223, 'WI', 'Wisconsin', 0, 1),
(65, 223, 'WY', 'Wyoming', 0, 1),
(66, 38, 'AB', 'Alberta', 0, 1),
(67, 38, 'BC', 'British Co', 0, 1),
(68, 38, 'MB', 'Manitoba', 0, 1),
(69, 38, 'NF', 'Newfoundla', 0, 1),
(70, 38, 'NB', 'New Brunsw', 0, 1),
(71, 38, 'NS', 'Nova Scoti', 0, 1),
(72, 38, 'NT', 'Northwest', 0, 1),
(73, 38, 'NU', 'Nunavut', 0, 1),
(74, 38, 'ON', 'Ontario', 0, 1),
(75, 38, 'PE', 'Prince Edw', 0, 1),
(76, 38, 'QC', 'Quebec', 0, 1),
(77, 38, 'SK', 'Saskatchew', 0, 1),
(78, 38, 'YT', 'Yukon Terr', 0, 1),
(79, 81, 'NDS', 'Niedersach', 0, 1),
(80, 81, 'BAW', 'Baden-W?rt', 0, 1),
(81, 81, 'BAY', 'Bayern', 0, 1),
(82, 81, 'BER', 'Berlin', 0, 1),
(83, 81, 'BRG', 'Brandenbur', 0, 1),
(84, 81, 'BRE', 'Bremen', 0, 1),
(85, 81, 'HAM', 'Hamburg', 0, 1),
(86, 81, 'HES', 'Hessen', 0, 1),
(87, 81, 'MEC', 'Mecklenbur', 0, 1),
(88, 81, 'NRW', 'Nordrhein-', 0, 1),
(89, 81, 'RHE', 'Rheinland-', 0, 1),
(90, 81, 'SAR', 'Saarland', 0, 1),
(91, 81, 'SAS', 'Sachsen', 0, 1),
(92, 81, 'SAC', 'Sachsen-An', 0, 1),
(93, 81, 'SCN', 'Schleswig-', 0, 1),
(94, 81, 'THE', 'Th?ringen', 0, 1),
(95, 14, 'WI', 'Wien', 0, 1),
(96, 14, 'NO', 'Nieder?ste', 0, 1),
(97, 14, 'OO', 'Ober?sterr', 0, 1),
(98, 14, 'SB', 'Salzburg', 0, 1),
(99, 14, 'KN', 'K?rnten', 0, 1),
(100, 14, 'ST', 'Steiermark', 0, 1),
(101, 14, 'TI', 'Tirol', 0, 1),
(102, 14, 'BL', 'Burgenland', 0, 1),
(103, 14, 'VB', 'Voralberg', 0, 1),
(104, 204, 'AG', 'Aargau', 0, 1),
(105, 204, 'AI', 'Appenzell', 0, 1),
(106, 204, 'AR', 'Appenzell', 0, 1),
(107, 204, 'BE', 'Bern', 0, 1),
(108, 204, 'BL', 'Basel-Land', 0, 1),
(109, 204, 'BS', 'Basel-Stad', 0, 1),
(110, 204, 'FR', 'Freiburg', 0, 1),
(111, 204, 'GE', 'Genf', 0, 1),
(112, 204, 'GL', 'Glarus', 0, 1),
(113, 204, 'JU', 'Graub?nden', 0, 1),
(114, 204, 'JU', 'Jura', 0, 1),
(115, 204, 'LU', 'Luzern', 0, 1),
(116, 204, 'NE', 'Neuenburg', 0, 1),
(117, 204, 'NW', 'Nidwalden', 0, 1),
(118, 204, 'OW', 'Obwalden', 0, 1),
(119, 204, 'SG', 'St. Gallen', 0, 1),
(120, 204, 'SH', 'Schaffhaus', 0, 1),
(121, 204, 'SO', 'Solothurn', 0, 1),
(122, 204, 'SZ', 'Schwyz', 0, 1),
(123, 204, 'TG', 'Thurgau', 0, 1),
(124, 204, 'TI', 'Tessin', 0, 1),
(125, 204, 'UR', 'Uri', 0, 1),
(126, 204, 'VD', 'Waadt', 0, 1),
(127, 204, 'VS', 'Wallis', 0, 1),
(128, 204, 'ZG', 'Zug', 0, 1),
(129, 204, 'ZH', 'Z?rich', 0, 1),
(130, 195, 'A Coru?a', 'A Coru?a', 0, 1),
(131, 195, 'Alava', 'Alava', 0, 1),
(132, 195, 'Albacete', 'Albacete', 0, 1),
(133, 195, 'Alicante', 'Alicante', 0, 1),
(134, 195, 'Almeria', 'Almeria', 0, 1),
(135, 195, 'Asturias', 'Asturias', 0, 1),
(136, 195, 'Avila', 'Avila', 0, 1),
(137, 195, 'Badajoz', 'Badajoz', 0, 1),
(138, 195, 'Baleares', 'Baleares', 0, 1),
(139, 195, 'Barcelona', 'Barcelona', 0, 1),
(140, 195, 'Burgos', 'Burgos', 0, 1),
(141, 195, 'Caceres', 'Caceres', 0, 1),
(142, 195, 'Cadiz', 'Cadiz', 0, 1),
(143, 195, 'Cantabria', 'Cantabria', 0, 1),
(144, 195, 'Castellon', 'Castellon', 0, 1),
(145, 195, 'Ceuta', 'Ceuta', 0, 1),
(146, 195, 'Ciudad Rea', 'Ciudad Rea', 0, 1),
(147, 195, 'Cordoba', 'Cordoba', 0, 1),
(148, 195, 'Cuenca', 'Cuenca', 0, 1),
(149, 195, 'Girona', 'Girona', 0, 1),
(150, 195, 'Granada', 'Granada', 0, 1),
(151, 195, 'Guadalajar', 'Guadalajar', 0, 1),
(152, 195, 'Guipuzcoa', 'Guipuzcoa', 0, 1),
(153, 195, 'Huelva', 'Huelva', 0, 1),
(154, 195, 'Huesca', 'Huesca', 0, 1),
(155, 195, 'Jaen', 'Jaen', 0, 1),
(156, 195, 'La Rioja', 'La Rioja', 0, 1),
(157, 195, 'Las Palmas', 'Las Palmas', 0, 1),
(158, 195, 'Leon', 'Leon', 0, 1),
(159, 195, 'Lleida', 'Lleida', 0, 1),
(160, 195, 'Lugo', 'Lugo', 0, 1),
(161, 195, 'Madrid', 'Madrid', 0, 1),
(162, 195, 'Malaga', 'Malaga', 0, 1),
(163, 195, 'Melilla', 'Melilla', 0, 1),
(164, 195, 'Murcia', 'Murcia', 0, 1),
(165, 195, 'Navarra', 'Navarra', 0, 1),
(166, 195, 'Ourense', 'Ourense', 0, 1),
(167, 195, 'Palencia', 'Palencia', 0, 1),
(168, 195, 'Pontevedra', 'Pontevedra', 0, 1),
(169, 195, 'Salamanca', 'Salamanca', 0, 1),
(170, 195, 'Santa Cruz', 'Santa Cruz', 0, 1),
(171, 195, 'Segovia', 'Segovia', 0, 1),
(172, 195, 'Sevilla', 'Sevilla', 0, 1),
(173, 195, 'Soria', 'Soria', 0, 1),
(174, 195, 'Tarragona', 'Tarragona', 0, 1),
(175, 195, 'Teruel', 'Teruel', 0, 1),
(176, 195, 'Toledo', 'Toledo', 0, 1),
(177, 195, 'Valencia', 'Valencia', 0, 1),
(178, 195, 'Valladolid', 'Valladolid', 0, 1),
(179, 195, 'Vizcaya', 'Vizcaya', 0, 1),
(180, 195, 'Zamora', 'Zamora', 0, 1),
(181, 195, 'Zaragoza', 'Zaragoza', 0, 1),
(182, 1, 'Afghanista', 'Afghanista', 0, 1),
(183, 175, 'Muntenia', 'Muntenia', 5, 1),
(184, 175, 'Moldova', 'Moldova', 6, 1),
(185, 175, 'Transilvan', 'Transilvan', 6, 1),
(186, 2, 'Albania', 'Albania', 0, 1),
(187, 3, 'Algeria', 'Algeria', 0, 1),
(188, 4, 'American S', 'American S', 0, 1),
(189, 5, 'Andorra', 'Andorra', 0, 1),
(190, 6, 'Angola', 'Angola', 0, 1),
(191, 7, 'Anguilla', 'Anguilla', 0, 1),
(192, 8, 'Antarctica', 'Antarctica', 0, 1),
(193, 9, 'Antigua an', 'Antigua an', 0, 1),
(194, 10, 'Argentina', 'Argentina', 0, 1),
(195, 11, 'Armenia', 'Armenia', 0, 1),
(196, 12, 'Aruba', 'Aruba', 0, 1),
(197, 13, 'Australia', 'Australia', 0, 1),
(198, 15, 'Azerbaijan', 'Azerbaijan', 0, 1),
(199, 16, 'Bahamas', 'Bahamas', 0, 1),
(200, 17, 'Bahrain', 'Bahrain', 0, 1),
(201, 18, 'Bangladesh', 'Bangladesh', 0, 1),
(202, 19, 'Barbados', 'Barbados', 0, 1),
(203, 20, 'Belarus', 'Belarus', 0, 1),
(204, 21, 'Belgium', 'Belgium', 0, 1),
(205, 22, 'Belize', 'Belize', 0, 1),
(206, 23, 'Benin', 'Benin', 0, 1),
(207, 24, 'Bermuda', 'Bermuda', 0, 1),
(208, 25, 'Bhutan', 'Bhutan', 0, 1),
(209, 26, 'Bolivia', 'Bolivia', 0, 1),
(210, 27, 'Bosnia and', 'Bosnia and', 0, 1),
(211, 28, 'Botswana', 'Botswana', 0, 1),
(212, 29, 'Bouvet Isl', 'Bouvet Isl', 0, 1),
(213, 30, 'Brazil', 'Brazil', 0, 1),
(214, 31, 'British In', 'British In', 0, 1),
(215, 32, 'Brunei Dar', 'Brunei Dar', 0, 1),
(216, 33, 'Bulgaria', 'Bulgaria', 0, 1),
(217, 34, 'Burkina Fa', 'Burkina Fa', 0, 1),
(218, 35, 'Burundi', 'Burundi', 0, 1),
(219, 36, 'Cambodia', 'Cambodia', 0, 1),
(220, 37, 'Cameroon', 'Cameroon', 0, 1),
(221, 39, 'Cape Verde', 'Cape Verde', 0, 1),
(222, 40, 'Cayman Isl', 'Cayman Isl', 0, 1),
(223, 41, 'Central Af', 'Central Af', 0, 1),
(224, 42, 'Chad', 'Chad', 0, 1),
(225, 43, 'Chile', 'Chile', 0, 1),
(226, 44, 'China', 'China', 0, 1),
(227, 45, 'Christmas', 'Christmas', 0, 1),
(228, 46, 'Cocos (Kee', 'Cocos (Kee', 0, 1),
(229, 47, 'Colombia', 'Colombia', 0, 1),
(230, 48, 'Comoros', 'Comoros', 0, 1),
(231, 49, 'Congo', 'Congo', 0, 1),
(232, 50, 'Cook Islan', 'Cook Islan', 0, 1),
(233, 51, 'Costa Rica', 'Costa Rica', 0, 1),
(234, 52, 'Cote D''Ivo', 'Cote D''Ivo', 0, 1),
(235, 53, 'Croatia', 'Croatia', 0, 1),
(236, 54, 'Cuba', 'Cuba', 0, 1),
(237, 55, 'Cyprus', 'Cyprus', 0, 1),
(238, 56, 'Czech Repu', 'Czech Repu', 0, 1),
(239, 57, 'Denmark', 'Denmark', 0, 1),
(240, 58, 'Djibouti', 'Djibouti', 0, 1),
(241, 59, 'Dominica', 'Dominica', 0, 1),
(242, 60, 'Dominican', 'Dominican', 0, 1),
(243, 61, 'East Timor', 'East Timor', 0, 1),
(244, 62, 'Ecuador', 'Ecuador', 0, 1),
(245, 63, 'Egypt', 'Egypt', 0, 1),
(246, 64, 'El Salvado', 'El Salvado', 0, 1),
(247, 65, 'Equatorial', 'Equatorial', 0, 1),
(248, 66, 'Eritrea', 'Eritrea', 0, 1),
(249, 67, 'Estonia', 'Estonia', 0, 1),
(250, 68, 'Ethiopia', 'Ethiopia', 0, 1),
(251, 69, 'Falkland I', 'Falkland I', 0, 1),
(252, 70, 'Faroe Isla', 'Faroe Isla', 0, 1),
(253, 71, 'Fiji', 'Fiji', 0, 1),
(254, 72, 'Finland', 'Finland', 0, 1),
(255, 73, 'France', 'France', 0, 1),
(256, 74, 'France, Me', 'France, Me', 0, 1),
(257, 75, 'French Gui', 'French Gui', 0, 1),
(258, 76, 'French Pol', 'French Pol', 0, 1),
(259, 77, 'French Sou', 'French Sou', 0, 1),
(260, 78, 'Gabon', 'Gabon', 0, 1),
(261, 79, 'Gambia', 'Gambia', 0, 1),
(262, 80, 'Georgia', 'Georgia', 0, 1),
(263, 82, 'Ghana', 'Ghana', 0, 1),
(264, 83, 'Gibraltar', 'Gibraltar', 0, 1),
(265, 84, 'Greece', 'Greece', 0, 1),
(266, 85, 'Greenland', 'Greenland', 0, 1),
(267, 86, 'Grenada', 'Grenada', 0, 1),
(268, 87, 'Guadeloupe', 'Guadeloupe', 0, 1),
(269, 88, 'Guam', 'Guam', 0, 1),
(270, 89, 'Guatemala', 'Guatemala', 0, 1),
(271, 90, 'Guinea', 'Guinea', 0, 1),
(272, 91, 'Guinea-bis', 'Guinea-bis', 0, 1),
(273, 92, 'Guyana', 'Guyana', 0, 1),
(274, 93, 'Haiti', 'Haiti', 0, 1),
(275, 94, 'Heard and', 'Heard and', 0, 1),
(276, 95, 'Honduras', 'Honduras', 0, 1),
(277, 96, 'Hong Kong', 'Hong Kong', 0, 1),
(278, 97, 'Hungary', 'Hungary', 0, 1),
(279, 98, 'Iceland', 'Iceland', 0, 1),
(280, 99, 'India', 'India', 0, 1),
(281, 100, 'Indonesia', 'Indonesia', 0, 1),
(282, 101, 'Iran (Isla', 'Iran (Isla', 0, 1),
(283, 102, 'Iraq', 'Iraq', 0, 1),
(284, 103, 'Ireland', 'Ireland', 0, 1),
(285, 104, 'Israel', 'Israel', 0, 1),
(286, 105, 'Italy', 'Italy', 0, 1),
(287, 106, 'Jamaica', 'Jamaica', 0, 1),
(288, 107, 'Japan', 'Japan', 0, 1),
(289, 108, 'Jordan', 'Jordan', 0, 1),
(290, 109, 'Kazakhstan', 'Kazakhstan', 0, 1),
(291, 110, 'Kenya', 'Kenya', 0, 1),
(292, 111, 'Kiribati', 'Kiribati', 0, 1),
(293, 112, 'Korea, Dem', 'Korea, Dem', 0, 1),
(294, 113, 'Korea, Rep', 'Korea, Rep', 0, 1),
(295, 114, 'Kuwait', 'Kuwait', 0, 1),
(296, 115, 'Kyrgyzstan', 'Kyrgyzstan', 0, 1),
(297, 116, 'Lao People', 'Lao People', 0, 1),
(298, 117, 'Latvia', 'Latvia', 0, 1),
(299, 118, 'Lebanon', 'Lebanon', 0, 1),
(300, 119, 'Lesotho', 'Lesotho', 0, 1),
(301, 120, 'Liberia', 'Liberia', 0, 1),
(302, 121, 'Libyan Ara', 'Libyan Ara', 0, 1),
(303, 122, 'Liechtenst', 'Liechtenst', 0, 1),
(304, 123, 'Lithuania', 'Lithuania', 0, 1),
(305, 124, 'Luxembourg', 'Luxembourg', 0, 1),
(306, 125, 'Macau', 'Macau', 0, 1),
(307, 126, 'Macedonia,', 'Macedonia,', 0, 1),
(308, 127, 'Madagascar', 'Madagascar', 0, 1),
(309, 128, 'Malawi', 'Malawi', 0, 1),
(310, 129, 'Malaysia', 'Malaysia', 0, 1),
(311, 130, 'Maldives', 'Maldives', 0, 1),
(312, 131, 'Mali', 'Mali', 0, 1),
(313, 132, 'Malta', 'Malta', 0, 1),
(314, 133, 'Marshall I', 'Marshall I', 0, 1),
(315, 134, 'Martinique', 'Martinique', 0, 1),
(316, 135, 'Mauritania', 'Mauritania', 0, 1),
(317, 136, 'Mauritius', 'Mauritius', 0, 1),
(318, 137, 'Mayotte', 'Mayotte', 0, 1),
(319, 138, 'Mexico', 'Mexico', 0, 1),
(320, 139, 'Micronesia', 'Micronesia', 0, 1),
(321, 140, 'Moldova, R', 'Moldova, R', 0, 1),
(322, 141, 'Monaco', 'Monaco', 0, 1),
(323, 142, 'Mongolia', 'Mongolia', 0, 1),
(324, 143, 'Montserrat', 'Montserrat', 0, 1),
(325, 144, 'Morocco', 'Morocco', 0, 1),
(326, 145, 'Mozambique', 'Mozambique', 0, 1),
(327, 146, 'Myanmar', 'Myanmar', 0, 1),
(328, 147, 'Namibia', 'Namibia', 0, 1),
(329, 148, 'Nauru', 'Nauru', 0, 1),
(330, 149, 'Nepal', 'Nepal', 0, 1),
(331, 150, 'Netherland', 'Netherland', 0, 1),
(332, 151, 'Netherland', 'Netherland', 0, 1),
(333, 152, 'New Caledo', 'New Caledo', 0, 1),
(334, 153, 'New Zealan', 'New Zealan', 0, 1),
(335, 154, 'Nicaragua', 'Nicaragua', 0, 1),
(336, 155, 'Niger', 'Niger', 0, 1),
(337, 156, 'Nigeria', 'Nigeria', 0, 1),
(338, 157, 'Niue', 'Niue', 0, 1),
(339, 158, 'Norfolk Is', 'Norfolk Is', 0, 1),
(340, 159, 'Northern M', 'Northern M', 0, 1),
(341, 160, 'Norway', 'Norway', 0, 1),
(342, 161, 'Oman', 'Oman', 0, 1),
(343, 162, 'Pakistan', 'Pakistan', 0, 1),
(344, 163, 'Palau', 'Palau', 0, 1),
(345, 164, 'Panama', 'Panama', 0, 1),
(346, 165, 'Papua New', 'Papua New', 0, 1),
(347, 166, 'Paraguay', 'Paraguay', 0, 1),
(348, 167, 'Peru', 'Peru', 0, 1),
(349, 168, 'Philippine', 'Philippine', 0, 1),
(350, 169, 'Pitcairn', 'Pitcairn', 0, 1),
(351, 170, 'Poland', 'Poland', 0, 1),
(352, 171, 'Portugal', 'Portugal', 0, 1),
(353, 172, 'Puerto Ric', 'Puerto Ric', 0, 1),
(354, 173, 'Qatar', 'Qatar', 0, 1),
(355, 174, 'Reunion', 'Reunion', 0, 1),
(356, 176, 'Russian Fe', 'Russian Fe', 0, 1),
(357, 177, 'Rwanda', 'Rwanda', 0, 1),
(358, 178, 'Saint Kitt', 'Saint Kitt', 0, 1),
(359, 179, 'Saint Luci', 'Saint Luci', 0, 1),
(360, 180, 'Saint Vinc', 'Saint Vinc', 0, 1),
(361, 181, 'Samoa', 'Samoa', 0, 1),
(362, 182, 'San Marino', 'San Marino', 0, 1),
(363, 183, 'Sao Tome a', 'Sao Tome a', 0, 1),
(364, 184, 'Saudi Arab', 'Saudi Arab', 0, 1),
(365, 185, 'Senegal', 'Senegal', 0, 1),
(366, 186, 'Seychelles', 'Seychelles', 0, 1),
(367, 187, 'Sierra Leo', 'Sierra Leo', 0, 1),
(368, 188, 'Singapore', 'Singapore', 0, 1),
(369, 189, 'Slovakia (', 'Slovakia (', 0, 1),
(370, 190, 'Slovenia', 'Slovenia', 0, 1),
(371, 191, 'Solomon Is', 'Solomon Is', 0, 1),
(372, 192, 'Somalia', 'Somalia', 0, 1),
(373, 193, 'South Afri', 'South Afri', 0, 1),
(374, 194, 'South Geor', 'South Geor', 0, 1),
(375, 196, 'Sri Lanka', 'Sri Lanka', 0, 1),
(376, 197, 'St. Helena', 'St. Helena', 0, 1),
(377, 198, 'St. Pierre', 'St. Pierre', 0, 1),
(378, 199, 'Sudan', 'Sudan', 0, 1),
(379, 200, 'Suriname', 'Suriname', 0, 1),
(380, 201, 'Svalbard a', 'Svalbard a', 0, 1),
(381, 202, 'Swaziland', 'Swaziland', 0, 1),
(382, 203, 'Sweden', 'Sweden', 0, 1),
(383, 205, 'Syrian Ara', 'Syrian Ara', 0, 1),
(384, 206, 'Taiwan', 'Taiwan', 0, 1),
(385, 207, 'Tajikistan', 'Tajikistan', 0, 1),
(386, 208, 'Tanzania,', 'Tanzania,', 0, 1),
(387, 209, 'Thailand', 'Thailand', 0, 1),
(388, 210, 'Togo', 'Togo', 0, 1),
(389, 211, 'Tokelau', 'Tokelau', 0, 1),
(390, 212, 'Tonga', 'Tonga', 0, 1),
(391, 213, 'Trinidad a', 'Trinidad a', 0, 1),
(392, 214, 'Tunisia', 'Tunisia', 0, 1),
(393, 215, 'Turkey', 'Turkey', 0, 1),
(394, 216, 'Turkmenist', 'Turkmenist', 0, 1),
(395, 217, 'Turks and', 'Turks and', 0, 1),
(396, 218, 'Tuvalu', 'Tuvalu', 0, 1),
(397, 219, 'Uganda', 'Uganda', 0, 1),
(398, 220, 'Ukraine', 'Ukraine', 0, 1),
(399, 221, 'United Ara', 'United Ara', 0, 1),
(400, 222, 'United Kin', 'United Kin', 0, 1),
(401, 224, 'United Sta', 'United Sta', 0, 1),
(402, 225, 'Uruguay', 'Uruguay', 0, 1),
(403, 226, 'Uzbekistan', 'Uzbekistan', 0, 1),
(404, 227, 'Vanuatu', 'Vanuatu', 0, 1),
(405, 228, 'Vatican Ci', 'Vatican Ci', 0, 1),
(406, 229, 'Venezuela', 'Venezuela', 0, 1),
(407, 230, 'Viet Nam', 'Viet Nam', 0, 1),
(408, 231, 'Virgin Isl', 'Virgin Isl', 0, 1),
(409, 232, 'Virgin Isl', 'Virgin Isl', 0, 1),
(410, 233, 'Wallis and', 'Wallis and', 0, 1),
(411, 234, 'Western Sa', 'Western Sa', 0, 1),
(412, 235, 'Yemen', 'Yemen', 0, 1),
(413, 236, 'Yugoslavia', 'Yugoslavia', 0, 1),
(414, 237, 'Zaire', 'Zaire', 0, 1),
(415, 238, 'Zambia', 'Zambia', 0, 1),
(416, 239, 'Zimbabwe', 'Zimbabwe', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `taxcateg_txc`
-- 

CREATE TABLE `taxcateg_txc` (
  `id_txc` int(11) NOT NULL auto_increment,
  `name_txc` varchar(33) NOT NULL default '',
  PRIMARY KEY  (`id_txc`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `taxcateg_txc`
-- 

INSERT INTO `taxcateg_txc` (`id_txc`, `name_txc`) VALUES (1, 'Non-Food'),
(2, 'Food'),
(3, 'Non-Taxable');

-- --------------------------------------------------------

-- 
-- Table structure for table `taxes_tax`
-- 

CREATE TABLE `taxes_tax` (
  `id_tax` int(11) NOT NULL auto_increment,
  `idtxz_tax` int(11) NOT NULL default '0',
  `idtxc_tax` int(11) NOT NULL default '0',
  `amount_tax` float NOT NULL default '0',
  PRIMARY KEY  (`id_tax`),
  KEY `idtxz_tax` (`idtxz_tax`),
  KEY `idtxc_tax` (`idtxc_tax`)
) TYPE=MyISAM AUTO_INCREMENT=71 ;

-- 
-- Dumping data for table `taxes_tax`
-- 

INSERT INTO `taxes_tax` (`id_tax`, `idtxz_tax`, `idtxc_tax`, `amount_tax`) VALUES (63, 3, 1, 19),
(66, 2, 3, 1),
(65, 2, 1, 19),
(70, 1, 1, 22),
(62, 3, 2, 10),
(64, 2, 2, 9.5),
(69, 1, 2, 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `taxzone_txz`
-- 

CREATE TABLE `taxzone_txz` (
  `id_txz` int(11) NOT NULL auto_increment,
  `name_txz` varchar(33) NOT NULL default '',
  PRIMARY KEY  (`id_txz`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `taxzone_txz`
-- 

INSERT INTO `taxzone_txz` (`id_txz`, `name_txz`) VALUES (1, 'Rest Of the World'),
(2, 'Central US'),
(3, 'Rest of the US');

-- --------------------------------------------------------

-- 
-- Table structure for table `udiscounts_dis`
-- 

CREATE TABLE `udiscounts_dis` (
  `id_dis` int(11) NOT NULL auto_increment,
  `userlevel_dis` int(11) NOT NULL default '0',
  `discount_dis` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_dis`),
  KEY `userlevel_dis` (`userlevel_dis`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `udiscounts_dis`
-- 

INSERT INTO `udiscounts_dis` (`id_dis`, `userlevel_dis`, `discount_dis`) VALUES (1, 1, 10),
(2, 2, 20),
(3, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `userlevels_ulv`
-- 

CREATE TABLE `userlevels_ulv` (
  `id_ulv` int(11) NOT NULL default '0',
  `level_ulv` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`id_ulv`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `userlevels_ulv`
-- 

INSERT INTO `userlevels_ulv` (`id_ulv`, `level_ulv`) VALUES (0, 'Web-Registered'),
(1, 'Silver Reseller'),
(2, 'Gold Reseller'),
(9, 'Admin');

-- --------------------------------------------------------

-- 
-- Table structure for table `users_usr`
-- 

CREATE TABLE `users_usr` (
  `id_usr` int(11) NOT NULL auto_increment,
  `email_usr` varchar(33) NOT NULL default '',
  `firstname_usr` varchar(85) NOT NULL default '',
  `lastname_usr` varchar(85) NOT NULL default '',
  `password_usr` varchar(10) NOT NULL default '',
  `level_usr` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id_usr`),
  UNIQUE KEY `email_usr` (`email_usr`,`firstname_usr`),
  KEY `password_usr` (`password_usr`),
  KEY `level_usr` (`level_usr`)
) TYPE=MyISAM AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `users_usr`
-- 

INSERT INTO `users_usr` (`id_usr`, `email_usr`, `firstname_usr`, `lastname_usr`, `password_usr`, `level_usr`) VALUES (1, 'reseller1', '', '', 'reseller1', 1),
(2, 'reseller2', '', '', 'reseller2', 2),
(3, 'admin@interakt.ro', '', '', 'admin', 9),
(7, 'civascu@interakt.ro', 'IMC', 'IMC', '24c754', 0),
(8, 'civascu@interaktonline.com', 'aaaa', 'aaa', 'a01f3c', 0),
(9, 'mpricope@gmail.com', 'Miti', 'Piti', 'mpricope', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `vdiscounts_vds`
-- 

CREATE TABLE `vdiscounts_vds` (
  `id_vds` int(11) NOT NULL auto_increment,
  `limit_vds` int(11) NOT NULL default '0',
  `disc_vds` float NOT NULL default '0',
  PRIMARY KEY  (`id_vds`),
  KEY `limit_vds` (`limit_vds`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `vdiscounts_vds`
-- 

INSERT INTO `vdiscounts_vds` (`id_vds`, `limit_vds`, `disc_vds`) VALUES (4, 1000, 10),
(3, 500, 5);
