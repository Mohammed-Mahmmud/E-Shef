-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2024 at 04:30 AM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.16

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `slug`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Admin\",\"ar\":\"Admin\"}', 'admin', 'admin@gmail.com', 'Active', NULL, '$2y$10$Nz0S0uhChipil0hydGgZLeUVI2fOa.KhtOIauCoI8.c6jY1oL8KfC', NULL, '2023-08-17 06:59:19', '2024-05-02 00:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `title_tow` varchar(255) DEFAULT NULL,
  `sub_title_tow` varchar(255) DEFAULT NULL,
  `title_three` varchar(255) DEFAULT NULL,
  `sub_title_three` varchar(255) DEFAULT NULL,
  `title_four` varchar(255) DEFAULT NULL,
  `sub_title_four` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sub_description` text DEFAULT NULL,
  `button` text DEFAULT NULL,
  `sub_button` text DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `sub_description` text DEFAULT NULL,
  `button` text DEFAULT NULL,
  `sub_button` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `page` text DEFAULT NULL,
  `section` text DEFAULT NULL,
  `sort` text DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `route` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `title_tow` text DEFAULT NULL,
  `sub_title_tow` text DEFAULT NULL,
  `title_three` text DEFAULT NULL,
  `sub_title_three` text DEFAULT NULL,
  `title_four` text DEFAULT NULL,
  `sub_title_four` text DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `firstname`, `lastname`, `email`, `message`, `phone`, `created_at`, `updated_at`) VALUES
(137, 'Paul', 'S', 'info@letsgetuoptimize.com', 'Hello e-shef.com,\r\n\r\nI would like to discuss SEO!\r\n\r\nI can help your website to get on first page of Google and increase the number of leads and sales you are getting from your website.\r\n\r\nMay I send you a quote & price list?\r\n\r\nThanks & Regards\r\nPaul | Lets Get You Optimize\r\nSr SEO consultant\r\nwww.letsgetuoptimize.com\r\nPhone No: +1 (949) 313-8897\r\n\r\n\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “opt-out”', '9493138897', '2024-04-26 18:57:28', '2024-04-26 18:57:28'),
(138, 'Denis', 'S', 'info@increaseorganictraffic.com', 'Hi Team e-shef.com, \r\n \r\nI was looking at your website and realized that despite having a great design; it was not ranking high on any of the search engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n✓ Top ranking on Google search!\r\n✓ Improve website traffic!\r\n✓ Increase Your Leads, Sales & Revenue!\r\n\r\nIf you are interested, I will send you our SEO Packages and Cost.\r\n \r\nRegards,\r\nDenis S\r\nSr SEO consultant\r\nwww.Increaseorganictraffic.com\r\nPh. No: 1-804-715-1479\r\n\r\n\r\n\r\nIf you don’t want me to contact you again about this, reply with “unsubscribe”', '1-804-715-1479', '2024-04-29 15:14:08', '2024-04-29 15:14:08'),
(139, 'Hwa', 'Midgette', 'hwa.midgette@yahoo.com', 'Dear Creator,\r\n\r\nAre you looking to take your YouTube channel to the next level and increase your visibility across both YouTube and Google Search? Look no further! My partner and I are excited to introduce you to our comprehensive video SEO optimization service tailored to maximize your growth potential.\r\n\r\nAs certified YouTube growth experts, we understand the importance of optimizing every aspect of your videos and channel to ensure they reach their fullest potential. With our proven track record and dedication to staying ahead of the curve in technology and trends, we guarantee to implement the most powerful, vital, and essential features to elevate your presence on these platforms.\r\n\r\n=>> https://optimize-youtube-video-seo.blogspot.com/ \r\n\r\nOur service includes:\r\n\r\n1. Keywords Research: We conduct in-depth research to identify the most relevant and high-performing keywords in your niche, ensuring your content is perfectly aligned with what your audience is searching for.\r\n   \r\n2. Video Optimization: From thumbnails to end screens, we optimize every element of your videos to captivate your audience and encourage engagement.\r\n\r\n3. Title & Description Optimization: Crafting compelling titles and descriptions that not only attract viewers but also enhance your videos\' discoverability through search.\r\n\r\n4. Meta Tag Optimization: Utilizing advanced techniques, we optimize meta tags to further enhance your videos\' visibility and reach.\r\n\r\n=>> https://optimize-youtube-video-seo.blogspot.com/\r\n\r\nWe pride ourselves on utilizing the latest advancements in technology, AI, and industry-leading keyword tools, combined with our years of experience, to deliver unparalleled results for our clients.\r\n\r\nIn addition to our optimization services, we provide a personalized screengrab video that outlines all the changes made to your videos, ensuring complete transparency and understanding. Furthermore, we offer the option for an onboarding call to discuss our strategies and address any questions or concerns you may have.\r\n\r\nDon\'t let your valuable content go unnoticed in the vast sea of online video content. Partner with us, and let\'s unlock the full potential of your YouTube channel together.\r\n\r\n=>> https://optimize-youtube-video-seo.blogspot.com/\r\n\r\nTo learn more about our services and how we can help you achieve your goals, please reply to this email or schedule a call at your convenience.\r\n\r\nThank you for considering us as your trusted partners in YouTube growth.\r\n\r\nWarm regards,\r\n\r\n[Hwa]', '7070853583', '2024-04-30 05:37:21', '2024-04-30 05:37:21'),
(140, 'Davidkic', 'DavidkicMH', 'lucido.leinteract@gmail.com', 'Zdravo, htio sam znati vašu cijenu.', '87964264687', '2024-05-01 05:27:22', '2024-05-01 05:27:22'),
(141, 'Nishant', 'Sharma', 'nishant.developer22@gmail.com', 'Hi,\r\n\r\nI was just browsing your website and I came up with a great plan to re-develop your website using the latest technology to generate additional revenue and beat your opponents.\r\n\r\nI\'m an excellent web developer capable of almost anything you can come up with, and my costs are affordable for nearly everyone.\r\n\r\nI would be happy to send you \"Quotes\", “Proposal” Past work Details, \"Our Packages\", and “Offers”!\r\n\r\nThanks in advance,\r\nNishant (Business Development Executive)\r\n\r\n\r\n\r\nYour Website : e-shef.com', '1234567890', '2024-05-02 18:49:35', '2024-05-02 18:49:35'),
(142, 'Charlie', 'Yang', 'charlie.yang@gmail.com', 'Hey, would you like to get some Bitc0in..\r\n\r\nWithout actually paying for it?\r\n\r\nSound like an impossible task to pull off?\r\n\r\nWell I’m here to tell you that this is NOT the case\r\n\r\n=>> Go here to see the secret for getting Bitc0in & Ethereum\r\n\r\n=>> https://bitcoin-coinz.blogspot.com/\r\n\r\nNothing like this has been accomplished before..\r\n\r\nWith this brand new system… \r\n\r\n..you have the ability to turn ANY phone or \r\ncomputer into a crypt0 extraction machine.\r\n\r\nWant to see it in action?\r\n\r\n=>> https://bitcoin-coinz.blogspot.com/\r\n\r\nThis is one of those things you “wish” \r\nyou had your hands on much earlier..\r\n\r\nCheers,\r\n\r\n[Charlie]', '41297325', '2024-05-02 23:12:08', '2024-05-02 23:12:08'),
(143, 'Search Engine', 'Index', 'info@domainsubmit.info', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://www.domainsubmit.info/', '681335929', '2024-05-03 08:56:29', '2024-05-03 08:56:29'),
(144, 'Robertkic', 'SamuelkicGM', 'lucido.leinteract@gmail.com', 'Sawubona, bengifuna ukwazi intengo yakho.', '85613663949', '2024-05-05 16:11:49', '2024-05-05 16:11:49'),
(145, 'Susannah', 'Greenfield', 'greenfield.susannah@outlook.com', 'Dear %domain_as_name%  Members,\r\n\r\nDo you believe in the power of storytelling for e-shef.com ? Picture this: a world where any text, URL, or article can seamlessly transform into captivating audiobooks or podcasts with just a few clicks. It sounds like something out of a science fiction novel, doesn\'t it? Well, allow me to introduce you to the protagonist of this tale: Ecco.\r\n\r\n=>> https://coursiify.blogspot.com/\r\n\r\nEcco isn\'t just another AI tool; it\'s a game-changer in the realm of content creation. Powered by ChatGPT4, Ecco brings your words to life in 660 different voices and 80 languages. Whether you\'re a seasoned content creator or just starting your journey, Ecco opens doors to endless possibilities.\r\n\r\n=>> https://coursiify.blogspot.com/\r\n\r\nBut here\'s the twist: Ecco isn\'t just about creating content; it\'s about turning that content into profit. With a built-in marketplace boasting 2.3 million active users, you can effortlessly share your creations with the world and receive instant payments. Imagine the potential for your brand or business!\r\n\r\nDon\'t just take my word for it. Experience the magic of Ecco for yourself with our exclusive coupon code, Ecco5OFF. Be among the first 12 to claim your discount and unlock VIP access to additional bonuses.\r\n\r\n=>> https://coursiify.blogspot.com/\r\n\r\nClick here to embark on your storytelling adventure with Ecco. Remember, every great story has a beginning - make yours with Ecco today.\r\n\r\nWarm regards,\r\n\r\n[Susannah Greenfield]', '620839438', '2024-05-06 08:06:31', '2024-05-06 08:06:31'),
(146, 'Winston', 'R', 'redfordwinston54@gmail.com', 'Winston here from Iowa. I\'m always watching to see what newer sites are going up and I just wanted to see if you would like an extra hand with getting some targeted traffic, Create custom AI bots to answer questions from visitors on your site or walk them through a sales process, create videos/images/adcopy, remove negative listings, the list goes on.  I\'ll even shoulder 90% of the costs, dedicating my time and tools that I\'ve created myself and bought over the years.  I\'ve been doing this for over 22 years, helped thousands of people and have loved every minute of it.\r\n\r\nThere\'s virtually no cost on my end to do any of this for you except for my time starting at 99 a month. I don\'t mean to impose; I was just curious if I could lend a hand.  \r\n\r\nBrief history, I\'ve been working from home for a couple decades now and I love helping others.  I\'m married, have three girls and if I can provide for them by helping you and giving back by using the tools and knowledge I\'ve built and learned over the years, I can\'t think of a better win-win.\r\n\r\nIt amazes me that no one else is helping others quite like I do and I\'d love to show you how I can help out.  So, if you need any extra help in any way, please let me know either way as I value your time and don\'t want to pester you.\r\n\r\nPS – If I didn’t mention something you might need help with just ask, I only mentioned a handful of things to keep this brief :-)\r\n\r\n\r\nAll the best,\r\n\r\nWinston\r\nCell - 1-319-435-1790‬\r\nMy Site (w/Live Chat) - https://cutt.ly/ww91SRIU', '1-319-435-1790‬', '2024-05-08 15:27:17', '2024-05-08 15:27:17'),
(147, 'Masonkic', 'MasonkicWM', 'kaenquirynicholls@gmail.com', 'Hi, kam dashur të di çmimin tuaj', '84469441514', '2024-05-08 23:27:32', '2024-05-08 23:27:32'),
(148, 'Search Engine', 'Index', 'info@domainsubmit.info', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://www.domainsubmit.info/', '7656839576', '2024-05-09 13:23:02', '2024-05-09 13:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `must_seen` enum('seen','Not Seen') NOT NULL DEFAULT 'seen',
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
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
(370, 'App\\Models\\Page', 7, '66c371e4-0429-4d90-80d6-a7499ca0ff10', 'banner', '11-Powerful-Herbs-600x400', '11-Powerful-Herbs-600x400.jpg', 'image/jpeg', 'media', 'media', 40950, '[]', '[]', '[]', '[]', 1, '2024-04-27 09:31:51', '2024-04-27 09:31:51'),
(376, 'App\\Models\\Page', 93, 'ff73e2ea-08a5-4999-bdd4-bcf64e08b9a6', 'banner', 'erbe-aromatiche-spezie.jpg__1600x620_q85_crop_subsampling-2', 'erbe-aromatiche-spezie.jpg__1600x620_q85_crop_subsampling-2.webp', 'image/webp', 'media', 'media', 377498, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:41:20', '2024-05-06 03:41:20'),
(377, 'App\\Models\\Page', 8, '4d9aa137-9434-4060-b68c-98648f5fceb5', 'banner', 'NMC111', 'NMC111.webp', 'image/webp', 'media', 'media', 85288, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:42:04', '2024-05-06 03:42:04'),
(378, 'App\\Models\\Page', 11, 'c3b25b65-c832-40fe-a4a5-2a841142c517', 'banner', 'contactus', 'contactus.webp', 'image/webp', 'media', 'media', 17362, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:42:20', '2024-05-06 03:42:20'),
(379, 'App\\Models\\Page', 13, '9d799a01-a357-4b3c-9b07-363d1219dde7', 'banner', 'depositphotos_132043144-stock-photo-fresh-herbs-hanging-basil-rosemary', 'depositphotos_132043144-stock-photo-fresh-herbs-hanging-basil-rosemary.webp', 'image/webp', 'media', 'media', 378242, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:42:40', '2024-05-06 03:42:40'),
(381, 'App\\Models\\Setting', 39, '115c5bcf-770a-4a76-96b9-69d9774af5e0', 'Logo', 'breathcumb1', 'breathcumb1.webp', 'image/webp', 'media', 'media', 60888, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:46:51', '2024-05-06 03:46:51'),
(382, 'App\\Models\\Setting', 13, '8dbc37a7-9fe8-4d6f-8502-b27aec6917c3', 'Logo', 'e-shef-high-resolution-logo-transparent', 'e-shef-high-resolution-logo-transparent.webp', 'image/webp', 'media', 'media', 47948, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:47:04', '2024-05-06 03:47:04'),
(383, 'App\\Models\\Setting', 14, 'd4dd2fa6-b986-455d-b0b9-1dfe940f8bd1', 'Logo', 'e-shef-high-resolution-logo-transparent', 'e-shef-high-resolution-logo-transparent.webp', 'image/webp', 'media', 'media', 47948, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:47:17', '2024-05-06 03:47:17'),
(384, 'App\\Models\\Page', 92, '45817c9b-d6ae-43f9-afa9-df202b72e861', 'banner', 'seeds 2', 'seeds-2.webp', 'image/webp', 'media', 'media', 173458, '[]', '[]', '[]', '[]', 1, '2024-05-06 03:56:21', '2024-05-06 03:56:21'),
(385, 'App\\Models\\Products', 63, 'e5b06133-3fd2-4fbd-9618-5ca95280587e', 'products2', 'Growing-Licorice-The-Complete-Guide-to-Plant-Care-and-Harvest-Licorice-FI', 'Growing-Licorice-The-Complete-Guide-to-Plant-Care-and-Harvest-Licorice-FI.webp', 'image/webp', 'media', 'media', 85642, '[]', '[]', '[]', '[]', 2, '2024-05-06 04:22:07', '2024-05-06 04:22:07'),
(386, 'App\\Models\\Products', 63, '19474a29-5b6b-4dae-9410-f6a9b9249358', 'products', 'Growing-Licorice-The-Complete-Guide-to-Plant-Care-and-Harvest-Licorice-FI', 'Growing-Licorice-The-Complete-Guide-to-Plant-Care-and-Harvest-Licorice-FI.webp', 'image/webp', 'media', 'media', 85642, '[]', '[]', '[]', '[]', 3, '2024-05-06 04:22:39', '2024-05-06 04:22:39'),
(387, 'App\\Models\\Products', 12, '4f4b5f4b-8c81-413b-a2fe-628e10d4329f', 'products', 'Cilantro Leave1', 'Cilantro-Leave1.webp', 'image/webp', 'media', 'media', 48694, '[]', '[]', '[]', '[]', 2, '2024-05-06 04:27:26', '2024-05-06 04:27:26'),
(388, 'App\\Models\\Products', 12, '34a59a07-acdc-4b8b-8107-b06aceb58d5f', 'products2', 'istockphoto-157592969-612x612', 'istockphoto-157592969-612x612.webp', 'image/webp', 'media', 'media', 11864, '[]', '[]', '[]', '[]', 3, '2024-05-06 04:27:26', '2024-05-06 04:27:26'),
(389, 'App\\Models\\Products', 13, '62ef4313-29bc-4964-84ba-51ddcd0b60ac', 'products', '1', '1.webp', 'image/webp', 'media', 'media', 415238, '[]', '[]', '[]', '[]', 3, '2024-05-06 04:45:13', '2024-05-06 04:45:13'),
(390, 'App\\Models\\Products', 13, '67613e7c-6b0e-4462-ab57-bdc001cd404e', 'products2', 'thyme-1000x1000', 'thyme-1000x1000.webp', 'image/webp', 'media', 'media', 211780, '[]', '[]', '[]', '[]', 4, '2024-05-06 04:45:13', '2024-05-06 04:45:13'),
(391, 'App\\Models\\Products', 14, '8e20eb6c-6506-462b-92cc-a9b3f0816409', 'products', 'spearmint', 'spearmint.webp', 'image/webp', 'media', 'media', 89370, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:33:30', '2024-05-06 05:33:30'),
(392, 'App\\Models\\Products', 15, 'f1fc1a6d-4c02-486a-bf24-3a7956ce0e11', 'products', 'senna', 'senna.webp', 'image/webp', 'media', 'media', 28580, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:34:09', '2024-05-06 05:34:09'),
(393, 'App\\Models\\Products', 16, 'b984bf87-70f2-477e-92f7-60a778f867de', 'products', 'sage', 'sage.webp', 'image/webp', 'media', 'media', 17556, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:35:09', '2024-05-06 05:35:09'),
(394, 'App\\Models\\Products', 17, 'dd297f03-8c4b-4071-9942-16b78bfd09e3', 'products', 'Rosemary', 'Rosemary.webp', 'image/webp', 'media', 'media', 24786, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:35:33', '2024-05-06 05:35:33'),
(395, 'App\\Models\\Products', 18, '203d80fd-6add-4929-8993-cd0375dfd41f', 'products', 'Peppermint', 'Peppermint.webp', 'image/webp', 'media', 'media', 21054, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:36:06', '2024-05-06 05:36:06'),
(396, 'App\\Models\\Products', 19, '26ba80c1-5320-4a9a-9ff8-ac23e584c93d', 'products', 'curly parsley leaves', 'curly-parsley-leaves.webp', 'image/webp', 'media', 'media', 48242, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:36:38', '2024-05-06 05:36:38'),
(397, 'App\\Models\\Products', 20, '1bc785fd-817e-4319-b79d-d6fcfb6ea9aa', 'products', 'flat parsley', 'flat-parsley.webp', 'image/webp', 'media', 'media', 95912, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:37:08', '2024-05-06 05:37:08'),
(398, 'App\\Models\\Products', 21, '2d0577bb-25cc-442b-8e64-a766ce140a3d', 'products', 'Oregano', 'Oregano.webp', 'image/webp', 'media', 'media', 20674, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:37:33', '2024-05-06 05:37:33'),
(399, 'App\\Models\\Products', 22, 'a6d0546b-d56a-4a84-9aab-b65dcbeb6382', 'products', 'moringa', 'moringa.webp', 'image/webp', 'media', 'media', 9788, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:37:59', '2024-05-06 05:37:59'),
(400, 'App\\Models\\Products', 23, 'f113182d-9f0f-4f76-98e5-46671bf931d9', 'products', 'Marjoram', 'Marjoram.webp', 'image/webp', 'media', 'media', 24498, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:38:22', '2024-05-06 05:38:22'),
(401, 'App\\Models\\Products', 24, 'f518cd81-53ed-4d7f-a81b-8af8d1aed898', 'products', 'Marigold - Calendula	', 'Marigold---Calendula.webp', 'image/webp', 'media', 'media', 58486, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:39:12', '2024-05-06 05:39:12'),
(402, 'App\\Models\\Products', 25, '3ed56400-414e-490e-9a09-f199854bb026', 'products', 'Molokhiya', 'Molokhiya.webp', 'image/webp', 'media', 'media', 46402, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:39:52', '2024-05-06 05:39:52'),
(403, 'App\\Models\\Products', 26, 'd4a3acb8-c081-4485-a4ec-8692754e79b5', 'products', 'lemon balm-Melissa', 'lemon-balm-Melissa.webp', 'image/webp', 'media', 'media', 74494, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:40:36', '2024-05-06 05:40:36'),
(404, 'App\\Models\\Products', 27, 'bf0f0162-e87c-474c-84ea-51936ff4c30f', 'products', 'lemongrass', 'lemongrass.webp', 'image/webp', 'media', 'media', 52588, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:41:19', '2024-05-06 05:41:19'),
(405, 'App\\Models\\Products', 28, '57a84c07-e232-4488-864d-16cff0184ece', 'products', 'leek', 'leek.webp', 'image/webp', 'media', 'media', 14966, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:43:13', '2024-05-06 05:43:13'),
(406, 'App\\Models\\Products', 29, '07af570a-cc5e-4877-a05b-39bdc37ba80e', 'products', 'Hibiscus', 'Hibiscus.webp', 'image/webp', 'media', 'media', 111792, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:43:38', '2024-05-06 05:43:38'),
(407, 'App\\Models\\Products', 30, '2ce6a60a-b936-4b9e-b996-dffe66152fd9', 'products', 'Henna', 'Henna.webp', 'image/webp', 'media', 'media', 25400, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:44:01', '2024-05-06 05:44:01'),
(408, 'App\\Models\\Products', 31, '98bbe406-3ce3-4fcb-be5f-5e68d5300298', 'products', 'dill', 'dill.webp', 'image/webp', 'media', 'media', 107150, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:44:28', '2024-05-06 05:44:28'),
(409, 'App\\Models\\Products', 32, '84f0af9b-03af-4b6d-94f2-236e1bd13839', 'products', 'basil', 'basil.webp', 'image/webp', 'media', 'media', 11862, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:44:50', '2024-05-06 05:44:50'),
(410, 'App\\Models\\Products', 33, '2ce7d16f-6c80-49d5-bbf4-330a76fbdd4f', 'products', 'Bay leaf', 'Bay-leaf.webp', 'image/webp', 'media', 'media', 15560, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:45:20', '2024-05-06 05:45:20'),
(411, 'App\\Models\\Products', 34, '65592ad8-7d25-484a-9ce2-5f88b1fa142c', 'products', 'Celery', 'Celery.webp', 'image/webp', 'media', 'media', 18496, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:45:45', '2024-05-06 05:45:45'),
(412, 'App\\Models\\Products', 35, 'a2086509-7f9d-4ce7-a6c8-4eb35a4ad161', 'products', 'Chamomile', 'Chamomile.webp', 'image/webp', 'media', 'media', 35130, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:46:08', '2024-05-06 05:46:08'),
(413, 'App\\Models\\Products', 36, '0c1d7c57-05c3-40b8-b88c-82b9403f42f1', 'products', 'anise', 'anise.webp', 'image/webp', 'media', 'media', 34778, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:46:47', '2024-05-06 05:46:47'),
(414, 'App\\Models\\Products', 37, '5094764b-7c95-4d55-b190-0deb773df485', 'products', 'caraway', 'caraway.webp', 'image/webp', 'media', 'media', 103214, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:47:23', '2024-05-06 05:47:23'),
(415, 'App\\Models\\Products', 38, 'a30281c1-c8d2-48b9-b254-8ccb55e990f3', 'products', 'coriander-seeds-herb-or-spice-scaled', 'coriander-seeds-herb-or-spice-scaled.webp', 'image/webp', 'media', 'media', 135936, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:47:58', '2024-05-06 05:47:58'),
(416, 'App\\Models\\Products', 39, 'ab9046ce-f73e-4a6a-9ad9-29cb995cfaa7', 'products', 'Cumin', 'Cumin.webp', 'image/webp', 'media', 'media', 145424, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:48:25', '2024-05-06 05:48:25'),
(417, 'App\\Models\\Products', 40, '60c28554-e003-4333-b3bd-e1403f5d5d87', 'products', 'fennel', 'fennel.webp', 'image/webp', 'media', 'media', 46976, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:48:48', '2024-05-06 05:48:48'),
(418, 'App\\Models\\Products', 41, 'de68bd8b-ac92-4866-857c-feadfbec6e55', 'products', 'fenugreek', 'fenugreek.webp', 'image/webp', 'media', 'media', 49434, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:49:22', '2024-05-06 05:49:22'),
(419, 'App\\Models\\Products', 42, 'b1552903-0472-46f1-920b-1f499b34b7fc', 'products', 'Sunflower', 'Sunflower.webp', 'image/webp', 'media', 'media', 137656, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:49:48', '2024-05-06 05:49:48'),
(420, 'App\\Models\\Products', 43, '3ef15e38-436d-4e33-9247-da80f307ef0d', 'products', 'Nigella', 'Nigella.webp', 'image/webp', 'media', 'media', 69518, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:50:12', '2024-05-06 05:50:12'),
(421, 'App\\Models\\Products', 44, 'af86d38b-29f3-4a75-853c-2883e5ddf968', 'products', 'Flax', 'Flax.webp', 'image/webp', 'media', 'media', 54936, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:50:37', '2024-05-06 05:50:37'),
(422, 'App\\Models\\Products', 45, 'c0791334-9037-4f11-b809-ce5efba192ba', 'products', 'Pumpkin', 'Pumpkin.webp', 'image/webp', 'media', 'media', 160490, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:56:03', '2024-05-06 05:56:03'),
(423, 'App\\Models\\Products', 47, '2a65325a-22e9-4151-96ab-e1df89dc4778', 'products', 'Turmeric', 'Turmeric.webp', 'image/webp', 'media', 'media', 136460, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:56:27', '2024-05-06 05:56:27'),
(424, 'App\\Models\\Products', 48, '4d93c5f2-1eb2-4a22-a392-0abdbd0fa580', 'products', 'Paprika', 'Paprika.webp', 'image/webp', 'media', 'media', 31634, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:56:50', '2024-05-06 05:56:50'),
(425, 'App\\Models\\Products', 49, 'f0151025-02e4-45ce-bdef-f3c716f387c3', 'products', 'Onions', 'Onions.webp', 'image/webp', 'media', 'media', 18502, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:57:18', '2024-05-06 05:57:18'),
(426, 'App\\Models\\Products', 50, 'b214792c-3838-44d1-b767-64dc198c84f7', 'products', 'Onions', 'Onions.webp', 'image/webp', 'media', 'media', 18502, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:57:38', '2024-05-06 05:57:38'),
(427, 'App\\Models\\Products', 51, '159802dc-d3f5-4f6e-9363-cee87a0fa398', 'products', 'lemon', 'lemon.webp', 'image/webp', 'media', 'media', 17884, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:58:48', '2024-05-06 05:58:48'),
(428, 'App\\Models\\Products', 52, '73b84b42-bf46-4dc2-9efc-4f069b16f725', 'products', 'Black Pepper', 'Black-Pepper.webp', 'image/webp', 'media', 'media', 44534, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:59:15', '2024-05-06 05:59:15'),
(429, 'App\\Models\\Products', 53, '9e1a92a1-5266-44f2-9daf-4aef027c3bb8', 'products', 'Cardamom', 'Cardamom.webp', 'image/webp', 'media', 'media', 28170, '[]', '[]', '[]', '[]', 1, '2024-05-06 05:59:39', '2024-05-06 05:59:39'),
(430, 'App\\Models\\Products', 54, '581ef7c6-d47f-4a56-8e4c-4fe929a16134', 'products', 'Cinnamon', 'Cinnamon.webp', 'image/webp', 'media', 'media', 43786, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:00:00', '2024-05-06 06:00:00'),
(431, 'App\\Models\\Products', 55, '7607ca72-2109-4030-97af-86009a1a7f19', 'products', 'Nutmeg', 'Nutmeg.webp', 'image/webp', 'media', 'media', 21084, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:00:24', '2024-05-06 06:00:24'),
(432, 'App\\Models\\Products', 56, '1431a6f1-4eb5-42a9-b08e-867c24e71bd5', 'products', 'Red Chilli', 'Red-Chilli.webp', 'image/webp', 'media', 'media', 121764, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:00:47', '2024-05-06 06:00:47'),
(433, 'App\\Models\\Products', 57, '12390485-2d6d-4c7b-a6d2-ee35a0d81b89', 'products', 'Allspice', 'Allspice.webp', 'image/webp', 'media', 'media', 48636, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:01:24', '2024-05-06 06:01:24'),
(434, 'App\\Models\\Products', 58, '61b90598-233f-4a3d-93e4-96698b772441', 'products', 'Cloves', 'Cloves.webp', 'image/webp', 'media', 'media', 57444, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:01:49', '2024-05-06 06:01:49'),
(435, 'App\\Models\\Products', 59, '7da28921-49c0-428d-b380-96cc9cb62873', 'products', 'White Pepper', 'White-Pepper.webp', 'image/webp', 'media', 'media', 31822, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:02:11', '2024-05-06 06:02:11'),
(436, 'App\\Models\\Products', 60, 'f1da0907-6ca8-4a35-89b2-bc7df11afba1', 'products', 'Sumac', 'Sumac.webp', 'image/webp', 'media', 'media', 164312, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:02:31', '2024-05-06 06:02:31'),
(437, 'App\\Models\\Products', 61, '95ab72d9-e87b-4e1f-b10a-8170b53b50de', 'products', 'Rose Buds', 'Rose-Buds.webp', 'image/webp', 'media', 'media', 61006, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:02:54', '2024-05-06 06:02:54'),
(438, 'App\\Models\\Products', 62, 'fb53175d-d72e-4c0e-abe9-58063ca986a7', 'products', 'Savory', 'Savory.webp', 'image/webp', 'media', 'media', 35610, '[]', '[]', '[]', '[]', 1, '2024-05-06 06:03:14', '2024-05-06 06:03:14');

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
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `nave` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `footer` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `description`, `nave`, `footer`, `status`, `parent_id`, `created_at`, `updated_at`) VALUES
(7, '{\"en\":\"Home\",\"ar\":\"Home\"}', '{\"en\":\"home\",\"ar\":\"home\"}', '{\"ar\":null}', 'Active', 'Active', 'Active', NULL, '2023-08-17 08:55:42', '2024-04-27 09:31:51'),
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
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `scientific_name` varchar(255) DEFAULT NULL,
  `latin_name` varchar(255) DEFAULT NULL,
  `HS_code` varchar(255) DEFAULT NULL,
  `twentyFT` varchar(255) DEFAULT NULL,
  `fortyFT` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `page_id`, `status`, `scientific_name`, `latin_name`, `HS_code`, `twentyFT`, `fortyFT`, `description`, `created_at`, `updated_at`) VALUES
(12, 'Cilantro Leave', 13, 'Active', 'Coriandrum Oleracea', NULL, '12119090000', '4.8', '9.6', 'Coriander, also known as cilantro, is a versatile herb celebrated for its unique flavor and culinary utility. Belonging to the Apiaceae family, this aromatic plant boasts delicate, fern-like leaves and small white or pale pink flowers. Coriander, an essential herb in Egyptian cuisine, adds a unique and refreshing flavor to a variety of dishes. Its presence in Egyptian cooking reflects its cultural significance and culinary versatility, enhancing the taste of traditional recipes and contributing to the rich culinary heritage of Egypt.\r\nNative to regions spanning from southern Europe to southwestern Asia, coriander is now cultivated globally for its culinary and medicinal properties.\r\n\r\nCoriander leaves, commonly referred to as cilantro in some regions, offer a fresh, citrusy taste with hints of parsley and subtle peppery notes. They are widely utilized as a garnish or ingredient in various cuisines, including salads, salsas, curries, and soups. Its seeds, on the other hand, possess a warm, nutty flavor with undertones of citrus and spice. These seeds are frequently used whole or ground in spice blends, marinades, pickles, and baked goods.\r\n\r\nBeyond its culinary applications, coriander holds significance in traditional herbal medicine. It is believed to have digestive, anti-inflammatory, and antimicrobial properties, making it a sought-after ingredient in natural remedies.\r\n\r\nCultivating coriander is relatively straightforward, requiring a temperate climate, well-draining soil, and ample sunlight. The plant typically reaches a height of 50 centimeters to 1 meter, making it suitable for both garden beds and containers.\r\n\r\nIn conclusion, coriander is a cherished herb esteemed for its distinct flavor, culinary versatility, and potential health benefits. Whether used fresh or dried, its presence enriches dishes, adding depth and complexity to culinary creations worldwide. Embracing coriander in your kitchen not only enhances the taste of your meals but also brings a touch of cultural and medicinal heritage to your table.', '2024-04-16 04:35:29', '2024-05-01 14:49:11'),
(13, 'Thyme', 13, 'Active', 'Thymus vulgaris', NULL, '091099200000', '6', '12', 'Egyptian Wild Thyme, also known as Za\'atar, is a fragrant and versatile herb indigenous to the Mediterranean region. With its small, gray-green leaves and delicate purple flowers, Egyptian Wild Thyme is not only a culinary delight but also a treasure trove of health benefits.\r\n\r\nIn Egyptian cuisine, Za\'atar is a staple ingredient, prized for its earthy flavor and aromatic profile. It is often used as a seasoning in various dishes, including meats, salads, and bread. Its distinctive taste, reminiscent of a blend of oregano, thyme, and savory, adds depth and complexity to culinary creations.\r\n\r\nBeyond its culinary applications, Egyptian Wild Thyme is renowned for its medicinal properties. Rich in antioxidants, vitamins, and minerals, it offers a range of health benefits. Za\'atar is believed to have anti-inflammatory and antimicrobial properties, supporting immune health and aiding in digestion. Additionally, it may help improve cognitive function and promote overall well-being.\r\n\r\nCultivating Egyptian Wild Thyme is relatively straightforward, as it thrives in dry, rocky soils and requires minimal water. It grows abundantly in the wild, particularly in the arid regions of Egypt, where it is harvested by hand for both culinary and medicinal purposes.\r\n\r\nIn conclusion, Egyptian Wild Thyme is a prized herb celebrated for its flavor, versatility, and health-enhancing properties. Whether used in the kitchen to elevate dishes or embraced for its medicinal benefits, Za\'atar holds a special place in Egyptian culture and cuisine, reflecting the country\'s rich culinary heritage and holistic approach to wellness. Incorporating Egyptian Wild Thyme into your diet not only tantalizes the taste buds but also nourishes the body, making it a valuable addition to any pantry or herb garden', '2024-04-16 04:39:12', '2024-05-01 14:52:51'),
(14, 'spearmint', 13, 'Active', 'Mentha viridis', NULL, '12119090000', '4.8', '9.6', 'Egyptian mint, a fragrant herb native to the Nile Delta region, is renowned for its refreshing flavor and myriad health benefits. With its vibrant green leaves and delicate purple flowers, Egyptian mint adds a burst of freshness to culinary creations and offers a wealth of therapeutic properties.\r\n\r\nIn Egyptian cuisine, mint is a beloved ingredient, used in a variety of dishes, from savory to sweet. Its cool, menthol-infused taste enhances salads, teas, desserts, and savory dishes alike, imparting a refreshing and invigorating sensation to the palate.\r\n\r\nBeyond its culinary applications, Egyptian mint is prized for its medicinal virtues. Rich in antioxidants, vitamins, and essential oils, mint is known to possess several health benefits. It aids in digestion, alleviates indigestion and nausea, and may help relieve respiratory congestion and soothe headaches. Additionally, mint\'s natural antibacterial properties promote oral health and freshen breath.\r\n\r\nCultivating Egyptian mint is relatively easy, as it thrives in moist, well-drained soil and partial sunlight. It is a hardy perennial plant that spreads quickly, making it a valuable addition to herb gardens and container plantings.\r\n\r\nIn conclusion, Egyptian mint is a versatile herb cherished for its flavor and health-enhancing properties. Whether used in culinary creations or embraced for its therapeutic benefits, mint holds a special place in Egyptian culture and cuisine. Incorporating Egyptian mint into your diet not only elevates the taste of your meals but also promotes overall well-being, making it a valuable asset to any kitchen or herbal remedy collection.', '2024-04-16 04:43:31', '2024-05-01 14:58:08'),
(15, 'senna', 13, 'Active', 'Cassia lanceolata', NULL, '12119090000', '5', '10', 'The Egyptian cinnamon tree, prized for its aromatic bark and culinary versatility, is a cherished component of Egypt\'s botanical landscape. With its distinctive reddish-brown bark and fragrant aroma, the Egyptian cinnamon tree adds depth and warmth to both sweet and savory dishes.\r\n\r\nIn Egyptian cuisine, cinnamon is a popular spice used in a variety of recipes, from desserts and baked goods to savory stews and sauces. Its rich, sweet flavor profile, with hints of warmth and spiciness, elevates the taste of dishes, imparting a unique and memorable taste experience.\r\n\r\nBeyond its culinary applications, the Egyptian cinnamon tree offers a range of health benefits. Cinnamon is rich in antioxidants and essential oils, which have been associated with numerous health-promoting properties. It may help regulate blood sugar levels, improve heart health by lowering cholesterol and blood pressure, and possess anti-inflammatory and antimicrobial properties.\r\n\r\nCultivating the Egyptian cinnamon tree requires a warm, tropical climate with well-drained soil and ample sunlight. It is a relatively low-maintenance tree that thrives in Egypt\'s Mediterranean climate, making it a valuable addition to gardens and landscapes.\r\n\r\nIn conclusion, the Egyptian cinnamon tree is a versatile and beneficial plant celebrated for its culinary and medicinal virtues. Whether used to flavor dishes or embraced for its health-enhancing properties, cinnamon holds a special place in Egyptian culture and cuisine. Incorporating Egyptian cinnamon into your diet not only enhances the taste of your meals but also contributes to your overall well-being, making it a valuable asset in any kitchen or herbal remedy collection.', '2024-04-16 04:45:35', '2024-05-01 14:59:57'),
(16, 'sage', 13, 'Active', 'Salvia officinalis', NULL, '12119090000', '5', '10', 'Our Egyptian sage is hand-picked by local farmers in Upper Egypt, where sage has grown in the arid climate for millennia. It is a sustainable crop that thrives in the desert heat with little water needed. The farmers carefully bundle and dry the sage to preserve its essential oils and flavor before its transported down the Nile River to our production facilities in Cairo. There we inspect, package, and distribute the sage while adhering to fair trade principles by investing profits back into the remote farming communities.\r\n\r\nIf you appreciate history and wellness, our Egyptian sage is a unique product straight from the deserts of antiquity. Its earthy flavor and aroma will transport you back thousands of years while providing potent health benefits. Contact E-SHEF company today to order this rare sage sustainably grown in the ancestral sands of Egypt.\r\n\r\nEgyptian dried marjoram, a fragrant herb, is a culinary essential in Egyptian cuisine. Its delicate leaves and robust aroma elevate various dishes. Rich in antioxidants and vitamins, it offers potential health benefits. Easy to cultivate in well-drained soil and full sunlight, it thrives in Egypt\'s climate. Egyptian dried marjoram enhances flavor in spice blends, marinades, soups, and stews. Its earthy, slightly floral taste adds depth to culinary creations. Embraced for its versatility, this herb holds cultural significance in Egypt, enriching both traditional and modern recipes. Incorporating Egyptian dried marjoram into cooking brings a touch of authenticity and flavor to dishes, reflecting Egypt\'s rich culinary heritage.', '2024-04-16 04:51:44', '2024-05-01 15:02:46'),
(17, 'Rosemary', 13, 'Active', 'Rosmarinus officinalis', NULL, '12119090000', '7', '14', 'Egyptian rosemary, a fragrant and versatile herb, is a culinary treasure in Egyptian cuisine. With its needle-like leaves and distinctive aroma, Egyptian rosemary enhances the flavor of various dishes. Rich in antioxidants and essential oils, it offers potential health benefits. Thriving in well-drained soil and full sunlight, it adapts well to Egypt\'s climate. Egyptian rosemary is used in marinades, dressings, roasted meats, and vegetables, adding a unique and aromatic touch. Its earthy, pine-like flavor profile elevates both traditional and modern recipes. Embraced for its culinary prowess, this herb holds cultural significance in Egypt, enriching the country\'s culinary heritage. Incorporating Egyptian rosemary into cooking brings authenticity and flavor to dishes, reflecting Egypt\'s vibrant gastronomic traditions.\r\n\r\nThe herbs are hand-picked once fully mature and immediately dried to retain the essential oils that give rosemary its unique piney aroma and flavor. E-SHEF company\'s Egyptian rosemary has an intense, robust taste that makes it ideal for seasoning roasted meats, soups, stews, and other savory dishes. Its high antioxidant content from rosmarinic acid and other beneficial plant compounds also makes rosemary a popular medicinal herb. From traditional folk remedies to modern research, studies have shown rosemary can help boost memory, improve mood, and support overall cognitive function.\r\nWith its origins in ancient Egypt, E-SHEF company\'s premium Egyptian rosemary represents a timeless herb, connecting past and present through its enduring flavor and health properties. Sourced from the fertile Nile Delta, this sustainably grown rosemary will bring bold, piney flavor and nutritional value to dishes across the world. The rich history behind Egyptian rosemary makes E-SHEF company\'s product a fascinating addition to any pantry or herb garden.', '2024-04-16 04:53:51', '2024-05-01 15:04:31'),
(18, 'Peppermint', 13, 'Active', 'Menthae piperita', NULL, '12119090000', '5', '10', 'In Egyptian cuisine, mint is a beloved ingredient, used in a variety of dishes, from savory to sweet. Its cool, menthol-infused taste enhances salads, teas, desserts, and savory dishes alike, imparting a refreshing and invigorating sensation to the palate.\r\n\r\nBeyond its culinary applications, Egyptian mint is prized for its medicinal virtues. Rich in antioxidants, vitamins, and essential oils, mint is known to possess several health benefits. It aids in digestion, alleviates indigestion and nausea, and may help relieve respiratory congestion and soothe headaches. Additionally, mint\'s natural antibacterial properties promote oral health and freshen breath.\r\n\r\nAs one of Egypt\'s most time-honored botanicals, peppermint has a revered status in Egyptian history and culture. Ancient Egyptians used peppermint as a versatile medicine, flavor enhancer, air purifier, and to embalm their dead. Frescoes from pharaohs\' tombs depict peppermint leaves and essential oils being presented as noble offerings. Today, dried peppermint leaves are still ubiquitous in Egyptian homes and widely used in traditional Egyptian dishes, teas, and folk remedies. When you enjoy our Egyptian peppermint, you take part in this ancient legacy.\r\n\r\nNow you can experience a taste of Egyptian history with our premium Egyptian peppermint, sustainably grown along the mighty Nile using centuries-old organic methods. Its exceptionally pungent, sweet flavor and fragrance will transport you right to the fertile banks of the Nile. Treat yourself to this legendary botanical treasure today.', '2024-04-16 05:26:30', '2024-05-01 15:06:21'),
(19, 'curly parsley leaves', 13, 'Active', 'Petroselinum crispum', NULL, '070999300000', '5', '10', 'The parsley from E-SHEF comes straight from Egyptian soil that has nurtured these plants since the days of the pharaohs. When you use our Egyptian parsley, you are connecting to thousands of years of culinary history, while also enjoying maximum nutrition and taste. We are proud to work with traditional farmers to sustainably grow these heirloom herbs.\r\n\r\nEgyptian curly parsley, a vibrant herb renowned for its culinary versatility, holds a special place in Egyptian cuisine. With its curly, emerald-green leaves and fresh aroma, Egyptian curly parsley adds both flavor and visual appeal to a variety of dishes. Rich in vitamins, minerals, and antioxidants, it offers potential health benefits, including digestive support and immune boosting properties. Thriving in Egypt\'s temperate climate, Egyptian curly parsley is easy to cultivate in well-drained soil and partial sunlight. Used as a garnish or ingredient in salads, soups, stews, and sauces, its fresh, slightly peppery taste enhances the overall taste experience. Embraced for its culinary and nutritional value, curly parsley is a staple in Egyptian kitchens, reflecting the country\'s rich culinary heritage and commitment to wholesome ingredients. Incorporating Egyptian curly parsley into cooking not only adds depth and flavor to dishes but also celebrates Egypt\'s vibrant gastronomic traditions.\r\nE-SHEF company is your source for premium Egyptian parsley, sustainably grown on small farms nestled on the fertile banks of the ancient Nile River. Our flavorful, nutritious parsley can elevate everyday meals, providing a tangy herbal taste and nutritional value. The next time you cook, choose E-SHEF parsley for a truly exceptional experience that spans across history from plate to palate.', '2024-04-16 05:32:14', '2024-05-01 15:08:00'),
(20, 'flat parsley', 13, 'Active', 'Petroselinum crispum', NULL, '070999300000', '5', '10', 'Egyptian flat-leaf parsley, a beloved herb prized for its culinary excellence, holds a prominent position in Egyptian gastronomy. Characterized by its smooth, flat leaves and fresh fragrance, Egyptian flat-leaf parsley is an essential ingredient in a myriad of dishes. Packed with vitamins, minerals, and antioxidants, it offers potential health benefits, including aiding digestion and promoting overall wellness. Flourishing in Egypt\'s moderate climate, Egyptian flat-leaf parsley thrives in well-drained soil and partial sunlight. Whether used as a garnish or incorporated into salads, soups, sauces, and marinades, its mild, slightly peppery flavor enhances the taste profile of numerous recipes. Embraced for its culinary versatility and nutritional value, flat-leaf parsley is a cornerstone of Egyptian cuisine, reflecting the country\'s rich culinary heritage and commitment to fresh, wholesome ingredients. Integrating Egyptian flat-leaf parsley into culinary creations not only enriches the flavor but also pays homage to Egypt\'s vibrant culinary traditions.\r\n\r\nE-SHEF company is your source for premium Egyptian parsley, sustainably grown on small farms nestled on the fertile banks of the ancient Nile River. Our flavorful, nutritious parsley can elevate everyday meals, providing a tangy herbal taste and nutritional value. The next time you cook, choose E-SHEF parsley for a truly exceptional experience that spans across history from plate to palate.', '2024-04-16 05:35:46', '2024-05-01 15:09:37'),
(21, 'Oregano', 13, 'Active', 'Origanum syriacum', NULL, NULL, '4.8', '10', 'Egyptian oregano, a fragrant herb renowned for its culinary prowess, is a cherished ingredient in Egyptian cuisine. With its aromatic leaves and robust flavor, Egyptian oregano adds depth and complexity to a variety of dishes. Rich in antioxidants and essential oils, it offers potential health benefits, including aiding digestion and boosting immunity. Flourishing in Egypt\'s warm climate, Egyptian oregano thrives in well-drained soil and full sunlight. Whether used fresh or dried, its peppery, slightly citrusy taste enhances the flavor profile of sauces, marinades, meats, and vegetables. Embraced for its culinary versatility and medicinal properties, Egyptian oregano holds cultural significance in Egypt, enriching both traditional and modern recipes. Incorporating Egyptian oregano into cooking not only elevates the taste of dishes but also celebrates Egypt\'s rich culinary heritage and commitment to quality ingredients.\r\n\r\nOregano has been used since ancient times for its versatile culinary properties and therapeutic benefits. E-SHEF company is excited to share premium quality Greek oregano with customers looking for an authentic taste of the Mediterranean. Their oregano connects us to the rich history of this beloved herb while providing exceptional flavor and nutrition. Whether cooking a delicious Italian meal or seeking natural relief, E-SHEF’s Greek oregano is sure to satisfy.', '2024-04-16 05:54:52', '2024-05-01 15:10:55'),
(22, 'moringa', 13, 'Active', 'Moringa oleifera', NULL, '12119090000', '4.8', '10', 'Egyptian Moringa, a nutrient-rich herbaceous plant, is highly valued in Egyptian culture for its numerous health benefits and culinary applications. With its slender, elongated leaves and fragrant white flowers, Egyptian Moringa is a staple in traditional medicine and cuisine.\r\n\r\nRenowned for its exceptional nutritional profile, Egyptian Moringa is rich in vitamins, minerals, and antioxidants, making it a potent natural supplement for promoting overall health and well-being. It is believed to support immune function, improve digestion, and boost energy levels.\r\n\r\nCultivating Egyptian Moringa is relatively straightforward, as it thrives in warm, tropical climates with well-drained soil and ample sunlight. It is a fast-growing', '2024-04-16 05:58:54', '2024-05-01 15:12:57'),
(23, 'Marjoram', 13, 'Active', 'Origanum majorana', NULL, '12119090000', '5', '10', 'E-SHEF is an Egyptian company specializing in premium herbs and spices harvested from the Nile Delta region, including marjoram. The rich alluvial soil and ideal growing climate around the Nile River have supported marjoram cultivation since pharaonic times. Ancient Egyptians used marjoram for food flavoring and as part of traditional medicine. Today, E-SHEF sustainably grows and exports marjoram that retains the same superior quality that was so prized in ancient Egypt.\r\n\r\n.Egyptian marjoram, a versatile herb, holds a special place in Egyptian cuisine and culture. With its delicate leaves and aromatic fragrance, Egyptian marjoram adds depth and flavor to a wide range of dishes. Rich in antioxidants and essential oils, it offers potential health benefits, including aiding digestion and promoting overall wellness. Thriving in Egypt\'s warm climate, Egyptian marjoram is easy to cultivate in well-drained soil and full sunlight. Its leaves are commonly used fresh or dried in culinary creations, such as soups, stews, sauces, and marinades, imparting a subtle, slightly sweet flavor profile. Embraced for its culinary versatility and medicinal properties, Egyptian marjoram is deeply rooted in Egyptian tradition, reflecting the country\'s rich culinary heritage and connection to the land. Incorporating Egyptian marjoram into cooking not only enhances the taste of dishes but also celebrates Egypt\'s vibrant culinary traditions and commitment to using natural, flavorful ingredients.', '2024-04-16 06:02:52', '2024-05-01 15:16:25'),
(24, 'Marigold - Calendula', 13, 'Active', 'Calendula Officinalis L', NULL, '12119090000', '4', '8', 'The marigold is a beloved flower that has been cultivated for centuries. Known botanically as Calendula, this cheery flower has a long and storied history, particularly in Egypt where it has been revered since ancient times. The Egyptians recognized the marigold for both its beauty and its versatile utility. Now, the E-SHEF company is proud to offer authentic Egyptian Marigold - Calendula grown in this ancient land.\r\n\r\nMarigold, also known as Calendula, is a vibrant and versatile herbaceous plant native to Egypt, renowned for its ornamental beauty and medicinal properties. With its bright orange or yellow flowers and delicate petals, Marigold adds a pop of color to gardens and landscapes. Beyond its aesthetic appeal, Marigold boasts numerous health benefits and practical uses. Rich in flavonoids, carotenoids, and essential oils, Marigold offers potential anti-inflammatory, antimicrobial, and antioxidant properties. In traditional Egyptian medicine, Marigold has been used to soothe skin irritations, heal wounds, and alleviate digestive discomfort. Its petals are often infused into oils, creams, and salves for topical application, while its leaves and flowers can be brewed into teas or tinctures for internal consumption. Marigold\'s versatility extends to culinary applications as well, with its petals used as a natural food coloring or garnish in salads and desserts. Easy to cultivate in well-drained soil and partial sunlight, Marigold thrives in Egypt\'s warm climate, making it a popular choice for home gardens and herbal remedies. Embraced for its beauty, fragrance, and therapeutic benefits, Marigold holds a special place in Egyptian culture and herbal traditions, symbolizing vitality, healing, and natural beauty. Incorporating Marigold into daily life not only enhances aesthetic surroundings but also promotes holistic well-being, connecting individuals to Egypt\'s rich botanical heritage and the healing power of nature.', '2024-04-16 06:05:52', '2024-05-01 15:18:22'),
(25, 'Molokhiya', 13, 'Active', 'Corchorus olitorius', NULL, NULL, '5', '10', 'Molokhiya is made from the leaves of Corchorus olitorius, a plant from the mallow family. The ancient Egyptians first cultivated molokhiya as early as the Middle Kingdom period more than 4,000 years ago. Hieroglyphics and wall paintings show that both rich and poor Egyptians enjoyed eating molokhiya. The 12th century Arab historian Al-Makrizi wrote that Fatimid Caliph Al-Mustansir had fields of molokhiya planted around Cairo to make sure he had a steady supply.\r\n\r\nEgyptian Molokhia, a staple in Egyptian cuisine, is a leafy green vegetable revered for its unique flavor and nutritional benefits. With its tender leaves and mucilaginous texture, Egyptian Molokhia is a versatile ingredient in a variety of traditional dishes. Rich in vitamins, minerals, and antioxidants, it offers potential health benefits, including supporting digestion, boosting immunity, and promoting overall wellness. Thriving in Egypt\'s warm climate, Egyptian Molokhia is cultivated in fertile soil and ample sunlight. Its leaves are harvested and commonly used fresh or dried in soups, stews, and sauces, adding a distinct, earthy flavor and thickening texture to dishes. Embraced for its culinary versatility and cultural significance, Egyptian Molokhia is deeply rooted in Egyptian tradition, reflecting the country\'s agricultural heritage and connection to the land. Incorporating Egyptian Molokhia into cooking not only enhances the taste of dishes but also celebrates Egypt\'s rich culinary traditions and commitment to using fresh, flavorful ingredients. Whether enjoyed as a comforting soup or a hearty stew, Molokhia remains a beloved and iconic dish in Egyptian households, symbolizing unity, nourishment, and the essence of home-cooked meals.', '2024-04-16 06:08:48', '2024-05-01 15:20:11'),
(26, 'lemon balm-Melissa', 13, 'Active', 'Melissa officinalis', NULL, '12119090000', '6', '12', 'Egyptian Lemon Balm, scientifically known as Melissa officinalis, is a fragrant and versatile herb celebrated for its culinary and medicinal properties. With its bright green leaves and citrusy aroma, Egyptian Lemon Balm adds a refreshing and zesty flavor to a variety of dishes and beverages. Rich in antioxidants and essential oils, it offers potential health benefits, including stress relief, improved digestion, and enhanced cognitive function. Thriving in Egypt\'s warm climate, Egyptian Lemon Balm is cultivated in well-drained soil and partial sunlight. Its leaves are commonly used fresh or dried in teas, infusions, salads, and desserts, imparting a delicate lemon flavor and aroma. Embraced for its culinary versatility and therapeutic benefits, Egyptian Lemon Balm holds cultural significance in Egypt, reflecting the country\'s rich herbal traditions and connection to natural remedies. Incorporating Egyptian Lemon Balm into culinary creations not only enhances the taste of dishes but also promotes holistic well-being, offering a delightful burst of citrus freshness and nourishment. Whether enjoyed as a soothing tea or a flavorful seasoning, Lemon Balm remains a cherished herb in Egyptian households, symbolizing vitality, health, and the essence of homegrown ingredients.\r\n\r\nThe E-SHEF company in Egypt offers premium quality dried and fresh lemon balm sourced directly from local farms. With Egypt\'s warm climate and fertile soil, especially near the Nile Delta, Egyptian lemon balm thrives. The plants grow tall and robust, producing abundant leaves with exceptionally high essential oil content. E-SHEF lemon balm is harvested at peak freshness then handled with care to preserve the signature lemon scent and natural active compounds. Customers praise E-SHEF lemon balm for its potent, clean aroma and ability to elevate any remedy, recipe or cosmetic product.\r\n\r\nLemon balm has an illustrious past being revered for millennia in Egypt for its nourishing and therapeutic properties. As offered by the E-SHEF company, Egyptian lemon balm today continues this ancient legacy. With its distinct lemony fragrance and flavor, high quality Egyptian lemon balm adds value to many applications.', '2024-04-16 06:11:22', '2024-05-01 15:22:19'),
(27, 'lemongrass', 13, 'Active', 'Cymbopogon Citratus', NULL, '12119090000', '4.8', '9.6', 'E-SHEF Company is proud to offer premium Egyptian lemongrass sourced directly from local farms that have been growing lemongrass for generations. Unlike lemongrass imported from other regions, Egyptian lemongrass grows in mineral-rich soil nurtured by the life-giving waters of the Nile. This imparts a distinctively bright, lemon-lime flavor and incredible aroma to Egyptian lemongrass. The lemongrass is harvested by hand at peak freshness to capture the full spectrum of citrusy flavors. E-SHEF Company brings this ancient botanical treasure to modern tables in a convenient dried form.\r\n\r\nLemongrass, also known as \"Cymbopogon citratus,\" is a popular herbaceous plant native to Egypt, known for its distinct citrus flavor and aromatic fragrance. This perennial grass belongs to the Poaceae family and thrives in tropical and subtropical climates, including Egypt\'s fertile lands. With its long, slender green leaves and robust stalks, lemongrass adds a refreshing zest to various culinary dishes, beverages, and herbal teas, making it a staple ingredient in Egyptian cuisine and traditional medicine.\r\n\r\nIn Egyptian culture, lemongrass holds a revered status for its culinary versatility and therapeutic properties. Renowned for its lemony essence, it imparts a tangy, citrusy flavor to savory soups, stews, curries, and marinades, enhancing the overall taste profile of dishes. Its aromatic oils and compounds lend a refreshing aroma to teas and beverages, offering a soothing and invigorating experience.', '2024-04-16 06:12:50', '2024-05-01 15:30:33'),
(28, 'leek', 13, 'Active', 'Allium ampeloprasum', NULL, '070390000000', '5', '10', 'Egypt has long been renowned for its fertile agricultural lands along the Nile River, which have produced bountiful harvests of grains, fruits, and vegetables for millennia. Among the diverse crops grown in Egypt is the leek, a vegetable that has been cultivated in the region since ancient times. Leeks grow well in Egypt\'s warm climate and rich soil, producing crisp, tasty specimens that are popular ingredients in Egyptian cuisine.\r\n\r\n\r\nEgyptian celery, scientifically known as Apium graveolens, is a beloved vegetable renowned for its crisp texture, distinct flavor, and versatile culinary uses. This biennial plant, belonging to the Apiaceae family, is cultivated in Egypt\'s rich soils, thriving in the country\'s favorable climate conditions. With its crunchy stalks and vibrant green leaves, Egyptian celery adds a refreshing and nutritious element to various dishes, making it a staple in Egyptian cuisine and culinary traditions.\r\n\r\nIn Egyptian culture, celery holds a cherished place for its culinary versatility and nutritional value. Its crispness and mild, slightly bitter flavor make it a popular ingredient in salads, soups, stews, and stir-fries, adding depth and texture to dishes. Egyptians often incorporate celery into traditional recipes such as fattoush salad, molokhia, and vegetable tagines, showcasing its unique flavor profile and enhancing the overall dining experience.\r\n\r\nBeyond its culinary uses, Egyptian celery is valued for its health benefits and medicinal properties. Rich in essential vitamins, minerals, and antioxidants, celery offers a range of health-promoting nutrients, including vitamin K, vitamin C, potassium, and folate. It is known for its potential to support digestion, regulate blood pressure, and reduce inflammation, contributing to overall well-being and vitality.', '2024-04-16 06:15:39', '2024-05-01 15:32:31'),
(29, 'Hibiscus', 13, 'Active', 'HIBISCUS SABDARIFFA', NULL, '12119090000', NULL, NULL, 'Egyptian hibiscus, scientifically known as Hibiscus sabdariffa, is a vibrant and aromatic flower cherished for its bold flavor, stunning appearance, and diverse culinary and medicinal uses. Cultivated in Egypt\'s fertile lands, this tropical plant belongs to the Malvaceae family and thrives in the country\'s warm climate and rich soil conditions. With its deep red petals and tangy taste, Egyptian hibiscus has been an integral part of Egyptian culture, cuisine, and herbal medicine for centuries.\r\n\r\nIn Egyptian culinary traditions, hibiscus is prized for its tart and refreshing flavor profile, which adds a unique twist to various beverages and dishes. One of the most popular uses of Egyptian hibiscus is in the preparation of \"karkadeh,\" a traditional herbal tea made by steeping dried hibiscus flowers in hot water. Karkadeh is enjoyed hot or cold and is often sweetened with sugar or flavored with spices such as cinnamon or ginger, creating a delightful and invigorating beverage enjoyed throughout Egypt and beyond.\r\n\r\nBeyond its culinary applications, Egyptian hibiscus is revered for its medicinal properties and potential health benefits. Rich in antioxidants, vitamins, and minerals, hibiscus tea is believed to promote heart health, lower blood pressure, and support digestion. It is also valued for its diuretic properties and its ability to promote hydration and detoxification.\r\n\r\nIn Egyptian herbal medicine, hibiscus is used to treat various ailments, including hypertension, high cholesterol, and digestive issues. Its anti-inflammatory and antimicrobial properties make it a popular remedy for colds, flu, and other respiratory infections. Hibiscus-infused oils and extracts are also used topically to soothe skin irritations and promote hair health.\r\n\r\nEgyptian hibiscus is readily available in local markets and herbal shops throughout the country, with dried flowers and tea blends being popular choices among consumers. Its vibrant color, tangy flavor, and potential health benefits have contributed to its popularity both locally and internationally, with hibiscus tea becoming a trendy beverage in wellness circles worldwide.\r\n\r\nIn summary, Egyptian hibiscus is a versatile and beloved flower celebrated for its culinary, medicinal, and aesthetic qualities. Whether enjoyed as a refreshing tea, incorporated into culinary creations, or used for its health-promoting properties, hibiscus remains an integral part of Egyptian culture and heritage, captivating the senses and nourishing the body and soul.', '2024-04-16 06:17:48', '2024-05-01 15:34:20'),
(30, 'Henna', 13, 'Active', 'Lawsonia inermis', NULL, '12119090000', '16', '20', 'Egyptian green henna, scientifically known as Lawsonia inermis, is a revered herb celebrated for its vibrant green leaves and diverse applications in Egyptian culture and traditions. Cultivated in the fertile lands of Egypt, green henna holds a special place in the hearts of Egyptians for its rich cultural significance and wide-ranging benefits. Traditionally used for body art, hair dyeing, and medicinal purposes, green henna is cherished for its natural properties and versatility. Its leaves, when crushed and mixed with water, release a greenish dye that is applied to the skin or hair, leaving behind intricate designs or vibrant hues. In addition to its cosmetic uses, green henna is also valued in herbal medicine for its potential anti-inflammatory, antimicrobial, and cooling properties. With its long history and multifaceted benefits, Egyptian green henna continues to be an integral part of Egyptian traditions and holistic wellness practices.\r\n\r\nWith its 5,000 year history and cultural significance, henna continues to hold an important place in society today. E-SHEF provides access to the rich tradition of Egyptian henna, ethically sourced from family-owned farms on the Nile Delta. Both the quality and artistry of their henna products and designs truly connect people to this ancient heritage. For a traditional yet timeless experience with henna body art, E-SHEF’s Egyptian henna is an ideal choice.', '2024-04-16 06:19:31', '2024-05-01 15:36:02'),
(31, 'dill', 13, 'Active', 'Anethum graveolens', NULL, '12119090000', '6', '12', 'Egyptian dill, scientifically known as Anethum graveolens, is a fragrant herb treasured for its delicate leaves and distinct flavor, widely utilized in Egyptian culinary and medicinal practices. Flourishing in Egypt\'s fertile soil and favorable climate, Egyptian dill is esteemed for its versatility in enhancing the taste and aroma of various dishes. With its feathery green leaves and subtle anise-like taste, it adds a refreshing and aromatic element to salads, soups, stews, and sauces, enriching the culinary landscape of Egyptian cuisine. Beyond its culinary uses, Egyptian dill is valued for its potential health benefits, believed to aid digestion, alleviate bloating, and promote overall well-being. Whether used fresh or dried, Egyptian dill remains a beloved herb, cherished for its flavor, fragrance, and therapeutic properties in Egyptian culture and beyond.\r\n\r\nWith E-SHEF Egyptian dill, you can add 5,000 years of flavor and history to your pantry. Grown in Egypt\'s fertile Nile Delta, our dill connects you directly to pharaohs of ancient times who also enjoyed this aromatic, versatile herb. Treat your taste buds to a genuine taste of Egyptian culture with E-SHEF dill.', '2024-04-16 06:21:06', '2024-05-01 15:37:19'),
(32, 'basil', 13, 'Active', 'Ocimum Basilicum L', NULL, '12119090000', '6', '12', 'E-SHEF\'s Egyptian basil has an unmistakable aroma and concentrated flavor that comes from being grown under the hot Egyptian sun. The basil leaves are a bit smaller than the Genovese variety, with a unique spear-like shape. Besides being full of flavor, Egyptian basil also has a beautiful deep green color that makes any dish look more appetizing. Whether used in salads, sauces, or to flavor meats, Egyptian basil is the perfect way to add intrigue and ancient history to your cooking.\r\n\r\nEgyptian basil, scientifically known as Ocimum basilicum, is a cherished herb revered for its aromatic leaves and culinary versatility, deeply rooted in Egyptian culture and cuisine. Thriving in Egypt\'s warm climate and fertile soil, Egyptian basil boasts a distinctive flavor profile characterized by its sweet, slightly peppery taste and aromatic fragrance. Widely used in Egyptian culinary traditions, it adds depth and complexity to various dishes, including salads, soups, stews, and sauces. Whether incorporated fresh or dried, Egyptian basil infuses a burst of freshness and flavor, elevating the taste experience. Beyond its culinary uses, Egyptian basil is valued for its potential health benefits, believed to possess antioxidant and anti-inflammatory properties. As an integral part of Egyptian culinary heritage, Egyptian basil continues to captivate palates and enrich dishes with its vibrant flavor and aromatic essence.', '2024-04-16 06:22:28', '2024-05-01 15:39:15'),
(33, 'Bay leaf', 13, 'Active', 'Laurus Nobilis', NULL, '091099200000', '5', '10', 'Egyptian bay leaves, derived from the Laurus nobilis tree, are esteemed for their aromatic essence and culinary significance deeply rooted in Egyptian cuisine. Flourishing in Egypt\'s favorable climate, these leaves possess a rich, earthy flavor profile with subtle hints of spice and bitterness. Egyptian bay leaves are integral to traditional Egyptian dishes, including soups, stews, and meat-based recipes, infusing them with a distinctive depth of flavor. Renowned for their potential health benefits, Egyptian bay leaves are believed to aid digestion, reduce inflammation, and promote overall well-being. Whether used fresh or dried, Egyptian bay leaves add complexity and aroma to culinary creations, embodying the essence of Egyptian culinary heritage and enriching dishes with their unique flavor profile.\r\n\r\nFor cooks looking to add quintessential flavor to their cooking, E-SHEF\'s Egyptian bay leaves are the ultimate choice. Harvested from the fertile Nile Delta where bay trees have grown for millennia, these authentic leaves deliver an unparalleled intensity and nuance of flavor. The same leaves that seasoned dishes in ancient Egyptian palaces can now spice up meals in kitchens worldwide. E-SHEF is proud to offer these premium bay leaves straight from the ancient land of Egypt.', '2024-04-16 06:24:48', '2024-05-01 15:44:07'),
(34, 'Celery', 13, 'Active', 'Apium graveolens', NULL, '12119090000', '4.8', '9.6', 'E-shef Celery Herbs: Flavorful Versatility\r\nLevel up your dishes with E-shef\'s premium organic (USDA certified) and conventional celery herbs. Our vibrant leaves boast a balanced flavor – earthy, with a hint of bitterness and a refreshing finish.\r\n\r\nUnleash culinary magic: elevate soups, stews, stuffings, salads, and season poultry or fish for a delightful savory touch.\r\n\r\nE-shef Celery Herbs: Flavor unlocked.', '2024-04-16 06:26:31', '2024-05-10 03:03:33'),
(35, 'Chamomile', 13, 'Active', 'Matricaria chamomilla', NULL, '12119090000', NULL, NULL, 'E-shef Premium Chamomile: Steep Tranquility\r\nUnwind with E-shef\'s meticulously sourced chamomile, offered in organic (USDA certified) and conventional varieties. Both boast vibrant flowers, a calming aroma, and a delightful flavor.\r\n\r\nExperience relaxation, potential discomfort relief, and a naturally sweet taste. Available in whole chamomile flowers (for loose-leaf brewing) and tea bags (if offered).\r\n\r\nEmbrace serenity, one cup at a time.', '2024-04-16 06:29:03', '2024-05-10 02:57:37'),
(36, 'anise', 92, 'Active', 'Pimpinella anisum L', NULL, '090960000000', '12.5', '25', 'Egyptian anise seeds, scientifically known as Pimpinella anisum, are highly esteemed for their aromatic fragrance and culinary versatility, deeply intertwined with Egypt\'s rich cultural heritage and culinary traditions. Cultivated in Egypt\'s fertile lands and under its sunny climate, Egyptian anise seeds boast a distinct licorice-like flavor profile with sweet and slightly spicy undertones. These tiny seeds are a staple ingredient in Egyptian cuisine, adding depth of flavor to a wide range of dishes, including bread, pastries, desserts, and beverages. Renowned for their potential health benefits, Egyptian anise seeds are believed to aid digestion, alleviate bloating, and promote respiratory health. They are also valued for their antioxidant and anti-inflammatory properties. Whether used whole, ground, or as an essential oil, Egyptian anise seeds\r\n\r\nWith a history spanning thousands of years, anise remains an important spice today. E-SHEF company is proud to offer premium Egyptian anise seeds, sourced directly from the same fertile valleys along the Nile where anise has been grown since ancient times. Their high-quality seeds carry on the ancient legacy of this distinctive and versatile spice.', '2024-04-16 06:33:49', '2024-05-01 19:50:56'),
(37, 'caraway', 92, 'Active', 'Carum carvi', NULL, '090960000000', '18', '22.5', 'Egyptian cumin seeds, scientifically known as Cuminum cyminum, are prized for their distinctive flavor and widespread culinary use, deeply ingrained in Egyptian cuisine and cultural traditions. Cultivated in Egypt\'s fertile lands and under its favorable climate conditions, Egyptian cumin seeds boast a warm, earthy aroma and a slightly nutty, peppery taste profile. These small, oblong seeds are a fundamental ingredient in Egyptian cooking, imparting depth and richness to a variety of dishes, including stews, soups, curries, and spice blends. Renowned for their potential health benefits, Egyptian cumin seeds are believed to aid digestion, boost immunity, and possess antioxidant properties. They are also valued for their role in traditional medicine, where they are used to alleviate digestive discomfort and promote overall well-being. Whether used whole or ground, Egyptian cumin seeds are a quintessential spice in Egyptian kitchens, enhancing the flavor and aroma of culinary creations and reflecting the essence of Egypt\'s vibrant gastronomic culture.', '2024-04-16 06:36:04', '2024-05-01 19:51:48'),
(38, 'Coriander', 92, 'Active', 'Coriandrum sativum', NULL, '090920000000', '7', '14', 'The prized coriander seeds are produced when the plant\'s flowers and leaves wither and its seeds ripen. The small, round seeds are harvested when they take on a yellow-brown color and have a sweet, aromatic flavor. The seeds can then be used whole or ground into powder. When ground, the inner white color of the seeds is revealed. The flavor is warm, nutty and slightly citrusy. Coriander seeds are an essential ingredient in curries, garam masala, pickling spices and many other spice blends. They pair particularly well with red meat, fish, beans, lentils and vegetables.\r\n\r\nEgyptian caraway seeds are a prized culinary ingredient renowned for their rich flavor and medicinal properties. These small, crescent-shaped seeds are harvested from the Carum carvi plant, which thrives in Egypt\'s fertile soil and temperate climate. With a distinct aromatic profile reminiscent of anise and cumin, Egyptian caraway seeds add depth and complexity to a wide array of dishes, from savory stews to baked goods.\r\n\r\nRenowned for their versatility, these seeds are a staple in Egyptian cuisine, where they are commonly used in traditional dishes like koshari, falafel, and ful medames. Beyond their culinary uses, Egyptian caraway seeds have a long history of medicinal applications, prized for their digestive benefits and ability to alleviate symptoms such as bloating, indigestion, and flatulence.\r\n\r\nRich in essential oils, vitamins, and minerals, Egyptian caraway seeds are not only flavorful but also pack a nutritional punch. They are a good source of antioxidants, fiber, and micronutrients like iron and calcium, making them a valuable addition to a balanced diet.', '2024-04-16 06:37:33', '2024-05-01 19:51:56'),
(39, 'Cumin', 92, 'Active', 'Cuminum cyminum L.', NULL, '090931000000', '12.5', '25', 'Egyptian cumin, also known as caraway seeds, is a prized spice celebrated for its robust flavor and versatile culinary applications. Sourced from the Carum carvi plant, which thrives in Egypt\'s fertile soil and optimal climate conditions, these small, crescent-shaped seeds boast a distinctive aroma and taste profile that sets them apart in the world of spices.\r\n\r\nRenowned for their versatility, Egyptian cumin seeds are a staple ingredient in Egyptian cuisine, enhancing the flavor of a wide range of dishes, from hearty stews to fragrant rice pilafs. Their warm, earthy flavor with hints of citrus and anise makes them an essential component in traditional dishes such as koshari, falafel, and dukkah spice blends.\r\n\r\nBeyond their culinary appeal, Egyptian cumin seeds have a long history of medicinal use, valued for their digestive benefits and ability to alleviate discomforts like bloating and indigestion. Rich in essential oils, vitamins, and minerals, these seeds offer not only flavor but also nutritional value, providing antioxidants, fiber, and important micronutrients like iron and calcium.\r\n\r\nWith a history as rich as the Nile, cumin remains an integral part of Egyptian culture and cuisine. E-SHEF company is proud to offer authentic, high quality Egyptian cumin seeds to spice up your cooking with the flavors of antiquity. Next time you use cumin, take a taste of ancient Egypt.', '2024-04-16 06:39:38', '2024-05-01 15:58:19'),
(40, 'fennel', 92, 'Active', 'Foeniculum vulgare', NULL, '090960000000', '16', '19', 'Fennel seeds have been highly valued throughout history for their unique aroma and flavor. Native to southern Europe and the Mediterranean, these aromatic seeds have been used for culinary and medicinal purposes for thousands of years. E-SHEF company is now proud to offer premium Egyptian fennel seeds, grown in the nutrient-rich soils of the Nile Delta - the same fertile lands that nourished ancient Egyptian civilization.\r\n\r\nEgyptian fennel, a cherished herb in Egyptian cuisine, adds a unique and aromatic flavor to dishes, reflecting the rich culinary heritage of the region. Grown abundantly in Egypt\'s fertile lands, this fragrant herb, with its delicate, licorice-like taste, is a staple ingredient in traditional recipes. Used in both fresh and dried forms, Egyptian fennel lends its distinctive flavor to dishes such as soups, stews, salads, and teas. Beyond its culinary uses, fennel is valued for its potential health benefits, known for aiding digestion and providing essential nutrients like fiber and vitamin C. When incorporating Egyptian fennel into your cooking, selecting high-quality, locally sourced varieties ensures optimal flavor and freshness, allowing you to enjoy the true essence of this beloved herb in your dishes. Discover the aromatic allure of Egyptian fennel and elevate your culinary creations with its delightful flavor profile.', '2024-04-16 06:41:02', '2024-05-01 16:00:08'),
(41, 'fenugreek', 92, 'Active', 'Trigonella frenum graecum', NULL, '090960000000', '16', '25', 'E-SHEF company is proud to offer high-quality Egyptian fenugreek seeds sourced directly from farms across the fertile Nile Delta. Egypt\'s hot, dry climate provides ideal growing conditions for fenugreek. The ancient Egyptians revered fenugreek as both a food and medicine - seeds were found in King Tutankhamun’s tomb. Fenugreek cultivation in Egypt dates back over 4,500 years. E-SHEF fenugreek is cultivated without pesticides or chemicals, resulting in exceptionally pure seeds.\r\n\r\nEgyptian dried fenugreek, a cherished ingredient in Egyptian cuisine, boasts a rich history and a distinct flavor profile that enhances a variety of dishes. Cultivated in Egypt\'s fertile lands, dried fenugreek leaves, also known as \"hulba\" in Arabic, add a unique aroma and taste to traditional recipes. Commonly used in soups, stews, and vegetable dishes, Egyptian dried fenugreek leaves impart a slightly bitter, earthy flavor with hints of maple and celery, elevating the taste experience. Beyond its culinary appeal, fenugreek is valued for its potential health benefits, including aiding digestion and promoting lactation. When sourcing Egyptian dried fenugreek, opting for high-quality, locally sourced products ensures authenticity and optimal flavor. Incorporating this beloved herb into your cooking not only adds depth and complexity but also honors the rich culinary heritage of Egypt. Discover the flavorful versatility of Egyptian dried fenugreek and infuse your dishes with its distinctive taste.', '2024-04-16 06:42:54', '2024-05-01 16:03:07');
INSERT INTO `products` (`id`, `name`, `page_id`, `status`, `scientific_name`, `latin_name`, `HS_code`, `twentyFT`, `fortyFT`, `description`, `created_at`, `updated_at`) VALUES
(42, 'Sunflower', 92, 'Active', 'H. Annuus', NULL, '120600000000', NULL, NULL, 'Sunflower seeds are packed with healthy nutrients. A one-ounce serving contains significant amounts of vitamin E, magnesium, selenium, copper, vitamin B6, folate, and more. The seeds are an excellent source of monounsaturated and polyunsaturated fats, preferred over saturated fats for heart health. Sunflower seeds have high amounts of phytosterols that can help lower LDL cholesterol. The seeds are also rich in antioxidants that protect cells from damage.\r\nIn addition to their stellar nutritional profile, sunflower seeds have a delicious, nutty taste and tender crunch. They make a satisfying snack on their own or can be added to recipes like salads, breads, trail mixes and more. Sunflower seed butter is a nutritious alternative to peanut butter. When processed into sunflower oil, the seeds make a healthy cooking oil with high smoking point.\r\n\r\nSunflower seeds are a nutritious and versatile ingredient enjoyed worldwide for their crunchy texture and nutty flavor. Derived from the sunflower plant (Helianthus annuus), these seeds are packed with essential nutrients like protein, healthy fats, and vitamins E and B. In addition to their culinary uses as a tasty snack or salad topper, sunflower seeds offer numerous health benefits, including promoting heart health, supporting immune function, and aiding in weight management. Whether eaten raw, roasted, or incorporated into baked goods, cereals, or trail mixes, sunflower seeds add a delicious crunch and nutritional boost to any dish. When purchasing sunflower seeds, opt for high-quality, organic varieties to ensure freshness and flavor. Discover the wholesome goodness of sunflower seeds and elevate your meals with their delicious taste and nutritional benefits.', '2024-04-16 06:44:50', '2024-05-01 19:51:59'),
(43, 'Nigella', 92, 'Active', NULL, NULL, '121190100000', NULL, NULL, 'Black seed, also known as Nigella sativa, is a potent and versatile seed celebrated for its numerous health benefits and culinary uses. Originating from the Middle East, black seed has a rich history of medicinal use dating back centuries. These small, black seeds have a distinctive bitter flavor and are commonly used whole, ground, or pressed into oil. Rich in antioxidants, vitamins, and essential fatty acids, black seeds offer a range of health benefits, including supporting immune function, reducing inflammation, and improving skin health. In culinary applications, black seeds add depth and flavor to a variety of dishes, including bread, curries, and salads. When purchasing black seeds, look for high-quality, organic sources to ensure purity and potency. Incorporating black seeds into your diet can enhance both your culinary creations and your overall well-being.\r\n\r\nRecent scientific research has confirmed many of the traditional therapeutic uses of nigella seeds. Studies show the seeds have antioxidant, anti-inflammatory and antimicrobial effects. Compounds in nigella seeds may help lower cholesterol, blood pressure and blood sugar levels. The seeds may also strengthen the immune system and promote gut health. No wonder this historical herb has stood the test of time.', '2024-04-16 06:46:21', '2024-05-01 19:52:03'),
(44, 'Flax', 92, 'Active', 'Linum usitatissimum', NULL, NULL, NULL, NULL, 'Flaxseeds, also known as linseeds, are tiny nutritional powerhouses packed with essential nutrients and health benefits. Derived from the flax plant (Linum usitatissimum), these small, golden or brown seeds are rich in omega-3 fatty acids, fiber, and lignans. Flaxseeds are renowned for their potential to improve heart health, aid in digestion, and promote healthy skin and hair. Additionally, they may help lower cholesterol levels and reduce the risk of certain chronic diseases. In culinary applications, flaxseeds add a nutty flavor and crunchy texture to a variety of dishes, including smoothies, baked goods, oatmeal, and salads. When purchasing flaxseeds, opt for ground or milled varieties to enhance their digestibility and nutrient absorption. Incorporating flaxseeds into your diet is a simple yet effective way to boost your overall health and well-being.', '2024-04-16 06:48:05', '2024-05-01 19:52:10'),
(45, 'Pumpkin', 92, 'Active', 'Cucurbita Maxima', NULL, '120991700000', NULL, NULL, 'Pumpkin seeds, also known as pepitas, are nutritious seeds harvested from pumpkins, a member of the squash family. These flat, oval seeds are rich in essential nutrients such as protein, fiber, healthy fats, vitamins, and minerals. With a mild, nutty flavor and a crunchy texture, pumpkin seeds are a versatile ingredient in both sweet and savory dishes. They can be enjoyed roasted and seasoned as a snack, sprinkled over salads and oatmeal, or incorporated into baked goods and granola bars. Pumpkin seeds are also valued for their potential health benefits, including supporting heart health, improving digestion, and boosting immune function. When purchasing pumpkin seeds, opt for raw or lightly roasted varieties to preserve their nutritional content. Including pumpkin seeds in your diet is a delicious way to nourish your body and support overall wellness.', '2024-04-16 06:49:35', '2024-05-01 19:52:14'),
(47, 'Turmeric', 93, 'Active', 'Curcuma Longa', NULL, '091030000000', NULL, NULL, 'Turmeric - Nature\'s Golden Spice\r\nTurmeric contains a compound called curcumin which gives turmeric its characteristic yellow color. Curcumin is the main active ingredient in turmeric and has potent antioxidant and anti-inflammatory effects. Research shows that curcumin can help fight oxidative damage, boost the immune system, and reduce inflammation associated with arthritis, heart disease, diabetes, and cancer\r\n\r\nEgyptian turmeric, a golden-hued spice derived from the Curcuma longa plant, is prized for its vibrant color, earthy flavor, and numerous health benefits. Grown in the fertile lands of Egypt, this aromatic spice has been used for centuries in traditional medicine and culinary practices. Egyptian turmeric contains curcumin, a potent antioxidant known for its anti-inflammatory properties and potential to promote overall well-being. In culinary applications, Egyptian turmeric adds depth and warmth to a variety of dishes, including curries, soups, rice dishes, and beverages like turmeric latte. When sourcing Egyptian turmeric, look for high-quality, organic varieties to ensure purity and potency. Incorporating Egyptian turmeric into your cooking not only enhances flavor but also offers a natural boost to your health and vitality.', '2024-04-16 07:24:21', '2024-05-01 16:11:26'),
(48, 'Paprika', 93, 'Active', 'Capsicum annuum', NULL, NULL, NULL, NULL, 'E-SHEF company sources only the finest quality paprika peppers and produces its signature spice through traditional methods. The peppers are slowly sun-dried before being expertly ground into a fine powder. This process preserves the natural flavors and aromas of the pepper. The result is an exceptionally aromatic paprika with a rich, complex taste. It has a sweetness combined with just a touch of heat. The vibrancy of the red powder is unmatched, making dishes pop with eye-catching color.\r\n\r\nEgyptian paprika, a flavorful spice derived from dried and ground bell peppers, adds depth and warmth to dishes while reflecting the rich culinary heritage of Egypt. Grown in the fertile soils of Egypt, this vibrant red spice is prized for its mild heat and sweet, smoky flavor profile. Egyptian paprika is a versatile ingredient used in a variety of savory dishes, including stews, soups, marinades, and grilled meats. Its distinctive color and aroma enhance both the visual appeal and taste of dishes, making it a popular choice in kitchens worldwide. When selecting Egyptian paprika, opt for high-quality, organic varieties to ensure authenticity and optimal flavor. Incorporating Egyptian paprika into your cooking not only adds depth and complexity but also celebrates the flavors of Egypt\'s culinary traditions.', '2024-04-16 07:25:20', '2024-05-01 16:14:32'),
(49, 'Onions', 93, 'Active', 'Allium cepa L.', NULL, '070310110000', NULL, NULL, 'E-SHEF company is proud to offer premium Egyptian dried onions of the highest quality. Grown in the nutrient-rich black soils of the Nile Delta, Egyptian onions have an unparalleled sweet and mild flavor. The growing conditions in Egypt, with its hot, dry climate, produce large, juicy onions with high sugar content and low pungency. Once harvested, these exceptional onions are then sun-dried, locking in their freshness and intensifying their taste. The drying process concentrates the natural sugars and flavor compounds, resulting in a rich, sweet onion that is perfect for cooking. Just one bite and you\'ll taste the difference these premium Egyptian onions make in any dish.\r\n\r\nEgyptian onions are renowned for their exceptional flavor and versatility in culinary applications, reflecting Egypt\'s rich agricultural heritage. Grown in the fertile soil of the Nile Delta, Egyptian onions are prized for their distinctive taste, which combines sweetness with a mild pungency. These onions come in various varieties, including red, white, and green onions, each adding its unique flavor profile to dishes. Whether used raw in salads, sautéed in stir-fries, or caramelized in soups and stews, Egyptian onions impart depth and aroma to a wide range of recipes. Their nutritional value, including vitamins, minerals, and antioxidants, makes them not only delicious but also beneficial for health. When selecting Egyptian onions, choose fresh, locally sourced varieties for optimal flavor and quality. Incorporating Egyptian onions into your cooking not only elevates the taste of your dishes but also supports local agriculture and culinary traditions.', '2024-04-16 07:27:44', '2024-05-01 16:15:55'),
(50, 'garlic', 93, 'Active', 'Allium Sativum L.', NULL, '070320000000', NULL, NULL, 'Egyptian garlic, known for its robust flavor and medicinal properties, is a staple ingredient in Egyptian cuisine, reflecting the country\'s rich culinary heritage. Grown in the fertile soils of Egypt\'s Nile Delta, Egyptian garlic boasts a pungent taste that adds depth and complexity to a variety of dishes. Rich in allicin, a compound with potent antioxidant and antimicrobial properties, Egyptian garlic is valued not only for its culinary uses but also for its potential health benefits. Whether used raw in salads, roasted to mellow its flavor, or sautéed in savory dishes, Egyptian garlic enhances the taste and aroma of countless recipes. When selecting Egyptian garlic, opt for fresh, firm bulbs with tight skins for maximum flavor and shelf life. Incorporating Egyptian garlic into your cooking not only elevates the flavor of your dishes but also celebrates the culinary traditions of Egypt.\r\n\r\nIn summary, garlic is a versatile culinary ingredient with a rich history. It provides a multitude of health benefits for those who incorporate it into their diets regularly. Garlic\'s unique flavor and aroma make it an essential component in cuisines worldwide. The next time you cook, consider adding some garlic to experience its robust flavor and potential positive impacts on your health.', '2024-04-16 07:29:03', '2024-05-01 16:17:09'),
(51, 'lemon', 93, 'Active', 'Citrus × limon', NULL, '080550000000', '4.5', '9', 'E-SHEF company offers a special product with their Premium Egyptian dried Lemons. Grown organically in Egypt, these high quality dried lemons provide concentrated lemon flavor and aroma. Their traditional sun-drying process results in an authentic ingredient that can enhance many recipes. For those seeking a unique lemon product packed with flavor, the Premium Egyptian dried Lemons from E-SHEF are an excellent choice.\r\n\r\nEgyptian dried lemon, a versatile and flavorful ingredient, is prized for its tangy taste and aromatic zest, reflecting Egypt\'s vibrant culinary culture. Produced from sun-dried lemons, this zesty citrus adds depth and brightness to a wide range of dishes. From savory stews and marinades to refreshing beverages and desserts, Egyptian dried lemon lends its distinctive flavor and aroma to elevate culinary creations. Rich in vitamin C and antioxidants, Egyptian dried lemon offers both flavor enhancement and potential health benefits. When selecting Egyptian dried lemon, choose high-quality, organic varieties for optimal freshness and flavor. Incorporating Egyptian dried lemon into your cooking not only enhances the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:31:03', '2024-05-01 16:18:05'),
(52, 'Black Pepper', 93, 'Active', 'Piper nigrum', NULL, '090410000000', NULL, NULL, 'Egyptian black peppercorns, renowned for their bold flavor and aromatic essence, are a prized spice in Egyptian cuisine, reflecting the country\'s rich culinary heritage. Cultivated in the fertile lands of Egypt, these peppercorns boast a distinctive pungency and heat that add depth and complexity to a variety of dishes. From savory soups and sauces to marinades and spice blends, Egyptian black peppercorns lend a robust flavor and subtle warmth to culinary creations. Rich in antioxidants and essential oils, Egyptian black peppercorns offer both culinary excellence and potential health benefits. When sourcing Egyptian black peppercorns, opt for high-quality, freshly ground varieties to ensure optimal flavor and potency. Incorporating Egyptian black peppercorns into your cooking not only enhances the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:32:31', '2024-05-01 16:19:10'),
(53, 'Cardamom', 93, 'Active', 'Elettaria Cardamomum', NULL, '090830000000', NULL, NULL, 'Egyptian cardamom seeds, cherished for their aromatic fragrance and distinct flavor, are a prized spice in Egyptian culinary tradition, showcasing the country\'s rich cultural heritage. Cultivated in the fertile lands of Egypt, these small, aromatic seeds are renowned for their warm, citrusy notes and subtle sweetness. Egyptian cardamom seeds are versatile, adding \r\n\r\ndepth and complexity to a variety of dishes, from savory curries and stews to sweet desserts and beverages. Rich in essential oils and antioxidants, Egyptian cardamom seeds offer both culinary excellence and potential health benefits. When selecting Egyptian cardamom seeds, opt for high-quality, freshly ground varieties to ensure optimal flavor and potency. Incorporating Egyptian cardamom seeds into your cooking not only enhances the taste of your dishes but also honors the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:34:11', '2024-05-01 16:20:27'),
(54, 'Cinnamon', 93, 'Active', 'Cinnamomum Verum', NULL, '090611000000', '7', '14', 'Egyptian cinnamon, prized for its aromatic fragrance and sweet, warming flavor, is a cherished spice in Egyptian culinary culture, reflecting the country\'s rich heritage. Harvested from the inner bark of the Cinnamomum verum tree, Egyptian cinnamon is renowned for its high quality and potency. It adds depth and richness to a variety of dishes, from sweet desserts and baked goods to savory stews and curries. Rich in antioxidants and possessing potential health benefits such as anti-inflammatory properties, Egyptian cinnamon offers both culinary excellence and wellness advantages. When selecting Egyptian cinnamon, opt for high-quality, freshly ground varieties to ensure maximum flavor and potency. Incorporating Egyptian cinnamon into your cooking not only enhances the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:35:48', '2024-05-01 16:22:50'),
(55, 'Nutmeg', 93, 'Active', 'Myristica fragrans Houtt.', NULL, '090810000000', NULL, NULL, 'Egyptian nutmeg, renowned for its warm, aromatic flavor and culinary versatility, is a beloved spice in Egyptian cuisine, reflecting the country\'s rich culinary heritage. Harvested from the seeds of the Myristica fragrans tree, Egyptian nutmeg adds depth and complexity to both sweet and savory dishes. Its rich, slightly sweet flavor with hints of nuttiness enhances everything from baked goods and desserts to soups, stews, and meat dishes. Egyptian nutmeg is also valued for its potential health benefits, including aiding digestion and promoting relaxation. When selecting Egyptian nutmeg, opt for high-quality, whole nutmeg seeds and grate them freshly for optimal flavor and potency. Incorporating Egyptian nutmeg into your cooking not only elevates the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:38:08', '2024-05-01 16:24:57'),
(56, 'Red Chilli', 93, 'Active', NULL, NULL, NULL, NULL, NULL, 'Egyptian chili peppers, known for their fiery heat and vibrant flavor, are a staple ingredient in Egyptian cuisine, reflecting the country\'s rich culinary heritage. Grown in the fertile lands of Egypt, these spicy peppers come in various shapes, sizes, and levels of heat, ranging from mild to extremely hot. Egyptian chili peppers add depth and intensity to a wide range of dishes, from savory stews and sauces to dips, marinades, and pickles. Rich in capsaicin, the compound responsible for their heat, Egyptian chili peppers offer both culinary excitement and potential health benefits, including boosting metabolism and reducing inflammation. When selecting Egyptian chili peppers, opt for fresh, locally sourced varieties to ensure maximum flavor and potency. Incorporating Egyptian chili peppers into your cooking not only adds a kick of heat but also celebrates the bold flavors and traditions of Egyptian cuisine.', '2024-04-16 07:39:51', '2024-05-01 16:26:19'),
(57, 'Allspice', 93, 'Active', NULL, NULL, NULL, NULL, NULL, 'Welcome to E-SHEF, your source for premium allspice! Allspice is an aromatic spice that comes from the dried berries of the Pimenta dioica tree. At E-SHEF, we\'re proud to offer allspice of the highest quality to add warm, complex flavor to your cooking. Our premium allspice is hand-selected and expertly sourced to bring you the very best this versatile spice has to offer.\r\n\r\nEgyptian dry spices, a cornerstone of Egyptian culinary tradition, offer a rich tapestry of flavors that enhance dishes with depth and complexity. Sourced from a variety of herbs, seeds, and roots, these spices are meticulously dried and ground to preserve their aroma and potency. From the warm notes of cinnamon and nutmeg to the fiery kick of chili peppers and the earthy richness of cumin and coriander, Egyptian dry spices add character to a wide range of dishes. Whether used in savory stews, aromatic rice dishes, or sweet desserts, these spices elevate the culinary experience, reflecting Egypt\'s vibrant culinary heritage. When selecting Egyptian dry spices, opt for high-quality, freshly ground varieties to ensure optimal flavor and potency. Incorporating Egyptian dry spices into your cooking not only enhances the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:41:17', '2024-05-01 16:38:20'),
(58, 'Cloves', 93, 'Active', 'Eugenia caryophyllata', NULL, '090700000000', NULL, NULL, 'Egyptian cloves, esteemed for their strong, aromatic flavor and medicinal properties, are a cherished spice in Egyptian cuisine, reflecting the country\'s rich culinary heritage. Harvested from the flower buds of the Syzygium aromaticum tree, Egyptian cloves boast a warm, sweet, and slightly bitter taste that adds depth and complexity to a variety of dishes. These small, dark brown buds are often used whole or ground in both sweet and savory recipes, from spiced desserts and baked goods to savory tagines, stews, and sauces. Rich in antioxidants and possessing potential health benefits such as relieving dental pain and aiding digestion, Egyptian cloves offer both culinary excellence and wellness advantages. When selecting Egyptian cloves, opt for high-quality, whole buds to ensure maximum flavor and potency. Incorporating Egyptian cloves into your cooking not only enhances the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.\r\n\r\nWith their sweet, warming taste and fragrance, cloves have flavored cuisines and fragrances around the world for centuries. From meat dishes to baked goods to mulled drinks, cloves are a beloved ingredient. They also have a long history of use in traditional medicine. Cloves remain one of the most popular spices today thanks to their unique properties and versatility. Whether used in cooking, aromatherapy, or natural remedies, the distinctive spice of cloves will continue to be treasured worldwide.', '2024-04-16 07:42:50', '2024-05-01 16:39:54'),
(59, 'White Pepper', 93, 'Active', NULL, NULL, '090410000000', NULL, NULL, 'Egyptian white pepper, prized for its mild flavor and versatility, is a beloved spice in Egyptian cuisine, reflecting the country\'s rich culinary heritage. Derived from the same fruit as black pepper but with the outer skin removed, Egyptian white pepper offers a subtle yet distinctive taste that complements a wide range of dishes. With its milder flavor profile, Egyptian white pepper is often preferred in dishes where a more delicate pepper flavor is desired, such as cream sauces, mashed potatoes, and light-colored soups. Rich in antioxidants and possessing potential health benefits such as aiding digestion and boosting metabolism, Egyptian white pepper offers both culinary excellence and wellness advantages. When selecting Egyptian white pepper, opt for high-quality, freshly ground varieties to ensure optimal flavor and potency. Incorporating Egyptian white pepper into your cooking not only enhances the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:43:57', '2024-05-01 16:41:20'),
(60, 'Sumac', 93, 'Active', 'Rhus', NULL, NULL, NULL, NULL, 'Egyptian sumac, renowned for its tangy flavor and vibrant red hue, is a cherished spice in Egyptian cuisine, reflecting the country\'s rich culinary heritage. Harvested from the berries of the Rhus coriaria plant, Egyptian sumac offers a unique citrusy taste with hints of tartness, adding depth and brightness to a variety of dishes. Commonly used as a seasoning and garnish, Egyptian sumac is sprinkled over salads, grilled meats, and dips to impart its distinct flavor and visually enhance the presentation of dishes. Rich in antioxidants and possessing potential health benefits such as aiding digestion and reducing inflammation, Egyptian sumac offers both culinary excellence and wellness advantages. When selecting Egyptian sumac, opt for high-quality, freshly ground varieties to ensure optimal flavor and potency. Incorporating Egyptian sumac into your cooking not only enhances the taste of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:45:36', '2024-05-01 16:42:19'),
(61, 'Rose Buds', 93, 'Active', 'Rosa', NULL, NULL, NULL, NULL, 'Egyptian rose buds, prized for their delicate fragrance and floral flavor, are a cherished ingredient in Egyptian cuisine and culture, reflecting the country\'s rich heritage. Harvested from the Rosa damascena or Rosa centifolia varieties grown in Egypt\'s fertile lands, Egyptian rose buds offer a subtle sweetness and aromatic essence that enhance both sweet and savory dishes. Commonly used in Middle Eastern and Egyptian desserts such as rosewater-infused puddings, pastries, and beverages, Egyptian rose buds add a luxurious touch and floral aroma. Rich in antioxidants and possessing potential health benefits such as promoting relaxation and improving skin health, Egyptian rose buds offer both culinary excellence and wellness advantages. When selecting Egyptian rose buds, opt for high-quality, organic varieties to ensure purity and potency. Incorporating Egyptian rose buds into your cooking not only enhances the taste and aroma of your dishes but also celebrates the rich flavors and traditions of Egyptian cuisine.', '2024-04-16 07:48:46', '2024-05-01 16:43:36'),
(62, 'Savory', 93, 'Active', 'Brassica Oleracea VAR. Sabauda', NULL, NULL, '5', NULL, 'Savory, a versatile herb prized for its robust flavor and aromatic qualities, is a beloved ingredient in cuisines worldwide, offering both culinary excellence and potential health benefits. Commonly used in Mediterranean, Middle Eastern, and European cuisines, savory adds depth and complexity to a variety of dishes, including soups, stews, sauces, meats, and vegetable dishes. With its peppery, slightly minty taste and earthy undertones, savory enhances the flavor profile of dishes while providing a refreshing herbal note. Rich in essential oils, vitamins, and antioxidants, savory offers potential health benefits such as aiding digestion, boosting immunity, and reducing inflammation. When selecting savory, opt for high-quality, dried or fresh varieties to ensure optimal flavor and potency. Incorporating savory into your cooking not only elevates the taste of your dishes but also celebrates the rich flavors and culinary traditions associated with this versatile herb.', '2024-04-16 07:50:14', '2024-05-01 16:44:49'),
(63, 'Licorice', 93, 'Active', 'Glycyrrhiza glabra', NULL, NULL, NULL, NULL, 'E-SHEF company provides premium quality Egyptian licorice roots to continue this ancient natural healing tradition. Their licorice is sustainably grown in the nutrient-rich clay soil of the Nile Delta without the use of harmful chemicals. It is harvested when mature at 3-4 years old, then carefully processed to preserve its active compounds. The roots are sun-dried, graded, and packaged to deliver the optimal flavor and health benefits in every batch.\r\n\r\nFennel seeds, also known , are a versatile and flavorful spice with remarkable culinary and medicinal benefits. Derived from the seeds of the fennel plant (oeniculum vulgare), this herbaceous perennial is abundantly grown in natural environments. Fennel seeds are prized for their strong, aromatic flavor profile, which adds a distinctive taste to a wide array of dishes. They are used in various cuisines worldwide, including Middle Eastern, Indian, and Mediterranean cuisines, imparting a delicious and savory essence to foods. Apart from their culinary uses, fennel seeds are associated with numerous health benefits, including aiding digestion, reducing bloating, and promoting respiratory health. Incorporating fennel seeds into cooking not only enhances flavor and taste but also contributes to overall well-being. Explore the culinary wonders of fennel seeds and elevate your dishes with their delightful aroma and flavor.', '2024-04-16 07:51:27', '2024-05-01 16:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
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
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(13, 'LogoBlack', 'Jinna Gik', '2023-08-20 05:21:02', '2023-08-20 05:21:02'),
(14, 'LogoWhite', 'Jinna Gik', '2023-08-20 05:21:02', '2023-08-20 05:21:02'),
(26, 'Email', 'info@e-shef.com', '2023-09-20 12:56:03', '2024-04-25 16:23:37'),
(27, 'Phone', '+201080510280', '2023-09-20 12:56:03', '2024-05-08 03:34:26'),
(28, 'Street', 'El Hegaz St El-Bostan, Heliopolis, Cairo Governorate, Egypt', '2023-09-20 12:56:03', '2024-04-13 11:38:56'),
(29, 'Instagram', 'Instagram.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(30, 'Twitter', 'https://twitter.com/E-Shaf', '2023-09-20 12:56:03', '2024-04-25 16:26:38'),
(31, 'LinkedIn', 'www.linkedin.com/in/e-shef-0303a3303', '2023-09-20 12:56:03', '2024-04-26 08:07:17'),
(32, 'Snapchat', 'snapchat.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(33, 'YouTube', 'youtube.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(34, 'Tiktok', 'tiktok.com', '2023-09-20 12:56:03', '2023-09-20 12:56:03'),
(35, 'Facebook', 'www.facebook.com/people/E-Shef/61558973801174/?mibextid=LQQJ4d', '2023-09-20 12:56:03', '2024-05-08 02:00:05'),
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation_keys`
--

CREATE TABLE `translation_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `location` point DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=439;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation_keys`
--
ALTER TABLE `translation_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
