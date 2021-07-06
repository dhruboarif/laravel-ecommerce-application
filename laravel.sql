-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 06, 2021 at 06:39 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arif', 'ariful48@gmail.com', '$2y$10$eAxmjx/4d8TdHdkPMUD78OSjlhTMtu8yxemuzvbXRdo4ScmOHw/Zq', NULL, NULL, NULL),
(2, 'faruk', 'faruk48@gmail.com', '$2y$10$YrhrfVOIGleaLQ88qB/yzu0rdLU7Z.opgSZyt2Z.aLZsbdikYlwL.', NULL, NULL, NULL),
(3, 'Arshan Ahmad', 'arshanahmad@gmail.com', '$2y$10$m3D/X3RZhWurn2aQNWADtu6RMQWFBlDXFCl8JQotPrdqQevopMD4e', NULL, '2021-05-08 09:01:53', '2021-05-08 09:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_row_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_short_description` text COLLATE utf8_unicode_ci,
  `category_long_description` longtext COLLATE utf8_unicode_ci,
  `parent_id` int(11) DEFAULT NULL,
  `has_child` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) DEFAULT NULL,
  `count_product` int(11) DEFAULT NULL,
  `category_sort_order` int(11) DEFAULT NULL,
  `meta_key` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_row_id`, `category_name`, `category_slug`, `category_image`, `category_short_description`, `category_long_description`, `parent_id`, `has_child`, `is_featured`, `level`, `count_product`, `category_sort_order`, `meta_key`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Kitchen', NULL, '1621662874_kitchen.png', 'kitchen description', 'kitchen description', 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-05-21 23:54:34', '2021-05-21 23:54:34'),
(3, 'Fruits & Vegetables', NULL, NULL, 'Fruits & Vegetables description', 'Fruits & Vegetables description', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 00:00:17', '2021-05-22 00:00:17'),
(4, 'Staples', NULL, NULL, 'Staples description', 'Staples description', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 00:00:58', '2021-05-22 00:00:58'),
(5, 'Personal Care', NULL, '1621663418_personal_care.png', 'personal care description', 'personal care description', 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-05-22 00:03:38', '2021-05-22 00:03:38'),
(6, 'Ayurvedic', NULL, NULL, 'Ayurvedic description', 'Ayurvedic description', 5, 1, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 00:04:09', '2021-05-22 00:04:09'),
(7, 'Baby Care', NULL, NULL, 'Baby Care description', 'Baby Care description', 5, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 00:07:20', '2021-05-22 00:07:20'),
(8, 'Household', NULL, '1621663701_households.png', 'household description', 'household description', 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-05-22 00:08:21', '2021-05-22 00:08:21'),
(9, 'Cleaning Accessories', NULL, NULL, 'Cleaning Accessories desc', 'Cleaning Accessories desc', 8, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 00:08:51', '2021-05-22 00:08:51'),
(10, 'CookWear', NULL, NULL, 'CookWear desc', 'CookWear desc', 8, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 00:09:13', '2021-05-22 00:09:13'),
(11, 'Branded Food', NULL, NULL, 'brandon desc', 'brandon desc', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 01:03:10', '2021-05-22 01:03:10'),
(12, 'Breakfast & Cereal', NULL, NULL, 'Breakfast descc', 'Breakfast descc', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 01:03:35', '2021-05-22 01:03:35'),
(13, 'Snacks', NULL, NULL, 'snacks description', 'snacks description', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 02:58:40', '2021-05-22 02:58:40'),
(14, 'Spices', NULL, NULL, 'spices desc', 'spices desc', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 02:59:51', '2021-05-22 02:59:51'),
(15, 'Hair Care', NULL, NULL, NULL, NULL, 5, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 05:33:14', '2021-05-22 05:33:14'),
(16, 'Detergents', NULL, NULL, NULL, NULL, 8, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-05-22 07:29:19', '2021-05-22 07:29:19'),
(17, 'makeup cleaner', NULL, '1622716965_makeup cleanser.jpg', NULL, NULL, 6, NULL, 0, 2, NULL, NULL, NULL, NULL, '2021-06-03 04:42:46', '2021-06-03 04:42:46'),
(18, 'makeup cleaner', NULL, '1622717041_makeup cleanser.jpg', NULL, NULL, 6, NULL, 0, 2, NULL, NULL, NULL, NULL, '2021-06-03 04:44:02', '2021-06-03 04:44:02'),
(23, 'Cooking', NULL, '1622823192_cooking.jpg', 'cooking', NULL, 0, 1, 0, 0, NULL, NULL, NULL, NULL, '2021-06-04 10:13:12', '2021-06-04 10:13:12'),
(25, 'Flour', NULL, '1622823320_Flour.jpg', NULL, NULL, 23, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-06-04 10:15:20', '2021-06-04 10:15:20'),
(26, 'Rice', NULL, '1622823709_rice.jpg', NULL, NULL, 23, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-06-04 10:21:49', '2021-06-04 10:21:49'),
(27, 'Meat', NULL, '1624804621_meat.jpg', 'Meat', 'Meat Cow and chicken', 1, NULL, 0, 1, NULL, NULL, NULL, NULL, '2021-06-27 08:37:02', '2021-06-27 08:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `name`, `email`, `contact_number`, `message`, `created_at`, `updated_at`) VALUES
(1, 'afaf', 'afaf@ccoc.com', 'faf', 'afaf', '2021-04-09 02:51:59', '2021-04-09 02:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2021_04_08_121849_create_contact_info_table', 1),
(13, '2021_04_09_133954_create_admins_table', 2),
(14, '2021_05_08_141530_create_permission_tables', 3),
(15, '2021_05_09_100103_create_products_table', 4),
(16, '2021_06_09_082652_testform_table', 5),
(19, '2021_06_11_130231_create_students_table', 6),
(21, '2021_06_11_135130_create_programs_table', 7),
(22, '2021_03_30_071223_create_admins_table', 8),
(23, '2021_06_22_180641_create_cars_table', 9),
(24, '2021_06_24_050207_create_posts_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Admin', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_row_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_price` float(10,2) DEFAULT NULL,
  `order_details` text,
  `payment_details` text,
  `order_status` tinyint(1) DEFAULT NULL,
  `shiping_address` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_row_id`, `user_id`, `total_price`, `order_details`, `payment_details`, `order_status`, `shiping_address`, `created_at`, `updated_at`) VALUES
(71, NULL, 1110.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-04 13:31:26\",\"updated_at\":null,\"temp_order_row_id\":57,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":450,\"product_qty\":2,\"product_total_price\":900,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-04 13:31:27\",\"updated_at\":null,\"temp_order_row_id\":58,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"Visa\",\"card_number\":\"646\",\"cvv\":\"Consectetur ratione\"}', NULL, '{\"name\":\"Winter\",\"last_name\":\"Castillo\",\"address\":\"Totam in asperiores\",\"city\":\"Laboriosam consequa\",\"customer_area\":\"sylhet\",\"zip_code\":\"33310\",\"phone_number\":\"+1 (524) 965-4675\",\"email_address\":\"jibiseza@mailinator.com\",\"payment_type\":\"5\"}', '2021-07-04 13:31:45', '2021-07-04 13:31:45'),
(70, NULL, 1110.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-04 13:31:26\",\"updated_at\":null,\"temp_order_row_id\":57,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":450,\"product_qty\":2,\"product_total_price\":900,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-04 13:31:27\",\"updated_at\":null,\"temp_order_row_id\":58,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"Visa\",\"card_number\":\"646\",\"cvv\":\"Consectetur ratione\"}', NULL, '{\"name\":\"Winter\",\"last_name\":\"Castillo\",\"address\":\"Totam in asperiores\",\"city\":\"Laboriosam consequa\",\"customer_area\":\"sylhet\",\"zip_code\":\"33310\",\"phone_number\":\"+1 (524) 965-4675\",\"email_address\":\"jibiseza@mailinator.com\",\"payment_type\":\"5\"}', '2021-07-04 13:31:45', '2021-07-04 13:31:45'),
(22, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-02 05:52:48\",\"updated_at\":null,\"temp_order_row_id\":18,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-02 05:52:49\",\"updated_at\":null,\"temp_order_row_id\":19,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"Visa\",\"card_number\":\"530\",\"cvv\":\"Autem a voluptatem v\"}', NULL, '{\"name\":\"Justin\",\"last_name\":\"Morse\",\"address\":\"Quod eos est ut cum\",\"city\":\"Odit facilis ullamco\",\"customer_area\":\"barishal\",\"zip_code\":\"23694\",\"phone_number\":\"+1 (995) 908-2687\",\"email_address\":\"vycocip@mailinator.com\",\"payment_type\":\"5\"}', '2021-07-02 06:40:08', '2021-07-02 06:40:08'),
(28, NULL, 1410.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-03 02:58:35\",\"updated_at\":null,\"temp_order_row_id\":39,\"tracking_number\":\"2vT8R6oU4dta5hy5jPGM5y7AkkFWy0OEgBoiRik9\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-03 02:58:36\",\"updated_at\":null,\"temp_order_row_id\":40,\"tracking_number\":\"2vT8R6oU4dta5hy5jPGM5y7AkkFWy0OEgBoiRik9\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0},{\"product_row_id\":10,\"product_name\":\"Mutton\",\"product_base_price\":800,\"product_offer_price\":750,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"235235\",\"product_image\":\"1624810158_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Mutton\",\"product_long_description\":\"Mutton\",\"created_at\":\"2021-07-03 02:58:36\",\"updated_at\":null,\"temp_order_row_id\":41,\"tracking_number\":\"2vT8R6oU4dta5hy5jPGM5y7AkkFWy0OEgBoiRik9\",\"product_price\":750,\"product_qty\":1,\"product_total_price\":750,\"order_status\":0}]', '{\"payment_method\":\"Visa\",\"card_number\":\"298520397509275\",\"cvv\":\"4523\"}', NULL, '{\"name\":\"Faria\",\"last_name\":\"Anjum\",\"address\":\"Doloribus eos duis u\",\"city\":\"Consequat Sit neque\",\"customer_area\":\"chattagram\",\"zip_code\":\"15295\",\"phone_number\":\"+1 (264) 618-3637\",\"email_address\":\"pepakany@mailinator.com\",\"payment_type\":\"5\"}', '2021-07-03 03:37:01', '2021-07-03 03:37:01'),
(27, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-02 05:52:48\",\"updated_at\":null,\"temp_order_row_id\":18,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-02 05:52:49\",\"updated_at\":null,\"temp_order_row_id\":19,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', 'Cash on delivery', NULL, '{\"name\":\"Justin\",\"last_name\":\"Morse\",\"address\":\"Quod eos est ut cum\",\"city\":\"Odit facilis ullamco\",\"customer_area\":\"barishal\",\"zip_code\":\"23694\",\"phone_number\":\"+1 (995) 908-2687\",\"email_address\":\"vycocip@mailinator.com\",\"payment_type\":\"1\"}', '2021-07-02 06:41:47', '2021-07-02 06:41:47'),
(25, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-02 05:52:48\",\"updated_at\":null,\"temp_order_row_id\":18,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-02 05:52:49\",\"updated_at\":null,\"temp_order_row_id\":19,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"bKash\",\"txn_number\":\"xe3535wt53\"}', NULL, '{\"name\":\"Justin\",\"last_name\":\"Morse\",\"address\":\"Quod eos est ut cum\",\"city\":\"Odit facilis ullamco\",\"customer_area\":\"barishal\",\"zip_code\":\"23694\",\"phone_number\":\"+1 (995) 908-2687\",\"email_address\":\"vycocip@mailinator.com\",\"payment_type\":\"3\"}', '2021-07-02 06:40:58', '2021-07-02 06:40:58'),
(26, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-02 05:52:48\",\"updated_at\":null,\"temp_order_row_id\":18,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-02 05:52:49\",\"updated_at\":null,\"temp_order_row_id\":19,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', 'Cash on delivery', NULL, '{\"name\":\"Justin\",\"last_name\":\"Morse\",\"address\":\"Quod eos est ut cum\",\"city\":\"Odit facilis ullamco\",\"customer_area\":\"barishal\",\"zip_code\":\"23694\",\"phone_number\":\"+1 (995) 908-2687\",\"email_address\":\"vycocip@mailinator.com\",\"payment_type\":\"1\"}', '2021-07-02 06:41:47', '2021-07-02 06:41:47'),
(24, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-02 05:52:48\",\"updated_at\":null,\"temp_order_row_id\":18,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-02 05:52:49\",\"updated_at\":null,\"temp_order_row_id\":19,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"bKash\",\"txn_number\":\"xe3535wt53\"}', NULL, '{\"name\":\"Justin\",\"last_name\":\"Morse\",\"address\":\"Quod eos est ut cum\",\"city\":\"Odit facilis ullamco\",\"customer_area\":\"barishal\",\"zip_code\":\"23694\",\"phone_number\":\"+1 (995) 908-2687\",\"email_address\":\"vycocip@mailinator.com\",\"payment_type\":\"3\"}', '2021-07-02 06:40:58', '2021-07-02 06:40:58'),
(23, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-02 05:52:48\",\"updated_at\":null,\"temp_order_row_id\":18,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-02 05:52:49\",\"updated_at\":null,\"temp_order_row_id\":19,\"tracking_number\":\"YsXNXzOcIGd5N34E7y00NqwM7o3B7QZYrMcd4Eq8\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"Visa\",\"card_number\":\"530\",\"cvv\":\"Autem a voluptatem v\"}', NULL, '{\"name\":\"Justin\",\"last_name\":\"Morse\",\"address\":\"Quod eos est ut cum\",\"city\":\"Odit facilis ullamco\",\"customer_area\":\"barishal\",\"zip_code\":\"23694\",\"phone_number\":\"+1 (995) 908-2687\",\"email_address\":\"vycocip@mailinator.com\",\"payment_type\":\"5\"}', '2021-07-02 06:40:08', '2021-07-02 06:40:08'),
(49, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-03 16:15:13\",\"updated_at\":null,\"temp_order_row_id\":45,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-03 16:15:14\",\"updated_at\":null,\"temp_order_row_id\":46,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"bKash\",\"txn_number\":\"53535afaf\"}', NULL, '{\"name\":\"Miriam\",\"last_name\":\"Cantrell\",\"address\":\"Corporis dignissimos\",\"city\":\"Est est rem odit lau\",\"customer_area\":\"sylhet\",\"zip_code\":\"11339\",\"phone_number\":\"+1 (308) 474-5252\",\"email_address\":\"wajugoben@mailinator.com\",\"payment_type\":\"3\"}', '2021-07-03 16:15:31', '2021-07-03 16:15:31'),
(47, NULL, 210.00, '[{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-03 16:01:18\",\"updated_at\":null,\"temp_order_row_id\":44,\"tracking_number\":\"ryXb2fAEGkxB874vWh4ozBAWweo81L9FeD5Uoabb\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', 'Cash on delivery', NULL, '{\"name\":\"faf\",\"last_name\":\"asfasfaf\",\"address\":\"afafaf\",\"city\":\"afaf\",\"customer_area\":\"chattagram\",\"zip_code\":\"1212\",\"phone_number\":\"01824825210\",\"email_address\":\"faf\",\"payment_type\":\"1\"}', '2021-07-03 16:01:37', '2021-07-03 16:01:37'),
(50, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-03 16:15:13\",\"updated_at\":null,\"temp_order_row_id\":45,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-03 16:15:14\",\"updated_at\":null,\"temp_order_row_id\":46,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"bKash\",\"txn_number\":\"53535afaf\"}', NULL, '{\"name\":\"Miriam\",\"last_name\":\"Cantrell\",\"address\":\"Corporis dignissimos\",\"city\":\"Est est rem odit lau\",\"customer_area\":\"sylhet\",\"zip_code\":\"11339\",\"phone_number\":\"+1 (308) 474-5252\",\"email_address\":\"wajugoben@mailinator.com\",\"payment_type\":\"3\"}', '2021-07-03 16:15:31', '2021-07-03 16:15:31'),
(46, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-03 10:11:07\",\"updated_at\":null,\"temp_order_row_id\":42,\"tracking_number\":\"EW3GipVp7Diaqpyo1wTXJgdRvQTgDM6VHG1ggHR3\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-03 10:11:08\",\"updated_at\":null,\"temp_order_row_id\":43,\"tracking_number\":\"EW3GipVp7Diaqpyo1wTXJgdRvQTgDM6VHG1ggHR3\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"bKash\",\"txn_number\":\"afafr3535\"}', NULL, '{\"name\":\"Signe\",\"last_name\":\"Wilkinson\",\"address\":\"Molestias maxime cor\",\"city\":\"Animi aut doloremqu\",\"customer_area\":\"chattagram\",\"zip_code\":\"65929\",\"phone_number\":\"+1 (144) 886-6825\",\"email_address\":\"devipa@mailinator.com\",\"payment_type\":\"3\"}', '2021-07-03 10:45:56', '2021-07-03 10:45:56'),
(69, NULL, 1110.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-04 13:23:31\",\"updated_at\":null,\"temp_order_row_id\":55,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":450,\"product_qty\":2,\"product_total_price\":900,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-04 13:23:31\",\"updated_at\":null,\"temp_order_row_id\":56,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', 'Cash on delivery', NULL, '{\"name\":\"Malik\",\"last_name\":\"Daniels\",\"address\":\"Facilis aut voluptat\",\"city\":\"Non quis corporis su\",\"customer_area\":\"rajshahi\",\"zip_code\":\"50480\",\"phone_number\":\"+1 (787) 848-9764\",\"email_address\":\"wyporiz@mailinator.com\",\"payment_type\":\"1\"}', '2021-07-04 13:23:42', '2021-07-04 13:23:42'),
(68, NULL, 1110.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-04 13:21:16\",\"updated_at\":null,\"temp_order_row_id\":53,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":450,\"product_qty\":2,\"product_total_price\":900,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-04 13:21:17\",\"updated_at\":null,\"temp_order_row_id\":54,\"tracking_number\":\"nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', '{\"payment_method\":\"Visa\",\"card_number\":\"asfaf\",\"cvv\":\"afaf\"}', NULL, '{\"name\":\"Jasper\",\"last_name\":\"Mosley\",\"address\":\"Harum qui sed ipsum\",\"city\":\"Adipisicing consequa\",\"customer_area\":\"khulna\",\"zip_code\":\"23390\",\"phone_number\":\"+1 (491) 873-9564\",\"email_address\":\"nytikuvy@mailinator.com\",\"payment_type\":\"5\"}', '2021-07-04 13:21:56', '2021-07-04 13:21:56'),
(66, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-03 16:15:13\",\"updated_at\":null,\"temp_order_row_id\":45,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-03 16:15:14\",\"updated_at\":null,\"temp_order_row_id\":46,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', 'Cash on delivery', NULL, '{\"name\":\"Ulla\",\"last_name\":\"Turner\",\"address\":\"Incidunt ut officia\",\"city\":\"Facere quod molestia\",\"customer_area\":\"khulna\",\"zip_code\":\"10694\",\"phone_number\":\"+1 (911) 963-2326\",\"email_address\":\"sohijihevy@mailinator.com\",\"payment_type\":\"1\"}', '2021-07-03 17:32:07', '2021-07-03 17:32:07'),
(67, NULL, 660.00, '[{\"product_row_id\":8,\"product_name\":\"Cow Meat\",\"product_base_price\":500,\"product_offer_price\":450,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"434424\",\"product_image\":\"1624804845_meat.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Cow Meat\",\"product_long_description\":\"Cow Meat\",\"created_at\":\"2021-07-03 16:15:13\",\"updated_at\":null,\"temp_order_row_id\":45,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":450,\"product_qty\":1,\"product_total_price\":450,\"order_status\":0},{\"product_row_id\":9,\"product_name\":\"Chicken\",\"product_base_price\":170,\"product_offer_price\":150,\"product_height\":\"1\",\"product_width\":null,\"product_weight\":null,\"category_row_id\":27,\"product_sku\":\"3453535\",\"product_image\":\"1624805022_Chicken.jpg\",\"is_featured\":0,\"is_latest\":0,\"product_short_description\":\"Chicken\",\"product_long_description\":\"Chicken\",\"created_at\":\"2021-07-03 16:15:14\",\"updated_at\":null,\"temp_order_row_id\":46,\"tracking_number\":\"Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz\",\"product_price\":150,\"product_qty\":1,\"product_total_price\":150,\"order_status\":0}]', 'Cash on delivery', NULL, '{\"name\":\"Ulla\",\"last_name\":\"Turner\",\"address\":\"Incidunt ut officia\",\"city\":\"Facere quod molestia\",\"customer_area\":\"khulna\",\"zip_code\":\"10694\",\"phone_number\":\"+1 (911) 963-2326\",\"email_address\":\"sohijihevy@mailinator.com\",\"payment_type\":\"1\"}', '2021-07-03 17:32:07', '2021-07-03 17:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'admin', '2021-05-08 08:50:05', '2021-05-08 08:50:05'),
(2, 'role-create', 'admin', '2021-05-08 08:50:05', '2021-05-08 08:50:05'),
(3, 'role-edit', 'admin', '2021-05-08 08:50:05', '2021-05-08 08:50:05'),
(4, 'role-delete', 'admin', '2021-05-08 08:50:05', '2021-05-08 08:50:05'),
(5, 'category-list', 'admin', '2021-05-08 08:50:05', '2021-05-08 08:50:05'),
(6, 'category-create', 'admin', '2021-05-08 08:50:05', '2021-05-08 08:50:05'),
(7, 'category-edit', 'admin', '2021-05-08 08:50:05', '2021-05-08 08:50:05'),
(8, 'category-delete', 'admin', '2021-05-08 08:50:06', '2021-05-08 08:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_row_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_base_price` float(8,2) DEFAULT NULL,
  `product_offer_price` float(8,2) DEFAULT NULL,
  `product_height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_width` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_weight` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_row_id` int(11) NOT NULL,
  `product_sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_latest` tinyint(1) NOT NULL DEFAULT '0',
  `product_short_description` text COLLATE utf8_unicode_ci,
  `product_long_description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_row_id`, `product_name`, `product_base_price`, `product_offer_price`, `product_height`, `product_width`, `product_weight`, `category_row_id`, `product_sku`, `product_image`, `is_featured`, `is_latest`, `product_short_description`, `product_long_description`, `created_at`, `updated_at`) VALUES
(2, 'Teer Whole  Wheat Atta', 88.00, 85.00, NULL, NULL, '2', 19, 'KC-0001', '1622228503_teer_flour.jpg', 0, 0, 'whole wheat', 'whole wheat', '2021-05-28 13:01:43', '2021-05-28 13:01:43'),
(3, 'Bashundhara Brown Atta', 42.00, 40.00, NULL, NULL, '1', 19, 'KC-0002', '1622229453_bashundhara-brown-atta-1-kg.jpg', 0, 0, NULL, NULL, '2021-05-28 13:17:33', '2021-05-28 13:17:33'),
(4, 'Chashi Aromatic Chinigura Rice', 250.00, NULL, NULL, NULL, '2', 20, 'KC-0003', '1622229707_chashi-aromatic-chinigura-rice-2-kg.jpg', 0, 0, 'Chashi Aromatic Chinigura Rice', 'Chashi Aromatic Chinigura Rice', '2021-05-28 13:21:47', '2021-05-28 13:21:47'),
(5, 'Pran Nazirshail Rice', 405.00, 390.00, NULL, NULL, '5', 20, 'KC-0004', '1622230056_pran-nazirshail-rice-5-kg.jpg', 1, 0, 'Pran Nazirshail Rice', 'Pran Nazirshail Rice', '2021-05-28 13:27:36', '2021-05-28 13:27:36'),
(6, 'Dylan Knowles', 95.00, 937.00, 'Nisi id quaerat lab', 'Expedita eos cumque', 'Similique commodo ve', 25, 'Blanditiis voluptate', '1624725627_aaaaaaaaatttttttt.jpg', 0, 0, 'Voluptatem Quam arc', 'Laborum In lorem id', '2021-06-26 10:40:27', '2021-06-26 10:40:27'),
(7, 'Test-2', 420.00, 69.00, 'Consequuntur ipsa q', 'Consequatur Commodo', 'Rem quia sint harum', 23, 'Dolorum quia labore', '1624726222_7up.png', 0, 0, 'Perspiciatis aut as', 'Velit aut voluptate', '2021-06-26 10:50:22', '2021-06-26 10:50:22'),
(8, 'Cow Meat', 500.00, 450.00, '1', NULL, NULL, 27, '434424', '1624804845_meat.jpg', 0, 0, 'Cow Meat', 'Cow Meat', '2021-06-27 08:40:45', '2021-06-27 08:40:45'),
(9, 'Chicken', 170.00, 150.00, '1', NULL, NULL, 27, '3453535', '1624805022_Chicken.jpg', 0, 0, 'Chicken', 'Chicken', '2021-06-27 08:43:42', '2021-06-27 08:43:42'),
(10, 'Mutton', 800.00, 750.00, '1', NULL, NULL, 27, '235235', '1624810158_meat.jpg', 0, 0, 'Mutton', 'Mutton', '2021-06-27 10:09:18', '2021-06-27 10:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prog_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `prog_name`, `created_at`, `updated_at`) VALUES
(1, 'cse', NULL, NULL),
(2, 'eee', NULL, NULL),
(3, 'bba', NULL, NULL),
(4, 'llb', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2021-05-08 09:01:53', '2021-05-08 09:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phn_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `section`, `email`, `address`, `phn_num`, `created_at`, `updated_at`) VALUES
(1, 'Ariful Islam Arif', 'A', 'ariful48@gmail.com', 'Wireless Gate, Mohakhali, Dhaka-1212', '384932489238', NULL, '2021-06-12 08:50:24'),
(2, 'Faruk Ahmed Faruk', 'D', 'faruk@faruk.com', 'Badda, Dhaka', '23525235', NULL, '2021-06-12 08:51:10'),
(3, 'Rokeya Akhter', 'A', 'ariful48@gmail.com', 'Wireless Gate, Mohakhali, Dhaka-1212', '384932489238', NULL, NULL),
(7, 'Nafiza', 'E', 'Nafiza@gmail.com', 'Wireless gate, mohakhali', '01824825210', '2021-06-12 09:15:07', '2021-06-12 09:15:07'),
(8, 'Ariful Islam', 'E', 'Nafiza@gmail.com', 'Wireless gate, mohakhali', '01824825210', '2021-06-12 09:15:17', '2021-06-12 09:15:17'),
(9, 'Maria', 'D', 'maria@maria.com', 'fafafaff', '394528035', '2021-06-12 09:15:57', '2021-06-12 09:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

CREATE TABLE `temp_orders` (
  `temp_order_row_id` int(10) UNSIGNED NOT NULL,
  `product_row_id` int(11) NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_total_price` double(8,2) NOT NULL,
  `order_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = submitted',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `temp_orders`
--

INSERT INTO `temp_orders` (`temp_order_row_id`, `product_row_id`, `tracking_number`, `product_price`, `product_qty`, `product_total_price`, `order_status`, `created_at`, `updated_at`) VALUES
(39, 8, '2vT8R6oU4dta5hy5jPGM5y7AkkFWy0OEgBoiRik9', 450.00, 1, 450.00, 0, '2021-07-03 02:58:35', NULL),
(40, 9, '2vT8R6oU4dta5hy5jPGM5y7AkkFWy0OEgBoiRik9', 150.00, 1, 150.00, 0, '2021-07-03 02:58:36', NULL),
(41, 10, '2vT8R6oU4dta5hy5jPGM5y7AkkFWy0OEgBoiRik9', 750.00, 1, 750.00, 0, '2021-07-03 02:58:36', NULL),
(42, 8, 'EW3GipVp7Diaqpyo1wTXJgdRvQTgDM6VHG1ggHR3', 450.00, 1, 450.00, 0, '2021-07-03 10:11:07', NULL),
(43, 9, 'EW3GipVp7Diaqpyo1wTXJgdRvQTgDM6VHG1ggHR3', 150.00, 1, 150.00, 0, '2021-07-03 10:11:08', NULL),
(44, 9, 'ryXb2fAEGkxB874vWh4ozBAWweo81L9FeD5Uoabb', 150.00, 1, 150.00, 0, '2021-07-03 16:01:18', NULL),
(45, 8, 'Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz', 450.00, 1, 450.00, 0, '2021-07-03 16:15:13', NULL),
(46, 9, 'Xi9S4GsOVD8ZO18dSyMdDOHPWRdf9JgV6AKFM7gz', 150.00, 1, 150.00, 0, '2021-07-03 16:15:14', NULL),
(57, 8, 'nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL', 450.00, 2, 900.00, 0, '2021-07-04 13:31:26', NULL),
(58, 9, 'nnBkcUrBrzCmi2rgiOjeLar1pkhmrL4Adr02uuYL', 150.00, 1, 150.00, 0, '2021-07-04 13:31:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testform`
--

CREATE TABLE `testform` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testform`
--

INSERT INTO `testform` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Arif', 'ariffaful4afaf8@gmail.com', '2021-06-09 05:36:58', '2021-06-09 05:36:58'),
(2, 'Faruk', 'sfsf', '2021-06-09 06:35:27', '2021-06-09 06:35:27'),
(4, 'Moushumi', 'afaf', '2021-06-09 07:05:09', '2021-06-09 07:05:09'),
(12, 'Saiful', 'af', '2021-06-09 07:05:14', '2021-06-09 07:05:14'),
(13, 'didar', 'afdaf', '2021-06-10 04:59:37', '2021-06-10 04:59:37'),
(14, 'afaf', 'faf@ggg.com', '2021-06-10 05:05:32', '2021-06-10 05:05:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'arif', 'ariful48@gmail.com', NULL, '$2y$10$Q9LoxW8feB9akzsPQwfSPOHLEbgO/BEPHQFefAsrbEus0ZEgUF.Wu', NULL, '2021-04-09 06:20:36', '2021-04-09 06:20:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_row_id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_row_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_row_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`temp_order_row_id`);

--
-- Indexes for table `testform`
--
ALTER TABLE `testform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `temp_order_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `testform`
--
ALTER TABLE `testform`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
