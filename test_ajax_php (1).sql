-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2023 at 11:29 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_ajax_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `category_id`) VALUES
(1, 'Samsung', 1),
(2, 'LG', 1),
(3, 'Toshiba', 1),
(4, 'iPhone', 2),
(5, 'Samsung Mobile', 2),
(6, 'Huawei', 2),
(7, 'Earphone', 3),
(8, 'Speaker', 3),
(9, 'Camera', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'TV'),
(2, 'Smartphone'),
(3, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `brand_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_price`, `product_image`, `brand_id`) VALUES
(1, 'iPhone 14 Pro', '500.00', 'img/iphone-1.jpg', 4),
(2, 'iPhone 14', '400.00', 'img/iphone-2.jpg', 4),
(3, 'iPhone 13', '300.00', 'img/iphone-3.jpg', 4),
(4, 'Samsung 32 inch', '500.00', 'img/samsungtv-2.webp', 1),
(5, 'Samsung 18 Inch', '500.00', 'img/samsungtv-1.jpg', 1),
(6, 'Samsung 50 inch', '600.00', 'img/samsungtv-3.jpg', 1),
(7, 'LG TV 32 Inch', '500.00', 'img/lg-1.jpg', 2),
(8, 'LG TV 18 Inch', '300.00', 'img/lg-2.jpg', 2),
(9, 'LG TV 21 Inch', '400.00', 'img/lg-3.jpg', 2),
(10, 'Toshiba 40', '1000.00', 'img/toshiba-1.jpg', 3),
(11, 'Toshiba 32', '2000.00', 'img/toshiba-2.jpg', 3),
(12, 'Toshiba 25', '600.00', 'img/toshiba-3.jpg', 3),
(13, 'Samsung s23', '1200.00', 'img/sumsung-1.jpg', 5),
(14, 'Samsung s20', '900.00', 'img/sumsung-2.jpg', 5),
(15, 'Samsung A52', '500.00', 'img/sumsung-3.jpg', 5),
(16, 'Huawei P50 Pro', '1000.00', 'img/huawei-3.jpeg', 6),
(17, 'Huawei P20', '800.00', 'img/huawei-1.jpg', 6),
(18, 'Huawei S9', '400.00', 'img/huawei-2.jpg', 6),
(19, 'Beats 5', '50.00', 'img/earphone-3.jpg', 7),
(20, 'Skullcandy mini', '200.00', 'img/earphone-2.jpg', 7),
(21, 'Razer Mini', '500.00', 'img/earphone-1.jpg', 7),
(22, 'Speaker 1', '100.00', 'img/speaker-1.jpg', 8),
(23, 'Speaker 2', '500.00', 'img/speaker-2.jpg', 8),
(24, 'Speaker', '300.00', 'img/speaker-3.jpg', 8),
(25, 'Sony e33', '700.00', 'img/camera-1.jpg', 9),
(26, 'nikon pro', '1200.00', 'img/camera-4.png', 9),
(27, 'Go pro Camera', '900.00', 'img/camera-3.jpg', 9);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
