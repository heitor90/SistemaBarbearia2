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
  `agendaId` int NOT NULL AUTO_INCREMENT,
  `Cliente` varchar(100) DEFAULT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `Cabelo` varchar(100) DEFAULT NULL,
  `Barba` varchar(100) DEFAULT NULL,
  `hora` varchar(100) DEFAULT NULL,
  `data` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`agendaId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,'gfhgfhgfgh','','Barba tradicional','Low Fade',NULL,NULL),(2,'55','777','Barba tradicional','Low Fade',NULL,NULL),(3,'Heitor','somente o basico','Balbo','Militar',NULL,NULL),(4,'afonso','Nada, somente o basico','Barba degradê','Militar',NULL,NULL),(5,'Luis otavio','Nada','Barba degradê','Top knot ou coque samurai',NULL,NULL),(6,'Heitor Lopes','AHKJASHKJASHJASK','Barba degradê','Militar',NULL,NULL),(7,'sasasaa','sasasas','Barba degradê','Militar',NULL,NULL),(8,'asasa','asasas','Barba arredondada','Americano',NULL,NULL),(9,'akhsakjjs','saasas','Undercut','Barba degradê','14:30',NULL),(10,'Heitor','Nada','Militar','Balbo','15:00',NULL),(11,'Heitor','Nada	','Americano','Van dyke','15:30',NULL),(12,'Nenhum','nada	','Militar','Barba lenhador','13:30',NULL),(13,'Heitor','nada','Undercut','Barba degradê','14:00',NULL),(14,'heitor','nada','Militar','Barba arredondada','14:00','04/07/2023');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'aaaaaaaaaaaaa','(44)44444-4444','aaaaaaaaaaaa','444.444.444-44',NULL),(2,'HEITO DA SILVA FERREIRA','(43)98404-9204','heitordasilvaferreira@gmail.com','090.614.979-73','sesisenai'),(3,'Julia','(43)94545-8951','julia@gmail.com','546.621.915-61','juliajulia'),(4,'jh','(45)44544-5545','jk','445.454.544-54','dssdsdssd'),(5,'Ana','(54)14568-4884','ahavhvjahyva','152.222.222-22','uyfguyfyu'),(6,'Luis','(43)97888-8787','luisao@gmail.com','090.614.979-79','kahsjkashas'),(7,'sasasa','(77)77777-7777','saasasas','777.777.777-77','asasasa'),(8,'eduardo','(45)54554-5454','eduardo@gmail.com','656.454.454-54','senai'),(9,'ghhghf','(65)46546-5465','jhffghfghfgf','546.465.465-46','vfhghf'),(10,'Afonso','(43)95697-4554','afonso@gmail.com','   .   .   -','uhjkjgahsa666665'),(11,'Luis otavio','(78)45115-5445','luisao@gmail.com','878.745.454-55','sakjahagjs'),(12,'Heitor Lopes','(45)84545-4545','heitorlopes@gmail.com','444.444.444-44','skasjakshajks'),(13,'ass','(23)23238-3728','jhkjhkj','327.362.837-22','hkjhjhkjh'),(14,'Heitor','(23)23232-3232','heitordasilvaferreira@gmail.com','212.112.222-12','sasajshajjksa'),(15,'sjahjahsjashjh','(87)32873-2873','shajshajshsjshj','738.273.389-23','hsjahsajshjs'),(16,'salksl','(87)28263-8236','skajksjksj','798.327.897-89','sassajshajksh'),(17,'Heitor','(28)37672-8363','heitordasilvaferreira@gmail.com','287.392.728-73','hhhhhhhhh');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `Nome` varchar(100) DEFAULT NULL,
  `comentario1` varchar(250) DEFAULT NULL,
  `comentario2` varchar(250) DEFAULT NULL,
  `comentario3` varchar(250) DEFAULT NULL,
  `comentario4` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (NULL,'a','a','a','a'),(NULL,'Nada','Não','Sim','Sim'),(NULL,'nada','não','sim						','muito sastifeito	'),(NULL,'aksaks','sasas','sim	','msaksa'),(NULL,'asaasa','sasaasa','saksaash','sasass'),(NULL,'sasaaaa','sasasasa','sasasa','sasa'),(NULL,'a','a','aa','a'),('asasas','sasa','sasaa','saaaa','sasas'),('dffgf','sasas','sasas','hjhjjhhjg	','		aasasa'),('Heitor','Rapidez no atendimento','Não','Sim','Muito sastifeito'),('Heitor','Melhorar o ambiente','Sim, tintas para cabelo','Não	','sastifeito');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `login_id` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) DEFAULT NULL,
  `Senha` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'sajhsjhsj','sjahsajhassa');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-29 11:32:22
