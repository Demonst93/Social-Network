-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: social_network
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `osoba`
--

DROP TABLE IF EXISTS `osoba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `osoba` (
  `osb_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `osb_ime` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `osb_prezime` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `osb_godine` int(10) unsigned DEFAULT NULL,
  `osb_pol` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `prs_friends` varchar(45) COLLATE utf8_slovenian_ci DEFAULT NULL,
  PRIMARY KEY (`osb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `osoba`
--

LOCK TABLES `osoba` WRITE;
/*!40000 ALTER TABLE `osoba` DISABLE KEYS */;
INSERT INTO `osoba` VALUES (1,'Paul','Crowe',28,'male','2'),(2,'Rob','Fritz',23,'male','1,3'),(3,'Ben','O\'Carolan',NULL,'male','2,4,5,7'),(4,'Victor',NULL,28,'male','3'),(5,'Peter','Mac',29,'male','3,6,11,10,7'),(6,'John','Barry',18,'male','5'),(7,'Sarah','Lane',30,'female','3,5,20,12,18'),(8,'Susan','Downe',28,'female','7'),(9,'Jack','Stam',28,'male','12'),(10,'Amy','Lane',24,'female','5,11'),(11,'Sandra','Phelan',28,'female','5,10,19,20'),(12,'Laura','Murphy',33,'female','7,9,13,20'),(13,'Lisa','Daly',28,'female','12,14,20'),(14,'Mark','Johnson',28,'male','13,15'),(15,'Seamus','Crowe',24,'male','14'),(16,'Daren','Slater',28,'male','18,20'),(17,'Dara','Zoltan',48,'male','18,20'),(18,'Marie','D',28,'female','17'),(19,'Catriona','Long',28,'female','11,20'),(20,'Katy','Couch',28,'female','7,11,12,13,16,17,19');
/*!40000 ALTER TABLE `osoba` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-21  0:31:23
