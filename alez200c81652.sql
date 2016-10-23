-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Ott 24, 2016 alle 00:27
-- Versione del server: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alez200c81652`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `nor_categorie`
--

CREATE TABLE IF NOT EXISTS `nor_categorie` (
  `id_cat` int(11) NOT NULL AUTO_INCREMENT,
  `titolo_cat` text NOT NULL,
  `abstract_cat` text,
  `longtext_cat` text,
  `cover_cat` text,
  `posizione_cat` int(11) NOT NULL DEFAULT '1',
  `status_cat` int(11) NOT NULL DEFAULT '1',
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `nor_categorie`
--

INSERT INTO `nor_categorie` (`id_cat`, `titolo_cat`, `abstract_cat`, `longtext_cat`, `cover_cat`, `posizione_cat`, `status_cat`, `insertDate`, `updateDate`) VALUES
(1, 'New', NULL, NULL, NULL, 1, 1, '2016-10-22 16:19:58', '2016-10-22 16:19:58'),
(2, 'Review', NULL, NULL, NULL, 2, 1, '2016-10-22 16:20:38', '2016-10-22 16:20:38');

-- --------------------------------------------------------

--
-- Struttura della tabella `nor_collezione`
--

CREATE TABLE IF NOT EXISTS `nor_collezione` (
  `id_col` int(11) NOT NULL AUTO_INCREMENT,
  `codice_col` varchar(25) NOT NULL,
  `cod_prodotto_col` int(11) DEFAULT NULL,
  `titolo_col` text NOT NULL,
  `abstract_col` text,
  `longtext_col` text,
  `cover_col` text,
  `posizione_col` int(11) NOT NULL DEFAULT '1',
  `status_col` int(11) NOT NULL DEFAULT '1',
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `categoria_col` int(11) NOT NULL,
  PRIMARY KEY (`id_col`),
  UNIQUE KEY `codice_col` (`codice_col`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `nor_collezione`
--

INSERT INTO `nor_collezione` (`id_col`, `codice_col`, `cod_prodotto_col`, `titolo_col`, `abstract_col`, `longtext_col`, `cover_col`, `posizione_col`, `status_col`, `insertDate`, `updateDate`, `categoria_col`) VALUES
(1, 'al13', NULL, 'Al13', NULL, NULL, NULL, 1, 1, '2016-10-22 16:22:40', '2016-10-22 16:22:40', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `nor_linea`
--

CREATE TABLE IF NOT EXISTS `nor_linea` (
  `id_linea` int(11) NOT NULL AUTO_INCREMENT,
  `codice_linea` varchar(25) NOT NULL,
  `cod_prodotto_linea` int(11) DEFAULT NULL,
  `titolo_linea` text NOT NULL,
  `abstract_linea` text,
  `longtext_linea` text,
  `cover_linea` text,
  `posizione_linea` int(11) NOT NULL DEFAULT '1',
  `status_linea` int(11) NOT NULL DEFAULT '1',
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `collezione_linea` int(11) NOT NULL,
  PRIMARY KEY (`id_linea`),
  UNIQUE KEY `codice_linea` (`codice_linea`),
  UNIQUE KEY `id_linea` (`id_linea`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `nor_linea`
--

INSERT INTO `nor_linea` (`id_linea`, `codice_linea`, `cod_prodotto_linea`, `titolo_linea`, `abstract_linea`, `longtext_linea`, `cover_linea`, `posizione_linea`, `status_linea`, `insertDate`, `updateDate`, `collezione_linea`) VALUES
(1, '01', NULL, 'Legami', NULL, NULL, NULL, 1, 1, '2016-10-22 16:23:58', '2016-10-22 16:23:58', 1),
(2, '02', NULL, 'Trip', NULL, NULL, NULL, 2, 1, '2016-10-22 16:25:24', '2016-10-22 16:25:24', 1),
(3, '03', NULL, 'Dune', NULL, NULL, NULL, 3, 1, '2016-10-22 16:26:40', '2016-10-22 16:26:40', 1),
(4, '04', NULL, 'Just', NULL, NULL, NULL, 4, 1, '2016-10-22 16:27:11', '2016-10-22 16:27:11', 1),
(5, '05', NULL, 'Enigma', NULL, NULL, NULL, 5, 1, '2016-10-22 16:27:33', '2016-10-22 16:27:33', 1),
(6, '06', NULL, 'Senza nome', NULL, NULL, NULL, 6, 1, '2016-10-23 09:21:45', '2016-10-23 09:21:45', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `nor_prodotti`
--

CREATE TABLE IF NOT EXISTS `nor_prodotti` (
  `id_prodotto` int(11) NOT NULL AUTO_INCREMENT,
  `id_linea` int(11) DEFAULT NULL,
  `id_collezione` int(11) DEFAULT NULL,
  `codice` varchar(15) CHARACTER SET latin1 NOT NULL,
  `titolo` text CHARACTER SET latin1 NOT NULL,
  `abstract` text CHARACTER SET latin1 NOT NULL,
  `materiale` text CHARACTER SET latin1,
  `coverImg` text CHARACTER SET latin1,
  `techImg` text CHARACTER SET latin1,
  `posizione` int(11) DEFAULT '1',
  `prezzo` decimal(10,2) DEFAULT NULL,
  `dettaglitech` text CHARACTER SET latin1,
  `idUserIserimento` int(11) DEFAULT NULL,
  `idUserModifica` int(11) DEFAULT NULL,
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_prodotto`),
  UNIQUE KEY `id_prodotto` (`id_prodotto`),
  UNIQUE KEY `codice` (`codice`),
  UNIQUE KEY `codice_2` (`codice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=23 ;

--
-- Dump dei dati per la tabella `nor_prodotti`
--

INSERT INTO `nor_prodotti` (`id_prodotto`, `id_linea`, `id_collezione`, `codice`, `titolo`, `abstract`, `materiale`, `coverImg`, `techImg`, `posizione`, `prezzo`, `dettaglitech`, `idUserIserimento`, `idUserModifica`, `insertDate`, `updateDate`, `status`) VALUES
(3, 1, 1, 'Al13-0001-01', 'Anello Lègami A01', '', 'Alluminio', 'legami-a01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:42:16', '2016-10-19 23:42:16', 1),
(4, 1, 1, 'Al13-0002-01', 'Bracciale Lègami B01', '', 'Alluminio', 'legami-b01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:43:39', '2016-10-19 23:43:39', 1),
(6, 1, 1, 'Al13-0003-01', 'Collana Lègami C01', '', 'Alluminio', 'legami-c01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:44:58', '2016-10-19 23:44:58', 1),
(7, 1, 1, 'Al13-0004-01', 'Orecchini Lègami 01', '', 'Alluminio', 'legami-o01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:51:58', '2016-10-19 23:51:58', 1),
(8, 2, 1, 'Al13-0001-02', 'Bracciale TRIP', '', 'Alluminio', 'trip.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:52:45', '2016-10-19 23:52:45', 1),
(9, 3, 1, 'Al13-0001-03', 'Anello Dune A01', '', 'alluminio', 'dune-a01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:54:14', '2016-10-19 23:54:14', 1),
(10, 3, 1, 'Al13-0002-03', 'Anello Dune A02', '', 'alluminio', 'dune-a02.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:54:42', '2016-10-19 23:54:42', 1),
(11, 3, 1, 'Al13-0003-03', 'Anello Dune A03', '', 'alluminio', 'dune-a03.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:55:12', '2016-10-19 23:55:12', 1),
(12, 3, 1, 'Al13-0004-03', 'Anello Dune A04', '', 'alluminio', 'dune-a04.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:55:39', '2016-10-19 23:55:39', 1),
(13, 3, 1, 'Al13-0006-03', 'Orecchini Dune 01', '', 'alluminio', 'dune-o01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:56:19', '2016-10-19 23:56:19', 1),
(14, 3, 1, 'Al13-0005-03', 'Orecchini Dune 02', '', 'alluminio', 'dune-o02.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:57:04', '2016-10-19 23:57:04', 1),
(15, 4, 1, 'Al13-0001-04', 'Orecchini JUST', '', 'alluminio', 'just.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:57:29', '2016-10-19 23:57:29', 1),
(17, 5, 1, 'Al13-0001-05', 'Collana Enigma', '', 'alluminio', 'enigma.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:58:50', '2016-10-19 23:58:50', 1),
(18, 6, 1, 'Al13-0001-06', 'Collana Undefined C01', '', 'alluminio', '', '', 1, '0.00', NULL, NULL, NULL, '2016-10-23 23:49:28', '2016-10-23 23:49:28', 1),
(19, 6, 1, 'Al13-0002-06', 'Collana Undefined C02', '', 'alluminio', '', '', 1, '0.00', NULL, NULL, NULL, '2016-10-23 23:49:57', '2016-10-23 23:49:57', 1),
(20, 6, 1, 'Al13-0003-06', 'Bracciale Undefined B01', '', 'alluminio', '', '', 1, '0.00', NULL, NULL, NULL, '2016-10-23 23:50:26', '2016-10-23 23:50:26', 1),
(21, 6, 1, 'Al13-0004-06', 'Anello Undefined A01', '', 'alluminio', '', '', 1, '0.00', NULL, NULL, NULL, '2016-10-23 23:50:53', '2016-10-23 23:50:53', 1),
(22, 6, 1, 'Al13-0005-06', 'Anello Undefined A012', '', 'alluminio', '', '', 1, '0.00', NULL, NULL, NULL, '2016-10-23 23:51:14', '2016-10-23 23:51:14', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
