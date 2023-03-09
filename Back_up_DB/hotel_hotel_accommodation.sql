-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `hotel_accommodation`
--

DROP TABLE IF EXISTS `hotel_accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_accommodation` (
  `accommodation_id` int NOT NULL,
  `check_in_date` timestamp(6) NULL DEFAULT NULL,
  `check_out_date` timestamp(6) NULL DEFAULT NULL,
  `persons_number` varchar(2) DEFAULT NULL,
  `hotel_room_id` int DEFAULT NULL,
  `guest_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`accommodation_id`),
  KEY `hotel_room_id` (`hotel_room_id`),
  CONSTRAINT `hotel_accommodation_ibfk_1` FOREIGN KEY (`hotel_room_id`) REFERENCES `hotel_room` (`hotel_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_accommodation`
--

LOCK TABLES `hotel_accommodation` WRITE;
/*!40000 ALTER TABLE `hotel_accommodation` DISABLE KEYS */;
INSERT INTO `hotel_accommodation` VALUES (1,'2013-11-10 21:00:00.000000','2013-11-12 21:00:00.000000','2',2,'Snegireva Viktoriya Sergeevna'),(2,'2013-11-10 21:00:00.000000','2013-11-14 21:00:00.000000','1',1,'Chin Yuriy Alekseevich'),(3,'2014-01-04 21:00:00.000000','2014-01-06 21:00:00.000000','1',3,'Gubin Oleg Nikolaevich'),(4,'2014-02-06 21:00:00.000000','2014-02-09 21:00:00.000000','2',8,'Nyuh Inna Vladimirovna'),(5,'2014-03-22 21:00:00.000000','2014-03-23 21:00:00.000000','1',1,'Golovina Yuliya Vasil\'evna');
/*!40000 ALTER TABLE `hotel_accommodation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10  1:29:27
