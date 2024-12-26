/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.6.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: treasure_hunt_db
-- ------------------------------------------------------
-- Server version	11.6.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `animeMovieCharacters`
--

DROP TABLE IF EXISTS `animeMovieCharacters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animeMovieCharacters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charname` varchar(255) DEFAULT NULL,
  `charorigin` varchar(255) DEFAULT NULL,
  `spoilers` varchar(255) DEFAULT NULL,
  `sus_table_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sus_table_id` (`sus_table_id`),
  CONSTRAINT `animeMovieCharacters_ibfk_1` FOREIGN KEY (`sus_table_id`) REFERENCES `superUnsuspiciousTable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animeMovieCharacters`
--

LOCK TABLES `animeMovieCharacters` WRITE;
/*!40000 ALTER TABLE `animeMovieCharacters` DISABLE KEYS */;
INSERT INTO `animeMovieCharacters` VALUES
(1,'Eren Yeager','Attack on Titan','93c222306aac1473c4f9240c1d0a5f07c0d1adf885364ad3a147c03ef942c136',1),
(2,'Tobirama Senju','Naruto','ed704a10f66853b3337eba68d4d47d7b',2),
(3,'Aragorn','The Lord of The Rings','Xw0wQ7sg9mVrMfLwLHIguiVWGXT+KtGv0scBJFLbsqsomJobXvyueozMQ8w9is/FXwsYDGbnsguTx8FZcyVnpg==',3),
(4,'Luffy','One Piece','mqbt7R3BbuSXPxqn/fTmFw==',5),
(5,'Ichigo Kurosaki','Bleach','LxqggkMjtvHry80OT5kIIUHA4BC6kd0dR9BNeIpXT05kmBNabb/ZsC8esG0o+JoQaCIYDu0sgsvV3RVxu1dknw==',4),
(6,'Jack Sparrow','Pirates of the Caribbean','EQZYY4wohk6/X9d2RrXPCo3tm2OaqFDPvVTPmhc24vZ91NIoE4pIVecfBD/PR76CZNbrXih0IjVvNBsLEWCkxA==',4),
(7,'Levi Ackerman','Attack on Titan','bd85qWDuCwsQ6LB94mhRhFCrHUIDxbyX5yhSYEoYgkcyZVisFJ7gEiwY48vHX+tuFj9rMgAb8KNNLczU/A2ZlA==',3),
(8,'Gojo Satoru','Jujutsu Kaisen','9cbecefa5ee503e68fd9affa0d7178eee1f0bc9910b373ae9c10f1554c141776',1),
(9,'Severus Snape','Harry Potter','34fe56d277dbd4cd3173c01447fda57c',2),
(10,'R2D2','Star Wars','07q/rPYbsfDHIclp0xh+51LSnGakxlNq73DN+2NRJbI=',5);
/*!40000 ALTER TABLE `animeMovieCharacters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `athletes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `teamOrSport` varchar(255) DEFAULT NULL,
  `gossip` varchar(255) DEFAULT NULL,
  `sus_table_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sus_table_id` (`sus_table_id`),
  CONSTRAINT `athletes_ibfk_1` FOREIGN KEY (`sus_table_id`) REFERENCES `superUnsuspiciousTable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES
(1,'Josh Hart','New York Knicks','Starting SG for the Knicks',1),
(2,'Sergio Koke','Aris FC','SKG',2),
(3,'Simone Biles','Gymnastics','Olympic Gold Medalist',3),
(4,'Lionel Messi','Barcelona','GOAT',4),
(5,'Sabrina Ionescu','New York Liberty','Brought a championship to NY',5),
(6,'Giorgos Karagounis','Greek National Team','Radiohead Song is the key',5),
(7,'Calvin Johnson','American Football','Second best personality that attended Georgia Tech',1),
(8,'Roger Federer','Tennis','Pure class',3),
(9,'Michael Jordan','Basketball','Another GOAT!',4),
(10,'Bo Nix','American Football','BOLIEVER',5),
(11,'Djibril Cisse','Panathinaikos','Oe oe oe oe Djibril Cisse',1);
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superUnsuspiciousTable`
--

DROP TABLE IF EXISTS `superUnsuspiciousTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `superUnsuspiciousTable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `algo` varchar(255) DEFAULT NULL,
  `pkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superUnsuspiciousTable`
--

LOCK TABLES `superUnsuspiciousTable` WRITE;
/*!40000 ALTER TABLE `superUnsuspiciousTable` DISABLE KEYS */;
INSERT INTO `superUnsuspiciousTable` VALUES
(1,'SHA256','A classic hashing algorithm'),
(2,'MD5','Not what you are looking for'),
(3,'RSA515bits','Rivest (also has the best book of algorithms)'),
(4,'RSAECB515bits','Shamir Adleman'),
(5,'AES128NoP','Greek Athlete');
/*!40000 ALTER TABLE `superUnsuspiciousTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totallyCalmingMusic`
--

DROP TABLE IF EXISTS `totallyCalmingMusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totallyCalmingMusic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songartist` varchar(255) DEFAULT NULL,
  `songname` varchar(255) DEFAULT NULL,
  `closer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totallyCalmingMusic`
--

LOCK TABLES `totallyCalmingMusic` WRITE;
/*!40000 ALTER TABLE `totallyCalmingMusic` DISABLE KEYS */;
INSERT INTO `totallyCalmingMusic` VALUES
(1,'Metallica','Blackened','...And Justice For All'),
(2,'Iron Maiden','Blood Brothers','Brave New World'),
(3,'Black Sabbath','Black Sabbath','Black Sabbath'),
(4,'Bring Me The Horizon','Darkside','latest album'),
(5,'Radiohead','Paranoid Android','OK Computer'),
(6,'Heaven Shall Burn','Behind A Wall Of Silence','Whatever It May Take'),
(7,'Green Day','Homecoming','American Idiot'),
(8,'Salty','RedHat','GOTO animeMovieCharacters 4'),
(9,'A Day To Remember','Bad Vibrations','Bad Vibrations'),
(10,'Dream Theater','Dance Of Eternity','Release 2025'),
(11,'Backstreet Boys','The Call','Guilty Pleasure'),
(12,'Depeche Mode','Enjoy The Silence','or Behind A Wall Of Silence'),
(13,'10371','Papadakis Konstantinos Fotios','db61f4a861a596423536d41b7136afea91dbd0d41caf594396ffa61172993543');
/*!40000 ALTER TABLE `totallyCalmingMusic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-12-26  2:33:05
