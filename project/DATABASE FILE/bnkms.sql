-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 09:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bnkms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_customers`
--

CREATE TABLE `bank_customers` (
  `Id` int(100) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(15) DEFAULT NULL,
  `Customer_Photo` longblob DEFAULT NULL,
  `Customer_ID` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Account_no` varchar(20) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `Current_Balance` float(100,2) DEFAULT NULL,
  `LastTransaction` int(20) DEFAULT 0,
  `Mobile_no` varchar(20) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT 'Nil',
  `DOB` varchar(20) DEFAULT NULL,
  `Last_Login` timestamp NULL DEFAULT current_timestamp(),
  `Account_Status` varchar(10) NOT NULL DEFAULT '',
  `Account_type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_customers`
--

INSERT INTO `bank_customers` (`Id`, `Username`, `Password`, `Customer_Photo`, `Customer_ID`, `Gender`, `address`, `Account_no`, `Branch`, `Current_Balance`, `LastTransaction`, `Mobile_no`, `Email_ID`, `DOB`, `Last_Login`, `Account_Status`, `Account_type`) VALUES
(1, 'Zia Un Nabi', '123', NULL, '101', 'Male', 'Gujar Khan', '786786101', 'H8 Islamabad', 72130.00, 0, '03065412030', 'zia@gmail.com', '2001-02-15', '2005-04-22 07:33:23', 'ACTIVE', 'Saving'),
(9, 'Mubeen', '123', NULL, '102', 'Male', 'G10 Islamabad', '786786102', 'H8 Islamabad', 50150.00, 2500, '03332568785', 'mubeen@gmail.com', '2000-04-25', '2004-04-22 06:47:35', 'Active', 'Saving'),
(10, 'Talha Shah', '123', NULL, '103', 'Male', 'Chandni Chowk, Rawalpindi', '786786103', 'H8 Islamabad', 21545.00, 1200, '03408756987', 'talhashah@gmail.com', '1999-06-05', '2004-04-22 03:20:17', 'Active', 'Current'),
(11, 'Hira', '123', NULL, '104', 'Female', 'Rawalpindi', '786786104', 'H8 Islamabad', 11255.00, 0, '03165512010', 'hira@outlook.com', '2002-05-15', '2022-04-04 10:38:50', 'Active', 'Current'),
(12, 'Ayesha', '123', NULL, '105', 'Female', 'Rawalpindi', '786786105', 'H8 Islamabad', 9502.00, 0, '03025512000', 'ayesha@outlook.com', '1998-11-05', '2022-04-04 10:41:18', 'Active', 'Current'),
(13, 'Usman', '123', NULL, '106', 'Male', 'Kohat', '786786106', 'H8 Islamabad', 4255.00, 0, '03165512010', 'usman@gmail.com', '2000-12-02', '2022-04-04 10:43:10', 'Active', 'Saving'),
(14, 'Fatima', '123', NULL, '107', 'Female', 'Lahore', '786786107', 'H8 Islamabad', 1000.00, 2500, '03230517365', 'fatima@yahoo.com', '2000-03-07', '2022-04-04 10:46:35', 'Active', 'Current'),
(15, 'Yaseen', '123', NULL, '108', 'Male', 'Karachi', '786786108', 'H8 Islamabad', 8000.00, 4000, '0306345044', 'yaseen@outlook.com', '1997-02-10', '2004-04-22 03:01:16', 'Active', 'Saving');

-- --------------------------------------------------------

--
-- Table structure for table `bank_staff`
--

CREATE TABLE `bank_staff` (
  `Id` int(255) NOT NULL,
  `staff_name` varchar(50) DEFAULT NULL,
  `staff_id` int(10) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Mobile_no` int(11) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT 'Nill',
  `Gender` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `DOB` varchar(50) DEFAULT NULL,
  `Home_addr` varchar(50) DEFAULT NULL,
  `Last_login` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_staff`
--

INSERT INTO `bank_staff` (`Id`, `staff_name`, `staff_id`, `Password`, `Mobile_no`, `Email_id`, `Gender`, `Department`, `DOB`, `Home_addr`, `Last_login`) VALUES
(1, 'Admin', 786, '123', 305426875, 'admin@gmail.com', 'Male', 'Manager', '10121995', 'H8 Islamabad', '05/04/22 12:44:03 AM');

-- --------------------------------------------------------

--
-- Table structure for table `statement_101`
--

CREATE TABLE `statement_101` (
  `id` int(255) NOT NULL,
  `Transaction_id` varchar(255) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` varchar(255) DEFAULT NULL,
  `Dr_amount` varchar(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `statement_101`
--

INSERT INTO `statement_101` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`, `Remark`) VALUES
(1, '589306552', '2022-04-05 21:55:43', 'Account Opening', '0', '0', '0', NULL),
(2, '583402470', '2022-04-05 22:01:35', 'Cash Deposit/583402470572', '55000', '0', '55000', 'Cash Deposit'),
(5, '841496557', '2022-04-05 06:08:04', 'Mubeen/786786102', '0', '250', '4750', 'Billings'),
(6, '491178166', '2022-03-20 21:46:16', 'Talha Shah/786786103', '0', '1100', '3650', 'Personal'),
(7, '558634665', '2022-03-22 03:12:58', 'Cash Deposit/558634665', '2500', '0', '60950', 'Cash Deposit'),
(8, '188854125', '2022-03-22 06:35:56', 'Cash Deposit/188854125', '11280', '0', '72130', 'Cash Deposit');

-- --------------------------------------------------------

--
-- Table structure for table `statement_102`
--

CREATE TABLE `statement_102` (
  `id` int(255) NOT NULL,
  `Transaction_id` int(255) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` int(255) DEFAULT NULL,
  `Dr_amount` int(255) DEFAULT NULL,
  `Net_Balance` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `statement_102`
--

INSERT INTO `statement_102` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`) VALUES
(1, 2147483647, '2022-04-03 05:34:49', 'Account Opening', 0, 0, 0),
(2, 2147483647, '2022-04-03 05:50:56', 'Cash Deposit/406194305816', 7500, 0, 7500),
(3, 2147483647, '2022-04-03 19:00:00', 'Zia Un Nabi/786786101', 250, 0, 7750),
(4, 429360631, '2022-04-04 11:03:10', 'Hira/786786104', 0, 660, 7090);

-- --------------------------------------------------------

--
-- Table structure for table `statement_103`
--

CREATE TABLE `statement_103` (
  `id` int(255) NOT NULL,
  `Transaction_id` int(255) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` int(255) DEFAULT NULL,
  `Dr_amount` int(255) DEFAULT NULL,
  `Net_Balance` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement_103`
--

INSERT INTO `statement_103` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`) VALUES
(1, 2147483647, '2022-04-03 06:24:10', 'Account Opening', 0, 0, 0),
(2, 807477284, '2022-04-03 06:32:55', 'Cash Deposit/807477284', 2100, 0, 2100),
(3, 983840333, '2022-04-03 06:57:18', 'Ali/1011951011439', 0, 175, 1925),
(4, 200212796, '2022-04-03 22:14:13', 'Ayesha/1011951011439', 37, 0, 1962);

-- --------------------------------------------------------

--
-- Table structure for table `statement_104`
--

CREATE TABLE `statement_104` (
  `id` int(255) NOT NULL,
  `Transaction_id` int(255) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` int(255) DEFAULT NULL,
  `Dr_amount` int(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement_104`
--

INSERT INTO `statement_104` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`) VALUES
(1, 286487266, '2022-04-04 19:00:17', 'Cash Deposit/286487266', 2000, 0, '$11255'),
(2, 773840333, '2022-04-03 06:57:18', 'Ali/1011951015439', 0, 175, 8825),
(3, 670212796, '2022-04-03 22:14:13', 'Ayesha/1011951011799', 357, 0, 6772);

-- --------------------------------------------------------

--
-- Table structure for table `statement_105`
--

CREATE TABLE `statement_105` (
  `id` int(255) NOT NULL,
  `Transaction_id` int(11) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` int(255) DEFAULT NULL,
  `Dr_amount` int(255) DEFAULT NULL,
  `Net_Balance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement_105`
--

INSERT INTO `statement_105` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`) VALUES
(1, 146191935, '2022-04-03 22:20:32', 'Account Opening', 0, 0, '0'),
(2, 350533416, '2022-04-03 22:25:05', 'Talha/1011951011439/1011', 113, 0, '113'),
(3, 265493438, '2022-04-03 22:50:25', 'Mubeen1011801011950/1011', 97, 0, '210');

-- --------------------------------------------------------

--
-- Table structure for table `statement_106`
--

CREATE TABLE `statement_106` (
  `id` int(255) NOT NULL,
  `Transaction_id` int(255) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` int(255) DEFAULT NULL,
  `Dr_amount` int(255) DEFAULT NULL,
  `Net_Balance` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement_106`
--

INSERT INTO `statement_106` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`) VALUES
(1, 146187935, '2022-04-03 22:20:32', 'Account Opening', 0, 0, '0'),
(2, 350535416, '2022-04-03 22:25:05', 'Talha/1011951011479', 113, 0, '1113'),
(3, 265583438, '2022-04-03 22:50:25', 'Mubeen1011801011955', 97, 0, '88210');


-- --------------------------------------------------------

--
-- Table structure for table `statement_107`
--

CREATE TABLE `statement_107` (
  `id` int(255) NOT NULL,
  `Transaction_id` int(255) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` int(255) DEFAULT NULL,
  `Dr_amount` int(255) DEFAULT NULL,
  `Net_Balance` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement_107`
--

INSERT INTO `statement_107` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`) VALUES
(1, 492641662, '2022-04-03 05:44:50', 'Account Opening', 0, 0, 0),
(2, 613135262, '2022-04-03 21:33:10', 'Zia Un Nabi/1011951011439/1011', 50, 0, 50),
(3, 693782042, '2022-04-03 22:49:15', 'Talha/1011801011950/1011', 165, 0, 215);

-- --------------------------------------------------------

--
-- Table structure for table `statement_108`
--

CREATE TABLE `statement_108` (
  `id` int(255) NOT NULL,
  `Transaction_id` int(255) DEFAULT NULL,
  `Transaction_date` timestamp NULL DEFAULT current_timestamp(),
  `Description` varchar(255) DEFAULT NULL,
  `Cr_amount` int(255) DEFAULT NULL,
  `Dr_amount` int(255) DEFAULT NULL,
  `Net_Balance` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statement_108`
--

INSERT INTO `statement_108` (`id`, `Transaction_id`, `Transaction_date`, `Description`, `Cr_amount`, `Dr_amount`, `Net_Balance`) VALUES
(1, 470459348, '2022-04-03 22:42:57', 'Account Opening', 0, 0, 0),
(2, 618213240, '2022-04-03 22:47:09', 'Cash Deposit/618213240', 6000, 0, 6000),
(3, 693782042, '2022-04-03 22:49:15', 'Hira/1011921011768/1011', 0, 165, 5835),
(4, 265493438, '2022-04-03 22:50:25', 'Usman/1011591011722/1011', 0, 97, 5738);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_customers`
--
ALTER TABLE `bank_customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bank_staff`
--
ALTER TABLE `bank_staff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `statement_101`
--
ALTER TABLE `statement_101`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement_102`
--
ALTER TABLE `statement_102`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement_103`
--
ALTER TABLE `statement_103`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement_104`
--
ALTER TABLE `statement_104`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement_105`
--
ALTER TABLE `statement_105`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement_106`
--
ALTER TABLE `statement_106`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement_107`
--
ALTER TABLE `statement_107`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statement_108`
--
ALTER TABLE `statement_108`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_customers`
--
ALTER TABLE `bank_customers`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bank_staff`
--
ALTER TABLE `bank_staff`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statement_101`
--
ALTER TABLE `statement_101`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `statement_102`
--
ALTER TABLE `statement_102`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statement_103`
--
ALTER TABLE `statement_103`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `statement_104`
--
ALTER TABLE `statement_104`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `statement_105`
--
ALTER TABLE `statement_105`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statement_106`
--
ALTER TABLE `statement_106`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statement_107`
--
ALTER TABLE `statement_107`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statement_108`
--
ALTER TABLE `statement_108`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
