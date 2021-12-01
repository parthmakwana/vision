-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: vision
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `drugs_data`
--

DROP TABLE IF EXISTS `drugs_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs_data` (
  `index` bigint DEFAULT NULL,
  `Drug_Name` text,
  `Biosimilar` bigint DEFAULT NULL,
  `Time` bigint DEFAULT NULL,
  `Efficacy` bigint DEFAULT NULL,
  `Dosage` double DEFAULT NULL,
  `Type` text,
  KEY `ix_drugs_data_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs_data`
--

LOCK TABLES `drugs_data` WRITE;
/*!40000 ALTER TABLE `drugs_data` DISABLE KEYS */;
INSERT INTO `drugs_data` VALUES (0,'DXC_Drug',0,3,88,3,'Tablet'),(1,'DXC_Drug',0,6,85,3,'Tablet'),(2,'DXC_Drug',0,8,80,3,'Tablet'),(3,'DXC_Drug',0,12,83,3,'Tablet'),(4,'DXC_Drug',0,18,75,3,'Tablet'),(5,'DXC_Oral',0,3,75,2.5,'Oral'),(6,'DXC_Oral',0,6,74,2.5,'Oral'),(7,'DXC_Oral',0,8,75,2.5,'Oral'),(8,'DXC_Oral',0,12,70,2.5,'Oral'),(9,'DXC_Oral',0,18,69,2.5,'Oral'),(10,'ADE_2.5',1,3,90,2,'Injection'),(11,'ADE_2.5',1,6,91,2,'Injection'),(12,'ADE_2.5',1,8,90,2,'Injection'),(13,'ADE_2.5',1,12,88,2,'Injection'),(14,'ADE_2.5',1,18,85,2,'Injection'),(15,'Xaretzi',1,3,65,1,'Tablet'),(16,'Xaretzi',1,6,64,1,'Tablet'),(17,'Xaretzi',1,8,65,1,'Tablet'),(18,'Xaretzi',1,12,65,1,'Tablet'),(19,'Xaretzi',1,18,63,1,'Tablet'),(20,'Kras',0,3,55,2,'Oral'),(21,'Kras',0,6,57,2,'Oral'),(22,'Kras',0,8,56,2,'Oral'),(23,'Kras',0,12,58,2,'Oral'),(24,'Kras',0,18,57,2,'Oral'),(25,'Kras_5',0,3,65,5,'Tablet'),(26,'Kras_5',0,6,66,5,'Tablet'),(27,'Kras_5',0,8,63,5,'Tablet'),(28,'Kras_5',0,12,60,5,'Tablet'),(29,'Kras_5',0,18,61,5,'Tablet'),(30,'Imfinzi',1,3,91,2,'Injection'),(31,'Imfinzi',1,6,90,2,'Injection'),(32,'Imfinzi',1,8,91,2,'Injection'),(33,'Imfinzi',1,12,92,2,'Injection'),(34,'Imfinzi',1,18,90,2,'Injection');
/*!40000 ALTER TABLE `drugs_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 22:33:52
