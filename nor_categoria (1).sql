-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Ott 21, 2016 alle 17:57
-- Versione del server: 5.6.26
-- Versione PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alez200c81652`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `nor_categoria`
--

CREATE TABLE IF NOT EXISTS `nor_categoria` (
  `id_categoria` int(11) NOT NULL,
  `descrizione` text NOT NULL,
  `abstract` text,
  `testo` text,
  `img_cover` text,
  `posizione` int(11) DEFAULT NULL,
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `nor_categoria`
--

INSERT INTO `nor_categoria` (`id_categoria`, `descrizione`, `abstract`, `testo`, `img_cover`, `posizione`, `insertDate`, `updateDate`) VALUES
(1, 'New', NULL, NULL, NULL, 1, '2016-10-21 16:14:50', '2016-10-21 16:14:50'),
(2, 'Review', NULL, NULL, NULL, 2, '2016-10-21 16:15:14', '2016-10-21 16:15:14');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `nor_categoria`
--
ALTER TABLE `nor_categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `nor_categoria`
--
ALTER TABLE `nor_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
