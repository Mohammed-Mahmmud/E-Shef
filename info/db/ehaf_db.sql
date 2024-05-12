-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2024 at 11:09 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshef_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `slug`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Admin\"}', 'admin', 'admin@gmail.com', 'Active', NULL, '$2y$10$2Xy4m/E.zrk4cRJ7wM3hO.yL1.dwXWKUkMUuGHjAvBGUYDwZlQZki', NULL, '2023-08-17 06:59:19', '2023-08-17 06:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_tow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_tow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_button` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `route` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `title_tow` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_title_tow` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_title_three` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_four` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_title_four` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `firstname`, `lastname`, `email`, `message`, `phone`, `created_at`, `updated_at`) VALUES
(72, 'Kessie', 'Mcclure', 'cidzor@nwrcz.com', 'Voluptatum sint exer', '62', '2024-04-21 19:51:15', '2024-04-21 19:51:15'),
(73, 'Paul', 'Riggs', 'cidzor@nwrcz.com', 'Aute autem laudantiu', '85', '2024-04-21 19:55:26', '2024-04-21 19:55:26'),
(74, 'Zena', 'Mcgee', 'cidzor@nwrcz.com', 'Magnam mollit quia c', '73', '2024-04-21 19:55:43', '2024-04-21 19:55:43'),
(75, 'Joy', 'Mays', 'cidzor@nwrcz.com', 'Et cupidatat laborio', '21', '2024-04-21 19:55:59', '2024-04-21 19:55:59'),
(76, 'Felicia', 'Wilson', 'virmia@nwrcz.com', 'Sit quisquam rerum', '76', '2024-04-21 20:09:34', '2024-04-21 20:09:34'),
(77, 'Nina', 'Evans', 'virmia@nwrcz.com', 'Itaque beatae amet', '85', '2024-04-21 20:09:40', '2024-04-21 20:09:40'),
(78, 'Aphrodite', 'Leon', 'virmia@nwrcz.com', 'Omnis nulla sit lab', '100', '2024-04-21 20:09:47', '2024-04-21 20:09:47'),
(79, 'Jocelyn', 'Holder', 'virmia@nwrcz.com', 'Dolor ut cillum id c', '79', '2024-04-22 03:03:27', '2024-04-22 03:03:27'),
(80, 'Meredith', 'Holland', 'virmia@nwrcz.com', 'Maxime incidunt par', '99', '2024-04-22 03:03:49', '2024-04-22 03:03:49'),
(81, 'Wilma', 'Burke', 'virmia@nwrcz.com', 'Et iste non laborum', '19', '2024-04-22 03:04:17', '2024-04-22 03:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `must_seen` enum('seen','Not Seen') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'seen',
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `sort` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(8, 'App\\Models\\CmsPage', 3, '9f7ac8a0-0d09-43d9-b1c9-549393167308', 'Home_creative_1', 'cf', 'cf.JPG', 'image/jpeg', 'media', 'media', 28355, '[]', '[]', '[]', '[]', 1, '2023-08-20 10:28:00', '2023-08-20 10:28:00'),
(81, 'App\\Models\\CmsPage', 48, 'f7c1e789-cff1-4ceb-9d10-d9152eb60ffd', 'Page', 'adult-beanie-black-background-1529350', 'adult-beanie-black-background-1529350.jpg', 'image/jpeg', 'media', 'media', 17495, '[]', '[]', '[]', '[]', 1, '2023-08-27 05:38:21', '2023-08-27 05:38:21'),
(82, 'App\\Models\\CmsPage', 49, 'a4f48ea4-9e04-4b5f-8c0d-dbfc6cb90ceb', 'Page', 'pexels-photo-428340', 'pexels-photo-428340.jpeg', 'image/jpeg', 'media', 'media', 16553, '[]', '[]', '[]', '[]', 1, '2023-08-27 05:38:49', '2023-08-27 05:38:49'),
(83, 'App\\Models\\CmsPage', 50, '9704fcbf-db35-4587-9b3c-4276c2b2d3b5', 'Page', 'pexels-photo-764529', 'pexels-photo-764529.jpeg', 'image/jpeg', 'media', 'media', 16422, '[]', '[]', '[]', '[]', 1, '2023-08-27 05:39:32', '2023-08-27 05:39:32'),
(84, 'App\\Models\\CmsPage', 51, 'f4f12c8b-af99-44ab-ad5d-c0b70f606b22', 'Page', 'pexels-photo-809433', 'pexels-photo-809433.jpeg', 'image/jpeg', 'media', 'media', 16550, '[]', '[]', '[]', '[]', 1, '2023-08-27 05:40:38', '2023-08-27 05:40:38'),
(85, 'App\\Models\\CmsPage', 52, '20f849d0-2451-4935-b095-bf2b8591ed2f', 'Page', 'business-calligraphy-chinese-lanterns-1455969', 'business-calligraphy-chinese-lanterns-1455969.jpg', 'image/jpeg', 'media', 'media', 53658, '[]', '[]', '[]', '[]', 1, '2023-08-27 05:53:18', '2023-08-27 05:53:18'),
(97, 'App\\Models\\Blogs', 1, '67415bd6-8b3a-48f9-a4cb-e86e2a5ef187', 'Blogs2', 'pexels-photo-348523', 'pexels-photo-348523.jpeg', 'image/jpeg', 'media', 'media', 241266, '[]', '[]', '[]', '[]', 2, '2023-08-27 07:57:59', '2023-08-27 07:57:59'),
(102, 'App\\Models\\Blogs', 1, '67b469d7-3cfc-4470-8c6b-e25389630153', 'Blogs', 'pexels-photo', 'pexels-photo.jpg', 'image/jpeg', 'media', 'media', 254940, '[]', '[]', '[]', '[]', 3, '2023-08-27 08:01:01', '2023-08-27 08:01:01'),
(103, 'App\\Models\\CmsPage', 53, '5f6e5955-5356-47e2-85c0-f6243023e74b', 'Page', 'pexels-photo', 'pexels-photo.jpg', 'image/jpeg', 'media', 'media', 254940, '[]', '[]', '[]', '[]', 1, '2023-08-27 10:48:22', '2023-08-27 10:48:22'),
(105, 'App\\Models\\CmsPage', 58, 'a8407cf3-c593-4595-9b3b-ea09161fda73', 'Page', '1', '1.jpg', 'image/jpeg', 'media', 'media', 57337, '[]', '[]', '[]', '[]', 1, '2023-08-28 07:28:48', '2023-08-28 07:28:48'),
(106, 'App\\Models\\CmsPage', 59, '0136a635-40ed-47c2-9aac-c8b96a6484e4', 'Page', '2', '2.jpg', 'image/jpeg', 'media', 'media', 63239, '[]', '[]', '[]', '[]', 1, '2023-08-28 07:28:51', '2023-08-28 07:28:51'),
(107, 'App\\Models\\CmsPage', 60, '4d423f9a-e398-4dea-8749-1db8bfa9a47d', 'Page', '3', '3.jpg', 'image/jpeg', 'media', 'media', 57869, '[]', '[]', '[]', '[]', 1, '2023-08-28 07:28:58', '2023-08-28 07:28:58'),
(108, 'App\\Models\\CmsPage', 61, '086e8435-3bfd-4a3c-8193-fcc51328b8fd', 'Page', '4', '4.jpg', 'image/jpeg', 'media', 'media', 66474, '[]', '[]', '[]', '[]', 1, '2023-08-28 07:29:03', '2023-08-28 07:29:03'),
(109, 'App\\Models\\CmsPage', 62, '76dfae3b-e032-4929-b7f3-3ab10c7b0746', 'Page', '5', '5.jpg', 'image/jpeg', 'media', 'media', 58882, '[]', '[]', '[]', '[]', 1, '2023-08-28 07:29:08', '2023-08-28 07:29:08'),
(148, 'App\\Models\\CmsPage', 35, '3b7589c0-5113-4699-9e25-3bacfb76917f', 'Page', 'weekenz', 'weekenz.png', 'image/png', 'media', 'media', 83448, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:20:02', '2023-09-11 09:20:02'),
(149, 'App\\Models\\CmsPage', 35, '2602cb30-9f30-4ff3-aa59-e2317bb2ce05', 'Page2', 'weekenz', 'weekenz.png', 'image/png', 'media', 'media', 83448, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:20:02', '2023-09-11 09:20:02'),
(150, 'App\\Models\\CmsPage', 37, '5dc67825-d1be-4efe-aa63-12757b6cb8ff', 'Page', 'flyin', 'flyin.png', 'image/png', 'media', 'media', 49055, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:20:24', '2023-09-11 09:20:24'),
(151, 'App\\Models\\CmsPage', 37, '8b4e33e2-3de5-4559-a1a7-b1ffacd3dd04', 'Page2', 'flyin', 'flyin.png', 'image/png', 'media', 'media', 49055, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:20:24', '2023-09-11 09:20:24'),
(152, 'App\\Models\\CmsPage', 38, '39375493-65f8-437a-9dbe-36def26ee2d8', 'Page', 'harfash', 'harfash.png', 'image/png', 'media', 'media', 99463, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:20:54', '2023-09-11 09:20:54'),
(153, 'App\\Models\\CmsPage', 38, 'e6d55e5c-a07b-4c34-bae8-5c895a9cf5e1', 'Page2', 'harfash', 'harfash.png', 'image/png', 'media', 'media', 99463, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:20:54', '2023-09-11 09:20:54'),
(154, 'App\\Models\\CmsPage', 39, '7656ce15-7cbd-4a58-a111-015b21cb1971', 'Page', 'araby', 'araby.png', 'image/png', 'media', 'media', 29420, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:21:49', '2023-09-11 09:21:49'),
(155, 'App\\Models\\CmsPage', 39, 'ab18f55c-a508-495b-ac92-6ba0ed345c49', 'Page2', 'araby', 'araby.png', 'image/png', 'media', 'media', 29420, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:21:49', '2023-09-11 09:21:49'),
(156, 'App\\Models\\CmsPage', 42, 'cd62cc27-ea4b-4fab-8683-5ba77e5e3314', 'Page', 'safa', 'safa.png', 'image/png', 'media', 'media', 109776, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:22:20', '2023-09-11 09:22:20'),
(157, 'App\\Models\\CmsPage', 42, 'e2823874-eca8-43e1-b295-9fecca9c1ed4', 'Page2', 'safa', 'safa.png', 'image/png', 'media', 'media', 109776, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:22:20', '2023-09-11 09:22:20'),
(158, 'App\\Models\\CmsPage', 43, '711ab6c2-de70-4174-819e-4d20bc89f7ae', 'Page', 'spell', 'spell.png', 'image/png', 'media', 'media', 82403, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:22:45', '2023-09-11 09:22:45'),
(159, 'App\\Models\\CmsPage', 43, 'b181b9de-07d9-439d-a9e9-9f2cfc80080d', 'Page2', 'spell', 'spell.png', 'image/png', 'media', 'media', 82403, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:22:45', '2023-09-11 09:22:45'),
(160, 'App\\Models\\CmsPage', 45, 'fb75d713-40f8-431c-a677-384dbb0145bb', 'Page', 'Alraya', 'Alraya.png', 'image/png', 'media', 'media', 97963, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:23:22', '2023-09-11 09:23:22'),
(161, 'App\\Models\\CmsPage', 45, '1b41f443-f9bd-4db6-ba5d-e8519c1a74f0', 'Page2', 'Alraya', 'Alraya.png', 'image/png', 'media', 'media', 97963, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:23:22', '2023-09-11 09:23:22'),
(162, 'App\\Models\\CmsPage', 46, 'b0f3e4ef-de80-4bc1-a22c-4d045441c0c4', 'Page', 'hub', 'hub.png', 'image/png', 'media', 'media', 63146, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:23:51', '2023-09-11 09:23:51'),
(163, 'App\\Models\\CmsPage', 46, '2dc13275-2136-4082-b554-b4ba8418658d', 'Page2', 'hub', 'hub.png', 'image/png', 'media', 'media', 63146, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:23:51', '2023-09-11 09:23:51'),
(164, 'App\\Models\\CmsPage', 36, '8c265c26-5601-45fe-858d-41869fcbbd59', 'Page', 'Ellithy', 'Ellithy.png', 'image/png', 'media', 'media', 86251, '[]', '[]', '[]', '[]', 5, '2023-09-11 09:24:17', '2023-09-11 09:24:17'),
(165, 'App\\Models\\CmsPage', 36, 'ac43ab60-bf44-4c0c-aa57-d2377af1db41', 'Page2', 'Ellithy', 'Ellithy.png', 'image/png', 'media', 'media', 86251, '[]', '[]', '[]', '[]', 6, '2023-09-11 09:24:17', '2023-09-11 09:24:17'),
(166, 'App\\Models\\CmsPage', 41, 'eb60678a-f15e-465c-b390-2aed87143434', 'Page', 'BOOST-theme.png2', 'BOOST-theme.png2.png', 'image/png', 'media', 'media', 41408, '[]', '[]', '[]', '[]', 11, '2023-09-11 09:47:42', '2023-09-11 09:47:42'),
(167, 'App\\Models\\CmsPage', 41, '2faab2ab-46de-4b95-9fc5-988a90b5c04f', 'Page2', 'BOOST-theme.png2', 'BOOST-theme.png2.png', 'image/png', 'media', 'media', 41408, '[]', '[]', '[]', '[]', 12, '2023-09-11 09:47:42', '2023-09-11 09:47:42'),
(170, 'App\\Models\\CmsPage', 47, 'bdd022e1-dfc0-40d2-8217-d1c47e6a6b03', 'Page', 'mqadhe', 'mqadhe.png', 'image/png', 'media', 'media', 88992, '[]', '[]', '[]', '[]', 9, '2023-09-11 11:38:12', '2023-09-11 11:38:12'),
(171, 'App\\Models\\CmsPage', 47, '8c1caaa5-4be4-450d-9ffd-1c9c03d5ef89', 'Page2', 'mqadhe', 'mqadhe.png', 'image/png', 'media', 'media', 88992, '[]', '[]', '[]', '[]', 10, '2023-09-11 11:38:12', '2023-09-11 11:38:12'),
(190, 'App\\Models\\CmsPage', 64, 'e5d083ce-83ce-4b7c-b8c6-891fcd5b1651', 'Page', 'WhatsApp Image 2023-09-12 at 5.55.19 PM', 'WhatsApp-Image-2023-09-12-at-5.55.19-PM.jpeg', 'image/jpeg', 'media', 'media', 105822, '[]', '[]', '[]', '[]', 1, '2023-09-12 15:34:42', '2023-09-12 15:34:42'),
(191, 'App\\Models\\CmsPage', 64, '7fafcd11-c585-4051-8013-b2f00cfabc03', 'Page2', 'WhatsApp Image 2023-09-12 at 5.55.19 PM', 'WhatsApp-Image-2023-09-12-at-5.55.19-PM.jpeg', 'image/jpeg', 'media', 'media', 105822, '[]', '[]', '[]', '[]', 2, '2023-09-12 15:34:42', '2023-09-12 15:34:42'),
(205, 'App\\Models\\CmsPage', 32, '0cdbcc62-1e5d-45b2-a07a-df7cf859c43c', 'Page', '2', '2.jpeg', 'image/jpeg', 'media', 'media', 89602, '[]', '[]', '[]', '[]', 3, '2023-09-12 16:03:11', '2023-09-12 16:03:11'),
(206, 'App\\Models\\CmsPage', 32, 'dbe70395-ddd8-42c4-ab0b-2e26a7a0785f', 'Page2', '2', '2.jpeg', 'image/jpeg', 'media', 'media', 89602, '[]', '[]', '[]', '[]', 4, '2023-09-12 16:03:11', '2023-09-12 16:03:11'),
(207, 'App\\Models\\CmsPage', 33, '11aa1a34-a7af-43f1-abba-13ba43d53573', 'Page', '6', '6.jpeg', 'image/jpeg', 'media', 'media', 102490, '[]', '[]', '[]', '[]', 3, '2023-09-12 16:03:47', '2023-09-12 16:03:47'),
(208, 'App\\Models\\CmsPage', 33, 'c671720e-3b14-4cf6-9fdc-6a8c4a20a894', 'Page2', '6', '6.jpeg', 'image/jpeg', 'media', 'media', 102490, '[]', '[]', '[]', '[]', 4, '2023-09-12 16:03:47', '2023-09-12 16:03:47'),
(209, 'App\\Models\\CmsPage', 34, '8af553f2-62fc-4265-8a9f-b5081b66e3e4', 'Page', '5', '5.jpeg', 'image/jpeg', 'media', 'media', 105822, '[]', '[]', '[]', '[]', 9, '2023-09-12 16:04:58', '2023-09-12 16:04:58'),
(210, 'App\\Models\\CmsPage', 34, '03c8fab2-6bda-48ba-a6f0-409a413b38ea', 'Page2', '5', '5.jpeg', 'image/jpeg', 'media', 'media', 105822, '[]', '[]', '[]', '[]', 10, '2023-09-12 16:04:58', '2023-09-12 16:04:58'),
(211, 'App\\Models\\CmsPage', 54, '597b59b1-e07b-4df2-9a94-44218e49f245', 'Page', '4', '4.jpeg', 'image/jpeg', 'media', 'media', 83634, '[]', '[]', '[]', '[]', 1, '2023-09-12 16:06:10', '2023-09-12 16:06:10'),
(212, 'App\\Models\\CmsPage', 54, 'a1fcd607-9bce-430a-bb43-7137c94cdb4a', 'Page2', '4', '4.jpeg', 'image/jpeg', 'media', 'media', 83634, '[]', '[]', '[]', '[]', 2, '2023-09-12 16:06:10', '2023-09-12 16:06:10'),
(213, 'App\\Models\\CmsPage', 68, '9381692f-e99a-44d7-b04b-ec82cfa9685b', 'Page', '3', '3.jpeg', 'image/jpeg', 'media', 'media', 84493, '[]', '[]', '[]', '[]', 3, '2023-09-12 16:07:41', '2023-09-12 16:07:41'),
(214, 'App\\Models\\CmsPage', 68, 'c5888843-0f04-4498-a034-65c0327944ee', 'Page2', '3', '3.jpeg', 'image/jpeg', 'media', 'media', 84493, '[]', '[]', '[]', '[]', 4, '2023-09-12 16:07:41', '2023-09-12 16:07:41'),
(215, 'App\\Models\\CmsPage', 28, 'bd9e40e8-6ddd-44ed-8c54-85f44978bf5d', 'Page', '5', '5.jpeg', 'image/jpeg', 'media', 'media', 105822, '[]', '[]', '[]', '[]', 1, '2023-09-12 16:08:38', '2023-09-12 16:08:38'),
(216, 'App\\Models\\CmsPage', 28, '51e8b393-c4fa-46ca-9074-6dac22c1122d', 'Page2', '5', '5.jpeg', 'image/jpeg', 'media', 'media', 105822, '[]', '[]', '[]', '[]', 2, '2023-09-12 16:08:38', '2023-09-12 16:08:38'),
(217, 'App\\Models\\CmsPage', 29, 'e2d7fbcb-7e74-4d8f-ba11-5b231cb2e0d1', 'Page', '2', '2.jpeg', 'image/jpeg', 'media', 'media', 89602, '[]', '[]', '[]', '[]', 1, '2023-09-12 16:10:03', '2023-09-12 16:10:03'),
(218, 'App\\Models\\CmsPage', 29, '50850a1f-c10d-413c-b30f-7d58046702ea', 'Page2', '2', '2.jpeg', 'image/jpeg', 'media', 'media', 89602, '[]', '[]', '[]', '[]', 2, '2023-09-12 16:10:03', '2023-09-12 16:10:03'),
(225, 'App\\Models\\CmsPage', 70, '87eb9ee8-ba22-46f3-95c2-7e435d07269f', 'Page', '3', '3.jpeg', 'image/jpeg', 'media', 'media', 84493, '[]', '[]', '[]', '[]', 1, '2023-09-13 09:40:16', '2023-09-13 09:40:16'),
(226, 'App\\Models\\CmsPage', 70, '0bf22f79-4ea1-4514-9fbd-4049586e6c5f', 'Page2', '3', '3.jpeg', 'image/jpeg', 'media', 'media', 84493, '[]', '[]', '[]', '[]', 2, '2023-09-13 09:40:16', '2023-09-13 09:40:16'),
(229, 'App\\Models\\CmsPage', 69, '5b3bf389-8c1d-405f-bbe3-b2a0e6e811bb', 'Page', '4', '4.jpeg', 'image/jpeg', 'media', 'media', 83634, '[]', '[]', '[]', '[]', 3, '2023-09-17 12:58:09', '2023-09-17 12:58:09'),
(230, 'App\\Models\\CmsPage', 69, 'f28141af-ae22-4110-ba8a-eefbb41fdac2', 'Page2', '4', '4.jpeg', 'image/jpeg', 'media', 'media', 83634, '[]', '[]', '[]', '[]', 4, '2023-09-17 12:58:09', '2023-09-17 12:58:09'),
(231, 'App\\Models\\CmsPage', 31, '8b1d2066-e527-4130-97a1-169f03e5c28b', 'Page', '1', '1.jpeg', 'image/jpeg', 'media', 'media', 89775, '[]', '[]', '[]', '[]', 5, '2023-09-17 13:03:27', '2023-09-17 13:03:27'),
(232, 'App\\Models\\CmsPage', 31, '6c3bec11-fab3-4e95-82e3-8a47359ae658', 'Page2', '1', '1.jpeg', 'image/jpeg', 'media', 'media', 89775, '[]', '[]', '[]', '[]', 6, '2023-09-17 13:03:27', '2023-09-17 13:03:27'),
(235, 'App\\Models\\CmsPage', 30, 'a02d41cd-34ea-451f-a867-c0ef34f65e6d', 'Page', '1', '1.jpeg', 'image/jpeg', 'media', 'media', 89775, '[]', '[]', '[]', '[]', 17, '2023-09-20 14:20:34', '2023-09-20 14:20:34'),
(236, 'App\\Models\\CmsPage', 30, '50c92e63-eefd-4c8c-b811-5edc0fe04fa6', 'Page2', '1', '1.jpeg', 'image/jpeg', 'media', 'media', 89775, '[]', '[]', '[]', '[]', 18, '2023-09-20 14:20:34', '2023-09-20 14:20:34'),
(242, 'App\\Models\\Setting', 13, 'f8637a58-fe39-4bbe-a02a-2980b0421d6e', 'Logo', 'e-shef-high-resolution-logo-transparent', 'e-shef-high-resolution-logo-transparent.png', 'image/png', 'media', 'media', 38783, '[]', '[]', '[]', '[]', 1, '2024-03-31 04:25:01', '2024-03-31 04:25:01'),
(264, 'App\\Models\\Setting', 14, '7003b53b-6b45-4d95-9a4b-5a15f52550e8', 'Logo', 'e-shef-high-resolution-logo-transparent', 'e-shef-high-resolution-logo-transparent.png', 'image/png', 'media', 'media', 38783, '[]', '[]', '[]', '[]', 1, '2024-04-10 00:22:15', '2024-04-10 00:22:15'),
(279, 'App\\Models\\Setting', 39, 'bc4f3239-c77f-44b5-9d19-eb260c17b9ea', 'Logo', 'breathcumb1', 'breathcumb1.jpg', 'image/jpeg', 'media', 'media', 67974, '[]', '[]', '[]', '[]', 1, '2024-04-14 14:13:07', '2024-04-14 14:13:07'),
(285, 'App\\Models\\Page', 92, '708bdc72-c3a5-4a4f-9711-dcd9a9a5fd97', 'banner', 'seeds', 'seeds.jpg', 'image/jpeg', 'media', 'media', 51555, '[]', '[]', '[]', '[]', 1, '2024-04-15 08:12:35', '2024-04-15 08:12:35'),
(287, 'App\\Models\\Page', 93, 'f7451fdf-13f1-4971-b1bc-f85b25e0f696', 'banner', 'spices', 'spices.jpeg', 'image/jpeg', 'media', 'media', 507752, '[]', '[]', '[]', '[]', 1, '2024-04-15 23:53:46', '2024-04-15 23:53:46'),
(288, 'App\\Models\\Page', 13, '916a05d9-32da-4b84-a4c1-879a7d8c0874', 'banner', 'depositphotos_132043144-stock-photo-fresh-herbs-hanging-basil-rosemary', 'depositphotos_132043144-stock-photo-fresh-herbs-hanging-basil-rosemary.jpg', 'image/jpeg', 'media', 'media', 355374, '[]', '[]', '[]', '[]', 1, '2024-04-15 23:58:06', '2024-04-15 23:58:06'),
(289, 'App\\Models\\Page', 11, 'b77430dd-c76e-4c63-b95a-5279bf8929aa', 'banner', 'contactus', 'contactus.png', 'image/png', 'media', 'media', 638447, '[]', '[]', '[]', '[]', 1, '2024-04-16 00:00:13', '2024-04-16 00:00:13'),
(291, 'App\\Models\\Page', 8, '61f304d7-ff8d-47c3-9b58-0d46da825f06', 'banner', 'NMC111', 'NMC111.png', 'image/png', 'media', 'media', 1062371, '[]', '[]', '[]', '[]', 1, '2024-04-16 01:11:45', '2024-04-16 01:11:45'),
(293, 'App\\Models\\Products', 12, '2d6f28d8-9ef6-4fd3-bfd2-7a96ffab25d4', 'products2', 'istockphoto-157592969-612x612', 'istockphoto-157592969-612x612.jpg', 'image/jpeg', 'media', 'media', 20681, '[]', '[]', '[]', '[]', 1, '2024-04-16 04:35:29', '2024-04-16 04:35:29'),
(294, 'App\\Models\\Products', 12, '0673104e-0885-4a88-8579-0a85041a7e42', 'products', '1', '1.jpg', 'image/jpeg', 'media', 'media', 90098, '[]', '[]', '[]', '[]', 2, '2024-04-16 04:35:53', '2024-04-16 04:35:53'),
(295, 'App\\Models\\Products', 13, 'ab745e54-7cb3-4717-bbce-ff36aa3ce76a', 'products', '1', '1.jpg', 'image/jpeg', 'media', 'media', 142823, '[]', '[]', '[]', '[]', 1, '2024-04-16 04:39:12', '2024-04-16 04:39:12'),
(296, 'App\\Models\\Products', 13, '9ea97b47-f590-486f-b0eb-30dc61bd0eb9', 'products2', 'thyme-1000x1000', 'thyme-1000x1000.jpeg', 'image/jpeg', 'media', 'media', 270699, '[]', '[]', '[]', '[]', 2, '2024-04-16 04:39:12', '2024-04-16 04:39:12'),
(297, 'App\\Models\\Products', 14, '888a45f1-5ab0-4e6f-ab01-133909cac0e4', 'products', '1', '1.jpg', 'image/jpeg', 'media', 'media', 118936, '[]', '[]', '[]', '[]', 1, '2024-04-16 04:43:31', '2024-04-16 04:43:31'),
(298, 'App\\Models\\Products', 15, 'ba5708d4-6792-449b-81b5-7c62ade7dbe8', 'products', '1', '1.jpg', 'image/jpeg', 'media', 'media', 64707, '[]', '[]', '[]', '[]', 1, '2024-04-16 04:45:35', '2024-04-16 04:45:35'),
(299, 'App\\Models\\Products', 16, '07c2484f-6e6a-4209-a0fa-e3f1d4a75784', 'products', '1', '1.jpg', 'image/jpeg', 'media', 'media', 41341, '[]', '[]', '[]', '[]', 1, '2024-04-16 04:51:44', '2024-04-16 04:51:44'),
(300, 'App\\Models\\Products', 17, '0e7dad21-1ff6-4411-84e0-497f5f9bb0b5', 'products', '1', '1.jpg', 'image/jpeg', 'media', 'media', 51240, '[]', '[]', '[]', '[]', 1, '2024-04-16 04:53:51', '2024-04-16 04:53:51'),
(301, 'App\\Models\\Products', 18, 'f4b2b070-4cf1-4737-85df-aaedf35ac9e5', 'products', 'download', 'download.jpeg', 'image/jpeg', 'media', 'media', 23480, '[]', '[]', '[]', '[]', 1, '2024-04-16 05:26:31', '2024-04-16 05:26:31'),
(302, 'App\\Models\\Products', 19, '25eac2c3-540a-40cb-90e0-2d3cd87b0be6', 'products', 'commodity-curley-parsley', 'commodity-curley-parsley.jpg', 'image/jpeg', 'media', 'media', 80197, '[]', '[]', '[]', '[]', 1, '2024-04-16 05:32:14', '2024-04-16 05:32:14'),
(303, 'App\\Models\\Products', 20, 'cddae141-2bfe-415b-8374-78bbbc09bd3c', 'products', 'italian_parsley__47941', 'italian_parsley__47941.jpg', 'image/jpeg', 'media', 'media', 331336, '[]', '[]', '[]', '[]', 1, '2024-04-16 05:35:46', '2024-04-16 05:35:46'),
(304, 'App\\Models\\Products', 21, '27dff999-99e5-4d75-a6e9-a6935c0f6153', 'products', 'oregano_grande_a2439762-89c6-4135-8b25-0d2e88bb09ad_600x600', 'oregano_grande_a2439762-89c6-4135-8b25-0d2e88bb09ad_600x600.png', 'image/png', 'media', 'media', 232890, '[]', '[]', '[]', '[]', 1, '2024-04-16 05:56:26', '2024-04-16 05:56:26'),
(305, 'App\\Models\\Products', 22, '9ce2746b-63f8-4b6e-b888-efa8ce98dac4', 'products', 'moringa-set', 'moringa-set.png', 'image/png', 'media', 'media', 99209, '[]', '[]', '[]', '[]', 1, '2024-04-16 05:58:54', '2024-04-16 05:58:54'),
(306, 'App\\Models\\Products', 23, '294df956-2008-4b53-b85b-f63d92dd684d', 'products', '1_6c85d2ff-eb83-4736-b860-7c4d4648cc7a_1200x', '1_6c85d2ff-eb83-4736-b860-7c4d4648cc7a_1200x.png', 'image/png', 'media', 'media', 462319, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:02:53', '2024-04-16 06:02:53'),
(307, 'App\\Models\\Products', 24, 'a018acee-c1ac-4309-a8b0-a4012017e266', 'products', 'growing-and-using-calendula-1402626-22-ee3910bf32b747278ef3d8ec408a8eaa', 'growing-and-using-calendula-1402626-22-ee3910bf32b747278ef3d8ec408a8eaa.jpg', 'image/jpeg', 'media', 'media', 90070, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:05:52', '2024-04-16 06:05:52'),
(312, 'App\\Models\\Products', 25, '0b95facd-90b5-4e2c-b157-38926f7f3ba8', 'products', 'Molokhia-Leaves-1200x900', 'Molokhia-Leaves-1200x900.jpg', 'image/jpeg', 'media', 'media', 165768, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:14:02', '2024-04-16 06:14:02'),
(313, 'App\\Models\\Products', 28, '8f54430b-2552-41e7-bda1-1f8a595a0b84', 'products', 'shutterstock_234785131-min', 'shutterstock_234785131-min.jpg', 'image/jpeg', 'media', 'media', 23993, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:15:39', '2024-04-16 06:15:39'),
(315, 'App\\Models\\Products', 30, '6aa95e41-22cc-47a2-ab9e-85b34571f9f2', 'products', 'nandi-henna-hi-res-1', 'nandi-henna-hi-res-1.jpg', 'image/jpeg', 'media', 'media', 392474, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:19:31', '2024-04-16 06:19:31'),
(317, 'App\\Models\\Products', 32, 'ac5d1262-b62c-4b50-8b04-1727a37021f9', 'products', 'basil', 'basil.jpg', 'image/jpeg', 'media', 'media', 98829, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:22:28', '2024-04-16 06:22:28'),
(318, 'App\\Models\\Products', 33, 'dc543479-add0-422d-8364-2253d2244a70', 'products', 'Bay-leaves', 'Bay-leaves.png', 'image/png', 'media', 'media', 184410, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:24:49', '2024-04-16 06:24:49'),
(319, 'App\\Models\\Products', 34, 'aa6e3b85-702a-40e5-bf23-88212b2b7c6f', 'products', 'celery-with-leaves', 'celery-with-leaves.jpg', 'image/jpeg', 'media', 'media', 34359, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:26:31', '2024-04-16 06:26:31'),
(320, 'App\\Models\\Products', 35, '97079ddc-01ab-4af6-9968-4c5752316c62', 'products', 'loose-cham', 'loose-cham.jpg', 'image/jpeg', 'media', 'media', 63273, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:29:03', '2024-04-16 06:29:03'),
(321, 'App\\Models\\Products', 36, '0802b07d-369d-4c04-9154-f0546c7c55d7', 'products', 'anise-seed', 'anise-seed.jpg', 'image/jpeg', 'media', 'media', 36471, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:33:49', '2024-04-16 06:33:49'),
(322, 'App\\Models\\Products', 37, '4d5d5a59-3c24-4e20-a946-2503db7a57e5', 'products', 'Caraway_Seeds', 'Caraway_Seeds.png', 'image/png', 'media', 'media', 1300829, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:36:04', '2024-04-16 06:36:04'),
(323, 'App\\Models\\Products', 38, '25385e8b-6cb0-4474-9c6f-0043c358f37a', 'products', 'coriander-seed', 'coriander-seed.jpg', 'image/jpeg', 'media', 'media', 209724, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:37:33', '2024-04-16 06:37:33'),
(324, 'App\\Models\\Products', 39, '5588a5df-6072-4b25-ac04-fb146b38bc97', 'products', 'Cumin-Spice', 'Cumin-Spice.png', 'image/png', 'media', 'media', 2767520, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:39:38', '2024-04-16 06:39:38'),
(325, 'App\\Models\\Products', 40, '45aed4d9-f594-4757-941d-8872770870fa', 'products', 'Fennel-Seed', 'Fennel-Seed.jpg', 'image/jpeg', 'media', 'media', 113291, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:41:02', '2024-04-16 06:41:02'),
(326, 'App\\Models\\Products', 41, '673c254f-df1e-4169-b374-8b939c6b3113', 'products', 'Seeds-fenugreek', 'Seeds-fenugreek.png', 'image/png', 'media', 'media', 460857, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:42:54', '2024-04-16 06:42:54'),
(328, 'App\\Models\\Products', 43, '394f3f5e-7f87-4756-8658-9b5e4df6b36a', 'products', 'cumin-seeds', 'cumin-seeds.png', 'image/png', 'media', 'media', 1150945, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:46:21', '2024-04-16 06:46:21'),
(329, 'App\\Models\\Products', 44, 'a975811e-a8ed-4df3-b9c3-e36d8b7d040e', 'products', 'flax-seeds-1296x728-header', 'flax-seeds-1296x728-header.png', 'image/png', 'media', 'media', 1106862, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:48:06', '2024-04-16 06:48:06'),
(330, 'App\\Models\\Products', 45, '9f53db7a-b38f-4c81-9ec0-285e6cdfb1fb', 'products', 'Whats-the-Difference-Between-Pumpkin-Seeds-and-Pepitas-FT-BLOG0922-2000-902bfb35a445488ab1f9c0f33c23c8b9', 'Whats-the-Difference-Between-Pumpkin-Seeds-and-Pepitas-FT-BLOG0922-2000-902bfb35a445488ab1f9c0f33c23c8b9.jpg', 'image/jpeg', 'media', 'media', 133406, '[]', '[]', '[]', '[]', 1, '2024-04-16 06:49:35', '2024-04-16 06:49:35'),
(332, 'App\\Models\\Products', 47, '22b680c6-34a2-4e3e-bcf1-02da03f64f0a', 'products', 'Jun24', 'Jun24.jpeg', 'image/jpeg', 'media', 'media', 62239, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:24:21', '2024-04-16 07:24:21'),
(333, 'App\\Models\\Products', 49, '3d9e8512-ccda-4e29-b76e-d31778c49e6c', 'products', 'commodity-red-onion', 'commodity-red-onion.jpg', 'image/jpeg', 'media', 'media', 53765, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:27:44', '2024-04-16 07:27:44'),
(334, 'App\\Models\\Products', 50, '200908d0-c78f-4e3b-92e5-19d60ba69ad7', 'products', 'garlic-182553-1', 'garlic-182553-1.jpg', 'image/jpeg', 'media', 'media', 335783, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:29:03', '2024-04-16 07:29:03'),
(337, 'App\\Models\\Products', 53, '86146778-83b0-4bbf-a25b-3ff025e7c155', 'products', 'cardamom-benefits-1296x728-feature', 'cardamom-benefits-1296x728-feature.jpg', 'image/jpeg', 'media', 'media', 48645, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:34:11', '2024-04-16 07:34:11'),
(338, 'App\\Models\\Products', 54, '6627884b-ca9f-475f-b94b-163412afcd22', 'products', 'Cinnamomum_verum_spices', 'Cinnamomum_verum_spices.jpg', 'image/jpeg', 'media', 'media', 156288, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:35:48', '2024-04-16 07:35:48'),
(339, 'App\\Models\\Products', 55, '0d045f88-be7c-4d70-8aeb-17f68a01e72a', 'products', 'Nutmeg-Exporters-in-India', 'Nutmeg-Exporters-in-India.jpg', 'image/jpeg', 'media', 'media', 97062, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:38:08', '2024-04-16 07:38:08'),
(340, 'App\\Models\\Products', 56, '9e5fec45-76b6-4baa-bf46-4d58fe02499e', 'products', 'red-chili', 'red-chili.jpg', 'image/jpeg', 'media', 'media', 187360, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:39:51', '2024-04-16 07:39:51'),
(341, 'App\\Models\\Products', 57, '0edc8002-430d-43a1-998c-c8de5b888d70', 'products', '2134574', '2134574.jpg', 'image/jpeg', 'media', 'media', 87220, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:41:17', '2024-04-16 07:41:17'),
(342, 'App\\Models\\Products', 58, '207d18cb-fe58-4190-adde-c731f2c6a954', 'products', 'cloves', 'cloves.jpg', 'image/jpeg', 'media', 'media', 683535, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:42:50', '2024-04-16 07:42:50'),
(343, 'App\\Models\\Products', 59, 'f20d1de8-e307-451c-a1cb-0dd46e932e4c', 'products', 'pepper-white-whole-1S-808', 'pepper-white-whole-1S-808.jpg', 'image/jpeg', 'media', 'media', 43837, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:43:57', '2024-04-16 07:43:57'),
(344, 'App\\Models\\Products', 60, 'f118a57a-5755-4b83-9a6b-84821cd55bd0', 'products', 'persian-pantry-5271130-hero-07-abb1a378b22b467faacd126cc693a786', 'persian-pantry-5271130-hero-07-abb1a378b22b467faacd126cc693a786.jpg', 'image/jpeg', 'media', 'media', 122143, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:45:36', '2024-04-16 07:45:36'),
(345, 'App\\Models\\Products', 61, 'f2559af0-509f-4396-b3cc-52101c326185', 'products', '614eXUitFyL._AC_UF894,1000_QL80_', '614eXUitFyL._AC_UF894,1000_QL80_.jpg', 'image/jpeg', 'media', 'media', 69020, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:48:46', '2024-04-16 07:48:46'),
(347, 'App\\Models\\Products', 63, '1d40beb9-f1bf-499d-8065-9120569881da', 'products', 'Growing-Licorice-The-Complete-Guide-to-Plant-Care-and-Harvest-Licorice-FI', 'Growing-Licorice-The-Complete-Guide-to-Plant-Care-and-Harvest-Licorice-FI.jpg', 'image/jpeg', 'media', 'media', 138512, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:51:27', '2024-04-16 07:51:27'),
(348, 'App\\Models\\Products', 48, 'd4e01941-915e-4dd9-b7c8-769d5e0ed6fe', 'products', '__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__20100520-paprika-primary-242cc11b9ff1449c9c3a90ab08eb7615', '__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__20100520-paprika-primary-242cc11b9ff1449c9c3a90ab08eb7615.jpg', 'image/jpeg', 'media', 'media', 32432, '[]', '[]', '[]', '[]', 1, '2024-04-16 07:59:08', '2024-04-16 07:59:08'),
(349, 'App\\Models\\Products', 52, 'c35faaf2-a4d6-4316-a4b7-1dcd8853e756', 'products', '61aHmnlQQYL._AC_UF894,1000_QL80_', '61aHmnlQQYL._AC_UF894,1000_QL80_.jpg', 'image/jpeg', 'media', 'media', 42872, '[]', '[]', '[]', '[]', 1, '2024-04-16 08:08:35', '2024-04-16 08:08:35'),
(352, 'App\\Models\\Products', 62, '96b6dd9a-4fba-4ee1-9154-ce4b28103e8c', 'products', 'savoryspic1e-1', 'savoryspic1e-1.jpg', 'image/jpeg', 'media', 'media', 45218, '[]', '[]', '[]', '[]', 1, '2024-04-19 08:10:41', '2024-04-19 08:10:41'),
(353, 'App\\Models\\Products', 42, 'cd875df6-2ab3-4807-aabd-df1a3bc8e306', 'products', 'sunflower_seeds_4_460x@2x', 'sunflower_seeds_4_460x@2x.png', 'image/png', 'media', 'media', 1565954, '[]', '[]', '[]', '[]', 1, '2024-04-19 08:21:03', '2024-04-19 08:21:03'),
(354, 'App\\Models\\Products', 31, '7112a69d-8643-446a-8717-6cf2737f1115', 'products', 'Dill-Substitute-sq', 'Dill-Substitute-sq.png', 'image/png', 'media', 'media', 2167186, '[]', '[]', '[]', '[]', 1, '2024-04-19 08:22:53', '2024-04-19 08:22:53'),
(356, 'App\\Models\\Products', 27, '370f624b-84b3-403f-a56a-2b4216a24bd3', 'products', 'dried-lemongrass-leaves-500x500-1', 'dried-lemongrass-leaves-500x500-1.png', 'image/png', 'media', 'media', 362584, '[]', '[]', '[]', '[]', 1, '2024-04-20 09:53:48', '2024-04-20 09:53:48'),
(357, 'App\\Models\\Products', 29, '48463808-a69e-43a5-9710-6a24df37c2e9', 'products', 'BH_1200x1200', 'BH_1200x1200.png', 'image/png', 'media', 'media', 1419940, '[]', '[]', '[]', '[]', 1, '2024-04-20 09:54:19', '2024-04-20 09:54:19'),
(358, 'App\\Models\\Products', 26, '1e04e7fa-eb33-43be-9bc7-dd710528c54b', 'products', 'melissa-officinalis-780x520', 'melissa-officinalis-780x520.png', 'image/png', 'media', 'media', 773620, '[]', '[]', '[]', '[]', 1, '2024-04-20 10:00:11', '2024-04-20 10:00:11'),
(359, 'App\\Models\\Products', 51, '14015972-0925-4d35-aa76-07b014e0757b', 'products', 'istockphoto-1318891464-640x640', 'istockphoto-1318891464-640x640.jpg', 'image/jpeg', 'media', 'media', 26730, '[]', '[]', '[]', '[]', 1, '2024-04-20 10:02:04', '2024-04-20 10:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_03_20_145801_create_countries_table', 1),
(2, '2014_03_20_145812_create_cities_table', 1),
(3, '2014_03_20_145900_create_districts_table', 1),
(4, '2014_04_02_193005_create_translations_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_03_05_101905_create_permission_tables', 1),
(10, '2023_03_05_102027_create_admins_table', 1),
(11, '2023_03_05_103146_create_media_table', 1),
(12, '2023_03_05_104359_create_settings_table', 1),
(13, '2023_03_08_113944_create_translation_keys_table', 1),
(14, '2023_03_08_132955_create_new_permission_table', 1),
(15, '2023_03_09_160105_create_images_table', 1),
(16, '2023_03_20_144704_create_places_table', 1),
(17, '2023_03_20_151800_create_activity_log_table', 1),
(18, '2023_03_20_151801_add_event_column_to_activity_log_table', 1),
(19, '2023_03_20_151802_add_batch_uuid_column_to_activity_log_table', 1),
(20, '2023_03_20_170138_create_cars_table', 1),
(21, '2023_03_20_172903_create_public_transportations_table', 1),
(22, '2023_03_21_080141_create_public_transportation_cities_table', 1),
(23, '2023_03_21_081314_create_hotel_apartments_table', 1),
(24, '2023_03_21_082839_create_locations_table', 1),
(25, '2023_03_21_084253_create_groups_table', 1),
(26, '2023_03_21_085047_create_tags_table', 1),
(27, '2023_03_21_085732_create_tag_group_table', 1),
(28, '2023_03_21_090608_create_group_location_table', 1),
(29, '2023_03_23_130154_create_banners_table', 1),
(30, '2023_08_16_123451_create_pages_table', 1),
(33, '2023_08_17_144431_create_cms_pages_table', 2),
(34, '2023_08_23_190528_create_projects_table', 3),
(40, '2023_08_27_091333_create_blogs_table', 4),
(42, '2023_08_28_133210_create_contact_us_table', 5),
(43, '2024_03_27_074817_create_products_table', 6),
(44, '2024_03_27_074818_create_products_table', 7),
(45, '2024_03_27_074819_create_products_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nave` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `footer` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `parent_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `description`, `nave`, `footer`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(7, '{\"en\":\"Home\",\"ar\":\"Home\"}', '{\"en\":\"/\",\"ar\":\"/\"}', '{\"ar\":null}', 'Active', 'Active', 'Active', NULL, '2023-08-17 08:55:42', '2023-08-17 08:55:42'),
(8, '{\"en\":\"About\",\"ar\":\"About\"}', '{\"en\":\"about\",\"ar\":\"about\"}', '{\"ar\":null}', 'Active', 'Active', 'Active', NULL, '2023-08-17 08:56:22', '2023-08-17 08:56:22'),
(9, '{\"en\":\"Products\",\"ar\":\"Products\"}', '{\"en\":\"products\",\"ar\":\"products\"}', '{\"ar\":null}', 'Active', 'Active', 'Active', NULL, '2024-03-21 05:39:15', '2024-03-27 06:56:46'),
(10, '{\"en\":\"Blogs\",\"ar\":\"Blogs\"}', '{\"en\":\"blogs\",\"ar\":\"blogs\"}', '{\"ar\":null}', 'Not Active', 'Not Active', 'Not Active', NULL, '2023-08-17 08:57:18', '2024-04-14 14:32:15'),
(11, '{\"en\":\"Contacts\",\"ar\":\"Contacts\"}', '{\"en\":\"contacts\",\"ar\":\"contacts\"}', '{\"ar\":null}', 'Active', 'Active', 'Active', NULL, '2023-08-17 08:58:55', '2024-03-21 06:26:24'),
(13, '{\"en\":\"Herbs\",\"ar\":\"Herbs\"}', '{\"en\":\"herbs\",\"ar\":\"herbs\"}', '{\"en\":\"Herbs\",\"ar\":\"Herbs\"}', 'Active', 'Active', 'Active', 9, '2024-03-21 05:39:49', '2024-04-14 14:42:57'),
(92, '{\"en\":\"Seeds\",\"ar\":\"Seeds\"}', '{\"en\":\"seeds\",\"ar\":\"seeds\"}', '{\"en\":\"Seeds\",\"ar\":\"Seeds\"}', 'Active', 'Active', 'Active', 9, '2024-03-26 05:51:37', '2024-03-26 05:51:37'),
(93, '{\"en\":\"Spices\",\"ar\":\"Spices\"}', '{\"en\":\"spices\",\"ar\":\"spices\"}', '{\"ar\":null}', 'Active', 'Active', 'Active', 9, '2024-03-26 05:52:17', '2024-03-26 05:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'good', 'admin', '2023-08-17 06:59:18', '2023-08-17 06:59:18'),
(2, 'bad', 'admin', '2023-08-17 06:59:18', '2023-08-17 06:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` bigint UNSIGNED NOT NULL,
  `status` enum('Active','Not Active') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `scientific_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HS_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twentyFT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fortyFT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `page_id`, `status`, `scientific_name`, `latin_name`, `HS_code`, `twentyFT`, `fortyFT`, `description`, `created_at`, `updated_at`) VALUES
(12, 'Cilantro Leave', 13, 'Active', 'Coriandrum Oleracea', NULL, '12119090000', '4.8', '9.6', 'Coriander has a long history of cultivation in Egypt and the Mediterranean region. Ancient Egyptians used coriander as early as 3,000 B.C., with mentions of it found in hieroglyphics and ancient tombs. It was grown for both its seeds and leaves. The ancient Greeks and Romans also used coriander extensively. It\'s mentioned in early Greek literature and Roman recipes. Through trade and exploration, coriander spread to regions like Asia, Africa, and the Americas.\r\n\r\nWith its centuries-old legacy, coriander remains an important culinary herb today. Its bright, citrusy notes are essential in many global cuisines. From ancient Egyptian tombs to modern kitchens, coriander leaves add refreshing flavor and connect us to history. E-SHEF company is proud to offer Egyptian coriander leaves, grown in the fertile soils of its ancient homeland.', '2024-04-16 04:35:29', '2024-04-17 07:53:27'),
(13, 'Thyme', 13, 'Active', 'Thymus vulgaris', NULL, '091099200000', '6', '12', 'E-SHEF company is proud to offer premium Egyptian thyme sourced directly from small farms across Egypt. Egyptian thyme has a more concentrated flavor than other varieties due to Egypt\'s hot, dry climate and nutrient-rich desert soil. The leaves are smaller and contain higher levels of thymol, lending a potent, woodsy taste and aroma. Thyme has long been used in Egyptian cuisine to season meats, stews, and vegetable dishes. Ancient Egyptians also recognized the herb\'s medicinal qualities and used it as an antiseptic and for embalming.\r\nModern research has validated many of thyme\'s traditional uses. Thyme contains antioxidants that fight free radicals and inflammation. The essential oils in thyme act as an antibacterial and antifungal, making thyme beneficial for oral health. Thyme also helps relax respiratory muscles, easing coughs and bronchitis symptoms. For centuries, thyme has been regarded as an aid for digestion, menstrual cramps, and skin conditions.\r\nE-SHEF thyme is sustainably grown on small family farms in Egypt\'s fertile Nile Valley without the use of chemical pesticides or fertilizers. It is hand harvested at peak flavor then immediately packaged to retain freshness. E-SHEF\'s Egyptian thyme connects you to the ancient flavors and medicines of pharaonic Egypt.\r\nThyme has been revered since antiquity for its versatility, fragrance, and therapeutic powers. E-SHEF offers the highest quality Egyptian thyme, cultivated in the same rich soil and desert climate as the thyme used in Ancient Egypt. With its intense, woodsy notes and impressive health benefits, Egyptian thyme from E-SHEF is the ultimate way to experience this historical herb.', '2024-04-16 04:39:12', '2024-04-20 12:00:51'),
(14, 'spearmint', 13, 'Active', 'Mentha viridis', NULL, '12119090000', '4.8', '9.6', 'Spearmint is an aromatic herb that has been used for culinary and medicinal purposes since ancient times. Native to the Mediterranean region, spearmint was first cultivated in Egyptian gardens over two thousand years ago. The ancient Egyptians revered spearmint for its refreshing flavor and soothing digestive properties. Today, spearmint continues to be grown and enjoyed around the world, retaining its timeless appeal as a versatile and beloved herb.\r\n\r\nWith a history spanning millennia, spearmint from Egypt’s Nile valley offers a uniquely smooth, sweet flavor profile unmatched elsewhere in the world. Sustainably grown using time-honored techniques, E-SHEF company’s Egyptian spearmint connects us to the rich culture and agricultural wisdom of the ancient Egyptians, who were among the first to unlock the wondrous versatility of this ancient herb so many centuries ago. Each leaf carries the spirit of a land and culture as timeless as the Great Pyramids along the Nile.', '2024-04-16 04:43:31', '2024-04-16 04:43:31'),
(15, 'senna', 13, 'Active', 'Cassia lanceolata', NULL, '12119090000', '5', '10', 'The Senna plant, known scientifically as Cassia angustifolia, is native to Upper Egypt and has long been revered for its health-promoting properties. Ancient Egyptians used Senna as a natural laxative and purgative. Today, the leaves and pods of the Senna plant are still valued for their gentle support of regularity and colon health. E-SHEF company ethically wild-harvests Egyptian Senna leaves from ancient agricultural lands along the Nile River Valley. This ensures the purity and potency of our Egyptian Senna.\r\nEgypt\'s hot, dry climate provides ideal growing conditions for Senna plants to produce high levels of anthraquinone glycosides, the active compounds that give Senna leaves their beneficial effects. E-SHEF company\'s Egyptian Senna is guaranteed to contain a minimum of 2.5% glycosides, making it more potent than Senna grown in other regions.\r\nE-SHEF company is honored to share the gift of Egyptian Senna with the modern world. Sourced from the same fertile lands that fed ancient civilizations, our Egyptian Senna connects you to the wisdom of the ancients. Experience the powerful yet gentle relief of nature’s remedy that has been relied on for thousands of years.', '2024-04-16 04:45:35', '2024-04-16 04:45:35'),
(16, 'sage', 13, 'Active', 'Salvia officinalis', NULL, '12119090000', '5', '10', 'Our Egyptian sage is hand-picked by local farmers in Upper Egypt, where sage has grown in the arid climate for millennia. It is a sustainable crop that thrives in the desert heat with little water needed. The farmers carefully bundle and dry the sage to preserve its essential oils and flavor before its transported down the Nile River to our production facilities in Cairo. There we inspect, package, and distribute the sage while adhering to fair trade principles by investing profits back into the remote farming communities.\r\n\r\n\r\nIf you appreciate history and wellness, our Egyptian sage is a unique product straight from the deserts of antiquity. Its earthy flavor and aroma will transport you back thousands of years while providing potent health benefits. Contact E-SHEF company today to order this rare sage sustainably grown in the ancestral sands of Egypt.', '2024-04-16 04:51:44', '2024-04-16 04:51:44'),
(17, 'Rosemary', 13, 'Active', 'Rosmarinus officinalis', NULL, '12119090000', '7', '14', 'The herbs are hand-picked once fully mature and immediately dried to retain the essential oils that give rosemary its unique piney aroma and flavor. E-SHEF company\'s Egyptian rosemary has an intense, robust taste that makes it ideal for seasoning roasted meats, soups, stews, and other savory dishes. Its high antioxidant content from rosmarinic acid and other beneficial plant compounds also makes rosemary a popular medicinal herb. From traditional folk remedies to modern research, studies have shown rosemary can help boost memory, improve mood, and support overall cognitive function.\r\nWith its origins in ancient Egypt, E-SHEF company\'s premium Egyptian rosemary represents a timeless herb, connecting past and present through its enduring flavor and health properties. Sourced from the fertile Nile Delta, this sustainably grown rosemary will bring bold, piney flavor and nutritional value to dishes across the world. The rich history behind Egyptian rosemary makes E-SHEF company\'s product a fascinating addition to any pantry or herb garden.', '2024-04-16 04:53:51', '2024-04-16 04:53:51'),
(18, 'Peppermint', 13, 'Active', 'Menthae piperita', NULL, '12119090000', '5', '10', 'As one of Egypt\'s most time-honored botanicals, peppermint has a revered status in Egyptian history and culture. Ancient Egyptians used peppermint as a versatile medicine, flavor enhancer, air purifier, and to embalm their dead. Frescoes from pharaohs\' tombs depict peppermint leaves and essential oils being presented as noble offerings. Today, dried peppermint leaves are still ubiquitous in Egyptian homes and widely used in traditional Egyptian dishes, teas, and folk remedies. When you enjoy our Egyptian peppermint, you take part in this ancient legacy.\r\n\r\nNow you can experience a taste of Egyptian history with our premium Egyptian peppermint, sustainably grown along the mighty Nile using centuries-old organic methods. Its exceptionally pungent, sweet flavor and fragrance will transport you right to the fertile banks of the Nile. Treat yourself to this legendary botanical treasure today.', '2024-04-16 05:26:30', '2024-04-16 05:26:30'),
(19, 'curly parsley leaves', 13, 'Active', 'Petroselinum crispum', NULL, '070999300000', '5', '10', 'The parsley from E-SHEF comes straight from Egyptian soil that has nurtured these plants since the days of the pharaohs. When you use our Egyptian parsley, you are connecting to thousands of years of culinary history, while also enjoying maximum nutrition and taste. We are proud to work with traditional farmers to sustainably grow these heirloom herbs.\r\n\r\n\r\nE-SHEF company is your source for premium Egyptian parsley, sustainably grown on small farms nestled on the fertile banks of the ancient Nile River. Our flavorful, nutritious parsley can elevate everyday meals, providing a tangy herbal taste and nutritional value. The next time you cook, choose E-SHEF parsley for a truly exceptional experience that spans across history from plate to palate.', '2024-04-16 05:32:14', '2024-04-16 05:32:14'),
(20, 'flat parsley', 13, 'Active', 'Petroselinum crispum', NULL, '070999300000', '5', '10', 'The parsley from E-SHEF comes straight from Egyptian soil that has nurtured these plants since the days of the pharaohs. When you use our Egyptian parsley, you are connecting to thousands of years of culinary history, while also enjoying maximum nutrition and taste. We are proud to work with traditional farmers to sustainably grow these heirloom herbs.\r\n\r\n\r\nE-SHEF company is your source for premium Egyptian parsley, sustainably grown on small farms nestled on the fertile banks of the ancient Nile River. Our flavorful, nutritious parsley can elevate everyday meals, providing a tangy herbal taste and nutritional value. The next time you cook, choose E-SHEF parsley for a truly exceptional experience that spans across history from plate to palate.', '2024-04-16 05:35:46', '2024-04-16 05:35:46'),
(21, 'Oregano', 13, 'Active', 'Origanum syriacum', NULL, NULL, '4.8', '10', 'Oregano is native to the Mediterranean region, where warm, dry summers provide ideal growing conditions. Greece produces high-quality, flavorful oregano, especially in the southern regions. E-SHEF company is proud to offer premium dried Greek oregano sourced from small family farms in the countryside outside of Athens. Their oregano grows wild on sunny, mountainous hillsides just like it has for centuries. The plants thrive in the well-drained, limestone-rich soil and benefit from the region\'s hot, dry climate. This results in an exceptionally aromatic and flavorful oregano.\r\n\r\nOregano has been used since ancient times for its versatile culinary properties and therapeutic benefits. E-SHEF company is excited to share premium quality Greek oregano with customers looking for an authentic taste of the Mediterranean. Their oregano connects us to the rich history of this beloved herb while providing exceptional flavor and nutrition. Whether cooking a delicious Italian meal or seeking natural relief, E-SHEF’s Greek oregano is sure to satisfy.', '2024-04-16 05:54:52', '2024-04-16 05:54:52'),
(22, 'moringa', 13, 'Active', 'Moringa oleifera', NULL, '12119090000', '4.8', '10', 'The ancient Egyptians recognized these benefits early on. They integrated Moringa into their diet and used it to maintain beautiful skin and hair. Egyptian royalty like Cleopatra were known to use Moringa oil for its skin rejuvenating and smoothing effects. Now E-SHEF is able to offer this royal beauty secret to the world. Their Egyptian Moringa is grown on small family farms in the Nile Delta, not far from the ancient capital of Memphis. The lush growing conditions in this region help produce high quality Moringa. E-SHEF\'s strict quality control and sustainable farming practices enable them to offer the purest Egyptian Moringa products around the world.\r\nMoringa is an ancient superfood that has been used for millennia in India, Egypt and other tropical regions. Now E-SHEF is making Egyptian Moringa available globally. Sourced from small farms near the ancient capital of Memphis, E-SHEF\'s Egyptian Moringa retains all the nutritional and medicinal properties that were valued by the pharaohs. This royal beauty secret is now accessible to add powerful nutrition and natural glow to anyone\'s modern lifestyle. The miraculous Moringa tree sustains health, vitality and beauty in a holistic way', '2024-04-16 05:58:54', '2024-04-16 05:58:54'),
(23, 'Marjoram', 13, 'Active', 'Origanum majorana', NULL, '12119090000', '5', '10', 'E-SHEF is an Egyptian company specializing in premium herbs and spices harvested from the Nile Delta region, including marjoram. The rich alluvial soil and ideal growing climate around the Nile River have supported marjoram cultivation since pharaonic times. Ancient Egyptians used marjoram for food flavoring and as part of traditional medicine. Today, E-SHEF sustainably grows and exports marjoram that retains the same superior quality that was so prized in ancient Egypt.\r\n\r\nFor cooks interested in authentic, top-grade marjoram with an incredible pedigree, E-SHEF\'s Egyptian marjoram connects back to the herb\'s ancestral roots. Grown in a land whose rich history is intertwined with this aromatic herb, E-SHEF\'s marjoram delivers a flavor profile unchanged through the centuries.', '2024-04-16 06:02:52', '2024-04-16 06:02:52'),
(24, 'Marigold - Calendula', 13, 'Active', 'Calendula Officinalis L', NULL, '12119090000', '4', '8', 'The marigold is a beloved flower that has been cultivated for centuries. Known botanically as Calendula, this cheery flower has a long and storied history, particularly in Egypt where it has been revered since ancient times. The Egyptians recognized the marigold for both its beauty and its versatile utility. Now, the E-SHEF company is proud to offer authentic Egyptian Marigold - Calendula grown in this ancient land.\r\n\r\n\r\nThe common name \"marigold\" refers to plants in the genus Tagetes, as well as the genus Calendula. The Calendula marigolds offered by E-SHEF are sometimes called \"pot marigolds\" and have been used medicinally, decoratively, and as a dye source since at least the 12th dynasty of ancient Egypt. Images of the marigold have been found in tombs across Egypt.', '2024-04-16 06:05:52', '2024-04-16 06:05:52'),
(25, 'Molokhiya', 13, 'Active', 'Corchorus olitorius', NULL, NULL, '5', '10', 'Molokhiya is made from the leaves of Corchorus olitorius, a plant from the mallow family. The ancient Egyptians first cultivated molokhiya as early as the Middle Kingdom period more than 4,000 years ago. Hieroglyphics and wall paintings show that both rich and poor Egyptians enjoyed eating molokhiya. The 12th century Arab historian Al-Makrizi wrote that Fatimid Caliph Al-Mustansir had fields of molokhiya planted around Cairo to make sure he had a steady supply.\r\n\r\nWith roots extending back thousands of years in Egyptian history, molokhiya remains an integral part of the country\'s cuisine today. From ancient pharaohs to modern Egyptians, people throughout the ages have valued molokhiya for its unique flavor and health benefits. E-SHEF company connects customers to this history by providing quality molokhiya straight from Egypt\'s fertile Nile delta, the ancestral home of this renowned leafy green.', '2024-04-16 06:08:48', '2024-04-16 06:08:48'),
(26, 'lemon balm-Melissa', 13, 'Active', 'Melissa officinalis', NULL, '12119090000', '6', '12', 'Lemon balm, with its scientific name Melissa officinalis, is a member of the mint family. The genus name Melissa comes from the Greek word for \"honey bee\" due to the plant\'s traditional use by beekeepers to attract bees. In ancient Egypt, lemon balm was also known as \"the elixir of life\" and was used to treat fevers and heal wounds. The leaves of lemon balm contain essential oils such as citronellal, citral and geranial which give the herb its distinct lemony aroma and flavor. When consumed as a tea or added to dishes, lemon balm has a calming effect and can help relieve stress and anxiety.\r\nThe E-SHEF company in Egypt offers premium quality dried and fresh lemon balm sourced directly from local farms. With Egypt\'s warm climate and fertile soil, especially near the Nile Delta, Egyptian lemon balm thrives. The plants grow tall and robust, producing abundant leaves with exceptionally high essential oil content. E-SHEF lemon balm is harvested at peak freshness then handled with care to preserve the signature lemon scent and natural active compounds. Customers praise E-SHEF lemon balm for its potent, clean aroma and ability to elevate any remedy, recipe or cosmetic product.\r\n\r\nLemon balm has an illustrious past being revered for millennia in Egypt for its nourishing and therapeutic properties. As offered by the E-SHEF company, Egyptian lemon balm today continues this ancient legacy. With its distinct lemony fragrance and flavor, high quality Egyptian lemon balm adds value to many applications.', '2024-04-16 06:11:22', '2024-04-16 06:11:22'),
(27, 'lemongrass', 13, 'Active', 'Cymbopogon Citratus', NULL, '12119090000', '4.8', '9.6', 'E-SHEF Company is proud to offer premium Egyptian lemongrass sourced directly from local farms that have been growing lemongrass for generations. Unlike lemongrass imported from other regions, Egyptian lemongrass grows in mineral-rich soil nurtured by the life-giving waters of the Nile. This imparts a distinctively bright, lemon-lime flavor and incredible aroma to Egyptian lemongrass. The lemongrass is harvested by hand at peak freshness to capture the full spectrum of citrusy flavors. E-SHEF Company brings this ancient botanical treasure to modern tables in a convenient dried form.\r\nThe delicately dried lemongrass from E-SHEF Company is perfect for soups, curries, teas, and potpourri. Its intense lemony aroma and taste elevate any dish. Egyptian lemongrass also has a long history of use in herbal medicine due to its high concentrations of beneficial plant compounds. Modern research has confirmed many of the traditional medicinal benefits, including antioxidant, anti-inflammatory, and antimicrobial properties.\r\n\r\n\r\nFor cooks and herbalists alike, E-SHEF Company\'s Egyptian lemongrass connects us to the land\'s ancient wisdom. Each aromatic strand evokes the exotic spices that flavored the pharaohs\' feasts and the botanical remedies of early Egyptian healers. Now new generations can incorporate this timeless ingredient into their own recipes and remedies.', '2024-04-16 06:12:50', '2024-04-16 06:12:50'),
(28, 'leek', 13, 'Active', 'Allium ampeloprasum', NULL, '070390000000', '5', '10', 'Egypt has long been renowned for its fertile agricultural lands along the Nile River, which have produced bountiful harvests of grains, fruits, and vegetables for millennia. Among the diverse crops grown in Egypt is the leek, a vegetable that has been cultivated in the region since ancient times. Leeks grow well in Egypt\'s warm climate and rich soil, producing crisp, tasty specimens that are popular ingredients in Egyptian cuisine.\r\n\r\nFor cooks interested in authentic ingredients, E-SHEF\'s Egyptian leeks offer a genuine taste of the Nile Valley\'s ancient agricultural legacy. Their mild, versatile flavor and sustainable production make them an excellent addition to all types of cuisine. Sauteed, grilled, or added to dips, these Egyptian leeks connect us to pharaonic traditions in every bite.', '2024-04-16 06:15:39', '2024-04-16 06:15:39'),
(29, 'Hibiscus', 13, 'Active', 'HIBISCUS SABDARIFFA', NULL, '12119090000', NULL, NULL, 'Hibiscus is a genus of flowering plants in the mallow family, Malvaceae. There are several hundred species of hibiscus, including both perennial and annual types. One particularly famous and popular species is known as the Egyptian hibiscus or roselle (Hibiscus sabdariffa). This striking plant has a long history of cultivation in Egypt dating back thousands of years.\r\n\r\nEgyptian hibiscus also has a long history of use as a natural dye. The flowers produce a deep crimson dye that was used to color the leather shoes of pharaohs. The dye was also used in cosmetics, making a dramatic eye makeup for Egyptian women. Fabrics for clothing and tomb furnishings were also dyed with the rich red hibiscus color.\r\n\r\nWith its striking flowers and multitude of uses, Egyptian hibiscus has a cherished history dating back thousands of years in Egypt\'s ancient civilization. The E-SHEF company preserves this living legacy, offering organic Egyptian hibiscus sourced directly from the rich soils of the Nile delta. The ancient hibiscus retains its vibrant red color and therapeutic benefits, providing natural health and beauty products to consumers across the globe.', '2024-04-16 06:17:48', '2024-04-16 06:17:48'),
(30, 'Henna', 13, 'Active', 'Lawsonia inermis', NULL, '12119090000', '16', '20', 'Henna, also known as Mehndi, has a long and rich history dating back over 5,000 years to ancient cultures in North Africa, the Middle East, and South Asia. Derived from the leaves of the henna plant, henna paste creates a reddish-brown dye when applied to the skin for body art and temporary tattoos. For centuries, henna has been closely tied to cultural traditions and celebrations across many parts of the world.\r\n\r\nWith its 5,000 year history and cultural significance, henna continues to hold an important place in society today. E-SHEF provides access to the rich tradition of Egyptian henna, ethically sourced from family-owned farms on the Nile Delta. Both the quality and artistry of their henna products and designs truly connect people to this ancient heritage. For a traditional yet timeless experience with henna body art, E-SHEF’s Egyptian henna is an ideal choice.', '2024-04-16 06:19:31', '2024-04-16 06:19:31'),
(31, 'dill', 13, 'Active', 'Anethum graveolens', NULL, '12119090000', '6', '12', 'Egypt has a rich agricultural history spanning thousands of years. Known as the \"gift of the Nile,\" Egypt\'s fertile lands have produced bountiful crops since ancient times. One aromatic plant that has grown there for millennia is dill. Our company, E-SHEF, is proud to offer this authentic Egyptian dill to spice lovers around the world.\r\n\r\nWith E-SHEF Egyptian dill, you can add 5,000 years of flavor and history to your pantry. Grown in Egypt\'s fertile Nile Delta, our dill connects you directly to pharaohs of ancient times who also enjoyed this aromatic, versatile herb. Treat your taste buds to a genuine taste of Egyptian culture with E-SHEF dill.', '2024-04-16 06:21:06', '2024-04-16 06:21:06'),
(32, 'basil', 13, 'Active', 'Ocimum Basilicum L', NULL, '12119090000', '6', '12', 'E-SHEF\'s Egyptian basil has an unmistakable aroma and concentrated flavor that comes from being grown under the hot Egyptian sun. The basil leaves are a bit smaller than the Genovese variety, with a unique spear-like shape. Besides being full of flavor, Egyptian basil also has a beautiful deep green color that makes any dish look more appetizing. Whether used in salads, sauces, or to flavor meats, Egyptian basil is the perfect way to add intrigue and ancient history to your cooking.\r\n\r\nWith its rich history and distinct flavor, it\'s no wonder Egyptian basil has stood the test of time. E-SHEF is proud to offer authentic Egyptian basil that connects us to the fertile lands and flavors of the past. So, add a new depth and dimension to your recipes with aromatic, flavorful Egyptian basil. Just one taste, and you\'ll be transported back to the ancient lands along the Nile.', '2024-04-16 06:22:28', '2024-04-16 06:22:28'),
(33, 'Bay leaf', 13, 'Active', 'Laurus Nobilis', NULL, '091099200000', '5', '10', 'The expert growers hand pick the leaves once they reach peak flavor. The leaves are then carefully dried to lock in the unique notes and aromas. The result is an exceptionally fragrant bay leaf that adds a complex depth to soups, stews, and other dishes. A single leaf can perfume an entire pot. The leaves also contain eugenol, a compound with antimicrobial effects that acts as a natural preservative. E-SHEF\'s Egyptian bay leaves arrive fresh to ensure they retain their aroma and vibrancy.\r\n\r\nFor cooks looking to add quintessential flavor to their cooking, E-SHEF\'s Egyptian bay leaves are the ultimate choice. Harvested from the fertile Nile Delta where bay trees have grown for millennia, these authentic leaves deliver an unparalleled intensity and nuance of flavor. The same leaves that seasoned dishes in ancient Egyptian palaces can now spice up meals in kitchens worldwide. E-SHEF is proud to offer these premium bay leaves straight from the ancient land of Egypt.', '2024-04-16 06:24:48', '2024-04-16 06:24:48'),
(34, 'Celery', 13, 'Active', 'Apium graveolens', NULL, '12119090000', '4.8', '9.6', 'Grown in the mineral-rich black soils along the Nile just like in ancient times, E-SHEF\'s Egyptian celery offers an unmatched crunch and bright herbal flavor. Celery was considered an antidote to poisons and useful for calming nerves in ancient Egypt. Modern research has confirmed many of celery\'s traditional health properties. E-SHEF\'s Egyptian celery connects us to the past through the ancient flavors and nutrition of one of history\'s oldest cultivated vegetables.', '2024-04-16 06:26:31', '2024-04-16 06:26:31'),
(35, 'Chamomile', 13, 'Active', 'Matricaria chamomilla', NULL, '12119090000', NULL, NULL, 'E-SHEF works with small farms in Egypt that cultivate chamomile using traditional and sustainable practices. The flowers are hand-picked at peak freshness and carefully dried to preserve their natural benefits. Egyptian chamomile has high levels of chamazulene, giving it a rich, deep aroma and potent anti-inflammatory effects. It also contains other medicinal compounds like bisabolol and apigenin. Studies show Egyptian chamomile is more effective than chamomile from other regions.\r\n\r\nFor those seeking the highest quality chamomile, Egyptian chamomile connects you directly to the source. Sourced from the land of the pharaohs, this chamomile delivers superior aroma, flavor, and therapeutic benefits. E-SHEF is proud to offer this piece of ancient Egyptian plant medicine to the modern world. Experience the chamomile Cleopatra may have sipped in a relaxing cup of tea or soothing skincare product.', '2024-04-16 06:29:03', '2024-04-16 06:29:03'),
(36, 'anise seeds', 92, 'Active', 'Pimpinella anisum L', NULL, '090960000000', '12.5', '25', 'The anise plant thrives in warm Mediterranean climates. Egypt\'s fertile Nile valley provides ideal growing conditions for producing high quality anise seeds. E-SHEF company sustainably farms anise and other herbs in this region, continuing ancient agricultural traditions. Their Egyptian anise seeds come straight from the historical source, where anise has been grown for millennia.\r\n\r\nWith a history spanning thousands of years, anise remains an important spice today. E-SHEF company is proud to offer premium Egyptian anise seeds, sourced directly from the same fertile valleys along the Nile where anise has been grown since ancient times. Their high-quality seeds carry on the ancient legacy of this distinctive and versatile spice.', '2024-04-16 06:33:49', '2024-04-16 06:33:49'),
(37, 'caraway seeds', 92, 'Active', 'Carum carvi', NULL, '090960000000', '18', '22.5', 'With a history spanning millennia, aromatic caraway seeds have long been a part of Egypt’s culinary and medicinal traditions. E-SHEF offers premium Egyptian caraway cultivated in the same fertile delta region where these ancient seeds originated. Adding these flavorful, nutritional seeds to dishes links modern cooking back through the centuries to Egyptian antiquity.', '2024-04-16 06:36:04', '2024-04-16 06:36:04'),
(38, 'Coriander Seeds', 92, 'Active', 'Coriandrum sativum', NULL, '090920000000', '7', '14', 'The prized coriander seeds are produced when the plant\'s flowers and leaves wither and its seeds ripen. The small, round seeds are harvested when they take on a yellow-brown color and have a sweet, aromatic flavor. The seeds can then be used whole or ground into powder. When ground, the inner white color of the seeds is revealed. The flavor is warm, nutty and slightly citrusy. Coriander seeds are an essential ingredient in curries, garam masala, pickling spices and many other spice blends. They pair particularly well with red meat, fish, beans, lentils and vegetables.\r\n\r\nWith a long and illustrious past, coriander seeds have earned their place as one of the most popular and widely used spices today. Their complex flavor and aroma make them an indispensable ingredient around the world. E-SHEF company is proud to offer high quality Egyptian coriander seeds, connecting modern cooks to the rich history and cuisine of this ancient land. Whether using the whole seed or ground powder, coriander seeds add warmth, depth and intrigue to dishes across many cultures.', '2024-04-16 06:37:33', '2024-04-16 07:15:06'),
(39, 'Cumin', 92, 'Active', 'Cuminum cyminum L.', NULL, '090931000000', '12.5', '25', 'Egypt has the ideal dry, hot climate to produce high quality cumin seeds. The aromatic seeds come from a small flowering plant in the parsley family. They have an oblong shape, ridged exterior, and yellow-brown color. When ground, the seeds release a warm, earthy, and slightly bitter flavor. This versatile spice is commonly used in curries, soups, breads, cheeses, meats, and vegetable dishes. Beyond cooking, cumin seeds have been used for their digestive and immune-boosting properties in traditional Egyptian medicine. Modern research has shown that cumin may aid digestion, boost immunity, and act as an antioxidant.\r\n\r\nWith a history as rich as the Nile, cumin remains an integral part of Egyptian culture and cuisine. E-SHEF company is proud to offer authentic, high quality Egyptian cumin seeds to spice up your cooking with the flavors of antiquity. Next time you use cumin, take a taste of ancient Egypt.', '2024-04-16 06:39:38', '2024-04-16 06:39:38'),
(40, 'fennel', 92, 'Active', 'Foeniculum vulgare', NULL, '090960000000', '16', '19', 'Fennel seeds have been highly valued throughout history for their unique aroma and flavor. Native to southern Europe and the Mediterranean, these aromatic seeds have been used for culinary and medicinal purposes for thousands of years. E-SHEF company is now proud to offer premium Egyptian fennel seeds, grown in the nutrient-rich soils of the Nile Delta - the same fertile lands that nourished ancient Egyptian civilization.\r\n\r\nFor unrivaled quality and flavor in fennel seeds, try E-SHEF’s premium Egyptian fennel. Grown in the ancestral farmlands along the Nile, these aromatic seeds will add history and depth of flavor to your cooking. Their versatility, fragrance, and nutrition make E-SHEF Egyptian fennel seeds an essential ingredient.', '2024-04-16 06:41:02', '2024-04-16 06:41:02'),
(41, 'fenugreek', 92, 'Active', 'Trigonella frenum graecum', NULL, '090960000000', '16', '25', 'E-SHEF company is proud to offer high-quality Egyptian fenugreek seeds sourced directly from farms across the fertile Nile Delta. Egypt\'s hot, dry climate provides ideal growing conditions for fenugreek. The ancient Egyptians revered fenugreek as both a food and medicine - seeds were found in King Tutankhamun’s tomb. Fenugreek cultivation in Egypt dates back over 4,500 years. E-SHEF fenugreek is cultivated without pesticides or chemicals, resulting in exceptionally pure seeds.\r\n\r\nFor cooks and herbalists alike, E-SHEF Egyptian fenugreek seeds connect us to the spice\'s ancient origins and medicinal history. Sourced from the land of the pharaohs, these high-quality, nutrient-rich seeds allow us to experience fenugreek as it was centuries ago. E-SHEF is proud to offer authentic Egyptian fenugreek seeds that provide unparalleled flavor and nutrition.', '2024-04-16 06:42:54', '2024-04-16 06:42:54'),
(42, 'Sunflower Seeds', 92, 'Active', 'H. Annuus', NULL, '120600000000', NULL, NULL, 'Sunflower seeds are packed with healthy nutrients. A one-ounce serving contains significant amounts of vitamin E, magnesium, selenium, copper, vitamin B6, folate, and more. The seeds are an excellent source of monounsaturated and polyunsaturated fats, preferred over saturated fats for heart health. Sunflower seeds have high amounts of phytosterols that can help lower LDL cholesterol. The seeds are also rich in antioxidants that protect cells from damage.\r\nIn addition to their stellar nutritional profile, sunflower seeds have a delicious, nutty taste and tender crunch. They make a satisfying snack on their own or can be added to recipes like salads, breads, trail mixes and more. Sunflower seed butter is a nutritious alternative to peanut butter. When processed into sunflower oil, the seeds make a healthy cooking oil with high smoking point.', '2024-04-16 06:44:50', '2024-04-16 06:44:50'),
(43, 'Nigella Seeds', 92, 'Active', NULL, NULL, '121190100000', NULL, NULL, 'Nigella Seeds: A Gift from Ancient Egypt\r\nEgypt has a rich history dating back thousands of years. From the majestic pyramids to the mysteries of pharaonic rule, this ancient civilization has captivated people for generations. Among its many legacies is a small, jet-black seed known as Nigella sativa or black cumin. This unassuming seed has been used for millennia by Egyptians for food, medicine and even cosmetics. Today, modern science is discovering the many health benefits contained in this ancient remedy.\r\n\r\nRecent scientific research has confirmed many of the traditional therapeutic uses of nigella seeds. Studies show the seeds have antioxidant, anti-inflammatory and antimicrobial effects. Compounds in nigella seeds may help lower cholesterol, blood pressure and blood sugar levels. The seeds may also strengthen the immune system and promote gut health. No wonder this historical herb has stood the test of time.', '2024-04-16 06:46:21', '2024-04-16 06:46:21'),
(44, 'Flax Seed', 92, 'Active', 'Linum usitatissimum', NULL, NULL, NULL, NULL, 'Flax seeds have been cultivated for thousands of years, dating back to ancient civilizations in Egypt. Often referred to as common flax or linseed, these small brown seeds were grown along the Nile River Valley and revered for their many uses, from fabric to food to medicine. Flax continues to be an important crop today, valued for its nutrition as well as its fiber.\r\nFlax seeds offer a wealth of health benefits. They are packed with protein, fiber and omega-3 fatty acids. The fiber helps regulate digestion while the omega-3s are linked to improved heart health. Flax is also a great source of lignans, antioxidants that may help prevent certain cancers. Additionally, flax contains vitamin B1, manganese, and phosphorus. The seeds can be sprinkled on cereal, made into flour for baking, or mixed with water to form a gel. The oil extracted from flax is used in some paints, varnishes and stains.', '2024-04-16 06:48:05', '2024-04-16 06:48:05'),
(45, 'Pumpkin Seeds', 92, 'Active', 'Cucurbita Maxima', NULL, '120991700000', NULL, NULL, 'Pumpkin seeds, also known as pepitas, are a highly nutritious food. They are packed with protein, fiber, antioxidants, magnesium, zinc, and healthy fats. Studies have shown that pumpkin seeds may provide a number of health benefits, including lowering cholesterol, improving heart health, and reducing inflammation. The seeds are rich in compounds like phytosterols that may help protect against certain cancers. Pumpkin seeds can also help regulate blood sugar levels and may reduce symptoms associated with enlarged prostate.\r\nPumpkin seeds have a delicious, nutty taste and satisfying crunch. They make a great snack on their own, sprinkled on salads or yogurt, or added to baked goods like muffins and breads. When roasted, the seeds take on an even deeper, nuttier flavor. Pumpkin seed oil made by pressing roasted seeds has a robust taste that works well in salad dressings and sauces.', '2024-04-16 06:49:35', '2024-04-16 06:49:35'),
(47, 'Turmeric', 93, 'Active', 'Curcuma Longa', NULL, '091030000000', NULL, NULL, 'Turmeric - Nature\'s Golden Spice\r\nTurmeric contains a compound called curcumin which gives turmeric its characteristic yellow color. Curcumin is the main active ingredient in turmeric and has potent antioxidant and anti-inflammatory effects. Research shows that curcumin can help fight oxidative damage, boost the immune system, and reduce inflammation associated with arthritis, heart disease, diabetes, and cancer.\r\n\r\nTurmeric is a versatile spice that adds a warm, earthy aroma and flavor to dishes. But it can also add good health - turmeric\'s compounds have been used for millennia and scientifically proven to have antioxidant, anti-inflammatory, and disease-fighting abilities. So spice up your cooking, and your health, with the golden goodness of turmeric.', '2024-04-16 07:24:21', '2024-04-16 07:24:21'),
(48, 'Paprika', 93, 'Active', 'Capsicum annuum', NULL, NULL, NULL, NULL, 'E-SHEF company sources only the finest quality paprika peppers and produces its signature spice through traditional methods. The peppers are slowly sun-dried before being expertly ground into a fine powder. This process preserves the natural flavors and aromas of the pepper. The result is an exceptionally aromatic paprika with a rich, complex taste. It has a sweetness combined with just a touch of heat. The vibrancy of the red powder is unmatched, making dishes pop with eye-catching color.\r\n\r\nFor cooks who appreciate exceptional spice, E-SHEF company\'s premium paprika is a must-have. The lively flavor, fragrance and color elevate any dish. A dash of this quality paprika makes all the difference. With its careful sourcing and traditional production methods, E-SHEF company offers a top-tier paprika experience. For your next goulash, curry or other spice-driven dish, reach for the premium paprika from E-SHEF company.', '2024-04-16 07:25:20', '2024-04-16 07:25:20'),
(49, 'Onions', 93, 'Active', 'Allium cepa L.', NULL, '070310110000', NULL, NULL, 'E-SHEF company is proud to offer premium Egyptian dried onions of the highest quality. Grown in the nutrient-rich black soils of the Nile Delta, Egyptian onions have an unparalleled sweet and mild flavor. The growing conditions in Egypt, with its hot, dry climate, produce large, juicy onions with high sugar content and low pungency. Once harvested, these exceptional onions are then sun-dried, locking in their freshness and intensifying their taste. The drying process concentrates the natural sugars and flavor compounds, resulting in a rich, sweet onion that is perfect for cooking. Just one bite and you\'ll taste the difference these premium Egyptian onions make in any dish.\r\n\r\nFor cooks who desire maximum flavor and quality, look no further than the premium dried Egyptian onions from E-SHEF company. Grown in the fertile Nile Delta and carefully dried to concentrate natural sweetness, these exceptional onions are perfectly suited for all your cooking needs. Their mild, sweet taste and tender texture when rehydrated make them a versatile ingredient to keep stocked in your pantry. Choose premium onions from E-SHEF company and taste the difference!', '2024-04-16 07:27:44', '2024-04-16 07:27:44'),
(50, 'garlic', 93, 'Active', 'Allium Sativum L.', NULL, '070320000000', NULL, NULL, 'Garlic provides a multitude of health benefits when consumed. It contains antioxidants that support the immune system and has natural antibacterial and antiviral properties. Studies have also shown that garlic may help lower blood pressure and cholesterol. The active compound found in garlic is allicin, which is released when garlic cloves are crushed or minced. Allicin provides garlic\'s distinctive pungent aroma and many of its health-promoting effects. Consuming garlic regularly may help ward off chronic conditions like heart disease, cancer, and diabetes.\r\n\r\nIn summary, garlic is a versatile culinary ingredient with a rich history. It provides a multitude of health benefits for those who incorporate it into their diets regularly. Garlic\'s unique flavor and aroma make it an essential component in cuisines worldwide. The next time you cook, consider adding some garlic to experience its robust flavor and potential positive impacts on your health.', '2024-04-16 07:29:03', '2024-04-16 07:29:03'),
(51, 'lemon', 93, 'Active', 'Citrus × limon', NULL, '080550000000', '4.5', '9', 'E-SHEF company offers a special product with their Premium Egyptian dried Lemons. Grown organically in Egypt, these high quality dried lemons provide concentrated lemon flavor and aroma. Their traditional sun-drying process results in an authentic ingredient that can enhance many recipes. For those seeking a unique lemon product packed with flavor, the Premium Egyptian dried Lemons from E-SHEF are an excellent choice.', '2024-04-16 07:31:03', '2024-04-16 07:31:03'),
(52, 'Black Pepper', 93, 'Active', 'Piper nigrum', NULL, '090410000000', NULL, NULL, 'With its rich history and integral role in cuisines around the world, black pepper remains one of the most essential and beloved spices today. E-SHEF company is proud to offer premium black pepper that delivers the ultimate taste experience. From its subtle heat to its enticing aroma, our black pepper will bring new depth and dimension to all your cooking.', '2024-04-16 07:32:31', '2024-04-16 07:32:31'),
(53, 'Cardamom', 93, 'Active', 'Elettaria Cardamomum', NULL, '090830000000', NULL, NULL, 'Cardamom is a beloved spice that has been used in cooking for thousands of years. Known for its unique, warm flavor and enticing aroma, cardamom can elevate both savory and sweet dishes. From curries to baked goods, cardamom is a versatile ingredient that is popular across many cuisines. Now, E-SHEF company is proud to offer premium cardamom sourced directly from its place of origin.', '2024-04-16 07:34:11', '2024-04-16 07:34:11'),
(54, 'Cinnamon', 93, 'Active', 'Cinnamomum Verum', NULL, '090611000000', '7', '14', 'Cinnamon is one of the most popular spices used around the world. Derived from the inner bark of Cinnamomum trees, cinnamon has a sweet, warm, and aromatic flavor that makes it a versatile addition to both sweet and savory dishes. Cinnamon\'s unique flavor and aroma come from the oily part of the bark that contains the compound cinnamaldehyde. From cinnamon rolls to curries, this spice is a staple in kitchens globally.', '2024-04-16 07:35:48', '2024-04-16 07:35:48'),
(55, 'Nutmeg', 93, 'Active', 'Myristica fragrans Houtt.', NULL, '090810000000', NULL, NULL, 'Nutmeg is a spice that comes from the seed of the nutmeg tree (Myristica fragrans), which is native to the Moluccas, or Spice Islands, of Indonesia. For centuries, nutmeg has been prized not only for the sweet, nutty flavor it imparts to foods and beverages, but also for its medicinal properties. At E-SHEF company, we are proud to offer premium nutmeg sourced directly from Indonesia.', '2024-04-16 07:38:08', '2024-04-16 07:38:08'),
(56, 'Red Chilli', 93, 'Active', NULL, NULL, NULL, NULL, NULL, 'The premium red chilies from Egypt are hand-picked at peak ripeness to ensure top quality. E-SHEF handles quick processing and shipping to maintain freshness. These chilies can be used dried, ground, or fresh in salsas, marinades, curries, stews, and many other dishes. Professional chefs and home cooks alike will appreciate the outstanding flavor of these Egyptian red chilies.', '2024-04-16 07:39:51', '2024-04-16 07:39:51'),
(57, 'Allspice', 93, 'Active', NULL, NULL, NULL, NULL, NULL, 'Welcome to E-SHEF, your source for premium allspice! Allspice is an aromatic spice that comes from the dried berries of the Pimenta dioica tree. At E-SHEF, we\'re proud to offer allspice of the highest quality to add warm, complex flavor to your cooking. Our premium allspice is hand-selected and expertly sourced to bring you the very best this versatile spice has to offer.', '2024-04-16 07:41:17', '2024-04-16 07:41:17'),
(58, 'Cloves', 93, 'Active', 'Eugenia caryophyllata', NULL, '090700000000', NULL, NULL, 'With their sweet, warming taste and fragrance, cloves have flavored cuisines and fragrances around the world for centuries. From meat dishes to baked goods to mulled drinks, cloves are a beloved ingredient. They also have a long history of use in traditional medicine. Cloves remain one of the most popular spices today thanks to their unique properties and versatility. Whether used in cooking, aromatherapy, or natural remedies, the distinctive spice of cloves will continue to be treasured worldwide.', '2024-04-16 07:42:50', '2024-04-16 07:42:50'),
(59, 'White Pepper', 93, 'Active', NULL, NULL, '090410000000', NULL, NULL, 'For cooks and chefs looking for a top-notch white pepper, E-SHEF\'s premium product is highly recommended. It has a subtle yet complex flavor that enhances any dish it\'s added to. Sourced and processed with care, their white pepper is of premium culinary quality. It\'s the perfect way to add subtle heat and aroma to your cooking without discoloring light-colored foods. With its purity and freshness, E-SHEF\'s white pepper is a must-have spice.', '2024-04-16 07:43:57', '2024-04-16 07:43:57'),
(60, 'Sumac', 93, 'Active', 'Rhus', NULL, NULL, NULL, NULL, 'For an incredible Middle Eastern spice that will bring a tangy citrus kick to your dishes, choose E-SHEF company\'s premium grade sumac. Our sumac is sourced and produced with quality in mind, giving you the best flavor and health benefits possible. Add our premium sumac to your pantry to elevate your home cooking today.', '2024-04-16 07:45:36', '2024-04-16 07:45:36'),
(61, 'Rose Buds', 93, 'Active', 'Rosa', NULL, NULL, NULL, NULL, NULL, '2024-04-16 07:48:46', '2024-04-16 07:48:46'),
(62, 'Savory', 93, 'Active', 'Brassica Oleracea VAR. Sabauda', NULL, NULL, '5', NULL, 'Savory is a versatile herb with a peppery, slightly spicy flavor that pairs well with many dishes. Though lesser known than some other herbs, savory deserves more recognition for its ability to enhance the flavors of meats, beans, vegetables, and more. With two main varieties - winter and summer - savory brings its unique taste profile to recipes all year long.', '2024-04-16 07:50:14', '2024-04-16 07:50:14'),
(63, 'Licorice', 93, 'Active', 'Glycyrrhiza glabra', NULL, NULL, NULL, NULL, 'E-SHEF company provides premium quality Egyptian licorice roots to continue this ancient natural healing tradition. Their licorice is sustainably grown in the nutrient-rich clay soil of the Nile Delta without the use of harmful chemicals. It is harvested when mature at 3-4 years old, then carefully processed to preserve its active compounds. The roots are sun-dried, graded, and packaged to deliver the optimal flavor and health benefits in every batch.\r\n\r\nWith a legacy spanning thousands of years, licorice root remains a treasured natural remedy thanks to its rich flavor and healing properties. E-SHEF is proud to offer premium Egyptian licorice roots that provide an authentic taste of this ancient tradition. Sustainably grown and carefully harvested, their licorice roots retain the highest levels of glycyrrhizin and other active compounds. Brewed into tea or used in cooking, E-SHEF\'s licorice roots provide a sweet, soothing experience that evokes the richness of Egypt\'s past.', '2024-04-16 07:51:27', '2024-04-16 07:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2023-08-17 06:59:19', '2023-08-17 06:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(13, 'LogoBlack', 'Jinna Gik', '2023-08-20 05:21:02', '2023-08-20 05:21:02'),
(14, 'LogoWhite', 'Jinna Gik', '2023-08-20 05:21:02', '2023-08-20 05:21:02'),
(26, 'Email', 'Info@e-shef.com', '2023-09-20 12:56:03', '2024-04-13 11:38:24'),
(27, 'Phone', '+2001080510280', '2023-09-20 12:56:03', '2024-04-13 11:38:04'),
(28, 'Street', 'El Hegaz St El-Bostan, Heliopolis, Cairo Governorate, Egypt', '2023-09-20 12:56:03', '2024-04-13 11:38:56'),
(29, 'Instagram', 'Instagram.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(30, 'Twitter', 'https://twitter.com/Ehaf', '2023-09-20 12:56:03', '2024-03-21 06:50:12'),
(31, 'LinkedIn', 'linkedin.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(32, 'Snapchat', 'snapchat.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(33, 'YouTube', 'youtube.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(34, 'Tiktok', 'tiktok.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(35, 'Facebook', 'https://www.facebook.com/Ehaf', '2023-09-20 12:56:03', '2024-03-21 06:50:28'),
(36, 'Copyright', '© Copyright 2024 E-SHEF', '2023-09-20 12:56:03', '2024-03-26 05:27:15'),
(37, 'Author', 'Jinna Gik', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(38, 'ifram_map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3451.7346450551076!2d31.326195599999995!3d30.1017851!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14581587dac6165b%3A0x2f984c682d69cc4c!2sEl%20Hegaz%20St%2C%20El-Bostan%2C%20Heliopolis%2C%20Cairo%20Governorate!5e0!3m2!1sen!2seg!4v1713087124306!5m2!1sen!2seg', '2023-09-20 13:16:38', '2024-04-14 07:35:23'),
(39, 'HeaderImage', 'Jinna Gik', NULL, NULL),
(40, 'activeFrom', 'Sun-Thu: 9:00AM - 6:00PM', NULL, '2024-04-14 08:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `sort` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_keys`
--

CREATE TABLE `translation_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation_keys`
--

INSERT INTO `translation_keys` (`id`, `key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'en', 'english', '2023-08-17 06:59:19', NULL),
(2, 'ar', 'arabic', '2023-08-17 06:59:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Not Active') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `location` point DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_page_id_index` (`page_id`);

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
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translation_keys`
--
ALTER TABLE `translation_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_district_id_foreign` (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_keys`
--
ALTER TABLE `translation_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
