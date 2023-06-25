-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 11:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `studef`
--

CREATE TABLE `studef` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(55) NOT NULL DEFAULT 'unnamed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studef`
--

INSERT INTO `studef` (`id`, `name`) VALUES
(0, 'unnamed');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class`) VALUES
(1, 'kushal', 5),
(2, 'ram', 10),
(0, 'kusal', 5);

-- --------------------------------------------------------

--
-- Table structure for table `stud_unique`
--

CREATE TABLE `stud_unique` (
  `stud_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stud_unique`
--

INSERT INTO `stud_unique` (`stud_id`, `name`, `age`) VALUES
(1, 'vinod', 25);

-- --------------------------------------------------------

--
-- Table structure for table `stunull`
--

CREATE TABLE `stunull` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stud_unique`
--
ALTER TABLE `stud_unique`
  ADD PRIMARY KEY (`stud_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
