-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: news_portal
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` text,
  `date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image_url` text,
  `writer_id` int(11) DEFAULT NULL,
  `approval` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (5,'BJP-Sena Break-Up Could Impact Mumbai Mayor Polls On November 22','MUMBAI: The break up of the BJP-Shiv Sena alliance in Maharashtra may have an impact on Mumbai\'\'s mayoral polls scheduled for November 22. In the 2017 Brihanmumbai Municipal Corporation polls, the Sena had won 84 corporator seats while the its then ally BJP was a close second with 82 seats in the 227-member civic house.  The BJP had then extended support to the Sena and its leader Vishwanath Mahadeshwar was elected mayor.','2019-11-17',1111,'https://c.ndtvimg.com/uddhav-thackeray-amit-shah_625x300_1528317513647.jpg',1,1),(6,'VIRAT KOHLI','Virat Kohli led India to a convincing victory over Bangladesh in the first Test in Indore on Saturday. India defeated the visitors by an innings and 130 runs to go 1-0 up in the two-match Test series. While Virat Kohli was praised for his leadership skills on the field, the India skipper\'s gesture off the field in Indore left fans in awe of him. A video went viral on social media where Kohli can be seen interacting with a special fan in Indore. In the video, a fan with a disability was waiting to see her sporting heroes but she was left surprised when Virat Kohli came, greeted her and signed an autograph.','2019-11-17',6666,'https://c.ndtvimg.com/2019-11/n0v0b36o_virat-kohli_625x300_17_November_19.jpg?output-quality=70&output-format=webp&downsize=555:*',8,1),(8,'Microsoft is shutting down Cortana app for iOS, Android','Cortana, Microsoft’s digital assistant, will no longer be available as standalone application to users in select markets including India, Australia, the UK, China, Spain, and Canada among others. Microsoft will pull the app in these markets on January 31, 2020.  After the shutdown, Cortana app users will not be able to use key functions such as reminders and lists. Users, however, can access these features through Cortana on Windows.  The move, however, doesn’t mean Microsoft is shutting down the Cortana digital assistant. Going forward, Microsoft will offer Cortana as part of Microsoft 365 applications.  “To make your personal digital assistant as helpful as possible, we’re integrating Cortana into your Microsoft 365 productivity apps. As part of this evolution, on January 31st, 2020, we’re ending support for the Cortana app on Android and iOS in your market,” said Microsoft on its support page.  “At that point, the Cortana content you created–such as reminders and lists–will no longer function in the Cortana mobile app or Microsoft Launcher, but can still be accessed through Cortana on Windows. Also, Cortana reminders, lists, and tasks are automatically synced to the Microsoft To Do app, which you can download to your phone for free,” it added.','2019-11-17',2222,'https://www.hindustantimes.com/rf/image_size_960x540/HT/p2/2019/11/17/Pictures/_c6d7b0d4-0900-11ea-8da7-95ed4a38ab68.jpg',4,1),(9,'Daniel Ricciardo impressed with former team Red Bull\'s improvement','Never let it be said that Jacques Villeneuve has sympathy for a driver’s career ending, saying Nico Hulkenberg is “lucky” to have been in F1 as long as he has.  Hulkenberg made his F1 debut back in 2010 with Williams.  Dropped by the team after just one season, he began racing for Force India in 2012 before moving over to Renault in 2016.  But, after three years with the Enstone team, Hulkenberg has just two races left after they opted to sign Esteban Ocon as Daniel Ricciardo’s 2020 team-mate.','2019-11-22',2222,NULL,4,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER insert_rating
AFTER INSERT
ON article FOR EACH ROW
INSERT INTO rating VALUES(NEW.article_id, 0, 0) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER delete_rating
AFTER DELETE
ON article FOR EACH ROW
DELETE FROM rating WHERE article_id = OLD.article_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` text,
  `writer_id` int(11) NOT NULL,
  PRIMARY KEY (`writer_id`),
  UNIQUE KEY `category_id` (`category_id`),
  UNIQUE KEY `writer_id` (`writer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1111,'Politics',1),(2222,'Technology',4),(3333,'International',5),(4444,'Business',6),(5555,'Movies',7),(6666,'Sports',8);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` text,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'user1','password1','user1@mail.com','w'),(4,'user2','password2','user2@mail.com','w'),(5,'user3','password3','user3@mail.com','w'),(6,'user4','password4','user4@mail.com','w'),(7,'user5','password5','user5@mail.com','w'),(8,'user6','password6','user6@mail.com','w'),(9,'gagan','admin','gagan@mail.com','e');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `email` varchar(100) NOT NULL,
  `phone` text,
  `comments` text,
  `title` varchar(300) NOT NULL,
  `correction` text,
  `done` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('abc@gmail.com','9988776655','Correction','Microsoft is shutting down Cortana app for iOS, Android','I think this is a wrong news. Please do check it again',1),('algka;hag;aslksj','2525254225','alg;algn l;ajg la;gh ;ajgh;jas gh;hgopwhg ajsdn; jasf;','asldkjflaksdjf qwioej','aksjna;sk dgjalsdga;lgdh ;lashgha;lgh;qjwkg h',1),('faizan@gmail.com','9988776655','abcd','igibvuerbg','kkkk',1),('gagankp@gmail.com','9988776655','abcd','Microsoft is shutting down Cortana app for iOS, Android','hello hello',1);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rating` (
  `article_id` int(11) NOT NULL,
  `rating` float DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (5,3.75,4),(6,4.4,5),(8,4,19),(9,0,0);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-30 13:09:12
