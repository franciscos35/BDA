-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2017 at 11:45 AM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proj3`
--
CREATE DATABASE IF NOT EXISTS `proj3` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `proj3`;

-- --------------------------------------------------------

--
-- Table structure for table `Arcas`
--

DROP TABLE IF EXISTS `Arcas`;
CREATE TABLE `Arcas` (
  `A_ID` int(11) NOT NULL DEFAULT '0',
  `localizacao` varchar(255) DEFAULT NULL,
  `capacidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Arcas`
--

INSERT INTO `Arcas` (`A_ID`, `localizacao`, `capacidade`) VALUES
(0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Congeladoras`
--

DROP TABLE IF EXISTS `Congeladoras`;
CREATE TABLE `Congeladoras` (
  `A_ID` int(11) DEFAULT NULL,
  `temperatura` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Contrato`
--

DROP TABLE IF EXISTS `Contrato`;
CREATE TABLE `Contrato` (
  `localizacao_servicos` varchar(255) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Datas`
--

DROP TABLE IF EXISTS `Datas`;
CREATE TABLE `Datas` (
  `producao` date DEFAULT NULL,
  `expiracao` date DEFAULT NULL,
  `descontos` decimal(3,2) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Encomenda`
--

DROP TABLE IF EXISTS `Encomenda`;
CREATE TABLE `Encomenda` (
  `quantidade_da_encomenda` int(11) DEFAULT NULL,
  `precos` decimal(4,2) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Fornece`
--

DROP TABLE IF EXISTS `Fornece`;
CREATE TABLE `Fornece` (
  `l_nome` varchar(255) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Fornecedores`
--

DROP TABLE IF EXISTS `Fornecedores`;
CREATE TABLE `Fornecedores` (
  `F_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Frigorificas`
--

DROP TABLE IF EXISTS `Frigorificas`;
CREATE TABLE `Frigorificas` (
  `A_ID` int(11) DEFAULT NULL,
  `temperatura` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Frigorificas`
--

INSERT INTO `Frigorificas` (`A_ID`, `temperatura`) VALUES
(NULL, '5.0'),
(NULL, '5.0');

-- --------------------------------------------------------

--
-- Table structure for table `Loja`
--

DROP TABLE IF EXISTS `Loja`;
CREATE TABLE `Loja` (
  `l_nome` varchar(50) NOT NULL,
  `horario` datetime DEFAULT NULL,
  `localizacao` varchar(50) DEFAULT NULL,
  `funcionarios` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Pertence`
--

DROP TABLE IF EXISTS `Pertence`;
CREATE TABLE `Pertence` (
  `l_nome` varchar(255) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `s_nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Produtos`
--

DROP TABLE IF EXISTS `Produtos`;
CREATE TABLE `Produtos` (
  `P_ID` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `preco_venda` decimal(4,2) DEFAULT NULL,
  `quantidade_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Secções`
--

DROP TABLE IF EXISTS `Secções`;
CREATE TABLE `Secções` (
  `s_nome` varchar(64) NOT NULL DEFAULT '',
  `localizacao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Tamanho`
--

DROP TABLE IF EXISTS `Tamanho`;
CREATE TABLE `Tamanho` (
  `area` float DEFAULT NULL,
  `n_caixas` int(11) DEFAULT NULL,
  `tamanho` enum('pequeno','medio','grande') DEFAULT NULL,
  `l_nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Arcas`
--
ALTER TABLE `Arcas`
  ADD PRIMARY KEY (`A_ID`);

--
-- Indexes for table `Congeladoras`
--
ALTER TABLE `Congeladoras`
  ADD KEY `A_ID` (`A_ID`);

--
-- Indexes for table `Contrato`
--
ALTER TABLE `Contrato`
  ADD KEY `P_ID` (`P_ID`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `Datas`
--
ALTER TABLE `Datas`
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `Encomenda`
--
ALTER TABLE `Encomenda`
  ADD KEY `P_ID` (`P_ID`);

--
-- Indexes for table `Fornece`
--
ALTER TABLE `Fornece`
  ADD KEY `l_nome` (`l_nome`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `Fornecedores`
--
ALTER TABLE `Fornecedores`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `Frigorificas`
--
ALTER TABLE `Frigorificas`
  ADD KEY `A_ID` (`A_ID`);

--
-- Indexes for table `Loja`
--
ALTER TABLE `Loja`
  ADD PRIMARY KEY (`l_nome`);

--
-- Indexes for table `Pertence`
--
ALTER TABLE `Pertence`
  ADD KEY `l_nome` (`l_nome`),
  ADD KEY `P_ID` (`P_ID`),
  ADD KEY `s_nome` (`s_nome`);

--
-- Indexes for table `Produtos`
--
ALTER TABLE `Produtos`
  ADD PRIMARY KEY (`P_ID`);

--
-- Indexes for table `Secções`
--
ALTER TABLE `Secções`
  ADD PRIMARY KEY (`s_nome`);

--
-- Indexes for table `Tamanho`
--
ALTER TABLE `Tamanho`
  ADD KEY `l_nome` (`l_nome`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Congeladoras`
--
ALTER TABLE `Congeladoras`
  ADD CONSTRAINT `congeladoras_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `Arcas` (`A_ID`);

--
-- Constraints for table `Contrato`
--
ALTER TABLE `Contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`F_ID`) REFERENCES `Fornecedores` (`F_ID`);

--
-- Constraints for table `Datas`
--
ALTER TABLE `Datas`
  ADD CONSTRAINT `datas_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`);

--
-- Constraints for table `Encomenda`
--
ALTER TABLE `Encomenda`
  ADD CONSTRAINT `encomenda_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`);

--
-- Constraints for table `Fornece`
--
ALTER TABLE `Fornece`
  ADD CONSTRAINT `fornece_ibfk_1` FOREIGN KEY (`l_nome`) REFERENCES `Loja` (`l_nome`),
  ADD CONSTRAINT `fornece_ibfk_2` FOREIGN KEY (`F_ID`) REFERENCES `Fornecedores` (`F_ID`);

--
-- Constraints for table `Frigorificas`
--
ALTER TABLE `Frigorificas`
  ADD CONSTRAINT `frigorificas_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `Arcas` (`A_ID`);

--
-- Constraints for table `Pertence`
--
ALTER TABLE `Pertence`
  ADD CONSTRAINT `pertence_ibfk_1` FOREIGN KEY (`l_nome`) REFERENCES `Loja` (`l_nome`),
  ADD CONSTRAINT `pertence_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`),
  ADD CONSTRAINT `pertence_ibfk_3` FOREIGN KEY (`s_nome`) REFERENCES `Secções` (`s_nome`);

--
-- Constraints for table `Tamanho`
--
ALTER TABLE `Tamanho`
  ADD CONSTRAINT `tamanho_ibfk_1` FOREIGN KEY (`l_nome`) REFERENCES `Loja` (`l_nome`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
