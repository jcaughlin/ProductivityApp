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
  `user_name` varchar(15),
  `role_name` enum('USER','PENDING','ADMIN','MANAGER','SUSPENDED'),
  `user_role_id_pk` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_role_id_pk`)
)
--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_name`, `role_name`, `user_role_id_pk`) VALUES (NULL,'ADMIN',14522),(NULL,'PENDING',14523),(NULL,'PENDING',14524),(NULL,'PENDING',14525),(NULL,'SUSPENDED',14526),(NULL,'ADMIN',14527),(NULL,'MANAGER',14528),(NULL,'PENDING',14529),(NULL,'SUSPENDED',14530),(NULL,'SUSPENDED',14531),(NULL,'MANAGER',14532),(NULL,'PENDING',14533),(NULL,'USER',14534),(NULL,'SUSPENDED',14535),(NULL,'USER',14536),(NULL,'USER',14537),(NULL,'PENDING',14538),(NULL,'SUSPENDED',14539),(NULL,'PENDING',14540),(NULL,'ADMIN',14541),(NULL,'SUSPENDED',14542),(NULL,'ADMIN',14543),(NULL,'ADMIN',14544),(NULL,'SUSPENDED',14545),(NULL,'PENDING',14546),(NULL,'USER',14547),(NULL,'PENDING',14548),(NULL,'SUSPENDED',14549),(NULL,'USER',14550),(NULL,'ADMIN',14551),(NULL,'USER',14552),(NULL,'PENDING',14553),(NULL,'MANAGER',14554),(NULL,'MANAGER',14555),(NULL,'PENDING',14556),(NULL,'PENDING',14557),(NULL,'SUSPENDED',14558),(NULL,'MANAGER',14559),(NULL,'MANAGER',14560),(NULL,'USER',14561),(NULL,'PENDING',14562),(NULL,'SUSPENDED',14563),(NULL,'SUSPENDED',14564),(NULL,'PENDING',14565),(NULL,'ADMIN',14566),(NULL,'USER',14567),(NULL,'ADMIN',14568),(NULL,'SUSPENDED',14569),(NULL,'SUSPENDED',14570),(NULL,'ADMIN',14571),(NULL,'USER',14572),(NULL,'USER',14573),(NULL,'ADMIN',14574),(NULL,'ADMIN',14575),(NULL,'PENDING',14576),(NULL,'SUSPENDED',14577),(NULL,'USER',14578),(NULL,'SUSPENDED',14579),(NULL,'ADMIN',14580),(NULL,'PENDING',14581),(NULL,'PENDING',14582),(NULL,'SUSPENDED',14583),(NULL,'PENDING',14584),(NULL,'ADMIN',14585),(NULL,'ADMIN',14586),(NULL,'PENDING',14587),(NULL,'PENDING',14588),(NULL,'MANAGER',14589),(NULL,'ADMIN',14590),(NULL,'USER',14591),(NULL,'USER',14592),(NULL,'ADMIN',14593),(NULL,'SUSPENDED',14594),(NULL,'ADMIN',14595),(NULL,'PENDING',14596),(NULL,'USER',14597),(NULL,'MANAGER',14598),(NULL,'MANAGER',14599),(NULL,'USER',14600),(NULL,'PENDING',14601),(NULL,'MANAGER',14602),(NULL,'USER',14603),(NULL,'MANAGER',14604),(NULL,'USER',14605),(NULL,'ADMIN',14606),(NULL,'PENDING',14607),(NULL,'SUSPENDED',14608),(NULL,'SUSPENDED',14609),(NULL,'SUSPENDED',14610),(NULL,'SUSPENDED',14611),(NULL,'USER',14612),(NULL,'MANAGER',14613),(NULL,'SUSPENDED',14614),(NULL,'SUSPENDED',14615),(NULL,'MANAGER',14616),(NULL,'MANAGER',14617),(NULL,'USER',14618),(NULL,'USER',14619),(NULL,'USER',14620),(NULL,'SUSPENDED',14621),('Alexander','USER',14622),('Atkinson','USER',14623),('Barron','USER',14624),('Bartlett','USER',14625),('Beard','USER',14626),('Bentley','USER',14627),('Booker','USER',14628),('Bradshaw','USER',14629),('Briggs','USER',14630),('Bryan','USER',14631),('Bush','USER',14632),('Carroll','USER',14633),('Clarke','USER',14634),('Clay','USER',14635),('Combine','USER',14636),('Combs','USER',14637),('Compton','USER',14638),('Contreras','USER',14639),('Cooper','USER',14640),('Crane','USER',14641),('Dominguez','USER',14642),('Dominion','USER',14643),('Duke','USER',14644),('Duran','USER',14645),('Elliott','USER',14646),('Ellison','USER',14647),('Farrell','USER',14648),('Foreman','USER',14649),('Forth','USER',14650),('Garrett','USER',14651),('Garrison','USER',14652),('Gilbert','USER',14653),('Gillespie','USER',14654),('Griffith','USER',14655),('Hensley','USER',14656),('Joynt','USER',14657),('Kane','USER',14658),('Kanet','USER',14659),('Kidder','USER',14660),('Lester','USER',14661),('Linderman','USER',14662),('Lindsay','USER',14663),('Madden','USER',14664),('Mann','USER',14665),('Mathis','USER',14666),('Mayer','USER',14667),('Mccray','USER',14668),('Mcgowan','USER',14669),('Melton','USER',14670),('Mendez','USER',14671),('Meyer','USER',14672),('Molina','USER',14673),('Monty','USER',14674),('Morales','USER',14675),('Moran','USER',14676),('Morrow','USER',14677),('Mortimer','USER',14678),('Morton','USER',14679),('Murph','USER',14680),('Nguyen','USER',14681),('Obrien','USER',14682),('Ochoa','USER',14683),('Odonnell','USER',14684),('Pacheco','USER',14685),('Parker','USER',14686),('Porter','USER',14687),('Ratliff','USER',14688),('Raymond','USER',14689),('Ribiera','USER',14690),('Rivera','USER',14691),('Rodman','USER',14692),('Rose','USER',14693),('Russell','USER',14694),('Rusty','USER',14695),('Schatner','USER',14696),('Serrano','USER',14697),('Shaffer','USER',14698),('Shattner','USER',14699),('Small','USER',14700),('Snoopy','USER',14701),('Spurn','USER',14702),('Stevens','USER',14703),('Stevenson','USER',14704),('Stone','USER',14705),('Stuart','USER',14706),('Sutton','USER',14707),('Tanner','USER',14708),('ton','USER',14709),('Torres','USER',14710),('Vance','USER',14711),('Vasquez','USER',14712),('Vincent','USER',14713),('Ward','USER',14714),('Warren','USER',14715),('West','USER',14716),('Weston','USER',14717),('Wharton','USER',14718),('Whether','USER',14719),('Whitehead','USER',14720),('Woods','USER',14721);
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
  PRIMARY KEY (`user_id_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_name`, `user_pass`, `user_first_name`, `user_last_name`, `user_email`, `user_city`, `user_birth_date`, `user_registered_date`, `user_id_pk`) VALUES ('Bartlett','HHF52GVR6IG','Elijah','Foster','Donec.vitae.erat@Classaptent.co.uk','Harrogate','1945-10-15','2017-11-23 04:33:50',1249),('Clay','LGE31KED6WN','Xandra','Nguyen','tellus@rutrumurna.net','Kukatpalle','1971-02-24','2017-11-23 04:33:50',1250),('ton','MVB58FLO7FM','Andrew','Simmons','Integer.eu@ullamcorper.edu','Arbre','1961-01-27','2017-11-23 04:42:52',1251),('Porter','USE80HLG8YE','Emma','Holloway','Nullam.nisl@sodalespurusin.com','Moorsele','1939-08-25','2017-11-23 04:33:50',1252),('Molina','ACO69DRO5QH','Madeson','Gregory','dui.Suspendisse@sempererat.org','Bekegem','1976-03-19','2017-11-23 04:33:50',1253),('Farrell','OWQ92JTH4RY','Driscoll','Craig','eu.dui@nuncsedlibero.ca','Springfield','1984-11-30','2017-11-23 04:33:50',1254),('Mann','HTL96XKA7LW','Gisela','Mueller','sem.ut@Nullam.com','San Joaquín','1959-08-01','2017-11-23 04:33:50',1255),('Ellison','ORH44CAX6JR','Colorado','Wolf','Donec.egestas@semper.co.uk','Corroy-le-Grand','2009-08-29','2017-11-23 04:33:50',1256),('Small','VAY38JTF8CL','Lara','Garrison','mauris.ipsum.porta@cursusaenim.org','Linkebeek','1975-02-03','2017-11-23 04:33:50',1257),('Meyer','OSO76OCW7CE','Joy','Galloway','elit.pretium.et@necorci.com','San Diego','1990-01-25','2017-11-23 04:33:50',1258),('Mortimer','PAN52VIY9WA','Molly','Romero','eget.ipsum.edu','Eugene','1994-02-24','2017-11-23 04:42:52',1259),('Morales','PAN52VIY9WA','Molly','Romero','eget.ipsum.edu','Eugene','1994-02-24','2017-11-23 04:35:58',1260),('Woods','FTT70SAE2DR','Alyssa','Logan','dictum.cursus.Nunc@etlacinia.ca','Águas','2011-05-23','2017-11-23 04:35:58',1261),('Griffith','PPG68EVE9WH','Brenda','Wall','orci.lobortis.augue@urna.net','Lacombe','2003-08-04','2017-11-23 04:35:58',1262),('Hensley','XTU38NRR9TW','Shelby','Woods','convallis@massaVestibulum.org','Llangefni','1939-03-14','2017-11-23 04:35:58',1263),('Warren','JBZ02JLI8DI','Risa','Le','risus.Nulla.eget@pedePraesenteu.org','Lumaco','2008-09-23','2017-11-23 04:35:58',1264),('Sutton','LMY15HOG1YE','Blossom','Owen','sit.amet@elementum.org','Jemeppe-sur-Meuse','1988-08-26','2017-11-23 04:35:58',1265),('Clarke','THG79HQE1QZ','Kim','Everett','purus.in.molestie@dolor.org','Colli a Volturno','1960-05-04','2017-11-23 04:35:58',1266),('Nguyen','PEX49GTH2TZ','Vladimir','Price','nibh.lacinia@Donecnibh.net','Stendal','1940-12-14','2017-11-23 04:35:58',1267),('Lester','OYH93WIR4ZI','Orla','Crane','mi.felis@senectusetnetus.org','Berhampore','1982-04-27','2017-11-23 04:35:58',1268),('Ward','LJY94AGO0MJ','Quinlan','Kemp','urna.suscipit.nonummy@in.co.uk','Palmerston North','2000-10-04','2017-11-23 04:35:58',1269),('Carroll','NNX92EUM6GI','Eve','Bray','sem.magna@orci.ca','Messancy','1965-12-21','2017-11-23 04:35:58',1270),('Parker','EIM15GGV8VH','Willow','Quinn','in@arcuSedeu.net','Rzeszów','2005-10-14','2017-11-23 04:35:58',1271),('Briggs','VIS20TOY3FE','Martena','Bruce','erat@sitametorci.ca','Juiz de Fora','2009-02-06','2017-11-23 04:35:58',1272),('Barron','QWQ89ZKR4CW','Zachery','Koch','sagittis@sit.net','Saint-Quentin','1943-02-03','2017-11-23 04:35:58',1273),('Garrison','ZSM87USW6IC','Armando','Cox','posuere.cubilia@enimcommodo.co.uk','Albagiara','2006-11-02','2017-11-23 04:35:58',1274),('Vasquez','XWG05ZLA5EM','Bryar','Cochran','eu.ultrices@sapiengravidanon.org','Wyoming','1939-07-18','2017-11-23 04:35:58',1275),('Cooper','ELN21NRD3EL','Hedwig','Fox','Aenean.gravida@egestasrhoncus.edu','Lac County','2018-07-24','2017-11-23 04:35:58',1276),('Atkinson','MKX93SRG1CI','Joan','Higgins','Integer@semut.edu','Racine','1950-06-30','2017-11-23 04:35:58',1277),('Alexander','EVP35MWK3KI','Simon','Richards','Nam.ac@orciinconsequat.net','Hofstade','2007-04-19','2017-11-23 04:35:58',1278),('Vance','KFT56DEW0GN','Dexter','Levy','lobortis.nisi.nibh@dictumultriciesligula.ca','Estación Central','2017-09-14','2017-11-23 04:35:58',1279),('Duke','PRF92FZT1KT','Ahmed','Hahn','Aliquam.tincidunt@laciniaSed.co.uk','Whittlesey','1968-03-22','2017-11-23 04:35:58',1280),('Mccray','TXP64NFJ9DR','Joel','Tillman','lacus.Cras@nisl.net','Cap-de-la-Madeleine','1993-09-21','2017-11-23 04:35:58',1281),('Ochoa','KGL49MMB8UH','Berk','Huber','vulputate.mauris.sagittis@mi.ca','Linlithgow','1973-12-18','2017-11-23 04:35:58',1282),('Mcgowan','STB74SBT8EM','Shelly','Wong','ligula.eu.enim@mauris.co.uk','El Monte','2011-09-20','2017-11-23 04:35:59',1283),('Mendez','YVA68GCH9OP','Yuli','Waller','sit.amet.ornare@enimgravidasit.net','Lacombe County','1951-10-08','2017-11-23 04:35:59',1284),('Bentley','DZR54JAT6ML','Kiara','Bird','suscipit@Craseget.com','Bargagli','1994-05-23','2017-11-23 04:35:59',1285),('Garrett','AIT29KLL2TU','Ira','Gould','quam.Pellentesque.habitant@litoratorquent.edu','Portofino','2003-01-13','2017-11-23 04:35:59',1286),('Stuart','UGM40CLW2QR','Alfonso','Johnston','sem@Duis.net','Burhaniye','1939-04-17','2017-11-23 04:35:59',1287),('Morrow','KDG03FGX1LW','Tanisha','Benton','Curabitur.ut.odio@liberoProin.ca','Comblain-Fairon','1998-03-10','2017-11-23 04:35:59',1288),('Tanner','YGD27EPX6DC','Madeline','Winters','ante@euduiCum.net','Penna San Giovanni','1989-01-17','2017-11-23 04:35:59',1289),('Ratliff','VVR32FGM7ZG','Abbot','Mayo','imperdiet@luctussitamet.com','Juseret','1947-01-20','2017-11-23 04:37:15',1290),('Stevens','NHR25ZKJ2MU','Dawn','Collins','ligula.Aenean@ornarefacilisiseget.ca','Prè-Saint-Didier','1999-10-24','2017-11-23 04:45:37',1293),('Forth','MOY35CUD1DL','Taylor','Luna','vulputate@arcuvel.net','Hyderabad','1944-10-06','2017-11-23 04:47:03',1294),('Odonnell','ROT21YML7II','Avram','Fry','Vestibulum.accumsan@necluctusfelis.org','Nuraminis','2013-04-26','2017-11-23 04:37:15',1295),('Snoopy','IPC64RQY7JZ','Rudyard','Hinton','ipsum.Suspendisse.non@lacusQuisquepurus.ca','Tramonti di Sopra','2013-10-01','2017-11-23 04:45:37',1296),('Booker','TOM86CCM0DV','Jayme','Cotton','gravida@ac.com','Oppido Mamertina','1994-11-29','2017-11-23 04:37:15',1297),('Bush','XNJ16PUT1SW','Quail','Travis','luctus.ipsum.leo@ipsumcursus.com','Sclayn','1945-12-29','2017-11-23 04:37:15',1298),('Ribiera','SUI11NDI8WD','Silas','Mueller','nibh.dolor.nonummy@ultriciessemmagna.org','Venezia','1969-01-23','2017-11-23 04:45:37',1299),('Kanet','LIJ37QQQ5VC','Patience','Schwartz','tellus@ipsumprimis.edu','Aquila d\'Arroscia','1990-09-02','2017-11-23 04:47:03',1300),('Pacheco','DQB60YDP0LD','Ryan','Reed','magna@Donecfeugiatmetus.edu','Jette','1953-09-09','2017-11-23 04:37:15',1301),('Linderman','FCW50UXD4VP','Kylee','Jones','ligula.Aenean@egetmollislectus.org','Pilibhit','1958-08-14','2017-11-23 04:47:03',1302),('Rusty','JFG73CZP6XP','Grace','Mann','ipsum.Suspendisse@lectusa.org','Lacombe','1964-01-04','2017-11-23 04:45:37',1303),('Rose','IKG60RXU5FD','Peter','Powers','Duis@ultricesposuerecubilia.ca','Kaduna','1963-02-01','2017-11-23 04:47:03',1304),('Stone','BRU76JOC5OC','Kadeem','Avery','ullamcorper.Duis.at@Crasconvallis.edu','Sautin','1969-02-24','2017-11-23 04:45:37',1306),('Weston','MVO15ZWP1XP','Dorothy','Medina','eget.tincidunt.dui@gravida.ca','Fraserburgh','1955-11-15','2017-11-23 04:45:37',1307),('Madden','NPT45JPF0MZ','Adena','Kramer','vehicula.risus@sitametmassa.co.uk','Castel di Tora','1997-10-19','2017-11-23 04:37:15',1308),('Shattner','QMU52NLC7RQ','Jack','Mejia','magnis.dis@lectus.co.uk','Sint-Pieters-Kapelle','1996-06-26','2017-11-23 04:45:37',1310),('Raymond','VVR32FGM7ZG','Abbot','Mayo','imperdiet@luctussitamet.com','Juseret','1947-01-20','2017-11-23 04:45:37',1311),('Dominguez','PKA92MTQ4LH','Desirae','Marquez','felis.ullamcorper@augueporttitor.org','Ollagüe','2017-12-06','2017-11-23 04:37:50',1312),('Moran','CKI65UJR3RG','John','Avery','sodales.Mauris.blandit@atfringilla.com','Nocera Umbra','1960-04-22','2017-11-23 04:37:50',1313),('Stevenson','NHR25ZKJ2MU','Dawn','Collins','ligula.Aenean@ornarefacilisiseget.ca','Prè-Saint-Didier','1999-10-24','2017-11-23 04:37:50',1314),('Foreman','MOY35CUD1DL','Taylor','Luna','vulputate@arcuvel.net','Hyderabad','1944-10-06','2017-11-23 04:37:50',1315),('Serrano','IPC64RQY7JZ','Rudyard','Hinton','ipsum.Suspendisse.non@lacusQuisquepurus.ca','Tramonti di Sopra','2013-10-01','2017-11-23 04:37:51',1317),('Rivera','SUI11NDI8WD','Silas','Mueller','nibh.dolor.nonummy@ultriciessemmagna.org','Venezia','1969-01-23','2017-11-23 04:37:51',1320),('Kane','LIJ37QQQ5VC','Patience','Schwartz','tellus@ipsumprimis.edu','Aquila d\'Arroscia','1990-09-02','2017-11-23 04:37:51',1321),('Lindsay','FCW50UXD4VP','Kylee','Jones','ligula.Aenean@egetmollislectus.org','Pilibhit','1958-08-14','2017-11-23 04:37:51',1323),('Russell','JFG73CZP6XP','Grace','Mann','ipsum.Suspendisse@lectusa.org','Lacombe','1964-01-04','2017-11-23 04:37:51',1324),('Gillespie','IKG60RXU5FD','Peter','Powers','Duis@ultricesposuerecubilia.ca','Kaduna','1963-02-01','2017-11-23 04:37:51',1325),('Contreras','FIZ20FGY7LV','Ahmed','Mcleod','sem.molestie.sodales@orciluctus.net','Topeka','2005-10-03','2017-11-23 04:37:51',1326),('Morton','BRU76JOC5OC','Kadeem','Avery','ullamcorper.Duis.at@Crasconvallis.edu','Sautin','1969-02-24','2017-11-23 04:37:51',1327),('West','MVO15ZWP1XP','Dorothy','Medina','eget.tincidunt.dui@gravida.ca','Fraserburgh','1955-11-15','2017-11-23 04:37:51',1328),('Dominion','DWB53QAW1II','Sonya','Ashley','ad.litora@ligulaDonecluctus.co.uk','Hearst','1942-07-17','2017-11-23 04:56:17',1330),('Schatner','QMU52NLC7RQ','Jack','Mejia','magnis.dis@lectus.co.uk','Sint-Pieters-Kapelle','1996-06-26','2017-11-23 04:42:52',1331),('Shaffer','QMU52NLC7RQ','Jack','Mejia','magnis.dis@lectus.co.uk','Saint Petersburg','1996-06-26','2017-11-23 04:39:00',1332),('Mathis','NYB14KYV1XN','Rebecca','Rosales','nunc@nonbibendum.edu','Yellowstone','1958-08-04','2017-11-23 04:39:00',1333),('Elliott','OOG92OWX7UY','Darryl','Petersen','In@sociisnatoque.ca','Butzbach','1973-09-13','2017-11-23 04:39:00',1334),('Combs','BHX51COC5RT','Haley','Lara','ut.erat@cursusInteger.com','Strasbourg','1981-01-23','2017-11-23 04:39:00',1335),('Compton','SHZ52AJT0WZ','Perry','Hendrix','Donec.nibh@libero.org','Deerlijk','1987-11-07','2017-11-23 04:39:00',1336),('Vincent','MUK19JMO5AI','Yetta','Richmond','amet@sapien.org','Francavilla Fontana','2001-01-07','2017-11-23 04:39:00',1337),('Mayer','LSZ81XVG4CZ','Craig','Berry','vestibulum.Mauris@tinciduntorciquis.edu','Dolgellau','1969-03-03','2017-11-23 04:39:00',1338),('Torres','CHF91PNT9IR','Kelsey','Hensley','tincidunt.pede@temporloremeget.org','Herne','1964-06-15','2017-11-23 04:39:00',1339),('Combine','UIW54IFE0HP','Neil','Barber','tellus.eu@diam.co.uk','Tuktoyaktuk','1994-09-20','2017-11-23 04:50:38',1340),('Crane','RBM07COY7ZG','Boris','Alford','enim.commodo@dictumcursus.co.uk','Bonavista','2000-08-18','2017-11-23 04:39:00',1341),('Gilbert','BHH05SCE5UO','Austin','Warren','ridiculus.mus.Donec@turpisvitae.co.uk','Daly','2011-03-17','2017-11-23 04:39:00',1342),('Whitehead','PDF97XSC6KO','Emerald','Kemp','egestas@scelerisquedui.com','Red Deer','2017-03-03','2017-11-23 04:39:00',1343),('Bryan','TEL11IBI1EA','Zachery','Frank','enim.mi.tempor@metusurna.com','Brugge Bruges','1948-06-10','2017-11-23 04:40:19',1345),('Monty','YDV22FDE6AX','Karen','Hill','nec@mi.edu','Fumal','1987-04-15','2017-11-23 04:45:37',1346),('Whether','MZD13PSC3BG','Alika','Reyes','dolor@penatibus.com','Curitiba','1985-03-29','2017-11-23 04:45:37',1347),('Kidder','GPO68PSH5DI','Mira','Lane','pretium.aliquet.metus@adlitoratorquent.edu','Redruth','1985-08-20','2017-11-23 04:47:03',1348),('Duran','NDX14KIJ8BL','Denton','Bender','ornare.elit@massaQuisque.ca','Seraing','1966-04-02','2017-11-23 04:40:19',1349),('Obrien','NNQ75IUT4ZH','Ora','Hammond','lacus.Aliquam.rutrum@ipsumDonecsollicitudin.net','Jammu','1945-09-29','2017-11-23 04:40:19',1352),('Murph','QTS31FIL8DG','Dean','White','nunc.In.at@dolorNullasemper.ca','Nampa','1977-08-14','2017-11-23 04:45:37',1353),('Melton','UNI28IYW9TX','Flynn','Flynn','risus.Donec@commodohendrerit.ca','Silifke','1962-06-13','2017-11-23 04:40:19',1355),('Rodman','QGC66RQX5FN','Janna','Swanson','Etiam.bibendum@augueidante.co.uk','Vallentuna','1987-07-26','2017-11-23 04:45:37',1356),('Wharton','MOB87LHF7XX','William','Atkins','sodales.elit.erat@Praesentluctus.ca','Blue Mountains','2018-04-02','2017-11-23 04:45:37',1357),('Beard','ONE71DCV1QA','Keefe','Morales','Nunc@quislectusNullam.co.uk','Xhoris','1948-06-01','2017-11-23 04:40:19',1359),('Spurn','CAB41IZQ3XA','Briar','Becker','erat.vitae@libero.org','Valtournenche','1945-06-14','2017-11-23 04:45:37',1360),('Joynt','XEF54CVP2MA','Noelani','Berry','Quisque.imperdiet@Phasellus.net','Knokke-Heist','1982-02-06','2017-11-23 04:47:03',1362),('Bradshaw','ROO74ZHN9BB','Leslie','Santos','vitae@quam.co.uk','Peterborough','2010-11-01','2017-11-23 04:40:20',1363);
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

-- Dump completed on 2017-11-23  0:23:52
