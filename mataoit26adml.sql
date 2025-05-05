-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2025 at 08:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mataoit26adml`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `number_of_complaints` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email_address`, `number_of_complaints`) VALUES
(1007, 'Bianca', 'Mat-ao', 'matao@gmail.com', 3),
(1008, 'Scarlette', 'Mancawan', 'mancawan@gmail.com', 4),
(1009, 'Antony', 'Canete', 'canete@gmail.com', 2),
(1010, 'Bugoy', 'Labis', 'labis@gmail.com', 3),
(1012, 'Yanyan', 'Sanico', 'sanico@gmail.com', 2),
(1013, 'Jane Justine', 'Catingan', 'catingan@gmail.com', 5),
(1014, 'Giovany', 'Barsobia', 'barsobia@gmail.com', 2),
(1015, 'Katelyn', 'Coming', 'coming@gmail.com', 2),
(1016, 'Pauline', 'Coming', 'comingp@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `purchase_number` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `date_of_purchase` date DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`purchase_number`, `order_id`, `date_of_purchase`, `customer_id`) VALUES
(100, 111001, '2024-01-24', 1007),
(200, 111002, '2024-01-27', 1008),
(300, 111003, '2024-01-22', 1009),
(400, 111004, '2024-01-02', 1010),
(600, 111006, '2024-01-06', 1012),
(700, 111007, '2024-01-07', 1013),
(800, 111008, '2024-01-27', 1014),
(900, 111009, '2024-01-21', 1015),
(1000, 111010, '2024-01-20', 1016);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`purchase_number`,`order_id`),
  ADD KEY `fk_customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
