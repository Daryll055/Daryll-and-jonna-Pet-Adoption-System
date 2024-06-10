-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 06:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcnp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `profile` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`id`, `name`, `contact`, `email`, `username`, `password`, `profile`) VALUES
(2, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonna', 'qwerty', 'images/upload/'),
(3, 'Daryl', '09100815156', 'dl@yahoo.com', 'jonna', 'jonna2', 'images/upload/'),
(4, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonna', '122233', 'images/upload/'),
(5, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonnafe', '123456', 'images/upload/'),
(6, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonna', 'admin123', 'images/upload/'),
(7, 'Daryll', '098765543211', 'dpalwa@gmail.com', 'daryll', 'palwa', 'images/upload/'),
(8, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonna', '1234', 'images/'),
(9, 'Jonna Fe Terante', '09063988086', 'jterante@southernleytestateu.edu.ph', 'jonna', '54321', 'images/'),
(10, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonna', '5678', 'images/'),
(11, 'Daryl', '09063988086', 'jterante@southernleytestateu.edu.ph', 'jonna', 'mnbv', 'images/'),
(12, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonna', '67854', 'images/'),
(13, 'Jonna Fe Terante', '09100815156', 'jterante@southernleytestateu.edu.ph', 'jonna', '7654332', 'images/');

-- --------------------------------------------------------

--
-- Table structure for table `tblcnp`
--

CREATE TABLE `tblcnp` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `prize` float DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `qty` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcnp`
--

INSERT INTO `tblcnp` (`id`, `name`, `prize`, `description`, `image`, `status`, `qty`) VALUES
(1, 'Baltimore Oriole', 350, 'The rich, whistling song of the Baltimore Oriole, ', 'images/e.jpg', 'Available', NULL),
(2, 'Maltese Dog', 500, 'white color with the weight of 2kgs.', 'images/upload/2.jpg', 'Available', NULL),
(3, 'Bulldog', 550, 'Bulldogs originally were used to drive cattle to m', 'images/3.jpg', 'Available', NULL),
(4, 'Gordon Setter', 600, 'The Gordon Setter, the black avenger of the Highla', 'images/5.jpg', 'Available', NULL),
(5, 'Bedlington Terrier', 500, 'Bedlingtons are lithe, energetic Englishmen. \r\n', 'images/upload/9.JPG', 'Available', NULL),
(9, 'Papsi', 600, 'Dalmatian', 'images/upload/10.jpg', 'Available', NULL),
(10, 'Cat ', 400, 'brown hair and blue eyes', 'images/upload/cat.png', 'Available', NULL),
(11, 'Sun Conure', 300, 'vibrant yellow, orange, and green plumage, and lou', 'images/upload/b6.jpg', 'Un-Available', NULL),
(12, 'fada', 450, 'adfv agd', 'images/upload/1.jpg', 'Un-Available', 1),
(13, 'Cyberian Husky', 1000, 'Black and White Blue Eyes', 'images/upload/2.jpg', 'Available', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `cnpoid` int(11) DEFAULT NULL,
  `oqty` int(11) DEFAULT NULL,
  `ostatus` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `otype` varchar(50) DEFAULT NULL,
  `datepickup` date DEFAULT NULL,
  `timepickup` varchar(50) DEFAULT NULL,
  `validid` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `cname`, `address`, `contact`, `cnpoid`, `oqty`, `ostatus`, `timestamp`, `otype`, `datepickup`, `timepickup`, `validid`) VALUES
(10, 'Jeancen Sayoc', 'Tacloban City', '09369420867', 4, 1, 'Completed', '2024-05-18 12:37:47', 'Pick-up', '2016-10-14', NULL, NULL),
(12, 'Jhazel Dela Cruz', 'kabfsheth', '14253', 5, 3, 'Cancel', '2024-05-18 13:36:59', 'Pick-up', '0000-00-00', NULL, NULL),
(15, 'jonna', 'manalog', '09100815156', 6, 2, 'Completed', '2024-05-18 12:45:05', 'Pick-up', '2024-05-25', NULL, NULL),
(16, 'jonna', 'patong', '65368748765', 2, 3, 'Cancel', '2024-05-21 13:08:17', 'Pick-up', '2024-05-17', NULL, NULL),
(17, 'Jonna', 'manalog', '09100815156', 9, 3, 'Cancel', '2024-05-21 13:25:40', 'Pick-up', '2024-05-17', NULL, NULL),
(18, 'daryll', 'catublian', '09123456789', 2, 4, 'Cancel', '2024-05-21 13:29:32', 'Deliver', '2024-05-31', NULL, NULL),
(19, 'faye', 'afdav', '1234667467', 9, 12, 'Cancel', '2024-05-21 13:43:52', 'Pick-up', '2024-05-31', NULL, NULL),
(20, 'adgf', 'agfbvc', '2343255463', 2, 22, 'Completed', '2024-05-21 14:01:13', 'Deliver', '2024-05-25', NULL, NULL),
(21, 'jonna fe terante', 'badiangon', '09123456789', 11, 2, 'Cancel', '2024-05-26 02:30:19', 'Pick-up', '2024-05-09', NULL, NULL),
(22, 'jessica', 'talisay', '1234667467', 11, 12, 'Cancel', '2024-05-26 02:33:53', 'Deliver', '0000-00-00', NULL, NULL),
(23, 'Allaine', 'Top-Top\r\n', '1234211356', 2, 10, 'Cancel', '2024-05-22 05:38:11', 'Deliver', '2024-05-25', NULL, NULL),
(24, 'Jerome Quijano', 'Bangcas B ', '0912345678', 2, 2, 'Completed', '2024-05-22 07:02:26', 'Pick-up', '2024-05-22', NULL, NULL),
(25, 'jonna', 'Cebu City', '65368748765', 10, 1, 'new', '2024-05-26 02:18:38', 'Pick-up', '2024-05-27', '14:19', 'images/3.jpg'),
(26, 'Jonna', 'Talisay', '09218375623', 3, 3, 'new', '2024-05-26 05:53:56', 'Deliver', '2024-05-27', '16:00', 'images/IMG_20220521_120921.jpg'),
(27, 'daryll', 'esperanza', '09123235645', 13, 7, 'new', '2024-05-26 07:09:59', 'Pick-up', '2024-06-01', '08:15', 'images/discount.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcnp`
--
ALTER TABLE `tblcnp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcnp`
--
ALTER TABLE `tblcnp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
