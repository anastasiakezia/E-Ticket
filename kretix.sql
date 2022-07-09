-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 13, 2021 at 02:30 AM
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
-- Database: `kretix`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_135145_laratrust_setup_tables', 2),
(6, '2021_11_30_142938_tiket', 3),
(7, '2021_11_30_142953_pemesanan', 4),
(8, '2021_11_30_153025_tiket', 5),
(9, '2021_11_30_153136_tiket', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ivanandikasurya21@gmail.com', '$2y$10$UuGbeA8qtkQYuCICs9kks.GjwOd86KiF98o6DjLNZC9.a9vBttRDi', '2021-12-12 06:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tiket` int(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_pemesan` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_orang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kereta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kereta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `jam_berangkat` time NOT NULL,
  `harga` double NOT NULL,
  `total_harga` double NOT NULL,
  `nama1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK1` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK2` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK3` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NIK4` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `id_tiket`, `user_id`, `nama_pemesan`, `jumlah_orang`, `nama_kereta`, `jenis_kereta`, `asal`, `tujuan`, `tanggal_berangkat`, `jam_berangkat`, `harga`, `total_harga`, `nama1`, `nama2`, `nama3`, `nama4`, `NIK1`, `NIK2`, `NIK3`, `NIK4`, `created_at`, `updated_at`) VALUES
(36, 9, 2, 'Wibisono Adisono', '1', 'Bima', 'Eksekutif', 'lempuyangan', 'gambir', '2021-12-16', '15:00:00', 350000, 350000, 'Wibisono Adiyoso', '', '', '', '1237488829330212', '', '', '', '2021-12-15 17:00:00', '2021-12-15 17:00:00'),
(37, 3, 4, 'Jonathan Valentino', '4', 'Srikandi-1', 'Ekonomi', 'tanjungkarang', 'kertapati', '2021-12-15', '08:00:00', 32000, 128000, 'Jonathan Valentino', 'Bella Valentina', 'Midi Renaldy', 'Riana L', '2231233332223', '2231233332212', '2231233332123', '2231233332354', '2021-12-14 17:00:00', '2021-12-14 17:00:00'),
(38, 7, 5, 'Ivan Andika Surya', '2', 'Arjuna-2', 'Bisnis', 'semarangtawang', 'lempuyangan', '2021-12-14', '10:45:00', 90000, 180000, 'Ivan Andika Surya', 'Fira Kusuma', '', '', '12333322212121', '2322122211211211', '', '', '2021-12-13 17:00:00', '2021-12-13 17:00:00'),
(39, 5, 6, 'Kezia Beatrix', '1', 'Brawijaya', 'Bisnis', 'malang', 'cakung', '2021-12-09', '07:00:00', 320000, 320000, 'Kezia', '', '', '', '231222111112332', '', '', '', '2021-12-11 17:00:00', '2021-12-11 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(2, 'users-read', 'Read Users', 'Read Users', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(3, 'users-update', 'Update Users', 'Update Users', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2021-11-30 06:57:46', '2021-11-30 06:57:46'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2021-11-30 06:57:46', '2021-11-30 06:57:46'),
(11, 'module_1_name-create', 'Create Module_1_name', 'Create Module_1_name', '2021-11-30 06:57:46', '2021-11-30 06:57:46'),
(12, 'module_1_name-read', 'Read Module_1_name', 'Read Module_1_name', '2021-11-30 06:57:46', '2021-11-30 06:57:46'),
(13, 'module_1_name-update', 'Update Module_1_name', 'Update Module_1_name', '2021-11-30 06:57:46', '2021-11-30 06:57:46'),
(14, 'module_1_name-delete', 'Delete Module_1_name', 'Delete Module_1_name', '2021-11-30 06:57:46', '2021-11-30 06:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(9, 2),
(10, 2),
(11, 3),
(12, 3),
(13, 3),
(14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admin', '2021-11-30 06:57:45', '2021-11-30 06:57:45'),
(2, 'user', 'User', 'User', '2021-11-30 06:57:46', '2021-11-30 06:57:46'),
(3, 'role_name', 'Role Name', 'Role Name', '2021-11-30 06:57:46', '2021-11-30 06:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 3, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(2, 4, 'App\\Models\\User'),
(2, 5, 'App\\Models\\User'),
(2, 6, 'App\\Models\\User'),
(2, 7, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kereta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `berangkat` time NOT NULL,
  `sampai` time NOT NULL,
  `harga` double NOT NULL,
  `GA1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GB1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GC1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GA2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GB2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GC2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GA3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GB3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GC3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GA4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GB4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GC4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GA5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GB5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GC5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GA6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GB6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GC6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GA7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GB7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GC7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id`, `nama_kereta`, `jenis`, `asal`, `tujuan`, `berangkat`, `sampai`, `harga`, `GA1`, `GB1`, `GC1`, `GA2`, `GB2`, `GC2`, `GA3`, `GB3`, `GC3`, `GA4`, `GB4`, `GC4`, `GA5`, `GB5`, `GC5`, `GA6`, `GB6`, `GC6`, `GA7`, `GB7`, `GC7`, `created_at`, `updated_at`) VALUES
(1, 'Laksamana', 'Eksekutif', 'gambir', 'senen', '14:30:00', '15:30:00', 15000, '', '', '49', '', '', '100', '', '', '100', '', '', '100', '', '', '100', '', '', '100', '', '', '100', '2021-12-04 01:01:30', '2021-12-04 01:01:30'),
(2, 'Laksamana', 'Ekonomi', 'gambir', 'senen', '14:30:00', '15:30:00', 10000, '560', '', '', '560', '', '', '560', '', '', '560', '', '', '560', '', '', '560', '', '', '560', '', '', NULL, NULL),
(3, 'Srikandi-1', 'Ekonomi', 'tanjungkarang', 'kertapati', '08:00:00', '16:00:00', 32000, '200', '', '', '200', '', '', '200', '', '', '196', '', '', '197', '', '', '200', '', '', '200', '', '', NULL, NULL),
(4, 'Srikandi-2', 'Ekonomi', 'kertapati', 'tanjungkarang', '08:00:00', '16:00:00', 32000, '200', '', '', '200', '', '', '200', '', '', '200', '', '', '200', '', '', '200', '', '', '50', '', '', '2021-12-04 00:59:29', '2021-12-04 00:59:29'),
(5, 'Brawijaya', 'Bisnis', 'malang', 'cakung', '07:00:00', '22:00:00', 320000, '', '49', '', '', '300', '', '', '300', '', '', '300', '', '', '300', '', '', '300', '', '', '296', '', '2021-12-04 01:01:20', '2021-12-04 01:01:20'),
(6, 'Arjuna-1', 'Bisnis', 'lempuyangan', 'semarangtawang', '10:45:00', '12:25:00', 90000, '', '250', '', '', '250', '', '', '250', '', '', '250', '', '', '250', '', '', '250', '', '', '250', '', '2021-12-12 05:45:18', '2021-12-12 05:45:18'),
(7, 'Arjuna-2', 'Bisnis', 'semarangtawang', 'lempuyangan', '10:45:00', '12:25:00', 90000, '', '250', '', '', '250', '', '', '248', '', '', '250', '', '', '250', '', '', '250', '', '', '250', '', '2021-12-12 05:45:18', '2021-12-12 05:45:18'),
(8, 'Matarmaja', 'Eksekutif', 'malang', 'semarangtawang', '09:50:00', '14:50:00', 400000, '', '', '60', '', '', '60', '', '', '60', '', '', '60', '', '', '60', '', '', '60', '', '', '60', NULL, NULL),
(9, 'Bima', 'Eksekutif', 'lempuyangan', 'gambir', '15:00:00', '21:55:00', 350000, '', '', '75', '', '', '75', '', '', '75', '', '', '75', '', '', '74', '', '', '75', '', '', '75', NULL, NULL);

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
  `foto` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fotodefault.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Wibisono Adiyoso', 'wibisono672019005@gmail.com', NULL, '$2y$10$wmII1COAHVsyRWVf9faDWurjdKxEhbAKDalLSQMI5z3by5PMptJ.a', '2.png', NULL, '2021-11-30 07:17:12', '2021-12-12 06:09:41'),
(3, 'Admin', 'webkretix@gmail.com', NULL, '$2y$10$EExLpc4/ur2isF08GnNCaORSsn1nwmm0IjBZ/JNP3vTTPFhzoFm2u', 'fotodefault.png', NULL, '2021-11-30 07:20:30', '2021-11-30 07:20:30'),
(4, 'Jonathan Valentino', 'Jovalen029@gmail.com', NULL, '$2y$10$nTgV7q3bdz/idULJFN2C1.Tl56Czq5sTGdVkRtV9bZ8.ogkoNiFqS', '4.png', '0AMsY1HzKFKAscX0Wqn1J7YlkNoOwWt4MhYtSt9bRFrjgd4RCKRP5d6liZUk', '2021-12-02 03:15:58', '2021-12-12 06:35:47'),
(5, 'Ivan Andika Surya', 'ivanandikasurya21@gmail.com', NULL, '$2y$10$OZSL4fNhA5ImzqVF.RDj1egs4hEzUbxx9tFhoclKz.SQ6alBj9U4O', '5.png', NULL, '2021-12-04 00:27:52', '2021-12-04 00:43:29'),
(6, 'Kezia Beatrix', 'anastasiakezia08@gmail.com', NULL, '$2y$10$NX1Jzi9nZTM6o8lllgAtDuo6rjldIDUAtJJUBgtPZ81LsmgDGlpnS', 'fotodefault.png', NULL, '2021-12-12 05:25:22', '2021-12-12 05:25:22'),
(7, 'Ramantya Dwiangga', 'ramantyads@gmail.com', NULL, '$2y$10$AA4tGiEM4qR1pVojjVgnoupF7lhjR4mWXWaiCQ9zbU58PNE.rqmnu', 'fotodefault.png', NULL, '2021-12-12 06:34:05', '2021-12-12 06:34:05');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
