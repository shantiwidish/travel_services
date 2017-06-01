-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2017 at 06:22 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `address` text,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `NAME`, `address`, `phone`, `email`) VALUES
(1, 'Seribu Travel', 'Jl. Teratai No.27-37, RT.4/RW.3, Sunter Agung, Tj. Priok, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14350, Indonesia', '(021)9120192,08625162723', 'seribu.travel@example.com'),
(2, 'Pulau Seribu Hotel & Resort', 'Jalan Lodan Timur 7 No. 2, Marina Ancol, RT.9, Ancol, Pademangan, Kota Jkt Utara, Daerah Khusus Ibukota Jakarta 14430, Indonesia', '(021)2392812,08122298119,087761910', 'pulauseribu.resort@example.com');

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
  `prices` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `province`, `city`, `location`, `quota`, `min_reserv`, `accommodation`, `prices`, `agent_id`) VALUES
(1, 'Pulau Harapan', 'DKI Jakarta', 'Kepulauan Seribu', NULL, 20, 6, '1. Tiket kapal fery PP\r\n2. Penginapan Home stay\r\n3. Makan 3X (2H 1M) / 6X(3H2M)\r\n4. Local Guide\r\n5. Barbeque\r\n6. Biaya masuk pulau sekitar\r\n7. alat Snorkeling\r\n8. Kapal Boat Tradisional untuk snorkling, kunjungan kebeberapa pulau sekitar, pulau perak, pulau bula, pulau matahari, wisata ke pulau kelapa dua mengjungi kujungan ke penangran penyu dan elang\r\n9. photo dokumntasi Underwater\r\n', 300000, 1),
(2, 'Pulau Tidung', 'DKI Jakarta', 'Kepulauan Seribu', NULL, 20, 6, '1. Tiket kapal fery PP\r\n2. Penginapan Home stay\r\n3. Makan 3X (2H 1M) / 6X(3H2M)\r\n4. Local Guide\r\n5. Barbeque\r\n6. Biaya masuk pulau sekitar\r\n7. alat Snorkeling\r\n8. Kapal Boat Tradisional untuk snorkling, kunjungan kebeberapa pulau sekitar, pulau perak, pulau bula, pulau matahari, wisata ke pulau kelapa dua mengjungi kujungan ke penangran penyu dan elang\r\n9. photo dokumntasi Underwater\r\n', 300000, 1),
(3, 'Pulau Pramuka', 'DKI Jakarta', 'Kepulauan Seribu', NULL, 20, 6, '1. Tiket kapal fery PP\r\n2. Penginapan Home stay\r\n3. Makan 3X (2H 1M) / 6X(3H2M)\r\n4. Local Guide\r\n5. Barbeque\r\n6. Biaya masuk pulau sekitar\r\n7. alat Snorkeling\r\n8. Kapal Boat Tradisional untuk snorkling, kunjungan kebeberapa pulau sekitar, pulau perak, pulau bula, pulau matahari, wisata ke pulau kelapa dua mengjungi kujungan ke penangran penyu dan elang\r\n9. photo dokumntasi Underwater\r\n', 300000, 1);

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
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `schedule_trips`
--
ALTER TABLE `schedule_trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
