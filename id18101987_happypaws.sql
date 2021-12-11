-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2021 at 12:14 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18101987_happypaws`
--

use id18101987_happypaws;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--



-- --------------------------------------------------------

--
-- Table structure for table `breed`
--


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `breed` text NOT NULL,
  `appointment_time` varchar(100) NOT NULL,
  `appointment_date` date NOT NULL,
  `pet_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `telephone`, `email`, `gender`, `breed`, `appointment_time`, `appointment_date`, `pet_name`) VALUES
(1, 'Shirley', '0223231212', 'shirley.yankyera@ashesi.edu.gh', 'female', 'Chihuahua', '00:00:03', '2021-12-22', 'Dixie'),
(5, 'Akwasi Asante-Krobea', '0245583962', 'akwasi@gmail.com', 'male', 'Husky', '5pm', '2021-12-24', 'Bussel');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--


--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--

-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
