-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220609.11e34a6fec
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 08:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(5, 'Ricky saputra', 'rickysaputra.jr23@gmail.com', 'foto5.jpg', '$2y$10$s/ED38Qtoi3SbB.DbeyapOM8zsA8/wJtT4LETAIPpAJn4nl0vH4bu', 1, 1, 1654532205),
(7, 'Ricky', 'red.owls25@gmail.com', 'default.jpg', '$2y$10$sNTbbB7.2MYEj6g4JOIAxOPUN.EZP9OdcUa6/qdFJfoMLw8aW4HI2', 2, 1, 1654532533),
(27, 'Ricky Saputra', 'rickysaputra.jr140@gmail.com', 'default.jpg', '$2y$10$8uvUlsN2jXULjqhSjNtcOOVodr34xlVotC/hFnXy1C1hUYLzi.9ie', 2, 0, 1654939492),
(28, 'Ricky Saputra', 'rickysaputra.jr99@gmail.com', 'profile2.jpg', '$2y$10$8bdHbGS1bsKwEXJ6o/fs.uI3.ZF4Id3cElxDPh66y0SIWOGNS4ng2', 2, 0, 1654939588),
(30, 'Ricky Saputra', 'rickysaputra.jr16@gmail.com', 'default.jpg', '$2y$10$aVthWzBEyjlB1uFOdnJgXOPueF/NVwLHzTvtsqoBvi7QVwXZE1c/W', 2, 0, 1655065248),
(31, 'budi', 'budisaputra.jr16@gmail.com', 'default.jpg', '$2y$10$QrMEw0qiB351qM1orrj6BOHRDk6pM7m0htDJqqct8zQc8MLiz42jO', 2, 0, 1655065749);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(47, 1, 2),
(48, 1, 3),
(49, 1, 6),
(50, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_berita`
--

CREATE TABLE `user_berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(256) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `isi` text NOT NULL,
  `tgl_mulai` varchar(128) NOT NULL,
  `tgl_selesai` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_berita`
--

INSERT INTO `user_berita` (`id`, `judul`, `gambar`, `isi`, `tgl_mulai`, `tgl_selesai`) VALUES
(6, 'BSI University Debating', 'berita-2.jpeg', 'LOMBA BSI UNIVERSITY DEBATING CHAMPIONSHIP (BUDC) 2021\nDalam rangka meningkatkan Potensi mahasiswa UBSI yang bertakwa, berakhlaq mulia, Cakap, Kreatif terampil, kompeten dan berbudaya.\n\nUniversitas BSI menggelar Lomba BSI University Debanting Championship 2021, sebagai seleksi perwakilan UBSI dalam Lomba National University Debating Championship 2021, yang diselenggarakan oleh pusat Prestasi Nasional, kementerian pendidikan,  kebudayaan Riset dan Teknologi, dengan ketentuan Sebagai Berikut:\n\n> Persyaratan:\n1. Mahasiswa Aktif UBSI\n2. Mahasiswa D3 Maksimal Semester 4\n3. Mahasiswa S1 Maksimal Semester 6\n4. Pendaftaran Perorangan\n\n> Benefit\n1. Mendapatkan E-Sertifikat\n2. 3 terbaik akan menjadi delegasi UBSI dalam Lomba NUDC tingkat LLDIKTI III dan Nasional\n\n> Waktu Pendaftaran : 7 - 23 Mei 2021\n> Waktu Kegiatan : 24 - 25 Mei 2021\n\n> Contact Person\nAmbar : 082134079698\n\n> link pendaftaran : \nHttps://kemahasiswaan.bsi.ac.id/pendaftaran/budc\n\nYuk buruan daftar sobat BSI, tunjukan aksimu, tampilan kreativitasmu, dan jadilah Mahasiswa UBSI yang Berprestasi', '7 Mei', '23 Mei'),
(7, 'Penerimaan Perserta Didik Baru Gelombang 6', 'berita-1.jpg', 'PENERIMAAN MAHASISWA BARU (PMB) 2021 UBSI GELOMBANG 6 - KULIAH SEPTEMBER 2021  Hai, Sobat BSI.  Untuk Sobat BSI yang ingin kuliah di Universitas Bina Sarana Informatika (UBSI), tapi masih bingung apa Pendaftaran Mahasiswa Baru (PMB) UBSI masih dibuka  https://instagram.com/p/CSJCgR6rdNF/?utm_medium=copy_link', '4 Agustus', '2 September');

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'Berita');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-tie', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(10, 2, 'Portal Berita', 'user/beranda', 'fas fa-fw fa-newspaper', 1),
(13, 4, 'Tambah Berita', 'admin/berita', 'fas fa-fw fa-newspaper', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'budisaputra.jr16@gmail.com', '2wxOoEUqZyd1RAXLrPctn61LEvXBMQEUXGWWnFPB6gI=', 1654872083),
(4, 'rickysaputra.jr140@gmail.com', 'Ef+BINzinWJDjAT8JuogBzfm6YVJIk81DxH/RHg9Ip8=', 1654872733),
(6, 'rickysaputra.jr140@gmail.com', 'G8DJiZd1QD4TkYmCFbr4Az3fDLy5gaYxYvgBYFCPZ/E=', 1654873548),
(7, 'budisaputra.jr16@gmail.com', '9qxguS3bK+1zaCN+8lfhVuPoOwKilMKqvGUJyrsjyqQ=', 1654873959),
(8, 'budisaputra.jr16@gmail.com', 'oF2FvXYvszjbwZXP76jjoQXBDX/rll5Puo7YCNpD0I4=', 1654874858),
(10, 'budisaputra.jr16@gmail.com', '9rsOOrs2ADAuUWOX+6XyGHcQjJNOF9wpe3piutNdIxo=', 1654874982),
(12, 'rickysaputra.jr140@gmail.com', 'Jn7fWYfzSVog1FwmcokfE91f8IaojpfuZOUbPn/Llco=', 1654937039),
(14, 'rickysaputra.jr140@gmail.com', 'l2XEnZxovYNzde43MDWaP7c5dpqaQjxgglyKygsnYd0=', 1654938024),
(16, 'budisaputra.jr16@gmail.com', 'wPYxDBL0NVQoAeh/t9NrfnCB9orqzaXXDH/B67nEBAc=', 1654939241),
(18, 'rickysaputra.jr140@gmail.com', 'wzV0oVE1c7kBIVpcF26abYW7tIiQBSVpW7vRG8iZ4Dc=', 1654939492),
(20, 'rickysaputra.jr23@gmail.com', 'ewzkg7hPIHqrJ1lx1uWPyDacWiOwLAus6zO/yeV8cos=', 1654944491),
(21, 'rickysaputra.jr23@gmail.com', 'P2alyEE2Ol3GFIxd0DAKIxVvYIYgaBJ6vsLVKQKzCrI=', 1654944496),
(22, 'rickysaputra.jr23@gmail.com', '6V4vZnRfxPIyAut1rrjAuEFXGMEyPgRIfPggN2FWIAk=', 1654944500),
(23, 'rickysaputra.jr23@gmail.com', 'ZcQWY6gTDtB1pmaOXiB5lHiFnzAhXcCBZ6MWt00I3WI=', 1654944504),
(24, 'rickysaputra.jr16@gmail.com', 'dR/thI7lO5fb8X1Lz+aCLoJ+uXizpETc2+Ydn9na5VY=', 1655065208),
(25, 'rickysaputra.jr16@gmail.com', 'WLvJM3P5BcZjpKxMI1+ksJxOG9mVI+JJkQdmGGaDJr0=', 1655065248),
(27, 'budisaputra.jr16@gmail.com', 'QQcYOnpsc+y7u3ot+XtHaUWexJFhwi5fLW4noTaWsZk=', 1655065749),
(28, 'rickysaputra.jr23@gmail.com', 'yU5ie0kf0a/dfHE1Ed0CtNTRvyEJfErvUduvGce9x3w=', 1655065769);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_berita`
--
ALTER TABLE `user_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_berita`
--
ALTER TABLE `user_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



