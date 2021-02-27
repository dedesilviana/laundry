-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2007 at 07:12 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangg`
--

CREATE TABLE IF NOT EXISTS `barangg` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `tgl_update` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangg`
--

INSERT INTO `barangg` (`id`, `nama`, `stok`, `tgl_update`, `supplier`, `harga`) VALUES
(5, 'deterjen cair', 18, '2007-05-02', 'Dede silviana', 20000),
(15, 'pewangi', 25, '2021-02-16', 'silvi fitriani', 5000),
(18, 'deterjen bubuk', 25, '2007-05-02', 'Dede silviana', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
  `id` int(10) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `jenis`, `harga`) VALUES
(1, 'Paket 1', 10000),
(2, 'Paket 2', 5000),
(5, 'paket 3', 5000),
(6, 'paket4', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE IF NOT EXISTS `konsumen` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `nama`, `alamat`, `telp`) VALUES
(1, 'Irwansyah', 'Jl. Wild West No.12', '082445129182'),
(2, 'Dede silviana', 'kpbojong', '12345689'),
(3, 'Novintan nurdelis', 'kplampegan', '1257890'),
(4, 'putri indriani', 'kp.cilanang', '68790'),
(5, 'putri indriani', 'kplampegan', '32543'),
(6, 'silvi fitriani', 'kpbojong', '32543'),
(9, 'delis', 'kplampegan', '12345689'),
(10, 'delis', 'kplampegan', '12345689'),
(11, 'delis', 'kplampegan', '12345689'),
(12, 'yaya', 'bandung', '083822257789');

-- --------------------------------------------------------

--
-- Table structure for table `pemakaian`
--

CREATE TABLE IF NOT EXISTS `pemakaian` (
  `id` int(10) NOT NULL,
  `tgl_pakai` date NOT NULL,
  `barang` varchar(100) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemakaian`
--

INSERT INTO `pemakaian` (`id`, `tgl_pakai`, `barang`, `jumlah`) VALUES
(1, '2016-02-23', 'Deterjen Bubuk', 10),
(2, '2007-05-02', 'Deterjen Bubuk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `no` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `totali` int(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `barang` varchar(100) NOT NULL,
  `totalh` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no`, `tgl`, `totali`, `supplier`, `barang`, `totalh`) VALUES
(1, '2016-02-23', 10, 'Erwin', 'Deterjen Bubuk', 80000),
(2, '2016-02-23', 2, 'Erwin', 'Deterjen Bubuk', 16000),
(5, '2021-02-11', 2, 'Erwin', 'deterjen cair', 30000),
(6, '2021-02-11', 3, 'Dede silviana', 'deterjen cair', 30000),
(14, '2021-02-16', 25, 'Erwin', 'pewangi', 300000),
(15, '2021-02-16', 25, 'dede', 'deterjen cair', 250000),
(16, '2021-02-16', 25, 'silvi fitriani', 'pewangi', 125000),
(17, '2021-02-16', 12, 'Erwin', 'soklin', 120000),
(18, '2007-05-02', 15, 'Dede silviana', 'deterjen bubuk', 150000),
(19, '2007-05-02', 0, 'Erwin', 'soklin', 0),
(20, '2007-05-02', 25, 'Dede silviana', 'deterjen bubuk', 250000),
(21, '2007-05-02', 30, 'silvi fitriani', 'soklin', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('Administrator','Karyawan','Konsumen') NOT NULL,
  `nik` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `gender` enum('Laki laki','Perempuan') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `nik`, `alamat`, `telp`, `gender`) VALUES
(6, 'dede', 'dede', '202cb962ac59075b964b07152d234b70', 'Administrator', '32442353425', 'kplampegan', '324546', 'Perempuan'),
(10, 'iqbal', '1qbal', '81dc9bdb52d04dc20036dbd8313ed055', 'Karyawan', '32442353425', 'kplampegan', '217318937912', 'Laki laki');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `alamat`, `telp`) VALUES
(1, 'Erwin', 'Jl. Water Park No.18', '08178171123'),
(2, 'Dede silviana', 'kplampegan', '12345689'),
(3, 'dede', 'kp.lampegan', '083822257789'),
(4, 'silvi fitriani', 'kplampegan', '12345689');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id` int(5) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `tarif` int(100) NOT NULL,
  `diskon` int(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `tgl_ambil` date NOT NULL,
  `berat` int(10) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `konsumen` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `jenis`, `tarif`, `diskon`, `tgl_transaksi`, `tgl_ambil`, `berat`, `pengguna`, `konsumen`) VALUES
(1, 'Paket 1', 100000, 0, '2016-02-23', '2016-03-01', 10, 'khalid', 'Irwansyah'),
(2, 'Paket 2', 50000, 0, '2016-02-23', '2016-03-01', 10, 'khalid', 'Irwansyah'),
(5, 'Paket 2', 15000, 0, '2007-05-02', '2021-12-12', 3, 'dede', 'Dede silviana'),
(6, 'Paket 2', 15000, 0, '2007-05-02', '2021-12-15', 3, 'dede', 'Irwansyah'),
(14, 'Paket 1', 50000, 0, '2021-02-11', '2021-11-02', 5, 'dede', 'silvi fitriani'),
(15, 'Paket 2', 10000, 0, '2021-02-11', '2021-11-02', 2, 'ahmad', 'Dede silviana'),
(16, 'Paket 1', 225000, 0, '2021-02-11', '2021-08-02', 25, 'ahmad', 'Irwansyah'),
(17, 'Paket 1', 225000, 0, '2021-02-11', '2020-08-04', 25, 'ahmad', 'yaya'),
(18, 'Paket 1', 20000, 0, '2021-02-11', '2021-01-01', 2, 'dede', 'Irwansyah'),
(19, 'Paket 1', 189000, 0, '2021-02-11', '0220-12-12', 21, 'dede', 'yaya'),
(20, 'Paket 2', 112500, 0, '2021-02-11', '2021-11-02', 25, 'dede', 'putri indriani'),
(21, 'Paket 1', 20000, 0, '2021-02-11', '2021-11-11', 2, 'ahmad', 'yaya'),
(22, 'Paket 2', 10000, 0, '2021-02-16', '2021-12-02', 2, 'dede', 'putri indriani');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangg`
--
ALTER TABLE `barangg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemakaian`
--
ALTER TABLE `pemakaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangg`
--
ALTER TABLE `barangg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pemakaian`
--
ALTER TABLE `pemakaian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangg`
--
ALTER TABLE `barangg`
ADD CONSTRAINT `barangg_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pembelian` (`no`);

--
-- Constraints for table `jenis`
--
ALTER TABLE `jenis`
ADD CONSTRAINT `jenis_ibfk_1` FOREIGN KEY (`id`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemakaian`
--
ALTER TABLE `pemakaian`
ADD CONSTRAINT `pemakaian_ibfk_1` FOREIGN KEY (`id`) REFERENCES `jenis` (`id`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`no`) REFERENCES `transaksi` (`id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`id`) REFERENCES `konsumen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
