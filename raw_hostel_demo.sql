-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2016 at 05:27 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raw_hostel_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `h_college_result`
--

CREATE TABLE `h_college_result` (
  `scholar_no` int(11) NOT NULL,
  `sem_res_1` float DEFAULT NULL,
  `sem_res_2` float DEFAULT NULL,
  `sem_res_3` float DEFAULT NULL,
  `sem_res_4` float DEFAULT NULL,
  `sem_res_5` float DEFAULT NULL,
  `sem_res_6` float DEFAULT NULL,
  `sem_total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_login`
--

CREATE TABLE `h_login` (
  `scholar_no` int(11) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_profile`
--

CREATE TABLE `h_profile` (
  `scholar_no` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `gender` char(1) DEFAULT 'M',
  `date_of_birth` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `course` varchar(50) NOT NULL DEFAULT 'BTech',
  `branch` varchar(30) NOT NULL,
  `year_of_joining` year(4) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `bank_account` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_registration`
--

CREATE TABLE `h_registration` (
  `scholar_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course` varchar(20) DEFAULT 'B.Tech',
  `Branch` varchar(50) NOT NULL,
  `blood_group` varchar(5) DEFAULT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `category` varchar(10) NOT NULL,
  `domicile_state` varchar(30) NOT NULL,
  `mother_tongue` varchar(20) DEFAULT NULL,
  `mother_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `designation` text,
  `address` text NOT NULL,
  `local_guardian` varchar(30) DEFAULT 'None',
  `local_address` text,
  `local_mobile` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_room`
--

CREATE TABLE `h_room` (
  `room_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_status` char(1) DEFAULT 'U',
  `room_cap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `h_signup`
--

CREATE TABLE `h_signup` (
  `scholar_no` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `h_college_result`
--
ALTER TABLE `h_college_result`
  ADD PRIMARY KEY (`scholar_no`);

--
-- Indexes for table `h_profile`
--
ALTER TABLE `h_profile`
  ADD PRIMARY KEY (`scholar_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `h_registration`
--
ALTER TABLE `h_registration`
  ADD PRIMARY KEY (`scholar_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `h_signup`
--
ALTER TABLE `h_signup`
  ADD PRIMARY KEY (`scholar_no`),
  ADD UNIQUE KEY `email` (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
