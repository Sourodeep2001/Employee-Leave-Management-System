-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220524.9aa859bdd3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 05:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeleavedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `fullname`, `email`, `updationDate`) VALUES
(8, 'souro', '21232f297a57a5a743894a0e4a801fc3', 'Sourodeep Paul', 'souro2001@gmail.com', '2022-06-16 03:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `md`
--

CREATE TABLE `md` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(60) NOT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `md`
--

INSERT INTO `md` (`id`, `UserName`, `Password`, `fullname`, `email`, `UpdationDate`) VALUES
(5, 'souro', 'c542bfda5e59b9475685f78faaec0e87', 'Sourodeep Paul', 'sourodeepxd2001@gmail.com', '2022-04-07 15:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(9, 'Accounts', 'AC', 'AC125', '2022-03-27 06:51:49'),
(10, 'Human Resource', 'HR', 'HR100', '2022-03-27 12:17:26'),
(11, 'Information Technology', 'IT', 'IT420', '2022-03-27 12:20:22'),
(12, 'Operation', 'OP', 'OP390', '2022-03-27 12:22:50'),
(13, 'Voulnteer', 'VT', 'VT095', '2022-03-27 12:24:59'),
(14, 'Research', 'RS', 'RS250', '2022-03-27 12:26:46'),
(15, 'Marketing', 'MT', 'MT600', '2022-03-27 12:28:31'),
(16, 'Sales', 'SL', 'SL545', '2022-03-27 12:28:54'),
(17, 'Finance', 'FN', 'FN780', '2022-03-27 12:30:10'),
(18, 'Banking', 'BN', 'BN050', '2022-03-27 12:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(11, 'EMP_12345567980', 'Tiyasha ', 'Majumder', 'tm@gmail.com', '07c8dba3848f9e354aa85a5ab7881dea', 'Female', '2001-06-21', 'Marketing', 'Sasthitala Sapuipara, Bally', 'Howrah', 'India', '8910037568', 1, '2022-03-27 06:50:20'),
(12, 'EMP_9876432160', 'Soumana', 'Samaddar', 'ss@yahoo.com', '3691308f2a4c2f6983f2880d32e29c84', 'Female', '1965-06-24', 'Voulnteer', 'Baidyabati', 'Hooghly', 'India', '9513578520', 0, '2022-04-01 07:50:30'),
(13, 'EMP_12349876045', 'Subhadip', 'Chakraborty', 'sc@gmail.com', '8e4905651adddfe4d0d04b6dc6d1ea18', 'Male', '1996-02-19', 'Information Technology', '15/3 Shiv chandra street', 'Kolkata', 'India', '9874369054', 0, '2022-05-03 14:18:21'),
(14, 'EMP_8777586294', 'Sourodeep ', 'Paul', 'sp@gmail.com', 'fd418cd5261baa8e5234a9a5cfd435a8', 'Male', '2001-01-10', 'Information Technology', '29, Padma Babu Road, Bally ', 'Howrah', 'India', '8777586294', 1, '2022-06-16 03:17:20'),
(15, 'EMP_99870567123', 'Indrajit', 'Mukherjee', 'im@gmail.com', 'e24f6e3ce19ee0728ff1c443e4ff488d', 'Male', '2001-10-03', 'Research', '10/2 abc road', 'Howrah', 'India', '9876554432', 1, '2022-06-16 03:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `MDRemark` mediumtext DEFAULT NULL,
  `MDRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `MDRemark`, `MDRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(26, 'Casual Leave', '2022-05-05', '2022-05-10', '', '2022-03-27 07:06:20', 'Enjoy ur Day\r\n', '2022-03-27 12:39:57 ', 1, 1, 11),
(27, 'Voting Leave (VL)', '2022-03-01', '2022-03-01', 'Chuti amar chai..... se je korei hok', '2022-04-01 07:53:46', 'Dbo na.... ja korar kore ne', '2022-04-01 13:25:01 ', 2, 1, 12),
(32, 'Casual Leave (CL)', '2022-06-21', '2022-03-25', 'Nothing to say.', '2022-06-16 03:23:19', 'enjoy ur days', '2022-06-16 8:59:49 ', 1, 1, 14),
(34, 'Medical Leave (ML)', '2022-06-22', '2022-06-25', 'Please, concern my leave\r\n', '2022-06-16 03:27:36', 'ok\r\n\r\n', '2022-06-16 12:07:59 ', 1, 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(14, 'Casual Leave (CL)', 'Provided for urgent matters to the employees.', '2022-03-30 16:05:38'),
(15, 'Medical Leave (ML)', 'Related to Health Problems of Employee\'s and their family', '2022-03-30 16:08:38'),
(16, 'Religious Holiday (RL)', 'Based on employee\'s followed religion', '2022-03-30 16:11:53'),
(17, 'Restricted Holiday (RH)', 'Holiday that is optional', '2022-03-30 16:19:42'),
(18, 'Voting Leave (VL)', 'For official election day', '2022-03-30 16:21:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md`
--
ALTER TABLE `md`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `md`
--
ALTER TABLE `md`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



