-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 14, 2020 at 08:30 PM
-- Server version: 10.3.22-MariaDB-0+deb10u1
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `destiny_cards`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `author`, `content`, `date_created`) VALUES
(1, 'Camille', 'Si tu lis ca, tu as presque tout bon !', '2020-04-14 18:26:27'),
(2, 'Richard Powers', 'L\'attente : la seule faculté qui se détériore avec la pratique.', '2020-04-14 18:26:27'),
(3, 'Franz Hellens', 'Les hommes piétinent le bonheur au lieu de le remuer comme une terre délicate.', '2020-04-14 18:27:42'),
(4, 'Édouard Philippe', 'Tout remonte-t-il à Matignon? Non, seulement les emmerdes.', '2020-04-14 18:27:42'),
(5, 'Bernard Werber', 'La meilleure preuve qu\'il existe une forme d\'intelligence extraterrestre est qu\'elle n\'a pas essayé de nous contacter.', '2020-04-14 18:28:49'),
(6, 'Bruno Léandri', 'Dans les milieux scientifiques, la connerie n\'est pas absente, mais moins épaisse qu\'ailleurs.', '2020-04-14 18:28:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
