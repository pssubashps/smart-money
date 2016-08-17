-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2016 at 02:32 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.6.22-1+donate.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartmoney`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `cat_created_at` datetime NOT NULL,
  `cat_updated_at` datetime NOT NULL,
  `cat_status` tinyint(4) NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_name` (`cat_name`,`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `cat_created_at`, `cat_updated_at`, `cat_status`, `user`) VALUES
(1, 'Food', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(2, 'Gifts', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(3, 'Health', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(4, 'Transportation', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(5, 'Personal', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(6, 'Rent', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(7, 'Utilities', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(8, 'Travel', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(9, 'Debt', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(10, 'Outside Food', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(11, 'Electricity', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(12, 'Vegitables', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(13, 'No Veg', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1),
(14, 'Shopping', '2016-08-03 00:00:00', '2016-08-03 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `exp_description` varchar(100) NOT NULL,
  `exp_amount` double NOT NULL,
  `exp_created_at` datetime NOT NULL,
  `exp_updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
