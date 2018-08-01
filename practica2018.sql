-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31 Iul 2018 la 12:43
-- Versiune server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practica2018`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `companies`
--

CREATE TABLE `companies` (
  `id` int(50) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`) VALUES
(1, 'Banca Transilvania', '\r\nBanca Transilvania - Sediul Central\r\nBanca Transilvania (BT) (BVB: TLV) este una dintre cele mai mari trei b?nci din România. Banca fost înfiin?at? în anul 1993, la Cluj-Napoca, de un grup de oameni de afaceri locali, cu 79% capital românesc ?i 21% str?in. În 2014, Banca Transilvania împline?te 20 de ani din momentul în care a devenit opera?ional?, odat? cu deschiderea sucursalei din Clu'),
(2, 'Dacia', 'Automobile Dacia S.A. este cel mai mare produc?tor român de automobile, care din septembrie 1999 apar?ine grupului francez Renault. Obiectul de activitate al societ??ii îl constituie producerea ?i comercializarea de automobile, piese auto, ma?ini unelte ?i instala?ii pentru industria de automobile.');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `employees`
--

INSERT INTO `employees` (`id`, `company_id`, `name`) VALUES
(1, 1, 'Popescu Ionel'),
(2, 2, 'Ionescu Mircea');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
