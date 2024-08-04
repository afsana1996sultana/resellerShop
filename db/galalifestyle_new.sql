-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2024 at 09:12 AM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galalifestyle_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_heads`
--

CREATE TABLE `account_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_heads`
--

INSERT INTO `account_heads` (`id`, `title`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Product Purchase', 'product-purchase', 1, '2022-06-22 03:49:01', '2023-03-25 01:07:48'),
(2, 'Product Sell', 'product-sell', 1, '2020-07-28 13:09:05', '2020-07-28 13:09:05'),
(3, 'Product Return', 'product-return', 1, '2021-09-14 05:59:26', '2021-09-14 05:59:26'),
(4, 'Cash Fund', 'cash-fund', 1, '2021-08-26 17:18:26', '2021-08-26 17:18:26'),
(6, 'Transport Cost', 'transport-cost', 1, '2020-09-04 11:51:38', '2020-09-04 11:51:38'),
(7, 'House rent', 'house-rent', 1, '2021-07-02 21:26:46', '2021-07-02 21:26:46'),
(8, 'Electricity Bill', 'electricity-bill', 1, '2021-07-04 23:54:29', '2021-07-04 23:54:29'),
(9, 'Courier Charge', 'courier-charge', 1, '2021-07-04 23:55:15', '2023-04-03 03:36:19'),
(10, 'Refreshment', 'refreshment', 1, '2021-07-04 23:55:34', '2021-07-04 23:55:34'),
(11, 'Market Bill', 'market-bill', 1, '2021-07-04 23:55:44', '2021-07-04 23:55:44'),
(12, 'Purchase Materials', 'purchase-materials', 1, '2021-07-04 23:56:08', '2021-07-04 23:56:08'),
(13, 'Packaging Cost', 'packaging-cost', 1, '2021-07-11 06:08:00', '2021-07-11 06:08:00'),
(14, 'Repair Materials', 'repair-materials', 1, '2021-07-11 06:08:55', '2021-07-11 06:08:55'),
(15, 'Damage/Loss', 'damage/loss', 1, '2021-07-19 08:34:00', '2022-10-16 01:45:54'),
(16, 'Web maintenance', 'web-maintenance', 1, '2021-07-19 08:34:34', '2021-07-19 08:34:34'),
(17, 'Others', 'others', 1, '2021-08-26 17:18:26', '2021-08-26 17:18:26'),
(22, 'office', 'office', 1, '2024-04-03 05:45:32', '2024-04-03 05:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `account_ledgers`
--

CREATE TABLE `account_ledgers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_head_id` bigint(20) UNSIGNED NOT NULL,
  `particulars` varchar(255) NOT NULL,
  `debit` double NOT NULL DEFAULT 0,
  `credit` double NOT NULL DEFAULT 0,
  `balance` double NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Debit, 2=>Credit',
  `order_id` bigint(20) NOT NULL DEFAULT 0,
  `product_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_ledgers`
--

INSERT INTO `account_ledgers` (`id`, `account_head_id`, `particulars`, `debit`, `credit`, `balance`, `type`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Classic Black T-Shit', 12000, 0, -12000, 1, 0, 2, '2024-04-01 02:52:30', '2024-04-01 02:52:30'),
(2, 1, 'Girls Blue Paper Jeans', 9000, 0, -9000, 1, 0, 3, '2024-04-01 03:02:07', '2024-04-01 03:02:07'),
(3, 1, 'Disha Gallery LIVE Flared/A-line Gown', 20000, 0, -20000, 1, 0, 4, '2024-04-01 03:10:58', '2024-04-01 03:10:58'),
(4, 1, 'Long Scarf Imitation Cashmere Trendy Plaid Pattern Warm Long Scarf', 6000, 0, -6000, 1, 0, 5, '2024-04-01 03:34:29', '2024-04-01 03:34:29'),
(5, 2, 'Invoice No: 0000003', 0, 510, 510, 2, 3, 0, '2024-04-01 04:15:43', '2024-04-01 04:15:43'),
(6, 2, 'Invoice No: 0000004', 0, 1560, 1560, 2, 4, 0, '2024-04-01 04:17:00', '2024-04-01 04:17:00'),
(7, 1, 'Aliya Cut Gown Ready Cotton Fashionable Long Shalwar Kamez Orna', 2500, 0, -2500, 1, 0, 6, '2024-04-01 04:34:56', '2024-04-01 04:34:56'),
(8, 2, 'Disha Gallery LIVE Flared/A-line Gown', 0, 1930, 1930, 2, 6, 0, '2024-04-01 04:49:49', '2024-04-01 04:49:49'),
(9, 1, 'Jeans Pant', 104550, 0, -104550, 1, 0, 7, '2024-04-01 04:51:06', '2024-04-01 04:51:06'),
(10, 1, 'Jeans', 126000, 0, -126000, 1, 0, 8, '2024-04-01 04:56:00', '2024-04-01 04:56:00'),
(11, 2, 'Jeans Pant', 0, 1010, 1010, 2, 8, 0, '2024-04-01 04:57:20', '2024-04-01 04:57:20'),
(12, 2, 'Jeans', 0, 1110, 1110, 2, 9, 0, '2024-04-01 22:17:38', '2024-04-01 22:17:38'),
(13, 2, 'Jeans Pant', 0, 1010, 1010, 2, 10, 0, '2024-04-01 22:19:17', '2024-04-01 22:19:17'),
(14, 2, 'Jeans Pant', 0, 1010, 1010, 2, 16, 0, '2024-04-01 23:49:40', '2024-04-01 23:49:40'),
(15, 2, 'Jeans Pant', 0, 1010, 1010, 2, 1, 0, '2024-04-03 05:37:15', '2024-04-03 05:37:15'),
(16, 22, 'dsadfsa', 500, 0, 510, 1, 0, 0, '2024-04-03 05:46:05', '2024-04-03 05:46:06'),
(17, 1, 'Mens  Premium Spandex T-Shirt', 40000, 0, -40000, 1, 0, 10, '2024-04-06 19:26:36', '2024-04-06 19:26:36'),
(18, 1, 'Mens  Premium Spandex Short T-Shirt', 88000, 0, -88000, 1, 0, 14, '2024-04-06 21:38:26', '2024-04-06 21:38:26'),
(19, 1, 'Mens  Premium Spandex Short Sleeve T-Shirt', 160000, 0, -160000, 1, 0, 15, '2024-04-06 21:43:53', '2024-04-06 21:43:53'),
(20, 2, 'Mens  Premium Spandex T-Shirt', 0, 460, 460, 2, 2, 0, '2024-04-07 04:35:41', '2024-04-07 04:35:41'),
(21, 1, 'Short Sleeve Linen Shirt', 43000, 0, -43000, 1, 0, 21, '2024-05-10 11:50:47', '2024-05-10 11:50:47'),
(22, 2, 'Invoice No: 0000007', 0, 400, 400, 2, 7, 0, '2024-05-13 05:59:52', '2024-05-13 05:59:52'),
(23, 1, 'Test Product', 0, 0, 0, 1, 0, 22, '2024-05-13 06:03:19', '2024-05-13 06:03:19'),
(24, 2, 'Invoice No: 0000009', 0, 700, 700, 2, 9, 0, '2024-05-13 06:07:41', '2024-05-13 06:07:41'),
(25, 2, 'Mens  Premium Spandex Short T-Shirt', 0, 760, 760, 2, 2, 0, '2024-05-13 06:27:02', '2024-05-13 06:27:02'),
(26, 2, 'Mens  Premium Spandex Short T-Shirt', 0, 1150, 1150, 2, 3, 0, '2024-05-13 06:44:20', '2024-05-13 06:44:20'),
(27, 2, 'Invoice No: 0000005', 0, 400, 400, 2, 5, 0, '2024-05-13 07:49:50', '2024-05-13 07:49:50'),
(28, 2, 'Invoice No: 0000006', 0, 1400, 1400, 2, 6, 0, '2024-05-13 07:52:20', '2024-05-13 07:52:20'),
(29, 1, 'Premium Cotton Stretch Denim Long Pant', 400000, 0, -400000, 1, 0, 23, '2024-05-14 05:15:32', '2024-05-14 05:15:32'),
(30, 1, 'Formal/Casual Long  Sleeve Shirt', 560000, 0, -560000, 1, 0, 27, '2024-06-15 14:52:53', '2024-06-15 14:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `division_name` varchar(50) DEFAULT NULL,
  `district_name` varchar(50) DEFAULT NULL,
  `upazilla_name` varchar(50) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `upazilla_id` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Default, 0=>Not Default',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Color', 1, 4, '2022-08-27 00:14:35', '2024-03-19 07:53:45'),
(5, 'Size', 1, 4, '2022-08-27 00:16:20', '2022-08-27 00:16:20'),
(18, 'size---shoes', 1, 4, '2024-03-22 14:58:09', '2024-03-22 15:00:31'),
(19, '3-peace', 1, 82, '2024-03-24 12:51:34', '2024-03-24 12:51:34'),
(20, 'Number', 1, 82, '2024-03-25 03:28:11', '2024-03-25 03:28:11'),
(21, 'Body-Size', 1, 4, '2024-03-26 01:13:39', '2024-03-26 01:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(100) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(28, 4, 'Red', 1, 4, '2022-08-27 00:15:32', '2022-08-27 00:15:32'),
(29, 4, 'White', 1, 4, '2022-08-27 00:15:36', '2022-08-27 00:15:36'),
(30, 4, 'Green', 1, 4, '2022-08-27 00:15:48', '2022-08-27 00:15:48'),
(31, 4, 'Yellow', 1, 4, '2022-08-27 00:16:00', '2022-08-27 00:16:00'),
(32, 5, 'S', 1, 4, '2022-08-27 00:16:27', '2022-08-27 00:16:27'),
(33, 5, 'M', 1, 4, '2022-08-27 00:16:30', '2022-08-27 00:16:30'),
(34, 5, 'L', 1, 4, '2022-08-27 00:16:32', '2022-08-27 00:16:32'),
(35, 5, 'XL', 1, 4, '2022-08-27 00:16:35', '2022-08-27 00:16:35'),
(36, 5, 'XXl', 1, 4, '2022-08-27 00:16:44', '2022-08-27 00:16:44'),
(48, 4, 'Pink', 1, 4, '2023-03-16 02:35:15', '2023-03-16 02:35:15'),
(58, 4, 'Black', 1, 4, '2023-03-19 02:38:11', '2023-03-19 02:38:11'),
(59, 4, 'Purple', 1, 4, '2024-02-07 06:45:34', '2024-02-07 06:45:34'),
(61, 4, 'Light Blue', 1, 4, '2024-02-07 06:46:44', '2024-02-07 06:46:44'),
(62, 4, 'Dark Blue', 1, 4, '2024-02-07 06:46:53', '2024-02-07 06:46:53'),
(67, 4, 'Burgundy', 1, 65, '2024-03-14 23:09:53', '2024-03-14 23:09:53'),
(68, 4, 'Light Green', 1, 65, '2024-03-14 23:11:21', '2024-03-14 23:11:21'),
(69, 4, 'Light Grey', 1, 65, '2024-03-14 23:11:31', '2024-03-14 23:11:31'),
(70, 4, 'Blue', 1, 4, '2024-03-14 23:35:50', '2024-03-14 23:35:50'),
(71, 4, 'Khaki', 1, 4, '2024-03-15 02:57:27', '2024-03-15 02:57:27'),
(73, 4, 'Brown', 1, 67, '2024-03-15 05:36:47', '2024-03-15 05:36:47'),
(74, 4, 'Gray', 1, 67, '2024-03-15 06:43:38', '2024-03-15 06:43:38'),
(75, 4, 'New gold', 1, 4, '2024-03-15 10:41:40', '2024-03-15 10:41:40'),
(76, 4, 'Irony Grey', 1, 4, '2024-03-19 07:54:05', '2024-03-19 07:54:05'),
(77, 4, 'SKY BLUE', 1, 4, '2024-03-19 07:54:24', '2024-03-19 07:54:24'),
(78, 18, '36', 1, 4, '2024-03-22 14:58:58', '2024-03-22 14:58:58'),
(79, 18, '37', 1, 4, '2024-03-22 14:59:07', '2024-03-22 14:59:07'),
(80, 18, '38', 1, 4, '2024-03-22 14:59:14', '2024-03-22 14:59:14'),
(81, 18, '39', 1, 4, '2024-03-22 14:59:19', '2024-03-22 14:59:19'),
(82, 18, '40', 1, 4, '2024-03-22 14:59:23', '2024-03-22 14:59:23'),
(83, 18, '41', 1, 4, '2024-03-22 14:59:28', '2024-03-22 14:59:28'),
(84, 18, '42', 1, 4, '2024-03-22 14:59:32', '2024-03-22 14:59:32'),
(85, 18, '43', 1, 4, '2024-03-22 14:59:37', '2024-03-22 14:59:37'),
(86, 18, '44', 1, 4, '2024-03-22 14:59:41', '2024-03-22 14:59:41'),
(87, 18, '45', 1, 4, '2024-03-22 14:59:46', '2024-03-22 14:59:46'),
(88, 18, '46', 1, 4, '2024-03-22 14:59:52', '2024-03-22 14:59:52'),
(89, 19, '32', 1, 82, '2024-03-24 12:51:51', '2024-03-24 12:51:51'),
(90, 19, '33', 1, 82, '2024-03-24 12:52:01', '2024-03-24 12:52:01'),
(91, 19, '34', 1, 82, '2024-03-24 12:52:08', '2024-03-24 12:52:08'),
(92, 19, '35', 1, 82, '2024-03-24 12:52:14', '2024-03-24 12:52:14'),
(93, 19, '36', 1, 82, '2024-03-24 12:52:20', '2024-03-24 12:52:20'),
(94, 19, '37', 1, 82, '2024-03-24 12:52:26', '2024-03-24 12:52:26'),
(95, 19, '38', 1, 82, '2024-03-24 12:52:31', '2024-03-24 12:52:31'),
(96, 19, '39', 1, 82, '2024-03-24 12:52:38', '2024-03-24 12:52:38'),
(97, 19, '40', 1, 82, '2024-03-24 12:52:44', '2024-03-24 12:52:44'),
(98, 19, '41', 1, 82, '2024-03-24 12:52:51', '2024-03-24 12:52:51'),
(99, 19, '42', 1, 82, '2024-03-24 12:52:58', '2024-03-24 12:52:58'),
(100, 19, '43', 1, 82, '2024-03-24 12:53:05', '2024-03-24 12:53:05'),
(101, 19, '44', 1, 82, '2024-03-24 12:53:11', '2024-03-24 12:53:11'),
(102, 20, '1', 1, 82, '2024-03-25 03:28:17', '2024-03-25 03:28:17'),
(103, 20, '2', 1, 82, '2024-03-25 03:28:23', '2024-03-25 03:28:23'),
(104, 20, '3', 1, 82, '2024-03-25 03:28:26', '2024-03-25 03:28:26'),
(105, 20, '4', 1, 82, '2024-03-25 03:28:30', '2024-03-25 03:28:30'),
(106, 20, '5', 1, 82, '2024-03-25 03:28:33', '2024-03-25 03:28:33'),
(107, 20, '6', 1, 82, '2024-03-25 03:28:36', '2024-03-25 03:28:36'),
(108, 20, '7', 1, 82, '2024-03-25 03:28:40', '2024-03-25 03:28:40'),
(109, 20, '8', 1, 82, '2024-03-25 03:28:43', '2024-03-25 03:28:43'),
(110, 20, '9', 1, 82, '2024-03-25 03:28:49', '2024-03-25 03:28:49'),
(111, 20, '10', 1, 82, '2024-03-25 03:28:52', '2024-03-25 03:28:52'),
(112, 21, '30', 1, 4, '2024-03-26 01:13:52', '2024-03-26 01:13:52'),
(113, 21, '32', 1, 4, '2024-03-26 01:14:00', '2024-03-26 01:14:00'),
(114, 21, '34', 1, 4, '2024-03-26 01:14:05', '2024-03-26 01:14:05'),
(115, 21, '36', 1, 4, '2024-03-26 01:14:37', '2024-03-26 01:14:37'),
(116, 21, '36', 1, 4, '2024-03-26 01:14:52', '2024-03-26 01:14:52'),
(117, 21, '38', 1, 4, '2024-03-26 01:14:57', '2024-03-26 01:14:57'),
(118, 21, '40', 1, 4, '2024-03-26 01:15:03', '2024-03-26 01:15:03'),
(119, 21, '42', 1, 4, '2024-03-26 01:15:07', '2024-03-26 01:15:07'),
(120, 21, '44', 1, 4, '2024-03-26 01:15:11', '2024-03-26 01:15:11'),
(121, 21, '46', 1, 4, '2024-03-26 01:15:15', '2024-03-26 01:15:15'),
(122, 21, '48', 1, 4, '2024-03-26 01:15:20', '2024-03-26 01:15:20'),
(123, 21, '50', 1, 4, '2024-03-26 01:15:24', '2024-03-26 01:15:24'),
(124, 21, '52', 1, 4, '2024-03-26 01:15:34', '2024-03-26 01:15:34'),
(125, 21, '54', 1, 4, '2024-03-26 01:15:39', '2024-03-26 01:15:39'),
(126, 21, '56', 1, 4, '2024-03-26 01:15:44', '2024-03-26 01:15:44'),
(127, 21, '58', 1, 4, '2024-03-26 01:15:48', '2024-03-26 01:15:48'),
(128, 21, '60', 1, 4, '2024-03-26 01:15:52', '2024-03-26 01:15:52'),
(129, 4, 'Beige', 1, 4, '2024-03-26 14:28:50', '2024-03-26 14:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_product_price`
--

CREATE TABLE `attribute_value_product_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_price_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(50) NOT NULL,
  `title_bn` varchar(50) DEFAULT NULL,
  `banner_img` varchar(255) DEFAULT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `position` varchar(255) NOT NULL DEFAULT '1' COMMENT '1=>Home Banner, 0=>Footer Banner',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title_en`, `title_bn`, `banner_img`, `banner_url`, `description_en`, `description_bn`, `position`, `status`, `created_at`, `updated_at`) VALUES
(26, 'dszfgdg', 'fdszgfdssg', 'upload/banner/1795290998834286.jpg', 'https://galalifestyle.shop/product-details/Jeans-Pant-7v6rx', 'xzcxzc', 'xzvxzcv', '1', 1, '2024-04-03 05:41:56', '2024-04-03 05:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(100) NOT NULL,
  `title_bn` varchar(100) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `blog_img` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_bn` varchar(50) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `description_en` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name_en`, `name_bn`, `slug`, `description_en`, `description_bn`, `brand_image`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(27, 'Oraimo', 'ওরাইমো', 'oraimo', 'From the very beginning, we wanted to do SOMETHING DIFFERENT, something that can change people\'s life so that they can explore the wonderful world. To change the world, we decided to start with SMART accessories, and to KEEP EXPLORING.\r\nSimply Smart,  Simply Best', 'প্রথম থেকেই, আমরা কিছু আলাদা করতে চেয়েছিলাম, এমন কিছু যা মানুষের জীবনকে বদলে দিতে পারে যাতে তারা বিস্ময়কর পৃথিবী ঘুরে দেখতে পারে৷ বিশ্বকে পরিবর্তন করার জন্য, আমরা SMART আনুষাঙ্গিক দিয়ে শুরু করার সিদ্ধান্ত নিয়েছি এবং অন্বেষণ চালিয়ে যেতে চাই।\r\nসিম্পলি স্মার্ট, সিম্পলি বেস্ট', 'upload/brand/1793686701316191.png', 1, 4, '2024-03-16 06:42:18', '2024-03-16 06:42:18'),
(28, 'Google', 'গুগল', 'google', 'Whether you’re a small business owner or a filmmaker, a software developer or a teacher, we’ll help you learn when and how you can use our logo, product icons, and other brand elements in your work.', 'আপনি একজন ছোট ব্যবসার মালিক হোন বা একজন চলচ্চিত্র নির্মাতা, একজন সফ্টওয়্যার বিকাশকারী বা একজন শিক্ষক, আপনি কখন এবং কীভাবে আপনার কাজে আমাদের লোগো, পণ্যের আইকন এবং অন্যান্য ব্র্যান্ড উপাদানগুলি ব্যবহার করতে পারেন তা শিখতে আমরা আপনাকে সাহায্য করব৷', 'upload/brand/1793686897694140.gif', 1, 4, '2024-03-16 06:45:26', '2024-03-16 06:45:26'),
(29, 'ANKER', 'এ্যাঙ্কার', 'anker', '\"If efficiency means something to you, then definitely check out Anker, who makes these chargers and cables that I really like.\"', '\"যদি দক্ষতা আপনার কাছে কিছু মানে, তাহলে অবশ্যই অ্যাঙ্কার দেখুন, যিনি এই চার্জার এবং তারগুলি তৈরি করেন যা আমি সত্যিই পছন্দ করি।\"', 'upload/brand/1793687530737842.jpg', 1, 4, '2024-03-16 06:55:29', '2024-03-16 06:55:29'),
(30, 'Samsung', 'স্যামসাং', 'samsung', 'Samsung Electronics constantly reinvents the future. We explore the unknown to discover technologies to help people all over the world lead happier, healthier lives.', 'স্যামসাং ইলেকট্রনিক্স ক্রমাগত ভবিষ্যতের নতুন উদ্ভাবন করে। আমরা সারা বিশ্বের মানুষকে সুখী, স্বাস্থ্যকর জীবন যাপন করতে সাহায্য করার জন্য প্রযুক্তি আবিষ্কার করতে অজানা অন্বেষণ করি।', 'upload/brand/1793687779745238.jpg', 1, 4, '2024-03-16 06:59:27', '2024-03-16 06:59:27'),
(31, 'Halo', 'হ্যালো', 'halo', 'Halo\'s purpose is to make a positive impact on a global level offering hope and helping those in need by supporting nonprofits.', 'Halo-এর উদ্দেশ্য হল বিশ্বস্তরে একটি ইতিবাচক প্রভাব ফেলার আশার প্রস্তাব করা এবং অলাভজনকদের সমর্থন করে তাদের সাহায্য করা।', 'upload/brand/1793689594021552.png', 1, 4, '2024-03-16 07:28:17', '2024-03-16 07:28:17'),
(32, 'JOYROOM', 'জয়রুম', 'joyroom', '\"Y\" and \"R\" of the JOYROOM logo are processed aesthetically to the figure \"1\", which shows the struggling spirit of unite as one, and the big family are cheering for the same goal and still believe everything is possible.', 'JOYROOM লোগোর \"Y\" এবং \"R\" চিত্র \"1\" এর সাথে নান্দনিকভাবে প্রক্রিয়া করা হয়েছে, যা এক হিসাবে এক হওয়ার সংগ্রামী মনোভাব দেখায়, এবং বড় পরিবার একই লক্ষ্যের জন্য উল্লাস করছে এবং এখনও বিশ্বাস করে যে সবকিছু সম্ভব।', 'upload/brand/1793689789153592.png', 1, 4, '2024-03-16 07:31:23', '2024-03-16 07:31:23'),
(33, 'BOAT', 'বোট', 'boat', 'BOAT is the first company from the consumer lifestyle electronics industry collaborate with the ICEA to bring out the Indigenous IP.', 'BOAT হল কনজিউমার লাইফস্টাইল ইলেকট্রনিক্স ইন্ডাস্ট্রির প্রথম কোম্পানী যা ICEA-এর সাথে দেশীয় আইপি বের করতে সহযোগিতা করে।', 'upload/brand/1793690081883461.png', 1, 4, '2024-03-16 07:36:02', '2024-03-16 07:36:02'),
(34, 'Riversong', 'রিভারসং', 'riversong', 'RIVERSONG is a leading smart devices provider and a subsidiary of the leading mobile phone developer - IMG Technology Group, headquartered in Shenzhen, China. We have a strong research and development team, a global sales and marketing team dedicated to helping grow the brand in every market. We have developed hundreds of products that are present in more than 60 countries around the world, serving over one-fifth of the world\'s population. We devoted to provide excellent user experience for customers around the world through high-quality products and human-centered design.', 'RIVERSONG is a leading smart devices provider and a subsidiary of the leading mobile phone developer - IMG Technology Group, headquartered in Shenzhen, China. We have a strong research and development team, a global sales and marketing team dedicated to helping grow the brand in every market. We have developed hundreds of products that are present in more than 60 countries around the world, serving over one-fifth of the world\'s population. We devoted to provide excellent user experience for customers around the world through high-quality products and human-centered design.\r\nRIVERSONG হল একটি নেতৃস্থানীয় স্মার্ট ডিভাইস প্রদানকারী এবং শীর্ষস্থানীয় মোবাইল ফোন ডেভেলপার - IMG প্রযুক্তি গ্রুপের একটি সহায়ক সংস্থা, যার সদর দফতর শেনজেন, চীনে। আমাদের একটি শক্তিশালী গবেষণা এবং উন্নয়ন দল রয়েছে, একটি বিশ্বব্যাপী বিক্রয় এবং বিপণন দল যা প্রতিটি বাজারে ব্র্যান্ড বৃদ্ধিতে সহায়তা করার জন্য নিবেদিত। আমরা শত শত পণ্য তৈরি করেছি যা বিশ্বের 60টিরও বেশি দেশে উপস্থিত রয়েছে, যা বিশ্বের জনসংখ্যার এক-পঞ্চমাংশেরও বেশি পরিবেশন করছে। আমরা উচ্চ-মানের পণ্য এবং মানব-কেন্দ্রিক ডিজাইনের মাধ্যমে বিশ্বজুড়ে গ্রাহকদের জন্য চমৎকার ব্যবহারকারীর অভিজ্ঞতা প্রদানের জন্য নিবেদিত।', 'upload/brand/1793690804064934.jpg', 1, 4, '2024-03-16 07:47:31', '2024-03-16 07:51:03'),
(35, 'AWEI', 'AWEI', 'awei', 'Awei(Shenzhen Yale Electronics Co.,Ltd) specializes in premium audio solutions and other consumer electronics with aesthetic and latest technology. We create outstanding sound experience for all kinds of music through a wide range of sound systems', 'Awei(Shenzhen Yale Electronics Co.,Ltd) প্রিমিয়াম অডিও সলিউশন এবং অন্যান্য ভোক্তা ইলেকট্রনিক্সে নান্দনিক এবং সর্বশেষ প্রযুক্তিতে বিশেষজ্ঞ। আমরা বিস্তৃত সাউন্ড সিস্টেমের মাধ্যমে সব ধরণের সঙ্গীতের জন্য অসামান্য সাউন্ড অভিজ্ঞতা তৈরি করি', 'upload/brand/1793691636110258.png', 1, 4, '2024-03-16 08:00:44', '2024-03-16 08:00:44'),
(36, 'BASEUS', 'BASEUS', 'baseus', 'Baseus originates from our core value “Based on User”. We are passionate to create minimalist products with easy-to-use design and haut class texture that cover all user’s preference. With more than a decade of focus on consumer electronics, innovation and creativity led us to where we are right now with numerous patents, international design awards, and a vast variety of product.', 'Baseus আমাদের মূল মান \"ব্যবহারকারীর উপর ভিত্তি করে\" থেকে উদ্ভূত। আমরা সহজে ব্যবহারযোগ্য ডিজাইন এবং হাউট ক্লাস টেক্সচার সহ ন্যূনতম পণ্য তৈরি করতে আগ্রহী যা সমস্ত ব্যবহারকারীর পছন্দকে কভার করে। ভোক্তা ইলেকট্রনিক্সের উপর এক দশকেরও বেশি মনোযোগের সাথে, উদ্ভাবন এবং সৃজনশীলতা আমাদেরকে সেই স্থানে নিয়ে গেছে যেখানে আমরা এখন অসংখ্য পেটেন্ট, আন্তর্জাতিক ডিজাইন পুরস্কার এবং বিস্তর বৈচিত্র্যের পণ্য সহ।', 'upload/brand/1793692132711628.png', 1, 4, '2024-03-16 08:08:38', '2024-03-16 08:08:38'),
(38, 'XIAOMI', 'MI', 'xiaomi', 'Xiaomi is one of the world\'s leading smartphone companies. In June 2023, MAU of MIUI reached approximately 606 million globally. The company has also established the world’s leading consumer AIoT (AI+IoT) platform, with 654.5 million smart devices connected to its platform (excluding smartphones, laptops and tablets) as of June 30, 2023. Xiaomi products are present in more than 100 countries and regions around the world. In August 2023, Xiaomi was included in the Fortune Global 500 list for the fifth year in a row, ranking 360th.', 'Xiaomi is one of the world\'s leading smartphone companies. In June 2023, MAU of MIUI reached approximately 606 million globally. The company has also established the world’s leading consumer AIoT (AI+IoT) platform, with 654.5 million smart devices connected to its platform (excluding smartphones, laptops and tablets) as of June 30, 2023. Xiaomi products are present in more than 100 countries and regions around the world. In August 2023, Xiaomi was included in the Fortune Global 500 list for the fifth year in a row, ranking 360th.', 'upload/brand/1793692406565906.jpg', 1, 4, '2024-03-16 08:12:59', '2024-03-16 08:12:59'),
(39, 'ONE PLUS', 'ONE PLUS', 'one-plus', 'OnePlus creates premium, user-centric technology that challenges market conventions and the industry status quo. Founded in 2013 around the bold Never Settle mantra, OnePlus consistently creates premium devices and software that provide the best user experience possible.', 'OnePlus প্রিমিয়াম, ব্যবহারকারী-কেন্দ্রিক প্রযুক্তি তৈরি করে যা বাজারের নিয়মাবলী এবং শিল্পের স্থিতাবস্থাকে চ্যালেঞ্জ করে। বোল্ড নেভার সেটেল মন্ত্রের আশেপাশে 2013 সালে প্রতিষ্ঠিত, OnePlus ধারাবাহিকভাবে প্রিমিয়াম ডিভাইস এবং সফ্টওয়্যার তৈরি করে যা সম্ভাব্য সর্বোত্তম ব্যবহারকারীর অভিজ্ঞতা প্রদান করে।', 'upload/brand/1710598644OnePlus-Logo_new_1.avif', 1, 4, '2024-03-16 08:16:57', '2024-03-16 08:17:24'),
(40, 'APPLE', 'অ্যাপল', 'apple', 'Apple revolutionized personal technology with the introduction of the Macintosh in 1984. Today, Apple leads the world in innovation with iPhone, iPad, Mac, Apple Watch and Apple TV.', 'অ্যাপল 1984 সালে ম্যাকিনটোশ প্রবর্তনের মাধ্যমে ব্যক্তিগত প্রযুক্তিতে বৈপ্লবিক পরিবর্তন এনেছে। আজ, অ্যাপল আইফোন, আইপ্যাড, ম্যাক, অ্যাপল ওয়াচ এবং অ্যাপল টিভির মাধ্যমে উদ্ভাবনে বিশ্বের নেতৃত্ব দিচ্ছে।', 'upload/brand/1793692970621130.jpg', 1, 4, '2024-03-16 08:21:57', '2024-03-16 08:21:57'),
(41, 'OPPO', 'OPPO', 'oppo', 'Oppo is a Chinese consumer electronics manufacturer headquartered in Dongguan, Guangdong. Its major product lines include smartphones, smart devices, audio devices, power banks, and other electronic products. Guangdong Oppo Mobile Telecommunications Corp., Ltd. Guangdong Oppo Mobile Telecommunications Corp., Ltd.', 'Oppo হল একটি চীনা ভোক্তা ইলেকট্রনিক্স প্রস্তুতকারক যার সদর দপ্তর ডংগুয়ান, গুয়াংডং-এ। এর প্রধান পণ্য লাইনের মধ্যে রয়েছে স্মার্টফোন, স্মার্ট ডিভাইস, অডিও ডিভাইস, পাওয়ার ব্যাংক এবং অন্যান্য ইলেকট্রনিক পণ্য। Guangdong Oppo Mobile Telecommunications Corp., Ltd. Guangdong Oppo Mobile Telecommunications Corp., Ltd.', 'upload/brand/1793693112708636.png', 1, 4, '2024-03-16 08:24:13', '2024-03-16 08:24:13'),
(42, 'XPERT', 'এক্সপার্ট', 'xpert', 'At Xpert, we believe that your devices should not only function flawlessly, but also look stylish and reflect your unique personality. That\'s why we offer a wide range of accessories that not only protect your devices, but also enhance their performance and style.', 'Xpert-এ, আমরা বিশ্বাস করি যে আপনার ডিভাইসগুলি কেবল ত্রুটিহীনভাবে কাজ করবে না, বরং স্টাইলিশ দেখাবে এবং আপনার অনন্য ব্যক্তিত্বকে প্রতিফলিত করবে। এই কারণেই আমরা আনুষাঙ্গিকগুলির একটি বিস্তৃত পরিসর অফার করি যা শুধুমাত্র আপনার ডিভাইসগুলিকে সুরক্ষিত করে না, তাদের কার্যক্ষমতা এবং শৈলীকেও উন্নত করে৷', 'upload/brand/1793693438416667.jpg', 1, 4, '2024-03-16 08:29:23', '2024-03-16 08:45:43'),
(43, 'ITEL', 'আইটেল', 'itel', 'Itel Mobile is a China-based mobile phone manufacturer company that was founded by Lei Weiguo and Shenzhen Transsion Holdings Co Limited in March 2014, and is headquartered in Shenzhen, China.', 'Itel Mobile হল একটি চীন ভিত্তিক মোবাইল ফোন প্রস্তুতকারক কোম্পানি যা মার্চ 2014 সালে Lei Weiguo এবং Shenzhen Transsion Holdings Co Limited দ্বারা প্রতিষ্ঠিত হয়েছিল এবং এর সদর দফতর চীনের শেনজেনে অবস্থিত', 'upload/brand/1793693635553885.png', 1, 4, '2024-03-16 08:32:31', '2024-03-16 08:32:31'),
(44, 'NOKIA', 'নকিয়া', 'nokia', 'Nokia Corporation is a Finnish multinational telecommunications, information technology, and consumer electronics corporation, established in 1865. Nokia\'s main headquarters are in Espoo, Finland, in the greater Helsinki metropolitan area, but the company\'s actual roots are in the Tampere region of Pirkanmaa.', 'নোকিয়া কর্পোরেশন হল একটি ফিনিশ বহুজাতিক টেলিযোগাযোগ, তথ্য প্রযুক্তি, এবং ভোক্তা ইলেকট্রনিক্স কর্পোরেশন, যা 1865 সালে প্রতিষ্ঠিত হয়। নকিয়ার প্রধান সদর দপ্তর এস্পু, ফিনল্যান্ড, বৃহত্তর হেলসিঙ্কি মেট্রোপলিটন এলাকায় অবস্থিত, কিন্তু কোম্পানির প্রকৃত শিকড় পিরকানমার তাম্পেরে অঞ্চলে।', 'upload/brand/1793693938264450.png', 1, 4, '2024-03-16 08:37:20', '2024-03-16 08:37:20'),
(45, 'OTO', 'OTO', 'oto', 'At OTO, your well-being keeps us going. With over 45 years of experience, we’re proud to deliver a strong line-up of innovative healthcare products for your everyday needs. Innovation, reliability, efficacy, affordability — the heart of all we do.\r\n\r\nWhether you are looking for a personal or corporate gift, or simply something to elevate your lifestyle, we can provide.We dedicate our efforts in developing our products as much as we care about you.', 'OTO-তে, আপনার মঙ্গল আমাদের এগিয়ে রাখে। 45 বছরের বেশি অভিজ্ঞতার সাথে, আমরা আপনার দৈনন্দিন প্রয়োজনের জন্য উদ্ভাবনী স্বাস্থ্যসেবা পণ্যগুলির একটি শক্তিশালী লাইন আপ সরবরাহ করতে পেরে গর্বিত। উদ্ভাবন, নির্ভরযোগ্যতা, কার্যকারিতা, সামর্থ্য — আমরা যা করি তার হৃদয়।\r\n\r\nআপনি একটি ব্যক্তিগত বা কর্পোরেট উপহার খুঁজছেন কিনা, বা আপনার জীবনধারা উন্নত করার জন্য কিছু, আমরা প্রদান করতে পারেন|আমরা আমাদের পণ্যগুলির বিকাশে আমাদের প্রচেষ্টাকে উত্সর্গ করি যতটা আমরা আপনাকে যত্ন করি।', 'upload/brand/1793694262162609.jpg', 1, 4, '2024-03-16 08:42:29', '2024-03-16 08:42:29'),
(46, 'REMAX', 'রিম্যাক্স', 'remax', 'The idea of young, passion, fashion and happiness makes the brand popular among the young generation. Remax products provide you the concept of savoring life and fashion, including different categories such as Protection, Energy, Audio, Fashion Bags, Creative Products etc. \r\n\r\nRemax products design combines practicability and creativity.  Designers sense of fashion has driven to come up with different kinds of creative and stylish products. Until now, more than 700 series, 2000 types of products have been developed. \r\n\r\nRemax always seek for new technology, aiming to produce piratical products with good quality and trendy designs. Look forward to the amusement that Remax brings you!', 'তরুণ, আবেগ, ফ্যাশন এবং সুখের ধারণা তরুণ প্রজন্মের মধ্যে ব্র্যান্ডটিকে জনপ্রিয় করে তোলে। রিম্যাক্স পণ্যগুলি আপনাকে জীবন এবং ফ্যাশনের স্বাদ গ্রহণের ধারণা প্রদান করে, যার মধ্যে রয়েছে বিভিন্ন বিভাগ যেমন সুরক্ষা, শক্তি, অডিও, ফ্যাশন ব্যাগ, সৃজনশীল পণ্য ইত্যাদি।\r\n\r\nরিম্যাক্স পণ্যের নকশা ব্যবহারযোগ্যতা এবং সৃজনশীলতাকে একত্রিত করে। ডিজাইনারদের ফ্যাশন অনুভূতি বিভিন্ন ধরণের সৃজনশীল এবং আড়ম্বরপূর্ণ পণ্য নিয়ে আসতে চালিত হয়েছে। এখন পর্যন্ত, 700 টিরও বেশি সিরিজ, 2000 ধরণের পণ্য তৈরি করা হয়েছে।\r\n\r\nরিম্যাক্স সর্বদা নতুন প্রযুক্তির সন্ধান করে, ভাল মানের এবং ট্রেন্ডি ডিজাইনের সাথে পাইরাটিকাল পণ্য উত্পাদন করার লক্ষ্যে। রিম্যাক্স আপনাকে নিয়ে আসা বিনোদনের জন্য অপেক্ষা করুন!', 'upload/brand/1793694420084056.png', 1, 4, '2024-03-16 08:45:00', '2024-03-16 08:45:00'),
(47, 'TAGG', 'ট্যাগ', 'tagg', 'TAGG is a new-age company in the consumer electronics segment, hustling to engineer quality products/solutions for consumers worldwide and strive to change the way they live, work and play with their electronic devices allowing them to take control of a fast paced lifestyle.', 'TAGG হল কনজিউমার ইলেকট্রনিক্স সেগমেন্টের একটি নতুন-যুগের কোম্পানি, বিশ্বব্যাপী ভোক্তাদের জন্য মানসম্পন্ন পণ্য/সমাধান প্রকৌশলী করার জন্য এবং তাদের ইলেকট্রনিক ডিভাইসগুলির সাথে তাদের জীবনযাত্রা, কাজ এবং খেলার ধরণ পরিবর্তন করার চেষ্টা করে যাতে তারা দ্রুত গতির জীবনধারা নিয়ন্ত্রণ করতে পারে।', 'upload/brand/1793694773845345.webp', 1, 4, '2024-03-16 08:50:37', '2024-03-16 08:50:37'),
(49, 'KIESLECT', 'KIESLECT', 'kieslect', 'Kieslect has partnered up with the leading wireless technology providers in the world as well as a few other selected companies with core technology. Kieslect has always been inspired by our creativity and ingenuity. Since 2015, Kieslect has strived to bring new life into the industry by making quality, fashionable smart watches.\r\n\r\nToday, Kieslect continues to focus on what makes us optimism, authenticity and of course, our creative spirit. Everything Kieslect makes complements every style and fits every lifestyle, for all the moments that make us.\r\n\r\nKieslect attributes it to a combination of nowadays advanced wireless technology, Kieslect spirit, coupled with a deep understanding of market demand. Till early 2023, Kieslect employs more than 600 people worldwide, manages a distribution network in more than 68 countries, with 29 exclusive agents.\r\nSUPERIOR QUALITY AND BEST VALUE  THROUGH BETTER TECHNOLOGY', 'Kieslect বিশ্বের নেতৃস্থানীয় ওয়্যারলেস প্রযুক্তি প্রদানকারীর পাশাপাশি মূল প্রযুক্তি সহ আরও কয়েকটি নির্বাচিত কোম্পানির সাথে অংশীদারিত্ব করেছে। Kieslect সবসময় আমাদের সৃজনশীলতা এবং চাতুর্য দ্বারা অনুপ্রাণিত হয়েছে. 2015 সাল থেকে, Kieslect মানসম্পন্ন, ফ্যাশনেবল স্মার্ট ঘড়ি তৈরি করে শিল্পে নতুন জীবন আনার চেষ্টা করেছে।\r\nআজ, কিসলেক্ট আমাদের আশাবাদ, সত্যতা এবং অবশ্যই আমাদের সৃজনশীল চেতনার উপর ফোকাস করে চলেছে। Kieslect সবকিছুই প্রতিটি শৈলীকে পরিপূরক করে এবং প্রতিটি জীবনধারার সাথে মানানসই করে, যে সমস্ত মুহুর্তগুলি আমাদের তৈরি করে৷ কিসলেক্ট এটিকে আজকালের উন্নত ওয়্যারলেস প্রযুক্তি, কিসলেক্ট স্পিরিট, বাজারের চাহিদার গভীর বোঝার সাথে একত্রিত করার জন্য দায়ী করে৷ 2023 সালের প্রথম দিকে, Kieslect বিশ্বব্যাপী 600 জনেরও বেশি লোককে নিয়োগ করে, 29টি একচেটিয়া এজেন্ট সহ 68টিরও বেশি দেশে একটি বিতরণ নেটওয়ার্ক পরিচালনা করে।\r\nউন্নত প্রযুক্তির মাধ্যমে উন্নত মানের এবং সেরা মূল্য', 'upload/brand/1793987784418942.png', 1, 4, '2024-03-19 14:27:54', '2024-03-19 14:27:54'),
(50, 'AMAZFIT', 'AMAZFIT', 'amazfit', 'At Amazfit, we see the vibrant future of smart wearables.\r\n\r\nWe fuse fashion and innovative technology, to allow for smart devices to become a vehicle of personal style, connecting every aspect of future lives. From Amazfit’s first product, a market-leading sensor innovation, to the world’s first curved display, every series of Amazfit’s ever-evolving product range is a testament to our pursuit of bringing smart hardware technology and innovative product design together.\r\n\r\nSince our founding, we have always wanted to help users connect better in their lives and empower them with smart living technologies in different scenarios. In the future, Amazfit will lead the way in innovation and design, creating original product forms and insightful designs, bringing a wide range of attractive choices to consumers.\r\n\r\nAs a companion to our users, we strive to lead a healthy and active lifestyle – activating users’ inner drive, so they live a life full of passion and excitement. As a fashionable and cutting-edge technology accessory brand, we are the embodiment of unique styles – fusing fashion and innovative technology, so every person has the freedom to express themselves in their own unique way.', 'Amazfit-এ, আমরা স্মার্ট পরিধানযোগ্য জিনিসের প্রাণবন্ত ভবিষ্যত দেখতে পাই।\r\n\r\nআমরা ফ্যাশন এবং উদ্ভাবনী প্রযুক্তি ফিউজ করি, যাতে স্মার্ট ডিভাইসগুলিকে ব্যক্তিগত শৈলীর একটি বাহন হতে দেয়, যা ভবিষ্যতের জীবনের প্রতিটি দিককে সংযুক্ত করে। Amazfit-এর প্রথম পণ্য, একটি বাজার-নেতৃস্থানীয় সেন্সর উদ্ভাবন থেকে, বিশ্বের প্রথম বাঁকানো ডিসপ্লে পর্যন্ত, Amazfit-এর সর্বদা বিকশিত পণ্য পরিসরের প্রতিটি সিরিজই আমাদের স্মার্ট হার্ডওয়্যার প্রযুক্তি এবং উদ্ভাবনী পণ্য ডিজাইনকে একসাথে আনার সাধনার প্রমাণ।\r\n\r\nআমাদের প্রতিষ্ঠার পর থেকে, আমরা সবসময় ব্যবহারকারীদের তাদের জীবনে আরও ভালভাবে সংযোগ করতে এবং বিভিন্ন পরিস্থিতিতে স্মার্ট জীবন প্রযুক্তির মাধ্যমে তাদের ক্ষমতায়ন করতে সাহায্য করতে চেয়েছি। ভবিষ্যতে, অ্যামাজফিট উদ্ভাবন এবং ডিজাইনের পথে নেতৃত্ব দেবে, মূল পণ্যের ফর্ম এবং অন্তর্দৃষ্টিপূর্ণ ডিজাইন তৈরি করবে, গ্রাহকদের কাছে বিস্তৃত আকর্ষণীয় পছন্দ নিয়ে আসবে।\r\n\r\nআমাদের ব্যবহারকারীদের একজন সহচর হিসেবে, আমরা একটি সুস্থ ও সক্রিয় জীবনধারা পরিচালনা করার চেষ্টা করি - ব্যবহারকারীদের অভ্যন্তরীণ ড্রাইভ সক্রিয় করে, যাতে তারা আবেগ এবং উত্তেজনায় পূর্ণ জীবনযাপন করে। একটি ফ্যাশনেবল এবং অত্যাধুনিক প্রযুক্তির আনুষঙ্গিক ব্র্যান্ড হিসাবে, আমরা অনন্য শৈলীর মূর্ত প্রতীক - ফ্যাশন এবং উদ্ভাবনী প্রযুক্তির ফিউজিং, তাই প্রত্যেক ব্যক্তির নিজস্ব অনন্য উপায়ে নিজেকে প্রকাশ করার স্বাধীনতা রয়েছে।', 'upload/brand/1793988162250148.png', 1, 4, '2024-03-19 14:33:54', '2024-03-19 14:33:54'),
(51, 'y-C', 'Y-C', 'y-c', 'FACE WASH', 'FACE WASH', 'upload/brand/1794116872246522.jpg', 1, 4, '2024-03-21 00:39:41', '2024-03-21 00:39:41'),
(53, 'xyz', 'xyz', 'xyz', 'fghj', 'dfhgf', 'upload/brand/1795289299210456.jpg', 1, 4, '2024-04-03 05:14:55', '2024-04-03 05:14:55'),
(54, 'Gala Lifestyle', 'Gala Lifestyle', 'Gala-Lifestyle-qv6wL', NULL, NULL, 'upload/brand/1795613585741358.png', 1, 4, '2024-04-06 19:09:19', '2024-04-06 19:09:19'),
(55, 'Gala Lifestyle', 'Gala Lifestyle', 'Gala-Lifestyle-lJ5Rt', NULL, NULL, 'upload/brand/1795615474340565.png', 1, 4, '2024-04-06 19:39:20', '2024-04-06 19:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `campaings`
--

CREATE TABLE `campaings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_bn` varchar(100) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `campaing_image` varchar(255) DEFAULT NULL,
  `flash_start` varchar(100) DEFAULT NULL,
  `flash_end` varchar(100) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured	',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaing_products`
--

CREATE TABLE `campaing_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaing_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `discount_price` double NOT NULL DEFAULT 0,
  `discount_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Flat, 2=>Percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_bn` varchar(100) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `description_en` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Category, 2=>SubCategory, 3=> SubSubCategory',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_en`, `name_bn`, `slug`, `description_en`, `description_bn`, `image`, `parent_id`, `type`, `is_featured`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(7, 'Mens  Premium Spandex T-Shirt', 'Mens  Premium Spandex T-Shirt', 'Mens--Premium-Spandex-T-Shirt-nmGW7', NULL, NULL, 'upload/category/1795614837749985.png', 0, 1, 1, 1, 4, '2024-04-06 19:29:13', '2024-04-06 19:29:13'),
(8, 'Mens', 'Mens', 'Mens-MDew5', NULL, NULL, 'upload/category/1795615429146972.png', 0, 1, 0, 1, 4, '2024-04-06 19:38:37', '2024-04-06 19:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `discount_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Fixed Amount, 0=>Percent',
  `discount` double(20,2) NOT NULL DEFAULT 0.00,
  `limit_per_user` double(20,2) NOT NULL DEFAULT 0.00,
  `total_use_limit` double(20,2) NOT NULL DEFAULT 0.00,
  `expire_date` date DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>All Customers, 0=>Specific Customer',
  `user_id` varchar(255) DEFAULT NULL,
  `producttype` int(11) NOT NULL DEFAULT 1 COMMENT '1=All Product,0=Specific Product',
  `product_id` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `discount_type`, `discount`, `limit_per_user`, `total_use_limit`, `expire_date`, `type`, `user_id`, `producttype`, `product_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'new2024', 0, 1.00, 5.00, 5.00, '2024-04-17', 0, '85,4,3,2', 0, '7,6,5', 'hgyjgj', 1, '2024-04-03 05:35:57', '2024-04-03 05:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `division_name_bn` varchar(150) NOT NULL,
  `district_name_bn` varchar(130) NOT NULL,
  `district_name_en` text NOT NULL,
  `division_name_en` text NOT NULL,
  `division_id` varchar(210) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_name_bn`, `district_name_bn`, `district_name_en`, `division_name_en`, `division_id`, `status`) VALUES
(1, 'চট্টগ্রাম', 'কুমিল্লা', 'cumilla', 'chattogram', '2', 1),
(2, 'চট্টগ্রাম', 'ফেনী', 'feni', 'chattogram', '2', 1),
(3, 'চট্টগ্রাম', 'ব্রাহ্মণবাড়িয়া', 'brahmanbaria', 'chattogram', '2', 1),
(4, 'চট্টগ্রাম', 'রাঙ্গামাটি', 'rangamati', 'chattogram', '2', 1),
(5, 'চট্টগ্রাম', 'নোয়াখালী', 'noakhali', 'chattogram', '2', 1),
(6, 'চট্টগ্রাম', 'চাঁদপুর', 'chandpur', 'chattogram', '2', 1),
(7, 'চট্টগ্রাম', 'লক্ষ্মীপুর', 'lakshmipur', 'chattogram', '2', 1),
(8, 'চট্টগ্রাম', 'চট্টগ্রাম', 'chattogram', 'chattogram', '2', 1),
(9, 'চট্টগ্রাম', 'কক্সবাজার', 'coxsbazar', 'chattogram', '2', 1),
(10, 'চট্টগ্রাম', 'খাগড়াছড়ি', 'khagrachari', 'chattogram', '2', 1),
(11, 'চট্টগ্রাম', 'বান্দরবান', 'bandarban', 'chattogram', '2', 1),
(12, 'রাজশাহী', 'সিরাজগঞ্জ', 'sirajganj', 'rajshahi', '3', 1),
(13, 'রাজশাহী', 'পাবনা', 'pabna', 'rajshahi', '3', 1),
(14, 'রাজশাহী', 'বগুড়া', 'bogura', 'rajshahi', '3', 1),
(15, 'রাজশাহী', 'রাজশাহী', 'rajshahi', 'rajshahi', '3', 1),
(16, 'রাজশাহী', 'নাটোর', 'natore', 'rajshahi', '3', 1),
(17, 'রাজশাহী', 'জয়পুরহাট', 'jaipurhat', 'rajshahi', '3', 1),
(18, 'রাজশাহী', 'চাঁপাইনবাবগঞ্জ', 'nawabganj', 'rajshahi', '3', 1),
(19, 'রাজশাহী', 'নওগাঁ', 'naogaon', 'rajshahi', '3', 1),
(20, 'খুলনা', 'যশোর', 'jashore', 'khulna', '4', 1),
(21, 'খুলনা', 'সাতক্ষীরা', 'satkhira', 'khulna', '4', 1),
(22, 'খুলনা', 'মেহেরপুর', 'meherpur', 'khulna', '4', 1),
(23, 'খুলনা', 'নড়াইল', 'narail', 'khulna', '4', 1),
(24, 'খুলনা', 'চুয়াডাঙ্গা', 'chuadanga', 'khulna', '4', 1),
(25, 'খুলনা', 'কুষ্টিয়া', 'kushtia', 'khulna', '4', 1),
(26, 'খুলনা', 'মাগুরা', 'magura', 'khulna', '4', 1),
(27, 'খুলনা', 'খুলনা', 'khulna', 'khulna', '4', 1),
(28, 'খুলনা', 'বাগেরহাট', 'bagerhat', 'khulna', '4', 1),
(29, 'খুলনা', 'ঝিনাইদহ', 'jhenaidah', 'khulna', '4', 1),
(30, 'বরিশাল', 'বরিশাল', 'barishal', 'barishal', '5', 1),
(31, 'বরিশাল', 'ঝালকাঠি', 'jhalokati', 'barishal', '5', 1),
(32, 'বরিশাল', 'পটুয়াখালী', 'patuakhali', 'barishal', '5', 1),
(33, 'বরিশাল', 'পিরোজপুর', 'pirojpur', 'barishal', '5', 1),
(34, 'বরিশাল', 'ভোলা', 'bhola', 'barishal', '5', 1),
(35, 'বরিশাল', 'বরগুনা', 'barguna', 'barishal', '5', 1),
(36, 'সিলেট', 'সিলেট', 'sylhet', 'sylhet', '6', 1),
(37, 'সিলেট', 'মৌলভীবাজার', 'moulvibazar', 'sylhet', '6', 1),
(38, 'সিলেট', 'হবিগঞ্জ', 'habiganj', 'sylhet', '6', 1),
(39, 'সিলেট', 'সুনামগঞ্জ', 'sunamganj', 'sylhet', '6', 1),
(40, 'রংপুর', 'রংপুর', 'rangpur', 'rangpur', '7', 1),
(41, 'রংপুর', 'পঞ্চগড়', 'panchagarh', 'rangpur', '7', 1),
(42, 'রংপুর', 'দিনাজপুর', 'dinajpur', 'rangpur', '7', 1),
(43, 'রংপুর', 'লালমনিরহাট', 'lalmonirhat', 'rangpur', '7', 1),
(44, 'রংপুর', 'নীলফামারী', 'nilphamari', 'rangpur', '7', 1),
(45, 'রংপুর', 'ঠাকুরগাঁও', 'thakurgaon', 'rangpur', '7', 1),
(46, 'রংপুর', 'গাইবান্ধা', 'gaibandha', 'rangpur', '7', 1),
(47, 'রংপুর', 'কুড়িগ্রাম', 'kurigram', 'rangpur', '7', 1),
(48, 'ময়মনসিংহ', 'ময়মনসিংহ', 'mymensingh', 'mymensingh', '8', 1),
(49, 'ময়মনসিংহ', 'জামালপুর', 'jamalpur', 'mymensingh', '8', 1),
(50, 'ময়মনসিংহ', 'নেত্রকোণা', 'netrokona', 'mymensingh', '8', 1),
(51, 'ময়মনসিংহ', 'শেরপুর', 'sherpur', 'mymensingh', '8', 1),
(52, 'ঢাকা', 'ঢাকা', 'dhaka', 'dhaka', '1', 1),
(53, 'ঢাকা', 'নরসিংদী', 'narsingdi', 'dhaka', '1', 1),
(54, 'ঢাকা', 'গাজীপুর', 'gazipur', 'dhaka', '1', 1),
(55, 'ঢাকা', 'শরীয়তপুর', 'shariatpur', 'dhaka', '1', 1),
(56, 'ঢাকা', 'নারায়ণগঞ্জ', 'narayanganj', 'dhaka', '1', 1),
(57, 'ঢাকা', 'টাঙ্গাইল', 'tangail', 'dhaka', '1', 1),
(58, 'ঢাকা', 'কিশোরগঞ্জ', 'kishoreganj', 'dhaka', '1', 1),
(59, 'ঢাকা', 'মানিকগঞ্জ', 'manikganj', 'dhaka', '1', 1),
(60, 'ঢাকা', 'মুন্সিগঞ্জ', 'munshiganj', 'dhaka', '1', 1),
(61, 'ঢাকা', 'রাজবাড়ী', 'rajbari', 'dhaka', '1', 1),
(62, 'ঢাকা', 'মাদারীপুর', 'madaripur', 'dhaka', '1', 1),
(63, 'ঢাকা', 'ফরিদপুর', 'faridpur', 'dhaka', '1', 1),
(64, 'ঢাকা', 'গোপালগঞ্জ', 'gopalganj', 'dhaka', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(11) NOT NULL,
  `division_id` varchar(30) NOT NULL,
  `division_name_bn` varchar(30) NOT NULL,
  `division_name_en` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0:Blocked, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `division_id`, `division_name_bn`, `division_name_en`, `country_id`, `status`) VALUES
(1, '1', 'ঢাকা', 'dhaka', 22, 1),
(2, '2', 'চট্টগ্রাম', 'chattogram', 22, 1),
(3, '3', 'রাজশাহী', 'rajshahi', 22, 1),
(4, '4', 'খুলনা', 'khulna', 22, 1),
(5, '5', 'বরিশাল', 'barishal', 22, 1),
(6, '6', 'সিলেট', 'sylhet', 22, 1),
(7, '7', 'রংপুর', 'rangpur', 22, 1),
(8, '8', 'ময়মনসিংহ', 'mymensingh', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_07_24_074842_create_multi_imgs_table', 1),
(27, '2022_02_04_061801_create_product_prices_table', 6),
(28, '2022_02_04_065518_create_attribute_product_table', 6),
(29, '2022_05_20_152549_create_attribute_value_product_price_table', 6),
(47, '2022_07_23_114405_create_sliders_table', 7),
(51, '2022_07_28_064437_create_campaings_table', 7),
(53, '2022_07_31_095124_create_blogs_table', 7),
(54, '2022_08_01_045408_create_pages_table', 7),
(56, '2022_08_10_105324_create_addresses_table', 7),
(57, '2022_08_14_045916_create_settings_table', 7),
(60, '2022_08_19_201539_create_product_stocks_table', 8),
(61, '2022_09_03_062044_create_shippings_table', 9),
(62, '2022_08_14_105209_create_order_details_table', 10),
(63, '2022_09_03_055707_create_coupons_table', 11),
(65, '2022_07_30_093841_create_banners_table', 12),
(67, '2022_09_17_111303_create_campaing_products_table', 13),
(68, '2022_09_27_050816_create_subscribers_table', 14),
(69, '2022_09_28_103615_create_roles_table', 15),
(71, '2022_09_28_110124_create_staff_table', 16),
(72, '2022_07_24_111956_create_vendors_table', 17),
(73, '2022_07_19_132400_create_brands_table', 18),
(74, '2022_07_20_105632_create_categories_table', 18),
(75, '2022_07_21_140629_create_suppliers_table', 18),
(76, '2022_07_24_063334_create_products_table', 18),
(77, '2022_08_04_073752_create_attributes_table', 18),
(78, '2022_08_06_053505_create_attribute_values_table', 18),
(79, '2022_08_14_105132_create_orders_table', 18),
(80, '2022_10_16_060400_create_account_heads_table', 19),
(82, '2022_10_16_082419_create_account_ledgers_table', 20),
(84, '2022_12_31_055130_create_units_table', 21),
(85, '2024_01_25_053758_create_pos_carts_table', 22),
(86, '2024_02_03_053719_create_withdraws_table', 23),
(87, '2023_09_02_071710_create_reviews_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `photo_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(17, 10, 'upload/products/multi-image/1795614668236537.png', '2024-04-06 19:26:32', NULL),
(18, 11, 'upload/products/multi-image/1795620848463231.png', '2024-04-06 21:04:46', NULL),
(19, 12, 'upload/products/multi-image/1795620922256983.png', '2024-04-06 21:05:56', NULL),
(20, 13, 'upload/products/multi-image/1795622506196644.png', '2024-04-06 21:31:07', NULL),
(21, 14, 'upload/products/multi-image/1795622966222892.png', '2024-04-06 21:38:25', NULL),
(22, 15, 'upload/products/multi-image/1795623307513070.png', '2024-04-06 21:43:50', NULL),
(23, 16, 'upload/products/multi-image/1798665363107879.png', '2024-05-10 11:36:00', NULL),
(24, 17, 'upload/products/multi-image/1798665453296469.png', '2024-05-10 11:37:26', NULL),
(25, 18, 'upload/products/multi-image/1798665586708084.png', '2024-05-10 11:39:34', NULL),
(26, 19, 'upload/products/multi-image/1798665761492665.png', '2024-05-10 11:42:20', NULL),
(27, 20, 'upload/products/multi-image/1798665930107835.png', '2024-05-10 11:45:01', NULL),
(31, 27, 'upload/products/multi-image/1801939240753384.jpg', '2024-06-15 14:52:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `upazilla_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `payment_method` varchar(25) NOT NULL DEFAULT 'cash',
  `payment_status` varchar(50) NOT NULL DEFAULT 'unpaid',
  `payment_details` text DEFAULT NULL,
  `shipping_charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_type` varchar(100) DEFAULT NULL,
  `shipping_name` varchar(150) DEFAULT NULL,
  `pur_sub_total` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `grand_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` decimal(11,2) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `viewed` varchar(255) NOT NULL DEFAULT '0',
  `staff_id` int(11) DEFAULT NULL,
  `staff_commission` varchar(255) DEFAULT NULL,
  `delivery_viewed` varchar(255) NOT NULL DEFAULT '1',
  `payment_status_viewed` varchar(255) NOT NULL DEFAULT '1',
  `commission_calculated` varchar(255) NOT NULL DEFAULT '0',
  `comment` text DEFAULT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'pending',
  `tracking_code` varchar(100) DEFAULT NULL,
  `confirmed_date` varchar(30) DEFAULT NULL,
  `processing_date` varchar(30) DEFAULT NULL,
  `picked_date` varchar(30) DEFAULT NULL,
  `shipped_date` varchar(30) DEFAULT NULL,
  `delivered_date` varchar(30) DEFAULT NULL,
  `cancel_date` varchar(30) DEFAULT NULL,
  `return_date` varchar(30) DEFAULT NULL,
  `return_reason` text DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Not guest order, 2=>Guest Order, 3=>Reseller order, 4=>Manual Order',
  `sale_type` int(10) UNSIGNED DEFAULT 1 COMMENT '1=>Manual Sale, 2=>Guest Order',
  `prepaid_amount` decimal(10,2) DEFAULT 0.00,
  `collectable_amount` decimal(10,2) DEFAULT 0.00,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `name`, `phone`, `email`, `division_id`, `district_id`, `upazilla_id`, `address`, `payment_method`, `payment_status`, `payment_details`, `shipping_charge`, `shipping_type`, `shipping_name`, `pur_sub_total`, `sub_total`, `grand_total`, `paid_amount`, `due_amount`, `discount`, `coupon_id`, `coupon_discount`, `invoice_no`, `viewed`, `staff_id`, `staff_commission`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `comment`, `delivery_status`, `tracking_code`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_reason`, `type`, `sale_type`, `prepaid_amount`, `collectable_amount`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 90, NULL, 'Ashiqul Islam', NULL, NULL, NULL, NULL, NULL, NULL, 'cash', 'unpaid', NULL, 0.00, NULL, NULL, 800.00, 1400.00, 1400.00, 1000.00, 400.00, 0.00, NULL, NULL, '0000001', '0', 1, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.00, 0.00, NULL, '2024-05-13 12:23:43', '2024-05-13 12:23:44'),
(3, 1, NULL, 'Afsana Sultana', '01753142981', NULL, NULL, NULL, NULL, 'Uttara', 'cod', 'unpaid', NULL, 150.00, '2', 'Sundarban Courier', 500.00, 1000.00, 1150.00, NULL, NULL, 0.00, NULL, NULL, '0000003', '0', NULL, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0.00, 1150.00, NULL, '2024-05-13 12:44:20', '2024-05-13 13:01:57'),
(4, 89, NULL, 'Afsana Sultana', NULL, NULL, NULL, NULL, NULL, NULL, 'cash', 'unpaid', NULL, 0.00, NULL, NULL, 320.00, 400.00, 400.00, 0.00, 400.00, 0.00, NULL, NULL, '0000004', '0', NULL, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.00, 0.00, NULL, '2024-05-13 13:48:50', '2024-05-13 13:48:50'),
(5, 1, NULL, 'Guest User', '01627490402', 'guestuser@gmail.com', 0, 0, 0, 'Dhaka', 'cash', 'paid', NULL, 0.00, NULL, NULL, 320.00, 400.00, 400.00, 400.00, 0.00, 0.00, NULL, NULL, '0000005', '0', NULL, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.00, 0.00, NULL, '2024-05-13 13:49:50', '2024-05-13 13:49:50'),
(6, 1, NULL, 'Guest User', '01627490402', 'guestuser@gmail.com', 0, 0, 0, 'Dhaka', 'cash', 'paid', NULL, 0.00, NULL, NULL, 800.00, 1400.00, 1400.00, 1400.00, 0.00, 0.00, NULL, NULL, '0000006', '0', NULL, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.00, 0.00, NULL, '2024-05-13 13:52:20', '2024-05-13 13:52:20'),
(7, 3, NULL, 'Moloy Das', '0172152365442', 'moloy@gmail.com', NULL, NULL, NULL, NULL, 'cash', 'unpaid', NULL, 0.00, NULL, NULL, 700.00, 700.00, 700.00, 300.00, 400.00, 0.00, NULL, NULL, '0000007', '0', NULL, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.00, 0.00, NULL, '2024-05-13 14:03:22', '2024-05-13 14:03:22'),
(8, 89, NULL, 'Afsana Sultana', NULL, NULL, NULL, NULL, NULL, NULL, 'cash', 'unpaid', NULL, 0.00, NULL, NULL, 500.00, 700.00, 700.00, 0.00, 700.00, 0.00, NULL, NULL, '0000008', '0', NULL, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.00, 0.00, NULL, '2024-05-13 14:04:56', '2024-05-13 14:04:56'),
(9, 90, NULL, 'Ashiqul Islam', NULL, NULL, NULL, NULL, NULL, NULL, 'cash', 'unpaid', NULL, 0.00, NULL, NULL, 300.00, 700.00, 700.00, 0.00, 700.00, 0.00, NULL, NULL, '0000009', '0', NULL, NULL, '1', '1', '0', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0.00, 0.00, NULL, '2024-05-13 14:10:31', '2024-05-13 14:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(255) DEFAULT NULL,
  `v_comission` decimal(10,0) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `is_varient` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Varient Product, 0=>Normal Product',
  `variation` longtext DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `tax` double(20,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` double(20,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `shipping_type` varchar(255) DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `vendor_id`, `v_comission`, `product_name`, `is_varient`, `variation`, `qty`, `price`, `tax`, `shipping_cost`, `payment_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 1, 21, NULL, NULL, 'Short Sleeve Linen Shirt', 1, '[{\"attribute_name\":\"Size\",\"attribute_value\":\"S\"}]', '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(2, 1, 22, NULL, NULL, 'Test Product', 0, NULL, '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(5, 3, 22, 0, 0, 'Test Product', 0, NULL, '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'Pending', '2024-05-13 06:44:20', '2024-05-13 06:53:03'),
(6, 3, 14, 0, 0, 'Mens  Premium Spandex Short T-Shirt', 1, '[{\"attribute_name\":\"Size\",\"attribute_value\":\"S\"},{\"attribute_name\":\"Color\",\"attribute_value\":\"Gray\"}]', '1', 300.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'Pending', '2024-05-13 06:44:20', '2024-05-13 06:53:03'),
(7, 4, 15, NULL, NULL, 'Mens  Premium Spandex Short Sleeve T-Shirt', 1, '[{\"attribute_name\":\"Size\",\"attribute_value\":\"S\"},{\"attribute_name\":\"Color\",\"attribute_value\":\"Green\"}]', '1', 400.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(8, 5, 15, NULL, NULL, 'Mens  Premium Spandex Short Sleeve T-Shirt', 1, '[{\"attribute_name\":\"Size\",\"attribute_value\":\"S\"},{\"attribute_name\":\"Color\",\"attribute_value\":\"Green\"}]', '1', 400.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(9, 6, 21, NULL, NULL, 'Short Sleeve Linen Shirt', 1, '[{\"attribute_name\":\"Size\",\"attribute_value\":\"S\"}]', '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(10, 6, 22, NULL, NULL, 'Test Product', 0, NULL, '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(11, 7, 17, NULL, NULL, 'Short Sleeve Linen Shirt', 0, NULL, '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(12, 8, 21, NULL, NULL, 'Short Sleeve Linen Shirt', 1, '[{\"attribute_name\":\"Size\",\"attribute_value\":\"XL\"}]', '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL),
(13, 9, 22, NULL, NULL, 'Test Product', 0, NULL, '1', 700.00, 0.00, 0.00, 'unpaid', NULL, NULL, NULL, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_bn` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `description_en` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `position` varchar(255) NOT NULL DEFAULT 'nav',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name_en`, `name_bn`, `title`, `slug`, `description_en`, `description_bn`, `position`, `status`, `created_at`, `updated_at`) VALUES
(5, 'About us', 'আমাদের সম্পর্কে', 'About us', 'about-us', 'Now shopping is easier, faster and always joyous. We help you make the best choice here.  estoreclassic.com  is the biggest online market platform for Dhaka City offering completely hassle-free shopping experience through secure and trusted gateways. We offer you easy and reliable shopping with all your favorite brands, local brand in Dhaka and more. E-storeClassic provides products from all categories such as appliance, clothing, cosmetics, electronics, footwear, jewellery, health & beauty, medicine, repair service, car rent and still counting! Our collection combines the latest in fashion trends as well as the all-time favorites. Our products collections are exclusively selected for you. We have all that you need under one Platform.\r\n\r\nIn consistency with the vision of Digital Bangladesh, E-storeClassic provide service/product to the doorway over the Internet. We constantly update with lot of new products, services and special offers. \r\n\r\n\r\n\r\nE-storeclassic gives you the best market experience possible so you can save your valuable time and money. You can pay using all types of payment gateways. If you want to return a product or service for any reason after receiving it, you will get an easy return system. So let\'s go to the estoreclassic.com .\r\n\r\nestoreclassic.com  is a one of the largest online shop for Grocery, Fashion, Electronics, Health, Beauty & Much More..', 'এখন কেনাকাটা সহজ, দ্রুত এবং সর্বদা আনন্দদায়ক। আমরা আপনাকে এখানে সেরা পছন্দ করতে সাহায্য করি। estoreclassic.com হল ঢাকা শহরের সবচেয়ে বড় অনলাইন মার্কেট প্লাটফর্ম যা নিরাপদ এবং বিশ্বস্ত গেটওয়ের মাধ্যমে সম্পূর্ণ ঝামেলামুক্ত কেনাকাটার অভিজ্ঞতা প্রদান করে। আমরা আপনাকে আপনার সমস্ত প্রিয় ব্র্যান্ড, ঢাকার স্থানীয় ব্র্যান্ড এবং আরও অনেক কিছুর সাথে সহজ এবং নির্ভরযোগ্য কেনাকাটার অফার করি। E-storeClassic সমস্ত বিভাগ থেকে পণ্য সরবরাহ করে যেমন যন্ত্রপাতি, পোশাক, প্রসাধনী, ইলেকট্রনিক্স, পাদুকা, গয়না, স্বাস্থ্য ও সৌন্দর্য, ওষুধ, মেরামত পরিষেবা, গাড়ি ভাড়া এবং এখনও গণনা করা হচ্ছে! আমাদের সংগ্রহে ফ্যাশন ট্রেন্ডের সাথে সাথে সর্বকালের পছন্দের সর্বশেষতমগুলিকে একত্রিত করা হয়েছে৷ আমাদের পণ্য সংগ্রহ একচেটিয়াভাবে আপনার জন্য নির্বাচিত করা হয়. একটি প্ল্যাটফর্মের অধীনে আপনার যা প্রয়োজন তা আমাদের কাছে রয়েছে। ডিজিটাল বাংলাদেশের রূপকল্পের সাথে সামঞ্জস্য রেখে, ইকোহাট ইন্টারনেটের মাধ্যমে দরজায় সেবা/পণ্য সরবরাহ করে। আমরা ক্রমাগত অনেক নতুন পণ্য, পরিষেবা এবং বিশেষ অফার সহ আপডেট করি। E-storeClassic  আপনাকে সম্ভাব্য সেরা বাজার অভিজ্ঞতা দেয় যাতে আপনি আপনার মূল্যবান সময় এবং অর্থ বাঁচাতে পারেন। আপনি সব ধরনের পেমেন্ট গেটওয়ে ব্যবহার করে অর্থ প্রদান করতে পারেন। প্রাপ্তির পর কোনো কারণে কোনো পণ্য বা সেবা ফেরত দিতে চাইলে আপনি একটি সহজ রিটার্ন সিস্টেম পাবেন। তো চলুন estoreclassic.com এ যাই। estoreclassic.com হল মুদি, ফ্যাশন, ইলেকট্রনিক্স, স্বাস্থ্য, সৌন্দর্য এবং আরও অনেক কিছুর জন্য একটি বৃহত্তম অনলাইন শপ।', 'Both', 1, '2022-09-19 06:38:47', '2022-11-06 04:25:11'),
(6, 'Return Policy', 'প্রত্যাবর্তন নীতিমালা', 'Return Policy', 'return-policy', 'Delivery Policy:\r\n \r\nEStoreClassic opens the doorway shop over the Internet. We (eStoreClassic) provide any amount of parched product order at your doorsteps with low delivery charge. We process all deliveries through EStoreClassic delivery service or reputed courier services. We deliver products all over the area as well as the Dhaka City. If there is any modification in delivery charge for a particular item, it is mentioned in product details. Order confirmation and delivery completion are subject to product availability. Delivery time may differ from one item to another. It can differ from standard delivery to beyond that.\r\n\r\n\r\nStandard Delivery: \r\nIf your delivery address is within Dhaka City, products will be delivered by within 1 working day. If it is outside Dhaka, it will take 2-5 business days. If you order after 6 PM, it will be considered as an order of next business day. Our Business Day: Saturday to Thursday except public holidays.\r\n\r\n\r\n\r\nDelivery from out side of Dhaka:\r\nThere are some exceptional product that we provide from outside Dhaka(Vendors from Dhaka or Other area). These Product can take 3 or more days to reach you. However, you will receive your order within the time specified.\r\n\r\nYou can make your purchases on Kafela.com.bd and get delivery from anywhere in the Dhaka City. Delivery charge varies according to customers\' place. In case of paid order, EStoreClassic cannot be held liable if customer does not receive it within 4 weeks.\r\n\r\n\r\n\r\nReplacement Policy:\r\n\r\nWe provide great customer experience each time you shop with your EStoreClassic . If you are not satisfied with your purchase, we ensure â€˜Replacementâ€™. Change of mind is not applicable for replacement of product and Our refunds and replacements do not apply to Flash Sale Product. We will replace your purchased product if the product has any defect by its supplier or if the product is not the same one you ordered. Please check your products in front of delivery man or courier service agents.\r\n\r\n\r\n\r\nAll you need to do is give us a call or drop an email at estoreclassic.com within a period of 6 hours from the time of delivery. However, please return the product with the tags intact and in their original packaging, in an unwashed and undamaged condition. Replacement for products is subject to inspection and checking by moom team. Replacement cannot be possible if the product is burnt, damaged by short circuit, or broken by customer. We give the option of taking back the product from your doorstep at Mymensingh providing our delivery man where you need to pay charge for it. Other wise, you need to send it by courier/yourself to our office address ( House no # 37(3rd floor), Road-8, Sector-12, Uttara). Damages due to neglect, improper usage or application will not be covered under our \'Replacementâ€™.\r\n\r\n\r\n\r\nIn case of product\'s sold out at merchant\'s end, customer can choose any other product from our website or can keep the amount refund to his/her wallet account.\r\n\r\n\r\n\r\nNote: Product Change or warranty of product is depend on policy of Seller/Manufacturer.', 'ডেলিভারি নীতি:  ই-স্টোরক্লাসিক ইন্টারনেটের মাধ্যমে দরজার দোকান খুলেছে। আমরা (ই-স্টোরক্লাসিক) কম ডেলিভারি চার্জ সহ আপনার দোরগোড়ায় যে কোনও পরিমাণ পার্চড পণ্যের অর্ডার সরবরাহ করি। আমরা ই-স্টোরক্লাসিক ডেলিভারি পরিষেবা বা নামী কুরিয়ার পরিষেবার মাধ্যমে সমস্ত ডেলিভারি প্রক্রিয়া করি। আমরা ঢাকা শহরের পাশাপাশি পুরো এলাকায় পণ্য সরবরাহ করি। যদি কোনো নির্দিষ্ট আইটেমের জন্য ডেলিভারি চার্জে কোনো পরিবর্তন থাকে, তবে তা পণ্যের বিবরণে উল্লেখ করা হয়। অর্ডার নিশ্চিতকরণ এবং বিতরণ সমাপ্তি পণ্য প্রাপ্যতা সাপেক্ষে. ডেলিভারি সময় এক আইটেম থেকে অন্য ভিন্ন হতে পারে. এটি স্ট্যান্ডার্ড ডেলিভারি থেকে এর বাইরেও আলাদা হতে পারে। স্ট্যান্ডার্ড ডেলিভারি: আপনার ডেলিভারির ঠিকানা যদি ঢাকা শহরের মধ্যে হয়, পণ্যগুলি 1 কার্যদিবসের মধ্যে ডেলিভারি করা হবে। ঢাকার বাইরে হলে ২-৫ কার্যদিবস লাগবে। আপনি যদি সন্ধ্যা 6 টার পরে অর্ডার করেন তবে এটি পরবর্তী ব্যবসায়িক দিনের অর্ডার হিসাবে বিবেচিত হবে। আমাদের ব্যবসার দিন: সরকারি ছুটির দিন ছাড়া শনিবার থেকে বৃহস্পতিবার। ঢাকার বাইরে থেকে ডেলিভারি: কিছু ব্যতিক্রমী পণ্য রয়েছে যা আমরা ঢাকার বাইরে থেকে সরবরাহ করি (ঢাকা বা অন্যান্য এলাকার বিক্রেতারা)। এই পণ্যগুলি আপনার কাছে পৌঁছাতে 3 বা তার বেশি দিন সময় নিতে পারে। যাইহোক, আপনি নির্দিষ্ট সময়ের মধ্যে আপনার অর্ডার পাবেন। আপনি estoreclassic.com-এ আপনার কেনাকাটা করতে পারেন এবং ঢাকা শহরের যেকোনো স্থান থেকে ডেলিভারি পেতে পারেন। ডেলিভারি চার্জ গ্রাহকদের স্থান অনুযায়ী পরিবর্তিত হয়। পেইড অর্ডারের ক্ষেত্রে, গ্রাহক 4 সপ্তাহের মধ্যে না পেলে ই-স্টোরক্লাসিককে দায়ী করা যাবে না। প্রতিস্থাপন নীতি: আপনি যখনই আপনার ই-স্টোরক্লাসিকের সাথে কেনাকাটা করেন তখন আমরা গ্রাহকদের দুর্দান্ত অভিজ্ঞতা প্রদান করি। আপনি যদি আপনার ক্রয়ের সাথে সন্তুষ্ট না হন তবে আমরা \"প্রতিস্থাপন\" নিশ্চিত করি৷ মন পরিবর্তন পণ্যের প্রতিস্থাপনের জন্য প্রযোজ্য নয় এবং আমাদের ফেরত এবং প্রতিস্থাপন ফ্ল্যাশ বিক্রয় পণ্যের জন্য প্রযোজ্য নয়। যদি পণ্যটির সরবরাহকারীর দ্বারা পণ্যটিতে কোনো ত্রুটি থাকে বা পণ্যটি আপনার অর্ডার করা একই না হয় তবে আমরা আপনার কেনা পণ্যটি প্রতিস্থাপন করব। ডেলিভারি ম্যান বা কুরিয়ার সার্ভিস এজেন্টদের সামনে আপনার পণ্য চেক করুন. আপনাকে যা করতে হবে তা হল ডেলিভারির সময় থেকে 6 ঘন্টার মধ্যে estoreclassic.com-এ আমাদের একটি কল বা একটি ইমেল ড্রপ করুন৷ যাইহোক, অনুগ্রহ করে অক্ষত ট্যাগ সহ পণ্যটি এবং তাদের আসল প্যাকেজিংয়ে, একটি ধোয়া ও ক্ষয়বিহীন অবস্থায় ফেরত দিন। পণ্যের প্রতিস্থাপন মুম টিম দ্বারা পরিদর্শন এবং চেক সাপেক্ষে। পণ্যটি পুড়ে গেলে, শর্ট সার্কিটের কারণে ক্ষতিগ্রস্ত হলে বা গ্রাহকের দ্বারা ভেঙে গেলে প্রতিস্থাপন সম্ভব নয়। আমরা ময়মনসিংহে আমাদের ডেলিভারি ম্যান সরবরাহ করে আপনার দোরগোড়া থেকে পণ্যটি ফেরত নেওয়ার বিকল্প দিই যেখানে আপনাকে এটির জন্য চার্জ দিতে হবে। অন্যথায়, আপনাকে আমাদের অফিসের ঠিকানায় (বাড়ি নং # ৩0(৩য় তলা), রোড-৩/ডি, সেক্টর-৯, উত্তরা) কুরিয়ারের মাধ্যমে পাঠাতে হবে। অবহেলা, অনুপযুক্ত ব্যবহার বা প্রয়োগের কারণে ক্ষতি আমাদের \'প্রতিস্থাপন\'-এর অধীনে কভার করা হবে না। মার্চেন্টের শেষে পণ্য বিক্রি হয়ে গেলে, গ্রাহক আমাদের ওয়েবসাইট থেকে অন্য কোনো পণ্য বেছে নিতে পারেন বা তার ওয়ালেট অ্যাকাউন্টে অর্থ ফেরত রাখতে পারেন। দ্রষ্টব্য: পণ্য পরিবর্তন বা পণ্যের ওয়ারেন্টি বিক্রেতা / প্রস্তুতকারকের নীতির উপর নির্ভর করে।', 'Both', 1, '2022-09-19 06:31:58', '2022-09-19 06:31:58'),
(7, 'Support & Policy', 'সমর্থন এবং নীতি', 'Support & Policy', 'support--policy', 'Now shopping is easier, faster and always joyous. We help you make the best choice here. estoreclassic.com  is the biggest online market platform for Dhaka City offering completely hassle-free shopping experience through secure and trusted gateways. We offer you easy and reliable shopping with all your favorite brands, local brand in Dhaka and more. E-storeClassic provides products from all categories such as appliance, clothing, cosmetics, electronics, footwear, jewellery, health & beauty, medicine, repair service, car rent and still counting! Our collection combines the latest in fashion trends as well as the all-time favorites. Our products collections are exclusively selected for you. We have all that you need under one Platform.\r\n\r\n \r\n\r\nIn consistency with the vision of Digital Bangladesh, E-storeClassic provide service/product to the doorway over the Internet. We constantly update with lot of new products, services and special offers.\r\n\r\n \r\n\r\nWe provide our customers with memorable online shopping experience. We provide on-time delivery of products and quick resolution of any concerns. You can choose whatever you like. We deliver it right at your address across Dhaka City. Our services are at your doorsteps all the time. Select the best products for you or your family with the best online marketing experience every time. You will fell love online marketing with estoreclassic.com.', 'এখন কেনাকাটা সহজ, দ্রুত এবং সর্বদা আনন্দদায়ক। আমরা আপনাকে এখানে সেরা পছন্দ করতে সাহায্য করি। estoreclassic.com হল ঢাকা শহরের সবচেয়ে বড় অনলাইন মার্কেট প্লাটফর্ম যা নিরাপদ এবং বিশ্বস্ত গেটওয়ের মাধ্যমে সম্পূর্ণ ঝামেলামুক্ত কেনাকাটার অভিজ্ঞতা প্রদান করে। আমরা আপনাকে আপনার সমস্ত প্রিয় ব্র্যান্ড, ঢাকার স্থানীয় ব্র্যান্ড এবং আরও অনেক কিছুর সাথে সহজ এবং নির্ভরযোগ্য কেনাকাটার অফার করি। e-storeclassic সমস্ত বিভাগ থেকে পণ্য সরবরাহ করে যেমন যন্ত্রপাতি, পোশাক, প্রসাধনী, ইলেকট্রনিক্স, পাদুকা, গহনা, স্বাস্থ্য ও সৌন্দর্য, ওষুধ, মেরামত পরিষেবা, গাড়ি ভাড়া এবং এখনও গণনা! আমাদের সংগ্রহে ফ্যাশন ট্রেন্ডের সাথে সাথে সর্বকালের পছন্দের সর্বশেষতমগুলিকে একত্রিত করা হয়েছে৷ আমাদের পণ্য সংগ্রহ একচেটিয়াভাবে আপনার জন্য নির্বাচিত করা হয়. একটি প্ল্যাটফর্মের অধীনে আপনার যা প্রয়োজন তা আমাদের কাছে রয়েছে। ডিজিটাল বাংলাদেশের রূপকল্পের সাথে সামঞ্জস্য রেখে, ইকোহাট ইন্টারনেটের মাধ্যমে দরজায় সেবা/পণ্য সরবরাহ করে। আমরা ক্রমাগত অনেক নতুন পণ্য, পরিষেবা এবং বিশেষ অফার সহ আপডেট করি। আমরা আমাদের গ্রাহকদের স্মরণীয় অনলাইন কেনাকাটার অভিজ্ঞতা প্রদান করি। আমরা পণ্যের সময়মতো ডেলিভারি এবং যেকোনো উদ্বেগের দ্রুত সমাধান প্রদান করি। আপনি যা খুশি চয়ন করতে পারেন। আমরা ঢাকা শহরে আপনার ঠিকানায় পৌঁছে দিই। আমাদের সেবা সব সময় আপনার দোরগোড়ায় আছে. প্রতিবার সেরা অনলাইন মার্কেটিং অভিজ্ঞতা সহ আপনার বা আপনার পরিবারের জন্য সেরা পণ্যগুলি নির্বাচন করুন৷ আপনি estoreclassic.com এর সাথে অনলাইন মার্কেটিং প্রেমে পড়বেন', 'Both', 1, '2022-09-19 06:35:44', '2022-09-19 06:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('akterferdous27@gmail.com', '$2y$10$/pgery.tQ2er7OQPrTEgJ.LHCKlCJqUUaL6sS3savFT9M2sukwdvC', '2024-03-14 03:09:43'),
('johirul6320415@gmail.com', '$2y$10$aMnFaggdt4TMS7BHNukGq.zL0ZZYbWS.28cHRe8v1Du6fDrPj2m2y', '2024-03-29 02:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_carts`
--

CREATE TABLE `pos_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `stock_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_carts`
--

INSERT INTO `pos_carts` (`id`, `admin_id`, `product_id`, `stock_id`, `session_id`, `quantity`, `created_at`, `updated_at`) VALUES
(19, NULL, '7', NULL, '660ceeac580dc', '1', '2024-04-03 05:52:44', '2024-04-03 05:52:44'),
(20, NULL, '6', NULL, '660ceeac580dc', '1', '2024-04-03 05:52:45', '2024-04-03 05:52:45'),
(21, NULL, '5', '5', '660ceeac580dc', '1', '2024-04-03 05:52:45', '2024-04-03 05:52:45'),
(22, NULL, '2', NULL, '660ceeac580dc', '1', '2024-04-03 05:52:52', '2024-04-03 05:52:52'),
(23, NULL, '15', '20', '661e2dbb4a2c1', '1', '2024-04-16 07:50:19', '2024-04-16 07:50:19'),
(24, NULL, '18', NULL, '663f1c16a4ed1', '1', '2024-05-11 07:19:50', '2024-05-11 07:19:50'),
(29, NULL, '15', '20', '6640439a02c20', '1', '2024-05-12 04:21:33', '2024-05-12 04:21:33'),
(30, NULL, '21', '38', '66405d6c0206f', '1', '2024-05-12 06:10:52', '2024-05-12 06:10:52'),
(31, NULL, '21', '36', '66405d6c0206f', '1', '2024-05-12 06:10:53', '2024-05-12 06:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `sub_sub_category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `campaing_id` int(11) DEFAULT NULL,
  `name_en` varchar(255) NOT NULL,
  `name_bn` varchar(255) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `unit_weight` varchar(255) DEFAULT NULL,
  `purchase_price` double NOT NULL DEFAULT 0,
  `is_wholesell` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Wholesell, 0=>Not Wholesell',
  `wholesell_price` double NOT NULL DEFAULT 0,
  `wholesell_minimum_qty` int(11) NOT NULL DEFAULT 0,
  `regular_price` double NOT NULL DEFAULT 0,
  `discount_price` double NOT NULL DEFAULT 0,
  `discount_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Flat, 2=>Percentage',
  `reseller_price` decimal(11,2) NOT NULL DEFAULT 0.00,
  `reseller_discount_variant` decimal(8,5) NOT NULL DEFAULT 0.00000,
  `minimum_buy_qty` int(11) NOT NULL DEFAULT 1,
  `stock_qty` int(11) NOT NULL DEFAULT 0,
  `product_thumbnail` varchar(255) DEFAULT NULL,
  `product_video` varchar(255) DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `is_varient` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Varient, 0=>Not Varient',
  `attribute_values` varchar(255) DEFAULT NULL,
  `variations` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured',
  `is_deals` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Deals, 0=>Not Deals',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `is_approved` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Approved, 0=>Not Approved',
  `is_digital` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Digital, 0=>Not Digital',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `sub_category_id`, `sub_sub_category_id`, `tags`, `vendor_id`, `supplier_id`, `unit_id`, `campaing_id`, `name_en`, `name_bn`, `slug`, `product_code`, `unit_weight`, `purchase_price`, `is_wholesell`, `wholesell_price`, `wholesell_minimum_qty`, `regular_price`, `discount_price`, `discount_type`, `reseller_price`, `reseller_discount_variant`, `minimum_buy_qty`, `stock_qty`, `product_thumbnail`, `product_video`, `description_en`, `description_bn`, `attributes`, `is_varient`, `attribute_values`, `variations`, `is_featured`, `is_deals`, `status`, `is_approved`, `is_digital`, `created_by`, `created_at`, `updated_at`) VALUES
(11, 55, 8, NULL, NULL, '', 0, 0, 0, NULL, 'Mens  Premium Spandex T-Shirt', 'Mens  Premium Spandex T-Shirt', 'Mens--Premium-Spandex-T-Shirt-C32pN', '88961', NULL, 400, 0, 0, 0, 400, 0, 1, 380.00, 10.00000, 1, 219, 'upload/products/thumbnails/1795648467010809.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 1, 1, 1, 4, '2024-04-06 21:04:45', '2024-05-13 05:59:52'),
(12, 55, 8, NULL, NULL, NULL, 0, 0, 0, NULL, 'Mens  Premium Spandex T-Shirt', 'Mens  Premium Spandex T-Shirt', 'Mens--Premium-Spandex-T-Shirt-2INXk', '13783', NULL, 400, 0, 0, 0, 400, 0, 1, 380.00, 5.00000, 1, 219, 'upload/products/thumbnails/1795620921521570.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 1, 1, 1, 4, '2024-04-06 21:05:55', '2024-05-13 06:27:02'),
(13, 55, 8, NULL, NULL, '', 0, 0, 3, NULL, 'Mens  Premium Spandex T-Shirt', 'Mens  Premium Spandex T-Shirt', 'Mens--Premium-Spandex-T-Shirt-SsDi8', '22694', NULL, 400, 0, 0, 0, 400, 0, 1, 380.00, 10.00000, 1, 219, 'upload/products/thumbnails/1795648422768988.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, 1, 4, '2024-04-06 21:31:06', '2024-04-07 04:35:41'),
(14, 55, 8, NULL, NULL, '', 0, 0, 3, NULL, 'Mens  Premium Spandex Short T-Shirt', 'Mens  Premium Spandex Short T-Shirt', 'Mens--Premium-Spandex-Short-T-Shirt-ywAma', '60534', '1', 200, 0, 260, 0, 400, 0, 1, 297.00, 10.00000, 1, 218, 'upload/products/thumbnails/1795622966053694.png', NULL, NULL, NULL, '[\"5\",\"4\"]', 1, '[{\"attribute_id\":\"5\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]},{\"attribute_id\":\"4\",\"values\":[\"Light Grey\",\"Gray\"]}]', NULL, 1, 1, 1, 1, 1, 4, '2024-04-06 21:38:24', '2024-05-13 06:44:20'),
(15, 55, 8, NULL, NULL, 'Best T-Shirt', 0, 0, 3, NULL, 'Mens  Premium Spandex Short Sleeve T-Shirt', 'Mens  Premium Spandex Short Sleeve T-Shirt', 'Mens--Premium-Spandex-Short-Sleeve-T-Shirt-HbsU3', '98296', '1', 320, 0, 257, 0, 400, 0, 1, 294.00, 10.00000, 1, 393, 'upload/products/thumbnails/1795648379034593.png', NULL, NULL, NULL, '[\"5\",\"4\"]', 1, '[{\"attribute_id\":\"5\",\"values\":[\"S\",\"M\",\"L\",\"XL\"]},{\"attribute_id\":\"4\",\"values\":[\"Green\",\"Black\",\"Beige\"]}]', NULL, 1, 1, 1, 1, 1, 4, '2024-04-06 21:43:50', '2024-05-13 07:49:50'),
(16, 55, 8, NULL, NULL, NULL, 0, 0, 0, NULL, 'Short Sleeve Linen Shirt', 'Short Sleeve Linen Shirt', 'Short-Sleeve-Linen-Shirt-d6IOo', '80225', NULL, 700, 0, 0, 0, 700, 0, 1, 630.00, 10.00000, 1, 86, 'upload/products/thumbnails/1798665362973858.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, 1, 1, 0, 4, '2024-05-10 11:36:00', '2024-05-13 05:15:37'),
(17, 55, 8, NULL, NULL, NULL, 0, 0, 0, NULL, 'Short Sleeve Linen Shirt', 'Short Sleeve Linen Shirt', 'Short-Sleeve-Linen-Shirt-rWpaJ', '94194', NULL, 700, 0, 0, 0, 700, 0, 1, 0.00, 10.00000, 1, 86, 'upload/products/thumbnails/1798665453168650.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 4, '2024-05-10 11:37:26', '2024-05-14 06:52:33'),
(18, 54, 8, NULL, NULL, NULL, 0, 0, 3, NULL, 'Short Sleeve Linen Shirt', 'Short Sleeve Linen Shirt', 'Short-Sleeve-Linen-Shirt-yYRu4', '92731', NULL, 700, 0, 0, 0, 700, 0, 1, 0.00, 10.00000, 1, 86, 'upload/products/thumbnails/1798665586566023.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 4, '2024-05-10 11:39:33', '2024-05-14 06:52:38'),
(19, 54, 8, NULL, NULL, NULL, 0, 0, 3, NULL, 'Short Sleeve Linen Shirt', 'Short Sleeve Linen Shirt', 'Short-Sleeve-Linen-Shirt-6p2vL', '17047', NULL, 370, 0, 0, 0, 700, 0, 1, 630.00, 10.00000, 1, 86, 'upload/products/thumbnails/1798665761411901.png', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1, 1, 1, 4, '2024-05-10 11:42:20', '2024-05-10 11:42:20'),
(20, 55, 8, NULL, NULL, NULL, 0, 0, 3, NULL, 'Short Sleeve Linen Shirt', 'Short Sleeve Linen Shirt', 'Short-Sleeve-Linen-Shirt-YrDJG', '23460', '10', 370, 0, 0, 0, 700, 0, 1, 0.00, 10.00000, 1, 86, 'upload/products/thumbnails/1798665930011093.png', NULL, '<p>100% Linen Short Sleeve Shirt</p>', '<p><span style=\"font-family: sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;\">100% Linen Short Sleeve Shirt</span><br></p>', NULL, 0, NULL, NULL, 1, 1, 1, 1, 1, 4, '2024-05-10 11:45:01', '2024-05-14 07:06:33'),
(23, 55, 8, NULL, NULL, '', 0, 0, 0, NULL, 'Premium Cotton Stretch Denim Long Pant', 'প্রিমিয়াম কটন স্ট্রীচ ডেনিম লং প্যান্ট', 'Premium-Cotton-Stretch-Denim-Long-Pant-ZFLvh', '72784', '200', 800, 0, 0, 0, 1200, 0, 1, 1080.00, 10.00000, 1, 500, '', NULL, NULL, NULL, '[]', 0, '[]', NULL, 0, 0, 1, 1, 0, 4, '2024-05-14 05:15:32', '2024-05-14 05:15:32'),
(24, 55, 8, NULL, NULL, NULL, 0, 0, 3, NULL, 'Formal/Casual Long  Sleeve Shirt', 'Formal/Casual Long  Sleeve Shirt', 'FormalCasual-Long--Sleeve-Shirt-jbzap', '36314', '1', 1400, 0, 0, 0, 1400, 0, 1, 1260.00, 10.00000, 1, 400, 'upload/products/thumbnails/1801938323850397.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 4, '2024-06-15 14:38:19', '2024-06-15 14:38:19'),
(25, 55, 8, NULL, NULL, NULL, 0, 0, 3, NULL, 'Formal/Casual Long  Sleeve Shirt', 'Formal/Casual Long  Sleeve Shirt', 'FormalCasual-Long--Sleeve-Shirt-oWKaK', '21361', '1', 1400, 0, 0, 0, 1400, 0, 1, 1260.00, 10.00000, 1, 400, 'upload/products/thumbnails/1801938392388862.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 4, '2024-06-15 14:39:24', '2024-06-15 14:39:24'),
(26, 54, 8, NULL, NULL, NULL, 0, 0, 3, NULL, 'Formal/Casual Long  Sleeve Shirt', 'Formal/Casual Long  Sleeve Shirt', 'FormalCasual-Long--Sleeve-Shirt-8b6mg', '58946', '1', 1400, 0, 0, 0, 1400, 0, 1, 1260.00, 10.00000, 1, 400, 'upload/products/thumbnails/1801938463942228.jpg', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, 1, 1, 0, 4, '2024-06-15 14:40:32', '2024-06-15 14:40:32'),
(27, NULL, 8, NULL, NULL, '', 0, 0, 0, NULL, 'Formal/Casual Long  Sleeve Shirt', 'Formal/Casual Long  Sleeve Shirt', 'FormalCasual-Long--Sleeve-Shirt-mR7HF', '26758', NULL, 1400, 0, 0, 0, 1400, 0, 1, 1260.00, 10.00000, 1, 400, 'upload/products/thumbnails/1801939240719792.jpg', NULL, NULL, NULL, '[]', 0, '[]', NULL, 1, 0, 1, 1, 0, 4, '2024-06-15 14:52:53', '2024-06-15 14:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `varient` varchar(50) DEFAULT NULL,
  `sku` varchar(50) DEFAULT NULL,
  `stock_code` varchar(192) DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT 0.00,
  `qty` mediumint(9) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `varient`, `sku`, `stock_code`, `price`, `qty`, `image`, `created_at`, `updated_at`) VALUES
(11, 13, 'S-Light Grey', 'sku-S-Light Grey', '57367', 400.00, 10, NULL, '2024-04-06 21:31:07', '2024-04-06 21:31:07'),
(12, 14, 'S-Light Grey', 'sku-S-Light Grey', '70613', 350.00, 10, 'upload/products/variations/1795622966798252.png', '2024-04-06 21:38:25', '2024-05-13 06:25:49'),
(13, 14, 'S-Gray', 'sku-S-Gray', '87360', 300.00, 8, 'upload/products/variations/1795622966957120.png', '2024-04-06 21:38:25', '2024-05-13 06:44:20'),
(14, 14, 'M-Light Grey', 'sku-M-Light Grey', '40739', 370.00, 10, 'upload/products/variations/1795622967109006.png', '2024-04-06 21:38:25', '2024-05-13 06:25:49'),
(15, 14, 'M-Gray', 'sku-M-Gray', '56131', 380.00, 10, 'upload/products/variations/1795622967273679.png', '2024-04-06 21:38:25', '2024-05-13 06:25:49'),
(16, 14, 'L-Light Grey', 'sku-L-Light Grey', '53039', 420.00, 10, 'upload/products/variations/1795622967469309.png', '2024-04-06 21:38:26', '2024-05-13 06:25:49'),
(17, 14, 'L-Gray', 'sku-L-Gray', '47279', 410.00, 10, 'upload/products/variations/1795622967649620.png', '2024-04-06 21:38:26', '2024-05-13 06:25:49'),
(18, 14, 'XL-Light Grey', 'sku-XL-Light Grey', '86468', 390.00, 10, 'upload/products/variations/1795622967773659.png', '2024-04-06 21:38:26', '2024-05-13 06:25:49'),
(19, 14, 'XL-Gray', 'sku-XL-Gray', '46818', 480.00, 10, 'upload/products/variations/1795622967938254.png', '2024-04-06 21:38:26', '2024-05-13 06:25:49'),
(20, 15, 'S-Green', 'sku-S-Green', '37389', 400.00, 7, 'upload/products/variations/1795623308039949.png', '2024-04-06 21:43:50', '2024-05-13 07:49:50'),
(21, 15, 'S-Black', 'sku-S-Black', '75076', 400.00, 9, 'upload/products/variations/1795623308249296.png', '2024-04-06 21:43:51', '2024-05-13 05:15:37'),
(22, 15, 'S-Beige', 'sku-S-Beige', '79925', 400.00, 10, 'upload/products/variations/1795623308422725.png', '2024-04-06 21:43:51', '2024-04-06 21:43:51'),
(23, 15, 'M-Green', 'sku-M-Green', '41362', 400.00, 9, 'upload/products/variations/1795623308631138.png', '2024-04-06 21:43:51', '2024-05-13 05:09:48'),
(24, 15, 'M-Black', 'sku-M-Black', '57928', 400.00, 10, 'upload/products/variations/1795623308833569.png', '2024-04-06 21:43:51', '2024-04-06 21:43:51'),
(25, 15, 'M-Beige', 'sku-M-Beige', '31026', 400.00, 10, 'upload/products/variations/1795623309037896.png', '2024-04-06 21:43:51', '2024-04-06 21:43:51'),
(26, 15, 'L-Green', 'sku-L-Green', '12723', 400.00, 10, 'upload/products/variations/1795623309230131.png', '2024-04-06 21:43:51', '2024-04-06 21:43:52'),
(27, 15, 'L-Black', 'sku-L-Black', '84211', 400.00, 9, 'upload/products/variations/1795623309462499.png', '2024-04-06 21:43:52', '2024-05-13 05:09:48'),
(28, 15, 'L-Beige', 'sku-L-Beige', '47300', 400.00, 10, 'upload/products/variations/1795623309648841.png', '2024-04-06 21:43:52', '2024-04-06 21:43:52'),
(29, 15, 'XL-Green', 'sku-XL-Green', '68070', 400.00, 10, 'upload/products/variations/1795623309783423.png', '2024-04-06 21:43:52', '2024-04-06 21:43:52'),
(30, 15, 'XL-Black', 'sku-XL-Black', '94712', 400.00, 10, 'upload/products/variations/1795623309968591.png', '2024-04-06 21:43:52', '2024-04-06 21:43:52'),
(31, 15, 'XL-Beige', 'sku-XL-Beige', '87291', 400.00, 9, 'upload/products/variations/1795623310169027.png', '2024-04-06 21:43:52', '2024-05-13 05:09:48'),
(32, 16, 'S-White', 'sku-S-White', '75983', 700.00, 10, NULL, '2024-05-10 11:36:00', '2024-05-10 11:36:00'),
(33, 17, 'S-White', 'sku-S-White', '86478', 700.00, 10, NULL, '2024-05-10 11:37:26', '2024-05-10 11:37:26'),
(34, 19, 'S-White', 'sku-S-White', '40582', 700.00, 10, NULL, '2024-05-10 11:42:20', '2024-05-10 11:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `review` text DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `permissions` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"3\",\"5\",\"6\",\"7\",\"9\",\"13\",\"14\",\"15\",\"53\",\"54\",\"55\",\"17\",\"18\",\"19\"]', '2022-09-28 05:05:01', '2024-04-06 21:50:32'),
(2, 'Accountant', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"13\",\"14\",\"15\",\"16\",\"17\",\"41\",\"42\",\"43\",\"44\"]', '2022-09-28 05:06:43', '2022-09-28 05:06:43'),
(3, 'Sales Man', '[\"17\",\"18\",\"19\",\"20\"]', '2024-04-03 05:39:05', '2024-04-03 05:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'GALA Lifestyle', '2022-08-22 02:57:04', '2024-04-07 03:19:22'),
(2, 'site_logo', 'upload/setting/logo/1711779540logo_png.png', '2022-08-03 12:46:20', '2024-03-30 00:19:00'),
(3, 'site_favicon', 'upload/setting/favicon/1711779540logo_png.png', '2022-08-04 12:46:20', '2024-03-30 00:19:00'),
(4, 'site_footer_logo', 'upload/setting/logo/1711779540logo_png.png', '2022-08-03 12:46:20', '2024-03-30 00:19:00'),
(5, 'phone', '+880 1303-660942', '2022-08-04 12:47:27', '2024-04-03 05:49:03'),
(6, 'email', 'galalifestyleshop@gmail.com', '2022-08-12 12:47:52', '2024-03-29 23:32:52'),
(7, 'business_name', 'GALA Lifestyle', '2022-08-08 12:48:27', '2024-04-07 03:19:22'),
(8, 'business_address', 'Shahid Sarani,  Sobed Tower, 1st Floor, Opposite of Wireless Tower, Beside Technical College,  Manikganj Town, Manikganj-1800.\r\nGeo Location:\r\nhttps://maps.app.goo.gl/qYYKWxGvLxrp5qdw8', '2022-08-04 12:48:53', '2024-04-07 03:19:22'),
(9, 'business_hours', '09:00 AM - 09:00 PM', '2022-08-01 12:49:29', '2024-04-07 03:19:22'),
(10, 'copy_right', 'Copy Right GALA Lifestyle 2024', '2022-08-05 12:49:58', '2024-04-07 03:19:22'),
(11, 'developed_by', 'Classic IT & Sky Mart Ltd.', '2022-08-14 12:50:24', NULL),
(12, 'developer_link', 'https://www.classicit.com.bd/', '2022-08-13 12:50:56', NULL),
(13, 'facebook_url', 'https://www.facebook.com/GALALifestyle', '2022-08-18 12:51:19', '2024-04-07 03:19:22'),
(14, 'twitter_url', '#', '2022-08-17 12:51:45', '2024-02-12 00:16:41'),
(15, 'linkedin_url', '#', '2022-08-12 12:52:12', '2024-02-12 00:16:41'),
(16, 'youtube_url', 'https://www.youtube.com', '2022-08-04 12:52:42', '2024-04-07 03:19:22'),
(17, 'instagram_url', '#', '2022-08-11 12:53:11', '2024-02-12 00:16:41'),
(18, 'pinterest_url', '#', '2022-08-05 12:53:45', '2024-02-12 00:16:41'),
(19, 'guest_checkout', '1', '2022-09-21 05:45:31', '2022-09-21 05:45:31'),
(20, 'otp_system', '1', '2022-09-21 05:45:31', '2024-03-13 00:54:51'),
(21, 'multi_vendor', '0', '2022-10-08 04:08:02', '2024-04-01 04:54:34'),
(22, 'reseller_discount_percent', '10', '2023-02-22 11:58:09', '2024-04-07 03:19:22'),
(23, 'vendor_comission', '10', '2024-03-13 05:13:53', '2024-03-13 00:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Inside Dhaka, 2=>Outside Dhaka',
  `shipping_charge` double(20,2) NOT NULL DEFAULT 0.00,
  `time` varchar(50) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `name`, `type`, `shipping_charge`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Redex', 1, 60.00, '45 minutes', 1, '2022-09-03 03:40:16', '2024-03-29 02:17:06'),
(2, 'Sundarban Courier', 2, 150.00, '1 day', 1, '2022-09-03 03:39:25', '2022-09-03 03:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) DEFAULT NULL,
  `title_en` varchar(50) NOT NULL,
  `title_bn` varchar(50) DEFAULT NULL,
  `slider_url` text DEFAULT NULL,
  `description_bn` text DEFAULT NULL,
  `description_en` text DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title_en`, `title_bn`, `slider_url`, `description_bn`, `description_en`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'upload/slider/1794929014634574.webp', 'Slider-1', 'Slider-1', '#', 'Slider-1', 'Slider-1', 'slider-1', 1, '2024-03-29 23:48:21', '2024-03-29 23:48:21'),
(2, 'upload/slider/1794929029773094.webp', 'Slider-2', 'Slider-2', '#', 'Slider-2', 'Slider-2', 'slider-2', 1, '2024-03-29 23:48:35', '2024-03-29 23:48:35'),
(3, 'upload/slider/1794929057736412.webp', 'Slider-3', 'Slider-3', '#', 'Slider-3', 'Slider-3', 'slider-3', 1, '2024-03-29 23:49:02', '2024-03-29 23:49:02'),
(4, 'upload/slider/1795023441476947.png', 'We are opening soon', 'শীঘ্রই আসছে', 'Opening soon', 'এই এপ্রিল থেকে শুরু হচ্ছে আমাদের পথচলা। সঙ্গে রাখুন।', 'We are opening our outlet and starting offline and online sale from this April 2024', 'we-are-opening-soon', 1, '2024-03-31 00:49:13', '2024-03-31 00:49:13'),
(5, 'upload/slider/1795063853105187.png', 'Bag collection', 'ব্যাগ কালেকশন', 'Ladies bag', 'ব্যাগ', 'Bag for ladies', 'bag-collection', 1, '2024-03-31 11:31:33', '2024-03-31 11:31:33'),
(6, 'upload/slider/1795063968912234.png', 'Eid Mubarak', 'Eid Mubarak', 'ঈদ মোবারক', 'ঈদ মোবারক', 'ঈদ মোবারক', 'eid-mubarak', 1, '2024-03-31 11:33:23', '2024-03-31 11:33:23'),
(7, 'upload/slider/1795064088461509.png', 'New Collection', 'নতুন সংযোজন', 'New Collection', 'নতুন সংযোজন', 'New Collection', 'new-collection', 1, '2024-03-31 11:35:17', '2024-03-31 11:35:17'),
(8, 'upload/slider/1795082172650402.png', 'Online shop', 'অনলাইনে কেনাকাটা', 'https://galalifestyle.shop/product-details/Aliya-Cut-Gown-Ready-Cotton-Fashionable-Long-Shalwar-Kamez-Orna-YG2S2', 'Online shop', 'Online shop', 'online-shop', 1, '2024-04-03 05:31:49', '2024-04-03 05:31:49'),
(9, 'upload/slider/1795790845202931.png', 'Eid Mubarak', 'ঈদ মোবারক', NULL, 'ঈদ মোবারক', 'ঈদ মোবারক', 'eid-mubarak', 1, '2024-04-08 18:06:47', '2024-04-08 18:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `sms_providers`
--

CREATE TABLE `sms_providers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>Active, 0=>Inactive',
  `url` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `sender_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_providers`
--

INSERT INTO `sms_providers` (`id`, `name`, `status`, `url`, `api_key`, `sender_id`, `created_at`, `updated_at`) VALUES
(1, 'Classic IT', 1, 'http://sms.classicit.com.bd/smsapi', 'R6001640623a9516bf1f71.13295352', 'Classic IT', '2022-04-25 15:27:37', '2022-05-24 05:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `body` varchar(250) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'registration_verification', '[[ExPro]] রেজিস্ট্রেশন ভেরিফিকেশন কোডঃ [[code]]', 1, '2022-04-25 16:02:02', '2024-03-13 09:31:38'),
(2, 'login_verification', '[[ExPro]] লগিন ভেরিফিকেশন কোডঃ [[code]]', 1, '2022-04-25 16:02:46', '2024-03-13 09:30:57'),
(3, 'order_message', 'আপনার অর্ডার সম্পন্ন হয়েছে। অর্ডার  আইডিঃ [[order_code]], মূল্যঃ [[order_amount]] টাকা। - [[site_name]]', 1, '2022-04-25 16:03:12', '2022-05-24 05:38:23'),
(5, 'password_reset', 'আপনার নতুন পাসওয়ার্ডঃ [[code]]', 1, '2022-06-22 00:42:46', '2022-06-22 00:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 87, 3, '2024-04-03 05:39:33', '2024-04-03 05:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ea@gmail.com', '2024-04-03 05:43:15', '2024-04-03 05:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_bn` varchar(50) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Featured, 0=>Not Featured',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_bn` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `subsubcategory_image` varchar(255) DEFAULT NULL,
  `is_feature` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Active, 0=>Inactive',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `phone`, `email`, `address`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(9, 'Ex-Pro', '01855261206', 'expro.online.shop@gmail.com', 'Badda,Dhaka-1212', 1, 4, NULL, '2024-03-15 02:02:40'),
(10, 'Labib Computer and Technology', '01716781503', 'ramjan1979.labib@gmail.com', 'Shop#217/A,2nd floor,Holland center shopping complex, middle badda, Dhaka-1212', 1, 4, NULL, NULL),
(11, 'M.M. TELECOM', '01612121991', 'shtushar9198@gmail.com', 'SHOP-227,LEVEL-2,HOLLAND CENTER SHOPPING COMPLEX,BADDA,DHAKA-1212', 1, 4, NULL, NULL),
(12, 'BROTHERS TELECOM', '01923390002', 'brotherstelecom13573@gmail.com', 'LEVEL-2,HOLLAND CENTER SHOPPING COMPLEX,BADDA,DHAKA-1212', 1, 4, NULL, NULL),
(14, 'xyz', '01911045596', 'test@gamil.com', 'fdsghfdshgf', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_bn` varchar(255) DEFAULT NULL,
  `tag_slug_en` varchar(255) DEFAULT NULL,
  `tag_slug_bn` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `description_bn` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

CREATE TABLE `temp_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `upazilla_id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `payment_method` varchar(25) NOT NULL DEFAULT 'cash',
  `payment_status` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>paid, 0=>Unpaid',
  `payment_details` text DEFAULT NULL,
  `shipping_charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_type` varchar(100) DEFAULT NULL,
  `shipping_name` varchar(150) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT 0.00,
  `grand_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `invoice_no` varchar(255) NOT NULL,
  `viewed` varchar(255) NOT NULL DEFAULT '0',
  `delivery_viewed` varchar(255) NOT NULL DEFAULT '1',
  `payment_status_viewed` varchar(255) NOT NULL DEFAULT '1',
  `commission_calculated` varchar(255) NOT NULL DEFAULT '0',
  `comment` text DEFAULT NULL,
  `delivery_status` varchar(255) NOT NULL DEFAULT 'pending',
  `tracking_code` varchar(100) DEFAULT NULL,
  `confirmed_date` varchar(30) DEFAULT NULL,
  `processing_date` varchar(30) DEFAULT NULL,
  `picked_date` varchar(30) DEFAULT NULL,
  `shipped_date` varchar(30) DEFAULT NULL,
  `delivered_date` varchar(30) DEFAULT NULL,
  `cancel_date` varchar(30) DEFAULT NULL,
  `return_date` varchar(30) DEFAULT NULL,
  `return_reason` text DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Not guest order, 2=>Guest Order',
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Slices (Slice)', 1, 4, '2022-12-30 18:27:02', '2022-12-30 18:34:47'),
(3, 'PCS', 1, 4, '2023-03-16 02:32:52', '2023-03-16 02:32:52'),
(4, 'Combo', 1, 4, '2024-03-25 06:01:51', '2024-03-25 06:01:51'),
(5, 'Box', 1, 4, '2024-04-03 05:18:44', '2024-04-03 05:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `upazillas`
--

CREATE TABLE `upazillas` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `name_en` varchar(25) NOT NULL,
  `name_bn` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `upazillas`
--

INSERT INTO `upazillas` (`id`, `district_id`, `name_en`, `name_bn`, `url`) VALUES
(1, 1, 'Debidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd'),
(2, 1, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd'),
(3, 1, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd'),
(4, 1, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd'),
(5, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd'),
(6, 1, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd'),
(7, 1, 'Homna', 'হোমনা', 'homna.comilla.gov.bd'),
(8, 1, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd'),
(9, 1, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd'),
(10, 1, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd'),
(11, 1, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd'),
(12, 1, 'Meghna', 'মেঘনা', 'meghna.comilla.gov.bd'),
(13, 1, 'Monohargonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd'),
(14, 1, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd'),
(15, 1, 'Titas', 'তিতাস', 'titas.comilla.gov.bd'),
(16, 1, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd'),
(17, 1, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd'),
(18, 2, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd'),
(19, 2, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd'),
(20, 2, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd'),
(21, 2, 'Fulgazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd'),
(22, 2, 'Parshuram', 'পরশুরাম', 'parshuram.feni.gov.bd'),
(23, 2, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd'),
(24, 3, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd'),
(25, 3, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd'),
(26, 3, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd'),
(27, 3, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd'),
(28, 3, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd'),
(29, 3, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd'),
(30, 3, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd'),
(31, 3, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd'),
(32, 3, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    '),
(33, 4, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd'),
(34, 4, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd'),
(35, 4, 'Kawkhali', 'কাউখালী', 'kawkhali.rangamati.gov.bd'),
(36, 4, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd'),
(37, 4, 'Barkal', 'বরকল', 'barkal.rangamati.gov.bd'),
(38, 4, 'Langadu', 'লংগদু', 'langadu.rangamati.gov.bd'),
(39, 4, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd'),
(40, 4, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd'),
(41, 4, 'Juraichari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd'),
(42, 4, 'Naniarchar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd'),
(43, 5, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd'),
(44, 5, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd'),
(45, 5, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd'),
(46, 5, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd'),
(47, 5, 'Subarnachar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd'),
(48, 5, 'Kabirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd'),
(49, 5, 'Senbug', 'সেনবাগ', 'senbug.noakhali.gov.bd'),
(50, 5, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd'),
(51, 5, 'Sonaimori', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd'),
(52, 6, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd'),
(53, 6, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd'),
(54, 6, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd'),
(55, 6, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd'),
(56, 6, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd'),
(57, 6, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd'),
(58, 6, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd'),
(59, 6, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd'),
(60, 7, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd'),
(61, 7, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd'),
(62, 7, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd'),
(63, 7, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd'),
(64, 7, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd'),
(65, 8, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd'),
(66, 8, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd'),
(67, 8, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd'),
(68, 8, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd'),
(69, 8, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd'),
(70, 8, 'Banshkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd'),
(71, 8, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd'),
(72, 8, 'Anwara', 'আনোয়ারা', 'anwara.chittagong.gov.bd'),
(73, 8, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd'),
(74, 8, 'Satkania', 'সাতকানিয়া', 'satkania.chittagong.gov.bd'),
(75, 8, 'Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd'),
(76, 8, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd'),
(77, 8, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd'),
(78, 8, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd'),
(79, 8, 'Karnafuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd'),
(80, 9, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd'),
(81, 9, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd'),
(82, 9, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd'),
(83, 9, 'Ukhiya', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd'),
(84, 9, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd'),
(85, 9, 'Pekua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd'),
(86, 9, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd'),
(87, 9, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd'),
(88, 10, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd'),
(89, 10, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd'),
(90, 10, 'Panchari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd'),
(91, 10, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd'),
(92, 10, 'Mohalchari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd'),
(93, 10, 'Manikchari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd'),
(94, 10, 'Ramgarh', 'রামগড়', 'ramgarh.khagrachhari.gov.bd'),
(95, 10, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd'),
(96, 10, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd'),
(97, 11, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd'),
(98, 11, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd'),
(99, 11, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd'),
(100, 11, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd'),
(101, 11, 'Lama', 'লামা', 'lama.bandarban.gov.bd'),
(102, 11, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd'),
(103, 11, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd'),
(104, 12, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd'),
(105, 12, 'Chauhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd'),
(106, 12, 'Kamarkhand', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd'),
(107, 12, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd'),
(108, 12, 'Raigonj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd'),
(109, 12, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd'),
(110, 12, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd'),
(111, 12, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd'),
(112, 12, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd'),
(113, 13, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd'),
(114, 13, 'Ishurdi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd'),
(115, 13, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd'),
(116, 13, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd'),
(117, 13, 'Bera', 'বেড়া', 'bera.pabna.gov.bd'),
(118, 13, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd'),
(119, 13, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd'),
(120, 13, 'Santhia', 'সাঁথিয়া', 'santhia.pabna.gov.bd'),
(121, 13, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd'),
(122, 14, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd'),
(123, 14, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd'),
(124, 14, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd'),
(125, 14, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd'),
(126, 14, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd'),
(127, 14, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd'),
(128, 14, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd'),
(129, 14, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd'),
(130, 14, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd'),
(131, 14, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd'),
(132, 14, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd'),
(133, 14, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd'),
(134, 15, 'Paba', 'পবা', 'paba.rajshahi.gov.bd'),
(135, 15, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd'),
(136, 15, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd'),
(137, 15, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd'),
(138, 15, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd'),
(139, 15, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd'),
(140, 15, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd'),
(141, 15, 'Tanore', 'তানোর', 'tanore.rajshahi.gov.bd'),
(142, 15, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd'),
(143, 16, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd'),
(144, 16, 'Singra', 'সিংড়া', 'singra.natore.gov.bd'),
(145, 16, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd'),
(146, 16, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd'),
(147, 16, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd'),
(148, 16, 'Gurudaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd'),
(149, 16, 'Naldanga', 'নলডাঙ্গা', 'naldanga.natore.gov.bd'),
(150, 17, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd'),
(151, 17, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd'),
(152, 17, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd'),
(153, 17, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd'),
(154, 17, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd'),
(155, 18, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd'),
(156, 18, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd'),
(157, 18, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd'),
(158, 18, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd'),
(159, 18, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd'),
(160, 19, 'Mohadevpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd'),
(161, 19, 'Badalgachi', 'বদলগাছী', 'badalgachi.naogaon.gov.bd'),
(162, 19, 'Patnitala', 'পত্নিতলা', 'patnitala.naogaon.gov.bd'),
(163, 19, 'Dhamoirhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd'),
(164, 19, 'Niamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd'),
(165, 19, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd'),
(166, 19, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd'),
(167, 19, 'Raninagar', 'রাণীনগর', 'raninagar.naogaon.gov.bd'),
(168, 19, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd'),
(169, 19, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd'),
(170, 19, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd'),
(171, 20, 'Manirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd'),
(172, 20, 'Abhaynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd'),
(173, 20, 'Bagherpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd'),
(174, 20, 'Chougachha', 'চৌগাছা', 'chougachha.jessore.gov.bd'),
(175, 20, 'Jhikargacha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd'),
(176, 20, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd'),
(177, 20, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd'),
(178, 20, 'Sharsha', 'শার্শা', 'sharsha.jessore.gov.bd'),
(179, 21, 'Assasuni', 'আশাশুনি', 'assasuni.satkhira.gov.bd'),
(180, 21, 'Debhata', 'দেবহাটা', 'debhata.satkhira.gov.bd'),
(181, 21, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd'),
(182, 21, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd'),
(183, 21, 'Shyamnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd'),
(184, 21, 'Tala', 'তালা', 'tala.satkhira.gov.bd'),
(185, 21, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd'),
(186, 22, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd'),
(187, 22, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd'),
(188, 22, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd'),
(189, 23, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd'),
(190, 23, 'Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd'),
(191, 23, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd'),
(192, 24, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd'),
(193, 24, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd'),
(194, 24, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd'),
(195, 24, 'Jibannagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd'),
(196, 25, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd'),
(197, 25, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd'),
(198, 25, 'Khoksa', 'খোকসা', 'khoksa.kushtia.gov.bd'),
(199, 25, 'Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd'),
(200, 25, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd'),
(201, 25, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd'),
(202, 26, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd'),
(203, 26, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd'),
(204, 26, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd'),
(205, 26, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd'),
(206, 27, 'Paikgasa', 'পাইকগাছা', 'paikgasa.khulna.gov.bd'),
(207, 27, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd'),
(208, 27, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd'),
(209, 27, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd'),
(210, 27, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd'),
(211, 27, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd'),
(212, 27, 'Botiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd'),
(213, 27, 'Dakop', 'দাকোপ', 'dakop.khulna.gov.bd'),
(214, 27, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd'),
(215, 28, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd'),
(216, 28, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd'),
(217, 28, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd'),
(218, 28, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd'),
(219, 28, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd'),
(220, 28, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd'),
(221, 28, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd'),
(222, 28, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd'),
(223, 28, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd'),
(224, 29, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd'),
(225, 29, 'Shailkupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd'),
(226, 29, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd'),
(227, 29, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd'),
(228, 29, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd'),
(229, 29, 'Moheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd'),
(230, 30, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd'),
(231, 30, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd'),
(232, 30, 'Nalchity', 'নলছিটি', 'nalchity.jhalakathi.gov.bd'),
(233, 30, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd'),
(234, 31, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd'),
(235, 31, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd'),
(236, 31, 'Dumki', 'দুমকি', 'dumki.patuakhali.gov.bd'),
(237, 31, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd'),
(238, 31, 'Kalapara', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd'),
(239, 31, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd'),
(240, 31, 'Galachipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd'),
(241, 31, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd'),
(242, 32, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd'),
(243, 32, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd'),
(244, 32, 'Kawkhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd'),
(245, 32, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd'),
(246, 32, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd'),
(247, 32, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd'),
(248, 32, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd'),
(249, 33, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd'),
(250, 33, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd'),
(251, 33, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd'),
(252, 33, 'Wazirpur', 'উজিরপুর', 'wazirpur.barisal.gov.bd'),
(253, 33, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd'),
(254, 33, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd'),
(255, 33, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd'),
(256, 33, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd'),
(257, 33, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd'),
(258, 33, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd'),
(259, 34, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd'),
(260, 34, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd'),
(261, 34, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd'),
(262, 34, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd'),
(263, 34, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd'),
(264, 34, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd'),
(265, 34, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd'),
(266, 35, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd'),
(267, 35, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd'),
(268, 35, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd'),
(269, 35, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd'),
(270, 35, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd'),
(271, 35, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd'),
(272, 36, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd'),
(273, 36, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd'),
(274, 36, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd'),
(275, 36, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd'),
(276, 36, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd'),
(277, 36, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd'),
(278, 36, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd'),
(279, 36, 'Jaintiapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd'),
(280, 36, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd'),
(281, 36, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd'),
(282, 36, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd'),
(283, 36, 'Dakshinsurma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd'),
(284, 36, 'Osmaninagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd'),
(285, 37, 'Barlekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd'),
(286, 37, 'Kamolganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd'),
(287, 37, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd'),
(288, 37, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd'),
(289, 37, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd'),
(290, 37, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd'),
(291, 37, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd'),
(292, 38, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd'),
(293, 38, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd'),
(294, 38, 'Ajmiriganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd'),
(295, 38, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd'),
(296, 38, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd'),
(297, 38, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd'),
(298, 38, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd'),
(299, 38, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd'),
(300, 39, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd'),
(301, 39, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd'),
(302, 39, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd'),
(303, 39, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd'),
(304, 39, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd'),
(305, 39, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd'),
(306, 39, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd'),
(307, 39, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd'),
(308, 39, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd'),
(309, 39, 'Shalla', 'শাল্লা', 'shalla.sunamganj.gov.bd'),
(310, 39, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd'),
(311, 53, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd'),
(312, 53, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd'),
(313, 53, 'Narsingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd'),
(314, 53, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd'),
(315, 53, 'Raipura', 'রায়পুরা', 'raipura.narsingdi.gov.bd'),
(316, 53, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd'),
(317, 54, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd'),
(318, 54, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd'),
(319, 54, 'Kapasia', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd'),
(320, 54, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd'),
(321, 54, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd'),
(322, 55, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd'),
(323, 55, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd'),
(324, 55, 'Zajira', 'জাজিরা', 'zajira.shariatpur.gov.bd'),
(325, 55, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd'),
(326, 55, 'Bhedarganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd'),
(327, 55, 'Damudya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd'),
(328, 56, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd'),
(329, 56, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd'),
(330, 56, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd'),
(331, 56, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd'),
(332, 56, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd'),
(333, 57, 'Basail', 'বাসাইল', 'basail.tangail.gov.bd'),
(334, 57, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd'),
(335, 57, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd'),
(336, 57, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd'),
(337, 57, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd'),
(338, 57, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd'),
(339, 57, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd'),
(340, 57, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd'),
(341, 57, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd'),
(342, 57, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd'),
(343, 57, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd'),
(344, 57, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd'),
(345, 58, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd'),
(346, 58, 'Katiadi', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd'),
(347, 58, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd'),
(348, 58, 'Tarail', 'তাড়াইল', 'tarail.kishoreganj.gov.bd'),
(349, 58, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd'),
(350, 58, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd'),
(351, 58, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd'),
(352, 58, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd'),
(353, 58, 'Karimgonj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd'),
(354, 58, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd'),
(355, 58, 'Austagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd'),
(356, 58, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd'),
(357, 58, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd'),
(358, 59, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd'),
(359, 59, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd'),
(360, 59, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd'),
(361, 59, 'Gior', 'ঘিওর', 'gior.manikganj.gov.bd'),
(362, 59, 'Shibaloy', 'শিবালয়', 'shibaloy.manikganj.gov.bd'),
(363, 59, 'Doulatpur', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd'),
(364, 59, 'Singiar', 'সিংগাইর', 'singiar.manikganj.gov.bd'),
(365, 52, 'Savar', 'সাভার', 'savar.dhaka.gov.bd'),
(366, 52, 'Dhamrai', 'ধামরাই', 'dhamrai.dhaka.gov.bd'),
(367, 52, 'Keraniganj', 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd'),
(368, 52, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd'),
(369, 52, 'Dohar', 'দোহার', 'dohar.dhaka.gov.bd'),
(370, 60, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd'),
(371, 60, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd'),
(372, 60, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd'),
(373, 60, 'Louhajanj', 'লৌহজং', 'louhajanj.munshiganj.gov.bd'),
(374, 60, 'Gajaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd'),
(375, 60, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd'),
(376, 61, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd'),
(377, 61, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd'),
(378, 61, 'Pangsa', 'পাংশা', 'pangsa.rajbari.gov.bd'),
(379, 61, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd'),
(380, 61, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd'),
(381, 62, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd'),
(382, 62, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd'),
(383, 62, 'Kalkini', 'কালকিনি', 'kalkini.madaripur.gov.bd'),
(384, 62, 'Rajoir', 'রাজৈর', 'rajoir.madaripur.gov.bd'),
(385, 64, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd'),
(386, 64, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd'),
(387, 64, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd'),
(388, 64, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd'),
(389, 64, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd'),
(390, 63, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd'),
(391, 63, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd'),
(392, 63, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd'),
(393, 63, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd'),
(394, 63, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd'),
(395, 63, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd'),
(396, 63, 'Charbhadrasan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd'),
(397, 63, 'Madhukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd'),
(398, 63, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd'),
(399, 40, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd'),
(400, 40, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd'),
(401, 40, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd'),
(402, 40, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd'),
(403, 40, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd'),
(404, 41, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd'),
(405, 41, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd'),
(406, 41, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd'),
(407, 41, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd'),
(408, 41, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd'),
(409, 41, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd'),
(410, 41, 'Kaharol', 'কাহারোল', 'kaharol.dinajpur.gov.bd'),
(411, 41, 'Fulbari', 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd'),
(412, 41, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd'),
(413, 41, 'Hakimpur', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd'),
(414, 41, 'Khansama', 'খানসামা', 'khansama.dinajpur.gov.bd'),
(415, 41, 'Birol', 'বিরল', 'birol.dinajpur.gov.bd'),
(416, 41, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd'),
(417, 42, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd'),
(418, 42, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd'),
(419, 42, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd'),
(420, 42, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd'),
(421, 42, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd'),
(422, 43, 'Syedpur', 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd'),
(423, 43, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd'),
(424, 43, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd'),
(425, 43, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd'),
(426, 43, 'Kishorganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd'),
(427, 43, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd'),
(428, 44, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd'),
(429, 44, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd'),
(430, 44, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd'),
(431, 44, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd'),
(432, 44, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd'),
(433, 44, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd'),
(434, 44, 'Phulchari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd'),
(435, 45, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd'),
(436, 45, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd'),
(437, 45, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd'),
(438, 45, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd'),
(439, 45, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd'),
(440, 46, 'Rangpur Sadar', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd'),
(441, 46, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd'),
(442, 46, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd'),
(443, 46, 'Badargonj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd'),
(444, 46, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd'),
(445, 46, 'Pirgonj', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd'),
(446, 46, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd'),
(447, 46, 'Pirgacha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd'),
(448, 47, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd'),
(449, 47, 'Nageshwari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd'),
(450, 47, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd'),
(451, 47, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd'),
(452, 47, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd'),
(453, 47, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd'),
(454, 47, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd'),
(455, 47, 'Rowmari', 'রৌমারী', 'rowmari.kurigram.gov.bd'),
(456, 47, 'Charrajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd'),
(457, 49, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd'),
(458, 49, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd'),
(459, 49, 'Sreebordi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd'),
(460, 49, 'Nokla', 'নকলা', 'nokla.sherpur.gov.bd'),
(461, 49, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd'),
(462, 50, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd'),
(463, 50, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd'),
(464, 50, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd'),
(465, 50, 'Muktagacha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd'),
(466, 50, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd'),
(467, 50, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd'),
(468, 50, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd'),
(469, 50, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd'),
(470, 50, 'Gouripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd'),
(471, 50, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd'),
(472, 50, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd'),
(473, 50, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd'),
(474, 50, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd'),
(475, 47, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd'),
(476, 47, 'Melandah', 'মেলান্দহ', 'melandah.jamalpur.gov.bd'),
(477, 47, 'Islampur', 'ইসলামপুর', 'islampur.jamalpur.gov.bd'),
(478, 47, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd'),
(479, 47, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd'),
(480, 47, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd'),
(481, 47, 'Bokshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd'),
(482, 0, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd'),
(483, 0, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd'),
(484, 51, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd'),
(485, 51, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd'),
(486, 51, 'Madan', 'মদন', 'madan.netrokona.gov.bd'),
(487, 51, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd'),
(488, 51, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd'),
(489, 51, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd'),
(490, 51, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd'),
(491, 51, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd'),
(492, 52, 'Ramna', 'রমনা', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL DEFAULT 3 COMMENT '1=>Admin, 2=>Vendor,3=>User,4=>Guest User, 7=>Reseller',
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profile_image` varchar(256) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `is_approved` tinyint(4) NOT NULL DEFAULT 1,
  `reseller_discount_percent` decimal(11,2) NOT NULL DEFAULT 0.00,
  `prepaid_amount` decimal(11,2) NOT NULL DEFAULT 0.00,
  `wallet_balance` decimal(11,2) NOT NULL DEFAULT 0.00,
  `income` decimal(11,2) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `phone`, `email`, `address`, `profile_image`, `email_verified_at`, `password`, `status`, `is_approved`, `reseller_discount_percent`, `prepaid_amount`, `wallet_balance`, `income`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 4, 'Guest User', 'guest-user', '01627490402', 'guestuser@gmail.com', 'Dhaka', 'upload/user/1663045118avatar5.png', NULL, '$2y$10$iy93F5hZNH/zmluBuHBm5.1.hUsNJVR5PauM4Nu4Dg0rt5dBhoODK', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2022-07-29 21:25:27', '2023-01-04 19:18:49'),
(2, 3, 'zahidul islam', 'Zahidul', '0172152365440', 'zahidul@gmail.com', NULL, NULL, NULL, '$2y$10$W8KZlVNFQbfjXYHA2sz9LupIqYekPqOFnaRPmmjs/E6UfSFDpzD0G', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2022-08-05 19:34:58', '2022-08-05 19:34:58'),
(3, 3, 'Moloy Das', 'moloy', '0172152365442', 'moloy@gmail.com', NULL, 'upload/user/1660471315IMG20201203151328.jpg', NULL, '$2y$10$j3KyJDNtn6RV2vthFR4Wu.4fclng80Rx2nFcMKYs88YgPt/2xE5dG', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2022-08-07 23:55:14', '2022-08-18 01:03:37'),
(4, 1, 'FUAD', 'admin', '01855261206', 'admin@gmail.com', 'badda dhaka', '202403300506download.png', NULL, '$2y$10$AqTBF47mQF/pi9eLT1EACOK/Lo9Devx8LXorHmCELRlJJ9g4y5puK', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2022-08-12 17:46:40', '2024-03-29 23:06:42'),
(85, 2, 'Shopno Ghar', 'Shopno-Ghar-28rSt', '01790173857', 'ashiqulislamrasel@gmail.com', 'Uttara,  Dhaka Bangladesh', NULL, NULL, '$2y$10$tHE8Gym.kXS6kgIwcAM7j.nQOklbJQIgxKLfdHgWAzKjtTkJcWaT6', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2024-04-01 01:46:04', '2024-04-01 01:46:04'),
(86, 3, 'gretfreg', NULL, '01816345958', NULL, 'fgdg', '', NULL, '$2y$10$7gZvb.6F2B3rqYXCPLW4Oevkk3zAqg9cNw8Rkj9XbqW4OwF1bFrh2', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2024-04-01 04:51:27', '2024-04-01 04:51:27'),
(87, 5, 'eamin', NULL, '01911045596', 'eamin@gmail.com', NULL, NULL, NULL, '$2y$10$Fbt.A/kcrvO43ljmY6KcluzEpMhk.WjTHQX8pMKyWGcVYeVu.JW3q', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2024-04-03 05:39:33', '2024-04-03 05:39:33'),
(88, 3, 'sadik', NULL, '01310567002', NULL, 'manikganj', '', NULL, '$2y$10$k09GjpJ05ShTayAc28qjHeKod90CW0h5dQlzJDIOZ9RtvxvLk2ifa', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2024-05-11 07:22:10', '2024-05-11 07:22:10'),
(89, 3, 'Afsana Sultana', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$HWC10yktlsP6TLaBsl1oCOYDmwalxjrRu0Ekfr/qu3bi3RuLe6oYG', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2024-05-13 04:59:47', '2024-05-13 04:59:47'),
(90, 3, 'Ashiqul Islam', NULL, NULL, NULL, NULL, '', NULL, '$2y$10$9SyVu/19LW66K0USKH3ciuyp7P/CVgAeKYtr8buckIbQfuKw74rOS', 1, 1, 0.00, 0.00, 0.00, NULL, NULL, '2024-05-13 05:15:23', '2024-05-13 05:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `fb_url` varchar(100) DEFAULT NULL,
  `bank_information` varchar(255) DEFAULT NULL,
  `bank_account` varchar(80) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `holder_name` varchar(100) DEFAULT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `routing_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `commission` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `shop_profile` varchar(255) DEFAULT NULL,
  `shop_cover` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `trade_license` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=>Active, 0=>Inactive',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `vendor_name`, `shop_name`, `slug`, `fb_url`, `bank_information`, `bank_account`, `bank_name`, `holder_name`, `branch_name`, `routing_name`, `address`, `commission`, `description`, `shop_profile`, `shop_cover`, `nid`, `trade_license`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 85, 'Ashiqul Islam', 'Shopno Ghar', 'Shopno-Ghar-28rSt', NULL, 'Test', NULL, NULL, NULL, NULL, NULL, 'Uttara,  Dhaka Bangladesh', '10', 'Test', 'upload/vendor/1795117615025868.jpg', 'upload/vendor/1795117615123432.jpg', 'upload/vendor/1795117615198082.png', 'upload/vendor/1795117615266772.png', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT 0,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=>Pending, 1=>Complete, 2=>Processing, 3=>Intransit',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=>Out, 1=>In',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` bigint(20) UNSIGNED DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_brunch` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1=>Active, 0=>Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_heads`
--
ALTER TABLE `account_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_ledgers_account_head_id_foreign` (`account_head_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`),
  ADD KEY `attribute_product_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_value_product_price`
--
ALTER TABLE `attribute_value_product_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_value_product_price_product_price_id_foreign` (`product_price_id`),
  ADD KEY `attribute_value_product_price_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaings`
--
ALTER TABLE `campaings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaing_products`
--
ALTER TABLE `campaing_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaing_products_campaing_id_foreign` (`campaing_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos_carts`
--
ALTER TABLE `pos_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `value` (`value`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`),
  ADD KEY `staff_role_id_foreign` (`role_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_phone_unique` (`phone`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `temp_orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazillas`
--
ALTER TABLE `upazillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_heads`
--
ALTER TABLE `account_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `attribute_value_product_price`
--
ALTER TABLE `attribute_value_product_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `campaings`
--
ALTER TABLE `campaings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaing_products`
--
ALTER TABLE `campaing_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_carts`
--
ALTER TABLE `pos_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upazillas`
--
ALTER TABLE `upazillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_ledgers`
--
ALTER TABLE `account_ledgers`
  ADD CONSTRAINT `account_ledgers_account_head_id_foreign` FOREIGN KEY (`account_head_id`) REFERENCES `account_heads` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_value_product_price`
--
ALTER TABLE `attribute_value_product_price`
  ADD CONSTRAINT `attribute_value_product_price_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_value_product_price_product_price_id_foreign` FOREIGN KEY (`product_price_id`) REFERENCES `product_prices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaing_products`
--
ALTER TABLE `campaing_products`
  ADD CONSTRAINT `campaing_products_campaing_id_foreign` FOREIGN KEY (`campaing_id`) REFERENCES `campaings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD CONSTRAINT `product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD CONSTRAINT `temp_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
