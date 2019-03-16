-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2019 at 03:11 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

DROP TABLE IF EXISTS `tbl_arating`;
CREATE TABLE IF NOT EXISTS `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL,
  PRIMARY KEY (`arating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

DROP TABLE IF EXISTS `tbl_audio`;
CREATE TABLE IF NOT EXISTS `tbl_audio` (
  `audio_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `audio_title` varchar(125) DEFAULT NULL,
  `audio_year` varchar(5) DEFAULT NULL,
  `audio_storyline` text,
  `audio_artist` varchar(75) DEFAULT NULL,
  `audio_cover` varchar(75) DEFAULT 'temp_cover.jpg',
  `audio_src` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`audio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_title`, `audio_year`, `audio_storyline`, `audio_artist`, `audio_cover`, `audio_src`) VALUES
(1, '1979', '1995', '\"1979\" is a song by American alternative rock band the Smashing Pumpkins. Released in 1996 as the second single from their third studio album, Mellon Collie and the Infinite Sadness, \"1979\" was written by frontman Billy Corgan, and features loops and samples that were uncharacteristic of previous Smashing Pumpkins songs.[1] The song was written as a coming of age story by Corgan. In the year 1979, Corgan was 12 and this is what he considered his transition into adolescence.', 'The Smashing Pumpkins', 'pumpkins.jpg', '1979.mp3'),
(2, 'Blurry', '2001', 'Puddle of Mudd\'s lead singer Wes Scantlin wrote this about his desire to be a good father and spend quality time with his son, Jordan. \"Blurry\" angered Jordan\'s mother when she first heard it. She and Scantlin are separated. According to Scantlin, \"Blurry\" facilitated discussion of unresolved issues within their marriage and improved their relationship.', 'Puddle of Mudd', 'mudd.jpg', 'Blurry.mp3'),
(3, 'Bombtrack', '1993', '\"Bombtrack\" is a song by American rap metal band Rage Against the Machine that opens their self-titled debut album. Like most of Rage Against the Machine\'s songs, the song\'s lyrics discuss social inequality, proclaiming that \"landlords and power whores\" were going to \"burn\". The riffs were composed by Rage Against the Machine bassist Tim Commerford. Impressed by their song, Rage Against the Machine named it Bombtrack in reference to hip hop terminology where the word \'bomb\' means \'the greatest\', making the song title literally mean \'the greatest track\'.', 'Rage Against the Machine', 'rage.jpg', 'BombTrack.mp3'),
(4, 'Companion', '1999', 'Wide Mouth Mason is a Canadian blues-based rock band, consisting of Shaun Verreault (Lead Vocals, Guitar), Safwan Javed (Percussion, Backing Vocals), and Gordie Johnson (Bass, Backing Vocals). Former bassist Earl Pereira was also co-founder of Wide Mouth Mason. The band hails from Saskatoon, Saskatchewan and has been active since 1995.', 'Wide Mouth Mason', 'companion.jpg', 'Companion.mp3'),
(5, 'Golden Brown', '1981', '\"Golden Brown\" is a song by the English rock band the Stranglers. It was released as a 7\" single in December 1981 in the United States and in January 1982 in the United Kingdom, on Liberty. It was the second single released from the band\'s sixth album La folie. It peaked at No. 2 in the UK Singles Chart, the band\'s highest ever placing in that chart.', 'The Stranglers', 'goldenbrown.jpg', 'GoldenBrown.mp3'),
(6, 'Hard Sun', '2007', 'From the Into the Wild soundtrack, performed by Eddie Vedder.', 'Eddie Vedder', 'hardsun.jpg', 'HardSun.mp3'),
(7, 'Fookin in the Bushes', '2000', 'From the Snatch soundtrack, Fookin in the Bushes was released on the Standing on the Shoulder of Giants, the fourth studio album by English rock band Oasis, released on 28 February 2000 by Big Brother Records. It is the 16th fastest selling album in UK chart history, selling over 310,000 copies in its first week. Standing on the Shoulder of Giants has been certified double platinum by the British Phonographic Industry[1] and has sold around 208,000 copies in the US.', 'Oasis', 'fookin.jpg', 'InTheBushes.mp3'),
(8, 'Morpheus VS Neo', '1996', 'From the Matrix soundtrack. Neo and Morpheus kung fu fighting!', 'The Matrix soundtrack', 'morpheusneo.jpg', 'MorpheusVNeo.mp3'),
(9, 'Sail', '2010', '\"Sail\" is a song by American rock band Awolnation. It was released as a single on November 8, 2010. The song was first featured on the band\'s debut extended play, Back from Earth (2010), and was later featured on their debut album, Megalithic Symphony (2011). The song was written and produced in Venice, California by group member Aaron Bruno, with Kenny Carkeet performing the audio engineering', 'AWOL Nation', 'AWOL.jpg', 'Sail.mp3'),
(10, 'Interstate Love Song', '1994', '\"Interstate Love Song\" is a song by the American rock band Stone Temple Pilots. Released in 1994, the song is from the band\'s second studio album, Purple. Considered one of the band\'s biggest hits, \"Interstate Love Song\" reached number one on the Mainstream Rock Tracks chart on September 17, 1994.', 'Stone Temple Pilots', 'STP.jpg', 'STP_Interstate_Love_Song.mp3'),
(11, 'Street Spirit', '1996', 'Street Spirit (Fade Out)\" is a song by the English alternative rock band Radiohead. It is the final track on their second album, The Bends, released in 1995. It was released as a single and reached number five on the UK Singles Chart, Radiohead\'s highest chart position up to that point. It has been covered by Peter Gabriel and the Darkness. In 2008, the song was featured on Radiohead: The Best Of.', 'Radiohead', 'temp_cover.jpg', 'StreetSpirit.mp3'),
(12, 'Buddy Holly', '1994', '\"Buddy Holly\" is a song by the American rock band Weezer, written by Rivers Cuomo. It was released as the second single from the band\'s debut album Weezer (The Blue Album) in 1994. The single was released on what would have been Buddy Holly\'s 58th birthday. The lyrics reference the song\'s 1950s namesake and actress Mary Tyler Moore. It reached #2 and #34 on the US Modern Rock Tracks chart and the US Mainstream Rock Tracks chart, respectively.', 'Weezer', 'BuddyHolly.jpg', 'weezer.mp3'),
(13, 'What It\'s Like', '1997', '\"What It\'s Like\" is a song by American musician Everlast. It was released in September 1998 as the lead single from his album Whitey Ford Sings the Blues. The song is typical of the style Everlast embraced after leaving hip hop trio House of Pain, being a combination of rock, hip-hop and blues incorporating characterization and empathy towards impoverished protagonists.', 'Everlast', 'everlast.jpg', 'WhatItsLike.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio_genre`
--

DROP TABLE IF EXISTS `tbl_audio_genre`;
CREATE TABLE IF NOT EXISTS `tbl_audio_genre` (
  `audio_genre_id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `audio_id` varchar(50) NOT NULL,
  `genre_id` varchar(50) NOT NULL,
  PRIMARY KEY (`audio_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio_genre`
--

INSERT INTO `tbl_audio_genre` (`audio_genre_id`, `audio_id`, `genre_id`) VALUES
(1, '1', '17'),
(2, '2', '17'),
(3, '3', '18'),
(4, '3', '19'),
(5, '4', '17'),
(6, '5', '17'),
(7, '6', '17'),
(8, '7', '17'),
(9, '8', '17'),
(10, '9', '17'),
(11, '9', '20'),
(12, '10', '17'),
(13, '11', '17'),
(14, '12', '17'),
(15, '12', '21'),
(16, '13', '17'),
(17, '13', '18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio_ratings`
--

DROP TABLE IF EXISTS `tbl_audio_ratings`;
CREATE TABLE IF NOT EXISTS `tbl_audio_ratings` (
  `audio_rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `audio_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`audio_rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_audio_ratings`
--

INSERT INTO `tbl_audio_ratings` (`audio_rating_id`, `audio_id`, `rating_number`, `comment`) VALUES
(1, 1, 3, 'dafsf'),
(2, 1, 3, 'dasfsaf'),
(3, 1, 3, 'fdsafasadsfasf'),
(4, 1, 4, 'fsafsa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

DROP TABLE IF EXISTS `tbl_cast`;
CREATE TABLE IF NOT EXISTS `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cast_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cast_id`),
  UNIQUE KEY `cast_name` (`cast_name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_auth`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, NULL, 'Loved it. Chris Pratt is my hero! I LOVE YOU STAR LORD!!', '2018-03-26 19:08:41', 1, 5),
(2, NULL, 'Not quite as good as the first Guardians, but still WAY better that any DC movie... ', '2018-03-26 19:09:57', 1, 4),
(3, NULL, 'It sucked.', '2018-04-01 14:54:32', 1, 1),
(4, NULL, 'It was amazing. I really liked this way better than any DC movie that\'s ever been made, EVER.\n\nCuz DC movies are garbage.', '2018-04-01 14:55:29', 1, 3),
(5, NULL, 'I thought Logan was great.THIS is the way you do comic book dystopia.', '2018-04-01 14:56:55', 3, 4),
(6, NULL, 'Way too violent. I thought Hugh Jackman would at least do a song and dance, but was VERY disappointed.', '2018-04-01 14:57:35', 3, 1),
(7, NULL, 'OMG i can\'t get enough Deadpool.. what a great movie', '2018-04-01 15:11:30', 7, 5),
(8, NULL, 'I really liked this. Prof X made me sad tho. What a way to go...', '2018-04-01 15:51:58', 3, 4),
(9, NULL, 'afsdfsdfa', '2018-04-02 20:59:20', 3, 3),
(10, NULL, 'the most amazingest movie ever to amaze!', '2018-04-07 23:24:41', 1, 3),
(11, NULL, 'best movie ever', '2018-04-07 23:25:17', 1, 5),
(12, NULL, 'undefined', '2018-04-08 17:58:27', 9, 5),
(13, NULL, 'undefined', '2018-04-08 18:01:58', 9, 1),
(14, NULL, 'undefined', '2018-04-08 18:05:54', 1, 4),
(15, NULL, 'undefined', '2018-04-08 18:07:54', 1, 5),
(16, NULL, 'Deadpool smashed quite a few boundaries', '2018-04-08 18:08:45', 7, 5),
(17, NULL, 'last test to see if this works', '2018-04-08 18:09:23', 7, 3),
(18, NULL, 'this looked interesting and then was a bit of a letdown', '2018-04-08 19:03:13', 4, 3),
(19, NULL, 'i like pigs so I didn\'t really like this movie.', '2018-04-08 19:10:07', 4, 1),
(20, NULL, 'pigs are delicious so i think this movie was fantastic. and made me hungry.', '2018-04-08 19:13:06', 4, 3),
(21, NULL, 'i like pork so hooray for super pigs.', '2018-04-08 19:23:53', 4, 3),
(22, NULL, 'I DON\'T like pork so super pigs = boooo!', '2018-04-08 19:25:19', 4, 0),
(23, NULL, 'I ALSO don\'t like super pigs.', '2018-04-08 19:27:19', 4, 1),
(24, NULL, 'I hate super pigs. AND this movie.', '2018-04-08 19:30:01', 4, 0),
(25, NULL, 'I hate super pigs. AND this movie.', '2018-04-08 19:30:32', 4, 1),
(26, NULL, 'I kind of like it. but mostly hated it.', '2018-04-08 19:32:31', 4, 1),
(27, NULL, 'fantabolous', '2018-04-09 15:18:16', 1, 4),
(28, NULL, 'asdfa', '2018-04-27 14:28:12', 5, 3),
(29, NULL, 'afasd', '2018-04-27 15:30:23', 5, 0),
(30, NULL, 'asdfasd', '2018-04-27 16:18:01', 3, 0),
(31, NULL, 'ddddd', '2018-04-27 16:18:11', 3, 0),
(32, NULL, 'vzxvc', '2018-04-27 16:27:32', 5, 0),
(33, NULL, 'dfasdf', '2018-04-27 16:38:46', 2, 0),
(34, NULL, 'sfasdf', '2018-04-27 16:38:49', 2, 0),
(35, NULL, 'aasd', '2018-04-27 16:45:21', 9, 0),
(36, '', 'sadfadsfasdfasdf', '2018-04-27 16:51:40', 5, 3),
(37, NULL, 'adfasdf', '2018-04-27 16:56:50', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

DROP TABLE IF EXISTS `tbl_country`;
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` smallint(3) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

DROP TABLE IF EXISTS `tbl_director`;
CREATE TABLE IF NOT EXISTS `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `director_name` varchar(250) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport'),
(17, 'Rock'),
(18, 'Rap'),
(19, 'Heavy metal'),
(20, 'Electronic'),
(21, 'Pop'),
(22, 'Kid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

DROP TABLE IF EXISTS `tbl_language`;
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(250) NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_release` varchar(125) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'guardians2.jpg', 'Guardians of the Galaxy Vol. 2', '2017', '2h 16m', 'The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill&rsquo;s true parentage.', 'Guardians2.mp4', 'May 5, 2017'),
(2, 'dunkirk.jpg', 'Dunkirk', '2017', '1h 46m', 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German army and evacuated during a fierce battle in World War II.', 'Dunkirk.mp4', 'July 21, 2017'),
(3, 'logan.jpg', 'Logan', '2017', '2h 17m', 'In the near future, a weary Logan cares for an ailing Professor X, somewhere on the Mexican border. However, Logan&rsquo;s attempts to hide from the world, and his legacy, are upended when a young mutant arrives, pursued by dark forces.', 'Logan.mp4', 'March 3,2017'),
(4, 'okja.jpg', 'Okja', '2017', '2h', ' Meet Mija, a young girl who risks everything to prevent a powerful, multi-national company from kidnapping her best friend - a fascinating animal named Okja. ', 'Okja.mp4', 'June 28,2017'),
(5, 'beauty.jpg', 'Beauty and the Beast', '2017', '2h 9min', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love. ', 'Beauty.mp4', 'March 17, 2017'),
(6, 'hacksaw.jpg', 'Hacksaw Ridge', '2016', '2h 19m', 'WWII American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.', 'Hacksaw.mp4', 'November 4, 2016'),
(7, 'deadpool.jpg', 'Deadpool', '2016', '1h 48m', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', 'Deadpool.mp4', 'Febuary 12, 2016'),
(8, 'arrival.jpg', 'Arrival', '2016', '1h 56m', 'When twelve mysterious spacecraft appear around the world, linguistics professor Louise Banks is tasked with interpreting the language of the apparent alien visitors.', 'Arrival.mp4', 'November 11, 2016'),
(9, 'eddie.jpg', 'Eddie the Eagle', '2016', '1h 46m', 'The story of Eddie Edwards, the notoriously tenacious British underdog ski jumper who charmed the world at the 1988 Winter Olympics.', 'Eddie.mp4', 'Febuary 26, 2016'),
(10, 'trolls.jpg', 'Trolls', '2016', '1h 32m', 'After the Bergens invade Troll Village, Poppy, the happiest Troll ever born, and the curmudgeonly Branch set off on a journey to rescue her friends.', 'Trolls.mp4', 'November 4, 2016'),
(11, 'revenant.jpg', 'The Revenant', '2015', '2h 36m', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.', 'Revenant.mp4', 'January 8, 2015'),
(12, 'brooklyn.jpg', 'Brooklyn', '2015', '1h 57m', 'An Irish immigrant lands in 1950s Brooklyn, where she quickly falls into a romance with a local. When her past catches up with her, however, she must choose between two countries and the lives that exist within.', 'Brooklyn.mp4', 'November 25, 2015'),
(13, 'walk.jpg', 'The Walk', '2015', '2h 3m', 'In 1974, high-wire artist Philippe Petit recruits a team of people to help him realize his dream: to walk the immense void between the World Trade Center towers.', 'Walk.mp4', 'October 9, 2015'),
(14, 'colonia.jpg', 'Colonia', '2015', '1h 46m', 'A young woman&rsquo;s desperate search for her abducted boyfriend that draws her into the infamous Colonia Dignidad, a sect nobody has ever escaped from.', 'Colonia.mp4', 'April 15, 2015'),
(15, 'force.jpg', 'Star Wars: The Force Awakens', '2015', '2h 16m', 'Three decades after the Empire&rsquo;s defeat, a new threat arises in the militant First Order. Stormtrooper defector Finn and spare parts scavenger Rey are caught up in the Resistance&rsquo;s search for the missing Luke Skywalker.', 'Force.mp4', 'December 18, 2015'),
(16, 'whiplash.jpg', 'Whiplash', '2014', '1h 47m', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 'Whiplash.mp4', 'October 15, 2014'),
(17, 'guardians.jpg', 'Guardians of the Galaxy', '2014', '2h 1m', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.', 'Guardians.mp4', 'August 1, 2014'),
(18, 'donjon.jpg', 'Don Jon', '2013', '1h 30m', 'A New Jersey guy dedicated to his family, friends, and church, develops unrealistic expectations from watching porn and works to find happiness and intimacy with his potential true love.', 'donjon.mp4', 'September 27, 2013'),
(19, 'gravity.jpg', 'Gravity', '2013', '1h 31m', 'Two astronauts work together to survive after an accident which leaves them alone in space.', 'Gravity.mp4', 'October 4, 2013'),
(20, 'pi.jpg', 'Life of Pi', '2012', '2h 7m', 'A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.', 'Pi.jpg', 'November 21, 2012'),
(21, 'silver.jpg', 'Silver Linings Playbook', '2012', '2h 2m', 'After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.', 'Silver.jpg', 'December 25, 2012');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_ratings`
--

DROP TABLE IF EXISTS `tbl_movie_ratings`;
CREATE TABLE IF NOT EXISTS `tbl_movie_ratings` (
  `movie_rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`movie_rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie_ratings`
--

INSERT INTO `tbl_movie_ratings` (`movie_rating_id`, `movies_id`, `rating_number`, `comment`) VALUES
(1, 1, 4, 'test'),
(2, 1, 4, 'afdsf'),
(3, 1, 3, 'fasf'),
(4, 1, 3, 'asdfasf'),
(5, 2, 3, 'asfaf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

DROP TABLE IF EXISTS `tbl_mov_cast`;
CREATE TABLE IF NOT EXISTS `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_cast_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

DROP TABLE IF EXISTS `tbl_mov_country`;
CREATE TABLE IF NOT EXISTS `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

DROP TABLE IF EXISTS `tbl_mov_director`;
CREATE TABLE IF NOT EXISTS `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 3, 22),
(38, 5, 22),
(39, 6, 22),
(40, 8, 22),
(41, 9, 22),
(42, 10, 22),
(43, 17, 22),
(44, 18, 22),
(45, 19, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

DROP TABLE IF EXISTS `tbl_mov_lang`;
CREATE TABLE IF NOT EXISTS `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

DROP TABLE IF EXISTS `tbl_mov_studio`;
CREATE TABLE IF NOT EXISTS `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL,
  PRIMARY KEY (`mov_studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_year`
--

DROP TABLE IF EXISTS `tbl_mov_year`;
CREATE TABLE IF NOT EXISTS `tbl_mov_year` (
  `mov_year_id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` varchar(75) NOT NULL,
  `year_id` varchar(50) NOT NULL,
  PRIMARY KEY (`mov_year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_year`
--

INSERT INTO `tbl_mov_year` (`mov_year_id`, `movies_id`, `year_id`) VALUES
(1, '20', '2'),
(2, '21', '2'),
(3, '18', '3'),
(4, '19', '3'),
(5, '16', '4'),
(6, '17', '4'),
(7, '11', '5'),
(8, '12', '5'),
(9, '13', '5'),
(10, '14', '5'),
(11, '15', '5'),
(12, '6', '6'),
(13, '7', '6'),
(14, '8', '6'),
(15, '9', '6'),
(16, '10', '6'),
(17, '1', '7'),
(18, '2', '7'),
(19, '3', '7'),
(20, '4', '7'),
(21, '5', '7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ratings`
--

DROP TABLE IF EXISTS `tbl_ratings`;
CREATE TABLE IF NOT EXISTS `tbl_ratings` (
  `rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ratings`
--

INSERT INTO `tbl_ratings` (`rating_id`, `movies_id`, `rating_number`, `comment`) VALUES
(1, 1, 5, 'good!!!!'),
(2, 1, 5, 'Love it!!!!'),
(3, 2, 5, 'lorem'),
(4, 1, 1, 'dfasf'),
(5, 3, 3, 'gfdfg'),
(6, 3, 3, 'fasdfaf'),
(7, 4, 4, 'test'),
(8, 1, 1, 'dsfadfsa'),
(9, 3, 3, 'dfsa'),
(10, 5, 5, 'dasfafdsafafsf'),
(11, 4, 4, 'sdffasd'),
(12, 4, 4, 'sdffasd'),
(13, 1, 4, 'dsfafdasfdasf'),
(14, 10, 5, 'Love it!!!!'),
(15, 1, 4, 'dfafaf'),
(16, 1, 5, 'dfafaf'),
(17, 1, 5, 'dfafaf'),
(18, 1, 5, 'dfafaf'),
(19, 1, 3, 'dasfadf'),
(20, 1, 3, 'afsfdsaf'),
(21, 1, 3, 'afdsaf'),
(22, 1, 3, 'sfdafdfa'),
(23, 1, 3, 'dsaffasf'),
(24, 1, 3, 'dsaffasf'),
(25, 1, 4, 'fsafadf'),
(26, 1, 3, 'fasfasf'),
(27, 1, 2, '??'),
(28, 15, 3, 'fasdf'),
(29, 1, 2, 'fsdaf'),
(30, 1, 1, 'adsfdaf'),
(31, 2, 3, 'adsfafs'),
(32, 1, 4, 'dsfasf'),
(33, 1, 3, 'fashfkjashf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

DROP TABLE IF EXISTS `tbl_studio`;
CREATE TABLE IF NOT EXISTS `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `studio_name` varchar(125) NOT NULL,
  PRIMARY KEY (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tvshows`
--

DROP TABLE IF EXISTS `tbl_tvshows`;
CREATE TABLE IF NOT EXISTS `tbl_tvshows` (
  `tvshows_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tvshows_cover` varchar(75) NOT NULL,
  `tvshows_title` varchar(125) NOT NULL,
  `tvshows_year` varchar(20) NOT NULL,
  `tvshows_storyline` text NOT NULL,
  `tvshows_trailer` varchar(75) NOT NULL,
  `tvshows_seasons` varchar(125) NOT NULL,
  `tvshows_network` varchar(50) NOT NULL,
  PRIMARY KEY (`tvshows_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tvshows`
--

INSERT INTO `tbl_tvshows` (`tvshows_id`, `tvshows_cover`, `tvshows_title`, `tvshows_year`, `tvshows_storyline`, `tvshows_trailer`, `tvshows_seasons`, `tvshows_network`) VALUES
(1, 'agents-of-shield.jpg', 'Agents of S.H.I.E.L.D.', '2013-present', 'Phil Coulson (Clark Gregg, reprising his role from \"The Avengers\" and \"Iron Man\" ) heads an elite team of fellow agents with the worldwide law-enforcement organization known as SHIELD (Strategic Homeland Intervention Enforcement and Logistics Division), as they investigate strange occurrences around the globe. Its members -- each of whom brings a specialty to the group -- work with Coulson to protect those who cannot protect themselves from extraordinary and inconceivable threats, including a formidable group known as Hydra.', 'agents-of-shield.mp4', 's1-5', 'ABC'),
(2, 'arrow.jpg', 'Arrow', '2012', 'When presumed-dead billionaire playboy Oliver Queen returns home to Starling City after five years stranded on a remote island in the Pacific, he hides the changes the experience had on him, while secretly seeking reconciliation with his ex, Laurel. By day he picks up where he left off, playing the carefree philanderer he used to be, but at night he dons the alter ego of Arrow and works to right the wrongs of his family and restore the city to its former glory. Complicating his mission is Laurel\'s father, Detective Quentin Lance, who is determined to put the vigilante behind bars.', 'arrow.mp4', 's1-7', 'The CW'),
(3, 'flash.jpg', 'Flash', '2014', 'At 11, Barry Allen\'s life changed completely when his mother died in a freak accident and his innocent father was convicted of her murder. Orphaned Barry later becomes Detective Joe West. Now a crime-scene investigator, his dedication to learn the truth about his mother\'s death drives him to follow up on every new scientific advancement and urban legend. When his latest obsession - a particle accelerator heralded as a world-changing invention - causes an explosion, it creates a freak storm and Barry is struck by lightning. He awakes from a coma nine months later with the power of superspeed. When he learns that others who have gained powers use them for evil, he dedicates himself to protecting the innocent, while still trying to solve the older mystery.', 'flash.mp4', 's1-5', 'The CW'),
(4, 'games-thrones.jpg', 'games of the thrones', '2011-present', 'George R.R. Martin\'s best-selling book series \"A Song of Ice and Fire\" is brought to the screen as HBO sinks its considerable storytelling teeth into the medieval fantasy epic. It\'s the depiction of two powerful families -- kings and queens, knights and renegades, liars and honest men -- playing a deadly game for control of the Seven Kingdoms of Westeros, and to sit atop the Iron Throne. Martin is credited as a co-executive producer and one of the writers for the series, whose shooting locations include Northern Ireland, Malta, Croatia and Spain.', 'games-thrones.mp4', 's1-7', 'HBO'),
(5, 'gooddoctor.jpg', 'good doctor', '2017', 'Shaun Murphy, a young autistic surgeon who has savant syndrome, relocates from a quiet country life to join the surgical unit at the prestigious San Jose St. Bonaventure Hospital -- a move strongly supported by his mentor, Dr. Aaron Glassman. Having survived a troubled childhood, Shaun is alone in the world and unable to personally connect with those around him, but he finds his niche using his extraordinary medical skill and intuition to save lives and challenge the skepticism of his colleagues.', 'gooddoctor.mp4', 's1-2', 'ABC'),
(6, 'originals.jpg', 'originals', '2013', 'Klaus, the original vampire/werewolf hybrid, returns to New Orleans - which his family helped build - to investigate rumours of a plot against him, in this spin-off of `The Vampire Diaries\'. He finds his former protege, Marcel, reigning powerful over its inhabitants, causing growing tension in the supernatural community. Klaus\' brother, Elijah, joins him, and they learn that werewolf Hayley has fallen into the hands of a defiant witch who has life-changing information. Klaus and Elijah plan to reclaim the city, and while waiting to see if their last remaining sibling, Rebekah, will leave Mystic Falls to join them, they form an alliance with the witches to help further their cause.', 'originals.mp4', 's1-5', 'The CW'),
(7, 'stranger-things.jpg', 'stranger things', '2016', 'It\'s the fall of 1984, about a year after Will Byers was found, and he has been plagued by seeing visions of the Upside Down featuring a more dangerous monster. That leads the boy to see a suspiciously friendly new doctor, with the possibility that Will\'s visions are the result of suffering from PTSD. Nancy deals with survivor\'s remorse over the death of best friend Barb. Meanwhile, a new sinister entity threatens the Hawkins residents who survived the year-earlier events. New to the town is tomboy Max, who befriends the boys and attracts the romantic interests of Dustin and Lucas.', 'stranger-things.mp4', 's1-3', 'Netflix'),
(8, 'supergirl.jpg', 'supergirl', '2015', 'At 12 years old, Kara Zor-El escapes doom on planet Krypton to find protection on Earth with the Danver family, where she grows up in the shadow of her foster sister, Alex, and learns to hide the extraordinary powers she shares with her cousin, Superman. Now an adult living in National City and working for media mogul Cat Grant, Kara finds her days of keeping her abilities a secret are over when super-secret agency head Hank Henshaw enlists her to help protect the city\'s citizens from threats. Finally coming into her own, Kara must juggle her new responsibilities with her very human relationships.\r\n', 'supergirl.mp4', 's1-4', 'The CW'),
(9, 'teenwolf.jpg', 'teenwolf', '2011', 'The high-school anonymity Scott McCall was trying to break free from couldn\'t have happened in a more mysterious, complicated way. While walking in the woods one night Scott encounters a creature, is bitten in the side, and his life is forever changed. Is he a human or a werewolf? Or a little bit of both? Controlling the strange urges he now feels is the toughest part, and he\'s afraid the urges could end up controlling him. Will the bite be a gift or a curse, especially as it relates to the mischievous Allison, whom Scott can\'t get enough of?', 'teenwolf.mp4', 's1-6', 'MTV'),
(10, 'vampire-diaries.jpg', 'vampire diaries', '2009', 'A few months after their parents are killed in a tragic car accident, Elena Gilbert and her brother, Jeremy, are trying to come to terms with their grief. For Elena, formerly popular and involved with school and her friends, it\'s a struggle to hide her sadness. She finds herself drawn to a handsome and mysterious new student, Stefan, unaware that he is a centuries-old vampire doing his best to live peacefully among humans. His brother, Damon, however, is the embodiment of vampire stereotypes, including violence and brutality, and the two brothers wage a war for the souls of Elena and everyone else in her small Virginia town. `The Vampire Diaries\' is based on the series of novels by L.J. Smith.', 'vampire-diaries.mp4', 's1-8', 'CBS television studios');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tvshow_ratings`
--

DROP TABLE IF EXISTS `tbl_tvshow_ratings`;
CREATE TABLE IF NOT EXISTS `tbl_tvshow_ratings` (
  `tvshow_rating_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tvshows_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`tvshow_rating_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tvshow_ratings`
--

INSERT INTO `tbl_tvshow_ratings` (`tvshow_rating_id`, `tvshows_id`, `rating_number`, `comment`) VALUES
(1, 1, 2, 'fsadfasf'),
(2, 3, 3, 'sdafaf'),
(3, 1, 3, 'sadfaf'),
(4, 2, 4, 'fasdfs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_genre`
--

DROP TABLE IF EXISTS `tbl_tv_genre`;
CREATE TABLE IF NOT EXISTS `tbl_tv_genre` (
  `tv_genre_id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tvshows_id` varchar(50) NOT NULL,
  `genre_id` varchar(50) NOT NULL,
  PRIMARY KEY (`tv_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv_genre`
--

INSERT INTO `tbl_tv_genre` (`tv_genre_id`, `tvshows_id`, `genre_id`) VALUES
(1, '1', '1'),
(2, '1', '2'),
(3, '2', '4'),
(4, '2', '5'),
(5, '3', '1'),
(6, '3', '5'),
(8, '4', '5'),
(9, '5', '5'),
(10, '6', '1'),
(11, '7', '1'),
(14, '8', '2'),
(15, '8', '5'),
(18, '9', '5'),
(20, '10', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

DROP TABLE IF EXISTS `tbl_urating`;
CREATE TABLE IF NOT EXISTS `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rating_number` tinyint(4) NOT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL,
  `user_avatar` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`, `user_avatar`) VALUES
(1, 'trevor', 'p', '1', 't@t.com', '2019-02-01 19:07:35', '::1', 0, 5, 'adult.png'),
(2, 'kate', 'k', '1', 't@t.com', '2019-02-01 20:11:28', '::1', 0, 4, 'kid.png'),
(3, 'mad', 'g', '1', 't@t.com', '2019-02-01 20:12:40', '127.0.0.1:8000', 0, 3, 'temp_avatar.png'),
(4, 'admin', 'admin', '1', 'admin@admin.com', '2019-03-16 01:55:48', '::1', 1, 6, 'temp_avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_year`
--

DROP TABLE IF EXISTS `tbl_year`;
CREATE TABLE IF NOT EXISTS `tbl_year` (
  `year_id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `year_name` varchar(50) NOT NULL,
  PRIMARY KEY (`year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_year`
--

INSERT INTO `tbl_year` (`year_id`, `year_name`) VALUES
(2, '2012'),
(3, '2013'),
(4, '2014'),
(5, '2015'),
(6, '2016'),
(7, '2017');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
