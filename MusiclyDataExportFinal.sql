CREATE DATABASE  IF NOT EXISTS `musicly` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `musicly`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: musicly
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `artist_id` int NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(100) NOT NULL,
  `bio` mediumblob,
  `a_dob` date DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `artist_name` (`artist_name`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Alka Yagnik',_binary 'Alka Yagnik is an amzing Hindi singer ','1988-01-01'),(2,'Arijit Singh',_binary 'Arijit Singh is an amzing Hindi singer ','1988-01-02'),(3,'Asha Bhosle',_binary 'Asha Bhosle is an amzing Hindi singer ','1988-01-03'),(4,'Neha Kakkar',_binary 'Neha Kakkar is an amzing Hindi singer ','1988-01-04'),(5,'Shreya Ghoshal',_binary 'Shreya Ghoshal is an amzing Hindi singer ','1988-01-05'),(6,'Vishal Shekar',_binary 'Vishal Shekar is an amzing Hindi singer ','1988-01-06'),(7,'Daddy Yankee',_binary 'Kishore Kumar is an amzing Hindi singer ','1988-01-07'),(8,'A.R. Rahman',_binary 'A.R. Rahman is an amzing Hindi singer ','1988-01-08'),(9,'Atif Aslam',_binary 'Atif Aslam is an amzing Hindi singer ','1988-01-09'),(10,'Sonu Nigam',_binary 'Sonu Nigam is an amzing Hindi singer ','1988-01-10'),(11,'Kumar Sanu',_binary 'Kumar Sanu is an amzing Hindi singer ','1988-01-11'),(12,'Pritam',_binary 'Pritam is an amzing Hindi singer ','1988-01-12'),(13,'Badshah',_binary 'Badshah is an amzing Hindi singer ','1988-01-13'),(14,'Anu Malik',_binary 'Anu Malik is an amzing Hindi singer ','1988-01-14'),(15,'Diljit Dosanjh',_binary 'Diljit Dosanjh is an amzing Hindi singer ','1988-01-15'),(16,'Shankar Mahadevan',_binary 'Shankar Mahadevan is an amzing Hindi singer ','1988-01-16'),(17,'Shankar Ehsaan Loy',_binary 'Shankar Ehsaan Loy is an amzing Hindi singer ','1988-01-17'),(18,'Bappi Lahiri',_binary 'Bappi Lahiri is an amzing Hindi singer ','1988-01-18'),(19,'Shaan',_binary 'Shaan is an amzing Hindi singer ','1988-01-19'),(20,'S.D.Burman',_binary 'S.D.Burman is an amzing Hindi singer ','1988-01-20'),(21,'Gajendra Verma',_binary 'Gajendra Verma is an amzing Hindi singer ','1988-01-21'),(22,'Benny Dayal',_binary 'Benny Dayal is an amzing Hindi singer ','1988-01-22'),(23,'Richa Sharma',_binary 'Richa Sharma is an amzing Hindi singer ','1988-01-23'),(24,'Falguni Pathak',_binary 'Falguni Pathak is an amzing Hindi singer ','1988-01-24'),(25,'Meet Bros',_binary 'Meet Bros is an amzing Hindi singer ','1988-01-25'),(26,'Mika Singh',_binary 'Mika Singh is an amzing Hindi singer ','1988-01-26'),(27,'Sanjay Oza',_binary 'Sanjay Oza is an amzing Hindi singer ','1988-01-27'),(28,'Parth Chaudhary',_binary 'Parth Chaudhary is an amzing Hindi singer ','1988-01-28'),(29,'Geeta Rabari',_binary 'Geeta Rabari is an amzing Hindi singer ','1988-01-29'),(30,'Vijay Suvada',_binary 'Vijay Suvada is an amzing Hindi singer ','1988-01-30'),(31,'Sachin Jigar',_binary 'Sachin Jigar is an amzing Hindi singer ','1988-01-31'),(32,'Jayker Bhojak',_binary 'Jayker Bhojak is an amzing Hindi singer ','1988-02-01'),(33,'Shyamal Saumil',_binary 'Shyamal Saumil is an amzing Hindi singer ','1988-02-02'),(34,'Aarti Munshi',_binary 'Aarti Munshi is an amzing Hindi singer ','1988-02-03'),(35,'Vatsala Patil',_binary 'Vatsala Patil is an amzing Hindi singer ','1988-02-04'),(36,'Bhoomi Trivedi',_binary 'Bhoomi Trivedi is an amzing Hindi singer ','1988-02-05'),(37,'Atul Purohit',_binary 'Atul Purohit is an amzing Hindi singer ','1988-02-06'),(38,'Paritosh Goswami',_binary 'Paritosh Goswami is an amzing Hindi singer ','1988-02-07'),(39,'Sachin Limaye',_binary 'Sachin Limaye is an amzing Hindi singer ','1988-02-08'),(40,'Achal Mehta',_binary 'Achal Mehta is an amzing Hindi singer ','1988-02-09'),(41,'Daler Mehndi',_binary 'Daler Mehndi is an amzing Hindi singer ','1988-02-10'),(42,'Sukhwinder Singh',_binary 'Sukhwinder Singh is an amzing Hindi singer ','1988-02-11'),(43,'Malkit Singh',_binary 'Malkit Singh is an amzing Hindi singer ','1988-02-12'),(44,'Gurdas Maan',_binary 'Gurdas Maan is an amzing Hindi singer ','1988-02-13'),(45,'Guru Randhawa',_binary 'Guru Randhawa is an amzing Hindi singer ','1988-02-14'),(46,'Jasdeep Singh Gill',_binary 'Jasdeep Singh Gill is an amzing Hindi singer ','1988-02-15'),(47,'Kesha',_binary 'Kesha is an amzing English singer ','1988-02-16'),(48,'Billie Eilish',_binary 'Billie Eilish is an amzing English singer ','1988-02-17'),(49,'Halsey',_binary 'Halsey is an amzing English singer ','1988-02-18'),(50,'Tove Lo',_binary 'Tove Lo is an amzing English singer ','1988-02-19'),(51,'Krewella',_binary 'Krewella is an amzing English singer ','1988-02-20'),(52,'Tame Impala',_binary 'Tame Impala is an amzing English singer ','1988-02-21'),(53,'The Weekend',_binary 'The Weekend is an amzing English singer ','1988-02-22'),(54,'Selena Gomez',_binary 'Selena Gomez is an amzing English singer ','1988-02-23'),(55,'Adele',_binary 'Adele is an amzing English singer ','1988-02-24'),(56,'Akon',_binary 'Akon is an amzing English singer ','1988-02-25'),(57,'Alan Walker',_binary 'Alan Walker is an amzing English singer ','1988-02-26'),(58,'Calvin Harris',_binary 'Calvin Harris is an amzing English singer ','1988-02-27'),(59,'Ariana Grande',_binary 'Ariana Grande is an amzing English singer ','1988-02-28'),(60,'Avicii',_binary 'Avicii is an amzing English singer ','1988-02-29'),(61,'Rita Ora',_binary 'Rita Ora is an amzing English singer ','1988-03-01'),(62,'Drake',_binary 'Drake is an amzing English singer ','1988-03-02'),(63,'Khalid',_binary 'Khalid is an amzing English singer ','1988-03-03'),(64,'Bon Iver',_binary 'Bon Iver is an amzing English singer ','1988-03-04'),(65,'Bon Jovi',_binary 'Bon Jovi is an amzing English singer ','1988-03-05'),(66,'Bryan Adams',_binary 'Bryan Adams is an amzing English singer ','1988-03-06'),(67,'Enrique Iglesias',_binary 'Enrique Iglesias is an amzing English singer ','1988-03-07'),(68,'Katy Perry',_binary 'Katy Perry is an amzing English singer ','1988-03-08'),(69,'Jennifer Lopez',_binary 'Jennifer Lopez is an amzing English singer ','1988-03-09'),(70,'Dua Lipa',_binary 'Dua Lipa is an amzing English singer ','1988-03-10'),(71,'Rihanna',_binary 'Rihanna is an amzing English singer ','1988-03-11'),(72,'Michael Jackson',_binary 'Michael Jackson is an amzing English singer ','1988-03-12'),(73,'Taylor Swift',_binary 'Taylor Swift is an amzing English singer ','1988-03-13'),(74,'Lady Gaga',_binary 'Lady Gaga is an amzing English singer ','1988-03-14'),(75,'Camila Cabello',_binary 'Camila Cabello is an amzing English singer ','1988-03-15'),(76,'The Chainsmokers',_binary 'The Chainsmokers is an amzing English singer ','1988-03-16'),(77,'Daft Punk',_binary 'Daft Punk is an amzing English singer ','1988-03-17'),(78,'DJ Snake',_binary 'DJ Snake is an amzing English singer ','1988-03-18'),(79,'Foreigner',_binary 'Foreigner is an amzing English singer ','1988-03-19'),(80,'Cardi B',_binary 'Cardi B is an amzing English singer ','1988-03-20'),(81,'Hot Chelle Rae',_binary 'Hot Chelle Rae is an amzing English singer ','1988-03-21'),(82,'Imagine Dragons',_binary 'Imagine Dragons is an amzing English singer ','1988-03-22'),(83,'BTS',_binary 'BTS is an amzing English singer ','1988-03-23'),(84,'PSY',_binary 'PSY is an amzing English singer ','1988-03-24'),(85,'Red Velvet',_binary 'Red Velvet is an amzing English singer ','1988-03-25'),(86,'TWICE',_binary 'TWICE is an amzing English singer ','1988-03-26'),(87,'Queen',_binary 'Queen is an amzing English singer ','1988-03-27'),(88,'pink floyd',_binary 'pink floyd is an amzing English singer ','1988-03-28'),(89,'Led Zeppelin',_binary 'Led Zeppelin is an amzing English singer ','1988-03-29'),(90,'Guns n Roses',_binary 'Guns n Roses is an amzing English singer ','1988-03-30'),(91,'Aerosmith',_binary 'Aerosmith is an amzing English singer ','1988-03-31'),(92,'Coldplay',_binary 'Coldplay is an amzing English singer ','1988-04-01'),(93,'AC/DC',_binary 'AC/DC is an amzing English singer ','1988-04-02'),(94,'Nirvana',_binary 'Nirvana is an amzing English singer ','1988-04-03'),(95,'The Smiths',_binary 'The Smiths is an amzing English singer ','1988-04-04'),(96,'John Legend',_binary 'John Legend is an amzing English singer ','1988-04-05'),(97,'The Doors',_binary 'The Doors is an amzing English singer ','1988-04-06'),(98,'OneRepublic',_binary 'OneRepublic is an amzing English singer ','1988-04-07'),(99,'Fall Out Boy',_binary 'Fall Out Boy is an amzing English singer ','1988-04-08'),(100,'Justin Bieber',_binary 'Justin Bieber is an amzing English singer ','1988-04-09'),(101,'Kep1er',_binary 'Kep1er is an amzing Korean singer ','1988-04-10'),(102,'Taehwan',_binary 'Taehwan is an amzing Korean singer ','1988-04-11'),(103,'Luis Fonsi Ft. Daddy Yankee',_binary 'Luis Fonsi Ft. Daddy Yankee is an amzing Spanish singer ','1988-04-12'),(104,'Luis Fonsi Stefflon Don',_binary 'Luis Fonsi Stefflon Don is an amzing Spanish singer ','1988-04-15'),(105,'Obsesión',_binary 'Obsesión is an amzing Spanish singer ','1988-04-16'),(106,'Bamboleo',_binary 'Bamboleo is an amzing Spanish singer ','1988-04-17'),(107,'Jacques Brel',_binary 'Jacques Brel is an amzing French singer ','1988-04-19'),(108,'Edith Piaf',_binary 'Edith Piaf is an amzing French singer ','1988-04-20'),(109,'Francoise Hardy',_binary 'Francoise Hardy is an amzing French singer ','1988-04-21'),(110,'Luis Fonsi',_binary ' is a good artist','1988-04-21'),(111,'Onda Latina Summer 2010',_binary 'Onda Latina Summer 2010 is good','1988-04-22'),(112,'Limbo',_binary 'Limbo is good','1988-04-23'),(113,'Calypso',_binary 'Calypso  is good','1988-04-24'),(114,'Aventura',_binary 'Aventura  is good','1988-04-25'),(115,'Gipsy Kings',_binary 'Gipsy Kings  is good','1988-04-26'),(116,'La Vie en rose',_binary 'La Vie en rose  is good','1988-04-27'),(117,'La Valse à Mille Temps',_binary 'La Valse à Mille Temps  is good','1988-04-28'),(118,' Love Songs',_binary ' Love Songs  is good','1988-04-29'),(119,'Tous les garçons et les filles',_binary 'Tous les garçons et les filles  is good','1988-04-30');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `genre_name` enum('Lo-Fi','Romantic','Hip-Hop','Rock') NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `genre_name` (`genre_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Lo-Fi'),(2,'Romantic'),(3,'Hip-Hop'),(4,'Rock');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_id` int NOT NULL AUTO_INCREMENT,
  `language_name` enum('English','Hindi','Korean','Spanish','French') NOT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `language_name` (`language_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (9999,'English'),(10000,'Hindi'),(10001,'Korean'),(10002,'Spanish'),(10003,'French');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mood`
--

DROP TABLE IF EXISTS `mood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mood` (
  `mood_id` int NOT NULL AUTO_INCREMENT,
  `mood_name` enum('Energetic','Anxious','Happy','Calming') NOT NULL,
  PRIMARY KEY (`mood_id`),
  UNIQUE KEY `mood_name` (`mood_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mood`
--

LOCK TABLES `mood` WRITE;
/*!40000 ALTER TABLE `mood` DISABLE KEYS */;
INSERT INTO `mood` VALUES (1,'Energetic'),(2,'Anxious'),(3,'Happy'),(4,'Calming');
/*!40000 ALTER TABLE `mood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_id` int NOT NULL AUTO_INCREMENT,
  `song_name` varchar(50) NOT NULL,
  `release_date` date DEFAULT NULL,
  `lyrics` longblob,
  `movie_or_album` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`song_id`),
  UNIQUE KEY `song_name` (`song_name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Ratta Maar','2018-05-15','','Student of the Year'),(2,'Chandigarh Mein','2016-10-10','','Good Newz'),(3,'Aal Izz Well','2016-05-02','','3 Idiots'),(4,'Zoobi Doobi','2017-02-13','','3 Idiots'),(5,'Garmi','2019-02-18','','Street Dancer'),(6,'I know it\'s over','1986-06-04','','The Queen Is Dead'),(7,'All of Me','2013-11-14','','Love in the Future'),(8,'End of the Night','1967-10-31','','The Doors (50th Anniversary Deluxe Edition)'),(9,'Counting Stars','2013-04-13','','Native'),(10,'Centuries','2014-07-30','','Centuries'),(11,'Cold Water','2016-01-20','','Cold Water'),(12,'Sorry','2016-01-20','','Sorry'),(13,'Let Me Love You','2016-01-20','','Encore'),(14,'Fake Love','2018-05-15','','BTS'),(15,'Blood Sweat & Tears','2016-10-10','','BTS'),(16,'Save Me','2016-05-02','','BTS'),(17,'Spring Day','2017-02-13','','BTS'),(18,'Make It Right','2019-02-18','','BTS'),(19,'Fire','2016-05-02','','BTS'),(20,'Despacito','2017-01-13','','Luis Fonsi Ft. Daddy Yankee'),(21,'Gasolina','2014-01-01','','Onda Latina Summer 2010'),(22,'Limbo','2010-07-21','','Limbo'),(23,'Calypso','1956-06-01','','Calypso'),(24,'Aventura','2019-10-26','','Aventura'),(25,'Bamboleo','1988-01-01','','Gipsy Kings'),(26,'La Vie En Rose By Edith Piaf','1947-01-01','','La Vie en rose'),(27,'Ne Me Quitte Pas','1959-01-01','','La Valse à Mille Temps'),(28,'Non, Je Ne Regrette Rien','1959-01-01','',' Love Songs'),(29,'Tous Les Garçons Et Les Filles','1962-01-01','','Tous les garçons et les filles');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_artist`
--

DROP TABLE IF EXISTS `song_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_artist` (
  `song_art_id` int NOT NULL AUTO_INCREMENT,
  `song_id` int NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`song_art_id`),
  KEY `song_artist_fk1` (`song_id`),
  KEY `song_artist_fk2` (`artist_id`),
  CONSTRAINT `song_artist_fk1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`),
  CONSTRAINT `song_artist_fk2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_artist`
--

LOCK TABLES `song_artist` WRITE;
/*!40000 ALTER TABLE `song_artist` DISABLE KEYS */;
INSERT INTO `song_artist` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,95),(7,7,96),(8,8,97),(9,9,98),(10,10,99),(11,11,100),(12,12,101),(13,13,102),(14,14,103),(15,15,104),(16,16,105),(17,17,106),(18,18,107),(19,19,108),(20,20,109),(21,21,110),(22,22,111),(23,23,112),(24,24,113),(25,25,114),(26,26,115),(27,27,116),(28,28,117),(29,29,118);
/*!40000 ALTER TABLE `song_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_genre`
--

DROP TABLE IF EXISTS `song_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_genre` (
  `song_genre_id` int NOT NULL AUTO_INCREMENT,
  `song_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`song_genre_id`),
  KEY `song_genre_fk1` (`song_id`),
  KEY `song_genre_fk2` (`genre_id`),
  CONSTRAINT `song_genre_fk1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `song_genre_fk2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_genre`
--

LOCK TABLES `song_genre` WRITE;
/*!40000 ALTER TABLE `song_genre` DISABLE KEYS */;
INSERT INTO `song_genre` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,2),(7,7,3),(8,8,4),(9,9,1),(10,10,2),(11,11,3),(12,12,4),(13,13,1),(14,14,2),(15,15,3),(16,16,4),(17,17,1),(18,18,2),(19,19,3),(20,20,4),(21,21,1),(22,22,2),(23,23,3),(24,24,4),(25,25,1),(26,26,2),(27,27,3),(28,28,4),(29,29,1),(30,1,2),(31,2,3),(32,3,4),(33,4,1),(34,5,2);
/*!40000 ALTER TABLE `song_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_lang`
--

DROP TABLE IF EXISTS `song_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_lang` (
  `song_lang_id` int NOT NULL AUTO_INCREMENT,
  `song_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`song_lang_id`),
  KEY `song_lang_fk1` (`song_id`),
  KEY `song_lang_fk2` (`language_id`),
  CONSTRAINT `song_lang_fk1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `song_lang_fk2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_lang`
--

LOCK TABLES `song_lang` WRITE;
/*!40000 ALTER TABLE `song_lang` DISABLE KEYS */;
INSERT INTO `song_lang` VALUES (1,1,10000),(2,2,10000),(3,3,10000),(4,4,10000),(5,5,10000),(6,6,9999),(7,7,9999),(8,8,9999),(9,9,9999),(10,10,9999),(11,11,9999),(12,12,9999),(13,13,9999),(14,14,10001),(15,15,10001),(16,16,10001),(17,17,10001),(18,18,10001),(19,19,10001),(20,20,10002),(21,21,10002),(22,22,10002),(23,23,10002),(24,24,10002),(25,25,10002),(26,26,10003),(27,27,10003),(28,28,10003),(29,29,10003),(30,20,9999),(31,5,10002);
/*!40000 ALTER TABLE `song_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song_mood`
--

DROP TABLE IF EXISTS `song_mood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_mood` (
  `song_mood_id` int NOT NULL AUTO_INCREMENT,
  `song_id` int NOT NULL,
  `mood_id` int NOT NULL,
  PRIMARY KEY (`song_mood_id`),
  KEY `song_mood_fk1` (`song_id`),
  KEY `song_mood_fk2` (`mood_id`),
  CONSTRAINT `song_mood_fk1` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `song_mood_fk2` FOREIGN KEY (`mood_id`) REFERENCES `mood` (`mood_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song_mood`
--

LOCK TABLES `song_mood` WRITE;
/*!40000 ALTER TABLE `song_mood` DISABLE KEYS */;
INSERT INTO `song_mood` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,1),(6,6,2),(7,7,3),(8,8,4),(9,9,1),(10,10,2),(11,11,3),(12,12,4),(13,13,1),(14,14,2),(15,15,3),(16,16,4),(17,17,1),(18,18,2),(19,19,3),(20,20,4),(21,21,1),(22,22,2),(23,23,3),(24,24,4),(25,25,1),(26,26,2),(27,27,3),(28,28,4),(29,29,1),(30,1,2),(31,2,3),(32,3,4),(33,4,1);
/*!40000 ALTER TABLE `song_mood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_artist_rating`
--

DROP TABLE IF EXISTS `user_artist_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_artist_rating` (
  `artist_review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `a_rating` int DEFAULT NULL,
  PRIMARY KEY (`artist_review_id`),
  KEY `user_artist_review_fk1_new3` (`user_id`),
  KEY `user_artist_review_fk2_new4` (`artist_id`),
  CONSTRAINT `user_artist_review_fk1_new3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_artist_review_fk2_new4` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_artist_rating`
--

LOCK TABLES `user_artist_rating` WRITE;
/*!40000 ALTER TABLE `user_artist_rating` DISABLE KEYS */;
INSERT INTO `user_artist_rating` VALUES (1,1,1,NULL),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,1),(7,7,7,2),(8,8,8,3),(9,9,9,4),(10,10,10,5),(11,1,11,1),(12,2,12,2),(13,3,13,3),(14,4,14,4),(15,5,15,5),(16,6,16,1),(17,7,17,2),(18,8,18,3),(19,9,19,4),(20,10,20,5),(21,1,21,1),(22,2,22,2),(23,3,23,3),(24,4,24,4),(25,5,25,5),(26,6,26,1),(27,7,27,2),(28,8,28,3),(29,9,29,4),(30,10,30,5),(31,1,31,1),(32,2,32,2),(33,3,33,3),(34,4,34,4),(35,5,35,5),(36,6,36,1),(37,7,37,2),(38,8,38,3),(39,9,39,4),(40,10,40,5),(41,1,41,1),(42,2,42,2),(43,3,43,3),(44,4,44,4),(45,5,45,5),(46,6,46,1),(47,7,47,2),(48,8,48,3),(49,9,49,4),(50,10,50,5),(51,1,51,1),(52,2,52,2),(53,3,53,3),(54,4,54,4),(55,5,55,5),(56,6,56,1),(57,7,57,2),(58,8,58,3),(59,9,59,4),(60,10,60,5),(61,1,61,1),(62,2,62,2),(63,3,63,3),(64,4,64,4),(65,5,65,5),(66,6,66,1),(67,7,67,2),(68,8,68,3),(69,9,69,4),(70,10,70,5),(71,1,71,1),(72,2,72,2),(73,3,73,3),(74,4,74,4),(75,5,75,5),(76,6,76,1),(77,7,77,2),(78,8,78,3),(79,9,79,4),(80,10,80,5),(81,1,81,1),(82,2,82,2),(83,3,83,3),(84,4,84,4),(85,5,85,5),(86,6,86,1),(87,7,87,2),(88,8,88,3),(89,9,89,4),(90,10,90,5),(91,1,91,1),(92,2,92,2),(93,3,93,3),(94,4,94,4),(95,5,95,5),(96,6,96,1),(97,7,97,2),(98,8,98,3),(99,9,99,4),(100,10,100,5),(101,1,101,1),(102,2,102,2),(103,3,103,3),(104,4,104,4),(105,5,105,5),(106,6,106,1),(107,7,107,2),(108,8,108,3),(109,9,109,4),(110,10,110,5),(111,1,111,1),(112,2,112,2),(113,3,113,3),(114,4,114,4),(115,5,115,5),(116,6,116,1),(117,7,117,2),(118,8,118,3),(119,9,119,4),(120,10,1,5),(121,1,2,NULL),(122,2,3,2),(123,3,4,3),(124,4,5,4),(125,5,6,5),(126,6,7,1),(127,7,8,2),(128,8,9,3),(129,9,10,4),(130,10,11,5),(131,1,12,1),(132,2,13,2),(133,3,14,3),(134,4,15,4),(135,5,16,5),(136,6,17,1),(137,7,18,2),(138,8,19,3),(139,9,20,4),(140,10,21,5),(141,1,22,1),(142,2,23,2),(143,3,24,3),(144,4,25,4),(145,5,26,5),(146,6,27,1),(147,7,28,2),(148,8,29,3),(149,9,30,4),(150,10,31,5),(151,1,32,1),(152,2,33,2),(153,3,34,3),(154,4,35,4),(155,5,36,5),(156,6,37,1),(157,7,38,2),(158,8,39,3),(159,9,40,4),(160,10,41,5),(161,1,42,1),(162,2,43,2),(163,3,44,3),(164,4,45,4),(165,5,46,5),(166,6,47,1),(167,7,48,2),(168,8,49,3),(169,9,50,4),(170,10,51,5),(171,1,52,1),(172,2,53,2),(173,3,54,3),(174,4,55,4),(175,5,56,5),(176,6,57,1),(177,7,58,2),(178,8,59,3),(179,9,60,4),(180,10,61,5),(181,1,62,1),(182,2,63,2),(183,3,64,3),(184,4,65,4),(185,5,66,5),(186,6,67,1),(187,7,68,2),(188,8,69,3),(189,9,70,4),(190,10,71,5),(191,1,72,1),(192,2,73,2),(193,3,74,3),(194,4,75,4),(195,5,76,5),(196,6,77,1),(197,7,78,2),(198,8,79,3),(199,9,80,4),(200,10,81,5),(201,1,82,1),(202,2,83,2),(203,3,84,3),(204,4,85,4),(205,5,86,5),(206,6,87,1),(207,7,88,2),(208,8,89,3),(209,9,90,4),(210,10,91,5),(211,1,92,1),(212,2,93,2),(213,3,94,3),(214,4,95,4),(215,5,96,5),(216,6,97,1),(217,7,98,2),(218,8,99,3),(219,9,100,4),(220,10,101,5),(221,1,102,1),(222,2,103,2),(223,3,104,3),(224,4,105,4),(225,5,106,5),(226,6,107,1),(227,7,108,2),(228,8,109,3),(229,9,110,4),(230,10,111,5),(231,1,112,1),(232,2,113,2),(233,3,114,3),(234,4,115,4),(235,5,116,5),(236,6,117,1),(237,7,118,2),(238,8,119,3),(239,9,11,4),(240,10,12,5),(241,1,13,NULL),(242,2,14,2),(243,3,15,3),(244,4,16,4),(245,5,17,5),(246,6,18,1),(247,7,19,2),(248,8,20,3),(251,1,57,10);
/*!40000 ALTER TABLE `user_artist_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_artist_review`
--

DROP TABLE IF EXISTS `user_artist_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_artist_review` (
  `artist_review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `a_review` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`artist_review_id`),
  KEY `user_artist_review_fk1` (`user_id`),
  KEY `user_artist_review_fk2` (`artist_id`),
  CONSTRAINT `user_artist_review_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_artist_review_fk2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_artist_review`
--

LOCK TABLES `user_artist_review` WRITE;
/*!40000 ALTER TABLE `user_artist_review` DISABLE KEYS */;
INSERT INTO `user_artist_review` VALUES (1,1,1,NULL),(2,2,2,'Average Singer'),(3,3,3,'Average Singer'),(4,4,4,'Average Singer'),(5,7,5,'Average Singer'),(6,8,6,'Average Singer'),(7,9,7,'Best Singer'),(8,10,8,'Best Singer'),(9,1,9,'Best Singer'),(10,2,10,'Average Singer'),(11,3,11,'Average Singer'),(12,4,12,'Average Singer'),(13,7,13,'Average Singer'),(14,8,14,'Average Singer'),(15,9,15,'Average Singer'),(16,10,16,'Best Singer'),(17,1,17,'Best Singer'),(18,2,18,'Best Singer'),(19,3,19,'Average Singer'),(20,4,20,'Average Singer'),(21,7,21,'Average Singer'),(22,8,22,'Average Singer'),(23,9,23,'Average Singer'),(24,10,24,'Average Singer'),(25,1,25,'Best Singer'),(26,2,26,'Best Singer'),(27,3,27,'Best Singer'),(28,4,28,'Average Singer'),(29,7,29,'Average Singer'),(30,8,30,'Average Singer'),(31,9,31,'Average Singer'),(32,10,32,'Average Singer'),(33,1,33,'Average Singer'),(34,2,34,'Best Singer'),(35,3,35,'Best Singer'),(36,4,36,'Best Singer'),(37,7,37,'Average Singer'),(38,8,38,'Average Singer'),(39,9,39,'Average Singer'),(40,10,40,'Average Singer'),(41,1,41,'Average Singer'),(42,2,42,'Average Singer'),(43,3,43,'Best Singer'),(44,4,44,'Best Singer'),(45,7,45,'Best Singer'),(46,8,46,'Average Singer'),(47,9,47,'Average Singer'),(48,10,48,'Average Singer'),(49,1,49,'Average Singer'),(50,2,50,'Average Singer'),(51,3,51,'Average Singer'),(52,4,52,'Best Singer'),(53,7,53,'Best Singer'),(54,8,54,'Best Singer'),(55,9,55,'Average Singer'),(56,10,56,'Average Singer'),(57,1,57,'Awesome'),(58,2,58,'Average Singer'),(59,3,59,'Average Singer'),(60,4,60,'Average Singer'),(61,7,61,'Best Singer'),(62,8,62,'Best Singer'),(63,9,63,'Best Singer'),(64,10,64,'Average Singer'),(65,1,65,'Average Singer'),(66,2,66,'Average Singer'),(67,3,67,'Average Singer'),(68,4,68,'Average Singer'),(69,7,69,'Average Singer'),(70,8,70,'Best Singer'),(71,9,71,'Best Singer'),(72,10,72,'Best Singer'),(73,1,73,'Average Singer'),(74,2,74,'Average Singer'),(75,3,75,'Average Singer'),(76,4,76,'Average Singer'),(77,7,77,'Average Singer'),(78,8,78,'Average Singer'),(79,9,79,'Best Singer'),(80,10,80,'Best Singer'),(81,1,81,'Best Singer'),(82,2,82,'Average Singer'),(83,3,83,'Average Singer'),(84,4,84,'Average Singer'),(85,7,85,'Average Singer'),(86,8,86,'Average Singer'),(87,9,87,'Average Singer'),(88,10,88,'Best Singer'),(89,1,89,'Best Singer'),(90,2,90,'Best Singer'),(91,3,91,'Average Singer'),(92,4,92,'Average Singer'),(93,7,93,'Average Singer'),(94,8,94,'Average Singer'),(95,9,95,'Average Singer'),(96,10,96,'Average Singer'),(97,1,97,'Best Singer'),(98,2,98,'Best Singer'),(99,3,99,'Best Singer'),(100,4,100,'Average Singer'),(101,7,101,'Average Singer'),(102,8,102,'Average Singer'),(103,9,103,'Average Singer'),(104,10,104,'Average Singer'),(105,1,105,'Average Singer'),(106,2,106,'Best Singer'),(107,3,107,'Best Singer'),(108,4,108,'Best Singer'),(109,7,109,'Average Singer'),(110,8,110,'Average Singer'),(111,9,111,'Average Singer'),(112,10,112,'Average Singer'),(113,1,113,'Average Singer'),(114,2,114,'Average Singer'),(115,3,115,'Best Singer'),(116,4,116,'Best Singer'),(117,7,117,'Best Singer'),(118,8,118,'Average Singer'),(119,9,119,'Average Singer'),(120,10,1,'Average Singer'),(121,1,2,NULL),(122,2,3,'Average Singer'),(123,3,4,'Average Singer'),(124,4,5,'Best Singer'),(125,7,6,'Best Singer'),(126,8,7,'Best Singer'),(127,9,8,'Average Singer'),(128,10,9,'Average Singer'),(129,1,10,'Average Singer'),(130,2,11,'Average Singer'),(131,3,12,'Average Singer'),(132,4,13,'Average Singer'),(133,7,14,'Best Singer'),(134,8,15,'Best Singer'),(135,9,16,'Best Singer'),(136,10,17,'Average Singer'),(137,1,18,'Average Singer'),(138,2,19,'Average Singer'),(139,3,20,'Average Singer'),(140,4,21,'Average Singer'),(141,7,22,'Average Singer'),(142,8,23,'Best Singer'),(143,9,24,'Best Singer'),(144,10,25,'Best Singer'),(145,1,26,'Average Singer'),(146,2,27,'Average Singer'),(147,3,28,'Average Singer'),(148,4,29,'Average Singer'),(149,7,30,'Average Singer'),(150,8,31,'Average Singer'),(151,9,32,'Best Singer'),(152,10,33,'Best Singer'),(153,1,34,'Best Singer'),(154,2,35,'Average Singer'),(155,3,36,'Average Singer'),(156,4,37,'Average Singer'),(157,7,38,'Average Singer'),(158,8,39,'Average Singer'),(159,9,40,'Average Singer'),(160,10,41,'Best Singer'),(161,1,42,'Best Singer'),(162,2,43,'Best Singer'),(163,3,44,'Average Singer'),(164,4,45,'Average Singer'),(165,7,46,'Average Singer'),(166,8,47,'Average Singer'),(167,9,48,'Average Singer'),(168,10,49,'Average Singer'),(169,1,50,'Best Singer'),(170,2,51,'Best Singer'),(171,3,52,'Best Singer'),(172,4,53,'Average Singer'),(173,7,54,'Average Singer'),(174,8,55,'Average Singer'),(175,9,56,'Average Singer'),(176,10,57,'Average Singer'),(177,1,58,'Average Singer'),(178,2,59,'Best Singer'),(179,3,60,'Best Singer'),(180,4,61,'Best Singer'),(181,7,62,'Average Singer'),(182,8,63,'Average Singer'),(183,9,64,'Average Singer'),(184,10,65,'Average Singer'),(185,1,66,'Average Singer'),(186,2,67,'Average Singer'),(187,3,68,'Best Singer'),(188,4,69,'Best Singer'),(189,7,70,'Best Singer'),(190,8,71,'Average Singer'),(191,9,72,'Average Singer'),(192,10,73,'Average Singer'),(193,1,74,'Average Singer'),(194,2,75,'Average Singer'),(195,3,76,'Average Singer'),(196,4,77,'Best Singer'),(197,7,78,'Best Singer'),(198,8,79,'Best Singer'),(199,9,80,'Average Singer'),(200,10,81,'Average Singer'),(201,1,82,'Average Singer'),(202,2,83,'Average Singer'),(203,3,84,'Average Singer'),(204,4,85,'Average Singer'),(205,7,86,'Best Singer'),(206,8,87,'Best Singer'),(207,9,88,'Best Singer'),(208,10,89,'Average Singer'),(209,1,90,'Average Singer'),(210,2,91,'Average Singer'),(211,3,92,'Average Singer'),(212,4,93,'Average Singer'),(213,7,94,'Average Singer'),(214,8,95,'Best Singer'),(215,9,96,'Best Singer'),(216,10,97,'Best Singer'),(217,1,98,'Average Singer'),(218,2,99,'Average Singer'),(219,3,100,'Average Singer'),(220,4,101,'Average Singer'),(221,7,102,'Average Singer'),(222,8,103,'Average Singer'),(223,9,104,'Best Singer'),(224,10,105,'Best Singer'),(225,1,106,'Best Singer'),(226,2,107,'Average Singer'),(227,3,108,'Average Singer'),(228,4,109,'Average Singer'),(229,7,110,'Average Singer'),(230,8,111,'Average Singer'),(231,9,112,'Average Singer'),(232,10,113,'Best Singer'),(233,1,114,'Best Singer'),(234,2,115,'Best Singer'),(235,3,116,'Average Singer'),(236,4,117,'Average Singer'),(237,7,118,'Average Singer'),(238,8,119,'Average Singer'),(239,9,1,'Average Singer'),(240,10,2,'Average Singer'),(241,1,3,'Best Singer'),(242,2,4,'Best Singer'),(243,3,5,'Best Singer'),(244,4,6,'Average Singer'),(245,7,7,'Average Singer'),(246,8,8,'Average Singer'),(247,9,9,'Average Singer'),(248,10,10,'Average Singer'),(249,1,13,NULL);
/*!40000 ALTER TABLE `user_artist_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_fav_artist`
--

DROP TABLE IF EXISTS `user_fav_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_fav_artist` (
  `ufav_artist_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`ufav_artist_id`),
  KEY `user_fav_artist_fk1` (`user_id`),
  KEY `user_fav_artist_fk2` (`artist_id`),
  CONSTRAINT `user_fav_artist_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_fav_artist_fk2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_fav_artist`
--

LOCK TABLES `user_fav_artist` WRITE;
/*!40000 ALTER TABLE `user_fav_artist` DISABLE KEYS */;
INSERT INTO `user_fav_artist` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `user_fav_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_fav_song`
--

DROP TABLE IF EXISTS `user_fav_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_fav_song` (
  `ufav_song_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  PRIMARY KEY (`ufav_song_id`),
  KEY `user_fav_song_fk1` (`user_id`),
  KEY `user_fav_song_fk2` (`song_id`),
  CONSTRAINT `user_fav_song_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_fav_song_fk2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_fav_song`
--

LOCK TABLES `user_fav_song` WRITE;
/*!40000 ALTER TABLE `user_fav_song` DISABLE KEYS */;
INSERT INTO `user_fav_song` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `user_fav_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_song_rating`
--

DROP TABLE IF EXISTS `user_song_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_song_rating` (
  `song_rating_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  `s_rating` int DEFAULT NULL,
  PRIMARY KEY (`song_rating_id`),
  KEY `user_song_review_fk_new1` (`user_id`),
  KEY `user_song_review_fk_new2` (`song_id`),
  CONSTRAINT `user_song_review_fk_new1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_song_review_fk_new2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_song_rating`
--

LOCK TABLES `user_song_rating` WRITE;
/*!40000 ALTER TABLE `user_song_rating` DISABLE KEYS */;
INSERT INTO `user_song_rating` VALUES (1,1,1,1),(2,2,2,2),(3,3,3,3),(4,4,4,4),(5,5,5,5),(6,6,6,6),(7,7,7,7),(8,8,8,8),(9,9,9,9),(10,10,10,10),(11,1,11,1),(12,2,12,2),(13,3,13,3),(14,4,14,4),(15,5,15,5),(16,6,16,6),(17,7,17,7),(18,8,18,8),(19,9,19,9),(20,10,20,10),(21,1,21,1),(22,2,22,2),(23,3,23,3),(24,4,24,4),(25,5,25,5),(26,6,26,6),(27,7,27,7),(28,8,28,8),(29,9,29,9),(30,10,1,10),(31,1,2,1),(32,2,3,2),(33,3,4,3),(34,4,5,4),(35,5,6,5),(36,6,7,6),(37,7,8,7),(38,8,9,8),(39,9,10,9),(40,10,11,10),(41,1,12,1),(42,2,13,2),(43,3,14,3),(44,4,15,4),(45,5,16,5),(46,6,17,6),(47,7,18,7),(48,8,19,8),(49,9,20,9),(50,10,21,10),(51,1,22,1),(52,2,23,2),(53,3,24,3),(54,4,25,4),(55,5,26,5),(56,6,27,6),(57,7,28,7),(58,8,29,8),(59,9,1,9),(60,10,2,10),(61,1,3,NULL),(62,1,8,10),(64,1,7,10);
/*!40000 ALTER TABLE `user_song_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_song_review`
--

DROP TABLE IF EXISTS `user_song_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_song_review` (
  `song_review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `song_id` int NOT NULL,
  `s_review` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`song_review_id`),
  KEY `user_song_review_fk1` (`user_id`),
  KEY `user_song_review_fk2` (`song_id`),
  CONSTRAINT `user_song_review_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_song_review_fk2` FOREIGN KEY (`song_id`) REFERENCES `song` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_song_review`
--

LOCK TABLES `user_song_review` WRITE;
/*!40000 ALTER TABLE `user_song_review` DISABLE KEYS */;
INSERT INTO `user_song_review` VALUES (1,1,1,'Good Song'),(2,2,2,'Good Song'),(3,3,3,'Best Song'),(4,4,4,'Best Song'),(5,5,5,'Best Song'),(6,6,6,'Best Song'),(7,7,7,'Best Song'),(8,8,8,'Best Song'),(9,9,9,'Best Song'),(10,10,10,'Best Song'),(11,1,11,'Good Song'),(12,2,12,'Good Song'),(13,3,13,'Best Song'),(14,4,14,'Best Song'),(15,5,15,'Best Song'),(16,6,16,'Best Song'),(17,7,17,'Best Song'),(18,8,18,'Best Song'),(19,9,19,'Best Song'),(20,10,20,'Best Song'),(21,1,21,'Good Song'),(22,2,22,'Good Song'),(23,3,23,'Best Song'),(24,4,24,'Best Song'),(25,5,25,'Best Song'),(26,6,26,'Best Song'),(27,7,27,'Best Song'),(28,8,28,'Best Song'),(29,9,29,'Best Song'),(30,10,1,'Best Song'),(31,1,2,'Good Song'),(32,2,3,'Good Song'),(33,3,4,'Best Song'),(34,4,5,'Best Song'),(35,5,6,'Best Song'),(36,6,7,'Best Song'),(37,7,8,'Best Song'),(38,8,9,'Best Song'),(39,9,10,'Best Song'),(40,10,11,'Best Song'),(41,1,3,'Awesooomeee'),(43,1,7,'Amazing');
/*!40000 ALTER TABLE `user_song_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `membership_status` enum('Yes','No') NOT NULL,
  `password` varchar(20) NOT NULL,
  `u_dob` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_num` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Umang','Yes','Pass1','2022-12-01','umangthakur@gmail.com','6176176171','A','Boston','MA','120201'),(2,'Jaissica','Yes','Pass1','2022-12-01','Jaissica.hora@gmail.com','6176176171','B','Boston','MA','120201'),(3,'Ritu','No','Pass1','1998-12-02','ritu@gmail.com','1234567891','C','Boston','MA','123432'),(4,'Priya','No','Pass1','1998-12-03','priya@gmail.com','1234567890','D','Boston','MA','123432'),(5,'Lee','Yes','Pass1','2022-11-01','lee@gmaiul.com','9087654321','E','Cambridge','MA','123098'),(6,'Rahul','Yes','Pass1','2021-11-01','rahul@gmail.com','1243657890','F','Albany','NY','102248'),(7,'Alex','Yes','Pass1','1998-10-01','alex@gmail.com','1246676433','G ','San Jose','CA','123575'),(8,'Brian','Yes','Pass1','1998-11-01','brain@mail.com','1234566566','H','Seattle','WA','134646'),(9,'Rio','Yes','Pass1','1998-11-01','rio@gmail.com','1234552332','I ','Albany','NY','134523'),(10,'Ram','Yes','Pass1','1996-09-09','ram@gmail.com','1345556566','J ','Boston','MA','134667');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'musicly'
--

--
-- Dumping routines for database 'musicly'
--
/*!50003 DROP PROCEDURE IF EXISTS `artistDetailsFetch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `artistDetailsFetch`(IN artist_name_param VARCHAR(50), IN user_name_param VARCHAR(50))
BEGIN
DECLARE user_id_param INT;
DECLARE artist_id_param INT;
SET user_id_param = (select user_id from users where user_name = user_name_param LIMIT 1);
SET artist_id_param = (select artist_id from artist where artist_name = artist_name_param LIMIT 1);
SELECT a.artist_name, convert(a.bio using utf8mb4) Bio,
a.a_dob, group_concat(song_name)songs, sr.a_review , sra.a_rating  FROM artist a
LEFT JOIN song_artist sa ON sa.artist_id= artist_id_param
LEFT JOIN song s ON sa.song_id= s.song_id
LEFT JOIN (select * from user_artist_review  where artist_id = artist_id_param and user_id=user_id_param  LIMIT 1) sr ON sr.artist_id = artist_id_param and sr.user_id = user_id_param
LEFT JOIN (select * from user_artist_rating  where artist_id = artist_id_param and user_id=user_id_param LIMIT 1) sra ON sra.artist_id= artist_id_param and sra.user_id = user_id_param
LEFT JOIN users u ON u.user_id=user_id_param
where a.artist_name=artist_name
and u.user_name = user_name
group by a.artist_name, convert(a.bio using utf8mb4),
a.a_dob,sr.a_review , sra.a_rating
LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `songsDetailsFetch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `songsDetailsFetch`(IN song_name VARCHAR(50),IN user_name Varchar(50))
BEGIN
DECLARE user_id_param INT;
DECLARE song_id_param INT;
SET user_id_param = (select user_id from users zz where zz.user_name = user_name);
SET song_id_param = (select song_id from song xx where xx.song_name = song_name);
SELECT s.song_name,s.release_date,convert(s.lyrics using utf8mb4) lyrics,
s.movie_or_album, a.artist_name,
l.language_name language,g.genre_name ,m.mood_name, sr.s_review, sra.s_rating FROM song s
LEFT JOIN user_song_review sr ON s.song_id= sr.song_id and sr.user_id = user_id_param
LEFT JOIN user_song_rating sra ON s.song_id= sra.song_id and sra.user_id = user_id_param
LEFT JOIN (select * from song_mood where song_id = song_id_param) sm ON s.song_id=sm.song_id
LEFT JOIN (select * from song_lang  where song_id = song_id_param) sl ON s.song_id=sl.song_id
LEFT JOIN (select * from song_genre  where song_id = song_id_param) sg ON s.song_id= sg.song_id
LEFT JOIN genre g ON g.genre_id=sg.genre_id
LEFT JOIN mood m ON m.mood_id= sm.mood_id
LEFT JOIN language l ON l.language_id=sl.language_id
LEFT JOIN song_artist sa ON sa.song_id= s.song_id
LEFT JOIN artist a ON a.artist_id= sa.artist_id
LEFT JOIN users u ON u.user_id=user_id_param
where s.song_name =  song_name
and u.user_name = user_name
 LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `songsGenreFetch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `songsGenreFetch`(IN genre_name_param VARCHAR(50))
BEGIN
DECLARE song_genre_id_param INT;
SET song_genre_id_param = (select genre_id from genre where genre_name = genre_name_param);
SELECT g.genre_name,group_concat(s.song_name)
FROM genre g
LEFT JOIN song_genre sg ON sg.genre_id=g.genre_id
LEFT JOIN (select a.song_id,a.song_name from song a, song_genre b where a.song_id = b.song_id 
and b.genre_id = song_genre_id_param LIMIT 5)
 s ON s.song_id=sg.song_id
WHERE g.genre_name= genre_name_param
group by g.genre_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `songsLanguageFetch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `songsLanguageFetch`(IN language_name_param VARCHAR(50))
BEGIN
DECLARE song_lang_id_param INT;
SET song_lang_id_param = (select language_id from language where language_name = language_name_param);

SELECT l.language_name,group_concat(s.song_name)
FROM language l
LEFT JOIN song_lang sl ON sl.language_id=l.language_id
LEFT JOIN (select a.song_id,a.song_name from song a, song_lang b where a.song_id = b.song_id 
and b.language_id = song_lang_id_param LIMIT 5)
 s ON s.song_id=sl.song_id
WHERE l.language_name= language_name_param
group by l.language_name;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `songsMoodFetch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `songsMoodFetch`(IN mood_name_param VARCHAR(50))
BEGIN
DECLARE song_mood_id_param INT;
SET song_mood_id_param = (select mood_id from mood where mood_name = mood_name_param);

SELECT m.mood_name,group_concat(s.song_name)
FROM mood m
LEFT JOIN song_mood sm ON sm.mood_id= m.mood_id
LEFT JOIN (select a.song_id,a.song_name from song a, song_mood b where a.song_id = b.song_id 
and b.mood_id = song_mood_id_param LIMIT 5)
 s ON s.song_id=sm.song_id
WHERE m.mood_name= mood_name_param
group by m.mood_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userArtistRating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userArtistRating`(IN user_name VARCHAR(50),IN artist_name VARCHAR(1000), IN a_rating_param INT)
BEGIN
DECLARE user_id_param INT;
DECLARE artist_id_param INT;
DECLARE c INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name = user_name;
SELECT a.artist_id INTO artist_id_param FROM artist a WHERE a.artist_name = artist_name;
SELECT COUNT(user_id) INTO c FROM user_artist_rating where user_id = user_id_param and
artist_id = artist_id_param;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
  if(c=0) then
INSERT INTO user_artist_rating(user_id,artist_id,a_rating)
 VALUES(user_id_param,artist_id_param,a_rating_param);
 else
 update user_artist_rating set a_rating = a_rating_param where user_id = user_id_param
 and artist_id = artist_id_param;
 end if;
  END;
  if isEmptyKey = TRUE then
   Select 'User Name, Artist Name and Rating cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userArtistRatingDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userArtistRatingDelete`(IN user_name VARCHAR(50),IN artist_name VARCHAR(1000))
BEGIN
DECLARE user_id_param INT;
DECLARE artist_id_param INT;
DECLARE c INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name = user_name;
SELECT s.artist_id INTO artist_id_param FROM artist s WHERE s.artist_name = artist_name;
SELECT COUNT(user_id) INTO c FROM user_artist_rating where user_id = user_id_param
and artist_id = artist_id_param;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
  if(c!=0) then
 -- update user_artist_rating set a_rating = null where user_id = user_id_param
   -- and artist_id = artist_id_param;
   delete from user_artist_rating where user_id = user_id_param and artist_id = artist_id_param;
 end if;
 END;
  if isEmptyKey = TRUE then
   Select 'User Name, Song Name and Rating cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userArtistReview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userArtistReview`(IN user_name VARCHAR(50),IN artist_name VARCHAR(1000),
IN a_review_param  VARCHAR(1000))
BEGIN
DECLARE user_id_param INT;
DECLARE artist_id_param INT;
DECLARE c INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name=user_name;
SELECT a.artist_id INTO artist_id_param FROM artist a WHERE a.artist_name=artist_name;
SELECT COUNT(user_id) INTO c FROM user_artist_review where user_id = user_id_param and
artist_id = artist_id_param;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
   if(c=0) then
INSERT INTO user_artist_review(user_id,artist_id,a_review)
 VALUES(user_id_param,artist_id_param,a_review_param);
 else
 update user_artist_review set a_review = a_review_param where user_id = user_id_param
 and artist_id = artist_id_param;
 end if;
   END;
  if isEmptyKey = TRUE then
   Select 'User Name, Artist Name and Review cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userArtistReviewDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userArtistReviewDelete`(IN user_name VARCHAR(50),IN artist_name VARCHAR(1000))
BEGIN
DECLARE user_id_param INT;
DECLARE artist_id_param INT;
DECLARE c INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name = user_name;
SELECT s.artist_id INTO artist_id_param FROM artist s WHERE s.artist_name = artist_name;
SELECT COUNT(user_id) INTO c FROM user_artist_review where user_id = user_id_param
and artist_id = artist_id_param;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
  if(c!=0) then
 update user_artist_review set a_review = null where user_id = user_id_param
 and artist_id = artist_id_param;
 end if;
 END;
  if isEmptyKey = TRUE then
   Select 'User Name, Song Name and Rating cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userDetailsFetch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userDetailsFetch`(IN user_name_param VARCHAR(50),IN password_param VARCHAR(20))
BEGIN
DECLARE song_id_param INT;
DECLARE artist_id_param INT;
DECLARE user_id_param INT;
set user_id_param = (select user_id from users where user_name = user_name_param
AND password = password_param LIMIT 1) ;
set song_id_param = (select coalesce(song_id,null) from user_fav_song where user_id = user_id_param LIMIT 1);
set artist_id_param = (select coalesce(artist_id,null) from user_fav_artist where user_id = user_id_param LIMIT 1) ;
SELECT u.user_name,u.membership_status, u.u_dob, u.phone_num,
 s.song_name fav_song, a.artist_name fav_artist
 FROM users u
 LEFT JOIN (select * from user_fav_song where user_id = user_id_param and song_id = song_id_param LIMIT 1)
 fs ON user_id_param = fs.user_id and song_id = song_id_param
 LEFT JOIN (select * from user_fav_artist where user_id = user_id_param and artist_id = artist_id_param LIMIT 1)
 fa ON user_id_param=fa.user_id and artist_id = artist_id_param
 LEFT JOIN (select * from song where song_id = song_id_param LIMIT 1) s ON s.song_id = song_id_param
 LEFT JOIN (select * from artist where artist_id = artist_id_param LIMIT 1) a ON a.artist_id = artist_id_param
 WHERE u.user_id = user_id_param
 and u.user_name = user_name_param
 and u.password = password_param 
 LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userFavArtist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userFavArtist`(IN user_name VARCHAR(50),IN artist_name VARCHAR(10))
BEGIN
DECLARE user_id INT;
DECLARE artist_id INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id FROM users u WHERE u.user_name=user_name;
SELECT a.artist_id INTO artist_id FROM artist a WHERE a.artist_name=artist_name;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
INSERT INTO user_fav_artist(user_id,artist_id,artist_name)
 VALUES(user_id,artist_id,artist_name);
  END;
  if isEmptyKey = TRUE then
   Select 'User Name, Artist Name cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userFavSong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userFavSong`(IN user_name VARCHAR(50),IN song_name VARCHAR(10))
BEGIN
DECLARE user_id INT;
DECLARE song_id INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id FROM users u WHERE u.user_name=user_name;
SELECT s.song_id INTO song_id FROM song s WHERE s.song_name=song_name;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
INSERT INTO user_fav_song(user_id,song_id,song_name)
 VALUES(user_id,song_id,song_name);
   END;
  if isEmptyKey = TRUE then
   Select 'User Name, Song Name cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userInfoUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userInfoUpdate`(IN user_name VARCHAR(50),IN membership_status VARCHAR(10), IN password1 VARCHAR(10),
IN u_dob DATE, IN phone_num VARCHAR(20), IN emailId VARCHAR(100),IN address VARCHAR(100),
IN city VARCHAR(100),IN state VARCHAR(100), IN postalCode VARCHAR(100))
BEGIN
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
BEGIN
DECLARE EXIT HANDLER FOR 1048
SET isEmptyKey = TRUE;
if user_name='' then
SET user_name = null;
end if;
if membership_status='' then
SET membership_status = null;
end if;
if password1='' then
SET password1 = null;
end if;
INSERT INTO users(user_name,membership_status,password,u_dob,phone_num,email, address, city, state, postal_code)
VALUES(user_name,membership_status,password1,u_dob,phone_num, emailId, address, city, state, postalCode );
END;
if isEmptyKey = TRUE then
   Select 'User name, Membership status, Password cannot be null' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userSongRating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userSongRating`(IN user_name VARCHAR(50),IN song_name VARCHAR(1000), IN s_rating_param INT)
BEGIN
DECLARE user_id_param INT;
DECLARE song_id_param INT;
DECLARE c INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name = user_name;
SELECT s.song_id INTO song_id_param FROM song s WHERE s.song_name = song_name;
SELECT COUNT(user_id) INTO c FROM user_song_rating where user_id = user_id_param
and song_id = song_id_param;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
  if(c=0) then
INSERT INTO user_song_rating(user_id,song_id,s_rating)
 VALUES(user_id_param,song_id_param,s_rating_param);
 else
 update user_song_rating set s_rating = s_rating_param where user_id = user_id_param
 and song_id = song_id_param;
 end if;
 END;
  if isEmptyKey = TRUE then
   Select 'User Name, Song Name and Rating cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userSongRatingDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userSongRatingDelete`(IN user_name VARCHAR(50),IN song_name VARCHAR(1000))
BEGIN
DECLARE user_id_param INT;
DECLARE song_id_param INT;
DECLARE c INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name = user_name;
SELECT s.song_id INTO song_id_param FROM song s WHERE s.song_name = song_name;
SELECT COUNT(user_id) INTO c FROM user_song_rating where user_id = user_id_param
and song_id = song_id_param;
BEGIN
DECLARE EXIT HANDLER FOR 1048
  SET isEmptyKey = TRUE;
  if(c!=0) then
 -- update user_song_rating set s_rating = null where user_id = user_id_param
 -- and song_id = song_id_param;
 delete from user_song_rating  where user_id = user_id_param
  and song_id = song_id_param;
 end if;
 END;
  if isEmptyKey = TRUE then
   Select 'User Name, Song Name and Rating cannot be null ' As message;
   End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userSongReview` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userSongReview`(IN user_name VARCHAR(50),IN song_name VARCHAR(1000),
 IN s_review_param VARCHAR(1000))
BEGIN
DECLARE user_id_param INT;
DECLARE song_id_param INT;
DECLARE c INT;
DECLARE isEmptyKey TINYINT DEFAULT FALSE;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name = user_name;
SELECT s.song_id INTO song_id_param FROM song s WHERE s.song_name = song_name;
SELECT count(song_id) INTO c FROM user_song_review s WHERE s.song_id = song_id_param
and user_id = user_id_param  ;
BEGIN
DECLARE EXIT HANDLER FOR 1048
SET isEmptyKey = TRUE;
if song_name = '' then
SET song_name = null;
end if;
if c=0 then
INSERT INTO user_song_review(user_id,song_id,s_review)
VALUES(user_id_param,song_id_param,s_review_param);
else
update user_song_review set s_review = s_review_param
where user_id_param = user_id and song_id_param = song_id;
end if;
END;
  if isEmptyKey = TRUE then
   Select 'User Name, Song Name and Review cannot be null ' As message;
End if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userSongReviewDelete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userSongReviewDelete`(IN user_name VARCHAR(50),IN song_name VARCHAR(1000))
BEGIN
DECLARE user_id_param INT;
DECLARE song_id_param INT;
DECLARE c INT;
SELECT u.user_id INTO user_id_param FROM users u WHERE u.user_name = user_name;
SELECT s.song_id INTO song_id_param FROM song s WHERE s.song_name = song_name;
SELECT count(song_id) INTO c FROM user_song_review s WHERE s.song_id = song_id_param
and user_id = user_id_param  ;
if c!=0 then
 update user_song_review set s_review = null where user_id_param = user_id and song_id_param = song_id;
-- delete from user_song_review where user_id_param = user_id and song_id_param = song_id;
end if;
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

-- Dump completed on 2022-12-09 16:47:46
