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
-- Database: `onlinequiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Adminid` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Adminid`, `pwd`) VALUES
('admin', 'abc@123');

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `ansid` int(11) NOT NULL,
  `answ` varchar(100) NOT NULL,
  `corrans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`ansid`, `answ`, `corrans`) VALUES
(1, 'ebc', 'efg'),
(2, 'efg', 'abc'),
(3, 'ans2', 'ans1'),
(4, 'ans1', 'ans2'),
(5, '17', '4'),
(6, 'ans2', 'ans1'),
(7, 'right', 'wrong'),
(8, 'efg', 'abcd1'),
(9, 'wrong2', 'right'),
(10, 'not an array', 'array'),
(11, 'type of list', 'not a list'),
(12, 'test', 'test2'),
(13, 'test1', 'test'),
(14, 'test4', 'test5'),
(15, 'not a class', 'collection of abstract class'),
(16, 'normal class', 'parent class and child class relationshio'),
(17, 'no', 'yes'),
(18, 'false', 'true'),
(19, 'false', 'true'),
(20, 'false', 'true'),
(21, 'no', 'yes'),
(22, 'no', 'yes'),
(23, 'generalization', 'parent child relationship1'),
(24, 'wrong', 'right1'),
(25, 'Incorrect', 'correct'),
(26, 'test1', 'test2'),
(27, 'test1', 'test2'),
(28, 'no', 'yes'),
(29, 'test', 'test1'),
(30, 'test1', 'test'),
(31, 'test', 'test1'),
(32, 'no', 'yes'),
(33, 'no', 'yes'),
(34, 'true', 'both compiled and interpreted'),
(35, 'false', 'true'),
(36, 'no', 'yes'),
(37, 'wrong', 'right'),
(38, 'wrong', 'right'),
(39, 'incorrect', 'correct'),
(40, 'incorrect', 'correct'),
(41, 'incorrect', 'correct'),
(42, 'no', 'yes'),
(43, 'no', 'yes'),
(44, 'no', 'yes2'),
(45, 'no', 'yes'),
(46, 'not correct', 'correct'),
(47, 'no', 'yes'),
(48, 'no', 'yes'),
(49, 'no', 'yes'),
(50, 'no', 'yes'),
(51, 'no', 'yes'),
(52, 'no', 'yes1'),
(53, 'incorrect', 'correct');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `tot_mark` int(11) NOT NULL,
  `mark_obt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mid`, `uid`, `qid`, `tot_mark`, `mark_obt`) VALUES
(1, 4, 10, 6, 6),
(2, 4, 10, 6, 4),
(3, 2, 15, 20, 10),
(4, 4, 22, 10, 5),
(5, 4, 2, 40, 10),
(6, 4, 1, 60, 30);

-- --------------------------------------------------------

--
-- Table structure for table `qns`
--

CREATE TABLE `qns` (
  `qnsid` int(11) NOT NULL,
  `qns_topic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qns`
--

INSERT INTO `qns` (`qnsid`, `qns_topic`) VALUES
(9, 'object'),
(10, 'class'),
(11, 'abcd'),
(12, 'test'),
(13, 'test1'),
(14, 'test2'),
(15, 'testing'),
(16, 'test'),
(17, 'test2'),
(18, 'Encapsulation'),
(19, 'test2'),
(20, 'what is DSA'),
(21, 'what is tree'),
(22, 'list'),
(23, 'tuple'),
(24, 'array'),
(25, 'linkedlist'),
(26, 'queue'),
(27, 'interface'),
(28, 'inheritence'),
(29, 'python is dynamic-typed '),
(30, 'The Python Boolean type has only two possible values'),
(31, 'the expression 1 <= 2'),
(32, 'Python boolean type is one of the built-in data types'),
(33, 'test qns'),
(34, 'new qns'),
(35, 'inheritence'),
(36, 'polymorphism'),
(37, 'testing2'),
(38, 'OOPs1'),
(39, 'OOPS'),
(40, 'python is dynamic-typed '),
(41, 'inheritence'),
(42, 'interface'),
(43, 'interface'),
(44, 'php is dynamically typed'),
(45, 'php is case sensitive'),
(46, 'python is interpreted'),
(47, 'python is both pop and oop'),
(48, 'is php case sensitive?'),
(49, 'test'),
(50, 'new test qns'),
(51, 'testing qns'),
(52, 'testing qns'),
(53, 'testing qns2'),
(54, 'java is 100% object oriented language'),
(55, 'final member cannot be inherited'),
(56, 'test2'),
(57, 'test qns1'),
(58, 'inheritence'),
(59, 'testing'),
(60, 'testing2'),
(61, 'test qns'),
(62, 'test qns1'),
(63, 'test qns'),
(64, 'test qns2'),
(65, 'testing1');

-- --------------------------------------------------------

--
-- Table structure for table `qns_ans`
--

CREATE TABLE `qns_ans` (
  `qaid` int(11) NOT NULL,
  `qnsid` int(11) NOT NULL,
  `ansid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `qns_ans`
--

INSERT INTO `qns_ans` (`qaid`, `qnsid`, `ansid`) VALUES
(1, 18, 6),
(2, 19, 7),
(3, 20, 8),
(4, 21, 9),
(5, 22, 10),
(6, 23, 11),
(7, 24, 12),
(8, 25, 13),
(9, 26, 14),
(10, 27, 15),
(11, 28, 16),
(12, 29, 17),
(13, 30, 18),
(14, 31, 19),
(15, 32, 20),
(16, 33, 21),
(17, 34, 22),
(18, 35, 23),
(19, 36, 24),
(20, 37, 25),
(21, 38, 26),
(22, 39, 27),
(23, 40, 28),
(24, 41, 29),
(25, 42, 30),
(26, 43, 31),
(27, 44, 32),
(28, 45, 33),
(29, 46, 34),
(30, 47, 35),
(31, 48, 36),
(32, 49, 37),
(33, 50, 38),
(34, 51, 39),
(35, 52, 40),
(36, 53, 41),
(37, 54, 42),
(38, 55, 43),
(39, 56, 44),
(40, 57, 45),
(41, 58, 46),
(42, 59, 47),
(43, 60, 48),
(44, 61, 49),
(45, 62, 50),
(46, 63, 51),
(47, 64, 52),
(48, 65, 53);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `qid` int(11) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `tot_q` int(11) NOT NULL,
  `rem_q` int(11) NOT NULL,
  `q_mark` int(11) NOT NULL,
  `tot_tm` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `dt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`qid`, `topic`, `tot_q`, `rem_q`, `q_mark`, `tot_tm`, `uid`, `dt`) VALUES
(1, 'Java', 12, 0, 10, 5, 1, '2023-03-01'),
(2, 'c++', 4, 0, 10, 10, 1, '2023-03-04'),
(3, 'c', 4, 0, 20, 10, 1, '2023-03-04'),
(5, 'c', 2, 0, 5, 10, 1, '2023-03-05'),
(8, 'DSA', 2, 0, 10, 10, 1, '2023-04-02'),
(9, 'python', 2, 0, 10, 10, 9, '2023-04-22'),
(10, 'DSA', 2, 0, 5, 10, 1, '2023-06-04'),
(11, 'Java', 2, -1, 10, 10, 1, '2023-07-04'),
(12, 'Java', 2, 2, 10, 10, 1, '2023-07-04'),
(13, 'Python', 4, 0, 5, 15, 1, '2023-07-17'),
(14, 'Java', 3, 0, 15, 10, 1, '2023-07-17'),
(15, 'PHP', 3, 0, 5, 15, 1, '2023-12-01'),
(17, 'PHP', 2, -1, 5, 10, 1, '2023-12-20'),
(18, 'python', 2, -1, 10, 10, 1, '2024-04-09'),
(19, 'phpupdated', 5, 1, 10, 10, 11, '2024-04-10'),
(20, 'php1', 1, 0, 5, 5, 11, '2024-04-10'),
(21, 'testing', 4, -1, 5, 10, 11, '2024-04-10'),
(22, 'OOPS', 2, 0, 5, 10, 1, '2024-05-06'),
(23, 'Testing', 1, -1, 5, 5, 1, '2024-05-06'),
(24, 'testing', 2, 2, 5, 10, 1, '2024-05-29'),
(25, 'testing', 1, 1, 5, 5, 14, '2024-05-29'),
(26, 'testing', 1, 0, 1, 2, 9, '2024-05-30'),
(27, 'testing', 1, -1, 1, 2, 9, '2024-05-30'),
(28, 'testing', 1, -2, 5, 5, 1, '2024-05-31'),
(29, 'OOPS', 2, -1, 1, 5, 1, '2024-05-31'),
(30, 'testing', 1, 0, 1, 2, 1, '2024-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `q_co`
--

CREATE TABLE `q_co` (
  `q_coid` int(11) NOT NULL,
  `qaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `q_qns`
--

CREATE TABLE `q_qns` (
  `Qqid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `qaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `q_qns`
--

INSERT INTO `q_qns` (`Qqid`, `qid`, `qaid`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 8, 3),
(4, 8, 4),
(5, 9, 5),
(6, 9, 6),
(7, 10, 7),
(8, 10, 8),
(9, 10, 9),
(10, 11, 10),
(11, 11, 11),
(12, 13, 12),
(13, 13, 13),
(14, 13, 14),
(15, 13, 15),
(16, 14, 16),
(17, 14, 17),
(18, 14, 18),
(19, 1, 19),
(20, 1, 20),
(21, 15, 21),
(22, 15, 22),
(23, 15, 23),
(24, 2, 24),
(25, 2, 25),
(26, 1, 26),
(27, 17, 27),
(28, 17, 28),
(29, 18, 29),
(30, 18, 30),
(31, 19, 31),
(32, 21, 32),
(33, 21, 33),
(34, 21, 34),
(35, 21, 35),
(36, 21, 36),
(37, 1, 37),
(38, 1, 38),
(39, 19, 39),
(40, 2, 40),
(41, 22, 41),
(42, 23, 42),
(43, 22, 43),
(44, 26, 44),
(45, 27, 45),
(46, 29, 46),
(47, 29, 47),
(48, 30, 48);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `pwd` varchar(11) NOT NULL,
  `uname` varchar(10) NOT NULL,
  `hq` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `pwd`, `uname`, `hq`, `Email`, `role`) VALUES
(1, 'abcd', 'saheli', 'B.tech', 'saheli@abc.com', 1),
(2, 'abcd', 'rahul', 'B.SC', 'rahuld@abc.com', 1),
(4, 'abcd', 'riya das', 'M.A', 'riya@abc.com', 2),
(9, 'royd', 'shalini', 'M.Sc', 'shalini.r@gmail.com', 1),
(10, 'fghghj', 'sam', 'M.Sc', 'sam@abc.com', 2),
(11, 'roy', 'ritu', 'M.A', 'rroy@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Adminid`);

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`ansid`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mid`) USING BTREE;

--
-- Indexes for table `qns`
--
ALTER TABLE `qns`
  ADD PRIMARY KEY (`qnsid`);

--
-- Indexes for table `qns_ans`
--
ALTER TABLE `qns_ans`
  ADD PRIMARY KEY (`qaid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `q_co`
--
ALTER TABLE `q_co`
  ADD PRIMARY KEY (`q_coid`);

--
-- Indexes for table `q_qns`
--
ALTER TABLE `q_qns`
  ADD PRIMARY KEY (`Qqid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `ansid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `qns`
--
ALTER TABLE `qns`
  MODIFY `qnsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `qns_ans`
--
ALTER TABLE `qns_ans`
  MODIFY `qaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `q_co`
--
ALTER TABLE `q_co`
  MODIFY `q_coid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `q_qns`
--
ALTER TABLE `q_qns`
  MODIFY `Qqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
