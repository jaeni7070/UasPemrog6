-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 04:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `Idauthor` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`Idauthor`, `name`, `surname`) VALUES
(1, 'Wilson', 'Michle'),
(2, 'Naruto', 'Uzumaki'),
(3, 'Kana', 'Nda'),
(4, 'Supra', 'Yanto'),
(5, 'Ana', 'Antum'),
(6, 'Ani', 'Nussa'),
(7, 'Andi', 'Dhikanta'),
(8, 'Aki', 'Akusiap');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `idbook` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pagecount` int(20) NOT NULL,
  `point` int(20) NOT NULL,
  `authorId` int(20) NOT NULL,
  `typeId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`idbook`, `name`, `pagecount`, `point`, `authorId`, `typeId`) VALUES
(1, 'TIK', 80, 10, 1, 1),
(2, 'SI', 81, 20, 2, 2),
(3, 'Indo', 82, 30, 3, 1),
(4, 'Sunda', 83, 40, 4, 2),
(5, 'Inggris', 84, 50, 5, 1),
(6, 'IPS', 85, 60, 6, 2),
(7, 'IPS', 86, 70, 7, 1),
(8, 'MI', 87, 80, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `Idborrow` int(20) NOT NULL,
  `studentId` int(20) NOT NULL,
  `bookId` int(20) NOT NULL,
  `takenDate` date NOT NULL,
  `broughtDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`Idborrow`, `studentId`, `bookId`, `takenDate`, `broughtDate`) VALUES
(1, 1, 1, '2022-07-17', '2022-07-18'),
(2, 2, 2, '2022-07-18', '2022-07-19'),
(3, 3, 3, '2022-07-19', '2022-07-20'),
(4, 4, 4, '2022-07-20', '2022-07-21'),
(5, 5, 5, '2022-07-21', '2022-07-22'),
(6, 6, 6, '2022-07-22', '2022-07-23'),
(7, 6, 7, '2022-07-23', '2022-07-24'),
(8, 6, 8, '2022-07-24', '2022-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `no_telpon` varchar(25) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_telpon`, `status`) VALUES
(6, 'Muhammad Nurjaeni', '087263411212', 'aktif baru');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Idstudent` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `point` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Idstudent`, `name`, `surname`, `birthdate`, `gender`, `class`, `point`) VALUES
(1, 'Rudi', 'Salamat', '2022-07-03', 'Laki - Laki', 'Reguler pagi', 10),
(2, 'Irama', 'Rhoma', '2022-07-04', 'Laki - Laki', 'Reguler Malam', 20),
(3, 'Rada', 'Yanti', '2022-07-05', 'Perempuan', 'Regular Pagi', 30),
(4, 'Rana', 'Rassianti', '2022-07-06', 'Perempuan', 'Reguler Pagi', 40),
(5, 'Radi', 'Radityadhika', '2022-07-06', 'Laki - Laki', 'Shift', 50),
(6, 'Azka', 'Azkia', '2022-07-01', 'Laki - Laki', 'Shift', 60);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `Idtype` int(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`Idtype`, `name`) VALUES
(1, 'Pendidikan'),
(2, 'Ilmu pasti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`Idauthor`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idbook`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`Idborrow`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Idstudent`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`Idtype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `Idauthor` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `idbook` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `Idborrow` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `Idtype` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
