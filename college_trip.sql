-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 01:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `college_trip`
--

CREATE TABLE `college_trip` (
  `sno` int(3) NOT NULL,
  `name` text NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `email` varchar(22) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `college_trip`
--

INSERT INTO `college_trip` (`sno`, `name`, `age`, `gender`, `email`, `phone`, `address`, `dt`) VALUES
(1, 'test', 23, 'male', 'abc@gmail.com', '9999999999', 'ABC', '2023-07-30 16:10:39'),
(2, 'test2', 33, 'male', 'def@gmail.com', '99958454', '', '2023-07-30 16:34:49'),
(3, 'test3', 33, 'male', 'def@gmail.com', '99958454', 'India', '2023-07-30 16:36:13'),
(4, 'test4', 33, 'male', 'def@gmail.com', '99958454', 'India', '2023-07-30 16:41:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college_trip`
--
ALTER TABLE `college_trip`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college_trip`
--
ALTER TABLE `college_trip`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
