-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2023 pada 06.10
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_projectapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name_project` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pic` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `task_complexity` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id`, `uuid`, `name_project`, `description`, `pic`, `start_date`, `end_date`, `priority`, `status`, `task_complexity`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'dcee3a14-7b8c-4943-8f50-62d01865b275', 'Sistem Izin Kerja Subcont', 'sistem yang mengelola kegiatan izin kerja subcont dari luar ke dalam pt abcdefg', 'Ayu Anjar Fatimah', '2023-07-14', '2023-07-24', 0, 1, 1, 3, '2023-07-14 01:57:53', '2023-07-18 07:13:51'),
(2, '650dcc41-b65b-4396-b218-ca6d4611f17f', 'Sistem Purchasing', 'sistem yang mengelola kegiatan purchasing di pt apa saja bisa', 'Ayu Anjar Fatimah', '2023-07-24', '2023-08-14', 3, 2, 0, 3, '2023-07-14 09:02:22', '2023-07-18 04:56:16'),
(3, '876fd5ab-ab4d-48e8-bfef-65c1f6684881', 'Sistem SGA Ver2', 'sistem yang mengelola document dept IT di PT Makmur Sentosa', 'Darum L Update', '2023-07-04', '2023-07-29', 1, 1, 1, 5, '2023-07-14 09:34:01', '2023-07-19 12:12:30'),
(7, '690d7e40-9f41-47b5-b0f2-4bdd209ce003', 'Sistem TKTD', 'sistem yang mengelola data tktd di pt fff', 'Nuramalia Putri', '2023-07-16', '2023-07-26', 2, 3, 2, 1, '2023-07-14 14:48:23', '2023-07-18 04:55:49'),
(8, '5385cd69-3894-4cbc-8154-71d3222690a7', 'Sistem Payroll Updated Ver2', 'sistem yang mengelola penggajian karyawan ', 'Nuramalia Putri', '2023-07-20', '2023-08-03', 3, 1, 2, 1, '2023-07-18 04:04:30', '2023-07-18 05:33:11'),
(9, '2ad04533-e6ef-4144-b89c-7940d5d60055', 'Sistem Kalibrasi', 'membuat sistem mengenai kalibrasi alat ukur di lab quality', 'Darum L', '2023-07-24', '2023-08-28', 1, 1, 1, 5, '2023-07-18 05:05:07', '2023-07-18 05:05:07'),
(10, 'ba870ffa-871d-413c-8a69-6f58488b4b36', 'Sistem Pelayanan Kesehatan Rawat Jalan', 'mengelola sistem rawat jalan di klinik xxx', 'Doni P', '2023-08-01', '2023-09-30', 3, 0, 2, 9, '2023-07-18 06:44:23', '2023-07-18 06:44:23'),
(11, '6dc1a45e-9986-45a8-a75a-99392eb41afd', 'Sistem Informasi Akademik', 'Sistem yang mengelola data kependidikan di sekolah abc', 'Nuramalia Putri', '2023-07-18', '2023-07-25', 1, 2, 1, 1, '2023-07-18 07:26:36', '2023-07-18 07:26:36'),
(12, 'fbe12074-c218-4923-8a5b-70b943b3f6b8', 'Sistem perpustakaan digital revisi v2', 'mengelola stok buku dan transaksi peminjaman buku serta output dari transaksi', 'Inggri Ahmad Fauzi', '2023-07-19', '2023-08-02', 1, 2, 0, 8, '2023-07-19 06:32:09', '2023-07-19 08:50:37'),
(13, 'b4fd1158-91fd-48de-8814-a1921da9645a', 'Sistem Apotik Digital', 'Sistem Pengelolaan Obat', 'Darum Listiyaningsih', '2023-08-01', '2023-08-31', 3, 1, 1, 5, '2023-07-19 12:26:31', '2023-07-19 12:28:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('0LnFGstamLOtWEQTZuVMjtc7uZlrNNa1', '2023-07-20 12:26:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:26:58', '2023-07-19 12:26:58'),
('0W-wwM7hd1xo9sn17fcq9mJFbG299YhQ', '2023-07-20 12:26:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:26:41', '2023-07-19 12:26:41'),
('2QCrjmHSZPGVS5R0X6fEdPnFLqKf0Mv6', '2023-07-20 07:18:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 07:18:25', '2023-07-19 07:18:25'),
('b7y5kU41s_kJ-GftLjsMnKHGbyTXTg8x', '2023-07-20 07:49:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 07:49:51', '2023-07-19 07:49:51'),
('fGS1xR-rWPspX2Rh99c68HuH2U9WjWcI', '2023-07-20 06:30:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 06:30:51', '2023-07-19 06:30:51'),
('fNi3kUUqDZ4EVwR-7EMnTazNoRDcrgIi', '2023-07-21 02:08:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-20 02:08:48', '2023-07-20 02:08:48'),
('KKX85oHYGoV7VU_d97f3-CwoEvEc-crP', '2023-07-20 07:18:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 07:18:54', '2023-07-19 07:18:54'),
('lmY5PKuJeqSuoIzjA-V7_L7mCWl8T6Fc', '2023-07-20 12:26:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:26:31', '2023-07-19 12:26:31'),
('MllCRJmi5mTTMWeHdoaxKz9kvIoqOC3d', '2023-07-20 08:50:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 08:50:27', '2023-07-19 08:50:27'),
('MWpc8VhYNPi1YMkW44o7W6yRBSGs1ntM', '2023-07-20 12:29:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:29:20', '2023-07-19 12:29:20'),
('NaYzcnC61XiwoE7Y7jYuhWIJe_xetfCC', '2023-07-20 08:50:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 08:50:37', '2023-07-19 08:50:37'),
('NCBauciMKxgETFcxbQxC0G_xkptl4Ird', '2023-07-20 06:32:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 06:32:09', '2023-07-19 06:32:09'),
('nGRNdS7izXISsHYxQEl-Jxur2383QgdP', '2023-07-20 06:47:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 06:47:44', '2023-07-19 06:47:44'),
('ODHzPt0YVXS0oMioBtjgsulRRqpx6oxi', '2023-07-20 12:29:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:29:59', '2023-07-19 12:29:59'),
('PzVC-EbkLVR3M9LnPx_0CyE_nfNMOxjV', '2023-07-20 12:29:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:29:32', '2023-07-19 12:29:32'),
('QPu53uIW4o6cxbvM-kenLoojmZbQtXJt', '2023-07-21 02:08:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-20 02:08:55', '2023-07-20 02:08:55'),
('reB-CIoO6xxZybkTRg1qxaxY8ddkXHcF', '2023-07-20 06:34:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 06:34:02', '2023-07-19 06:34:02'),
('rT5HcHHvN6HJkbNAnLtIEiGtX9lrn2WZ', '2023-07-20 06:47:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 06:47:15', '2023-07-19 06:47:15'),
('TxEcH3oVPkf1a9KxuKtg3HEyEit10-Rx', '2023-07-20 07:19:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 07:19:05', '2023-07-19 07:19:05'),
('uFGp7s2LmsvT1LB8d8Rz3KY1YJ42rfLN', '2023-07-20 12:11:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:11:49', '2023-07-19 12:11:49'),
('uMDVaugtaCs4dH-TbEUnVnwmSSjLIaPp', '2023-07-20 06:34:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 06:34:12', '2023-07-19 06:34:12'),
('Urt3Uy2YdN33929FyK7iQAFDuOJ-bfj3', '2023-07-21 02:09:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-20 02:09:20', '2023-07-20 02:09:20'),
('VrShbV47NAE4tydKDBj-iS93VLiv2uv-', '2023-07-20 12:12:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:12:30', '2023-07-19 12:12:30'),
('WCWcNC5XS_979jQf_Jauz_Z7fdC-aCyC', '2023-07-20 12:11:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:11:40', '2023-07-19 12:11:40'),
('Y1aqBi8VPk46bibsdve8iY92ReFN0E_b', '2023-07-20 12:28:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 12:28:18', '2023-07-19 12:28:18'),
('Y3lLWfFrnap0n_BuDs6yNbCI4JFLQmLf', '2023-07-20 07:49:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 07:49:18', '2023-07-19 07:49:18'),
('ZHGHAh8PSpKlukzZ5NyBxkNsWSkbmOn4', '2023-07-20 07:18:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-19 07:18:16', '2023-07-19 07:18:16'),
('_q2C1yebuX5nQjIh-aehczqp0D1vOu7Y', '2023-07-21 03:47:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-07-20 03:47:58', '2023-07-20 03:47:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'f828eae8-fd4f-4655-aa1b-550022220fc9', 'Nuramalia Putri', 'nuramaliaap24@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$d0a6V0hk3Wtk71lmk9AKKw$CpacfndCvFTi8Jy1XRlqeAtapBci4WCw5EbY9r+zPEI', 'admin', '2023-07-13 06:42:33', '2023-07-13 06:42:33'),
(3, 'd74109fe-0d03-41ef-a64c-8b075f64e2ba', 'Ayu Anjar Fatimah', 'ayuanjar@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$mGG8sopbJjRKcBtp3ZboRA$4861M80TOpxxP6tluN2MAUA8FbRwnNAY5tMpnIViwfo', 'pic', '2023-07-13 13:50:17', '2023-07-13 13:50:17'),
(4, '7c841a25-6269-4ee4-9254-1740ed2ad689', 'Alfian Ibrahim', 'alfian@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$zELvYDnSsQPXn6wsgS5O3g$Dpo/vmH10AjC2sSZ9QBOXXdS+Qo7YqtunO/KG4V1ZYc', 'admin', '2023-07-13 14:46:24', '2023-07-13 14:46:24'),
(5, 'db775b0c-7ce8-48a9-9cc0-2f3a77ac52fb', 'Darum L', 'darum@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$3XMzZ+x2T6pKTz0jDOYRhg$arn9eAmSUZDa9tBcKON0Hslo6Ti+yWddi1ZkSikruvM', 'pic', '2023-07-14 09:08:40', '2023-07-14 09:08:40'),
(7, '76be6e4b-31a8-40f5-8afe-99a7e4e85d09', 'Dewi Ratna', 'dewi@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$1uPLZFM3vSF9HKX7NoXRYw$qJoFQAST5nWIUhoPIokEqi6VFkn2Sz0IK6d7uH+pcA4', 'admin', '2023-07-18 06:03:41', '2023-07-18 06:41:15'),
(8, '2acc6bab-743c-4cee-aff2-1e447a8fb42f', 'Inggri Ahmad Fauzi update', 'inggriafa@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$cF9EMfPldCPV45oC1mw7lA$GcI7gJZZcN+9MBsUwqpT7iCmUY/enkkLRMUFSZvl0po', 'pic', '2023-07-18 06:26:51', '2023-07-19 07:49:51'),
(9, 'a0346bd6-1ac7-4f9b-baa9-e0dfea18d2f0', 'Doni P', 'donip@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$WWEOCVQBuiCoj6xN1ohzuQ$DI3ZJYv5MxaqhHrJbY6QeAR40qVlsAYLq/dZTcosMZo', 'pic', '2023-07-18 06:43:05', '2023-07-18 06:43:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
