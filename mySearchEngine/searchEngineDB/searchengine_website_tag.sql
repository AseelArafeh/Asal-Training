-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: searchengine
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `website_tag`
--

DROP TABLE IF EXISTS `website_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_tag` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `websiteID` int DEFAULT NULL,
  `tagContentID` int DEFAULT NULL,
  `tagID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `tagContentID_idx` (`tagContentID`),
  KEY `website_ID_idx` (`websiteID`),
  KEY `tagID_idx` (`tagID`),
  CONSTRAINT `tagContentID` FOREIGN KEY (`tagContentID`) REFERENCES `tagcontent` (`tagContentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tagID` FOREIGN KEY (`tagID`) REFERENCES `htmltag` (`tagID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `website_ID` FOREIGN KEY (`websiteID`) REFERENCES `website` (`websiteID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_tag`
--

LOCK TABLES `website_tag` WRITE;
/*!40000 ALTER TABLE `website_tag` DISABLE KEYS */;
INSERT INTO `website_tag` VALUES (3,1,2,2),(4,1,3,2),(5,1,1,1),(6,1,2,2),(7,1,3,2),(8,1,4,3),(9,1,5,3),(10,1,6,3),(11,1,7,3),(12,1,8,3),(13,1,9,3),(14,1,10,4),(15,1,1,1),(16,1,2,2),(17,1,3,2),(18,1,4,3),(19,1,5,3),(20,1,6,3),(21,1,7,3),(22,1,8,3),(23,1,9,3),(24,1,10,4),(25,1,1,1);
/*!40000 ALTER TABLE `website_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-13 21:11:46
