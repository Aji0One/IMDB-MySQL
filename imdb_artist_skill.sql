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
-- Table structure for table `artist_skill`
--

DROP TABLE IF EXISTS `artist_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_skill` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Artist_Id` int DEFAULT NULL,
  `Skill_Id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Artist_Id` (`Artist_Id`),
  KEY `Skill_Id` (`Skill_Id`),
  CONSTRAINT `artist_skill_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `artist` (`Id`),
  CONSTRAINT `artist_skill_ibfk_2` FOREIGN KEY (`Skill_Id`) REFERENCES `skill` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_skill`
--

LOCK TABLES `artist_skill` WRITE;
/*!40000 ALTER TABLE `artist_skill` DISABLE KEYS */;
INSERT INTO `artist_skill` VALUES (1,1,2),(2,1,7),(3,2,2),(4,2,7),(5,3,2),(6,3,7),(7,4,2),(8,4,7),(9,5,2),(10,5,7),(11,6,1),(12,6,3),(13,7,1),(14,7,3),(15,8,1),(16,8,3),(17,8,2),(18,8,4),(19,8,5),(20,8,7),(21,9,1),(22,9,3),(23,10,1),(24,10,3),(25,10,4),(26,10,7),(27,11,3),(28,11,6),(29,11,7),(30,12,3),(31,12,6),(32,12,1),(33,13,3),(34,13,6),(35,14,3),(36,14,4),(37,15,3),(38,15,1),(39,15,7);
/*!40000 ALTER TABLE `artist_skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-06 11:18:35
