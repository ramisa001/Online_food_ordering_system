-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 05:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `Email` varchar(30) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`Email`, `FName`, `LName`, `Password`) VALUES
('ramisa@gmail.com', 'ramisa', 'musharrat', '9999');

-- --------------------------------------------------------

--
-- Table structure for table `fooditem`
--

CREATE TABLE `fooditem` (
  `FoodName` varchar(100) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `CatalogueID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `OrderID` varchar(100) NOT NULL,
  `Status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`OrderID`, `Status`) VALUES
('10', 'processing'),
('11', 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` varchar(30) NOT NULL,
  `subtotal` varchar(30) NOT NULL,
  `pay` varchar(30) NOT NULL,
  `bal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `subtotal`, `pay`, `bal`) VALUES
('10', '520', '520', '0'),
('10', '570', '570', '0'),
('11', '570', '570', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` varchar(30) NOT NULL,
  `sales_id` varchar(30) NOT NULL,
  `prodname` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `qty` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `prodname`, `price`, `qty`, `total`) VALUES
('10', '0', 'Special Pizza', '500', '1', '520'),
('10', '0', 'Pasta', '250', '2', '570'),
('11', '0', 'Pasta', '250', '2', '570');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `UserID` varchar(30) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`UserID`, `FName`, `LName`, `Email`, `Address`, `Password`) VALUES
('150', 'rokaiya', 'rahman', 'rokaiyarahman@gmail.com', 'dhaka', '3333'),
('180', 'anika', 'tabassum', 'anika@gmail.com', 'dhaka', '12345'),
('111', 'ramisa', 'musharrat', 'ramisa@gmail.com', 'dhaka', '1234'),
('888', 'rrrr', 'mmm', 'rm@gmail.com', 'dhaka', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fooditem`
--
ALTER TABLE `fooditem`
  ADD PRIMARY KEY (`CatalogueID`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
