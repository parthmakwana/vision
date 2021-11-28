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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `date_time` datetime NOT NULL,
  `doctor_id` int NOT NULL,
  `notes` varchar(150) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  CONSTRAINT `patient_id_fkk` FOREIGN KEY (`id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:05:49
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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `specialist` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:05:49
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
-- Table structure for table `drugs`
--

DROP TABLE IF EXISTS `drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drugs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drugs`
--

LOCK TABLES `drugs` WRITE;
/*!40000 ALTER TABLE `drugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `drugs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:05:49
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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

-- Dump completed on 2021-11-27 18:05:49
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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
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

-- Dump completed on 2021-11-27 18:05:49
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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `age` int NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phnoe_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:05:49
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
-- Table structure for table `patient_data`
--

DROP TABLE IF EXISTS `patient_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_data` (
  `index` bigint DEFAULT NULL,
  `name` text,
  `city` text,
  `phone_number` text,
  `date` text,
  `id` bigint DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `age` bigint DEFAULT NULL,
  KEY `ix_patient_data_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_data`
--

LOCK TABLES `patient_data` WRITE;
/*!40000 ALTER TABLE `patient_data` DISABLE KEYS */;
INSERT INTO `patient_data` VALUES (0,'Whitney Johnson','Sewickley','929-428-6732','5/20/2012',2433445420,7.04,119.37,61),(1,'Kayla Myers','Genesee Depot','196-190-1536','3/29/1979',3366528450,4.11,113.68,60),(2,'Susan Barajas','Tushka','900-582-7697','11/5/1996',3532857054,5.57,72.7,64),(3,'Daniel Delacruz','Mount Jackson','158-349-3547','8/23/1987',1502585609,5.14,48.11,17),(4,'Albert Reyes','Funkstown','750-385-7128','5/16/2021',8376011192,6.33,112.49,28),(5,'Angela Glenn','Aniak','900-901-6922','1/14/2013',2826396762,4.38,109.3,68),(6,'Luis Conway','Dollar Bay','450-781-2534','10/10/2011',8937854788,7.09,61.08,54),(7,'Daniel Sharp','Cidra','311-709-1542','10/24/1986',2970783163,6.9,84.15,44),(8,'Sheila Christian','Algonquin','112-852-9089','5/22/1979',9282984001,6.14,12.04,67),(9,'Joy White','Crimora','506-646-7446','3/21/2000',8919655442,6.38,69.94,39),(10,'Kathryn Ayala','Swissvale','694-871-8999','8/9/2003',4177426342,7.16,79.42,61),(11,'Laura Gibson','Uniondale','146-300-7854','11/30/1990',1857887468,7.67,3.25,10),(12,'Cassandra Sanchez','Kingstown','409-624-9132','8/8/1978',5285402702,6.7,31.01,60),(13,'Marcus Douglas','Pleasant Valley','334-195-5524','10/20/1972',8811911203,7.21,12.35,60),(14,'Dale Reynolds','Owls Head','230-142-0512','9/9/2005',5527729282,6.68,29.13,53),(15,'Anthony Martinez','Montbrook','153-360-0150','6/29/1983',5819064435,6.44,100.61,39),(16,'Nathan Rodriguez','Bentonville','113-152-6468','1/19/2009',1779012357,5.08,61.57,68),(17,'Terri Morris','Lakeside Green','678-398-8571','6/30/1979',4725933621,4.82,60.53,68),(18,'Devin Alvarez','New Llano','433-089-6975','8/5/1982',6532631067,5.96,79.45,16),(19,'Martin Lewis','Meadowbrook Terrace','422-674-2686','9/11/1986',9221773212,4.47,115.4,25),(20,'Nathan Lopez','Solen','351-199-4882','3/7/2016',5452621067,6.77,94,11),(21,'Tina Matthews','Herring','436-561-1527','9/21/1990',2685784564,5.18,50.33,23),(22,'Richard Roberts','Gholson','845-430-7367','1/21/1979',126508369,6.22,102.05,43),(23,'Marie Jones','Warm Mineral Springs','826-980-9225','10/26/1996',9843947595,7.6,103.92,40),(24,'Jared Munoz','Hazel Hurst','188-177-7619','5/17/1997',167050514,6.78,99.59,28),(25,'Mr. Brian Ruiz','Queen','690-283-5337','5/17/2013',7176857350,7.28,38.42,29),(26,'Cassandra Hawkins','Diehlstadt','816-577-7453','10/1/1997',6793063869,5.93,71.56,42),(27,'Eric Rojas','Thompsons','739-595-1910','1/11/2005',505093564,7.27,67.88,54),(28,'Rodney Davis','Waumandee','552-396-8034','1/17/2009',8400434778,7.19,101.16,76),(29,'John Hardy','Norway','500-823-7787','4/16/2021',2588651385,4.74,72.76,23),(30,'Natalie Bell','Lilliwaup','378-549-6335','3/30/2004',1457947800,6.86,74.29,39),(31,'Seth Snyder','Hatley','653-913-8654','9/27/1983',3535295994,5.91,97.88,50),(32,'Thomas Price','Lajas','917-263-3567','7/22/2014',4576862129,5.27,118.69,45),(33,'Vernon Miller','Stilwell','387-161-8158','9/1/2006',6759874427,5.76,82.71,53),(34,'Maureen Cox','Burns Harbor','163-282-2705','7/10/1971',5379329244,7.87,17.35,22),(35,'Craig Anderson','Brightwaters','100-797-7286','1/6/1971',5777884881,7.13,54.9,10),(36,'Melinda Hart','Lavinia','152-199-7066','1/23/1988',9528941616,6.42,74.36,49),(37,'Samantha Meyers','Berkeley Lake','428-593-9179','5/19/1970',8444128108,6.93,74,42),(38,'Jacqueline Boone','Saint Jacob','475-106-4079','7/8/2003',5363279565,6.76,44.76,14),(39,'Kenneth Hubbard','Northfork','908-479-6302','9/26/1980',4473857007,6.47,89.11,51),(40,'James Lawrence','White Deer','635-268-5653','10/30/2007',4292879930,7.37,92.1,32),(41,'David Gross','Channelview','524-816-8733','7/24/1988',1345252115,7.66,34.41,75),(42,'Donald Briggs','Caney City','572-113-4263','8/30/2005',388740558,6.79,43.81,66),(43,'James Soto','Broaddus','940-054-7584','4/29/1987',72683925,4.24,77.61,47),(44,'Danielle Woods','Webberville','663-887-8158','6/30/1987',7894593027,5.16,57.26,22),(45,'Tabitha Miller','Irma','536-963-9520','9/17/2008',1512067893,5.13,53.61,30),(46,'Elizabeth Peterson','Saint Martins','748-358-2147','12/24/1996',1377713283,4.83,25.86,44),(47,'Todd Harper','Norwood Court','399-207-4807','8/4/1972',211364288,4.84,90.1,62),(48,'Samantha Garner','Inniswold','500-331-0317','4/2/1983',1554910400,5.63,90.12,11),(49,'Amy Massey','Yutan','937-004-0631','12/25/2007',9246194058,7.52,111.3,58),(50,'Gabriel Hutchinson','Cooks Hammock','703-868-6060','7/5/2009',8895790311,6.25,70.46,79),(51,'Donald Flores','Mauriceville','972-067-9780','10/18/1970',3772654216,5.72,12.6,28),(52,'David Davis','Jacobsburg','271-583-1913','6/17/2017',4281265752,7.38,32.14,31),(53,'Stephanie Williams','Geraldine','619-236-1028','1/17/1994',4414342885,5.96,14.81,31),(54,'Thomas Martin','Sheffield Lake','683-848-2888','5/30/2013',2704828012,6.26,109.56,38),(55,'Kim Kramer','Milton Center','629-845-3455','4/27/1982',7416191651,7.81,24.51,14),(56,'Daniel Perez','Tetonia','753-842-9005','8/3/1997',4653385099,4.74,40,36),(57,'Leonard Bryant','Ecru','719-045-2483','6/10/2012',3089135162,4.88,94.45,18),(58,'Natalie Cox','Reklaw','812-971-9594','3/28/1978',2910969009,5.6,71.53,79),(59,'Nicholas Gonzalez','Aldrich','917-158-1617','7/31/1993',9778953887,6.18,82.65,34),(60,'Nathan Reed','Piney Point','986-647-3245','4/10/2014',6488226976,5.96,79.62,36),(61,'Isaac Oconnor','Muscoy','902-098-5072','6/15/2003',6249223457,4.41,67.61,61),(62,'Carlos Pena','Pickens','126-525-5563','12/3/1970',5886261756,7.75,15.04,42),(63,'Megan Juarez','Sun River','899-245-2097','7/5/1971',4388336326,6.13,89.09,63),(64,'Matthew Hammond','Campbellsburg','220-643-2142','4/16/2021',9669977603,6.31,13.93,53),(65,'Gabrielle Payne','Poynette','538-126-6990','2/9/2017',6733089414,5.92,104.44,44),(66,'William Clark','South Windham','724-704-3096','10/10/2014',3456395913,7.46,111.07,34),(67,'Karen Edwards','Sanderson','170-145-3201','4/22/1974',4650838592,4,23.73,44),(68,'Catherine Thompson DVM','Angel City','107-834-7443','11/5/2009',4152644208,4.67,73.03,48),(69,'Renee Rogers','Bunkerville','766-794-0180','11/14/2010',5433665196,7.21,96.56,68),(70,'Brian Ramos','Gulfport','265-783-6922','4/22/1983',7647731864,4.94,82.91,63),(71,'Justin Savage','Wauregan','396-344-3271','7/31/2015',8332020392,4.39,82.86,43),(72,'Desiree Juarez','Kurtistown','370-000-4473','4/4/1978',4242599078,4.25,81.25,16),(73,'Kathryn Hernandez','Richards','225-975-7620','4/24/2010',9266393057,4.82,20.53,16),(74,'Erik Diaz','Mattawamkeag','198-293-9499','8/26/2011',2188906660,4.93,28.3,68),(75,'Amanda Martinez','Glen Arm','237-820-4596','5/3/1973',2629763700,6.62,61.54,54),(76,'Steven Hicks','Huntertown','924-847-5822','1/9/1991',7698887975,6.27,26.68,25),(77,'Nicole Williams','Briar','745-830-2851','11/4/2003',9818739111,5.85,119.97,43),(78,'Melinda Norris','Akaska','691-152-4398','3/29/1985',9282156074,4.2,28.73,44),(79,'Jennifer Stewart','Menfro','916-258-7534','9/5/2014',9646376682,6.93,104.16,66),(80,'Gabriel Gould','Hinckley','130-055-8631','12/13/1973',8108609579,4.32,85.75,56),(81,'Nancy Goodman','Genola','685-257-2039','6/18/1978',2858287571,5.6,1.89,27),(82,'Michael Rangel','Welaka','104-051-9279','2/27/2018',5614197018,4.28,71.79,30),(83,'James Robinson','Becida','279-945-7888','4/16/1972',4979027971,7.51,67.38,24),(84,'Joshua Phillips','Halawa','236-041-2979','7/27/1983',3046010310,6.13,75.67,73),(85,'Denise Ayala','Endwell','551-351-2534','9/25/1988',6941873509,6.33,20.77,23),(86,'Jason Washington','Roberts','659-305-9767','12/30/1997',633650510,7.76,28.09,28),(87,'Kendra Burns','Santa Ana','305-236-7096','1/6/2006',1097660282,7.37,107.74,63),(88,'Shelby Chaney','Tallaboa','701-110-2151','8/22/1995',1959333610,6.97,92,30),(89,'Edward Bowman','Ragan','195-560-1654','10/25/2011',3433799785,6.13,7.05,41),(90,'Adrian Mccullough','Vinita Park','175-783-9803','7/3/2000',9557625669,5.32,96.55,25),(91,'Jonathan Neal','Ronda','647-768-3395','6/16/1991',668991003,4.75,33.21,13),(92,'Robert Morales','Mount Ida','395-933-1354','5/9/2015',4911651112,5.26,52.21,73),(93,'David Bennett','New Madison','258-775-4654','10/21/1992',3419202534,5,97.38,70),(94,'Mary Mueller','Grantville','667-367-1436','2/14/1982',7824834535,5.08,82.13,34),(95,'Kathleen Cervantes','Ouachita','412-742-6187','5/2/2011',9155249887,4.62,90.56,79),(96,'Joseph Patel','Balko','617-065-9082','8/29/2014',1933303289,7.25,109.25,46),(97,'Virginia Gonzalez','Ellerbe','334-938-4222','5/4/1984',3506336554,7.17,78.61,59),(98,'James Dixon','Clem','970-949-9206','4/3/2015',2357906113,5.28,35.13,70),(99,'Samuel Miller','Asbury Park','309-048-3209','12/20/2019',8534789199,5.19,100.11,21),(100,'Catherine Riley','Lodge','991-585-2705','9/3/1976',4122009035,4.67,73.16,60),(101,'Monica Martinez','Cortez','796-469-8662','2/1/2012',6127179083,7.03,117.3,32),(102,'Michele Miller','Butterfield','587-533-9006','9/25/1996',3997979334,6.11,73.21,17),(103,'Bobby Jackson','Cocoa Beach','907-572-7410','9/7/2010',3895512661,5.6,28.41,20),(104,'Rickey Smith','Shawville','324-803-1955','2/17/1977',2776794871,7.34,86.75,47),(105,'Daniel Greene','Woodbine','346-743-9834','9/9/2005',2274139141,6.06,44.37,72),(106,'Juan Fuentes','Tillmans Corner','590-935-1511','10/1/1992',3699565110,7.94,2.68,71),(107,'Erica Church','Way','892-022-8722','3/22/1991',355668169,4.03,117.7,34),(108,'John Todd','Redstone','470-174-2357','1/12/2006',7929994506,5.35,32.51,16),(109,'Ronald Johnson','Gilberts','579-208-1995','9/11/1987',3055452425,7.75,56.99,59),(110,'Sharon Macdonald','Collettsville','507-911-9192','12/24/1986',8416644045,6.3,42.55,48),(111,'Sarah Richards','Modesto','151-073-1456','5/20/1980',2203949278,5.48,65.92,58),(112,'Patricia Mathis','Au Train','770-828-6180','12/28/1987',2885004497,5.69,8.3,27),(113,'Lisa Nguyen','Raymondville','570-713-7504','1/3/2000',4636650070,5.71,107.08,12),(114,'Donald Stephens','Escalante','484-075-5942','11/14/1995',9760553563,5.21,85.3,30),(115,'Michael Shelton','Hahntown','326-654-3183','4/5/2005',1887367584,5.98,38.05,66),(116,'Miranda Berry','Henryetta','929-337-1500','8/7/2000',1890125567,4.02,68.91,38),(117,'Caleb Fernandez','Upper Grand Lagoon','316-134-4114','9/12/2003',1733577782,7.08,34.75,21),(118,'David Haney','Highlands Ranch','221-622-6971','11/5/2006',6054112050,7.1,31.14,13),(119,'Pamela Scott','Speers','486-528-5625','1/15/1975',1600079398,7.93,71.12,77),(120,'Kevin King','Cajah\'s Mountain','244-954-3350','9/15/2017',2111909095,5.13,58.15,65),(121,'Tina Lee','Fair Oaks','574-990-7848','4/9/1975',9111555906,5.46,89.24,44),(122,'Nicole Perez','Musicks Ferry','860-672-9840','2/3/1995',4690118694,4,20.68,63),(123,'Carolyn Thompson','Dycusburg','879-649-4743','4/5/2007',3332151918,4.63,63.99,18),(124,'Craig Allen','North Fond du Lac','403-062-3387','12/16/2012',7165486422,7.47,72.72,42),(125,'Dan Kramer','Holts Corner','839-569-0455','7/27/1972',3192733057,6.8,6.26,32),(126,'Mrs. Beth Ellis','Johns','348-395-2661','9/23/1990',8819063136,5.43,21.76,55),(127,'Todd Diaz','Kenton Vale','180-250-3833','6/7/1980',5514806951,7.28,98.01,24),(128,'Dustin Simmons','Waldenburg','315-869-3391','3/16/1976',4228081474,4.19,58.2,41),(129,'Yvette Arias','Jet','109-234-1481','5/18/2010',9092278902,6.01,76.66,77),(130,'Janet Grant','Kekaha','504-378-5616','6/29/2016',164857872,7.41,17.17,33),(131,'Ryan Rose','Windham','433-500-9743','7/4/2008',6295975119,6.48,71.43,40),(132,'Danielle Smith','Lipscomb','684-798-0834','4/11/1976',7984536345,4.69,65.88,41),(133,'Jimmy Martinez','McVeigh','652-381-8561','8/1/1974',9556307512,5.11,118.46,42),(134,'Barbara Thomas','Oregonia','678-358-6922','11/13/1976',6197543912,4.16,49.92,22),(135,'Frederick Carson','Elsey','642-519-0680','6/4/2016',9622578457,5.55,20.93,61),(136,'Tyler Gray','Sardis','438-416-6158','12/2/1970',6059715865,7.08,70.95,16),(137,'Meghan Nguyen','Hobson','289-235-7772','3/28/2006',1526266397,4.69,93.7,45),(138,'Andrew Schneider','Canjilon','471-538-8207','8/8/2006',6929143849,4.49,9.09,30),(139,'Richard Benton','Coteau Holmes','551-525-1584','8/23/2001',3839886794,5.15,108.4,11),(140,'Chad Edwards','Hillister','275-047-9167','10/13/1995',4708744184,7.72,42.47,24),(141,'Nicole Garrett','Koliganek','602-439-1816','8/6/1996',7551137021,6.04,89.15,20),(142,'Judith Cook','Des Moines','841-280-7604','7/25/1997',8392678546,6.65,53.41,78),(143,'Oscar Peters','Darnestown','964-016-9765','11/1/1998',2861979570,4.92,69.02,36),(144,'Christina Martinez','Tehama','262-840-1237','6/6/1987',2298455226,5.8,58.87,42),(145,'Laura Aguilar','Livingston Manor','507-370-0421','7/6/1992',4772559725,4.07,15.87,58),(146,'Robert Douglas','McNeill','649-419-4678','6/13/2012',1200307335,4.88,10.84,17),(147,'Michael Khan','Edgemont','596-882-0877','10/14/1981',4774516759,4.37,30,18),(148,'Jerry Thompson','Twin Lakes Village','756-622-1731','7/23/1974',6587768055,5.38,89.18,38),(149,'Danielle Sanchez','Bazile Mills','617-114-3904','6/25/1979',4351145825,6.05,23.03,19),(150,'Charles Maldonado','Two Creeks','603-238-2817','12/20/2002',5738452974,7.48,34.65,33),(151,'Travis Wilson','Northfield Woods','665-519-5252','12/3/2003',9544027613,6.38,47.85,30),(152,'Lacey Mason PhD','Chester Heights','643-722-7307','4/10/1985',682267454,6.69,14.63,71),(153,'Bailey Rhodes','George West','866-309-1362','12/3/1973',1817805371,7.12,22.87,55),(154,'Robert Burke','Russell City','406-267-0217','3/23/2012',6061170184,4.78,40.36,27),(155,'Donna Armstrong','Blue River','349-380-6113','9/11/2018',549456070,6.99,63.32,31),(156,'Kristen Shelton','Cushman','643-636-8596','10/24/1976',8438073247,7.39,8.5,20),(157,'Juan Stevens','Saragosa','930-039-4557','4/14/1983',1943262954,4.25,103.88,67),(158,'William Edwards','Hazel Hurst','882-488-2638','9/27/2012',5640248098,7.91,42.95,67),(159,'Samantha Barnes','Wauneta','375-202-0181','11/11/2020',6256545836,5.96,68.31,72),(160,'Jacqueline Mason','Maywood','833-624-3543','3/24/1991',6870773395,4.59,87.19,62),(161,'Susan Bright','North Sea','370-993-9775','8/14/1988',826096799,6.57,60.33,61),(162,'Todd Baldwin','Shady Grove','624-849-2450','5/11/2001',5183985325,5.05,113.33,11),(163,'Bill Banks','Waggoner','419-867-1509','9/30/1994',3364353604,4.72,113.48,35),(164,'John Marshall','Barneveld','522-611-2552','4/4/1992',996974022,4.68,21.46,37),(165,'Angela Dorsey','LaMoure','747-688-5164','6/1/1980',412273985,5.63,87.18,51),(166,'Chad Bradshaw','Redmon','352-291-7650','1/22/2018',6692640513,6.65,49.29,51),(167,'Andrew Cook','Clendenin','426-763-8023','7/25/1993',822608664,7.57,16.35,52),(168,'Jody Garcia','Carnero','607-736-1252','11/27/2005',4341915683,5.54,58.48,66),(169,'Kathryn Rose','Joel','154-138-1890','12/20/1988',7477536173,4.1,7.26,19),(170,'Sarah Kane','Margaret','878-878-5402','6/10/2006',6668572367,6.04,98.98,44),(171,'Kimberly Alexander','DuPont','110-330-8939','3/29/1990',2706796292,5.2,24.25,54),(172,'Daniel Cohen','Brook Park','548-725-9450','11/17/2003',2703449213,5.7,113.43,78),(173,'Kent Thomas','Flint City','879-550-7440','8/17/1987',5715793354,7.02,15.7,11),(174,'Dawn Robinson','Veyo','380-806-4939','12/16/2004',484730731,5.17,41.95,56),(175,'Tiffany Johnson','Merrick','550-902-7423','12/17/1985',6499426620,6.97,33.66,56),(176,'Michelle Dixon','Sealy','189-884-7942','7/19/2015',6681048906,7.48,30.76,55),(177,'Andrea Barber','Olaton','915-981-9316','4/29/1975',5844207751,4.03,117.15,41),(178,'Stephen Cook','Giltner','661-322-1583','7/8/1980',3339811372,7.06,108.1,60),(179,'Terri Steele','Indianola','973-360-8162','3/19/2010',1403894098,5.03,89.18,12),(180,'Robert Murray','Conway Springs','407-851-3452','1/22/2013',68686613,6.12,98.6,24),(181,'Troy Vaughn','Hamler','964-421-1886','9/5/1987',9716686041,4.08,74.53,34),(182,'Kathryn Ellis','Newtonsville','570-678-0735','4/27/1970',9058328933,4.98,100.41,26),(183,'Angela Harris','Belcher','711-542-7451','7/15/1988',8137768563,6.29,53.61,41),(184,'Omar Thompson','Crested Butte','834-649-9945','7/6/1991',7015376119,5.89,101.13,54),(185,'Richard Shelton','Oakport','600-184-5265','1/20/1982',9221983152,5.72,4.89,26),(186,'Richard Marshall','Grambling','380-782-9852','8/3/1970',2784354292,6.15,90.04,69),(187,'Tiffany Moreno','Rose Valley','366-123-3498','12/26/2000',5261448433,6.93,106.73,56),(188,'Fernando Fletcher','Bayou La Batre','325-222-4765','4/13/2009',6515481735,7.56,92.27,33),(189,'Jamie Reed','Stella','902-780-5618','10/10/1972',1255365218,6.08,82.34,72),(190,'Stephanie Brady','Pine Plains','468-595-6958','9/10/2009',2641542728,4.49,2.7,74),(191,'Jonathan Long','Tilleda','794-516-1924','1/27/2005',5984033870,7.98,68.47,75),(192,'Brittany Moore','Riverview','450-414-4386','10/16/1972',9760095247,5.74,84.75,16),(193,'Felicia Patterson','Miltonvale','941-592-5985','9/8/1977',3316481616,4.21,41.2,13),(194,'John Valdez','Laguna','397-090-4544','3/17/1981',9286281403,4.89,111.92,45),(195,'Rachel Middleton','Northbranch','720-637-0738','12/5/2015',4619296295,7.66,77.56,25),(196,'Connie Moore','Taft Heights','684-692-2330','6/5/2005',3940731481,4.25,113.91,71),(197,'Scott Harper','Fronton','242-932-3362','5/28/2010',591697518,6.97,51.44,18),(198,'John Green','Sudley','783-091-8999','3/22/1974',8262331549,6.07,90.29,10),(199,'Claire James','Gore','584-648-0480','3/1/2020',963984634,7.38,34.17,27),(200,'David Barton','New Deal','692-700-1685','6/27/2002',944466691,5.34,64.35,59),(201,'Ethan Carpenter','Leachville','751-841-4656','8/31/2015',4905970842,7.72,92.6,17),(202,'Sarah Miller','Steubenville','487-595-6349','12/30/1990',2186194797,5.58,112.54,60),(203,'Rebecca Chen','Melrude','981-477-6089','11/5/2013',5849476663,5.93,87.8,15),(204,'Christopher Coleman','Cheviot','177-234-1521','8/29/2001',1528902013,7.38,28.26,13),(205,'Casey Underwood','Babbitt','357-550-6277','5/14/2003',1343241057,7.64,24,55),(206,'Jamie Bowen','Hookdale','701-309-4027','12/9/1981',8783506382,5.17,106.55,58),(207,'Kirsten Taylor','Annetta South','140-963-8457','3/10/2000',2217077984,4.02,14.66,23),(208,'Brady Bryant','Brent','723-535-0324','2/20/2000',7750392966,4.05,67.02,43),(209,'Joshua Baker','Autaugaville','863-837-2620','11/4/1974',1635164622,6.59,102.37,39),(210,'Vincent Kane','Spirit','603-832-6177','3/16/1973',185825236,4.8,48.45,22),(211,'Monica Cortez','Gate','630-151-0077','8/26/1986',6307037592,6.28,10.94,33),(212,'James Frederick','Wall','115-766-4483','4/5/2010',9652025059,7.32,74.46,16),(213,'Deborah Burnett','Rainelle','935-255-8792','1/11/1975',6477041570,7.13,58.22,61),(214,'Michael Reyes','Gun Barrel City','292-705-1468','9/9/2000',1874894074,5.41,109.67,11),(215,'William Brown','East Pasadena','286-792-1251','9/15/1970',2344627356,4.38,88.66,31),(216,'Elizabeth Tran','Brookings','596-434-7845','2/14/1972',1986291372,4.26,48.11,47),(217,'Eric Nichols','Las Vegas','349-896-4940','6/15/1988',2027318419,4.57,74.51,53),(218,'Stephen Kim','Triplett','291-856-4442','7/17/2000',9912513662,4,49.44,27),(219,'Rachel Chavez','International Falls','285-201-1936','12/10/2020',6070312103,6.36,60.56,79),(220,'Ashley Brown','Werley','359-840-5088','12/26/1988',5576259821,4.51,86.78,43),(221,'Gary Carlson','Emmaus','362-754-9532','2/27/2012',8576764244,7.88,31.54,46),(222,'Lisa Diaz','Fort Myers Shores','346-838-3522','2/11/1999',6512095647,4.55,107.69,51),(223,'Mark Lozano DDS','Outing','419-736-4470','3/7/2019',568494213,7.66,46.33,35),(224,'Jose Swanson','Westford','228-380-7950','6/4/1979',9570060809,4.08,11.09,78),(225,'Ashley Rivera','Walnut Shade','277-367-9424','1/26/1999',6261583287,4.04,90.28,28),(226,'Danielle Cervantes','London Mills','305-782-4808','4/27/2017',3505358815,6.22,83.19,68),(227,'Bailey Evans','Milolii','188-400-5589','10/1/1975',9720887777,6.88,52.34,33),(228,'Fernando Garcia','Winslow','332-735-6022','6/27/1977',929538993,4.14,68.48,76),(229,'Dominique Stewart','Driscoll','722-121-9531','12/20/2015',4409816366,5.72,57.85,11),(230,'Michelle Shepard','Stoutland','999-932-6695','8/2/2017',3731289923,4.95,67.01,14),(231,'Zachary Peters','Ural','611-821-9076','9/11/1973',504613952,4.88,116.62,38),(232,'Mitchell Martin','Steamboat Canyon','214-142-8000','2/26/2010',5456033927,5.75,91.15,39),(233,'David Jones','Nuiqsut','440-166-6296','9/20/2002',2196903705,7.75,114.65,19),(234,'Leslie Riggs','Alum Bridge','538-502-3524','7/19/2013',8310638979,4.05,103.23,42),(235,'Mathew Shaffer','Americus','893-458-9943','9/22/1979',1938094138,6.76,15.98,50),(236,'Alyssa Carpenter','Packwood','156-339-3910','4/19/1982',4391428405,4.11,86.03,33),(237,'Leah Cole','Sodaville','775-188-3045','12/13/2017',2711837953,5.68,60.67,31),(238,'Stephen Ingram','Chattanooga Valley','666-859-5175','6/1/1987',1332557616,7.49,113.78,39),(239,'Michael Mccarthy','Village of Clarkston','876-939-8410','6/30/1974',2256348075,4.16,41.15,64),(240,'Dean Anderson','Lamartine','222-499-4408','5/25/2015',5462005930,5.77,67.1,56),(241,'Eric Owens MD','Polkville','622-314-8461','4/25/2010',5054079298,7.75,72,47),(242,'Dr. Zachary Munoz DDS','Love Valley','396-556-4415','3/5/1974',9422545250,5.74,80.46,40),(243,'Miguel Holland','Grottoes','312-091-0070','10/18/2008',8967838614,6.67,77.02,18),(244,'Lauren Bailey','Thompson\'s Station','378-638-8881','7/22/1997',9284833227,5.14,7.9,26),(245,'Mrs. Sandra Martin','Bussey','565-732-5091','7/23/2010',5047953065,7.99,85.16,34),(246,'Jason Cole','Lewisburg','634-573-8913','12/11/2008',6052033005,4.72,55.3,75),(247,'Anthony Gardner','Cedar Knolls','359-674-2134','2/16/2000',1018752333,7.33,19.09,11),(248,'Joseph Johnson','Lawrence Park','815-064-5889','12/8/2017',7181508530,4.23,3.7,23),(249,'Edward Hammond','Theta','109-461-1836','10/22/1982',2235682719,5.88,35.82,51),(250,'Thomas Rodriguez','Santaquin','652-398-8677','9/7/1995',6715037148,4.15,68.64,53),(251,'Erica Mccann','Semmes','935-779-8573','10/13/1982',8454478382,5.05,34.79,25),(252,'Keith Strickland','South Corning','759-891-1686','11/25/2019',6528442669,4.5,81.18,37),(253,'Carlos Obrien','Oilmont','638-511-7283','7/19/2021',6040132644,5.65,22.16,33),(254,'Eric Terry','Randalia','296-997-7860','7/19/1972',3147418476,7.17,74.84,18),(255,'Heather Roberts','Mina','879-593-1008','3/15/1986',5499336917,7.16,8.21,78),(256,'Ryan Donovan','Roselle','134-141-1417','1/10/2019',3034713948,6.96,114.63,50),(257,'Caleb Perkins MD','Gravity','465-286-7286','9/30/1970',1724313645,4.31,21.36,77),(258,'Christina Burch','Poca','456-388-0400','11/16/2020',4728519010,7.83,68.87,68),(259,'Stephanie Harris','Black Gap','544-115-9742','2/22/1999',1346003791,5.73,25.43,70),(260,'Mr. James Stewart','Stillwater','639-334-3248','12/12/1988',5379633142,4.76,100.65,71),(261,'Tracy Cardenas','Searingtown','166-943-0721','11/2/2003',2781081809,4.03,36.45,56),(262,'Scott Webb','Glen Elder','138-830-4653','5/2/2011',4358915657,4.48,78.57,41),(263,'Shaun Jacobs','Lobeco','258-307-3905','10/29/2004',6430996206,7.67,34.99,55),(264,'David Smith','Ponchatoula','564-975-0915','11/14/1978',9082802220,5.21,119.52,54),(265,'Mr. Mark Khan','West Newton','226-395-1247','4/3/1970',1852287897,5.39,74.93,26),(266,'Danielle Jackson','Lorimor','460-758-8196','10/4/1982',6241384487,7.85,3.8,54),(267,'Caitlin Dawson','Glenallen','603-941-3680','6/26/2000',3953427360,4.65,42.69,60),(268,'William Robertson DVM','Granton','177-759-9071','6/22/1993',1808837379,6.77,40.93,37),(269,'Mr. Martin May','Reardan','753-419-6152','8/18/1979',9159807019,7.53,34.6,58),(270,'Lydia Contreras','Orchard Beach','940-941-0499','11/25/2013',2928694574,7.15,99.95,62),(271,'Barbara Johns MD','Adelaide','599-821-5522','12/22/1974',749619092,5.54,88.82,41),(272,'Sarah Klein','Millwood','864-799-5853','7/15/1985',6086098239,5.06,100.5,63),(273,'Laura Jones','Pettus','622-043-1900','7/30/2015',9862638182,6.16,51.97,22),(274,'Rebekah Jones','Rockcreek','633-757-0637','9/16/1989',9034523980,4.97,52.4,61),(275,'Jessica Clarke','Sonnette','339-709-8779','7/21/2007',9591483950,4.71,12.98,56),(276,'Kristin Lewis','Moose Lake','227-154-6170','8/7/1972',2185718927,7.81,82.07,33),(277,'Matthew Scott','Waldo','176-667-1494','4/23/1973',343363895,7.35,46.82,68),(278,'Shannon Russo','Redding','511-147-8800','4/16/2018',269944681,4.54,3.68,62),(279,'Matthew Martinez','Fort Bridger','348-245-3310','10/21/1998',2420640346,5.87,92.07,59),(280,'Krystal Patton','Dundee','658-517-4427','9/11/2021',8153326331,5.64,87.33,13),(281,'Ronald Melendez','Bull Creek','396-123-5570','11/23/2020',9012871164,5.21,26.07,39),(282,'Brittany Ferguson','Millbrook','349-764-3053','1/23/1985',9779386237,7,86.44,23),(283,'Kevin Sutton','Slaterville Springs','434-622-5300','4/11/1972',3504456475,6.93,18.75,20),(284,'Alexis Morris','Fairbank','124-420-0419','10/25/1985',4816206591,7.28,76.15,46),(285,'Richard Sims','Stanberry','353-684-0525','4/23/1974',3011533001,5.24,112.5,14),(286,'Albert Alvarado','Timberlake','929-154-2185','1/20/2012',8340881485,5.52,43.34,19),(287,'Amber Allison','Leucadia','977-669-2341','3/12/2010',7041240908,6.58,43.95,13),(288,'Eric Chen','Gages Lake','961-863-5286','5/16/2006',9227849016,5.91,24.52,24),(289,'Regina Myers','Ballard','123-062-5967','9/4/2013',8356704967,6.61,49.77,38),(290,'Alex Wood','Culleoka','637-041-3645','8/11/1985',9411809625,5.76,5.5,46),(291,'Melissa Velasquez','Haskell','281-529-3820','2/3/1983',238101488,5.09,48.47,53),(292,'Michelle Dalton','Highview','833-702-3093','9/25/2006',299739463,6.33,44.5,18),(293,'Kimberly Burke','Kingsdown','190-127-2906','4/24/1974',6456326930,4.87,89.5,13),(294,'Heather Walker','Island Park','752-468-2145','12/24/2015',4654125632,5.39,63.6,59),(295,'Leslie Allen','Tiplersville','527-150-9038','8/2/2018',6564776089,4.08,21.52,55),(296,'Ashley Martinez','Naperville','636-727-8653','12/14/2006',3188445213,7.26,17.1,11),(297,'Paula Walker DVM','Venice','332-624-5271','11/21/1992',626489314,6.56,54.05,53),(298,'James Drake','Camdenton','462-637-0544','10/15/2019',9495846455,6.27,27.39,11),(299,'Jeffrey Kramer','Los Alamitos','442-474-0361','11/28/1971',3744131304,7.43,113.77,64),(300,'Megan Bryan','Batchtown','400-262-8520','3/28/1975',4109597650,5.63,119.35,38),(301,'Terri Hughes','Avoca','811-605-4079','5/25/2001',4695857617,5.33,85.34,76),(302,'Evan Stanley','Swan Valley','453-503-2776','1/30/2008',6180540799,4.39,117.07,26),(303,'Jacqueline Vaughn','Bond','385-054-8062','5/20/2020',4253614432,5.94,116.86,56),(304,'Erin Nelson','Rogue River','134-200-2507','9/30/2003',222132539,7.78,94.64,32),(305,'Brandon Coleman','Mackeys','865-704-0133','12/2/1992',7452113839,5.67,116.12,13),(306,'Jessica Armstrong','New Cumberland','450-822-8596','1/5/2011',6461116314,7.42,46.69,63),(307,'Jacqueline Moreno','Noyack','121-162-9964','2/5/1976',7608060062,5.58,39.21,76),(308,'Judith Mahoney','Dixmoor','157-068-3503','8/9/1986',2849756435,5.37,4.75,29),(309,'Tammy Clark','Vero Beach','658-716-1071','12/21/1989',9705956862,5.47,69.3,21),(310,'Jasmine Cline','Kewa','101-044-7779','11/5/2007',9874742551,4.53,102.74,15),(311,'Andrea Reed','Meinhard','202-593-2368','12/3/1982',4138882485,7.39,119.47,28),(312,'Margaret Ortiz','Rolling Hills','901-145-8832','3/23/2007',3972764845,5.01,47.42,56),(313,'William Allen','New Albany','239-643-8035','2/21/1981',3331479662,5.31,47.28,23),(314,'Steven Mitchell','Au Gres','384-658-4377','7/11/2001',8746882951,7.89,39.96,51),(315,'Jill Brown','Ona','553-325-8331','11/10/1989',7761573534,4.02,86.92,16),(316,'Mackenzie Patton MD','Rollinsville','636-715-1194','2/2/1972',4951957940,6.78,4.94,17),(317,'Dr. Cory Gonzalez','Bethany Beach','645-817-8099','12/30/2008',9603593233,4.47,18.8,54),(318,'Tanya Morse','Homeland','330-438-3846','1/7/2003',1442588244,7.48,94.4,46),(319,'Brittany Miller','Brookland Terrace','444-317-1108','3/9/1986',8974799411,7.26,16.79,55),(320,'Sarah Smith','North Glen Ellyn','396-912-2027','9/14/1982',8824803629,5.59,76.54,22),(321,'Jason Brown','Kaluaaha','668-083-7193','9/23/1972',2318691474,6.58,44.38,25),(322,'Wayne Hardy','Edwards','729-613-2833','2/25/2014',6545017267,7.41,88.61,77),(323,'Vanessa Mcfarland','Neilton','410-275-2899','5/26/1972',1396179607,6.78,73.74,65),(324,'Joseph Fuentes','Sinton','414-014-3296','9/5/1997',9907839983,6.32,69.49,32),(325,'Debra Yoder','Saunders','119-399-0153','12/11/2008',5910949812,5.43,77.08,12),(326,'Christopher Alvarado Jr.','Orchard','341-325-3417','3/5/1989',4738303736,5.52,49.64,73),(327,'Becky Hicks DDS','Osyka','109-478-2000','5/31/1981',3308045756,5.97,25.53,62),(328,'Paul Bailey','Saks','364-818-2746','7/19/2010',5286456713,7.87,101.82,19),(329,'Gary Hamilton','Saint Regis Park','872-784-6856','8/16/1992',2806113561,7.34,100.2,52),(330,'Kyle Ewing','Glassmanor','524-052-2371','2/28/1989',3825480255,7.78,93.99,39),(331,'David Clements','West Pensacola','115-121-8633','9/17/1991',5927135901,4.56,61.98,54),(332,'Carrie Lucas','Powhattan','741-000-3609','2/12/1984',5133996106,5.63,5.82,42),(333,'John Hernandez','Solana','555-448-4126','2/12/2002',4503320513,4.14,17.87,59),(334,'Jon Pierce','New Hampton','120-350-5470','3/27/1988',8761329474,4.6,4.96,43),(335,'Gerald Prince','Fairwater','750-262-4270','6/14/2013',8172300391,7.1,37.99,24),(336,'Sarah Colon','Pedro','186-905-8367','9/17/1978',9804689207,7.29,48,16),(337,'Joseph Gonzalez','Shelbina','330-787-8998','2/28/1998',5309042794,6.59,21.04,60),(338,'Toni Johnson','Elk Falls','365-858-2772','9/21/2017',1131137629,5.36,107.47,63),(339,'Jacob Ortiz','Whiteclay','599-531-0114','3/19/2007',1575716599,7.02,102.81,21),(340,'Robert Hayden','Banning','717-944-2741','8/5/1980',7623405048,6.61,38.67,30),(341,'Eric Smith','Yardville','401-567-1742','8/13/2010',832294949,4.35,70.17,40),(342,'William Gross','Bairoil','503-773-9506','4/6/1987',883997265,5.91,105.75,48),(343,'Joshua Bradley','Middlebury','786-350-5311','4/27/2000',3594368641,4.22,119.55,12),(344,'Morgan Obrien','Dayton Lakes','245-641-0133','11/15/1989',1015511207,6.31,16.13,19),(345,'Michael Johnson','Stockertown','285-714-1142','4/3/1996',7753237102,7.57,10.3,50),(346,'Aaron Gallagher','Arnold Mill','748-686-9147','5/23/1985',4180644808,6.72,106.62,63),(347,'Alicia Jones','Alburnett','958-191-8005','9/17/1989',7121429910,4.54,68.54,67),(348,'Jeffrey King','Mary Esther','689-205-3279','2/25/1998',8429718798,5.77,31.27,60),(349,'Michelle Garcia','Flowing Wells','442-893-7532','7/30/1975',7965014108,4.62,80.02,12),(350,'Wyatt Patterson','Bellechester','841-634-3198','1/19/2011',9478261126,7.99,98.86,64),(351,'Nicole Wilson','Leipers Fork','857-391-2486','2/24/1979',5079328402,4.49,50.94,27),(352,'Roger Anderson','Rimforest','762-507-9471','1/14/2015',1258095125,5.05,29.73,19),(353,'Michael Nelson','Corte Madera','619-400-7974','8/29/2021',1580195631,5.93,35.24,46),(354,'Sarah Smith','Moddersville','295-755-6779','9/3/2006',882480362,4.59,55.2,26),(355,'John Moreno','American Canyon','228-020-4656','3/6/1984',2766242901,6.3,75.24,11),(356,'Joshua Alexander','Ridgefield','405-818-4306','11/26/2006',500684099,4,7.65,58),(357,'Jennifer Anderson','Laguna Hills','582-019-1949','11/28/1991',1901092818,6.78,40.46,76),(358,'Katherine Scott','Holly Beach','345-940-3165','1/29/1973',1629001369,6.3,107.88,45),(359,'Michael Matthews','Benndale','212-836-1632','5/31/1984',4162846622,6.4,91.28,70),(360,'Zachary Benjamin','Garlin','620-322-0243','9/13/2005',4620293810,4.67,110.08,24),(361,'Isaiah Medina','Vienna','766-854-5541','6/1/1975',601054867,5.45,4.29,13),(362,'Tyler Jones','Skedee','346-176-6340','2/17/1984',7321428705,5.27,16.7,14),(363,'Tammy Mills','Bon Homme Colony','935-407-3974','8/29/2005',6412357792,4,85.64,62),(364,'Kayla Freeman','Ney','818-791-4929','7/27/2013',3031691746,7.31,106.59,29),(365,'Gavin Daniels','Lebanon Junction','555-745-6443','1/11/1991',440582591,6.82,44.64,71),(366,'Mark Reese','Saragosa','609-352-0411','11/2/1988',3262462467,6.74,109.05,56),(367,'Mary Alexander','Orchard Lake Village','465-792-0556','8/5/1998',7439502308,5.36,90.11,69),(368,'Jennifer Austin','Sunman','926-910-6003','5/25/2006',7445509876,5.71,81.32,13),(369,'Kelly Robertson','Chelatchie','528-538-6905','10/2/1980',4158426160,7.21,27.78,66),(370,'Rachel Weaver','Bolckow','373-317-7312','1/20/2015',7216503342,7.85,10.33,21),(371,'Justin Mclean','Blackwell','758-530-5534','11/29/2009',3153124424,6.46,23.21,52),(372,'Tyler Thompson','Beloit','318-916-1741','5/10/1982',5459849570,5.64,7.6,14),(373,'Mary Garcia','Van Tassell','662-314-8426','12/30/1988',6933625281,5.88,41.39,14),(374,'Jacob Robles','Lockwood','273-540-3475','8/12/2005',9724600664,6.34,17.6,71),(375,'Joseph Powell','Basin','510-953-2998','4/8/2003',7765198780,6.14,78.83,56),(376,'John Hall','Bronaugh','344-938-4829','11/22/1979',1203876846,4.6,89.4,16),(377,'Scott Myers','Ansonia','571-804-5691','11/4/2018',1287157737,6.93,71.52,22),(378,'Melissa Meza','Kingsland','569-584-0388','9/18/1995',7330959661,7.57,90.67,47),(379,'Scott Marks','Laney','161-291-9839','10/14/1988',5574184578,6.94,6.82,32),(380,'Amanda Anderson','New Bethlehem','498-622-1068','12/15/1988',4185859049,6.47,93.46,75),(381,'Darin Perez','Heathcote','111-003-2747','7/16/2018',7987161808,4.82,24.72,57),(382,'Lisa Taylor','Geronimo','150-214-5949','7/1/1975',5019380064,5.46,15.48,20),(383,'Lauren Carey','Wilton Center','864-897-2550','8/28/2011',2945660323,5.16,10.08,25),(384,'Heather Shaw','Thornhill','231-057-9456','5/25/2014',9091530997,5.4,37.5,40),(385,'Samantha Peterson','Seagraves','405-266-2037','1/6/1985',1837842297,5.79,28.67,53),(386,'Kevin Collins','Fort Edward','152-897-5303','1/22/1990',1564351167,6.57,78.11,49),(387,'Elizabeth Burton','Tremonton','326-560-9041','9/22/2000',7187564770,4.83,31.2,32),(388,'Linda Norman MD','Cuprum','611-085-3220','8/21/1994',5836194312,6.13,89.24,22),(389,'Isaiah Tyler','Watts','878-100-4399','11/12/1970',4421902105,4.04,18.47,43),(390,'Paul Austin','Murphys Corner','791-811-6231','11/26/2020',143290568,5.17,107.54,75),(391,'Patrick Dorsey','Machesney Park','963-537-5944','10/28/1972',45901871,4.33,111.92,75),(392,'Stephanie Murphy','Agate','601-369-7983','1/26/1993',3954229433,7.56,73.13,33),(393,'Susan Figueroa','Stobo','495-094-3610','6/10/1975',4727959905,6.54,13.79,18),(394,'Kimberly Pearson','Yarmouth','878-643-2525','11/24/1996',9990949903,6.4,94.24,33),(395,'Crystal Hayes','South Russell','520-682-1280','10/23/2014',3402327860,5.51,45.93,36),(396,'Mrs. Katherine Rivers MD','Cobb','572-749-1041','6/3/2001',8178682054,7.03,9.49,75),(397,'Travis Moore','Gansevoort','812-972-0655','6/22/1983',6553421170,7,80.81,46),(398,'Steven Pratt','Delray','360-658-7378','5/21/2008',9137156480,5.38,22.32,43),(399,'Barry Navarro','Freedhem','308-224-2943','8/10/1993',8370737901,4.15,93.75,79),(400,'Kristin Lee','Monteagle','875-638-0584','12/19/1986',878377762,7.48,70.92,60),(401,'Michael Cruz','Atalissa','813-344-2937','10/6/1984',2412609212,4.23,41.22,15),(402,'Jacqueline Nelson','Hackettstown','465-378-6273','7/29/1985',6677812921,6.53,46.8,22),(403,'Karen Shaw','Beechwood Trails','991-066-4103','12/21/2011',7872730051,4.7,21.09,41),(404,'Steven Schneider','Gillham','153-171-0258','6/21/1986',8652895845,5.41,79.72,22),(405,'Breanna Norris','Slaughter','376-333-0092','4/19/2009',6942379354,4.38,27.38,55),(406,'Laura Boone','Fairville','130-541-8281','10/7/1977',5126793545,6.71,61.19,43),(407,'David Williams','Sentinel Butte','924-322-6870','7/24/1981',6583454281,6.05,68.17,24),(408,'Margaret Coleman','East Petersburg','222-444-2058','9/21/1983',4864431002,4.2,73.57,51),(409,'Elizabeth Gibson','Greeleyville','174-131-7663','5/9/1994',495366333,6.95,90.7,74),(410,'Wayne Carrillo','Bayou Goula','494-168-9477','8/15/1993',137277584,5.24,25.63,76),(411,'Danielle Brown','Ludlow','841-983-3217','1/31/2017',3586619535,5.92,59.44,37),(412,'Stephanie Pearson','Treasure Island','848-711-9210','11/4/2012',6238353188,5.24,27.84,32),(413,'Chelsea Moreno','Chesterland','684-144-2064','12/11/2012',2908822326,5.68,62.76,55),(414,'Dave Wolfe','Hesperia','613-966-4419','10/22/1991',7764202316,5.51,87.9,47),(415,'Zachary Davis','Dollar','365-434-1388','5/20/1987',9652668783,5.43,88.6,73),(416,'Angela Castaneda','Brusly','618-412-4827','9/14/1989',3336022248,5.2,64.77,10),(417,'Tara Palmer','Middlebrook','985-835-9236','6/5/2002',7862215585,7.95,81.95,38),(418,'Chad Hawkins','Joel','427-400-7291','6/24/1971',7879440963,7.72,84.96,68),(419,'Louis Blake','Springside','586-089-0711','2/14/1992',1288085022,4.65,37.55,78),(420,'Jonathon Gonzalez','Chico','529-453-1744','12/22/1990',7972535305,7.34,72.7,24),(421,'Robert Smith','Varnell','210-111-7943','6/16/1987',7794588828,6.69,29.65,58),(422,'Justin Lambert','Everman','364-922-6265','8/4/1998',3595382413,7.18,21.42,54),(423,'Sandra Scott','Slinger','858-348-6604','7/5/1986',161255202,6.25,113,78),(424,'Joseph Brandt','Galena','290-027-0333','11/1/1992',4582391914,7.86,99.7,25),(425,'Michael Aguilar','Ahuimanu','472-294-3550','3/10/1971',4691470787,6.85,89.42,10),(426,'James Case','Sylvan Grove','253-412-6638','3/14/1996',2005010352,5.28,90.65,30),(427,'Nichole Kirby','Calhoun','429-193-0794','6/25/1984',6316580880,4.48,8.77,74),(428,'Dawn Jones','Neelyville','371-750-3423','3/22/1980',708627602,5.18,69.16,71),(429,'Anita Jones','Scott Lake','647-634-2643','5/6/2003',4189048849,4.87,29.53,67),(430,'Sara Clark','Longwood','567-544-4497','6/11/2019',3309508317,7.1,25.61,58),(431,'Brendan May','Edison','191-683-3752','2/10/2015',327898224,6.91,105.36,79),(432,'Gregory Hill','Bethany Beach','474-804-1243','8/28/2002',2803296382,7.09,84.02,35),(433,'Roberto Hernandez','White','636-343-0966','1/10/2013',3347456619,7.24,34.87,71),(434,'Anthony Griffin','Strawberry Point','546-770-4532','4/15/2009',3880867806,5.85,49.82,20),(435,'Ashley Montoya','Unity','715-855-3081','5/26/2016',634427022,5.51,47.54,54),(436,'Jeffrey Cannon MD','Death Valley','797-117-6064','4/23/1971',5127672115,7.34,63.87,48),(437,'Matthew Thompson','Winn','955-612-1303','8/5/2004',9182202240,4.85,109.16,23),(438,'Barbara Robertson','Drexel','705-251-1239','9/2/1986',9099497706,7.25,87.92,40),(439,'Austin Gonzales','South Chicago Heights','132-376-2393','11/22/1983',8237735578,4.36,55.83,79),(440,'Sonya Holden','North East','401-808-3061','1/18/1987',5534356705,5.04,58.87,44),(441,'Jill Munoz','Tillicum','839-113-8923','2/14/2001',1010697007,6.95,45.01,22),(442,'Peter Peters','Roane','491-949-2897','11/3/1999',7066226144,7.43,79.56,30),(443,'Gerald Carter','Larchwood','999-106-1923','8/26/2020',3216882456,7.47,109.47,35),(444,'Christian Ballard','King','373-700-1074','9/23/2019',4471899039,5.72,109.94,22),(445,'Ricky Goodman','Callicoon','409-566-3898','5/3/2016',8586741035,6.67,72.13,33),(446,'Tommy Navarro','Balcones Heights','360-261-6015','2/19/2020',3301937657,7.43,16.21,71),(447,'Kara Acevedo','Korona','606-870-3897','4/20/1990',6837100418,6.16,28.83,24),(448,'Heather Waters','Goodwine','242-784-1359','3/14/2019',2504373260,6.29,28.02,31),(449,'Michael Wright','Aladdin','721-005-7057','10/23/1973',7448637771,5.84,14.53,38),(450,'Margaret Hogan','Lysite','140-497-2174','5/29/2005',3376631612,6.98,81.24,26),(451,'Jillian Flores','Qulin','782-624-7679','4/25/2002',1299940561,7.73,12.34,12),(452,'Linda Watkins','Mammoth','569-027-9119','12/23/1986',3991892100,5.09,20.6,37),(453,'Jesus Gilbert','Ekron','472-538-1225','2/13/1985',2336217501,6.72,16.92,78),(454,'Ms. Denise Mcintyre','Frostburg','236-502-5581','1/26/2013',8302347206,6.83,92.67,24),(455,'Sydney Stephens','Pottsboro','237-003-8919','6/19/2014',5872087982,6.33,84.86,31),(456,'Maurice Vaughn','Tulalip','240-398-5772','5/7/1991',6017770377,5.47,98.03,33),(457,'Aaron Nunez','Wolf Point','255-435-2523','4/29/2006',9913457275,7.74,29.45,64),(458,'Heather Barr','Brookside Village','755-717-0719','12/22/1986',1589106054,5.11,96.39,47),(459,'Kaitlyn Foster','Tarlton','621-907-3206','9/30/1993',7503562618,5.79,110.18,51),(460,'John Cooper','Philmont','755-771-3643','2/7/1974',5682745668,7.61,100.17,54),(461,'Emily Mason','Byhalia','786-949-4274','10/9/1976',5671476381,5.14,104.4,50),(462,'Casey Kelly','Semmes','631-712-0339','8/19/1984',7181082319,4.05,37.87,44),(463,'Alexis Allen','Olustee','213-496-7117','9/4/1983',5154553485,7.73,60.6,61),(464,'Adrian Woods','Rangerville','660-885-8860','12/8/2002',6375134714,5.25,88.6,48),(465,'Wayne Myers','Owens Cross Roads','285-788-1009','12/20/1973',5668969437,5.82,84.31,52),(466,'Jesse Hall','Destrehan','372-692-1014','12/6/1994',3598678713,4,78.17,15),(467,'Gloria Adams','Sheldon Point','977-231-0628','3/4/1984',5667670983,5.73,74.15,45),(468,'Nicole Dawson','Otterbein','873-541-6296','3/18/1988',3685613017,7.68,82.2,71),(469,'Elizabeth Townsend','Portland Mills','996-304-5929','10/13/1977',9718989043,4.51,20.2,66),(470,'Jacob Fisher','McAlester','452-986-1223','2/20/1997',936502663,4.76,18.82,74),(471,'Jeffrey Porter','Griffin','927-581-9743','6/19/1974',6246067989,4.97,70.42,18),(472,'Katie Martin','Clara City','254-830-4204','2/5/1977',7323867012,5.03,36.64,46),(473,'Angela Simpson','Dewey','382-798-8154','3/19/1973',6192699919,5.47,10.41,57),(474,'Connie Preston','Manahawkin','774-203-2601','7/31/2000',2165533552,5.37,24.15,51),(475,'Matthew Schultz','Coon Rapids','633-342-0274','2/23/1971',2091746779,4.91,14.21,68),(476,'Tina Rhodes','Wolverine','609-723-7526','8/15/1980',5260914897,6.16,103.43,65),(477,'Michael Soto','Tannersville','228-792-6161','3/22/2008',3732661850,4.62,109.48,56),(478,'Cheryl Thomas','East Pittsburgh','109-638-7354','7/15/1992',6220746202,7.55,87.32,19),(479,'Stephanie Curtis','Braxton','451-598-5670','12/8/2014',6222326125,6.05,109.1,53),(480,'Eric Thomas','Ossipee','621-280-1440','3/27/1991',6895330779,7.13,37.45,55),(481,'Tony Chambers','Princes Lakes','631-129-9201','3/19/1982',6443949084,4.97,77.18,42),(482,'John Kim','Piggott','381-384-7954','10/7/1995',6337018362,7.42,16.56,61),(483,'Samantha Wright','Marbledale','670-151-6262','1/28/1983',8732356122,6.85,5.76,57),(484,'Heather Murphy','Tarnov','786-851-6693','4/8/2002',1185110649,4.9,72.65,38),(485,'Andrew Walter','Flippen','176-812-1414','3/7/1975',9243709635,6.71,91.19,23),(486,'Dr. Tracy Allen','Holtsville','886-106-0621','10/13/1970',8862469455,7.3,115.45,12),(487,'David Dixon','Round Top','749-343-1937','9/27/1986',6856221824,6,76.38,78),(488,'Christopher Lewis','Minor Lane Heights','974-893-6773','4/16/2014',15806902,7.87,107.27,55),(489,'Ashley Leonard','Kress','180-148-4971','4/5/2014',2252879983,4.44,111.9,42),(490,'Jacqueline Odonnell','Dravosburg','626-234-8315','9/29/1981',3705535131,5.4,30.97,29),(491,'Kimberly Collier','Cleaton','878-887-6220','12/22/1994',4983506831,7.52,105.18,21),(492,'Christina Patterson','Pelion','206-234-4135','5/3/1987',7228870820,5.62,16.51,54),(493,'Isaiah Williams','Meadowbrook Farm','286-765-3088','9/1/1983',6631454658,6.78,49.86,77),(494,'Cynthia Horne','Paden','244-263-6576','4/13/1979',7795096027,6.11,107.68,72),(495,'Anna Houston','North Canton','502-993-7554','10/28/1994',6304179744,6.58,11.74,76),(496,'Kaitlyn Rice','Elmsford','845-359-7746','6/15/1997',6357041688,5.06,55.7,17),(497,'Lacey Pena','Goodrich','648-287-7304','7/14/2021',3232873872,5.83,25.98,45),(498,'Aaron Scott','Chicopee','926-676-0156','11/8/1977',7084121050,6.13,103.57,62),(499,'Kendra Evans','Gladbrook','426-562-1998','5/9/2006',8395156144,7.22,53.73,71);
/*!40000 ALTER TABLE `patient_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:05:49
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
-- Table structure for table `patient_history`
--

DROP TABLE IF EXISTS `patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `appointment_id` int NOT NULL,
  `weight` int NOT NULL,
  `height` varchar(10) NOT NULL,
  `blood_pressure` varchar(10) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `doc_notes` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `patient_id_idx` (`patient_id`),
  KEY `appointment_id_idx` (`appointment_id`),
  CONSTRAINT `appointment_id_fk` FOREIGN KEY (`id`) REFERENCES `appointment` (`id`),
  CONSTRAINT `patient_id_fk` FOREIGN KEY (`id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_history`
--

LOCK TABLES `patient_history` WRITE;
/*!40000 ALTER TABLE `patient_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:05:48
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
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `drug_id` int NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `trx` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  CONSTRAINT `appointment_id_fkk` FOREIGN KEY (`id`) REFERENCES `appointment` (`id`),
  CONSTRAINT `drug_id_fk` FOREIGN KEY (`id`) REFERENCES `drugs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 18:05:49
