-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: imdb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `movie_media`
--

DROP TABLE IF EXISTS `movie_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_media` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Movie_Id` int DEFAULT NULL,
  `Media_Id` int DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Movie_Id` (`Movie_Id`),
  KEY `Media_Id` (`Media_Id`),
  CONSTRAINT `movie_media_ibfk_1` FOREIGN KEY (`Movie_Id`) REFERENCES `movie` (`Id`),
  CONSTRAINT `movie_media_ibfk_2` FOREIGN KEY (`Media_Id`) REFERENCES `media` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_media`
--

LOCK TABLES `movie_media` WRITE;
/*!40000 ALTER TABLE `movie_media` DISABLE KEYS */;
INSERT INTO `movie_media` VALUES (1,1,1,'Video1','500 Mb'),(2,1,2,'Image1','0.5 Mb'),(3,1,5,'Graphics1','300 Mb'),(4,2,1,'Video2','350 Mb'),(5,2,2,'Image2','0.4 Mb'),(6,2,5,'Graphics2','150 Mb'),(7,2,6,'Music2','30 Mb'),(8,3,1,'Video3','650 Mb'),(9,3,2,'Image3','10 Mb'),(10,3,3,'Radio3','40 Mb'),(11,3,5,'Graphics3','450 Mb'),(12,3,6,'Music3','35 Mb'),(13,4,1,'Video4','400 Mb'),(14,4,2,'Image4','15 Mb'),(15,4,5,'Graphics4','250 Mb'),(16,4,6,'Music4','25 Mb'),(17,5,1,'Video5','450 Mb'),(18,5,2,'Image5','20 Mb'),(19,5,5,'Graphics5','300 Mb'),(20,5,6,'Music5','30 Mb'),(21,7,1,'Video7','450 Mb'),(22,7,2,'Image7','30 Mb'),(23,7,5,'Graphics7','350 Mb'),(24,7,6,'Music7','40 Mb'),(25,6,1,'Video6','300 Mb'),(26,6,2,'Image6','20 Mb'),(27,6,6,'Music6','35 Mb');
/*!40000 ALTER TABLE `movie_media` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-06 11:18:34
