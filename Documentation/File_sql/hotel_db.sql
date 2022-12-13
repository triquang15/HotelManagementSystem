CREATE DATABASE  IF NOT EXISTS `hotel_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_management`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_management
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `numOfPeople` varchar(10) DEFAULT NULL,
  `paymentType` varchar(10) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `roomType` varchar(10) DEFAULT NULL,
  `roomNumber` varchar(10) DEFAULT NULL,
  `startDate` varchar(10) DEFAULT NULL,
  `endDate` varchar(10) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `services` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Obama','obama@gmail.com','LonDon','0123456789','2','CASH','5','A','333','12-12-2022','12-12-2022','160$','10$','170$'),(2,'Neymar','natmar@gmail.com','Brazil','0123456789','4','PAYPAL','24','A','333','2022-12-13','2022-12-22','600$','10$','610$'),(3,'Join Thomas','nJoin_thomas@gmail.com','Lon Don','0123456789','4','PAYPAL','3 days','A','553','2022-12-13','2022-12-26','600$','100$','700$');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `roomType` varchar(5) DEFAULT NULL,
  `roomNumber` varchar(5) DEFAULT NULL,
  `numberOfPeople` varchar(5) DEFAULT NULL,
  `numberOfFloor` varchar(5) DEFAULT NULL,
  `roomPhone` varchar(10) DEFAULT NULL,
  `roomPrice` varchar(10) DEFAULT NULL,
  `roomStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'B','25','5','12','123654','100 $','Available'),(2,'A','12','3','9','456789','999$','Available'),(3,'A','5','6','2','123456','550 $','Busy'),(4,'C','88','4','3','123678','490 $','Busy'),(5,'A','3','5','4','123456','99 $','Busy'),(6,'D','5','6','45','123456','199 $','Busy'),(7,'C','78','7','65','123456','99 $','Busy'),(8,'K','67','8','4','123456','959 $','Busy'),(9,'J','56','9','54','123456','990 $','Busy'),(10,'H','45','6','5','123456','949 $','Busy'),(11,'R','67','5','3','123456','979 $','Busy'),(12,'E','98','4','35','123456','99 $','Busy');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `fullName` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `salary` varchar(10) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `startDate` varchar(45) DEFAULT NULL,
  `userType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','12345678','Mr Admin','0123456789','1500$','Vietnamese','2022-12-12','ROLE_ADMIN'),(2,'triquang95','12345678','Tri Quang','0987774191','1200$','Ho Chi Minh','2022-12-12','ROLE_USER'),(3,'ronaldo','12345678','Cris Ronadol','1245346478','500$','France ','2022-12-12','ROLE_USER'),(6,'LukaMoric','12345678','Luka Moric','1234567890','2000$','Croatia','2022-12-12','ROLE_USER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 18:04:49
