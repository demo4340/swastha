-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 09:59 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swastha`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id` int(5) NOT NULL,
  `uid` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `accountnumber` varchar(20) NOT NULL,
  `pin` varchar(10) NOT NULL,
  `accountbalance` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`id`, `uid`, `name`, `accountnumber`, `pin`, `accountbalance`) VALUES
(13, 34, 'Anjana', '123456', '682301', 1611),
(14, 36, 'ATHIRA ', '123987', '4568', 3077),
(15, 42, 'alana', '54667', '9999', 100),
(16, 43, 'ayana', '8765', '8888', 200),
(17, 44, 'bisty', '5599', '7777', 300),
(18, 41, 'niranjana', '3345', '6666', 400),
(19, 38, 'devika', '2244', '5555', 500),
(20, 40, 'Divya', '6634', '5555', 1616);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adminlogin`
--

CREATE TABLE `tbl_adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adminlogin`
--

INSERT INTO `tbl_adminlogin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaints`
--

CREATE TABLE `tbl_complaints` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subject` varchar(100) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `reply` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_complaints`
--

INSERT INTO `tbl_complaints` (`id`, `uid`, `date_time`, `subject`, `complaint`, `reply`) VALUES
(10, 40, '2019-05-09 17:55:49', 'Waste collection ', 'Improper collection of waste ', 'will solve the problem soon...'),
(11, 34, '2019-05-12 15:57:34', 'waste', 'improperly', ''),
(12, 34, '2019-05-12 16:06:21', 'new', 'new', ''),
(13, 34, '2019-05-13 05:36:48', 'Neww', 'Newww complaint', ''),
(14, 34, '2019-05-13 05:40:37', 'New', 'Neww123', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plantauthority`
--

CREATE TABLE `tbl_plantauthority` (
  `id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `type_of_plant` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_plantauthority`
--

INSERT INTO `tbl_plantauthority` (`id`, `location`, `datetime`, `type_of_plant`) VALUES
(1, 'kalamassery', '2019-10-11 17:47:03', 'recycle');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plantlogin`
--

CREATE TABLE `tbl_plantlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_plantlogin`
--

INSERT INTO `tbl_plantlogin` (`id`, `username`, `password`) VALUES
(1, 'plant', 'plant');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_publicbin`
--

CREATE TABLE `tbl_publicbin` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL,
  `collectionStatus` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_publicbin`
--

INSERT INTO `tbl_publicbin` (`id`, `bid`, `latitude`, `longitude`, `location`, `type`, `status`, `collectionStatus`) VALUES
(1, 3, '9.9223712', '76.3557988', 'kolencherry', 'public', 'filled', 'pending'),
(2, 5, '10.0013101', '76.4438616', 'kadayiruppu', 'public', 'filled', 'pending'),
(4, 4, '10.004702', '76.303927', 'palarivattom', 'public', 'filled', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `id` int(11) NOT NULL,
  `uid` varchar(11) NOT NULL,
  `wid` varchar(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(25) NOT NULL,
  `status` varchar(100) NOT NULL,
  `requested_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_request`
--

INSERT INTO `tbl_request` (`id`, `uid`, `wid`, `date`, `time`, `status`, `requested_date`) VALUES
(1, '34', '13', '13/5/2019', '11:14', 'completed', '13/5/2019'),
(2, '34', '13', '31/5/2019', '6:29', 'completed', '31/5/2019'),
(3, '34', '13', '31/5/2019', '6:29', 'completed', '31/5/2019'),
(4, '40', '13', '13/5/2019', '11:17', 'completed', '13/5/2019'),
(5, '34', '10', '29/5/2019', '6:30', 'completed', '29/5/2019'),
(6, '34', '10', '29/5/2019', '6:30', 'completed', '29/5/2019'),
(7, '34', '11', '29/5/2019', '6:30', 'completed', '29/5/2019'),
(8, '34', '13', '13/5/2019', '11:28', 'completed', '13/5/2019'),
(9, '34', '13', '13/5/2019', '11:28', 'completed', '13/5/2019'),
(10, '34', '10', '13/5/2019', '11:28', 'completed', '13/5/2019'),
(11, '34', '11', '13/5/2019', '11:28', 'completed', '13/5/2019'),
(12, '34', '11', '31/5/2019', '6:30', 'completed', '31/5/2019'),
(13, '34', '10', '31/5/2019', '6:30', 'completed', '31/5/2019'),
(14, '34', '11', '13/5/2019', '11:50', 'completed', '13/5/2019'),
(15, '40', '11', '13/5/2019', '12:3', 'completed', '13/5/2019'),
(16, '40', '10', '13/5/2019', '12:27', 'completed', '13/5/2019'),
(17, '40', '10', '13/5/2019', '12:30', 'requested', '13/5/2019');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setrate`
--

CREATE TABLE `tbl_setrate` (
  `id` int(11) NOT NULL,
  `type_of_waste` varchar(20) NOT NULL,
  `categories` varchar(100) NOT NULL,
  `rate_per_kg` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setrate`
--

INSERT INTO `tbl_setrate` (`id`, `type_of_waste`, `categories`, `rate_per_kg`) VALUES
(1, 'Scrap', 'Metal', 100),
(2, 'Scrap', 'Paper', 100),
(3, 'Scrap', 'Plastic', 50),
(4, 'Scrap', 'Vehicleparts', 200),
(5, 'Scrap', 'Fluorescentlamp', 60),
(6, 'Scrap', 'Rechargeablebatteries', 50),
(7, 'Scrap', 'Glass', 30),
(9, 'E-Waste', 'OfficeElectronics', 150),
(10, 'E-Waste', 'TelecommunicationEquipment', 200),
(11, 'E-Waste', 'Others', 50),
(12, 'Food', '-', 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `bid` varchar(5) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `location` varchar(50) NOT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `bid`, `name`, `address`, `location`, `contact`, `email`, `username`, `password`, `status`) VALUES
(42, '25', 'Alana', 'asd', 'Kothamangalam', '1234567788', 'alanaeldhose@gmail.com', 'alana', 'alana1234', '1'),
(43, '20', 'Ayana', 'Dghj', 'Kottayum ', '9876543210', 'ayanashaji@gmail.com', 'ayana', 'ayana1234', '1'),
(41, '22', 'niranjana', 'abc', 'aluva', '9497737647', 'andrudada1234@gmail.com', 'niranjana', 'niranjana1234', '1'),
(38, '5', 'Devika', 'abc', 'Kakkanad', '9447795216', 'devub2012@gmail.com', 'devu', 'devu1234', '1'),
(34, '21', 'Anjana', 'KRISHNANJANAM hse', 'PUTHIYAKAVU ', '6282750757', 'anjusobhas@gmail.com', 'anju', 'anju1234', '1'),
(40, '23', 'divya', 'Aiswaryam hse', 'Hill Palace ', '9496020305', 'divyasree221997@gmail.com', 'divya', 'divya1234', '1'),
(36, '4', 'Athira', 'Ghjk', 'Aluva', '8089466328', 'athirakm008@gmail.com', 'Athira', 'athira1234', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userbin`
--

CREATE TABLE `tbl_userbin` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userbin`
--

INSERT INTO `tbl_userbin` (`id`, `bid`, `latitude`, `longitude`) VALUES
(1, 23, '10.004702', '76.303927');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wastedetails`
--

CREATE TABLE `tbl_wastedetails` (
  `id` int(5) NOT NULL,
  `bid` int(5) NOT NULL,
  `uid` int(5) NOT NULL,
  `wid` int(5) NOT NULL,
  `type_of_waste` varchar(20) NOT NULL,
  `categories` varchar(20) NOT NULL,
  `weight` int(5) NOT NULL,
  `rate_per_kg` int(4) NOT NULL,
  `amount` int(5) NOT NULL,
  `date_time` text NOT NULL,
  `pid` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wastedetails`
--

INSERT INTO `tbl_wastedetails` (`id`, `bid`, `uid`, `wid`, `type_of_waste`, `categories`, `weight`, `rate_per_kg`, `amount`, `date_time`, `pid`, `status`, `type`) VALUES
(1, 0, 8, 1, 'Scrap', 'Plastic', 7, 50, 350, '2017-09-26 12:04:50', 0, '', ''),
(2, 0, 15, 0, 'Food', 'null', 0, 0, 0, '2017-09-26 12:21:09', 1, 'dumped', ''),
(3, 0, 15, 0, 'E-Waste', 'HouseholdAppliances', 5, 200, 1000, '2017-09-26 12:51:30', 1, 'dumped', ''),
(4, 0, 8, 1, 'Scrap', 'Paper', 2, 100, 0, '2017-09-26 12:53:25', 0, '', ''),
(5, 0, 8, 0, 'Scrap', 'OfficeElectronics', 3, 150, 0, '2017-09-26 13:03:52', 1, 'dumped', ''),
(6, 0, 8, 0, 'Scrap', 'OfficeElectronics', 3, 150, 450, '2017-09-26 13:05:16', 1, 'dumped', ''),
(7, 0, 8, 0, 'Scrap', 'OfficeElectronics', 3, 150, 450, '2017-09-26 13:06:02', 1, 'dumped', ''),
(8, 0, 8, 0, 'E-Waste', 'OfficeElectronics', 7, 150, 1050, '', 1, 'dumped', ''),
(9, 2, 8, 1, 'E-Waste', '_Vehicle_Vehicle_Veh', 3, 50, 150, '2017-09-26 13:06:02', 0, 'collected', 'public'),
(10, 2, 8, 1, 'Scrap', '_Metal_Glass', 3, 50, 150, '', 0, 'collected', 'user'),
(11, 2, 8, 1, 'Scrap', '_Metal_Paper_Glass', 3, 50, 150, '', 0, 'collected', 'user'),
(12, 2, 8, 1, 'Scrap', '_Metal_Glass', 3, 50, 150, '', 0, 'collected', 'user'),
(13, 2, 8, 1, 'Scrap', '_Metal_Glass', 0, 0, 0, '', 0, 'collected', 'user'),
(14, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(15, 2, 8, 0, 'Scrap', '_Metal_Paper', 5, 0, 0, '', 1, 'dumped', 'user'),
(16, 2, 8, 0, 'Scrap', '_Metal_Paper', 5, 0, 0, '', 1, 'dumped', 'user'),
(17, 2, 8, 0, 'Scrap', '_Metal_Paper', 3, 0, 300, '', 1, 'dumped', 'user'),
(18, 2, 8, 0, 'Scrap', '_Metal_Paper', 3, 0, 0, '', 1, 'dumped', 'user'),
(19, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(20, 2, 8, 0, 'Scrap', '_Metal_Paper', 2, 0, 0, '', 1, 'dumped', 'user'),
(21, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(22, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(23, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(24, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(25, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(26, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(27, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(28, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(29, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(30, 2, 8, 0, 'Scrap', '_Metal_Paper', 3, 0, 0, '', 1, 'dumped', 'user'),
(31, 2, 8, 0, 'Scrap', '_Metal_Paper', 4, 0, 0, '', 1, 'dumped', 'user'),
(32, 2, 8, 0, 'Scrap', '_Metal_Metal_Paper', 3, 0, 0, '', 1, 'dumped', 'user'),
(33, 2, 8, 0, 'Scrap', '_Metal_Metal_Paper', 3, 0, 0, '', 1, 'dumped', 'user'),
(34, 2, 8, 0, 'Scrap', '_Metal_Metal_Paper', 3, 0, 0, '', 1, 'dumped', 'user'),
(35, 1, 9, 0, 'Scrap', '_Metal_Vehicle', 2, 0, 0, '', 0, 'collected', ''),
(36, 2, 8, 0, 'Scrap', '_Paper_Paper', 0, 0, 0, '', 0, 'collected', ''),
(37, 2, 8, 0, 'Scrap', '_Metal', 3, 0, 0, '', 0, 'collected', ''),
(38, 2, 8, 0, 'E-Waste', '_Plastic', 0, 0, 0, '', 0, 'collected', ''),
(39, 2, 8, 0, 'E-Waste', '_Plastic', 0, 0, 0, '', 0, 'collected', ''),
(40, 2, 8, 0, 'E-Waste', '_Plastic_Plastic', 0, 0, 0, '', 0, 'collected', ''),
(41, 2, 8, 0, 'E-Waste', '_Plastic_Plastic', 0, 0, 0, '', 0, 'collected', ''),
(42, 2, 8, 0, 'E-Waste', '_Plastic', 0, 0, 0, '', 0, 'collected', ''),
(43, 0, 36, 10, 'Food', 'ss', 0, 0, 200, '', 0, 'collected', 'food'),
(44, 0, 36, 10, 'Food', 'ss', 0, 0, 100, '', 0, 'collected', 'food'),
(45, 0, 36, 10, 'Food', 'ss', 0, 0, 200, '', 0, 'collected', 'food'),
(46, 0, 36, 10, 'Food', 'ss', 0, 0, 100, '', 0, 'collected', 'food'),
(47, 0, 36, 10, 'Food', 'ss', 0, 0, 90, '', 0, 'collected', 'food'),
(48, 2, 8, 0, 'E-Waste', '_Plastic', 0, 0, 0, '', 0, 'collected', ''),
(49, 2, 8, 0, 'E-Waste', '_Plastic', 0, 0, 0, '', 0, 'collected', ''),
(50, 0, 36, 10, 'Food', 'ss', 0, 0, 290, '', 0, 'collected', 'food'),
(51, 4, 36, 10, 'Scrap', '', 0, 0, 100, '', 0, 'collected', 'User'),
(52, 0, 36, 10, 'Food', '', 0, 0, 1000, '', 0, 'collected', 'User'),
(53, 0, 36, 10, 'Food', '', 0, 0, 100, '', 0, 'collected', 'User'),
(54, 4, 36, 11, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'User'),
(55, 4, 36, 11, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'User'),
(56, 4, 36, 10, 'E-Waste', '_Plastic', 0, 0, 150, '', 0, 'collected', 'User'),
(57, 21, 34, 14, 'E-Waste', '_Plastic', 0, 0, 50, '', 0, 'collected', 'User'),
(58, 21, 34, 14, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'User'),
(59, 21, 34, 12, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'User'),
(60, 21, 34, 12, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'User'),
(61, 21, 34, 12, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'User'),
(62, 21, 34, 12, 'E-Waste', '_Plastic', 0, 0, 200, '', 0, 'collected', 'User'),
(63, 4, 36, 10, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'user'),
(64, 4, 36, 10, 'E-Waste', '_Plastic', 0, 0, 100, '', 0, 'collected', 'user'),
(65, 4, 36, 10, 'Scrap', '_Metal', 100, 0, 10000, '', 0, 'collected', 'user'),
(66, 4, 36, 10, 'Scrap', '_Paper', 0, 0, 10000, '', 0, 'collected', 'user'),
(67, 4, 36, 10, 'E-Waste', '_Metal_Paper_Glass_P', 10, 0, 6789, '', 0, 'collected', 'user'),
(68, 4, 36, 10, 'E-Waste', '_Vehicle', 0, 0, 1600, '', 0, 'collected', 'user'),
(69, 4, 36, 10, 'E-Waste', '_Vehicle', 0, 0, 400, '', 0, 'collected', 'user'),
(70, 4, 36, 11, 'Scrap', '_Metal', 90, 0, 900, '', 0, 'collected', 'user'),
(71, 4, 36, 11, 'E-Waste', '_Vehicle', 0, 0, 1000, '', 0, 'collected', 'user'),
(72, 4, 36, 11, 'Scrap', '_Metal', 10, 0, 1000, '', 0, 'collected', 'user'),
(73, 4, 11, 11, 'E-Waste', '_Metal_Vehicle', 2, 0, 1400, '', 0, 'collected', 'user'),
(74, 4, 11, 11, 'E-Waste', '_Vehicle_Vehicle', 0, 0, 1000, '', 0, 'collected', 'user'),
(75, 4, 11, 11, 'E-Waste', '_Vehicle_Vehicle', 0, 0, 1000, '', 0, 'collected', 'user'),
(76, 4, 11, 11, 'E-Waste', '_Metal_Vehicle', 10, 0, 30, '', 0, 'collected', 'user'),
(77, 4, 36, 11, 'Scrap', '_Glass', 0, 0, 8, '', 0, 'collected', 'user'),
(78, 4, 36, 11, 'Scrap', '_Paper', 0, 0, 55, '', 0, 'collected', 'user'),
(79, 4, 40, 11, 'Scrap', '_Glass', 0, 0, 12, '', 0, 'collected', 'user'),
(80, 4, 40, 11, 'Scrap', '_Metal', 2, 0, 200, '', 0, 'collected', 'user'),
(81, 3, 36, 10, 'Scrap', '_Glass', 0, 0, 500, '', 0, 'collected', 'scrap'),
(82, 3, 36, 12, 'Scrap', '_Metal', 1, 0, 222, '', 0, 'collected', 'scrap'),
(83, 21, 34, 10, 'E-Waste', '_Vehicle', 0, 0, 111, '', 0, 'collected', 'user'),
(84, 21, 34, 11, 'E-Waste', '_Vehicle', 0, 0, 200, '', 0, 'collected', 'user'),
(85, 21, 34, 11, 'Scrap', '_Metal', 5, 0, 500, '', 0, 'collected', 'user'),
(86, 2, 8, 10, 'Scrap', '_Metal', 10, 0, 1000, '', 0, 'collected', ''),
(87, 23, 40, 11, 'E-Waste', '_Vehicle', 0, 0, 600, '', 0, 'collected', 'user'),
(88, 23, 40, 10, 'Scrap', '_Metal', 1, 0, 100, '', 0, 'collected', 'user'),
(89, 23, 40, 10, 'Scrap', '_Metal', 1, 0, 100, '', 0, 'collected', 'user'),
(90, 13, 34, 13, 'scrap', 'metal', 50, 0, 1000, '321321', 0, 'collected', 'user'),
(91, 23, 40, 10, 'Scrap', '_Metal', 1, 0, 100, '', 0, 'collected', 'user'),
(92, 23, 40, 10, 'Scrap', '_Metal', 1, 10, 111, '2019/05/13', 1, 'collected', 'user'),
(93, 23, 40, 10, 'Food', '', 0, 10, 200, '2019/05/13', 1, 'collected', 'user'),
(94, 23, 40, 10, 'Food', '', 0, 10, 7, '2019/05/13', 1, 'collected', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_worker`
--

CREATE TABLE `tbl_worker` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` datetime NOT NULL,
  `aadhar_no` int(20) NOT NULL,
  `worker_type` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `account_status` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_worker`
--

INSERT INTO `tbl_worker` (`id`, `name`, `address`, `phonenumber`, `email`, `dob`, `aadhar_no`, `worker_type`, `username`, `password`, `status`, `account_status`) VALUES
(12, 'devu', 'plkj', '1234567648', 'devub2012@gmail.com', '0000-00-00 00:00:00', 0, 'E-WASTE', 'devika', 'devika1234', 'A', '1'),
(11, 'Divya', 'kdlwk', '9496020305', 'divyasree221997@gmail.com', '0000-00-00 00:00:00', 0, 'E-WASTE', 'divya', 'divya1234', 'A', '1'),
(10, 'anju', 'xyz', '9496020305', 'shobhasatheesh2017@gmail.com', '0000-00-00 00:00:00', 0, 'FOOD', 'anj', 'anj1234', 'A', '1'),
(13, 'Andru', 'aaaaaa', '8089466328', 'athirakm008@gmail.com', '0000-00-00 00:00:00', 0, 'SCRAP', 'andru', 'andru1234', 'A', '1'),
(14, 'Bisty', 'puthencruz', '9895542207', 'sivasreedivyadevi@gmail.com', '0000-00-00 00:00:00', 0, 'E-WASTE', 'bisty', 'bisty1234', 'D', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_worker_loc`
--

CREATE TABLE `tbl_worker_loc` (
  `id` int(11) NOT NULL,
  `wid` varchar(20) NOT NULL,
  `latitude` varchar(25) NOT NULL,
  `longitude` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  `worker_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_worker_loc`
--

INSERT INTO `tbl_worker_loc` (`id`, `wid`, `latitude`, `longitude`, `status`, `worker_type`) VALUES
(7, '10', '10.004702', '76.303927', 'A', 'FOOD'),
(8, '11', '10.0089331', '76.3155754', 'A', 'E-WASTE'),
(9, '12', '9.9788888', '76.4669037', 'A', 'E-WASTE'),
(10, '13', '10.5113799', '76.1532099', 'A', 'SCRAP'),
(11, '14', '9.9751537', '76.4109162', 'A', 'E-WASTE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_adminlogin`
--
ALTER TABLE `tbl_adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plantauthority`
--
ALTER TABLE `tbl_plantauthority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plantlogin`
--
ALTER TABLE `tbl_plantlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_publicbin`
--
ALTER TABLE `tbl_publicbin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setrate`
--
ALTER TABLE `tbl_setrate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userbin`
--
ALTER TABLE `tbl_userbin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wastedetails`
--
ALTER TABLE `tbl_wastedetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_worker`
--
ALTER TABLE `tbl_worker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_worker_loc`
--
ALTER TABLE `tbl_worker_loc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_adminlogin`
--
ALTER TABLE `tbl_adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_complaints`
--
ALTER TABLE `tbl_complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_plantauthority`
--
ALTER TABLE `tbl_plantauthority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_plantlogin`
--
ALTER TABLE `tbl_plantlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_publicbin`
--
ALTER TABLE `tbl_publicbin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_setrate`
--
ALTER TABLE `tbl_setrate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_userbin`
--
ALTER TABLE `tbl_userbin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_wastedetails`
--
ALTER TABLE `tbl_wastedetails`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tbl_worker`
--
ALTER TABLE `tbl_worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_worker_loc`
--
ALTER TABLE `tbl_worker_loc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
