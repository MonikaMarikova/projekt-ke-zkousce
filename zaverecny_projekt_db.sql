-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 17. lis 2022, 17:38
-- Verze serveru: 10.4.25-MariaDB
-- Verze PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `zaverecny_projekt_db`
--
CREATE DATABASE IF NOT EXISTS `zaverecny_projekt_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;
USE `zaverecny_projekt_db`;

-- --------------------------------------------------------

--
-- Struktura tabulky `pojistenci`
--

CREATE TABLE `pojistenci` (
  `pojistenci_id` int(11) NOT NULL,
  `jmeno` varchar(155) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(155) COLLATE utf8_czech_ci NOT NULL,
  `vek` int(11) NOT NULL,
  `telefon` varchar(20) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `pojistenci`
--

INSERT INTO `pojistenci` (`pojistenci_id`, `jmeno`, `prijmeni`, `vek`, `telefon`) VALUES
(1, 'Jan', 'Novák', 31, '731 584 972'),
(2, 'Josef', 'Nový', 25, '725 458 144'),
(3, 'Hanka', 'Blatná', 42, '603 417 895'),
(4, 'Marie', 'Zelená', 35, '602 789 012'),
(5, 'Jana', 'Devátá', 49, '605 221 333'),
(6, 'Milan', 'Novotný', 53, '776 584 929'),
(7, 'Karel', 'Doležal', 33, '425 789 546');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `pojistenci`
--
ALTER TABLE `pojistenci`
  ADD PRIMARY KEY (`pojistenci_id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `pojistenci`
--
ALTER TABLE `pojistenci`
  MODIFY `pojistenci_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
