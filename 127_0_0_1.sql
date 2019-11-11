-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 02:20 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars-crud`
--
CREATE DATABASE IF NOT EXISTS `cars-crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cars-crud`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sellerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellerAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellerContact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellingPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaserName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaserAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaserContact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carModel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carYear` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyStyle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meterReading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vinNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `sellerName`, `sellerAddress`, `sellerContact`, `sellingPrice`, `purchaserName`, `purchaserAddress`, `purchaserContact`, `carModel`, `carYear`, `carColor`, `bodyStyle`, `meterReading`, `vinNo`, `created_at`, `updated_at`) VALUES
(1, 'umar', 'multan', '03000', '5000000', 'junaid', 'multan2', '054412', '1900zbc', '2002', 'red', 'ok', '50000', 'ok', '2019-11-05 05:05:50', '2019-11-05 05:05:50'),
(2, 'umar', 'multan', '03000', '5000000', 'junaid', 'multan2', '054412', '1900zbc', '2002', 'red', 'ok', '50000', 'ok', '2019-11-05 05:08:01', '2019-11-05 05:08:01'),
(3, 'umar', 'multan', '03000', '5000000', 'junaid', 'multan2', '054412', '1900zbc', '2002', 'red', 'ok', '50000', 'ok', '2019-11-05 05:40:32', '2019-11-05 05:40:32'),
(4, 'umar', 'multan', '03000', '5000000', 'junaid', 'multan2', '054412', '1900zbc', '2002', 'red', 'ok', '50000', 'ok', '2019-11-05 05:41:26', '2019-11-05 05:41:26');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_04_104909_create_cars_table', 1),
(5, '2019_11_04_120852_create_cars_table', 2),
(6, '2019_11_05_093029_create_cars_table', 3);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
