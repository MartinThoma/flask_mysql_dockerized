use flask_db;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `countries` (
  `country_name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

INSERT INTO `countries` (`country_name`) VALUES
('Czech Republic'),
('England'),
('France'),
('Germany'),
('Spain');

ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_name`);
