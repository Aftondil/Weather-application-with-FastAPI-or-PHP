-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db2427240
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather` (
  `description` varchar(100) DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `wind` float DEFAULT NULL,
  `weather_when` datetime DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `humidity` float DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
INSERT INTO `weather` VALUES ('Clouds',21,6,'2024-03-20 16:38:48','Tashkent',43,'03d'),('Rain',20.97,2.06,'2024-03-20 14:20:55','Tashkent',43,'10d'),('Haze',18.97,5.14,'2024-03-20 14:21:00','Bukhara',55,'50d'),('Rain',20.97,2.06,'2024-03-20 14:21:00','Tashkent',43,'10d'),('Rain',20.97,2.06,'2024-03-20 14:21:01','Tashkent',43,'10d'),('Rain',13,0.45,'2024-03-20 14:21:02','Wolverhampton',89,'10d'),('Rain',20.97,2.06,'2024-03-20 14:21:03','Tashkent',43,'10d'),('Rain',20.97,2.06,'2024-03-20 14:21:09','Tashkent',43,'10d'),('Rain',20.97,2.06,'2024-03-20 14:23:25','Tashkent',43,'10d'),('Haze',18.97,5.14,'2024-03-20 14:23:52','Bukhara',55,'50d'),('Rain',20.97,2.06,'2024-03-20 14:25:52','Tashkent',43,'10d'),('Rain',12.97,0.89,'2024-03-20 14:27:36','Wolverhampton',89,'10d'),('Haze',18.97,5.14,'2024-03-20 14:27:41','Bukhara',55,'50d'),('Rain',12.97,0.89,'2024-03-20 14:34:25','Wolverhampton',89,'10d'),('Haze',18.97,5.14,'2024-03-20 14:34:30','Bukhara',55,'50d'),('Rain',20.97,2.06,'2024-03-20 14:34:43','Tashkent',43,'10d'),('Rain',17.97,6.17,'2024-03-20 18:25:42','Tashkent',48,'10n'),('Rain',17.97,6.17,'2024-03-20 18:25:50','Tashkent',48,'10n'),('Clouds',17.97,6.17,'2024-03-20 18:28:12','Tashkent',48,'03n'),('Clouds',17.97,6.17,'2024-03-20 18:28:39','Tashkent',48,'03n'),('Mist',15.97,5.14,'2024-03-20 18:29:22','Bukhara',100,'50n'),('Mist',15.97,5.14,'2024-03-20 18:30:54','Bukhara',100,'50n'),('Mist',15.97,5.14,'2024-03-20 18:31:05','Bukhara',100,'50n'),('Mist',15.97,5.14,'2024-03-20 18:32:24','Bukhara',100,'50n'),('Mist',15.97,5.14,'2024-03-20 18:32:28','Bukhara',100,'50n'),('Mist',15.97,5.14,'2024-03-20 18:33:33','Bukhara',100,'50n'),('Clouds',2.17,1.13,'2024-03-20 18:38:43','Moscow',89,'04n'),('Clouds',17.68,7.2,'2024-03-20 18:38:53','Samarkand',59,'04n'),('Clouds',17.68,7.2,'2024-03-20 19:03:17','Samarkand',59,'04n'),('Clouds',15.62,3.13,'2024-03-20 19:08:11','London',67,'03d'),('Clouds',15.37,3.13,'2024-03-20 19:18:09','London',67,'03d'),('Clouds',15.33,3.13,'2024-03-20 23:25:37','London',68,'03n'),('Mist',15.97,5.14,'2024-03-20 23:26:01','Bukhara',94,'50n'),('Clouds',10.32,0.45,'2024-03-20 23:26:12','Wolverhampton',90,'04d'),('Mist',15.97,5.14,'2024-03-20 23:26:16','Bukhara',94,'50n'),('Clouds',16.97,4.12,'2024-03-20 23:26:23','Tashkent',55,'02n'),('Clouds',16.97,4.12,'2024-03-20 23:26:41','Tashkent',55,'02n'),('Clouds',10.3,0.45,'2024-03-20 23:36:19','Wolverhampton',90,'04n'),('Clouds',16.97,1.03,'2024-03-20 23:36:35','Tashkent',55,'02n'),('Clouds',10.3,0.45,'2024-03-20 23:37:37','Wolverhampton',90,'04n'),('Mist',14.97,4.12,'2024-03-20 23:37:39','Bukhara',100,'50n'),('Clouds',1.79,1.07,'2024-03-20 23:37:47','Moscow',88,'04n'),('Clouds',10.3,0.45,'2024-03-20 23:38:05','Wolverhampton',90,'04n'),('Clouds',1.79,1.07,'2024-03-20 23:38:08','Moscow',88,'04n'),('Mist',14.97,4.12,'2024-03-20 23:38:26','Bukhara',100,'50n'),('Clouds',7.09,2.84,'2024-03-21 10:51:03','Wolverhampton',96,'04n'),('Clouds',15.97,1.03,'2024-03-21 10:51:07','Tashkent',72,'04d'),('Clouds',-1.08,1.91,'2024-03-21 10:51:17','Moscow',97,'04d'),('Clouds',15.97,1.03,'2024-03-21 10:51:24','Tashkent',72,'04d'),('Clouds',-1.08,1.91,'2024-03-21 10:51:33','Moscow',97,'04d'),('Clouds',15.97,1.03,'2024-03-21 10:51:38','Tashkent',72,'04d'),('Clouds',15.97,4.12,'2024-03-21 12:06:42','Tashkent',72,'04d'),('Clouds',0.61,2.64,'2024-03-21 12:06:48','Moscow',100,'04d');
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-21 17:00:33
