-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 10:13 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(1, 'Madhu', 'Singh', 'msingh@example.com', '2024-03-25 15:44:54'),
(2, 'Mani', 'Sen', 'msen@example.com', '2024-03-25 16:40:22'),
(3, 'Mou', 'Gupta', 'mgupta@example.com', '2024-03-25 16:51:36'),
(4, 'Rahul', 'Roy', 'rroy@example.com', '2024-03-25 16:51:36'),
(5, 'Sima', 'Das', 'sdas@example.com', '2024-03-25 16:51:36'),
(6, 'Ria', 'Roy', 'rroy@example.com', '2024-03-26 15:09:22'),
(7, 'Mitul', 'Sen', 'msen@example.com', '2024-03-26 15:09:22'),
(8, 'rohan', 'Das', 'ramdas@example.com', '2024-03-30 15:38:16'),
(9, 'Sam', 'Mitra', 'sm@example.com', '2024-03-26 15:13:06'),
(11, 'rai', 'Mitra', 'rm@example.com', '2024-03-30 15:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `name` text NOT NULL,
  `addr` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `role` text NOT NULL,
  `qf` varchar(10) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`name`, `addr`, `age`, `role`, `qf`, `id`) VALUES
('saheli', '1 ABC', 39, 'admin', 'B.Tech', 4),
('rahul', '2 Abcx', 28, 'user', 'B.sc', 7),
('ram', '345sdf', 25, 'user', 'B.sc', 11),
('rani', '3 abc', 20, 'user', 'B.sc', 12),
('riya', '5abc', 20, 'user', 'B.sc', 13),
('sara', '12bhn', 22, 'user', 'B.Tech', 14),
('ajay', '5abc', 40, 'user', 'M.Sc', 17),
('bini', '2reet', 30, 'user', 'M.Sc', 18),
('benu', '2fgh', 40, 'user', 'M.Sc', 19),
('ravi', 'dgsd', 40, 'user', 'B.sc', 20),
('dolly', '2hgfhf', 35, 'user', 'B.Tech', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user2`
--
ALTER TABLE `user2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
