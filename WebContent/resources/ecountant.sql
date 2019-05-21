-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2019 at 08:56 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecountant`
--

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `N_NO` int(11) NOT NULL,
  `N_TGL` varchar(20) NOT NULL,
  `N_KEPERLUAN` varchar(100) NOT NULL,
  `N_CATATAN` varchar(100) NOT NULL,
  `NAMA_BARANG` varchar(20) NOT NULL,
  `HARGA_BARANG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`N_NO`, `N_TGL`, `N_KEPERLUAN`, `N_CATATAN`, `NAMA_BARANG`, `HARGA_BARANG`) VALUES
(1, 'Mei', 'Makan-Makan', 'Makan-makan', 'Krawu', 100000),
(2, 'Mei', 'Makan-Makan', 'Makan-makan', 'Krawu', 100000),
(3, 'Juni', 'skj', 'skfj', 'Dimas', 20000),
(4, 'Juli', 'skj', 'skfj', 'Kamurapi', 25000),
(5, 'Januari', 'kajdksj', 'aksjkajsd', 'kjdkj', 30000),
(6, 'Januari', 'kajdkjsad', 'akjdkasjdka', 'kasjdaksj', 30000),
(7, 'Februari', 'adkslka', 'ladkslkad', 'akdlks', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `P_ID` int(11) NOT NULL,
  `P_TGL` varchar(20) NOT NULL,
  `P_TOTAL` int(11) NOT NULL,
  `P_DARI` varchar(20) NOT NULL,
  `P_CATATAN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`P_ID`, `P_TGL`, `P_TOTAL`, `P_DARI`, `P_CATATAN`) VALUES
(3, 'Januari', 20000, 'Denden', 'Denden'),
(4, 'Januari', 30000, 'Jajajaj', 'AJajajaj'),
(5, 'Juni', 30000, 'Jere', 'Jere'),
(6, 'Februari', 30000, 'Juggy', 'Juggy'),
(7, 'Januari', 20000, 'kajsdkj', 'skdjakjsd');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`N_NO`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`P_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `N_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `P_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
