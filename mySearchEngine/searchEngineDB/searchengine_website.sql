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
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website` (
  `websiteID` int NOT NULL AUTO_INCREMENT,
  `websiteURL` varchar(2500) NOT NULL,
  `hitsNumber` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  PRIMARY KEY (`websiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
INSERT INTO `website` VALUES (1,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1',NULL,NULL),(2,'',NULL,NULL),(3,'https://www.practiceselenium.com/menu.html',NULL,NULL),(4,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Account/Login',NULL,NULL),(5,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Question/Ask',NULL,NULL),(6,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1?CommentID=comment_613',NULL,NULL),(7,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1?CommentID=comment_614',NULL,NULL),(8,'https://www.dotnetlovers.com/Profile/coolnikhilj22',NULL,NULL),(9,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=1&category=126',NULL,NULL),(10,'https://www.dotnetlovers.com/Profile/kiransitaram1',NULL,NULL),(11,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Home/AboutSite',NULL,NULL),(12,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?tags=21%2cPython&search=1',NULL,NULL),(13,'https://www.linkedin.com/profile/view?id=137119356',NULL,NULL),(14,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Home/Privacy',NULL,NULL),(15,'https://www.dotnetlovers.com/AttachedFiles/Crawlerusingpythoncodefiles_07228832-ecf8-45bd-aeb6-bb756b56d431.zip?ReturnUrl=https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1',NULL,NULL),(16,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=1&category=110',NULL,NULL),(17,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=1&category=121',NULL,NULL),(18,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Home/ContactMe',NULL,NULL),(19,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=1',NULL,NULL),(20,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=2&category=110',NULL,NULL),(21,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=1&category=3',NULL,NULL),(22,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Article/Submit',NULL,NULL),(23,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?tags=55%2cPython+3&search=1',NULL,NULL),(24,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Home/AboutMe',NULL,NULL),(25,'https://www.facebook.com/Dotnet.Lovers.india',NULL,NULL),(26,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Home/WriteForUs',NULL,NULL),(27,'https://plus.google.com/u/0/b/102755767565422654106/102755767565422654106/posts',NULL,NULL),(28,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Article/UploadDocuments',NULL,NULL),(29,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=1&category=123',NULL,NULL),(30,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?category=126&search=1',NULL,NULL),(31,'https://www.dotnetlovers.com/article/203/implementing-crawler-using-python--search-engine-implementation-part-1/Search/Index?search=2',NULL,NULL);
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
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
