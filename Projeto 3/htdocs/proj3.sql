-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: proj3
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Arcas`
--

DROP TABLE IF EXISTS `Arcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Arcas` (
  `A_ID` int(11) NOT NULL AUTO_INCREMENT,
  `localizacao` varchar(255) DEFAULT NULL,
  `capacidade` int(11) DEFAULT NULL,
  `a_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`A_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arcas`
--

LOCK TABLES `Arcas` WRITE;
/*!40000 ALTER TABLE `Arcas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Congeladoras`
--

DROP TABLE IF EXISTS `Congeladoras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Congeladoras` (
  `Cong_ID` int(11) NOT NULL AUTO_INCREMENT,
  `temperatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cong_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Congeladoras`
--

LOCK TABLES `Congeladoras` WRITE;
/*!40000 ALTER TABLE `Congeladoras` DISABLE KEYS */;
INSERT INTO `Congeladoras` VALUES (1,10);
/*!40000 ALTER TABLE `Congeladoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contrato`
--

DROP TABLE IF EXISTS `Contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contrato` (
  `localizacao_servicos` varchar(255) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL,
  KEY `P_ID` (`P_ID`),
  KEY `F_ID` (`F_ID`),
  CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`),
  CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`F_ID`) REFERENCES `Fornecedores` (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contrato`
--

LOCK TABLES `Contrato` WRITE;
/*!40000 ALTER TABLE `Contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Datas`
--

DROP TABLE IF EXISTS `Datas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Datas` (
  `producao` date DEFAULT NULL,
  `expiracao` date DEFAULT NULL,
  `descontos` decimal(3,2) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `datas_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Datas`
--

LOCK TABLES `Datas` WRITE;
/*!40000 ALTER TABLE `Datas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Encomenda`
--

DROP TABLE IF EXISTS `Encomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Encomenda` (
  `quantidade_da_encomenda` int(11) DEFAULT NULL,
  `precos` decimal(5,2) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `encomenda_ibfk_1` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Encomenda`
--

LOCK TABLES `Encomenda` WRITE;
/*!40000 ALTER TABLE `Encomenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `Encomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fornece`
--

DROP TABLE IF EXISTS `Fornece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fornece` (
  `l_nome` varchar(255) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL,
  KEY `l_nome` (`l_nome`),
  KEY `F_ID` (`F_ID`),
  CONSTRAINT `fornece_ibfk_1` FOREIGN KEY (`l_nome`) REFERENCES `Loja` (`l_nome`),
  CONSTRAINT `fornece_ibfk_2` FOREIGN KEY (`F_ID`) REFERENCES `Fornecedores` (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornece`
--

LOCK TABLES `Fornece` WRITE;
/*!40000 ALTER TABLE `Fornece` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fornece` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fornecedores`
--

DROP TABLE IF EXISTS `Fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fornecedores` (
  `F_ID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`F_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fornecedores`
--

LOCK TABLES `Fornecedores` WRITE;
/*!40000 ALTER TABLE `Fornecedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Frigorificas`
--

DROP TABLE IF EXISTS `Frigorificas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Frigorificas` (
  `Frig_ID` int(11) NOT NULL AUTO_INCREMENT,
  `temperatura` int(11) DEFAULT NULL,
  PRIMARY KEY (`Frig_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Frigorificas`
--

LOCK TABLES `Frigorificas` WRITE;
/*!40000 ALTER TABLE `Frigorificas` DISABLE KEYS */;
INSERT INTO `Frigorificas` VALUES (1,20);
/*!40000 ALTER TABLE `Frigorificas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loja`
--

DROP TABLE IF EXISTS `Loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Loja` (
  `l_nome` varchar(255) NOT NULL DEFAULT '',
  `horario` varchar(255) DEFAULT NULL,
  `localizacao` varchar(255) DEFAULT NULL,
  `funcionarios` varchar(255) DEFAULT NULL,
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`l_nome`),
  KEY `size_id` (`size_id`),
  CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `Tamanho` (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loja`
--

LOCK TABLES `Loja` WRITE;
/*!40000 ALTER TABLE `Loja` DISABLE KEYS */;
/*!40000 ALTER TABLE `Loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pertence`
--

DROP TABLE IF EXISTS `Pertence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pertence` (
  `l_nome` varchar(255) DEFAULT NULL,
  `P_ID` int(11) DEFAULT NULL,
  `s_nome` varchar(255) DEFAULT NULL,
  KEY `l_nome` (`l_nome`),
  KEY `P_ID` (`P_ID`),
  KEY `s_nome` (`s_nome`),
  CONSTRAINT `pertence_ibfk_1` FOREIGN KEY (`l_nome`) REFERENCES `Loja` (`l_nome`),
  CONSTRAINT `pertence_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `Produtos` (`P_ID`),
  CONSTRAINT `pertence_ibfk_3` FOREIGN KEY (`s_nome`) REFERENCES `Seccoes` (`s_nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pertence`
--

LOCK TABLES `Pertence` WRITE;
/*!40000 ALTER TABLE `Pertence` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pertence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produtos`
--

DROP TABLE IF EXISTS `Produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produtos` (
  `P_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `stock_minimo` int(11) DEFAULT NULL,
  `preco_venda` decimal(4,2) DEFAULT NULL,
  `quantidade_stock` int(11) DEFAULT NULL,
  `A_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`P_ID`),
  KEY `fk_A_ID` (`A_ID`),
  CONSTRAINT `fk_A_ID` FOREIGN KEY (`A_ID`) REFERENCES `Arcas` (`A_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produtos`
--

LOCK TABLES `Produtos` WRITE;
/*!40000 ALTER TABLE `Produtos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seccoes`
--

DROP TABLE IF EXISTS `Seccoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seccoes` (
  `s_nome` varchar(64) NOT NULL DEFAULT '',
  `localizacao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`s_nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seccoes`
--

LOCK TABLES `Seccoes` WRITE;
/*!40000 ALTER TABLE `Seccoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `Seccoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tamanho`
--

DROP TABLE IF EXISTS `Tamanho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tamanho` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `area` decimal(5,2) DEFAULT NULL,
  `n_caixas` int(11) DEFAULT NULL,
  `tamanho` enum('pequeno','medio','grande') DEFAULT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tamanho`
--

LOCK TABLES `Tamanho` WRITE;
/*!40000 ALTER TABLE `Tamanho` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tamanho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-04 17:16:12
