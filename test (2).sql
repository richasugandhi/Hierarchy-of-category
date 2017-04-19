-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2017 at 02:27 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `cat_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `cat_img`) VALUES
(1, 'cat1', 'Desert.jpg'),
(2, 'cat2', 'Desert.jpg'),
(3, 'cat3', 'Desert.jpg'),
(4, 'cat1', 'Desert.jpg'),
(5, 'cat2', 'Desert.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `common_cat`
--

CREATE TABLE `common_cat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(500) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_name` varchar(500) NOT NULL,
  `sub_subcat_id` int(11) NOT NULL,
  `sub_subcat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `common_cat`
--

INSERT INTO `common_cat` (`cat_id`, `cat_name`, `sub_cat_id`, `sub_cat_name`, `sub_subcat_id`, `sub_subcat_name`) VALUES
(1, 'testcat1', 0, '', 0, ''),
(2, 'testcat2', 0, 'testsub_cat1', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `importcsvfile`
--

CREATE TABLE `importcsvfile` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `intchk` int(11) NOT NULL,
  `bigintchk` bigint(255) NOT NULL,
  `smallint` smallint(255) NOT NULL,
  `tinyintchk` tinyint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `importcsvfile`
--

INSERT INTO `importcsvfile` (`id`, `name`, `address`, `intchk`, `bigintchk`, `smallint`, `tinyintchk`) VALUES
(6, 'ayush', 'pune', 0, 0, 0, 0),
(7, 'sonam', 'pune', 0, 0, 0, 0),
(8, 'ashwin', 'ahmedabad', 0, 0, 0, 0),
(9, 'jeeni', 'bhopal', 0, 0, 0, 0),
(10, 'neha', 'mumbai', 0, 0, 0, 0),
(11, '', '', 100000000, 1234567891011121341, 12345, 23);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `salary` int(50) NOT NULL,
  `dob` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `cat_id`, `name`, `salary`, `dob`) VALUES
(1, 1, 'richa', 300, '12/12/1995'),
(2, 1, 'neha', 400, '01/02/1952'),
(3, 2, 'megha', 500, '04/06/2012'),
(4, 3, 'amrita', 1000, '05/06/1993'),
(5, 3, 'John Smith', 2000, '05/06/2017'),
(6, 4, 'test', 8000, '05/06/2001');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_catID` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sub_cat_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_catID`, `cat_id`, `title`, `sub_cat_img`) VALUES
(1, 2, 'subcat1', 'Desert.jpg'),
(2, 3, 'subcat2', 'Desert.jpg'),
(3, 1, 'subcat3', 'Desert.jpg'),
(4, 1, 'subcat4', 'Desert.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_category`
--

CREATE TABLE `sub_sub_category` (
  `sub_subcatID` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `sub_sub_cat_img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_sub_category`
--

INSERT INTO `sub_sub_category` (`sub_subcatID`, `cat_id`, `sub_cat_id`, `title`, `sub_sub_cat_img`) VALUES
(1, 2, 1, 'sub_subcat1', 'Desert.jpg'),
(2, 3, 2, 'sub_subcat2', 'Desert.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `s_chat_messages`
--

CREATE TABLE `s_chat_messages` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `when` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testdatatype`
--

CREATE TABLE `testdatatype` (
  `id` int(11) NOT NULL,
  `forint` int(11) NOT NULL,
  `sorsmallint` smallint(11) NOT NULL,
  `fortinyint` tinyint(11) NOT NULL,
  `formediumint` mediumint(11) NOT NULL,
  `forbigint` bigint(11) NOT NULL,
  `fordecimal` decimal(65,0) NOT NULL,
  `forfloat` float NOT NULL,
  `fordouble` double NOT NULL,
  `forreal` double NOT NULL,
  `forchar` char(250) NOT NULL,
  `forvarchar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testdatatype`
--

INSERT INTO `testdatatype` (`id`, `forint`, `sorsmallint`, `fortinyint`, `formediumint`, `forbigint`, `fordecimal`, `forfloat`, `fordouble`, `forreal`, `forchar`, `forvarchar`) VALUES
(1234567890, 0, 12345, 123, 1234567, 123456789123456789, '0', 1.12345, 123456.12345678912, 1023.1234567891235, 'jhgjhj67567.jkjhgj5345345fg@$#%$#^Q@tfytyty', '1234567898eqwetruiy!@$#%%.khk879-j''[hgjhj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_cat`
--
ALTER TABLE `common_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `importcsvfile`
--
ALTER TABLE `importcsvfile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_catID`);

--
-- Indexes for table `sub_sub_category`
--
ALTER TABLE `sub_sub_category`
  ADD PRIMARY KEY (`sub_subcatID`);

--
-- Indexes for table `s_chat_messages`
--
ALTER TABLE `s_chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testdatatype`
--
ALTER TABLE `testdatatype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `common_cat`
--
ALTER TABLE `common_cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `importcsvfile`
--
ALTER TABLE `importcsvfile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_sub_category`
--
ALTER TABLE `sub_sub_category`
  MODIFY `sub_subcatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `s_chat_messages`
--
ALTER TABLE `s_chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testdatatype`
--
ALTER TABLE `testdatatype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234567891;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
