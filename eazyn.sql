-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2024 at 01:23 AM
-- Server version: 8.1.0
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eazyn`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Ahmad Syarifuddin', 'ahmad', '123'),
(2, 'Ramdhain', 'ram', '123'),
(3, 'Sadia', 'sadi', '123');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mapel` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `username`, `password`, `nip`, `foto`) VALUES
(1, 'Sukmita Dewi', 'Matemetika', 'sukmita', '12345', '773678717822974061 ', 'placeholder.png'),
(2, 'Audrey Holmes', 'Matematika', 'audrey', '12345', '733341661025409832', 'placeholder.png'),
(3, 'Stefan Cole', 'Sejarah', 'stefan', '12345', '940603232241594125', 'placeholder.png'),
(4, 'Emmy Reese', 'IPS', 'emmy', '12345', '697968984027909790', 'placeholder.png'),
(5, 'Ashleigh Olson', 'English', 'ashleigh', '12345', '169473064086655489', 'placeholder.png'),
(6, 'Harvey Chaney', 'Biologi', 'harvey', '12345', '498133445860342685 ', 'placeholder.png'),
(7, 'Natasha Holman', 'IPA', 'natasha', '12345', '672473842399025477', 'placeholder.png'),
(8, 'Kendra Allison', 'Kimia', 'kendra', '12345', '146298898988078840', 'placeholder.png'),
(9, 'Wiktor Butler', 'Elektro', 'wiktor', '12345', '719706043570357775', 'placeholder.png'),
(10, 'Eva Bentley', 'Seni', 'eva', '12345', '437907584406526539', 'placeholder,png');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int NOT NULL,
  `siswa_id` int NOT NULL,
  `guru_id` int DEFAULT NULL,
  `bk_id` int DEFAULT NULL,
  `alasan` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `kode` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `waktu` varchar(8) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_approved` int NOT NULL DEFAULT '0',
  `file_pendukung` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `kode`, `waktu`, `tanggal`, `is_approved`, `file_pendukung`) VALUES
(1, 2, 1, 1, 'Dibacok Orang Tidak Dikenal (Menuju Rumah Sakit terdekat)', '', '1 - 8', '2024-02-15 08:38:49', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int NOT NULL,
  `nama_setting` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `kelas` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nis` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `jurusan` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Andy Atmaja', '10 SIJA B', '872794', 'SIJA', 'andy', '12345', 'placeholder2.jpg'),
(2, 'Elsa Yuria', '10 KI A', '325658', 'KI', 'elsa', '12345', 'placeholder2.jpg'),
(3, 'Prima Saiful', '11 TEK A', '170579', 'TEK', 'prima', '12345', 'placeholder2.jpg'),
(4, 'Ankar Fajar', '11 TOI B', '940108', 'TOI', 'ankar', '12345', 'placeholder2.jpg'),
(5, 'Dimas Yuki', '11 KA A', '286022', 'KA', 'dimas', '12345', 'placeholder2.jpg'),
(6, 'Ersa Aulia', '11 KA B', '582975', 'KA', 'ersa', '12345', 'placeholder2.jpg'),
(7, 'Dewi Maharani', '12 TKR', '462425', 'TKR', 'dewi', '12345', 'placeholder2.jpg'),
(8, 'Fajari Abdul', '12 GP A', '982150', 'GP', 'fajari', '12345', 'placeholder2.jpg'),
(9, 'Jensen Akbar', '10 SIJA A', '626199', 'SIJA', 'jensen', '12345', 'placeholder2.jpg'),
(10, 'Anika Julia', '12 GP B', '212455', 'GP', 'anika', '12345', 'placeholder2.jpg'),
(11, 'Max Verstappen', '10 TEK B', '657313', 'TEK', 'max verstappen', '1', 'placeholder2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
