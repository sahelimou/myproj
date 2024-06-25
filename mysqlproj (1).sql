-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2024 at 10:12 AM
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
-- Database: `mysqlproj`
--

-- --------------------------------------------------------

--
-- Table structure for table `deptn`
--

CREATE TABLE `deptn` (
  `dept` varchar(10) NOT NULL,
  `dept_name` varchar(10) NOT NULL,
  `HOD` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deptn`
--

INSERT INTO `deptn` (`dept`, `dept_name`, `HOD`) VALUES
('D01', 'IT', 'H01'),
('D02', 'SALES', 'H02'),
('D03', 'PROD', 'H03'),
('D04', 'ANALYST', 'H04'),
('D05', 'ADMIN', 'H05'),
('D06', 'HR', 'H06');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `eid` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `pfno` varchar(20) NOT NULL,
  `salary` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`eid`, `fullname`, `dept`, `age`, `pfno`, `salary`) VALUES
(1, 'madhuroy', 'D01', 32, 'ep506', 30000),
(2, 'RahulB', 'D02', 45, 'ep304', 38000),
(3, 'shreyad', 'D03', 30, 'ep702', 28000),
(4, 'ravir', 'D04', 40, 'ep601', 40000),
(5, 'riya dey', 'D05', 34, 'ep645', 35000),
(6, 'sima de', 'D06', 38, 'ep732', 45000),
(7, 'Sneha mitra', 'D02', 32, 'ep601', 40000),
(8, 'rohan basu', 'D04', 40, 'ep651', 35000),
(9, 'tithi das', 'D01', 42, 'ep631', 20000),
(10, 'tapas kar', 'D03', 45, 'ep689', 45000),
(11, 'sreyan roy', 'D01', 35, 'ep605', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `hoddetails`
--

CREATE TABLE `hoddetails` (
  `HOD` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `Addr` varchar(10) NOT NULL,
  `age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoddetails`
--

INSERT INTO `hoddetails` (`HOD`, `name`, `Addr`, `age`) VALUES
('H01', 'RSen', '1abc', 36),
('H02', 'MRoy', '2xyz', 40),
('H03', 'MMitra', '1Xyz', 43),
('H04', 'JRoy', '2SDF', 56),
('H05', 'BGuha', '4FGH', 50),
('H06', 'ASingh', '1rtf', 34);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `deptn`
--
ALTER TABLE `deptn`
  ADD PRIMARY KEY (`dept`),
  ADD KEY `HOD` (`HOD`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `dept` (`dept`);

--
-- Indexes for table `hoddetails`
--
ALTER TABLE `hoddetails`
  ADD PRIMARY KEY (`HOD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deptn`
--
ALTER TABLE `deptn`
  ADD CONSTRAINT `deptn_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `emp` (`dept`),
  ADD CONSTRAINT `deptn_ibfk_2` FOREIGN KEY (`HOD`) REFERENCES `hoddetails` (`HOD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
