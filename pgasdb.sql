-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2024 at 06:11 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 1234561230, 'admin@gmail.com', '2464b94ceb49c2115c4238f51be98d8b', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookpg`
--

CREATE TABLE `tblbookpg` (
  `ID` int NOT NULL,
  `Userid` int DEFAULT NULL,
  `Pgid` int DEFAULT NULL,
  `BookingNumber` int NOT NULL,
  `CheckinDate` date DEFAULT NULL,
  `UserMsg` varchar(250) DEFAULT NULL,
  `BookingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookpg`
--

INSERT INTO `tblbookpg` (`ID`, `Userid`, `Pgid`, `BookingNumber`, `CheckinDate`, `UserMsg`, `BookingDate`, `Remark`, `Status`, `RemDate`) VALUES
(1, 1, 14, 418357791, '2023-08-01', 'I want to shift in pg in 8 August 2023', '2023-07-22 12:03:16', 'Booking Cancelled Due Unavailability of Bed', 'Cancelled', '2023-07-24 05:18:41'),
(2, 2, 13, 168040007, '2023-07-29', 'Do the needful', '2023-07-24 04:59:02', 'Your Booking Detail has been confimed', 'Confirmed', '2023-07-24 05:15:36'),
(3, 3, 25, 967156561, '2023-08-10', 'NA', '2023-07-25 18:27:10', 'Booking approved', 'Confirmed', '2023-07-25 18:27:39'),
(4, 4, 13, 641339921, '2024-03-15', 'hiiii', '2024-03-19 07:09:22', NULL, NULL, NULL),
(5, 4, 25, 787077018, '2024-03-07', 'hj9i', '2024-03-19 07:12:59', 'ok', 'Confirmed', '2024-03-19 07:13:23'),
(6, 4, 20, 198474222, '2024-03-15', 'ewe', '2024-03-19 07:21:28', NULL, NULL, NULL),
(7, 5, 16, 971609923, '2024-04-01', 'hello owner', '2024-03-19 11:57:06', NULL, NULL, NULL),
(8, 6, 16, 389468996, '2024-03-15', 'i want to boook this pg', '2024-03-19 16:29:25', NULL, NULL, NULL),
(9, 6, 11, 917447279, '2024-03-23', 'HI', '2024-03-19 19:29:31', NULL, NULL, NULL),
(10, 6, 27, 273220419, '2024-03-15', 'i want pg\r\n', '2024-03-20 06:00:36', 'confirmed\r\n', 'Confirmed', '2024-03-20 06:02:02'),
(11, 7, 26, 146156340, '2024-03-08', 'hello', '2024-03-20 06:19:34', NULL, NULL, NULL),
(12, 6, 26, 691216796, '2024-04-01', 'hi', '2024-03-20 07:15:44', 'nhii', 'Confirmed', '2024-03-20 07:16:52'),
(13, 6, 27, 126532426, '2024-03-22', 'heloo', '2024-03-20 07:21:49', 'thanks', 'Confirmed', '2024-03-20 07:22:44'),
(14, 6, 26, 446695687, '2024-04-01', 'i want this pg', '2024-03-22 04:25:27', 'approved', 'Confirmed', '2024-03-22 04:26:12'),
(15, 6, 26, 959811960, '2024-05-01', 'i want this pg', '2024-04-17 08:16:42', 'nope sorry', 'Cancelled', '2024-04-24 03:25:27'),
(16, 6, 28, 413056076, '2024-05-01', 'i want this pg from may to aug', '2024-04-23 11:32:19', 'ok done\r\n', 'Confirmed', '2024-04-24 05:15:57'),
(17, 10, 27, 526040131, '2024-05-01', 'i want this pg', '2024-04-24 05:14:31', 'jfhjf', 'Confirmed', '2024-09-03 04:35:08'),
(18, 6, 28, 846902970, '0004-07-15', 'i want this pg', '2024-09-12 04:56:52', 'ok done', 'Confirmed', '2024-09-12 04:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int NOT NULL,
  `StateID` int DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(3, 3, 'Allahabad', '2023-07-07 08:41:00'),
(4, 3, 'Aligarh', '2023-07-07 08:41:00'),
(5, 3, 'Lucknow', '2023-07-07 08:41:00'),
(6, 2, 'Jaipur', '2023-07-07 08:41:00'),
(7, 8, 'Gangtok', '2023-07-07 08:41:00'),
(8, 8, 'Peeling', '2023-07-07 08:41:00'),
(9, 8, 'Namchi', '2023-07-07 08:41:00'),
(10, 8, 'Ravangla', '2023-07-07 08:41:00'),
(11, 8, 'Mangan', '2023-07-07 08:41:00'),
(12, 2, 'Bhopal', '2023-07-07 08:41:00'),
(13, 2, 'Indore', '2023-07-07 08:41:00'),
(14, 2, 'Indore', '2023-07-07 08:41:00'),
(15, 11, 'Chennai', '2023-07-07 08:41:00'),
(17, 5, 'Delhi', '2023-07-25 18:30:01'),
(19, 10, 'gift city', '2024-03-19 12:04:07'),
(20, 10, 'ahemedabad', '2024-03-19 18:23:22'),
(21, 14, 'kolkata', '2024-03-26 12:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

CREATE TABLE `tblowner` (
  `ID` int NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(2, 'Khusbu', 'hj@gmail.com', 8989898988, '202cb962ac59075b964b07152d234b70', '2023-07-20 11:06:51'),
(3, 'Pg owner test', 'pgtest@gmail.com', 1234567890, 'f925916e2754e5e03f75dd58a5733251', '2023-07-20 11:06:51'),
(4, 'lakhesh', 'lakhesh@gmail.com', 1231231230, 'b59c67bf196a4758191e42f76670ceba', '2023-07-25 18:24:50'),
(5, 'keval gohel', 'KEVAL1585@GMAIL.COM', 7990610243, '3b712de48137572f3849aabd5666a4e3', '2024-03-19 12:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Fulfillment` mediumtext NOT NULL,
  `FutureServices` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`, `Fulfillment`, `FutureServices`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: left;\"><b>PG SPOTTER</b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\">The aim of pgspotter  to provide user friendly environment to pg seeker at affordable price. Test data</div>', '2024-04-24 04:40:02', 'The technological revolution in computers has enhanced our abilities to teach. MDS has remained on the cutting edge by instituting the use of computer simulators and remote Web-accessed study material. The company will continue to seek new ways to provide a better and more convenient teaching environment through technology. The virtual class room is a thing of the near future, and we are positioning ourselves to be among the first who will provide such services.', 'The company is in the process of launching a new division for the Seattle office that will encompass training classes for commercial drivers licenses and motorcycle licenses. These services will include comprehensive indoor training classes, job placement assistance for truck and bus drivers, and rented vehicles to practice with, and use for license testing. This program will be launched in 3rd quarter 2004. Depending on its success, management plans to incorporate this program into all the field offices by 3rd quarter 2005..'),
(2, 'contactus', 'Contact Us', '<b>PG SPOTTER </b><div><b>Contact Number:</b>+91-7990610243     24/7 support </div><div><b>email: </b>info@gmail.com</div><div><b>Address : </b> SHIVRANJNI SETTELITE</div>', '2024-03-20 06:11:34', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `ID` int NOT NULL,
  `Userid` int NOT NULL,
  `Pgid` int NOT NULL,
  `BookingID` int NOT NULL,
  `PBookingNumber` int NOT NULL,
  `Payment` decimal(10,2) NOT NULL,
  `Pstatus` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpg`
--

CREATE TABLE `tblpg` (
  `ID` int NOT NULL,
  `OwnerID` int NOT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `PGTitle` varchar(200) DEFAULT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `RPmonth` varchar(120) DEFAULT NULL,
  `norooms` varchar(45) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Electricity` varchar(40) DEFAULT NULL,
  `Parking` varchar(40) DEFAULT NULL,
  `Refregerator` varchar(40) DEFAULT NULL,
  `Furnished` varchar(40) DEFAULT NULL,
  `AC` varchar(40) DEFAULT NULL,
  `Balcony` varchar(40) DEFAULT NULL,
  `StudyTable` varchar(40) DEFAULT NULL,
  `Laundry` varchar(40) DEFAULT NULL,
  `Security` varchar(40) DEFAULT NULL,
  `MealsBreakfast` varchar(45) DEFAULT NULL,
  `MealLunch` varchar(45) NOT NULL,
  `MealDinner` varchar(45) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` int DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpg`
--

INSERT INTO `tblpg` (`ID`, `OwnerID`, `StateName`, `CityName`, `PGTitle`, `Type`, `RPmonth`, `norooms`, `Address`, `Image`, `Electricity`, `Parking`, `Refregerator`, `Furnished`, `AC`, `Balcony`, `StudyTable`, `Laundry`, `Security`, `MealsBreakfast`, `MealLunch`, `MealDinner`, `RegDate`, `IsActive`, `LastUpdationDate`) VALUES
(26, 5, 'Gujrat', 'ahemedabad', 'Test 1', '', '8000', '1', 'SHIVRAJINI AHEMEDABAD', '1599e96fcbfd93a1fab22c45b4eeeeb0.jpg', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No', '2024-03-19 19:44:22', NULL, '2024-09-03 04:37:28'),
(27, 5, 'Gujrat', 'ahemedabad', 'Test 2', 'Both', '8000', '4', 'SHIVRAJINI AHEMEDABAD', '1599e96fcbfd93a1fab22c45b4eeeeb0.jpg', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', '2024-03-19 19:44:54', NULL, NULL),
(28, 5, 'Gujrat', 'ahemedabad', 'test 1', 'Girls', '10000', '2', 'Vejalpur', '2cb463fb78222ea7be096ee66e1674a0.png', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', '', '', '', '2024-04-17 08:48:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int NOT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(2, 'Madhya Pradesh', '2023-07-21 07:07:03'),
(3, 'Uttar Pradesh', '2023-07-21 07:07:03'),
(4, 'Andra Pradesh', '2023-07-21 07:07:03'),
(5, 'Delhi/NCR', '2023-07-21 07:07:03'),
(6, 'Kerala', '2023-07-21 07:07:03'),
(7, 'Arunachal Pradesh', '2023-07-21 07:07:03'),
(8, 'Sikkim', '2023-07-21 07:07:03'),
(9, 'Maharastra', '2023-07-21 07:07:03'),
(10, 'Gujrat', '2023-07-21 07:07:03'),
(14, 'hydrabad', '2024-03-26 12:03:10'),
(15, 'ekjrhwk', '2024-09-12 04:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `FatherName` varchar(120) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ComAddress` varchar(250) DEFAULT NULL,
  `EmergencyNumber` bigint DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `FatherName`, `dob`, `ComAddress`, `EmergencyNumber`, `Password`, `RegDate`, `LastUpdationDate`) VALUES
(1, 'Anuj kumar', 'ak30@gmail.com', 4152635241, NULL, NULL, NULL, NULL, 'f925916e2754e5e03f75dd58a5733251', '2023-07-22 12:02:06', NULL),
(2, 'Test Sample', 'sample@gmail.com', 9787979879, 'Mr. Hari Krisna', '1996-02-01', 'K-897 Ambedkar Road, Kanpur(UP)', 4561238978, '202cb962ac59075b964b07152d234b70', '2023-07-24 04:52:26', '2023-07-24 04:57:12'),
(4, 'lakesh desai', 'abc@gmail.com', 1234454765, NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', '2024-03-19 07:08:44', NULL),
(6, 'keval', 'keval@gmail.com', 7247839473, NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', '2024-03-19 16:28:35', NULL),
(8, 'shikhar', 'shikhar@gmail.com', 4984394838, NULL, NULL, NULL, NULL, '81dc9bdb52d04dc20036dbd8313ed055', '2024-03-20 06:24:18', NULL),
(9, 'shhhikhar', 'shikhardharva24@gmail.com', 9106302710, NULL, NULL, NULL, NULL, 'b0baee9d279d34fa1dfd71aadb908c3f', '2024-04-17 08:25:40', NULL),
(10, 'kevallll', 'keval11@gmail.com', 7990610243, NULL, NULL, NULL, NULL, '3d99cb0493e48e384700a5878c278918', '2024-04-24 05:13:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookpg`
--
ALTER TABLE `tblbookpg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblowner`
--
ALTER TABLE `tblowner`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpg`
--
ALTER TABLE `tblpg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbookpg`
--
ALTER TABLE `tblbookpg`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblowner`
--
ALTER TABLE `tblowner`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpg`
--
ALTER TABLE `tblpg`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
