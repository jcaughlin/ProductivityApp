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
  `role_name` enum('USER','PENDING','ADMIN','MANAGER','SUSPENDED') DEFAULT NULL,
  KEY `user_roles_users_user_name_fk` (`user_name`),
  CONSTRAINT `user_roles_users_user_name_fk` FOREIGN KEY (`user_name`) REFERENCES `users` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_name`, `role_name`) VALUES ('Bartlett','USER'),('Clay','USER'),('ton','USER'),('Porter','USER'),('Molina','USER'),('Farrell','ADMIN'),('Mann','ADMIN'),('Ellison','USER'),('Small','MANAGER'),('Meyer','USER'),('Mortimer','USER'),('Morales','USER'),('Woods','USER'),('Griffith','USER'),('Hensley','PENDING'),('Warren','PENDING'),('Sutton','PENDING'),('Clarke','PENDING'),('Nguyen','USER'),('Lester','USER'),('Ward','USER'),('Carroll','SUSPENDED'),('Parker','USER'),('Briggs','USER'),('Barron','USER'),('Garrison','SUSPENDED'),('Vasquez','USER'),('Cooper','SUSPENDED'),('Atkinson','USER'),('Alexander','USER'),('Vance','USER'),('Duke','MANAGER'),('Mccray','USER'),('Ochoa','USER'),('Mcgowan','USER'),('Mendez','USER'),('Bentley','PENDING'),('Garrett','USER'),('Stuart','USER'),('Morrow','USER');
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
  `user_email` varchar(50) NOT NULL,
  `user_city` varchar(20) NOT NULL,
  `user_birth_date` date DEFAULT NULL,
  `user_registered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id_pk` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id_pk`),
  UNIQUE KEY `users_user_name_uindex` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1364 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_name`, `user_pass`, `user_first_name`, `user_last_name`, `user_email`, `user_city`, `user_birth_date`, `user_registered_date`, `user_id_pk`) VALUES ('Bartlett','HHF52GVR6IG','Elijah','Foster','Donec.vitae.erat@Classaptent.co.uk','Harrogate','1945-10-15','2017-11-23 10:33:50',1249),('Clay','LGE31KED6WN','Xandra','Nguyen','tellus@rutrumurna.net','Kukatpalle','1971-02-24','2017-11-23 10:33:50',1250),('ton','MVB58FLO7FM','Andrew','Simmons','Integer.eu@ullamcorper.edu','Arbre','1961-01-27','2017-11-23 10:42:52',1251),('Porter','USE80HLG8YE','Emma','Holloway','Nullam.nisl@sodalespurusin.com','Moorsele','1939-08-25','2017-11-23 10:33:50',1252),('Molina','ACO69DRO5QH','Madeson','Gregory','dui.Suspendisse@sempererat.org','Bekegem','1976-03-19','2017-11-23 10:33:50',1253),('Farrell','OWQ92JTH4RY','Driscoll','Craig','eu.dui@nuncsedlibero.ca','Springfield','1984-11-30','2017-11-23 10:33:50',1254),('Mann','HTL96XKA7LW','Gisela','Mueller','sem.ut@Nullam.com','San Joaquín','1959-08-01','2017-11-23 10:33:50',1255),('Ellison','ORH44CAX6JR','Colorado','Wolf','Donec.egestas@semper.co.uk','Corroy-le-Grand','2009-08-29','2017-11-23 10:33:50',1256),('Small','VAY38JTF8CL','Lara','Garrison','mauris.ipsum.porta@cursusaenim.org','Linkebeek','1975-02-03','2017-11-23 10:33:50',1257),('Meyer','OSO76OCW7CE','Joy','Galloway','elit.pretium.et@necorci.com','San Diego','1990-01-25','2017-11-23 10:33:50',1258),('Mortimer','PAN52VIY9WA','Molly','Romero','eget.ipsum.edu','Eugene','1994-02-24','2017-11-23 10:42:52',1259),('Morales','PAN52VIY9WA','Molly','Romero','eget.ipsum.edu','Eugene','1994-02-24','2017-11-23 10:35:58',1260),('Woods','FTT70SAE2DR','Alyssa','Logan','dictum.cursus.Nunc@etlacinia.ca','Águas','2011-05-23','2017-11-23 10:35:58',1261),('Griffith','PPG68EVE9WH','Brenda','Wall','orci.lobortis.augue@urna.net','Lacombe','2003-08-04','2017-11-23 10:35:58',1262),('Hensley','XTU38NRR9TW','Shelby','Woods','convallis@massaVestibulum.org','Llangefni','1939-03-14','2017-11-23 10:35:58',1263),('Warren','JBZ02JLI8DI','Risa','Le','risus.Nulla.eget@pedePraesenteu.org','Lumaco','2008-09-23','2017-11-23 10:35:58',1264),('Sutton','LMY15HOG1YE','Blossom','Owen','sit.amet@elementum.org','Jemeppe-sur-Meuse','1988-08-26','2017-11-23 10:35:58',1265),('Clarke','THG79HQE1QZ','Kim','Everett','purus.in.molestie@dolor.org','Colli a Volturno','1960-05-04','2017-11-23 10:35:58',1266),('Nguyen','PEX49GTH2TZ','Vladimir','Price','nibh.lacinia@Donecnibh.net','Stendal','1940-12-14','2017-11-23 10:35:58',1267),('Lester','OYH93WIR4ZI','Orla','Crane','mi.felis@senectusetnetus.org','Berhampore','1982-04-27','2017-11-23 10:35:58',1268),('Ward','LJY94AGO0MJ','Quinlan','Kemp','urna.suscipit.nonummy@in.co.uk','Palmerston North','2000-10-04','2017-11-23 10:35:58',1269),('Carroll','NNX92EUM6GI','Eve','Bray','sem.magna@orci.ca','Messancy','1965-12-21','2017-11-23 10:35:58',1270),('Parker','EIM15GGV8VH','Willow','Quinn','in@arcuSedeu.net','Rzeszów','2005-10-14','2017-11-23 10:35:58',1271),('Briggs','VIS20TOY3FE','Martena','Bruce','erat@sitametorci.ca','Juiz de Fora','2009-02-06','2017-11-23 10:35:58',1272),('Barron','QWQ89ZKR4CW','Zachery','Koch','sagittis@sit.net','Saint-Quentin','1943-02-03','2017-11-23 10:35:58',1273),('Garrison','ZSM87USW6IC','Armando','Cox','posuere.cubilia@enimcommodo.co.uk','Albagiara','2006-11-02','2017-11-23 10:35:58',1274),('Vasquez','XWG05ZLA5EM','Bryar','Cochran','eu.ultrices@sapiengravidanon.org','Wyoming','1939-07-18','2017-11-23 10:35:58',1275),('Cooper','ELN21NRD3EL','Hedwig','Fox','Aenean.gravida@egestasrhoncus.edu','Lac County','2018-07-24','2017-11-23 10:35:58',1276),('Atkinson','MKX93SRG1CI','Joan','Higgins','Integer@semut.edu','Racine','1950-06-30','2017-11-23 10:35:58',1277),('Alexander','EVP35MWK3KI','Simon','Richards','Nam.ac@orciinconsequat.net','Hofstade','2007-04-19','2017-11-23 10:35:58',1278),('Vance','KFT56DEW0GN','Dexter','Levy','lobortis.nisi.nibh@dictumultriciesligula.ca','Estación Central','2017-09-14','2017-11-23 10:35:58',1279),('Duke','PRF92FZT1KT','Ahmed','Hahn','Aliquam.tincidunt@laciniaSed.co.uk','Whittlesey','1968-03-22','2017-11-23 10:35:58',1280),('Mccray','TXP64NFJ9DR','Joel','Tillman','lacus.Cras@nisl.net','Cap-de-la-Madeleine','1993-09-21','2017-11-23 10:35:58',1281),('Ochoa','KGL49MMB8UH','Berk','Huber','vulputate.mauris.sagittis@mi.ca','Linlithgow','1973-12-18','2017-11-23 10:35:58',1282),('Mcgowan','STB74SBT8EM','Shelly','Wong','ligula.eu.enim@mauris.co.uk','El Monte','2011-09-20','2017-11-23 10:35:59',1283),('Mendez','YVA68GCH9OP','Yuli','Waller','sit.amet.ornare@enimgravidasit.net','Lacombe County','1951-10-08','2017-11-23 10:35:59',1284),('Bentley','DZR54JAT6ML','Kiara','Bird','suscipit@Craseget.com','Bargagli','1994-05-23','2017-11-23 10:35:59',1285),('Garrett','AIT29KLL2TU','Ira','Gould','quam.Pellentesque.habitant@litoratorquent.edu','Portofino','2003-01-13','2017-11-23 10:35:59',1286),('Stuart','UGM40CLW2QR','Alfonso','Johnston','sem@Duis.net','Burhaniye','1939-04-17','2017-11-23 10:35:59',1287),('Morrow','KDG03FGX1LW','Tanisha','Benton','Curabitur.ut.odio@liberoProin.ca','Comblain-Fairon','1998-03-10','2017-11-23 10:35:59',1288);
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

-- Dump completed on 2017-11-23 13:13:25
