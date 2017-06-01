-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2017 at 04:49 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `location` text,
  `quota` int(11) DEFAULT NULL,
  `min_reserv` int(11) NOT NULL,
  `accommodation` text,
  `prices` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `province`, `city`, `location`, `quota`, `min_reserv`, `accommodation`, `prices`) VALUES
(1, 'Pulau Harapan', 'DKI Jakarta', 'Kepulauan Seribu', NULL, 20, 6, '1. Tiket kapal fery PP\r\n2. Penginapan Home stay\r\n3. Makan 3X (2H 1M) / 6X(3H2M)\r\n4. Local Guide\r\n5. Barbeque\r\n6. Biaya masuk pulau sekitar\r\n7. alat Snorkeling\r\n8. Kapal Boat Tradisional untuk snorkling, kunjungan kebeberapa pulau sekitar, pulau perak, pulau bula, pulau matahari, wisata ke pulau kelapa dua mengjungi kujungan ke penangran penyu dan elang\r\n9. photo dokumntasi Underwater\r\n', 300000),
(2, 'Pulau Tidung', 'DKI Jakarta', 'Kepulauan Seribu', NULL, 20, 6, '1. Tiket kapal fery PP\r\n2. Penginapan Home stay\r\n3. Makan 3X (2H 1M) / 6X(3H2M)\r\n4. Local Guide\r\n5. Barbeque\r\n6. Biaya masuk pulau sekitar\r\n7. alat Snorkeling\r\n8. Kapal Boat Tradisional untuk snorkling, kunjungan kebeberapa pulau sekitar, pulau perak, pulau bula, pulau matahari, wisata ke pulau kelapa dua mengjungi kujungan ke penangran penyu dan elang\r\n9. photo dokumntasi Underwater\r\n', 300000),
(3, 'Pulau Pramuka', 'DKI Jakarta', 'Kepulauan Seribu', NULL, 20, 6, '1. Tiket kapal fery PP\r\n2. Penginapan Home stay\r\n3. Makan 3X (2H 1M) / 6X(3H2M)\r\n4. Local Guide\r\n5. Barbeque\r\n6. Biaya masuk pulau sekitar\r\n7. alat Snorkeling\r\n8. Kapal Boat Tradisional untuk snorkling, kunjungan kebeberapa pulau sekitar, pulau perak, pulau bula, pulau matahari, wisata ke pulau kelapa dua mengjungi kujungan ke penangran penyu dan elang\r\n9. photo dokumntasi Underwater\r\n', 300000);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_trips`
--

CREATE TABLE `schedule_trips` (
  `id` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL,
  `departure_date` datetime DEFAULT NULL,
  `coordinator_name` varchar(100) DEFAULT NULL,
  `coordinator_phone` varchar(100) DEFAULT NULL,
  `qouta_remaining` int(11) DEFAULT NULL,
  `member` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_trips`
--
ALTER TABLE `schedule_trips`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `schedule_trips`
--
ALTER TABLE `schedule_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
