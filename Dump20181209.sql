CREATE DATABASE  IF NOT EXISTS `train` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `train`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: train
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `bookingId` varchar(45) NOT NULL,
  `isRoundTrip` tinyint(4) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `seatClass` varchar(45) DEFAULT NULL,
  `departureDate` varchar(45) DEFAULT NULL,
  `returnDate` varchar(45) DEFAULT NULL,
  `adults` varchar(45) DEFAULT NULL,
  `children` varchar(45) DEFAULT NULL,
  `seats` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `nationalId` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('1',1,'Dammam','Riyadh','All avalibale classes','26-04-2018','28-04-2018','1','0','[D2]','Khalid','akk','123','Enter your Email','Enter your Phone number'),('Alh-Dam882',1,'Alhassa','Dammam','Gold','04-11-2018','23-11-2018','1','0','[]','muneera','alhajri','1098765432','muneera@gmail.com','0557643213'),('Dam-Alh82',0,'Dammam','Alhassa','Gold','26-11-2018','','1','0','[A2]','muneera','Enter Last name','109876','muneera@gmail.com','0987653'),('Dam-Riy638',0,'Dammam','Riyadh','Gold','09-12-2018','','1','0','[A2]','muneera','alhajri','1097654321','muneera@gmail.com','0565432'),('Dam-Riy752',0,'Dammam','Riyadh','Gold','08-12-2018','','1','0','[A2]','reema','ibrahem','1087654321','reema@gmail.com','0567785412'),('Dam-Riy899',1,'Dammam','Riyadh','All avalibale classes','26-04-2018','28-04-2018','1','0','[D1]','Khalid','Harbi','LOL','Enter your Email','Enter your Phone number'),('Jed-Riy581',0,'Jeddah','Riyadh','All avalibale classes','26-04-2018','','1','0','[A1]','LOL','MM','LLOL','LAA','Enter your Phone number'),('Riy-Dam369',1,'Riyadh','Dammam','All avalibale classes','25-04-2018','26-04-2018','1','0','[B1]','Khalid','Aharbi','111','Enter your Email','Enter your Phone number'),('Riy-Dam922',0,'Riyadh','Dammam','Gold','01-12-2018','','1','0','[A1]','Muneera','alhajri','1087654321','Muneera@gmail.com','059876124');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `trip_id` varchar(45) NOT NULL,
  `national_id` int(10) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trip_id`,`national_id`),
  KEY `B1_idx` (`national_id`),
  CONSTRAINT `B1` FOREIGN KEY (`national_id`) REFERENCES `passenger` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!50001 DROP VIEW IF EXISTS `cities`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cities` AS SELECT 
 1 AS `destination`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver` (
  `D_ID` int(11) NOT NULL,
  `First_Name` varchar(45) DEFAULT NULL,
  `Last_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`D_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1002,'Ahmed','Ali'),(1003,'Sami','Khalid'),(1004,'Rami','Fahad'),(1005,'Osama','Sultan');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luggage`
--

DROP TABLE IF EXISTS `luggage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `luggage` (
  `national_id` int(10) NOT NULL,
  `l_id` varchar(45) NOT NULL,
  `weight` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`l_id`,`national_id`),
  KEY `L1_idx` (`national_id`),
  CONSTRAINT `L1` FOREIGN KEY (`national_id`) REFERENCES `passenger` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luggage`
--

LOCK TABLES `luggage` WRITE;
/*!40000 ALTER TABLE `luggage` DISABLE KEYS */;
/*!40000 ALTER TABLE `luggage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operates`
--

DROP TABLE IF EXISTS `operates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operates` (
  `D_ID` int(11) NOT NULL,
  `train_id` varchar(45) NOT NULL,
  PRIMARY KEY (`D_ID`,`train_id`),
  KEY `O2_idx` (`train_id`),
  CONSTRAINT `O1` FOREIGN KEY (`D_ID`) REFERENCES `driver` (`D_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `O2` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operates`
--

LOCK TABLES `operates` WRITE;
/*!40000 ALTER TABLE `operates` DISABLE KEYS */;
/*!40000 ALTER TABLE `operates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operator`
--

DROP TABLE IF EXISTS `operator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operator` (
  `username` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operator`
--

LOCK TABLES `operator` WRITE;
/*!40000 ALTER TABLE `operator` DISABLE KEYS */;
INSERT INTO `operator` VALUES ('khalid','123'),('muneera','1234');
/*!40000 ALTER TABLE `operator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passenger` (
  `national_id` int(10) NOT NULL,
  `train_id` varchar(45) DEFAULT NULL,
  `Fname` varchar(45) DEFAULT NULL,
  `Lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `seat_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`national_id`),
  KEY `P1_idx` (`train_id`),
  CONSTRAINT `P1` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger_phone`
--

DROP TABLE IF EXISTS `passenger_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passenger_phone` (
  `national_id` int(11) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`national_id`),
  CONSTRAINT `P2` FOREIGN KEY (`national_id`) REFERENCES `passenger` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_phone`
--

LOCK TABLES `passenger_phone` WRITE;
/*!40000 ALTER TABLE `passenger_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `passenger_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `station_no` int(11) NOT NULL,
  `loaction` varchar(45) DEFAULT NULL,
  `station_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`station_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (2000,'dammam','ACD'),(3000,'Riyadh','RD'),(4000,'alhassa','AH');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stops_at`
--

DROP TABLE IF EXISTS `stops_at`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stops_at` (
  `station_no` int(11) NOT NULL,
  `train_id` varchar(45) NOT NULL,
  PRIMARY KEY (`station_no`,`train_id`),
  KEY `S2_idx` (`train_id`),
  CONSTRAINT `S1` FOREIGN KEY (`station_no`) REFERENCES `station` (`station_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `S2` FOREIGN KEY (`train_id`) REFERENCES `train` (`train_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stops_at`
--

LOCK TABLES `stops_at` WRITE;
/*!40000 ALTER TABLE `stops_at` DISABLE KEYS */;
/*!40000 ALTER TABLE `stops_at` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `national_id` int(10) NOT NULL,
  `ticket_id` varchar(45) NOT NULL,
  PRIMARY KEY (`national_id`,`ticket_id`),
  CONSTRAINT `T1` FOREIGN KEY (`national_id`) REFERENCES `passenger` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train` (
  `train_id` varchar(20) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  `no_of_state` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`train_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES ('12AS','running','100'),('23AD','running','90'),('26AE','running','115'),('33CA','running','125'),('36AT','running','100'),('36SA','running','110'),('44AC','running','120'),('45AW','running','130'),('AF34','running','120'),('AQ45','running','80');
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip` (
  `train_id` varchar(45) DEFAULT NULL,
  `tripId` varchar(45) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  `departure` time DEFAULT NULL,
  `arrival` time DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `ticket_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tripId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (NULL,'12343','Stop','06:00:00','07:00:00','Alhassa','Riyadh',NULL),(NULL,'1324','Running','05:00:00','06:00:00','Riyadh','Dammam',NULL),('26AE','2176','Stop','08:00:00','09:00:00','Alhassa','Dammam','5432'),(NULL,'2265','Running','09:00:00','10:00:00','Abqiq','Riyadh',NULL),('23AD','2353','Running','05:00:00','06:00:00','Dammam','Riyadh','4321');
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `users`
--

DROP TABLE IF EXISTS `users`;
/*!50001 DROP VIEW IF EXISTS `users`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `users` AS SELECT 
 1 AS `national_id`,
 1 AS `Fname`,
 1 AS `Lname`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `users_info`
--

DROP TABLE IF EXISTS `users_info`;
/*!50001 DROP VIEW IF EXISTS `users_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `users_info` AS SELECT 
 1 AS `national_id`,
 1 AS `Fname`,
 1 AS `Lname`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'train'
--

--
-- Final view structure for view `cities`
--

/*!50001 DROP VIEW IF EXISTS `cities`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cities` AS select `booking`.`destination` AS `destination` from `booking` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users`
--

/*!50001 DROP VIEW IF EXISTS `users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users` AS select `passenger`.`national_id` AS `national_id`,`passenger`.`Fname` AS `Fname`,`passenger`.`Lname` AS `Lname`,`passenger`.`email` AS `email` from `passenger` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_info`
--

/*!50001 DROP VIEW IF EXISTS `users_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_info` AS select `passenger`.`national_id` AS `national_id`,`passenger`.`Fname` AS `Fname`,`passenger`.`Lname` AS `Lname`,`passenger`.`email` AS `email` from `passenger` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-09 20:54:15
