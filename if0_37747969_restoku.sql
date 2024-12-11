-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql100.infinityfree.com
-- Generation Time: Dec 10, 2024 at 08:13 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_37747969_restoku`
--

-- --------------------------------------------------------

--
-- Table structure for table `IsiStruk`
--

CREATE TABLE `IsiStruk` (
  `NoStruk` int(6) NOT NULL,
  `IdPesanan` int(3) NOT NULL,
  `JumlahPesanan` double(6,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mejapesanan`
--

CREATE TABLE `mejapesanan` (
  `KodeMeja` int(2) NOT NULL,
  `NamaMeja` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mejapesanan`
--

INSERT INTO `mejapesanan` (`KodeMeja`, `NamaMeja`) VALUES
(1, 'Mawar 1'),
(2, 'Mawar 2'),
(3, 'Pandan 1'),
(4, 'Kemuning 1');

-- --------------------------------------------------------

--
-- Table structure for table `Pesanan`
--

CREATE TABLE `Pesanan` (
  `IdPesanan` int(3) NOT NULL,
  `NamaPesanan` varchar(35) NOT NULL,
  `HargaSatuan` double(8,2) DEFAULT NULL,
  `HargaKhusus` double(8,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `IdPetugas` int(11) NOT NULL,
  `NamaPetugas` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Level` enum('Pelayan','Kasir','Admin') NOT NULL DEFAULT 'Pelayan'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `struk`
--

CREATE TABLE `struk` (
  `NoStruk` int(6) NOT NULL,
  `WaktuPesan` datetime NOT NULL DEFAULT current_timestamp(),
  `KodeMeja` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `struk`
--

INSERT INTO `struk` (`NoStruk`, `WaktuPesan`, `KodeMeja`) VALUES
(1, '2024-12-04 00:00:00', 2),
(2, '2024-12-04 00:00:00', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `IsiStruk`
--
ALTER TABLE `IsiStruk`
  ADD KEY `IndexNoStruk` (`NoStruk`),
  ADD KEY `IndexIdPesanan` (`IdPesanan`);

--
-- Indexes for table `mejapesanan`
--
ALTER TABLE `mejapesanan`
  ADD PRIMARY KEY (`KodeMeja`);

--
-- Indexes for table `Pesanan`
--
ALTER TABLE `Pesanan`
  ADD PRIMARY KEY (`IdPesanan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`IdPetugas`);

--
-- Indexes for table `struk`
--
ALTER TABLE `struk`
  ADD PRIMARY KEY (`NoStruk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mejapesanan`
--
ALTER TABLE `mejapesanan`
  MODIFY `KodeMeja` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Pesanan`
--
ALTER TABLE `Pesanan`
  MODIFY `IdPesanan` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `IdPetugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `struk`
--
ALTER TABLE `struk`
  MODIFY `NoStruk` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
