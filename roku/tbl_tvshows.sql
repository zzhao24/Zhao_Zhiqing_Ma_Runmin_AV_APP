-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 11, 2019 at 10:27 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `tel_tvshows`
--

CREATE TABLE `tel_tvshows` (
  `tvshows_id` int(10) UNSIGNED NOT NULL,
  `tvshows_cover` varchar(75) NOT NULL,
  `tvshows_title` varchar(125) NOT NULL,
  `tvshows_year` varchar(20) NOT NULL,
  `tvshows_storyline` text NOT NULL,
  `tvshows_trailer` varchar(75) NOT NULL,
  `tvshows_seasons` varchar(125) NOT NULL,
  `tvshows_network` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tel_tvshows`
--
ALTER TABLE `tel_tvshows`
  ADD PRIMARY KEY (`tvshows_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tel_tvshows`
--
ALTER TABLE `tel_tvshows`
  MODIFY `tvshows_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
