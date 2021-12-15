-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: teste
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_computadores`
--

DROP TABLE IF EXISTS `tbl_computadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_computadores` (
  `id_pc` varchar(10) NOT NULL,
  `nome_pc` varchar(15) NOT NULL,
  `num_serie` varchar(30) DEFAULT NULL,
  `modelo` varchar(40) DEFAULT NULL,
  `sistema_operacional` varchar(100) DEFAULT NULL,
  `setor` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_pc`),
  UNIQUE KEY `nome_pc` (`nome_pc`),
  KEY `setor` (`setor`),
  CONSTRAINT `tbl_computadores_ibfk_1` FOREIGN KEY (`setor`) REFERENCES `tbl_setor` (`id_setor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_computadores`
--

LOCK TABLES `tbl_computadores` WRITE;
/*!40000 ALTER TABLE `tbl_computadores` DISABLE KEYS */;
INSERT INTO `tbl_computadores` VALUES ('0621103634','SMSCRSCOC2','1A266SC17','CORE2DUO','WIN 10 - 32BITS',23),('0621104036','SMSCRSCOC140','1A4232L66','SLIM I5','WIN 10 - 64BITS',9),('0621112127','SMSCRSCOC85','3714612','PENTIUM','WIN 7',21),('0621112230','SMSCRSCOC144','1A181553C','CORE2DUO','WIN 10',20),('0621113043','SMSCRSCOC112','1A5755B0V','D550','WIN 7 - 32BITS',19),('0621113627','SMSCRSCOC193','1A9747N5CJ','D570','WIN 10 - 64BITS',14),('0621113858','SMSCRSCOC183','4A181PJ7M','D580','WIN 10 - 64BITS',12),('0621114001','SMSCRSCOC41','1A975009G','D570','WIN 7 - 32BITS',13),('0621114437','SMSCRSCOC45',NULL,NULL,'WIN 7 - 32BITS',10),('0621114613','SMSCRSCOC99','1A974YM3Z','D570','WIN 10 - 64BITS',8),('0621114755','SMSCRSCOC135','1A5754V66','D550','WIN 10 - 32BITS',7),('0621115139','SMSCRSCOC14','1A247T255','CORE2DUO','WIN 10',4),('0621115222','SMSCRSCOC28','1A974YV8F','D570','WIN 7',5),('0621115345','SMSCRSCOC48','4A214HL7R','D580','WIN 8 - 64BITS',6),('0621115458','SMSCRSCOC58','3714607','PENTIUM','WIN 10 - 32BITS',3),('0621115538','SMSCRSCOC124','1A1815699','CORE2DUO','WIN 10',1),('0621115641','SMSCRSCOC186','1AC59M11Z','D570','WIN 7',2),('mmaaHHMMss','SMSCRSCOCXX','xxxxxxx','SLIM i5','WIN 7 - 32BITS',NULL);
/*!40000 ALTER TABLE `tbl_computadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_setor`
--

DROP TABLE IF EXISTS `tbl_setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_setor` (
  `id_setor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_setor` varchar(30) NOT NULL,
  `andar` varchar(9) NOT NULL,
  PRIMARY KEY (`id_setor`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_setor`
--

LOCK TABLES `tbl_setor` WRITE;
/*!40000 ALTER TABLE `tbl_setor` DISABLE KEYS */;
INSERT INTO `tbl_setor` VALUES (1,'DESENVOLVIMENTO','TÉRREO'),(2,'ESCOLA','TÉRREO'),(3,'SALA 1','TÉRREO'),(4,'Administração','1° Andar'),(5,'EQUIP. TÉCNICA','1° Andar'),(6,'GABINETE','1° Andar'),(7,'CEINFO CRS-OESTE','2° Andar'),(8,'CONTRATOS','2° Andar'),(9,'INFORMÁTICA','2° Andar'),(10,'JURÍDICO','2° Andar'),(11,'DIV. PESSOAS','3° Andar'),(12,'REGULAÇÃO','3° Andar'),(13,'RH','3° Andar'),(14,'CONTABILIDADE','4° Andar'),(15,'DAF','4° Andar'),(16,'PATRIMÔNIO','4° Andar'),(17,'SAMU','4° Andar'),(18,'SALA REUNIÃO','5° Andar'),(19,'SUPERVISÃO TÉCNICA LA/PI','5° Andar'),(20,'DRUVIS','6° Andar'),(21,'OUVIDORIA','6° Andar'),(22,'SUPERVISÃO SUVIS LA/PI','6° Andar'),(23,'V. EPIDEMIO','6° Andar');
/*!40000 ALTER TABLE `tbl_setor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-15 12:33:23
