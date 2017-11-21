-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: productivityapp_db
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `open_weather_data`
--

DROP TABLE IF EXISTS `open_weather_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_weather_data` (
  `open_weather_id_pk` int(11) NOT NULL,
  `open_weather_city` varchar(20) DEFAULT NULL,
  `min_temperature` double DEFAULT NULL,
  `max_temperature` double DEFAULT NULL,
  `humidity_percentage` double DEFAULT NULL,
  `barometric_pressure` double DEFAULT NULL,
  `open_weather_record_date` date DEFAULT NULL,
  PRIMARY KEY (`open_weather_id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `open_weather_data`
--

LOCK TABLES `open_weather_data` WRITE;
/*!40000 ALTER TABLE `open_weather_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `open_weather_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `task_id_pk` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(20) NOT NULL,
  `task_master_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_id_pk`),
  UNIQUE KEY `task_task_name_uindex` (`task_name`),
  UNIQUE KEY `task_task_master_fk_uindex` (`task_master_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_name` varchar(15) NOT NULL,
  `role_name` enum('USER','PENDING','ADMIN','MANAGER','SUSPENDED') NOT NULL,
  PRIMARY KEY (`user_name`,`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_task_list_records`
--

DROP TABLE IF EXISTS `user_task_list_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_task_list_records` (
  `task_list_id_pk` int(11) NOT NULL AUTO_INCREMENT,
  `task_start_time` int(11) DEFAULT NULL,
  `task_end_time` int(11) DEFAULT NULL,
  `task_duration` mediumtext GENERATED ALWAYS AS ((`task_end_time` - `task_start_time`)) VIRTUAL,
  `task_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`task_list_id_pk`),
  KEY `user_task_list_records___fk` (`task_name`),
  CONSTRAINT `user_task_list_records___fk` FOREIGN KEY (`task_name`) REFERENCES `task` (`task_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_task_list_records`
--

LOCK TABLES `user_task_list_records` WRITE;
/*!40000 ALTER TABLE `user_task_list_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_task_list_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_name` varchar(15) NOT NULL,
  `user_pass` varchar(15) NOT NULL,
  `user_first_name` varchar(20) DEFAULT NULL,
  `user_last_name` varchar(20) DEFAULT NULL,
  `user_email` varchar(30) NOT NULL,
  `user_roles` varchar(20) DEFAULT NULL,
  `user_city` varchar(20) NOT NULL,
  `user_birth_date` date DEFAULT NULL,
  `user_registered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','password','me','me','','ADMIN','',NULL,'2017-11-21 03:20:20'),('bigsteve','maga','Steve','Bannon','dopey@breitbart','SUSPENDED','Washington','1953-11-27','2017-11-21 03:20:20'),('joe','password',NULL,NULL,'','USER','WAUNAKEE','1972-04-19','2017-11-21 03:20:20'),('pending','password',NULL,NULL,'','PENDING','',NULL,'2017-11-21 03:20:20'),('rog','nixon','Roger','Stone','truth@america.com','SUSPENDED','Washington',NULL,'2017-11-21 03:20:20');
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

-- Dump completed on 2017-11-20 21:21:57
