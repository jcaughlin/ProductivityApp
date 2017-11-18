-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: productivity_appdb
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
-- Table structure for table `UserRegionCityLinkingTable`
--

DROP TABLE IF EXISTS `UserRegionCityLinkingTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserRegionCityLinkingTable` (
  `idUserRegionCityLinkingTable` int(11) DEFAULT NULL,
  `WeatherData_idWeatherData` varchar(45) NOT NULL,
  `Usernfo_userClientKey` varchar(45) NOT NULL,
  PRIMARY KEY (`WeatherData_idWeatherData`,`Usernfo_userClientKey`),
  CONSTRAINT `fk_UserRegionCityLinkingTable_WeatherData1` FOREIGN KEY (`WeatherData_idWeatherData`) REFERENCES `open_weather_data` (`open_weather_data_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRegionCityLinkingTable`
--

LOCK TABLES `UserRegionCityLinkingTable` WRITE;
/*!40000 ALTER TABLE `UserRegionCityLinkingTable` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserRegionCityLinkingTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `open_weather_data`
--

DROP TABLE IF EXISTS `open_weather_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `open_weather_data` (
  `open_weather_data_id` varchar(45) NOT NULL,
  `pressure` varchar(45) DEFAULT NULL,
  `humidity` varchar(45) DEFAULT NULL,
  `temp_min` varchar(45) DEFAULT NULL,
  `temp_max` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `usercity` varchar(45) DEFAULT NULL,
  `users_user_id` varchar(45) NOT NULL,
  PRIMARY KEY (`open_weather_data_id`)
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
-- Table structure for table `task_completion_times`
--

DROP TABLE IF EXISTS `task_completion_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_completion_times` (
  `task_time_id` int(11) NOT NULL,
  `task_time_start` timestamp NULL DEFAULT NULL,
  `task_time_stop` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`task_time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_completion_times`
--

LOCK TABLES `task_completion_times` WRITE;
/*!40000 ALTER TABLE `task_completion_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_completion_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_name` varchar(15) DEFAULT NULL,
  `role_name` varchar(15) DEFAULT NULL,
  `id_pk` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_pk`)
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
-- Table structure for table `user_task_list_has_task_completion_times`
--

DROP TABLE IF EXISTS `user_task_list_has_task_completion_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_task_list_has_task_completion_times` (
  `task_completion_times_task_time_id` int(11) NOT NULL,
  PRIMARY KEY (`task_completion_times_task_time_id`),
  KEY `fk_user_task_list_has_task_completion_times_task_completion_idx` (`task_completion_times_task_time_id`),
  CONSTRAINT `fk_user_task_list_has_task_completion_times_task_completion_t1` FOREIGN KEY (`task_completion_times_task_time_id`) REFERENCES `task_completion_times` (`task_time_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_task_list_has_task_completion_times`
--

LOCK TABLES `user_task_list_has_task_completion_times` WRITE;
/*!40000 ALTER TABLE `user_task_list_has_task_completion_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_task_list_has_task_completion_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_first_name` varchar(255) DEFAULT NULL,
  `user_last_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_dateofbirth` varchar(255) DEFAULT NULL,
  `user_registered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_photo_link` varchar(255) DEFAULT NULL,
  `user_city` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Curran','KUY36LRL4HD','Macaulay','Valenzuela','metus.Aenean@consequatdolor.ca','1995-10-26 17:34:52','2017-10-11 19:57:48',NULL,'Morolo'),(2,'Wylie','PKS22XKB9ZQ','Damian','Mclean','lacinia.at@pede.edu','1948-09-17 06:09:28','2017-10-11 19:57:48',NULL,'Vitacura'),(3,'Hadassah','WOM32BRX5RV','Grant','Hahn','pede@ac.co.uk','1980-10-09 06:01:54','2017-10-11 19:57:48',NULL,'Trowbridge'),(4,'Gavin','FFA56BOU3FA','Zachary','Copeland','cursus.luctus@lectus.co.uk','1994-03-28 11:33:23','2017-10-11 19:57:48',NULL,'Hohenems'),(5,'Gage','ODW36KDU9FH','Price','Solis','sapien@Vivamus.co.uk','1958-01-24 12:44:27','2017-10-11 19:57:48',NULL,'Wick'),(6,'Guinevere','GNB73PHE4XT','Edward','Silva','sit.amet.orci@posuerecubiliaCurae.com','1959-10-01 19:47:23','2017-10-11 19:57:48',NULL,'Wageningen'),(7,'Mira','URS96UKP7FW','Burke','Casey','magna@Phaselluselit.ca','1977-12-22 18:39:30','2017-10-11 19:57:48',NULL,'Castor'),(8,'Yuli','TJD45PSO0DM','Dominic','Stafford','ipsum.primis.in@dictum.edu','1940-02-25 01:46:09','2017-10-11 19:57:48',NULL,'Jacksonville'),(9,'Price','DHF36YSI1MI','Sylvester','Elliott','quam.elementum@mattis.net','1970-09-05 16:49:08','2017-10-11 19:57:48',NULL,'Haddington'),(10,'Orson','DBT06KYF4OI','Kermit','Hoover','enim.Suspendisse.aliquet@eratvelpede.net','1954-02-10 00:53:25','2017-10-11 19:57:48',NULL,'Saint-Servais'),(11,'Quail','IMC04LQJ2DE','Dean','Ruiz','Nunc@tellus.net','1942-04-28 22:29:58','2017-10-11 19:57:48',NULL,'San Rafael'),(12,'Hasad','LLC27UKS8FT','Oleg','Hawkins','a@enim.ca','1961-07-31 10:24:17','2017-10-11 19:57:48',NULL,'Tavier'),(13,'Dean','JDD56XZF5PJ','Jason','Gutierrez','Aliquam@rutrumeu.ca','1965-07-03 09:26:01','2017-10-11 19:57:48',NULL,'Crehen'),(14,'Ora','HTE92SGA3ZT','Dorian','Fischer','lorem@nonluctussit.com','1968-06-11 18:53:29','2017-10-11 19:57:48',NULL,'Kulti-Barakar'),(15,'Vincent','HAL13JWB8CZ','Vernon','Higgins','pellentesque.Sed.dictum@tellusjusto.com','1960-11-07 22:13:59','2017-10-11 19:57:48',NULL,'Traiguén'),(16,'Paki','RKK59NGT8EL','David','Woodard','Curabitur@parturient.ca','1946-04-21 07:52:38','2017-10-11 19:57:48',NULL,'Massa e Cozzile'),(17,'Marcia','KMB92YGF0TA','Duncan','Lindsey','cursus@vulputatemauris.co.uk','1954-04-30 20:00:08','2017-10-11 19:57:48',NULL,'Bonneville'),(18,'Ray','QVV62KKQ3CS','Kirk','Mejia','sagittis@litoratorquent.com','1963-08-29 11:28:09','2017-10-11 19:57:48',NULL,'Werbomont'),(19,'Hedley','FNU99ONH7ST','Chadwick','Woodard','Integer.vulputate@placerateget.org','1987-08-02 04:16:14','2017-10-11 19:57:48',NULL,'Ripalta Guerina'),(20,'Valentine','LDQ72GQY1FW','Graham','Collins','et@Praesenteu.org','1998-07-19 18:09:25','2017-10-11 19:57:48',NULL,'Las Cabras'),(21,'Evan','WCG99TBF7UN','Curran','Fulton','massa.Mauris.vestibulum@eu.co.uk','1954-06-27 15:07:33','2017-10-11 19:57:48',NULL,'FerriŽres'),(22,'Felix','PIJ90QRK1PM','Hamilton','Davis','ligula.consectetuer@feugiatLorem.co.uk','1966-02-18 08:51:24','2017-10-11 19:57:48',NULL,'Motta Visconti'),(23,'Quintessa','ZBJ43TSL9BU','Mohammad','Whitley','quis@ornareplaceratorci.co.uk','1992-11-01 04:58:12','2017-10-11 19:57:48',NULL,'Minto'),(24,'Barry','ZYO81LCH9RV','Neil','Nguyen','ut.pellentesque.eget@aliquetsemut.net','1963-08-28 10:51:40','2017-10-11 19:57:48',NULL,'Menai Bridge'),(25,'Ima','QGN34IMW9FP','Steven','Huff','risus.odio.auctor@risus.ca','1948-07-08 11:50:28','2017-10-11 19:57:48',NULL,'Comano'),(26,'Tad','BWU14QPN0OA','Knox','Rasmussen','nunc.sed.pede@ullamcorpermagnaSed.edu','1958-04-26 16:11:38','2017-10-11 19:57:48',NULL,'Altidona'),(27,'Audra','KOA88LMZ6PN','Brenden','Golden','semper.et.lacinia@ornare.com','1974-10-03 10:16:03','2017-10-11 19:57:48',NULL,'Grimsby'),(28,'Jessica','CTL29QHK6GX','Addison','Potts','Nulla@Sed.ca','1959-10-01 13:18:48','2017-10-11 19:57:48',NULL,'Gijzegem'),(29,'Derek','MGM74RXI5HQ','Kuame','Pacheco','Mauris.eu@lobortis.ca','1945-12-14 15:26:57','2017-10-11 19:57:48',NULL,'Algarrobo'),(30,'Noel','HDJ60ALF3TP','Palmer','Saunders','tempus.scelerisque@Aliquamauctor.co.uk','1975-06-13 12:48:01','2017-10-11 19:57:48',NULL,'Messancy'),(31,'Reese','JLR10FUM3ZS','Raymond','Schneider','malesuada@magnaa.edu','2000-03-16 17:57:45','2017-10-11 19:57:48',NULL,'Colico'),(32,'Leslie','ATB19BZM2LU','Elton','Rosales','non@Suspendisse.ca','1950-12-25 04:11:20','2017-10-11 19:57:48',NULL,'Guadalajara'),(33,'Marcia','AHN59XQV0PW','Aaron','Sheppard','velit.eget.laoreet@imperdiet.co.uk','1937-04-14 09:25:07','2017-10-11 19:57:48',NULL,'Calmar'),(34,'Guinevere','GNL26NLO9HD','Logan','Ruiz','dui@sit.edu','1944-11-06 19:48:08','2017-10-11 19:57:48',NULL,'Sasaram'),(35,'Yardley','CVR63OCS8WI','Stewart','Horne','euismod.enim.Etiam@Quisquefringillaeuismod.ca','1966-04-04 13:13:57','2017-10-11 19:57:48',NULL,'Saavedra'),(36,'Maya','GFE44XGK0IL','Forrest','Saunders','non.bibendum.sed@risusatfringilla.net','1968-12-05 02:22:45','2017-10-11 19:57:48',NULL,'Milano'),(37,'Cain','IAI63TCU8YK','Brendan','Harrington','leo@anteipsumprimis.com','1997-11-14 05:52:05','2017-10-11 19:57:48',NULL,'Nelson'),(38,'Price','TNN57SZA0FP','Clark','Vang','ornare.lectus@liberoat.com','1941-04-28 13:31:31','2017-10-11 19:57:48',NULL,'Nieuwenrode'),(39,'Jane','QJA54RIM7RE','Prescott','Bright','orci.lacus@lorem.ca','1960-12-28 11:58:02','2017-10-11 19:57:48',NULL,'Huntley'),(40,'Alexis','FYS09UTA9PC','Tanner','Newton','eget.tincidunt@iaculisodioNam.edu','1981-08-14 23:26:16','2017-10-11 19:57:48',NULL,'Idaho Falls'),(41,'Raymond','DIX97LXX9KY','Kermit','Cervantes','Donec@euplacerateget.org','1968-12-29 12:39:53','2017-10-11 19:57:48',NULL,'Karlsruhe'),(42,'Lysandra','HJS93YDN4NR','Giacomo','Mcmillan','lorem.ac@semper.com','1934-10-04 15:19:34','2017-10-11 19:57:48',NULL,'Heusweiler'),(43,'Patricia','EZU25XKC6PW','Luke','Harding','adipiscing.elit.Curabitur@maurisSuspendisse.ca','1960-02-15 19:09:42','2017-10-11 19:57:48',NULL,'Westende'),(44,'Barbara','FTN22JQJ5BA','Todd','Brewer','sagittis.semper@magnaDuis.co.uk','1982-01-23 14:11:15','2017-10-11 19:57:48',NULL,'Vaux-sous-ChŽvremont'),(45,'Owen','QOP73LTU1JN','Len','Vaughan','Aenean.gravida.nunc@enimcommodohendrerit.com','1941-06-12 04:06:22','2017-10-11 19:57:48',NULL,'Adoni'),(46,'Uriah','WIQ54BUV4KY','Wing','Campbell','elit@hymenaeos.com','1963-03-11 23:14:05','2017-10-11 19:57:48',NULL,'Hertford'),(47,'Sacha','EGZ01ZTE8RY','Baxter','Bean','pharetra.Nam@Phasellus.net','1939-09-29 13:05:49','2017-10-11 19:57:48',NULL,'Dunoon'),(48,'Simone','XUA82XXX3MA','Malachi','Bennett','in.faucibus.orci@sed.edu','1960-02-29 05:51:48','2017-10-11 19:57:48',NULL,'LaSalle'),(49,'Baker','ZEI25KOG6YP','Evan','Franco','quam.Pellentesque.habitant@malesuada.edu','1951-04-23 08:08:36','2017-10-11 19:57:48',NULL,'Pune'),(50,'Mia','XKM72IXX4CK','Maxwell','Parsons','montes.nascetur@at.org','1993-07-17 10:23:13','2017-10-11 19:57:48',NULL,'Hanau'),(51,'Kasimir','LOU77XGE0MA','Tad','Cortez','est@aenimSuspendisse.edu','1989-09-01 05:51:34','2017-10-11 19:57:48',NULL,'Bellevue'),(52,'Fuller','VPQ96RVJ4VW','Holmes','Buck','at.fringilla.purus@Aliquamrutrumlorem.edu','1967-06-10 23:25:11','2017-10-11 19:57:48',NULL,'Fossato di Vico'),(53,'Jael','QUK14IYZ1AK','Axel','Davidson','quis.tristique@montesnascetur.com','1986-02-06 17:29:12','2017-10-11 19:57:48',NULL,'Castelmezzano'),(54,'Savannah','NDW88AQT3ZF','Sebastian','Compton','egestas.Fusce.aliquet@nisi.org','1946-05-29 03:57:44','2017-10-11 19:57:48',NULL,'Overland Park'),(55,'Lucian','IAR89OTX7RU','Myles','Delaney','non.ante.bibendum@laciniaSed.edu','1959-06-30 05:48:17','2017-10-11 19:57:48',NULL,'Brecon'),(56,'Fatima','BKX84WIX9MI','Harlan','Woodward','molestie.in.tempus@aenim.edu','1979-04-23 20:22:38','2017-10-11 19:57:48',NULL,'Surrey'),(57,'Thane','SOX62GLB9ZO','Richard','Meadows','lacus.Quisque.purus@Quisque.co.uk','1977-09-27 03:12:47','2017-10-11 19:57:48',NULL,'Township of Minden Hills'),(58,'Christine','FPK62AIU2XQ','Arthur','Giles','nulla.Integer.vulputate@iaculisodio.org','1952-08-25 11:39:50','2017-10-11 19:57:48',NULL,'Sialkot'),(59,'Adam','ENR82NHX2NZ','Garth','Hester','mauris@gravida.net','1992-10-06 16:45:27','2017-10-11 19:57:48',NULL,'Linares'),(60,'Keelie','NHN62CSR5PM','Philip','Castaneda','sem@telluslorem.ca','1981-11-10 23:59:25','2017-10-11 19:57:48',NULL,'Meerhout'),(61,'Hamilton','AAN30BVR9XG','Harper','Pate','Donec.est@urnaNunc.edu','1978-06-23 04:05:57','2017-10-11 19:57:48',NULL,'Sooke'),(62,'Rhonda','OLL56ZFF9VD','Rogan','Schroeder','et.magnis.dis@euismod.co.uk','1976-08-12 12:47:24','2017-10-11 19:57:48',NULL,'Assen'),(63,'Brooke','VBX65ELM9IG','Brian','Hayes','commodo@malesuadaut.com','1971-07-27 23:26:03','2017-10-11 19:57:48',NULL,'Vadodara'),(64,'Randall','PJV13AWN7SI','Nero','Foley','dapibus.quam@Aeneaneuismod.org','1975-04-09 04:51:19','2017-10-11 19:57:48',NULL,'Eghezee'),(65,'Iliana','XEL66IGD8NI','Trevor','Kinney','mus.Proin.vel@ligulaAenean.com','1954-09-12 09:17:05','2017-10-11 19:57:48',NULL,'Grand-RosiŽre-Hottomont'),(66,'Hall','EHL97AFK5ZF','Harlan','Sloan','neque.sed@Crasloremlorem.org','1978-10-06 08:45:27','2017-10-11 19:57:48',NULL,'Eisleben'),(67,'Travis','LUW65XLJ1OC','Grady','Richard','ornare.lectus@sedleoCras.org','1998-10-25 19:11:54','2017-10-11 19:57:48',NULL,'Troon'),(68,'Kendall','PPO14SYC1UM','Bert','Tanner','enim@sit.net','1972-11-30 17:39:21','2017-10-11 19:57:48',NULL,'Mount Isa'),(69,'Claudia','NRH83KZT9XC','Malcolm','Hensley','sagittis.augue.eu@sedtortor.com','1966-08-02 03:11:57','2017-10-11 19:57:48',NULL,'Portsoy'),(70,'Adena','ZRY87MWC4VJ','Walker','Hawkins','libero.Proin.mi@aliquetlibero.ca','1979-09-29 11:17:17','2017-10-11 19:57:48',NULL,'Märsta'),(71,'Fallon','PAF41NUB4VV','Justin','Mendez','ornare.In@nisiaodio.com','1981-08-31 00:39:51','2017-10-11 19:57:48',NULL,'Townsville'),(72,'Amery','NPM03RHU2YB','Jacob','Blackburn','pharetra.felis@ipsumdolor.ca','1939-02-18 16:27:30','2017-10-11 19:57:48',NULL,'Timaukel'),(73,'Clinton','YKG62AEB1TO','Linus','Bruce','augue.ut.lacus@ametultriciessem.org','1960-05-04 11:28:46','2017-10-11 19:57:48',NULL,'Indianapolis'),(74,'Stella','LEP84IPP9OG','Gregory','Brewer','dolor.Nulla.semper@duiinsodales.co.uk','1941-10-26 16:24:08','2017-10-11 19:57:48',NULL,'Cumberland County'),(75,'Jonah','SNL84NHQ6WY','Philip','Nichols','iaculis.quis@cursuspurusNullam.com','1953-10-18 08:58:41','2017-10-11 19:57:48',NULL,'Canberra'),(76,'Lucius','SEU71XTD1XN','Ivan','Jennings','diam.Duis@volutpatnunc.co.uk','1938-02-22 18:48:56','2017-10-11 19:57:48',NULL,'San Isidro'),(77,'Gwendolyn','NZN57QEK3MC','Stuart','Macdonald','Sed@Suspendissealiquet.org','1982-10-01 14:55:27','2017-10-11 19:57:48',NULL,'Yumbel'),(78,'Carl','WDF47WVD1SL','Hasad','Jacobson','sit.amet.ante@non.org','1956-02-19 16:10:09','2017-10-11 19:57:48',NULL,'Poggio Berni'),(79,'Leandra','CYD25NBQ2DG','Perry','Newton','primis.in@nislQuisque.org','1963-11-05 18:13:19','2017-10-11 19:57:48',NULL,'Barahanagar'),(80,'Daryl','CPL20FUA9EG','Brenden','Johnson','Nullam.enim@elit.co.uk','1960-07-02 01:50:19','2017-10-11 19:57:48',NULL,'Cleveland'),(81,'Rachel','SPN92HIL8HH','Martin','Alston','lacus.pede.sagittis@accumsaninterdumlibero.net','1990-01-06 16:23:56','2017-10-11 19:57:48',NULL,'Saalfelden am Steinernen Meer'),(82,'Porter','KTU18PMR9SV','Hashim','Munoz','penatibus.et.magnis@mattisornarelectus.com','1954-07-25 12:37:28','2017-10-11 19:57:48',NULL,'Gatineau'),(83,'Angela','DKI39BNL3UL','Jared','Collins','aliquam@Vestibulumanteipsum.edu','1981-06-15 10:48:51','2017-10-11 19:57:48',NULL,'Litueche'),(84,'Brynn','AOE26HST3PM','Price','Mcclure','laoreet.libero.et@nuncsitamet.edu','1947-01-14 05:49:39','2017-10-11 19:57:48',NULL,'Bulzi'),(85,'Ezekiel','XLZ15XLE9IJ','Leo','Gibson','lectus.Cum.sociis@arcuVestibulum.net','1943-07-11 03:52:50','2017-10-11 19:57:48',NULL,'San José de Alajuela'),(86,'Ferdinand','TMS83TJN9XG','Arsenio','Rodgers','velit.egestas@eleifendvitaeerat.ca','1982-03-11 12:54:44','2017-10-11 19:57:48',NULL,'ThimŽon'),(87,'Linus','EQK65EHG4JD','Zeus','Hawkins','erat@estmauris.co.uk','1967-10-17 11:12:22','2017-10-11 19:57:48',NULL,'Lota'),(88,'Theodore','WPG15YLI8CS','Alfonso','Adkins','Duis.dignissim@erosnon.net','1968-03-28 21:06:15','2017-10-11 19:57:48',NULL,'Koolkerke'),(89,'Lara','STO90QQE4PU','Griffin','Horn','enim.non.nisi@Namac.ca','1951-04-01 12:23:46','2017-10-11 19:57:48',NULL,'Ogbomosho'),(90,'Hanae','JLS20ULU6FC','Tiger','Wells','odio@molestiepharetranibh.ca','1961-01-11 07:36:55','2017-10-11 19:57:48',NULL,'Vanier'),(91,'Leo','ADQ64IML0UH','Yuli','Parker','montes.nascetur.ridiculus@hendreritconsectetuercursus.com','1945-05-26 00:05:54','2017-10-11 19:57:48',NULL,'San Sostene'),(92,'Dolan','IEH15JSG3AK','Robert','Dominguez','pulvinar@necenimNunc.org','1975-12-22 05:38:18','2017-10-11 19:57:48',NULL,'Landau'),(93,'Axel','BED08NED9SP','Len','Chapman','libero.Donec.consectetuer@ante.org','1941-12-03 00:36:42','2017-10-11 19:57:48',NULL,'Issime'),(94,'Quamar','YHT37OMI9BQ','Zachery','Peck','mauris.aliquam@bibendumullamcorperDuis.edu','1966-11-27 17:00:16','2017-10-11 19:57:48',NULL,'Åkersberga'),(95,'Xenos','QLN87XAD9CK','Gavin','Petty','neque.sed.dictum@faucibuslectusa.edu','1969-10-29 05:25:25','2017-10-11 19:57:48',NULL,'Bacabal'),(96,'Kuame','LVX67XEQ3NE','Steven','Solis','urna@interdumSedauctor.edu','1949-08-31 18:19:02','2017-10-11 19:57:48',NULL,'Matamata'),(97,'Bevis','QUW40WAD5KQ','Elvis','Myers','Mauris.non@Aliquamerat.org','1972-10-22 19:10:21','2017-10-11 19:57:48',NULL,'Greifswald'),(98,'Abel','DOV79UQV4PD','Rogan','Maddox','augue.Sed@ullamcorperviverraMaecenas.net','1967-06-02 09:24:04','2017-10-11 19:57:48',NULL,'Garaguso'),(99,'Florence','BLF88OCC5MC','Berk','Brock','magna.Suspendisse.tristique@sollicitudinadipiscingligula.org','1976-03-04 02:20:40','2017-10-11 19:57:48',NULL,'Perugia'),(100,'Frances','NNK93WDA6UO','Brett','Hogan','nisi.magna.sed@sapiencursus.ca','1960-02-28 03:44:41','2017-10-11 19:57:48',NULL,'Roccanova');
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

-- Dump completed on 2017-11-17  9:41:36
