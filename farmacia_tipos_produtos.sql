-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `tipos_produtos`
--

DROP TABLE IF EXISTS `tipos_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_produtos`
--

LOCK TABLES `tipos_produtos` WRITE;
/*!40000 ALTER TABLE `tipos_produtos` DISABLE KEYS */;
INSERT INTO `tipos_produtos` VALUES (1,'Medicamento','2024-09-13 19:21:10'),(2,'Cosmético','2024-09-13 19:21:10'),(3,'Suplemento Vitamínico','2024-09-13 19:21:10'),(4,'Higiene Pessoal','2024-09-13 19:21:10'),(5,'Produtos Naturais','2024-09-13 19:21:10'),(6,'Equipamento Hospitalar','2024-09-13 19:21:10'),(7,'Antisséptico','2024-09-13 19:21:10'),(8,'Analgésico','2024-09-13 19:21:10'),(9,'Anti-inflamatório','2024-09-13 19:21:10'),(10,'Antibiótico','2024-09-13 19:21:10'),(11,'Antipirético','2024-09-13 19:21:10'),(12,'Desinfetante','2024-09-13 19:21:10'),(13,'Aditivo Farmacêutico','2024-09-13 19:21:10'),(14,'Creme Dermatológico','2024-09-13 19:21:10'),(15,'Pomada','2024-09-13 19:21:10'),(16,'Loção','2024-09-13 19:21:10'),(17,'Vitaminas','2024-09-13 19:21:10'),(18,'Minerais','2024-09-13 19:21:10'),(19,'Produtos para Cuidados com os Cabelos','2024-09-13 19:21:10'),(20,'Produtos para Cuidados com a Pele','2024-09-13 19:21:10'),(21,'Protetor Solar','2024-09-13 19:21:10'),(22,'Antisséptico Bucal','2024-09-13 19:21:10'),(23,'Clareador Dental','2024-09-13 19:21:10'),(24,'Hidratante','2024-09-13 19:21:10'),(25,'Emulsão','2024-09-13 19:21:10'),(26,'Xarope','2024-09-13 19:21:10'),(27,'Gel','2024-09-13 19:21:10'),(28,'Lentes de Contato','2024-09-13 19:21:10'),(29,'Curativos','2024-09-13 19:21:10'),(30,'Equipamentos de Monitoramento','2024-09-13 19:21:10'),(31,'Produtos de Primeiros Socorros','2024-09-13 19:21:10');
/*!40000 ALTER TABLE `tipos_produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 19:48:36
