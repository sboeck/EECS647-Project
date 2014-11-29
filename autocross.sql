-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2014 at 10:38 PM
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
  `Event_ID` mediumint(9) NOT NULL,
  `Member_ID` mediumint(9) NOT NULL,
  `Points` tinyint(4) NOT NULL,
  `Time` decimal(10,0) NOT NULL,
  `Class_name` tinytext NOT NULL,
  `Car_Num` tinyint(4) NOT NULL,
  `Car_Model` tinytext NOT NULL,
  PRIMARY KEY (`Event_ID`,`Member_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Event_ID`, `Member_ID`, `Points`, `Time`, `Class_name`, `Car_Num`, `Car_Model`) VALUES
(130101, 1002, 8, '58', 'DS', 93, 'Subaru WRX'),
(130101, 1003, 10, '58', 'DS', 78, 'Mini Cooper S'),
(130101, 1004, 8, '63', 'CS', 13, 'Mazda MX5'),
(130101, 1005, 10, '61', 'CS', 15, 'Mazda Miata'),
(130101, 1006, 6, '66', 'CS', 64, 'Subaru BRZ'),
(130101, 1007, 6, '59', 'DS', 75, 'Mazda Speed3'),
(130101, 1008, 10, '64', 'ES', 41, 'Acura RSX'),
(130101, 1009, 8, '65', 'ES', 54, 'VW Golf'),
(130101, 1010, 6, '68', 'ES', 62, 'Toyota Celica'),
(130101, 1011, 8, '67', 'FS', 68, 'Chevy Camaro'),
(130101, 1012, 10, '66', 'FS', 73, 'Ford Mustang'),
(130101, 1013, 6, '69', 'FS', 87, 'Dodge Charger'),
(130101, 1014, 5, '60', 'DS', 1, 'Subaru WRX'),
(130101, 1015, 5, '67', 'CS', 8, 'Mazda RX-8'),
(130102, 1002, 8, '56', 'DS', 93, 'Subaru WRX'),
(130102, 1003, 10, '56', 'DS', 78, 'Mini Cooper S'),
(130102, 1004, 8, '61', 'CS', 13, 'Mazda MX5'),
(130102, 1005, 10, '59', 'CS', 15, 'Mazda Miata'),
(130102, 1006, 6, '64', 'CS', 64, 'Subaru BRZ'),
(130102, 1007, 6, '57', 'DS', 75, 'Mazda Speed3'),
(130102, 1008, 10, '62', 'ES', 41, 'Acura RSX'),
(130102, 1009, 8, '63', 'ES', 54, 'VW Golf'),
(130102, 1010, 6, '66', 'ES', 62, 'Toyota Celica'),
(130102, 1011, 8, '65', 'FS', 68, 'Chevy Camaro'),
(130102, 1012, 10, '64', 'FS', 73, 'Ford Mustang'),
(130102, 1013, 6, '67', 'FS', 87, 'Dodge Charger'),
(130102, 1014, 5, '58', 'DS', 1, 'Subaru WRX'),
(130102, 1015, 5, '65', 'CS', 8, 'Mazda RX-8'),
(130103, 1002, 8, '56', 'DS', 93, 'Subaru WRX'),
(130103, 1003, 10, '56', 'DS', 78, 'Mini Cooper S'),
(130103, 1004, 8, '61', 'CS', 1, 'Mazda MX5'),
(130103, 1005, 10, '59', 'CS', 7, 'Mazda Miata'),
(130103, 1006, 6, '64', 'CS', 86, 'Subaru BRZ'),
(130103, 1007, 5, '58', 'DS', 75, 'Mazda Speed3'),
(130103, 1008, 10, '62', 'ES', 41, 'Acura RSX'),
(130103, 1009, 8, '63', 'ES', 54, 'VW Golf'),
(130103, 1010, 6, '66', 'ES', 62, 'Toyota Celica'),
(130103, 1011, 10, '62', 'FS', 68, 'Chevy Camaro'),
(130103, 1012, 6, '67', 'FS', 73, 'Ford Mustang'),
(130103, 1013, 8, '65', 'FS', 87, 'Dodge Charger'),
(130103, 1014, 6, '57', 'DS', 1, 'Subaru WRX'),
(130103, 1015, 5, '65', 'CS', 8, 'Mazda RX-8'),
(130104, 1002, 8, '56', 'DS', 93, 'Subaru WRX'),
(130104, 1003, 10, '56', 'DS', 78, 'Mini Cooper S'),
(130104, 1004, 8, '61', 'CS', 1, 'Mazda MX5'),
(130104, 1005, 10, '59', 'CS', 7, 'Mazda Miata'),
(130104, 1006, 6, '64', 'CS', 86, 'Subaru BRZ'),
(130104, 1007, 5, '58', 'DS', 75, 'Mazda Speed3'),
(130104, 1008, 10, '62', 'ES', 41, 'Acura RSX'),
(130104, 1009, 8, '63', 'ES', 54, 'VW Golf'),
(130104, 1014, 6, '57', 'DS', 1, 'Subaru WRX'),
(130104, 1015, 5, '65', 'CS', 8, 'Mazda RX-8'),
(130105, 1002, 10, '55', 'DS', 93, 'Subaru WRX'),
(130105, 1003, 8, '56', 'DS', 78, 'Mini Cooper S'),
(130105, 1004, 6, '63', 'CS', 1, 'Mazda MX5'),
(130105, 1005, 10, '58', 'CS', 7, 'Mazda Miata'),
(130105, 1006, 8, '62', 'CS', 86, 'Subaru BRZ'),
(130105, 1007, 5, '59', 'DS', 75, 'Mazda Speed3'),
(130105, 1008, 10, '61', 'ES', 41, 'Acura RSX'),
(130105, 1009, 6, '64', 'ES', 54, 'VW Golf'),
(130105, 1010, 8, '63', 'ES', 62, 'Toyota Celica'),
(130105, 1011, 10, '62', 'FS', 68, 'Chevy Camaro'),
(130105, 1013, 8, '65', 'FS', 87, 'Dodge Charger'),
(130105, 1014, 6, '57', 'DS', 1, 'Subaru WRX'),
(130105, 1015, 5, '66', 'CS', 8, 'Mazda RX-8'),
(140101, 1001, 10, '59', 'CS', 11, 'Scion FRS'),
(140101, 1002, 10, '55', 'DS', 93, 'Subaru WRX'),
(140101, 1003, 8, '55', 'DS', 78, 'Mini Cooper S'),
(140101, 1004, 8, '61', 'CS', 13, 'Mazda MX5'),
(140101, 1005, 6, '61', 'CS', 15, 'Mazda Miata'),
(140101, 1006, 5, '62', 'CS', 64, 'Subaru BRZ'),
(140101, 1007, 6, '57', 'DS', 75, 'Mazda Speed3'),
(140101, 1008, 10, '66', 'ES', 41, 'Acura RSX'),
(140101, 1009, 8, '68', 'ES', 54, 'VW Golf'),
(140101, 1010, 6, '72', 'ES', 62, 'Toyota Celica'),
(140102, 1001, 10, '63', 'CS', 11, 'Scion FRS'),
(140102, 1002, 8, '59', 'DS', 93, 'Subaru WRX'),
(140102, 1003, 10, '59', 'DS', 78, 'Mini Cooper S'),
(140102, 1004, 6, '65', 'CS', 13, 'Mazda MX5'),
(140102, 1005, 8, '64', 'CS', 15, 'Mazda Miata'),
(140102, 1006, 5, '66', 'CS', 64, 'Subaru BRZ'),
(140102, 1007, 6, '60', 'DS', 75, 'Mazda Speed3'),
(140102, 1008, 10, '67', 'ES', 41, 'Acura RSX'),
(140102, 1009, 8, '68', 'ES', 54, 'VW Golf'),
(140102, 1010, 6, '69', 'ES', 62, 'Toyota Celica'),
(140102, 1011, 8, '73', 'FS', 68, 'Chevy Camaro'),
(140102, 1012, 10, '72', 'FS', 73, 'Ford Mustang'),
(140102, 1013, 6, '75', 'FS', 87, 'Dodge Charger'),
(140103, 1001, 10, '63', 'CS', 11, 'Scion FRS'),
(140103, 1002, 8, '59', 'DS', 93, 'Subaru WRX'),
(140103, 1003, 10, '59', 'DS', 78, 'Mini Cooper S'),
(140103, 1004, 6, '65', 'CS', 13, 'Mazda MX5'),
(140103, 1005, 8, '64', 'CS', 15, 'Mazda Miata'),
(140103, 1006, 5, '66', 'CS', 64, 'Subaru BRZ'),
(140103, 1007, 6, '60', 'DS', 75, 'Mazda Speed3'),
(140103, 1008, 10, '67', 'ES', 41, 'Acura RSX'),
(140103, 1009, 8, '68', 'ES', 54, 'VW Golf'),
(140103, 1010, 6, '69', 'ES', 62, 'Toyota Celica'),
(140103, 1011, 8, '70', 'FS', 68, 'Chevy Camaro'),
(140103, 1012, 10, '70', 'FS', 73, 'Ford Mustang'),
(140103, 1013, 6, '72', 'FS', 87, 'Dodge Charger'),
(140103, 1014, 5, '61', 'DS', 1, 'Subaru WRX'),
(140103, 1015, 4, '66', 'CS', 8, 'Mazda RX-8'),
(140104, 1001, 10, '62', 'CS', 11, 'Scion FRS'),
(140104, 1002, 8, '58', 'DS', 93, 'Subaru WRX'),
(140104, 1003, 10, '58', 'DS', 78, 'Mini Cooper S'),
(140104, 1004, 6, '64', 'CS', 13, 'Mazda MX5'),
(140104, 1005, 8, '63', 'CS', 15, 'Mazda Miata'),
(140104, 1006, 5, '65', 'CS', 64, 'Subaru BRZ'),
(140104, 1007, 6, '59', 'DS', 75, 'Mazda Speed3'),
(140104, 1008, 10, '66', 'ES', 41, 'Acura RSX'),
(140104, 1009, 8, '67', 'ES', 54, 'VW Golf'),
(140104, 1010, 6, '68', 'ES', 62, 'Toyota Celica'),
(140104, 1011, 8, '69', 'FS', 68, 'Chevy Camaro'),
(140104, 1012, 10, '69', 'FS', 73, 'Ford Mustang'),
(140104, 1013, 6, '71', 'FS', 87, 'Dodge Charger'),
(140104, 1014, 5, '60', 'DS', 1, 'Subaru WRX'),
(140104, 1015, 4, '65', 'CS', 8, 'Mazda RX-8'),
(140105, 1001, 8, '62', 'CS', 11, 'Scion FRS'),
(140105, 1002, 8, '58', 'DS', 93, 'Subaru WRX'),
(140105, 1003, 10, '58', 'DS', 78, 'Mini Cooper S'),
(140105, 1004, 6, '63', 'CS', 13, 'Mazda MX5'),
(140105, 1005, 10, '61', 'CS', 15, 'Mazda Miata'),
(140105, 1006, 5, '66', 'CS', 64, 'Subaru BRZ'),
(140105, 1007, 6, '59', 'DS', 75, 'Mazda Speed3'),
(140105, 1008, 10, '64', 'ES', 41, 'Acura RSX'),
(140105, 1009, 8, '65', 'ES', 54, 'VW Golf'),
(140105, 1010, 6, '68', 'ES', 62, 'Toyota Celica'),
(140105, 1011, 8, '67', 'FS', 68, 'Chevy Camaro'),
(140105, 1012, 10, '66', 'FS', 73, 'Ford Mustang'),
(140105, 1013, 6, '69', 'FS', 87, 'Dodge Charger'),
(140105, 1014, 5, '60', 'DS', 1, 'Subaru WRX'),
(140105, 1015, 4, '67', 'CS', 8, 'Mazda RX-8'),
(140201, 1201, 4, '77', 'CS', 11, 'Toyota MR2'),
(140201, 1202, 6, '70', 'CS', 86, 'Scion FR-S'),
(140201, 1203, 5, '74', 'CS', 93, 'Acura Integra Type-R'),
(140201, 1204, 10, '68', 'CS', 1, 'Mazda MX5'),
(140201, 1205, 8, '68', 'CS', 2, 'Mazda MX5'),
(140201, 1206, 8, '65', 'DS', 26, 'Subaru WRX'),
(140201, 1207, 5, '71', 'DS', 3, 'Mazda Speed3'),
(140201, 1208, 10, '63', 'DS', 35, 'Nissan 350z'),
(140201, 1209, 6, '68', 'DS', 7, 'Volkswagon GTI'),
(140201, 1210, 6, '79', 'ES', 62, 'Toyota Celica'),
(140201, 1211, 8, '72', 'ES', 68, 'Honda Civic Si'),
(140201, 1212, 10, '67', 'ES', 73, 'Mazda Miata'),
(140201, 1213, 6, '75', 'FS', 87, 'Pontiac Trans Am'),
(140201, 1214, 10, '69', 'FS', 1, 'Ford Mustang'),
(140201, 1215, 8, '72', 'FS', 8, 'Chevrolet Camaro'),
(140202, 1201, 4, '75', 'CS', 11, 'Toyota MR2'),
(140202, 1202, 6, '69', 'CS', 86, 'Scion FR-S'),
(140202, 1203, 5, '73', 'CS', 93, 'Acura Integra Type-R'),
(140202, 1204, 10, '67', 'CS', 1, 'Mazda MX5'),
(140202, 1205, 8, '67', 'CS', 2, 'Mazda MX5'),
(140202, 1206, 8, '64', 'DS', 26, 'Subaru WRX'),
(140202, 1207, 5, '73', 'DS', 3, 'Mazda Speed3'),
(140202, 1208, 10, '62', 'DS', 35, 'Nissan 350z'),
(140202, 1209, 6, '69', 'DS', 7, 'Volkswagon GTI'),
(140202, 1210, 6, '78', 'ES', 62, 'Toyota Celica'),
(140202, 1211, 8, '71', 'ES', 68, 'Honda Civic Si'),
(140202, 1212, 10, '69', 'ES', 73, 'Mazda Miata'),
(140202, 1213, 8, '74', 'FS', 87, 'Pontiac Trans Am'),
(140202, 1214, 10, '68', 'FS', 1, 'Ford Mustang'),
(140202, 1215, 6, '76', 'FS', 8, 'Chevrolet Camaro'),
(140203, 1201, 4, '78', 'CS', 11, 'Toyota MR2'),
(140203, 1202, 6, '72', 'CS', 86, 'Scion FR-S'),
(140203, 1203, 5, '76', 'CS', 93, 'Acura Integra Type-R'),
(140203, 1204, 10, '69', 'CS', 1, 'Mazda MX5'),
(140203, 1205, 8, '70', 'CS', 2, 'Mazda MX5'),
(140203, 1206, 8, '67', 'DS', 26, 'Subaru WRX'),
(140203, 1207, 5, '76', 'DS', 3, 'Mazda Speed3'),
(140203, 1208, 10, '65', 'DS', 35, 'Nissan 350z'),
(140203, 1209, 6, '72', 'DS', 7, 'Volkswagon GTI'),
(140203, 1210, 6, '81', 'ES', 44, 'Toyota Celica'),
(140203, 1211, 8, '74', 'ES', 68, 'Honda Civic Si'),
(140203, 1212, 10, '71', 'ES', 73, 'Mazda Miata'),
(140203, 1213, 6, '77', 'FS', 87, 'Pontiac Trans Am'),
(140203, 1214, 10, '71', 'FS', 1, 'Ford Mustang'),
(140203, 1215, 8, '77', 'FS', 8, 'Chevrolet Camaro'),
(140204, 1202, 6, '72', 'CS', 86, 'Scion FR-S'),
(140204, 1203, 5, '75', 'CS', 93, 'Acura Integra Type-R'),
(140204, 1204, 10, '68', 'CS', 1, 'Mazda MX5'),
(140204, 1205, 8, '70', 'CS', 2, 'Mazda MX5'),
(140204, 1206, 8, '66', 'DS', 26, 'Subaru WRX'),
(140204, 1208, 10, '64', 'DS', 35, 'Nissan 350z'),
(140204, 1209, 6, '71', 'DS', 7, 'Volkswagon GTI'),
(140204, 1210, 6, '77', 'ES', 44, 'Toyota Celica'),
(140204, 1211, 8, '74', 'ES', 68, 'Honda Civic Si'),
(140204, 1212, 10, '71', 'ES', 73, 'Mazda Miata'),
(140204, 1213, 8, '74', 'FS', 87, 'Pontiac Trans Am'),
(140204, 1214, 10, '71', 'FS', 1, 'Ford Mustang'),
(140205, 1201, 4, '75', 'CS', 11, 'Toyota MR2'),
(140205, 1202, 6, '72', 'CS', 86, 'Scion FR-S'),
(140205, 1203, 5, '74', 'CS', 93, 'Acura Integra Type-R'),
(140205, 1204, 10, '69', 'CS', 1, 'Mazda MX5'),
(140205, 1205, 8, '71', 'CS', 2, 'Mazda MX5'),
(140205, 1206, 6, '66', 'DS', 26, 'Subaru WRX'),
(140205, 1207, 8, '64', 'DS', 3, 'Mazda Speed3'),
(140205, 1208, 10, '63', 'DS', 35, 'Nissan 350z'),
(140205, 1209, 5, '68', 'DS', 7, 'Volkswagon GTI'),
(140205, 1210, 8, '73', 'ES', 44, 'Toyota Celica'),
(140205, 1211, 6, '77', 'ES', 68, 'Honda Civic Si'),
(140205, 1212, 10, '71', 'ES', 73, 'Mazda Miata'),
(140205, 1213, 6, '75', 'FS', 87, 'Pontiac Trans Am'),
(140205, 1214, 8, '73', 'FS', 1, 'Ford Mustang'),
(140205, 1215, 10, '70', 'FS', 8, 'Chevrolet Camaro');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `Member_ID` mediumint(9) NOT NULL,
  `Name` tinytext NOT NULL,
  PRIMARY KEY (`Member_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Event_ID` mediumint(9) NOT NULL,
  `Location` tinytext NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event_ID`, `Location`, `Date`) VALUES
(130101, 'Hutchinson Naval Air Station', '2013-03-09'),
(130102, 'Hutchinson Naval Air Station', '2013-03-23'),
(130103, 'Hutchinson Naval Air Station', '2013-04-06'),
(130104, 'Hutchinson Naval Air Station', '2013-05-04'),
(130105, 'Hutchinson Naval Air Station', '2013-05-25'),
(140101, 'Hutchinson Naval Air Station', '2014-03-09'),
(140102, 'Hutchinson Naval Air Station', '2014-03-23'),
(140103, 'Hutchinson Naval Air Station', '2014-04-06'),
(140104, 'Hutchinson Naval Air Station', '2014-05-04'),
(140105, 'Hutchinson Naval Air Station', '2014-05-25'),
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
  `Event_ID` mediumint(9) NOT NULL,
  `Region_name` tinytext NOT NULL,
  `Year` year(4) NOT NULL,
  PRIMARY KEY (`Event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`Event_ID`, `Region_name`, `Year`) VALUES
(130101, 'Wichita', 2013),
(130102, 'Wichita', 2013),
(130103, 'Wichita', 2013),
(130104, 'Wichita', 2013),
(130105, 'Wichita', 2013),
(140101, 'Wichita', 2014),
(140102, 'Wichita', 2014),
(140103, 'Wichita', 2014),
(140104, 'Wichita', 2014),
(140105, 'Wichita', 2014),
(140201, 'Salina', 2014),
(140202, 'Salina', 2014),
(140203, 'Salina', 2014),
(140204, 'Salina', 2014),
(140205, 'Salina', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `Region_name` varchar(255) NOT NULL,
  `Director` tinytext NOT NULL,
  `Safety_steward` tinytext NOT NULL,
  PRIMARY KEY (`Region_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`Region_name`, `Director`, `Safety_steward`) VALUES
('Salina', 'Dave Roberts', 'Fred Nickles'),
('Wichita', 'Steve Roberts', 'Jeff Henry');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sum_points`
--
CREATE TABLE IF NOT EXISTS `sum_points` (
`Name` tinytext
,`Total_points` decimal(25,0)
,`Class_name` tinytext
,`Region_Name` tinytext
,`Year` year(4)
);
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(255) NOT NULL,
  `Password` tinytext NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`) VALUES
('Alice', 'password1'),
('Bob', '123456'),
('Carol', 'qwerty'),
('David', 'notPassword');

-- --------------------------------------------------------

--
-- Structure for view `sum_points`
--
DROP TABLE IF EXISTS `sum_points`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sum_points` AS select `drivers`.`Name` AS `Name`,sum(`class`.`Points`) AS `Total_points`,`class`.`Class_name` AS `Class_name`,`host`.`Region_name` AS `Region_Name`,`host`.`Year` AS `Year` from (((`class` join `host`) join `event`) join `drivers`) where ((`class`.`Event_ID` = `host`.`Event_ID`) and (`host`.`Event_ID` = `event`.`Event_ID`) and (`class`.`Member_ID` = `drivers`.`Member_ID`)) group by `drivers`.`Member_ID`,`host`.`Region_name`,`host`.`Year`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
