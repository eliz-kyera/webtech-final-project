-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 01:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happypaws_grooming`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `psw` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `psw`) VALUES
('[shirleyyank]', '[12435]'),
('user1', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `breed`
--

CREATE TABLE `breed` (
  `breed_id` varchar(10) NOT NULL,
  `breed` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`breed_id`, `breed`) VALUES
('B001', 'EEs un perrito feo'),
('B002', 'Poodle Miniature'),
('B003', 'Poodle Standard'),
('B004', 'Lhasa Apso'),
('B005', 'Bichon Frise'),
('B006', 'Shih Tzu'),
('B007', 'Maltese'),
('B008', 'Silky Terrier'),
('B009', 'Yorkie'),
('B010', 'Pekingese'),
('B011', 'Schnauzer Miniature'),
('B012', 'Schnauzer Standard'),
('B013', 'Schnauzer Giant'),
('B014', 'Scottish Terrier'),
('B015', 'West Highland Terrier'),
('B016', 'Carin Terrier'),
('B017', 'Soft Coated Wheaten Terrier'),
('B018', 'Field Cocker Spaniel'),
('B019', 'American Cocker Spaniel'),
('B020', 'Springer Spaniel'),
('B021', 'Collie'),
('B022', 'Doberman'),
('B023', 'German Shephard'),
('B024', 'Collie'),
('B025', 'Rottweiler'),
('B026', 'Yorkiepoo');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` enum('male','female','','') NOT NULL,
  `breed` text NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `pet_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `telephone`, `email`, `gender`, `breed`, `appointment_time`, `appointment_date`, `pet_name`) VALUES
(1, 'Shirley', '0223231212', 'shirley.yankyera@ashesi.edu.gh', 'female', 'Chihuahua', '00:00:03', '2021-12-22', 'Dixie'),
(2, 'Kwaku', '0293839382', 'Kwaku', '', 'German shepherd', '00:00:04', '2021-12-22', 'Simba'),
(12, 'Papa Joe', '02923932932', 'papa@gmail.com', 'male', 'Pitbull', '00:00:04', '2021-12-16', 'Henry');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` varchar(10) NOT NULL,
  `person_id` varchar(10) DEFAULT NULL,
  `employee_type` enum('groomer','volunteer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `person_id`, `employee_type`) VALUES
('E001', 'P021', 'groomer'),
('E002', 'P022', 'groomer'),
('E003', 'P023', 'volunteer'),
('E004', 'P024', 'groomer'),
('E005', 'P025', 'groomer'),
('E006', 'P026', 'groomer'),
('E007', 'P027', 'volunteer'),
('E008', 'P028', 'groomer'),
('E009', 'P029', 'groomer'),
('E010', 'P030', 'volunteer'),
('E011', 'P031', 'groomer'),
('E012', 'P032', 'groomer');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `i_id` varchar(10) NOT NULL,
  `employee_id` varchar(10) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`i_id`, `employee_id`, `item`, `qty`, `price`) VALUES
('I001', 'E005', 'Collars', 150, '20.00'),
('I002', 'E005', 'Duck & Potatoe', 50, '25.00'),
('I003', 'E005', 'Dog Treats', 100, '4.95'),
('I004', 'E005', 'Senior Chow', 80, '10.00'),
('I005', 'E005', 'Puppy food', 100, '15.00'),
('I006', 'E005', 'Wet food', 80, '15.00'),
('I007', 'E005', 'Dry food', 100, '15.00'),
('I008', 'E005', 'Puppy toys', 80, '10.00'),
('I009', 'E005', 'Chew toys', 85, '10.00'),
('I010', 'E005', 'Balls&Launchers', 80, '10.00'),
('I011', 'E005', 'Flea&Tick treatment shampoo', 180, '30.00'),
('I012', 'E005', 'Capstar flea tablets', 120, '10.00'),
('I013', 'E005', 'Next Guard chewables', 70, '18.00'),
('I014', 'E005', 'Vets Best flea&tick home spray', 100, '25.00'),
('I015', 'E005', 'Frontline Spray treatment for dogs', 60, '28.00'),
('I016', 'E005', 'Pet clippers', 150, '5.00'),
('I017', 'E005', 'Pet brushes', 200, '10.00'),
('I018', 'E005', 'Dog Dental Wpes', 100, '5.00'),
('I019', 'E005', 'Pain relief pills', 200, '30.00'),
('I020', 'E005', 'Heartwworm antibiotics', 80, '40.00');

-- --------------------------------------------------------

--
-- Table structure for table `offerings`
--

CREATE TABLE `offerings` (
  `course_id` varchar(10) NOT NULL,
  `class_id` varchar(10) DEFAULT NULL,
  `offeringstart` date DEFAULT NULL,
  `offeringend` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offerings`
--

INSERT INTO `offerings` (`course_id`, `class_id`, `offeringstart`, `offeringend`) VALUES
('CS01', 'C01', '2007-01-10', '2007-02-07'),
('CS02', 'C02', '2007-03-15', '2007-09-15'),
('CS03', 'C03', '2007-09-15', '2007-12-15'),
('CS04', 'C04', '2008-01-10', '2008-02-07'),
('CS05', 'C05', '2008-05-10', '2008-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `owner_id` varchar(10) NOT NULL,
  `person_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`owner_id`, `person_id`) VALUES
('O001', 'P001'),
('O002', 'P002'),
('O003', 'P003'),
('O004', 'P004'),
('O005', 'P005'),
('O006', 'P006'),
('O007', 'P007'),
('O008', 'P008'),
('O009', 'P009'),
('O010', 'P010'),
('O011', 'P011'),
('O012', 'P012'),
('O013', 'P013'),
('O014', 'P014'),
('O015', 'P015'),
('O016', 'P016'),
('O017', 'P017'),
('O018', 'P018'),
('O019', 'P019'),
('O020', 'P020');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` varchar(10) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `name`, `dob`, `location`, `email`, `tel`) VALUES
('P001', 'Sandra Coleman', '1998-07-28', 'Teshie new site', 'sandra.coleman@ghana.com', '+233569874521'),
('P002', 'James Agyeman', '1958-07-18', 'Wa district', 'james.agyeman@ghana.com', '+233203659874'),
('P003', 'Elorm Dogbe', '1955-01-05', 'Kasoa', 'elorm.dogbe@ghana.com', '+233547854878'),
('P004', 'Nii Adjetey', '1998-11-28', 'Cantonments', 'nii.adjetey@ghana.com', '+233578213655'),
('P005', 'Benjamin Korante', '1934-02-12', 'Sunyani', 'benjamin.korante@ghana.com', '+233509678543'),
('P006', 'Abeidu Dagbovie', '1990-03-11', 'Ho', 'abeidu.dagbovie@ghana.com', '+233245698921'),
('P007', 'Joseph Amihere', '1992-04-05', 'Awoshie', 'joseph.amihere@ghana.com', '+233569899664'),
('P008', 'Alberta Ntuor', '1984-09-12', 'Mallam', 'alberta.ntuor@ghana.com', '+233569856908'),
('P009', 'Kwaku Oppong', '1986-12-12', 'East Legon', 'kwaku.oppong@ghana.com', '+233569888765'),
('P010', 'Nuhu Kumi', '0200-04-11', 'Weija', 'nuhu.kumi@gmail.com', '+233277656921'),
('P011', 'Nyame Kyere', '1994-12-12', 'Oyarifa', 'nyame.kyere@yahoo.com', '+233589776543'),
('P012', 'Kelvin Addo', '1980-01-11', 'Prampram', 'kelvin.ad@ghana.com', '+233569555641'),
('P013', 'Esinam Ampah', '1982-07-28', 'Labone', 'esinam.ampah@yahoo.com', '+233344557851'),
('P014', 'Esi Hodo', '1992-03-08', 'West Legon', 'esi.hodo@gmail.com', '+233569975439'),
('P015', 'Sarah Owusu', '2000-02-12', 'Sunyani', 'sarah.owusu@ghana.com', '+233569856921'),
('P016', 'Nii Yemofio', '1986-05-09', 'Circle', 'nii.yemofio@gmail.com', '+233566655448'),
('P017', 'Mathew Agyeman', '2001-06-06', 'East Legon', 'mathew.agyeman@ghana.com', '+233544321675'),
('P018', 'Prince Agyeman', '1997-11-07', 'Airport', 'prince.aghyeman@ghana.com', '+233246703476'),
('P019', 'Jacob Agyeman', '2002-02-03', 'East Airport', 'jacob.agyeman@yahoo.com', '+233569856435'),
('P020', 'Joseph Bannerman', '1999-01-21', 'Sakumono', 'joseph.bannerman@yahoo.com', '+233569850987'),
('P021', 'Yaa Martins', '1979-02-12', 'Teshie', 'yaa.martins@ghana.com', '+233569855433'),
('P022', 'Prince Bridgerton', '1991-09-17', 'Tema', 'prince.bridgerton@gmail.com', '+233333856921'),
('P023', 'Prince Mortey', '1982-08-21', 'Ashiaman', 'prince.mortey@ghana.com', '+233569898762'),
('P024', 'Collins Sampah', '1991-02-12', 'Dansoman', 'collins.sampah@ghana.com', '+233569889076'),
('P025', 'Joe Appiah', '1934-02-12', 'Achimota', 'joe.appiah@gmail.com', '+233569844325'),
('P026', 'Valerie Kwablah', '1970-02-12', 'Madina', 'valerie.kb@yahoo.com', '+233569877668'),
('P027', 'Michelle Kyere', '1998-04-04', 'Labadi', 'michelle.kyere@ghana.com', '+23356998864'),
('P028', 'Gillian Ofori', '2001-07-08', 'Cantonments', 'gillian.ofori@yahoo.com', '+233566896921'),
('P029', 'Goldie Yawson', '1990-02-11', 'Adenta', 'goldie.yawson@ghana.com', '+233569856963'),
('P030', 'William Oppong', '1988-12-15', 'Gbawe', 'wiliam.oppong@yahoo.com', '+233569856922'),
('P031', 'Zara Larson', '1983-11-18', 'Dome', 'zara.larson@yahoo.com', '+233569856842'),
('P032', 'Jeffery Giveon', '1992-10-01', 'Mamprobi', 'jeffery.giveon@yahoo.com', '+233569856809');

-- --------------------------------------------------------

--
-- Table structure for table `pet`
--

CREATE TABLE `pet` (
  `p_id` varchar(10) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `bday` varchar(15) DEFAULT NULL,
  `sex` varchar(8) DEFAULT NULL,
  `owner_id` varchar(10) DEFAULT NULL,
  `breed_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pet`
--

INSERT INTO `pet` (`p_id`, `pname`, `bday`, `sex`, `owner_id`, `breed_id`) VALUES
('PT01', 'Dixie', '2003-06-01', 'female', 'O001', 'B001'),
('PT02', 'Benjie', '2000-01-01', 'male', 'O002', 'B002'),
('PT03', 'Tiffanie', '2004-09-01', 'female', 'O003', 'B003'),
('PT04', 'Titan', '2006-07-01', 'male', 'O004', 'B004'),
('PT05', 'Cuddles', '1900-01-01', 'female', 'O005', 'B005'),
('PT06', 'Zoey', '1996-08-08', 'female', 'O006', 'B006'),
('PT07', 'Lucky', '2007-03-04', 'male', 'O007', 'B007'),
('PT08', 'Roger', '2005-07-02', 'male', 'O008', 'B008'),
('PT09', 'Narla', '2007-12-12', 'female', 'O009', 'B009'),
('PT10', 'Henry', '2004-08-03', 'male', 'O010', 'B010'),
('PT11', 'Riley', '1990-09-05', 'male', 'O011', 'B011'),
('PT12', 'Moana', '2012-10-06', 'female', 'O012', 'B012'),
('PT13', 'Ophelia', '2009-28-11', 'female', 'O013', 'B013'),
('PT14', 'Sappho', '2013-13-04', 'male', 'O013', 'B013'),
('PT15', 'Ocean', '2001-09-12', 'female', 'O015', 'B020'),
('PT16', 'Sabre', '2010-10-10', 'female', 'O016', 'B022'),
('PT17', 'Neo', '2008-24-05', 'male', 'O017', 'B023'),
('PT18', 'Ajay', '1992-09-02', 'female', 'O018', 'B021'),
('PT19', 'Zeus', '2002-08-07', 'male', 'O019', 'B025'),
('PT20', 'Orion', '2006-03-03', 'female', 'O020', 'B018');

-- --------------------------------------------------------

--
-- Table structure for table `pet_owner`
--

CREATE TABLE `pet_owner` (
  `owner_id` varchar(10) DEFAULT NULL,
  `p_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pet_owner`
--

INSERT INTO `pet_owner` (`owner_id`, `p_id`) VALUES
('O001', 'PT01'),
('O002', 'PT02'),
('O003', 'PT03'),
('O004', 'PT04'),
('O005', 'PT05'),
('O006', 'PT06'),
('O007', 'PT07'),
('O008', 'PT08'),
('O009', 'PT09'),
('O010', 'PT10'),
('O011', 'PT11'),
('O012', 'PT12'),
('O013', 'PT13'),
('O014', 'PT14'),
('O015', 'PT15'),
('O016', 'PT16'),
('O017', 'PT17'),
('O018', 'PT18'),
('O019', 'PT19'),
('O020', 'PT20');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `schedule_num` varchar(10) NOT NULL,
  `appt_date` date DEFAULT NULL,
  `appt_stime` varchar(8) DEFAULT NULL,
  `appt_end` varchar(8) DEFAULT NULL,
  `p_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`schedule_num`, `appt_date`, `appt_stime`, `appt_end`, `p_id`) VALUES
('S1', '2006-12-22', '07.30', '08.00', 'PT01'),
('S10', '2007-04-28', '10.00', '10.30', 'PT10'),
('S11', '2008-01-02', '07.30', '08.30', 'PT11'),
('S12', '2009-02-20', '12.00', '12.30', 'PT12'),
('S13', '2009-02-19', '14.00', '14.30', 'PT13'),
('S14', '2009-02-23', '10.00', '10.30', 'PT14'),
('S15', '2009-03-10', '11.00', '11.30', 'PT15'),
('S2', '2006-12-22', '08.30', '09.00', 'PT02'),
('S3', '2007-01-08', '07.30', '08.00', 'PT03'),
('S4', '2007-01-08', '08.30', '09.00', 'PT04'),
('S5', '2007-01-08', '10.00', '10.30', 'PT05'),
('S6', '2007-01-09', '08.00', '08.30', 'PT06'),
('S7', '2007-01-09', '09.30', '10.00', 'PT07'),
('S8', '2007-01-10', '07.30', '08.00', 'PT08'),
('S9', '2007-02-09', '07.30', '08.00', 'PT09');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `sev_num` varchar(10) NOT NULL,
  `employee_id` varchar(10) DEFAULT NULL,
  `owner_id` varchar(10) DEFAULT NULL,
  `p_id` varchar(10) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `charge` decimal(5,2) DEFAULT NULL,
  `paid` decimal(5,2) DEFAULT NULL,
  `Paymentmethod` enum('debit','credit','visa card','cash','check') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`sev_num`, `employee_id`, `owner_id`, `p_id`, `type`, `charge`, `paid`, `Paymentmethod`) VALUES
('SN1', 'E001', 'O001', 'PT01', 'Groom', '25.00', '25.00', 'check'),
('SN10', 'E010', 'O010', 'PT10', 'Medicated Bath', '3.00', '3.00', 'debit'),
('SN11', 'E011', 'O011', 'PT11', 'Whitening Shampoo', '3.00', '3.00', 'debit'),
('SN12', 'E012', 'O012', 'PT12', 'pet massage', '50.00', '50.00', 'credit'),
('SN13', 'E004', 'O013', 'PT13', 'Groom', '55.00', '55.00', 'visa card'),
('SN14', 'E008', 'O014', 'PT14', 'Flea Dip', '15.00', '15.00', 'cash'),
('SN15', 'E009', 'O015', 'PT15', 'Bath', '30.00', '30.00', 'credit'),
('SN2', 'E002', 'O002', 'PT02', 'Scented Shampoo', '3.00', '3.00', 'check'),
('SN3', 'E003', 'O003', 'PT03', 'Whitening Shampoo', '3.00', '3.00', 'check'),
('SN4', 'E004', 'O004', 'PT04', 'Groom', '25.00', '25.00', 'debit'),
('SN5', 'E005', 'O005', 'PT05', 'Groom', '25.00', '25.00', 'visa card'),
('SN6', 'E006', 'O006', 'PT06', 'Whitening Shampoo', '3.00', '3.00', 'visa card'),
('SN7', 'E007', 'O007', 'PT07', 'Flea Bath', '10.00', '0.00', 'cash'),
('SN8', 'E008', 'O008', 'PT08', 'Flea Dip', '15.00', '0.00', 'cash'),
('SN9', 'E009', 'O009', 'PT09', 'Bath & Brush', '25.00', '25.00', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `services_scheduled`
--

CREATE TABLE `services_scheduled` (
  `schedule_num` varchar(10) DEFAULT NULL,
  `sev_num` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services_scheduled`
--

INSERT INTO `services_scheduled` (`schedule_num`, `sev_num`) VALUES
('S1', 'SN1'),
('S2', 'SN2'),
('S3', 'SN3'),
('S4', 'SN4'),
('S5', 'SN5'),
('S6', 'SN6'),
('S7', 'SN7'),
('S8', 'SN8'),
('S9', 'SN9'),
('S10', 'SN10'),
('S11', 'SN11'),
('S12', 'SN12'),
('S13', 'SN13'),
('S14', 'SN14'),
('S15', 'SN15');

-- --------------------------------------------------------

--
-- Table structure for table `trainingclasses`
--

CREATE TABLE `trainingclasses` (
  `class_id` varchar(10) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `cost` decimal(5,2) DEFAULT NULL,
  `descriptions` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainingclasses`
--

INSERT INTO `trainingclasses` (`class_id`, `cname`, `cost`, `descriptions`) VALUES
('C01', ' Puppy Preeschool', '75.00', 'Initial Obediance Training'),
('C02', 'Advanced', '80.00', 'Must have passed Basic 1'),
('C03', 'CGC', '65.00', '10 CGC Items will be covered, +Test on Last session .'),
('C04', 'Basic', '50.00', 'Basic companion animal commands and excersizes.'),
('C05', 'Obedience Training', '150.00', 'Novice Obedience Training');

-- --------------------------------------------------------

--
-- Table structure for table `training_schedules`
--

CREATE TABLE `training_schedules` (
  `t_id` varchar(10) NOT NULL,
  `course_id` varchar(10) DEFAULT NULL,
  `class_id` varchar(10) DEFAULT NULL,
  `p_id` varchar(10) DEFAULT NULL,
  `start_odate` date DEFAULT NULL,
  `ndays` int(11) DEFAULT NULL,
  `stime` varchar(8) DEFAULT NULL,
  `etime` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `training_schedules`
--

INSERT INTO `training_schedules` (`t_id`, `course_id`, `class_id`, `p_id`, `start_odate`, `ndays`, `stime`, `etime`) VALUES
('T01', 'CS01', 'C01', 'PT16', '2007-01-10', 5, '7:00 am', '9:00 am'),
('T02', 'CS02', 'C02', 'PT17', '2007-05-17', 6, '2:00 pm', '3:30 pm'),
('T03', 'CS03', 'C03', 'PT18', '2007-11-24', 2, '2:00 pm', '3:30 pm'),
('T04', 'CS04', 'C04', 'PT19', '2008-01-21', 5, '7:00 am', '9:00 am'),
('T05', 'CS05', 'C05', 'PT20', '2008-06-07', 8, '3:00 pm', '4:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `employee_id` varchar(10) DEFAULT NULL,
  `storename` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`employee_id`, `storename`, `city`, `website`) VALUES
('E010', 'Village Pets &Breeding center', 'Accra', 'www.villagepet.com'),
('E010', 'Pet Shop Palace', 'Accra', 'petshoppalce.com'),
('E010', 'Doggie Dog World', 'Accra', 'www.doggieworld.com'),
('E010', 'Dog Infinity', 'Kumasi', 'www.doginfinity.com'),
('E010', 'Ray Pet Ventures', 'Tema', 'www.raypetventures.com'),
('E010', 'Ginzys Pet shop', 'Takoradi', 'www.ginzyspet.com'),
('E010', 'Dogville Ghana', 'Accra', 'www.dogville.com'),
('E010', 'GC animal pharmacy', 'Accra', 'www.gcpharmacy.com'),
('E010', 'magroo pet shop', 'Accra', 'www.magroo.com'),
('E010', 'Phoenix animal ltd', 'Accra', 'www.phoenixanimal.com'),
('E010', 'Yolie', 'Accra', 'www.yolie.com'),
('E010', 'Pet Express', 'Accra', 'www.petexpress.com'),
('E010', 'Frank dots', 'Accra', 'www.frankdots.com'),
('E010', 'beachroad animal pharmacy', 'Accra', 'www.beachroadanimalpharm.com'),
('E010', 'Ronnis kennels', 'Accra', 'www.ronniskennels.com'),
('E010', 'Kodi Pet shop', 'Accra', 'www.kodipets.com'),
('E010', 'ultimate pet', 'Tamale', 'www.ultimate pet.com'),
('E010', 'Spie-Spy ventures', 'Accra', 'www.spieventures.com'),
('E010', 'Precious pet shop', 'Kumasi', 'www.preciouspetshop.com'),
('E010', 'Mega store', 'Accra', 'www.megastore.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`breed_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`i_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `offerings`
--
ALTER TABLE `offerings`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owner_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `Owner_index` (`name`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `Breedowner_index` (`breed_id`,`owner_id`);

--
-- Indexes for table `pet_owner`
--
ALTER TABLE `pet_owner`
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`schedule_num`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`sev_num`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `Charges_INDEX` (`charge`);

--
-- Indexes for table `services_scheduled`
--
ALTER TABLE `services_scheduled`
  ADD KEY `schedule_num` (`schedule_num`),
  ADD KEY `sev_num` (`sev_num`);

--
-- Indexes for table `trainingclasses`
--
ALTER TABLE `trainingclasses`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `training_schedules`
--
ALTER TABLE `training_schedules`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `vendor_index` (`city`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `offerings`
--
ALTER TABLE `offerings`
  ADD CONSTRAINT `offerings_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `trainingclasses` (`class_id`);

--
-- Constraints for table `owners`
--
ALTER TABLE `owners`
  ADD CONSTRAINT `owners_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `pet_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`),
  ADD CONSTRAINT `pet_ibfk_2` FOREIGN KEY (`breed_id`) REFERENCES `breed` (`breed_id`);

--
-- Constraints for table `pet_owner`
--
ALTER TABLE `pet_owner`
  ADD CONSTRAINT `pet_owner_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`),
  ADD CONSTRAINT `pet_owner_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `pet` (`p_id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `pet` (`p_id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  ADD CONSTRAINT `services_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`),
  ADD CONSTRAINT `services_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `pet` (`p_id`);

--
-- Constraints for table `services_scheduled`
--
ALTER TABLE `services_scheduled`
  ADD CONSTRAINT `services_scheduled_ibfk_1` FOREIGN KEY (`schedule_num`) REFERENCES `schedules` (`schedule_num`),
  ADD CONSTRAINT `services_scheduled_ibfk_2` FOREIGN KEY (`sev_num`) REFERENCES `services` (`sev_num`);

--
-- Constraints for table `training_schedules`
--
ALTER TABLE `training_schedules`
  ADD CONSTRAINT `training_schedules_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `offerings` (`course_id`),
  ADD CONSTRAINT `training_schedules_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `trainingclasses` (`class_id`),
  ADD CONSTRAINT `training_schedules_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `pet` (`p_id`);

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
