-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2024 at 03:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) NOT NULL,
  `selected_seats` varchar(255) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `route_id`, `customer_name`, `selected_seats`, `total_price`, `created_at`, `updated_at`) VALUES
(1, NULL, 'aaaa', 'A1', '800.00', '2024-09-26 07:41:16', '2024-09-26 07:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mumbai', NULL, NULL),
(2, 'Pune', NULL, NULL),
(3, 'Solapur', NULL, NULL),
(4, 'Latur', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_24_161110_create_routes_table', 2),
(6, '2024_09_24_161155_create_seats_table', 2),
(7, '2024_09_24_161217_create_bookings_table', 2),
(8, '2024_09_24_170332_create_locations_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `start_location`, `end_location`, `seat_type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Mumbai', 'Pune', 'Single', 700, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(13, 'Mumbai', 'Pune', 'Double', 300, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(14, 'Mumbai', 'Solapur', 'Single', 600, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(15, 'Mumbai', 'Solapur', 'Double', 200, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(16, 'Mumbai', 'Latur', 'Single', 500, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(17, 'Mumbai', 'Latur', 'Double', 400, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(18, 'Pune', 'Mumbai', 'Single', 800, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(19, 'Pune', 'Mumbai', 'Double', 300, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(20, 'Pune', 'Solapur', 'Single', 600, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(21, 'Pune', 'Solapur', 'Double', 200, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(22, 'Pune', 'Latur', 'Single', 500, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(23, 'Pune', 'Latur', 'Double', 400, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(24, 'Solapur', 'Mumbai', 'Single', 800, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(25, 'Solapur', 'Mumbai', 'Double', 300, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(26, 'Solapur', 'Pune', 'Single', 600, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(27, 'Solapur', 'Pune', 'Double', 200, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(28, 'Solapur', 'Latur', 'Single', 500, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(29, 'Solapur', 'Latur', 'Double', 400, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(30, 'Latur', 'Mumbai', 'Single', 800, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(31, 'Latur', 'Mumbai', 'Double', 300, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(32, 'Latur', 'Pune', 'Single', 600, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(33, 'Latur', 'Pune', 'Double', 200, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(34, 'Latur', 'Solapur', 'Single', 500, '2024-09-24 10:46:52', '2024-09-24 10:46:52'),
(35, 'Latur', 'Solapur', 'Double', 400, '2024-09-24 10:46:52', '2024-09-24 10:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat_type` enum('Single','Double') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_booked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `route_id`, `seat_number`, `seat_type`, `is_booked`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', 'Single', 1, '2024-09-24 10:46:53', '2024-09-26 07:41:20'),
(2, 1, 'A2', 'Single', 1, '2024-09-24 10:46:53', '2024-09-26 07:26:33'),
(3, 1, 'A3', 'Single', 1, '2024-09-24 10:46:53', '2024-09-26 07:26:33'),
(4, 1, 'A4', 'Single', 1, '2024-09-24 10:46:53', '2024-09-26 07:42:29'),
(5, 1, 'A5', 'Single', 0, '2024-09-24 10:46:53', '2024-09-24 10:46:53'),
(6, 1, 'B1', 'Single', 1, '2024-09-24 10:46:53', '2024-09-26 07:43:28'),
(7, 1, 'B2', 'Single', 0, '2024-09-24 10:46:53', '2024-09-24 10:46:53'),
(8, 1, 'B3', 'Single', 0, '2024-09-24 10:46:53', '2024-09-24 10:46:53'),
(9, 1, 'B4', 'Single', 0, '2024-09-24 10:46:53', '2024-09-24 10:46:53'),
(10, 1, 'B5', 'Single', 0, '2024-09-24 10:46:53', '2024-09-24 10:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 'vishal bagal', 'vishal@gmail.com', NULL, '$2y$10$hxBMQ75RVbMhGA5luI7YV.k7kwCAwE023t55LnkVmmukTGYv.gnPC', NULL, NULL),
(2, 'user', 'user@gmail.com', NULL, '$2y$10$W9rPXXYT5YY0T.tUZcB/reYGY1IoBbwuLkl.xcxIZzoBRYxKFftlC', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seats_route_id_foreign` (`route_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
