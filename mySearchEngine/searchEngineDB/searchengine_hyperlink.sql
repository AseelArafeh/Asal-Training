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
-- Table structure for table `hyperlink`
--

DROP TABLE IF EXISTS `hyperlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hyperlink` (
  `hyperLinkID` int DEFAULT NULL,
  `fromWebsiteID` int NOT NULL,
  `toWebsiteID` int NOT NULL,
  PRIMARY KEY (`fromWebsiteID`,`toWebsiteID`),
  KEY `fromWebsiteID_idx` (`fromWebsiteID`),
  KEY `toWebsiteID_idx` (`toWebsiteID`),
  CONSTRAINT `fromWebsiteID` FOREIGN KEY (`fromWebsiteID`) REFERENCES `website` (`websiteID`),
  CONSTRAINT `toWebsiteID` FOREIGN KEY (`toWebsiteID`) REFERENCES `website` (`websiteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hyperlink`
--

LOCK TABLES `hyperlink` WRITE;
/*!40000 ALTER TABLE `hyperlink` DISABLE KEYS */;
INSERT INTO `hyperlink` VALUES (NULL,1,2),(NULL,1,3),(NULL,1,4),(NULL,1,5),(NULL,1,6),(NULL,1,7),(NULL,1,8),(NULL,1,9),(NULL,1,10),(NULL,1,11),(NULL,1,12),(NULL,1,13),(NULL,1,14),(NULL,1,15),(NULL,1,16),(NULL,1,17),(NULL,1,18),(NULL,1,19),(NULL,1,20),(NULL,1,21),(NULL,1,22),(NULL,1,23),(NULL,1,24),(NULL,1,25),(NULL,1,26),(NULL,1,27),(NULL,1,28),(NULL,1,29),(NULL,1,30),(NULL,1,31);
/*!40000 ALTER TABLE `hyperlink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-13 21:11:47
