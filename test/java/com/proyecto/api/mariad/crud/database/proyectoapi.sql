-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyectoapi
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` varchar(36) NOT NULL,
  `lastname` varchar(41) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `age` int NOT NULL,
  `gender` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maria','Dominguez','medominguez@gmail.com',25,'Female'),(2,'Federico','Olivera','fedeOlivera7@linkedin.com',26,'Male'),(3,'Diego','Miller','dMiller2@telegraph.co.uk',27,'Male'),(4,'Fairleigh','Van Hault','fvanhault3@creativecommons.org',70,'Male'),(5,'Donn','Bickerstaffe','dbickerstaffe4@pbs.org',16,'Male'),(6,'Luce','Petrelli','lpetrelli5@state.gov',94,'Male'),(7,'Darlleen','Laguerre','dlaguerre6@xinhuanet.com',42,'Female'),(8,'Henriette','Mathieson','hmathieson7@linkedin.com',95,'Female'),(9,'Myrle','Kusick','mkusick8@discuz.net',24,'Female'),(11,'Brigham','Gurley','bgurleya@engadget.com',85,'Male'),(12,'Mariellen','Flaxman','mflaxmanb@princeton.edu',3,'Female'),(13,'Maximilian','Kubicek','mkubicekc@theatlantic.com',37,'Male'),(14,'Niki','Barwack','nbarwackd@hatena.ne.jp',61,'Female'),(15,'Lisle','Baggett','lbaggette@google.co.jp',27,'Male'),(16,'Doug','Hayers','dhayersf@rediff.com',34,'Male'),(17,'Duffie','Grasser','dgrasserg@joomla.org',17,'Male'),(18,'Margret','Martusov','mmartusovh@cargocollective.com',14,'Female'),(19,'Anastassia','Luetkemeyers','aluetkemeyersi@patch.com',56,'Female'),(20,'Beilul','Jarrel','bjarrelj@example.com',26,'Female'),(21,'Melodee','Olufsen','molufsenk@thetimes.co.uk',94,'Female'),(22,'Francisco','Fochs','ffochsl@vkontakte.ru',95,'Male'),(23,'Davis','Dandy','ddandym@telegraph.co.uk',46,'Male'),(24,'Jud','Coger','jcogern@cloudflare.com',75,'Male'),(25,'Gabriellia','Grube','ggrubeo@springer.com',57,'Female'),(26,'Bernice','McQuaid','bmcquaidp@thetimes.co.uk',32,'Female'),(27,'Lynde','Pirdy','lpirdyq@epa.gov',97,'Female'),(28,'Gretna','Placstone','gplacstoner@yandex.ru',28,'Female'),(29,'Nathalie','Pipe','npipes@upenn.edu',78,'Female'),(30,'Claire','Hughes','chughest@phoca.cz',55,'Male'),(31,'Linus','Keirle','lkeirleu@google.es',64,'Male'),(32,'Lester','Boecke','lboeckev@hud.gov',59,'Male'),(33,'Demeter','Pursglove','dpursglovew@boston.com',26,'Female'),(34,'Lynde','Pawling','lpawlingx@goodreads.com',15,'Female'),(35,'Fran','Holton','fholtony@apple.com',72,'Female'),(36,'Shalne','Gwinnel','sgwinnelz@fotki.com',44,'Female'),(37,'Ella','Bottoms','ebottoms10@goodreads.com',93,'Female'),(38,'Debor','Snufflebottom','dsnufflebottom11@stanford.edu',78,'Female'),(39,'Lyndy','Jerrom','ljerrom12@live.com',51,'Female'),(40,'Brad','Engelbrecht','bengelbrecht13@desdev.cn',89,'Male'),(41,'Tadeas','Andreucci','tandreucci14@ifeng.com',99,'Male'),(42,'Liliane','Jodkowski','ljodkowski15@goodreads.com',50,'Female'),(43,'Earvin','Rattery','erattery16@pbs.org',77,'Male'),(44,'Franciska','Cello','fcello17@hatena.ne.jp',69,'Female'),(45,'Shane','Milbank','smilbank18@yolasite.com',12,'Female'),(46,'Sephira','Burkitt','sburkitt19@homestead.com',78,'Female'),(47,'Gwyn','Rushby','grushby1a@photobucket.com',20,'Female'),(48,'Poppy','Woodrup','pwoodrup1b@home.pl',15,'Female'),(49,'Paulina','Jellett','pjellett1c@bloomberg.com',3,'Female'),(50,'Christabella','Huston','chuston1d@cornell.edu',36,'Female'),(51,'Kevan','Wafer','kwafer1e@chronoengine.com',55,'Male'),(52,'Veronique','Murphy','vmurphy1f@flickr.com',72,'Female'),(53,'Gusella','Lowless','glowless1g@accuweather.com',96,'Female'),(54,'Austen','Douch','adouch1h@ca.gov',8,'Male'),(55,'Orlan','Slainey','oslainey1i@bloglovin.com',20,'Male'),(56,'Gib','Costigan','gcostigan1j@java.com',20,'Male'),(57,'Corly','Frantz','cfrantz1k@salon.com',17,'Female'),(58,'Maurine','Duguid','mduguid1l@admin.ch',36,'Female'),(59,'Douglass','Cubin','dcubin1m@cocolog-nifty.com',74,'Male'),(60,'Antonio','Ambrogetti','aambrogetti1n@amazon.co.uk',85,'Male'),(61,'Elwira','Servis','eservis1o@elpais.com',38,'Female'),(62,'Ronalda','Culligan','rculligan1p@yellowbook.com',46,'Female'),(63,'Tybie','Lintin','tlintin1q@skyrock.com',26,'Female'),(64,'Karoline','Flannigan','kflannigan1r@stumbleupon.com',75,'Female'),(65,'Inigo','Dron','idron1s@themeforest.net',48,'Male'),(66,'Neddie','Mabbott','nmabbott1t@vk.com',38,'Male'),(67,'Fran','Blader','fblader1u@salon.com',60,'Male'),(68,'Hermann','de Werk','hdewerk1v@businessweek.com',50,'Male'),(69,'Nikos','Goman','ngoman1w@furl.net',76,'Male'),(70,'Cynthea','Huntress','chuntress1x@elpais.com',35,'Female'),(71,'Jarred','Dutnall','jdutnall1y@aol.com',99,'Male'),(72,'Dmitri','Pigot','dpigot1z@twitpic.com',19,'Male'),(73,'Frederick','Libri','flibri20@europa.eu',83,'Male'),(74,'Merell','Brittian','mbrittian21@java.com',44,'Male'),(75,'Wilton','Swiers','wswiers22@oracle.com',83,'Male'),(76,'Gabrila','Hutton','ghutton23@sitemeter.com',35,'Female'),(77,'Millisent','McCallion','mmccallion24@squarespace.com',99,'Female'),(78,'Ferrell','Brumpton','fbrumpton25@dailymotion.com',36,'Male'),(79,'Kin','Keiling','kkeiling26@army.mil',9,'Male'),(80,'Chrisy','Heineken','cheineken27@howstuffworks.com',13,'Male'),(81,'Floris','Shippey','fshippey28@amazonaws.com',69,'Female'),(82,'Matthew','Signori','msignori29@intel.com',97,'Male'),(83,'Lee','Harlick','lharlick2a@aol.com',24,'Female'),(84,'Betty','Meeks','bmeeks2b@vkontakte.ru',66,'Female'),(85,'Myca','Blaylock','mblaylock2c@wired.com',42,'Male'),(86,'Kiri','Winson','kwinson2d@google.com',30,'Female'),(87,'Zared','Trammel','ztrammel2e@admin.ch',13,'Male'),(88,'Verene','Sawbridge','vsawbridge2f@sun.com',18,'Female'),(89,'Cairistiona','Capnerhurst','ccapnerhurst2g@domainmarket.com',64,'Female'),(90,'Mickie','Tarren','mtarren2h@issuu.com',47,'Female'),(91,'Mireille','Maha','mmaha2i@usda.gov',36,'Female'),(92,'Garner','Sills','gsills2j@shinystat.com',98,'Male'),(93,'Melissa','Schoffel','mschoffel2k@ebay.com',58,'Female'),(94,'Jany','McQuode','jmcquode2l@printfriendly.com',34,'Female'),(95,'Zenia','Poulglais','zpoulglais2m@example.com',28,'Female'),(96,'Rhonda','Millsom','rmillsom2n@de.vu',20,'Female'),(97,'Jordain','Simoni','jsimoni2o@baidu.com',12,'Female'),(98,'Sarette','Mee','smee2p@youtube.com',84,'Female'),(99,'Angy','Brobak','abrobak2q@shop-pro.jp',25,'Female'),(100,'Cristionna','Sanford','csanford2r@shop-pro.jp',61,'Female'),(101,'Marce','Salas','mSalas2@networksolutions.com',50,'Male'),(104,'Jose','Hernandez','jHernadez5@state.gov',45,'Male'),(105,'Jose','Hernandez','jHernadez5@state.gov',45,'Male');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyectoapi'
--

--
-- Dumping routines for database 'proyectoapi'
--
/*!50003 DROP PROCEDURE IF EXISTS `getByGenderFemale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getByGenderFemale`()
select * from users where gender = "Female" ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getByGenderMale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getByGenderMale`()
select * from users where gender = "Male" ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getIsMinor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getIsMinor`()
select * from users where age
BETWEEN 1 AND 17 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUser`(in idUser Bigint , in firstname varchar(36),in lastname varchar(41),in email varchar(50), in age int)
BEGIN
	update users
    set firstname = firstname,
    lastname = lastname,
    email = email,
    age = age,
	gender = gender
    where id = idUser;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-30 23:54:54
