-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2017 at 05:26 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `proj3`
--

-- --------------------------------------------------------

--
-- Table structure for table `Arcas`
--

CREATE TABLE `Arcas` (
  `A_ID` int(11) NOT NULL DEFAULT '0',
  `localizacao` varchar(255) DEFAULT NULL,
  `capacidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Contrato`
--

CREATE TABLE `Contrato` (
  `localizacao_servicos` varchar(255) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Datas`
--

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

CREATE TABLE `Encomenda` (
  `quantidade_da_encomenda` int(11) DEFAULT NULL,
  `precos` decimal(4,2) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Fornece`
--

CREATE TABLE `Fornece` (
  `l_nome` varchar(255) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Fornecedores`
--

CREATE TABLE `Fornecedores` (
  `F_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Loja`
--

CREATE TABLE `Loja` (
  `l_nome` varchar(50) NOT NULL,
  `horario` datetime DEFAULT NULL,
  `localizacao` varchar(50) DEFAULT NULL,
  `funcionarios` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Loja`
--

INSERT INTO `Loja` (`l_nome`, `horario`, `localizacao`, `funcionarios`) VALUES
('laranjeiras', NULL, 'Benfica', '10');

-- --------------------------------------------------------

--
-- Table structure for table `Pertence`
--

CREATE TABLE `Pertence` (
  `l_nome` varchar(255) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `s_nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Produtos`
--

CREATE TABLE `Produtos` (
  `P_ID` int(11) NOT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `preco_venda` decimal(4,2) DEFAULT NULL,
  `quantidade_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Produtos`
--

INSERT INTO `Produtos` (`P_ID`, `tipo`, `nome`, `stock_minimo`, `preco_venda`, `quantidade_stock`) VALUES
(1, 'refrigerantes', 'Coca-cola', 5, '0.70', 50);

-- --------------------------------------------------------

--
-- Table structure for table `Secções`
--

CREATE TABLE `Secções` (
  `s_nome` varchar(64) NOT NULL DEFAULT '',
  `localizacao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Tamanho`
--

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
