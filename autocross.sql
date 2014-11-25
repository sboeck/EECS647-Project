-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2014 at 01:27 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `autocross`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `Member_ID` int(8) NOT NULL,
  `Event_ID` int(8) NOT NULL,
  `Time` double NOT NULL,
  `Points` tinyint(2) NOT NULL,
  `Class_Name` tinytext NOT NULL,
  `Car_Num` smallint(3) NOT NULL,
  `Car_Model` text NOT NULL,
  KEY `Member_ID` (`Member_ID`,`Event_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Member_ID`, `Event_ID`, `Time`, `Points`, `Class_Name`, `Car_Num`, `Car_Model`) VALUES
(1001, 140101, 59.013, 10, 'CS', 11, 'Scion FRS'),
(1002, 140101, 55.14, 10, 'DS', 93, 'Subaru WRX'),
(1003, 140101, 55.354, 8, 'DS', 78, 'Mini Cooper S'),
(1004, 140101, 60.504, 8, 'CS', 13, 'Mazda MX5'),
(1005, 140101, 61.053, 6, 'CS', 15, 'Mazda Miata'),
(1006, 140101, 62.335, 5, 'CS', 64, 'Subaru BRZ'),
(1007, 140101, 57.005, 6, 'DS', 75, 'Mazda Speed3'),
(1008, 140101, 65.68, 10, 'ES', 41, 'Acura RSX'),
(1009, 140101, 67.561, 8, 'ES', 54, 'VW Golf'),
(1010, 140101, 72.115, 6, 'ES', 62, 'Toyota Celica'),
(1001, 140102, 63.24, 10, 'CS', 11, 'Scion FRS'),
(1002, 140102, 59.004, 8, 'DS', 93, 'Subaru WRX'),
(1003, 140102, 58.68, 10, 'DS', 78, 'Mini Cooper S'),
(1004, 140102, 65.121, 6, 'CS', 13, 'Mazda MX5'),
(1005, 140102, 64.484, 8, 'CS', 15, 'Mazda Miata'),
(1006, 140102, 65.946, 5, 'CS', 64, 'Subaru BRZ'),
(1007, 140102, 60.15, 6, 'DS', 75, 'Mazda Speed3'),
(1008, 140102, 66.632, 10, 'ES', 41, 'Acura RSX'),
(1009, 140102, 67.561, 8, 'ES', 54, 'VW Golf'),
(1010, 140102, 69.145, 6, 'ES', 62, 'Toyota Celica'),
(1011, 140102, 73.125, 8, 'FS', 68, 'Chevy Camaro'),
(1012, 140102, 72.13, 10, 'FS', 73, 'Ford Mustang'),
(1013, 140102, 75.315, 6, 'FS', 87, 'Dodge Charger'),
(1001, 140103, 63.24, 10, 'CS', 11, 'Scion FRS'),
(1004, 140103, 65.121, 6, 'CS', 13, 'Mazda MX5'),
(1005, 140103, 64.484, 8, 'CS', 15, 'Mazda Miata'),
(1006, 140103, 65.946, 5, 'CS', 64, 'Subaru BRZ'),
(1015, 140103, 66.424, 4, 'CS', 8, 'Mazda RX-8'),
(1002, 140103, 59.004, 8, 'DS', 93, 'Subaru WRX'),
(1014, 140103, 61.051, 5, 'DS', 1, 'Subaru WRX'),
(1003, 140103, 58.68, 10, 'DS', 78, 'Mini Cooper S'),
(1007, 140103, 60.15, 6, 'DS', 75, 'Mazda Speed3'),
(1008, 140103, 66.632, 10, 'ES', 41, 'Acura RSX'),
(1009, 140103, 67.561, 8, 'ES', 54, 'VW Golf'),
(1010, 140103, 69.145, 6, 'ES', 62, 'Toyota Celica'),
(1011, 140103, 70.174, 8, 'FS', 68, 'Chevy Camaro'),
(1012, 140103, 69.55, 10, 'FS', 73, 'Ford Mustang'),
(1013, 140103, 72.304, 6, 'FS', 87, 'Dodge Charger'),
(1001, 140104, 62.24, 10, 'CS', 11, 'Scion FRS'),
(1004, 140104, 64.121, 6, 'CS', 13, 'Mazda MX5'),
(1005, 140104, 63.484, 8, 'CS', 15, 'Mazda Miata'),
(1006, 140104, 64.946, 5, 'CS', 64, 'Subaru BRZ'),
(1015, 140104, 65.424, 4, 'CS', 8, 'Mazda RX-8'),
(1002, 140104, 58.004, 8, 'DS', 93, 'Subaru WRX'),
(1014, 140104, 60.051, 5, 'DS', 1, 'Subaru WRX'),
(1003, 140104, 57.68, 10, 'DS', 78, 'Mini Cooper S'),
(1007, 140104, 59.15, 6, 'DS', 75, 'Mazda Speed3'),
(1008, 140104, 65.632, 10, 'ES', 41, 'Acura RSX'),
(1009, 140104, 66.561, 8, 'ES', 54, 'VW Golf'),
(1010, 140104, 68.145, 6, 'ES', 62, 'Toyota Celica'),
(1011, 140104, 69.174, 8, 'FS', 68, 'Chevy Camaro'),
(1012, 140104, 68.55, 10, 'FS', 73, 'Ford Mustang'),
(1013, 140104, 71.304, 6, 'FS', 87, 'Dodge Charger'),
(1001, 140105, 62.24, 8, 'CS', 11, 'Scion FRS'),
(1004, 140105, 63.331, 6, 'CS', 13, 'Mazda MX5'),
(1005, 140105, 61.231, 10, 'CS', 15, 'Mazda Miata'),
(1006, 140105, 65.946, 5, 'CS', 64, 'Subaru BRZ'),
(1015, 140105, 67.424, 4, 'CS', 8, 'Mazda RX-8'),
(1002, 140105, 58.004, 8, 'DS', 93, 'Subaru WRX'),
(1014, 140105, 60.022, 5, 'DS', 1, 'Subaru WRX'),
(1003, 140105, 57.872, 10, 'DS', 78, 'Mini Cooper S'),
(1007, 140105, 59.431, 6, 'DS', 75, 'Mazda Speed3'),
(1008, 140105, 64.176, 10, 'ES', 41, 'Acura RSX'),
(1009, 140105, 65.231, 8, 'ES', 54, 'VW Golf'),
(1010, 140105, 67.515, 6, 'ES', 62, 'Toyota Celica'),
(1011, 140105, 67.424, 8, 'FS', 68, 'Chevy Camaro'),
(1012, 140105, 66.11, 10, 'FS', 73, 'Ford Mustang'),
(1013, 140105, 68.524, 6, 'FS', 87, 'Dodge Charger'),
(1004, 130101, 63.331, 8, 'CS', 13, 'Mazda MX5'),
(1005, 130101, 61.231, 10, 'CS', 15, 'Mazda Miata'),
(1006, 130101, 65.946, 6, 'CS', 64, 'Subaru BRZ'),
(1015, 130101, 67.424, 5, 'CS', 8, 'Mazda RX-8'),
(1002, 130101, 58.004, 8, 'DS', 93, 'Subaru WRX'),
(1014, 130101, 60.022, 5, 'DS', 1, 'Subaru WRX'),
(1003, 130101, 57.872, 10, 'DS', 78, 'Mini Cooper S'),
(1007, 130101, 59.431, 6, 'DS', 75, 'Mazda Speed3'),
(1008, 130101, 64.176, 10, 'ES', 41, 'Acura RSX'),
(1009, 130101, 65.231, 8, 'ES', 54, 'VW Golf'),
(1010, 130101, 67.515, 6, 'ES', 62, 'Toyota Celica'),
(1011, 130101, 67.424, 8, 'FS', 68, 'Chevy Camaro'),
(1012, 130101, 66.11, 10, 'FS', 73, 'Ford Mustang'),
(1013, 130101, 68.524, 6, 'FS', 87, 'Dodge Charger'),
(1004, 130102, 61.331, 8, 'CS', 13, 'Mazda MX5'),
(1005, 130102, 59.231, 10, 'CS', 15, 'Mazda Miata'),
(1006, 130102, 63.946, 6, 'CS', 64, 'Subaru BRZ'),
(1015, 130102, 65.424, 5, 'CS', 8, 'Mazda RX-8'),
(1002, 130102, 56.004, 8, 'DS', 93, 'Subaru WRX'),
(1014, 130102, 58.022, 5, 'DS', 1, 'Subaru WRX'),
(1003, 130102, 55.872, 10, 'DS', 78, 'Mini Cooper S'),
(1007, 130102, 57.431, 6, 'DS', 75, 'Mazda Speed3'),
(1008, 130102, 62.176, 10, 'ES', 41, 'Acura RSX'),
(1009, 130102, 63.231, 8, 'ES', 54, 'VW Golf'),
(1010, 130102, 65.515, 6, 'ES', 62, 'Toyota Celica'),
(1011, 130102, 65.424, 8, 'FS', 68, 'Chevy Camaro'),
(1012, 130102, 64.11, 10, 'FS', 73, 'Ford Mustang'),
(1013, 130102, 66.524, 6, 'FS', 87, 'Dodge Charger'),
(1004, 130103, 61.331, 8, 'CS', 1, 'Mazda MX5'),
(1005, 130103, 59.231, 10, 'CS', 7, 'Mazda Miata'),
(1006, 130103, 63.946, 6, 'CS', 86, 'Subaru BRZ'),
(1015, 130103, 65.424, 5, 'CS', 8, 'Mazda RX-8'),
(1002, 130103, 56.004, 8, 'DS', 93, 'Subaru WRX'),
(1014, 130103, 57.022, 6, 'DS', 1, 'Subaru WRX'),
(1003, 130103, 55.872, 10, 'DS', 78, 'Mini Cooper S'),
(1007, 130103, 58.431, 5, 'DS', 75, 'Mazda Speed3'),
(1008, 130103, 62.176, 10, 'ES', 41, 'Acura RSX'),
(1009, 130103, 63.231, 8, 'ES', 54, 'VW Golf'),
(1010, 130103, 65.515, 6, 'ES', 62, 'Toyota Celica'),
(1011, 130103, 62.134, 10, 'FS', 68, 'Chevy Camaro'),
(1012, 130103, 67.45, 6, 'FS', 73, 'Ford Mustang'),
(1013, 130103, 65.224, 8, 'FS', 87, 'Dodge Charger'),
(1004, 130104, 61.331, 8, 'CS', 1, 'Mazda MX5'),
(1005, 130104, 59.231, 10, 'CS', 7, 'Mazda Miata'),
(1006, 130104, 63.946, 6, 'CS', 86, 'Subaru BRZ'),
(1015, 130104, 65.424, 5, 'CS', 8, 'Mazda RX-8'),
(1002, 130104, 56.004, 8, 'DS', 93, 'Subaru WRX'),
(1014, 130104, 57.022, 6, 'DS', 1, 'Subaru WRX'),
(1003, 130104, 55.872, 10, 'DS', 78, 'Mini Cooper S'),
(1007, 130104, 58.431, 5, 'DS', 75, 'Mazda Speed3'),
(1008, 130104, 62.176, 10, 'ES', 41, 'Acura RSX'),
(1009, 130104, 63.231, 8, 'ES', 54, 'VW Golf'),
(1004, 130105, 63.481, 6, 'CS', 1, 'Mazda MX5'),
(1005, 130105, 58.231, 10, 'CS', 7, 'Mazda Miata'),
(1006, 130105, 61.946, 8, 'CS', 86, 'Subaru BRZ'),
(1015, 130105, 66.424, 5, 'CS', 8, 'Mazda RX-8'),
(1002, 130105, 55.004, 10, 'DS', 93, 'Subaru WRX'),
(1014, 130105, 57.022, 6, 'DS', 1, 'Subaru WRX'),
(1003, 130105, 55.562, 8, 'DS', 78, 'Mini Cooper S'),
(1007, 130105, 58.862, 5, 'DS', 75, 'Mazda Speed3'),
(1008, 130105, 61.176, 10, 'ES', 41, 'Acura RSX'),
(1009, 130105, 64.231, 6, 'ES', 54, 'VW Golf'),
(1010, 130105, 62.515, 8, 'ES', 62, 'Toyota Celica'),
(1011, 130105, 62.134, 10, 'FS', 68, 'Chevy Camaro'),
(1013, 130105, 65.224, 8, 'FS', 87, 'Dodge Charger'),
(1201, 140201, 77.481, 4, 'CS', 11, 'Toyota MR2'),
(1202, 140201, 70.004, 6, 'CS', 86, 'Scion FR-S'),
(1203, 140201, 73.562, 5, 'CS', 93, 'Acura Integra Type-R'),
(1204, 140201, 67.887, 10, 'CS', 1, 'Mazda MX5'),
(1205, 140201, 68.122, 8, 'CS', 2, 'Mazda MX5'),
(1206, 140201, 64.927, 8, 'DS', 26, 'Subaru WRX'),
(1207, 140201, 70.542, 5, 'DS', 3, 'Mazda Speed3'),
(1208, 140201, 63.176, 10, 'DS', 35, 'Nissan 350z'),
(1209, 140201, 68.231, 6, 'DS', 7, 'Volkswagon GTI'),
(1210, 140201, 79.425, 6, 'ES', 62, 'Toyota Celica'),
(1211, 140201, 72.194, 8, 'ES', 68, 'Honda Civic Si'),
(1212, 140201, 67.455, 10, 'ES', 73, 'Mazda Miata'),
(1213, 140201, 75.224, 6, 'FS', 87, 'Pontiac Trans Am'),
(1214, 140201, 69.022, 10, 'FS', 1, 'Ford Mustang'),
(1215, 140201, 72.424, 8, 'FS', 8, 'Chevrolet Camaro'),
(1201, 140202, 75.281, 4, 'CS', 11, 'Toyota MR2'),
(1202, 140202, 69.004, 6, 'CS', 86, 'Scion FR-S'),
(1203, 140202, 72.562, 5, 'CS', 93, 'Acura Integra Type-R'),
(1204, 140202, 66.887, 10, 'CS', 1, 'Mazda MX5'),
(1205, 140202, 67.122, 8, 'CS', 2, 'Mazda MX5'),
(1206, 140202, 63.927, 8, 'DS', 26, 'Subaru WRX'),
(1207, 140202, 72.542, 5, 'DS', 3, 'Mazda Speed3'),
(1208, 140202, 62.176, 10, 'DS', 35, 'Nissan 350z'),
(1209, 140202, 69.231, 6, 'DS', 7, 'Volkswagon GTI'),
(1210, 140202, 78.425, 6, 'ES', 62, 'Toyota Celica'),
(1211, 140202, 71.194, 8, 'ES', 68, 'Honda Civic Si'),
(1212, 140202, 69.455, 10, 'ES', 73, 'Mazda Miata'),
(1213, 140202, 74.224, 8, 'FS', 87, 'Pontiac Trans Am'),
(1214, 140202, 68.022, 10, 'FS', 1, 'Ford Mustang'),
(1215, 140202, 76.424, 6, 'FS', 8, 'Chevrolet Camaro'),
(1201, 140203, 78.221, 4, 'CS', 11, 'Toyota MR2'),
(1202, 140203, 72.014, 6, 'CS', 86, 'Scion FR-S'),
(1203, 140203, 75.532, 5, 'CS', 93, 'Acura Integra Type-R'),
(1204, 140203, 68.847, 10, 'CS', 1, 'Mazda MX5'),
(1205, 140203, 70.152, 8, 'CS', 2, 'Mazda MX5'),
(1206, 140203, 66.977, 8, 'DS', 26, 'Subaru WRX'),
(1207, 140203, 75.552, 5, 'DS', 3, 'Mazda Speed3'),
(1208, 140203, 65.136, 10, 'DS', 35, 'Nissan 350z'),
(1209, 140203, 72.281, 6, 'DS', 7, 'Volkswagon GTI'),
(1210, 140203, 81.125, 6, 'ES', 44, 'Toyota Celica'),
(1211, 140203, 74.134, 8, 'ES', 68, 'Honda Civic Si'),
(1212, 140203, 71.484, 10, 'ES', 73, 'Mazda Miata'),
(1213, 140203, 77.254, 6, 'FS', 87, 'Pontiac Trans Am'),
(1214, 140203, 71.362, 10, 'FS', 1, 'Ford Mustang'),
(1215, 140203, 76.646, 8, 'FS', 8, 'Chevrolet Camaro'),
(1202, 140204, 72.444, 6, 'CS', 86, 'Scion FR-S'),
(1203, 140204, 74.564, 5, 'CS', 93, 'Acura Integra Type-R'),
(1204, 140204, 67.765, 10, 'CS', 1, 'Mazda MX5'),
(1205, 140204, 70.174, 8, 'CS', 2, 'Mazda MX5'),
(1206, 140204, 65.934, 8, 'DS', 26, 'Subaru WRX'),
(1208, 140204, 64.453, 10, 'DS', 35, 'Nissan 350z'),
(1209, 140204, 71.265, 6, 'DS', 7, 'Volkswagon GTI'),
(1210, 140204, 76.675, 6, 'ES', 44, 'Toyota Celica'),
(1211, 140204, 73.754, 8, 'ES', 68, 'Honda Civic Si'),
(1212, 140204, 70.634, 10, 'ES', 73, 'Mazda Miata'),
(1213, 140204, 74.414, 8, 'FS', 87, 'Pontiac Trans Am'),
(1214, 140204, 70.512, 10, 'FS', 1, 'Ford Mustang'),
(1201, 140205, 75.121, 4, 'CS', 11, 'Toyota MR2'),
(1202, 140205, 72.444, 6, 'CS', 86, 'Scion FR-S'),
(1203, 140205, 73.564, 5, 'CS', 93, 'Acura Integra Type-R'),
(1204, 140205, 68.765, 10, 'CS', 1, 'Mazda MX5'),
(1205, 140205, 71.174, 8, 'CS', 2, 'Mazda MX5'),
(1206, 140205, 65.934, 6, 'DS', 26, 'Subaru WRX'),
(1207, 140205, 64.432, 8, 'DS', 3, 'Mazda Speed3'),
(1208, 140205, 63.453, 10, 'DS', 35, 'Nissan 350z'),
(1209, 140205, 68.265, 5, 'DS', 7, 'Volkswagon GTI'),
(1210, 140205, 72.675, 8, 'ES', 44, 'Toyota Celica'),
(1211, 140205, 76.754, 6, 'ES', 68, 'Honda Civic Si'),
(1212, 140205, 70.634, 10, 'ES', 73, 'Mazda Miata'),
(1213, 140205, 75.414, 6, 'FS', 87, 'Pontiac Trans Am'),
(1214, 140205, 72.512, 8, 'FS', 1, 'Ford Mustang'),
(1215, 140205, 70.236, 10, 'FS', 8, 'Chevrolet Camaro');

-- --------------------------------------------------------

--
--Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`) VALUES
(`Alice`, `password1`),
(`Bob`, `123456`),
(`Carol`, `qwerty`),
(`David`, `notPassword`);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `Member_ID` int(8) NOT NULL,
  `Name` text NOT NULL,
  PRIMARY KEY (`Member_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`Member_ID`, `Name`) VALUES
(1001, 'Jim Herrison'),
(1002, 'Jane Landy'),
(1003, 'John Shoemaker'),
(1004, 'Kevin Bosch'),
(1005, 'Nick Cuffs'),
(1006, 'Jerry Woods'),
(1007, 'Blake Hasher'),
(1008, 'Fred Plains'),
(1009, 'Henry West'),
(1010, 'Scott Harris'),
(1011, 'Gabe Thorn'),
(1012, 'Ramsey Walsh'),
(1013, 'Lindsey Crawford'),
(1014, 'Sophy Fields'),
(1015, 'Donovan Ward'),
(1201, 'Maddie Lyson'),
(1202, 'Harris Gilbert'),
(1203, 'Kevin Nicholson'),
(1204, 'Rachel Smith'),
(1205, 'James Freeman'),
(1206, 'Gordon Nichols'),
(1207, 'Trace Kingsly'),
(1208, 'Collyn Clemens'),
(1209, 'Jordan Forester'),
(1210, 'Mathew Shaw'),
(1211, 'Shawn Stopper'),
(1212, 'Allin Cross'),
(1213, 'Dave Gills'),
(1214, 'Richard Mills'),
(1215, 'Fred Rogers');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `Event_ID` int(8) NOT NULL,
  `Location` text NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event_ID`, `Location`, `Date`) VALUES
(140101, 'Hutchinson Naval Air Station', '2014-03-09'),
(140102, 'Hutchinson Naval Air Station', '2014-03-23'),
(140103, 'Hutchinson Naval Air Station', '2014-04-06'),
(140104, 'Hutchinson Naval Air Station', '2014-05-04'),
(140105, 'Hutchinson Naval Air Station', '2014-05-25'),
(130101, 'Hutchinson Naval Air Station', '2013-03-09'),
(130102, 'Hutchinson Naval Air Station', '2013-03-23'),
(130103, 'Hutchinson Naval Air Station', '2013-04-06'),
(130104, 'Hutchinson Naval Air Station', '2013-05-04'),
(130105, 'Hutchinson Naval Air Station', '2013-05-25'),
(140201, 'East Crawford Recreation Area', '2014-03-17'),
(140202, 'East Crawford Recreation Area', '2014-04-07'),
(140203, 'East Crawford Recreation Area', '2014-05-05'),
(140204, 'East Crawford Recreation Area', '2014-05-19'),
(140205, 'East Crawford Recreation Area', '2014-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE IF NOT EXISTS `host` (
  `Region_name` text NOT NULL,
  `Event_ID` int(8) NOT NULL,
  `Year` year(4) NOT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`Region_name`, `Event_ID`, `Year`) VALUES
('Wichita', 140101, 2014),
('Wichita', 140102, 2014),
('Wichita', 140103, 2014),
('Wichita', 140104, 2014),
('Wichita', 140105, 2014),
('Wichita', 130101, 2013),
('Wichita', 130102, 2013),
('Wichita', 130103, 2013),
('Wichita', 130104, 2013),
('Wichita', 130105, 2013),
('Salina', 140201, 2014),
('Salina', 140202, 2014),
('Salina', 140203, 2014),
('Salina', 140204, 2014),
('Salina', 140205, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `Region_name` text NOT NULL,
  `Director` text NOT NULL,
  `Safety_steward` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`Region_name`, `Director`, `Safety_steward`) VALUES
('Wichita', 'Steve Roberts', 'Jeff Henry'),
('Salina', 'Dave Roberts', 'Fred Nickles');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sum_points`
--
CREATE TABLE IF NOT EXISTS `sum_points` (
`Name` text
,`Total_points` decimal(25,0)
,`Class_name` tinytext
,`Region_Name` text
,`Year` year(4)
);
-- --------------------------------------------------------

--
-- Structure for view `sum_points`
--
DROP TABLE IF EXISTS `sum_points`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sum_points` AS select `drivers`.`Name` AS `Name`,sum(`class`.`Points`) AS `Total_points`,`class`.`Class_Name` AS `Class_name`,`host`.`Region_name` AS `Region_Name`,`host`.`Year` AS `Year` from (((`class` join `host`) join `event`) join `drivers`) where ((`class`.`Event_ID` = `host`.`Event_ID`) and (`host`.`Event_ID` = `event`.`Event_ID`) and (`class`.`Member_ID` = `drivers`.`Member_ID`)) group by `drivers`.`Member_ID`,`host`.`Region_name`,`host`.`Year`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
