CREATE DATABASE  IF NOT EXISTS `barbearia` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `barbearia`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: barbearia
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agenda` (
  `agenda_id` int NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(100) DEFAULT NULL,
  `Descrição` varchar(100) DEFAULT NULL,
  `data_` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  PRIMARY KEY (`agenda_id`),
  KEY `id_cliente` (`agenda_id`),
  KEY `id_produto` (`agenda_id`),
  KEY `id_serviço` (`agenda_id`),
  CONSTRAINT `fk_serviço` FOREIGN KEY (`agenda_id`) REFERENCES `agenda` (`agenda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Telefone` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Cpf` char(14) DEFAULT NULL,
  `Senha` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'aaaaaaaaaaaaa','(44)44444-4444','aaaaaaaaaaaa','444.444.444-44',NULL),(2,'HEITO DA SILVA FERREIRA','(43)98404-9204','heitordasilvaferreira@gmail.com','090.614.979-73','sesisenai'),(3,'Julia','(43)94545-8951','julia@gmail.com','546.621.915-61','juliajulia'),(4,'jh','(45)44544-5545','jk','445.454.544-54','dssdsdssd');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentários`
--

DROP TABLE IF EXISTS `comentários`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentários` (
  `afirmação` varchar(100) NOT NULL,
  `sastifação` varchar(100) NOT NULL,
  `melhoria` varchar(250) NOT NULL,
  `adicional` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentários`
--

LOCK TABLES `comentários` WRITE;
/*!40000 ALTER TABLE `comentários` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentários` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviços`
--

DROP TABLE IF EXISTS `serviços`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serviços` (
  `id_serviço` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Preço` decimal(10,2) DEFAULT NULL,
  `Descrição` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_serviço`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviços`
--

LOCK TABLES `serviços` WRITE;
/*!40000 ALTER TABLE `serviços` DISABLE KEYS */;
/*!40000 ALTER TABLE `serviços` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-25 11:03:38
