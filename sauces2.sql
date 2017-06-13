-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: hotsauces
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
-- Current Database: `hotsauces`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotsauces` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hotsauces`;

--
-- Table structure for table `heat`
--

DROP TABLE IF EXISTS `heat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heat` (
  `heatID` int(11) NOT NULL,
  `heatDesc` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`heatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heat`
--

LOCK TABLES `heat` WRITE;
/*!40000 ALTER TABLE `heat` DISABLE KEYS */;
INSERT INTO `heat` VALUES (1,'Mild'),(2,'Medium'),(3,'Hot'),(4,'Extreme');
/*!40000 ALTER TABLE `heat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sauces`
--

DROP TABLE IF EXISTS `sauces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sauces` (
  `sauceID` int(11) NOT NULL AUTO_INCREMENT,
  `sauceName` varchar(25) DEFAULT NULL,
  `sauceDescription` varchar(255) DEFAULT NULL,
  `heatID` int(11) DEFAULT NULL,
  PRIMARY KEY (`sauceID`),
  KEY `heatID` (`heatID`),
  CONSTRAINT `sauces_ibfk_1` FOREIGN KEY (`heatID`) REFERENCES `heat` (`heatID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sauces`
--

LOCK TABLES `sauces` WRITE;
/*!40000 ALTER TABLE `sauces` DISABLE KEYS */;
INSERT INTO `sauces` VALUES (1,'Garlic Herb','Mild and savory',1),(2,'Garlic Pepper','Savory, stronger',1),(3,'Smoky Bourbon','Untasted',2),(4,'Chipotle Pepper','Smoky and heavy',3),(5,'Habanero Whiskey','Personal heat limit',3),(6,'Ghost Pepper','Well over limit, best diluted',4);
/*!40000 ALTER TABLE `sauces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-13 11:41:14
