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
-- Table structure for table `tagcontent`
--

DROP TABLE IF EXISTS `tagcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tagcontent` (
  `tagContentID` int NOT NULL AUTO_INCREMENT,
  `tagContent` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`tagContentID`)
) ENGINE=InnoDB AUTO_INCREMENT=558 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagcontent`
--

LOCK TABLES `tagcontent` WRITE;
/*!40000 ALTER TABLE `tagcontent` DISABLE KEYS */;
INSERT INTO `tagcontent` VALUES (376,'html'),(377,'css'),(378,'javascript'),(379,'sql'),(380,'python'),(381,'php'),(382,'jquery'),(383,'java'),(384,'w3.css'),(385,'color picker'),(386,'bootstrap'),(387,'exercises'),(388,'web templates'),(389,'how to section'),(390,'web certificates'),(391,'html and css'),(392,'xml tutorials'),(393,'programming'),(394,'server side'),(395,'web building'),(396,'xml'),(397,'character sets'),(398,'quizzes'),(399,'certificates'),(400,'html example:'),(401,'css example:'),(402,'javascript example:'),(403,'sql example:'),(404,'get certified in html, css, and javascript'),(405,'w3schools online web tutorials'),(406,'latest'),(407,'in magazine'),(408,'podcasts'),(409,'a focus on race and foreign policy'),(410,'special insights on post-pandemic world'),(411,'voices'),(412,'trending'),(413,'visual stories'),(414,'follow fp'),(415,'u.s. preparing to suspend extradition treaty with hong kong'),(416,'qanon’s madness is turning canadians into potential assassins'),(417,'pacifists are vulnerable to fascism’s whispers'),(418,'the anti-american century'),(419,'modi’s slide toward autocracy'),(420,'the pandemic could be crisis liberalism needed'),(421,'washington needs to get to know jordan’s next king'),(422,'crises only sometimes lead to change. here’s why.'),(423,'welcome to post-leader world'),(424,'margrethe vestager is still coming for big tech'),(425,'welcome back to kissinger’s world'),(426,'global data governance'),(427,'be fp insider'),(428,'i spy'),(429,'don\'t touch your face'),(430,'heat of moment'),(431,'xu zhangrun was china’s loyal opposition. now, he’s in jail.'),(432,'the eu needs new balkan strategy'),(433,'after decades of wrong predictions, oil may finally be peaking'),(434,'journalism has class problem, too'),(435,'after signing anti-terrorism law, duterte names his targets'),(436,'ice restrictions on international students ‘self-inflicted wound’'),(437,'the curious case of ‘russian lives matter’'),(438,'why india and russia are going to stay friends'),(439,'angela merkel is back'),(440,'u.s. coronavirus cases spike, with india close behind'),(441,'decolonize state department'),(442,'why is mainstream international relations blind to racism?'),(443,'when did racism become solely domestic issue?'),(444,'seeing race in pandemic'),(445,'why race matters in international relations'),(446,'the future of travel'),(447,'cities in future'),(448,'the fate of economy'),(449,'the future of state'),(450,'the foreign-policy blob is structurally racist'),(451,'the post-pandemic economy could be green and clean—but not with these plans'),(452,'erdogan is libya’s man without plan'),(453,'the pandemic should kill regime change forever'),(454,'the chinese communist party wants han baby boom that isn’t coming'),(455,'everyone misunderstands reason for u.s.-china cold war'),(456,'the week in world photos'),(457,'the midwives on front lines'),(458,'foreign policy – global magazine of news and ideas'),(459,'asal technologies'),(460,'node.js tutorial'),(461,'node.js mysql'),(462,'node.js mongodb'),(463,'raspberry pi'),(464,'node.js reference'),(465,'learning by examples'),(466,'examples running in command line interface'),(467,'download node.js'),(468,'report error'),(469,'thank you for helping us!'),(470,'example'),(471,'html certification'),(472,'certifications'),(473,'html certificate'),(474,'the html developer certificate'),(475,'prerequisites'),(476,'recommended studies and training'),(477,'the html exam'),(478,'your supervisor'),(479,'w3schools certified image'),(480,'bootstrap certification'),(481,'bootstrap certificate'),(482,'the bootstrap developer certificate'),(483,'the bootstrap exam'),(484,'java quiz'),(485,'java tutorial'),(486,'java methods'),(487,'java classes'),(488,'java file handling'),(489,'java how to'),(490,'java reference'),(491,'java examples'),(492,'the test'),(493,'count your score'),(494,'start quiz'),(495,'w3schools\' online certification'),(496,'icons tutorial'),(497,'font awesome 5'),(498,'font awesome 4'),(499,'google'),(500,'how to add icons'),(501,'font awesome 5 icons'),(502,'font awesome 4 icons'),(503,'bootstrap 3 icons'),(504,'google icons'),(505,'my first css example'),(506,'save your code'),(507,'your code could not be saved'),(508,'your code been saved'),(509,'save to google drive'),(510,'open from google drive'),(511,'report problem:'),(512,'tryit editor v3.6'),(513,'html examples'),(514,'html tutorial'),(515,'html forms'),(516,'html graphics'),(517,'html media'),(518,'html apis'),(519,'html references'),(520,'html basic'),(521,'html attributes'),(522,'html headings'),(523,'html paragraphs'),(524,'html styles'),(525,'html text formatting'),(526,'html quotations and citations'),(527,'html comments'),(528,'html css'),(529,'html links'),(530,'html images'),(531,'html tables'),(532,'html lists'),(533,'html block and inline elements'),(534,'html classes'),(535,'html id'),(536,'html layout'),(537,'html iframe'),(538,'html head elements'),(539,'html scripts'),(540,'html computercode elements'),(541,'html form elements'),(542,'html input types'),(543,'html input attributes'),(544,'html canvas graphics'),(545,'html svg graphics'),(546,'html geolocation'),(547,'html local storage'),(548,'more html examples'),(549,'html color picker'),(550,'colors tutorial'),(551,'color schemes'),(552,'color standards'),(553,'rgb (red, green, blue)'),(554,'pick color:'),(555,'or enter color:'),(556,'or use html5:'),(557,'selected color:');
/*!40000 ALTER TABLE `tagcontent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-14  5:38:56
