-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: productivityapp_db
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
  `user_email` varchar(50) NOT NULL,
  `user_city` varchar(20) NOT NULL,
  `user_birth_date` date DEFAULT NULL,
  `user_registered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id_pk` int(11) NOT NULL AUTO_INCREMENT,
  `user_date_birth` date DEFAULT NULL,
  PRIMARY KEY (`user_id_pk`),
  UNIQUE KEY `users_user_name_uindex` (`user_name`),
  UNIQUE KEY `UK_k8d0f2n7n88w1a16yhua64onx` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1386 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('joe','password','Joe','C','jcaughlin@gmail.com','Waunakee','1972-04-19','2017-12-11 14:22:49',1364,'1972-04-19'),('johnny','password','Johnny','Thunder','johnny@altavistat','New York','1952-07-14','2017-12-11 14:22:49',1369,'1952-07-15'),('jerry','password','Jerry','Nolan','jerry@hotmail.com','New York','1946-05-07','2017-12-11 14:22:49',1370,'1946-05-07'),('steve','password','Steve','Stevens','steve@rockstar.edu','Brooklyn',NULL,'2017-12-11 14:33:22',1377,'1959-05-05'),('joeyramone','password','Joey','Ramone','Joey@ramone.com','Queens',NULL,'2017-12-11 14:33:22',1378,'1951-05-19'),('richie','password','Richard','Hell','richard@voidoids.com','Lexington',NULL,'2017-12-11 14:33:22',1379,'1949-10-02'),('patti','password','Patti','Smithj','patti@smith.com','Chicago',NULL,'2017-12-11 14:33:22',1380,'1946-12-30'),('Debbie','blondie','Deborah','Harry','Debbie@blondie.com','Miami',NULL,'2017-12-11 14:33:22',1381,'1945-07-01'),('littlesteven','soul','Steven','Lento','littlesteve@garage.com','Winthrop',NULL,'2017-12-11 14:42:57',1382,'1950-11-22'),('deedee','ramone1','DeeDee','Ramone','deedee@ramones.com','Fort Lee',NULL,'2017-12-11 14:42:57',1383,'1951-09-18'),('bobby','bobby','Bobby','Womack','bobby@gmail.com','Cleveland',NULL,'2017-12-11 14:42:57',1384,'1944-03-04'),('soultrain','password','Don','Cornelius','don@souttrain.com','Chicago',NULL,'2017-12-11 14:42:57',1385,'1936-09-27');
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

-- Dump completed on 2017-12-11 10:02:46
