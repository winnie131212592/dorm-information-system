-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2016 at 08:20 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentaldormitory`
--

-- --------------------------------------------------------

--
-- Table structure for table `boarder`
--

CREATE TABLE `boarder` (
  `boarder_id` int(11) NOT NULL,
  `boarder_firstName` varchar(50) NOT NULL,
  `boarder_middleName` varchar(50) NOT NULL,
  `boarder_lastName` varchar(50) NOT NULL,
  `boarder_homeAddress` varchar(100) NOT NULL,
  `boarder_telephoneNum` varchar(15) NOT NULL,
  `boarder_phoneNum` varchar(15) NOT NULL,
  `boarder_started` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boarder`
--

INSERT INTO `boarder` (`boarder_id`, `boarder_firstName`, `boarder_middleName`, `boarder_lastName`, `boarder_homeAddress`, `boarder_telephoneNum`, `boarder_phoneNum`, `boarder_started`) VALUES
(1, 'winnie', 'alterado', 'damayo', 'crossing suba villaba leyte', '552 5592', '09208783268', '2016-11-27'),
(2, 'reyvelyn', 'ybañez', 'viovicente', 'caridad bay-bay leyte', '032-410-6280', '09994238361', '2016-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'myaccount', '21232f297a57a5a743894a0e4a801fc3'),
(6, 'admin1', '202cb962ac59075b964b07152d234b70'),
(7, 'admin2', 'c4ca4238a0b923820dcc509a6f75849b'),
(8, 'admin23', '202cb962ac59075b964b07152d234b70'),
(9, 'john', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boarder`
--
ALTER TABLE `boarder`
  ADD PRIMARY KEY (`boarder_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boarder`
--
ALTER TABLE `boarder`
  MODIFY `boarder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
