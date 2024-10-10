-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 01:36 PM
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
-- Database: `laravel_practice`
--

-- --------------------------------------------------------

--
-- Table structure for table `rmg_buyers`
--

CREATE TABLE `rmg_buyers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `address` text NOT NULL,
  `photo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rmg_buyers`
--

INSERT INTO `rmg_buyers` (`id`, `name`, `mobile`, `email`, `created_at`, `updated_at`, `address`, `photo`) VALUES
(1, 'Jahidul Islam', '45345435435', 'jahid@yahoo.com', '2021-12-14 06:43:13', '2024-03-16 18:28:48', 'Gazipur, Bangladesh', '1710635328.jpg'),
(2, 'Janifer', '4353445546', 'Janifer@yahoo.com', '2021-12-14 06:43:13', '2024-03-16 18:27:15', 'Australia', '1710635235.jpg'),
(3, 'Niyamot', '3434343', 'niyamot@yahoo.com', '2021-12-14 00:44:25', '2024-03-16 18:25:31', 'Gazipur, Bangladesh', '1710635131.jpg'),
(6, 'Adnan Akram', '01761435967', 'akramhoshen1996@gmail.com', '2023-12-05 18:29:32', '2024-03-16 18:25:03', 'Bhola, Barishal', '1710635103.jpg'),
(7, 'Jimi Arlon onu', '+6145890789', 'Jimi@gmail.com', '2024-03-16 18:16:07', '2024-05-12 16:36:48', 'Australia', '1710634567.jpg'),
(9, 'Abir Hasan', '01761435980', 'Abir2000@gmail.com', '2024-05-04 09:41:08', '2024-05-04 09:41:08', 'Bhola', '1714837268.jpg'),
(13, 'Adiba Khanom', '01700000012', 'adiba@gmail.com', '2024-05-05 00:40:46', '2024-05-06 01:51:35', 'Dhaka', '1714967534.jpg'),
(15, 'Adnan Islam', '010621111111', 'adnan@gmail.com', '2024-05-06 01:51:23', '2024-05-06 01:51:23', 'Dhaka, Bangladesh', '1714981883.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_fabrics`
--

CREATE TABLE `rmg_fabrics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_fabrics`
--

INSERT INTO `rmg_fabrics` (`id`, `style_id`, `name`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Solid Purple', '40% Polister, 60% Cotton', '1710446461.webp', '2024-03-14 13:57:12', '2024-03-14 14:01:01'),
(2, 1, 'Orange mosaic pattern', '55% Polister, 45% Cotton', '1710446631.png', '2024-03-14 14:03:51', '2024-03-14 14:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_failed_jobs`
--

CREATE TABLE `rmg_failed_jobs` (
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
-- Table structure for table `rmg_images`
--

CREATE TABLE `rmg_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_images`
--

INSERT INTO `rmg_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1712068445.closeup-orange.jpg', '2024-04-02 08:34:05', '2024-04-02 08:34:05'),
(2, '1712068662.jpg', '2024-04-02 08:37:42', '2024-04-02 08:37:42'),
(3, '1712068824.jpg', '2024-04-02 08:40:24', '2024-04-02 08:40:24'),
(4, '1712068964.jpg', '2024-04-02 08:42:44', '2024-04-02 08:42:44'),
(5, '1712068975.jpg', '2024-04-02 08:42:55', '2024-04-02 08:42:55'),
(6, '1712071370.jpg', '2024-04-02 09:22:50', '2024-04-02 09:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_measurement_attachments`
--

CREATE TABLE `rmg_measurement_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_measurement_attachments`
--

INSERT INTO `rmg_measurement_attachments` (`id`, `style_id`, `name`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Front', '1710614209.jpg', '2024-03-16 12:36:49', '2024-03-16 12:38:15'),
(2, 1, 'Collar', '1710614233.jpg', '2024-03-16 12:37:13', '2024-03-16 12:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_measurement_sizes`
--

CREATE TABLE `rmg_measurement_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `measurement_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `measurement` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_measurement_sizes`
--

INSERT INTO `rmg_measurement_sizes` (`id`, `style_id`, `measurement_id`, `size_id`, `measurement`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '16', '2024-03-16 11:46:50', '2024-03-16 11:50:03'),
(2, 1, 2, 1, '16', '2024-03-16 11:51:45', '2024-03-16 11:51:45'),
(3, 1, 3, 1, '24', '2024-03-16 11:52:06', '2024-03-16 11:52:06'),
(4, 1, 4, 1, '15', '2024-03-16 11:52:27', '2024-03-16 11:52:27'),
(5, 1, 5, 1, '5', '2024-03-16 11:52:46', '2024-03-16 11:52:46'),
(6, 1, 6, 1, '4.5', '2024-03-16 11:53:15', '2024-03-16 11:53:15'),
(7, 1, 7, 1, '7', '2024-03-16 11:53:37', '2024-03-16 11:53:37'),
(8, 1, 8, 1, '6', '2024-03-16 11:53:57', '2024-03-16 11:53:57'),
(9, 1, 9, 1, '2.25', '2024-03-16 11:54:20', '2024-03-16 11:54:20'),
(10, 1, 10, 1, '0.55', '2024-03-16 11:54:50', '2024-03-16 11:54:50'),
(11, 1, 11, 1, '3.5', '2024-03-16 11:55:23', '2024-03-16 11:55:23'),
(12, 1, 1, 2, '18', '2024-03-16 11:57:05', '2024-03-16 11:57:05'),
(13, 1, 2, 2, '18', '2024-03-16 11:57:16', '2024-03-16 11:57:43'),
(14, 1, 3, 2, '26', '2024-03-16 11:57:33', '2024-03-16 11:57:33'),
(15, 1, 4, 2, '15', '2024-03-16 11:58:49', '2024-03-16 11:58:49'),
(16, 1, 5, 2, '7', '2024-03-16 11:59:18', '2024-03-16 11:59:18'),
(17, 1, 6, 2, '5.5', '2024-03-16 11:59:51', '2024-03-16 11:59:51'),
(18, 1, 7, 2, '8', '2024-03-16 12:00:08', '2024-03-16 12:00:08'),
(19, 1, 8, 2, '6.75', '2024-03-16 12:00:23', '2024-03-16 12:00:23'),
(20, 1, 9, 2, '2.25', '2024-03-16 12:00:34', '2024-03-16 12:00:34'),
(21, 1, 10, 2, '0.75', '2024-03-16 12:01:01', '2024-03-16 12:01:01'),
(22, 1, 11, 2, '4', '2024-03-16 12:01:25', '2024-03-16 12:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_mesurments`
--

CREATE TABLE `rmg_mesurments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tolerance` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_mesurments`
--

INSERT INTO `rmg_mesurments` (`id`, `style_id`, `code`, `name`, `tolerance`, `created_at`, `updated_at`) VALUES
(1, 1, 'A', 'Chest bellow armhole', '0.5', '2024-03-16 10:57:36', '2024-03-16 10:57:36'),
(2, 1, 'B', 'Bottom hem', '0.5', '2024-03-16 10:57:59', '2024-03-16 10:57:59'),
(3, 1, 'C', 'Body length', '1', '2024-03-16 10:58:30', '2024-03-16 11:03:27'),
(4, 1, 'D', 'Across sholder', '0.5', '2024-03-16 10:59:23', '2024-03-16 10:59:23'),
(5, 1, 'E', 'Sleeve length', '0.5', '2024-03-16 10:59:47', '2024-03-16 10:59:47'),
(6, 1, 'F', 'Sleeve opening', '0.25', '2024-03-16 11:00:13', '2024-03-16 11:00:13'),
(7, 1, 'G', 'Arm hole', '0.25', '2024-03-16 11:00:29', '2024-03-16 11:00:29'),
(8, 1, 'H', 'Neck width', '0.25', '2024-03-16 11:00:42', '2024-03-16 11:00:42'),
(9, 1, 'I', 'Neck drop', '0.25', '2024-03-16 11:00:58', '2024-03-16 11:00:58'),
(10, 1, 'J', 'Neck rib high', '0.130', '2024-03-16 11:01:21', '2024-03-16 11:01:21'),
(11, 1, 'K', 'Neck drop (V Neck)', '0.125', '2024-03-16 11:05:17', '2024-03-16 11:05:17');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_migrations`
--

CREATE TABLE `rmg_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_migrations`
--

INSERT INTO `rmg_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_07_050935_create_products_table', 1),
(8, '2024_03_07_072439_create_product_categories_table', 2),
(9, '2024_03_13_082052_create_style_categories_table', 3),
(11, '2024_03_13_082454_create_styles_table', 4),
(12, '2024_03_13_213929_create_style_attachments_table', 5),
(13, '2024_03_14_081031_create_raw_material_categories_table', 6),
(14, '2024_03_14_084253_create_vendors_table', 7),
(16, '2024_03_14_100513_create_raw_materials_table', 8),
(17, '2024_03_14_192559_create_fabrics_table', 9),
(18, '2024_03_16_100436_create_trims_table', 10),
(19, '2024_03_16_103134_create_style_trims_table', 11),
(20, '2024_03_16_110229_create_sizes_table', 12),
(21, '2024_03_16_110303_create_style_sizes_table', 12),
(22, '2024_03_16_110341_create_mesurments_table', 12),
(23, '2024_03_16_170907_create_measurement_sizes_table', 13),
(24, '2024_03_16_180252_create_measurement_attachments_table', 14),
(25, '2024_03_16_185547_create_style_material_quantities_table', 15),
(26, '2024_03_19_184101_create_orders_table', 16),
(27, '2024_03_19_190740_create_order_details_table', 17),
(28, '2024_04_02_125621_create_images_table', 18),
(29, '2024_05_15_190437_create_ware_houses_table', 19),
(30, '2024_05_15_191217_create_purchase_statuses_table', 20),
(31, '2024_05_15_193437_create_purchases_table', 21),
(32, '2024_05_15_195156_create_purchase_details_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `rmg_orders`
--

CREATE TABLE `rmg_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `order_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `remark` varchar(255) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `vat` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_orders`
--

INSERT INTO `rmg_orders` (`id`, `style_id`, `buyer_id`, `order_date`, `delivery_date`, `shipping_address`, `status_id`, `order_total`, `paid_amount`, `remark`, `discount`, `vat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'NA', 1, 0, 0, 'na', 0.00, 0.00, '2024-03-22 15:42:12', '2024-03-22 15:42:12'),
(2, 1, 2, '2024-03-23 00:00:00', '2024-03-30 00:00:00', 'Barishal Sadar', 1, 1260, 750, 'Need First', 0.00, 0.00, '2024-03-23 00:20:14', '2024-03-23 00:20:14'),
(3, 1, 1, '2024-03-23 00:00:00', '2024-03-23 00:00:00', 'NA', 1, 918.75, 918, 'NA', 0.00, 0.00, '2024-03-23 00:35:53', '2024-03-23 00:35:53'),
(4, 3, 6, '2024-04-02 00:00:00', '2024-04-05 00:00:00', 'Mofazzal ar Basha', 1, 517.5, 500, 'Vai joldi', 50.00, 67.50, '2024-04-02 03:18:42', '2024-04-02 03:18:42'),
(5, 2, 2, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'Dhaka, Mirpur', 2, 517.5, 0, 'aa', 50.00, 67.50, '2024-04-03 00:50:48', '2024-05-24 04:29:03'),
(6, 2, 2, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'NA', 4, 517.5, 0, 'NA', 50.00, 67.50, '2024-04-03 00:51:19', '2024-05-24 04:27:08'),
(7, 3, 3, '2024-04-03 00:00:00', '2024-04-03 00:00:00', 'NA', 1, 92, 90, 'NA', 20.00, 12.00, '2024-04-03 00:52:39', '2024-04-03 00:52:39'),
(8, 2, 2, '2024-04-03 00:00:00', '2024-04-03 00:00:00', 'NA', 1, 46, 40, 'NA', 10.00, 6.00, '2024-04-03 00:59:10', '2024-04-03 00:59:10'),
(9, 2, 2, '2024-04-03 00:00:00', '2024-04-03 00:00:00', 'NA', 1, 46, 40, 'NA', 10.00, 6.00, '2024-04-03 00:59:39', '2024-04-03 00:59:39'),
(10, 2, 2, '2024-04-03 00:00:00', '2024-04-03 00:00:00', 'NA', 1, 46, 40, 'NA', 10.00, 6.00, '2024-04-03 01:00:03', '2024-04-03 01:00:03'),
(11, 2, 2, '2024-04-03 00:00:00', '2024-04-03 00:00:00', 'NA', 1, 46, 40, 'NA', 10.00, 6.00, '2024-04-03 01:00:27', '2024-04-03 01:00:27'),
(12, 2, 2, '2024-04-03 00:00:00', '2024-04-03 00:00:00', 'NA', 1, 172.5, 172, 'NA', 50.00, 22.50, '2024-04-03 01:02:18', '2024-04-03 01:02:18'),
(15, 1, 3, '2024-04-16 00:00:00', '2024-04-21 00:00:00', 'NA', 1, 241.5, 241, 'NA', 0.00, 0.00, '2024-04-16 13:31:14', '2024-04-16 13:31:14'),
(16, 1, 1, '2024-04-16 00:00:00', '2024-04-16 00:00:00', 'NA', 1, 210, 200, 'NA', 0.00, 10.00, '2024-04-16 13:39:39', '2024-04-16 13:39:39'),
(17, 1, 1, '2024-04-16 00:00:00', '2024-04-16 00:00:00', 'NA', 1, 210, 200, 'NA', 0.00, 10.00, '2024-04-16 13:41:12', '2024-04-16 13:41:12'),
(18, 1, 1, '2024-04-16 00:00:00', '2024-04-22 00:00:00', 'NA', 1, 157.5, 157, 'NA', 20.00, 7.50, '2024-04-16 13:42:01', '2024-04-16 13:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_order_details`
--

CREATE TABLE `rmg_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `qty` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `vat` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_order_details`
--

INSERT INTO `rmg_order_details` (`id`, `order_id`, `size_id`, `qty`, `price`, `discount`, `vat`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 50.00, 80.00, 0.00, 0.00, '2024-03-22 15:42:12', '2024-03-22 15:42:12'),
(2, 2, 2, 10.00, 120.00, 0.00, 0.00, '2024-03-23 00:20:14', '2024-03-23 00:20:14'),
(3, 3, 2, 5.00, 65.00, 0.00, 0.00, '2024-03-23 00:35:53', '2024-03-23 00:35:53'),
(4, 3, 3, 10.00, 55.00, 0.00, 0.00, '2024-03-23 00:35:53', '2024-03-23 00:35:53'),
(5, 4, 3, 5.00, 100.00, 50.00, 0.00, '2024-04-02 03:18:42', '2024-04-02 03:18:42'),
(6, 5, 3, 5.00, 100.00, 50.00, 0.00, '2024-04-03 00:50:48', '2024-04-03 00:50:48'),
(7, 6, 3, 5.00, 100.00, 50.00, 0.00, '2024-04-03 00:51:19', '2024-04-03 00:51:19'),
(8, 7, 4, 1.00, 100.00, 20.00, 0.00, '2024-04-03 00:52:39', '2024-04-03 00:52:39'),
(9, 8, 2, 1.00, 50.00, 10.00, 0.00, '2024-04-03 00:59:10', '2024-04-03 00:59:10'),
(10, 9, 2, 1.00, 50.00, 10.00, 0.00, '2024-04-03 00:59:39', '2024-04-03 00:59:39'),
(11, 10, 2, 1.00, 50.00, 10.00, 0.00, '2024-04-03 01:00:03', '2024-04-03 01:00:03'),
(12, 11, 2, 1.00, 50.00, 10.00, 0.00, '2024-04-03 01:00:27', '2024-04-03 01:00:27'),
(13, 12, 3, 2.00, 100.00, 50.00, 0.00, '2024-04-03 01:02:18', '2024-04-03 01:02:18'),
(14, 13, 3, 5.00, 100.00, 50.00, 0.00, '2024-04-03 02:03:14', '2024-04-03 02:03:14'),
(15, 14, 5, 5.00, 100.00, 150.00, 0.00, '2024-04-16 06:52:35', '2024-04-16 06:52:35'),
(16, 14, 4, 3.00, 140.00, 50.00, 0.00, '2024-04-16 06:52:35', '2024-04-16 06:52:35'),
(17, 15, 3, 3.00, 80.00, 10.00, 0.00, '2024-04-16 13:31:14', '2024-04-16 13:31:14'),
(18, 16, 3, 5.00, 50.00, 50.00, 0.00, '2024-04-16 13:39:39', '2024-04-16 13:39:39'),
(19, 17, 3, 5.00, 50.00, 50.00, 0.00, '2024-04-16 13:41:12', '2024-04-16 13:41:12'),
(20, 18, 2, 2.00, 85.00, 20.00, 0.00, '2024-04-16 13:42:01', '2024-04-16 13:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_password_resets`
--

CREATE TABLE `rmg_password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rmg_password_reset_tokens`
--

CREATE TABLE `rmg_password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rmg_personal_access_tokens`
--

CREATE TABLE `rmg_personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rmg_products`
--

CREATE TABLE `rmg_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_products`
--

INSERT INTO `rmg_products` (`id`, `name`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Akram', 'bravo', '1709835516.png', 45000, 1, '2024-03-07 12:18:36', '2024-03-08 10:55:57'),
(3, 'Hp Note Book', 'Hp Note Book', '1709836201.png', 52000, 1, '2024-03-07 12:30:01', '2024-03-07 12:30:01'),
(4, 'I Phone 12 pro', 'I Phone 12 pro', '1709920203.jpg', 50000, 2, '2024-03-08 11:50:03', '2024-03-08 11:50:26'),
(7, 'gfsdg', 'dfhgdsfh', '1709923328.jpg', 56000, 1, '2024-03-08 12:42:08', '2024-03-08 12:42:08'),
(8, 'dhfd', 'tryurtur', '1709923376.png', 12000, 3, '2024-03-08 12:42:56', '2024-03-08 12:42:56'),
(10, 'Microlab Spaker', 'Microlab Spaker', '1709926030.jpg', 5000, 3, '2024-03-08 13:27:10', '2024-03-08 13:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_product_categories`
--

CREATE TABLE `rmg_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_product_categories`
--

INSERT INTO `rmg_product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Computers, Tablets & Laptops', NULL, NULL),
(2, 'Mobile Phone', NULL, NULL),
(3, 'Sound & Vision', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmg_purchases`
--

CREATE TABLE `rmg_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `purchase_status_id` int(11) NOT NULL,
  `total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `remark` varchar(255) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `vat` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rmg_purchase_details`
--

CREATE TABLE `rmg_purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `qty` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `vat` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rmg_purchase_statuses`
--

CREATE TABLE `rmg_purchase_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_purchase_statuses`
--

INSERT INTO `rmg_purchase_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ordered', NULL, NULL),
(2, 'Shipping processing', NULL, NULL),
(3, 'Received', NULL, NULL),
(4, 'Canceled', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmg_raw_materials`
--

CREATE TABLE `rmg_raw_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `rm_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `uom_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `photo` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_raw_materials`
--

INSERT INTO `rmg_raw_materials` (`id`, `style_id`, `rm_category_id`, `name`, `description`, `uom_id`, `unit_price`, `photo`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'ST101-T-Brand label', 'Brand and wash care label', 2, 1.7, '1710437690.jpg', 2, '2024-03-14 11:34:50', '2024-03-14 11:59:49'),
(2, 1, 2, 'ST101-T-Purple thread', 'Color Purple', 6, 4, '1710439755.png', 1, '2024-03-14 12:02:34', '2024-03-14 12:09:15'),
(3, 1, 2, 'ST101-T-Orange thread', 'Color Orange', 6, 4, '1710439533.png', 1, '2024-03-14 12:05:33', '2024-03-14 12:05:33'),
(4, 1, 2, 'ST101-T-Poly bag', 'Size 5*10', 2, 0.5, '1710440044.jpg', 2, '2024-03-14 12:14:04', '2024-03-16 13:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_raw_material_categories`
--

CREATE TABLE `rmg_raw_material_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_raw_material_categories`
--

INSERT INTO `rmg_raw_material_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fabric', '2024-03-14 02:34:09', '2024-03-14 02:35:11'),
(2, 'Trim', '2024-03-14 02:35:22', '2024-03-14 02:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_sizes`
--

CREATE TABLE `rmg_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_sizes`
--

INSERT INTO `rmg_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'XXS', '2024-03-16 05:17:48', '2024-03-16 05:18:04'),
(2, 'XS', '2024-03-16 05:18:24', '2024-03-16 05:18:24'),
(3, 'S', '2024-03-16 05:18:31', '2024-03-16 05:18:31'),
(4, 'M', '2024-03-16 05:18:34', '2024-03-16 05:18:34'),
(5, 'L', '2024-03-16 05:18:37', '2024-03-16 05:18:37'),
(6, 'XL', '2024-03-16 05:18:47', '2024-03-16 05:18:47'),
(7, 'XXL', '2024-03-16 05:18:51', '2024-03-16 05:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_status`
--

CREATE TABLE `rmg_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rmg_status`
--

INSERT INTO `rmg_status` (`id`, `name`) VALUES
(1, 'Processing'),
(2, 'Shifted'),
(3, 'Delivered'),
(4, 'Invoiced');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_styles`
--

CREATE TABLE `rmg_styles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `style_category_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_styles`
--

INSERT INTO `rmg_styles` (`id`, `code`, `style_category_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'ST101', 1, 'Short sleeve shirt', '2024-03-13 15:33:05', '2024-03-13 15:35:42'),
(2, 'ST102', 2, 'Female dress', '2024-03-13 15:33:57', '2024-03-13 15:33:57'),
(3, 'ST103', 4, 'Brand and wash care label', '2024-03-29 15:19:53', '2024-03-29 15:19:53'),
(4, 'ST105', 6, 'OPPO F21 Pro', '2024-03-29 15:55:46', '2024-04-01 08:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_style_attachments`
--

CREATE TABLE `rmg_style_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `style_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_style_attachments`
--

INSERT INTO `rmg_style_attachments` (`id`, `attachment`, `style_id`, `created_at`, `updated_at`) VALUES
(1, '1710397749.jpg', 1, '2024-03-14 00:29:09', '2024-03-14 02:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_style_categories`
--

CREATE TABLE `rmg_style_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_style_categories`
--

INSERT INTO `rmg_style_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', '2024-03-13 13:54:28', '2024-03-13 14:13:13'),
(2, 'Dress', '2024-03-13 13:58:46', '2024-03-13 13:58:46'),
(3, 'Trouser', '2024-03-13 13:59:07', '2024-03-13 13:59:07'),
(4, 'Skirts', '2024-03-13 13:59:22', '2024-03-13 13:59:22'),
(6, 'Pant', '2024-03-13 14:17:31', '2024-03-13 14:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_style_material_quantities`
--

CREATE TABLE `rmg_style_material_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `raw_material_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_style_material_quantities`
--

INSERT INTO `rmg_style_material_quantities` (`id`, `style_id`, `raw_material_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1.25, '2024-03-16 13:36:47', '2024-03-16 13:38:34'),
(2, 1, 1, 2, 1.75, '2024-03-16 13:39:43', '2024-03-16 13:39:43'),
(3, 1, 1, 3, 2, '2024-03-16 13:44:55', '2024-03-16 13:44:55'),
(4, 1, 2, 1, 0.25, '2024-03-16 13:46:19', '2024-03-16 13:46:19'),
(5, 1, 2, 2, 0.75, '2024-03-16 13:46:27', '2024-03-16 13:46:56'),
(6, 1, 2, 3, 1, '2024-03-16 13:46:39', '2024-03-16 13:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_style_sizes`
--

CREATE TABLE `rmg_style_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_style_sizes`
--

INSERT INTO `rmg_style_sizes` (`id`, `style_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-03-16 08:38:39', '2024-03-16 08:39:50'),
(2, 1, 3, '2024-03-16 08:38:53', '2024-03-16 08:38:53'),
(3, 1, 4, '2024-03-16 08:38:58', '2024-03-16 08:38:58'),
(4, 1, 5, '2024-03-16 08:39:02', '2024-03-16 08:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_style_trims`
--

CREATE TABLE `rmg_style_trims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `style_id` int(11) NOT NULL,
  `trim_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_style_trims`
--

INSERT INTO `rmg_style_trims` (`id`, `style_id`, `trim_id`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'Brand and wash care label', '1710586494.jpg', '2024-03-16 04:54:54', '2024-03-16 04:55:43'),
(2, 1, 1, 'Purple thread', '1710586603.png', '2024-03-16 04:56:43', '2024-03-16 04:56:43'),
(3, 1, 1, 'Orange thread', '1710586666.png', '2024-03-16 04:57:46', '2024-03-16 04:57:46'),
(4, 1, 2, 'Poly bag', '1710586739.jpg', '2024-03-16 04:58:59', '2024-03-16 04:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_trims`
--

CREATE TABLE `rmg_trims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_trims`
--

INSERT INTO `rmg_trims` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Thread', '2024-03-16 04:23:01', '2024-03-16 04:25:39'),
(2, 'Accessory', '2024-03-16 04:23:16', '2024-03-16 04:23:16'),
(3, 'Button', '2024-03-16 04:23:29', '2024-03-16 04:23:29'),
(4, 'Zipper', '2024-03-16 04:23:56', '2024-03-16 04:23:56'),
(5, 'Elastic', '2024-03-16 04:24:04', '2024-03-16 04:24:04'),
(6, 'Hook', '2024-03-16 04:24:10', '2024-03-16 04:24:10'),
(7, 'Lace', '2024-03-16 04:24:18', '2024-03-16 04:24:18'),
(8, 'Label', '2024-03-16 04:24:41', '2024-03-16 04:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_uoms`
--

CREATE TABLE `rmg_uoms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rmg_uoms`
--

INSERT INTO `rmg_uoms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mitter', NULL, '2024-03-14 04:00:14'),
(2, 'Piece', NULL, '2024-03-14 04:00:49'),
(3, 'Box', NULL, '2024-03-14 04:01:23'),
(4, 'Roll', NULL, '2024-03-14 04:01:38'),
(6, 'Cone', '2024-03-14 04:01:56', '2024-03-14 04:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_users`
--

CREATE TABLE `rmg_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_users`
--

INSERT INTO `rmg_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akram', 'akram@gmail.com', NULL, '$2y$12$v/30ANJo4SRa9XKpOz2MMOKnotKPQS2g8QuMPOqARtoZ49KjM.TMK', NULL, '2024-03-07 01:26:22', '2024-03-07 01:26:22'),
(2, 'Hasan', 'hasan@gmail.com', NULL, '$2y$12$buBpEJV7sAjw/zj5suhFC.Jc2O1tAu92KuCmhJoXc9Fr6bRHygULC', NULL, '2024-05-11 12:48:35', '2024-05-11 12:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_vendors`
--

CREATE TABLE `rmg_vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organization` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_vendors`
--

INSERT INTO `rmg_vendors` (`id`, `organization`, `contact_person`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Akij Textile Mills Ltd.', 'Mufazzel Hossain', '01518303867', 'mufazzel@gmail.com', 'Mohakhali, Dhaka-1213', '2024-03-14 03:24:47', '2024-03-14 03:25:17'),
(2, 'ANZ International.', 'Masum Billah', '01727322186', 'masum@gmail.com', 'Tongi, Gazipur, Dhaka, Bangladesh', '2024-03-14 03:28:11', '2024-03-14 03:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `rmg_ware_houses`
--

CREATE TABLE `rmg_ware_houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rmg_ware_houses`
--

INSERT INTO `rmg_ware_houses` (`id`, `name`, `city`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Main', 'Dhaka', '01724542598', NULL, NULL),
(2, 'Joydevpur Warehouse', 'Gazipur', '01761436927', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rmg_buyers`
--
ALTER TABLE `rmg_buyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_fabrics`
--
ALTER TABLE `rmg_fabrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_failed_jobs`
--
ALTER TABLE `rmg_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `rmg_images`
--
ALTER TABLE `rmg_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_measurement_attachments`
--
ALTER TABLE `rmg_measurement_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_measurement_sizes`
--
ALTER TABLE `rmg_measurement_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_mesurments`
--
ALTER TABLE `rmg_mesurments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_migrations`
--
ALTER TABLE `rmg_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_orders`
--
ALTER TABLE `rmg_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_order_details`
--
ALTER TABLE `rmg_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_password_resets`
--
ALTER TABLE `rmg_password_resets`
  ADD KEY `core_password_resets_email_index` (`email`);

--
-- Indexes for table `rmg_password_reset_tokens`
--
ALTER TABLE `rmg_password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rmg_personal_access_tokens`
--
ALTER TABLE `rmg_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_personal_access_tokens_token_unique` (`token`),
  ADD KEY `core_personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rmg_products`
--
ALTER TABLE `rmg_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_product_categories`
--
ALTER TABLE `rmg_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_purchases`
--
ALTER TABLE `rmg_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_purchase_details`
--
ALTER TABLE `rmg_purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_purchase_statuses`
--
ALTER TABLE `rmg_purchase_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_raw_materials`
--
ALTER TABLE `rmg_raw_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_raw_material_categories`
--
ALTER TABLE `rmg_raw_material_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_sizes`
--
ALTER TABLE `rmg_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_status`
--
ALTER TABLE `rmg_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_styles`
--
ALTER TABLE `rmg_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_style_attachments`
--
ALTER TABLE `rmg_style_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_style_categories`
--
ALTER TABLE `rmg_style_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_style_material_quantities`
--
ALTER TABLE `rmg_style_material_quantities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_style_sizes`
--
ALTER TABLE `rmg_style_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_style_trims`
--
ALTER TABLE `rmg_style_trims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_trims`
--
ALTER TABLE `rmg_trims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_uoms`
--
ALTER TABLE `rmg_uoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_users`
--
ALTER TABLE `rmg_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_users_email_unique` (`email`);

--
-- Indexes for table `rmg_vendors`
--
ALTER TABLE `rmg_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmg_ware_houses`
--
ALTER TABLE `rmg_ware_houses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rmg_buyers`
--
ALTER TABLE `rmg_buyers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rmg_fabrics`
--
ALTER TABLE `rmg_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rmg_failed_jobs`
--
ALTER TABLE `rmg_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmg_images`
--
ALTER TABLE `rmg_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rmg_measurement_attachments`
--
ALTER TABLE `rmg_measurement_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rmg_measurement_sizes`
--
ALTER TABLE `rmg_measurement_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `rmg_mesurments`
--
ALTER TABLE `rmg_mesurments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rmg_migrations`
--
ALTER TABLE `rmg_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `rmg_orders`
--
ALTER TABLE `rmg_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rmg_order_details`
--
ALTER TABLE `rmg_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rmg_personal_access_tokens`
--
ALTER TABLE `rmg_personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmg_products`
--
ALTER TABLE `rmg_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rmg_product_categories`
--
ALTER TABLE `rmg_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmg_purchases`
--
ALTER TABLE `rmg_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmg_purchase_details`
--
ALTER TABLE `rmg_purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmg_purchase_statuses`
--
ALTER TABLE `rmg_purchase_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmg_raw_materials`
--
ALTER TABLE `rmg_raw_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmg_raw_material_categories`
--
ALTER TABLE `rmg_raw_material_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rmg_sizes`
--
ALTER TABLE `rmg_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rmg_status`
--
ALTER TABLE `rmg_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmg_styles`
--
ALTER TABLE `rmg_styles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rmg_style_attachments`
--
ALTER TABLE `rmg_style_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rmg_style_categories`
--
ALTER TABLE `rmg_style_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rmg_style_material_quantities`
--
ALTER TABLE `rmg_style_material_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rmg_style_sizes`
--
ALTER TABLE `rmg_style_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmg_style_trims`
--
ALTER TABLE `rmg_style_trims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmg_trims`
--
ALTER TABLE `rmg_trims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rmg_uoms`
--
ALTER TABLE `rmg_uoms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rmg_users`
--
ALTER TABLE `rmg_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rmg_vendors`
--
ALTER TABLE `rmg_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rmg_ware_houses`
--
ALTER TABLE `rmg_ware_houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
