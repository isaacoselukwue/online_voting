-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 31, 2018 at 04:49 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poll`
--
CREATE DATABASE IF NOT EXISTS `poll` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `poll`;

-- --------------------------------------------------------

--
-- Table structure for table `tbadministrators`
--

DROP TABLE IF EXISTS `tbadministrators`;
CREATE TABLE IF NOT EXISTS `tbadministrators` (
  `admin_id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `present_address` varchar(50) NOT NULL,
  `permanent_address` varchar(50) NOT NULL,
  `blood_group` char(4) NOT NULL,
  `area_id` int(3) NOT NULL,
  `occupation` char(15) NOT NULL,
  `past_history` char(20) NOT NULL,
  `age` int(3) NOT NULL,
  `id` int(49) NOT NULL,
  `voter_id` double NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbadministrators`
--

INSERT INTO `tbadministrators` (`admin_id`, `first_name`, `last_name`, `email`, `password`, `present_address`, `permanent_address`, `blood_group`, `area_id`, `occupation`, `past_history`, `age`, `id`, `voter_id`) VALUES
(1, 'isaac', 'oselukwue', 'admin@admin.com', 'Oselukwue', '8c General Ogumudia Boulevard, Lekki Phase 1', '39 Debo Bashorun Street, Ago', 'O', 13, 'Student', 'Student', 19, 165167, 1.698698874126998e16),
(2, 'vic', 'bob', 'vicbob24@gmail.com', 'vicbob2048', '18 Ikirorodu Road, Ikorodu', 'King Jaja Hall, UNILAG', 'AB', 5, 'Election Office', 'Nil', 32, 789465, 1.6986988741269452e16);

-- --------------------------------------------------------

--
-- Table structure for table `tbcandidates`
--

DROP TABLE IF EXISTS `tbcandidates`;
CREATE TABLE IF NOT EXISTS `tbcandidates` (
  `candidate_id` int(5) NOT NULL AUTO_INCREMENT,
  `candidate_name` varchar(45) NOT NULL,
  `candidate_position` varchar(45) NOT NULL,
  `candidate_cvotes` int(11) NOT NULL,
  PRIMARY KEY (`candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbcandidates`
--

INSERT INTO `tbcandidates` (`candidate_id`, `candidate_name`, `candidate_position`, `candidate_cvotes`) VALUES
(1, 'Isaac', 'President', 0),
(2, 'Chukwu', 'President', 0),
(3, 'Victoria', 'Vice-President', 0),
(4, 'Sheriff', 'Vice-President', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbmembers`
--

DROP TABLE IF EXISTS `tbmembers`;
CREATE TABLE IF NOT EXISTS `tbmembers` (
  `member_id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `voter_id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(3) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmembers`
--

INSERT INTO `tbmembers` (`member_id`, `first_name`, `last_name`, `email`, `voter_id`, `password`, `sex`, `age`, `city`) VALUES
(1, 'Ify', 'Hose', 'ifyhose@gmail.com', '19964714075000192', '7d9b087beffc9879ead55e7291d6b541', 'Female', 30, 'Victoria Island'),
(2, 'Victoria ', 'Samerina', 'vsamarina@gmail.com', '19864714075000186', '939d2ad38c88fda9c0bad11086e4e057', 'Female', 38, 'Lagos Island'),
(3, 'isaac', 'emefelie', 'princeizak@live.com', '19864714075000185', 'Oselukwue', 'Male', 19, 'Yaba');

-- --------------------------------------------------------

--
-- Table structure for table `tbparty`
--

DROP TABLE IF EXISTS `tbparty`;
CREATE TABLE IF NOT EXISTS `tbparty` (
  `party_name` char(10) NOT NULL,
  `party_id` int(3) NOT NULL,
  `party_logo_name` varchar(5) NOT NULL,
  `party_total_candidate` int(20) NOT NULL,
  `area_id` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbparty`
--

INSERT INTO `tbparty` (`party_name`, `party_id`, `party_logo_name`, `party_total_candidate`, `area_id`) VALUES
('APC', 1, 'Broom', 10, 13),
('PDP', 2, 'Vover', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbpositions`
--

DROP TABLE IF EXISTS `tbpositions`;
CREATE TABLE IF NOT EXISTS `tbpositions` (
  `position_id` int(5) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(45) NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpositions`
--

INSERT INTO `tbpositions` (`position_id`, `position_name`) VALUES
(1, 'isahayatu');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;