-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2025 at 01:56 AM
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
-- Database: `si_arsip_kua`
--

-- --------------------------------------------------------

--
-- Table structure for table `akta_nikah`
--

CREATE TABLE `akta_nikah` (
  `id` int NOT NULL,
  `nomor_akta` varchar(100) NOT NULL,
  `tanggal_akad` date NOT NULL,
  `nama_pria` varchar(200) NOT NULL,
  `nik_pria` varchar(30) DEFAULT NULL,
  `ttl_pria` varchar(100) DEFAULT NULL,
  `nama_ayah_pria` varchar(200) DEFAULT NULL,
  `nama_wanita` varchar(200) NOT NULL,
  `nik_wanita` varchar(30) DEFAULT NULL,
  `ttl_wanita` varchar(100) DEFAULT NULL,
  `nama_ayah_wanita` varchar(200) DEFAULT NULL,
  `alamat_kua` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `akta_nikah`
--

INSERT INTO `akta_nikah` (`id`, `nomor_akta`, `tanggal_akad`, `nama_pria`, `nik_pria`, `ttl_pria`, `nama_ayah_pria`, `nama_wanita`, `nik_wanita`, `ttl_wanita`, `nama_ayah_wanita`, `alamat_kua`, `file_path`, `created_at`) VALUES
(24, '701230011', '2025-12-03', 'Achmad Reza Dzurryyatul Asy Ari', '1111111111111111', 'mekar jaya, 12 desember 2023', 'Reza', 'Maimunah', '2222222222222222', 'suka jaya, 25 desember 2024', 'Patrio', 'bayung', 'arsip_692f99e095f695.29123389.png', '2025-12-03 02:01:04'),
(25, '12345', '2025-12-04', 'Achmad Reza Dzurryyatul Asy Ari', '3333333333333333', 'mekar jaya, 12 desember 2023', 'Reza', 'Maimunah', '4444444444444444', 'suka jaya, 25 desember 2024', 'Patrio', 'bayung', 'arsip_6931b4722f7de2.77472035.png', '2025-12-04 16:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `log_activity`
--

CREATE TABLE `log_activity` (
  `id` int NOT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `log_activity`
--

INSERT INTO `log_activity` (`id`, `user_ip`, `activity`, `created_at`) VALUES
(1, '::1', 'Tambah data arsip: 701230011', '2025-11-18 12:28:51'),
(2, '::1', 'Lihat detail arsip ID 1', '2025-11-18 12:28:54'),
(3, '::1', 'Lihat detail arsip ID 1', '2025-11-18 12:30:12'),
(4, '::1', 'Tambah data arsip: 701230023', '2025-11-18 12:32:52'),
(5, '::1', 'Cetak PDF laporan: 2025-10-01 s/d 2025-11-18', '2025-11-18 12:33:56'),
(6, '::1', 'Export Excel laporan: 2025-10-01 s/d 2025-11-18', '2025-11-18 12:34:08'),
(7, '::1', 'Lihat detail arsip ID 2', '2025-11-18 16:24:04'),
(8, '::1', 'Tambah data arsip: wdasfsf', '2025-11-18 16:25:45'),
(9, '::1', 'Lihat detail arsip ID 3', '2025-11-18 16:25:51'),
(10, '::1', 'Tambah data arsip: dvdvfdfdvfd', '2025-11-18 17:05:20'),
(11, '::1', 'Lihat detail arsip ID 3', '2025-11-18 17:06:13'),
(12, '::1', 'Lihat detail arsip ID 3', '2025-11-18 23:23:34'),
(13, '::1', 'Lihat detail arsip ID 3', '2025-11-18 23:24:52'),
(14, '::1', 'Lihat detail arsip ID 2', '2025-11-18 23:53:13'),
(15, '::1', 'Tambah data arsip: 701230011', '2025-11-19 00:00:34'),
(16, '::1', 'Lihat detail arsip ID 5', '2025-11-19 00:03:46'),
(17, '::1', 'Lihat detail arsip ID 5', '2025-11-19 00:11:06'),
(18, '::1', 'Lihat detail arsip ID 5', '2025-11-19 00:13:15'),
(19, '::1', 'Tambah data arsip: 701230011', '2025-11-19 00:15:00'),
(20, '::1', 'Tambah data arsip: wdasfsf', '2025-11-19 00:16:57'),
(21, '::1', 'Lihat detail arsip ID 7', '2025-11-19 00:17:04'),
(22, '::1', 'Lihat detail arsip ID 6', '2025-11-19 00:35:40'),
(23, '::1', 'Tambah data arsip: 1234567', '2025-11-19 00:38:15'),
(24, '::1', 'Lihat detail arsip ID 8', '2025-11-19 00:46:14'),
(25, '::1', 'Lihat detail arsip ID 8', '2025-11-19 00:46:43'),
(26, '::1', 'Lihat detail arsip ID 8', '2025-11-19 01:02:45'),
(27, '::1', 'Lihat detail arsip ID 8', '2025-11-19 13:08:49'),
(28, '::1', 'Tambah arsip baru: Nomor Akta 12345678', '2025-11-20 12:09:51'),
(29, '::1', 'Lihat detail arsip ID 8', '2025-11-20 13:37:55'),
(30, '::1', 'Tambah arsip baru: Nomor Akta 123456', '2025-11-20 16:58:54'),
(31, '::1', 'Tambah arsip baru: Nomor Akta 1234', '2025-11-20 17:00:53'),
(32, '::1', 'Tambah arsip baru: Nomor Akta 123456', '2025-11-20 17:08:15'),
(33, '::1', 'Tambah arsip baru: Nomor Akta 1234', '2025-11-20 17:12:17'),
(34, '::1', 'Cetak PDF laporan: 2025-11-01 s/d 2025-11-21', '2025-11-21 15:35:07'),
(35, '::1', 'Tambah arsip baru: Nomor Akta 12345', '2025-11-21 23:28:40'),
(36, '::1', 'Lihat detail arsip ID 13', '2025-11-21 23:29:57'),
(37, '::1', 'Lihat detail arsip ID 13', '2025-11-21 23:41:01'),
(38, '::1', 'Lihat detail arsip ID 13', '2025-11-21 23:42:57'),
(39, '::1', 'Lihat detail arsip ID 13', '2025-11-22 02:22:55'),
(40, '::1', 'Tambah arsip baru: Nomor Akta 123456', '2025-11-22 02:27:52'),
(41, '::1', 'Lihat detail arsip ID 13', '2025-11-22 04:57:09'),
(42, '::1', 'Lihat detail arsip ID 13', '2025-11-22 07:53:56'),
(43, '::1', 'Lihat detail arsip ID 13', '2025-11-22 08:00:11'),
(44, '::1', 'Lihat detail arsip ID 13', '2025-11-22 08:08:55'),
(45, '::1', 'Tambah arsip baru: Nomor Akta 12345', '2025-11-22 08:11:29'),
(46, '::1', 'Tambah arsip baru: Nomor Akta 123456', '2025-11-22 08:14:59'),
(47, '::1', 'Lihat detail arsip ID 17', '2025-11-22 09:03:58'),
(48, '::1', 'Tambah arsip baru: Nomor Akta 1234567', '2025-11-22 09:06:02'),
(49, '::1', 'Tambah arsip baru: Nomor Akta 12345678', '2025-11-22 09:07:14'),
(50, '::1', 'Tambah arsip baru: Nomor Akta 123456789', '2025-11-22 09:26:03'),
(51, '::1', 'Lihat detail arsip ID 19', '2025-11-22 10:00:32'),
(52, '::1', 'Lihat detail arsip ID 20', '2025-11-22 10:03:51'),
(53, '::1', 'Lihat detail arsip ID 20', '2025-11-22 10:34:06'),
(54, '::1', 'Lihat detail arsip ID 20', '2025-11-22 10:45:04'),
(55, '::1', 'Lihat detail arsip ID 20', '2025-11-22 10:47:11'),
(56, '::1', 'Lihat detail arsip ID 20', '2025-11-22 10:55:23'),
(57, '::1', 'Lihat detail arsip ID 20', '2025-11-22 10:55:45'),
(58, '::1', 'Lihat detail arsip ID 20', '2025-11-22 11:03:53'),
(59, '::1', 'Lihat detail arsip ID 20', '2025-11-22 23:06:17'),
(60, '::1', 'Lihat detail arsip ID 20', '2025-11-22 23:37:06'),
(61, '::1', 'Lihat detail arsip ID 20', '2025-11-22 23:37:32'),
(62, '::1', 'Lihat detail arsip ID 19', '2025-11-23 00:01:41'),
(63, '::1', 'Tambah arsip baru: Nomor Akta 123456789', '2025-11-23 00:02:53'),
(64, '::1', 'Lihat detail arsip ID 21', '2025-11-23 00:03:00'),
(65, '::1', 'Lihat detail arsip ID 21', '2025-11-23 00:03:36'),
(66, '::1', 'Tambah arsip baru: Nomor Akta 1234567891', '2025-11-23 00:08:02'),
(67, '::1', 'Lihat detail arsip ID 22', '2025-11-23 00:08:05'),
(68, '::1', 'Tambah arsip baru: Nomor Akta 123456789325', '2025-11-23 00:15:33'),
(69, '::1', 'Lihat detail arsip ID 16', '2025-11-23 00:16:34'),
(70, '::1', 'Lihat detail arsip ID 23', '2025-11-23 01:38:39'),
(71, '::1', 'Cetak PDF laporan: 2025-11-01 s/d 2025-11-23', '2025-11-23 01:52:03'),
(72, '::1', 'Export Excel laporan: 2025-11-01 s/d 2025-11-23', '2025-11-23 01:52:42'),
(73, '::1', 'Cetak PDF laporan: 2025-11-01 s/d 2025-11-23', '2025-11-23 01:52:45'),
(74, '::1', 'Cetak PDF laporan: 2025-11-01 s/d 2025-11-23', '2025-11-23 01:53:05'),
(75, '::1', 'Lihat detail arsip ID 22', '2025-11-23 03:35:21'),
(76, '::1', 'Export Excel laporan: 2025-11-01 s/d 2025-11-29', '2025-11-29 08:26:05'),
(77, '::1', 'Tambah arsip baru: Nomor Akta 701230011', '2025-12-03 02:01:04'),
(78, '::1', 'Tambah arsip baru: Nomor Akta 12345', '2025-12-04 16:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','petugas') NOT NULL DEFAULT 'petugas',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'admin', '$2y$10$fkGJnMPNW5NYFUQ7iBof2OqbsPrbdzWG7iiOvdfP2ykseZNdh0L1a', 'admin', '2025-11-18 04:35:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akta_nikah`
--
ALTER TABLE `akta_nikah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_nama_pria` (`nama_pria`),
  ADD KEY `idx_nama_wanita` (`nama_wanita`),
  ADD KEY `idx_nomor_akta` (`nomor_akta`),
  ADD KEY `idx_tanggal_akad` (`tanggal_akad`);

--
-- Indexes for table `log_activity`
--
ALTER TABLE `log_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akta_nikah`
--
ALTER TABLE `akta_nikah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `log_activity`
--
ALTER TABLE `log_activity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
