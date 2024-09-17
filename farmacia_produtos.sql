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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fabricantes_id` int NOT NULL,
  `tipos_produtos_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produtos_fabricantes1_idx` (`fabricantes_id`),
  KEY `fk_produtos_tipos_produtos1_idx` (`tipos_produtos_id`),
  CONSTRAINT `fk_produtos_fabricantes1` FOREIGN KEY (`fabricantes_id`) REFERENCES `fabricantes` (`id`),
  CONSTRAINT `fk_produtos_tipos_produtos1` FOREIGN KEY (`tipos_produtos_id`) REFERENCES `tipos_produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Paracetamol','Analgésico',12.50,'2024-09-13 19:21:10',1,1),(2,'Dipirona','Analgésico',10.00,'2024-09-13 19:21:10',2,1),(3,'Ibuprofeno','Anti-inflamatório',15.75,'2024-09-13 19:21:10',3,1),(4,'Amoxicilina','Antibiótico',20.00,'2024-09-13 19:21:10',4,1),(5,'Cefalexina','Antibiótico',18.50,'2024-09-13 19:21:10',5,1),(6,'Vitamina C','Suplemento Vitamínico',25.00,'2024-09-13 19:21:10',6,3),(7,'Vitamina D','Suplemento Vitamínico',22.00,'2024-09-13 19:21:10',7,3),(8,'Multivitamínico','Suplemento Vitamínico',30.00,'2024-09-13 19:21:10',8,3),(9,'Shampoo X','Cosmético Capilar',18.00,'2024-09-13 19:21:10',9,2),(10,'Condicionador Y','Cosmético Capilar',20.00,'2024-09-13 19:21:10',10,2),(11,'Máscara Z','Cosmético Capilar',25.00,'2024-09-13 19:21:10',11,2),(12,'Sabonete Líquido','Higiene Pessoal',10.00,'2024-09-13 19:21:10',12,4),(13,'Desodorante Roll-on','Higiene Pessoal',12.50,'2024-09-13 19:21:10',13,4),(14,'Álcool em Gel','Higiene Pessoal',8.00,'2024-09-13 19:21:10',14,4),(15,'Aloe Vera Gel','Produto Natural',15.00,'2024-09-13 19:21:10',15,5),(16,'Óleo de Coco','Produto Natural',20.00,'2024-09-13 19:21:10',1,5),(17,'Chá de Camomila','Produto Natural',12.00,'2024-09-13 19:21:10',2,5),(18,'Termômetro Digital','Equipamento Hospitalar',45.00,'2024-09-13 19:21:10',3,6),(19,'Pulsoximetro','Equipamento Hospitalar',75.00,'2024-09-13 19:21:10',4,6),(20,'Eletrocardiógrafo','Equipamento Hospitalar',500.00,'2024-09-13 19:21:10',5,6),(21,'Álcool 70%','Antisséptico',5.00,'2024-09-13 19:21:10',6,7),(22,'Iodo','Antisséptico',7.00,'2024-09-13 19:21:10',7,7),(23,'Clorexidina','Antisséptico',12.00,'2024-09-13 19:21:10',8,7),(24,'Pomada para Cortes','Pomada',18.00,'2024-09-13 19:21:10',9,15),(25,'Pomada Anti-inflamatória','Pomada',22.00,'2024-09-13 19:21:10',10,15),(26,'Pomada para Dor Muscular','Pomada',20.00,'2024-09-13 19:21:10',11,15),(27,'Creme Hidratante','Creme Dermatológico',30.00,'2024-09-13 19:21:10',12,14),(28,'Creme Anti-envelhecimento','Creme Dermatológico',45.00,'2024-09-13 19:21:10',13,14),(29,'Creme para Eczema','Creme Dermatológico',35.00,'2024-09-13 19:21:10',14,14),(30,'Loção Hidratante','Loção',25.00,'2024-09-13 19:21:10',15,16),(31,'Loção para Queimaduras','Loção',20.00,'2024-09-13 19:21:10',1,16),(32,'Loção Adstringente','Loção',22.00,'2024-09-13 19:21:10',2,16),(33,'Vitamina C','Vitamina',25.00,'2024-09-13 19:21:10',3,17),(34,'Vitamina B12','Vitamina',18.00,'2024-09-13 19:21:10',4,17),(35,'Vitamina E','Vitamina',22.00,'2024-09-13 19:21:10',5,17),(36,'Magnésio','Mineral',15.00,'2024-09-13 19:21:10',6,18),(37,'Cálcio','Mineral',20.00,'2024-09-13 19:21:10',7,18),(38,'Ferro','Mineral',17.00,'2024-09-13 19:21:10',8,18),(39,'Shampoo Hidratante','Produto para Cuidados com os Cabelos',22.00,'2024-09-13 19:21:10',9,19),(40,'Condicionador Anti-quebra','Produto para Cuidados com os Cabelos',25.00,'2024-09-13 19:21:10',10,19),(41,'Máscara Reconstrutora','Produto para Cuidados com os Cabelos',30.00,'2024-09-13 19:21:10',11,19),(42,'Creme Facial','Produto para Cuidados com a Pele',28.00,'2024-09-13 19:21:10',12,20),(43,'Tônico Facial','Produto para Cuidados com a Pele',22.00,'2024-09-13 19:21:10',13,20),(44,'Emulsão Anti-acne','Produto para Cuidados com a Pele',24.00,'2024-09-13 19:21:10',14,20),(45,'Protetor Solar Fator 30','Protetor Solar',35.00,'2024-09-13 19:21:10',15,21),(46,'Protetor Solar Fator 50','Protetor Solar',40.00,'2024-09-13 19:21:10',1,21),(47,'Protetor Solar Fator 15','Protetor Solar',25.00,'2024-09-13 19:21:10',2,21),(48,'Antisséptico Bucal Clorexidina','Antisséptico Bucal',15.00,'2024-09-13 19:21:10',3,22),(49,'Antisséptico Bucal Álcool','Antisséptico Bucal',10.00,'2024-09-13 19:21:10',4,22),(50,'Antisséptico Bucal Óleo de Coco','Antisséptico Bucal',12.00,'2024-09-13 19:21:10',5,22),(51,'Clareador Dental Kit','Clareador Dental',60.00,'2024-09-13 19:21:10',6,23),(52,'Pasta Clareadora','Clareador Dental',20.00,'2024-09-13 19:21:10',7,23),(53,'Emulsão Clareadora','Clareador Dental',25.00,'2024-09-13 19:21:10',8,23),(54,'Hidratante Corporal','Hidratante',30.00,'2024-09-13 19:21:10',9,24),(55,'Hidratante Facial','Hidratante',28.00,'2024-09-13 19:21:10',10,24),(56,'Hidratante para Mãos','Hidratante',15.00,'2024-09-13 19:21:10',11,24),(57,'Emulsão Hidratante','Emulsão',30.00,'2024-09-13 19:21:10',12,25),(58,'Emulsão Anti-envelhecimento','Emulsão',35.00,'2024-09-13 19:21:10',13,25),(59,'Emulsão Protetora','Emulsão',32.00,'2024-09-13 19:21:10',14,25),(60,'Xarope para Tosse','Xarope',18.00,'2024-09-13 19:21:10',15,26),(61,'Xarope para Garganta','Xarope',20.00,'2024-09-13 19:21:10',1,26),(62,'Xarope Expectorante','Xarope',22.00,'2024-09-13 19:21:10',2,26),(63,'Gel para Cabelos','Gel',15.00,'2024-09-13 19:21:10',3,27),(64,'Gel Desinfetante','Gel',12.00,'2024-09-13 19:21:10',4,27),(65,'Gel para Dor Muscular','Gel',18.00,'2024-09-13 19:21:10',5,27),(66,'Lente de Contato Diária','Lentes de Contato',35.00,'2024-09-13 19:21:10',6,28),(67,'Lente de Contato Mensal','Lentes de Contato',70.00,'2024-09-13 19:21:10',7,28),(68,'Lente de Contato Tórica','Lentes de Contato',85.00,'2024-09-13 19:21:10',8,28),(69,'Curativo Adesivo','Curativos',5.00,'2024-09-13 19:21:10',9,29),(70,'Curativo Transparente','Curativos',8.00,'2024-09-13 19:21:10',10,29),(71,'Curativo para Queimaduras','Curativos',12.00,'2024-09-13 19:21:10',11,29),(72,'Monitor de Pressão','Equipamentos de Monitoramento',80.00,'2024-09-13 19:21:10',12,30),(73,'Medidor de Glicose','Equipamentos de Monitoramento',45.00,'2024-09-13 19:21:10',13,30),(74,'Pulsoximetro','Equipamentos de Monitoramento',60.00,'2024-09-13 19:21:10',14,30),(75,'Kit de Primeiros Socorros','Produtos de Primeiros Socorros',50.00,'2024-09-13 19:21:10',15,31),(76,'Desfibrilador','Produtos de Primeiros Socorros',1200.00,'2024-09-13 19:21:10',1,31),(77,'Atadura de Gaze','Produtos de Primeiros Socorros',10.00,'2024-09-13 19:21:10',2,31);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
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
