-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 07:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orphanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `username` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`id`, `name`, `address`, `contact`, `username`, `password`) VALUES
(1, 'kirti Salunkhe', 'Bhagirathi Nagar', 6587543456, 'kirti', '1234'),
(2, 'Savita Mane', 'Nagar', 3245768956, 'savita', 'savita'),
(5, 'Bhavna more', 'Nagar', 4576985476, 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `adopter_reg`
--

CREATE TABLE `adopter_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `hwname` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `adopter_reg`
--

INSERT INTO `adopter_reg` (`id`, `name`, `hwname`, `address`, `contact`, `username`, `password`) VALUES
(1, 'Mohan Joshi', 'Geeta Joshi', 'Karve Nagar', 3456874576, 'Mohan', '1234'),
(2, 'Naina Jadhav', 'NOT MARRIED', 'Nagar', 457698345, 'naina', '1234'),
(4, 'Deepali Mane', 'NOT MARRIED', 'Saswad', 457698457, 'mane', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `adoption_request`
--

CREATE TABLE `adoption_request` (
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_name` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `adoption_request`
--

INSERT INTO `adoption_request` (`name`, `address`, `contact`, `child_id`, `child_name`, `date`, `status`) VALUES
('Mohan Joshi', 'Karve Nagar', 3456874576, 4, 'pooja', '2021-02-16', 'Accepted'),
('Naina Jadhav', 'Nagar', 457698345, 1, 'Mona', '2020-03-03', 'Rejected'),
('Deepali Mane', 'Saswad', 457698457, 3, 'Rakesh', '2020-12-01', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `child_reg`
--

CREATE TABLE `child_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `child_reg`
--

INSERT INTO `child_reg` (`id`, `name`, `age`, `gender`, `username`, `password`, `date`) VALUES
(3, 'Rakesh', 5, 'Male', 'rakesh', '1234', '2020-12-01'),
(5, 'kajol Pawar', 6, 'Female', 'kajol', 'kajol', '2021-03-19'),
(9, 'Shraddha Koyale', 7, 'Female', 'koyale', 'koyale1', '2021-03-20'),
(10, 'neha', 4, 'Female', 'neha', 'neha1', '2021-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `item` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `no_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`name`, `address`, `contact`, `item`, `no_item`) VALUES
('Meena More', 'Shivaji Nagar', 2345768954, 'Tables', 100),
('Sunil pawar', 'Karve Road', 325476347, 'Plates', 400),
('Megha Rane', 'ShivajiNagar', 3465873465, 'Chairs', 200);

-- --------------------------------------------------------

--
-- Table structure for table `donor_reg`
--

CREATE TABLE `donor_reg` (
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `contact` bigint(20) NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(259) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donor_reg`
--

INSERT INTO `donor_reg` (`name`, `address`, `contact`, `username`, `password`) VALUES
('Meena More', 'Shivaji Nagar', 2345768954, 'meena', '1234'),
('Sunil pawar', 'Karve Road', 325476347, 'sunil', 'sunil'),
('Megha Rane', 'ShivajiNagar', 3465873465, 'rane', 'rane');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adopter_reg`
--
ALTER TABLE `adopter_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_reg`
--
ALTER TABLE `child_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adopter_reg`
--
ALTER TABLE `adopter_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `child_reg`
--
ALTER TABLE `child_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
