-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: isa
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `weather_details`
--

DROP TABLE IF EXISTS `weather_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_details` (
  `weather_description` varchar(25) DEFAULT NULL,
  `weather_temperature` float DEFAULT NULL,
  `weather_wind` float DEFAULT NULL,
  `weather_pressure` float DEFAULT NULL,
  `weather_humidity` float DEFAULT NULL,
  `weather_when` datetime DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `weather_feelslike` float DEFAULT NULL,
  `weather_icon` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_details`
--

LOCK TABLES `weather_details` WRITE;
/*!40000 ALTER TABLE `weather_details` DISABLE KEYS */;
INSERT INTO `weather_details` VALUES ('clear sky',14.33,2.7,1023,74,'2022-08-11 07:23:30','Stockton-on-Tees',126,13.75,'01d'),('clear sky',14.33,2.7,1023,74,'2022-08-11 07:25:37','Stockton-on-Tees',127,13.75,'01d'),('clear sky',14.33,2.7,1023,74,'2022-08-11 07:25:37','Stockton-on-Tees',128,13.75,'01d'),('clear sky',14.33,2.7,1023,74,'2022-08-11 07:29:00','Stockton-on-Tees',129,13.75,'01d'),('clear sky',14.33,2.7,1023,74,'2022-08-11 07:29:05','Stockton-on-Tees',130,13.75,'01d'),('clear sky',15.06,2.41,1024,77,'2022-08-11 07:30:29','Stockton-on-Tees',131,14.63,'01d'),('clear sky',15.06,2.41,1024,77,'2022-08-11 07:35:28','Stockton-on-Tees',132,14.63,'01d'),('clear sky',15.06,2.41,1024,77,'2022-08-11 07:36:13','Stockton-on-Tees',133,14.63,'01d'),('clear sky',15.06,2.41,1024,77,'2022-08-11 07:38:08','Stockton-on-Tees',134,14.63,'01d'),('clear sky',15.06,2.41,1024,77,'2022-08-11 07:38:24','Stockton-on-Tees',135,14.63,'01d'),('clear sky',15.06,2.41,1024,77,'2022-08-11 07:40:00','Stockton-on-Tees',136,14.63,'01d'),('clear sky',14.8,1.54,1024,83,'2022-08-11 07:43:02','Stockton-on-Tees',137,14.5,'01d'),('clear sky',14.8,1.54,1024,83,'2022-08-11 07:43:02','Stockton-on-Tees',138,14.5,'01d'),('clear sky',14.8,1.54,1024,83,'2022-08-11 07:49:55','Stockton-on-Tees',139,14.5,'01d'),('clear sky',14.8,1.54,1024,83,'2022-08-11 07:49:56','Stockton-on-Tees',140,14.5,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:56:43','Stockton-on-Tees',141,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:56:44','Stockton-on-Tees',142,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:57:07','Stockton-on-Tees',143,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:57:08','Stockton-on-Tees',144,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:58:01','Stockton-on-Tees',145,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:58:02','Stockton-on-Tees',146,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:59:19','Stockton-on-Tees',147,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:59:19','Stockton-on-Tees',148,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:59:43','Stockton-on-Tees',149,14.33,'01d'),('clear sky',14.74,1.54,1024,79,'2022-08-11 07:59:44','Stockton-on-Tees',150,14.33,'01d'),('clear sky',16.16,2.06,1024,79,'2022-08-11 08:39:04','Stockton-on-Tees',151,15.89,'01d'),('clear sky',16.16,2.06,1024,79,'2022-08-11 08:40:05','Stockton-on-Tees',152,15.89,'01d'),('clear sky',16.16,2.06,1024,79,'2022-08-11 08:40:33','Stockton-on-Tees',153,15.89,'01d'),('clear sky',16.65,2.06,1024,80,'2022-08-11 08:46:21','Stockton-on-Tees',154,16.46,'01d'),('clear sky',16.65,2.06,1024,80,'2022-08-11 08:46:29','Stockton-on-Tees',155,16.46,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:06:46','Stockton-on-Tees',156,21.02,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:07:01','Stockton-on-Tees',157,21.02,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:07:53','Stockton-on-Tees',158,21.02,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:08:02','Stockton-on-Tees',159,21.02,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:08:48','Stockton-on-Tees',160,21.02,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:09:14','Stockton-on-Tees',161,21.02,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:09:59','Stockton-on-Tees',162,21.02,'01d'),('clear sky',21.25,3.09,1023,61,'2022-08-11 14:10:31','Stockton-on-Tees',163,21.02,'01d'),('clear sky',22.38,3.09,1023,57,'2022-08-11 14:17:06','Stockton-on-Tees',164,22.16,'01d'),('clear sky',22.38,3.09,1023,57,'2022-08-11 14:26:32','Stockton-on-Tees',165,22.16,'01d'),('clear sky',22.77,3.09,1023,55,'2022-08-11 14:32:36','Stockton-on-Tees',166,22.54,'01d');
/*!40000 ALTER TABLE `weather_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-11 20:17:39
