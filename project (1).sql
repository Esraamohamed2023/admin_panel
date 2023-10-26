-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2023 at 10:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `email`, `password`, `isAdmin`, `name`) VALUES
(3, 'admin', 'admin@gmail.com', '12345', 1, 'admin'),
(4, 'esraa', 'esraa@gmail.com', '9999', 0, 'esraa'),
(5, 'shimaa', 'shimaa@gmail.com', '5546', 0, 'shimaa'),
(6, 'ali', 'ali@gmail.com', '4567', 1, 'ali'),
(7, 'sara', 'sara@gmail.com', '5437', 0, 'sara'),
(8, 'ahmed', 'ahmed@gmail.com', '9090', 0, 'ahmed'),
(9, 'zahraa', 'mo@mo.com', '2357', 0, 'zahraa'),
(17, 'menna', 'mo@mo.com', '5678', 0, ''),
(18, 'mohamed', 'mo@mo.com', '3421', 0, 'mohamed');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Categories`, `status`) VALUES
(1, 'cat1', 1),
(2, 'cat2', 1),
(3, 'cat3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dimension` varchar(100) NOT NULL,
  `format` varchar(150) NOT NULL,
  `views` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `linecse` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categories_id`, `name`, `dimension`, `format`, `views`, `image`, `status`, `linecse`, `date`) VALUES
(16, 1, 'img-04', '350*200', 'jpg', 250, 'img-04.jpg', 0, 'If you wish to give credit, or comply with a CC license, this guide will cover everything you need to know about image', '2023-10-09 00:00:00'),
(17, 2, 'img2', '350*200', 'jpg', 250, 'img-02.jpg', 1, 'License', '2023-10-09 00:00:00'),
(35, 3, 'img6', '500*200', 'jpg', 250, 'img-06.jpg', 1, 'If you wish to give credit, or comply with a CC license, this guide will cover everything you need to know about image', '2023-10-25 00:00:00'),
(36, 2, 'img8', '900*300', 'avif', 250, 'watch.avif', 1, 'If you wish to give credit, or comply with a CC license, this guide will cover everything you need to know about image', '2023-10-17 00:00:00'),
(37, 2, 'watch', '400*900', 'jpg', 250, 'images.jpeg', 1, 'If you wish to give credit, or comply with a CC license, this guide will cover everything you need to know about image', '2023-10-10 00:00:00'),
(38, 1, 'img10', '600*300', 'jpg', 250, 'smart.jpeg', 1, 'If you wish to give credit, or comply with a CC license, this guide will cover everything you need to know about image', '2023-10-10 00:00:00'),
(39, 2, 'smart', '400*300', 'jpg', 250, 'three.jpeg', 1, 'If you wish to give credit, or comply with a CC license, this guide will cover everything you need to know about image', '2023-10-10 00:00:00'),
(41, 2, 'flower', '600*300', 'jpg', 250, 'f4.jpeg', 1, 'License', '2023-10-24 00:00:00'),
(42, 1, 'flower', '500*200', 'jpg', 250, 'f3.jpeg', 1, 'License', '2023-10-14 00:00:00'),
(43, 3, 'flower', '500*200', 'jpg', 250, 'f4.jpeg', 1, 'License', '2023-10-27 00:00:00'),
(44, 3, 'img-10', '600*300', 'jpg', 250, 'phonelab.png', 1, 'License', '2023-10-13 00:00:00'),
(45, 1, 'product', '500*200', 'jpg', 250, 'product1.jpeg', 1, 'License', '2023-10-24 00:00:00'),
(46, 1, 'product', '600*300', 'jpg', 250, 'product4.jpeg', 1, 'License', '2023-10-08 00:00:00'),
(47, 3, 'product', '500*200', 'jpg', 250, 'product3.jpeg', 1, 'License', '2023-10-12 00:00:00'),
(48, 2, 'product', '500*200', 'jpg', 250, 'product2.jpeg', 1, 'License', '2023-10-04 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Categories` (`Categories`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
