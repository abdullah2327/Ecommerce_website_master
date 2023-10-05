-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 04, 2023 at 01:06 PM
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
-- Database: `style`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `title`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Navi Force Watch', '65000', '1696416509.jpg', '2023-10-04 05:08:36', '2023-10-04 05:18:29'),
(2, 'Women\'s Wallet', '9500', '1696416625.jpg', '2023-10-04 05:20:25', '2023-10-04 05:20:25'),
(3, 'Beyene Sneakers', '32000', '1696417259.jpg', '2023-10-04 05:30:59', '2023-10-04 05:30:59'),
(4, 'Woman\'s Bagback', '13000', '1696417374.jpg', '2023-10-04 05:32:54', '2023-10-04 05:32:54'),
(5, 'Laptop Bags', '13050', '1696417430.jpg', '2023-10-04 05:33:50', '2023-10-04 05:33:50'),
(6, 'Rayban Glasses', '14500', '1696417520.jpg', '2023-10-04 05:35:20', '2023-10-04 05:35:20');

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
-- Table structure for table `kidswears`
--

CREATE TABLE `kidswears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kidswears`
--

INSERT INTO `kidswears` (`id`, `title`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Belted Dress for Girls', '9200', '1696415148.jpg', '2023-10-04 04:55:48', '2023-10-04 04:55:48'),
(2, 'Shirts for Boys', '4200', '1696415280.jpg', '2023-10-04 04:58:00', '2023-10-04 04:58:00'),
(3, 'Frocks for Girls', '13000', '1696415328.jpg', '2023-10-04 04:58:48', '2023-10-04 04:58:48'),
(4, 'Trousers for Boys', '4000', '1696415372.jpg', '2023-10-04 04:59:32', '2023-10-04 04:59:32'),
(5, 'Ruffle Hem Dress', '14000', '1696415461.jpg', '2023-10-04 05:01:01', '2023-10-04 05:01:01'),
(6, 'Baby Bodysuits', '7000', '1696415738.jpg', '2023-10-04 05:05:38', '2023-10-04 05:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `menwears`
--

CREATE TABLE `menwears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menwears`
--

INSERT INTO `menwears` (`id`, `title`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Black Shirt', '6200', '1696411507.jpg', '2023-10-04 03:53:03', '2023-10-04 03:55:07'),
(2, 'Blue Denim Shirt', '6200', '1696411574.jpg', '2023-10-04 03:53:20', '2023-10-04 03:56:14'),
(3, 'Diesel Jeans', '7800', '1696411949.jpg', '2023-10-04 04:02:29', '2023-10-04 04:02:29'),
(4, 'Hoodie', '7000', '1696412037.jpg', '2023-10-04 04:03:57', '2023-10-04 04:03:57'),
(5, 'Linen Shorts', '5000', '1696412112.jpg', '2023-10-04 04:05:12', '2023-10-04 04:05:12'),
(6, 'Long Sleeves T-shirt', '4999', '1696412233.jpg', '2023-10-04 04:07:13', '2023-10-04 04:07:13'),
(7, 'T-Shirt', '5800', '1696412334.jpg', '2023-10-04 04:08:54', '2023-10-04 04:08:54');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_01_070326_create_sessions_table', 1),
(7, '2023_10_02_045257_create_menwears_table', 1),
(8, '2023_10_02_045315_create_womenwears_table', 1),
(9, '2023_10_02_045331_create_kidswears_table', 1),
(10, '2023_10_02_045347_create_accessories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iRxklOZXtRdoq7Pabz4LMiC27428bD8PCofcMceI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2FpMm5abUtPQjhKeTNoQjg4cG4wRzdhTzlMeURCZ0xNcUJmYU1tYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1696411677),
('JGpOgl9U44ojn9pN2BpXU8lmesimvNx8ZyBWvyit', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicG9uMGU1YU95WmhZS1kzVUhPTDdva1N6RUMwU2VVWDB0aU5zRUwyVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1696417529),
('kBoyg4OdLJX1qfXZh8tJdjbOjSIBnufaV5za6Td4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFp1QkhJWDJhaEVpaGlTUXBSWjFzTmNtNTBhZlM4UVQ1SHB5NEx5biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1696411664),
('phV4O2tJXuW5tZUFWitqSzSzVi11z6PPRuvS6NmH', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicHdLd2QwcTAxTld6d2hodXA4eFROQU5RRDhOQW94a0RaSFg0aEV2QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1696411704),
('qBtIV8Eo4Ht0ytfvpWxRTTwMnQ0cYwe0wonhoKYc', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDN3SUhPWEkyTHdBV2ZLSFNmWU50bVZucUNJMVRtN1RQVmR6RHJMaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1696411697),
('Xz29CK2GwpY44ETL3fC8DBcUfAdrVnIn4ey0YvbU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmRkZ1VFRUZzWjc3enNnUFYwanVhcEdQd0JmYUs3VjhDSVdnY2x6MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1696411714),
('zCUHdYlywFUEOFlEspeEMPHqHoZRS4XBck0vE3Rz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHdJdmE0QTRSU0VvTzhTWWZYVFVFTG93czZKYldtYlFqTHdNd3JHSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1696416214);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '1', NULL, '$2y$10$iMR21in1wWABnuITHqeP9.nBQhuLVHCSdW4L5TWp0xnrd5CuwwRXK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 03:49:17', '2023-10-04 03:49:17'),
(2, 'Abdullah', 'abdullah@gmail.com', '1', NULL, '$2y$10$foKL4m9DwyYmTrIVNR6ULOFvqxOoBh4.HrJPBWetQdAcUWGrsKWCe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 03:49:55', '2023-10-04 03:49:55'),
(3, 'Thanish', 'thanish@gmail.com', '0', NULL, '$2y$10$7ZSebPmlDG1271qYsbkapOPK7TWR7U1cq524xUWWdZPom6NjMLWoe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 03:50:19', '2023-10-04 03:50:19'),
(4, 'Shimark', 'shimark@gmail.com', '0', NULL, '$2y$10$WqYLX0hLH64GI8DoQcXaQuev321.75aCyHE3mTVgBmcwMIyOxdI2q', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 03:50:42', '2023-10-04 03:50:42'),
(5, 'Asma', 'asma@gmail.com', '0', NULL, '$2y$10$pTqOsVosQ3N2Dgptom6sZebw4mFzuscxlLQVKIffapmfZrErDMl/u', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 03:51:10', '2023-10-04 03:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `womenwears`
--

CREATE TABLE `womenwears` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `womenwears`
--

INSERT INTO `womenwears` (`id`, `title`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Casual wear', '18500', '1696413514.jpg', '2023-10-04 04:27:56', '2023-10-04 04:28:34'),
(2, 'Vintage Coat', '23000', '1696413633.jpg', '2023-10-04 04:30:33', '2023-10-04 04:30:33'),
(3, 'Women\'s Blazer', '24500', '1696413700.jpg', '2023-10-04 04:31:40', '2023-10-04 04:31:40'),
(4, 'Anarkali Dress', '32000', '1696413956.jpg', '2023-10-04 04:34:23', '2023-10-04 04:35:56'),
(5, 'Retro Dress', '17000', '1696414135.jpg', '2023-10-04 04:38:55', '2023-10-04 04:38:55'),
(6, 'Saree', '20000', '1696414600.jpg', '2023-10-04 04:44:59', '2023-10-04 04:46:40'),
(7, 'Office wear', '21000', '1696414807.jpg', '2023-10-04 04:50:07', '2023-10-04 04:50:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kidswears`
--
ALTER TABLE `kidswears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menwears`
--
ALTER TABLE `menwears`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `womenwears`
--
ALTER TABLE `womenwears`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kidswears`
--
ALTER TABLE `kidswears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menwears`
--
ALTER TABLE `menwears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `womenwears`
--
ALTER TABLE `womenwears`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
