-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2024 at 07:46 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`name`, `image`, `updated_at`, `created_at`, `id`) VALUES
('sulabh', '1711006758.jpg', '2024-03-21 02:09:18', '2024-03-21 02:09:18', 1),
('Nikhil', '1711006813.jpg', '2024-03-21 02:10:13', '2024-03-21 02:10:13', 2),
('abc', '1711083087.jpg', '2024-03-21 23:21:27', '2024-03-21 23:21:27', 3),
('Sulabh Kapur', '1711619307.jpg', '2024-03-28 04:18:27', '2024-03-28 04:18:27', 4);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `auth_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `auth_id`, `post_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, NULL, 5, NULL, '2024-03-27 03:53:47', '2024-03-27 03:53:47'),
(2, NULL, 5, 'dvdcdsc', '2024-03-27 03:55:20', '2024-03-27 03:55:20'),
(3, NULL, 5, 'tttttt', '2024-03-27 03:58:04', '2024-03-27 03:58:04'),
(4, 1, 5, 'Sukhbir singh badal zindabad.....', '2024-03-27 04:05:36', '2024-03-27 04:05:36'),
(5, 1, 5, 'hhhhhh', '2024-03-27 04:48:30', '2024-03-27 04:48:30'),
(6, 1, 5, 'ddddeed', '2024-03-27 04:51:53', '2024-03-27 04:51:53'),
(7, 1, 5, 'dwdwwdwd', '2024-03-27 04:54:52', '2024-03-27 04:54:52'),
(8, 1, 5, 'cscscssc', '2024-03-27 04:57:08', '2024-03-27 04:57:08'),
(9, 1, 5, 'asxsxsx', '2024-03-28 02:54:30', '2024-03-28 02:54:30'),
(10, 7, 6, 'Abc', '2024-03-28 04:20:18', '2024-03-28 04:20:18'),
(11, 7, 6, 'Nice Shoes!', '2024-03-28 04:20:32', '2024-03-28 04:20:32'),
(12, NULL, 6, 'abc', '2024-03-29 02:28:19', '2024-03-29 02:28:19'),
(13, 7, 7, 'abc', '2024-04-01 01:32:33', '2024-04-01 01:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_03_20_083926_alter_users_table', 2),
(7, '2024_03_20_104224_create_category_table', 3),
(8, '2024_03_20_104710_alter_category_table', 4),
(9, '2024_03_20_105235_alter_category_table', 5),
(10, '2024_03_21_073658_alter_category_table', 6),
(11, '2024_03_21_085408_create_contacts_table', 7),
(12, '2024_03_21_090027_alter_contacts_table', 8),
(13, '2024_03_21_101939_alter_posts_table', 9),
(14, '2024_03_21_102439_alter_posts_table', 10),
(15, '2024_03_21_105454_alter_post_table', 11),
(16, '2024_03_27_083553_create_comments_table', 12);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `image`, `category`, `created_at`, `updated_at`, `auth_id`) VALUES
(1, 'Sukhbir Badal', 'He is a politician. Belongs to SAD', '1711016109.jpg', '1', '2024-03-21 04:45:09', '2024-03-21 04:45:09', NULL),
(2, 'Watches', 'Brand Rolex', '1711018267.jpg', '1', '2024-03-21 05:21:07', '2024-03-21 05:21:07', NULL),
(3, 'Watches', 'Rolex', '1711018881.jpg', '1', '2024-03-21 05:31:21', '2024-03-21 05:31:21', NULL),
(4, 'Watches', 'Adidas', '1711083121.jpg', '2', '2024-03-21 23:22:01', '2024-03-21 23:22:01', NULL),
(5, 'Shoes', 'Nike', '1711083270.jpg', '1', '2024-03-21 23:24:30', '2024-03-21 23:24:30', 6),
(6, 'Shoes', 'Puma', '1711089334.jpg', '1', '2024-03-22 01:05:35', '2024-03-22 01:05:35', 6),
(7, 'Nike', 'Shoes is of Nike Brand', '1711619277.jpg', '1', '2024-03-28 04:17:57', '2024-03-28 04:17:57', 7),
(8, 'Shoes', 'Shoes is Armani Brand', '1711619361.jpg', '4', '2024-03-28 04:19:21', '2024-03-28 04:19:21', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Sulabh', 'sulabh@gmail.com', NULL, '$2y$12$zjPFIcmlpb1dDQXW6OiN/OCq9SJc7WqoVEPJpSvqO3YuL5HbIH2m6', NULL, '2024-03-20 02:51:06', '2024-03-20 02:51:06', NULL),
(2, 'sulabh', 'kapur@gmail.com', NULL, '$2y$12$JhV3dPSQZHYmT6tX1OQsxeiwwEpB6pAHDBnGWy4MjSZeQlPfqzSS6', NULL, '2024-03-20 03:44:17', '2024-03-20 03:44:17', NULL),
(3, 'sulabh', 'kap@gmail.com', NULL, '$2y$12$g0jlnl/OhU.cGeQ6kMxhQuCe9l5v8yM7jkudiGA1jy1N4F/ho.BH.', NULL, '2024-03-20 03:45:05', '2024-03-20 03:45:05', NULL),
(4, 'sulabh', 'sula@gmail.com', NULL, '$2y$12$minVTsj9mMwsoHPQ7OdJteRCN3n7zabG6ZvpjG5xtw56izePV4vNK', NULL, '2024-03-20 03:48:03', '2024-03-20 03:48:03', NULL),
(5, 'sulabh', 'kapw@gmail.com', NULL, '$2y$12$QekdG98trONVL67m0VIfau7n0Uz35ifbOiqG/usH8UQllUgCiycR.', NULL, '2024-03-20 03:49:44', '2024-03-20 03:49:44', '1710926383.jpg'),
(6, 'sulabh', 'sulabh11@gmail.com', NULL, '$2y$12$rtRP/wmAt/6wK57/BKEhu.fCyYMF4NReekUW9e/vUF0xPxTsy.0OS', NULL, '2024-03-21 23:17:57', '2024-03-21 23:17:57', '1711082877.jpg'),
(7, 'Sulabh', 'sulabh88@gmail.com', NULL, '$2y$12$sI3XlQvOEcSuaaGLSQCKDOegucAO6.vo.Lm7FGbAi6PGbjYBb2juu', NULL, '2024-03-28 04:01:58', '2024-03-28 04:01:58', '1711618318.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
