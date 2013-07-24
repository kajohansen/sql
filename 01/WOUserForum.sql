# Sequel Pro dump
# Version 2492
# http://code.google.com/p/sequel-pro
#
# Host: 127.0.0.1 (MySQL 5.1.44)
# Database: WOUserForum
# Generation Time: 2011-06-14 15:49:55 +0200
# ************************************************************

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table EO_PK_TABLE
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EO_PK_TABLE`;

CREATE TABLE `EO_PK_TABLE` (
  `NAME` char(40) NOT NULL,
  `PK` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `EO_PK_TABLE` WRITE;
/*!40000 ALTER TABLE `EO_PK_TABLE` DISABLE KEYS */;
INSERT INTO `EO_PK_TABLE` (`NAME`,`PK`)
VALUES
	('FORUM',4),
	('POST',9),
	('TOPIC',8),
	('USER',8);

/*!40000 ALTER TABLE `EO_PK_TABLE` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table FORUM
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FORUM`;

CREATE TABLE `FORUM` (
  `FORUM_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`FORUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `FORUM` WRITE;
/*!40000 ALTER TABLE `FORUM` DISABLE KEYS */;
INSERT INTO `FORUM` (`FORUM_ID`,`NAME`)
VALUES
	(2,'Design'),
	(3,'Vendors'),
	(4,'Production');

/*!40000 ALTER TABLE `FORUM` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table FORUM_MODERATOR
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FORUM_MODERATOR`;

CREATE TABLE `FORUM_MODERATOR` (
  `FORUM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `FORUM_MODERATOR` WRITE;
/*!40000 ALTER TABLE `FORUM_MODERATOR` DISABLE KEYS */;
INSERT INTO `FORUM_MODERATOR` (`FORUM_ID`,`USER_ID`)
VALUES
	(2,1),
	(3,1),
	(4,1),
	(4,5),
	(3,5);

/*!40000 ALTER TABLE `FORUM_MODERATOR` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table POST
# ------------------------------------------------------------

DROP TABLE IF EXISTS `POST`;

CREATE TABLE `POST` (
  `DATE_RELEASED` datetime NOT NULL,
  `MESSAGE` text NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `TOPIC_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(255) DEFAULT NULL,
  `ATTACHMENT` longtext,
  PRIMARY KEY (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `POST` WRITE;
/*!40000 ALTER TABLE `POST` DISABLE KEYS */;
INSERT INTO `POST` (`DATE_RELEASED`,`MESSAGE`,`POST_ID`,`TOPIC_ID`,`USER_ID`,`FILE_PATH`,`ATTACHMENT`)
VALUES
	('2011-01-29 06:33:03','My Graphics Message updated online',2,2,3,'Geta (Wooden Sandal)  .gif','GIF89a0\00\0÷ÿ\0ãÄŠñÝ«»¥yÚÇ“™‰fâÅ‚Â»¬Ë¼—Â§rÛªfêÏšãÊ‹d\\Jžj=Ë™UÄÃÃ§uF678«««êÌŒç»ƒ:4%ÅÂºÛ³kâ»txgGˆyZ”““äÍšÍÍÍ(#´|I·›ióÓ•»ƒJÒÒÒxpiRJ8šŽq˜‚\\Ý½}íÚ¬²²²ÆŠHÛ³q¢ŒdëÐ•áÄ©–iâÄ}ÝºsñÖ¢”|UÉÉÉhX>š“…ÐÐÏraUÆ“MîÙ¤£‘Ú¼„éÑšãÈ†èÆŠjeUÝÃŠÜÍ¥ñÛ¥Ä±ƒã¸nóà³ÞÀŽ„nšššEB:á½zêÌ—ÌËÅŒ_ñß°¨¦ É¨g]VIÞÀz¸´ªíÑ™øã´Ì»Š½ŠQ\"\"!éÐæÐœÔ¼ŠÍ¢\\Ï­tîÕ¡#âÈ’HHG©ˆV?:.	¤•qœrBèÊéÊ”€~|»©ÑÐÎÇ¯y¾½»üìÂèÂ}Ó›f›x¬›sÎÍÈíÐžÐÉ¹sZ­¡‡æÌ•WWVîÖ¥ŽŽŽÐÎÊûê¼á¿v\Z!Å´‹£££Öº{veX²¥‚åÉ–{kZêÏ‘ÒÒÏîÒ \röà¯åÍ‰\"$\'0*J?,à´t»¹´	\rÖžTõæ¾úå·íÎ–_R:\n	ÓÓÒ­Ÿ}rhQæÈêÕ¡¼²˜/-&Ê´ƒßÉ—ÅŠPªp@3.#îÕ™++,ÒÁáÍ–½®ŠäÒ–Ô³téÆ«§›ëÕœèÏ¡ðÏš„lJ´ŸpìË•»¦¿«¶­˜Ï”PäÎèÁ…³¯¥åµ}zkTÍÀŸÑµ| $ïÕžUPDÕ¹‚éÖ¤ÞÈ„¬~IçÉ023Î¹…íËÐ½íÍ’£–yµ©+-1êÓœÈÇÄygZ	êÌÓ·&\')èÓ¡=?F|bAÛ¸wß¯kßÐ¦‡pOòÈˆ‘sJðØ¨ãÑ¡ðá·SF0öÑŒ÷èÀúè¶»`Ç·†É¸‹¿—c}oNò×œàÀ‡ãÎ“ÒÅ§êÆyâÒ¨÷Ü«¨œÔÔÔ!ù\0\0ÿ\0,\0\0\0\00\00\0\0ÿ\0ÿ	xá\0•ƒ&ÔóOŽÂ‡mœ8QÎ0#2jÜ¸Ñ0^Ã8ŠÔ¨BÅ“ÃæhÑOS?H^\nš3G$-DÁ$(¤9>iôë§ISOM™¼à99Ñ¼)ê¦üQ¤†Õ/2	P\' ÇvJ¦L ¢€\"\0\0(R§d«’<K™\n4’©­ºªeÊX-cJÅV4:°+ Œ\"EðÀg•ë%µÉO‹ºxóÂ(ÓÊÔ‚1Ghô{¤O½‰ïý#\02ÃÉFàAîPKÑ‚/^:è6…ÏÑ‘{eÚfYr:/€P›ó*b-ê5ÓFtUt÷J­?yDe×”#ªÊLÿé!d	€A‚°iÓ¦nyÔõÐ79SµT¨ÈCã£ô \n>lôcLÁ\0\0}A‹*¹ä…^,`[?*3Yüè“ˆ)býÁ•:4Œ!€(CñFŠôP/¼°€*1nÅÙx=º¨£¡\\zQ‚3vhk=ô\0ÅcHS8Â¼\0†f€##Œd‘9ŽÑ|ò#Sâ‡$Lh!€#40F±Óä	˜ÐG\"fH0\r–P cxáˆ)D€SžÈuf¼S\r$ØbâGä¢¥4\'`cAÕ8ƒ`ÉFA´QanDbB!$zÒ\'8ÿ³?	:\"â¹´5óHB\n+~f3©m±\0ë€ò)oÀá*E0N\ZŸ\0ØþáH°!!d€1.[PÍCPóB(:.Ðì]¼‡\'Óþƒï(LH’F\"~©ãÈÀyóK\0ìAn4òŒx‘\rllÊË*BÄ3Ê¼¡\r¾$„//ÖvBëcäAp2¿ƒÏÆ”\"…³¨ÁÈ¯ÁeÚ\rì@Æ€2ÈÖXÀ	=„–K)ÃÌ7V\\“\nRt€,„Î<{\rÇìðÁ´JÂÚøæ`Í	«°Gc#a^K0˜ÿ1%¥\0N\07°á \0°÷Å¹”âÄ%“ì‚…Úl{ˆ5v8\0\'=8Âø¶dÓƒ4¸ Áæ¥¨AJ7©ÀM\0ñ\0[æ2€3Ý 0”³…+þHÀz¶@±I¶,@K,#I\0\Z ñ	\Z;t’€*Œü2Äö/@‘Kqs\r/p¬m¾\'Ú¸’ˆÏt‚Dò›ä’<-ÒˆqÌ5Ô€Ä&¼€0÷xÁö† ŠµÅ\0(`À‡4\"æ#A™\nq­màmÈB„ @[˜.\0“pÐ\0eÌbù Qì¤1„M€Á	;ØÆÊÀ‡@<Ð|C!XŠ¸Y Ò †–ÿB‘24€ .@=áˆíà.Ð\\7á<Üh„%\na\n)P/\0¸A,0§OH`Û¸Av1LÂ`ƒ\0‡.6X‰íÀEø /‚ÓXÇ\'\Z 5JØ^øÙð\r|CÓø%Þq\0 @à£pñF2Œ#›HÄà‚¬HF!\nà„nà¶PDŒ!ÍmÃ((‚.X1ÁdX(+ð+$5@†`	Vº²0E2 ‹\rhmø@ÞÌp4| !hE\"XA€\rXà;Øœ¤Ž\Zh˜òÀ‡€ÿV®-pøÁDÑi¼¡¶¼Á=€àÌ\0XÀ\ZH€/>ÁŠWÄÀ˜Ä,Pw$\0†p<ê€Hð3­$AñƒˆÂ=ÓÀ…€,@ƒ	Úá Äâ¬ E)ìÑN!\0i8ƒžgbÔ¡OhF€á”æ\08èC2ÜcŠo¸ÀðA\0R±œ#KøE¦ñ‚eÜA·Ð@<ÃšÄCÀB\nˆªdR^5«ÙðEú\0 ìÁ–”t\nj1\0€1Ø#\rÔ öØ(%Å`€£•èìªúÏ(àÀ¯Â‚RðoÜ`ÊAbÐXÿ. Ç+|á1„\0°xí#pAœr<a	åAp€Wæ@ÕxAj`€\0á.€%€€8ˆÉÅ-=^à‹VØ5‡8ƒ,p…C,A)A9‘;ØÀ¹¨†^\n4#K \nA‰ˆá-˜A92ÐÌ#Bh…f †%„ © 9ž \0<aÁIÀ6œ{L–Eˆ„®P‰\Z\\‚&Ç‚1„$ˆ°2È‡TÁ“hA’Ð—cõ…€såpo,Cµ~B%êqƒx¸óÅ€’P€84ƒØq@Žq¤c\nÄ žŒ$ŸàÿÎµ„\Zöqø‚BxÂB[%|x¾x„¼l€e\\á\n3¸Âj<ˆ<á\nËˆD›“ðf„,–@3Í\0_ {NÁP×Ø(HÀ>!„Ï€¾¨’Éq…H0\04Vƒ øL» `µ§3ðá+€ú\n-È€š1Pa  2huJ¼¶k^®ËQ\0Xú$\nz†„¡Ü½àÁ)¸Àn.€\0`Æ\ZÖ Œ[¬g`†¾GÀï°›æCº{Á%‡Œ`&À€«›ü~73P\nX|\r{°·Ö`qPœâ#\0Á\ZÎ˜œÚÝ¸µÑ„3`½xÀzqŠš·ûÝ¨ˆ\0*Òá†Ì›ú»E>œà0ù€a•ÿÃ–\0D	¸Aun âêˆÐÖ·®D¸¡	(×¹~õªsc‹(!äðm |†h‚ÜåÎ°s€€À; òÞ„	PAï{üÝv¹bM§H `‰8þñ+˜@ä\'@ùÊ[Brˆ<*_ùÈCÞñrHüIHàØàô¨×†ê!ÀúÖCÀ®=TzÔ[Úé£ J[YúÞ—Þ¦>ð}ßJWšï$\0;'),
	('2011-01-29 07:17:36','My Second Graphics Message',3,2,1,NULL,NULL),
	('2011-01-29 08:54:49','My Series Themes Message',4,3,2,NULL,NULL),
	('2011-01-29 08:53:45','My Style Message',5,4,1,NULL,NULL),
	('2011-01-29 09:12:26','My Second Series Themes Message',6,3,4,NULL,NULL),
	('2011-01-29 13:44:17','My Ordering Message',7,5,1,NULL,NULL),
	('2011-01-29 13:45:24','My payment Message',8,6,1,NULL,NULL),
	('2011-01-30 05:25:16','My Fabrics Message',9,8,4,'NULL',NULL);

/*!40000 ALTER TABLE `POST` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TOPIC
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TOPIC`;

CREATE TABLE `TOPIC` (
  `FORUM_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `TOPIC_ID` int(11) NOT NULL,
  PRIMARY KEY (`TOPIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `TOPIC` WRITE;
/*!40000 ALTER TABLE `TOPIC` DISABLE KEYS */;
INSERT INTO `TOPIC` (`FORUM_ID`,`NAME`,`TOPIC_ID`)
VALUES
	(2,'Graphics',2),
	(2,'Series themes',3),
	(2,'Style',4),
	(3,'Ordering',5),
	(3,'Payment',6),
	(2,'BogusFabric',7),
	(4,'Fabrics',8);

/*!40000 ALTER TABLE `TOPIC` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table USER
# ------------------------------------------------------------

DROP TABLE IF EXISTS `USER`;

CREATE TABLE `USER` (
  `CLASS_NAME` varchar(10) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `PASSWORD` varchar(12) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(12) NOT NULL,
  `SIGNATURE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` (`CLASS_NAME`,`EMAIL`,`FIRST_NAME`,`LAST_NAME`,`PASSWORD`,`USER_ID`,`USERNAME`,`SIGNATURE`)
VALUES
	('Moderator','kajohansen.1@gmail.com','Karl Andreas','Johansen','kajohansen',1,'kajohansen','Kalle'),
	('NormalUser','audriis@hotmail.com','Aud','Riis','audriis',2,'audriis',NULL),
	('NormalUser','johannes@colab.no','Johannes','Riis','johannes',3,'johannes',NULL),
	('NormalUser','hakon@colab.no','Håkon','Riis','hariis',4,'hariis',NULL),
	('Moderator','admin@colab.no','Admin','Istrator','admin',5,'admin',NULL),
	('NormalUser','unknown@user.com','Unknown','User','unknownuser',6,'unknownuser',NULL),
	('NormalUser','bogus@user.com','Bogus','User','bogususer',8,'bogususer',NULL);

/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Dumping routines (PROCEDURE) for database 'WOUserForum'
--
DELIMITER ;;
/*!50003 DROP PROCEDURE IF EXISTS `topicsCount` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `topicsCount`()
BEGIN
SELECT COUNT(*) FROM FORUM,TOPIC WHERE FORUM.FORUM_ID=TOPIC.FORUM_ID GROUP BY FORUM.FORUM_ID;
END */;;
/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
