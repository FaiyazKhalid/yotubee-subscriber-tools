-- MySQL dump 10.13  Distrib 5.7.38, for Linux (x86_64)
--
-- Host: localhost    Database: advocatespedia_youtube
-- ------------------------------------------------------
-- Server version	5.7.38

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `advocatespedia_youtube`
--


--
-- Table structure for table `camp`
--

DROP TABLE IF EXISTS `camp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cusername` varchar(250) NOT NULL,
  `csub` varchar(250) NOT NULL,
  `ccredit` varchar(250) NOT NULL,
  `deliver` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cusername` (`cusername`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camp`
--

LOCK TABLES `camp` WRITE;
/*!40000 ALTER TABLE `camp` DISABLE KEYS */;
INSERT INTO `camp` (`id`, `cusername`, `csub`, `ccredit`, `deliver`, `date`) VALUES (2,'UCPR3-LuffNvN3PZ2L44yMUg','','306','27','2022-06-17 09:24:27'),(7,'UCJCPKE7qNI1s1kabAtoP0-A','','302','30','2022-06-17 09:24:27');
/*!40000 ALTER TABLE `camp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `credit` varchar(250) NOT NULL,
  `sub` varchar(250) NOT NULL,
  `psub` varchar(250) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`uid`, `user`, `credit`, `sub`, `psub`, `date`) VALUES (82,'UCUrtjjcSH7gLZF57cmHeMdA','1','3','0','2022-06-18 02:39:56'),(141,'UCJCPKE7qNI1s1kabAtoP0-A','48','30','30','2022-06-19 14:23:46'),(142,'UCPR3-LuffNvN3PZ2L44yMUg','0','1350','0','2022-06-21 13:14:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yt_channel_data`
--

DROP TABLE IF EXISTS `yt_channel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yt_channel_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `yt_channel_id` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `todaysView` int(11) DEFAULT NULL,
  `subscriberCount` int(11) DEFAULT NULL,
  `todaysSubscriber` int(11) DEFAULT NULL,
  `videoCount` int(11) DEFAULT NULL,
  `todaysVideo` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yt_channel_id` (`yt_channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yt_channel_data`
--

LOCK TABLES `yt_channel_data` WRITE;
/*!40000 ALTER TABLE `yt_channel_data` DISABLE KEYS */;
INSERT INTO `yt_channel_data` (`id`, `yt_channel_id`, `viewCount`, `todaysView`, `subscriberCount`, `todaysSubscriber`, `videoCount`, `todaysVideo`, `date`) VALUES (30,7,884,884,17,17,93,93,'2022-06-13 22:34:00'),(33,8,0,0,3,3,0,0,'2022-06-13 22:35:05');
/*!40000 ALTER TABLE `yt_channel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yt_channels`
--

DROP TABLE IF EXISTS `yt_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yt_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(350) DEFAULT NULL,
  `channel_id` varchar(100) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yt_channels`
--

LOCK TABLES `yt_channels` WRITE;
/*!40000 ALTER TABLE `yt_channels` DISABLE KEYS */;
INSERT INTO `yt_channels` (`id`, `channel_name`, `channel_id`, `status`) VALUES (6,'Adv','UCg7BRggDKmWFWhuWyJ0cSrg',1),(7,'dada','UCGmLrgHbSdifZgqRLQKz2qw',1),(8,'new','UChN9F3ipuGJPOgIysNQAO3g',1);
/*!40000 ALTER TABLE `yt_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'advocatespedia_youtube'
--

--
-- Dumping routines for database 'advocatespedia_youtube'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-21  1:01:36
