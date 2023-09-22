-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 09:35 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_ta_ira`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(1, 'Ira Ayu Riyanto', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chekout`
--

CREATE TABLE `chekout` (
  `id_chekout` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_tlp` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `status_terima` enum('belum di terima','sudah diterima') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_pembeli`, `nama`, `username`, `password`) VALUES
(11, 'Pembeli1', 'Pembeli1', 'Pembeli1'),
(22, 'Pembeli2', 'Pembeli2', 'Pembeli2'),
(30, 'Anis Baswedan', 'admin2', 'admin2'),
(31, 'ira', 'ira', '123'),
(32, '', 'admin', 'admin'),
(33, 'admin3', 'admin3', 'admin3'),
(34, 'ayu', 'iraayu', '123');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(70) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `gambar`) VALUES
(11, 'Kebutuhan Pokok', ''),
(22, 'Alat Tulis', ''),
(44, 'Perawatan Tubuh', ''),
(56, 'Makanan dan Minuman', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelontongan`
--

CREATE TABLE `kelontongan` (
  `id_barang` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `gambar` text NOT NULL,
  `merek` varchar(100) NOT NULL,
  `tanggal_produksi` varchar(100) NOT NULL,
  `exp` varchar(5) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `stok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelontongan`
--

INSERT INTO `kelontongan` (`id_barang`, `id_kategori`, `nama_barang`, `gambar`, `merek`, `tanggal_produksi`, `exp`, `harga`, `stok`) VALUES
(91, 11, 'BERAS MAKNYUS KEMASAN 5 KG', '20230911082717.png', 'MAKNYUS', '2022', '2025', '75000', '484'),
(92, 11, 'BERAS SUMO PUTIH PULEN 5 KG', '20230911083017.jpg', 'SUMO', '2023', '2025', '70000', '20'),
(93, 11, 'MINYAK GORENG TROPICAL 2 LITER', '20230911084215.jpg', 'TROPICAL', '2022', '2025', '37500', '66'),
(94, 11, 'MINYAK RESTO 900ml', '20230911084417.jpg', 'RESTO', '2021', '2024', '25009', '88'),
(99, 11, 'GARAM MEJA REFINA BERYODIUM 500gr', '20230911085510.jpg', 'REFINA', '2023', '2026', '16000', '26'),
(100, 11, 'GARAM CAP KOTAK EMAS 250gr', '20230911085618.jpg', 'KOTAK EMAS JAYA', '2022', '2025', '12000', '789'),
(104, 22, 'PULPEN STANDAR SATUAN HITAM', '20230912041905.jpg', 'STANDAR', '2022', '0', '2000', '100'),
(105, 22, 'PULPEN JOYKO HITAM SATUAN', '20230912042250.jpg', 'JOYKO', '2021', '0', '3000', '20'),
(107, 22, 'BUKU TULIS CAMPUS B5 1 PACK', '20230912042624.jpg', 'CAMPUS', '2022', '0', '25000', '10'),
(108, 22, 'BUKU TULIS SIDU A5 1 PACK', '20230912042706.jpg', 'SIDU', '2022', '0', '45000', '25'),
(109, 22, 'PENSIL STAEDTLER HITAM 2B SATUAN', '20230912043109.jpg', 'STAEDTLER', '2023', '0', '5000', '25'),
(110, 22, 'PENSIL FABER-CASTELL HITAM 8B', '20230912043212.jpg', 'FABER-CASTELL', '2022', '0', '6000', '654'),
(111, 44, 'LAINEIGE LIP SLEEPING MASK 100gr', '20230917081419.png', 'LAINEGE', '2023', '2025', '150000', '200'),
(112, 44, 'LAINEIGE WATER BANK ESSENCE 100gr', '20230917081708.jpg', 'LAINEIGE', '2022', '2025', '250000', '155'),
(113, 44, 'LAINEIGE CLEAR-C PEELING SERUM 150gr', '20230917081816.png', 'LAINEGE', '2023', '2026', '350000', '154'),
(114, 56, 'SARI ROTI TAWAR REGULAR', '20230917083242.png', 'SARI ROTI', '2022', '2022', '16000', '10'),
(115, 56, 'SARI ROTI SANDWICH COKLAT', '20230917083336.png', 'SARI ROTI', '2023', '2023', '6000', '100'),
(116, 56, 'SARI ROTI DORAYAKI COKLAT', '20230917083442.png', 'SARI ROTI', '2023', '2023', '16000', '45'),
(117, 56, 'ULTRA MILK SUSU COKLAT 250ml', '20230917084202.png', 'ULTRA MILK', '2023', '2023', '6000', '100');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `qty` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `total_harga` varchar(50) NOT NULL,
  `total_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_pembeli`, `id_barang`, `qty`, `harga`, `total_harga`, `total_bayar`) VALUES
(38, 11, 33, '44', '500000', '22000000', ''),
(42, 22, 44, '5', '5000000', '25000000', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `chekout`
--
ALTER TABLE `chekout`
  ADD PRIMARY KEY (`id_chekout`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kelontongan`
--
ALTER TABLE `kelontongan`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chekout`
--
ALTER TABLE `chekout`
  MODIFY `id_chekout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `kelontongan`
--
ALTER TABLE `kelontongan`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
