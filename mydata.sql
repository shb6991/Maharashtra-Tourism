-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2016 at 11:04 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `mumbai` varchar(100) NOT NULL,
  `pune` varchar(100) NOT NULL,
  `kolhapur` varchar(100) NOT NULL,
  `nashik` varchar(50) NOT NULL,
  `konkan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`mumbai`, `pune`, `kolhapur`, `nashik`, `konkan`) VALUES
('Hotel Adarsh Palace', 'Arya Nivas', 'Hotel Maratha Regency', 'Hotel Pooja Residency', 'Kirtee Hotel'),
('Taj Hotel, contact:9234567829 ', 'Puneri Hotel, contact:234578295', ' Kuldevi Hotel, contact:9234567829 ', 'Shri samartha hotel,contact:8877665544', 'hari om hotel,contact:7766255522'),
('Guari Shankar,contact:2525849888', 'mamledr,contact:8888992292', 'Baalkrishna,contact:8879581260', 'shiv krupa,contact:0399366366', 'Bora palace,contact:777376614'),
('Gangotari hotel,contact:5542167288', 'Suman hotel,contact:393888881', 'White palace,contact:6643747474', 'Samarat Hotel,contact:4433779922', 'Rahul Hotel,contact:8866337193'),
('Oberoi Hotel,contact:2244788556,vashi', 'Vir Maratha Hotel,contact:0338883333,shanivar vada', 'Mahalakshami Hotel,contact:6666777342,dhanu ', 'Kamat hotel,contact:9927277220', 'Hotel Malvan King,contact:8836366449');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `comment` varchar(150) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `mobile`, `comment`, `reg_date`) VALUES
(1, 'aaan', 'anan', 1234567890, '', NULL),
(2, 'aaan', 'anan', 1234567890, '', NULL),
(3, 'aaan', 'anan', 1234567890, '', NULL),
(4, 'aaan', 'anan', 1234567890, '', NULL),
(5, 'aaan', 'anan', 1234567890, '', NULL),
(6, 'aaan', 'anan', 1234567890, '', NULL),
(7, 'hhh', 'kk@gamil.com', 9292929999, 'djdjdjjdjj', NULL),
(8, 'hhhhshn', 'kk@gamil.com', 9292929999, 'djdjdjjdjj shsh', NULL),
(9, 'vishal', 'vishal@yahoo.com', 1234567890, 'great work guyz!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', NULL),
(10, 'vishal shirke', 'vishalshirke17@gmail.com', 6154521321, 'qbikwjvbqjscjkcas', NULL),
(11, 'vishal navklsavn', 'nckascn.@gmail.com', 11643131, 'dsbvmdsnvs', NULL),
(12, 'vishal navklsavn', 'nckascn.@gmail.com', 11643131, 'dsbvmdsnvs', NULL),
(13, 'bHAVESH TE COMP', 'atul@gmail.com', 454548658, 'ek no. bhau', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `Mumbai` varchar(50) NOT NULL,
  `pune` varchar(50) NOT NULL,
  `kolhapur` varchar(50) NOT NULL,
  `nagpur` varchar(50) NOT NULL,
  `satara` varchar(50) NOT NULL,
  `nashik` varchar(50) NOT NULL,
  `konkan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
