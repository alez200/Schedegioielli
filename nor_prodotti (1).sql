-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Ott 20, 2016 alle 00:20
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
-- Struttura della tabella `nor_prodotti`
--

CREATE TABLE IF NOT EXISTS `nor_prodotti` (
  `id_prodotto` int(11) NOT NULL AUTO_INCREMENT,
  `id_linea` int(11) DEFAULT NULL,
  `id_collezione` int(11) DEFAULT NULL,
  `codice` varchar(15) NOT NULL,
  `titolo` text NOT NULL,
  `abstract` text NOT NULL,
  `materiale` text,
  `coverImg` text,
  `techImg` text,
  `posizione` int(11) DEFAULT '1',
  `prezzo` decimal(10,2) DEFAULT NULL,
  `dettaglitech` text,
  `idUserIserimento` int(11) DEFAULT NULL,
  `idUserModifica` int(11) DEFAULT NULL,
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_prodotto`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dump dei dati per la tabella `nor_prodotti`
--

INSERT INTO `nor_prodotti` (`id_prodotto`, `id_linea`, `id_collezione`, `codice`, `titolo`, `abstract`, `materiale`, `coverImg`, `techImg`, `posizione`, `prezzo`, `dettaglitech`, `idUserIserimento`, `idUserModifica`, `insertDate`, `updateDate`, `status`) VALUES
(3, NULL, NULL, 'Al13-0001-01', 'Anello Lègami A01', '', 'Alluminio', 'legami-a01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:42:16', '2016-10-19 23:42:16', 1),
(4, NULL, NULL, 'Al13-0002-01', 'Bracciale Lègami B01', '', 'Alluminio', 'legami-b01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:43:39', '2016-10-19 23:43:39', 1),
(6, NULL, NULL, 'Al13-0003-01', 'Collana Lègami C01', '', 'Alluminio', 'legami-c01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:44:58', '2016-10-19 23:44:58', 1),
(7, NULL, NULL, 'Al13-0004-01', 'Orecchini Lègami 01', '', 'Alluminio', 'legami-o01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:51:58', '2016-10-19 23:51:58', 1),
(8, NULL, NULL, 'Al13-0001-02', 'Bracciale TRIP', '', 'Alluminio', 'trip.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:52:45', '2016-10-19 23:52:45', 1),
(9, NULL, NULL, 'Al13-0001-03', 'Anello Dune A01', '', 'alluminio', 'dune-a01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:54:14', '2016-10-19 23:54:14', 1),
(10, NULL, NULL, 'Al13-0002-03', 'Anello Dune A02', '', 'alluminio', 'dune-a02.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:54:42', '2016-10-19 23:54:42', 1),
(11, NULL, NULL, 'Al13-0003-03', 'Anello Dune A03', '', 'alluminio', 'dune-a03.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:55:12', '2016-10-19 23:55:12', 1),
(12, NULL, NULL, 'Al13-0004-03', 'Anello Dune A04', '', 'alluminio', 'dune-a04.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:55:39', '2016-10-19 23:55:39', 1),
(13, NULL, NULL, 'Al13-0004-03', 'Orecchini Dune 01', '', 'alluminio', 'dune-o01.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:56:19', '2016-10-19 23:56:19', 1),
(14, NULL, NULL, 'Al13-0005-03', 'Orecchini Dune 02', '', 'alluminio', 'dune-o02.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:57:04', '2016-10-19 23:57:04', 1),
(15, NULL, NULL, 'Al13-0001-04', 'Orecchini JUST', '', 'alluminio', 'just.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:57:29', '2016-10-19 23:57:29', 1),
(17, NULL, NULL, 'Al13-0001-05', 'Collana Enigma', '', 'alluminio', 'enigma.jpg', '', 1, '0.00', NULL, NULL, NULL, '2016-10-19 23:58:50', '2016-10-19 23:58:50', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
