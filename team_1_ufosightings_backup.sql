CREATE DATABASE  IF NOT EXISTS `ufo_sightings` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ufo_sightings`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: ufo_sightings
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `age_group`
--

DROP TABLE IF EXISTS `age_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `age_group` (
  `age_id` int NOT NULL,
  `age_group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`age_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_group`
--

LOCK TABLES `age_group` WRITE;
/*!40000 ALTER TABLE `age_group` DISABLE KEYS */;
INSERT INTO `age_group` VALUES (1,'18-24'),(2,'25-34'),(3,'35-44'),(4,'45-54'),(5,'55-64'),(6,'65+');
/*!40000 ALTER TABLE `age_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `avg_dur`
--

DROP TABLE IF EXISTS `avg_dur`;
/*!50001 DROP VIEW IF EXISTS `avg_dur`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_dur` AS SELECT 
 1 AS `sighting_id`,
 1 AS `summary`,
 1 AS `duration`,
 1 AS `date`,
 1 AS `shape`,
 1 AS `city`,
 1 AS `state`,
 1 AS `population`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_pop`
--

DROP TABLE IF EXISTS `avg_pop`;
/*!50001 DROP VIEW IF EXISTS `avg_pop`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_pop` AS SELECT 
 1 AS `avg population`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cali_informants`
--

DROP TABLE IF EXISTS `cali_informants`;
/*!50001 DROP VIEW IF EXISTS `cali_informants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cali_informants` AS SELECT 
 1 AS `informant`,
 1 AS `gender`,
 1 AS `age group`,
 1 AS `sighting_id`,
 1 AS `summary`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL,
  `city_name` varchar(45) DEFAULT NULL,
  `population` int DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Las Vegas',634773),(2,'Rogue River',2410),(3,'Apollo',1457),(4,'Orlando',307573),(5,'Cabazon',2588),(6,'Mesa',499720),(7,'Kingsford',4992),(8,'Chardon',5167),(9,'Tempe',187454),(10,'Peoria',168196),(11,'Miami',454279),(12,'Muskego',24946),(13,'Walla Walla',32793),(14,'Rolfe',572),(15,'Gila Bend',1853),(16,'Toppenish',8873),(17,'Huffman',12573),(18,'Beach Haven',1090),(19,'Virginia Beach',450201),(20,'Chillicothe',21719),(21,'Grand Junction',62062),(22,'Arroyo Grande',18033),(23,'Chester',7777),(24,'Aviston',2149),(25,'Capitola',12856),(26,'Carthage',4830),(27,'Creswell',5356),(28,'Anchorage',293531),(29,'Hesperus',2278),(30,'Beverly',41885),(31,'Salisbury',32693),(32,'Hagerstown',40152),(33,'Pikeville',6810),(34,'Franconia Notch',1105),(35,'Ormond Beach',42545),(36,'Hayward',159293),(37,'College Station',113686),(38,'Los Angeles',3967000),(39,'Brighton',43887),(40,'Providence',179494),(41,'Madison',254977),(42,'Bronx',1435000),(43,'Pie Town',111),(44,'Phoenix',1633000),(45,'Hillsboro',6534),(46,'Bristol',26852),(47,'St. Augustine',14515),(48,'Wilmington',120194),(49,'Tulsa',402324),(50,'New Hartford',6685),(51,'Tacoma',212869),(52,'Annapolis',39278),(53,'Havre',9955),(54,'Muskegon',37633),(55,'Atlantic City',38041),(56,'Baltimore',609032),(57,'Seattle',724305),(58,'Omaha',475862),(59,'Bemidji',15132),(60,'Vista',100686),(61,'Perry',16595),(62,'St. George',2352),(63,'Santa Fe',83922),(64,'Kihei',22402),(65,'Houston',2300000),(66,'Myrtle Beach',32700),(67,'Sandy',96127),(68,'Crystal River',3129),(69,'Rancho Palos Verdes',42030),(70,'Johnson City',66515),(71,'Denver',705567),(72,'Boise',226115),(73,'Mardela Springs',463),(74,'Placitas',4686),(75,'Sterling Heights',132476),(76,'Norfolk',244601),(77,'Versailles',1621),(78,'Richmond',226622),(79,'Los Feliz',32557),(80,'Longwood',14930),(81,'Chesapeake',239982),(82,'East Berlin',1733),(83,'Jacksonville',890467),(84,'Pleasant Hill',8510),(85,'Lidgerwood',587),(86,'Hollywood',61469),(87,'Davie',104399),(88,'Bartow',19440),(89,'Highlands',1164),(90,'American Falls',4322),(91,'Marietta',60544),(92,'Flagstaff',72402),(93,'Eagle',133),(94,'Venice',23086),(95,'Lewistown',2316),(96,'Cypress',48893),(97,'Portland',645291),(98,'Peoria',113532),(99,'Dania Beach',32008),(100,'Mukwonago',8035),(101,'Lakeside',21917),(102,'Indian River Shores',4206),(103,'Jonesville',2409),(104,'Mojave',3855),(105,'Volney',5682),(106,'Richland',56399),(107,'Brooklyn',2590000),(108,'Wonder Lake',4466),(109,'Princeton',6116),(110,'Ocean',NULL),(111,'Shoreline',56267),(112,'Manhattan',1600000),(113,'Burney',3965),(114,'Ventura',109910),(115,'Fort Hunter Liggett',265),(116,'Reno',246500),(117,'Austin',950807),(118,'Saucier',1185),(119,'Albuquerque',559374),(120,'Moultrie',14069),(121,'San Francisco ',874961),(122,'Keswick',26757),(123,'Louisville ',617790),(124,'Bridgewater',44646),(125,'Newark',281054),(126,'Alanson',909),(127,'Downeast',11455),(128,'Atlanta',488800),(129,'Vancouver',180556),(130,'San Diego',1410000),(131,'Deatsville',1679),(132,'Lancaster',159028),(133,'Waterloo',4924),(134,'Ogden',86833),(135,'Fort Wayne',265752),(136,'Greenbelt',23219),(137,'Gainesville',39991),(138,'Long Beach',466776),(139,'Honolulu',898000),(140,'Middletown',16150),(141,'New York City',8419000),(142,'Towson',57817),(143,'Tampa',387916),(144,'Auburn',80134),(145,'Montgomery Village',34332),(146,'Wichita',389877),(147,'Edison',100693),(148,'Bellevue',144403),(149,'Issaquah',37965),(150,'Sicklerville',51276),(151,'Culver City',39169),(152,'Canton',1790),(153,'Laguna Woods',16053),(154,'Burbank',103703),(155,'Carthage',2363),(156,'Bastrop',8776),(157,'Mililani',27562),(158,'Yorkville',19352),(159,'Kennewick',81479),(160,'Brookville',5919),(161,'Carlsbad',29158),(162,'Titusville',45932),(163,'Imperial Beach',27315),(164,'Pensacola',52642),(165,'Shippensburg',5663),(166,'Lake Village',2294),(167,'Shillington',5300),(168,'Columbus',878553),(169,'Salem',169259),(170,'St. Joseph',8316),(171,'Evansville',118588),(172,'Hutchinson',40914),(173,'Temecula',113381),(174,'South Amherst',1820),(175,'Sultan',5166),(176,'Naperville',147501),(177,'Huntington',17067),(178,'Foster City',33997),(179,'Macon',153095),(180,'Dayville',6985),(181,'Hazelton',261),(182,'Irvine',273157),(183,'Burkeville',487),(184,'Buena Park',82489),(185,'Westlake',980),(186,'Pomfret',4204),(187,'Parkersburg ',30021),(188,'Allendale',1388),(189,'Vero Beach',16857),(190,'Taylorsville',60138),(191,'Athens',124719),(192,'Bakersfield',377917),(193,'Jeffersonville',47673),(194,'Unionville',533);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender` (
  `gender_id` int NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'female'),(2,'male'),(3,'nonbinary or gender non-conforming'),(4,'transgender'),(5,'genderqueer'),(6,'other');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informants`
--

DROP TABLE IF EXISTS `informants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informants` (
  `informant_id` int NOT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `age_id` int DEFAULT NULL,
  PRIMARY KEY (`informant_id`),
  KEY `gender_fk` (`gender_id`),
  KEY `age_fk` (`age_id`),
  CONSTRAINT `age_id` FOREIGN KEY (`age_id`) REFERENCES `age_group` (`age_id`),
  CONSTRAINT `gender_id` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informants`
--

LOCK TABLES `informants` WRITE;
/*!40000 ALTER TABLE `informants` DISABLE KEYS */;
INSERT INTO `informants` VALUES (1,'Carroll','Amara',1,6),(2,'Taylor','Xzavier',1,6),(3,'House','Genevieve',2,2),(4,'Tran','Landen',6,3),(5,'Mcguire','Lyric',3,3),(6,'Krause','Kaelyn',3,4),(7,'Riggs','Isabella',4,5),(8,'Holmes','Alec',1,6),(9,'Brady','Nyla',3,3),(10,'Mooney','Turner',3,2),(11,'Odom','Sincere',5,3),(12,'Fields','Kate',1,5),(13,'Short','Hunter',2,6),(14,'Carrillo','Roland',6,4),(15,'Stevens','Autumn',6,4),(16,'Ashley','Christopher',5,3),(17,'Beck','Alfonso',2,5),(18,'Compton','Damion',2,1),(19,'Wright','Miranda',3,5),(20,'Morris','Emilia',6,3),(21,'Shaffer','Nathalia',1,3),(22,'Robinson','Londyn',5,3),(23,'Waters','Stacy',2,2),(24,'Thornton','Kamora',2,2),(25,'Harmon','Shawn',6,4),(26,'Blackburn','Angel',2,5),(27,'Harper','Todd',2,3),(28,'Hull','Sarai',4,2),(29,'Carr','Juliana',5,3),(30,'Byrd','Naomi',1,4),(31,'Melton','Tyree',2,1),(32,'Palmer','Michaela',4,3),(33,'Dickerson','Chaim',5,5),(34,'Hayes','Owen',5,4),(35,'Perkins','Curtis',3,4),(36,'Hickman','Jeffrey',2,4),(37,'Vang','Aryan',5,4),(38,'Conley','Laila',2,3),(39,'Cowan','Mario',5,2),(40,'Bates','Zaiden',4,4),(41,'Conrad','Kimberly',6,4),(42,'Moody','Cole',2,4),(43,'Castro','Denzel',3,5),(44,'Schaefer','Dylan',6,3),(45,'Walls','Alondra',3,2),(46,'Schmidt','Brendan',3,5),(47,'Paul','Keenan',1,3),(48,'Zhang','Emmy',2,2),(49,'Baker','Rebecca',1,3),(50,'Chase','Zaid',3,4),(51,'Mann','Livia',2,3),(52,'Ray','Roberto',6,6),(53,'Cooper','Krista',3,1),(54,'Williams','Santos',2,3),(55,'Mcpherson','Abbie',4,1),(56,'Castaneda','Rishi',3,1),(57,'Young','Amanda',4,3),(58,'Andersen','Mariah',6,4),(59,'Adams','Maximilian',3,6),(60,'Chambers','Terrance',1,3),(61,'Duke','Cheyanne',1,4),(62,'Norman','Kelsey',2,4),(63,'Mckee','Carsen',3,3),(64,'Hampton','Aimee',3,6),(65,'Wong','Brisa',4,4),(66,'Pearson','Phoebe',5,3),(67,'Weeks','King',5,6),(68,'Conley','Lawson',3,3),(69,'Neal','Jaylon',2,4),(70,'Thomas','Jaidyn',3,1),(71,'Mitchell','Kade',6,1),(72,'Barber','Tabitha',4,2),(73,'Case','Brooks',1,6),(74,'Reed','Marcelo',3,4),(75,'Callahan','Dylan',2,4),(76,'Byrd','Joyce',6,5),(77,'Mills','Rafael',5,4),(78,'Landry','Annika',6,5),(79,'Wade','Meredith',2,6),(80,'Arroyo','Jamarion',1,5),(81,'Shah','Kelvin',2,4),(82,'Mora','Dominick',3,6),(83,'Holder','Ashlyn',5,6),(84,'Richardson','Layne',3,6),(85,'Johnson','Marie',2,5),(86,'Mcintosh','Barbara',2,2),(87,'Harvey','Malik',1,4),(88,'Mckinney','Justus',3,2),(89,'Bernard','Mitchell',3,2),(90,'Perez','Jovanni',2,5),(91,'Aguirre','Ezequiel',3,3),(92,'Archer','Giovanna',1,2),(93,'Snyder','Kayden',5,2),(94,'Figueroa','Autumn',2,6),(95,'Burton','Patrick',4,4),(96,'Boyd','Cristofer',1,1),(97,'Owen','Selina',1,1),(98,'Barajas','Adyson',6,1),(99,'Vang','Audrina',2,1),(100,'Proctor','Libby',5,1);
/*!40000 ALTER TABLE `informants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informants_sightings`
--

DROP TABLE IF EXISTS `informants_sightings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informants_sightings` (
  `informant_id` int NOT NULL,
  `sighting_id` int NOT NULL,
  PRIMARY KEY (`informant_id`,`sighting_id`),
  KEY `fk_informants_has_sightings_sightings1_idx` (`sighting_id`),
  KEY `fk_informants_has_sightings_informants1_idx` (`informant_id`),
  CONSTRAINT `fk_informants_has_sightings_informants1` FOREIGN KEY (`informant_id`) REFERENCES `informants` (`informant_id`),
  CONSTRAINT `fk_informants_has_sightings_sightings1` FOREIGN KEY (`sighting_id`) REFERENCES `sightings` (`sighting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informants_sightings`
--

LOCK TABLES `informants_sightings` WRITE;
/*!40000 ALTER TABLE `informants_sightings` DISABLE KEYS */;
INSERT INTO `informants_sightings` VALUES (1,1),(85,2),(64,3),(86,4),(44,5),(94,6),(73,7),(18,8),(16,9),(100,10),(55,11),(29,12),(14,13),(41,14),(38,15),(50,16),(32,17),(44,18),(10,19),(29,20),(55,21),(100,22),(71,23),(60,24),(77,25),(1,26),(50,27),(85,28),(63,29),(89,30),(28,31),(65,32),(38,33),(83,34),(93,35),(3,36),(34,37),(89,38),(79,39),(98,40),(100,41),(98,42),(77,43),(100,44),(98,45),(1,46),(15,47),(31,48),(56,49),(80,50),(93,51),(45,52),(50,53),(60,54),(3,55),(88,56),(32,57),(53,58),(36,59),(2,60),(33,61),(54,62),(11,63),(89,64),(53,65),(81,66),(98,67),(97,68),(66,69),(24,70),(82,71),(82,72),(29,73),(12,74),(9,75),(73,76),(22,77),(36,78),(32,79),(98,80),(15,81),(56,82),(11,83),(79,84),(28,85),(98,86),(33,87),(31,88),(4,89),(20,90),(53,91),(9,92),(98,93),(72,94),(87,95),(30,96),(14,97),(27,98),(54,99),(38,100),(33,101),(48,102),(14,103),(38,104),(26,105),(18,106),(55,107),(24,108),(18,109),(84,110),(44,111),(85,112),(99,113),(93,114),(22,115),(72,116),(67,117),(97,118),(35,119),(33,120),(2,121),(82,122),(65,123),(41,124),(18,125),(12,126),(77,127),(45,128),(86,129),(70,130),(7,131),(66,132),(9,133),(47,134),(56,135),(43,136),(7,137),(48,138),(98,139),(53,140),(85,141),(48,142),(54,143),(48,144),(71,145),(62,146),(1,147),(16,148),(72,149),(40,150),(83,151),(35,152),(15,153),(88,154),(81,155),(50,156),(53,157),(9,158),(84,159),(57,160),(39,161),(11,162),(71,163),(58,164),(81,165),(84,166),(86,167),(57,168),(86,169),(58,170),(98,171),(72,172),(13,173),(51,174),(61,175),(35,176),(25,177),(59,178),(55,179),(60,180),(43,181),(50,182),(7,183),(82,184),(35,185),(46,186),(86,187),(68,188),(87,189),(100,190),(60,191),(54,192),(36,193),(95,194),(39,195),(61,196),(79,197),(86,198),(92,199),(90,200),(41,201),(79,202),(89,203),(92,204),(54,205),(98,206),(1,207),(78,208),(80,209),(94,210),(10,211),(49,212),(63,213),(91,214),(52,215),(85,216),(74,217),(3,218),(61,219),(22,220),(37,221),(90,222),(11,223),(87,224),(47,225),(46,226),(46,227),(50,228),(17,229),(81,230),(58,231),(81,232),(59,233),(97,234),(71,235),(22,236),(61,237),(15,238),(83,239),(29,240),(61,241),(66,242),(19,243),(59,244),(79,245),(71,246),(48,247),(4,248),(4,249),(15,250);
/*!40000 ALTER TABLE `informants_sightings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` int NOT NULL,
  `region_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'northeast'),(2,'south'),(3,'midwest'),(4,'west'),(5,'other');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `repeat_informants`
--

DROP TABLE IF EXISTS `repeat_informants`;
/*!50001 DROP VIEW IF EXISTS `repeat_informants`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `repeat_informants` AS SELECT 
 1 AS `informant_id`,
 1 AS `informant`,
 1 AS `gender`,
 1 AS `age_group`,
 1 AS `frequency`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sightings`
--

DROP TABLE IF EXISTS `sightings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sightings` (
  `sighting_id` int NOT NULL,
  `summary` varchar(10000) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ufo_shape_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `state_territory_id` int DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`sighting_id`),
  KEY `shapeid_fk` (`ufo_shape_id`),
  KEY `cityid_fk` (`city_id`),
  KEY `stateid_fk` (`state_territory_id`),
  KEY `regionid_fk` (`region_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`),
  CONSTRAINT `state_id` FOREIGN KEY (`state_territory_id`) REFERENCES `state_territory` (`state_territory_id`),
  CONSTRAINT `ufo_shape_id` FOREIGN KEY (`ufo_shape_id`) REFERENCES `ufo_descr` (`ufo_shape_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sightings`
--

LOCK TABLES `sightings` WRITE;
/*!40000 ALTER TABLE `sightings` DISABLE KEYS */;
INSERT INTO `sightings` VALUES (1,'The four red lights that buzzed Nellis A.F.B. && The one Orange one that played cat',30,'2001-03-29 00:00:00',1,1,31,4),(2,'The shape of the craft was a diamond.The craft had circular lghts that were bright.It had a glare coming from the craft that was grayis',10,'2001-02-22 00:00:00',2,2,41,4),(3,'Bright diamond shape light at first it didn\'t move. Then it started getting lighter and brighter and smaller and bigger. Then it star',10,'2001-02-22 00:00:00',2,2,41,4),(4,'Bright diamond shape light nortwest sky right sbove a ridge line in the bac of our house, we wacthed the light pull apart from the side',10,'2001-02-22 00:00:00',2,2,41,4),(5,'Vertical shaft of light, traveling NorthWest in Southern Armstrong county Pa.',15,'2001-03-29 00:00:00',3,3,42,1),(6,'Two slowy flashing red lights observed flying just above tree level with no sound.',1,'2001-03-29 00:00:00',3,3,11,2),(7,'Cigar shaped object, heading west from east, that glowed in the sky like a floresent light bulb.',5,'2001-04-11 00:00:00',5,5,6,4),(8,'Black,grey,and white egg shape low to the ground and NO LIGHTS!',2,'2001-02-16 00:00:00',6,6,4,4),(9,'Two starlike objects, traveling west to east, one behind the other, making no noise and travelng faster than normal jet traffic.',2,'2001-02-17 00:00:00',3,7,25,3),(10,'Blue orb hovering over trees, then crosses feild.',4,'2001-02-20 00:00:00',8,8,39,3),(11,'Strange light formation over Las Vegas sky.',20,'2001-02-20 00:00:00',4,1,31,4),(12,'Star-like light visible with the sun risen',40,'2001-12-03 00:00:00',3,9,4,4),(13,'A flying object appeared to be on fire, South of the West Phoenix Valley.',30,'2001-12-02 00:00:00',7,10,4,4),(14,'A flying object appeared to be on fire, South of the West Phoenix Valley.',10,'2001-10-08 00:00:00',9,11,11,2),(15,'Bright, slow moving, zig-zagging light moving SE from SW.',5,'2001-08-19 00:00:00',3,12,55,3),(16,'Bright stationary light seen in NW sky.',25,'2002-03-17 00:00:00',3,13,53,4),(17,'4 lights in a row with 2 on the end at a angle at the end i think what the end was. all the lights went off an on for three or four tim',2,'2002-03-16 00:00:00',4,14,18,3),(18,'sUSPICIOUS ACTIVITY IN THE SKY.',20,'2002-02-13 00:00:00',10,15,4,4),(19,'Daytime Sighting in Toppenish, WA',15,'2002-08-12 00:00:00',11,16,53,4),(20,'I saw a large triangular shaped object covered with white lights in the sky.',5,'2002-08-13 00:00:00',12,17,48,2),(21,'What at first looked like a star, at 20 - 30 degrees off the horizon, was zig zagging and jumping up and down but didn\'t seem to be co',10,'2002-08-10 00:00:00',3,18,33,1),(22,'Glowing UFO spotted around a military airstation',5,'2002-11-04 00:00:00',11,19,52,2),(23,'Large white cylinder shaped object - stationary then accerated out of sight',4,'2002-11-03 00:00:00',13,20,48,2),(24,'I was walking towards City Market Supermarket on Rood Avenue (going west) today. the sun had just set minutes before. It was still very',3,'2002-11-02 00:00:00',9,21,7,4),(25,'black object appeared to float and change shape at altitude. maybe from vandenburg',20,'2002-11-02 00:00:00',14,22,6,4),(26,'North New Jersey Rocket shaped craft seen',2,'2002-11-03 00:00:00',9,23,33,1),(27,'4 craft seen hovering in illinois',3,'2002-09-08 00:00:00',2,24,16,3),(28,'blimp-like ufo seen 15 miles east of Tallahassee',5,'2003-01-14 00:00:00',13,25,11,2),(29,'saw something weird on the 15th',25,'2003-06-15 00:00:00',6,26,27,2),(30,'i could tell you this: IT WAS NOT AN AIRPLANE!',15,'2003-06-15 00:00:00',9,27,41,4),(31,'\"Stars\"\" moving together over Anchorage\"',1,'2003-04-19 00:00:00',3,28,2,4),(32,'large, low flying object with two lights flying east over Hesperus, Co.',15,'2003-12-18 00:00:00',5,29,7,4),(33,'I was on a break at work when me and a bunch of my co-workers saw the 3 shapes in the sky. They were still for a minute, then took off',2,'2003-12-16 00:00:00',18,30,24,1),(34,'Vacillating object seen through kitchen window',15,'2003-12-15 00:00:00',14,31,23,2),(35,'I-81 south of Hagerstown MD, we saw what appeared to be a large, triangular object hovering just above the trees.',1,'2003-12-03 00:00:00',12,32,23,2),(36,'Odd crying and electronic beeping from hills, odd creature seen during childhood.',30,'2003-07-03 00:00:00',3,33,20,2),(37,'Spacecraft Defaces Old Man',1,'2003-05-15 00:00:00',2,34,32,1),(38,'A comet-like object with a vapor trail behind it hovering above trees',3,'2003-09-25 00:00:00',16,35,11,2),(39,'Oval object with a rotating tethered object in the middle, observerd Oval blow up',5,'2004-05-03 00:00:00',16,36,6,4),(40,'At first it was noticed when a plane flew by. Then after the plane was gone we noticed a flashing light that appeard to be moving back',20,'2004-05-02 00:00:00',4,10,4,4),(41,'vertical bright cylindrical object',5,'2004-05-02 00:00:00',13,37,48,2),(42,'Metallic disc seen slowly tumbling over Venice Beach, CA heading north.',60,'2004-05-02 00:00:00',11,38,6,4),(43,'Very bright star, no tail, moving at the speed of an airplane, then diming to nothing within seconds. ((NUFORC Note: Satellite?? PD))',3,'2004-09-01 00:00:00',3,39,24,1),(44,'Two Oval/Egg shaped objects over Providence sky',2,'2004-09-01 00:00:00',6,40,44,1),(45,'I saw a small point of light meandering in the sky',10,'2004-09-01 00:00:00',3,41,55,3),(46,'shiny \"ball\"\" hovering motionless in the sky on a very clear evening\"',5,'2004-09-01 00:00:00',16,42,35,1),(47,'White plane-like object with two gold orbs above it-very noisey.',5,'2004-09-01 00:00:00',8,43,34,4),(48,'Three white light and on small light',30,'2004-09-01 00:00:00',12,44,4,4),(49,'Three bright lights seen in sky',20,'2004-09-01 00:00:00',3,45,39,3),(50,'MUFON/TN REPORT: Two joined objects spotted during nightly observations.',4,'2004-06-16 00:00:00',9,46,47,2),(51,'Orange object hovering and then darting erratically like a hummingbird several times above tree line a long distance away.',2,'2013-02-28 00:00:00',17,115,6,4),(52,'2 small, silvery spheres over Reno, NV, 3 times faster than jet,, appear and disappear out of clear blue sky.',8,'2013-02-28 00:00:00',8,116,31,4),(53,'On feb 4th 2013 my daughter was taking pictures of me and a creature appeared next to me. My daughter shouted and said mommy an alien i',NULL,'2013-02-04 00:00:00',7,117,48,3),(54,'Was walking my dog tonight and seen some sort of craft hovering low in the trees, and then it came out and made a big loop low in the s',30,'2013-02-07 00:00:00',2,118,27,2),(55,'THE SKY SOUTHEAST OF ABQ THERE WAS A GROUPING OF LIGHTS JUMPING IN ONE AREA FOR OVER AN HOUR',90,'2013-08-31 00:00:00',3,119,34,4),(56,'I was helping my girlfriend with laundry out of car when I notice what looked like a star. I told her to look at the crept star and the',2,'2013-08-25 00:00:00',10,120,12,2),(57,'Slowly falling red light with a second smaller white light shooting out of it.',1,'2013-06-30 00:00:00',7,121,6,4),(58,'Bedroom Invasion.',15,'2013-06-30 00:00:00',NULL,122,NULL,NULL),(59,'Black Triangle hanging in place over louisville street.',2,'2013-11-30 00:00:00',12,123,20,2),(60,'I clearly witnessed a craft on fire that cruised over my house in a steady direction slow down then get smaller and disappear.',3,'2013-11-30 00:00:00',7,124,33,1),(61,'Black egg floating in the air on freylinghuysen ave by mcD\'s.',NULL,'2013-11-29 00:00:00',6,125,33,1),(62,'((HOAX??))I was walking by the sliding glass door of my house when something caught the corner of my eye out in the snow covered field.',20,'2014-01-30 00:00:00',11,126,25,3),(63,'((HOAX??))I was walking by the sliding glass door of my house when something caught the corner of my eye out in the snow covered field.',7,'2014-01-28 00:00:00',10,127,22,1),(64,'((HOAX)) I was taken up and served as a prince, the small yellow creatures acted as if they had never seen a human before.',28,'2014-04-29 00:00:00',6,128,12,2),(65,'Very strange sound heard sounded as if it had a melody.',20,'2014-04-28 00:00:00',4,129,53,4),(66,'My husband and I were outside searching for a missing pet, and we noticed a stationary bright light, which appeared to us upon first gl',10,'2013-08-30 00:00:00',9,74,34,4),(67,'We were illuminated by a bright, white light, while walking in a dark, secluded pasture.',2,'2014-08-30 00:00:00',3,130,6,4),(68,'Commercial pilot witnesses strange triangular craft, with lights in its corners.',1,'2014-08-30 00:00:00',12,31,23,2),(69,'Star like object traveling at super extreme speed covering most of the night sky, with a 2 second spotlight burst halfway in flight.',1,'2014-08-26 00:00:00',3,131,1,2),(70,'Orange orbs. ((NUFORC Note: Later reported to have been a launch of \"Chinese\"\" lanterns. PD))\"',5,'2014-11-27 00:00:00',3,11,11,2),(71,'Fireball beamed me.',1,'2014-11-26 00:00:00',7,132,6,4),(72,'Extremely bright white, large, stationary light in west. overcast night. No flashing or movement. Went into store, it was gone when we',3,'2014-11-23 00:00:00',3,133,35,1),(73,'I was waiting too watch fireworks on new years and watching from my yard I saw three spears of lights dancing around the top of the mou',5,'2014-12-31 00:00:00',8,134,50,4),(74,'Orange orbs seen in southeast sky over Vancouver WA on New Years Eve at about 10:15pm',15,'2014-12-31 00:00:00',3,129,53,4),(75,'My cousin and I were having a cigarette on here porch. Happened to look up in the sky ,first we seen the orange orb. It was going towar',5,'2014-12-28 00:00:00',7,97,22,1),(76,'walked outside to see a craft i couldnt believe, even as i was staring at it trying to find reason to dismiss it.',1,'2015-03-31 00:00:00',12,135,17,3),(77,'5 bright objects. 3 in a specific triangle shape. Moved 1 yard from tree branch measuring spot of origin.',5,'2015-03-16 00:00:00',NULL,136,23,2),(78,'Object looked like a blimp sort with helicopter; flashing blue light in front.',10,'2015-03-15 00:00:00',16,11,11,2),(79,'Saw 2 very bright still circle object in the westward sky.',10,'2015-06-30 00:00:00',10,97,53,4),(80,'Multiple objects possibly on fire, leaving a bright trail. ((NUFORC Note: Re-entering satellite. PD))',1,'2015-06-29 00:00:00',7,137,12,2),(81,'Equilateral triangle of diffuse, stationary white lights off coast.',3,'2015-06-27 00:00:00',10,138,6,4),(82,'Ball of light.',2,'2015-09-30 00:00:00',3,139,14,5),(83,'High altitude bright white light strobe, multidirectional and stationary.',30,'2015-09-30 00:00:00',3,138,6,4),(84,'Shapeshifting orb hovering through chemtrails over downtown Phoenix.',8,'2015-09-30 00:00:00',14,38,6,4),(85,'Looking out my patio sliding glass door in a southerly direction, I saw three oblong, football shaped objects slowly flying NE.',1,'2015-11-27 00:00:00',18,140,44,1),(86,'Saw three lights heading north up the Hudson river, all separated by about five minute intervals. At first I suspected they were Chine',20,'2015-11-26 00:00:00',3,107,35,1),(87,'Hovering red lights. Not any known Comercial aircraft landing lights or navagation lights.',15,'2015-11-24 00:00:00',3,1,31,4),(88,'Two bright stationary lights seen in the sky. ((NUFORC Note: Possible landing lights on approaching airliners?? PD))',2,'2016-02-28 00:00:00',3,141,35,1),(89,'My husband had some very disturbing nightmares and wakes up shaken and with a horrible migraine and our bed is soaked in sweat under hi',NULL,'2016-02-21 00:00:00',NULL,11,11,2),(90,'Noticed streaks in the sky while driving. At first one, then two, then three.',1,'2016-02-20 00:00:00',7,142,23,2),(91,'Seen a lighting cloud and next to it was a bright circle shining.',NULL,'2016-05-30 00:00:00',10,143,11,2),(92,'Fireball changing directions over Auburn.',2,'2016-05-30 00:00:00',7,144,53,4),(93,'on the Night of May 28, 2016 My husband was on the patio at our condo and noticed a bright red object hoovering in the sky he proceeded',1,'2016-05-28 00:00:00',3,145,23,2),(94,'Baffling Green Orb In the Skies Of Wichita Kansas',1,'2016-10-31 00:00:00',3,146,19,3),(95,'4 oval-like white crafts moving through the sky.',2,'2016-10-18 00:00:00',16,147,33,1),(96,'I was outside at work, and there were 3 lights in the sky going North to South...started in a straight line, then separated with the ce',1,'2016-10-01 00:00:00',3,47,11,2),(97,'The pyramid shaped like craft flew from the west to east.it was very cloudy weather. The craft was huge and bright with a amber color.',2,'2016-12-31 00:00:00',2,44,4,2),(98,'Metallic object flashing in sky.',20,'2016-12-31 00:00:00',3,6,4,2),(99,'Unusual lighted maneuvering object in the sky in NW Las Vegas',1,'2016-12-27 00:00:00',4,1,31,2),(100,'hovering object flashing white then red light. no sound. medium altitude. second object just red. ((anonymous report))',10,'2016-12-21 00:00:00',10,141,35,1),(101,'Four orbs in the sky.',7,'2017-01-06 00:00:00',8,67,50,4),(102,'It stayed completely still for at least 30 minutes, it kept getting brighter. ((NUFORC Note: Venus?? PD))',30,'2017-01-19 00:00:00',9,68,11,2),(103,'Saw a red circular orb light with other orbs circling it in the night sky.',2,'2017-02-10 00:00:00',8,69,6,4),(104,'Round craft seen over Johnson City, Tn. Multiple witnesses. Had the effects of egg embryo in close look through high power night scope.',60,'2017-02-10 00:00:00',6,70,47,2),(105,'They were triangles quick and never seen anything like it. ((anonymous report))',1,'2017-05-11 00:00:00',12,71,7,4),(106,'Cigar-shaped ship, covered In glittery bright white lights.',1,'2017-07-23 00:00:00',3,72,15,4),(107,'Rotating oval shaped object with multicolored lights moving in very fast erratic patterns.',20,'2017-11-09 00:00:00',16,73,23,2),(108,'Sequence of blinking lights; northward. Lights were seen towards the Jemez landscape',1,'2017-12-10 00:00:00',3,74,34,4),(109,'Orange fiery ball of light moving back and forth then shoots away in a flash and leaves a fiery trail.',1,'2018-01-18 00:00:00',10,75,25,3),(110,'UFO fireball very low flying, very fast, silent',4,'2018-03-02 00:00:00',10,76,52,2),(111,'On this day my BF and I saw a light in the sky. Greenish. It was swimming like a sperm in the sky. A meteorite flashed by.',1,'2018-04-26 00:00:00',3,77,42,1),(112,'Very low flying triangle shape craft, lights on edges and floated above roads for a few seconds.',3,'2018-06-01 00:00:00',12,78,52,2),(113,'White circle was moving and stopping above the cloud line for about 10 minutes.',10,'2018-07-13 00:00:00',10,79,6,4),(114,'Triangle UFO in Orlando.',3,'2018-08-22 00:00:00',12,80,11,2),(115,'Purple beam of light.',3,'2018-09-25 00:00:00',3,81,52,2),(116,'ooked like a flock of geese, but had a faint light (glow) and there was no noise and moved fast and steady.',1,'2018-10-14 00:00:00',9,82,42,1),(117,'Ball of orange light',1,'2018-11-22 00:00:00',3,83,11,2),(118,'I observed a round circular silver metalic object traveling E overhead in the clouds, then race extremely fast.',1,'2018-12-12 00:00:00',10,84,28,3),(119,'Flew quickly straight across sky from east to west.',1,'2019-01-03 00:00:00',3,85,37,3),(120,'Circular red object with green flashing light performs dazzling maneuvers over Hollywood.',6,'2019-01-31 00:00:00',10,87,6,4),(121,'Yellow/green just hovering over neighbors House. Plane is approaching from the west And it just took off south at lighting speed.',2,'2019-03-11 00:00:00',3,88,11,2),(122,'Three objects changing shapes and colors over Bartow, FL.',30,'2019-04-18 00:00:00',9,89,11,2),(123,'I have about 10 recordings from last night on my ring phone at my house. There appears to be between 4 and 6 lights coming and going.',1,'2019-05-09 00:00:00',3,90,36,2),(124,'Bright moving object in the sky in American Falls, Idaho',5,'2019-06-27 00:00:00',3,91,15,4),(125,'I saw a light above Dobbins AFB in Marietta, GA, that was 10 times as bright as any star in the sky and 5 times as bright as an a/c',10,'2019-07-25 00:00:00',3,92,12,2),(126,'White cylindrical object spotted hovering stationary well above cloud level. Appears to be staying completely still, as shown by clouds',NULL,'2019-09-12 00:00:00',13,93,4,4),(127,'5 bright lights hovering in the sky in a circle',5,'2019-10-04 00:00:00',3,45,4,4),(128,'10 sec. metal rectangle moves from 20-80\' dissapeared as if in though clouds with clear skies (cloaking?)',1,'2019-12-22 00:00:00',21,94,25,3),(129,'7 craft moving in succession.',5,'2020-02-07 00:00:00',9,95,11,2),(130,'Ring doorbell caught image of light and spaceship',1,'2020-04-09 00:00:00',3,96,16,3),(131,'Ring app captures unique cloud formations then triangular lighted object followed by what appears to be a disc shaped object.',50,'2020-05-01 00:00:00',3,97,6,4),(132,'range orb seen at a very high rate of speed',1,'2020-06-25 00:00:00',22,98,41,4),(133,'Multicolored flashing moving light in sky',60,'2020-07-03 00:00:00',3,99,16,3),(134,'Metallic ball flying.',3,'2020-08-06 00:00:00',10,100,11,2),(135,'Triangle with 3 white lights on corners.',2,'2020-09-04 00:00:00',12,101,55,3),(136,'White spots in space',5,'2020-11-05 00:00:00',10,102,6,4),(137,'Orange orb over Indian River Shores Florida',4,'2020-12-23 00:00:00',22,103,11,2),(138,'Strange flashing lights across the sky',1,'2021-01-19 00:00:00',3,104,25,3),(139,'White lights unevenly spaced travelling from west to east.',4,'2021-01-22 00:00:00',3,105,6,4),(140,'WATCHING LIVE VALCANOS AND SAW SEVERAL UFOS',2,'2021-02-23 00:00:00',11,106,35,1),(141,'Slow moving cluster of fireballs crossing from SW to NE over the Tri-Cities, WA',1,'2021-03-31 00:00:00',22,107,53,4),(142,'Saw a steady pulsating fireball above that moved slowly away',2,'2021-04-23 00:00:00',7,108,35,1),(143,'Looked like pieces of falling meteor...instead of burning out they spaced out evenly and flew North parallel to earth at great speed.',1,'2021-05-20 00:00:00',7,29,2,4),(144,'Multiple Objects seen in the sky during a commercial flight',60,'2021-08-20 00:00:00',6,111,57,5),(145,'Odd white low streak going across the sky',3,'2021-09-07 00:00:00',8,14,6,4),(146,'White round light with no movement and no sound over the Hudson River viewable from the W. 60\'s in Manhattan',10,'2021-10-19 00:00:00',6,112,35,1),(147,'Aliens in my attic?!',120,'2021-10-26 00:00:00',3,113,6,4),(148,'Bright Object seen in Western sky',12,'2021-11-15 00:00:00',3,114,6,4),(149,'Object seen floating over North West Las Vegas',5,'2009-05-31 00:00:00',8,1,31,4),(150,'Wabboling UFO effect.',1,'2009-06-01 00:00:00',9,6,4,4),(151,'possibl eufo sighted in miami dade county florida near airport',1,'2009-03-13 00:00:00',8,11,11,2),(152,'Eastern sky, light over Orlando',8,'2009-01-17 00:00:00',3,4,11,2),(153,'Blue metallic sphere in early morning sky',20,'2009-08-03 00:00:00',8,4,11,2),(154,'circular fireball slowly flew over me',2,'2009-11-26 00:00:00',7,6,4,4),(155,'UFO over Walla Walla WA.',80,'2009-09-13 00:00:00',4,13,53,4),(156,'Lights seen in Virginia Beach sky',7,'2009-07-06 00:00:00',3,19,52,2),(157,'Unusual seemingly stationary bright object',15,'2009-03-28 00:00:00',4,38,6,4),(158,'Orange light over the ocean',5,'2009-04-04 00:00:00',3,47,11,2),(159,'Shiny silver saucer over Ahwatukee,Phoenix, AZ',2,'2009-03-22 00:00:00',11,44,4,4),(160,'a bright light shined on me and 5 buddies and then we saw ufos',30,'2009-03-22 00:00:00',19,48,36,2),(161,'5 white circular things in the L.A. sky on the day before valentine\'s day...',20,'2010-02-13 00:00:00',10,38,6,4),(162,'Two different colored lights, stationary & above the clouds.',15,'2010-03-23 00:00:00',3,49,40,2),(163,'Two extreme bright lights in the sky and suddenly a third appeared',5,'2010-03-05 00:00:00',3,50,8,1),(164,'Fireball over Tacoma Wa.',2,'2010-03-05 00:00:00',7,51,53,4),(165,'UFO Sighting Report I was doing some night photography at St. Johnâ€™s College in Annapolis, Maryland on March 19, 2010 at 21:16.',3,'2010-03-19 00:00:00',11,52,23,2),(166,'Black object hovering over central Phoenix',5,'2010-03-05 00:00:00',9,44,4,4),(167,'Multiple sightings in the Havre area, 3 known witnesses ',30,'2010-03-11 00:00:00',3,53,29,4),(168,'We saw an object round in shape appear in the SW sky that traveled NE ((NUFORC Note: Overflight of ISS. ))',2,'2010-08-25 00:00:00',10,54,25,3),(169,'Multicolored light in the sky. ((NUFORC Note: Possibly a \"twinkling\"\" star. PD))\"',20,'2010-08-25 00:00:00',3,55,33,1),(170,'Orange orb floating over Baltimore',20,'2010-08-29 00:00:00',3,56,23,2),(171,'Ufo In Virginia Beach',2,'2010-09-21 00:00:00',8,19,52,2),(172,'Bright object crosses Colorado\'s Southern sky',1,'2010-09-13 00:00:00',3,21,7,4),(173,'peculiar moving bright lights over seattle sound headed sw',5,'2010-09-29 00:00:00',4,57,53,4),(174,'red lights orbing over miami ,fl night sky new years morning 1;00 am',10,'2011-01-01 00:00:00',9,11,11,2),(175,'UFOs in a V formation over Orlando, Fl.',15,'2011-01-01 00:00:00',10,4,11,2),(176,'Three orange lights over northeast Seattle',15,'2011-02-02 00:00:00',7,57,53,4),(177,'Bowl or saucer shaped craft in a playground',2,'2011-02-21 00:00:00',11,58,30,3),(178,'Did anyone see the Triangle with lights in the sky in Bemidji, March 1, 2011 at 7:55?',4,'2011-03-01 00:00:00',12,59,29,3),(179,'Dimond shaped craft hovering in Ormond Beach FL',15,'2011-02-27 00:00:00',2,35,11,2),(180,'3 OVAL SPINNING CRAFT OVER VISTA AREA',25,'2011-03-05 00:00:00',16,60,6,4),(181,'Bright light in middle Georgia moving extremely slow them disappearing into thin air.',2,'2011-12-15 00:00:00',3,61,12,2),(182,'Strange white light in sky along with other aircraft',40,'2011-12-15 00:00:00',22,62,45,2),(183,'Red light over bemidji mn slowly moving east',2,'2011-12-01 00:00:00',10,59,29,3),(184,'Triangle Object',20,'2011-05-17 00:00:00',12,58,30,3),(185,'UFO CAME NOT 1 BUT THREE TIMES ',20,'2011-09-23 00:00:00',4,11,11,2),(186,'Green Lights land in my yard!',15,'2011-10-25 00:00:00',19,63,34,4),(187,'Bright amber lights seen over Kalama Park in Kihei, Maui.',2,'2012-01-02 00:00:00',3,64,14,4),(188,'Three UFOs spotted over Walla Walla WA. on new years day by five witnesses.',15,'2012-01-01 00:00:00',8,13,53,4),(189,'Five glowing lights traveling at slow speeds without engine noise.',5,'2012-01-01 00:00:00',8,28,2,4),(190,'Triangle shaped light low on horizon did not move for more than 30 minutes, but did flash intermittently.',35,'2012-08-06 00:00:00',12,32,23,2),(191,'I saw 2 unidentified objects flying at night .',2,'2012-08-17 00:00:00',9,65,48,2),(192,'Me and brothers saw 2 orange lights in the sky 2 times',20,'2012-07-18 00:00:00',7,66,45,2),(193,'Red fireball? flys across St. Augustine sky!',3,'2012-07-12 00:00:00',7,47,11,2),(194,'stationary fireballs seen in sky south of interstate 8 and west of Gila Bend about 20min',10,'2012-06-27 00:00:00',7,15,4,4),(195,'3 lights in formation NW of Peoria, AZ.',1,'2012-06-19 00:00:00',1,10,4,4),(196,'Our alien ancestors are really starting to make there present felt.',10,'2012-06-17 00:00:00',8,56,23,2),(197,'Red-Orange Orb Sighting in Hagerstown Maryland, USA on 03/18/2012',2,'2012-03-18 00:00:00',8,32,23,2),(198,'\"Fireball\"\" red circle that hovers in sky NW between Bemidji and Red Lake. ((NUFORC Note: Possible sighting of Sirius?? PD))\"',15,'2012-04-17 00:00:00',7,59,29,3),(199,'Multi colored object, split into 3 lights, then split into 2 white lights northwesterly of Mercer Island, WA',15,'2005-01-10 00:00:00',14,148,53,4),(200,'4 craft with red & white lights hovering over Lake Sammamish, WA.	',10,'2005-02-07 00:00:00',11,149,53,4),(201,'I noticed in the sky this Triangle Yellow Light moving slowly around a little forest that we have between our complex (Asten Woods)',2,'2005-04-09 00:00:00',12,150,33,1),(202,'Boomerang shaped aircraft 10 lights over Culver City, CA',1,'2005-05-08 00:00:00',12,151,6,4),(203,'Military aircraft and a UFo flying close by.',2,'2005-06-19 00:00:00',19,152,42,1),(204,'Silver Ball Flashes Bright Gold with military aircraft orbiting',30,'2005-07-04 00:00:00',15,153,6,4),(205,'Two silently floating cloth-like triangular shaped objects shooting gold sparks near Bob Hope Airport	',10,'2005-07-15 00:00:00',12,154,6,4),(206,'Cone-shaped light that changes colors	',2,'2005-09-04 00:00:00',19,146,19,3),(207,'it looked like a big roman candle shooting off',2,'2005-09-14 00:00:00',15,155,16,3),(208,'3 white spheres/ovals in a triangular formation, fixed in position. Very high in the sky but not as high as stars would look. Over San	',15,'2005-10-08 00:00:00',16,121,6,4),(209,'Seemingly very high altitude light/object moving at various speeds, and not in a straight line.',15,'2005-11-07 00:00:00',3,156,48,2),(210,'two orange oval shape objects flying over Mililani, Oahu Hawaii. ((NUFORC Note: High-altitude jets?? PD))	',5,'2005-12-11 00:00:00',16,157,14,4),(211,'15, bright orange, fire looking, U.F.O\'s sighted',5,'2006-02-13 00:00:00',16,158,16,3),(212,'Rectangular object with four pulsing red lights at the corners, moving slowing and silently',10,'2006-03-09 00:00:00',21,159,53,4),(213,'Three red lights in Triangular shape, intercepted by small plane, then moves away.	',15,'2006-05-07 00:00:00',12,160,39,3),(214,'Strange light moving by moon. ((NUFORC Note: Space Station flew over Carlsbad, NM, at 2022-2026 hrs. on this date. PD))	',1,'2006-05-11 00:00:00',3,161,34,4),(215,'ufo sighting over Cape Canaveral 10:00 pm sat. July 1st	',10,'2006-07-01 00:00:00',12,162,11,2),(216,'San Diego CA, Bright orange light traveled east , then faded and parachute/ jellyfish shaped object floated downward slowly.	',2,'2006-07-13 00:00:00',14,163,6,4),(217,'Six orange glowing diamond shaped objects in two separate clusters due east of Pensacola	',60,'2006-10-11 00:00:00',2,164,11,2),(218,'Metallic circlur object floating across the sky	',5,'2006-10-24 00:00:00',10,165,42,1),(219,'My friends and I were standing outside in the central phoenix area, when one of them informed me of a large white light above Sky Harbo	',2,'2006-11-24 00:00:00',21,44,4,4),(220,'two air craft one known the other? ((NUFORC Note: Report appears to be unrelated to UFO activity. PD))	',3,'2006-11-30 00:00:00',12,166,5,2),(221,'small silver object following jet	',1,'2006-12-02 00:00:00',10,167,42,1),(222,'Two fat weiner-shaped objects traveling north-north-west. Maintained wide distance apart. Wind at near-by Bolton Field SE at 4 mph. Alt	',2,'2006-12-11 00:00:00',19,168,39,3),(223,'Bright white object .	',2,'2007-01-09 00:00:00',15,11,11,2),(224,'A triangle shape of 3 rapidly flashing blue-white lights moving slowly over downtown Salem, OR	',10,'2007-01-27 00:00:00',12,169,41,4),(225,'I saw bright lights on two occasions over Lake Michigan a little after 10 p.m. on February 7, 2007	',3,'2007-02-07 00:00:00',3,170,25,3),(226,'Evansville, IN 2/22/07---LARGE Craft passed overhead, noise eminated, definitely not standard aircraft, report from amateur astronomer	',2,'2007-02-22 00:00:00',21,171,3,3),(227,'Yellow fifteen foot sphere moved from Hutchinson to Wichita	',2,'2007-03-01 00:00:00',10,172,19,3),(228,'several blinking lights in circle formation, moving in a circle motion	',3,'2007-03-07 00:00:00',1,173,6,4),(229,'Two backward slanted cylinders flying in a momma duck formation. One huge, one smaller still large in size in broad daylight        ',1,'2007-04-02 00:00:00',13,174,39,3),(230,'The triangular object had red and white blinking lights.	',10,'2007-04-22 00:00:00',12,175,53,4),(231,'Sighting of inverted egg or tear drop object	',2,'2007-05-18 00:00:00',6,176,16,3),(232,'two black objects flying slowing south	',3,'2007-06-03 00:00:00',16,177,17,3),(233,'Two black spheres and a triangular craft, all with several red and white lights.	',4,'2007-06-11 00:00:00',8,178,6,4),(234,'Twin flashing lights seen over Macon, GA	',1,'2007-07-17 00:00:00',15,179,12,2),(235,'Orange glowing round or oval object moving very fast from west to east	',1,'2007-08-04 00:00:00',16,180,8,1),(236,'Mostly white with a little color spherical object moving erratically through the North Dakota sky near Hazelton.	',15,'2007-08-13 00:00:00',8,181,37,3),(237,'several bluish green lights created a circular object.	',5,'2007-09-18 00:00:00',10,182,6,4),(238,'Red lights flashing and moving erratically through the sky	',5,'2007-10-04 00:00:00',3,183,52,2),(239,'Brigh orange light seen in the sky over Orange County California.	',10,'2007-11-26 00:00:00',7,184,6,4),(240,'Before dawn, I saw a source of light moving steadily, high in the sky for 10 minutes, then stop. ((NUFORC Note: Venus?? PD))	',15,'2007-12-12 00:00:00',2,185,52,2),(241,'Triangle with lights across the back	',4,'2008-01-16 00:00:00',12,186,8,1),(242,'2 Witness\'s Saw A Stationary Object Hovering Near A Cell Phone Tower. \"Object was Hugh\"\" Changed from Red To Amber Color \"\"No Sound\"\"	\"',2,'2008-02-10 00:00:00',12,187,54,2),(243,'3 Triangle ufos over Allendale, Ca ((NUFORC Note: Student report. Possible hoax, we wonder. PD))	',30,'2008-02-28 00:00:00',12,188,6,4),(244,'Two cigar shaped craft moving at the speed of thought played leap frog with each other at the beach.	',3,'2008-04-14 00:00:00',5,189,11,2),(245,'Two multiple UFO sighting in SLC, UT. Two objects in first sighting, three in the second.	',3,'2008-06-10 00:00:00',10,190,50,4),(246,'Red orb drops white orbs at night	',1,'2008-07-04 00:00:00',3,191,12,2),(247,'My cousin says whats that a bird? i look up to see a rectangular object moving across the night sky.	',2,'2008-08-10 00:00:00',21,192,6,4),(248,'Bright, flashing object see overhead in Jeffersonville.	',60,'2008-10-31 00:00:00',11,193,17,3),(249,'Round orb like had a hovering movement. A smaller piece separated from the bigger identical of the larger one.',60,'2021-10-29 00:00:00',16,97,41,4),(250,'Large and fast moving saucer shaped craft spotted over trees',7,'2021-11-15 00:00:00',11,194,25,3);
/*!40000 ALTER TABLE `sightings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `state_region`
--

DROP TABLE IF EXISTS `state_region`;
/*!50001 DROP VIEW IF EXISTS `state_region`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `state_region` AS SELECT 
 1 AS `state_territory_id`,
 1 AS `state_territory_name`,
 1 AS `state frequency`,
 1 AS `region_id`,
 1 AS `region_name`,
 1 AS `region frequency`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `state_territory`
--

DROP TABLE IF EXISTS `state_territory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_territory` (
  `state_territory_id` int NOT NULL,
  `state_territory_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`state_territory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_territory`
--

LOCK TABLES `state_territory` WRITE;
/*!40000 ALTER TABLE `state_territory` DISABLE KEYS */;
INSERT INTO `state_territory` VALUES (1,'Alabama'),(2,'Alaska'),(3,'American Samoa'),(4,'Arizona'),(5,'Arkansas'),(6,'California'),(7,'Colorado'),(8,'Connecticut'),(9,'Delaware'),(10,'District of Columbia'),(11,'Florida'),(12,'Georgia'),(13,'Guam'),(14,'Hawaii'),(15,'Idaho'),(16,'Illinois'),(17,'Indiana'),(18,'Iowa'),(19,'Kansas'),(20,'Kentucky'),(21,'Louisiana'),(22,'Maine'),(23,'Maryland'),(24,'Massachusetts'),(25,'Michigan'),(26,'Minnesota'),(27,'Mississippi'),(28,'Missouri'),(29,'Montana'),(30,'Nebraska'),(31,'Nevada'),(32,'New Hampshire'),(33,'New Jersey'),(34,'New Mexico'),(35,'New York'),(36,'North Carolina'),(37,'North Dakota'),(38,'Northern Mariana Islands'),(39,'Ohio'),(40,'Oklahoma'),(41,'Oregon'),(42,'Pennsylvania'),(43,'Puerto Rico'),(44,'Rhode Island'),(45,'South Carolina'),(46,'South Dakota'),(47,'Tennessee'),(48,'Texas'),(49,'U.S. Virgin Islands'),(50,'Utah'),(51,'Vermont'),(52,'Virginia'),(53,'Washington'),(54,'West Virginia'),(55,'Wisconsin'),(56,'Wyoming'),(57,'Ocean (Near U.S.)');
/*!40000 ALTER TABLE `state_territory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ufo_descr`
--

DROP TABLE IF EXISTS `ufo_descr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ufo_descr` (
  `ufo_shape_id` int NOT NULL,
  `shape_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ufo_shape_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ufo_descr`
--

LOCK TABLES `ufo_descr` WRITE;
/*!40000 ALTER TABLE `ufo_descr` DISABLE KEYS */;
INSERT INTO `ufo_descr` VALUES (1,'formation'),(2,'diamond'),(3,'light'),(4,'unknown'),(5,'cigar'),(6,'egg'),(7,'fireball'),(8,'sphere'),(9,'other'),(10,'circle'),(11,'disk'),(12,'triangle'),(13,'cylinder'),(14,'changing'),(15,'flash'),(16,'oval'),(17,'chevron'),(18,'teardrop'),(19,'cone'),(20,'cross'),(21,'rectangle'),(22,'orb');
/*!40000 ALTER TABLE `ufo_descr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `avg_dur`
--

/*!50001 DROP VIEW IF EXISTS `avg_dur`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_dur` AS select `sightings`.`sighting_id` AS `sighting_id`,`sightings`.`summary` AS `summary`,`sightings`.`duration` AS `duration`,`sightings`.`date` AS `date`,`ufo_descr`.`shape_type` AS `shape`,`city`.`city_name` AS `city`,`state_territory`.`state_territory_name` AS `state`,`city`.`population` AS `population` from ((((`sightings` join `ufo_descr` on((`sightings`.`ufo_shape_id` = `ufo_descr`.`ufo_shape_id`))) join `city` on((`sightings`.`city_id` = `city`.`city_id`))) join `state_territory` on((`sightings`.`state_territory_id` = `state_territory`.`state_territory_id`))) join `region` on((`sightings`.`region_id` = `region`.`region_id`))) where (`sightings`.`region_id` = 4) order by `sightings`.`duration` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_pop`
--

/*!50001 DROP VIEW IF EXISTS `avg_pop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_pop` AS select format(avg(`x`.`population`),2) AS `avg population` from (select `o`.`city_id` AS `city_id`,`o`.`city_name` AS `city_name`,`o`.`population` AS `population`,count(`c`.`city_id`) AS `frequency` from (`city` `o` join `sightings` `c` on((`o`.`city_id` = `c`.`city_id`))) group by `o`.`city_id` having (count(`c`.`city_id`) > 1) order by count(`c`.`city_id`) desc) `x` where (`x`.`frequency` >= 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cali_informants`
--

/*!50001 DROP VIEW IF EXISTS `cali_informants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cali_informants` AS select concat(`informants`.`fname`,' ',`informants`.`lname`) AS `informant`,`gender`.`gender` AS `gender`,`age_group`.`age_group` AS `age group`,`s`.`sighting_id` AS `sighting_id`,`s`.`summary` AS `summary`,`state_territory`.`state_territory_name` AS `state` from (((((`sightings` `s` join `informants_sightings` on((`s`.`sighting_id` = `informants_sightings`.`sighting_id`))) join `informants` on((`informants_sightings`.`informant_id` = `informants`.`informant_id`))) join `age_group` on((`informants`.`age_id` = `age_group`.`age_id`))) join `gender` on((`informants`.`gender_id` = `gender`.`gender_id`))) join `state_territory` on((`s`.`state_territory_id` = `state_territory`.`state_territory_id`))) where (`state_territory`.`state_territory_name` = 'California') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `repeat_informants`
--

/*!50001 DROP VIEW IF EXISTS `repeat_informants`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `repeat_informants` AS select `informants`.`informant_id` AS `informant_id`,concat(`informants`.`fname`,' ',`informants`.`lname`) AS `informant`,`gender`.`gender` AS `gender`,`age_group`.`age_group` AS `age_group`,count(`informants`.`informant_id`) AS `frequency` from ((((`informants` join `informants_sightings` on((`informants`.`informant_id` = `informants_sightings`.`informant_id`))) join `sightings` on((`informants_sightings`.`sighting_id` = `sightings`.`sighting_id`))) join `age_group` on((`informants`.`age_id` = `age_group`.`age_id`))) join `gender` on((`informants`.`gender_id` = `gender`.`gender_id`))) group by `informants`.`informant_id` having (`frequency` > 1) order by `frequency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `state_region`
--

/*!50001 DROP VIEW IF EXISTS `state_region`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `state_region` AS select `sightings`.`state_territory_id` AS `state_territory_id`,`state_territory`.`state_territory_name` AS `state_territory_name`,count(`sightings`.`state_territory_id`) AS `state frequency`,`sightings`.`region_id` AS `region_id`,`region`.`region_name` AS `region_name`,count(`sightings`.`region_id`) AS `region frequency` from ((`sightings` join `state_territory` on((`sightings`.`state_territory_id` = `state_territory`.`state_territory_id`))) join `region` on((`sightings`.`region_id` = `region`.`region_id`))) group by `sightings`.`state_territory_id`,`sightings`.`region_id` order by count(`sightings`.`state_territory_id`) desc */;
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

-- Dump completed on 2021-12-15 17:29:15
