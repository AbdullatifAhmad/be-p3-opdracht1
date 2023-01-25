-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 04 okt 2022 om 06:47
-- Serverversie: 5.7.31
-- PHP-versie: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-2109a`
--
CREATE DATABASE IF NOT EXISTS `mvc-2109a` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mvc-2109a`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `country`
--

DROP TABLE IF EXISTS `voertuig`;
CREATE TABLE IF NOT EXISTS `voertuig` (
  `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Kenteken` varchar(8) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Bouwjaar` date NOT NULL,
  `Brandstof` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `voertuig`
--

INSERT INTO `Voertuig` (`Kenteken`, `Type`, `Bouwjaar`, `Brandstof`) VALUES
('AU-67-IO', 'Golf', '2017-06-12', 'Diesel'),
('TR-24-OP', 'DAF', '2019-05-23', 'Diesel'),
('TH-78-KL', 'Mercedes', '2023-01-01', 'Benzine'),
('90-KL-TR', 'Fiat 500', '2021-09-12', 'Benzine'),
('34-TK-LP', 'Scania', '2015-03-13', 'Diesel'),
('YY-OP-78', 'MBW M5', '2022-05-13', 'Diesel'),
('UU-HH-JK', 'M.A.N', '2017-12-03', 'Diesel'),
('ST-FZ-28', 'Citroën', '2018-01-20', 'Elektrisch'),
('123-FR-T', 'Piaggio ZIP', '2021-02-01', 'Benzine'),
('DRS-52-P', 'Vespa', '2022-03-21', 'Benzine'),
('STP-12-U', 'Kymco', '2022-07-02', 'Benzine'),
('45-SD-23', 'Renault', '2023-01-01', 'Diesel'),
COMMIT;

--
-- Tabelstructuur voor tabel `VoertuigInstructeur`
--

DROP TABLE IF EXISTS `VoertuigInstructeur`;
CREATE TABLE IF NOT EXISTS `VoertuigInstructeur` (
  `Id` smallint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `VoertuigId` int(10) NOT NULL,
  `InstructeurId` int(10) NOT NULL,
  `DatumToekenning` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `VoertuigInstructeur`
--

INSERT INTO `VoertuigInstructeur` (`VoertuigId`, `InstructeurId`, `DatumToekenning`) VALUES
('1', '5', '2017-06-18'),
('3', '1', '2021-09-26'),
('9', '1', '2021-09-27'),
('3', '4', '2022-08-01'),
('5', '1', '2019-08-30'),
('10', '5', '2020-02-02'),

COMMIT;

-- Tabelstructuur voor tabel `TypeVoertuig`
--

DROP TABLE IF EXISTS `TypeVoertuig`;
CREATE TABLE IF NOT EXISTS `TypeVoertuig` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TypeVoertuig` varchar(50) NOT NULL,
  `RijbewijsCategorie` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `TypeVoertuig`
--

INSERT INTO `TypeVoertuig` (`TypeVoertuig`, `RijbewijsCategorie`) VALUES
('personenauto', 'B'),
('Vrachtwagen', 'C'),
('Bus', 'D'),
('Bromfiets', 'AM');
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
