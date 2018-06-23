-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 10:39 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pacific`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobsid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `experience` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobsid`, `name`, `email`, `experience`) VALUES
(46, 'Akshay Waikar', 'akshay.waikar@gmail.', 'Life is good'),
(47, 'Aditya', 'Aditya@wani.com', 'I have 2 years of experience'),
(48, 'Rohan', 'rohan@gmail.com', 'I am a fresher'),
(49, 'Rohit', 'Rohitsingh@gmail.com', 'I have 10 years of coding experience'),
(51, 'MAHESH WAIKAR', 'akshay.waikar@gmail.', '99'),
(52, 'Akshay Waikar', 'akshaywaikar2@gmail.', '99'),
(53, 'Akshay Waikar', 'akshaywaikar2@gmail.', '99'),
(54, 'Akshay Waikar', 'akshaywaikar2@gmail.', '99');

-- --------------------------------------------------------

--
-- Table structure for table `musician`
--

CREATE TABLE `musician` (
  `musicianid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `musician_image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musician`
--

INSERT INTO `musician` (`musicianid`, `name`, `musician_image_url`) VALUES
(1, 'Melanie Morris', 'http://localhost/CodeIgniterIndividualProj/images/melaniethumb.jpg'),
(2, 'Greg', 'http://localhost/CodeIgniterIndividualProj/images/gregthumb.jpg'),
(3, 'Ar Rehman', 'http://localhost/CodeIgniterIndividualProj/images/rehman.jpg'),
(4, 'Arijit Singh', 'http://localhost/CodeIgniterIndividualProj/images/arjit.jpg'),
(5, 'Pitbull', 'http://localhost/CodeIgniterIndividualProj/images/pitbull.jpg'),
(6, 'Beyonce', 'http://localhost/CodeIgniterIndividualProj/images/beyonce.jpg'),
(7, 'Enrique', 'http://localhost/CodeIgniterIndividualProj/images/enrique.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderId` double DEFAULT NULL,
  `productsid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderId`, `productsid`, `price`, `quantity`) VALUES
(105, 2, 10, 2),
(147, NULL, NULL, NULL),
(148, NULL, 14.95, 1),
(148, NULL, 9.95, 1),
(148, NULL, NULL, NULL),
(155, 1, NULL, NULL),
(155, 2, NULL, NULL),
(155, 3, 20, 1),
(155, 4, NULL, NULL),
(156, 1, 9.95, 1),
(156, 2, 16.5, 1),
(156, 3, 20, 1),
(156, 4, NULL, NULL),
(157, 1, 9.95, 2),
(157, 2, NULL, NULL),
(157, 3, NULL, NULL),
(157, 4, NULL, NULL),
(158, NULL, 14.95, 2),
(158, 1, 9.95, 1),
(159, NULL, 14.95, 1),
(159, 1, 9.95, 1),
(160, NULL, 14.95, 1),
(160, 1, 9.95, 1),
(160, 2, 16.5, 1),
(160, 3, 20, 1),
(161, 1, 9.95, 2),
(162, 1, 9.95, 2),
(162, 2, 16.5, 1),
(162, 3, 20, 3),
(163, 1, 9.95, 1),
(163, 2, 16.5, 1),
(163, 3, 20, 1),
(164, NULL, 14.95, 1),
(164, 1, 9.95, 1),
(164, 2, 16.5, 1),
(164, 3, 20, 1),
(167, NULL, 14.95, 1),
(167, 1, 9.95, 4),
(167, 2, 16.5, 1),
(167, 3, 20, 2),
(169, 2, 16.5, 1),
(170, NULL, 14.95, 1),
(170, 1, 9.95, 1),
(178, NULL, 14.95, 1),
(178, NULL, 14.95, 3),
(178, NULL, 9.95, 2),
(178, NULL, 20, 1),
(178, NULL, 20, 1),
(180, 2, 14.95, 1),
(180, 3, 9.95, 1),
(180, 4, 16.5, 1),
(180, NULL, 20, 1),
(181, 1, 14.95, 1),
(181, 2, 9.95, 1),
(181, 3, 16.5, 1),
(181, 4, 20, 1),
(182, 1, 14.95, 2),
(182, 2, 9.95, 1),
(182, 3, 16.5, 3),
(182, 4, 20, 4),
(183, 1, 14.95, 4),
(183, 2, 9.95, 2),
(183, 3, 16.5, 3),
(183, 4, 20, 1),
(184, 1, 14.95, 1),
(184, 2, 9.95, 1),
(185, 1, 14.95, 1),
(185, 2, 9.95, 2),
(185, 3, 16.5, 1),
(188, 1, 14.95, 1),
(188, 2, 9.95, 1),
(188, 3, 16.5, 1),
(188, 4, 20, 1),
(189, 1, 14.95, 1),
(191, 1, 14.95, 1),
(191, 2, 9.95, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` double NOT NULL,
  `Name` varchar(30) NOT NULL,
  `EmailId` varchar(20) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Zip` varchar(255) NOT NULL,
  `Credit_Card` varchar(255) NOT NULL,
  `Month` varchar(255) NOT NULL,
  `Year` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderId`, `Name`, `EmailId`, `Address`, `City`, `State`, `Zip`, `Credit_Card`, `Month`, `Year`) VALUES
(105, 'RAHUL SULT', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'PUNEs', 'Foreign country', '60011', '0', '12', 1234),
(106, 'Akshay Wai', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXlml', '76013', '0', '12', 1965),
(107, 'MAHESH WAI', 'akshay.waikar@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'CHENNAI', 'TAMIL NADU', '60002', '0', '08', 6787),
(108, 'suraj', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '0', '08', 1965),
(109, 'Akshay Wai', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '0', '12', 1965),
(110, 'suraj', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '0', '12', 1965),
(111, 'akash lima', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '522', '09', 2031),
(112, 'suraj', 'akash.waikar@gmail.c', 'R A Puram', 'Chennai', 'Tamil Nadu', '60001', '2147483647', '02', 1965),
(113, 'Akshay Waikar', 'akshay.makad@gmail.c', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '8', '03', 2035),
(114, 'baagadbilla', 'a@b.com', 'qwerty12345', 'bassbomblat', 'texas', '12378', '0', '05', 2080),
(115, 'baagadbilla', 'a@b.com', 'qwerty12345', 'bassbomblat', 'texas', '12378', '1298229', '11', 2030),
(116, 'rubaroo', 'm@n.com', 'baagadbilla', 'texas', 'arlington', '12098', '8', '10', 2019),
(117, 'RAHUL SULTANE', 'akshaywaikar2@gmail.', 'asdfgjkl', 'PUNErret', 'gugugu', '60011', '438', '07', 3030),
(118, 'MAHESH WAIKAR', 'akshay.waikar@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'CHENNAI', 'TAMIL NADU', '60002', '71', '04', 2027),
(119, 'akash limaye', 'akshaywaikar2@gmail.', 'R A Puram', 'tuntun', 'rashtrabhau', '12345', '4', '09', 2030),
(120, 'akudi', 'q@w.com', 'weicked', 'arlington', 'texasgu', '76543', '8', '03', 2022),
(121, 'Akshay Waikar', 'akshay.waikar@gmail.', 'artments, 59, 1st Main road, R A Puram', 'Chennai', 'Tamil Nadu', '55555', '8', '08', 2018),
(122, 'Akshay Waikar', 'shay.waikar@gmail.co', 'qwety', 'Chennai', 'Tamil Nadu', '60004', '8975', '01', 2024),
(123, 'suraj', 'akshay.waikar@gmail.', '9,Ramrajwfwfwfdwf Apartments, 59, 1st Main road, R A Puram', 'Chennai', 'Tamil Nadu', '60002', '0', '12', 2020),
(124, 'Akshay Waikar', 'akshay.waikar@gmail.', '9,Ramraj Apartments, 59, 1st Main road, R A Puram', 'Chennai', 'Tamil Nadu', '60002', '58', '11', 1234),
(125, 'Akshay Mahesh Waikar', 'akshaywaikar2@gmail.', 'Apt No 379lkkasjcalscl', 'Arlington', 'Texas', '76013', '0', '08', 1965),
(126, 'baagadbilla', 'a@b.com', 'Apt No 379', 'bassbomblat', 'texas', '12378', '522', '12', 1965),
(127, 'baagadbilla', 'a@b.com', 'Apt No 379', 'bassbomblat', 'texas', '12378', '522', '12', 1965),
(128, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXwdwdwdw', '76013', '522', '08', 1965),
(129, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXwdwdwdw', '76013', '522', '08', 1965),
(147, 'Namrata Mokashi', 'noopur@gmail.com', 'Mauja Bhamti, Jaitala Road', 'NAGPUR', 'scsfdfee', '44002', '522', '03', 1234),
(148, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXsdd', '76013', '522', '12', 1970),
(149, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'TXxcsc', '76013', '56', '03', 1234),
(150, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'TXxcsc', '76013', '56', '03', 1234),
(151, 'baagadbilla', 'a@b.com', 'R A Puram', 'bassbomblat', 'texas', '12378', '522', '03', 1970),
(152, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXscfs', '76013', '56', '08', 1965),
(153, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXscfs', '76013', '56', '08', 1965),
(154, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXscfs', '76013', '56', '08', 1965),
(155, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXedf', '76013', '522', '12', 1970),
(156, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXssd', '76013', '522', '12', 1965),
(157, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXfbfb', '76013', '522', '08', 1965),
(158, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXsds', '76013', '522', '12', 1970),
(159, 'MAHESH WAIKAR', 'akshay.waikar@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'CHENNAI', 'TAMIL NADU', '60002', '522', '08', 1970),
(160, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXedf', '76013', '522', '03', 1965),
(161, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'R A Puram', 'Arlington', 'TXwdw', '76013', '522', '12', 1965),
(162, 'Akshay Waikar', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '522', '12', 1965),
(163, 'Akshay Waikar', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '522', '08', 1965),
(164, 'Akshay Mahesh Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'Texas', '76013', '56', '03', 1970),
(165, 'Akshay Mahesh Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'Texas', '76013', '56', '03', 1970),
(166, 'Akshay Mahesh Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'Texas', '76013', '56', '03', 1970),
(167, 'MAHESH WAIKAR', 'akshay.waikar@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'CHENNAI', 'TAMIL NADU', '60002', '522', '12', 1234),
(168, 'MAHESH WAIKAR', 'akshay.waikar@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'CHENNAI', 'TAMIL NADU', '60002', '56', '03', 1965),
(169, 'MAHESH WAIKAR', 'akshay.waikar@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'CHENNAI', 'TAMIL NADU', '60002', '56', '03', 1965),
(170, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXedf', '76013', '522', '12', 1970),
(171, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXedf', '76013', '522', '12', 1970),
(172, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXedf', '76013', '522', '12', 1970),
(173, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXedf', '76013', '522', '12', 1970),
(174, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXsas', '76013', '522', '12', 1234),
(175, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXsas', '76013', '522', '12', 1234),
(176, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXsas', '76013', '522', '12', 1234),
(177, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXdvd', '76013', '522', '12', 1234),
(178, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXsda', '76013', '522', '08', 1970),
(179, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXsda', '76013', '522', '08', 1970),
(180, 'Akshay Waikar', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'TamilNadu', '60002', '522', '08', 1356),
(181, 'Akshay Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'TXsdgddr', '76013', '522', '08', 1965),
(182, 'Akshay Waikar', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '522', '03', 1234),
(183, 'Akshay Waikar', 'akshaywaikar2@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'Arlington', 'TXcss', '76013', '56', '12', 1456),
(184, 'MAHESH WAIKAR', 'akshay.waikar@gmail.', '59,1ST MAIN ROAD, R A PURAM', 'CHENNAI', 'TAMIL NADU', '60002', '522', '12', 1234),
(185, 'Akshay Mahesh Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'Texas', '76013', '522', '08', 1965),
(186, 'Akshay Mahesh Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'Texas', '76013', '522', '08', 1965),
(187, 'Akshay Mahesh Waikar', 'akshaywaikar2@gmail.', 'Apt No 379', 'Arlington', 'Texas', '76013', '522', '08', 1965),
(188, 'akash', 'aksah@gmail.com', 'wowowow', 'Arlington', 'Texas', '76013', '522', '', 1346),
(189, 'suraj', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '0', '', 2015),
(190, 'Akshay Waikar', 'akshay.waikar@gmail.', 'R A Puram', 'Chennai', 'Tamil Nadu', '60002', '522', '09', 1234),
(191, 'baagadbilla', 'a@b.com', 'R A Puram', 'bassbomblat', 'texas', '12378', '522c88530c38f56f72e6cda1871e04cf', '11', 1993);

-- --------------------------------------------------------

--
-- Table structure for table `perfomance`
--

CREATE TABLE `perfomance` (
  `PerformanceId` int(5) NOT NULL,
  `MusicianId` int(5) DEFAULT NULL,
  `Month_Year` varchar(10) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perfomance`
--

INSERT INTO `perfomance` (`PerformanceId`, `MusicianId`, `Month_Year`, `Description`) VALUES
(101, 1, 'JANUARY', 'entertains with her melodic folk style.'),
(102, 2, 'FEBRUARY', 'is back from his tour. New Songs. New Stories.'),
(103, 3, 'MARCH', 'is most versatile singer.'),
(104, 4, 'APRIL', 'sings joyful and melodious songs'),
(105, 5, 'JANUARY', 'A international Rapper is sent to stage on fire in January'),
(106, 6, 'MARCH', 'This lady is going the rock the world with her songs'),
(107, 7, 'APRIL', 'The pop singer will be performing in April');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productsid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `product_image_url` varchar(255) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productsid`, `name`, `description`, `product_image_url`, `price`) VALUES
(1, 'JavaJam Shirt', 'JavaJam Shirts are comfortable to wear to school and around town. 100% cotton. XL only.', 'http://localhost/waikar_javacoffee/images/javashirt.jpg', 14.95),
(2, 'JavaJam Mug', 'JavaJam mugs carry a full loads of caffeine (12oz) to jump-start your morning.', 'http://localhost/waikar_javacoffee/images/javamug.jpg', 9.95),
(3, 'Watch', 'Watch has analog dial and has 3 years of warranty.', 'http://localhost/waikar_javacoffee/images/watch.jpg', 16.5),
(4, 'Bag', 'Bag is very spacious and has four large compartments in it.', 'http://localhost/waikar_javacoffee/images/bag.jpg', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobsid`);

--
-- Indexes for table `musician`
--
ALTER TABLE `musician`
  ADD PRIMARY KEY (`musicianid`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `productsid` (`productsid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `perfomance`
--
ALTER TABLE `perfomance`
  ADD PRIMARY KEY (`PerformanceId`),
  ADD KEY `MusicianId` (`MusicianId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productsid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `perfomance`
--
ALTER TABLE `perfomance`
  MODIFY `PerformanceId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderId`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`productsid`) REFERENCES `products` (`productsid`);

--
-- Constraints for table `perfomance`
--
ALTER TABLE `perfomance`
  ADD CONSTRAINT `perfomance_ibfk_1` FOREIGN KEY (`MusicianId`) REFERENCES `musician` (`musicianid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
