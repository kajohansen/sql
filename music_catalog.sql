-- phpMyAdmin SQL Dump
-- version 2.8.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 26, 2006 at 11:44 PM
-- Server version: 4.0.26
-- PHP Version: 4.4.4
-- 
-- Database: `music_catalog`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `album_alb`
-- 

CREATE TABLE `album_alb` (
  `id_alb` int(6) NOT NULL auto_increment,
  `idart_alb` int(11) NOT NULL default '0',
  `title_alb` varchar(50) NOT NULL default '',
  `release_year_alb` int(4) NOT NULL default '0',
  `cover_alb` varchar(70) NOT NULL default '',
  `rate_alb` float default NULL,
  `votes_alb` int(11) default NULL,
  PRIMARY KEY  (`id_alb`)
) TYPE=MyISAM AUTO_INCREMENT=47 ;

-- 
-- Dumping data for table `album_alb`
-- 

INSERT INTO `album_alb` (`id_alb`, `idart_alb`, `title_alb`, `release_year_alb`, `cover_alb`, `rate_alb`, `votes_alb`) VALUES (1, 15, 'X&Y', 2005, 'coldplay_XandY.jpg', NULL, NULL),
(2, 15, 'A Rush Of Blood To The Head', 2002, 'coldplay_A Rush Of Blood To The Head.jpg', NULL, NULL),
(3, 15, 'Parachutes', 2000, 'coldplay_Parachutes.jpg', NULL, NULL),
(4, 14, 'All That You Can''t Leave Behind', 2000, 'u2_All That You Can''t Leave Behind.jpg', NULL, NULL),
(5, 14, 'How To Dismantle An Atomic Bomb', 2004, 'u2_How To Dismantle An Atomic Bomb.jpg', NULL, NULL),
(6, 14, 'The Joshua Tree', 1990, 'u2_The Joshua Tree.jpg', NULL, NULL),
(7, 14, 'Achtung Baby', 1991, 'u2_Achtung Baby.jpg', NULL, NULL),
(8, 14, 'The Best Of 1980-1990', 1998, 'u2_The Best Of 1980-1990.jpg', NULL, NULL),
(9, 14, 'The Best Of 1990-2000', 2002, 'u2_The Best Of 1990-2000.jpg', NULL, NULL),
(10, 13, 'The Writing''s On The Wall', 1999, 'destiny''s child_The Writing''s On The Wall.jpg', NULL, NULL),
(11, 13, 'Destiny Fulfilled', 2004, 'destiny''s child_Destiny Fulfilled.jpg', NULL, NULL),
(12, 13, 'Survivor', 2001, 'destiny''s child_Survivor.jpg', NULL, NULL),
(13, 13, '#1''s', 2005, 'destiny''s child_number 1''s.jpg', NULL, NULL),
(14, 12, 'Wherever You Are', 2005, 'third day_Wherever You Are.jpg', NULL, NULL),
(15, 12, 'Wire', 2004, 'third day_Wire.jpg', NULL, NULL),
(16, 12, 'Come Together', 2001, 'third day_Come Together.jpg', NULL, NULL),
(17, 11, 'Thankful', 2003, 'Kelly Clarkson_Thankful.jpg', NULL, NULL),
(18, 11, 'Breakaway', 2004, 'Kelly Clarkson_Breakaway.jpg', NULL, NULL),
(19, 10, 'Yourself Or Someone Like You', 1996, 'Matchbox Twenty_Yourself Or Someone Like You.jpg', NULL, NULL),
(20, 10, 'Mad Season', 2000, 'Matchbox Twenty_Mad Season.jpg', NULL, NULL),
(21, 10, 'More Than You Think You Are', 2002, 'Matchbox Twenty_More Than You Think You Are.jpg', NULL, NULL),
(22, 9, 'Me And My Gang', 2006, 'Rascal Flatts_Me And My Gang.jpg', NULL, NULL),
(23, 9, 'Feels Like Today', 2004, 'Rascal Flatts_Feels Like Today.jpg', NULL, NULL),
(24, 9, 'Melt', 2002, 'Rascal Flatts_Melt.jpg', NULL, NULL),
(25, 8, 'Fijacion Oral, Vol.1', 2005, 'shakira_Fijacion Oral, Vol.1.jpg', NULL, NULL),
(26, 8, 'Oral Fixation, Vol.2', 2005, 'shakira_Oral Fixation, Vol.2.jpg', NULL, NULL),
(27, 8, 'Laundry Service', 2001, 'shakira_Laundry Service.jpg', NULL, NULL),
(28, 7, 'Monkey Business', 2005, 'The Black Eyed Peas_Monkey Business.jpg', NULL, NULL),
(29, 7, 'Bridging The Gap', 2000, 'The Black Eyed Peas_Bridging The Gap.jpg', NULL, NULL),
(30, 6, 'Have A Nice Day', 2005, 'Bon Jovi_Have A Nice Day.jpg', NULL, NULL),
(31, 6, 'This Left Feels Right', 2003, 'Bon Jovi_This Left Feels Right.jpg', NULL, NULL),
(32, 6, 'Bounce', 2002, 'Bon Jovi_Bounce.jpg', NULL, NULL),
(33, 6, 'Cross Road', 1994, 'Bon Jovi_Cross Road.jpg', NULL, NULL),
(34, 5, 'Missundaztood', 2001, 'pink_Missundaztood.jpg', NULL, NULL),
(35, 5, 'Can''t Take Me Home', 2000, 'pink_Can''t Take Me Home.jpg', NULL, NULL),
(36, 4, 'Escape', 2001, 'Enrique Iglesias_Escape.jpg', NULL, NULL),
(37, 4, 'Seven', 2003, 'Enrique Iglesias_Seven.jpg', NULL, NULL),
(38, 4, 'Quizas', 2002, 'Enrique Iglesias_Quizas.jpg', NULL, NULL),
(39, 3, 'My Love Is Your Love', 1998, 'Whitney Houston_My Love Is Your Love.jpg', NULL, NULL),
(40, 3, 'Just Whitney...', 2002, 'Whitney Houston_Just Whitney....jpg', NULL, NULL),
(41, 3, 'One Wish: The Holiday Album', 2003, 'Whitney Houston_One Wish-The Holiday Album.jpg', NULL, NULL),
(42, 2, 'Help!', 1988, 'The Beatles_Help!.jpg', NULL, NULL),
(43, 2, 'Yellow Submarine', 1990, 'The Beatles_Yellow Submarine.jpg', NULL, NULL),
(44, 2, 'Let It Be', 1990, 'The Beatles_Let It Be.jpg', NULL, NULL),
(45, 2, 'Revolver', 1988, 'The Beatles_Revolver.jpg', NULL, NULL),
(46, 1, 'Back To Bedlam', 2005, 'James Blunt_Back To Bedlam.jpg', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `artist_art`
-- 

CREATE TABLE `artist_art` (
  `id_art` int(11) NOT NULL auto_increment,
  `name_art` varchar(250) NOT NULL default '',
  `picture_art` varchar(30) NOT NULL default '',
  `desc_art` text NOT NULL,
  PRIMARY KEY  (`id_art`)
) TYPE=MyISAM AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `artist_art`
-- 

INSERT INTO `artist_art` (`id_art`, `name_art`, `picture_art`, `desc_art`) VALUES (1, 'James Blunt', 'James Blunt.png', 'James Blunt (born James Hillier Blount, 22 February 1974) is a British musician whose debut album, Back To Bedlam, and single releases — especially the number one hit "You''re Beautiful" — brought him to fame in 2005. His style is a mix of jazz, Northern soul, pop and soft rock. Along with vocals, Blunt plays a wide variety of instruments including the piano, guitar, organ, marimba, and mellotron.\r\nHe is signed to Linda Perry''s American label Custard, and became the first British artist to top the American singles chart in nearly a decade when his song "You''re Beautiful" reached number one on the Billboard Hot 100 in 2006. The last British artist to do so had been Elton John in 1997.'),
(2, 'The Beatles', 'The Beatles.jpg', 'The Beatles were a pop and rock music group from Liverpool, England, who continue to be held in the very highest regard for their artistic achievements, their huge commercial success, and their groundbreaking role in the history of popular music. Comprising John Lennon, Paul McCartney, George Harrison and Ringo Starr, the group shattered many sales records and charted more than fifty top 40 hit singles. They were the first British band to achieve major ongoing success in the United States, scoring twenty-seven #1 hits in the USA & UK alone, becoming the biggest musical act of the twentieth century. EMI estimated in 1985 that the band had sold over a billion records worldwide[1]. Their ballad "Yesterday" — written and sung by Paul McCartney (though always officially credited as a band recording written by Lennon-McCartney) — is the most-covered song in the history of recorded music (about 2,500 versions of it exist).'),
(3, 'Whitney Houston', 'Whitney Houston.png', 'Whitney Elizabeth Houston (born August 9, 1963) is an American pop singer, dramatic-soprano, songwriter, actress, and film producer. She is one of the most successful and popular singers of the 1980s, 1990s and 2000s. Her style of singing has influenced artists such as Kelly Price, Mariah Carey, Christina Aguilera, and Deborah Cox among others.\r\n\r\nHouston has sold over 100 million albums, which is notable in that she achieved that milestone on relatively few releases. She is also one of a handful of Black artists to receive heavy rotation on early MTV in the 1980s and her success, along with that of other ''80s artists such as Michael Jackson, Prince, and Janet Jackson, undoubtly opened the door for the network to air more videos by Black artists starting in the 1990s. Houston has won twenty-one American Music Awards, a record for a solo artist, and six Grammys.'),
(4, 'Enrique Iglesias', 'Enrique Iglesias.png', 'Enrique Iglesias (born Enrique Miguel Iglesias on May 8, 1975, in Madrid, Spain) is a Miami-based singing sensation and multi-million-album seller. He is the son of famous Spanish singer Julio Iglesias and Spanish-mestiza Philippine socialite and Hola! magazine journalist Isabel Preysler. He also is the brother of Chabeli Iglesias, Julio José Iglesias, Tamara Falco, and Ana Boyer.\r\nIglesias first performed while in high school, in the musical Hello Dolly. While attending the University of Miami, he was auditioned by his future manager, who was impressed. Using the pseudonym Enrique Martínez, the two promoted his demos across various record labels. Months later, Iglesias was signed by Fonovisa and went to Toronto to record his first album in total anonymity.'),
(5, 'Pink', 'Pink.jpg', 'Alecia Beth Moore (born September 8, 1979 in Doylestown, Pennsylvania), better known by her stage name P!NK (also written as Pink), is an American singer-songwriter who gained prominence in early January of 2000. She is most often recognized by her unique, unorthodox fashion sense and soulful sound. Named #12 in the UK Music Hall of Fame of the 21st century, her vocal skills have often been compared to that of the late Janis Joplin, whom Pink cites as one of her idols. She is the daughter of James and Judy Moore, and is of Irish and German descent on her father''s side, and of Lithuanian descent on her mother''s. Her father played guitar and sang songs for young Alecia as she grew up, who aspired from early age that she would one day become a rock star.'),
(6, 'Bon Jovi', 'Bon Jovi.png', 'Bon Jovi is a Rock and Roll band from New Jersey that has sold more than 33 million albums in the U.S. alone during the 1980s, 1990s and 2000s, while over 100,000,000 albums worldwide, and played live concerts in major cities in Asia, Europe, Australia, Canada and South America, in addition to a large number of cities in the USA. Bon Jovi has sometimes been classified as Hair Metal — sometimes even regarded as the form''s prime shapers — but has proved much more durable than most groups so labeled. It has been influential, pioneering the "MTV Unplugged" style.'),
(7, 'The Black Eyed Peas', 'The Black Eyed Peas.jpg', 'The Black Eyed Peas are an American hip-hop (musical styles: crossover rap/hip hop and alternative rap/hip hop) group from Los Angeles, California, who have enjoyed international pop success. The group is currently composed of will.i.am, Apl.de.ap, Taboo, and Fergie.\r\nThe Black Eyed Peas dates back to 1989, when eighth graders will.i.am (Born: Will Adams) and apl.de.ap (Born: Allen Pineda) met and began rapping and performing together around Los Angeles. By 1992, the 16 year-olds had developed a name for themselves. The pair signed to Ruthless Records (run by Eazy-E) after catching the attention of Eazy-E manager Jerry Heller''s nephew. Along with another friend of theirs, Dante Santiago, they called their trio Atban Klann. Their debut album was never released because Ruthless did not consider the positive themes reflected in the group''s music to be marketable to their audience.'),
(8, 'Shakira', 'Shakira.jpg', 'Shakira Isabel Mebarak Ripoll (born February 2, 1977), better known simply as Shakira, is a five-time Grammy winner Latin pop singer and songwriter.\r\nShakira was born in Barranquilla, Colombia to a Roman Catholic family, to a mother of Spanish and Italian descent and an American-born father of Lebanese background. Shakira is a native Spanish speaker, and has sung in English, Portuguese, Arabic, and French, with varying success.\r\nHerself a devout Roman Catholic, she was received by Pope John Paul II who nominated her a Goodwill ambassador in 1998.'),
(9, 'Rascal Flatts', 'Rascal Flatts.jpg', 'Rascal Flatts is an American country music group comprised of lead vocalist Gary LeVox (born July 10, 1970 in Columbus, Ohio), bassist Jay DeMarcus (born April 27, 1971 in Columbus, Ohio) and electric guitarist Joe Don Rooney (born September 13, 1975 in Baxter Springs, Kansas). LeVox and DeMarcus are second cousins.\r\nIn May of 2005 they performed their hit "Bless the Broken Road" live on the popular television program American Idol with idol Carrie Underwood.\r\nIn December of that same year, the Rascal Flatts''s hit "Bless the Broken Road" was nominated for three Grammy awards including Song of the Year, Best Country Performance by a Duo or Group with Vocal, and Best Country Song. They won in the Best Country Song category.'),
(10, 'Matchbox Twenty', 'Matchbox Twenty.jpg', 'matchbox twenty (originally Matchbox 20) is a rock band from Orlando, Florida. The current members of the band are Rob Thomas, vocals; Brian Yale, bass; Paul Doucette, drums; and Kyle Cook, lead guitar. Thomas, Yale and Doucette had played the band Tabitha''s Secret in Orlando, Florida before splitting apart to form Matchbox 20 with Gaynor and Cook.\r\nThey released their first album, yourself or someone like you in 1996. While their first single, "Long Day", was a rock radio-only smash, the album soon spun off several Top 40 hit singles throughout 1997 and 1998, including "Push", "3 A.M.", "Real World" and "Back 2 Good". The album eventually went on to sell over 12 million copies in the US alone, earning diamond status.\r\nBefore recording their next album, Rob Thomas wrote a song for Carlos Santana''s comeback album, Supernatural, on which he sang vocals. The song, "Smooth", became the album''s lead single and a gigantic smash hit in 1999, and Thomas would earn several Grammys for writing it.'),
(11, 'Kelly Clarkson', 'Kelly Clarkson.jpg', 'Kelly Brianne Clarkson (born April 24, 1982) is a Grammy award winner, American pop and rock singer-songwriter, and occasional actress. Clarkson rose to prominence after winning the first season of the reality-television series American Idol in 2002. Signed to RCA Records, she was initially marketed as a pop musician with her commercially successful debut album Thankful (2003). Clarkson took more creative control over her music and developed a more rock-oriented image for the release of her second album Breakaway (2004), which yielded the highest sales of her career and received two Grammy Awards.'),
(12, 'Third Day', 'Third Day.jpg', 'Third Day is a Christian rock band formed in Atlanta, Georgia during the 1990s. The band was founded by lead singer Mac Powell and guitarist Mark Lee.The other band members are as follows: Tai Anderson, bass ; David Carr, drums; Brad Avery, guitars. The name is a reference to the biblical account of Jesus rising from the dead on the third day following his crucifixion.\r\nThird Day was the first band signed to Reunion Records in 1995, where they released their eponymous first album. They have since followed it with seven additional albums and one mini-album. Beginning with Southern Tracks, Third Day signed with Essential Records. The group won both the 2003 and the 2005 Grammy Award for Best Rock Gospel Album for Come Together and Wire, respectively.'),
(13, 'Destiny''s Child', 'Destiny''s Child.jpg', 'Destiny''s Child was an American R&B group. Originally a duo and later a quartet, the group eventually became a trio, whose most enduring and famous members were Beyoncé Knowles, Kelly Rowland and Michelle Williams. The group has record sales of 50 million albums and singles [1] and they are the best-selling all-female group of all time, according to the World Music Awards. [2] On June 12, 2005 they announced on tour in Barcelona, Spain that they would no longer perform together, instead pursuing individual careers in music, theater, television and film.'),
(14, 'U2', 'U2.jpg', 'U2 is an Irish rock band featuring Bono (Paul David Hewson) on vocals, guitar and harmonica, The Edge (David Howell Evans) on guitar, keyboards and vocals, Adam Clayton on bass, and Larry Mullen, Jr. on drums.\r\nU2 is the biggest rock band in the world today and has maintained this level of popularity since the late 1980''s. According to the RIAA, they have sold approximately 50.5 million albums in the U.S. and over 150 million worldwide, had six #1 albums in the US and nine #1 albums in the UK and are widely considered one of the most successful groups of all time. The band has won 22 Grammy awards, second only to Stevie Wonder among pop artists. The band is also very politically active in human rights causes, such as the Make Poverty History campaign as well as Live Aid, Live 8, and the campaign spearheaded by Bono, DATA (Debt, AIDS, Trade in Africa).'),
(15, 'Coldplay', 'Coldplay.jpg', 'Coldplay is a post-Britpop/alternative rock band from London, England well known for their rock melodies and introspective lyrics.\r\nThe band consists of:\r\n~ Chris Martin: lead vocals, piano/keyboard, guitar.\r\n~ Jon Buckland: guitar, harmonica, backing vocals.\r\n~ Guy Berryman: bass guitar, synthesizer, harmonica, backing vocals.\r\n~ Will Champion: drums/percussion, piano, backing vocals. \r\nColdplay''s early material was reminiscent of artists such as Radiohead, Oasis, Jeff Buckley, Travis and Kate Bush. Martin has stated that he has been hugely influenced by U2.');
