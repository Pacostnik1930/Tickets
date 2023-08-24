-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: railway
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'Москва','Санкт-Петербург','2023-09-01','10:00:00'),(2,'Санкт-Петербург','Москва','2023-09-02','12:30:00'),(3,'Екатеринбург','Новосибирск','2023-09-03','15:45:00'),(4,'Казань','Самара','2023-09-04','08:15:00'),(5,'Ростов-на-Дону','Краснодар','2023-09-05','14:00:00'),(6,'Нижний Новгород','Самара','2023-10-01','10:12:00'),(7,'Таганрог','Москва','2023-09-10','12:40:00'),(8,'Тамбов','Кисловодск','2023-03-03','15:50:00'),(9,'Сочи','Минеральные воды','2023-09-08','08:17:00'),(10,'Ростов-на-Дону','Назрань','2023-09-09','14:04:00'),(11,'Калининград','Санкт-Петербург','2023-09-02','10:08:00'),(12,'Санкт-Петербург','Севастополь','2023-09-06','12:38:00'),(13,'Пермь','Новосибирск','2023-07-03','15:47:00'),(14,'Казань','Хабаровск','2023-05-04','08:17:00'),(15,'Ростов-на-Дону','Анапа','2023-09-15','14:02:00'),(16,'Москва','Минск','2023-09-01','10:20:00'),(17,'Санкт-Петербург','Новосибирск','2023-09-02','12:33:00'),(18,'Екатеринбург','Саратов','2023-06-03','15:47:00'),(19,'Курган','Самара','2023-09-04','08:13:00'),(20,'Ростов-на-Дону','Адлер','2023-09-05','14:10:00');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24 22:38:05
