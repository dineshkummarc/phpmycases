-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2021 at 04:37 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `severity` varchar(30) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `case_num` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `employee_id`, `severity`, `notes`, `case_num`) VALUES
(2, '1029482', 'Critical', '<p>stole company property</p>', '201809111431489832'),
(3, '1029482', 'Critical', '<p>stole company property</p>', '20180911143244.2511'),
(4, '1029482', 'Critical', '<p>stole company property</p>', '20180911143429.2461'),
(5, '1038492', 'Danger', '<p>This is a very Dangerous person, fought with other driver and customer</p>', '20210201144749.2869');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `tmp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `name`, `surname`, `phone`, `email`, `gender`, `joined`, `tmp`) VALUES
(4, '1938203', 'arnold', 'maruba', '263773891093', 'arnold.maruba@gmail.com', 'M', ' 10 Sep 2018 ', '5267'),
(5, '1029482', 'partmore', 'kapingura', '263712394859', 'teko@gmail.com', 'M', ' 10 Sep 2018 ', '6954'),
(6, '1038492', 'samuel', 'makota', '263775011617', 'sam.strover@yahoo.com', 'M', ' 10 Sep 2018 ', '7731'),
(7, '9984573', 'dinesh', 'kumar', '263773452120', 'admin@example.com', 'M', ' 07 Feb 2021 ', '9758');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `tmp` varchar(90) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `tmp`, `name`) VALUES
(2, '1301', 'user1301.jpg'),
(3, '5267', 'user5267.jpg'),
(4, '6954', 'user6954.jpg'),
(5, '7731', 'user7731.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `permission` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `joined`, `type`, `permission`, `gender`, `phone`) VALUES
(7, 'Thomas', 'Dhobha', 'thomas.dhobha@gmail.com', 'thomas', '827ccb0eea8a706c4c34a16891f84e7b', ' 09 Sep 2018 ', 'user', '1', 'M', '263774123998'),
(8, 'Admin', 'Administrator', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', ' 09 Sep 2018 ', 'user', '1', 'M', '263774123998');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
