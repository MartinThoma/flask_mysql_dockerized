-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 22. Jul 2017 um 00:25
-- Server-Version: 5.7.19-0ubuntu0.16.04.1
-- PHP-Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `flask_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `countries`
--

CREATE TABLE `countries` (
  `country_name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `countries`
--

INSERT INTO `countries` (`country_name`) VALUES
('Czech Republic'),
('England'),
('France'),
('Germany'),
('Spain');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
