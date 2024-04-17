-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 12:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utazas`
--
CREATE DATABASE IF NOT EXISTS `utazas` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `utazas`;

-- --------------------------------------------------------

--
-- Table structure for table `jarmu`
--

DROP TABLE IF EXISTS `jarmu`;
CREATE TABLE IF NOT EXISTS `jarmu` (
  `jarmuAzon` int(11) NOT NULL AUTO_INCREMENT,
  `tipus` varchar(20) NOT NULL,
  `varosAzon` int(11) NOT NULL,
  PRIMARY KEY (`jarmuAzon`),
  UNIQUE KEY `varosAzon` (`varosAzon`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `jarmu`
--

INSERT INTO `jarmu` (`jarmuAzon`, `tipus`, `varosAzon`) VALUES
(7, 'Skoda Fabia', 13),
(8, 'Skoda Octavia', 14),
(9, 'BMW X5', 12),
(10, 'Panzerkampfwagen VI ', 11),
(11, 'Skoda SuperB', 15);

-- --------------------------------------------------------

--
-- Table structure for table `sofor`
--

DROP TABLE IF EXISTS `sofor`;
CREATE TABLE IF NOT EXISTS `sofor` (
  `soforAzon` int(11) NOT NULL AUTO_INCREMENT,
  `vezetekNev` varchar(30) NOT NULL,
  `keresztNev` varchar(30) NOT NULL,
  `jarmuAzon` int(11) NOT NULL,
  PRIMARY KEY (`soforAzon`),
  KEY `jarmukKapcsolat` (`jarmuAzon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `sofor`
--

INSERT INTO `sofor` (`soforAzon`, `vezetekNev`, `keresztNev`, `jarmuAzon`) VALUES
(1, 'Einhoff ', 'Huberbauer', 10),
(2, 'Lakatos ', 'Zsigmond', 9),
(3, 'Kereszt', 'Teréz', 7),
(4, 'Retek', 'Elek', 8),
(5, 'Turcsányi', 'Márió', 11);

-- --------------------------------------------------------

--
-- Table structure for table `varos`
--

DROP TABLE IF EXISTS `varos`;
CREATE TABLE IF NOT EXISTS `varos` (
  `varosAzon` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(150) NOT NULL,
  PRIMARY KEY (`varosAzon`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `varos`
--

INSERT INTO `varos` (`varosAzon`, `nev`) VALUES
(11, 'Sátoraljaújhely'),
(12, 'Gyál'),
(13, 'Ócsa'),
(14, 'Siófok'),
(15, 'Szeged');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jarmu`
--
ALTER TABLE `jarmu`
  ADD CONSTRAINT `jarmu_ibfk_1` FOREIGN KEY (`varosAzon`) REFERENCES `varos` (`varosAzon`);

--
-- Constraints for table `sofor`
--
ALTER TABLE `sofor`
  ADD CONSTRAINT `jarmukKapcsolat` FOREIGN KEY (`jarmuAzon`) REFERENCES `jarmu` (`jarmuAzon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
