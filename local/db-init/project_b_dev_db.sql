-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (arm64)
--
-- Host: localhost    Database: ProjectB
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ProjectB`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ProjectB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ProjectB`;

--
-- Table structure for table `Board`
--

DROP TABLE IF EXISTS `Board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Board` (
  `BoardId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `BoardName` varchar(150) NOT NULL,
  `BoardDescription` varchar(500) DEFAULT NULL,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`BoardId`),
  KEY `fk_Board_User_UserId` (`UserId`),
  CONSTRAINT `fk_Board_User_UserId` FOREIGN KEY (`UserId`) REFERENCES `User` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Board`
--

LOCK TABLES `Board` WRITE;
/*!40000 ALTER TABLE `Board` DISABLE KEYS */;
INSERT INTO `Board` VALUES (1,1,'First test board','test board created by system','2024-04-29 23:07:35',1,NULL,NULL,0),(3,2,'Second test board','test board created by test user','2024-04-29 23:08:43',1,NULL,NULL,0),(4,1,'new test board','','2024-05-28 12:13:35',1,NULL,NULL,1),(5,1,'test new board from Postman!','adding description...','2024-05-28 13:34:25',1,NULL,NULL,0),(6,11,'test new board from Postman!','','2024-05-28 18:42:13',11,NULL,NULL,0),(7,11,'test new board from Postman...2!','','2024-05-28 21:10:28',11,NULL,NULL,0),(8,11,'test new board from Postman...3!','','2024-05-28 21:10:56',11,NULL,NULL,0),(9,19,'Test board','Test 123','2024-05-31 03:09:56',19,NULL,NULL,0),(10,19,'New board','test test','2024-05-31 03:40:51',19,NULL,NULL,0),(11,19,'New board dropdown test','New board dropdown test','2024-05-31 03:45:46',19,NULL,NULL,0),(12,19,'new test board','test','2024-05-31 03:46:45',19,NULL,NULL,0),(13,19,'test test','test','2024-05-31 03:47:32',19,NULL,NULL,0),(14,19,'New test board','test test','2024-05-31 11:56:52',19,NULL,NULL,0),(15,19,'test 123','test','2024-05-31 11:57:57',19,NULL,NULL,0),(16,19,'tezting testing','test','2024-05-31 12:01:52',19,NULL,NULL,0),(17,11,'new board','test','2024-06-01 14:53:44',11,NULL,NULL,0),(18,11,'new board 2','test','2024-06-01 14:53:56',11,NULL,NULL,0),(19,22,'First board!','test test','2024-06-02 12:44:27',22,NULL,NULL,0),(20,22,'new board','nb','2024-06-02 13:39:30',22,NULL,NULL,0),(21,11,'new board 3','new board','2024-06-04 12:46:04',11,NULL,NULL,0),(22,11,'new board!','new board','2024-06-05 04:05:14',11,NULL,NULL,0),(23,23,'New board! ','yooo','2024-06-05 11:55:26',23,NULL,NULL,0),(24,23,'new board 2','nb2!','2024-06-05 11:59:00',23,NULL,NULL,0),(25,24,'New test board','new test board','2024-06-08 12:05:34',24,NULL,NULL,0),(26,26,'new test board ','ntb','2024-06-12 04:14:46',26,NULL,NULL,0),(27,26,'new board','nb','2024-06-12 04:16:55',26,NULL,NULL,0),(28,35,'First board','fb','2024-06-12 13:46:32',35,NULL,NULL,0),(29,36,'new board','nb','2024-06-12 23:19:46',36,NULL,NULL,0),(30,36,'new board ','nb','2024-06-12 23:20:48',36,NULL,NULL,0),(31,37,'first board','test test','2024-06-13 13:45:12',37,NULL,NULL,0),(32,44,'new board test','nbt','2024-06-14 20:28:59',44,NULL,NULL,0),(33,44,'new board test 2','nbt2','2024-06-14 20:30:39',44,NULL,NULL,0),(34,45,'First board!','fb','2024-06-15 14:31:53',45,NULL,NULL,0),(35,45,'new board','','2024-06-15 14:38:53',45,NULL,NULL,0),(36,46,'new board 1','','2024-06-15 14:56:16',46,NULL,NULL,0),(37,50,'test new board','','2024-06-15 16:46:33',50,NULL,NULL,0),(38,53,'my first board','','2024-06-15 17:24:11',53,NULL,NULL,0),(39,57,'first board','','2024-06-16 19:14:04',57,NULL,NULL,0),(40,60,'new board','','2024-06-16 23:04:43',60,NULL,NULL,0),(41,61,'first board','','2024-06-17 11:35:12',61,NULL,NULL,0),(42,62,'new test board','','2024-06-18 13:34:13',62,NULL,NULL,0),(43,63,'new board','','2024-06-18 13:37:28',63,NULL,NULL,0),(44,64,'First board','','2024-06-18 13:40:07',64,NULL,NULL,0),(45,65,'First board!','','2024-06-19 13:23:08',65,NULL,NULL,0),(46,67,'Tylers board','','2024-06-21 00:37:39',67,NULL,NULL,0),(47,67,'Tylers second board','','2024-06-21 00:38:38',67,NULL,NULL,0),(48,67,'Tylers third board','','2024-06-30 13:44:19',67,NULL,NULL,0),(49,68,'My first board!','','2024-06-30 18:23:09',68,NULL,NULL,0),(50,68,'Second board','','2024-07-09 03:57:43',68,NULL,NULL,0);
/*!40000 ALTER TABLE `Board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Column`
--

DROP TABLE IF EXISTS `Column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Column` (
  `ColumnId` int NOT NULL AUTO_INCREMENT,
  `BoardId` int NOT NULL,
  `UserId` int DEFAULT NULL,
  `ColumnName` varchar(150) NOT NULL,
  `ColumnDescription` varchar(500) DEFAULT NULL,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ColumnId`),
  KEY `fk_Column_Board_BoardId` (`BoardId`),
  CONSTRAINT `fk_Column_Board_BoardId` FOREIGN KEY (`BoardId`) REFERENCES `Board` (`BoardId`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Column`
--

LOCK TABLES `Column` WRITE;
/*!40000 ALTER TABLE `Column` DISABLE KEYS */;
INSERT INTO `Column` VALUES (1,1,NULL,'First test column!!!','test column created by system user','2024-04-29 23:16:49',1,'2024-05-20 12:59:00',1,1),(2,1,NULL,'Second test column','Second test column created by system user','2024-04-29 23:20:47',1,'2024-05-15 12:40:19',1,1),(3,1,NULL,'Creating test column from Swagger!','Creating test column from Swagger! Creating test column from Swagger! Creating test column from Swagger! Creating test column from Swagger! Creating test column from Swagger! ','2024-05-15 12:29:39',1,'2024-05-20 12:59:00',1,1),(4,1,NULL,'creating test column from Swagger','testing','2024-05-15 12:29:43',1,'2024-05-28 13:39:07',1,1),(5,1,NULL,'new test task from postman','test task from postman -- description!','2024-05-15 12:33:50',1,'2024-05-16 11:55:47',1,1),(6,1,NULL,'i love cassidy','test test','2024-05-15 12:34:56',1,'2024-05-16 11:55:58',1,1),(7,1,NULL,'test new col from Postman!','test description!','2024-05-16 11:54:57',1,'2024-05-16 11:56:09',1,1),(11,1,NULL,'testing new col post from UI','testing new col post from UI','2024-05-16 12:09:42',1,'2024-05-17 11:42:59',1,1),(12,1,NULL,'Testing second col post from UI','Testing testing','2024-05-16 12:19:01',1,'2024-05-17 11:45:41',1,1),(13,1,NULL,'New column...','New column description','2024-05-16 23:00:52',1,'2024-05-17 11:45:24',1,1),(14,1,NULL,'New column','new col...','2024-05-17 11:47:35',1,'2024-05-17 11:48:11',1,1),(15,1,NULL,'This is a new column','new column description','2024-05-17 11:52:01',1,'2024-05-17 15:15:46',1,1),(16,1,NULL,'testing rerender','test','2024-05-17 15:27:32',1,'2024-05-17 16:21:02',1,1),(17,1,NULL,'test','test','2024-05-17 15:29:39',1,'2024-05-17 15:29:48',1,1),(18,1,NULL,'test','test','2024-05-17 15:29:53',1,'2024-05-17 15:29:57',1,1),(19,1,NULL,'testing re-render at board level','testing testing','2024-05-17 16:26:07',1,'2024-05-17 16:27:10',1,1),(20,1,NULL,'testttt','testttting','2024-05-17 16:26:35',1,'2024-05-17 16:26:39',1,1),(21,1,NULL,'test','test','2024-05-17 16:27:51',1,'2024-05-17 16:29:55',1,1),(22,1,NULL,'testing','test','2024-05-17 16:30:09',1,'2024-05-17 16:32:01',1,1),(23,1,NULL,'testtt','test','2024-05-17 16:32:07',1,'2024-05-17 16:34:42',1,1),(24,1,NULL,'test','test','2024-05-17 16:32:16',1,'2024-05-17 16:35:54',1,1),(25,1,NULL,'New column!','new col','2024-05-17 16:36:44',1,'2024-05-17 17:05:39',1,1),(26,1,NULL,'New column 2!','helloooo!','2024-05-17 16:36:52',1,'2024-05-19 18:10:12',1,1),(27,1,NULL,'new column','new col.','2024-05-17 17:28:45',1,'2024-05-17 22:34:27',1,1),(28,1,NULL,'test','test','2024-05-17 17:37:28',1,'2024-05-17 22:34:24',1,1),(29,1,NULL,'new column','new column!','2024-05-17 19:34:24',1,'2024-05-17 22:34:21',1,1),(30,1,NULL,'new column','testing!','2024-05-17 22:36:47',1,'2024-05-17 22:36:50',1,1),(31,1,NULL,'hiii','hiii','2024-05-17 23:02:10',1,'2024-05-18 02:33:27',1,1),(32,1,NULL,'NEW COLUMN','yooo','2024-05-18 00:20:37',1,'2024-05-18 02:43:55',1,1),(33,1,NULL,'new column!','this is a description','2024-05-18 02:46:06',1,'2024-05-18 14:26:25',1,1),(34,1,NULL,'Test col.','testing','2024-05-18 17:19:14',1,'2024-05-19 18:09:53',1,1),(35,1,NULL,'test','test','2024-05-19 04:14:05',1,'2024-05-19 04:14:20',1,1),(36,1,NULL,'new column...','new col','2024-05-19 13:06:34',1,'2024-05-19 18:09:41',1,1),(37,1,NULL,'test','test','2024-05-19 13:49:08',1,'2024-05-19 18:09:25',1,1),(38,1,NULL,'New col!!!','Testing new col...','2024-05-19 18:10:41',1,'2024-05-20 12:59:00',1,1),(39,1,NULL,'New column test!!','testing test!','2024-05-19 18:17:39',1,'2024-05-20 12:55:43',1,1),(40,1,NULL,'New col tester :)','yoyoyo','2024-05-20 00:36:57',1,'2024-05-20 12:55:33',1,1),(41,1,NULL,'new test col for deleteion','new test col','2024-05-20 12:57:53',1,'2024-05-20 12:59:00',1,1),(42,1,NULL,'test col. 1','test','2024-05-20 13:06:12',1,'2024-05-20 13:07:25',1,1),(43,1,NULL,'test col. 2','tester','2024-05-20 13:07:14',1,'2024-05-20 13:07:25',1,1),(44,1,NULL,'test col','test','2024-05-20 13:08:58',1,'2024-05-20 13:12:55',1,1),(45,1,NULL,'test col. 2','testing','2024-05-20 13:09:15',1,'2024-05-20 13:12:55',1,1),(46,1,NULL,'test col. 3','testinggg','2024-05-20 13:09:26',1,'2024-05-20 13:12:55',1,1),(47,1,NULL,'New column test','new col!','2024-05-20 13:16:35',1,'2024-05-20 18:23:41',1,1),(48,1,NULL,'new col. test 2','test!','2024-05-20 13:16:42',1,'2024-05-20 13:17:43',1,1),(49,1,NULL,'test','test','2024-05-20 13:18:16',1,'2024-05-20 13:18:52',1,1),(50,1,NULL,'test','test','2024-05-20 13:18:55',1,'2024-05-20 13:19:53',1,1),(51,1,NULL,'test','test','2024-05-20 13:21:01',1,'2024-05-20 13:21:05',1,1),(52,1,NULL,'new col','new col','2024-05-20 13:41:49',1,'2024-05-20 13:41:57',1,1),(53,1,NULL,'new column test 2','new column','2024-05-20 13:46:04',1,'2024-05-20 18:21:10',1,1),(54,1,NULL,'test....','test','2024-05-20 18:34:02',1,'2024-05-20 18:34:02',1,0),(55,1,NULL,'test 2','test 2...','2024-05-20 18:34:09',1,'2024-05-20 18:40:55',1,1),(56,1,NULL,'test 3','test 3...','2024-05-20 18:34:21',1,'2024-05-20 18:42:16',1,1),(57,1,NULL,'test','test','2024-05-20 18:42:04',1,'2024-05-20 18:42:09',1,1),(58,1,NULL,'test!','test','2024-05-20 18:42:12',1,'2024-05-23 21:43:33',1,0),(59,1,NULL,'test 3!','test 3','2024-05-20 18:46:32',1,'2024-05-20 22:52:09',1,1),(60,1,NULL,'new column','new col','2024-05-20 22:17:43',1,'2024-05-22 21:59:44',1,1),(61,1,NULL,'new test column','new test col!','2024-05-20 22:50:56',1,'2024-05-20 22:50:56',1,0),(62,1,NULL,'new test column','new test','2024-05-20 22:51:07',1,'2024-05-20 22:51:07',1,0),(63,1,NULL,'new test column','new col','2024-05-23 21:42:23',1,'2024-05-23 21:42:23',1,0),(64,1,NULL,'test','test','2024-05-24 04:47:32',1,'2024-05-24 04:47:32',1,0),(65,1,NULL,'First column!','Test test.','2024-05-28 10:42:10',13,'2024-05-28 10:42:10',13,0),(66,6,NULL,'Testing new column for dynamic board','testing description','2024-05-28 18:48:45',11,'2024-05-28 18:48:45',11,0),(67,6,NULL,'Testing new column 2!','test','2024-05-28 18:49:59',11,'2024-05-28 18:49:59',11,0),(68,6,NULL,'test 3','test','2024-05-28 18:50:56',11,'2024-05-28 18:50:56',11,0),(69,6,NULL,'test 4','rt','2024-05-28 19:33:12',11,'2024-05-28 19:33:12',11,0),(70,6,NULL,'test 5','test','2024-05-28 20:49:32',11,'2024-05-28 20:49:32',11,0),(71,6,NULL,'test 6 ','test','2024-05-28 20:49:57',11,'2024-05-28 20:49:57',11,0),(72,7,NULL,'test col 1 for board 2','test','2024-05-29 12:54:35',11,'2024-05-29 12:54:35',11,0),(73,7,NULL,'test col 2 for board 2','test test','2024-05-29 12:54:44',11,'2024-05-29 12:54:44',11,0),(74,7,NULL,'test col 3 for board 2','test','2024-05-29 12:54:59',11,'2024-05-29 12:54:59',11,0),(75,8,NULL,'test col 1 for board 3','test col ','2024-05-29 12:55:49',11,'2024-05-29 12:55:49',11,0),(76,7,NULL,'new col','tes','2024-05-30 12:00:18',11,'2024-05-30 12:00:18',11,0),(77,8,NULL,'test','test','2024-05-30 13:15:59',11,'2024-05-30 13:15:59',11,0),(78,9,NULL,'new column for new board','new column for new board','2024-05-31 03:19:00',19,'2024-05-31 03:19:00',19,0),(79,9,NULL,'New column 2','test','2024-05-31 03:19:14',19,'2024-05-31 03:19:14',19,0),(80,9,NULL,'testing','test','2024-05-31 03:20:37',19,'2024-05-31 03:20:37',19,0),(81,13,NULL,'new column','new','2024-05-31 04:06:10',19,'2024-05-31 04:06:10',19,0),(82,19,NULL,'First column','fc','2024-06-02 13:15:41',22,'2024-06-02 13:15:41',22,0),(83,19,NULL,'Second column','sc','2024-06-02 13:16:27',22,'2024-06-02 13:16:27',22,0),(84,19,NULL,'Third column','tc','2024-06-02 13:30:33',22,'2024-06-02 13:30:33',22,0),(85,20,NULL,'New column','nc','2024-06-02 13:40:20',22,'2024-06-02 13:40:20',22,0),(86,20,NULL,'New col 2','nc2','2024-06-02 13:41:29',22,'2024-06-02 13:41:29',22,0),(87,20,NULL,'New col 3','nc3','2024-06-02 13:48:07',22,'2024-06-02 13:48:07',22,0),(88,8,NULL,'new column','nc','2024-06-02 14:24:49',11,'2024-06-02 14:24:49',11,0),(89,17,NULL,'First col','fc','2024-06-02 21:11:24',11,'2024-06-02 21:11:24',11,0),(90,17,NULL,'Second Col','sc','2024-06-02 21:11:32',11,'2024-06-02 21:11:32',11,0),(91,17,NULL,'New col','tc','2024-06-02 21:21:02',11,'2024-06-02 21:21:02',11,0),(92,17,NULL,'New column!','new col','2024-06-02 21:21:43',11,'2024-06-04 12:45:35',1,1),(93,18,NULL,'Test col 1','tc1','2024-06-02 21:44:10',11,'2024-06-02 21:44:10',11,0),(94,18,NULL,'Test col 2','tc2','2024-06-02 21:46:42',11,'2024-06-02 21:46:42',11,0),(95,18,NULL,'test col','test 2','2024-06-02 21:50:35',11,'2024-06-02 21:50:35',11,0),(96,7,NULL,'new col 2','nc2','2024-06-03 12:51:37',11,'2024-06-03 12:51:37',11,0),(97,17,NULL,'new column','new col','2024-06-04 12:45:44',11,'2024-06-04 12:45:44',11,0),(98,21,NULL,'new col','new col','2024-06-04 12:46:16',11,'2024-06-04 12:46:16',11,0),(99,21,NULL,'new col 2','nc2','2024-06-05 04:04:41',11,'2024-06-05 04:05:04',1,1),(100,22,NULL,'new col ','nc','2024-06-05 04:05:23',11,'2024-06-05 04:05:23',11,0),(101,22,NULL,'new col 2','nc2','2024-06-05 04:08:45',11,'2024-06-05 04:08:45',11,0),(102,22,NULL,'new col 3','nc3','2024-06-05 04:09:27',11,'2024-06-05 04:09:27',11,0),(103,17,NULL,'new Column!','nc!','2024-06-05 11:50:11',11,'2024-06-05 11:50:11',11,0),(104,17,NULL,'new Column 2!','nc2@','2024-06-05 11:50:20',11,'2024-06-05 11:50:20',11,0),(105,17,NULL,'new Column 3!','nc3!','2024-06-05 11:52:05',11,'2024-06-05 11:52:05',11,0),(106,21,NULL,'new col 2','nc2','2024-06-05 11:52:22',11,'2024-06-05 11:52:22',11,0),(107,21,NULL,'new col 3','nc3','2024-06-05 11:52:27',11,'2024-06-05 11:52:27',11,0),(108,21,NULL,'new col 4','nc4','2024-06-05 11:52:42',11,'2024-06-05 11:52:42',11,0),(109,23,NULL,'New column!','new colll','2024-06-05 11:55:37',23,'2024-06-05 11:55:37',23,0),(110,23,NULL,'new col2','newcol2','2024-06-05 11:56:52',23,'2024-06-05 11:56:52',23,0),(111,24,NULL,'new col','new col','2024-06-05 11:59:10',23,'2024-06-05 11:59:10',23,0),(112,8,NULL,'Dad\'s List','This should not be required','2024-06-06 01:30:51',11,'2024-06-06 01:30:51',11,0),(113,25,NULL,'new colukn','nc','2024-06-08 12:05:41',24,'2024-06-08 12:05:41',24,0),(114,26,NULL,'first column','fc','2024-06-12 04:14:54',26,'2024-06-12 04:14:54',26,0),(115,26,NULL,'second column','sc','2024-06-12 04:15:18',26,'2024-06-12 04:15:18',26,0),(116,28,NULL,'first col','fc','2024-06-12 13:46:44',35,'2024-06-12 13:46:44',35,0),(117,28,NULL,'second col','sc','2024-06-12 13:49:11',35,'2024-06-12 13:49:11',35,0),(118,28,NULL,'third col','tc','2024-06-12 13:49:44',35,'2024-06-12 13:49:44',35,0),(119,28,NULL,'fouth col','fc','2024-06-12 13:51:47',35,'2024-06-12 13:51:47',35,0),(120,21,NULL,'new col','nc','2024-06-12 23:17:18',11,'2024-06-12 23:17:18',11,0),(121,29,NULL,'new col!','nc','2024-06-12 23:19:56',36,'2024-06-12 23:19:56',36,0),(122,29,NULL,'new col 2','nc2','2024-06-13 03:52:11',36,'2024-06-13 03:52:11',36,0),(123,30,NULL,'New test column','ntc!','2024-06-13 04:01:13',36,'2024-06-13 04:01:13',36,0),(124,30,NULL,'new test col 2','nct2','2024-06-13 04:01:41',36,'2024-06-13 04:01:41',36,0),(125,30,NULL,'new test 3','nt3','2024-06-13 04:05:04',36,'2024-06-13 04:05:04',36,0),(126,30,NULL,'new test 4','nt4','2024-06-13 04:05:32',36,'2024-06-13 04:05:32',36,0),(127,32,NULL,'first col','fc','2024-06-14 20:29:15',44,'2024-06-14 20:29:15',44,0),(128,32,NULL,'second col','sc','2024-06-14 20:29:27',44,'2024-06-14 20:29:27',44,0),(129,33,NULL,'new col','nc','2024-06-14 20:30:47',44,'2024-06-14 20:30:47',44,0),(130,34,NULL,'new column','nc','2024-06-15 14:32:59',45,'2024-06-15 14:32:59',45,0),(131,34,NULL,'new column','','2024-06-15 14:33:36',45,'2024-06-15 14:33:36',45,0),(132,34,NULL,'second column ','second column','2024-06-15 14:34:12',45,'2024-06-15 14:34:12',45,0),(133,35,NULL,'new column','','2024-06-15 14:39:57',45,'2024-06-15 14:39:57',45,0),(134,35,NULL,'new column 2','','2024-06-15 14:41:20',45,'2024-06-15 14:41:20',45,0),(135,35,NULL,'new col 3','','2024-06-15 14:45:15',45,'2024-06-15 14:45:15',45,0),(136,35,NULL,'new col 4','','2024-06-15 14:49:16',45,'2024-06-15 14:49:16',45,0),(137,36,NULL,'new column 1','','2024-06-15 14:56:22',46,'2024-06-15 14:56:22',46,0),(138,36,NULL,'new col 2','','2024-06-15 14:56:28',46,'2024-06-15 14:56:28',46,0),(139,37,NULL,'first column','','2024-06-15 16:46:41',50,'2024-06-15 16:46:41',50,0),(140,37,NULL,'second column','','2024-06-15 16:47:26',50,'2024-06-15 16:47:26',50,0),(141,38,NULL,'first column','','2024-06-15 17:24:53',53,'2024-06-15 17:24:53',53,0),(142,38,NULL,'second column','','2024-06-15 17:25:32',53,'2024-06-15 17:25:32',53,0),(143,39,NULL,'first column','','2024-06-16 19:14:15',57,'2024-06-16 19:14:15',57,0),(144,39,NULL,'Up next','','2024-06-16 19:25:08',57,'2024-06-16 19:25:08',57,0),(145,40,NULL,'first column','','2024-06-16 23:04:50',60,'2024-06-16 23:04:50',60,0),(146,41,NULL,'Pre-deploy','','2024-06-17 11:35:31',61,'2024-06-17 11:35:31',61,0),(147,41,NULL,'Deploy','','2024-06-17 11:35:39',61,'2024-06-17 11:35:39',61,0),(148,41,NULL,'Post-deploy','','2024-06-17 11:35:46',61,'2024-06-17 11:35:46',61,0),(149,42,NULL,'new column','','2024-06-18 13:34:24',62,'2024-06-18 13:34:24',62,0),(150,43,NULL,'to do','','2024-06-18 13:37:37',63,'2024-06-18 13:37:37',63,0),(151,44,NULL,'First column','','2024-06-18 13:40:18',64,'2024-06-18 13:40:18',64,0),(152,45,NULL,'First column','','2024-06-19 13:23:20',65,'2024-06-19 13:23:20',65,0),(153,46,NULL,'To Do','','2024-06-21 00:37:47',67,'2024-06-21 00:37:47',67,0),(154,46,NULL,'In progress','Adding a description','2024-06-21 00:37:55',67,'2024-06-23 13:25:45',67,0),(155,46,NULL,'In Review! :)','','2024-06-21 00:38:01',67,'2024-06-30 17:17:34',67,0),(156,46,NULL,'Completed','','2024-06-21 00:38:05',67,'2024-06-21 00:38:05',67,0),(157,47,NULL,'First column','','2024-06-22 16:32:08',67,'2024-06-22 16:32:08',67,0),(158,47,NULL,'Second column','','2024-06-22 17:03:28',67,'2024-06-22 17:03:28',67,0),(159,47,NULL,'Third Column','','2024-06-30 15:40:46',67,'2024-06-30 17:20:28',1,1),(160,48,NULL,'First column','','2024-06-30 15:51:53',67,'2024-06-30 15:51:53',67,0),(161,48,NULL,'Test!','test','2024-06-30 15:52:37',67,'2024-06-30 15:52:37',67,0),(162,47,NULL,'test','','2024-06-30 17:27:09',67,'2024-06-30 17:27:18',1,1),(163,49,NULL,'First column','','2024-06-30 18:23:21',68,'2024-07-05 17:23:03',68,0),(164,49,NULL,'Second column','','2024-06-30 18:25:14',68,'2024-06-30 18:25:14',68,0),(165,49,NULL,'Third column','','2024-07-01 11:00:33',68,'2024-07-01 11:00:33',68,0),(166,49,NULL,'Fourth column','','2024-07-01 11:02:34',68,'2024-07-01 11:02:34',68,0),(167,49,NULL,'fifth column','','2024-07-03 02:51:27',68,'2024-07-05 16:42:24',1,1),(168,50,NULL,'First column','','2024-07-09 03:57:54',68,'2024-07-09 03:57:54',68,0),(169,50,NULL,'Second column','','2024-07-09 03:58:10',68,'2024-07-09 03:58:10',68,0),(170,50,NULL,'Third column','','2024-07-09 03:58:37',68,'2024-07-09 03:58:37',68,0),(171,50,NULL,'new column','','2024-07-11 01:04:00',68,'2024-07-11 01:04:00',68,0);
/*!40000 ALTER TABLE `Column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Feature`
--

DROP TABLE IF EXISTS `Feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Feature` (
  `FeatureId` int NOT NULL AUTO_INCREMENT,
  `FeatureName` varchar(150) NOT NULL,
  `FeatureDescription` varchar(500) DEFAULT NULL,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`FeatureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Feature`
--

LOCK TABLES `Feature` WRITE;
/*!40000 ALTER TABLE `Feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `Feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Role` (
  `RoleId` int NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(150) NOT NULL,
  `RoleDescription` varchar(500) DEFAULT NULL,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoleFeature`
--

DROP TABLE IF EXISTS `RoleFeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RoleFeature` (
  `RoleFeatureId` int NOT NULL AUTO_INCREMENT,
  `RoleId` int NOT NULL,
  `FeatureId` int NOT NULL,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`RoleFeatureId`),
  KEY `fk_RoleFeature_Role_RoleId` (`RoleId`),
  KEY `fk_RoleFeature_Feature_FeatureId` (`FeatureId`),
  CONSTRAINT `fk_RoleFeature_Feature_FeatureId` FOREIGN KEY (`FeatureId`) REFERENCES `Feature` (`FeatureId`),
  CONSTRAINT `fk_RoleFeature_Role_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoleFeature`
--

LOCK TABLES `RoleFeature` WRITE;
/*!40000 ALTER TABLE `RoleFeature` DISABLE KEYS */;
/*!40000 ALTER TABLE `RoleFeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tag`
--

DROP TABLE IF EXISTS `Tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tag` (
  `TagId` int NOT NULL AUTO_INCREMENT,
  `TaskId` int NOT NULL,
  `TagName` varchar(50) DEFAULT NULL,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`TagId`),
  KEY `fk_task_id` (`TaskId`),
  CONSTRAINT `fk_task_id` FOREIGN KEY (`TaskId`) REFERENCES `Task` (`TaskId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tag`
--

LOCK TABLES `Tag` WRITE;
/*!40000 ALTER TABLE `Tag` DISABLE KEYS */;
INSERT INTO `Tag` VALUES (1,1,'test tag for task 1','2024-04-29 23:39:53',1,'2024-04-29 23:39:53',1,0);
/*!40000 ALTER TABLE `Tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Task`
--

DROP TABLE IF EXISTS `Task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Task` (
  `TaskId` int NOT NULL AUTO_INCREMENT,
  `ColumnId` int NOT NULL,
  `TaskName` varchar(150) NOT NULL,
  `TaskDescription` varchar(500) DEFAULT NULL,
  `CreateDatetime` timestamp NULL DEFAULT NULL,
  `CreateUserId` int DEFAULT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`TaskId`),
  KEY `fk_Task_Column_ColumnId` (`ColumnId`),
  CONSTRAINT `fk_Task_Column_ColumnId` FOREIGN KEY (`ColumnId`) REFERENCES `Column` (`ColumnId`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Task`
--

LOCK TABLES `Task` WRITE;
/*!40000 ALTER TABLE `Task` DISABLE KEYS */;
INSERT INTO `Task` VALUES (1,1,'First task for column 1!','Testing board re-render... This is a description update!...','2024-04-29 23:38:31',1,'2024-05-20 00:41:59',1,1),(2,3,'Testing first task update from swagger! :)','This is a new description! Updated :) ... Testing another description update...','2024-04-30 23:10:46',1,'2024-05-19 18:10:10',1,0),(3,3,'i love cassidy','So much','2024-04-30 23:23:55',1,'2024-05-17 17:01:40',1,1),(4,3,'Testing task update from UI...!','Testing description... ... And testing one more description update...','2024-04-30 23:27:09',1,'2024-05-18 14:26:11',1,1),(5,1,'new task','new task description','2024-04-30 23:27:12',1,'2024-05-01 03:32:54',1,1),(6,1,'new task','new task description','2024-04-30 23:27:13',1,'2024-05-01 03:32:48',1,1),(7,1,'new task!!','this is the new task description','2024-05-01 03:33:27',1,'2024-05-01 03:49:26',0,1),(8,1,'new task!!','this is the new task description','2024-05-01 03:33:28',1,'2024-05-01 03:33:55',1,1),(9,1,'new task!!','this is the new task description','2024-05-01 03:33:29',1,'2024-05-01 03:33:52',1,1),(10,3,'i love cassidy','Sooooooo much!!!','2024-05-01 03:47:22',1,'2024-05-20 00:59:18',1,0),(11,3,'Testing new task!','Testing new task description...','2024-05-13 20:41:43',1,'2024-05-18 02:30:36',1,1),(12,3,'Testing new task, pt. 2','Testing new task!','2024-05-13 20:44:24',1,'2024-05-18 02:30:16',1,1),(13,3,'Testing new task, pt. 3','Testing new task!','2024-05-13 20:45:32',1,'2024-05-18 02:30:45',1,1),(14,3,'test','test','2024-05-13 22:11:10',1,'2024-05-18 02:30:40',1,1),(15,36,'Testing new task','testing new task descr.','2024-05-15 12:15:21',1,'2024-05-19 18:09:37',1,0),(16,39,'Testing rerendering from AppContext!!!','Testing rerendering from AppContext.... Let\'s see!','2024-05-17 11:59:03',1,'2024-05-19 23:41:13',1,1),(17,15,'test task create from column 3','test task create from column 3','2024-05-17 11:59:22',1,'2024-05-17 11:59:22',1,0),(18,16,'testing rerender from task creation','testing test','2024-05-17 15:27:45',1,'2024-05-17 15:27:45',1,0),(19,16,'test rerender pt 2','testtest','2024-05-17 15:28:51',1,'2024-05-17 15:28:51',1,0),(20,16,'test again','test','2024-05-17 15:29:34',1,'2024-05-17 15:29:34',1,0),(21,23,'test task','testing','2024-05-17 16:32:25',1,'2024-05-17 16:32:25',1,0),(22,23,'test task 2','test task 2','2024-05-17 16:32:53',1,'2024-05-17 16:32:53',1,0),(23,23,'test task 3','testing','2024-05-17 16:34:26',1,'2024-05-17 16:34:26',1,0),(24,23,'test task 4','test','2024-05-17 16:34:36',1,'2024-05-17 16:34:36',1,0),(25,25,'new task in new column!','new task in new column!','2024-05-17 16:37:04',1,'2024-05-17 16:37:04',1,0),(26,25,'new task 2 in new column!','new task 2 in new column!','2024-05-17 16:37:11',1,'2024-05-17 16:37:11',1,0),(27,25,'new task 3 in new column!','new task 3 in new column!','2024-05-17 16:37:22',1,'2024-05-17 16:37:22',1,0),(28,1,'new task in new column 2!','new task in new column 2!','2024-05-17 16:38:53',1,'2024-05-19 23:51:08',1,1),(29,3,'new task 2 in new column 2!','new task 2 in new column 2!','2024-05-17 16:39:04',1,'2024-05-18 02:30:47',1,1),(30,3,'new task 3 in new column 2!','new task 3 in new column 2!','2024-05-17 16:39:13',1,'2024-05-18 02:31:00',1,1),(31,26,'Testing testing','test','2024-05-17 16:46:39',1,'2024-05-18 02:29:49',1,1),(32,27,'new task','new task','2024-05-17 17:29:20',1,'2024-05-17 17:29:20',1,0),(33,38,'UPDAAATE','new task description...','2024-05-17 21:26:02',1,'2024-05-19 21:42:05',1,1),(34,31,'yooo','up','2024-05-17 23:02:19',1,'2024-05-18 02:28:45',1,1),(35,32,'New task!','new task....','2024-05-18 00:20:49',1,'2024-05-18 02:43:43',1,1),(36,34,'New task!','new test descri.','2024-05-18 16:09:17',1,'2024-05-18 17:19:17',1,0),(37,1,'New task...!','New tasker','2024-05-19 13:59:32',1,'2024-05-19 23:41:47',1,1),(38,26,'new task','new task','2024-05-19 14:32:37',1,'2024-05-19 14:32:37',1,0),(39,37,'test task','test','2024-05-19 14:49:38',1,'2024-05-19 14:49:38',1,0),(40,38,'test task to delete','testing testing','2024-05-19 23:03:22',1,'2024-05-19 23:41:23',1,1),(41,38,'test','test','2024-05-20 00:53:11',1,'2024-05-20 01:04:43',1,1),(42,38,'new test task col. 3','new test task','2024-05-20 01:04:55',1,'2024-05-20 01:04:55',1,0),(43,1,'test task!','testing!','2024-05-20 01:09:15',1,'2024-05-20 01:09:26',1,0),(44,58,'testtttt','test!','2024-05-20 18:42:24',1,'2024-05-20 18:42:43',1,1),(45,61,'testttt 2','test 2!','2024-05-20 18:42:35',1,'2024-05-23 20:55:14',1,0),(46,58,'test 3!','test 3','2024-05-20 18:43:44',1,'2024-05-20 18:43:50',1,1),(47,59,'test 3','test 3!','2024-05-20 18:45:08',1,'2024-05-20 22:38:17',1,1),(48,58,'new task','new task','2024-05-20 22:18:16',1,'2024-05-20 22:27:20',1,1),(49,58,'task #1','test','2024-05-20 22:54:02',1,'2024-05-23 21:36:01',1,0),(50,54,'test ','test','2024-05-23 21:26:54',1,'2024-05-23 21:27:16',1,0),(51,61,'new task','new task','2024-05-23 21:38:44',1,'2024-05-23 21:38:44',1,0),(52,58,'test task 2','test','2024-05-24 04:06:39',1,'2024-05-24 04:06:39',1,0),(53,68,'test task','test','2024-05-28 20:56:05',11,'2024-06-05 11:28:05',11,0),(54,72,'test task','test','2024-05-29 12:56:06',11,'2024-06-02 05:09:00',11,0),(55,75,'test task!!','test','2024-05-29 12:56:16',11,'2024-06-06 13:07:30',11,0),(56,72,'test','t','2024-05-31 17:29:01',11,'2024-06-02 05:28:04',11,0),(57,77,'new test','nt','2024-06-02 14:23:03',11,'2024-06-06 01:25:49',11,0),(58,66,'new task','nt','2024-06-02 21:10:48',11,'2024-06-02 21:43:53',11,0),(59,89,'New task col 2','ntc2','2024-06-02 21:12:34',11,'2024-06-02 21:12:43',11,0),(60,93,'Test task','tt1','2024-06-02 21:46:15',11,'2024-06-02 21:46:15',11,0),(61,94,'test task 2','tt2','2024-06-02 21:46:23',11,'2024-06-02 21:47:34',11,0),(62,94,'test task 3','tt3','2024-06-02 21:46:31',11,'2024-06-02 21:47:32',11,0),(63,94,'Test task 4','tt4','2024-06-02 21:51:42',11,'2024-06-02 21:51:42',11,0),(64,90,'test task','test','2024-06-02 21:53:53',11,'2024-06-02 21:53:53',11,0),(65,102,'new task!','nt','2024-06-05 04:05:31',11,'2024-06-07 03:41:38',11,0),(66,100,'new task 2','nt2','2024-06-05 04:07:02',11,'2024-06-05 04:07:02',11,0),(67,109,'New task~','new task!','2024-06-05 11:55:55',23,'2024-06-05 11:55:55',23,0),(68,112,'Dad\'s taks','Dad\'s getting crap done!','2024-06-06 01:25:30',11,'2024-06-06 01:31:39',11,0),(69,77,'new task','nt','2024-06-06 13:09:07',11,'2024-06-06 13:09:07',11,0),(70,118,'first task','ft','2024-06-12 13:49:51',35,'2024-06-12 13:49:53',35,0),(71,106,'nt','nt','2024-06-12 23:17:31',11,'2024-06-12 23:17:31',11,0),(72,122,'first task','ft','2024-06-12 23:20:03',36,'2024-06-13 03:53:26',36,0),(73,121,'second task','st','2024-06-12 23:20:16',36,'2024-06-12 23:20:16',36,0),(74,124,'new task','nt1','2024-06-13 04:09:26',36,'2024-06-13 04:09:26',36,0),(75,71,'new task','ntnt','2024-06-13 13:57:46',11,'2024-06-13 13:57:46',11,0),(76,128,'new task','nt','2024-06-15 13:43:02',44,'2024-06-15 13:43:02',44,0),(77,133,'new task','nt','2024-06-15 14:40:10',45,'2024-06-15 14:40:10',45,0),(78,134,'task 2','task 2','2024-06-15 14:42:08',45,'2024-06-15 14:42:12',45,0),(79,139,'first task','ft','2024-06-15 16:47:05',50,'2024-06-15 16:47:05',50,0),(80,144,'first task','need to do some work','2024-06-16 19:14:35',57,'2024-06-16 19:28:47',57,0),(81,143,'second task','st','2024-06-16 19:18:50',57,'2024-06-16 19:18:50',57,0),(82,143,'third task','this the third task today','2024-06-16 19:20:16',57,'2024-06-16 19:20:16',57,0),(83,143,'fourth task','this is the fourth task','2024-06-16 19:21:20',57,'2024-06-16 19:21:20',57,0),(84,145,'first task','ft','2024-06-16 23:05:05',60,'2024-06-16 23:05:05',60,0),(85,147,'Terraform apply','tf --apply','2024-06-17 11:36:16',61,'2024-06-17 11:36:16',61,0),(86,151,'First task','this is my first task','2024-06-18 13:40:38',64,'2024-06-18 13:40:38',64,0),(87,156,'Task','This is a description','2024-06-21 00:38:19',67,'2024-06-30 14:22:37',1,1),(88,155,'Task 2','description....','2024-06-21 00:40:04',67,'2024-06-30 14:19:32',1,1),(89,154,'This is a completed task','Was fun doing this one!','2024-06-21 13:17:24',67,'2024-06-30 14:19:56',1,1),(90,157,'A task','a description','2024-06-29 04:55:57',67,'2024-06-30 17:24:48',67,0),(91,158,'Second task','this is my second task','2024-06-29 22:56:25',67,'2024-06-30 13:38:51',67,0),(92,159,'New task','heyyo!','2024-06-29 23:12:50',67,'2024-06-30 15:42:18',67,0),(93,154,'New task','this is a new task','2024-06-30 14:22:50',67,'2024-06-30 14:27:25',1,1),(94,154,'new task','new task','2024-06-30 14:31:38',67,'2024-06-30 14:31:56',1,1),(95,154,'new task','new task','2024-06-30 14:34:35',67,'2024-06-30 14:35:27',1,1),(96,154,'New task!','new task','2024-06-30 14:39:00',67,'2024-06-30 14:40:47',1,1),(97,155,'New test making name a little longer...','new test! here\'s a longer description...','2024-06-30 14:42:03',67,'2024-06-30 16:29:02',67,0),(98,153,'Finish making board look dooope!','Yeee!','2024-06-30 16:30:42',67,'2024-06-30 16:30:42',67,0),(99,157,'test','test!','2024-06-30 17:35:15',67,'2024-06-30 17:40:35',67,0),(100,163,'First task!','This is my first task','2024-06-30 18:23:53',68,'2024-07-03 02:40:31',68,0),(101,165,'Second task!!','This is my second task... Super fun!','2024-06-30 18:25:06',68,'2024-07-05 20:41:29',68,0),(102,164,'Third task','This is my third task','2024-07-01 00:50:16',68,'2024-07-05 13:21:24',68,0),(103,166,'Board is starting to look good!','Woohoo','2024-07-01 11:08:55',68,'2024-07-05 21:12:31',68,0),(104,164,'Second column!','SC!','2024-07-03 02:45:22',68,'2024-07-05 16:38:15',1,1),(105,165,'New task :)','New task yo!','2024-07-05 17:22:52',68,'2024-07-11 01:03:49',68,0),(106,169,'First task','This is my first task!','2024-07-09 03:58:51',68,'2024-07-09 03:58:51',68,0);
/*!40000 ALTER TABLE `Task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `CreateDatetime` timestamp NOT NULL,
  `UpdateDatetime` datetime DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'system@projectb.com',NULL,NULL,'2024-04-29 22:56:23',NULL,NULL,0),(2,'test@test.net',NULL,NULL,'2024-04-29 22:57:32',NULL,NULL,0),(3,'testy@test.testinc',NULL,NULL,'2024-05-01 04:49:33','2024-05-01 00:00:22',1,1),(4,'test@test.testerinc',NULL,NULL,'2024-05-01 05:00:50','2024-05-01 00:04:39',0,1),(5,'newuser@test.net',NULL,NULL,'2024-05-01 13:56:32',NULL,NULL,0),(6,'newuser2@test.net',NULL,NULL,'2024-05-01 13:56:49',NULL,NULL,0),(7,'newuser3@test.net',NULL,NULL,'2024-05-01 13:56:54','2024-05-01 08:59:18',2,1),(8,'newuser3@test.net',NULL,NULL,'2024-05-26 16:16:11',NULL,NULL,0),(9,'newuser4@test.net','Tester','McTester','2024-05-26 17:10:09','2024-05-26 12:13:11',2,0),(10,'hagus231@grafdot.com','Test','User13','2024-05-27 13:07:54',NULL,NULL,0),(11,'jmortland@gold-coin-star.com','Test','User14','2024-05-28 03:37:36',NULL,NULL,0),(12,'zhanaraturmahanbeto@smalltallkcounseling.com','Mike','Tester','2024-05-28 03:40:39',NULL,NULL,0),(13,'gavinjosh12@muahetbienhoa.com','Mike','Test','2024-05-28 10:36:45',NULL,NULL,0),(14,'adminla2@chahcyrans.com','Mike','Test','2024-05-30 12:54:06',NULL,NULL,0),(15,'dsamkov@chahcyrans.com','Test','User','2024-05-30 12:56:48',NULL,NULL,0),(16,'zaka4@onlen.in','Mike','Test','2024-05-30 12:57:35',NULL,NULL,0),(17,'jwpsr@ibande.xyz','Miek','Test','2024-05-30 13:01:05',NULL,NULL,0),(18,'massimup8of@boranora.com','Mike','Jones','2024-05-31 02:56:35',NULL,NULL,0),(19,'grgjns@newlookbykarina.com','Mike','Test','2024-05-31 03:01:19',NULL,NULL,0),(20,'marta87c@embeans.com','Mike','Sanderson','2024-05-31 19:31:24',NULL,NULL,0),(21,'tanechkaskl@anadaratours.com','Mike','Test','2024-06-01 14:54:45',NULL,NULL,0),(22,'nrobbins@yuki.ren','Mike','Test','2024-06-02 12:39:21',NULL,NULL,0),(23,'lapair35@yopmall.xyz','Mike','Tester','2024-06-05 11:54:44',NULL,NULL,0),(24,'288692@onlyu.link','Mike','Scotts','2024-06-08 12:04:30',NULL,NULL,0),(25,'wasek137@googl.win','Mike','Test','2024-06-12 03:52:47',NULL,NULL,0),(26,'elijuah@filmeditinpro.com','Mke','Test','2024-06-12 04:13:01',NULL,NULL,0),(27,'fadelaljabi@suksesboss.com','mike','test','2024-06-12 04:17:24',NULL,NULL,0),(28,'mlicciar@gomigoofficial.com','mike','test','2024-06-12 13:22:47',NULL,NULL,0),(29,'delrozupro@ezasamara.com','mike','test','2024-06-12 13:32:30',NULL,NULL,0),(30,'ryan699@thankqcomping.com','Mike','Test','2024-06-12 13:35:01',NULL,NULL,0),(31,'shane4375@6speedsnail.com','mike','test','2024-06-12 13:35:46',NULL,NULL,0),(32,'heart1112@googl.win','Mike','Test','2024-06-12 13:39:43',NULL,NULL,0),(33,'roshann92@growfortunenote.com','Mike','Test','2024-06-12 13:41:06',NULL,NULL,0),(34,'teen01@golfcountryusa.com','mike','test','2024-06-12 13:43:20',NULL,NULL,0),(35,'6005zone@anadaratours.com','mike','test','2024-06-12 13:44:05',NULL,NULL,0),(36,'serkathian79@eduspluss.com','mike','test','2024-06-12 23:19:27',NULL,NULL,0),(37,'igeligel@ebarg.net','Mike','Test','2024-06-13 13:44:52',NULL,NULL,0),(38,'keshatyumen@koolcowdrinks.com','Test','User','2024-06-14 13:02:36',NULL,NULL,0),(39,'speech503@gold-coin-star.com','mike','test','2024-06-14 13:04:20',NULL,NULL,0),(40,'farraher@succesfulagent.com','mike','test','2024-06-14 13:22:40',NULL,NULL,0),(41,'undefii4wss@thankqcomping.com','mike','test','2024-06-14 13:23:28',NULL,NULL,0),(42,'bhadra5007ab@chamberofcommerceof.com','mike','test','2024-06-14 17:37:03',NULL,NULL,0),(43,'rushangel7@hitbase.net','mike','tet','2024-06-14 17:38:24',NULL,NULL,0),(44,'lastmonax@domaain33.online','Mike','Test','2024-06-14 20:23:13',NULL,NULL,0),(45,'ymikhaylenko@myterrariumgarden.com','mike','test','2024-06-15 13:44:58',NULL,NULL,0),(46,'iwt2008@fasdrgaf5.shop','mike','tester','2024-06-15 14:52:14',NULL,NULL,0),(47,'downdate@i-love-you-3000.net','mike','test','2024-06-15 16:33:22',NULL,NULL,0),(48,'alienstep2008@pow-pows.com','mike','test','2024-06-15 16:37:59',NULL,NULL,0),(49,'goptairina@anadaratours.com','mike','test','2024-06-15 16:39:11',NULL,NULL,0),(50,'kenesbaeva85@merchant-new.com','mike','test','2024-06-15 16:45:32',NULL,NULL,0),(51,'peri0114@816qs.com','mike','test','2024-06-15 16:52:00',NULL,NULL,0),(52,'rocchio@otpku.com','mike','test','2024-06-15 16:53:05',NULL,NULL,0),(53,'detatch79@merchant-new.com','mike','test','2024-06-15 16:54:20',NULL,NULL,0),(54,'goldslav22@thankqcomping.com','mike','test','2024-06-16 02:32:24',NULL,NULL,0),(55,'2825@freeprodesign.com','mike','test','2024-06-16 14:55:52',NULL,NULL,0),(56,'kuul1@benifitsaversusa.com','mike','test','2024-06-16 19:02:32',NULL,NULL,0),(57,'gooru@yt-google.com','mike','tester','2024-06-16 19:12:59',NULL,NULL,0),(58,'irinalvova85@smalltallkcounseling.com','mike','test','2024-06-16 19:51:50',NULL,NULL,0),(59,'dk106127@gottigetbalanced.com','mike','test','2024-06-16 20:00:06',NULL,NULL,0),(60,'raedallawi@embeans.com','mike','test','2024-06-16 20:02:35',NULL,NULL,0),(61,'haandi@otpku.com','mike','scotts','2024-06-17 11:32:05',NULL,NULL,0),(62,'4e8j8xy1axl@scriblehow.com','mike','test','2024-06-18 13:31:13',NULL,NULL,0),(63,'rivnewt@freeprodesign.com','mike','test','2024-06-18 13:36:16',NULL,NULL,0),(64,'28dons@piqamail.top','mike','test','2024-06-18 13:39:08',NULL,NULL,0),(65,'demageka1@ejasmo.com','mike','test','2024-06-19 13:22:01',NULL,NULL,0),(66,'krytousanek@aboutsa.site','mike','test','2024-06-19 13:26:32',NULL,NULL,0),(67,'billiamk@lechatiao.com','mike','test','2024-06-21 00:37:21',NULL,NULL,0),(68,'bulldog9@sigmachiumass.com','Mike','Test','2024-06-30 18:17:29',NULL,NULL,0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRole`
--

DROP TABLE IF EXISTS `UserRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserRole` (
  `UserRoleId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `RoleId` int NOT NULL,
  `CreateDatetime` timestamp NOT NULL,
  `CreateUserId` int NOT NULL,
  `UpdateDatetime` timestamp NULL DEFAULT NULL,
  `UpdateUserId` int DEFAULT NULL,
  `IsDeleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserRoleId`),
  KEY `fk_UserRole_User_UserId` (`UserId`),
  KEY `fk_UserRole_Role_RoleId` (`RoleId`),
  CONSTRAINT `fk_UserRole_Role_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `Role` (`RoleId`),
  CONSTRAINT `fk_UserRole_User_UserId` FOREIGN KEY (`UserId`) REFERENCES `User` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRole`
--

LOCK TABLES `UserRole` WRITE;
/*!40000 ALTER TABLE `UserRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ProjectB'
--
/*!50003 DROP PROCEDURE IF EXISTS `BoardDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardDelete`( 
    paramBoardId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE Board
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE BoardId = paramBoardId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BoardGetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardGetAll`()
BEGIN

	SELECT BoardId,
		   UserId,
           BoardName,
           BoardDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Board
    WHERE IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BoardGetByUserIdAndBoardId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardGetByUserIdAndBoardId`( 
	paramUserId int,
    paramBoardId int
)
BEGIN 

	SELECT BoardId,
		   UserId,
           BoardName,
           BoardDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Board
    WHERE BoardId = paramBoardId
		AND UserId = paramUserId
		AND IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BoardGetListByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardGetListByUserId`( 
	paramUserId int
)
BEGIN

	SELECT BoardId,
		   UserId,
           BoardName
    FROM Board
    WHERE UserId = paramUserId
		AND IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BoardPersist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardPersist`( 
    paramUserId int,
    paramBoardName varchar(150),
    paramBoardDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Board (UserId, BoardName, BoardDescription, CreateDatetime, CreateUserId)
    VALUES (paramUserId, paramBoardName, paramBoardDescription, CURRENT_TIMESTAMP, paramCreateUserId);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BoardUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BoardUpdate`( 
    paramBoardId int,
    paramBoardName varchar(150),
    paramBoardDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE ProjectB.Board
    SET BoardName = paramBoardName,
		BoardDescription = paramBoardDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE BoardId = paramBoardId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ColumnDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnDelete`( 
    paramColumnId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE ProjectB.Column
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE ColumnId = paramColumnId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ColumnGetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnGetAll`()
BEGIN

	SELECT ColumnId,
		   BoardId,
           ColumnName,
           ColumnDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM ProjectB.Column
    WHERE IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ColumnGetAllByBoardAndUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnGetAllByBoardAndUserId`( 
    paramBoardId INT,
    paramUserId INT
)
BEGIN

	SELECT ColumnId,
           b.BoardId,
           b.UserId,
           ColumnName,
           ColumnDescription,
		   c.CreateDatetime,
           c.CreateUserId,
           c.UpdateDatetime,
           c.UpdateUserId
    FROM ProjectB.Column c
    INNER JOIN ProjectB.Board b ON c.BoardId = b.BoardId
    WHERE c.BoardId = paramBoardId
		AND b.UserId = paramUserId
		AND c.IsDeleted = 0
        AND b.IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ColumnGetByColumnIdAndUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnGetByColumnIdAndUserId`( 
    paramColumnId INT,
    paramUserId INT
)
BEGIN

	SELECT ColumnId,
           b.BoardId,
           b.UserId,
           ColumnName,
           ColumnDescription,
		   c.CreateDatetime,
           c.CreateUserId,
           c.UpdateDatetime,
           c.UpdateUserId
    FROM ProjectB.Column c
    INNER JOIN ProjectB.Board b ON c.BoardId = b.BoardId
    WHERE c.ColumnId = paramColumnId
		AND b.UserId = paramUserId
		AND c.IsDeleted = 0
        AND b.IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ColumnPersist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnPersist`( 
    paramBoardId int,
    paramColumnName varchar(150),
    paramColumnDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO ProjectB.Column (BoardId, ColumnName, ColumnDescription, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramBoardId, paramColumnName, paramColumnDescription, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ColumnUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ColumnUpdate`( 
    paramColumnId int,
    paramColumnName varchar(150),
    paramColumnDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE ProjectB.Column
    SET ColumnName = paramColumnName,
		ColumnDescription = paramColumnDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE ColumnId = paramColumnId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TagGetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TagGetAll`()
BEGIN

	SELECT TagId,
		   TaskId,
           TagName,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Tag
    WHERE IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TagPersist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TagPersist`( 
    paramTaskId int,
    paramTagName varchar(50),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Tag (TaskId, TagName, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramTaskId, paramTagName, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TaskDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskDelete`( 
    paramTaskId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE Task
    SET IsDeleted = 1,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TaskId = paramTaskId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TaskGetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskGetAll`()
BEGIN

	SELECT TaskId,
		   ColumnId,
           TaskName,
           TaskDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Task
    WHERE IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TaskGetAllByColumnId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskGetAllByColumnId`( 
	paramColumnId int
)
BEGIN

	SELECT TaskId,
		   ColumnId,
           TaskName,
           TaskDescription,
		   CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Task
    WHERE ColumnId = paramColumnId
		AND IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TaskGetDetailsByTaskId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskGetDetailsByTaskId`( 
	paramTaskId int
)
BEGIN

	SELECT TaskId,
		   ColumnId,
           TaskName,
           TaskDescription,
           CreateDatetime,
           CreateUserId,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM Task
    WHERE TaskId = paramTaskId
		AND IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TaskPersist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskPersist`( 
    paramColumnId int,
    paramTaskName varchar(150),
    paramTaskDescription varchar(500),
    paramCreateUserId int
)
BEGIN

	INSERT INTO Task (ColumnId, TaskName, TaskDescription, CreateDatetime, CreateUserId, UpdateDatetime, UpdateUserId)
    VALUES (paramColumnId, paramTaskName, paramTaskDescription, CURRENT_TIMESTAMP, paramCreateUserId, CURRENT_TIMESTAMP, paramCreateUserId);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TaskUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TaskUpdate`( 
    paramTaskId int,
    paramColumnId int,
    paramTaskName varchar(150),
    paramTaskDescription varchar(500),
    paramUpdateUserId int
)
BEGIN

	UPDATE Task
    SET ColumnId = paramColumnId,
		TaskName = paramTaskName,
		TaskDescription = paramTaskDescription,
        UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP()
	WHERE TaskId = paramTaskId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserDelete`( 
	paramUserId int,
    paramUpdateUserId int
)
BEGIN

	UPDATE User
    SET IsDeleted = 1,
		UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP
    WHERE UserId = paramUserId;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserGetByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserGetByEmail`( 
	paramEmail varchar(255)
)
BEGIN

	SELECT UserId,
		   Email,
           FirstName,
           LastName,
           CreateDatetime,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM User
    WHERE Email = paramEmail
		AND IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserGetById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserGetById`( 
	paramUserId int
)
BEGIN

	SELECT UserId,
		   Email,
           FirstName,
           LastName,
           CreateDatetime,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM User
    WHERE UserId = paramUserId
		AND IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserGetList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserGetList`()
BEGIN

	SELECT UserId,
		   Email,
           FirstName,
           LastName,
           CreateDatetime,
           UpdateDatetime,
           UpdateUserId,
           IsDeleted
    FROM User
    WHERE IsDeleted = 0;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserPersist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserPersist`( 
	paramEmail varchar(255),
    paramFirstName varchar(50),
    paramLastName varchar(100)
)
BEGIN

	INSERT INTO User (Email, FirstName, LastName, CreateDatetime)
    VALUES (paramEmail, paramFirstName, paramLastName, CURRENT_TIMESTAMP);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UserUpdateByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UserUpdateByUserId`( 
	paramUserId int,
    paramEmail varchar(255),
    paramFirstName varchar(50),
    paramLastName varchar(100),
    paramUpdateUserId int
)
BEGIN

	UPDATE User
    SET Email = paramEmail,
		FirstName = paramFirstName,
        LastName = paramLastName,
		UpdateUserId = paramUpdateUserId,
        UpdateDatetime = CURRENT_TIMESTAMP
    WHERE UserId = paramUserId;
    
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

-- Dump completed on 2024-07-12 23:12:58
