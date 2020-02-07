-- MySQL dump 10.13  Distrib 5.7.21, for osx10.10 (x86_64)
--
-- Host: localhost    Database: ojs_master
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `access_keys`
--

DROP TABLE IF EXISTS `access_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_keys` (
  `access_key_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context` varchar(40) NOT NULL,
  `key_hash` varchar(40) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `expiry_date` datetime NOT NULL,
  PRIMARY KEY (`access_key_id`),
  KEY `access_keys_hash` (`key_hash`,`user_id`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_keys`
--

LOCK TABLES `access_keys` WRITE;
/*!40000 ALTER TABLE `access_keys` DISABLE KEYS */;
INSERT INTO `access_keys` VALUES (1,'1','01e28f34fa81d9a7dbf139007edf3f91',9,1,'2019-04-25 21:01:28'),(2,'1','5da6762be5a48b165137e4a14c413d0b',10,2,'2019-04-25 21:01:30'),(3,'1','1bc1d5abdceb22b915410736626e51d1',8,3,'2019-04-25 21:02:30'),(4,'1','775a996d0e12ee86ebfd9ba08e3a17de',10,4,'2019-04-25 21:02:33'),(5,'1','f80679b91c33bbfbb119794ef03bac05',7,5,'2019-04-25 21:03:20'),(6,'1','d84a2b74569e4fef6ac31db45f551889',10,6,'2019-04-25 21:03:22'),(7,'1','04c1a1e3b0ce6cbfde6ab5234b4179fb',8,7,'2019-04-25 21:04:06'),(8,'1','9f99b982fcac1e4bd6ff5569c2a835bd',9,8,'2019-04-25 21:04:08'),(9,'1','735677f692f8dea22fb08305cfcbc85c',10,9,'2019-04-25 21:04:11'),(10,'1','a2edf9f36075641ea3e7d89f1ba6df2f',7,10,'2019-04-25 21:05:18'),(11,'1','0b627527b4620f465f3b8048dbd8fd1f',10,11,'2019-04-25 21:05:20'),(12,'1','acbf6ae5be28916eae80640d469b94cc',7,12,'2019-04-25 21:06:14'),(13,'1','c2e0bcd7d8b3c626a6860fc4d62ac54b',9,13,'2019-04-25 21:06:17'),(14,'1','33ede0affc933addeedb62b82fc2953a',10,14,'2019-04-25 21:06:19'),(15,'1','da59575c7101b7d5e0c0beddb4a047bd',9,15,'2019-04-25 21:07:13'),(16,'1','594fa25d90ddf940da00dc31b960dd93',10,16,'2019-04-25 21:07:15'),(17,'1','2a317be986afa03ae370c0faa45c2bae',7,17,'2019-04-25 21:08:31'),(18,'1','985828130f7e52710944a71150d70664',8,18,'2019-04-25 21:08:33'),(19,'1','1f9506f1550c6e9d8896b90e5307558f',7,19,'2019-04-25 21:09:05'),(20,'1','03ddd45a87652cdf105fcc5187537ead',9,20,'2019-04-25 21:09:08'),(21,'1','ad6faad512f6ee9cf3095f332106e2f0',10,21,'2019-04-25 21:09:10'),(22,'1','29420281a8d109e22b8a3a6cc4a7b3c9',8,22,'2019-04-25 21:10:47'),(23,'1','0dd24c80692239e8fc2b29318fe0ba41',9,23,'2019-04-25 21:10:51'),(24,'1','34a39def26d32cdf0e05b1213c7f1e3c',7,24,'2019-04-25 21:12:28'),(25,'1','cf142251b395cc3311c4b3b140217f99',8,25,'2019-04-25 21:12:31'),(26,'1','6c28dbdd19c4005ec7b5e9303984db9f',8,26,'2019-04-25 21:14:02'),(27,'1','e279cc47b84767b2b0fc00fbd051a7dc',9,27,'2019-04-25 21:14:06');
/*!40000 ALTER TABLE `access_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_settings`
--

DROP TABLE IF EXISTS `announcement_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_settings` (
  `announcement_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `announcement_settings_pkey` (`announcement_id`,`locale`,`setting_name`),
  KEY `announcement_settings_announcement_id` (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_settings`
--

LOCK TABLES `announcement_settings` WRITE;
/*!40000 ALTER TABLE `announcement_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_type_settings`
--

DROP TABLE IF EXISTS `announcement_type_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `announcement_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  KEY `announcement_type_settings_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_type_settings`
--

LOCK TABLES `announcement_type_settings` WRITE;
/*!40000 ALTER TABLE `announcement_type_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_type_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_types`
--

DROP TABLE IF EXISTS `announcement_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement_types` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` smallint(6) DEFAULT NULL,
  `assoc_id` bigint(20) NOT NULL,
  PRIMARY KEY (`type_id`),
  KEY `announcement_types_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_types`
--

LOCK TABLES `announcement_types` WRITE;
/*!40000 ALTER TABLE `announcement_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `announcement_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` smallint(6) DEFAULT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `date_expire` datetime DEFAULT NULL,
  `date_posted` datetime NOT NULL,
  PRIMARY KEY (`announcement_id`),
  KEY `announcements_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_sources` (
  `auth_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `plugin` varchar(32) NOT NULL,
  `auth_default` tinyint(4) NOT NULL DEFAULT '0',
  `settings` text,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_sources`
--

LOCK TABLES `auth_sources` WRITE;
/*!40000 ALTER TABLE `auth_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_settings`
--

DROP TABLE IF EXISTS `author_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author_settings` (
  `author_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `author_settings_pkey` (`author_id`,`locale`,`setting_name`),
  KEY `author_settings_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_settings`
--

LOCK TABLES `author_settings` WRITE;
/*!40000 ALTER TABLE `author_settings` DISABLE KEYS */;
INSERT INTO `author_settings` VALUES (1,'','country','IT'),(1,'en_US','affiliation','University of Bologna'),(1,'en_US','familyName','Corino'),(1,'en_US','givenName','Carlo'),(2,'','country','CA'),(2,'en_US','affiliation','University of Windsor'),(2,'en_US','familyName','Kwantes'),(2,'en_US','givenName','Catherine'),(3,'','country','CA'),(3,'en_US','affiliation','University of Alberta'),(3,'en_US','familyName','Montgomerie'),(3,'en_US','givenName','Craig'),(4,'','country','CA'),(4,'','orcid',''),(4,'','url',''),(4,'en_US','affiliation','University of Victoria'),(4,'en_US','biography',''),(4,'en_US','familyName','Irvine'),(4,'en_US','givenName','Mark'),(4,'en_US','preferredPublicName',''),(5,'','country','EG'),(5,'en_US','affiliation','Alexandria University'),(5,'en_US','familyName','Diouf'),(5,'en_US','givenName','Diaga'),(6,'','country','CA'),(6,'en_US','affiliation','University of Toronto'),(6,'en_US','familyName','Phillips'),(6,'en_US','givenName','Dana'),(7,'','country','IE'),(7,'en_US','affiliation','University College Cork'),(7,'en_US','familyName','Sokoloff'),(7,'en_US','givenName','Domatilia'),(8,'','country','US'),(8,'en_US','affiliation','Indiana University'),(8,'en_US','familyName','Ostrom'),(8,'en_US','givenName','Elinor'),(9,'','country','US'),(9,'','orcid',''),(9,'','url',''),(9,'en_US','affiliation','Indiana University'),(9,'en_US','biography',''),(9,'en_US','familyName','van Laerhoven'),(9,'en_US','givenName','Frank'),(9,'en_US','preferredPublicName',''),(10,'','country','IT'),(10,'en_US','affiliation','University of Rome'),(10,'en_US','familyName','Paglieri'),(10,'en_US','givenName','Fabio'),(11,'','country','US'),(11,'en_US','affiliation','Colorado State University'),(11,'en_US','familyName','Forcht'),(11,'en_US','givenName','June'),(12,'','country','NO'),(12,'en_US','affiliation','University of Oslo'),(12,'en_US','familyName','Vemer'),(12,'en_US','givenName','Brian'),(13,'','country','US'),(13,'en_US','affiliation','Chapman University'),(13,'en_US','familyName','Bauman'),(13,'en_US','givenName','Karen'),(14,'','country','PT'),(14,'en_US','affiliation','Universidade Aberta Lisboa'),(14,'en_US','familyName','Cerpa'),(14,'en_US','givenName','Roy'),(15,'','country','GB'),(15,'en_US','affiliation','Keele University'),(15,'en_US','familyName','Pierson'),(15,'en_US','givenName','Narciso'),(16,'','country','IN'),(16,'en_US','affiliation','Bangalore University'),(16,'en_US','familyName','Yagna'),(16,'en_US','givenName','Raj'),(17,'','country','ZA'),(17,'en_US','affiliation','University of Cape Town'),(17,'en_US','familyName','Mwandenga'),(17,'en_US','givenName','John'),(18,'','country','DK'),(18,'en_US','affiliation','Aalborg University'),(18,'en_US','familyName','Novak'),(18,'en_US','givenName','John'),(19,'','country','US'),(19,'en_US','affiliation','Stanford University'),(19,'en_US','familyName','Al-Khafaji'),(19,'en_US','givenName','Karim'),(20,'','country','US'),(20,'','orcid',''),(20,'','url',''),(20,'en_US','affiliation','Stanford University'),(20,'en_US','biography',''),(20,'en_US','familyName','Morse'),(20,'en_US','givenName','Margaret'),(20,'en_US','preferredPublicName',''),(21,'','country','AU'),(21,'en_US','affiliation','Australian National University'),(21,'en_US','familyName','Christopher'),(21,'en_US','givenName','Leo'),(22,'','country','ZA'),(22,'en_US','affiliation','University of Cape Town'),(22,'en_US','familyName','Kumiega'),(22,'en_US','givenName','Lise'),(23,'','country','GB'),(23,'en_US','affiliation','University of Wolverhampton'),(23,'en_US','familyName','Daniel'),(23,'en_US','givenName','Patricia'),(24,'','country','KE'),(24,'en_US','affiliation','University of Nairobi'),(24,'en_US','familyName','Baiyewu'),(24,'en_US','givenName','Rana'),(25,'','country','ES'),(25,'en_US','affiliation','Barcelona University'),(25,'en_US','familyName','Rossi'),(25,'en_US','givenName','Rosanna'),(26,'','country','IR'),(26,'en_US','affiliation','University of Tehran'),(26,'en_US','familyName','Karbasizaed'),(26,'en_US','givenName','Vajiheh'),(27,'','country','CA'),(27,'en_US','affiliation','University of Windsor'),(27,'en_US','familyName','Williamson'),(27,'en_US','givenName','Valerie'),(28,'','country','US'),(28,'en_US','affiliation','CUNY'),(28,'en_US','familyName','Woods'),(28,'en_US','givenName','Zita'),(29,'','country','GB'),(29,'en_US','affiliation','Keele University'),(29,'en_US','familyName','Pierson'),(29,'en_US','givenName','Narciso'),(30,'','country','US'),(30,'en_US','affiliation','Chapman University'),(30,'en_US','familyName','Bauman'),(30,'en_US','givenName','Karen'),(31,'','country','US'),(31,'en_US','affiliation','Chapman University'),(31,'en_US','familyName','Bauman'),(31,'en_US','givenName','Karen'),(32,'','country','US'),(32,'en_US','affiliation','Chapman University'),(32,'en_US','familyName','Bauman'),(32,'en_US','givenName','Karen'),(33,'','country','NG'),(33,'','orcid',''),(33,'','url',''),(33,'en_US','affiliation',''),(33,'en_US','biography',''),(33,'en_US','familyName','BAR'),(33,'en_US','givenName','FOO'),(33,'en_US','preferredPublicName','');
/*!40000 ALTER TABLE `author_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `author_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `seq` double NOT NULL DEFAULT '0',
  `email` varchar(90) NOT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  `include_in_browse` tinyint(4) NOT NULL DEFAULT '1',
  `publication_id` bigint(20) NOT NULL,
  PRIMARY KEY (`author_id`),
  KEY `authors_publication_id` (`publication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,1,'ccorino@mailinator.com',14,1,1),(2,1,'ckwantes@mailinator.com',14,1,2),(3,1,'cmontgomerie@mailinator.com',14,1,3),(4,2,'mirvine@mailinator.com',14,1,3),(5,1,'ddiouf@mailinator.com',14,1,4),(6,1,'dphillips@mailinator.com',14,1,5),(7,1,'dsokoloff@mailinator.com',14,1,6),(8,1,'eostrom@mailinator.com',14,1,7),(9,2,'fvanlaerhoven@mailinator.com',14,1,7),(10,1,'fpaglieri@mailinator.com',14,1,8),(11,1,'jforcht@mailinator.com',14,1,9),(12,1,'bvemer@mailinator.com',14,1,10),(13,1,'kbauman@mailinator.com',14,1,11),(14,1,'rcerpa@mailinator.com',14,1,12),(15,1,'npierson@mailinator.com',14,1,13),(16,1,'ryagna@mailinator.com',14,1,14),(17,1,'jmwandenga@mailinator.com',14,1,15),(18,1,'jnovak@mailinator.com',14,1,16),(19,1,'kalkhafaji@mailinator.com',14,1,17),(20,2,'mmorse@mailinator.com',14,1,17),(21,1,'lchristopher@mailinator.com',14,1,18),(22,1,'lkumiega@mailinator.com',14,1,19),(23,1,'pdaniel@mailinator.com',14,1,20),(24,1,'rbaiyewu@mailinator.com',14,1,21),(25,1,'rrossi@mailinator.com',14,1,22),(26,1,'vkarbasizaed@mailinator.com',14,1,23),(27,1,'vwilliamson@mailinator.com',14,1,24),(28,1,'zwoods@mailinator.com',14,1,25),(29,1,'npierson@mailinator.com',14,1,33),(30,1,'kbauman@mailinator.com',14,1,34),(31,1,'kbauman@mailinator.com',14,1,35),(32,1,'kbauman@mailinator.com',14,1,36),(33,1,'jforcht@mailinator.com',14,1,79),(34,1,'jforcht@mailinator.com',14,1,80),(35,1,'zwoods@mailinator.com',14,1,81);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `image` text,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_path` (`context_id`,`path`),
  KEY `category_context_id` (`context_id`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_settings`
--

DROP TABLE IF EXISTS `category_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_settings` (
  `category_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `category_settings_pkey` (`category_id`,`locale`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_settings`
--

LOCK TABLES `category_settings` WRITE;
/*!40000 ALTER TABLE `category_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citation_settings`
--

DROP TABLE IF EXISTS `citation_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citation_settings` (
  `citation_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `citation_settings_pkey` (`citation_id`,`locale`,`setting_name`),
  KEY `citation_settings_citation_id` (`citation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citation_settings`
--

LOCK TABLES `citation_settings` WRITE;
/*!40000 ALTER TABLE `citation_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `citation_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citations`
--

DROP TABLE IF EXISTS `citations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citations` (
  `citation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `raw_citation` text,
  `seq` bigint(20) NOT NULL DEFAULT '0',
  `publication_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`citation_id`),
  UNIQUE KEY `citations_publication_seq` (`publication_id`,`seq`),
  KEY `citations_publication` (`publication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citations`
--

LOCK TABLES `citations` WRITE;
/*!40000 ALTER TABLE `citations` DISABLE KEYS */;
/*!40000 ALTER TABLE `citations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completed_payments`
--

DROP TABLE IF EXISTS `completed_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completed_payments` (
  `completed_payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `payment_type` bigint(20) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `amount` double NOT NULL,
  `currency_code_alpha` varchar(3) DEFAULT NULL,
  `payment_method_plugin_name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`completed_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completed_payments`
--

LOCK TABLES `completed_payments` WRITE;
/*!40000 ALTER TABLE `completed_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `completed_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocab_entries`
--

DROP TABLE IF EXISTS `controlled_vocab_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controlled_vocab_entries` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `controlled_vocab_id` bigint(20) NOT NULL,
  `seq` double DEFAULT NULL,
  PRIMARY KEY (`controlled_vocab_entry_id`),
  KEY `controlled_vocab_entries_cv_id` (`controlled_vocab_id`,`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocab_entries`
--

LOCK TABLES `controlled_vocab_entries` WRITE;
/*!40000 ALTER TABLE `controlled_vocab_entries` DISABLE KEYS */;
INSERT INTO `controlled_vocab_entries` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,3,1),(16,3,2),(17,3,3),(18,4,1),(19,4,2),(20,4,3),(21,4,4),(22,4,5),(23,4,6),(24,4,7),(25,5,1),(26,5,2),(27,5,3),(28,6,1),(29,6,2),(30,6,3),(31,6,4),(32,6,5),(33,6,6),(34,6,7),(35,6,8),(36,6,9),(37,6,10),(38,6,11),(39,6,12),(40,7,1),(41,7,2),(42,25,1),(43,25,2),(44,36,1),(45,36,2),(46,55,1),(47,55,2),(48,55,3),(49,55,4),(50,55,5),(51,55,6),(52,55,7),(53,104,1),(54,104,2),(55,127,1),(56,127,2),(57,127,3),(58,180,1),(59,199,1),(60,199,2),(61,199,3),(62,199,4),(63,210,1),(64,210,2),(65,229,1),(66,252,1),(67,252,2),(68,252,3),(69,252,4),(70,252,5),(71,252,6),(72,252,7),(73,252,8),(74,252,9),(75,252,10),(76,282,1),(77,282,2),(78,312,1),(79,312,2),(80,312,3);
/*!40000 ALTER TABLE `controlled_vocab_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocab_entry_settings`
--

DROP TABLE IF EXISTS `controlled_vocab_entry_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controlled_vocab_entry_settings` (
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `c_v_e_s_pkey` (`controlled_vocab_entry_id`,`locale`,`setting_name`),
  KEY `c_v_e_s_entry_id` (`controlled_vocab_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocab_entry_settings`
--

LOCK TABLES `controlled_vocab_entry_settings` WRITE;
/*!40000 ALTER TABLE `controlled_vocab_entry_settings` DISABLE KEYS */;
INSERT INTO `controlled_vocab_entry_settings` VALUES (1,'','name','journal','string'),(2,'','name','issue','string'),(3,'','name','article','string'),(4,'','name','proceeding','string'),(5,'','name','conference','string'),(6,'','name','preprint','string'),(7,'','name','unknown','string'),(8,'','name','book','string'),(9,'','name','bookitem','string'),(10,'','name','proceeding','string'),(11,'','name','conference','string'),(12,'','name','report','string'),(13,'','name','document','string'),(14,'','name','unknown','string'),(15,'','name','personal','string'),(16,'','name','corporate','string'),(17,'','name','conference','string'),(18,'','description','Author','string'),(18,'','name','aut','string'),(19,'','description','Contributor','string'),(19,'','name','ctb','string'),(20,'','description','Editor','string'),(20,'','name','edt','string'),(21,'','description','Illustrator','string'),(21,'','name','ill','string'),(22,'','description','Photographer','string'),(22,'','name','pht','string'),(23,'','description','Sponsor','string'),(23,'','name','spn','string'),(24,'','description','Translator','string'),(24,'','name','trl','string'),(25,'','name','multimedia','string'),(26,'','name','still image','string'),(27,'','name','text','string'),(28,'','name','article','string'),(29,'','name','book','string'),(30,'','name','conference publication','string'),(31,'','name','issue','string'),(32,'','name','journal','string'),(33,'','name','newspaper','string'),(34,'','name','picture','string'),(35,'','name','review','string'),(36,'','name','periodical','string'),(37,'','name','series','string'),(38,'','name','thesis','string'),(39,'','name','web site','string'),(40,'','name','electronic','string'),(41,'','name','print','string'),(42,'en_US','submissionKeyword','pigs','string'),(43,'en_US','submissionKeyword','food security','string'),(44,'en_US','submissionKeyword','employees','string'),(45,'en_US','submissionKeyword','survey','string'),(46,'en_US','submissionKeyword','Integrating Technology','string'),(47,'en_US','submissionKeyword','Computer Skills','string'),(48,'en_US','submissionKeyword','Survey','string'),(49,'en_US','submissionKeyword','Alberta','string'),(50,'en_US','submissionKeyword','National','string'),(51,'en_US','submissionKeyword','Provincial','string'),(52,'en_US','submissionKeyword','Professional Development','string'),(53,'en_US','submissionKeyword','education','string'),(54,'en_US','submissionKeyword','citizenship','string'),(55,'en_US','submissionKeyword','Common pool resource','string'),(56,'en_US','submissionKeyword','common property','string'),(57,'en_US','submissionKeyword','intellectual developments','string'),(58,'en_US','submissionKeyword','water','string'),(59,'en_US','submissionKeyword','Development','string'),(60,'en_US','submissionKeyword','engineering education','string'),(61,'en_US','submissionKeyword','service learning','string'),(62,'en_US','submissionKeyword','sustainability','string'),(63,'en_US','submissionKeyword','pigs','string'),(64,'en_US','submissionKeyword','food security','string'),(65,'en_US','submissionKeyword','water','string'),(66,'en_US','submissionKeyword','21st Century','string'),(67,'en_US','submissionKeyword','Diversity','string'),(68,'en_US','submissionKeyword','Multilingual','string'),(69,'en_US','submissionKeyword','Multiethnic','string'),(70,'en_US','submissionKeyword','Participatory Pedagogy','string'),(71,'en_US','submissionKeyword','Language','string'),(72,'en_US','submissionKeyword','Culture','string'),(73,'en_US','submissionKeyword','Gender','string'),(74,'en_US','submissionKeyword','Egalitarianism','string'),(75,'en_US','submissionKeyword','Social Transformation','string'),(76,'en_US','submissionKeyword','cattle','string'),(77,'en_US','submissionKeyword','food security','string'),(78,'en_US','submissionKeyword','Self-Organization','string'),(79,'en_US','submissionKeyword','Multi-Level Institutions','string'),(80,'en_US','submissionKeyword','Goverance','string');
/*!40000 ALTER TABLE `controlled_vocab_entry_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controlled_vocabs`
--

DROP TABLE IF EXISTS `controlled_vocabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controlled_vocabs` (
  `controlled_vocab_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `symbolic` varchar(64) NOT NULL,
  `assoc_type` bigint(20) NOT NULL DEFAULT '0',
  `assoc_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`controlled_vocab_id`),
  UNIQUE KEY `controlled_vocab_symbolic` (`symbolic`,`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27019 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controlled_vocabs`
--

LOCK TABLES `controlled_vocabs` WRITE;
/*!40000 ALTER TABLE `controlled_vocabs` DISABLE KEYS */;
INSERT INTO `controlled_vocabs` VALUES (8,'interest',0,0),(6,'mods34-genre-marcgt',0,0),(4,'mods34-name-role-roleTerms-marcrelator',0,0),(3,'mods34-name-types',0,0),(7,'mods34-physicalDescription-form-marcform',0,0),(5,'mods34-typeOfResource',0,0),(2,'openurl10-book-genres',0,0),(1,'openurl10-journal-genres',0,0),(27,'submissionAgency',1048588,1),(38,'submissionAgency',1048588,2),(57,'submissionAgency',1048588,3),(68,'submissionAgency',1048588,4),(87,'submissionAgency',1048588,5),(106,'submissionAgency',1048588,6),(129,'submissionAgency',1048588,7),(140,'submissionAgency',1048588,8),(331,'submissionAgency',1048588,9),(876,'submissionAgency',1048588,10),(891,'submissionAgency',1048588,11),(906,'submissionAgency',1048588,12),(921,'submissionAgency',1048588,13),(936,'submissionAgency',1048588,14),(159,'submissionAgency',1048588,15),(182,'submissionAgency',1048588,16),(201,'submissionAgency',1048588,17),(212,'submissionAgency',1048588,18),(231,'submissionAgency',1048588,19),(254,'submissionAgency',1048588,20),(265,'submissionAgency',1048588,21),(284,'submissionAgency',1048588,22),(295,'submissionAgency',1048588,23),(314,'submissionAgency',1048588,24),(325,'submissionAgency',1048588,25),(611,'submissionAgency',1048588,26),(606,'submissionAgency',1048588,27),(601,'submissionAgency',1048588,28),(596,'submissionAgency',1048588,29),(591,'submissionAgency',1048588,30),(451,'submissionAgency',1048588,32),(1883,'submissionAgency',1048588,33),(2493,'submissionAgency',1048588,34),(4633,'submissionAgency',1048588,35),(5613,'submissionAgency',1048588,36),(13243,'submissionAgency',1048588,37),(14293,'submissionAgency',1048588,38),(14418,'submissionAgency',1048588,39),(14478,'submissionAgency',1048588,40),(14538,'submissionAgency',1048588,41),(14598,'submissionAgency',1048588,42),(14658,'submissionAgency',1048588,43),(14718,'submissionAgency',1048588,44),(14723,'submissionAgency',1048588,45),(14728,'submissionAgency',1048588,46),(14733,'submissionAgency',1048588,47),(14738,'submissionAgency',1048588,48),(14753,'submissionAgency',1048588,49),(14813,'submissionAgency',1048588,50),(14828,'submissionAgency',1048588,51),(14938,'submissionAgency',1048588,52),(14953,'submissionAgency',1048588,53),(15013,'submissionAgency',1048588,54),(15028,'submissionAgency',1048588,55),(15088,'submissionAgency',1048588,56),(15103,'submissionAgency',1048588,57),(15163,'submissionAgency',1048588,58),(15178,'submissionAgency',1048588,59),(15238,'submissionAgency',1048588,60),(15253,'submissionAgency',1048588,61),(15313,'submissionAgency',1048588,62),(15328,'submissionAgency',1048588,63),(15398,'submissionAgency',1048588,64),(15413,'submissionAgency',1048588,65),(15483,'submissionAgency',1048588,66),(15498,'submissionAgency',1048588,67),(15598,'submissionAgency',1048588,68),(15613,'submissionAgency',1048588,69),(15713,'submissionAgency',1048588,70),(15728,'submissionAgency',1048588,71),(15828,'submissionAgency',1048588,72),(15843,'submissionAgency',1048588,73),(15943,'submissionAgency',1048588,74),(15958,'submissionAgency',1048588,75),(20088,'submissionAgency',1048588,76),(20103,'submissionAgency',1048588,77),(20253,'submissionAgency',1048588,78),(20308,'submissionAgency',1048588,79),(21688,'submissionAgency',1048588,80),(26498,'submissionAgency',1048588,81),(26,'submissionDiscipline',1048588,1),(37,'submissionDiscipline',1048588,2),(56,'submissionDiscipline',1048588,3),(67,'submissionDiscipline',1048588,4),(86,'submissionDiscipline',1048588,5),(105,'submissionDiscipline',1048588,6),(128,'submissionDiscipline',1048588,7),(139,'submissionDiscipline',1048588,8),(329,'submissionDiscipline',1048588,9),(874,'submissionDiscipline',1048588,10),(889,'submissionDiscipline',1048588,11),(904,'submissionDiscipline',1048588,12),(919,'submissionDiscipline',1048588,13),(934,'submissionDiscipline',1048588,14),(158,'submissionDiscipline',1048588,15),(181,'submissionDiscipline',1048588,16),(200,'submissionDiscipline',1048588,17),(211,'submissionDiscipline',1048588,18),(230,'submissionDiscipline',1048588,19),(253,'submissionDiscipline',1048588,20),(264,'submissionDiscipline',1048588,21),(283,'submissionDiscipline',1048588,22),(294,'submissionDiscipline',1048588,23),(313,'submissionDiscipline',1048588,24),(324,'submissionDiscipline',1048588,25),(609,'submissionDiscipline',1048588,26),(604,'submissionDiscipline',1048588,27),(599,'submissionDiscipline',1048588,28),(594,'submissionDiscipline',1048588,29),(589,'submissionDiscipline',1048588,30),(449,'submissionDiscipline',1048588,32),(1881,'submissionDiscipline',1048588,33),(2491,'submissionDiscipline',1048588,34),(4631,'submissionDiscipline',1048588,35),(5611,'submissionDiscipline',1048588,36),(13241,'submissionDiscipline',1048588,37),(14291,'submissionDiscipline',1048588,38),(14416,'submissionDiscipline',1048588,39),(14476,'submissionDiscipline',1048588,40),(14536,'submissionDiscipline',1048588,41),(14596,'submissionDiscipline',1048588,42),(14656,'submissionDiscipline',1048588,43),(14716,'submissionDiscipline',1048588,44),(14721,'submissionDiscipline',1048588,45),(14726,'submissionDiscipline',1048588,46),(14731,'submissionDiscipline',1048588,47),(14736,'submissionDiscipline',1048588,48),(14751,'submissionDiscipline',1048588,49),(14811,'submissionDiscipline',1048588,50),(14826,'submissionDiscipline',1048588,51),(14936,'submissionDiscipline',1048588,52),(14951,'submissionDiscipline',1048588,53),(15011,'submissionDiscipline',1048588,54),(15026,'submissionDiscipline',1048588,55),(15086,'submissionDiscipline',1048588,56),(15101,'submissionDiscipline',1048588,57),(15161,'submissionDiscipline',1048588,58),(15176,'submissionDiscipline',1048588,59),(15236,'submissionDiscipline',1048588,60),(15251,'submissionDiscipline',1048588,61),(15311,'submissionDiscipline',1048588,62),(15326,'submissionDiscipline',1048588,63),(15396,'submissionDiscipline',1048588,64),(15411,'submissionDiscipline',1048588,65),(15481,'submissionDiscipline',1048588,66),(15496,'submissionDiscipline',1048588,67),(15596,'submissionDiscipline',1048588,68),(15611,'submissionDiscipline',1048588,69),(15711,'submissionDiscipline',1048588,70),(15726,'submissionDiscipline',1048588,71),(15826,'submissionDiscipline',1048588,72),(15841,'submissionDiscipline',1048588,73),(15941,'submissionDiscipline',1048588,74),(15956,'submissionDiscipline',1048588,75),(20086,'submissionDiscipline',1048588,76),(20101,'submissionDiscipline',1048588,77),(20251,'submissionDiscipline',1048588,78),(20306,'submissionDiscipline',1048588,79),(21686,'submissionDiscipline',1048588,80),(26496,'submissionDiscipline',1048588,81),(25,'submissionKeyword',1048588,1),(36,'submissionKeyword',1048588,2),(55,'submissionKeyword',1048588,3),(66,'submissionKeyword',1048588,4),(85,'submissionKeyword',1048588,5),(104,'submissionKeyword',1048588,6),(127,'submissionKeyword',1048588,7),(138,'submissionKeyword',1048588,8),(327,'submissionKeyword',1048588,9),(872,'submissionKeyword',1048588,10),(887,'submissionKeyword',1048588,11),(902,'submissionKeyword',1048588,12),(917,'submissionKeyword',1048588,13),(932,'submissionKeyword',1048588,14),(157,'submissionKeyword',1048588,15),(180,'submissionKeyword',1048588,16),(199,'submissionKeyword',1048588,17),(210,'submissionKeyword',1048588,18),(229,'submissionKeyword',1048588,19),(252,'submissionKeyword',1048588,20),(263,'submissionKeyword',1048588,21),(282,'submissionKeyword',1048588,22),(293,'submissionKeyword',1048588,23),(312,'submissionKeyword',1048588,24),(323,'submissionKeyword',1048588,25),(607,'submissionKeyword',1048588,26),(602,'submissionKeyword',1048588,27),(597,'submissionKeyword',1048588,28),(592,'submissionKeyword',1048588,29),(587,'submissionKeyword',1048588,30),(447,'submissionKeyword',1048588,32),(1879,'submissionKeyword',1048588,33),(2489,'submissionKeyword',1048588,34),(4629,'submissionKeyword',1048588,35),(5609,'submissionKeyword',1048588,36),(13239,'submissionKeyword',1048588,37),(14289,'submissionKeyword',1048588,38),(14414,'submissionKeyword',1048588,39),(14474,'submissionKeyword',1048588,40),(14534,'submissionKeyword',1048588,41),(14594,'submissionKeyword',1048588,42),(14654,'submissionKeyword',1048588,43),(14714,'submissionKeyword',1048588,44),(14719,'submissionKeyword',1048588,45),(14724,'submissionKeyword',1048588,46),(14729,'submissionKeyword',1048588,47),(14734,'submissionKeyword',1048588,48),(14749,'submissionKeyword',1048588,49),(14809,'submissionKeyword',1048588,50),(14824,'submissionKeyword',1048588,51),(14934,'submissionKeyword',1048588,52),(14949,'submissionKeyword',1048588,53),(15009,'submissionKeyword',1048588,54),(15024,'submissionKeyword',1048588,55),(15084,'submissionKeyword',1048588,56),(15099,'submissionKeyword',1048588,57),(15159,'submissionKeyword',1048588,58),(15174,'submissionKeyword',1048588,59),(15234,'submissionKeyword',1048588,60),(15249,'submissionKeyword',1048588,61),(15309,'submissionKeyword',1048588,62),(15324,'submissionKeyword',1048588,63),(15394,'submissionKeyword',1048588,64),(15409,'submissionKeyword',1048588,65),(15479,'submissionKeyword',1048588,66),(15494,'submissionKeyword',1048588,67),(15594,'submissionKeyword',1048588,68),(15609,'submissionKeyword',1048588,69),(15709,'submissionKeyword',1048588,70),(15724,'submissionKeyword',1048588,71),(15824,'submissionKeyword',1048588,72),(15839,'submissionKeyword',1048588,73),(15939,'submissionKeyword',1048588,74),(15954,'submissionKeyword',1048588,75),(20084,'submissionKeyword',1048588,76),(20099,'submissionKeyword',1048588,77),(20249,'submissionKeyword',1048588,78),(20304,'submissionKeyword',1048588,79),(21684,'submissionKeyword',1048588,80),(26494,'submissionKeyword',1048588,81),(28,'submissionLanguage',1048588,1),(39,'submissionLanguage',1048588,2),(58,'submissionLanguage',1048588,3),(69,'submissionLanguage',1048588,4),(88,'submissionLanguage',1048588,5),(107,'submissionLanguage',1048588,6),(130,'submissionLanguage',1048588,7),(141,'submissionLanguage',1048588,8),(330,'submissionLanguage',1048588,9),(875,'submissionLanguage',1048588,10),(890,'submissionLanguage',1048588,11),(905,'submissionLanguage',1048588,12),(920,'submissionLanguage',1048588,13),(935,'submissionLanguage',1048588,14),(160,'submissionLanguage',1048588,15),(183,'submissionLanguage',1048588,16),(202,'submissionLanguage',1048588,17),(213,'submissionLanguage',1048588,18),(232,'submissionLanguage',1048588,19),(255,'submissionLanguage',1048588,20),(266,'submissionLanguage',1048588,21),(285,'submissionLanguage',1048588,22),(296,'submissionLanguage',1048588,23),(315,'submissionLanguage',1048588,24),(326,'submissionLanguage',1048588,25),(610,'submissionLanguage',1048588,26),(605,'submissionLanguage',1048588,27),(600,'submissionLanguage',1048588,28),(595,'submissionLanguage',1048588,29),(590,'submissionLanguage',1048588,30),(450,'submissionLanguage',1048588,32),(1882,'submissionLanguage',1048588,33),(2492,'submissionLanguage',1048588,34),(4632,'submissionLanguage',1048588,35),(5612,'submissionLanguage',1048588,36),(13242,'submissionLanguage',1048588,37),(14292,'submissionLanguage',1048588,38),(14417,'submissionLanguage',1048588,39),(14477,'submissionLanguage',1048588,40),(14537,'submissionLanguage',1048588,41),(14597,'submissionLanguage',1048588,42),(14657,'submissionLanguage',1048588,43),(14717,'submissionLanguage',1048588,44),(14722,'submissionLanguage',1048588,45),(14727,'submissionLanguage',1048588,46),(14732,'submissionLanguage',1048588,47),(14737,'submissionLanguage',1048588,48),(14752,'submissionLanguage',1048588,49),(14812,'submissionLanguage',1048588,50),(14827,'submissionLanguage',1048588,51),(14937,'submissionLanguage',1048588,52),(14952,'submissionLanguage',1048588,53),(15012,'submissionLanguage',1048588,54),(15027,'submissionLanguage',1048588,55),(15087,'submissionLanguage',1048588,56),(15102,'submissionLanguage',1048588,57),(15162,'submissionLanguage',1048588,58),(15177,'submissionLanguage',1048588,59),(15237,'submissionLanguage',1048588,60),(15252,'submissionLanguage',1048588,61),(15312,'submissionLanguage',1048588,62),(15327,'submissionLanguage',1048588,63),(15397,'submissionLanguage',1048588,64),(15412,'submissionLanguage',1048588,65),(15482,'submissionLanguage',1048588,66),(15497,'submissionLanguage',1048588,67),(15597,'submissionLanguage',1048588,68),(15612,'submissionLanguage',1048588,69),(15712,'submissionLanguage',1048588,70),(15727,'submissionLanguage',1048588,71),(15827,'submissionLanguage',1048588,72),(15842,'submissionLanguage',1048588,73),(15942,'submissionLanguage',1048588,74),(15957,'submissionLanguage',1048588,75),(20087,'submissionLanguage',1048588,76),(20102,'submissionLanguage',1048588,77),(20252,'submissionLanguage',1048588,78),(20307,'submissionLanguage',1048588,79),(21687,'submissionLanguage',1048588,80),(26497,'submissionLanguage',1048588,81),(24,'submissionSubject',1048588,1),(35,'submissionSubject',1048588,2),(54,'submissionSubject',1048588,3),(65,'submissionSubject',1048588,4),(84,'submissionSubject',1048588,5),(103,'submissionSubject',1048588,6),(126,'submissionSubject',1048588,7),(137,'submissionSubject',1048588,8),(328,'submissionSubject',1048588,9),(873,'submissionSubject',1048588,10),(888,'submissionSubject',1048588,11),(903,'submissionSubject',1048588,12),(918,'submissionSubject',1048588,13),(933,'submissionSubject',1048588,14),(156,'submissionSubject',1048588,15),(179,'submissionSubject',1048588,16),(198,'submissionSubject',1048588,17),(209,'submissionSubject',1048588,18),(228,'submissionSubject',1048588,19),(251,'submissionSubject',1048588,20),(262,'submissionSubject',1048588,21),(281,'submissionSubject',1048588,22),(292,'submissionSubject',1048588,23),(311,'submissionSubject',1048588,24),(322,'submissionSubject',1048588,25),(608,'submissionSubject',1048588,26),(603,'submissionSubject',1048588,27),(598,'submissionSubject',1048588,28),(593,'submissionSubject',1048588,29),(588,'submissionSubject',1048588,30),(448,'submissionSubject',1048588,32),(1880,'submissionSubject',1048588,33),(2490,'submissionSubject',1048588,34),(4630,'submissionSubject',1048588,35),(5610,'submissionSubject',1048588,36),(13240,'submissionSubject',1048588,37),(14290,'submissionSubject',1048588,38),(14415,'submissionSubject',1048588,39),(14475,'submissionSubject',1048588,40),(14535,'submissionSubject',1048588,41),(14595,'submissionSubject',1048588,42),(14655,'submissionSubject',1048588,43),(14715,'submissionSubject',1048588,44),(14720,'submissionSubject',1048588,45),(14725,'submissionSubject',1048588,46),(14730,'submissionSubject',1048588,47),(14735,'submissionSubject',1048588,48),(14750,'submissionSubject',1048588,49),(14810,'submissionSubject',1048588,50),(14825,'submissionSubject',1048588,51),(14935,'submissionSubject',1048588,52),(14950,'submissionSubject',1048588,53),(15010,'submissionSubject',1048588,54),(15025,'submissionSubject',1048588,55),(15085,'submissionSubject',1048588,56),(15100,'submissionSubject',1048588,57),(15160,'submissionSubject',1048588,58),(15175,'submissionSubject',1048588,59),(15235,'submissionSubject',1048588,60),(15250,'submissionSubject',1048588,61),(15310,'submissionSubject',1048588,62),(15325,'submissionSubject',1048588,63),(15395,'submissionSubject',1048588,64),(15410,'submissionSubject',1048588,65),(15480,'submissionSubject',1048588,66),(15495,'submissionSubject',1048588,67),(15595,'submissionSubject',1048588,68),(15610,'submissionSubject',1048588,69),(15710,'submissionSubject',1048588,70),(15725,'submissionSubject',1048588,71),(15825,'submissionSubject',1048588,72),(15840,'submissionSubject',1048588,73),(15940,'submissionSubject',1048588,74),(15955,'submissionSubject',1048588,75),(20085,'submissionSubject',1048588,76),(20100,'submissionSubject',1048588,77),(20250,'submissionSubject',1048588,78),(20305,'submissionSubject',1048588,79),(21685,'submissionSubject',1048588,80),(26495,'submissionSubject',1048588,81);
/*!40000 ALTER TABLE `controlled_vocabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_issue_orders`
--

DROP TABLE IF EXISTS `custom_issue_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_issue_orders` (
  `issue_id` bigint(20) NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `seq` double NOT NULL DEFAULT '0',
  UNIQUE KEY `custom_issue_orders_pkey` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_issue_orders`
--

LOCK TABLES `custom_issue_orders` WRITE;
/*!40000 ALTER TABLE `custom_issue_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_issue_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_section_orders`
--

DROP TABLE IF EXISTS `custom_section_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_section_orders` (
  `issue_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `seq` double NOT NULL DEFAULT '0',
  UNIQUE KEY `custom_section_orders_pkey` (`issue_id`,`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_section_orders`
--

LOCK TABLES `custom_section_orders` WRITE;
/*!40000 ALTER TABLE `custom_section_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_section_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstone_oai_set_objects`
--

DROP TABLE IF EXISTS `data_object_tombstone_oai_set_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_object_tombstone_oai_set_objects` (
  `object_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tombstone_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  PRIMARY KEY (`object_id`),
  KEY `data_object_tombstone_oai_set_objects_tombstone_id` (`tombstone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstone_oai_set_objects`
--

LOCK TABLES `data_object_tombstone_oai_set_objects` WRITE;
/*!40000 ALTER TABLE `data_object_tombstone_oai_set_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstone_oai_set_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstone_settings`
--

DROP TABLE IF EXISTS `data_object_tombstone_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_object_tombstone_settings` (
  `tombstone_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `data_object_tombstone_settings_pkey` (`tombstone_id`,`locale`,`setting_name`),
  KEY `data_object_tombstone_settings_tombstone_id` (`tombstone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstone_settings`
--

LOCK TABLES `data_object_tombstone_settings` WRITE;
/*!40000 ALTER TABLE `data_object_tombstone_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstone_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_object_tombstones`
--

DROP TABLE IF EXISTS `data_object_tombstones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_object_tombstones` (
  `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_object_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`tombstone_id`),
  KEY `data_object_tombstones_data_object_id` (`data_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_object_tombstones`
--

LOCK TABLES `data_object_tombstones` WRITE;
/*!40000 ALTER TABLE `data_object_tombstones` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_object_tombstones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_point_settings`
--

DROP TABLE IF EXISTS `deposit_point_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposit_point_settings` (
  `deposit_point_id` bigint(20) NOT NULL,
  `locale` varchar(5) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `deposit_point_settings_pkey` (`deposit_point_id`,`locale`,`setting_name`),
  KEY `deposit_point_settings_deposit_point_id` (`deposit_point_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_point_settings`
--

LOCK TABLES `deposit_point_settings` WRITE;
/*!40000 ALTER TABLE `deposit_point_settings` DISABLE KEYS */;
INSERT INTO `deposit_point_settings` VALUES (1,'en_US','name','SELFSAME 8004','string');
/*!40000 ALTER TABLE `deposit_point_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_points`
--

DROP TABLE IF EXISTS `deposit_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposit_points` (
  `deposit_point_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `url` varchar(2047) NOT NULL,
  `seq` double NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `sword_username` varchar(2047) NOT NULL,
  `sword_password` varchar(2047) NOT NULL,
  `sword_apikey` varchar(2047) NOT NULL,
  PRIMARY KEY (`deposit_point_id`),
  KEY `deposit_points_context_id` (`context_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_points`
--

LOCK TABLES `deposit_points` WRITE;
/*!40000 ALTER TABLE `deposit_points` DISABLE KEYS */;
INSERT INTO `deposit_points` VALUES (1,1,'http://127.0.0.1:8004/index.php/publicknowledge/gateway/plugin/swordserver/servicedocument',1,4,'admin','admin','');
/*!40000 ALTER TABLE `deposit_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edit_decisions`
--

DROP TABLE IF EXISTS `edit_decisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edit_decisions` (
  `edit_decision_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) DEFAULT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` tinyint(4) NOT NULL,
  `editor_id` bigint(20) NOT NULL,
  `decision` tinyint(4) NOT NULL,
  `date_decided` datetime NOT NULL,
  PRIMARY KEY (`edit_decision_id`),
  KEY `edit_decisions_submission_id` (`submission_id`),
  KEY `edit_decisions_editor_id` (`editor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edit_decisions`
--

LOCK TABLES `edit_decisions` WRITE;
/*!40000 ALTER TABLE `edit_decisions` DISABLE KEYS */;
INSERT INTO `edit_decisions` VALUES (1,1,0,1,0,3,8,'2019-02-28 21:00:38'),(2,1,1,3,1,6,11,'2019-02-28 21:00:50'),(3,2,0,1,0,3,8,'2019-02-28 21:01:24'),(4,2,2,3,1,3,1,'2019-02-28 21:01:32'),(5,4,0,1,0,3,8,'2019-02-28 21:02:27'),(6,4,3,3,1,3,1,'2019-02-28 21:02:35'),(7,4,0,4,0,3,7,'2019-02-28 21:02:41'),(8,5,0,1,0,3,8,'2019-02-28 21:03:16'),(9,5,4,3,1,3,1,'2019-02-28 21:03:24'),(10,5,0,4,0,3,7,'2019-02-28 21:03:31'),(11,6,0,1,0,3,8,'2019-02-28 21:04:03'),(12,8,0,1,0,3,8,'2019-02-28 21:05:14'),(13,8,6,3,1,3,1,'2019-02-28 21:05:22'),(14,8,0,4,0,3,7,'2019-02-28 21:05:29'),(15,15,0,1,0,3,8,'2019-02-28 21:06:11'),(16,15,7,3,1,3,1,'2019-02-28 21:06:22'),(17,15,0,4,0,3,7,'2019-02-28 21:06:28'),(18,16,0,1,0,3,8,'2019-02-28 21:07:09'),(19,18,0,1,0,3,8,'2019-02-28 21:08:27'),(20,19,0,1,0,3,8,'2019-02-28 21:09:01'),(21,19,10,3,1,3,2,'2019-02-28 21:09:51'),(22,21,0,1,0,3,8,'2019-02-28 21:10:42'),(23,21,11,3,1,3,1,'2019-02-28 21:10:56'),(24,21,0,4,0,3,7,'2019-02-28 21:11:04'),(25,23,0,1,0,3,8,'2019-02-28 21:12:24'),(26,23,12,3,1,3,1,'2019-02-28 21:12:33'),(27,23,0,4,0,3,7,'2019-02-28 21:12:42'),(28,24,0,1,0,3,9,'2019-02-28 21:13:29'),(29,25,0,1,0,3,8,'2019-02-28 21:13:58'),(30,25,13,3,1,3,1,'2019-02-28 21:14:08'),(31,11,0,1,0,1,8,'2020-01-31 15:03:34');
/*!40000 ALTER TABLE `edit_decisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log`
--

DROP TABLE IF EXISTS `email_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `sender_id` bigint(20) NOT NULL,
  `date_sent` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `from_address` varchar(255) DEFAULT NULL,
  `recipients` text,
  `cc_recipients` text,
  `bcc_recipients` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  PRIMARY KEY (`log_id`),
  KEY `email_log_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log`
--

LOCK TABLES `email_log` WRITE;
/*!40000 ALTER TABLE `email_log` DISABLE KEYS */;
INSERT INTO `email_log` VALUES (1,1048585,1,17,'2019-02-28 21:00:30',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Carlo Corino\" <ccorino@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Carlo Corino:<br />\n<br />\nThank you for submitting the manuscript, &quot;The influence of lactation on the quantity and quality of cashmere production&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/1\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/1</a><br />\nUsername: ccorino<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(2,1048585,1,6,'2019-02-28 21:00:50',805306372,'\"Minoti Inoue\" <minoue@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>',NULL,NULL,'[PK] Editor Recommendation','<p>Daniel Barnes, David Buskins, Stephanie Berardo:<br><br>The recommendation regarding the submission to Journal of Public Knowledge, \"The influence of lactation on the quantity and quality of cashmere production\" is: Accept Submission<br><br>Minoti Inoue<br>Kyoto University<br>minoue@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(3,1048585,2,18,'2019-02-28 21:01:16',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Catherine Kwantes\" <ckwantes@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Catherine Kwantes:<br />\n<br />\nThank you for submitting the manuscript, &quot;The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/2\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/2</a><br />\nUsername: ckwantes<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(4,1048585,2,3,'2019-02-28 21:01:28',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Aisla McCrae\" <amccrae@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Aisla McCrae:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=2&reviewId=1&key=7bVBAf5U\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=2&reviewId=1&key=7bVBAf5U</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence\"<br><br></p>\r\n<p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(5,1048585,2,3,'2019-02-28 21:01:30',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=2&reviewId=2&key=xxd5jSeM\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=2&reviewId=2&key=xxd5jSeM</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence\"<br><br></p>\r\n<p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(6,1048585,2,3,'2019-02-28 21:01:33',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Catherine Kwantes\" <ckwantes@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Catherine Kwantes:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(7,1048585,3,19,'2019-02-28 21:01:59',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Craig Montgomerie\" <cmontgomerie@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Craig Montgomerie:<br />\n<br />\nThank you for submitting the manuscript, &quot;Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/3\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/3</a><br />\nUsername: cmontgomerie<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(8,1048585,3,19,'2019-02-28 21:01:59',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Mark Irvine\" <mirvine@mailinator.com>',NULL,NULL,'[PK] Submission Acknowledgement','Hello,<br />\n<br />\nCraig Montgomerie has submitted the manuscript, &quot;Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice&quot; to Journal of Public Knowledge. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(9,1048585,4,20,'2019-02-28 21:02:19',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Diaga Diouf\" <ddiouf@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Diaga Diouf:<br />\n<br />\nThank you for submitting the manuscript, &quot;Genetic transformation of forest trees&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/4\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/4</a><br />\nUsername: ddiouf<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(10,1048585,4,3,'2019-02-28 21:02:30',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Paul Hudson\" <phudson@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Paul Hudson:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Genetic transformation of forest trees,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=4&reviewId=3&key=z2FiH76L\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=4&reviewId=3&key=z2FiH76L</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Genetic transformation of forest trees\"<br><br></p>\r\n<p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(11,1048585,4,3,'2019-02-28 21:02:33',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Genetic transformation of forest trees,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=4&reviewId=4&key=x2csScER\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=4&reviewId=4&key=x2csScER</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Genetic transformation of forest trees\"<br><br></p>\r\n<p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(12,1048585,4,3,'2019-02-28 21:02:35',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Diaga Diouf\" <ddiouf@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Diaga Diouf:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Genetic transformation of forest trees\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(13,1048585,4,3,'2019-02-28 21:02:41',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Diaga Diouf\" <ddiouf@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Diaga Diouf:<br><br>The editing of your submission, \"Genetic transformation of forest trees,\" is complete. We are now sending it to production.<br><br>Submission URL: <a class=\"submissionUrl-style-class\" href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/4\">http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/4</a><br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(14,1048585,5,21,'2019-02-28 21:03:08',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Dana Phillips\" <dphillips@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Dana Phillips:<br />\n<br />\nThank you for submitting the manuscript, &quot;Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/5\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/5</a><br />\nUsername: dphillips<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(15,1048585,5,3,'2019-02-28 21:03:20',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Julie Janssen\" <jjanssen@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Julie Janssen:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=5&reviewId=5&key=6e6ifq4u\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=5&reviewId=5&key=6e6ifq4u</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement\"<br><br></p>\r\n<p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(16,1048585,5,3,'2019-02-28 21:03:22',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=5&reviewId=6&key=DiFrA97M\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=5&reviewId=6&key=DiFrA97M</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement\"<br><br></p>\r\n<p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(17,1048585,5,3,'2019-02-28 21:03:24',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Dana Phillips\" <dphillips@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Dana Phillips:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(18,1048585,5,3,'2019-02-28 21:03:31',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Dana Phillips\" <dphillips@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Dana Phillips:<br><br>The editing of your submission, \"Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement,\" is complete. We are now sending it to production.<br><br>Submission URL: <a class=\"submissionUrl-style-class\" href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/5\">http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/5</a><br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(19,1048585,6,22,'2019-02-28 21:03:55',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Domatilia Sokoloff\" <dsokoloff@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Domatilia Sokoloff:<br />\n<br />\nThank you for submitting the manuscript, &quot;Developing efficacy beliefs in the classroom&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/6\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/6</a><br />\nUsername: dsokoloff<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(20,1048585,6,3,'2019-02-28 21:04:06',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Paul Hudson\" <phudson@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Paul Hudson:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Developing efficacy beliefs in the classroom,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=6&reviewId=7&key=Yutp52f8\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=6&reviewId=7&key=Yutp52f8</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Developing efficacy beliefs in the classroom\"<br><br></p>\r\n<p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(21,1048585,6,3,'2019-02-28 21:04:08',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Aisla McCrae\" <amccrae@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Aisla McCrae:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Developing efficacy beliefs in the classroom,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=6&reviewId=8&key=f5i2Q2UY\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=6&reviewId=8&key=f5i2Q2UY</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Developing efficacy beliefs in the classroom\"<br><br></p>\r\n<p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(22,1048585,6,3,'2019-02-28 21:04:11',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Developing efficacy beliefs in the classroom,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=6&reviewId=9&key=zYabT54w\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=6&reviewId=9&key=zYabT54w</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Developing efficacy beliefs in the classroom\"<br><br></p>\r\n<p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(23,1048585,6,8,'2019-02-28 21:04:16',1073741829,'\"Paul Hudson\" <phudson@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>',NULL,NULL,'[PK] Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Developing efficacy beliefs in the classroom,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2019-03-28, if not before.<br />\n<br />\nPaul Hudson<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(24,1048585,7,23,'2019-02-28 21:04:43',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Elinor Ostrom\" <eostrom@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Elinor Ostrom:<br />\n<br />\nThank you for submitting the manuscript, &quot;Traditions and Trends in the Study of the Commons&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/7\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/7</a><br />\nUsername: eostrom<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(25,1048585,7,23,'2019-02-28 21:04:43',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Frank van Laerhoven\" <fvanlaerhoven@mailinator.com>',NULL,NULL,'[PK] Submission Acknowledgement','Hello,<br />\n<br />\nElinor Ostrom has submitted the manuscript, &quot;Traditions and Trends in the Study of the Commons&quot; to Journal of Public Knowledge. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(26,1048585,8,24,'2019-02-28 21:05:06',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Fabio Paglieri\" <fpaglieri@mailinator.com>',NULL,'minoue@mailinator.com','[PK] Submission Acknowledgement','Fabio Paglieri:<br />\n<br />\nThank you for submitting the manuscript, &quot;Hansen & Pinto: Reason Reclaimed&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/8\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/8</a><br />\nUsername: fpaglieri<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(27,1048585,8,3,'2019-02-28 21:05:18',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Julie Janssen\" <jjanssen@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Julie Janssen:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Hansen &amp; Pinto: Reason Reclaimed,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=8&reviewId=10&key=EEw4NuL8\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=8&reviewId=10&key=EEw4NuL8</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Hansen &amp; Pinto: Reason Reclaimed\"<br><br></p>\r\n<p>None.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(28,1048585,8,3,'2019-02-28 21:05:20',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Hansen &amp; Pinto: Reason Reclaimed,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=8&reviewId=11&key=a5eV6MXJ\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=8&reviewId=11&key=a5eV6MXJ</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Hansen &amp; Pinto: Reason Reclaimed\"<br><br></p>\r\n<p>None.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(29,1048585,8,3,'2019-02-28 21:05:22',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Fabio Paglieri\" <fpaglieri@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Fabio Paglieri:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Hansen &amp; Pinto: Reason Reclaimed\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(30,1048585,8,3,'2019-02-28 21:05:29',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Fabio Paglieri\" <fpaglieri@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Fabio Paglieri:<br><br>The editing of your submission, \"Hansen &amp; Pinto: Reason Reclaimed,\" is complete. We are now sending it to production.<br><br>Submission URL: <a class=\"submissionUrl-style-class\" href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/8\">http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/8</a><br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(31,1048585,15,25,'2019-02-28 21:06:03',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"John Mwandenga\" <jmwandenga@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','John Mwandenga:<br />\n<br />\nThank you for submitting the manuscript, &quot;Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/15\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/15</a><br />\nUsername: jmwandenga<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(32,1048585,15,3,'2019-02-28 21:06:14',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Julie Janssen\" <jjanssen@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Julie Janssen:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=15&reviewId=12&key=d27ah4uq\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=15&reviewId=12&key=d27ah4uq</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence\"<br><br></p>\r\n<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(33,1048585,15,3,'2019-02-28 21:06:17',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Aisla McCrae\" <amccrae@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Aisla McCrae:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=15&reviewId=13&key=3V8A88Ut\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=15&reviewId=13&key=3V8A88Ut</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence\"<br><br></p>\r\n<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(34,1048585,15,3,'2019-02-28 21:06:19',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=15&reviewId=14&key=x7BMGBeS\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=15&reviewId=14&key=x7BMGBeS</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence\"<br><br></p>\r\n<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(35,1048585,15,3,'2019-02-28 21:06:22',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"John Mwandenga\" <jmwandenga@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>John Mwandenga:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(36,1048585,15,3,'2019-02-28 21:06:28',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"John Mwandenga\" <jmwandenga@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>John Mwandenga:<br><br>The editing of your submission, \"Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence,\" is complete. We are now sending it to production.<br><br>Submission URL: <a class=\"submissionUrl-style-class\" href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/15\">http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/15</a><br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(37,1048585,16,26,'2019-02-28 21:07:01',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"John Novak\" <jnovak@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','John Novak:<br />\n<br />\nThank you for submitting the manuscript, &quot;Condensing Water Availability Models to Focus on Specific Water Management Systems&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/16\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/16</a><br />\nUsername: jnovak<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(38,1048585,16,3,'2019-02-28 21:07:13',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Aisla McCrae\" <amccrae@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Aisla McCrae:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Condensing Water Availability Models to Focus on Specific Water Management Systems,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=16&reviewId=15&key=b8EA6tH4\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=16&reviewId=15&key=b8EA6tH4</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Condensing Water Availability Models to Focus on Specific Water Management Systems\"<br><br></p>\r\n<p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(39,1048585,16,3,'2019-02-28 21:07:15',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Condensing Water Availability Models to Focus on Specific Water Management Systems,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=16&reviewId=16&key=3mkU3KKR\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=16&reviewId=16&key=3mkU3KKR</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Condensing Water Availability Models to Focus on Specific Water Management Systems\"<br><br></p>\r\n<p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(40,1048585,16,9,'2019-02-28 21:07:21',1073741829,'\"Aisla McCrae\" <amccrae@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>',NULL,NULL,'[PK] Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Condensing Water Availability Models to Focus on Specific Water Management Systems,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2019-03-28, if not before.<br />\n<br />\nAisla McCrae<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(41,1048585,16,10,'2019-02-28 21:07:31',1073741829,'\"Adela Gallego\" <agallego@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>',NULL,NULL,'[PK] Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Condensing Water Availability Models to Focus on Specific Water Management Systems,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2019-03-28, if not before.<br />\n<br />\nAdela Gallego<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(42,1048585,17,27,'2019-02-28 21:07:58',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Karim Al-Khafaji\" <kalkhafaji@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Karim Al-Khafaji:<br />\n<br />\nThank you for submitting the manuscript, &quot;Learning Sustainable Design through Service&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/17\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/17</a><br />\nUsername: kalkhafaji<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(43,1048585,17,27,'2019-02-28 21:07:58',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Margaret Morse\" <mmorse@mailinator.com>',NULL,NULL,'[PK] Submission Acknowledgement','Hello,<br />\n<br />\nKarim Al-Khafaji has submitted the manuscript, &quot;Learning Sustainable Design through Service&quot; to Journal of Public Knowledge. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(44,1048585,18,28,'2019-02-28 21:08:19',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Leo Christopher\" <lchristopher@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Leo Christopher:<br />\n<br />\nThank you for submitting the manuscript, &quot;Sodium butyrate improves growth performance of weaned piglets during the first period after weaning&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/18\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/18</a><br />\nUsername: lchristopher<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(45,1048585,18,3,'2019-02-28 21:08:31',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Julie Janssen\" <jjanssen@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Julie Janssen:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Sodium butyrate improves growth performance of weaned piglets during the first period after weaning,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=18&reviewId=17&key=ahtqC6wm\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=18&reviewId=17&key=ahtqC6wm</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Sodium butyrate improves growth performance of weaned piglets during the first period after weaning\"<br><br></p>\r\n<p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P&lt;0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(46,1048585,18,3,'2019-02-28 21:08:34',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Paul Hudson\" <phudson@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Paul Hudson:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Sodium butyrate improves growth performance of weaned piglets during the first period after weaning,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=18&reviewId=18&key=pPN729KN\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=18&reviewId=18&key=pPN729KN</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Sodium butyrate improves growth performance of weaned piglets during the first period after weaning\"<br><br></p>\r\n<p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P&lt;0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(47,1048585,19,29,'2019-02-28 21:08:53',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Lise Kumiega\" <lkumiega@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Lise Kumiega:<br />\n<br />\nThank you for submitting the manuscript, &quot;Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/19\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/19</a><br />\nUsername: lkumiega<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(48,1048585,19,3,'2019-02-28 21:09:05',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Julie Janssen\" <jjanssen@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Julie Janssen:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=19&reviewId=19&key=4JnRES2k\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=19&reviewId=19&key=4JnRES2k</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions\"<br><br></p>\r\n<p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(49,1048585,19,3,'2019-02-28 21:09:08',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Aisla McCrae\" <amccrae@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Aisla McCrae:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=19&reviewId=20&key=5f8bkL4K\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=19&reviewId=20&key=5f8bkL4K</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions\"<br><br></p>\r\n<p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(50,1048585,19,3,'2019-02-28 21:09:10',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Adela Gallego\" <agallego@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Adela Gallego:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=19&reviewId=21&key=DQX8z6m5\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=19&reviewId=21&key=DQX8z6m5</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions\"<br><br></p>\r\n<p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(51,1048585,19,7,'2019-02-28 21:09:15',1073741829,'\"Julie Janssen\" <jjanssen@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>',NULL,NULL,'[PK] Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2019-03-28, if not before.<br />\n<br />\nJulie Janssen<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(52,1048585,19,9,'2019-02-28 21:09:25',1073741829,'\"Aisla McCrae\" <amccrae@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>',NULL,NULL,'[PK] Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2019-03-28, if not before.<br />\n<br />\nAisla McCrae<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(53,1048585,19,10,'2019-02-28 21:09:38',1073741829,'\"Adela Gallego\" <agallego@mailinator.com>','\"Daniel Barnes\" <dbarnes@mailinator.com>, \"David Buskins\" <dbuskins@mailinator.com>, \"Stephanie Berardo\" <sberardo@mailinator.com>',NULL,NULL,'[PK] Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions,&quot; for Journal of Public Knowledge. Thank you for thinking of me, and I plan to have the review completed by its due date, 2019-03-28, if not before.<br />\n<br />\nAdela Gallego<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(54,1048585,19,3,'2019-02-28 21:09:51',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Lise Kumiega\" <lkumiega@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Lise Kumiega:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions\".<br><br>Our decision is: Revisions Required<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(55,1048585,20,30,'2019-02-28 21:10:10',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Patricia Daniel\" <pdaniel@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Patricia Daniel:<br />\n<br />\nThank you for submitting the manuscript, &quot;Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/20\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/20</a><br />\nUsername: pdaniel<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(56,1048585,21,31,'2019-02-28 21:10:29',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Rana Baiyewu\" <rbaiyewu@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Rana Baiyewu:<br />\n<br />\nThank you for submitting the manuscript, &quot;Yam diseases and its management in Nigeria&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/21\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/21</a><br />\nUsername: rbaiyewu<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(57,1048585,21,3,'2019-02-28 21:10:47',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Paul Hudson\" <phudson@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Paul Hudson:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Yam diseases and its management in Nigeria,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=21&reviewId=22&key=KC99eh5K\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=21&reviewId=22&key=KC99eh5K</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Yam diseases and its management in Nigeria\"<br><br></p>\r\n<p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(58,1048585,21,3,'2019-02-28 21:10:51',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Aisla McCrae\" <amccrae@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Aisla McCrae:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Yam diseases and its management in Nigeria,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=21&reviewId=23&key=mecaXJdi\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=21&reviewId=23&key=mecaXJdi</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Yam diseases and its management in Nigeria\"<br><br></p>\r\n<p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(59,1048585,21,3,'2019-02-28 21:10:56',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Rana Baiyewu\" <rbaiyewu@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Rana Baiyewu:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Yam diseases and its management in Nigeria\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(60,1048585,21,3,'2019-02-28 21:11:04',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Rana Baiyewu\" <rbaiyewu@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Rana Baiyewu:<br><br>The editing of your submission, \"Yam diseases and its management in Nigeria,\" is complete. We are now sending it to production.<br><br>Submission URL: <a class=\"submissionUrl-style-class\" href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/21\">http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/21</a><br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(61,1048585,22,32,'2019-02-28 21:11:46',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Rosanna Rossi\" <rrossi@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Rosanna Rossi:<br />\n<br />\nThank you for submitting the manuscript, &quot;Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/22\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/22</a><br />\nUsername: rrossi<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(62,1048585,23,33,'2019-02-28 21:12:15',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Vajiheh Karbasizaed\" <vkarbasizaed@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Vajiheh Karbasizaed:<br />\n<br />\nThank you for submitting the manuscript, &quot;Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/23\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/23</a><br />\nUsername: vkarbasizaed<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(63,1048585,23,3,'2019-02-28 21:12:28',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Julie Janssen\" <jjanssen@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Julie Janssen:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=23&reviewId=24&key=s3sDQPwy\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=23&reviewId=24&key=s3sDQPwy</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran\"<br><br></p>\r\n<p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (&gt;56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(64,1048585,23,3,'2019-02-28 21:12:31',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Paul Hudson\" <phudson@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Paul Hudson:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=23&reviewId=25&key=CgXrRmHH\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=23&reviewId=25&key=CgXrRmHH</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran\"<br><br></p>\r\n<p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (&gt;56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(65,1048585,23,3,'2019-02-28 21:12:33',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Vajiheh Karbasizaed\" <vkarbasizaed@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Vajiheh Karbasizaed:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(66,1048585,23,3,'2019-02-28 21:12:43',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Vajiheh Karbasizaed\" <vkarbasizaed@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Vajiheh Karbasizaed:<br><br>The editing of your submission, \"Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran,\" is complete. We are now sending it to production.<br><br>Submission URL: <a class=\"submissionUrl-style-class\" href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/23\">http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/23</a><br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(67,1048585,24,34,'2019-02-28 21:13:20',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Valerie Williamson\" <vwilliamson@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','Valerie Williamson:<br />\n<br />\nThank you for submitting the manuscript, &quot;Self-Organization in Multi-Level Institutions in Networked Environments&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/24\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/24</a><br />\nUsername: vwilliamson<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(68,1048585,24,3,'2019-02-28 21:13:29',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Valerie Williamson\" <vwilliamson@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Valerie Williamson:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Self-Organization in Multi-Level Institutions in Networked Environments\".<br><br>Our decision is to: Decline Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(69,1048585,25,35,'2019-02-28 21:13:49',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"Zita Woods\" <zwoods@mailinator.com>',NULL,'minoue@mailinator.com','[PK] Submission Acknowledgement','Zita Woods:<br />\n<br />\nThank you for submitting the manuscript, &quot;Finocchiaro: Arguments About Arguments&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/25\' class=\'submissionUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/authorDashboard/submission/25</a><br />\nUsername: zwoods<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(70,1048585,25,3,'2019-02-28 21:14:02',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Paul Hudson\" <phudson@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Paul Hudson:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Finocchiaro: Arguments About Arguments,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=25&reviewId=26&key=s29cdVzy\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=25&reviewId=26&key=s29cdVzy</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Finocchiaro: Arguments About Arguments\"<br><br></p>\r\n<p>None.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(71,1048585,25,3,'2019-02-28 21:14:06',NULL,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Aisla McCrae\" <amccrae@mailinator.com>',NULL,NULL,'[PK] Article Review Request','<p>Aisla McCrae:<br><br>I believe that you would serve as an excellent reviewer of the manuscript, \"Finocchiaro: Arguments About Arguments,\" which has been submitted to Journal of Public Knowledge. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br><br>Please log into the journal web site by 2019-03-21 to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br><br>The review itself is due 2019-03-28.<br><br>Submission URL: <a href=\'http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=25&reviewId=27&key=DnN7kadT\' class=\'submissionReviewUrl-style-class\'>http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/reviewer/submission?submissionId=25&reviewId=27&key=DnN7kadT</a><br><br>Thank you for considering this request.<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com<br><br>\"Finocchiaro: Arguments About Arguments\"<br><br></p>\r\n<p>None.</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(72,1048585,25,3,'2019-02-28 21:14:08',805306369,'\"Daniel Barnes\" <dbarnes@mailinator.com>','\"Zita Woods\" <zwoods@mailinator.com>',NULL,NULL,'[PK] Editor Decision','<p>Zita Woods:<br><br>We have reached a decision regarding your submission to Journal of Public Knowledge, \"Finocchiaro: Arguments About Arguments\".<br><br>Our decision is to: Accept Submission<br><br>Daniel Barnes<br>University of Melbourne<br>dbarnes@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(73,1048585,63,1,'2020-02-04 13:08:46',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"admin admin\" <pkpadmin@mailinator.com>',NULL,'dbuskins@mailinator.com, sberardo@mailinator.com','[PK] Submission Acknowledgement','admin admin:<br />\n<br />\nThank you for submitting the manuscript, &quot;Cyclomatic Complexity: theme and variations&quot; to Journal of Public Knowledge. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: <a href=\'http://localhost:8000/index.php/publicknowledge/authorDashboard/submission/63\' class=\'submissionUrl-style-class\'>http://localhost:8000/index.php/publicknowledge/authorDashboard/submission/63</a><br />\nUsername: admin<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost:8000/index.php/publicknowledge\">Journal of Public Knowledge</a>'),(74,1048585,63,1,'2020-02-04 13:08:48',NULL,'\"Ramiro Vaca\" <rvaca@mailinator.com>','\"FOO BAR\" <jforcht@mailinator.com>',NULL,NULL,'[PK] Submission Acknowledgement','Hello,<br />\n<br />\nadmin admin has submitted the manuscript, &quot;Cyclomatic Complexity: theme and variations&quot; to Journal of Public Knowledge. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\nRamiro Vaca<br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost:8000/index.php/publicknowledge\">Journal of Public Knowledge</a>');
/*!40000 ALTER TABLE `email_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_log_users`
--

DROP TABLE IF EXISTS `email_log_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_log_users` (
  `email_log_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `email_log_user_id` (`email_log_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_log_users`
--

LOCK TABLES `email_log_users` WRITE;
/*!40000 ALTER TABLE `email_log_users` DISABLE KEYS */;
INSERT INTO `email_log_users` VALUES (1,17),(2,3),(2,4),(2,5),(3,18),(4,9),(5,10),(6,18),(7,19),(9,20),(10,8),(11,10),(12,20),(13,20),(14,21),(15,7),(16,10),(17,21),(18,21),(19,22),(20,8),(21,9),(22,10),(23,3),(23,4),(23,5),(24,23),(26,24),(27,7),(28,10),(29,24),(30,24),(31,25),(32,7),(33,9),(34,10),(35,25),(36,25),(37,26),(38,9),(39,10),(40,3),(40,4),(40,5),(41,3),(41,4),(41,5),(42,27),(44,28),(45,7),(46,8),(47,29),(48,7),(49,9),(50,10),(51,3),(51,4),(51,5),(52,3),(52,4),(52,5),(53,3),(53,4),(53,5),(54,29),(55,30),(56,31),(57,8),(58,9),(59,31),(60,31),(61,32),(62,33),(63,7),(64,8),(65,33),(66,33),(67,34),(68,34),(69,35),(70,8),(71,9),(72,35),(73,1);
/*!40000 ALTER TABLE `email_log_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `email_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_key` varchar(64) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `context_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email_templates_email_key` (`email_key`,`context_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_default`
--

DROP TABLE IF EXISTS `email_templates_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates_default` (
  `email_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_key` varchar(64) NOT NULL,
  `can_disable` tinyint(4) NOT NULL DEFAULT '1',
  `can_edit` tinyint(4) NOT NULL DEFAULT '1',
  `from_role_id` bigint(20) DEFAULT NULL,
  `to_role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`email_id`),
  KEY `email_templates_default_email_key` (`email_key`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_default`
--

LOCK TABLES `email_templates_default` WRITE;
/*!40000 ALTER TABLE `email_templates_default` DISABLE KEYS */;
INSERT INTO `email_templates_default` VALUES (1,'NOTIFICATION',0,1,NULL,NULL),(2,'NOTIFICATION_CENTER_DEFAULT',0,1,NULL,NULL),(3,'PASSWORD_RESET_CONFIRM',0,1,NULL,NULL),(4,'PASSWORD_RESET',0,1,NULL,NULL),(5,'USER_REGISTER',0,1,NULL,NULL),(6,'USER_VALIDATE',0,1,NULL,NULL),(7,'REVIEWER_REGISTER',0,1,NULL,NULL),(8,'PUBLISH_NOTIFY',0,1,NULL,NULL),(9,'LOCKSS_EXISTING_ARCHIVE',0,1,NULL,NULL),(10,'LOCKSS_NEW_ARCHIVE',0,1,NULL,NULL),(11,'SUBMISSION_ACK',1,1,NULL,65536),(12,'SUBMISSION_ACK_NOT_USER',1,1,NULL,65536),(13,'EDITOR_ASSIGN',1,1,16,16),(14,'REVIEW_CANCEL',1,1,16,4096),(15,'REVIEW_REQUEST',1,1,16,4096),(16,'REVIEW_REQUEST_SUBSEQUENT',1,1,16,4096),(17,'REVIEW_REQUEST_ONECLICK',1,1,16,4096),(18,'REVIEW_REQUEST_ONECLICK_SUBSEQUENT',1,1,16,4096),(19,'REVIEW_REQUEST_ATTACHED',0,1,16,4096),(20,'REVIEW_REQUEST_ATTACHED_SUBSEQUENT',0,1,16,4096),(21,'REVIEW_REQUEST_REMIND_AUTO',0,1,NULL,4096),(22,'REVIEW_REQUEST_REMIND_AUTO_ONECLICK',0,1,NULL,4096),(23,'REVIEW_CONFIRM',1,1,4096,16),(24,'REVIEW_DECLINE',1,1,4096,16),(25,'REVIEW_ACK',1,1,16,4096),(26,'REVIEW_REMIND',0,1,16,4096),(27,'REVIEW_REMIND_AUTO',0,1,NULL,4096),(28,'REVIEW_REMIND_ONECLICK',0,1,16,4096),(29,'REVIEW_REMIND_AUTO_ONECLICK',0,1,NULL,4096),(30,'EDITOR_DECISION_ACCEPT',0,1,16,65536),(31,'EDITOR_DECISION_SEND_TO_EXTERNAL',0,1,16,65536),(32,'EDITOR_DECISION_SEND_TO_PRODUCTION',0,1,16,65536),(33,'EDITOR_DECISION_REVISIONS',0,1,16,65536),(34,'EDITOR_DECISION_RESUBMIT',0,1,16,65536),(35,'EDITOR_DECISION_DECLINE',0,1,16,65536),(36,'EDITOR_DECISION_INITIAL_DECLINE',0,1,16,65536),(37,'EDITOR_RECOMMENDATION',0,1,16,16),(38,'COPYEDIT_REQUEST',1,1,16,4097),(39,'LAYOUT_REQUEST',1,1,16,4097),(40,'LAYOUT_COMPLETE',1,1,4097,16),(41,'EMAIL_LINK',0,1,1048576,NULL),(42,'SUBSCRIPTION_NOTIFY',0,1,NULL,1048576),(43,'OPEN_ACCESS_NOTIFY',0,1,NULL,1048576),(44,'SUBSCRIPTION_BEFORE_EXPIRY',0,1,NULL,1048576),(45,'SUBSCRIPTION_AFTER_EXPIRY',0,1,NULL,1048576),(46,'SUBSCRIPTION_AFTER_EXPIRY_LAST',0,1,NULL,1048576),(47,'SUBSCRIPTION_PURCHASE_INDL',0,1,NULL,2097152),(48,'SUBSCRIPTION_PURCHASE_INSTL',0,1,NULL,2097152),(49,'SUBSCRIPTION_RENEW_INDL',0,1,NULL,2097152),(50,'SUBSCRIPTION_RENEW_INSTL',0,1,NULL,2097152),(51,'CITATION_EDITOR_AUTHOR_QUERY',0,1,NULL,NULL),(52,'REVISED_VERSION_NOTIFY',0,1,NULL,16),(53,'ORCID_COLLECT_AUTHOR_ID',0,1,NULL,NULL),(54,'ORCID_REQUEST_AUTHOR_AUTHORIZATION',0,1,NULL,NULL),(55,'PAYPAL_INVESTIGATE_PAYMENT',0,1,NULL,NULL),(56,'MANUAL_PAYMENT_NOTIFICATION',0,1,NULL,NULL),(57,'REVIEW_REINSTATE',1,1,16,4096),(58,'STATISTICS_REPORT_NOTIFICATION',0,1,16,17),(59,'SWORD_DEPOSIT_NOTIFICATION',0,1,NULL,NULL);
/*!40000 ALTER TABLE `email_templates_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_default_data`
--

DROP TABLE IF EXISTS `email_templates_default_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates_default_data` (
  `email_key` varchar(64) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT 'en_US',
  `subject` varchar(120) NOT NULL,
  `body` text,
  `description` text,
  UNIQUE KEY `email_templates_default_data_pkey` (`email_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_default_data`
--

LOCK TABLES `email_templates_default_data` WRITE;
/*!40000 ALTER TABLE `email_templates_default_data` DISABLE KEYS */;
INSERT INTO `email_templates_default_data` VALUES ('CITATION_EDITOR_AUTHOR_QUERY','en_US','Citation Editing','{$authorFirstName},<br />\n<br />\nCould you please verify or provide us with the proper citation for the following reference from your article, {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nThanks!<br />\n<br />\n{$userFirstName}<br />\nCopy-Editor, {$contextName}<br />\n','This email allows copyeditors to request additional information about references from authors.'),('CITATION_EDITOR_AUTHOR_QUERY','fr_CA','Modification des références','{$authorFirstName},<br />\n<br />\nPourriez-vous vérifier ou nous fournir la référence complète pour la référence suivante, provenant de votre article, {$submissionTitle}:<br />\n<br />\n{$rawCitation}<br />\n<br />\nMerci!<br />\n<br />\n{$userFirstName}<br />\nRéviseur, {$contextName}',NULL),('COPYEDIT_REQUEST','en_US','Copyediting Request','{$participantName}:<br />\n<br />\nI would ask that you undertake the copyediting of &quot;{$submissionTitle}&quot; for {$contextName} by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Open any files available under Draft Files and do your copyediting, while adding any Copyediting Discussions as needed.<br />\n3. Save copyedited file(s), and upload to Copyedited panel.<br />\n4. Notify the Editor that all files have been prepared, and that the Production process may begin.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\n','This email is sent by a Section Editor to a submission\'s Copyeditor to request that they begin the copyediting process. It provides information about the submission and how to access it.'),('COPYEDIT_REQUEST','fr_CA','Demande de révision d\'une soumission','{$participantName}:<br />\n<br />\nJ\'aimerais que vous effectuiez la révision du manuscrit intitulé « {$submissionTitle} » pour {$contextName} à l\'aide des étapes suivantes.<br />\n1. Cliquer sur l\'URL de la soumission ci-dessous.<br />\n2. Se connecter sur le site de la revue et cliquer sur le fichier qui apparaît à l\'Étape 1.<br />\n3. Consulter les instructions de révision affichés sur la page Web.<br />\n4. Ouvrir le fichier téléchargé et effectuer la révision, tout en ajoutant des Requêtes à l\'auteur, le cas échéant.<br />\n5. Enregistrer le fichier révisé, et télécharger à l\'Étape 1 de la révision.<br />\n6. Envoyer le courriel TERMINÉ au rédacteur.<br />\n<br />\nURL de {$contextName} : {$contextUrl}<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d\'utilisateur : {$participantUsername}<br />\n<br />\n','Ce courriel est envoyé par le Rédacteur de rubrique à un Réviseur, pour lui demander de commencer le processus de révision. Il fournit l\'information sur la soumission et comment accéder à celle-ci.'),('EDITOR_ASSIGN','en_US','Editorial Assignment','{$editorialContactName}:<br />\n<br />\nThe submission, &quot;{$submissionTitle},&quot; to {$contextName} has been assigned to you to see through the editorial process in your role as Section Editor.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$editorUsername}<br />\n<br />\nThank you,<br />\n','This email notifies a Section Editor that the Editor has assigned them the task of overseeing a submission through the editing process. It provides information about the submission and how to access the journal site.'),('EDITOR_ASSIGN','fr_CA','Assignation d\'une soumission','{$editorialContactName}:<br />\n<br />\nLa soumission intitulée « {$submissionTitle} » pour la revue {$contextName} vous a été attribuée. Vous êtes conséquemment responsable, en tant que Rédacteur de rubrique, de faire cheminer cet article à travers le processus d\'évaluation.<br />\n<br />\nURL de la soumission : {$submissionUrl}<br />\nNom d\'utilisateur : {$editorUsername}<br />\n<br />\nMerci,<br />\n','Ce courriel avise un Rédacteur de rubrique que le Rédacteur lui a assigné la tâche de suivre une soumission durant le processus éditorial. Il fournit de l\'information sur la soumission, et comment accéder au site Web de la revue.'),('EDITOR_DECISION_ACCEPT','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Accept Submission<br />\n<br />\n<br />\n','This email from the Editor or Section Editor to an Author notifies them of a final \"accept submission\" decision regarding their submission.'),('EDITOR_DECISION_ACCEPT','fr_CA','Décision du rédacteur','{$authorName}:<br />\n<br />\nNous avons pris une décision concernant votre soumission à {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNotre décision est de :<br />\n<br />\n','Cet courriel de l\'éditeur ou du chef de rubrique à un auteur les notifie d\'une décision finale de «soumission acceptée» concernant leur soumission.'),('EDITOR_DECISION_DECLINE','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Decline Submission<br />\n<br />\n<br />\n','This email from the Editor or Section Editor to an Author notifies them of a final \"decline\" decision regarding their submission.'),('EDITOR_DECISION_DECLINE','fr_CA','Décision du rédacteur','{$authorName}:<br />\n<br />\nNous avons pris une décision concernant votre soumission à {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNotre décision est de :<br />\n<br />\n','Cet courriel de l\'éditeur ou du chef de rubrique à un auteur les notifie d\'une décision finale de «soumission refusée» concernant leur soumission.'),('EDITOR_DECISION_INITIAL_DECLINE','en_US','Editor Decision','\n			{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Decline Submission<br />\n<br />\n<br />','This email is send to the author if the editor declines his submission initially, before the review stage'),('EDITOR_DECISION_INITIAL_DECLINE','fr_CA','Décision du rédacteur','{$authorName}:<br />\n<br />\nNous avons pris une décision concernant votre soumission à {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNotre décision: Refuser la soumission<br />\n<br />\n<br />','Cet courriel est envoyé à l\'auteur si la soumission est déclinée avant la phase d\'évaluation'),('EDITOR_DECISION_RESUBMIT','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Resubmit for Review<br />\n<br />\n<br />\n','This email from the Editor or Section Editor to an Author notifies them of a final \"resubmit\" decision regarding their submission.'),('EDITOR_DECISION_RESUBMIT','fr_CA','Décision du rédacteur','{$authorName}:<br />\n<br />\nNous avons pris une décision concernant votre soumission à {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNotre décision est de :<br />\n<br />\n','Cet courriel de l\'éditeur ou du chef de rubrique à un auteur les notifie d\'une décision finale de «soumission à redéposer» concernant leur soumission.'),('EDITOR_DECISION_REVISIONS','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is: Revisions Required<br />\n<br />\n<br />\n','This email from the Editor or Section Editor to an Author notifies them of a final \"revisions required\" decision regarding their submission.'),('EDITOR_DECISION_REVISIONS','fr_CA','Décision du rédacteur','{$authorName}:<br />\n<br />\nNous avons pris une décision concernant votre soumission à {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNotre décision est de :<br />\n<br />\n','Cet courriel de l\'éditeur ou du chef de rubrique à un auteur les notifie d\'une décision finale de «révision requise» concernant leur soumission.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','en_US','Editor Decision','{$authorName}:<br />\n<br />\nWe have reached a decision regarding your submission to {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nOur decision is to: Send to Review<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n<br />\n','This email from the Editor or Section Editor to an Author notifies them that their submission is being sent to an external review.'),('EDITOR_DECISION_SEND_TO_EXTERNAL','fr_CA','Décision du rédacteur','{$authorName}:<br />\n<br />\nNous avons pris une décision concernant votre soumission à {$contextName}, &quot;{$submissionTitle}&quot;.<br />\n<br />\nNotre décision est de : Envoyé pour l\'évaluation<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n<br />','Cet courriel de l\'éditeur ou du chef de rubrique à un auteur les notifie que leur soumission a été envoyé à une source externe pour son évaluation.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','en_US','Editor Decision','{$authorName}:<br />\n<br />\nThe editing of your submission, &quot;{$submissionTitle},&quot; is complete.  We are now sending it to production.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n<br />\n','This email from the Editor or Section Editor to an Author notifies them that their submission is being sent to production.'),('EDITOR_DECISION_SEND_TO_PRODUCTION','fr_CA','Décision du rédacteur',NULL,NULL),('EDITOR_RECOMMENDATION','en_US','Editor Recommendation','{$editors}:<br />\n<br />\nThe recommendation regarding the submission to {$contextName}, &quot;{$submissionTitle}&quot; is: {$recommendation}<br />\n<br />\n<br />\n','This email from the recommending Editor or Section Editor to the decision making Editors or Section Editors notifies them of a final recommendation regarding the submission.'),('EDITOR_RECOMMENDATION','fr_CA','Recommandation du rédacteur','{$editors}:<br />\n<br />\nLa recommandation concernant la soumission de &quot;{$submissionTitle}&quot; à {$contextName} est de: {$recommendation}<br />\n<br />\n<br />','Ce courriel envoyé par le rédacteur ou le rédacteur de rubrique aux rédacteurs en charge de la prise de décisions les informe d\'une recommandation finale concernant la soumission.'),('EMAIL_LINK','en_US','Article of Possible Interest','Thought you might be interested in seeing &quot;{$submissionTitle}&quot; by {$authorName} published in Vol {$volume}, No {$number} ({$year}) of {$contextName} at &quot;{$articleUrl}&quot;.','This email template provides a registered reader with the opportunity to send information about an article to somebody who may be interested. It is available via the Reading Tools and must be enabled by the Journal Manager in the Reading Tools Administration page.'),('EMAIL_LINK','fr_CA','Article potentiellement intéressant','Je pense que l\'article suivant pourrait vous intéresser : « {$submissionTitle} » par {$authorName}, publié dans le volume {$volume}, numéro {$number} de ({$year}) de la revue {$contextName}. Vous le trouverez à l\'adresse suivante : {$articleUrl}.','Ce courriel type donne à un lecteur inscrit l\'occasion d\'envoyer de l\'information à quelqu\'un qui peut être intéressé par un article en particulier. Il est disponible via Outils de lecture et doit être activé par le Directeur de la revue à la page Gestion des outils de lecture.'),('LAYOUT_ACK','fr_CA','Accusé de réception de la mise en page','{$participantName}:<br />\n<br />\nNous vous remercions d\'avoir accepté de préparer les épreuves pour le manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Il s\'agit d\'une contribution importante au processus de publication.<br />\n<br />\n{$editorialContactSignature}','Ce courriel du Rédacteur de rubrique au Responsable de la mise en page reconnaît que le processus de la mise en page a été complété et remercie le responsable de la mise en page de sa contribution.'),('LAYOUT_COMPLETE','en_US','Galleys Complete','{$editorialContactName}:<br />\n<br />\nGalleys have now been prepared for the manuscript, &quot;{$submissionTitle},&quot; for {$contextName} and are ready for proofreading.<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n{$participantName}','This email from the Layout Editor to the Section Editor notifies them that the layout process has been completed.'),('LAYOUT_COMPLETE','fr_CA','Mise en page des épreuves terminée','{$editorialContactName}:<br />\n<br />\nLes épreuves du manuscrit intitulé « {$submissionTitle} » pour {$contextName} sont maintenant prêtes pour la révision.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec moi.<br />\n<br />\n{$participantName}','Ce courriel du Responsable de la mise en page au Rédacteur de rubrique l\'avise que le processus de la mise en page est terminé.'),('LAYOUT_REQUEST','en_US','Request Galleys','{$participantName}:<br />\n<br />\nThe submission &quot;{$submissionTitle}&quot; to {$contextName} now needs galleys laid out by following these steps.<br />\n1. Click on the Submission URL below.<br />\n2. Log into the journal and use the Production Ready files to create the galleys according to the journal\'s standards.<br />\n3. Upload the galleys to the Galley Files section.<br />\n4. Notify the Editor using Production Discussions that the galleys are uploaded and ready.<br />\n<br />\n{$contextName} URL: {$contextUrl}<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$participantUsername}<br />\n<br />\nIf you are unable to undertake this work at this time or have any questions, please contact me. Thank you for your contribution to this journal.<br />\n<br />\n','This email from the Section Editor to the Layout Editor notifies them that they have been assigned the task of performing layout editing on a submission. It provides information about the submission and how to access it.'),('LAYOUT_REQUEST','fr_CA','Demande de mise en page des épreuves','{$participantName}:<br />\n<br />\nJ\'aimerais que vous prépariez les épreuves du manuscrit intitulé « {$submissionTitle} » pour {$contextName} à l\'aide des étapes suivantes.<br />\n1. Cliquer sur l\'URL de la soumission ci-dessous.<br />\n2. Se connecter au site Web de la revue et utiliser la version de mise en page du fichier pour créer les épreuves en fonction des normes de la revue.<br />\n3. Envoyer le courriel TERMINÉ au rédacteur.<br />\n<br />\nURL de {$contextName} : {$contextUrl}<br />\nURL du manuscrit : {$submissionUrl}<br />\nNom d\'utilisateur : {$participantUsername}<br />\n<br />\nSi vous ne pouvez pas effectuer ce travail pour le moment ou si vous avez des questions, veuillez communiquer avec moi. Je vous remercie de votre collaboration.<br />\n<br />\n','Ce courriel envoyé par le Rédacteur de rubrique au Responsable de la mise en page, avise ce dernier qu\'il a été assigné à la tâche de faire la mise en page de la soumission. Il fournit de l\'information sur la soumission et comment y accéder.'),('LOCKSS_EXISTING_ARCHIVE','en_US','Archiving Request for {$contextName}','Dear [University Librarian]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member], serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe URL to the LOCKSS Publisher Manifest for our journal is: {$contextUrl}/gateway/lockss<br />\n<br />\nWe understand that you are already participating in LOCKSS. If we can provide any additional metadata for purposes of registering our journal with your version of LOCKSS, we would be happy to provide it.<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email requests the keeper of a LOCKSS archive to consider including this journal in their archive. It provides the URL to the journal\'s LOCKSS Publisher Manifest.'),('LOCKSS_EXISTING_ARCHIVE','fr_CA','Demande d\'archivage pour {$contextName}','Cher [Bibliothécaire universitaire]<br />\n<br />\n{$contextName} &lt;{$contextUrl}&gt; est une revue pour laquelle un membre de votre faculté, [nom du membre], agit à titre de [titre de la position occupée]. La revue désire mettre en place un système d\'archivage conforme LOCKSS (Lots of Copies Keep Stuff Safe - Plusieurs exemplaires qui assurent la sécurité) avec votre bibliothèque universitaire ainsi que celles d\'autres universités.<br />\n<br />\n[Brève description de la revue]<br />\n<br />\nL\'adresse URL pour le LOCKSS Publisher Manifest pour notre revue est: {$contextUrl}/gateway/lockss<br />\n<br />\nNous savons que vous participez déjà à LOCKSS. Si nous pouvons vous fournir des métadonnées supplémentaires afin d\'inscrire notre revue avec votre version de LOCKSS, il nous fera plaisir de vous les fournir.<br />\n<br />\nMerci,<br />\n{$principalContactSignature}','Ce courriel demande à un conservateur d\'archives LOCKSS d\'envisager d\'inclure cette revue dans leurs archives. Il fournit l\'adresse URL du LOCKSS Publisher Manifest de la revue.'),('LOCKSS_NEW_ARCHIVE','en_US','Archiving Request for {$contextName}','Dear [University Librarian]<br />\n<br />\n{$contextName} &amp;lt;{$contextUrl}&amp;gt;, is a journal for which a member of your faculty, [name of member] serves as a [title of position]. The journal is seeking to establish a LOCKSS (Lots of Copies Keep Stuff Safe) compliant archive with this and other university libraries.<br />\n<br />\n[Brief description of journal]<br />\n<br />\nThe LOCKSS Program &amp;lt;http://lockss.org/&amp;gt;, an international library/publisher initiative, is a working example of a distributed preservation and archiving repository, additional details are below. The software, which runs on an ordinary personal computer is free; the system is easily brought on-line; very little ongoing maintenance is required.<br />\n<br />\nTo assist in the archiving of our journal, we invite you to become a member of the LOCKSS community, to help collect and preserve titles produced by your faculty and by other scholars worldwide. To do so, please have someone on your staff visit the LOCKSS site for information on how this system operates. I look forward to hearing from you on the feasibility of providing this archiving support for this journal.<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email encourages the recipient to participate in the LOCKSS initiative and include this journal in the archive. It provides information about the LOCKSS initiative and ways to become involved.'),('LOCKSS_NEW_ARCHIVE','fr_CA','Demande d\'archivage pour {$contextName}','Cher [Bibliothécaire universitaire]<br />\n<br />\n{$contextName}, &lt;{$contextUrl}&gt;, est une revue pour laquelle un membre de votre faculté, [nom du membre], agit à titre de [titre de la fonction occupée]. La revue désire mettre en place un système d\'archivage conforme LOCKSS (Lots of Copies Keep Stuff Safe) avec votre bibliothèque universitaire et celles d\'autres universités.<br />\n<br />\n[Brève description de la revue]<br />\n<br />\nLe programme LOCKSS &lt;http://lockss.org/&gt;, une initiative de bibliothécaires et d\'éditeurs internationaux, est une belle démonstration d\'un dépôt d\'archives assurant la préservation des documents. Voir les détails ci-dessous. Le logiciel est gratuit et fonctionne sur tout ordinateur personnel. Il est facile de le mettre en ligne et ne requiert que très peu de maintenance.<br />\n<br />\nPour nous aider dans le processus d\'archivage de notre revue, nous vous invitons à devenir membre de la communauté LOCKSS, pour aider la collection et la préservation des titres produits par votre faculté et par les autres chercheurs à travers le monde. Pour ce faire, veuillez demander à quelqu\'un de votre personnel de visiter le site Internet de LOCKSS pour voir les informations sur le fonctionnement du système.<br />\n<br />\nNous attendons de vos nouvelles pour savoir s\'il est possible pour vous de fournir un support d\'archivage pour cette revue.<br />\n<br />\nMerci,<br />\n{$principalContactSignature}','Ce courriel encourage le destinaire à participer à l\'initiative LOCKSS et à inclure cette revue dans leur archives. Il fournit de l\'information au sujet de LOCKSS et des façons de s\'impliquer dans le projet.'),('MANUAL_PAYMENT_NOTIFICATION','ar_IQ','إشعار الدفع اليدوي','\n			عملية دفع يدوي بحاجة إلى معالجتها تخص المجلة {$contextName} والمستخدم {$userFullName} (اسم المستخدم &quot;{$userName}&quot;).<br />\n<br />\nالفقرة التي في النية دفع المال لها هي &quot;{$itemName}&quot;.<br />\nالكلفة هي {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nتم إنشاء رسالة البريد الالكتروني هذه من قبل إضافة الدفع المالي اليدوي لنظام المجلات المفتوحة.','قالب هذه الرسالة يستعمل لإشعار رئيس تحرير المجلة أو مدير تحريرها بحدوث مطالبة لدفع المال يدوياً في المجلة.'),('MANUAL_PAYMENT_NOTIFICATION','cs_CZ','Oznámení o manuální platbě','Je třeba zpracovat manuální platbu pro časopis {$contextName} a uživatele {$userFullName} (uživatelské jméno &quot;{$userName}&quot;).<br />\n<br />\nPoložka, za kterou je placeno &quot;{$itemName}&quot;.<br />\nCena je {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nTento email byl vygenerován OJS pluginem Manuální platby.',''),('MANUAL_PAYMENT_NOTIFICATION','da_DK','Meddelelse om manuel betaling','Der skal gennemføres en manuel betaling for tidsskriftet {$contextName} og brugeren {$userFullName} (username &quot;{$userName}&quot;).</br>\n</br>\nBetalingen vedrører &quot;{$itemName}&quot;.</br>\nPrisen er {$itemCost} ({$itemCurrencyCode}).</br>\n</br>\nDenne e-mail blev genereret af Open Journal Systems\' plugin for manuelle betalinger','Denne e-mail bruges til at meddele en af tidsskriftschefens kontakter, at der skal foretage en manuel betaling.'),('MANUAL_PAYMENT_NOTIFICATION','de_DE','Benachrichtigung über manuelle Zahlung','Eine manuelle Zahlung ist für die Zeitschrift {$contextName} und den/die Benutzer/in {$userFullName} (Benutzer/innen-Name &quot;{$userName}&quot;) angekündigt worden.<br />\n<br />\nGezahlt werden soll für &quot;{$itemName}&quot;.<br />\nDie Kosten betragen {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nDiese E-Mail wurde vom OJS-Plugin Manuelle Gebührenzahlung erzeugt.','Diese E-Mail-Vorlage wird genutzt, um eine/n Zeitschriftenverwalter/in darüber zu benachrichtigen, dass eine manuelle Zahlung beantragt worden ist.'),('MANUAL_PAYMENT_NOTIFICATION','en_US','Manual Payment Notification','A manual payment needs to be processed for the journal {$contextName} and the user {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$itemName}&quot;.<br />\nThe cost is {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nThis email was generated by Open Journal Systems\' Manual Payment plugin.','This email template is used to notify a journal manager contact that a manual payment was requested.'),('MANUAL_PAYMENT_NOTIFICATION','es_ES','Notificación de pago manual','Un pago manual necesita ser procesado para la revista  {$contextName} y el usuario {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nEl ítem pagado es &quot;{$itemName}&quot;.<br />\nEl precio es {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nEste correo ha sido generado por el módulo de Pago Manual de Open Journal Systems.','Este correo se usa para notificar al gestor/a de la revista de que se ha realizado un pago manual.'),('MANUAL_PAYMENT_NOTIFICATION','eu_ES','Eskuzko ordainketaren jakinarazpena','{$userFullName} erabiltzaileak (&quot;{$userName}&quot; erab.-iz.) {$contextName} aldizkarirako egindako eskuzko ordainketa bat prozesatu beharrean dago.<br />\n<br />\nOrdaindu beharreko lana &quot;{$itemName}&quot; da.<br />\nKostua : {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nMezu hau Open Journal Systems-en Eskuzko ordainketen pluginak sortu du.','Mezu-txantiloi hau aldizkariaren kudeatzaileari eskuzko ordainketa bat eskatu dela jakinarazteko erabiltzen da.'),('MANUAL_PAYMENT_NOTIFICATION','fa_IR','اطلاع رسانی پرداخت دستی','یک پرداخت دستی قرار است برای مجله {$contextName} از طرف کاربر {$userFullName} (username &quot;{$userName}&quot;) صورت گیرد.<br />\n<br />\nمورد خرید &quot;{$itemName}&quot;.<br />\nقیمت {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nاین ایمیل توسط افزونه پرداخت دستی سیستم های مجله آزاد ایجاد شده است.',''),('MANUAL_PAYMENT_NOTIFICATION','fi_FI','Ilmoitus manuaalisesta maksusta','Käyttäjän {$userFullName} (käyttäjätunnus &quot;{$userName}&quot;) tekemä, julkaisuun {$contextName} kohdistuva manuaalinen maksu on käsiteltävä.<br />\n<br />\nMaksettava kohde on &quot;{$itemName}&quot;.<br />\nHinta: {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nTämä sähköposti on Open Journal Systemsin Manuaalinen maksu -lisäosan luoma.','This email template is used to notify a journal manager contact that a manual payment was requested.'),('MANUAL_PAYMENT_NOTIFICATION','fr_CA','Avis de paiement manuel','Un paiement manuel doit être traité pour la revue {$contextName} et l\'utilisateur {$userFullName} (nom d\'utilisateur &quot;{$userName}&quot;).<br />\n<br />\nL\'élément facturé est &quot;{$itemName}&quot;.<br />\nLe coût est de {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nCe courriel a été généré par le plugiciel de paiement manuel du Open Journal Systems.','Ce modèle de courriel est utilisé pour aviser un directeur de revue que le paiement manuel a été demandé.'),('MANUAL_PAYMENT_NOTIFICATION','id_ID',' Pemberitahuan Pembayaran Manual ',' Pembayaran manual harus diproses untuk jurnal dan {$contextName} pengguna {$userFullName} (nama pengguna &quot;{$userName}&quot;).<br />\nThe item being paid for &quot;{$itemName}&quot;. <br />\nBiaya adalah {$itemCost} ({$itemCurrencyCode}). <br />\nSurat elektronik ini dibuat oleh plugin pembayaran manual IOJS.',' Email ini digunakan untuk memberitahukan kontak manajer jurnal bahwa pembayaran manual dibutuhkan.'),('MANUAL_PAYMENT_NOTIFICATION','it_IT','Notifica di pagamento manuale','Bisogna registrare un pagamento offline per  {$contextName}, utente {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nIl pagamento riguarda &quot;{$itemName}&quot;.<br />\nIl costo è {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nQuesta email è generata automaticamente da Open Journal Systems\' Manual Payment plugin.','Questo template viene usato per notificare a journal manager che un pagamento manuale è stato richiesto.'),('MANUAL_PAYMENT_NOTIFICATION','nl_NL','Bericht van handmatige betaling','Er moet een handmatige betaling verwerkt worden voor tijdschrift {$contextName} en gebruiker {$userFullName} (gebruikersnaam &quot;{$userName}&quot;).<br />\n<br />\nEr wordt betaald voor &quot;{$itemName}&quot;.<br />\nDe prijs is {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nDeze e-mail is gegenereerd door de Handmatige betalingen plugin van Open Journal Systems.','Dit e-mail sjabloon wordt gebruikt om een tijdschriftbeheerder te verwittigen dat een handmatige betaling werd aangevraagd.'),('MANUAL_PAYMENT_NOTIFICATION','pl_PL','Manualne powiadomienie o płatności','','Ten szablon wiadomości jest wykorzystywany do powiadomienia administratora czasopisma, że została przesłana manualna prośba o płatność.'),('MANUAL_PAYMENT_NOTIFICATION','pt_BR','Notificação de pagamento manual','É necessário realizar o processamento de um pagamento manual de assinatura da revista {$contextName}, pelo usuário {$userFullName} (login &quot;{$userName}&quot;).<br />\n<br />\nO item adquirido é &quot;{$itemName}&quot;.<br />\nValor em ({$itemCurrencyCode}): {$itemCost}<br />\n<br />\nEsta é uma mensagem automática da ferramenta de Pagamento manual do Open Journal Systems.','Mensagem automática notificando editor-gerente que um pagamento manual foi realizado e exige processamento.'),('MANUAL_PAYMENT_NOTIFICATION','pt_PT','Notificação de pagamento manual','É necessário realizar o processamento de um pagamento manual de assinatura da revista {$contextName} do utilizador {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nO item adquirido é &quot;{$itemName}&quot;.<br />\nO custo é {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nEsta mensagem foi gerada pelo Plugin de Pagamento Manual do OJS.','Esta mensagem notifica o editor-gestor que um pagamento manual foi realizado e exige processamento.'),('MANUAL_PAYMENT_NOTIFICATION','ru_RU','Уведомление о платеже','Необходимо вручную обработать платеж для журнала «{$contextName}» и пользователя {$userFullName} (имя пользователя «{$userName}»).<br />\n<br />\nОплата вносится за «{$itemName}».<br />\nСумма {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nЭто письмо сгенерировано модулем «Ввод оплаты вручную» системы Open Journal Systems.','Этот шаблон письма используется для уведомления управляющего журналом о том, что был запрошен ввод оплаты вручную.'),('MANUAL_PAYMENT_NOTIFICATION','sl_SI','Manual Payment Notification','A manual payment needs to be processed for the journal {$contextName} and the user {$userFullName} (username &quot;{$userName}&quot;).<br />\n<br />\nThe item being paid for is &quot;{$itemName}&quot;.<br />\nThe cost is {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nThis email was generated by Open Journal Systems\' Manual Payment plugin.','This email template is used to notify a journal manager contact that a manual payment was requested.'),('MANUAL_PAYMENT_NOTIFICATION','uk_UA','Інформування про платіж','На рахунок журналу {$contextName} користувачем {$userFullName} (username &quot;{$userName}&quot;) повинен бути перерахований платіж.<br />\n<br />\nЦе плата за &quot;{$itemName}&quot;.<br />\nСума платежу {$itemCost} ({$itemCurrencyCode}).<br />\n<br />\nЦей лист був створений модулем ручних платежів системи Open Journal Systems.','Цей шаблон листа використовується для інформування менеджера журнала про запит на здійснення ручного платежу.'),('MANUAL_PAYMENT_NOTIFICATION','zh_CN','人工支付通知','人工支付需要被{$contextName}期刊的{$userFullName}来处理（用户名“{$userName}”）。<br />\n<br />\n<br />\n被支付的项目：“{$itemName}”；。<br />\n费用：{$itemCost} ({$itemCurrencyCode})。<br />\n<br />\n此邮件是由开放期刊系统的人工支付插件生成的。','这封电子邮件用来通知期刊管理员去处理一个人工支付请求。'),('NOTIFICATION','en_US','New notification from {$siteTitle}','You have a new notification from {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLink: {$url}<br />\n<br />\n{$principalContactSignature}','The email is sent to registered users that have selected to have this type of notification emailed to them.'),('NOTIFICATION','fr_CA','Nouvel avis de {$siteTitle}','Vous avez un nouvel avis de {$siteTitle}:<br />\n<br />\n{$notificationContents}<br />\n<br />\nLien: {$url}<br />\n<br />\n{$principalContactSignature}','Ce courriel est envoyé aux utilisateurs inscrits qui ont choisi de recevoir par courriel ce type d\'avis.'),('NOTIFICATION_CENTER_DEFAULT','en_US','A message regarding {$contextName}','Please enter your message.','The default (blank) message used in the Notification Center Message Listbuilder.'),('NOTIFICATION_CENTER_DEFAULT','fr_CA','Un message à propos de {$contextName}',NULL,'Message blanc par défaut utilisé pour concevoir d\'autres messages.'),('OPEN_ACCESS_NOTIFY','en_US','Issue Now Open Access','Readers:<br />\n<br />\n{$contextName} has just made available in an open access format the following issue. We invite you to review the Table of Contents here and then visit our web site ({$contextUrl}) to review articles and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$editorialContactSignature}','This email is sent to registered readers who have requested to receive a notification email when an issue becomes open access.'),('OPEN_ACCESS_NOTIFY','fr_CA','Le numéro est maintenant à accès libre','Chers lecteurs et lectrices :<br />\n<br />\n{$contextName} vient de rendre disponible en format libre accès le numéro suivant. Nous vous invitons à lire la table des matières ici puis visiter notre site Web ({$contextUrl}) pour lire les articles et autres textes qui pourraient vous intéresser.<br />\n<br />\nMerci de votre intérêt continu pour notre travail,<br />\n{$editorialContactSignature}','Nous envoyons ce courriel aux lecteurs inscrits qui ont demandé à recevoir un avis par courriel quand un numéro devient disponible à accès libre.'),('ORCID_COLLECT_AUTHOR_ID','ar_IQ','تقديم ORCID','',''),('ORCID_COLLECT_AUTHOR_ID','cs_CZ','ORCID ID k příspěvku','Vážený(á) {$authorName},\n\nByl(a) jste uveden(a) jako spoluautor rukopisu příspěvku \"{$articleTitle}\" do časopisu {$journalName}. \n\nK potvrzení vašeho autorství vložte, prosím vaše ORCID k příspěvku na následující webové adrese.\n\n{$authorOrcidUrl}\n\nPokud máte jakékoliv dotazy, neváhejte mne kontaktovat.','Tato šablona emailu slouží k shromažďování ORCID ID od spoluautorů.'),('ORCID_COLLECT_AUTHOR_ID','da_DK','Indsendelse ORCID','Kære {$authorName},<br/>\n<br/>\nDu står opført som medforfatter til manuskriptet \"{$articleTitle}\" i {$contextName}.<br/>\n<br/>\nFor at bekræfte forfatterskabet bedes du tilføje din ORCID id til denne indsendelse ved at gå til det fremlagte link nedenfor.<br/>\n<br/>\n{$authorOrcidUrl}<br/>\n<br/>\nHar du spørgsmål bedes du kontakte mig.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Denne e-mail bruges til at indsamle ORCID id fra medforfattere.'),('ORCID_COLLECT_AUTHOR_ID','de_DE','ORCID Zugriff erbeten','Liebe/r {$authorName},<br/>\n<br/>\nSie sind als Autor/in eines eingereichten Beitrags bei der Zeitschrift {$contextName} benannt worden.<br/>\n<br/>\nUm Ihre Autor/innenschaft zu bestätigen, geben Sie bitte Ihre ORCID iD für diese Einreichung an, indem Sie den unten angegebenen Link aufrufen.<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>ORCID iD registrieren oder ihre verbinden</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Mehr Informationen zu ORCID bei {$contextName}</a><br/>\n<br/>\nWenn Sie Fragen dazu haben, melden Sie sich bitte bei mir.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Diese E-Mail-Vorlage wird verwendet, um die ORCID-iDs von Co-Autor/innen einzuholen.'),('ORCID_COLLECT_AUTHOR_ID','en_US','Submission ORCID','Dear {$authorName},<br/>\n<br/>\nYou have been listed as an author on a manuscript submission to {$contextName}.<br/>\nTo confirm your authorship, please add your ORCID id to this submission by visiting the link provided below.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or connect your ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">More information about ORCID at {$contextName}</a><br/>\n<br/>\nIf you have any questions, please contact me.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','This email template is used to collect the ORCID id\'s from authors.'),('ORCID_COLLECT_AUTHOR_ID','es_ES','Identificador ORCID','Estimado/a {$authorName},\n\nSe le ha añadido como coautor/a del artículo \"{$articleTitle}\" para {$journalName}. \n\nPara confirmar su autoría, añada su identificador ORCID a este envío mediante el enlace proporcionado a continuación.\n\n{$authorOrcidUrl}\n\nSi tiene cualquier pregunta no dude en contactarme.','Esta plantilla de correo se utiliza para recopilar los identificadores ORCID de los coautores/as.'),('ORCID_COLLECT_AUTHOR_ID','fi_FI','Käsikirjoituksen ORCID-tunnisteet','Arvoisa {$authorName},<br/>\n<br/>\nTeidät mainitaan käsikirjoituksen \"{$articleTitle}\" yhdeksi kirjoittajaksi, joka on lähetetty lehteen {$contextName}.<br/>\n<br/>\nVarmistaaksesi tekijyytesi, ole hyvä ja lisää ORCID-tunnisteesi käsikirjoitukseen vierailemalla alla olevassa linkissä.<br/>\n<br/>\n{$authorOrcidUrl}<br/>\n<br/>\nMikäli teillä on jotain kysymyksiä, olkaa yhteydessä.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Tätä sähköpostipohjaa käytetään kirjoittajien ORCID-tunnisteiden keräämiseen.'),('ORCID_COLLECT_AUTHOR_ID','fr_CA','Soumission ORCID','{$authorName},<br/>\n<br/>\nVous avez été inscrit ou inscrite en tant qu\'auteur ou auteure pour un manuscrit soumis à {$contextName}.<br/>\nPour confirmer votre statut d\'auteur ou d\'auteure, veuillez ajouter votre identifiant ORCID à cette soumission en cliquant sur le lien ci-dessous.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"icône identifiant ORCID\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Se connecter avec votre identifiant ORCID ou s\'inscrire</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Plus de renseignements sur votre identifiant ORCID dans {$contextName}</a><br/>\n<br/>\nSi vous avez des questions, veuillez communiquer avec nous.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Ce modèle de courriel est utilisé pour récupérer les identifiants ORCID des auteurs-es.'),('ORCID_COLLECT_AUTHOR_ID','it_IT','Le chiediamo di inserire l\'ORCID','Gentile {$authorName},\n\nLei è stato indicato come co-autore della proposta \"{$articleTitle}\" giunta alla rivista {$journalName}. \n\nPer confermare la sua responsabilità come autore, le chiediamo di aggiungere il suo codice ORCID alla proposta usando il link messo qui sotto.\n\n{$authorOrcidUrl}\n\nSe delle domandi, mi contatti pure.','Questo template si usa per raccogliere l\'ORCID dai coautori'),('ORCID_COLLECT_AUTHOR_ID','nl_NL','ORCID van uw inzending','Beste {$authorName},<br/>\n<br/>\nU bent auteur van een inzending voor {$contextName}.<br/> \nWilt u bevestigen dat u co-auteur bent door uw ORCID id toe te voegen via volgende link?<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Registreer of koppel uw ORCID ID</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Meer informatie over ORCID op {$contextName}</a><br/>\n<br/>\nNeemt u alstublieft contact op als u vragen heeft.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Deze e-mail wordt verstuurd om de ORCID ID\'s van auteurs te verzamelen.'),('ORCID_COLLECT_AUTHOR_ID','pt_BR','ORCID da submissão','Prezada(o) {$authorName},\n\nVocê foi listada(o) como um coautor(a) em uma submissão de manuscrito \"{$articleTitle}\" para {$journalName}.\n\nPara confirmar sua autoria, por favor adicione sua id ORCID a esta submissão, visitando o link fornecido abaixo.\n\n{$authorOrcidUrl}\n\nSe você tiver quaisquer dúvidas, por favor entre em contato comigo.\n\n{$editorialContactSignature}\n\n\n','Este modelo de e-mail é utilizado para coletar os id ORCID dos coautores.'),('ORCID_COLLECT_AUTHOR_ID','pt_PT','Submissão ao ORCID','Caro(a) {$authorName},\n\nO seu nome foi indicado como coautor do manuscrito \"{$articleTitle}\" submetido à revista {$journalName}. \n\nPara confirmar a sua autoria, por favor adicione o seu identificador ORCID à submissão visitando a página indicada abaixo.\n\n{$authorOrcidUrl}\n\nSe tiver alguma dúvida, por favor contacte-me.','Este e-mail é usado para recolher os identificadores ORCID dos co-autores.'),('ORCID_COLLECT_AUTHOR_ID','ru_RU','ORCID материала','{$authorName}!<br/>\n<br/>\nВы были указаны как автор материала, отправленного в «{$contextName}».<br/>\nЧтобы подтвердить свое авторство, пожалуйста, добавьте свой идентификатор ORCID к этому материалу, перейдя по приведенной ниже ссылке.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Создать или подключить ваш ORCID iD</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Дополнительная информация об ORCID в «{$contextName}»</a><br/>\n<br/>\nЕсли у Вас есть какие-либо вопросы, пожалуйста, свяжитесь со мной.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Этот шаблон письма используется для сбора идентификаторов ORCID с авторов.'),('ORCID_COLLECT_AUTHOR_ID','sl_SI','ORCID prispevka','Spoštovani {$authorName},<br/>\n<br/>\nNavedeni ste bili kot soavtor rokopisa prispevka za revijo{$contextName}.<br/>\nDa potrdite avtorstvo, vas prosimo, da dodate vaš ORCID iD v prispevek s klikom na spodnjo povezavo.<br/>\n<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Registracija ali povezava z vašim ORCID iD</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Več o ORCID pri reviji {$contextName}</a><br/>\n<br/>\nČe imate kakršnakoli vprašanje, me prosim kontaktirajte.<br/>\n<br/>\n{$principalContactSignature}<br/>','Email se uporablja za zbiranje ORCID iD-jev soavtorjev.'),('ORCID_COLLECT_AUTHOR_ID','sv_SE','ORCID för bidrag','Hej {$authorName}!\n\nDu är listad som medförfattare till bidraget \"{$articleTitle}\" till {$journalName}. \n\nFör att bekräfta ditt författarskap, lägg till ditt ORCID-iD genom att följa länken nedan.\n\n{$authorOrcidUrl}\n\nKontakta gärna mig om du har några frågor.','Den här e-postmallen används för att samla in ORCID-iD:n från medförfattare.'),('ORCID_COLLECT_AUTHOR_ID','tr_TR','ORCID Gönderisi','Sayın {$authorName},\n\n{$journalName} adlı dergiye sunulan \"{$articleTitle}\" adlı makale için ortak yazar olarak belirtildiniz.\n\nYazarlığınızı onaylamak için lütfen aşağıdaki bağlantıyı ziyaret ederek ORCID kimliğinizi dergimize ekleyiniz.\n\n{$authorOrcidUrl}\n\nHerhangi bir sorunuz olması halinde, lütfen bize yazınız.','Bu e-posta şablonu ORCID kimliklerini ortak yazarlardan istemek için kullanılır.'),('ORCID_COLLECT_AUTHOR_ID','uk_UA','ORCID подання','{$authorName},\n\nВи були зазначені як співавтор подання \"{$articleTitle}\" надісланого в журнал {$journalName}. \n\nЩоб підтвердити своє авторство, додайте свій ідентифікатор ORCID до цього подання, відвідавши посилання, вказане нижче.\n\n{$authorOrcidUrl}\n\nЯкщо у вас виникли будь-які запитання, зв\'яжіться зі мною.','Цей шаблон електронного листа використовується для збору ідентифікаторів ORCID з співавторів.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','de_DE','ORCID Zugriff erbeten','Liebe/r {$authorName},<br>\n<br>\nSie sind als Autor/in eines eingereichten Beitrags bei der Zeitschrift {$contextName} benannt worden.<br>\n<br>\nBitte gestatten Sie uns ihre ORCID-ID, falls vorhanden, zu diesem Beitrag hinzuzufügen, sowie ihr ORCID Profil bei Veröffentlichung des Beitrags zu aktualisieren.<br>\nDazu folgen sie dem unten stehenden Link zur offiziellen ORCID-Seite, melden sich mit ihren Daten an und authorisieren sie den Zugriff, indem\nsie den Anweisungen auf der Seite folgen.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>ORCID iD registrieren oder ihre verbinden</a><br/>\n<br/>\n<br>\n<a href=\"{$orcidAboutUrl}\">Mehr Informationen zu ORCID bei {$contextName}</a>.\n<br>\nWenn Sie Fragen dazu haben, melden Sie sich bitte.<br>\n<br>\n{$principalContactSignature}<br>\n','Diese E-Mail-Vorlage wird verwendet, um die Authorisierung für ORCID Profil Zugriff von Autor/innen einzuholen.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','en_US','Requesting ORCID record access','Dear {$authorName},<br>\n<br>\nYou have been listed as an author on the manuscript submission \"{$articleTitle}\" to {$contextName}.\n<br>\n<br>\nPlease allow us to add your ORCID id to this submission and also to add the submission to your ORCID profile on publication.<br>\nVisit the link to the official ORCID website, login with your profile and authorize the access by following the instructions.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Register or Connect your ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">More about ORCID at {$contextName}</a><br/>\n<br>\nIf you have any questions, please contact me.<br>\n<br>\n{$principalContactSignature}<br>\n','This email template is used to request ORCID record access from authors.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','fr_CA','Demande d\'accès au dossier ORCID','{$authorName},<br/>\n<br/>\nVous avez été inscrit ou inscrite en tant qu\'auteur ou auteure pour le manuscrit « {$articleTitle} » soumis à {$contextName}.\n<br/>\n<br/>\nVeuillez nous autoriser à ajouter votre identifiant ORCID à cette soumission et à ajouter également la soumission à votre dossier ORCID suite à sa publication.\n<br/>\nSuivre le lien vers le site officiel ORCID, vous connecter avec votre profil et autoriser l\'accès en suivant les instructions.<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"icône identifiant ORCID\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Se connecter avec votre identifiant ORCID ou s\'inscrire</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Plus de renseignements sur votre identifiant ORCID dans {$contextName}</a><br/>\n<br/>\nSi vous avez des questions, veuillez communiquer avec nous.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Ce modèle de courriel est utilisé pour demander aux auteurs-es l\'accès à leur dossier ORCID.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','nl_NL','Toegangsverzoek tot uw ORCID profiel','Beste {$authorName},<br/>\n<br/>\nU bent auteur van het manuscript \"{$articleTitle}\" dat werd ingediend voor {$contextName}.\n<br/>\n<br/>\nWilt u uw toestemming geven om uw ORCID ID toe te voegen aan deze inzending en de inzending toe te voegen aan uw ORCID profiel bij publicatie?<br/>\nKlik op de link naar de officiële ORCID website, meld u aan met uw gebruikersprofiel en authoriseer de toegang door de instructies te volgen.<br/>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Registreer of koppel uw ORCID ID</a><br/>\n<br/>\n<br/>\n<a href=\"{$orcidAboutUrl}\">Meer informatie over ORCID op {$contextName}</a><br/>\n<br>\nNeemt u alstublieft contact op als u vragen heeft.<br/>\n<br/>\n{$principalContactSignature}<br/>\n','Deze e-mail wordt verstuurd om toegang te vragen aan auteurs tot hun ORCID profiel.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','ru_RU','Запрос доступа к записи ORCID','{$authorName}!<br>\n<br>\nВы были указаны как автор материала «{$articleTitle}», отправленного в «{$contextName}».\n<br>\n<br>\nПожалуйста, дайте нам возможность добавить ваш ORCID id к этому материалу, а также добавить материал в ваш профиль ORCID после публикации.<br>\nПерейдите по ссылке на официальном вебсайте ORCID, войдите в систему с вашей учетной записью и авторизуйте доступ, следуя инструкциям.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Создать или подключить ваш ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">Подробнее об ORCID в «{$contextName}»</a><br/>\n<br>\nЕсли у Вас есть какие-либо вопросы, пожалуйста, свяжитесь со мной.<br>\n<br>\n{$principalContactSignature}<br>\n','Этот шаблон письма используется для запроса доступа к записи ORCID у авторов.'),('ORCID_REQUEST_AUTHOR_AUTHORIZATION','sl_SI','Prošnja za dostop do ORCID zapisa','Spoštovani {$authorName},<br>\n<br>\nNašteti ste bili kot (so)avtor rokopisa prispevka \"{$articleTitle}\" pri reviji {$contextName}.\n<br>\n<br>\nProsimo vas za dovoljenje, da dodamo vaš ORCID iD k temu prispevku in hkrati dodamo ta prispevek k vašem ORCID profilu pri reviji.<br>\nKliknite na povezavo na uradno ORCID stran, prijavite se z vašim profilom in avtorizirajte dostop po navodilih.<br>\n<a href=\"{$authorOrcidUrl}\"><img id=\"orcid-id-logo\" src=\"https://orcid.org/sites/default/files/images/orcid_16x16.png\" width=\'16\' height=\'16\' alt=\"ORCID iD icon\" style=\"display: block; margin: 0 .5em 0 0; padding: 0; float: left;\"/>Registriraj ali poveži vaš ORCID iD</a><br/>\n<br>\n<br>\n<a href=\"{$orcidAboutUrl}\">Več o ORCID pri reviji {$contextName}</a><br/>\n<br>\nČe imate kakršnakoli vprašanje, me prosim kontaktirajte.<br/>\n<br>\n{$principalContactSignature}<br>','Email vsebuje prošnjo za dostop do ORCID zapisov avtorjev.'),('PASSWORD_RESET','en_US','Password Reset','Your password has been successfully reset for use with the {$siteTitle} web site. Please retain this username and password, as it is necessary for all work with the journal.<br />\n<br />\nYour username: {$username}<br />\nPassword: {$password}<br />\n<br />\n{$principalContactSignature}','This email is sent to a registered user when they have successfully reset their password following the process described in the PASSWORD_RESET_CONFIRM email.'),('PASSWORD_RESET','fr_CA','Réinitialisation du mot de passe','Votre mot de passe pour le site Web {$siteTitle} a été réinitialisé avec succès. Veuillez conserver précieusement votre nom d\'utilisateur ainsi que votre mot de passe. Vous en aurez besoin pour chacune de vos interactions avec la revue.<br />\n<br />\nVotre nom d\'utilisateur : {$username}<br />\nMot de passe : {$password}<br />\n<br />\n{$principalContactSignature}','Ce courriel est envoyé aux utilisateurs inscrits lorsqu\'ils ont réussi à réinitialiser leur mot de passe en ayant suivi la procédure décrite dans le courriel « Confirmation de la réinitialisation du mot de passe ».'),('PASSWORD_RESET_CONFIRM','en_US','Password Reset Confirmation','We have received a request to reset your password for the {$siteTitle} web site.<br />\n<br />\nIf you did not make this request, please ignore this email and your password will not be changed. If you wish to reset your password, click on the below URL.<br />\n<br />\nReset my password: {$url}<br />\n<br />\n{$principalContactSignature}','This email is sent to a registered user when they indicate that they have forgotten their password or are unable to login. It provides a URL they can follow to reset their password.'),('PASSWORD_RESET_CONFIRM','fr_CA','Confirmation de la réinitialisation du mot de passe','Nous avons reçu une demande concernant la réinitialisation de votre mot de passe pour le site Web {$siteTitle}.<br />\n<br />\nSi vous n\'avez pas fait cette demande, veuillez ne pas tenir compte du présent message, votre mot de passe restera le même. Si vous voulez réinitialiser votre mot de passe, cliquer sur l\'URL et un nouveau mot de passe vous sera envoyé par courriel sous peu.<br />\n<br />\nRéinitialisation du mot de passe : {$url}<br />\n<br />\n{$principalContactSignature}','Ce courriel est envoyé aux utilisateurs qui nous signalent avoir oublié leur mot de passe ou qui sont incapables d\'ouvrir une session. Il fournit le lien URL pour réinitialiser leur mot de passe.'),('PAYPAL_INVESTIGATE_PAYMENT','ar_IQ','نشاط غير عادي من PayPal','نظام المجلات المفتوحة قد تعرض إلى نشاط غير عادي يتعلق بآلية دعم المدفوعات عبر PayPal يخص المجلة {$contextName}. هذا النشاط قد يستدعي المزيد من التحقيق بشأنه ولو يدوياً.<br />\n                       <br />\nهذه الرسالة أنشأتها إضافة PayPal لنظام المجلات المفتوحة.<br />\n<br />\nمعلومات الطرح الكامل للطلب:<br />\n{$postInfo}<br />\n<br />\nمعلومات إضافية (لو توفرت):<br />\n{$additionalInfo}<br />\n<br />\nمتغيرات الملقم:<br />\n{$serverVars}<br />\n','قالب الرسالة الالكترونية هذا يستعمل لإشعار عنوان الاتصال الرئيسي في المجلة بحدوث نشاط مريب من قبل إضافة PayPal مما قد يستدعي الالتفات إليه أو التحقيق بشأنه.'),('PAYPAL_INVESTIGATE_PAYMENT','cs_CZ','Neobvyklá PayPal aktivita','OJS zaznamenal neobvyklou aktivitu v souvislosti s podporou plateb přes PayPal pro časopis {$contextName}. Tato aktivita může vyžadovat další kontrolu nebo ruční zásah.<br />\n                       <br />\nTento email byl vygenerován OJS pluginem pro PayPal.<br />\n<br />\nKompletní informace k požadavku:<br />\n{$postInfo}<br />\n<br />\nDoplňkové informace (pokud byly uvedeny):<br />\n{$additionalInfo}<br />\n<br />\nProměnné serveru:<br />\n{$serverVars}',''),('PAYPAL_INVESTIGATE_PAYMENT','da_DK','Usædvanlig PayPal-aktivitet','Open Journal Systems er stødt på en usædvanlig aktivitet i forbindelse med PayPal-betalingsunderstøttelsen til tidsskriftet {$contextName}. Denne aktivitet kan kræve yderligere undersøgelse eller manuel indgriben.<br /><br />\n                       <br />\nDenne e-mail blev genereret af Open Journal Systems \'PayPal-plug-in<br />\n<br />\nUdførlig information:<br />\n{$postInfo}<br />\n<br />\nYderligere information (hvis leveret):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />','Denne e-mail-skabelon bruges til at underrette et tidsskrifts primære kontaktperson om, at mistænkelig aktivitet eller aktivitet, der kræver manuel indblanding, tilstødte PayPal-plug-in\'en.'),('PAYPAL_INVESTIGATE_PAYMENT','de_DE','Ungewöhnliche PayPal-Aktivität','Open Journal Systems hat eine ungewöhnliche Aktivität in Bezug auf die Unterstützung  von PayPal-Zahlungen für die Zeitschrift {$contextName} festgestellt. Diese Aktivität könnte eine nähere Untersuchung oder ein Eingreifen erfordern.<br />\n<br />\nDiese E-Mail wurde durch das Open Journal Systems-Plugin PayPal-Gebührenzahlung erzeugt.<br />\n<br />\nVolle Informationen zu dieser Anfrage:<br />\n{$postInfo}<br />\n<br />\nZusätzliche Informationen (soweit angegeben):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n','Diese E-Mail-Vorlage wird genutzt, um den primären Zeitschriftenkontakt darüber zu benachrichtigen, dass verdächtige Aktivitäten durch das PayPal-PlugIn entdeckt worden sind.'),('PAYPAL_INVESTIGATE_PAYMENT','en_US','Незвичайна активність PayPal','Система Open Journal Systems помітила незвичайну активність у функціонуванні модуля платежів PayPal журналу {$contextName}. Може знадобитись подальше вивчення цього питання або ручне втручання.<br />\n                       <br />\nЦей лист створений модулем PayPal системи Open Journal Systems.<br />\n<br />\nПовна інформація про запит:<br />\n{$postInfo}<br />\n<br />\nДодаткова інформація (якщо наявна):<br />\n{$additionalInfo}<br />\n<br />\nДані сервера:<br />\n{$serverVars}<br />\n','Цей шаблон листа використовується для інформування основної контактної особи журналу про виявлення модулем PayPal підозрілої активності або активності, що потребує ручного втручання.'),('PAYPAL_INVESTIGATE_PAYMENT','es_ES','Actividad inusual de PayPal','Open Journal Systems ha notado una actividad inusual relacionada con el soporte de pago de PayPal para la revista {$contextName}.  Esta actividad puede necesitar de mayor investigación o intervención manual.<br />\n<br />\nEste email ha sido generado por el plugin de PayPal de Open Journal Systems.<br />\n<br />\nInformación completa de envío para la solicitud:<br />\n{$postInfo}<br />\n<br />\nInformación adicional (si proporcionada):<br />\n{$additionalInfo}<br />\n<br />\nVariables de servidor:<br />\n{$serverVars}','Esta plantilla de correo es usada para notificar al contacto principal de la revista de que el plugin de PayPal ha detectado actividad sospechosa o actividad que requiere de intervención manual.'),('PAYPAL_INVESTIGATE_PAYMENT','eu_ES','Ezohiko PayPal jarduera','Open Journal Systems-ek ezohiko jarduera sumatu du {$contextName} aldizkariaren PayPal ordainketa-zerbitzuan. Jarduera hori gehiago ikertu beharko da edo eskuz parte hartu beharko da.<br />\n                       <br />\nMezu hau Open Journal Systems-en PayPal pluginak sortu du.<br />\n<br />\nEskaeraren informazio osoa:<br />\n{$postInfo}<br />\n<br />\nInformazio osagarria (eman badute):<br />\n{$additionalInfo}<br />\n<br />\nZerbitzari-aldagaiak:<br />\n{$serverVars}','Mezu-txantiloi hau erabiltzen da aldizkariko kontaktu nagusiari jakinarazteko PayPal pluginak jarduera susmagarria edo eskuz parte hartzea eskatzen duena topatu duela.'),('PAYPAL_INVESTIGATE_PAYMENT','fa_IR','فعالیت غیر عدی PayPal','سیستم های مجله آزاد فعالیتی غیر عادی مربوط به قسمت پرداخت PayPal برای {$contextName} را کشف کرده است.<br />\nاین فعالیت ممکن است بررسی بیشتر شما را ایجاب کند.<br />\n					   <br />\nاین ایمیل توسط افزونه PayPal سیستم های مجله آزاد تولید شده است.<br />\n<br />\nاطلاعات کامل پست برای درخواست:<br />\n{$postInfo}<br />\n<br />\nاطلاعات اضافی در صورت وجود:<br />\n{$additionalInfo}<br />\n<br />\nمتغییرهای سرور<br />\n{$serverVars}',''),('PAYPAL_INVESTIGATE_PAYMENT','fi_FI','Epätavallinen PayPal-toiminta','Open Journal Systems on havainnut epätavallista toimintaa julkaisun {$contextName} PayPal-maksujen tukeen liittyen. Tämä toiminta saattaa vaatia lisätutkimista tai manuaalista asiaan puuttumista.<br />\n                       <br />\nTämä sähköposti on Open Journal Systemsin PayPal-lisäosan luoma.<br />\n<br />\nPyynnön täydet lähetystiedot :<br />\n{$postInfo}<br />\n<br />\nLisätiedot (mikäli annettu):<br />\n{$additionalInfo}<br />\n<br />\nPalvelimen muuttujat:<br />\n{$serverVars}<br />\n','This email template is used to notify a journal\'s primary contact that suspicious activity or activity requiring manual intervention was encountered by the PayPal plugin.'),('PAYPAL_INVESTIGATE_PAYMENT','fr_CA','Activité inhabituelle de PayPal','L\'Open Journal Systems a remarqué une activité inhabituelle concernant la prise en charge du paiement PayPal pour la revue {$contextName}. Cette activité pourrait nécessiter une attention particulière ou une intervention manuelle.<br />\n                       <br />\nCe courriel a été généré par le plugiciel PayPal du Open Journal Systems.<br />\n<br />\nInformation complète de la demande :<br />\n{$postInfo}<br />\n<br />\nInformation supplémentaire (si fournie) :<br />\n{$additionalInfo}<br />\n<br />\nVariables serveur :<br />\n{$serverVars}<br />\n','Ce modèle de courriel est utilisé pour aviser un contact principal d\'une revue qu\'une activité inhabituelle ou requérant une intervention manuelle a été remarquée par le plugiciel PayPal.'),('PAYPAL_INVESTIGATE_PAYMENT','id_ID',' Kegiatan pembayaran paypal yang tidak biasa ',' IOJS telah menemukan kegiatan yang tidak biasa yang berhubungan dengan bantuan pembayaran paypal untuk jurnal {$contextName}. Kegiatan ini mungkin dibutuhkan investigasi yang lebih lanjut atau intervensi manual. Emai ini diciptakan oleh OJS PayPal plugin.<br />\nInformasi posting penuh untuk permohonan:<br />\n{$postInfo}<br />\nInformasi tambahan (jika tersedia):<br />\n{$additionalInfo}<br />\nVariasi Server :<br />\n{$serverVars}<br />\n',' Email ini digunakan untuk memberitahukan jurnal kontak utama yang mempunyai kegiatan yang mencurigakan atau kegiatan yang membutuhkan intervensi manual yang ditemukan oleh plugin paypal.'),('PAYPAL_INVESTIGATE_PAYMENT','it_IT','Attività PayPal sospetta','Open Journal Systems ha riscontrato un\'attivtà sospetta sul conto PayPal della rivista {$contextName}. Ciò può richiedere ulteriori indagini o un intervento manuale.<br />\n<br />\nQuesta email è stata generata da Open Journal Systems\' PayPal plugin<br />\n<br />\nTutte le informazioni sulla richiesta:<br />\n{$postInfo}<br />\n<br />\nInformazioni aggiuntive (se disponibili):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}','Questa mail viene inviata dal plugin paypal al gestore di un journal quanto si notano delle attività sospette o c\'è bisogno di un intervento manuale.'),('PAYPAL_INVESTIGATE_PAYMENT','nl_NL','Ongebruikelijke PayPal activiteit','Open Journal Systems heeft ongebruikelijke activiteit geconstateerd met betrekking tot de PayPal betalingsondersteuning van het tijdschrift {$contextName}. Deze activiteit vraagt om verder onderzoek of handmatige interventie.<br />\n                       <br />\nDeze e-mail is gegenereerd door de PayPal plugin van Open Journal Systems.<br />\n<br />\nVolledige berichtinformatie voor het verzoek:<br />\n{$postInfo}<br />\n<br />\nAdditionele informatie (indien opgegeven):<br />\n{$additionalInfo}<br />\n<br />\nServer variabelen:<br />\n{$serverVars}','Dit e-mail sjabloon wordt gebruikt om de eerste contactpersoon van een tijdschrift te verwittigen dat de PayPal plugin ongebruikelijke activiteit werd geconstateerd, die handmatige interventie vereist.'),('PAYPAL_INVESTIGATE_PAYMENT','pl_PL','Nietypowe działanie PayPal','',''),('PAYPAL_INVESTIGATE_PAYMENT','pt_BR','Atividade incomum na conta PayPal','O sistema encontrou atividade incomum relacionada ao suporte a pagamentos via PayPal da revista {$contextName}. <br />\nEsta atividade pode exigir investigação mais profunda ou intervenção manual.<br />\n                       <br />\nEsta é uma mensagem automática da ferramenta de Pagamento via PayPal do Open Journal Systems.<br />\n<br />\nInformações detalhadas da notificação:<br />\n{$postInfo}<br />\n<br />\nInformações adicionais (caso informado):<br />\n{$additionalInfo}<br />\n<br />\nVariáveis do servidor:<br />\n{$serverVars}','Esta mensagem notifica o contato principal da revista sobre atividades suspeitas, ou atividades que exijam intervenção manual, detectadas pelo Plugin de Pagamento via PayPal.'),('PAYPAL_INVESTIGATE_PAYMENT','pt_PT','Actividade incomum na conta PayPal','O sistema OJS encontrou actividade incomum relacionada ao suporte a pagamentos via PayPal, para a revista {$contextName}. Esta actividade pode exigir investigação mais profunda ou intervenção manual.<br />\n                       <br />\nEsta mensagem foi gerada pelo Plugin PayPal do OJS.<br />\n<br />\nInformações detalhadas da notificação:<br />\n{$postInfo}<br />\n<br />\nInformações adicionais (caso informado):<br />\n{$additionalInfo}<br />\n<br />\nVariáveis do Servidor:<br />\n{$serverVars}','Esta mensagem notifica o contacto principal da revista sobre actividades suspeitas, ou atividades que exijam intervenção manual, detectadas pelo Plugin de Pagamento via PayPal.'),('PAYPAL_INVESTIGATE_PAYMENT','ru_RU','Необычная активность PayPal','Система Open Journal Systems обнаружила необычную активность, связанную с поддержкой платежей через PayPal для журнала «{$contextName}». Эта активность может требовать дополнительного изучения или вмешательства в ручном режиме.<br />\n                       <br />\nЭто письмо было сгенерировано модулем «Платежи через PayPal» системы Open Journal Systems.<br />\n<br />\nПолная информация для запроса:<br />\n{$postInfo}<br />\n<br />\nДополнительная информация (если есть):<br />\n{$additionalInfo}<br />\n<br />\nПеременные сервера:<br />\n{$serverVars}<br />\n','Этот шаблон письма используется для уведомления контактного лица редакции о том, что была зарегистрирована подозрительная активность или активность, требующая вмешательства в ручном режиме, вызванная модулем «Платежи через PayPal».'),('PAYPAL_INVESTIGATE_PAYMENT','sl_SI','Unusual PayPal Activity','Open Journal Systems has encountered unusual activity relating to PayPal payment support for the journal {$contextName}. This activity may need further investigation or manual intervention.<br />\n                       <br />\nThis email was generated by Open Journal Systems\' PayPal plugin.<br />\n<br />\nFull post information for the request:<br />\n{$postInfo}<br />\n<br />\nAdditional information (if supplied):<br />\n{$additionalInfo}<br />\n<br />\nServer vars:<br />\n{$serverVars}<br />\n','This email template is used to notify a journal\'s primary contact that suspicious activity or activity requiring manual intervention was encountered by the PayPal plugin.'),('PAYPAL_INVESTIGATE_PAYMENT','zh_CN','不正常的PayPal活动','开放期刊系统遇到不正常的活动，是关于{$contextName}期刊的PayPal支付支持。此活动肯需要进一步调查或者人工干预。<br />\n<br />\n此电子邮件是由开放期刊系统的PayPal插件生成的。<br />\n<br />\n全部信息：<br />\n{$postInfo}<br />\n<br />\n附加信息（如果提供）：<br />\n{$additionalInfo}<br />\n<br />\n服务器增值经销商<br />\n{$serverVars}','这封电子邮件模板用于通知期刊主要联系人，PayPal插件碰到可疑活动或者活动需要人工支持。'),('PROOFREAD_ACK','fr_CA','Accusé de réception de la correction d\'épreuves','{$proofreaderName},<br />\n<br />\nNous vous remercions d\'avoir accepté de corriger les épreuves du manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Votre collaboration contribue grandement à la qualité de la revue.<br />\n<br />\n{$editorialContactSignature}','Ce courriel du Rédacteur de rubrique au Correcteur d\'épreuves confirme à ce dernier que le processus de la lecture d\'épreuves a été complété et le remercie de sa contribution.'),('PROOFREAD_AUTHOR_ACK','fr_CA','Accusé de réception de la correction d\'épreuves (Auteur)','{$authorName}:<br />\n<br />\nNous vous remercions d\'avoir accepté de corriger les épreuves de votre manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Nous sommes heureux de publier vos travaux dans notre revue.<br />\n<br />\nSi vous êtes inscrit à notre service d\'avis, vous recevrez par courriel la table des matières dès que votre article sera publié. Si vous avez des questions, n\'hésitez pas à communiquer avec nous.<br />\n<br />\n{$editorialContactSignature}','Ce courriel du Rédacteur de rubrique à l\'Auteur reconnaît que le processus de correction d\'épreuves initiale est terminé et le remercie de sa contribution.'),('PROOFREAD_AUTHOR_COMPLETE','fr_CA','Correction d\'épreuves terminée (Auteur)','{$editorialContactName},<br />\n<br />\nJ\'ai terminé la correction d\'épreuves du manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Les épreuves peuvent maintenant être relues par le correcteur d\'épreuves et le responsable de la mise en page.<br />\n<br />\n{$authorName}','Ce courriel de l\'Auteur au Correcteur d\'épreuves et au Rédacteur les avise que le cycle de correction d\'épreuves est terminé et que les détails peuvent être consultés dans les commentaires de l\'article.'),('PROOFREAD_AUTHOR_REQUEST','fr_CA','Demande de correction d\'épreuves (Auteur)','{$authorName}:<br />\n<br />\nNous aimerions que vous procédiez à la correction d\'épreuves du manuscrit intitulé « {$submissionTitle} » dans {$contextName}.<br />\n1. Cliquer sur l\'URL de la soumission ci-dessous.<br />\n2. Se connecter au site Web de la revue et afficher les INSTRUCTIONS POUR LA CORRECTION D\'ÉPREUVES<br />\n3. Cliquer sur AFFICHER LES ÉPREUVES dans la Mise en page et corriger les épreuves dans le (ou les) format(s) utilisé(s).<br />\n4. Saisir les corrections (typographiques et de mise en page) dans les Corrections d\'épreuves.<br />\n5. Enregistrer et envoyer par courriel les corrections au Responsable de la mise en page et au Correcteur d\'épreuves.<br />\n6. Envoyer le courriel TERMINÉ au rédacteur.<br />\n<br />\nURL du manuscrit : {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Ce courriel du Rédacteur de rubrique à l\'Auteur avise ce dernier que les épreuves de la soumission sont prêtes pour la correction d\'épreuves. Il fournit de l\'information sur la soumission et comment y accéder.'),('PROOFREAD_COMPLETE','fr_CA','Correction d\'épreuves terminée','{$editorialContactName}:<br />\n<br />\nJ\'ai terminé la correction d\'épreuves du manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Les corrections peuvent maintenant être insérées dans le texte par le Responsable de la mise en page.<br />\n<br />\n{$proofreaderName}','Ce courriel du Correcteur d\'épreuves au Rédacteur de rubrique avise ce dernier que le Correcteur d\'épreuves a fini le processus de correction d\'épreuves.'),('PROOFREAD_LAYOUT_ACK','fr_CA','Accusé de réception de la correction d\'épreuves (Responsable de la mise en page)','{$participantName}:<br />\n<br />\nNous vous remercions d\'avoir corrigé les épreuves du manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Votre contribution est importante pour la revue.<br />\n<br />\n{$editorialContactSignature}','Ce courriel du Rédacteur de rubrique au Responsable de la mise en page reconnaît l\'achèvement par ce dernier de l\'étape finale de la correction d\'épreuves et le remercie de sa contribution.'),('PROOFREAD_LAYOUT_COMPLETE','fr_CA','Correction d\'épreuves terminée (Responsable de la mise en page)','{$editorialContactName},<br />\n<br />\nLes corrections d\'épreuves ont été effectuées dans le manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Ce document est prêt à être publié.<br />\n<br />\n{$participantName}','Ce courriel  du Responsable de la mise en page au Rédacteur de rubrique avise ce dernier que l\'étape finale de correction d\'épreuves est terminé et que l\'article est maintenant prêt à être publié.'),('PROOFREAD_LAYOUT_REQUEST','fr_CA','Demande de correction d\'épreuves (Responsable de la mise en page)','{$participantName},<br />\n<br />\nNous aimerions que vous insériez les modifications nécessaires à la suite de la correction d\'épreuves du manuscrit intitulé « {$submissionTitle} » pour {$contextName} à l\'aide des étapes suivantes.<br />\n1. Cliquer sur l\'URL de la soumission ci-dessous.<br />\n2. Se connecter au site Web de la revue et consulter les corrections à apporter pour créer les épreuves corrigées.<br />\n3.Télécharger les épreuves corrigées.<br />\n4. Envoyer le courriel TERMINÉ de l\'Étape 3 de Correction d\'épreuves au rédacteur.<br />\n<br />\nURL de {$contextName} : {$contextUrl}<br />\nURL du manuscrit : {$submissionUrl}<br />\nNom d\'utilisateur : {$participantUsername}<br />\n<br />\nSi vous ne pouvez pas effectuer ce travail pour le moment ou si vous avez des questions, veuillez communiquer avec moi. Je vous remercie de votre collaboration.<br />\n<br />\n','Ce courriel venant du Rédacteur de rubrique au Responsable de la mise en page avise ce dernier que les épreuves sont prêtes pour une évaluation finale. Il contient de l\'information sur l\'article et comment y accéder.'),('PROOFREAD_REQUEST','fr_CA','Demande de correction d\'épreuves','{$authorName}:<br />\n<br />\nNous aimerions que vous procédiez à la correction d\'épreuves du manuscrit intitulé « {$submissionTitle} » dans {$contextName}.<br />\n1. Cliquer sur l\'URL de la soumission ci-dessous.<br />\n2. Se connecter au site Web de la revue et afficher les INSTRUCTIONS POUR LA CORRECTION D\'ÉPREUVES<br />\n3. Cliquer sur AFFICHER LES ÉPREUVES dans la Mise en page et corriger les épreuves dans le (ou les) format(s) utilisé(s).<br />\n4. Saisir les corrections (typographiques et de mise en page) dans les Corrections d\'épreuves.<br />\n5. Enregistrer et envoyer par courriel les corrections au Responsable de la mise en page et au Correcteur d\'épreuves.<br />\n6. Envoyer le courriel TERMINÉ au rédacteur.<br />\n<br />\nURL du manuscrit : {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Ce courriel du Rédacteur de rubrique au Correcteur d\'épreuves demande que ce dernier fasse la correction des épreuves de l\'article. Il fournit de l\'information sur l\'article, et comment y accéder.'),('PUBLISH_NOTIFY','en_US','New Issue Published','Readers:<br />\n<br />\n{$contextName} has just published its latest issue at {$contextUrl}. We invite you to review the Table of Contents here and then visit our web site to review articles and items of interest.<br />\n<br />\nThanks for the continuing interest in our work,<br />\n{$editorialContactSignature}','This email is sent to registered readers via the \"Notify Users\" link in the Editor\'s User Home. It notifies readers of a new issue and invites them to visit the journal at a supplied URL.'),('PUBLISH_NOTIFY','fr_CA','Parution du dernier numéro','Lecteurs:<br />\n<br />\nLe plus récent numéro de {$contextName} vient d\'être publié à l\'adresse suivante : {$contextUrl}. Nous vous invitons à consulter la table des matières, puis à visiter notre site Web pour y lire les articles qui vous intéressent.<br />\n<br />\nNous vous remercions de l\'intérêt que vous portez à notre revue,<br />\n{$editorialContactSignature}','Ce courriel est envoyé à tous les lecteurs inscrits, via le lien « Aviser les utilisateurs » sur la page d\'accueil du rédacteur. Il avise les lecteurs qu\'un nouveau numéro est publié et les invite à visiter la revue en cliquant sur le URL fourni.'),('REVIEWER_REGISTER','en_US','Registration as Reviewer with {$contextName}','In light of your expertise, we have taken the liberty of registering your name in the reviewer database for {$contextName}. This does not entail any form of commitment on your part, but simply enables us to approach you with a submission to possibly review. On being invited to review, you will have an opportunity to see the title and abstract of the paper in question, and you\'ll always be in a position to accept or decline the invitation. You can also ask at any point to have your name removed from this reviewer list.<br />\n<br />\nWe are providing you with a username and password, which is used in all interactions with the journal through its website. You may wish, for example, to update your profile, including your reviewing interests.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email is sent to a newly registered reviewer to welcome them to the system and provide them with a record of their username and password.'),('REVIEWER_REGISTER','fr_CA','Inscription en tant qu\'évaluateur de {$contextName}','Compte tenu de votre expertise, nous avons pris l\'initiative d\'inscrire votre nom dans la base de données des évaluateurs de {$contextName}. Cela ne vous engage d\'aucune façon, mais nous permet simplement de solliciter vos services pour l\'évaluation d\'une soumission. Si vous êtes invité à effectuer une évaluation, vous recevrez le titre et le résumé de l\'article en question, et serez toujours libre d\'accepter ou de refuser une telle invitation. À tout moment, il vous est également possible de demander à ce que votre nom soit retiré de la liste des évaluateurs.<br />\n<br />\nNous vous acheminons un nom d\'utilisateur et un mot de passe, car tous deux sont requis pour tout échange avec la revue, par l\'intermédiaire de ce site Web. Vous pouvez, par exemple, si vous le souhaitez, effectuer la mise à jour de votre profil, y compris vos intérêts en matière d\'évaluation.<br />\n<br />\nNom d\'utilisateur : {$username}<br />\nMot de passe : {$password}<br />\n<br />\nMerci,<br />\n{$principalContactSignature}','Ce courriel est envoyé à un évaluateur nouvellement inscrit, afin de l\'accueillir dans le système et lui offrir un enregistrement de son nom d\'utilisateur et mot de passe.'),('REVIEW_ACK','en_US','Article Review Acknowledgement','{$reviewerName}:<br />\n<br />\nThank you for completing the review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We appreciate your contribution to the quality of the work that we publish.<br />\n<br />\n','This email is sent by a Section Editor to confirm receipt of a completed review and thank the reviewer for their contributions.'),('REVIEW_ACK','fr_CA','Accusé de réception de l\'évaluation d\'une soumission','{$reviewerName}:<br />\n<br />\nNous vous remercions d\'avoir évalué la soumission intitulée « {$submissionTitle} » pour {$contextName}. Nous vous sommes reconnaissants de votre contribution à la qualité des travaux que nous publions.<br />\n<br />\n','Ce courriel est envoyé par le Rédacteur de rubrique, pour accuser réception d\'une évaluation terminée et remercier l\'évaluateur de sa contribution.'),('REVIEW_CANCEL','en_US','Request for Review Cancelled','{$reviewerName}:<br />\n<br />\nWe have decided at this point to cancel our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We apologize for any inconvenience this may cause you and hope that we will be able to call on you to assist with this journal\'s review process in the future.<br />\n<br />\nIf you have any questions, please contact me.<br />\n<br />\n','This email is sent by the Section Editor to a Reviewer who has a submission review in progress to notify them that the review has been cancelled.'),('REVIEW_CANCEL','fr_CA','Annulation de la demande d\'évaluation','{$reviewerName}:<br />\n<br />\nNous avons décidé d\'annuler notre demande concernant l\'évaluation du manuscrit intitulé « {$submissionTitle} » pour {$contextName}. Nous sommes désolés des inconvénients que cela pourrait vous causer et nous espérons que nous pourrons compter sur votre collaboration pour un autre projet.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec nous.<br />\n<br />\n','Ce courriel est envoyé par le Rédacteur de rubrique à un Évaluateur qui a une évaluation en cours, pour l\'aviser que celle-ci a été annulée.'),('REVIEW_CONFIRM','en_US','Able to Review','Editors:<br />\n<br />\nI am able and willing to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and I plan to have the review completed by its due date, {$reviewDueDate}, if not before.<br />\n<br />\n{$reviewerName}','This email is sent by a Reviewer to the Section Editor in response to a review request to notify the Section Editor that the review request has been accepted and will be completed by the specified date.'),('REVIEW_CONFIRM','fr_CA','Acceptation d\'évaluation','Rédacteur,\n<br />\nJe suis en mesure d\'évaluer la soumission intitulée « {$submissionTitle} » pour la revue {$contextName}. Je vous remercie d\'avoir pensé à moi. Je devrais être en mesure de compléter l\'évaluation pour la date du {$reviewDueDate}.<br />\n<br />\n{$reviewerName}','Ce courriel est envoyé par l\'évaluateur au rédacteur de rubrique en réponse à une demande d\'évaluation, pour aviser ce dernier que la demande a été acceptée et que l\'évaluation sera complétée au plus tard à la date spécifiée.'),('REVIEW_DECLINE','en_US','Unable to Review','Editors:<br />\n<br />\nI am afraid that at this time I am unable to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. Thank you for thinking of me, and another time feel free to call on me.<br />\n<br />\n{$reviewerName}','This email is sent by a Reviewer to the Section Editor in response to a review request to notify the Section Editor that the review request has been declined.'),('REVIEW_DECLINE','fr_CA','Refus d\'évaluation','Éditeurs:<br />\n<br />\nPour le moment, il m\'est impossible d\'évaluer la soumission intitulée « {$submissionTitle} » pour {$contextName}. Je vous remercie d\'avoir pensé à moi. N\'hésitez pas à communiquer avec moi pour un autre projet.<br />\n<br />\n{$reviewerName}','Ce courriel est envoyé par l\'évaluateur au rédacteur de rubrique en réponse à la demande d\'évaluation, pour aviser ce dernier qu\'il ne peut effectuer l\'évaluation.'),('REVIEW_REINSTATE','en_US','Request for Review Reinstated','{$reviewerName}:<br />\n<br />\nWe would like to reinstate our request for you to review the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We hope that you will be able to assist with this journal\'s review process.<br />\n<br />\nIf you have any questions, please contact me.','This email is sent by the Section Editor to a Reviewer who has a submission review in progress to notify them that a cancelled review has been reinstated.'),('REVIEW_REMIND','en_US','Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is sent by a Section Editor to remind a reviewer that their review is due.'),('REVIEW_REMIND','fr_CA','Rappel d\'évaluation d\'une soumission','{$reviewerName}:<br />\n<br />\nJuste un petit mot pour vous rappeler notre demande d\'évaluation de la soumission intitulée « {$submissionTitle} » pour {$contextName}. Nous espérions recevoir votre évaluation avant le {$reviewDueDate}, et nous serions heureux de la recevoir dès que possible.<br />\n<br />\nSi vous n\'avez pas de nom d\'utilisateur ni de mot de passe pour le site Web de la revue, cliquer sur le lien ci-dessous pour réinitialiser votre mot de passe (qui vous sera alors envoyé par courriel avec votre nom d\'utilisateur). {$passwordResetUrl}<br />\n<br />\nURL de la soumission : {$submissionReviewUrl}<br />\n<br />\nVeuillez confirmer que vous êtes en mesure d\'effectuer ce travail essentiel pour la publication de notre revue. Nous espérons avoir de vos nouvelles très bientôt.<br />\n<br />\n{$editorialContactSignature}','Ce courriel est envoyé par le Rédacteur de rubrique pour rappeler à un évaluateur que son évaluation est due.'),('REVIEW_REMIND_AUTO','en_US','Automated Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REMIND_AUTO','fr_CA','Rappel automatique d\'évaluation d\'une soumission','{$reviewerName},<br />\n<br />\nJuste un petit mot pour vous rappeler notre demande à propos de l\'évaluation de la soumission intitulée « {$submissionTitle} » pour {$contextName}. Nous espérions recevoir votre évaluation avant le {$reviewDueDate}. Ce courriel a été envoyé automatiquement parce que la date d\'échéance est passée. Nous serions quand même heureux de recevoir votre évaluation dès que possible.<br />\n<br />\nSi vous n\'avez pas de nom d\'utilisateur ni de mot de passe pour le site Web de la revue, cliquez sur le lien ci-dessous pour réinitialiser votre mot de passe (qui vous sera envoyé par courriel avec votre nom d\'utilisateur). {$passwordResetUrl}<br />\n<br />\nURL de la soumission : {$submissionReviewUrl}<br />\n<br />\nVeuillez confirmer que vous êtes en mesure d\'effectuer ce travail important pour notre revue. J\'espère avoir de vos nouvelles très bientôt.<br />\n<br />\n{$editorialContactSignature}','Ce courriel est envoyé automatiquement quand la date due d\'un évaluateur est dépassée. (Voir Options d\'évaluation à l\'Étape 2 de la Configuration de la revue) et que l\'accès en « un clic » est désactivé. Les tâches planifiées doivent être activées et configurées (voir le fichier de Configuration du site).'),('REVIEW_REMIND_AUTO_ONECLICK','en_US','Automated Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and this email has been automatically generated and sent with the passing of that date. We would still be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is automatically sent when a reviewer\'s due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REMIND_AUTO_ONECLICK','fr_CA','Rappel automatique d\'évaluation d\'une soumission','{$reviewerName}:<br />\n<br />\nJuste un petit mot au sujet de notre demande d\'évaluation de la soumission « {$submissionTitle} », pour {$contextName}. Nous espérions avoir cette évaluation avant le {$reviewDueDate}, et ce courriel vous a été envoyé automatiquement parce que la date d\'échéance est passée. Nous serions heureux de la recevoir dès qu\'il vous sera possible de nous l\'envoyer.<br />\n<br />\nL\'adresse URL de la soumission: {$submissionReviewUrl}<br />\n<br />\nS.V.P. veuillez nous confirmer votre disponibilité à compléter cette contribution importante à notre revue. Espérant recevoir de vos nouvelles bientôt.<br />\n<br />\n{$editorialContactSignature}','Ce courriel est envoyé automatiquement quand la date d\'échéance de l\'évaluation est dépassée (voir Options d\'évaluation à l\'Étape 2 de Configuration de la revue) et que l\'accès en « un clic » à un évaluateur est activé. Les Tâches planifiées doivent être activées et configurées (voir le fichier de configuration du site).'),('REVIEW_REMIND_ONECLICK','en_US','Submission Review Reminder','{$reviewerName}:<br />\n<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have this review by {$reviewDueDate}, and would be pleased to receive it as soon as you are able to prepare it.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nPlease confirm your ability to complete this vital contribution to the work of the journal. I look forward to hearing from you.<br />\n<br />\n{$editorialContactSignature}','This email is sent by a Section Editor to remind a reviewer that their review is due.'),('REVIEW_REMIND_ONECLICK','fr_CA','Rappel d\'évaluation d\'une soumission','{$reviewerName}:<br />\n<br />\nJuste un petit mot pour vous rappeler notre demande d\'évaluation de la soumission intitulée « {$submissionTitle} », pour {$contextName}. Nous espérions recevoir votre évaluation le {$reviewDueDate} et nous serions heureux de la recevoir aussitôt qu\'il vous sera possible de le faire.<br />\n<br />\nAdresse URL de la soumission: {$submissionReviewUrl}<br />\n<br />\nVeuillez confirmer si vous êtes en mesure de compléter ce travail essentiel pour la publication de la revue. Espérant avoir de vos nouvelles sous peu.<br />\n<br />\n{$editorialContactSignature}','Ce courriel est envoyé par le Rédacteur de rubrique à un évaluateur pour lui rappeler que son évaluation est due.'),('REVIEW_REQUEST','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; which has been submitted to {$contextName}. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_ATTACHED.)'),('REVIEW_REQUEST','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\n<br />\nNous croyons que vous seriez un excellent évaluateur pour le manuscrit intitulé « {$submissionTitle} » qui a été soumis à la revue {$contextName}. Vous trouverez un résumé de la soumission ci-dessous.  Nous espérons que vous accepterez ce travail essentiel à la publication de la revue.<br />\n<br />\nVeuillez accéder au site Web de la revue avant le {$responseDueDate} pour nous laisser savoir si vous acceptez de faire l\'évaluation ou non. Vous pouvez également y consulter la soumission et y enregistrer votre évaluation et votre recommandation. Le site Web se trouve à l\'adresse suivante : {$contextUrl}<br />\n<br />\nLa date d\'échéance de l\'évaluation a été fixée au {$reviewDueDate}.<br />\n<br />\nSi vous n\'avez pas de nom d\'utilisateur et de mot de passe pour le site Web de la revue, cliquez sur le lien ci-dessous pour réinitialiser votre mot de passe (qui vous sera envoyé par courriel avec votre nom d\'utilisateur). {$passwordResetUrl}<br />\n<br />\nURL de la soumission : {$submissionReviewUrl}<br />\n<br />\nEn espérant que vous accepterez notre demande, veuillez agréer l\'expression de notre considération distinguée.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n« {$submissionTitle} »<br />\n<br />\n{$submissionAbstract}','Ce courriel du Rédacteur de rubrique à un Évaluateur demande que l\'évaluateur accepte ou refuse la tâche d\'évaluation d\'une soumission. Il fournit de l\'information sur la soumission, tel son titre et un résumé, la date d\'échéance pour l\'évaluation, et comment accéder à la soumission elle-même. Ce message est utilisé quand « Processus d\'évaluation standard » est sélectionné à l\'Étape 2, dans la Configuration de la revue. (Autrement voir « Demande d\'évaluation », en pièce jointe).'),('REVIEW_REQUEST_ATTACHED','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; and I am asking that you consider undertaking this important task for us. The Review Guidelines for this journal are appended below, and the submission is attached to this email. Your review of the submission, along with your recommendation, should be emailed to me by {$reviewDueDate}.<br />\n<br />\nPlease indicate in a return email by {$responseDueDate} whether you are able and willing to do the review.<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nReview Guidelines<br />\n<br />\n{$reviewGuidelines}<br />\n','This email is sent by the Section Editor to a Reviewer to request that they accept or decline the task of reviewing a submission. It includes the submission as an attachment. This message is used when the Email-Attachment Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST.)'),('REVIEW_REQUEST_ATTACHED','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\n<br />\nNous croyons que vous feriez un excellent évaluateur pour le manuscrit intitulé « {$submissionTitle} ».  Nous espérons que vous accepterez ce travail important pour notre revue. Les Directives pour l\'évaluation se trouvent ci-dessous et la soumission est jointe au présent courriel.<br />\n<br />\nVeuillez nous faire savoir par courriel d\'ici le {$responseDueDate} si vous acceptez ou non d\'effectuer cette évaluation.<br />\n<br />\nEn espérant que vous accepterez notre demande, veuillez agréer l\'expression de notre considération distinguée.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nDirectives pour l\'évaluation<br />\n<br />\n{$reviewGuidelines}','Ce courriel est envoyé par le Rédacteur de rubrique à un Évaluateur pour lui demander s\'il accepte ou refuse la tâche d\'évaluation d\'une soumission. Il inclut la soumission en pièce jointe. Ce message est utilisé quand le processus de « Demande d\'évaluation par courriel » est sélectionné à l\'Étape 2 de la Configuration de la revue. (Autrement, voir « Demande d\'évaluation ».)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nThe Review Guidelines for this journal are appended below, and the submission is attached to this email. Your review of the submission, along with your recommendation, should be emailed to me by {$reviewDueDate}.<br />\n<br />\nPlease indicate in a return email by {$responseDueDate} whether you are able and willing to do the review.<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n<br />\nReview Guidelines<br />\n<br />\n{$reviewGuidelines}<br />\n','This email is sent by the Section Editor to a Reviewer to request that they accept or decline the task of reviewing a submission for a second or greater round of review. It includes the submission as an attachment. This message is used when the Email-Attachment Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ATTACHED_SUBSEQUENT','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\n<br />\nCeci concerne le manuscrit \"{$submissionTitle}\", qui est présentement  évalué par{$contextName}.<br />\n<br />\nSuivant l\'évaluation de la dernière version du manuscrit, l\'auteur a soumis une version révisé de son document. Nous apprécierions que vous évaluiez cette nouvelle version.<br />\n<br />\nLes critères d\'évaluation sont inclus plus bas (en suivant le l\'hyperlien) et la soumission en pièce attachée. Votre évaluation du manuscrit ainsi que vos recommandations doivent être envoyés par courriel avant le {$reviewDueDate}.<br />\n<br />\nIndiquez dans un courriel avant le {$responseDueDate} si vous voulez participer à l\'évaluation.<br />\n<br />\nMerci de considérer cette requête.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\nCritères pour l\'évaluation<br />\n<br />\n{$reviewGuidelines}<br />','Ce courriel de l\'éditeur de section à un réviseur demande que l\'évaluateur accepte ou refuse la tâche d\'examiner une soumission pour une deuxième fois ou plus. Il fournit des informations sur la soumission, comme le titre et le résumé, la date d\'échéance de l\'évaluation et la façon d\'accéder à la soumission elle-même. Ce message est utilisé lorsque le processus de révision avec pièce jointe est sélectionné dans Administration> Paramètres> Flux des travaux> Révision.(Autrement voir REVIEW_REQUEST_SUBSEQUENT.)'),('REVIEW_REQUEST_ONECLICK','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript, &quot;{$submissionTitle},&quot; which has been submitted to {$contextName}. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review, and one-click reviewer access is enabled.'),('REVIEW_REQUEST_ONECLICK','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\n<br />\nNous croyons que vous seriez un excellent évaluateur pour le manuscrit intitulé « {$submissionTitle} » qui a été soumis à la revue {$contextName}. Vous trouverez un résumé de la soumission ci-dessous.  Nous espérons que vous accepterez ce travail essentiel à la publication de la revue.<br />\n<br />\nVeuillez accéder au site Web de la revue avant le {$responseDueDate} pour nous informer si vous acceptez de faire l\'évaluation ou non. Vous pouvez également y consulter la soumission et y enregistrer votre évaluation et votre recommandation.< br />\n<br />\nDate limite pour l\'évaluation {$reviewDueDate}.<br />\n<br />\nURL de la soumission : {$submissionReviewUrl}.<br />\n<br />\nEn espérant que vous accepterez notre demande, veuillez agréer l\'expression de notre considération distinguée.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n« {$submissionTitle} »<br />\n<br />\n{$submissionAbstract}','Ce courriel du Rédacteur de rubrique à un Évaluateur demande que l\'évaluateur accepte ou décline la tâche d\'évaluation d\'une soumission. Il contient des informations sur la soumission tel que son titre et un résumé, la date d\'échéance pour faire l\'évaluation, et comment accéder à la soumission. Ce message est utilisé quand « Processus d\'évaluation standard » a été sélectionné à l\'Étape 2  de la Configuration de la revue, et que l\'accès en « un clic » de l\'évaluateur a été activé.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission for a second or greater round of review. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review, and one-click reviewer access is enabled.'),('REVIEW_REQUEST_ONECLICK_SUBSEQUENT','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\n<br />\nCeci concerne le manuscrit \"{$submissionTitle}\", qui est présentement  évalué par{$contextName}.<br />\n<br />\nSuivant l\'évaluation de la dernière version du manuscrit, l\'auteur a soumis une version révisé de son document. Nous apprécierions que vous évaluiez cette nouvelle version.<br />\n<br />\nVeuillez vous authentifier sur la page de la revue avant le {$responseDueDate} pour y indiquer si vous participerez à cette évaluation ou non, ou simplement indiquer les recommandations suivant votre évaluation.<br />\n<br />\nL\'évaluation est dû pour le  {$reviewDueDate}.<br />\n<br />\nHyperlien de la soumission: {$submissionReviewUrl}<br />\n<br />\nMerci de considérer cette requête.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Ce courriel de l\'éditeur de section à un réviseur demande que l\'examinateur accepte ou refuse la tâche d\'examiner une soumission pour une deuxième ou une plus grande série d\'examen. Il fournit des informations sur la soumission, comme le titre et l\'abrégé, la date d\'échéance de l\'examen et la façon d\'accéder à la soumission elle-même. Ce message est utilisé lorsque le processus de révision standard est sélectionné dans Administration> Paramètres> Flux des travaux> Révision et que l\'accès d\'un relecteur est activé.'),('REVIEW_REQUEST_REMIND_AUTO','en_US','Article Review Request','{$reviewerName}:<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is disabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REQUEST_REMIND_AUTO','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\nCeci est un rappel concernant notre demande d\'évaluation de &quot;{$submissionTitle},&quot; pour {$contextName}. Nous espérions recevoir une réponse avant le {$responseDueDate}. Ce courriel est envoyé automatiquement après dépassement du délais.\n<br />\nNous pensons que vous seriez un excellent évaluateur pour le manuscrit. Vous trouverez un résumé de la soumission en suivant l\'hyperlien plus bas.<br />\n<br />\nVeuillez vous authentifier sur la page de la revue avant le {$responseDueDate} pour y indiquer si vous participerez à cette évaluation ou non, ou simplement indiquer les recommandations suivant votre évaluation. Le site web est  {$contextUrl}<br />\n<br />\nL\'évaluation est dû pour le  {$reviewDueDate}.<br />\n<br />\nSi vous n\'avez pas votre identifiant pour le site de la revue, vous pouvez utiliser l\'hyperlien suivant pour entrer un nouveau mot de passe.\n{$passwordResetUrl}<br />\n<br />\nHyperlien de la soumission: {$submissionReviewUrl}<br />\n<br />\nMerci de considérer cette requête.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Ce courriel est automatiquement envoyé lorsque la date d\'échéance de confirmation d\'un évaluateur est écoulée (voir Options de révision sous Paramètres> Flux des travaux> Révision) et l\'accès de l\'évaluateur en un clic est désactivé. Les tâches planifiées doivent être activées et configurées (voir le fichier de configuration du site).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','en_US','Article Review Request','{$reviewerName}:<br />\nJust a gentle reminder of our request for your review of the submission, &quot;{$submissionTitle},&quot; for {$contextName}. We were hoping to have your response by {$responseDueDate}, and this email has been automatically generated and sent with the passing of that date.\n<br />\nI believe that you would serve as an excellent reviewer of the manuscript. The submission\'s abstract is inserted below, and I hope that you will consider undertaking this important task for us.<br />\n<br />\nPlease log into the journal web site to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation.<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email is automatically sent when a reviewer\'s confirmation due date elapses (see Review Options under Settings > Workflow > Review) and one-click reviewer access is enabled. Scheduled tasks must be enabled and configured (see the site configuration file).'),('REVIEW_REQUEST_REMIND_AUTO_ONECLICK','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\nCeci est un rappel concernant notre demande d\'évaluation de &quot;{$submissionTitle},&quot; pour {$contextName}. Nous espérions recevoir une réponse avant le {$responseDueDate}. Ce courriel est envoyé automatiquement après dépassement du délai.\n<br />\nNous pensons que vous seriez un excellent évaluateur pour le manuscrit. Vous trouverez un résumé de la soumission en suivant l\'hyperlien plus bas.<br />\n<br />\nNous vous remercions de bien vouloir vous authentifier sur la page de la revue en nous indiquant si vous participerez à cette évaluation ou non. Dans le cas d’une réponse positive, vous pourrez accéder à la soumission et enregistrer votre évaluatio net votre recommandation.<br />\n<br />\nL\'évaluation est dû pour le  {$reviewDueDate}.<br />\n<br />\nSi vous n\'avez pas votre identifiant pour le site de la revue, vous pouvez utiliser l\'hyperlien suivant pour entrer un nouveau mot de passe.\n{$passwordResetUrl}<br />\n<br />\nHyperlien de la soumission: {$submissionReviewUrl}<br />\n<br />\nMerci de considérer cette demande.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Ce courriel est automatiquement envoyé lorsque la date d\'échéance de confirmation d\'un évaluateur est écoulée (voir Options de révision sous Paramètres> Flux des travaux> Révision) et l\'accès de l\'évaluateur en un clic est activé. Les tâches planifiées doivent être configurées et activées (voir le fichier de configuration du site).'),('REVIEW_REQUEST_SUBSEQUENT','en_US','Article Review Request','{$reviewerName}:<br />\n<br />\nThis regards the manuscript &quot;{$submissionTitle},&quot; which is under consideration by {$contextName}.<br />\n<br />\nFollowing the review of the previous version of the manuscript, the authors have now submitted a revised version of their paper. We would appreciate it if you could help evaluate it.<br />\n<br />\nPlease log into the journal web site by {$responseDueDate} to indicate whether you will undertake the review or not, as well as to access the submission and to record your review and recommendation. The web site is {$contextUrl}<br />\n<br />\nThe review itself is due {$reviewDueDate}.<br />\n<br />\nIf you do not have your username and password for the journal\'s web site, you can use this link to reset your password (which will then be emailed to you along with your username). {$passwordResetUrl}<br />\n<br />\nSubmission URL: {$submissionReviewUrl}<br />\n<br />\nThank you for considering this request.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','This email from the Section Editor to a Reviewer requests that the reviewer accept or decline the task of reviewing a submission for a second or greater round of review. It provides information about the submission such as the title and abstract, a review due date, and how to access the submission itself. This message is used when the Standard Review Process is selected in Management > Settings > Workflow > Review. (Otherwise see REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVIEW_REQUEST_SUBSEQUENT','fr_CA','Demande d\'évaluation d\'un article','{$reviewerName}:<br />\n<br />\nCeci concerne le manuscrit \"{$submissionTitle}\", qui est présentement  évalué par{$contextName}.<br />\n<br />\nSuivant l\'évaluation de la dernière version, l\'auteur a soumis une version révisée de son document. Nous apprécierions que vous évaluiez cette nouvelle version.<br />\n<br />\nVeuillez vous authentifier sur la page de la revue avant le {$responseDueDate} pour y indiquer si vous participerez à cette évaluation ou non. Vous pourrez aussi y indiquer les recommandations de votre évaluation, si vous acceptez de participer.<br />\n<br />\nL\'évaluation est due pour le  {$reviewDueDate}.<br />\n<br />\nHyperlien de la soumission: {$submissionReviewUrl}<br />\n<br />\nMerci de considérer cette demande.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n&quot;{$submissionTitle}&quot;<br />\n<br />\n{$submissionAbstract}','Ce courriel de l\'éditeur de section à un réviseur demande que l\'évaluateur accepte ou refuse la tâche d\'examiner une soumission pour une deuxième fois ou plus. Il fournit des informations sur la soumission, comme le titre et le résumé, la date d\'échéance de l\'examen et la façon d\'accéder à la soumission elle-même. Ce message est utilisé lorsque le processus de révision standard est sélectionné dans Administration> Paramètres> Flux des travaux> Révision et que l\'accès d\'un relecteur est activé. (Autrement voir REVIEW_REQUEST_ATTACHED_SUBSEQUENT.)'),('REVISED_VERSION_NOTIFY','en_US','Revised Version Uploaded','Editors:<br />\n<br />\nA revised version of &quot;{$submissionTitle}&quot; has been uploaded by the author {$authorName}.<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','This email is automatically sent to the assigned editor when author uploads a revised version of an article.'),('REVISED_VERSION_NOTIFY','fr_CA','Version révisée téléversée','Rédacteur,<br />\n<br />\nUne version révisée de &quot;{$submissionTitle}&quot; a été téléversée par {$authorName}.<br />\n<br />\nURL de la soumission: {$submissionUrl}<br />\n<br />\n{$editorialContactSignature}','Ce courriel est envoyé automatiquement au rédacteur attribué quand un auteur téléverse une version révisée d\'un article.'),('STATISTICS_REPORT_NOTIFICATION','en_US','Editorial activity for {$month}, {$year}','{$name}, <br />\n<br />\nYour journal health report for {$month}, {$year} is now available. Your key stats for this month are below.<br />\n<ul>\n	<li>New submissions this month: {$newSubmissions}</li>\n	<li>Declined submissions this month: {$declinedSubmissions}</li>\n	<li>Accepted submissions this month: {$acceptedSubmissions}</li>\n	<li>Total submissions in the system: {$totalSubmissions}</li>\n</ul>\nLogin to the the journal to view more detailed <a href=\"{$editorialStatsLink}\">editorial trends</a> and <a href=\"{$publicationStatsLink}\">published article stats</a>. A full copy of this month\'s editorial trends is attached.<br />\n<br />\nSincerely,<br />\n{$principalContactSignature}','This email is automatically sent monthly to editors and journal managers to provide them a system health overview.'),('SUBMISSION_ACK','en_US','Submission Acknowledgement','{$authorName}:<br />\n<br />\nThank you for submitting the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. With the online journal management system that we are using, you will be able to track its progress through the editorial process by logging in to the journal web site:<br />\n<br />\nSubmission URL: {$submissionUrl}<br />\nUsername: {$authorUsername}<br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\n{$editorialContactSignature}','This email, when enabled, is automatically sent to an author when he or she completes the process of submitting a manuscript to the journal. It provides information about tracking the submission through the process and thanks the author for the submission.'),('SUBMISSION_ACK','fr_CA','Accusé de réception de la soumission','{$authorName}:<br />\n<br />\nNous vous remercions d\'avoir soumis le manuscrit intitulé « {$submissionTitle} » à la revue {$contextName}. Grâce à notre système de gestion en ligne, vous pourrez suivre votre soumission tout au long du processus d\'édition simplement en accédant au site Web de la revue.<br />\n<br />\nURL du manuscrit : {$submissionUrl}<br />\nNom d\'utilisateur : {$authorUsername}<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec nous. Nous vous remercions d\'avoir pensé à notre revue pour la publication de vos travaux.<br />\n<br />\n{$editorialContactSignature}','Ce courriel, lorsqu\'activé, est envoyé automatiquement à un auteur quand il ou elle a complété le processus de soumission d\'un manuscrit à la revue. Il fournit les informations sur comment suivre la soumission à travers le processus éditorial, et remercie l\'auteur de sa soumission.'),('SUBMISSION_ACK_NOT_USER','en_US','Submission Acknowledgement','Hello,<br />\n<br />\n{$submitterName} has submitted the manuscript, &quot;{$submissionTitle}&quot; to {$contextName}. <br />\n<br />\nIf you have any questions, please contact me. Thank you for considering this journal as a venue for your work.<br />\n<br />\n{$editorialContactSignature}','This email, when enabled, is automatically sent to the other authors who are not users within OJS specified during the submission process.'),('SUBMISSION_ACK_NOT_USER','fr_CA','Accusé de réception de la soumission','Bonjour,<br />\n<br />\nLe manuscrit intitulé , &quot;{$submissionTitle}&quot;, a été soumis par {$submitterName} à {$contextName}.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec nous. Nous vous remercions d\'avoir pensé à {$contextName} pour la publication de vos travaux.<br />\n<br />\n{$editorialContactSignature}','Ce courriel, lorsque activé, est envoyé automatiquement aux autres auteurs, i.e. ceux qui ne sont pas l\'utilisateur enregistré faisant la soumission.'),('SUBMISSION_COMMENT','fr_CA','Commentaires sur une soumission','{$name}:<br />\n<br />\n{$commentName} a ajouté un commentaire à la soumission intitulée « {$submissionTitle} » dans la revue {$contextName}:<br />\n<br />\n{$comments}','Ce courriel avise plusieurs personnes impliquées dans le processus éditorial qu\'un nouveau commentaire a été ajouté.'),('SUBMISSION_DECISION_REVIEWERS','fr_CA','Décision concernant le manuscrit intitulé « {$submissionTitle} »','Puisque vous avez été l\'un des évaluateurs de la soumission intitulé « {$submissionTitle} » pour la revue {$contextName}, nous vous faisons parvenir les évaluations et la décision du rédacteur.  À nouveau, nous vous remercions pour votre contribution importante à notre processus éditorial.<br />\n<br />\n{$editorialContactSignature}<br />\n<br />\n{$comments}','Ce courriel avise les évaluateurs d\'une soumission que le processus d\'évaluation est complété. Il inclut de l\'information au sujet de l\'article et de la décision prise, et remercie les évaluateurs de leur contribution.'),('SUBSCRIPTION_AFTER_EXPIRY','en_US','Subscription Expired','{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription has expired.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a subscriber that their subscription has expired. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_AFTER_EXPIRY','fr_CA','Abonnement expiré','{$subscriberName}:<br />\n<br />\nVotre abonnement à la revue {$contextName} est expiré.<br />\n<br />\n{$subscriptionType}<br />\nDate d\'expiration: {$expiryDate}<br />\n<br />\nPour renouveler votre abonnement, veuillez aller sur le site Web de la revue. Vous pouvez y ouvrir une session en utilisant votre nom d\'utilisateur, &quot;{$username}&quot;.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec moi.<br />\n<br />\n{$subscriptionContactSignature}','Ce courriel avise un abonné que son abonnement est expiré. Il fournit l\'adresse URL de la revue, ainsi que les instructions pour y accéder.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','en_US','Subscription Expired - Final Reminder','{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription has expired.<br />\nPlease note that this is the final reminder that will be emailed to you.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo renew your subscription, please go to the journal website. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a subscriber that their subscription has expired. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_AFTER_EXPIRY_LAST','fr_CA','Abonnement expiré - Dernier rappel','{$subscriberName}:<br />\n<br />\nVotre abonnement à la revue {$contextName} est expiré. Veuillez prendre note que ceci est le dernier rappel qui vous sera envoyé.<br />\n<br />\n{$subscriptionType}<br />\nDate d\'expiration: {$expiryDate}<br />\n<br />\nPour renouveller votre abonnement, aller sur le site Web de la revue. Vous pouvez y ouvrir une session avec votre nom d\'utilisateur, &quot;{$username}&quot;.<br />\n<br />\nSi vous avez des questions, ne hésitez pas à communiquer avec moi.<br />\n<br />\n{$subscriptionContactSignature}','Ce courriel avise un abonné que son abonnement est expiré. Il donne l\'adresse URL de la revue ainsi que les instructions pour y accéder.'),('SUBSCRIPTION_BEFORE_EXPIRY','en_US','Notice of Subscription Expiry','{$subscriberName}:<br />\n<br />\nYour {$contextName} subscription is about to expire.<br />\n<br />\n{$subscriptionType}<br />\nExpiry date: {$expiryDate}<br />\n<br />\nTo ensure the continuity of your access to this journal, please go to the journal website and renew your subscription. You are able to log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a subscriber that their subscription will soon expire. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_BEFORE_EXPIRY','fr_CA','Rappel de l\'expiration de l\'abonnement','{$subscriberName}:<br />\n<br />\nVotre abonnement à {$contextName} expirera bientôt.<br />\n<br />\n{$subscriptionType}<br />\nDate d\'expiration: {$expiryDate}<br />\n<br />\nAfin d\'assurer la continuité de votre accès à cette revue, nous vous prions d\'aller sur le site Web de la revue et de renouveler votre abonnement. Vous pouvez vous y ouvrir une session avec votre nom d\'utilisateur, &quot;{$username}&quot;.<br />\n<br />\nSi vous avez des questions, ne pas hésiter à communiquer avec moi.<br />\n<br />\n{$subscriptionContactSignature}','Ce courriel avise un abonné que son abonnement expiera sous peu. Il fournit l\'adresse URL de la revue, ainsi que les instructions pour y accéder.'),('SUBSCRIPTION_NOTIFY','en_US','Subscription Notification','{$subscriberName}:<br />\n<br />\nYou have now been registered as a subscriber in our online journal management system for {$contextName}, with the following subscription:<br />\n<br />\n{$subscriptionType}<br />\n<br />\nTo access content that is available only to subscribers, simply log in to the system with your username, &quot;{$username}&quot;.<br />\n<br />\nOnce you have logged in to the system you can change your profile details and password at any point.<br />\n<br />\nPlease note that if you have an institutional subscription, there is no need for users at your institution to log in, since requests for subscription content will be automatically authenticated by the system.<br />\n<br />\nIf you have any questions, please feel free to contact me.<br />\n<br />\n{$subscriptionContactSignature}','This email notifies a registered reader that the Manager has created a subscription for them. It provides the journal\'s URL along with instructions for access.'),('SUBSCRIPTION_NOTIFY','fr_CA','Avis d\'abonnement','{$subscriberName},<br />\n<br />\nVous êtes maintenant abonné à notre système de gestion en ligne pour {$contextName}, avec le type d\'abonnement suivant :<br />\n<br />\n{$subscriptionType}<br />\n<br />\nPour accéder au contenu destiné seulement aux abonnés, entrez dans le système à l\'aide de votre nom d\'utilisateur : {$username}.<br />\n<br />\nUne fois dans le système, vous pouvez modifier les détails de votre profil et votre mot de passe en tout temps.<br />\n<br />\nVeuillez prendre note que si vous disposez d\'un abonnement institutionnel, les utilisateurs n\'ont pas à entrer de nom d\'utilisateur puisque le système authentifiera automatiquement les demandes.<br />\n<br />\nSi vous avez des questions, n\'hésitez pas à communiquer avec moi.<br />\n<br />\n{$subscriptionContactSignature}','Ce courriel avise un lecteur inscrit que le directeur de la revue a créé un abonnement pour lui. Il fournit l\'adresse URL de la revue ainsi que les instructions pour y accéder.'),('SUBSCRIPTION_PURCHASE_INDL','en_US','Subscription Purchase: Individual','An individual subscription has been purchased online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an individual subscription has been purchased online. It provides summary information about the subscription and a quick access link to the purchased subscription.'),('SUBSCRIPTION_PURCHASE_INDL','fr_CA','Souscription à un abonnement: Individuel','Souscription en ligne à un abonnement individuel pour {$contextName} avec les détails suivants :<br />\n<br />\nType d\'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nUtilisateur :<br />\n{$userDetails}<br />\n<br />\nInformation d\'adhésion (si fournie):<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivante.<br />\n<br />\nURL d\'abonnement: {$subscriptionUrl}',NULL),('SUBSCRIPTION_PURCHASE_INSTL','en_US','Subscription Purchase: Institutional','An institutional subscription has been purchased online for {$contextName} with the following details. To activate this subscription, please use the provided Subscription URL and set the subscription status to \'Active\'.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an institutional subscription has been purchased online. It provides summary information about the subscription and a quick access link to the purchased subscription.'),('SUBSCRIPTION_PURCHASE_INSTL','fr_CA','Souscription à un abonnement: Institutionnel','Souscription en ligne à un abonnement institutionnel pour {$contextName} avec les informations suivantes. Pour activer cet abonnement, veuillez utiliser l\'URL d\'abonnement fourni et fixer le statut de l\'abonnement à \'Actif\'.<br />\n<br />\nType d\'abonnement:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomaine (si fourni):<br />\n{$domain}<br />\n<br />\nIntervalle d\'adresses IP (si fourni):<br />\n{$ipRanges}<br />\n<br />\nPersonne contact:<br />\n{$userDetails}<br />\n<br />\nInformation d\'adhésion (si fourni):<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivant :<br />\n<br />\nURL de l\'abonnement : {$subscriptionUrl}',NULL),('SUBSCRIPTION_RENEW_INDL','en_US','Subscription Renewal: Individual','An individual subscription has been renewed online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nUser:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an individual subscription has been renewed online. It provides summary information about the subscription and a quick access link to the renewed subscription.'),('SUBSCRIPTION_RENEW_INDL','fr_CA','Renouvellement d\'abonnement : Individuel','Un abonnement individuel a été renouvelé en ligne pour {$contextName} avec les détails suivants.<br />\n<br />\nType d\'abonnement :<br />\n{$subscriptionType}<br />\n<br />\nUtilisateur :<br />\n{$userDetails}<br />\n<br />\nInformation d\'adhésion (si fourni):<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivant.<br />\n<br />\nURL de l\'abonnement : {$subscriptionUrl}',NULL),('SUBSCRIPTION_RENEW_INSTL','en_US','Subscription Renewal: Institutional','An institutional subscription has been renewed online for {$contextName} with the following details.<br />\n<br />\nSubscription Type:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomain (if provided):<br />\n{$domain}<br />\n<br />\nIP Ranges (if provided):<br />\n{$ipRanges}<br />\n<br />\nContact Person:<br />\n{$userDetails}<br />\n<br />\nMembership Information (if provided):<br />\n{$membership}<br />\n<br />\nTo view or edit this subscription, please use the following URL.<br />\n<br />\nSubscription URL: {$subscriptionUrl}<br />\n','This email notifies the Subscription Manager that an institutional subscription has been renewed online. It provides summary information about the subscription and a quick access link to the renewed subscription.'),('SUBSCRIPTION_RENEW_INSTL','fr_CA','Renouvellement d\'abonnement : Institutionnel','Un abonnement institutionnel a été renouvelé en ligne pour {$contextName} avec les informations suivantes.<br />\n<br />\nType d\'abonnement:<br />\n{$subscriptionType}<br />\n<br />\nInstitution:<br />\n{$institutionName}<br />\n{$institutionMailingAddress}<br />\n<br />\nDomaine (si fourni):<br />\n{$domain}<br />\n<br />\nIntervalle d\'adresses IP (si fourni):<br />\n{$ipRanges}<br />\n<br />\nPersonne contact:<br />\n{$userDetails}<br />\n<br />\nInformation d\'adhésion (si fourni):<br />\n{$membership}<br />\n<br />\nPour afficher ou modifier cet abonnement, veuillez utiliser l\'URL suivant.<br />\n<br />\nURL de l\'abonnement : {$subscriptionUrl}',NULL),('SWORD_DEPOSIT_NOTIFICATION','ar_IQ','إشعار إيداع','تهانينا الحارة على قبول طلبك لنشر مؤلفك الموسوم \"{$articleTitle}\" في مجلة {$journalName}. إن رغبتك في ذلك، بإمكانك اختيار الإيداع الآلي لطلبك في واحد أو أكثر من المستودعات.\n\nإذهب إلى {$swordDepositUrl} للمتابعة.\n\nهذه الرسالة يولدها نظام المجلات المفتوحة مستعملاً إضافة الإيداع SWORD.','قالب الرسالة هذا يُستعمل لإشعار المؤلف بمواضع الإيداع الاختيارية التي تقدمها إضافة الإيداع SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','ca_ES','Notificació de dipòsit','Enhorabona per l\'acceptació de la teva presentació, \"($ articleTitle)\", per a ser publicada a {$journalName}. Si ho desitges, pot dipositar de forma automàtica la teva presentació a un o varis repositoris.\n\nVagi a {$swordDepositUrl} per a continuar.\n\nAquest correu electrònic ha estat generat per Open Journal Systems\' - Mòdul SWORD de dipòsits.','Aquesta plantilla de correu s\'utilitza per a notificar a l\'autor de qüestions opcionals en dipòsits de tipus SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','cs_CZ','Upozornění o uložení','Gratulujeme k přijetí vašeho příspěvku \"{$articleTitle}\" k publikaci v časopisu {$journalName}. Pokud se rozhodnete, můžete článek automaticky uložit do jednoho či více repozitářů.\n\nJděte na {$swordDepositUrl} pro toto uložení.\n\nTento e-mail byl automaticky vygenerovaný pomocí pluginu Open Journal Systems\' SWORD.','Tato šablona emailu je používána na upozornění autora na možnost uložení článku v jednotlivých repozitářích SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','da_DK','Deponeringsmeddelelse','Tillykke med, at dit bidrag \"{$articleTitle}\" er blevet accepteret til udgivelse i {$journalName}. Hvis du ønsker det, kan du automatisk deponere dit bidrag på et eller flere lagringssteder.\n\nGå til {$swordDepositUrl} for at fortsætte.\n\nDenne e-mail blev genereret af SWORD-deponerings-plugin i Open Journal Systems.','Denne e-mail-skabelon anvendes til at underrette en forfatter om deponeringssteder til valgfri SWORD-deponeringer.'),('SWORD_DEPOSIT_NOTIFICATION','de_DE','Archivierungsbenachrichtigung','Herzlichen Glückwunsch zur Annahme Ihres Beitrags \"{$articleTitle}\" zur Veröffentlichung in {$journalName}. Wenn Sie möchten, können Sie Ihren Beitrag automatisch in einem oder mehreren Repositorien archivieren.\n\nFahren Sie unter {$swordDepositUrl} fort.\n\nDiese E-Mail wurde durch das SWORD-Archivierungs-Plug-In für Open Journal Systems erzeugt.','Diese E-Mail-Vorlage wird benutzt, um eine/n Autor/in über optionale Archivierungsorte für SWORD-Archivierungen zu informieren.'),('SWORD_DEPOSIT_NOTIFICATION','en_US','Deposit Notification','Congratulations on the acceptance of your submission, \"{$articleTitle}\", for publication in {$journalName}. If you choose, you may automatically deposit your submission in one or more repositories.\n\nGo to {$swordDepositUrl} to proceed.\n\nThis email was generated by Open Journal Systems\' SWORD deposit plugin.','This email template is used to notify an author of optional deposit points for SWORD deposits.'),('SWORD_DEPOSIT_NOTIFICATION','es_ES','Notificación de depósito','Enhorabuena por la aceptación del envío, \"{$articleTitle}\", para que se publique en {$journalName}. Si así lo desea, puede depositar automáticamente el envío en uno o más repositorios. \n\nPara proceder, vaya a {$swordDepositUrl}.\n\nEl módulo de depósito SWORD del Open Journal Systems generó este correo electrónico.','Se utiliza esta plantilla de correo electrónico para notificar a un autor/a de los puntos de depósito opcionales para depósitos SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','eu_ES','Gordailuari buruzko jakinarazpena','Zorionak zure aurkezpena, \"{$articleTitle}, {$journalName} aldizkarian argitaratzeko onartu delako. Nahi izanez gero, zure aurkezpena automatikoki jar dezakezu gordailu batean edo gehiagotan.\n\nHorretarako, joan zaitez hona: {$swordDepositUrl}.\n\nMezu elektroniko hau Open Journal System-en SWORD gordailuaren pluginak sortu du.','Mezu elektronikoaren eredu hau egileei SWORD gordailuetan aurkezpenak gorde ahal izateko hainbat puntu aukeratu daitezkeela jakinarazteko erabiltzen da.'),('SWORD_DEPOSIT_NOTIFICATION','fa_IR','مطلع ساختن از دپوزیت','با خوشوقتی به اطلاع می رشاند که دپوزیت مقاله شما, \"{$articleTitle}\", برای چاپ در مجله {$journalName} مورد قبول واقع شد. در صورت تمایل می توانید نسبت به دپوزیت مقاله خود در بیش از یک مخزن نیز اقدام کنید..\n\nبرای ادامه به  {$swordDepositUrl} بروید.\n\nاین ایمیل توسط افزونه دپوزیت سورد مربوط به سیستم های مجله آزاد تولید شده است',''),('SWORD_DEPOSIT_NOTIFICATION','fr_CA','Avis de dépôt','Félicitations pour l\'acceptation de votre soumission, \"{$articleTitle}\", pour publication dans la revue {$journalName}. Si vous le souhaitez, vous pouvez déposer automatiquement votre soumission dans un ou plusieurs de nos services d\'archivage.\n\nAllez à {$swordDepositUrl} afin de procéder.\n\nCe courriel a été généré par le plugiciel de dépôt SWORD du Open Journal Systems.','Ce modèle de courriel est utilisé pour avertir un auteur qu\'il peut déposer s\'il le désire sa soumission dans SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','fr_FR','Avis de dépôt','Félicitations pour l\'acceptation de votre soumission, \"{$articleTitle}\", pour publication dans la revue {$journalName}. Si vous le souhaitez, vous pouvez déposer automatiquement votre soumission dans un ou plusieurs de nos services d\'archivage.\n\nAllez à {$swordDepositUrl} afin de procéder.\n\nCe courriel a été généré par le plugiciel de dépôt SWORD du Open Journal Systems.','Ce modèle de courriel est utilisé pour avertir un auteur qu\'il peut déposer s\'il le désire sa soumission dans SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','id_ID','Notifikasi Deposit','Selamat atas diterimanya naskah Anda, \"{$articleTitle}\", untuk penerbitan di  {$journalName}. Jika Anda memilih, Anda boleh secara otomatis menyimpan naskah Anda di satu repositori atau lebih.  \n\nPergi ke {$swordDepositUrl} untuk melanjutkan.\n\nEmail ini dihasilkan oleh Plugin deposit SWORD Open Journal System.','Template email ini digunakan untuk memberitahu penulis poin deposit opsional untuk SWORD deposits.'),('SWORD_DEPOSIT_NOTIFICATION','it_IT','Notifica di deposito','Congratulazioni per l\'accettazione della tua proposta \"{$articleTitle}\" per la pubblicazione in {$journalName}. \n\nSe vuoi, puoi depositare automaticamente la tua submission in uno o più archivi.\n\nVai all\'indirizzo {$swordDepositUrl} per proseguire.\n\nQuesta email è generara atumaticamentee da Open Journal Systems\' SWORD deposit plugin.',''),('SWORD_DEPOSIT_NOTIFICATION','nl_NL','Bericht van opname','Gefeliciteerd met de acceptatie van uw inzending, \"{$articleTitle}\", voor publicatie in {$journalName}. Als u wilt, kunt u uw inzending automatisch opnemen in één of meer repositories.\n\nGa daarvoor naar {$swordDepositUrl}.\n\nDeze e-mail is gegenereerd door de SWORD deposit plugin van Open Journal Systems.','Dit e-mail sjabloon wordt gebruikt om een auteur te in te lichten over de mogelijkheid om met SWORD in te zenden naar repositories'),('SWORD_DEPOSIT_NOTIFICATION','pt_BR','Notificação de depósito em repositório SWORD','Parabéns pela aceitação de publicação de sua submissão \"{$articleTitle}\", na revista {$journalName}. \nCaso deseje, pode depositar automaticamente esta submissão em um ou mais repositórios.\n\nAcesse {$swordDepositUrl} para proceder.\n\nEsta é uma mensagem automática da ferramenta de Depósito SWORD do Open Journal Systems.','Mensagem de notificação ao autor, de pontos de depósito opcional para repositórios SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','pt_PT','Notificação de Depósito','Congratulações pela aceitação da sua submissão, \"{$articleTitle}\", para publicação em {$journalName}. Pode optar por depositar automaticamente a sua submissão num ou mais repositórios.\n\nIr a {$swordDepositUrl} para prosseguir.\n\nEste email foi gerado pelo plugin de depósito SWORD do Open Journal System.','Este modelo de email template é usado para notificar o autor sobre os pontos de depósitos opcionais do SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','ru_RU','Уведомление о передаче на хранение','Поздравляем Вас с принятием вашего материала «{$articleTitle}» для публикации в журнале «{$journalName}». Если вы выберите, то можете автоматически передать ваш материал на хранение в один или несколько репозиториев.\n\nДля продолжения перейдите по адресу {$swordDepositUrl}.\n\nЭто письмо было сгенерировано плагином передачи на хранение «SWORD» Open Journal Systems.','Этот шаблон письма используется для уведомления автора о возможных точках хранения для передачи по протоколу SWORD.'),('SWORD_DEPOSIT_NOTIFICATION','uk_UA','Повідомлення про депонування','Поздоровляємо з прийняттям Вашого подання \"{$articleTitle}\" до публікації у журналі {$journalName}. За бажанням, Ви можете автоматично депонувати Ваше подання у одне або кілька сховищ відкритого доступу.\n\nЩоб зробити це, натисніть {$swordDepositUrl}.\n\nЦей лист був генерований модулем депонування SWORD системи Open Journal Systems.','Цей шаблон листа використовується для повідомлення автору про можливість депонування роботи у SWORD-сумісні сховища.'),('SWORD_DEPOSIT_NOTIFICATION','zh_CN','存入通知','恭喜您的文章\"{$articleTitle}\"已经被 {$journalName}录取。您可以选择这篇稿件自动存入一个或者多个仓储。\n\n进入{$swordDepositUrl}继续。\n\n这个邮件由Open Journal Systems\' 的SWORD deposit 插件自动生成。','本邮件模板用于通知作者关于SWORD存储的存入点选择'),('USER_REGISTER','en_US','Journal Registration','{$userFullName}<br />\n<br />\nYou have now been registered as a user with {$contextName}. We have included your username and password in this email, which are needed for all work with this journal through its website. At any point, you can ask to be removed from the journal\'s list of users by contacting me.<br />\n<br />\nUsername: {$username}<br />\nPassword: {$password}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email is sent to a newly registered user to welcome them to the system and provide them with a record of their username and password.'),('USER_REGISTER','fr_CA','Inscription d\'un nouvel utilisateur','{$userFullName}<br />\n<br />\nVous êtes désormais inscrit en tant qu\'utilisateur pour {$contextName}. Veuillez conserver précieusement votre nom d\'utilisateur et votre mot de passe.  Vous en aurez besoin pour toutes vos interactions avec la revue. À n\'importe quel moment, vous pouvez demander à être retiré de la liste des utilisateurs de la revue en me contactant.<br />\n<br />\nNom d\'utilisateur : {$username}<br />\nMot de passe : {$password}<br />\n<br />\nMerci,<br />\n{$principalContactSignature}','Ce courriel est envoyé aux utilisateurs nouvellement inscrits pour leur souhaiter la bienvenue à la revue et leur faire connaître leur nom d\'utilisateur et leur mot de passe.'),('USER_VALIDATE','en_US','Validate Your Account','{$userFullName}<br />\n<br />\nYou have created an account with {$contextName}, but before you can start using it, you need to validate your email account. To do this, simply follow the link below:<br />\n<br />\n{$activateUrl}<br />\n<br />\nThank you,<br />\n{$principalContactSignature}','This email is sent to a newly registered user to validate their email account.'),('USER_VALIDATE','fr_CA','Valider votre compte','{$userFullName}<br />\n<br />\nVous avez créé un compte avec {$contextName}, mais avant de pouvoir commencer à l\'utiliser, vous devez valider votre compte de courriel. Pour ce faire, suivre simplement le lien ci-dessous :<br />\n<br />\n{$activateUrl}<br />\n<br />\nMerci,<br />\n{$principalContactSignature}','Ce courriel est envoyé à un utilisateur nouvellement inscrit, afin de l\'accueillir dans le système et lui offrir un enregistrement de son nom d\'utilisateur et de son mot de passe.');
/*!40000 ALTER TABLE `email_templates_default_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates_settings`
--

DROP TABLE IF EXISTS `email_templates_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates_settings` (
  `email_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  PRIMARY KEY (`email_id`,`locale`,`setting_name`),
  UNIQUE KEY `email_settings_pkey` (`email_id`,`locale`,`setting_name`),
  KEY `email_settings_email_id` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates_settings`
--

LOCK TABLES `email_templates_settings` WRITE;
/*!40000 ALTER TABLE `email_templates_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_log`
--

DROP TABLE IF EXISTS `event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_logged` datetime NOT NULL,
  `event_type` bigint(20) DEFAULT NULL,
  `message` text,
  `is_translated` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `event_log_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_log`
--

LOCK TABLES `event_log` WRITE;
/*!40000 ALTER TABLE `event_log` DISABLE KEYS */;
INSERT INTO `event_log` VALUES (1,515,1,17,'2019-02-28 21:00:20',1342177281,'submission.event.fileUploaded',0),(2,1048585,1,17,'2019-02-28 21:00:23',1342177281,'submission.event.fileUploaded',0),(3,1048585,1,17,'2019-02-28 21:00:30',268435457,'submission.event.submissionSubmitted',0),(4,1048585,1,3,'2019-02-28 21:00:38',805306371,'log.editor.decision',0),(5,1048585,1,3,'2019-02-28 21:00:41',268435459,'submission.event.participantAdded',0),(6,1048585,1,6,'2019-02-28 21:00:50',805306372,'log.editor.recommendation',0),(7,515,3,18,'2019-02-28 21:01:08',1342177281,'submission.event.fileUploaded',0),(8,1048585,2,18,'2019-02-28 21:01:10',1342177281,'submission.event.fileUploaded',0),(9,1048585,2,18,'2019-02-28 21:01:16',268435457,'submission.event.submissionSubmitted',0),(10,1048585,2,3,'2019-02-28 21:01:24',805306371,'log.editor.decision',0),(11,1048585,2,3,'2019-02-28 21:01:28',1073741825,'log.review.reviewerAssigned',0),(12,1048585,2,3,'2019-02-28 21:01:30',1073741825,'log.review.reviewerAssigned',0),(13,1048585,2,3,'2019-02-28 21:01:32',805306371,'log.editor.decision',0),(14,1048585,2,3,'2019-02-28 21:01:36',268435459,'submission.event.participantAdded',0),(15,515,5,19,'2019-02-28 21:01:48',1342177281,'submission.event.fileUploaded',0),(16,1048585,3,19,'2019-02-28 21:01:50',1342177281,'submission.event.fileUploaded',0),(17,1048585,3,19,'2019-02-28 21:01:59',268435457,'submission.event.submissionSubmitted',0),(18,515,6,20,'2019-02-28 21:02:10',1342177281,'submission.event.fileUploaded',0),(19,1048585,4,20,'2019-02-28 21:02:13',1342177281,'submission.event.fileUploaded',0),(20,1048585,4,20,'2019-02-28 21:02:19',268435457,'submission.event.submissionSubmitted',0),(21,1048585,4,3,'2019-02-28 21:02:27',805306371,'log.editor.decision',0),(22,1048585,4,3,'2019-02-28 21:02:30',1073741825,'log.review.reviewerAssigned',0),(23,1048585,4,3,'2019-02-28 21:02:33',1073741825,'log.review.reviewerAssigned',0),(24,1048585,4,3,'2019-02-28 21:02:35',805306371,'log.editor.decision',0),(25,1048585,4,3,'2019-02-28 21:02:38',268435459,'submission.event.participantAdded',0),(26,1048585,4,3,'2019-02-28 21:02:41',805306371,'log.editor.decision',0),(27,1048585,4,3,'2019-02-28 21:02:45',268435459,'submission.event.participantAdded',0),(28,1048585,4,3,'2019-02-28 21:02:48',268435459,'submission.event.participantAdded',0),(29,515,8,21,'2019-02-28 21:03:00',1342177281,'submission.event.fileUploaded',0),(30,1048585,5,21,'2019-02-28 21:03:02',1342177281,'submission.event.fileUploaded',0),(31,1048585,5,21,'2019-02-28 21:03:08',268435457,'submission.event.submissionSubmitted',0),(32,1048585,5,3,'2019-02-28 21:03:16',805306371,'log.editor.decision',0),(33,1048585,5,3,'2019-02-28 21:03:20',1073741825,'log.review.reviewerAssigned',0),(34,1048585,5,3,'2019-02-28 21:03:22',1073741825,'log.review.reviewerAssigned',0),(35,1048585,5,3,'2019-02-28 21:03:24',805306371,'log.editor.decision',0),(36,1048585,5,3,'2019-02-28 21:03:27',268435459,'submission.event.participantAdded',0),(37,1048585,5,3,'2019-02-28 21:03:31',805306371,'log.editor.decision',0),(38,1048585,5,3,'2019-02-28 21:03:34',268435459,'submission.event.participantAdded',0),(39,515,10,22,'2019-02-28 21:03:46',1342177281,'submission.event.fileUploaded',0),(40,1048585,6,22,'2019-02-28 21:03:49',1342177281,'submission.event.fileUploaded',0),(41,1048585,6,22,'2019-02-28 21:03:55',268435457,'submission.event.submissionSubmitted',0),(42,1048585,6,3,'2019-02-28 21:04:03',805306371,'log.editor.decision',0),(43,1048585,6,3,'2019-02-28 21:04:06',1073741825,'log.review.reviewerAssigned',0),(44,1048585,6,3,'2019-02-28 21:04:08',1073741825,'log.review.reviewerAssigned',0),(45,1048585,6,3,'2019-02-28 21:04:11',1073741825,'log.review.reviewerAssigned',0),(46,1048585,6,8,'2019-02-28 21:04:16',1073741830,'log.review.reviewAccepted',0),(47,515,12,23,'2019-02-28 21:04:32',1342177281,'submission.event.fileUploaded',0),(48,1048585,7,23,'2019-02-28 21:04:34',1342177281,'submission.event.fileUploaded',0),(49,1048585,7,23,'2019-02-28 21:04:43',268435457,'submission.event.submissionSubmitted',0),(50,515,13,24,'2019-02-28 21:04:58',1342177281,'submission.event.fileUploaded',0),(51,1048585,8,24,'2019-02-28 21:05:00',1342177281,'submission.event.fileUploaded',0),(52,1048585,8,24,'2019-02-28 21:05:06',268435457,'submission.event.submissionSubmitted',0),(53,1048585,8,3,'2019-02-28 21:05:14',805306371,'log.editor.decision',0),(54,1048585,8,3,'2019-02-28 21:05:17',1073741825,'log.review.reviewerAssigned',0),(55,1048585,8,3,'2019-02-28 21:05:20',1073741825,'log.review.reviewerAssigned',0),(56,1048585,8,3,'2019-02-28 21:05:22',805306371,'log.editor.decision',0),(57,1048585,8,3,'2019-02-28 21:05:26',268435459,'submission.event.participantAdded',0),(58,1048585,8,3,'2019-02-28 21:05:29',805306371,'log.editor.decision',0),(59,1048585,8,3,'2019-02-28 21:05:32',268435459,'submission.event.participantAdded',0),(60,1048585,8,3,'2019-02-28 21:05:35',268435459,'submission.event.participantAdded',0),(61,515,27,25,'2019-02-28 21:05:54',1342177281,'submission.event.fileUploaded',0),(62,1048585,15,25,'2019-02-28 21:05:56',1342177281,'submission.event.fileUploaded',0),(63,1048585,15,25,'2019-02-28 21:06:03',268435457,'submission.event.submissionSubmitted',0),(64,1048585,15,3,'2019-02-28 21:06:11',805306371,'log.editor.decision',0),(65,1048585,15,3,'2019-02-28 21:06:14',1073741825,'log.review.reviewerAssigned',0),(66,1048585,15,3,'2019-02-28 21:06:17',1073741825,'log.review.reviewerAssigned',0),(67,1048585,15,3,'2019-02-28 21:06:19',1073741825,'log.review.reviewerAssigned',0),(68,1048585,15,3,'2019-02-28 21:06:22',805306371,'log.editor.decision',0),(69,1048585,15,3,'2019-02-28 21:06:25',268435459,'submission.event.participantAdded',0),(70,1048585,15,3,'2019-02-28 21:06:28',805306371,'log.editor.decision',0),(71,1048585,15,3,'2019-02-28 21:06:31',268435459,'submission.event.participantAdded',0),(72,1048585,15,3,'2019-02-28 21:06:33',268435459,'submission.event.participantAdded',0),(73,515,29,3,'2019-02-28 21:06:38',1342177281,'submission.event.fileUploaded',0),(74,1048585,15,3,'2019-02-28 21:06:40',1342177281,'submission.event.fileUploaded',0),(75,515,30,26,'2019-02-28 21:06:52',1342177281,'submission.event.fileUploaded',0),(76,1048585,16,26,'2019-02-28 21:06:55',1342177281,'submission.event.fileUploaded',0),(77,1048585,16,26,'2019-02-28 21:07:01',268435457,'submission.event.submissionSubmitted',0),(78,1048585,16,3,'2019-02-28 21:07:09',805306371,'log.editor.decision',0),(79,1048585,16,3,'2019-02-28 21:07:13',1073741825,'log.review.reviewerAssigned',0),(80,1048585,16,3,'2019-02-28 21:07:15',1073741825,'log.review.reviewerAssigned',0),(81,1048585,16,9,'2019-02-28 21:07:21',1073741830,'log.review.reviewAccepted',0),(82,1048585,16,10,'2019-02-28 21:07:31',1073741830,'log.review.reviewAccepted',0),(83,515,32,27,'2019-02-28 21:07:46',1342177281,'submission.event.fileUploaded',0),(84,1048585,17,27,'2019-02-28 21:07:49',1342177281,'submission.event.fileUploaded',0),(85,1048585,17,27,'2019-02-28 21:07:58',268435457,'submission.event.submissionSubmitted',0),(86,515,33,28,'2019-02-28 21:08:10',1342177281,'submission.event.fileUploaded',0),(87,1048585,18,28,'2019-02-28 21:08:13',1342177281,'submission.event.fileUploaded',0),(88,1048585,18,28,'2019-02-28 21:08:19',268435457,'submission.event.submissionSubmitted',0),(89,1048585,18,3,'2019-02-28 21:08:27',805306371,'log.editor.decision',0),(90,1048585,18,3,'2019-02-28 21:08:31',1073741825,'log.review.reviewerAssigned',0),(91,1048585,18,3,'2019-02-28 21:08:33',1073741825,'log.review.reviewerAssigned',0),(92,515,35,29,'2019-02-28 21:08:45',1342177281,'submission.event.fileUploaded',0),(93,1048585,19,29,'2019-02-28 21:08:47',1342177281,'submission.event.fileUploaded',0),(94,1048585,19,29,'2019-02-28 21:08:53',268435457,'submission.event.submissionSubmitted',0),(95,1048585,19,3,'2019-02-28 21:09:01',805306371,'log.editor.decision',0),(96,1048585,19,3,'2019-02-28 21:09:05',1073741825,'log.review.reviewerAssigned',0),(97,1048585,19,3,'2019-02-28 21:09:08',1073741825,'log.review.reviewerAssigned',0),(98,1048585,19,3,'2019-02-28 21:09:10',1073741825,'log.review.reviewerAssigned',0),(99,1048585,19,7,'2019-02-28 21:09:15',1073741830,'log.review.reviewAccepted',0),(100,1048585,19,9,'2019-02-28 21:09:25',1073741830,'log.review.reviewAccepted',0),(101,1048585,19,10,'2019-02-28 21:09:38',1073741830,'log.review.reviewAccepted',0),(102,1048585,19,3,'2019-02-28 21:09:51',805306371,'log.editor.decision',0),(103,515,37,30,'2019-02-28 21:10:01',1342177281,'submission.event.fileUploaded',0),(104,1048585,20,30,'2019-02-28 21:10:03',1342177281,'submission.event.fileUploaded',0),(105,1048585,20,30,'2019-02-28 21:10:10',268435457,'submission.event.submissionSubmitted',0),(106,515,38,31,'2019-02-28 21:10:21',1342177281,'submission.event.fileUploaded',0),(107,1048585,21,31,'2019-02-28 21:10:23',1342177281,'submission.event.fileUploaded',0),(108,1048585,21,31,'2019-02-28 21:10:29',268435457,'submission.event.submissionSubmitted',0),(109,1048585,21,3,'2019-02-28 21:10:42',805306371,'log.editor.decision',0),(110,1048585,21,3,'2019-02-28 21:10:47',1073741825,'log.review.reviewerAssigned',0),(111,1048585,21,3,'2019-02-28 21:10:51',1073741825,'log.review.reviewerAssigned',0),(112,1048585,21,3,'2019-02-28 21:10:56',805306371,'log.editor.decision',0),(113,1048585,21,3,'2019-02-28 21:11:02',268435459,'submission.event.participantAdded',0),(114,1048585,21,3,'2019-02-28 21:11:04',805306371,'log.editor.decision',0),(115,1048585,21,3,'2019-02-28 21:11:12',268435459,'submission.event.participantAdded',0),(116,515,40,32,'2019-02-28 21:11:37',1342177281,'submission.event.fileUploaded',0),(117,1048585,22,32,'2019-02-28 21:11:39',1342177281,'submission.event.fileUploaded',0),(118,1048585,22,32,'2019-02-28 21:11:46',268435457,'submission.event.submissionSubmitted',0),(119,515,41,33,'2019-02-28 21:12:06',1342177281,'submission.event.fileUploaded',0),(120,1048585,23,33,'2019-02-28 21:12:08',1342177281,'submission.event.fileUploaded',0),(121,1048585,23,33,'2019-02-28 21:12:15',268435457,'submission.event.submissionSubmitted',0),(122,1048585,23,3,'2019-02-28 21:12:24',805306371,'log.editor.decision',0),(123,1048585,23,3,'2019-02-28 21:12:28',1073741825,'log.review.reviewerAssigned',0),(124,1048585,23,3,'2019-02-28 21:12:31',1073741825,'log.review.reviewerAssigned',0),(125,1048585,23,3,'2019-02-28 21:12:33',805306371,'log.editor.decision',0),(126,1048585,23,3,'2019-02-28 21:12:39',268435459,'submission.event.participantAdded',0),(127,1048585,23,3,'2019-02-28 21:12:42',805306371,'log.editor.decision',0),(128,1048585,23,3,'2019-02-28 21:12:47',268435459,'submission.event.participantAdded',0),(129,1048585,23,3,'2019-02-28 21:12:50',268435459,'submission.event.participantAdded',0),(130,515,43,3,'2019-02-28 21:12:56',1342177281,'submission.event.fileUploaded',0),(131,1048585,23,3,'2019-02-28 21:12:58',1342177281,'submission.event.fileUploaded',0),(132,515,44,34,'2019-02-28 21:13:11',1342177281,'submission.event.fileUploaded',0),(133,1048585,24,34,'2019-02-28 21:13:13',1342177281,'submission.event.fileUploaded',0),(134,1048585,24,34,'2019-02-28 21:13:20',268435457,'submission.event.submissionSubmitted',0),(135,1048585,24,3,'2019-02-28 21:13:29',805306371,'log.editor.decision',0),(136,515,45,35,'2019-02-28 21:13:40',1342177281,'submission.event.fileUploaded',0),(137,1048585,25,35,'2019-02-28 21:13:43',1342177281,'submission.event.fileUploaded',0),(138,1048585,25,35,'2019-02-28 21:13:49',268435457,'submission.event.submissionSubmitted',0),(139,1048585,25,3,'2019-02-28 21:13:58',805306371,'log.editor.decision',0),(140,1048585,25,3,'2019-02-28 21:14:02',1073741825,'log.review.reviewerAssigned',0),(141,1048585,25,3,'2019-02-28 21:14:06',1073741825,'log.review.reviewerAssigned',0),(142,1048585,25,3,'2019-02-28 21:14:08',805306371,'log.editor.decision',0),(143,1048585,25,3,'2019-02-28 21:14:12',268435459,'submission.event.participantAdded',0),(144,1048585,31,0,'2020-01-30 22:02:16',268435458,'submission.event.general.metadataUpdated',0),(145,1048585,21,1,'2020-01-30 22:09:14',268435458,'submission.event.general.metadataUpdated',0),(146,1048585,13,1,'2020-01-31 14:58:43',268435458,'submission.event.general.metadataUpdated',0),(147,1048585,13,1,'2020-01-31 14:58:43',268435464,'publication.event.versionCreated',0),(148,1048585,11,1,'2020-01-31 14:59:51',268435458,'submission.event.general.metadataUpdated',0),(149,1048585,11,1,'2020-01-31 14:59:51',268435464,'publication.event.versionCreated',0),(150,1048585,11,1,'2020-01-31 15:02:27',268435458,'submission.event.general.metadataUpdated',0),(151,1048585,11,1,'2020-01-31 15:03:25',268435459,'submission.event.participantAdded',0),(152,1048585,11,1,'2020-01-31 15:03:34',805306371,'log.editor.decision',0),(153,1048585,11,1,'2020-01-31 15:03:51',268435462,'publication.event.versionPublished',0),(154,1048585,11,1,'2020-01-31 15:06:51',268435458,'submission.event.general.metadataUpdated',0),(155,1048585,11,1,'2020-01-31 15:06:51',268435464,'publication.event.versionCreated',0),(156,1048585,11,1,'2020-01-31 15:07:04',268435462,'publication.event.versionPublished',0),(157,1048585,11,1,'2020-01-31 15:08:01',268435463,'publication.event.versionUnpublished',0),(158,1048585,11,1,'2020-01-31 15:08:56',268435458,'submission.event.general.metadataUpdated',0),(159,1048585,11,1,'2020-01-31 15:08:57',268435464,'publication.event.versionCreated',0),(160,1048585,11,1,'2020-01-31 15:09:04',268435462,'publication.event.versionPublished',0),(161,1048585,11,1,'2020-01-31 15:10:07',268435462,'publication.event.versionPublished',0),(162,1048585,11,1,'2020-01-31 15:28:33',268435463,'publication.event.versionUnpublished',0),(163,1048585,11,1,'2020-01-31 15:28:44',268435463,'publication.event.versionUnpublished',0),(164,1048585,11,1,'2020-01-31 15:29:59',268435459,'submission.event.participantAdded',0),(165,1048585,32,0,'2020-01-31 18:45:40',268435458,'submission.event.general.metadataUpdated',0),(166,1048585,37,0,'2020-01-31 22:20:02',268435458,'submission.event.general.metadataUpdated',0),(167,1048585,38,0,'2020-01-31 22:20:34',268435458,'submission.event.general.metadataUpdated',0),(168,1048585,39,0,'2020-01-31 22:27:05',268435458,'submission.event.general.metadataUpdated',0),(169,1048585,40,0,'2020-01-31 22:28:08',268435458,'submission.event.general.metadataUpdated',0),(170,1048585,41,0,'2020-01-31 22:30:06',268435458,'submission.event.general.metadataUpdated',0),(171,1048585,42,0,'2020-01-31 22:31:54',268435458,'submission.event.general.metadataUpdated',0),(172,1048585,47,0,'2020-02-01 01:00:11',268435458,'submission.event.general.metadataUpdated',0),(173,1048585,48,0,'2020-02-02 23:41:49',268435458,'submission.event.general.metadataUpdated',0),(174,1048585,49,0,'2020-02-02 23:42:06',268435458,'submission.event.general.metadataUpdated',0),(175,1048585,50,0,'2020-02-03 16:47:37',268435458,'submission.event.general.metadataUpdated',0),(176,1048585,51,0,'2020-02-03 16:48:06',268435458,'submission.event.general.metadataUpdated',0),(177,1048585,52,0,'2020-02-03 17:04:38',268435458,'submission.event.general.metadataUpdated',0),(178,1048585,53,0,'2020-02-03 17:09:55',268435458,'submission.event.general.metadataUpdated',0),(179,1048585,54,0,'2020-02-03 17:10:41',268435458,'submission.event.general.metadataUpdated',0),(180,1048585,55,0,'2020-02-03 17:30:45',268435458,'submission.event.general.metadataUpdated',0),(181,1048585,56,0,'2020-02-03 17:56:40',268435458,'submission.event.general.metadataUpdated',0),(182,1048585,57,0,'2020-02-03 17:58:14',268435458,'submission.event.general.metadataUpdated',0),(183,1048585,58,0,'2020-02-03 17:58:34',268435458,'submission.event.general.metadataUpdated',0),(184,1048585,59,0,'2020-02-03 17:59:03',268435458,'submission.event.general.metadataUpdated',0),(185,1048585,60,0,'2020-02-03 18:01:43',268435458,'submission.event.general.metadataUpdated',0),(186,1048585,60,1,'2020-02-03 18:20:38',268435458,'submission.event.general.metadataUpdated',0),(187,1048585,61,0,'2020-02-04 12:33:44',268435458,'submission.event.general.metadataUpdated',0),(188,1048585,62,0,'2020-02-04 12:33:50',268435458,'submission.event.general.metadataUpdated',0),(189,1048585,63,0,'2020-02-04 13:04:13',268435458,'submission.event.general.metadataUpdated',0),(190,1048585,63,1,'2020-02-04 13:05:39',268435458,'submission.event.general.metadataUpdated',0),(191,1048585,63,1,'2020-02-04 13:07:23',268435458,'submission.event.general.metadataUpdated',0),(192,1048585,63,1,'2020-02-04 13:08:32',268435458,'submission.event.general.metadataUpdated',0),(193,1048585,63,1,'2020-02-04 13:08:48',268435457,'submission.event.submissionSubmitted',0),(194,1048585,64,0,'2020-02-04 22:30:32',268435458,'submission.event.general.metadataUpdated',0),(195,1048585,65,0,'2020-02-05 22:37:00',268435458,'submission.event.general.metadataUpdated',0);
/*!40000 ALTER TABLE `event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_log_settings`
--

DROP TABLE IF EXISTS `event_log_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_log_settings` (
  `log_id` bigint(20) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `event_log_settings_pkey` (`log_id`,`setting_name`),
  KEY `event_log_settings_log_id` (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_log_settings`
--

LOCK TABLES `event_log_settings` WRITE;
/*!40000 ALTER TABLE `event_log_settings` DISABLE KEYS */;
INSERT INTO `event_log_settings` VALUES (1,'fileId','1','int'),(1,'fileRevision','1','int'),(1,'fileStage','2','int'),(1,'originalFileName','theinfluenceoflactationonthequantityandqualityofcashmereproduction.pdf','string'),(1,'revisedFileId',NULL,'string'),(1,'submissionId','1','int'),(1,'username','ccorino','string'),(2,'fileId','1','int'),(2,'fileRevision','1','int'),(2,'fileStage','2','int'),(2,'name','The influence of lactation on the quantity and quality of cashmere production','string'),(2,'originalFileName','theinfluenceoflactationonthequantityandqualityofcashmereproduction.pdf','string'),(2,'submissionId','1','int'),(2,'username','ccorino','string'),(4,'decision','Send to Review','string'),(4,'editorName','Daniel Barnes','string'),(4,'submissionId','1','string'),(5,'name','Minoti Inoue','string'),(5,'userGroupName','Section editor','string'),(5,'username','minoue','string'),(6,'decision','Accept Submission','string'),(6,'editorName','Minoti Inoue','string'),(6,'submissionId','1','string'),(7,'fileId','3','int'),(7,'fileRevision','1','int'),(7,'fileStage','2','int'),(7,'originalFileName','thefacetsofjobsatisfactionaninenationcomparativestudyofconstructequivalence.pdf','string'),(7,'revisedFileId',NULL,'string'),(7,'submissionId','2','int'),(7,'username','ckwantes','string'),(8,'fileId','3','int'),(8,'fileRevision','1','int'),(8,'fileStage','2','int'),(8,'name','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence','string'),(8,'originalFileName','thefacetsofjobsatisfactionaninenationcomparativestudyofconstructequivalence.pdf','string'),(8,'submissionId','2','int'),(8,'username','ckwantes','string'),(10,'decision','Send to Review','string'),(10,'editorName','Daniel Barnes','string'),(10,'submissionId','2','string'),(11,'reviewAssignmentId','1','int'),(11,'reviewerName','Aisla McCrae','string'),(11,'round','1','int'),(11,'stageId','3','int'),(11,'submissionId','2','string'),(12,'reviewAssignmentId','2','int'),(12,'reviewerName','Adela Gallego','string'),(12,'round','1','int'),(12,'stageId','3','int'),(12,'submissionId','2','string'),(13,'decision','Accept Submission','string'),(13,'editorName','Daniel Barnes','string'),(13,'submissionId','2','string'),(14,'name','Maria Fritz','string'),(14,'userGroupName','Copyeditor','string'),(14,'username','mfritz','string'),(15,'fileId','5','int'),(15,'fileRevision','1','int'),(15,'fileStage','2','int'),(15,'originalFileName','computerskillrequirementsfornewandexistingteachersimplicationsforpolicyandpractice.pdf','string'),(15,'revisedFileId',NULL,'string'),(15,'submissionId','3','int'),(15,'username','cmontgomerie','string'),(16,'fileId','5','int'),(16,'fileRevision','1','int'),(16,'fileStage','2','int'),(16,'name','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice','string'),(16,'originalFileName','computerskillrequirementsfornewandexistingteachersimplicationsforpolicyandpractice.pdf','string'),(16,'submissionId','3','int'),(16,'username','cmontgomerie','string'),(18,'fileId','6','int'),(18,'fileRevision','1','int'),(18,'fileStage','2','int'),(18,'originalFileName','genetictransformationofforesttrees.pdf','string'),(18,'revisedFileId',NULL,'string'),(18,'submissionId','4','int'),(18,'username','ddiouf','string'),(19,'fileId','6','int'),(19,'fileRevision','1','int'),(19,'fileStage','2','int'),(19,'name','Genetic transformation of forest trees','string'),(19,'originalFileName','genetictransformationofforesttrees.pdf','string'),(19,'submissionId','4','int'),(19,'username','ddiouf','string'),(21,'decision','Send to Review','string'),(21,'editorName','Daniel Barnes','string'),(21,'submissionId','4','string'),(22,'reviewAssignmentId','3','int'),(22,'reviewerName','Paul Hudson','string'),(22,'round','1','int'),(22,'stageId','3','int'),(22,'submissionId','4','string'),(23,'reviewAssignmentId','4','int'),(23,'reviewerName','Adela Gallego','string'),(23,'round','1','int'),(23,'stageId','3','int'),(23,'submissionId','4','string'),(24,'decision','Accept Submission','string'),(24,'editorName','Daniel Barnes','string'),(24,'submissionId','4','string'),(25,'name','Maria Fritz','string'),(25,'userGroupName','Copyeditor','string'),(25,'username','mfritz','string'),(26,'decision','Send To Production','string'),(26,'editorName','Daniel Barnes','string'),(26,'submissionId','4','string'),(27,'name','Graham Cox','string'),(27,'userGroupName','Layout Editor','string'),(27,'username','gcox','string'),(28,'name','Catherine Turner','string'),(28,'userGroupName','Proofreader','string'),(28,'username','cturner','string'),(29,'fileId','8','int'),(29,'fileRevision','1','int'),(29,'fileStage','2','int'),(29,'originalFileName','investigatingthesharedbackgroundrequiredforargumentacritiqueoffogelinsthesisondeepdisagreement.pdf','string'),(29,'revisedFileId',NULL,'string'),(29,'submissionId','5','int'),(29,'username','dphillips','string'),(30,'fileId','8','int'),(30,'fileRevision','1','int'),(30,'fileStage','2','int'),(30,'name','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement','string'),(30,'originalFileName','investigatingthesharedbackgroundrequiredforargumentacritiqueoffogelinsthesisondeepdisagreement.pdf','string'),(30,'submissionId','5','int'),(30,'username','dphillips','string'),(32,'decision','Send to Review','string'),(32,'editorName','Daniel Barnes','string'),(32,'submissionId','5','string'),(33,'reviewAssignmentId','5','int'),(33,'reviewerName','Julie Janssen','string'),(33,'round','1','int'),(33,'stageId','3','int'),(33,'submissionId','5','string'),(34,'reviewAssignmentId','6','int'),(34,'reviewerName','Adela Gallego','string'),(34,'round','1','int'),(34,'stageId','3','int'),(34,'submissionId','5','string'),(35,'decision','Accept Submission','string'),(35,'editorName','Daniel Barnes','string'),(35,'submissionId','5','string'),(36,'name','Maria Fritz','string'),(36,'userGroupName','Copyeditor','string'),(36,'username','mfritz','string'),(37,'decision','Send To Production','string'),(37,'editorName','Daniel Barnes','string'),(37,'submissionId','5','string'),(38,'name','Graham Cox','string'),(38,'userGroupName','Layout Editor','string'),(38,'username','gcox','string'),(39,'fileId','10','int'),(39,'fileRevision','1','int'),(39,'fileStage','2','int'),(39,'originalFileName','developingefficacybeliefsintheclassroom.pdf','string'),(39,'revisedFileId',NULL,'string'),(39,'submissionId','6','int'),(39,'username','dsokoloff','string'),(40,'fileId','10','int'),(40,'fileRevision','1','int'),(40,'fileStage','2','int'),(40,'name','Developing efficacy beliefs in the classroom','string'),(40,'originalFileName','developingefficacybeliefsintheclassroom.pdf','string'),(40,'submissionId','6','int'),(40,'username','dsokoloff','string'),(42,'decision','Send to Review','string'),(42,'editorName','Daniel Barnes','string'),(42,'submissionId','6','string'),(43,'reviewAssignmentId','7','int'),(43,'reviewerName','Paul Hudson','string'),(43,'round','1','int'),(43,'stageId','3','int'),(43,'submissionId','6','string'),(44,'reviewAssignmentId','8','int'),(44,'reviewerName','Aisla McCrae','string'),(44,'round','1','int'),(44,'stageId','3','int'),(44,'submissionId','6','string'),(45,'reviewAssignmentId','9','int'),(45,'reviewerName','Adela Gallego','string'),(45,'round','1','int'),(45,'stageId','3','int'),(45,'submissionId','6','string'),(46,'reviewAssignmentId','7','string'),(46,'reviewerName','Paul Hudson','string'),(46,'round','1','string'),(46,'submissionId','6','string'),(47,'fileId','12','int'),(47,'fileRevision','1','int'),(47,'fileStage','2','int'),(47,'originalFileName','traditionsandtrendsinthestudyofthecommons.pdf','string'),(47,'revisedFileId',NULL,'string'),(47,'submissionId','7','int'),(47,'username','eostrom','string'),(48,'fileId','12','int'),(48,'fileRevision','1','int'),(48,'fileStage','2','int'),(48,'name','Traditions and Trends in the Study of the Commons','string'),(48,'originalFileName','traditionsandtrendsinthestudyofthecommons.pdf','string'),(48,'submissionId','7','int'),(48,'username','eostrom','string'),(50,'fileId','13','int'),(50,'fileRevision','1','int'),(50,'fileStage','2','int'),(50,'originalFileName','hansenpintoreasonreclaimed.pdf','string'),(50,'revisedFileId',NULL,'string'),(50,'submissionId','8','int'),(50,'username','fpaglieri','string'),(51,'fileId','13','int'),(51,'fileRevision','1','int'),(51,'fileStage','2','int'),(51,'name','Hansen & Pinto: Reason Reclaimed','string'),(51,'originalFileName','hansenpintoreasonreclaimed.pdf','string'),(51,'submissionId','8','int'),(51,'username','fpaglieri','string'),(53,'decision','Send to Review','string'),(53,'editorName','Daniel Barnes','string'),(53,'submissionId','8','string'),(54,'reviewAssignmentId','10','int'),(54,'reviewerName','Julie Janssen','string'),(54,'round','1','int'),(54,'stageId','3','int'),(54,'submissionId','8','string'),(55,'reviewAssignmentId','11','int'),(55,'reviewerName','Adela Gallego','string'),(55,'round','1','int'),(55,'stageId','3','int'),(55,'submissionId','8','string'),(56,'decision','Accept Submission','string'),(56,'editorName','Daniel Barnes','string'),(56,'submissionId','8','string'),(57,'name','Sarah Vogt','string'),(57,'userGroupName','Copyeditor','string'),(57,'username','svogt','string'),(58,'decision','Send To Production','string'),(58,'editorName','Daniel Barnes','string'),(58,'submissionId','8','string'),(59,'name','Stephen Hellier','string'),(59,'userGroupName','Layout Editor','string'),(59,'username','shellier','string'),(60,'name','Sabine Kumar','string'),(60,'userGroupName','Proofreader','string'),(60,'username','skumar','string'),(61,'fileId','27','int'),(61,'fileRevision','1','int'),(61,'fileStage','2','int'),(61,'originalFileName','signallingtheorydividendsareviewoftheliteratureandempiricalevidence.pdf','string'),(61,'revisedFileId',NULL,'string'),(61,'submissionId','15','int'),(61,'username','jmwandenga','string'),(62,'fileId','27','int'),(62,'fileRevision','1','int'),(62,'fileStage','2','int'),(62,'name','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence','string'),(62,'originalFileName','signallingtheorydividendsareviewoftheliteratureandempiricalevidence.pdf','string'),(62,'submissionId','15','int'),(62,'username','jmwandenga','string'),(64,'decision','Send to Review','string'),(64,'editorName','Daniel Barnes','string'),(64,'submissionId','15','string'),(65,'reviewAssignmentId','12','int'),(65,'reviewerName','Julie Janssen','string'),(65,'round','1','int'),(65,'stageId','3','int'),(65,'submissionId','15','string'),(66,'reviewAssignmentId','13','int'),(66,'reviewerName','Aisla McCrae','string'),(66,'round','1','int'),(66,'stageId','3','int'),(66,'submissionId','15','string'),(67,'reviewAssignmentId','14','int'),(67,'reviewerName','Adela Gallego','string'),(67,'round','1','int'),(67,'stageId','3','int'),(67,'submissionId','15','string'),(68,'decision','Accept Submission','string'),(68,'editorName','Daniel Barnes','string'),(68,'submissionId','15','string'),(69,'name','Sarah Vogt','string'),(69,'userGroupName','Copyeditor','string'),(69,'username','svogt','string'),(70,'decision','Send To Production','string'),(70,'editorName','Daniel Barnes','string'),(70,'submissionId','15','string'),(71,'name','Stephen Hellier','string'),(71,'userGroupName','Layout Editor','string'),(71,'username','shellier','string'),(72,'name','Sabine Kumar','string'),(72,'userGroupName','Proofreader','string'),(72,'username','skumar','string'),(73,'fileId','29','int'),(73,'fileRevision','1','int'),(73,'fileStage','10','int'),(73,'originalFileName','pdf.pdf','string'),(73,'revisedFileId',NULL,'string'),(73,'submissionId','15','int'),(73,'username','dbarnes','string'),(74,'fileId','29','int'),(74,'fileRevision','1','int'),(74,'fileStage','10','int'),(74,'name','PDF','string'),(74,'originalFileName','pdf.pdf','string'),(74,'submissionId','15','int'),(74,'username','dbarnes','string'),(75,'fileId','30','int'),(75,'fileRevision','1','int'),(75,'fileStage','2','int'),(75,'originalFileName','condensingwateravailabilitymodelstofocusonspecificwatermanagementsystems.pdf','string'),(75,'revisedFileId',NULL,'string'),(75,'submissionId','16','int'),(75,'username','jnovak','string'),(76,'fileId','30','int'),(76,'fileRevision','1','int'),(76,'fileStage','2','int'),(76,'name','Condensing Water Availability Models to Focus on Specific Water Management Systems','string'),(76,'originalFileName','condensingwateravailabilitymodelstofocusonspecificwatermanagementsystems.pdf','string'),(76,'submissionId','16','int'),(76,'username','jnovak','string'),(78,'decision','Send to Review','string'),(78,'editorName','Daniel Barnes','string'),(78,'submissionId','16','string'),(79,'reviewAssignmentId','15','int'),(79,'reviewerName','Aisla McCrae','string'),(79,'round','1','int'),(79,'stageId','3','int'),(79,'submissionId','16','string'),(80,'reviewAssignmentId','16','int'),(80,'reviewerName','Adela Gallego','string'),(80,'round','1','int'),(80,'stageId','3','int'),(80,'submissionId','16','string'),(81,'reviewAssignmentId','15','string'),(81,'reviewerName','Aisla McCrae','string'),(81,'round','1','string'),(81,'submissionId','16','string'),(82,'reviewAssignmentId','16','string'),(82,'reviewerName','Adela Gallego','string'),(82,'round','1','string'),(82,'submissionId','16','string'),(83,'fileId','32','int'),(83,'fileRevision','1','int'),(83,'fileStage','2','int'),(83,'originalFileName','learningsustainabledesignthroughservice.pdf','string'),(83,'revisedFileId',NULL,'string'),(83,'submissionId','17','int'),(83,'username','kalkhafaji','string'),(84,'fileId','32','int'),(84,'fileRevision','1','int'),(84,'fileStage','2','int'),(84,'name','Learning Sustainable Design through Service','string'),(84,'originalFileName','learningsustainabledesignthroughservice.pdf','string'),(84,'submissionId','17','int'),(84,'username','kalkhafaji','string'),(86,'fileId','33','int'),(86,'fileRevision','1','int'),(86,'fileStage','2','int'),(86,'originalFileName','sodiumbutyrateimprovesgrowthperformanceofweanedpigletsduringthefirstperiodafterweaning.pdf','string'),(86,'revisedFileId',NULL,'string'),(86,'submissionId','18','int'),(86,'username','lchristopher','string'),(87,'fileId','33','int'),(87,'fileRevision','1','int'),(87,'fileStage','2','int'),(87,'name','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning','string'),(87,'originalFileName','sodiumbutyrateimprovesgrowthperformanceofweanedpigletsduringthefirstperiodafterweaning.pdf','string'),(87,'submissionId','18','int'),(87,'username','lchristopher','string'),(89,'decision','Send to Review','string'),(89,'editorName','Daniel Barnes','string'),(89,'submissionId','18','string'),(90,'reviewAssignmentId','17','int'),(90,'reviewerName','Julie Janssen','string'),(90,'round','1','int'),(90,'stageId','3','int'),(90,'submissionId','18','string'),(91,'reviewAssignmentId','18','int'),(91,'reviewerName','Paul Hudson','string'),(91,'round','1','int'),(91,'stageId','3','int'),(91,'submissionId','18','string'),(92,'fileId','35','int'),(92,'fileRevision','1','int'),(92,'fileStage','2','int'),(92,'originalFileName','hydrologicconnectivityintheedwardsaquiferbetweensanmarcosspringsandbartonspringsduring2009droughtconditions.pdf','string'),(92,'revisedFileId',NULL,'string'),(92,'submissionId','19','int'),(92,'username','lkumiega','string'),(93,'fileId','35','int'),(93,'fileRevision','1','int'),(93,'fileStage','2','int'),(93,'name','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions','string'),(93,'originalFileName','hydrologicconnectivityintheedwardsaquiferbetweensanmarcosspringsandbartonspringsduring2009droughtconditions.pdf','string'),(93,'submissionId','19','int'),(93,'username','lkumiega','string'),(95,'decision','Send to Review','string'),(95,'editorName','Daniel Barnes','string'),(95,'submissionId','19','string'),(96,'reviewAssignmentId','19','int'),(96,'reviewerName','Julie Janssen','string'),(96,'round','1','int'),(96,'stageId','3','int'),(96,'submissionId','19','string'),(97,'reviewAssignmentId','20','int'),(97,'reviewerName','Aisla McCrae','string'),(97,'round','1','int'),(97,'stageId','3','int'),(97,'submissionId','19','string'),(98,'reviewAssignmentId','21','int'),(98,'reviewerName','Adela Gallego','string'),(98,'round','1','int'),(98,'stageId','3','int'),(98,'submissionId','19','string'),(99,'reviewAssignmentId','19','string'),(99,'reviewerName','Julie Janssen','string'),(99,'round','1','string'),(99,'submissionId','19','string'),(100,'reviewAssignmentId','20','string'),(100,'reviewerName','Aisla McCrae','string'),(100,'round','1','string'),(100,'submissionId','19','string'),(101,'reviewAssignmentId','21','string'),(101,'reviewerName','Adela Gallego','string'),(101,'round','1','string'),(101,'submissionId','19','string'),(102,'decision','Request Revisions','string'),(102,'editorName','Daniel Barnes','string'),(102,'submissionId','19','string'),(103,'fileId','37','int'),(103,'fileRevision','1','int'),(103,'fileStage','2','int'),(103,'originalFileName','towardsdesigninganinterculturalcurriculumacasestudyfromtheatlanticcoastofnicaragua.pdf','string'),(103,'revisedFileId',NULL,'string'),(103,'submissionId','20','int'),(103,'username','pdaniel','string'),(104,'fileId','37','int'),(104,'fileRevision','1','int'),(104,'fileStage','2','int'),(104,'name','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua','string'),(104,'originalFileName','towardsdesigninganinterculturalcurriculumacasestudyfromtheatlanticcoastofnicaragua.pdf','string'),(104,'submissionId','20','int'),(104,'username','pdaniel','string'),(106,'fileId','38','int'),(106,'fileRevision','1','int'),(106,'fileStage','2','int'),(106,'originalFileName','yamdiseasesanditsmanagementinnigeria.pdf','string'),(106,'revisedFileId',NULL,'string'),(106,'submissionId','21','int'),(106,'username','rbaiyewu','string'),(107,'fileId','38','int'),(107,'fileRevision','1','int'),(107,'fileStage','2','int'),(107,'name','Yam diseases and its management in Nigeria','string'),(107,'originalFileName','yamdiseasesanditsmanagementinnigeria.pdf','string'),(107,'submissionId','21','int'),(107,'username','rbaiyewu','string'),(109,'decision','Send to Review','string'),(109,'editorName','Daniel Barnes','string'),(109,'submissionId','21','string'),(110,'reviewAssignmentId','22','int'),(110,'reviewerName','Paul Hudson','string'),(110,'round','1','int'),(110,'stageId','3','int'),(110,'submissionId','21','string'),(111,'reviewAssignmentId','23','int'),(111,'reviewerName','Aisla McCrae','string'),(111,'round','1','int'),(111,'stageId','3','int'),(111,'submissionId','21','string'),(112,'decision','Accept Submission','string'),(112,'editorName','Daniel Barnes','string'),(112,'submissionId','21','string'),(113,'name','Sarah Vogt','string'),(113,'userGroupName','Copyeditor','string'),(113,'username','svogt','string'),(114,'decision','Send To Production','string'),(114,'editorName','Daniel Barnes','string'),(114,'submissionId','21','string'),(115,'name','Stephen Hellier','string'),(115,'userGroupName','Layout Editor','string'),(115,'username','shellier','string'),(116,'fileId','40','int'),(116,'fileRevision','1','int'),(116,'fileStage','2','int'),(116,'originalFileName','influenceoflongtermnutritionwithdifferentdietaryfatsonfattyacidcompositionofheavypigsbackfat.pdf','string'),(116,'revisedFileId',NULL,'string'),(116,'submissionId','22','int'),(116,'username','rrossi','string'),(117,'fileId','40','int'),(117,'fileRevision','1','int'),(117,'fileStage','2','int'),(117,'name','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat','string'),(117,'originalFileName','influenceoflongtermnutritionwithdifferentdietaryfatsonfattyacidcompositionofheavypigsbackfat.pdf','string'),(117,'submissionId','22','int'),(117,'username','rrossi','string'),(119,'fileId','41','int'),(119,'fileRevision','1','int'),(119,'fileStage','2','int'),(119,'originalFileName','antimicrobialheavymetalresistanceandplasmidprofileofcoliformsisolatedfromnosocomialinfectionsinahospitalinisfahaniran.pdf','string'),(119,'revisedFileId',NULL,'string'),(119,'submissionId','23','int'),(119,'username','vkarbasizaed','string'),(120,'fileId','41','int'),(120,'fileRevision','1','int'),(120,'fileStage','2','int'),(120,'name','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran','string'),(120,'originalFileName','antimicrobialheavymetalresistanceandplasmidprofileofcoliformsisolatedfromnosocomialinfectionsinahospitalinisfahaniran.pdf','string'),(120,'submissionId','23','int'),(120,'username','vkarbasizaed','string'),(122,'decision','Send to Review','string'),(122,'editorName','Daniel Barnes','string'),(122,'submissionId','23','string'),(123,'reviewAssignmentId','24','int'),(123,'reviewerName','Julie Janssen','string'),(123,'round','1','int'),(123,'stageId','3','int'),(123,'submissionId','23','string'),(124,'reviewAssignmentId','25','int'),(124,'reviewerName','Paul Hudson','string'),(124,'round','1','int'),(124,'stageId','3','int'),(124,'submissionId','23','string'),(125,'decision','Accept Submission','string'),(125,'editorName','Daniel Barnes','string'),(125,'submissionId','23','string'),(126,'name','Maria Fritz','string'),(126,'userGroupName','Copyeditor','string'),(126,'username','mfritz','string'),(127,'decision','Send To Production','string'),(127,'editorName','Daniel Barnes','string'),(127,'submissionId','23','string'),(128,'name','Graham Cox','string'),(128,'userGroupName','Layout Editor','string'),(128,'username','gcox','string'),(129,'name','Catherine Turner','string'),(129,'userGroupName','Proofreader','string'),(129,'username','cturner','string'),(130,'fileId','43','int'),(130,'fileRevision','1','int'),(130,'fileStage','10','int'),(130,'originalFileName','pdf.pdf','string'),(130,'revisedFileId',NULL,'string'),(130,'submissionId','23','int'),(130,'username','dbarnes','string'),(131,'fileId','43','int'),(131,'fileRevision','1','int'),(131,'fileStage','10','int'),(131,'name','PDF','string'),(131,'originalFileName','pdf.pdf','string'),(131,'submissionId','23','int'),(131,'username','dbarnes','string'),(132,'fileId','44','int'),(132,'fileRevision','1','int'),(132,'fileStage','2','int'),(132,'originalFileName','selforganizationinmultilevelinstitutionsinnetworkedenvironments.pdf','string'),(132,'revisedFileId',NULL,'string'),(132,'submissionId','24','int'),(132,'username','vwilliamson','string'),(133,'fileId','44','int'),(133,'fileRevision','1','int'),(133,'fileStage','2','int'),(133,'name','Self-Organization in Multi-Level Institutions in Networked Environments','string'),(133,'originalFileName','selforganizationinmultilevelinstitutionsinnetworkedenvironments.pdf','string'),(133,'submissionId','24','int'),(133,'username','vwilliamson','string'),(135,'decision','Decline Submission','string'),(135,'editorName','Daniel Barnes','string'),(135,'submissionId','24','string'),(136,'fileId','45','int'),(136,'fileRevision','1','int'),(136,'fileStage','2','int'),(136,'originalFileName','finocchiaroargumentsaboutarguments.pdf','string'),(136,'revisedFileId',NULL,'string'),(136,'submissionId','25','int'),(136,'username','zwoods','string'),(137,'fileId','45','int'),(137,'fileRevision','1','int'),(137,'fileStage','2','int'),(137,'name','Finocchiaro: Arguments About Arguments','string'),(137,'originalFileName','finocchiaroargumentsaboutarguments.pdf','string'),(137,'submissionId','25','int'),(137,'username','zwoods','string'),(139,'decision','Send to Review','string'),(139,'editorName','Daniel Barnes','string'),(139,'submissionId','25','string'),(140,'reviewAssignmentId','26','int'),(140,'reviewerName','Paul Hudson','string'),(140,'round','1','int'),(140,'stageId','3','int'),(140,'submissionId','25','string'),(141,'reviewAssignmentId','27','int'),(141,'reviewerName','Aisla McCrae','string'),(141,'round','1','int'),(141,'stageId','3','int'),(141,'submissionId','25','string'),(142,'decision','Accept Submission','string'),(142,'editorName','Daniel Barnes','string'),(142,'submissionId','25','string'),(143,'name','Sarah Vogt','string'),(143,'userGroupName','Copyeditor','string'),(143,'username','svogt','string'),(151,'name','Daniel Barnes','string'),(151,'userGroupName','Journal editor','string'),(151,'username','dbarnes','string'),(152,'decision','Send to Review','string'),(152,'editorName','admin admin','string'),(152,'submissionId','11','int'),(164,'name','Daniel Barnes','string'),(164,'userGroupName','Journal editor','string'),(164,'username','dbarnes','string');
/*!40000 ALTER TABLE `event_log_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_feed_settings`
--

DROP TABLE IF EXISTS `external_feed_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_feed_settings` (
  `feed_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `external_feed_settings_pkey` (`feed_id`,`locale`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_feed_settings`
--

LOCK TABLES `external_feed_settings` WRITE;
/*!40000 ALTER TABLE `external_feed_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_feed_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_feeds`
--

DROP TABLE IF EXISTS `external_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_feeds` (
  `feed_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `url` varchar(2047) NOT NULL,
  `seq` double NOT NULL DEFAULT '0',
  `display_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `display_block` smallint(6) NOT NULL DEFAULT '0',
  `limit_items` tinyint(4) DEFAULT '0',
  `recent_items` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`feed_id`),
  KEY `external_feeds_journal_id` (`journal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_feeds`
--

LOCK TABLES `external_feeds` WRITE;
/*!40000 ALTER TABLE `external_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_groups`
--

DROP TABLE IF EXISTS `filter_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_groups` (
  `filter_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `symbolic` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `input_type` varchar(255) DEFAULT NULL,
  `output_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`filter_group_id`),
  UNIQUE KEY `filter_groups_symbolic` (`symbolic`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_groups`
--

LOCK TABLES `filter_groups` WRITE;
/*!40000 ALTER TABLE `filter_groups` DISABLE KEYS */;
INSERT INTO `filter_groups` VALUES (1,'mods34=>mods34-xml','plugins.metadata.mods34.mods34XmlOutput.displayName','plugins.metadata.mods34.mods34XmlOutput.description','metadata::plugins.metadata.mods34.schema.Mods34Schema(*)','xml::schema(lib/pkp/plugins/metadata/mods34/filter/mods34.xsd)'),(2,'article=>mods34','plugins.metadata.mods34.articleAdapter.displayName','plugins.metadata.mods34.articleAdapter.description','class::classes.article.Article','metadata::plugins.metadata.mods34.schema.Mods34Schema(ARTICLE)'),(3,'mods34=>article','plugins.metadata.mods34.articleAdapter.displayName','plugins.metadata.mods34.articleAdapter.description','metadata::plugins.metadata.mods34.schema.Mods34Schema(ARTICLE)','class::classes.article.Article'),(4,'article=>dc11','plugins.metadata.dc11.articleAdapter.displayName','plugins.metadata.dc11.articleAdapter.description','class::classes.article.Article','metadata::plugins.metadata.dc11.schema.Dc11Schema(ARTICLE)'),(5,'article=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.article.Article[]','xml::schema(plugins/importexport/native/native.xsd)'),(6,'native-xml=>article','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.article.Article[]'),(7,'issue=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.issue.Issue[]','xml::schema(plugins/importexport/native/native.xsd)'),(8,'native-xml=>issue','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.issue.Issue[]'),(9,'issuegalley=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.issue.IssueGalley[]','xml::schema(plugins/importexport/native/native.xsd)'),(10,'native-xml=>issuegalley','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.issue.IssueGalley[]'),(11,'author=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.article.Author[]','xml::schema(plugins/importexport/native/native.xsd)'),(12,'native-xml=>author','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.article.Author[]'),(13,'SubmissionFile=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::lib.pkp.classes.submission.SubmissionFile','xml::schema(plugins/importexport/native/native.xsd)'),(14,'SubmissionArtworkFile=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::lib.pkp.classes.submission.SubmissionArtworkFile','xml::schema(plugins/importexport/native/native.xsd)'),(15,'SupplementaryFile=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::lib.pkp.classes.submission.SupplementaryFile','xml::schema(plugins/importexport/native/native.xsd)'),(16,'native-xml=>SubmissionFile','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::lib.pkp.classes.submission.SubmissionFile'),(17,'native-xml=>SubmissionArtworkFile','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::lib.pkp.classes.submission.SubmissionArtworkFile'),(18,'native-xml=>SupplementaryFile','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::lib.pkp.classes.submission.SupplementaryFile'),(19,'article-galley=>native-xml','plugins.importexport.native.displayName','plugins.importexport.native.description','class::classes.article.ArticleGalley','xml::schema(plugins/importexport/native/native.xsd)'),(20,'native-xml=>ArticleGalley','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(plugins/importexport/native/native.xsd)','class::classes.article.ArticleGalley[]'),(21,'user=>user-xml','plugins.importexport.users.displayName','plugins.importexport.users.description','class::lib.pkp.classes.user.User[]','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),(22,'user-xml=>user','plugins.importexport.users.displayName','plugins.importexport.users.description','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)','class::classes.users.User[]'),(23,'usergroup=>user-xml','plugins.importexport.users.displayName','plugins.importexport.users.description','class::lib.pkp.classes.security.UserGroup[]','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)'),(24,'user-xml=>usergroup','plugins.importexport.native.displayName','plugins.importexport.native.description','xml::schema(lib/pkp/plugins/importexport/users/pkp-users.xsd)','class::lib.pkp.classes.security.UserGroup[]'),(25,'article=>doaj-xml','plugins.importexport.doaj.displayName','plugins.importexport.doaj.description','class::classes.article.Article[]','xml::schema(plugins/importexport/doaj/doajArticles.xsd)'),(26,'article=>doaj-json','plugins.importexport.doaj.displayName','plugins.importexport.doaj.description','class::classes.article.Article','primitive::string'),(27,'issue=>crossref-xml','plugins.importexport.crossref.displayName','plugins.importexport.crossref.description','class::classes.issue.Issue[]','xml::schema(https://www.crossref.org/schemas/crossref4.3.6.xsd)'),(28,'article=>crossref-xml','plugins.importexport.crossref.displayName','plugins.importexport.crossref.description','class::classes.article.Article[]','xml::schema(https://www.crossref.org/schemas/crossref4.3.6.xsd)'),(29,'issue=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.issue.Issue','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(30,'article=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.article.Article','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(31,'galley=>datacite-xml','plugins.importexport.datacite.displayName','plugins.importexport.datacite.description','class::classes.article.ArticleGalley','xml::schema(http://schema.datacite.org/meta/kernel-4/metadata.xsd)'),(32,'article=>pubmed-xml','plugins.importexport.pubmed.displayName','plugins.importexport.pubmed.description','class::classes.article.Article[]','xml::dtd'),(33,'issue=>medra-xml','plugins.importexport.medra.displayName','plugins.importexport.medra.description','class::classes.issue.Issue[]','xml::schema(http://www.medra.org/schema/onix/DOIMetadata/2.0/ONIX_DOIMetadata_2.0.xsd)'),(34,'article=>medra-xml','plugins.importexport.medra.displayName','plugins.importexport.medra.description','class::classes.article.Article[]','xml::schema(http://www.medra.org/schema/onix/DOIMetadata/2.0/ONIX_DOIMetadata_2.0.xsd)'),(35,'galley=>medra-xml','plugins.importexport.medra.displayName','plugins.importexport.medra.description','class::classes.article.ArticleGalley[]','xml::schema(http://www.medra.org/schema/onix/DOIMetadata/2.0/ONIX_DOIMetadata_2.0.xsd)');
/*!40000 ALTER TABLE `filter_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filter_settings`
--

DROP TABLE IF EXISTS `filter_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter_settings` (
  `filter_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `filter_settings_pkey` (`filter_id`,`locale`,`setting_name`),
  KEY `filter_settings_id` (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filter_settings`
--

LOCK TABLES `filter_settings` WRITE;
/*!40000 ALTER TABLE `filter_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `filter_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `filter_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `filter_group_id` bigint(20) NOT NULL DEFAULT '0',
  `context_id` bigint(20) NOT NULL DEFAULT '0',
  `display_name` varchar(255) DEFAULT NULL,
  `class_name` varchar(255) DEFAULT NULL,
  `is_template` tinyint(4) NOT NULL DEFAULT '0',
  `parent_filter_id` bigint(20) NOT NULL DEFAULT '0',
  `seq` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (1,1,0,'MODS 3.4','lib.pkp.plugins.metadata.mods34.filter.Mods34DescriptionXmlFilter',0,0,0),(2,2,0,'Extract metadata from a(n) Article','plugins.metadata.mods34.filter.Mods34SchemaArticleAdapter',0,0,0),(3,3,0,'Inject metadata into a(n) Article','plugins.metadata.mods34.filter.Mods34SchemaArticleAdapter',0,0,0),(4,4,0,'Extract metadata from a(n) Article','plugins.metadata.dc11.filter.Dc11SchemaArticleAdapter',0,0,0),(5,5,0,'Native XML submission export','plugins.importexport.native.filter.ArticleNativeXmlFilter',0,0,0),(6,6,0,'Native XML submission import','plugins.importexport.native.filter.NativeXmlArticleFilter',0,0,0),(7,7,0,'Native XML issue export','plugins.importexport.native.filter.IssueNativeXmlFilter',0,0,0),(8,8,0,'Native XML issue import','plugins.importexport.native.filter.NativeXmlIssueFilter',0,0,0),(9,9,0,'Native XML issue galley export','plugins.importexport.native.filter.IssueGalleyNativeXmlFilter',0,0,0),(10,10,0,'Native XML issue galley import','plugins.importexport.native.filter.NativeXmlIssueGalleyFilter',0,0,0),(11,11,0,'Native XML author export','plugins.importexport.native.filter.AuthorNativeXmlFilter',0,0,0),(12,12,0,'Native XML author import','plugins.importexport.native.filter.NativeXmlAuthorFilter',0,0,0),(13,16,0,'Native XML submission file import','plugins.importexport.native.filter.NativeXmlArticleFileFilter',0,0,0),(14,17,0,'Native XML submission file import','plugins.importexport.native.filter.NativeXmlArtworkFileFilter',0,0,0),(15,18,0,'Native XML submission file import','plugins.importexport.native.filter.NativeXmlSupplementaryFileFilter',0,0,0),(16,13,0,'Native XML submission file export','lib.pkp.plugins.importexport.native.filter.SubmissionFileNativeXmlFilter',0,0,0),(17,14,0,'Native XML submission file export','plugins.importexport.native.filter.ArtworkFileNativeXmlFilter',0,0,0),(18,15,0,'Native XML submission file export','plugins.importexport.native.filter.SupplementaryFileNativeXmlFilter',0,0,0),(19,19,0,'Native XML representation export','plugins.importexport.native.filter.ArticleGalleyNativeXmlFilter',0,0,0),(20,20,0,'Native XML representation import','plugins.importexport.native.filter.NativeXmlArticleGalleyFilter',0,0,0),(21,21,0,'User XML user export','lib.pkp.plugins.importexport.users.filter.PKPUserUserXmlFilter',0,0,0),(22,22,0,'User XML user import','lib.pkp.plugins.importexport.users.filter.UserXmlPKPUserFilter',0,0,0),(23,23,0,'Native XML user group export','lib.pkp.plugins.importexport.users.filter.UserGroupNativeXmlFilter',0,0,0),(24,24,0,'Native XML user group import','lib.pkp.plugins.importexport.users.filter.NativeXmlUserGroupFilter',0,0,0),(25,25,0,'DOAJ XML export','plugins.importexport.doaj.filter.DOAJXmlFilter',0,0,0),(26,26,0,'DOAJ JSON export','plugins.importexport.doaj.filter.DOAJJsonFilter',0,0,0),(27,27,0,'Crossref XML issue export','plugins.importexport.crossref.filter.IssueCrossrefXmlFilter',0,0,0),(28,28,0,'Crossref XML issue export','plugins.importexport.crossref.filter.ArticleCrossrefXmlFilter',0,0,0),(29,29,0,'DataCite XML export','plugins.importexport.datacite.filter.DataciteXmlFilter',0,0,0),(30,30,0,'DataCite XML export','plugins.importexport.datacite.filter.DataciteXmlFilter',0,0,0),(31,31,0,'DataCite XML export','plugins.importexport.datacite.filter.DataciteXmlFilter',0,0,0),(32,32,0,'ArticlePubMedXmlFilter','plugins.importexport.pubmed.filter.ArticlePubMedXmlFilter',0,0,0),(33,33,0,'mEDRA XML issue export','plugins.importexport.medra.filter.IssueMedraXmlFilter',0,0,0),(34,34,0,'mEDRA XML article export','plugins.importexport.medra.filter.ArticleMedraXmlFilter',0,0,0),(35,35,0,'mEDRA XML article export','plugins.importexport.medra.filter.GalleyMedraXmlFilter',0,0,0);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_settings`
--

DROP TABLE IF EXISTS `genre_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_settings` (
  `genre_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `genre_settings_pkey` (`genre_id`,`locale`,`setting_name`),
  KEY `genre_settings_genre_id` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_settings`
--

LOCK TABLES `genre_settings` WRITE;
/*!40000 ALTER TABLE `genre_settings` DISABLE KEYS */;
INSERT INTO `genre_settings` VALUES (1,'en_US','name','Article Text','string'),(1,'fr_CA','name','Texte de l\'article','string'),(2,'en_US','name','Research Instrument','string'),(2,'fr_CA','name','Instruments de recherche','string'),(3,'en_US','name','Research Materials','string'),(3,'fr_CA','name','Matériels de recherche','string'),(4,'en_US','name','Research Results','string'),(4,'fr_CA','name','Résultats de recherche','string'),(5,'en_US','name','Transcripts','string'),(5,'fr_CA','name','Transcriptions','string'),(6,'en_US','name','Data Analysis','string'),(6,'fr_CA','name','Analyse de données','string'),(7,'en_US','name','Data Set','string'),(7,'fr_CA','name','Ensemble de données','string'),(8,'en_US','name','Source Texts','string'),(8,'fr_CA','name','Sources textuelles','string'),(9,'en_US','name','Multimedia','string'),(9,'fr_CA','name','Multimedia','string'),(10,'en_US','name','Image','string'),(10,'fr_CA','name','Image','string'),(11,'en_US','name','HTML Stylesheet','string'),(11,'fr_CA','name','HTML Stylesheet','string'),(12,'en_US','name','Other','string'),(12,'fr_CA','name','Autre','string');
/*!40000 ALTER TABLE `genre_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genre_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `seq` bigint(20) DEFAULT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `category` bigint(20) NOT NULL DEFAULT '1',
  `dependent` tinyint(4) NOT NULL DEFAULT '0',
  `supplementary` tinyint(4) DEFAULT '0',
  `entry_key` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,1,0,1,1,0,0,'SUBMISSION'),(2,1,1,1,3,0,1,'RESEARCHINSTRUMENT'),(3,1,2,1,3,0,1,'RESEARCHMATERIALS'),(4,1,3,1,3,0,1,'RESEARCHRESULTS'),(5,1,4,1,3,0,1,'TRANSCRIPTS'),(6,1,5,1,3,0,1,'DATAANALYSIS'),(7,1,6,1,3,0,1,'DATASET'),(8,1,7,1,3,0,1,'SOURCETEXTS'),(9,1,8,1,1,1,1,'MULTIMEDIA'),(10,1,9,1,2,1,0,'IMAGE'),(11,1,10,1,1,1,0,'STYLE'),(12,1,11,1,3,0,1,'OTHER');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutional_subscription_ip`
--

DROP TABLE IF EXISTS `institutional_subscription_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutional_subscription_ip` (
  `institutional_subscription_ip_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) NOT NULL,
  `ip_string` varchar(40) NOT NULL,
  `ip_start` bigint(20) NOT NULL,
  `ip_end` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`institutional_subscription_ip_id`),
  KEY `institutional_subscription_ip_subscription_id` (`subscription_id`),
  KEY `institutional_subscription_ip_start` (`ip_start`),
  KEY `institutional_subscription_ip_end` (`ip_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutional_subscription_ip`
--

LOCK TABLES `institutional_subscription_ip` WRITE;
/*!40000 ALTER TABLE `institutional_subscription_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutional_subscription_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutional_subscriptions`
--

DROP TABLE IF EXISTS `institutional_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutional_subscriptions` (
  `institutional_subscription_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) NOT NULL,
  `institution_name` varchar(255) NOT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`institutional_subscription_id`),
  KEY `institutional_subscriptions_subscription_id` (`subscription_id`),
  KEY `institutional_subscriptions_domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutional_subscriptions`
--

LOCK TABLES `institutional_subscriptions` WRITE;
/*!40000 ALTER TABLE `institutional_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutional_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_files`
--

DROP TABLE IF EXISTS `issue_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `issue_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `content_type` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `issue_files_issue_id` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_files`
--

LOCK TABLES `issue_files` WRITE;
/*!40000 ALTER TABLE `issue_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_galley_settings`
--

DROP TABLE IF EXISTS `issue_galley_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `issue_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  KEY `issue_galley_settings_galley_id` (`galley_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_galley_settings`
--

LOCK TABLES `issue_galley_settings` WRITE;
/*!40000 ALTER TABLE `issue_galley_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_galley_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_galleys`
--

DROP TABLE IF EXISTS `issue_galleys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_galleys` (
  `galley_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locale` varchar(14) DEFAULT NULL,
  `issue_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `label` varchar(32) DEFAULT NULL,
  `seq` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`galley_id`),
  KEY `issue_galleys_issue_id` (`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_galleys`
--

LOCK TABLES `issue_galleys` WRITE;
/*!40000 ALTER TABLE `issue_galleys` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_galleys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_settings`
--

DROP TABLE IF EXISTS `issue_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issue_settings` (
  `issue_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `issue_settings_pkey` (`issue_id`,`locale`,`setting_name`),
  KEY `issue_settings_issue_id` (`issue_id`),
  KEY `issue_settings_name_value` (`setting_name`(50),`setting_value`(150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_settings`
--

LOCK TABLES `issue_settings` WRITE;
/*!40000 ALTER TABLE `issue_settings` DISABLE KEYS */;
INSERT INTO `issue_settings` VALUES (1,'en_US','description','','string'),(1,'en_US','title','','string');
/*!40000 ALTER TABLE `issue_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `issues` (
  `issue_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `volume` smallint(6) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `current` tinyint(4) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `access_status` tinyint(4) NOT NULL DEFAULT '1',
  `open_access_date` datetime DEFAULT NULL,
  `show_volume` tinyint(4) NOT NULL DEFAULT '0',
  `show_number` tinyint(4) NOT NULL DEFAULT '0',
  `show_year` tinyint(4) NOT NULL DEFAULT '0',
  `show_title` tinyint(4) NOT NULL DEFAULT '0',
  `style_file_name` varchar(90) DEFAULT NULL,
  `original_style_file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `issues_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,1,1,'2',2014,1,1,'2019-02-28 21:00:00',NULL,'2019-02-28 21:00:00',1,NULL,1,1,1,0,NULL,NULL),(2,1,1,'1',2014,1,1,'2016-02-11 00:00:00',NULL,'2019-02-28 21:05:44',1,NULL,1,1,1,0,NULL,NULL);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_views`
--

DROP TABLE IF EXISTS `item_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_views` (
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` varchar(32) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_last_viewed` datetime DEFAULT NULL,
  UNIQUE KEY `item_views_pkey` (`assoc_type`,`assoc_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_views`
--

LOCK TABLES `item_views` WRITE;
/*!40000 ALTER TABLE `item_views` DISABLE KEYS */;
INSERT INTO `item_views` VALUES (515,'78-1',1,'2020-02-03 18:20:46'),(515,'32-1',1,'2020-02-05 21:08:22');
/*!40000 ALTER TABLE `item_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journal_settings`
--

DROP TABLE IF EXISTS `journal_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journal_settings` (
  `journal_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `journal_settings_pkey` (`journal_id`,`locale`,`setting_name`),
  KEY `journal_settings_journal_id` (`journal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journal_settings`
--

LOCK TABLES `journal_settings` WRITE;
/*!40000 ALTER TABLE `journal_settings` DISABLE KEYS */;
INSERT INTO `journal_settings` VALUES (1,'','contactEmail','rvaca@mailinator.com'),(1,'','contactName','Ramiro Vaca'),(1,'','contactPhone',''),(1,'','defaultReviewMode','2'),(1,'','emailSignature','<br/>\n________________________________________________________________________<br/>\n<a href=\"{$contextUrl}\">{$contextName}</a>'),(1,'','enableOai','1'),(1,'','itemsPerPage','25'),(1,'','keywords','request'),(1,'','mailingAddress','123 456th Street\r\nBurnaby, British Columbia\r\nCanada'),(1,'','membershipFee','0'),(1,'','numPageLinks','10'),(1,'','numWeeksPerReview','4'),(1,'','onlineIssn',''),(1,'','printIssn',''),(1,'','publicationFee','0'),(1,'','publisherInstitution',''),(1,'','purchaseArticleFee','0'),(1,'','reviewerAccessKeysEnabled','1'),(1,'','supportedFormLocales','a:1:{i:0;s:5:\"en_US\";}'),(1,'','supportedLocales','a:2:{i:0;s:5:\"en_US\";i:1;s:5:\"fr_CA\";}'),(1,'','supportedSubmissionLocales','a:1:{i:0;s:5:\"en_US\";}'),(1,'','supportEmail','rvaca@mailinator.com'),(1,'','supportName','Ramiro Vaca'),(1,'','supportPhone',''),(1,'','themePluginPath','default'),(1,'en_US','abbreviation','J Pub Know'),(1,'en_US','acronym','PK'),(1,'en_US','authorInformation','Interested in submitting to this journal? We recommend that you review the <a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/about\">About the Journal</a> page for the journal\'s section policies, as well as the <a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/about/submissions#authorGuidelines\">Author Guidelines</a>. Authors need to <a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/user/register\">register</a> with the journal prior to submitting or, if already registered, can simply <a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/index/login\">log in</a> and begin the five-step process.'),(1,'en_US','authorSelfArchivePolicy','This journal permits and encourages authors to post items submitted to the journal on personal websites or institutional repositories both prior to and after publication, while providing bibliographic details that credit, if applicable, its publication in this journal.'),(1,'en_US','clockssLicense','This journal utilizes the CLOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href=\"http://clockss.org/\">More...</a>'),(1,'en_US','copyeditInstructions','The copyediting stage is intended to improve the flow, clarity, grammar, wording, and formatting of the article. It represents the last chance for the author to make any substantial changes to the text because the next stage is restricted to typos and formatting corrections.\n\nThe file to be copyedited is in Word or .rtf format and therefore can easily be edited as a word processing document. The set of instructions displayed here proposes two approaches to copyediting. One is based on Microsoft Word\'s Track Changes feature and requires that the copy editor, editor, and author have access to this program. A second system, which is software independent, has been borrowed, with permission, from the Harvard Educational Review. The journal editor is in a position to modify these instructions, so suggestions can be made to improve the process for this journal.\n\n\n<h4>Copyediting Systems</h4>\n\n<strong>1. Microsoft Word\'s Track Changes</strong>\n\nUnder Tools in the menu bar, the feature Track Changes enables the copy editor to make insertions (text appears in color) and deletions (text appears crossed out in color or in the margins as deleted). The copy editor can posit queries to both the author (Author Queries) and to the editor (Editor Queries) by inserting these queries in square brackets. The copyedited version is then uploaded, and the editor is notified. The editor then reviews the text and notifies the author.\n\nThe editor and author should leave those changes with which they are satisfied. If further changes are necessary, the editor and author can make changes to the initial insertions or deletions, as well as make new insertions or deletions elsewhere in the text. Authors and editors should respond to each of the queries addressed to them, with responses placed inside the square brackets.\n\nAfter the text has been reviewed by editor and author, the copy editor will make a final pass over the text accepting the changes in preparation for the layout and galley stage.\n\n\n<strong>2. Harvard Educational Review</strong>\n\n<strong>Instructions for Making Electronic Revisions to the Manuscript</strong>\n\nPlease follow the following protocol for making electronic revisions to your manuscript:\n\n<strong>Responding to suggested changes.</strong>\n&nbsp; For each of the suggested changes that you accept, unbold the text.\n&nbsp; For each of the suggested changes that you do not accept, re-enter the original text and <strong>bold</strong> it.\n\n<strong>Making additions and deletions.</strong>\n&nbsp; Indicate additions by <strong>bolding</strong> the new text.\n&nbsp; Replace deleted sections with: <strong>[deleted text]</strong>.\n&nbsp; If you delete one or more sentence, please indicate with a note, e.g., <strong>[deleted 2 sentences]</strong>.\n\n<strong>Responding to Queries to the Author (QAs).</strong>\n&nbsp; Keep all QAs intact and bolded within the text. Do not delete them.\n&nbsp; To reply to a QA, add a comment after it. Comments should be delimited using:\n<strong>[Comment:]</strong>\n&nbsp; e.g., <strong>[Comment: Expanded discussion of methodology as you suggested]</strong>.\n\n<strong>Making comments.</strong>\n&nbsp; Use comments to explain organizational changes or major revisions\n&nbsp; e.g., <strong>[Comment: Moved the above paragraph from p. 5 to p. 7].</strong>\n&nbsp; Note: When referring to page numbers, please use the page numbers from the printed copy of the manuscript that was sent to you. This is important since page numbers may change as a document is revised electronically.\n\n<h4>An Illustration of an Electronic Revision</h4>\n\n<ol>\n<li><strong>Initial copyedit.</strong> The journal copy editor will edit the text to improve flow, clarity, grammar, wording, and formatting, as well as including author queries as necessary. Once the initial edit is complete, the copy editor will upload the revised document through the journal Web site and notify the author that the edited manuscript is available for review.</li>\n<li><strong>Author copyedit.</strong> Before making dramatic departures from the structure and organization of the edited manuscript, authors must check in with the editors who are co-chairing the piece. Authors should accept/reject any changes made during the initial copyediting, as appropriate, and respond to all author queries. When finished with the revisions, authors should rename the file from AuthorNameQA.doc to AuthorNameQAR.doc (e.g., from LeeQA.doc to LeeQAR.doc) and upload the revised document through the journal Web site as directed.</li>\n<li><strong>Final copyedit.</strong> The journal copy editor will verify changes made by the author and incorporate the responses to the author queries to create a final manuscript. When finished, the copy editor will upload the final document through the journal Web site and alert the layout editor to complete formatting.</li>\n</ol>'),(1,'en_US','description','<p>The Journal of Public Knowledge is a peer-reviewed quarterly publication on the subject of public access to science.</p>'),(1,'en_US','librarianInformation','We encourage research librarians to list this journal among their library\'s electronic journal holdings. As well, it may be worth noting that this journal\'s open source publishing system is suitable for libraries to host for their faculty members to use with journals they are involved in editing (see <a href=\"http://pkp.sfu.ca/ojs\">Open Journal Systems</a>).'),(1,'en_US','lockssLicense','This journal utilizes the LOCKSS system to create a distributed archiving system among participating libraries and permits those libraries to create permanent archives of the journal for purposes of preservation and restoration. <a href=\"http://www.lockss.org/\">More...</a>'),(1,'en_US','name','Journal of Public Knowledge'),(1,'en_US','openAccessPolicy','This journal provides immediate open access to its content on the principle that making research freely available to the public supports a greater global exchange of knowledge.'),(1,'en_US','privacyStatement','The names and email addresses entered in this journal site will be used exclusively for the stated purposes of this journal and will not be made available for any other purpose or to any other party.'),(1,'en_US','proofInstructions','<p>The proofreading stage is intended to catch any errors in the galley\'s spelling, grammar, and formatting. More substantial changes cannot be made at this stage, unless discussed with the Section Editor. In Layout, click on VIEW PROOF to see the HTML, PDF, and other available file formats used in publishing this item.</p>\n	<h4>For Spelling and Grammar Errors</h4>\n\n	<p>Copy the problem word or groups of words and paste them into the Proofreading Corrections box with \"CHANGE-TO\" instructions to the editor as follows:</p>\n\n	<pre>1. CHANGE...\n	then the others\n	TO...\n	than the others</pre>\n	<br />\n	<pre>2. CHANGE...\n	Malinowsky\n	TO...\n	Malinowski</pre>\n	<br />\n\n	<h4>For Formatting Errors</h4>\n\n	<p>Describe the location and nature of the problem in the Proofreading Corrections box after typing in the title \"FORMATTING\" as follows:</p>\n	<br />\n	<pre>3. FORMATTING\n	The numbers in Table 3 are not aligned in the third column.</pre>\n	<br />\n	<pre>4. FORMATTING\n	The paragraph that begins \"This last topic...\" is not indented.</pre>'),(1,'en_US','readerInformation','We encourage readers to sign up for the publishing notification service for this journal. Use the <a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/user/register\">Register</a> link at the top of the home page for the journal. This registration will result in the reader receiving the Table of Contents by email for each new issue of the journal. This list also allows the journal to claim a certain level of support or readership. See the journal\'s <a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge/about/submissions#privacyStatement\">Privacy Statement</a>, which assures readers that their name and email address will not be used for other purposes.'),(1,'en_US','refLinkInstructions','<h4>To Add Reference Linking to the Layout Process</h4>\n	<p>When turning a submission into HTML or PDF, make sure that all hyperlinks in the submission are active.</p>\n	<h4>A. When the Author Provides a Link with the Reference</h4>\n	<ol>\n	<li>While the submission is still in its word processing format (e.g., Word), add the phrase VIEW ITEM to the end of the reference that has a URL.</li>\n	<li>Turn that phrase into a hyperlink by highlighting it and using Word\'s Insert Hyperlink tool and the URL prepared in #2.</li>\n	</ol>\n	<h4>B. Enabling Readers to Search Google Scholar For References</h4>\n	<ol>\n		<li>While the submission is still in its word processing format (e.g., Word), copy the title of the work referenced in the References list (if it appears to be too common a title—e.g., \"Peace\"—then copy author and title).</li>\n		<li>Paste the reference\'s title between the %22\'s, placing a + between each word: http://scholar.google.com/scholar?q=%22PASTE+TITLE+HERE%22&hl=en&lr=&btnG=Search.</li>\n\n	<li>Add the phrase GS SEARCH to the end of each citation in the submission\'s References list.</li>\n	<li>Turn that phrase into a hyperlink by highlighting it and using Word\'s Insert Hyperlink tool and the URL prepared in #2.</li>\n	</ol>\n	<h4>C. Enabling Readers to Search for References with a DOI</h4>\n	<ol>\n	<li>While the submission is still in Word, copy a batch of references into CrossRef Text Query http://www.crossref.org/freeTextQuery/.</li>\n	<li>Paste each DOI that the Query provides in the following URL (between = and &): http://www.cmaj.ca/cgi/external_ref?access_num=PASTE DOI#HERE&link_type=DOI.</li>\n	<li>Add the phrase CrossRef to the end of each citation in the submission\'s References list.</li>\n	<li>Turn that phrase into a hyperlink by highlighting the phrase and using Word\'s Insert Hyperlink tool and the appropriate URL prepared in #2.</li>\n	</ol>'),(1,'en_US','submissionChecklist','a:5:{i:0;a:2:{s:7:\"content\";s:165:\"The submission has not been previously published, nor is it before another journal for consideration (or an explanation has been provided in Comments to the Editor).\";s:5:\"order\";s:1:\"1\";}i:1;a:2:{s:7:\"content\";s:82:\"The submission file is in OpenOffice, Microsoft Word, or RTF document file format.\";s:5:\"order\";s:1:\"2\";}i:2;a:2:{s:7:\"content\";s:60:\"Where available, URLs for the references have been provided.\";s:5:\"order\";s:1:\"3\";}i:3;a:2:{s:7:\"content\";s:239:\"The text is single-spaced; uses a 12-point font; employs italics, rather than underlining (except with URL addresses); and all illustrations, figures, and tables are placed within the text at the appropriate points, rather than at the end.\";s:5:\"order\";s:1:\"4\";}i:4;a:2:{s:7:\"content\";s:99:\"The text adheres to the stylistic and bibliographic requirements outlined in the Author Guidelines.\";s:5:\"order\";s:1:\"5\";}}'),(1,'fr_CA','description','<p>Le Journal de Public Knowledge est une publication trimestrielle évaluée par les pairs sur le thème de l\'accès du public à la science.</p>'),(1,'fr_CA','name','Journal de la connaissance du public');
/*!40000 ALTER TABLE `journal_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `journal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(32) NOT NULL,
  `seq` double NOT NULL DEFAULT '0',
  `primary_locale` varchar(14) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`journal_id`),
  UNIQUE KEY `journals_path` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (1,'publicknowledge',1,'en_US',1);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_file_settings`
--

DROP TABLE IF EXISTS `library_file_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_file_settings` (
  `file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `library_file_settings_pkey` (`file_id`,`locale`,`setting_name`),
  KEY `library_file_settings_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_file_settings`
--

LOCK TABLES `library_file_settings` WRITE;
/*!40000 ALTER TABLE `library_file_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_file_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_files`
--

DROP TABLE IF EXISTS `library_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `original_file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `public_access` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`file_id`),
  KEY `library_files_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_files`
--

LOCK TABLES `library_files` WRITE;
/*!40000 ALTER TABLE `library_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata_description_settings`
--

DROP TABLE IF EXISTS `metadata_description_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata_description_settings` (
  `metadata_description_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `metadata_descripton_settings_pkey` (`metadata_description_id`,`locale`,`setting_name`),
  KEY `metadata_description_settings_id` (`metadata_description_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata_description_settings`
--

LOCK TABLES `metadata_description_settings` WRITE;
/*!40000 ALTER TABLE `metadata_description_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata_description_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata_descriptions`
--

DROP TABLE IF EXISTS `metadata_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata_descriptions` (
  `metadata_description_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL DEFAULT '0',
  `assoc_id` bigint(20) NOT NULL DEFAULT '0',
  `schema_namespace` varchar(255) NOT NULL,
  `schema_name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `seq` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`metadata_description_id`),
  KEY `metadata_descriptions_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata_descriptions`
--

LOCK TABLES `metadata_descriptions` WRITE;
/*!40000 ALTER TABLE `metadata_descriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metrics` (
  `load_id` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `pkp_section_id` bigint(20) DEFAULT NULL,
  `assoc_object_type` bigint(20) DEFAULT NULL,
  `assoc_object_id` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `representation_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `day` varchar(8) DEFAULT NULL,
  `month` varchar(6) DEFAULT NULL,
  `file_type` tinyint(4) DEFAULT NULL,
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `metric_type` varchar(255) NOT NULL,
  `metric` int(11) NOT NULL,
  KEY `metrics_load_id` (`load_id`),
  KEY `metrics_metric_type_context_id` (`metric_type`,`context_id`),
  KEY `metrics_metric_type_submission_id_assoc_type` (`metric_type`,`submission_id`,`assoc_type`),
  KEY `metrics_metric_type_submission_id_assoc` (`metric_type`,`context_id`,`assoc_type`,`assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrics`
--

LOCK TABLES `metrics` WRITE;
/*!40000 ALTER TABLE `metrics` DISABLE KEYS */;
INSERT INTO `metrics` VALUES ('usage_events_20200130.log',1,1,259,1,21,NULL,1048585,21,'20200130','202001',NULL,NULL,NULL,NULL,'ojs::counter',1);
/*!40000 ALTER TABLE `metrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_assignment_settings`
--

DROP TABLE IF EXISTS `navigation_menu_item_assignment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_item_assignment_settings` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `navigation_menu_item_assignment_settings_pkey` (`navigation_menu_item_assignment_id`,`locale`,`setting_name`),
  KEY `assignment_settings_navigation_menu_item_assignment_id` (`navigation_menu_item_assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_assignment_settings`
--

LOCK TABLES `navigation_menu_item_assignment_settings` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_assignment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `navigation_menu_item_assignment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_assignments`
--

DROP TABLE IF EXISTS `navigation_menu_item_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_item_assignments` (
  `navigation_menu_item_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `navigation_menu_id` bigint(20) NOT NULL,
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `seq` bigint(20) DEFAULT '0',
  PRIMARY KEY (`navigation_menu_item_assignment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_assignments`
--

LOCK TABLES `navigation_menu_item_assignments` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_assignments` DISABLE KEYS */;
INSERT INTO `navigation_menu_item_assignments` VALUES (1,1,1,0,0),(2,1,2,0,1),(3,1,3,0,2),(4,1,4,3,0),(5,1,5,3,1),(6,1,6,3,2),(7,1,7,3,3),(8,2,8,0,0),(9,2,9,0,1),(10,2,10,0,2),(11,2,11,10,0),(12,2,12,10,1),(13,2,13,10,2),(14,2,14,10,3),(15,3,15,0,0),(16,3,16,0,1),(17,3,17,0,2),(18,3,18,0,3),(19,3,19,18,0),(20,3,20,18,1),(21,3,21,18,2),(22,3,22,18,3),(23,3,23,18,4);
/*!40000 ALTER TABLE `navigation_menu_item_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_item_settings`
--

DROP TABLE IF EXISTS `navigation_menu_item_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_item_settings` (
  `navigation_menu_item_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `navigation_menu_item_settings_pkey` (`navigation_menu_item_id`,`locale`,`setting_name`),
  KEY `navigation_menu_item_settings_navigation_menu_id` (`navigation_menu_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_item_settings`
--

LOCK TABLES `navigation_menu_item_settings` WRITE;
/*!40000 ALTER TABLE `navigation_menu_item_settings` DISABLE KEYS */;
INSERT INTO `navigation_menu_item_settings` VALUES (1,'','titleLocaleKey','navigation.register','string'),(2,'','titleLocaleKey','navigation.login','string'),(3,'','titleLocaleKey','{$loggedInUsername}','string'),(4,'','titleLocaleKey','navigation.dashboard','string'),(5,'','titleLocaleKey','common.viewProfile','string'),(6,'','titleLocaleKey','navigation.admin','string'),(7,'','titleLocaleKey','user.logOut','string'),(8,'','titleLocaleKey','navigation.register','string'),(9,'','titleLocaleKey','navigation.login','string'),(10,'','titleLocaleKey','{$loggedInUsername}','string'),(11,'','titleLocaleKey','navigation.dashboard','string'),(12,'','titleLocaleKey','common.viewProfile','string'),(13,'','titleLocaleKey','navigation.admin','string'),(14,'','titleLocaleKey','user.logOut','string'),(15,'','titleLocaleKey','navigation.current','string'),(16,'','titleLocaleKey','navigation.archives','string'),(17,'','titleLocaleKey','manager.announcements','string'),(18,'','titleLocaleKey','navigation.about','string'),(19,'','titleLocaleKey','about.aboutContext','string'),(20,'','titleLocaleKey','about.submissions','string'),(21,'','titleLocaleKey','about.editorialTeam','string'),(22,'','titleLocaleKey','manager.setup.privacyStatement','string'),(23,'','titleLocaleKey','about.contact','string'),(24,'','titleLocaleKey','common.search','string');
/*!40000 ALTER TABLE `navigation_menu_item_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menu_items`
--

DROP TABLE IF EXISTS `navigation_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menu_items` (
  `navigation_menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  PRIMARY KEY (`navigation_menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menu_items`
--

LOCK TABLES `navigation_menu_items` WRITE;
/*!40000 ALTER TABLE `navigation_menu_items` DISABLE KEYS */;
INSERT INTO `navigation_menu_items` VALUES (1,0,NULL,NULL,'NMI_TYPE_USER_REGISTER'),(2,0,NULL,NULL,'NMI_TYPE_USER_LOGIN'),(3,0,NULL,NULL,'NMI_TYPE_USER_DASHBOARD'),(4,0,NULL,NULL,'NMI_TYPE_USER_DASHBOARD'),(5,0,NULL,NULL,'NMI_TYPE_USER_PROFILE'),(6,0,NULL,NULL,'NMI_TYPE_ADMINISTRATION'),(7,0,NULL,NULL,'NMI_TYPE_USER_LOGOUT'),(8,1,NULL,NULL,'NMI_TYPE_USER_REGISTER'),(9,1,NULL,NULL,'NMI_TYPE_USER_LOGIN'),(10,1,NULL,NULL,'NMI_TYPE_USER_DASHBOARD'),(11,1,NULL,NULL,'NMI_TYPE_USER_DASHBOARD'),(12,1,NULL,NULL,'NMI_TYPE_USER_PROFILE'),(13,1,NULL,NULL,'NMI_TYPE_ADMINISTRATION'),(14,1,NULL,NULL,'NMI_TYPE_USER_LOGOUT'),(15,1,NULL,NULL,'NMI_TYPE_CURRENT'),(16,1,NULL,NULL,'NMI_TYPE_ARCHIVES'),(17,1,NULL,NULL,'NMI_TYPE_ANNOUNCEMENTS'),(18,1,NULL,NULL,'NMI_TYPE_ABOUT'),(19,1,NULL,NULL,'NMI_TYPE_ABOUT'),(20,1,NULL,NULL,'NMI_TYPE_SUBMISSIONS'),(21,1,NULL,NULL,'NMI_TYPE_EDITORIAL_TEAM'),(22,1,NULL,NULL,'NMI_TYPE_PRIVACY'),(23,1,NULL,NULL,'NMI_TYPE_CONTACT'),(24,1,NULL,NULL,'NMI_TYPE_SEARCH');
/*!40000 ALTER TABLE `navigation_menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navigation_menus`
--

DROP TABLE IF EXISTS `navigation_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `navigation_menus` (
  `navigation_menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `area_name` varchar(255) DEFAULT '',
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`navigation_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navigation_menus`
--

LOCK TABLES `navigation_menus` WRITE;
/*!40000 ALTER TABLE `navigation_menus` DISABLE KEYS */;
INSERT INTO `navigation_menus` VALUES (1,0,'user','User Navigation Menu'),(2,1,'user','User Navigation Menu'),(3,1,'primary','Primary Navigation Menu');
/*!40000 ALTER TABLE `navigation_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  PRIMARY KEY (`note_id`),
  KEY `notes_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,1048586,1,6,'2019-02-28 21:00:50','2019-02-28 21:00:50','Recommendation','<p>Daniel Barnes, David Buskins, Stephanie Berardo:<br><br>The recommendation regarding the submission to Journal of Public Knowledge, \"The influence of lactation on the quantity and quality of cashmere production\" is: Accept Submission<br><br>Minoti Inoue<br>Kyoto University<br>minoue@mailinator.com</p><br/><br/>\n________________________________________________________________________<br/>\n<a href=\"http://localhost/git/ojs-stable-3_1_2/index.php/publicknowledge\">Journal of Public Knowledge</a>');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_mail_list`
--

DROP TABLE IF EXISTS `notification_mail_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_mail_list` (
  `notification_mail_list_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL,
  `context` bigint(20) NOT NULL,
  PRIMARY KEY (`notification_mail_list_id`),
  UNIQUE KEY `notification_mail_list_email_context` (`email`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_mail_list`
--

LOCK TABLES `notification_mail_list` WRITE;
/*!40000 ALTER TABLE `notification_mail_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_mail_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_settings`
--

DROP TABLE IF EXISTS `notification_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_settings` (
  `notification_id` bigint(20) NOT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `notification_settings_pkey` (`notification_id`,`locale`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_settings`
--

LOCK TABLES `notification_settings` WRITE;
/*!40000 ALTER TABLE `notification_settings` DISABLE KEYS */;
INSERT INTO `notification_settings` VALUES (295,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(296,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(297,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(298,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(299,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(300,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(301,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(302,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(303,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(304,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(305,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(306,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(307,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(308,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(309,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(310,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(311,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(312,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(313,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(314,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(315,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(316,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(317,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(318,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(319,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(320,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(321,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(322,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(323,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(324,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(325,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(326,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(327,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(328,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(329,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(330,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(331,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(332,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(333,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(334,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(335,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(336,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(337,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(338,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(339,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(340,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(341,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(342,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(343,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(344,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(345,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(346,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(347,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(348,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(349,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(350,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(351,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(352,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(353,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(354,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(355,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(356,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(357,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(358,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(359,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(360,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(361,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(362,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(363,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(364,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(365,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(366,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(367,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(368,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(369,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(370,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(371,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(372,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(373,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(374,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(375,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(376,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(377,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(378,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(379,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(380,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(381,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(382,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(383,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(384,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(385,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(386,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(387,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(388,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(389,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(390,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(391,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(392,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(393,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(394,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(395,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(396,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(397,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(398,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(399,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(400,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(401,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(402,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(403,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(404,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(405,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(406,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(407,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(408,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(409,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(410,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(411,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(412,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(413,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(414,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(415,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(416,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(417,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(418,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(419,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(420,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(421,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(422,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(423,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(424,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(425,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(426,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(427,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(428,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(429,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(430,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(431,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string'),(432,'','contents','This is a kind reminder for you to check your journal\'s health through the editorial report.','string');
/*!40000 ALTER TABLE `notification_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_subscription_settings`
--

DROP TABLE IF EXISTS `notification_subscription_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_subscription_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(64) NOT NULL,
  `setting_value` text,
  `user_id` bigint(20) NOT NULL,
  `context` bigint(20) NOT NULL,
  `setting_type` varchar(6) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_subscription_settings`
--

LOCK TABLES `notification_subscription_settings` WRITE;
/*!40000 ALTER TABLE `notification_subscription_settings` DISABLE KEYS */;
INSERT INTO `notification_subscription_settings` VALUES (1,'blocked_emailed_notification','8',17,1,'int'),(2,'blocked_emailed_notification','268435477',17,1,'int'),(3,'blocked_emailed_notification','8',18,1,'int'),(4,'blocked_emailed_notification','268435477',18,1,'int'),(5,'blocked_emailed_notification','8',19,1,'int'),(6,'blocked_emailed_notification','268435477',19,1,'int'),(7,'blocked_emailed_notification','8',20,1,'int'),(8,'blocked_emailed_notification','268435477',20,1,'int'),(9,'blocked_emailed_notification','8',21,1,'int'),(10,'blocked_emailed_notification','268435477',21,1,'int'),(11,'blocked_emailed_notification','8',22,1,'int'),(12,'blocked_emailed_notification','268435477',22,1,'int'),(13,'blocked_emailed_notification','8',23,1,'int'),(14,'blocked_emailed_notification','268435477',23,1,'int'),(15,'blocked_emailed_notification','8',24,1,'int'),(16,'blocked_emailed_notification','268435477',24,1,'int'),(17,'blocked_emailed_notification','8',25,1,'int'),(18,'blocked_emailed_notification','268435477',25,1,'int'),(19,'blocked_emailed_notification','8',26,1,'int'),(20,'blocked_emailed_notification','268435477',26,1,'int'),(21,'blocked_emailed_notification','8',27,1,'int'),(22,'blocked_emailed_notification','268435477',27,1,'int'),(23,'blocked_emailed_notification','8',28,1,'int'),(24,'blocked_emailed_notification','268435477',28,1,'int'),(25,'blocked_emailed_notification','8',29,1,'int'),(26,'blocked_emailed_notification','268435477',29,1,'int'),(27,'blocked_emailed_notification','8',30,1,'int'),(28,'blocked_emailed_notification','268435477',30,1,'int'),(29,'blocked_emailed_notification','8',31,1,'int'),(30,'blocked_emailed_notification','268435477',31,1,'int'),(31,'blocked_emailed_notification','8',32,1,'int'),(32,'blocked_emailed_notification','268435477',32,1,'int'),(33,'blocked_emailed_notification','8',33,1,'int'),(34,'blocked_emailed_notification','268435477',33,1,'int'),(35,'blocked_emailed_notification','8',34,1,'int'),(36,'blocked_emailed_notification','268435477',34,1,'int'),(37,'blocked_emailed_notification','8',35,1,'int'),(38,'blocked_emailed_notification','268435477',35,1,'int'),(39,'blocked_emailed_notification','16777258',1,1,'int'),(40,'blocked_emailed_notification','16777258',2,1,'int'),(41,'blocked_emailed_notification','16777258',3,1,'int'),(42,'blocked_emailed_notification','16777258',5,1,'int'),(43,'blocked_emailed_notification','16777258',4,1,'int'),(44,'blocked_emailed_notification','16777258',6,1,'int');
/*!40000 ALTER TABLE `notification_subscription_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `level` bigint(20) NOT NULL,
  `type` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL,
  `date_read` datetime DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `notifications_context_id_user_id` (`context_id`,`user_id`,`level`),
  KEY `notifications_context_id` (`context_id`,`level`),
  KEY `notifications_assoc` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (2,1,0,2,16777244,'2019-02-28 20:58:57',NULL,256,1),(6,1,1,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(7,1,3,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(8,1,5,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(9,1,4,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(10,1,13,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(11,1,11,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(12,1,10,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(13,1,14,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(14,1,8,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(15,1,6,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(16,1,7,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(17,1,16,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(18,1,9,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(19,1,15,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(20,1,2,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(21,1,12,2,268435477,'2019-02-28 21:00:00',NULL,0,0),(22,1,3,2,16777217,'2019-02-28 21:00:30',NULL,1048585,1),(23,1,5,2,16777217,'2019-02-28 21:00:30',NULL,1048585,1),(24,1,4,2,16777217,'2019-02-28 21:00:30',NULL,1048585,1),(25,1,0,2,16777243,'2019-02-28 21:00:30',NULL,1048585,1),(26,1,0,2,16777245,'2019-02-28 21:00:30',NULL,1048585,1),(27,1,0,2,16777236,'2019-02-28 21:00:38','2019-02-28 21:00:39',523,1),(28,1,17,2,16777231,'2019-02-28 21:00:38',NULL,1048585,1),(30,1,3,3,16777249,'2019-02-28 21:00:50',NULL,1048586,1),(31,1,4,3,16777249,'2019-02-28 21:00:50',NULL,1048586,1),(32,1,5,3,16777249,'2019-02-28 21:00:50',NULL,1048586,1),(33,1,3,2,16777217,'2019-02-28 21:01:16',NULL,1048585,2),(34,1,5,2,16777217,'2019-02-28 21:01:16',NULL,1048585,2),(35,1,4,2,16777217,'2019-02-28 21:01:16',NULL,1048585,2),(36,1,0,2,16777243,'2019-02-28 21:01:16',NULL,1048585,2),(37,1,0,2,16777245,'2019-02-28 21:01:16',NULL,1048585,2),(38,1,0,2,16777236,'2019-02-28 21:01:24','2019-02-28 21:01:26',523,2),(40,1,9,3,16777227,'2019-02-28 21:01:28',NULL,517,1),(42,1,10,3,16777227,'2019-02-28 21:01:30',NULL,517,2),(44,1,18,2,16777230,'2019-02-28 21:01:33',NULL,1048585,2),(45,1,3,2,16777251,'2019-02-28 21:01:33','2019-02-28 21:01:34',1048585,2),(46,1,4,2,16777251,'2019-02-28 21:01:33',NULL,1048585,2),(47,1,5,2,16777251,'2019-02-28 21:01:33',NULL,1048585,2),(50,1,3,2,16777217,'2019-02-28 21:01:59',NULL,1048585,3),(51,1,5,2,16777217,'2019-02-28 21:01:59',NULL,1048585,3),(52,1,4,2,16777217,'2019-02-28 21:01:59',NULL,1048585,3),(53,1,0,2,16777243,'2019-02-28 21:01:59',NULL,1048585,3),(54,1,0,2,16777245,'2019-02-28 21:01:59',NULL,1048585,3),(55,1,3,2,16777217,'2019-02-28 21:02:19',NULL,1048585,4),(56,1,5,2,16777217,'2019-02-28 21:02:19',NULL,1048585,4),(57,1,4,2,16777217,'2019-02-28 21:02:19',NULL,1048585,4),(58,1,0,2,16777243,'2019-02-28 21:02:19',NULL,1048585,4),(59,1,0,2,16777245,'2019-02-28 21:02:19',NULL,1048585,4),(60,1,0,2,16777236,'2019-02-28 21:02:27','2019-02-28 21:02:28',523,3),(62,1,8,3,16777227,'2019-02-28 21:02:30',NULL,517,3),(64,1,10,3,16777227,'2019-02-28 21:02:33',NULL,517,4),(71,1,20,2,16777235,'2019-02-28 21:02:41',NULL,1048585,4),(72,1,3,2,16777254,'2019-02-28 21:02:41','2019-02-28 21:02:43',1048585,4),(73,1,4,2,16777254,'2019-02-28 21:02:41',NULL,1048585,4),(74,1,5,2,16777254,'2019-02-28 21:02:41',NULL,1048585,4),(77,1,3,2,16777217,'2019-02-28 21:03:08',NULL,1048585,5),(78,1,5,2,16777217,'2019-02-28 21:03:08',NULL,1048585,5),(79,1,4,2,16777217,'2019-02-28 21:03:08',NULL,1048585,5),(80,1,0,2,16777243,'2019-02-28 21:03:08',NULL,1048585,5),(81,1,0,2,16777245,'2019-02-28 21:03:08',NULL,1048585,5),(82,1,0,2,16777236,'2019-02-28 21:03:16','2019-02-28 21:03:18',523,4),(84,1,7,3,16777227,'2019-02-28 21:03:20',NULL,517,5),(86,1,10,3,16777227,'2019-02-28 21:03:22',NULL,517,6),(93,1,21,2,16777235,'2019-02-28 21:03:31',NULL,1048585,5),(94,1,3,2,16777254,'2019-02-28 21:03:31','2019-02-28 21:03:32',1048585,5),(95,1,4,2,16777254,'2019-02-28 21:03:31',NULL,1048585,5),(96,1,5,2,16777254,'2019-02-28 21:03:31',NULL,1048585,5),(98,1,3,2,16777217,'2019-02-28 21:03:55',NULL,1048585,6),(99,1,5,2,16777217,'2019-02-28 21:03:55',NULL,1048585,6),(100,1,4,2,16777217,'2019-02-28 21:03:55',NULL,1048585,6),(101,1,0,2,16777243,'2019-02-28 21:03:55',NULL,1048585,6),(102,1,0,2,16777245,'2019-02-28 21:03:55',NULL,1048585,6),(103,1,0,2,16777236,'2019-02-28 21:04:03','2019-02-28 21:04:04',523,5),(104,1,22,2,16777231,'2019-02-28 21:04:03',NULL,1048585,6),(107,1,9,3,16777227,'2019-02-28 21:04:08',NULL,517,8),(109,1,10,3,16777227,'2019-02-28 21:04:11',NULL,517,9),(111,1,3,2,16777219,'2019-02-28 21:04:21',NULL,517,7),(112,1,4,2,16777219,'2019-02-28 21:04:21',NULL,517,7),(113,1,5,2,16777219,'2019-02-28 21:04:21',NULL,517,7),(115,1,3,2,16777217,'2019-02-28 21:04:43',NULL,1048585,7),(116,1,5,2,16777217,'2019-02-28 21:04:43',NULL,1048585,7),(117,1,4,2,16777217,'2019-02-28 21:04:43',NULL,1048585,7),(118,1,0,2,16777243,'2019-02-28 21:04:43',NULL,1048585,7),(119,1,0,2,16777245,'2019-02-28 21:04:43',NULL,1048585,7),(120,1,3,2,16777217,'2019-02-28 21:05:06',NULL,1048585,8),(121,1,6,2,16777217,'2019-02-28 21:05:06',NULL,1048585,8),(122,1,0,2,16777243,'2019-02-28 21:05:06',NULL,1048585,8),(123,1,0,2,16777245,'2019-02-28 21:05:06',NULL,1048585,8),(124,1,0,2,16777236,'2019-02-28 21:05:14','2019-02-28 21:05:15',523,6),(126,1,7,3,16777227,'2019-02-28 21:05:17',NULL,517,10),(128,1,10,3,16777227,'2019-02-28 21:05:20',NULL,517,11),(134,1,24,2,16777235,'2019-02-28 21:05:29',NULL,1048585,8),(135,1,3,2,16777254,'2019-02-28 21:05:29','2019-02-28 21:05:30',1048585,8),(136,1,6,2,16777254,'2019-02-28 21:05:29',NULL,1048585,8),(139,1,3,2,16777217,'2019-02-28 21:06:03',NULL,1048585,15),(140,1,5,2,16777217,'2019-02-28 21:06:03',NULL,1048585,15),(141,1,4,2,16777217,'2019-02-28 21:06:03',NULL,1048585,15),(142,1,0,2,16777243,'2019-02-28 21:06:03',NULL,1048585,15),(143,1,0,2,16777245,'2019-02-28 21:06:03',NULL,1048585,15),(144,1,0,2,16777236,'2019-02-28 21:06:11','2019-02-28 21:06:12',523,7),(146,1,7,3,16777227,'2019-02-28 21:06:14',NULL,517,12),(148,1,9,3,16777227,'2019-02-28 21:06:17',NULL,517,13),(150,1,10,3,16777227,'2019-02-28 21:06:19',NULL,517,14),(157,1,25,2,16777235,'2019-02-28 21:06:28',NULL,1048585,15),(163,1,3,2,16777217,'2019-02-28 21:07:01',NULL,1048585,16),(164,1,5,2,16777217,'2019-02-28 21:07:01',NULL,1048585,16),(165,1,4,2,16777217,'2019-02-28 21:07:01',NULL,1048585,16),(166,1,0,2,16777243,'2019-02-28 21:07:01',NULL,1048585,16),(167,1,0,2,16777245,'2019-02-28 21:07:01',NULL,1048585,16),(168,1,0,2,16777236,'2019-02-28 21:07:09','2019-02-28 21:07:11',523,8),(169,1,26,2,16777231,'2019-02-28 21:07:09',NULL,1048585,16),(174,1,3,2,16777219,'2019-02-28 21:07:25',NULL,517,15),(175,1,4,2,16777219,'2019-02-28 21:07:25',NULL,517,15),(176,1,5,2,16777219,'2019-02-28 21:07:25',NULL,517,15),(177,1,3,2,16777219,'2019-02-28 21:07:35',NULL,517,16),(178,1,4,2,16777219,'2019-02-28 21:07:35',NULL,517,16),(179,1,5,2,16777219,'2019-02-28 21:07:35',NULL,517,16),(181,1,3,2,16777217,'2019-02-28 21:07:58',NULL,1048585,17),(182,1,5,2,16777217,'2019-02-28 21:07:58',NULL,1048585,17),(183,1,4,2,16777217,'2019-02-28 21:07:58',NULL,1048585,17),(184,1,0,2,16777243,'2019-02-28 21:07:58',NULL,1048585,17),(185,1,0,2,16777245,'2019-02-28 21:07:58',NULL,1048585,17),(186,1,3,2,16777217,'2019-02-28 21:08:19',NULL,1048585,18),(187,1,5,2,16777217,'2019-02-28 21:08:19',NULL,1048585,18),(188,1,4,2,16777217,'2019-02-28 21:08:19',NULL,1048585,18),(189,1,0,2,16777243,'2019-02-28 21:08:19',NULL,1048585,18),(190,1,0,2,16777245,'2019-02-28 21:08:19',NULL,1048585,18),(191,1,0,2,16777236,'2019-02-28 21:08:27','2019-02-28 21:08:29',523,9),(192,1,28,2,16777231,'2019-02-28 21:08:27',NULL,1048585,18),(193,1,7,3,16777227,'2019-02-28 21:08:31',NULL,517,17),(195,1,8,3,16777227,'2019-02-28 21:08:33',NULL,517,18),(197,1,3,2,16777217,'2019-02-28 21:08:53',NULL,1048585,19),(198,1,5,2,16777217,'2019-02-28 21:08:53',NULL,1048585,19),(199,1,4,2,16777217,'2019-02-28 21:08:53',NULL,1048585,19),(200,1,0,2,16777243,'2019-02-28 21:08:53',NULL,1048585,19),(201,1,0,2,16777245,'2019-02-28 21:08:53',NULL,1048585,19),(202,1,0,2,16777236,'2019-02-28 21:09:01','2019-02-28 21:09:03',523,10),(210,1,3,2,16777219,'2019-02-28 21:09:20',NULL,517,19),(211,1,4,2,16777219,'2019-02-28 21:09:20',NULL,517,19),(212,1,5,2,16777219,'2019-02-28 21:09:20',NULL,517,19),(213,1,3,2,16777219,'2019-02-28 21:09:30',NULL,517,20),(214,1,4,2,16777219,'2019-02-28 21:09:30',NULL,517,20),(215,1,5,2,16777219,'2019-02-28 21:09:30',NULL,517,20),(216,1,3,2,16777219,'2019-02-28 21:09:42',NULL,517,21),(217,1,4,2,16777219,'2019-02-28 21:09:42',NULL,517,21),(218,1,5,2,16777219,'2019-02-28 21:09:42',NULL,517,21),(219,1,29,3,16777232,'2019-02-28 21:09:51',NULL,1048585,19),(220,1,3,2,16777217,'2019-02-28 21:10:10',NULL,1048585,20),(221,1,5,2,16777217,'2019-02-28 21:10:10',NULL,1048585,20),(222,1,4,2,16777217,'2019-02-28 21:10:10',NULL,1048585,20),(223,1,0,2,16777243,'2019-02-28 21:10:10',NULL,1048585,20),(224,1,0,2,16777245,'2019-02-28 21:10:10',NULL,1048585,20),(225,1,3,2,16777217,'2019-02-28 21:10:29',NULL,1048585,21),(226,1,5,2,16777217,'2019-02-28 21:10:29',NULL,1048585,21),(227,1,4,2,16777217,'2019-02-28 21:10:29',NULL,1048585,21),(228,1,0,2,16777243,'2019-02-28 21:10:29',NULL,1048585,21),(229,1,0,2,16777245,'2019-02-28 21:10:29',NULL,1048585,21),(230,1,0,2,16777236,'2019-02-28 21:10:42','2019-02-28 21:10:44',523,11),(232,1,8,3,16777227,'2019-02-28 21:10:47',NULL,517,22),(234,1,9,3,16777227,'2019-02-28 21:10:51',NULL,517,23),(241,1,31,2,16777235,'2019-02-28 21:11:04',NULL,1048585,21),(242,1,3,2,16777254,'2019-02-28 21:11:04','2019-02-28 21:11:06',1048585,21),(243,1,4,2,16777254,'2019-02-28 21:11:04',NULL,1048585,21),(244,1,5,2,16777254,'2019-02-28 21:11:04',NULL,1048585,21),(246,1,3,2,16777217,'2019-02-28 21:11:46',NULL,1048585,22),(247,1,5,2,16777217,'2019-02-28 21:11:46',NULL,1048585,22),(248,1,4,2,16777217,'2019-02-28 21:11:46',NULL,1048585,22),(249,1,0,2,16777243,'2019-02-28 21:11:46',NULL,1048585,22),(250,1,0,2,16777245,'2019-02-28 21:11:46',NULL,1048585,22),(251,1,3,2,16777217,'2019-02-28 21:12:15',NULL,1048585,23),(252,1,5,2,16777217,'2019-02-28 21:12:15',NULL,1048585,23),(253,1,4,2,16777217,'2019-02-28 21:12:15',NULL,1048585,23),(254,1,0,2,16777243,'2019-02-28 21:12:15',NULL,1048585,23),(255,1,0,2,16777245,'2019-02-28 21:12:15',NULL,1048585,23),(256,1,0,2,16777236,'2019-02-28 21:12:24','2019-02-28 21:12:26',523,12),(258,1,7,3,16777227,'2019-02-28 21:12:28',NULL,517,24),(260,1,8,3,16777227,'2019-02-28 21:12:31',NULL,517,25),(267,1,33,2,16777235,'2019-02-28 21:12:43',NULL,1048585,23),(273,1,3,2,16777217,'2019-02-28 21:13:20',NULL,1048585,24),(274,1,5,2,16777217,'2019-02-28 21:13:20',NULL,1048585,24),(275,1,4,2,16777217,'2019-02-28 21:13:20',NULL,1048585,24),(276,1,0,2,16777243,'2019-02-28 21:13:20',NULL,1048585,24),(277,1,0,2,16777245,'2019-02-28 21:13:20',NULL,1048585,24),(278,1,34,2,16777234,'2019-02-28 21:13:29',NULL,1048585,24),(279,1,3,2,16777217,'2019-02-28 21:13:49',NULL,1048585,25),(280,1,6,2,16777217,'2019-02-28 21:13:49',NULL,1048585,25),(281,1,0,2,16777243,'2019-02-28 21:13:49',NULL,1048585,25),(282,1,0,2,16777245,'2019-02-28 21:13:49',NULL,1048585,25),(283,1,0,2,16777236,'2019-02-28 21:13:58','2019-02-28 21:14:00',523,13),(285,1,8,3,16777227,'2019-02-28 21:14:02',NULL,517,26),(287,1,9,3,16777227,'2019-02-28 21:14:06',NULL,517,27),(289,1,35,2,16777230,'2019-02-28 21:14:08',NULL,1048585,25),(290,1,3,2,16777251,'2019-02-28 21:14:08','2019-02-28 21:14:10',1048585,25),(291,1,6,2,16777251,'2019-02-28 21:14:08',NULL,1048585,25),(293,1,0,2,16777236,'2020-01-31 15:03:34','2020-01-31 15:03:41',523,14),(295,1,1,3,16777258,'2020-02-01 00:28:24',NULL,0,0),(296,1,2,3,16777258,'2020-02-01 00:28:24',NULL,0,0),(297,1,3,3,16777258,'2020-02-01 00:28:24',NULL,0,0),(298,1,5,3,16777258,'2020-02-01 00:28:24',NULL,0,0),(299,1,4,3,16777258,'2020-02-01 00:28:24',NULL,0,0),(300,1,6,3,16777258,'2020-02-01 00:28:24',NULL,0,0),(301,1,1,3,16777258,'2020-02-01 00:43:26',NULL,0,0),(302,1,2,3,16777258,'2020-02-01 00:43:26',NULL,0,0),(303,1,3,3,16777258,'2020-02-01 00:43:26',NULL,0,0),(304,1,5,3,16777258,'2020-02-01 00:43:26',NULL,0,0),(305,1,4,3,16777258,'2020-02-01 00:43:26',NULL,0,0),(306,1,6,3,16777258,'2020-02-01 00:43:26',NULL,0,0),(307,1,1,3,16777258,'2020-02-01 00:43:27',NULL,0,0),(308,1,2,3,16777258,'2020-02-01 00:43:27',NULL,0,0),(309,1,3,3,16777258,'2020-02-01 00:43:27',NULL,0,0),(310,1,5,3,16777258,'2020-02-01 00:43:27',NULL,0,0),(311,1,4,3,16777258,'2020-02-01 00:43:27',NULL,0,0),(312,1,6,3,16777258,'2020-02-01 00:43:27',NULL,0,0),(313,1,1,3,16777258,'2020-02-01 00:43:46',NULL,0,0),(314,1,2,3,16777258,'2020-02-01 00:43:46',NULL,0,0),(315,1,3,3,16777258,'2020-02-01 00:43:46',NULL,0,0),(316,1,5,3,16777258,'2020-02-01 00:43:46',NULL,0,0),(317,1,4,3,16777258,'2020-02-01 00:43:46',NULL,0,0),(318,1,6,3,16777258,'2020-02-01 00:43:46',NULL,0,0),(319,1,1,3,16777258,'2020-02-01 00:43:47',NULL,0,0),(320,1,2,3,16777258,'2020-02-01 00:43:47',NULL,0,0),(321,1,3,3,16777258,'2020-02-01 00:43:47',NULL,0,0),(322,1,5,3,16777258,'2020-02-01 00:43:47',NULL,0,0),(323,1,4,3,16777258,'2020-02-01 00:43:47',NULL,0,0),(324,1,6,3,16777258,'2020-02-01 00:43:47',NULL,0,0),(325,1,1,3,16777258,'2020-02-01 00:45:02',NULL,0,0),(326,1,2,3,16777258,'2020-02-01 00:45:02',NULL,0,0),(327,1,3,3,16777258,'2020-02-01 00:45:03',NULL,0,0),(328,1,5,3,16777258,'2020-02-01 00:45:03',NULL,0,0),(329,1,4,3,16777258,'2020-02-01 00:45:03',NULL,0,0),(330,1,6,3,16777258,'2020-02-01 00:45:03',NULL,0,0),(331,1,1,3,16777258,'2020-02-01 00:45:04',NULL,0,0),(332,1,2,3,16777258,'2020-02-01 00:45:04',NULL,0,0),(333,1,3,3,16777258,'2020-02-01 00:45:04',NULL,0,0),(334,1,5,3,16777258,'2020-02-01 00:45:04',NULL,0,0),(335,1,4,3,16777258,'2020-02-01 00:45:04',NULL,0,0),(336,1,6,3,16777258,'2020-02-01 00:45:04',NULL,0,0),(337,1,1,3,16777258,'2020-02-01 00:46:20',NULL,0,0),(338,1,2,3,16777258,'2020-02-01 00:46:20',NULL,0,0),(339,1,3,3,16777258,'2020-02-01 00:46:20',NULL,0,0),(340,1,5,3,16777258,'2020-02-01 00:46:20',NULL,0,0),(341,1,4,3,16777258,'2020-02-01 00:46:20',NULL,0,0),(342,1,6,3,16777258,'2020-02-01 00:46:20',NULL,0,0),(343,1,1,3,16777258,'2020-02-01 00:46:21',NULL,0,0),(344,1,2,3,16777258,'2020-02-01 00:46:21',NULL,0,0),(345,1,3,3,16777258,'2020-02-01 00:46:21',NULL,0,0),(346,1,5,3,16777258,'2020-02-01 00:46:21',NULL,0,0),(347,1,4,3,16777258,'2020-02-01 00:46:21',NULL,0,0),(348,1,6,3,16777258,'2020-02-01 00:46:21',NULL,0,0),(349,1,1,3,16777258,'2020-02-01 00:48:30',NULL,0,0),(350,1,2,3,16777258,'2020-02-01 00:48:30',NULL,0,0),(351,1,3,3,16777258,'2020-02-01 00:48:30',NULL,0,0),(352,1,5,3,16777258,'2020-02-01 00:48:30',NULL,0,0),(353,1,4,3,16777258,'2020-02-01 00:48:30',NULL,0,0),(354,1,6,3,16777258,'2020-02-01 00:48:30',NULL,0,0),(355,1,1,3,16777258,'2020-02-01 00:48:32',NULL,0,0),(356,1,2,3,16777258,'2020-02-01 00:48:32',NULL,0,0),(357,1,3,3,16777258,'2020-02-01 00:48:32',NULL,0,0),(358,1,5,3,16777258,'2020-02-01 00:48:32',NULL,0,0),(359,1,4,3,16777258,'2020-02-01 00:48:32',NULL,0,0),(360,1,6,3,16777258,'2020-02-01 00:48:32',NULL,0,0),(361,1,1,3,16777258,'2020-02-01 00:52:00',NULL,0,0),(362,1,2,3,16777258,'2020-02-01 00:52:00',NULL,0,0),(363,1,3,3,16777258,'2020-02-01 00:52:00',NULL,0,0),(364,1,5,3,16777258,'2020-02-01 00:52:00',NULL,0,0),(365,1,4,3,16777258,'2020-02-01 00:52:00',NULL,0,0),(366,1,6,3,16777258,'2020-02-01 00:52:00',NULL,0,0),(367,1,1,3,16777258,'2020-02-01 00:52:01',NULL,0,0),(368,1,2,3,16777258,'2020-02-01 00:52:01',NULL,0,0),(369,1,3,3,16777258,'2020-02-01 00:52:01',NULL,0,0),(370,1,5,3,16777258,'2020-02-01 00:52:01',NULL,0,0),(371,1,4,3,16777258,'2020-02-01 00:52:01',NULL,0,0),(372,1,6,3,16777258,'2020-02-01 00:52:01',NULL,0,0),(373,1,1,3,16777258,'2020-02-01 00:52:32',NULL,0,0),(374,1,2,3,16777258,'2020-02-01 00:52:32',NULL,0,0),(375,1,3,3,16777258,'2020-02-01 00:52:32',NULL,0,0),(376,1,5,3,16777258,'2020-02-01 00:52:32',NULL,0,0),(377,1,4,3,16777258,'2020-02-01 00:52:32',NULL,0,0),(378,1,6,3,16777258,'2020-02-01 00:52:32',NULL,0,0),(379,1,1,3,16777258,'2020-02-01 00:52:33',NULL,0,0),(380,1,2,3,16777258,'2020-02-01 00:52:33',NULL,0,0),(381,1,3,3,16777258,'2020-02-01 00:52:33',NULL,0,0),(382,1,5,3,16777258,'2020-02-01 00:52:33',NULL,0,0),(383,1,4,3,16777258,'2020-02-01 00:52:33',NULL,0,0),(384,1,6,3,16777258,'2020-02-01 00:52:33',NULL,0,0),(385,1,1,3,16777258,'2020-02-01 00:55:15',NULL,0,0),(386,1,2,3,16777258,'2020-02-01 00:55:15',NULL,0,0),(387,1,3,3,16777258,'2020-02-01 00:55:15',NULL,0,0),(388,1,5,3,16777258,'2020-02-01 00:55:15',NULL,0,0),(389,1,4,3,16777258,'2020-02-01 00:55:15',NULL,0,0),(390,1,6,3,16777258,'2020-02-01 00:55:15',NULL,0,0),(391,1,1,3,16777258,'2020-02-01 00:55:17',NULL,0,0),(392,1,2,3,16777258,'2020-02-01 00:55:17',NULL,0,0),(393,1,3,3,16777258,'2020-02-01 00:55:17',NULL,0,0),(394,1,5,3,16777258,'2020-02-01 00:55:17',NULL,0,0),(395,1,4,3,16777258,'2020-02-01 00:55:17',NULL,0,0),(396,1,6,3,16777258,'2020-02-01 00:55:17',NULL,0,0),(397,1,1,3,16777258,'2020-02-01 00:56:27',NULL,0,0),(398,1,2,3,16777258,'2020-02-01 00:56:27',NULL,0,0),(399,1,3,3,16777258,'2020-02-01 00:56:27',NULL,0,0),(400,1,5,3,16777258,'2020-02-01 00:56:27',NULL,0,0),(401,1,4,3,16777258,'2020-02-01 00:56:27',NULL,0,0),(402,1,6,3,16777258,'2020-02-01 00:56:27',NULL,0,0),(403,1,1,3,16777258,'2020-02-01 00:56:29',NULL,0,0),(404,1,2,3,16777258,'2020-02-01 00:56:29',NULL,0,0),(405,1,3,3,16777258,'2020-02-01 00:56:29',NULL,0,0),(406,1,5,3,16777258,'2020-02-01 00:56:29',NULL,0,0),(407,1,4,3,16777258,'2020-02-01 00:56:29',NULL,0,0),(408,1,6,3,16777258,'2020-02-01 00:56:29',NULL,0,0),(409,1,1,3,16777258,'2020-02-01 00:59:58',NULL,0,0),(410,1,2,3,16777258,'2020-02-01 00:59:58',NULL,0,0),(411,1,3,3,16777258,'2020-02-01 00:59:58',NULL,0,0),(412,1,5,3,16777258,'2020-02-01 00:59:58',NULL,0,0),(413,1,4,3,16777258,'2020-02-01 00:59:58',NULL,0,0),(414,1,6,3,16777258,'2020-02-01 00:59:58',NULL,0,0),(415,1,1,3,16777258,'2020-02-01 00:59:59',NULL,0,0),(416,1,2,3,16777258,'2020-02-01 00:59:59',NULL,0,0),(417,1,3,3,16777258,'2020-02-01 00:59:59',NULL,0,0),(418,1,5,3,16777258,'2020-02-01 00:59:59',NULL,0,0),(419,1,4,3,16777258,'2020-02-01 00:59:59',NULL,0,0),(420,1,6,3,16777258,'2020-02-01 00:59:59',NULL,0,0),(421,1,1,3,16777258,'2020-02-01 01:00:11',NULL,0,0),(422,1,2,3,16777258,'2020-02-01 01:00:11',NULL,0,0),(423,1,3,3,16777258,'2020-02-01 01:00:11',NULL,0,0),(424,1,5,3,16777258,'2020-02-01 01:00:11',NULL,0,0),(425,1,4,3,16777258,'2020-02-01 01:00:11',NULL,0,0),(426,1,6,3,16777258,'2020-02-01 01:00:11',NULL,0,0),(427,1,1,3,16777258,'2020-02-01 01:00:13',NULL,0,0),(428,1,2,3,16777258,'2020-02-01 01:00:13',NULL,0,0),(429,1,3,3,16777258,'2020-02-01 01:00:13',NULL,0,0),(430,1,5,3,16777258,'2020-02-01 01:00:13',NULL,0,0),(431,1,4,3,16777258,'2020-02-01 01:00:13',NULL,0,0),(432,1,6,3,16777258,'2020-02-01 01:00:13',NULL,0,0),(435,1,3,2,16777217,'2020-02-04 13:08:38',NULL,1048585,63),(436,1,5,2,16777217,'2020-02-04 13:08:41',NULL,1048585,63),(437,1,4,2,16777217,'2020-02-04 13:08:42',NULL,1048585,63),(438,1,0,2,16777243,'2020-02-04 13:08:44',NULL,1048585,63),(439,1,0,2,16777245,'2020-02-04 13:08:44',NULL,1048585,63);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oai_resumption_tokens`
--

DROP TABLE IF EXISTS `oai_resumption_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oai_resumption_tokens` (
  `token` varchar(32) NOT NULL,
  `expire` bigint(20) NOT NULL,
  `record_offset` int(11) NOT NULL,
  `params` text,
  UNIQUE KEY `oai_resumption_tokens_pkey` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oai_resumption_tokens`
--

LOCK TABLES `oai_resumption_tokens` WRITE;
/*!40000 ALTER TABLE `oai_resumption_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oai_resumption_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_settings`
--

DROP TABLE IF EXISTS `plugin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_settings` (
  `plugin_name` varchar(80) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  `setting_name` varchar(80) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `plugin_settings_pkey` (`plugin_name`,`context_id`,`setting_name`),
  KEY `plugin_settings_plugin_name` (`plugin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_settings`
--

LOCK TABLES `plugin_settings` WRITE;
/*!40000 ALTER TABLE `plugin_settings` DISABLE KEYS */;
INSERT INTO `plugin_settings` VALUES ('acronplugin',0,'crontab','a:28:{i:0;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:1;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:2;a:3:{s:9:\"className\";s:40:\"plugins.importexport.doaj.DOAJInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:3;a:3:{s:9:\"className\";s:48:\"plugins.importexport.crossref.CrossrefInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:4;a:3:{s:9:\"className\";s:48:\"plugins.importexport.datacite.DataciteInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:5;a:3:{s:9:\"className\";s:42:\"plugins.importexport.medra.MedraInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:6;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:7;a:3:{s:9:\"className\";s:40:\"plugins.importexport.doaj.DOAJInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:8;a:3:{s:9:\"className\";s:48:\"plugins.importexport.crossref.CrossrefInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:9;a:3:{s:9:\"className\";s:48:\"plugins.importexport.datacite.DataciteInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:10;a:3:{s:9:\"className\";s:42:\"plugins.importexport.medra.MedraInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:11;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:12;a:3:{s:9:\"className\";s:40:\"plugins.importexport.doaj.DOAJInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:13;a:3:{s:9:\"className\";s:48:\"plugins.importexport.crossref.CrossrefInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:14;a:3:{s:9:\"className\";s:48:\"plugins.importexport.datacite.DataciteInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:15;a:3:{s:9:\"className\";s:42:\"plugins.importexport.medra.MedraInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:16;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:17;a:3:{s:9:\"className\";s:40:\"plugins.importexport.doaj.DOAJInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:18;a:3:{s:9:\"className\";s:48:\"plugins.importexport.crossref.CrossrefInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:19;a:3:{s:9:\"className\";s:48:\"plugins.importexport.datacite.DataciteInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:20;a:3:{s:9:\"className\";s:42:\"plugins.importexport.medra.MedraInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:21;a:3:{s:9:\"className\";s:43:\"plugins.generic.usageStats.UsageStatsLoader\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:1:{i:0;s:9:\"autoStage\";}}i:22;a:3:{s:9:\"className\";s:40:\"plugins.importexport.doaj.DOAJInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:23;a:3:{s:9:\"className\";s:48:\"plugins.importexport.crossref.CrossrefInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:24;a:3:{s:9:\"className\";s:48:\"plugins.importexport.datacite.DataciteInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:25;a:3:{s:9:\"className\";s:42:\"plugins.importexport.medra.MedraInfoSender\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:26;a:3:{s:9:\"className\";s:35:\"lib.pkp.classes.task.ReviewReminder\";s:9:\"frequency\";a:1:{s:4:\"hour\";i:24;}s:4:\"args\";a:0:{}}i:27;a:3:{s:9:\"className\";s:37:\"lib.pkp.classes.task.StatisticsReport\";s:9:\"frequency\";a:1:{s:3:\"day\";s:1:\"1\";}s:4:\"args\";a:0:{}}}','object'),('acronplugin',0,'enabled','1','bool'),('defaultthemeplugin',0,'enabled','1','bool'),('defaultthemeplugin',1,'enabled','1','bool'),('developedbyblockplugin',0,'enabled','0','bool'),('developedbyblockplugin',0,'seq','0','int'),('developedbyblockplugin',1,'enabled','0','bool'),('dublincoremetaplugin',1,'enabled','1','bool'),('googlescholarplugin',1,'enabled','1','bool'),('htmlarticlegalleyplugin',1,'enabled','1','bool'),('informationblockplugin',1,'enabled','1','bool'),('languagetoggleblockplugin',0,'enabled','1','bool'),('languagetoggleblockplugin',0,'seq','4','int'),('languagetoggleblockplugin',1,'enabled','1','bool'),('lensgalleyplugin',1,'enabled','1','bool'),('pdfjsviewerplugin',1,'enabled','1','bool'),('resolverplugin',1,'enabled','1','bool'),('subscriptionblockplugin',1,'enabled','1','bool'),('swordplugin',1,'allowAuthorSpecify','0','int'),('swordplugin',1,'enabled','1','bool'),('tinymceplugin',0,'enabled','1','bool'),('tinymceplugin',1,'enabled','1','bool'),('usageeventplugin',0,'enabled','1','bool'),('usageeventplugin',0,'uniqueSiteId','5c784b93e31fb','string'),('usagestatsplugin',0,'accessLogFileParseRegex','/^(?P<ip>\\S+) \\S+ \\S+ \\[(?P<date>.*?)\\] \"\\S+ (?P<url>\\S+).*?\" (?P<returnCode>\\S+) \\S+ \".*?\" \"(?P<userAgent>.*?)\"/','string'),('usagestatsplugin',0,'chartType','bar','string'),('usagestatsplugin',0,'createLogFiles','1','bool'),('usagestatsplugin',0,'datasetMaxCount','4','string'),('usagestatsplugin',0,'enabled','1','bool'),('usagestatsplugin',0,'optionalColumns','a:2:{i:0;s:4:\"city\";i:1;s:6:\"region\";}','object'),('webfeedplugin',1,'displayItems','1','bool'),('webfeedplugin',1,'displayPage','homepage','string'),('webfeedplugin',1,'enabled','1','bool');
/*!40000 ALTER TABLE `plugin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_categories`
--

DROP TABLE IF EXISTS `publication_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_categories` (
  `publication_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  UNIQUE KEY `publication_categories_id` (`publication_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_categories`
--

LOCK TABLES `publication_categories` WRITE;
/*!40000 ALTER TABLE `publication_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_galley_settings`
--

DROP TABLE IF EXISTS `publication_galley_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_galley_settings` (
  `galley_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `publication_galley_settings_pkey` (`galley_id`,`locale`,`setting_name`),
  KEY `publication_galley_settings_galley_id` (`galley_id`),
  KEY `publication_galley_settings_name_value` (`setting_name`(50),`setting_value`(150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_galley_settings`
--

LOCK TABLES `publication_galley_settings` WRITE;
/*!40000 ALTER TABLE `publication_galley_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `publication_galley_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_galleys`
--

DROP TABLE IF EXISTS `publication_galleys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_galleys` (
  `galley_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `locale` varchar(14) DEFAULT NULL,
  `publication_id` bigint(20) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `seq` double NOT NULL DEFAULT '0',
  `remote_url` varchar(2047) DEFAULT NULL,
  `is_approved` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`galley_id`),
  KEY `publication_galleys_publication_id` (`publication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_galleys`
--

LOCK TABLES `publication_galleys` WRITE;
/*!40000 ALTER TABLE `publication_galleys` DISABLE KEYS */;
INSERT INTO `publication_galleys` VALUES (1,'en_US',9,'PDF',16,0,NULL,0),(2,'en_US',10,'PDF',18,0,NULL,0),(3,'en_US',11,'PDF',20,0,NULL,0),(4,'en_US',12,'PDF',22,0,NULL,0),(5,'en_US',13,'PDF',24,0,NULL,0),(6,'en_US',14,'PDF',26,0,NULL,0),(7,'en_US',15,'PDF',29,0,'',0),(8,'en_US',23,'PDF',43,0,'',0),(9,'en_US',33,'PDF',24,0,NULL,0),(10,'en_US',34,'PDF',20,0,NULL,0),(11,'en_US',35,'PDF',20,0,NULL,0),(12,'en_US',36,'PDF',20,0,NULL,0);
/*!40000 ALTER TABLE `publication_galleys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publication_settings`
--

DROP TABLE IF EXISTS `publication_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publication_settings` (
  `publication_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `publication_settings_pkey` (`publication_id`,`locale`,`setting_name`),
  KEY `publication_settings_publication_id` (`publication_id`),
  KEY `publication_settings_name_value` (`setting_name`(50),`setting_value`(150))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publication_settings`
--

LOCK TABLES `publication_settings` WRITE;
/*!40000 ALTER TABLE `publication_settings` DISABLE KEYS */;
INSERT INTO `publication_settings` VALUES (1,'','hide_author','0'),(1,'','language','en'),(1,'en_US','abstract','<p>The effects of pressed beet pulp silage (PBPS) replacing barley for 10% and 20% (DM basis) were studied on heavy pigs fed dairy whey-diluted diets. 60 Hypor pigs (average initial weight of 28 kg), 30 barrows and 30 gilts, were homogeneously allocated to three exper- imental groups: T1 (control) in which pigs were fed a traditional sweet whey- diluted diet (the ratio between whey and dry matter was 4.5/1); T2 in which PBPS replaced barley for 10% (DM basis) during a first period (from the beginning to the 133rd day of trial) and thereafter for 20% (DM basis); T3 in which PBPS replaced barley for 20% (DM basis) throughout the experimental period. In diets T2 and T3 feed was dairy whey-diluted as in group T1. No significant (P&gt;0.05) differences were observed concerning growth parameters (ADG and FCR). Pigs on diets contain- ing PBPS showed significantly higher (P&lt;0.05) percentages of lean cuts and lower percentages of fat cuts. On the whole, ham weight losses during seasoning were moderate but significantly (P&lt;0.05) more marked for PBPS-fed pigs as a prob- able consequence of their lower adiposity degree. Fatty acid composition of ham fat was unaffected by diets. With regard to m. Semimembranosus colour, pigs receiving PBPS showed lower (P&lt;0.05) \"L\", \"a\" and \"Chroma\" values. From an economical point of view it can be concluded that the use of PBPS (partially replacing barley) and dairy whey in heavy pig production could be of particular interest in areas where both these by products are readily available.</p>'),(1,'en_US','cleanTitle','The influence of lactation on the quantity and quality of cashmere production'),(1,'en_US','prefix',''),(1,'en_US','subtitle',''),(1,'en_US','title','The influence of lactation on the quantity and quality of cashmere production'),(2,'','hide_author','0'),(2,'','language','en'),(2,'en_US','abstract','<p>Archival data from an attitude survey of employees in a single multinational organization were used to examine the degree to which national culture affects the nature of job satisfaction. Responses from nine countries were compiled to create a benchmark against which nations could be individually compared. Factor analysis revealed four factors: Organizational Communication, Organizational Efficiency/Effectiveness, Organizational Support, and Personal Benefit. Comparisons of factor structures indicated that Organizational Communication exhibited the most construct equivalence, and Personal Benefit the least. The most satisfied employees were those from China, and the least satisfied from Brazil, consistent with previous findings that individuals in collectivistic nations report higher satisfaction. The research findings suggest that national cultural context exerts an effect on the nature of job satisfaction.</p>'),(2,'en_US','cleanTitle','The Facets Of Job Satisfaction: A NineNation Comparative Study Of Construct Equivalence'),(2,'en_US','prefix',''),(2,'en_US','subtitle',''),(2,'en_US','title','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence'),(3,'','hide_author','0'),(3,'','language','en'),(3,'en_US','abstract','<p>The integration of technology into the classroom is a major issue in education today. Many national and provincial initiatives specify the technology skills that students must demonstrate at each grade level. The Government of the Province of Alberta in Canada, has mandated the implementation of a new curriculum which began in September of 2000, called Information and Communication Technology. This curriculum is infused within core courses and specifies what students are “expected to know, be able to do, and be like with respect to technology” (Alberta Learning, 2000). Since teachers are required to implement this new curriculum, school jurisdictions are turning to professional development strategies and hiring standards to upgrade teachers’ computer skills to meet this goal. This paper summarizes the results of a telephone survey administered to all public school jurisdictions in the Province of Alberta with a 100% response rate. We examined the computer skills that school jurisdictions require of newly hired teachers, and the support strategies employed for currently employed teachers.</p>'),(3,'en_US','cleanTitle','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice'),(3,'en_US','prefix',''),(3,'en_US','subtitle',''),(3,'en_US','title','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice'),(4,'','hide_author','0'),(4,'','language','en'),(4,'en_US','abstract','<p>In this review, the recent progress on genetic transformation of forest trees were discussed. Its described also, different applications of genetic engineering for improving forest trees or understanding the mechanisms governing genes expression in woody plants.</p>'),(4,'en_US','cleanTitle','Genetic transformation of forest trees'),(4,'en_US','prefix',''),(4,'en_US','subtitle',''),(4,'en_US','title','Genetic transformation of forest trees'),(5,'','hide_author','0'),(5,'','language','en'),(5,'en_US','abstract','<p>Robert Fogelin claims that interlocutors must share a framework of background beliefs and commitments in order to fruitfully pursue argument. I refute Fogelin’s claim by investigating more thoroughly the shared background required for productive argument. I find that this background consists not in any common beliefs regarding the topic at hand, but rather in certain shared pro-cedural commitments and competencies. I suggest that Fogelin and his supporters mistakenly view shared beliefs as part of the required background for productive argument because these procedural com-mitments become more difficult to uphold when people’s beliefs diverge widely regarding the topic at hand.</p>'),(5,'en_US','cleanTitle','Investigating the Shared Background Required for Argument: A Critique of Fogelins Thesis on Deep Disagreement'),(5,'en_US','prefix',''),(5,'en_US','subtitle',''),(5,'en_US','title','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement'),(6,'','hide_author','0'),(6,'','language','en'),(6,'en_US','abstract','<p>A major goal of education is to equip children with the knowledge, skills and self-belief to be confident and informed citizens - citizens who continue to see themselves as learners beyond graduation. This paper looks at the key role of nurturing efficacy beliefs in order to learn and participate in school and society. Research findings conducted within a social studies context are presented, showing how strategy instruction can enhance self-efficacy for learning. As part of this research, Creative Problem Solving (CPS) was taught to children as a means to motivate and support learning. It is shown that the use of CPS can have positive effects on self-efficacy for learning, and be a valuable framework to involve children in decision-making that leads to social action. Implications for enhancing self-efficacy and motivation to learn in the classroom are discussed.</p>'),(6,'en_US','cleanTitle','Developing efficacy beliefs in the classroom'),(6,'en_US','prefix',''),(6,'en_US','subtitle',''),(6,'en_US','title','Developing efficacy beliefs in the classroom'),(7,'','hide_author','0'),(7,'','language','en'),(7,'en_US','abstract','<p>The study of the commons has expe- rienced substantial growth and development over the past decades.1 Distinguished scholars in many disciplines had long studied how specific resources were managed or mismanaged at particular times and places (Coward 1980; De los Reyes 1980; MacKenzie 1979; Wittfogel 1957), but researchers who studied specific commons before the mid-1980s were, however, less likely than their contemporary colleagues to be well informed about the work of scholars in other disciplines, about other sec- tors in their own region of interest, or in other regions of the world.</p>'),(7,'en_US','cleanTitle','Traditions and Trends in the Study of the Commons'),(7,'en_US','prefix',''),(7,'en_US','subtitle',''),(7,'en_US','title','Traditions and Trends in the Study of the Commons'),(8,'','hide_author','0'),(8,'','language','en'),(8,'en_US','abstract','<p>None.</p>'),(8,'en_US','cleanTitle','Hansen & Pinto: Reason Reclaimed'),(8,'en_US','prefix',''),(8,'en_US','subtitle',''),(8,'en_US','title','Hansen & Pinto: Reason Reclaimed'),(9,'','hide_author','0'),(9,'','issueId','2'),(9,'','seq','1'),(9,'en_US','abstract','<p>Focussing on the \"McCabe family\" of measures for the decision/logic structure of a program, leads to an evaluation of extensions to modularization, nesting and, potentially, to object-oriented program structures. A comparison of rated, operating and essential complexities of programs suggests two new metrics: \"inessential complexity\" as a measure of unstructuredness and \"product complexity\" as a potential objective measure of structural complexity. Finally, nesting and abstraction levels are considered, especially as to how metrics from the \"McCabe family\" might be applied in an object-oriented systems development environment.</p>'),(9,'en_US','cleanTitle','Cyclomatic Complexity: theme and variations'),(9,'en_US','title','Cyclomatic Complexity: theme and variations'),(10,'','hide_author','0'),(10,'','issueId','2'),(10,'','seq','1'),(10,'en_US','cleanTitle','A Review of Information Systems and Corporate Memory: design for staff turnover'),(10,'en_US','title','A Review of Information Systems and Corporate Memory: design for staff turn-over'),(11,'','hide_author','0'),(11,'','issueId','2'),(11,'','seq','2'),(11,'en_US','abstract','<p>This paper reviews the functionality associated \"data modelling\" and \"conceptual modelling\". The history and origins of each term are considered, together with the current interpretation of each term. The term \"information modelling\" is also taken into account. Alternative representation forms are presented and reviewed. The merit of diagrams as a basis for a dialogue with a subject area expert is indicated. The paper suggests that a clear distinction is needed between data modelling and conceptual modelling. Both analytic modelling and prescriptive modelling are reviewed. The requirements for a conceptual schema modelling facility over and above the functionality provided by currently available data modelling facilities are presented. The need is emphasized for a conceptual schema modelling facility to support a representation form easily assimilatable by a subject area expert not familiar with information system. Based on the distinctions made, the paper suggests a way in which a data modelling facility and a conceptual schema modelling facility can be positioned in an information systems life cycle.</p>'),(11,'en_US','cleanTitle','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles'),(11,'en_US','title','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles'),(12,'','hide_author','0'),(12,'','issueId','2'),(12,'','seq','2'),(12,'en_US','abstract','<p>Object Oriented design and databases has attracted a great deal of attention in recent years. This article outlines and discusses the semantic data principles used inter alia in understanding Object Oriented concepts. To illustrate and lend substance to this discussion a list is presented of OODBMS implementations. Their weaknesses and strengths are analysed. And their suitability for specific applications is assessed. Finally we offer some conclusions about research in this area and the directions in which further development should proceed.</p>'),(12,'en_US','cleanTitle','A Review of Object Oriented Database Concepts and their Implementation'),(12,'en_US','title','A Review of Object Oriented Database Concepts and their Implementation'),(13,'','hide_author','0'),(13,'','issueId','2'),(13,'','seq','3'),(13,'en_US','abstract','<p>In 1964 Melvin Webber challenged the notions of community and centrality used in urban studies by demonstrating that \"community without propinquity\" was emerging within certain social networks. He argued that individuals were enmeshed in an overlapping range of groups, and that increasingly these social networks were not limited by physical or geographical location. His definition of community acknowledges a differentiated range of \"non-place\" cultures. It reflects a change to a process, rather than product oriented view of urban form, triggered in part by the influence of general systems theory. Webber influenced and was influenced by the emergence of an orientation towards non-physical aspects of community, and a participatory approach to design which emerged strongly during the seventies. Reexamination of Webber\'s work in the light of current information technology offers some insight into the nature of the globalisation of the world economy, and consequent impacts on nationality and sovereignty. The technologies that will be commonplace by the end of the century can both empower and disempower and it will be necessary to reconsider our current notions of both citizenship and of access to and control of such crucial resources. Opportunities offered by IT for marginalised or peripheral groups, whether at the level of nation, region or local community, will challenge existing definitions of centre and periphery. The moral panics surrounding such activities as \"hacking\" and its supporting \"cyberpunk\" sub culture demonstrate a growing awareness of the importance of emerging non-space communities.</p>'),(13,'en_US','cleanTitle','Cyberspace Versus Citizenship: IT and emerging non space communities'),(13,'en_US','title','Cyberspace Versus Citizenship: IT and emerging non space communities'),(14,'','hide_author','0'),(14,'','issueId','2'),(14,'','seq','4'),(14,'en_US','abstract','<p>Because most organizations depend on computer systems that electronically store important data to perform crucial business functions, the integrity of these information systems is paramount. Securing company systems, however, is not always an easy task. More sophisticated systems often provide widespread access to computer resources and increased user knowledge, which may lead to added difficulties in maintaining security. This paper explores whistleblowing employees\' exposing illegal or unethical computer practices taking place in the organization as a method of computer security and the support for whistleblowing found in codes of ethical conduct formulated by professional societies.</p>'),(14,'en_US','cleanTitle','Whistleblowing: an ethical dilemma'),(14,'en_US','title','Whistleblowing: an ethical dilemma'),(15,'','hide_author','0'),(15,'','language','en'),(15,'en_US','abstract','<p>The signaling theory suggests that dividends signal future prospects of a firm. However, recent empirical evidence from the US and the Uk does not offer a conclusive evidence on this issue. There are conflicting policy implications among financial economists so much that there is no practical dividend policy guidance to management, existing and potential investors in shareholding. Since corporate investment, financing and distribution decisions are a continuous function of management, the dividend decisions seem to rely on intuitive evaluation.</p>'),(15,'en_US','cleanTitle','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence'),(15,'en_US','prefix',''),(15,'en_US','subtitle',''),(15,'en_US','title','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence'),(16,'','hide_author','0'),(16,'','language','en'),(16,'en_US','abstract','<p>The Texas Water Availability Modeling System is routinely applied in administration of the water rights permit system, regional and statewide planning, and an expanding variety of other endeavors. Modeling water management in the 23 river basins of the state reflects about 8,000 water right permits and 3,400 reservoirs. Datasets are necessarily large and complex to provide the decision-support capabilities for which the modeling system was developed. New modeling features are being added, and the different types of applications are growing. Certain applications are enhanced by simplifying the simulation input datasets to focus on particular water management systems. A methodology is presented for developing a condensed dataset for a selected reservoir system that reflects the impacts of all the water rights and accompanying reservoirs removed from the original complete dataset. A set of streamflows is developed that represents flows available to the selected system considering the effects of all the other water rights in the river basin contained in the original complete model input dataset that are not included in the condensed dataset. The methodology is applied to develop a condensed model of the Brazos River Authority reservoir system based on modifying the Texas Water Availability Modeling System dataset for the Brazos River Basin.</p>'),(16,'en_US','cleanTitle','Condensing Water Availability Models to Focus on Specific Water Management Systems'),(16,'en_US','prefix',''),(16,'en_US','subtitle',''),(16,'en_US','title','Condensing Water Availability Models to Focus on Specific Water Management Systems'),(17,'','hide_author','0'),(17,'','language','en'),(17,'en_US','abstract','<p>Environmental sustainability and sustainable development principles are vital topics that engineering education has largely failed to address. Service-learning, which integrates social service into an academic setting, is an emerging tool that can be leveraged to teach sustainable design to future engineers. We present a model of using service-learning to teach sustainable design based on the experiences of the Stanford chapter of Engineers for a Sustainable World. The model involves the identification of projects and partner organizations, a student led, project-based design course, and internships coordinated with partner organizations. The model has been very successful, although limitations and challenges exist. These are discussed along with future directions for expanding the model.</p>'),(17,'en_US','cleanTitle','Learning Sustainable Design through Service'),(17,'en_US','prefix',''),(17,'en_US','subtitle',''),(17,'en_US','title','Learning Sustainable Design through Service'),(18,'','hide_author','0'),(18,'','language','en'),(18,'en_US','abstract','<p>The aim of this study was to assess the influence of long-term fat supplementation on the fatty acid profile of heavy pig adipose tissue. Fifty-four Large White barrows, averaging 25 kg LW, were randomized (matched weights) to one of three isoenergetic diets supplemented with either tallow (TA), maize oil (MO), or rapeseed oil (RO). The fats were supplement- ed at 3% as fed from 25 to 110 kg LW, and at 2.5 % from 110 kg to slaughtering. Following slaughter at about 160 kg LW, backfat samples were collected from ten animals per treatment and analyzed. Fatty acid composition of backfat close- ly reflected the fatty acid composition of the supplemented fats. The backfat of pigs fed TA had the highest saturated fatty acid content (SFA) (P&lt;0.01); those fed MO had the highest content in polyunsaturated fatty acid (PUFA) and the lowest in monounsaturated fatty acid (MUFA) content; those fed RO had the highest content of linolenic acid (C18:3) and cis 11- ecosenoic acid (C20:1). Only MO treatment had an effect on linoleic acid levels and the iodine value (IV) of backfat, result- ing in levels higher than those (IV = 70; C18:2 = 15%) accepted by the Parma Consortium for dry-cured ham. The IV and unsaturation index in both layers of subcutaneous backfat tissue differed significantly between treatments. These results show that long-term dietary supplementation with different fats changes the fatty acid profile of heavy pig adipose tissue. Supplementation with rapeseed oil increases the proportion of “healthy” fatty acids in pig fat, thereby improving the nutritional quality, however the effects on the technological quality of the fat must be carefully assessed.</p>'),(18,'en_US','cleanTitle','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning'),(18,'en_US','prefix',''),(18,'en_US','subtitle',''),(18,'en_US','title','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning'),(19,'','hide_author','0'),(19,'','language','en'),(19,'en_US','abstract','<p>The Edwards Aquifer serves as the primary water supply in South-Central Texas and is the source for several major springs. In developing a plan to protect endangered species immediately downstream of San Marcos Springs, questions have been raised regarding the established concept of a hydrologic divide between the San Antonio and Barton Springs segments of the Edwards Aquifer during drought conditions. To address these questions, a water-level data collection program and a hydrogeologic study was conducted. An analysis of groundwater-level data indicate that a groundwater divide exists in the vicinity of the surface drainage divide between Onion Creek and Blanco River during wet and normal hydrologic conditions. However, analysis of data collected during the 2009 drought suggests that the groundwater divide dissipated and no longer hydrologically separated the two segments. As a result, there is potential for groundwater to flow past San Marcos Springs toward Barton Springs during major droughts. The implications for this have bearings on the management and availability of groundwater in the Edwards Aquifer. Assessments of simulations from a numerical model suggest 5 cfs could be flowing past San Marcos toward Barton springs under drought conditions. The groundwater divide appears to be influenced by recharge along Onion Creek and Blanco River and appears to be vulnerable to extended periods of little or no recharge and extensive pumping in the vicinity of Kyle and Buda. The 2009 data set shows a very low gradient in the potentiometric surface between San Marcos Springs and Kyle with very little variation in levels between drought and non-drought periods. From Kyle toward Barton Springs, the potentiometric surface slopes significantly to the north and has dramatic changes in levels between drought and non-drought periods. The source and nature of the discontinuity of the change in potentiometric gradients and dynamic water level response at Kyle is unknown. Structural influences or hydraulic properties inherent in the aquifer could be the cause of this discontinuity and may also influence the degree of hydrologic connection between San Marcos and Barton Springs. Rapid population growth and increased water demands in the Kyle and Buda areas necessitates a continual groundwater level monitoring program between San Marcos Springs and Buda to provide data for future hydrogeologic and trend analyses.</p>'),(19,'en_US','cleanTitle','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions'),(19,'en_US','prefix',''),(19,'en_US','subtitle',''),(19,'en_US','title','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions'),(20,'','hide_author','0'),(20,'','language','en'),(20,'en_US','abstract','<p>One of the challenges still to be met in the 21st century is that of genuinely embracing diversity. How can education help to overcome the barriers that continue to exist between people on the basis of language, culture and gender? This case study takes the Atlantic Coast of Nicaragua as an example of a multilingual/multiethnic region and examines how the community university URACCAN is contributing to the development of interculturality. It describes participatory research that was carried out with university staff and students with the intention of defining an intercultural curriculum and appropriate strategies for delivering such. One model used as a basis for discussions was the Model for Community Understanding from the Wales Curriculum Council, which emphasises the belonging of the individual to different communities or cultures at the same time. Factors supporting the development of an intercultural curriculum include the university’s close involvement with the ethnic communities it serves. However, ethno-linguistic power relations within the region and the country as a whole, still militate against egalitarianism within the university. The research highlights the importance of participatory pedagogy as the basis for promoting interculturality and achieving lasting social transformation.</p>'),(20,'en_US','cleanTitle','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua'),(20,'en_US','prefix',''),(20,'en_US','subtitle',''),(20,'en_US','title','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua'),(21,'','categoryIds','a:0:{}'),(21,'','hide_author','0'),(21,'','issueId','1'),(21,'','language','en'),(21,'en_US','abstract','<p>This review presents different diseases associated with yam and the management strategies employed in combating its menace in Nigeria. The field and storage diseases are presented, anthracnose is regarded as the most widely spread of all the field diseases, while yam mosaic virus disease is considered to cause the most severe losses in yams. Dry rot is considered as the most devastating of all the storage diseases of yam. Dry rot of yams alone causes a marked reduction in the quantity, marketable value and edible portions of tubers and those reductions are more severe in stored yams. The management strategies adopted and advocated for combating the field diseases includes the use of crop rotation, fallowing, planting of healthy material, the destruction of infected crop cultivars and the use of resistant cultivars. With regards to the storage diseases, the use of Tecto (Thiabendazole), locally made dry gins or wood ash before storage has been found to protect yam tubers against fungal infection in storage. Finally, processing of yam tubers into chips or cubes increases its shelf live for a period of between 6 months and one year.</p>'),(21,'en_US','cleanTitle','Yam diseases and its management in Nigeria'),(21,'en_US','prefix',''),(21,'en_US','subtitle',''),(21,'en_US','title','Yam diseases and its management in Nigeria'),(22,'','hide_author','0'),(22,'','language','en'),(22,'en_US','abstract','<p>Aim of this research is to provide a general situation of cattle slaughtered in Cameroon, as a representative example for the Central African Sub-region. The quality and safety of beef from the abattoir of Yaoundé, the largest in Cameroon, were considered. From January 2009 to March 2012, the pre-slaughter conditions and characteristics of 1953 cattle carcasses were recorded, as well as the pH of m. longissimus thoracis 24 h after slaughter. From these carcasses, 60 were selected to represent the bulls slaughtered. The quality parameters and composition of m. longissimus thoracis were carried out. The origin of most of the cattle was the Guinea High Savannah (74.6%), and transhumance was the common production system (75.5%). Gudali (45.6%), White Fulani (33.3%) and Red Mbororo (20.3%) breeds were predominant. Carcass weight was affected by rearing system and cattle category, and it markedly varied during year. Considering meat quality, the fat content was low (1.2%) and similar between breeds, moreover Gudali showed the toughest meat. Of the cows slaughtered, 27% were pregnant and the most common abnormal conditions encountered were ectoparasites, fatigue, lameness, fungal-like skin lesions, enlarged lymph nodes, respiratory distress, nodular lesions. More than 20% of the carcasses had some organs condemned, mainly for liver flukes (5.17%), and 1.0% of them were completely condemned due to tuberculosis, that also affected 3.28% of lungs. These data could aid authorities draw up programmes with the aim to strengthen cattle production, improve beef supply, control and prevent the observed diseases, and promote the regional trade.</p>'),(22,'en_US','cleanTitle','Influence of longterm nutrition with different dietary fats on fatty acid composition of heavy pigs backfat'),(22,'en_US','prefix',''),(22,'en_US','subtitle',''),(22,'en_US','title','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat'),(23,'','hide_author','0'),(23,'','language','en'),(23,'en_US','abstract','<p>The antimicrobial, heavy metal resistance patterns and plasmid profiles of Coliforms (Enterobacteriacea) isolated from nosocomial infections and healthy human faeces were compared. Fifteen of the 25 isolates from nosocomial infections were identified as Escherichia coli, and remaining as Kelebsiella pneumoniae. Seventy two percent of the strains isolated from nosocomial infections possess multiple resistance to antibiotics compared to 45% of strains from healthy human faeces. The difference between minimal inhibitory concentration (MIC) values of strains from clinical cases and from faeces for four heavy metals (Hg, Cu, Pb, Cd) was not significant. However most strains isolated from hospital were more tolerant to heavy metal than those from healthy persons. There was no consistent relationship between plasmid profile group and antimicrobial resistance pattern, although a conjugative plasmid (&gt;56.4 kb) encoding resistance to heavy metals and antibiotics was recovered from eight of the strains isolated from nosocomial infections. The results indicate multidrug-resistance coliforms as a potential cause of nosocomial infection in this region.</p>'),(23,'en_US','cleanTitle','Antimicrobial heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan Iran'),(23,'en_US','prefix',''),(23,'en_US','subtitle',''),(23,'en_US','title','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran'),(24,'','hide_author','0'),(24,'','language','en'),(24,'en_US','abstract','<p>We compare a setting where actors individually decide whom to sanction with a setting where sanctions are only implemented when actors collectively agree that a certain actor should be sanctioned. Collective sanctioning decisions are problematic due to the difficulty of reaching consensus. However, when a decision is made collectively, perverse sanctioning (e.g. punishing high contributors) by individual actors is ruled out. Therefore, collective sanctioning decisions are likely to be in the interest of the whole group.</p>'),(24,'en_US','cleanTitle','SelfOrganization in MultiLevel Institutions in Networked Environments'),(24,'en_US','prefix',''),(24,'en_US','subtitle',''),(24,'en_US','title','Self-Organization in Multi-Level Institutions in Networked Environments'),(25,'','hide_author','0'),(25,'','language','en'),(25,'en_US','abstract','<p>None.</p>'),(25,'en_US','cleanTitle','Finocchiaro: Arguments About Arguments'),(25,'en_US','prefix',''),(25,'en_US','subtitle',''),(25,'en_US','title','Finocchiaro: Arguments About Arguments'),(26,'','hide_author','0'),(26,'en_US','cleanTitle','SUBMISSIONTITLE'),(26,'en_US','title','SUBMISSIONTITLE'),(27,'','hide_author','0'),(27,'en_US','cleanTitle','SUBMISSIONTITLE'),(27,'en_US','title','SUBMISSIONTITLE'),(28,'','hide_author','0'),(28,'en_US','cleanTitle','SUBMISSIONTITLE'),(28,'en_US','title','SUBMISSIONTITLE'),(29,'','hide_author','0'),(29,'en_US','cleanTitle','SUBMISSIONTITLE'),(29,'en_US','title','SUBMISSIONTITLE'),(30,'','hide_author','0'),(30,'en_US','cleanTitle','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles'),(30,'en_US','title','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles'),(32,'','categoryIds','a:0:{}'),(32,'0','title','Cyclomatic Complexity: theme and variations'),(33,'','categoryIds','a:0:{}'),(33,'','issueId','2'),(33,'','seq','3'),(33,'en_US','abstract','<p>In 1964 Melvin Webber challenged the notions of community and centrality used in urban studies by demonstrating that \"community without propinquity\" was emerging within certain social networks. He argued that individuals were enmeshed in an overlapping range of groups, and that increasingly these social networks were not limited by physical or geographical location. His definition of community acknowledges a differentiated range of \"non-place\" cultures. It reflects a change to a process, rather than product oriented view of urban form, triggered in part by the influence of general systems theory. Webber influenced and was influenced by the emergence of an orientation towards non-physical aspects of community, and a participatory approach to design which emerged strongly during the seventies. Reexamination of Webber\'s work in the light of current information technology offers some insight into the nature of the globalisation of the world economy, and consequent impacts on nationality and sovereignty. The technologies that will be commonplace by the end of the century can both empower and disempower and it will be necessary to reconsider our current notions of both citizenship and of access to and control of such crucial resources. Opportunities offered by IT for marginalised or peripheral groups, whether at the level of nation, region or local community, will challenge existing definitions of centre and periphery. The moral panics surrounding such activities as \"hacking\" and its supporting \"cyberpunk\" sub culture demonstrate a growing awareness of the importance of emerging non-space communities.</p>'),(33,'en_US','title','Cyberspace Versus Citizenship: IT and emerging non space communities'),(34,'','categoryIds','a:0:{}'),(34,'','copyrightYear','2020'),(34,'','issueId','2'),(34,'','seq','2'),(34,'en_US','abstract','<p>This paper reviews the functionality associated \"data modelling\" and \"conceptual modelling\". The history and origins of each term are considered, together with the current interpretation of each term. The term \"information modelling\" is also taken into account. Alternative representation forms are presented and reviewed. The merit of diagrams as a basis for a dialogue with a subject area expert is indicated. The paper suggests that a clear distinction is needed between data modelling and conceptual modelling. Both analytic modelling and prescriptive modelling are reviewed. The requirements for a conceptual schema modelling facility over and above the functionality provided by currently available data modelling facilities are presented. The need is emphasized for a conceptual schema modelling facility to support a representation form easily assimilatable by a subject area expert not familiar with information system. Based on the distinctions made, the paper suggests a way in which a data modelling facility and a conceptual schema modelling facility can be positioned in an information systems life cycle.</p>'),(34,'en_US','copyrightHolder','Journal of Public Knowledge'),(34,'en_US','title','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles'),(34,'fr_CA','copyrightHolder','Journal de la connaissance du public'),(35,'','categoryIds','a:0:{}'),(35,'','copyrightYear','2020'),(35,'','issueId','2'),(35,'','seq','2'),(35,'en_US','abstract','<p>This paper reviews the functionality associated \"data modelling\" and \"conceptual modelling\". The history and origins of each term are considered, together with the current interpretation of each term. The term \"information modelling\" is also taken into account. Alternative representation forms are presented and reviewed. The merit of diagrams as a basis for a dialogue with a subject area expert is indicated. The paper suggests that a clear distinction is needed between data modelling and conceptual modelling. Both analytic modelling and prescriptive modelling are reviewed. The requirements for a conceptual schema modelling facility over and above the functionality provided by currently available data modelling facilities are presented. The need is emphasized for a conceptual schema modelling facility to support a representation form easily assimilatable by a subject area expert not familiar with information system. Based on the distinctions made, the paper suggests a way in which a data modelling facility and a conceptual schema modelling facility can be positioned in an information systems life cycle.</p>'),(35,'en_US','copyrightHolder','Journal of Public Knowledge'),(35,'en_US','title','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles'),(35,'fr_CA','copyrightHolder','Journal de la connaissance du public'),(36,'','categoryIds','a:0:{}'),(36,'','copyrightYear','2020'),(36,'','issueId','2'),(36,'','seq','2'),(36,'en_US','abstract','<p>This paper reviews the functionality associated \"data modelling\" and \"conceptual modelling\". The history and origins of each term are considered, together with the current interpretation of each term. The term \"information modelling\" is also taken into account. Alternative representation forms are presented and reviewed. The merit of diagrams as a basis for a dialogue with a subject area expert is indicated. The paper suggests that a clear distinction is needed between data modelling and conceptual modelling. Both analytic modelling and prescriptive modelling are reviewed. The requirements for a conceptual schema modelling facility over and above the functionality provided by currently available data modelling facilities are presented. The need is emphasized for a conceptual schema modelling facility to support a representation form easily assimilatable by a subject area expert not familiar with information system. Based on the distinctions made, the paper suggests a way in which a data modelling facility and a conceptual schema modelling facility can be positioned in an information systems life cycle.</p>'),(36,'en_US','copyrightHolder','Journal of Public Knowledge'),(36,'en_US','title','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles'),(36,'fr_CA','copyrightHolder','Journal de la connaissance du public'),(37,'','categoryIds','a:0:{}'),(37,'0','title','Cyclomatic Complexity: theme and variations'),(38,'','categoryIds','a:0:{}'),(38,'0','title','Cyclomatic Complexity: theme and variations'),(39,'','categoryIds','a:0:{}'),(39,'0','title','Cyclomatic Complexity: theme and variations'),(40,'','categoryIds','a:0:{}'),(40,'0','title','Cyclomatic Complexity: theme and variations'),(41,'','categoryIds','a:0:{}'),(41,'0','title','Cyclomatic Complexity: theme and variations'),(42,'','categoryIds','a:0:{}'),(42,'0','title','Cyclomatic Complexity: theme and variations'),(43,'','categoryIds','a:0:{}'),(43,'0','title','Cyclomatic Complexity: theme and variations'),(49,'','categoryIds','a:0:{}'),(49,'0','title','Cyclomatic Complexity: theme and variations'),(51,'','categoryIds','a:0:{}'),(51,'0','title','Cyclomatic Complexity: theme and variations'),(53,'','categoryIds','a:0:{}'),(53,'0','title','Cyclomatic Complexity: theme and variations'),(55,'','categoryIds','a:0:{}'),(55,'0','title','Cyclomatic Complexity: theme and variations'),(57,'','categoryIds','a:0:{}'),(57,'0','title','Cyclomatic Complexity: theme and variations'),(59,'','categoryIds','a:0:{}'),(59,'0','title','Cyclomatic Complexity: theme and variations'),(61,'','categoryIds','a:0:{}'),(61,'0','title','Cyclomatic Complexity: theme and variations'),(63,'','categoryIds','a:0:{}'),(63,'0','title','Cyclomatic Complexity: theme and variations'),(65,'','categoryIds','a:0:{}'),(65,'0','title','Cyclomatic Complexity: theme and variations'),(67,'','categoryIds','a:0:{}'),(67,'0','title','Cyclomatic Complexity: theme and variations'),(69,'','categoryIds','a:0:{}'),(69,'0','title','Cyclomatic Complexity: theme and variations'),(71,'','categoryIds','a:0:{}'),(71,'0','title','Cyclomatic Complexity: theme and variations'),(73,'','categoryIds','a:0:{}'),(73,'0','title','Cyclomatic Complexity: theme and variations'),(75,'','categoryIds','a:0:{}'),(75,'0','title','Cyclomatic Complexity: theme and variations'),(76,'en_US','title','Cyclomatic Complexity: theme and variations'),(77,'','categoryIds','a:0:{}'),(77,'0','title','Cyclomatic Complexity: theme and variations'),(78,'','categoryIds','a:0:{}'),(78,'0','title','Cyclomatic Complexity: theme and variations'),(79,'','categoryIds','a:0:{}'),(79,'0','title','Cyclomatic Complexity: theme and variations'),(79,'en_US','abstract','<p>ddsd</p>'),(79,'en_US','prefix',''),(79,'en_US','subtitle',''),(79,'en_US','title','C'),(80,'','categoryIds','a:0:{}'),(80,'0','title','Cyclomatic Complexity: theme and variations'),(81,'','categoryIds','a:0:{}'),(81,'0','title','Finocchiaro: Arguments About Arguments');
/*!40000 ALTER TABLE `publication_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publications` (
  `publication_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_status` bigint(20) DEFAULT '0',
  `date_published` date DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `locale` varchar(14) DEFAULT NULL,
  `primary_contact_id` bigint(20) DEFAULT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `version` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`publication_id`),
  KEY `publications_submission_id` (`submission_id`),
  KEY `publications_section_id` (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publications`
--

LOCK TABLES `publications` WRITE;
/*!40000 ALTER TABLE `publications` DISABLE KEYS */;
INSERT INTO `publications` VALUES (1,0,NULL,'2019-02-28 21:00:50','en_US',1,1,1,1,1),(2,0,NULL,'2019-02-28 21:01:36','en_US',2,1,2,1,1),(3,0,NULL,'2019-02-28 21:01:59','en_US',3,1,3,1,1),(4,0,NULL,'2019-02-28 21:02:48','en_US',5,1,4,1,1),(5,0,NULL,'2019-02-28 21:03:34','en_US',6,1,5,1,1),(6,0,NULL,'2019-02-28 21:04:16','en_US',7,1,6,1,1),(7,0,NULL,'2019-02-28 21:04:43','en_US',8,1,7,1,1),(8,0,NULL,'2019-02-28 21:05:35','en_US',10,2,8,1,1),(9,0,'2016-02-11','2019-02-28 21:05:43','en_US',11,1,9,3,1),(10,0,'2016-02-11','2019-02-28 21:05:43','en_US',12,2,10,3,1),(11,0,'2016-02-11','2019-02-28 21:05:43','en_US',13,1,11,3,1),(12,0,'2016-02-11','2019-02-28 21:05:43','en_US',14,2,12,3,1),(13,0,'2016-02-11','2019-02-28 21:05:44','en_US',15,1,13,3,1),(14,0,'2016-02-11','2019-02-28 21:05:44','en_US',16,1,14,3,1),(15,0,NULL,'2019-02-28 21:06:40','en_US',17,1,15,1,1),(16,0,NULL,'2019-02-28 21:07:31','en_US',18,1,16,1,1),(17,0,NULL,'2019-02-28 21:07:58','en_US',19,1,17,1,1),(18,0,NULL,'2019-02-28 21:08:33','en_US',21,1,18,1,1),(19,0,NULL,'2019-02-28 21:09:51','en_US',22,1,19,1,1),(20,0,NULL,'2019-02-28 21:10:10','en_US',23,1,20,1,1),(21,0,NULL,'2020-01-30 22:09:14','en_US',24,1,21,1,1),(22,0,NULL,'2019-02-28 21:11:46','en_US',25,1,22,1,1),(23,0,NULL,'2019-02-28 21:12:58','en_US',26,1,23,1,1),(24,0,NULL,'2019-02-28 21:13:29','en_US',27,1,24,4,1),(25,0,NULL,'2019-02-28 21:14:12','en_US',28,2,25,1,1),(26,0,NULL,'2020-01-03 14:46:38','en_US',NULL,1,26,1,1),(27,0,NULL,'2020-01-04 22:07:56','en_US',NULL,1,27,1,1),(28,0,NULL,'2020-01-05 03:43:10','en_US',NULL,1,28,1,1),(29,0,NULL,'2020-01-05 03:53:12','en_US',NULL,1,29,1,1),(30,0,NULL,'2020-01-05 03:54:19','en_US',NULL,1,30,1,1),(32,0,NULL,'2020-01-30 22:02:16','en_US',11,1,31,1,NULL),(33,0,NULL,'2020-01-31 14:58:43','en_US',29,1,13,1,2),(34,0,'2020-01-31','2020-01-31 15:28:44','en_US',30,1,11,1,2),(35,0,'2020-01-31','2020-01-31 15:07:04','en_US',31,1,11,3,3),(36,0,'2020-01-31','2020-01-31 15:28:33','en_US',32,1,11,1,4),(37,0,NULL,'2020-01-31 18:45:39','en_US',11,1,32,1,NULL),(38,0,NULL,'2020-01-31 22:20:02','en_US',11,1,37,1,NULL),(39,0,NULL,'2020-01-31 22:20:34','en_US',11,1,38,1,NULL),(40,0,NULL,'2020-01-31 22:27:05','en_US',11,1,39,1,NULL),(41,0,NULL,'2020-01-31 22:28:08','en_US',11,1,40,1,NULL),(42,0,NULL,'2020-01-31 22:30:05','en_US',11,1,41,1,NULL),(43,0,NULL,'2020-01-31 22:31:54','en_US',11,1,42,1,NULL),(44,0,NULL,'2020-02-01 00:52:31',NULL,NULL,NULL,0,1,NULL),(45,0,NULL,'2020-02-01 00:55:15',NULL,NULL,NULL,0,1,NULL),(46,0,NULL,'2020-02-01 00:56:27',NULL,NULL,NULL,0,1,NULL),(47,0,NULL,'2020-02-01 00:59:57',NULL,NULL,NULL,0,1,NULL),(48,0,NULL,'2020-02-01 01:00:11',NULL,NULL,NULL,47,1,NULL),(49,0,NULL,'2020-02-01 01:00:11',NULL,11,1,47,1,NULL),(50,0,NULL,'2020-02-02 23:41:49',NULL,NULL,NULL,48,1,NULL),(51,0,NULL,'2020-02-02 23:41:49',NULL,11,1,48,1,NULL),(52,0,NULL,'2020-02-02 23:42:06',NULL,NULL,NULL,49,1,NULL),(53,0,NULL,'2020-02-02 23:42:06',NULL,11,1,49,1,NULL),(54,0,NULL,'2020-02-03 16:47:37',NULL,NULL,NULL,50,1,NULL),(55,0,NULL,'2020-02-03 16:47:37',NULL,11,1,50,1,NULL),(56,0,NULL,'2020-02-03 16:48:06',NULL,NULL,NULL,51,1,NULL),(57,0,NULL,'2020-02-03 16:48:06',NULL,11,1,51,1,NULL),(58,0,NULL,'2020-02-03 17:04:37',NULL,NULL,NULL,52,1,NULL),(59,0,NULL,'2020-02-03 17:04:38',NULL,11,1,52,1,NULL),(60,0,NULL,'2020-02-03 17:09:55',NULL,NULL,NULL,53,1,NULL),(61,0,NULL,'2020-02-03 17:09:55',NULL,11,1,53,1,NULL),(62,0,NULL,'2020-02-03 17:10:41',NULL,NULL,NULL,54,1,NULL),(63,0,NULL,'2020-02-03 17:10:41',NULL,11,1,54,1,NULL),(64,0,NULL,'2020-02-03 17:30:44',NULL,NULL,NULL,55,1,NULL),(65,0,NULL,'2020-02-03 17:30:45',NULL,11,1,55,1,NULL),(66,0,NULL,'2020-02-03 17:56:09',NULL,NULL,NULL,56,1,NULL),(67,0,NULL,'2020-02-03 17:56:40','en_US',11,1,56,1,NULL),(68,0,NULL,'2020-02-03 17:58:14',NULL,NULL,NULL,57,1,NULL),(69,0,NULL,'2020-02-03 17:58:14','en_US',11,1,57,1,NULL),(70,0,NULL,'2020-02-03 17:58:34',NULL,NULL,NULL,58,1,NULL),(71,0,NULL,'2020-02-03 17:58:34','en_US',11,1,58,1,NULL),(72,0,NULL,'2020-02-03 17:59:02',NULL,NULL,NULL,59,1,NULL),(73,0,NULL,'2020-02-03 17:59:03','en_US',11,1,59,1,NULL),(74,0,NULL,'2020-02-03 18:01:43',NULL,NULL,NULL,60,1,NULL),(75,0,NULL,'2020-02-03 18:20:38','en_US',11,1,60,1,NULL),(76,0,NULL,'2020-02-04 12:21:51',NULL,NULL,NULL,61,1,NULL),(77,0,NULL,'2020-02-04 12:33:44','en_US',11,1,61,1,NULL),(78,0,NULL,'2020-02-04 12:33:50','en_US',11,1,62,1,NULL),(79,0,NULL,'2020-02-04 13:08:32','en_US',33,1,63,1,NULL),(80,0,NULL,'2020-02-04 22:30:32','en_US',34,1,64,1,NULL),(81,0,NULL,'2020-02-05 22:36:59','en_US',35,1,65,1,NULL);
/*!40000 ALTER TABLE `publications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `query_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `stage_id` tinyint(4) NOT NULL DEFAULT '1',
  `seq` double NOT NULL DEFAULT '0',
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `closed` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`query_id`),
  KEY `queries_assoc_id` (`assoc_type`,`assoc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queries`
--

LOCK TABLES `queries` WRITE;
/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` VALUES (1,1048585,1,3,1,NULL,NULL,0);
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_participants`
--

DROP TABLE IF EXISTS `query_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query_participants` (
  `query_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `query_participants_pkey` (`query_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_participants`
--

LOCK TABLES `query_participants` WRITE;
/*!40000 ALTER TABLE `query_participants` DISABLE KEYS */;
INSERT INTO `query_participants` VALUES (1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `query_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queued_payments`
--

DROP TABLE IF EXISTS `queued_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queued_payments` (
  `queued_payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `payment_data` text,
  PRIMARY KEY (`queued_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queued_payments`
--

LOCK TABLES `queued_payments` WRITE;
/*!40000 ALTER TABLE `queued_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_assignments`
--

DROP TABLE IF EXISTS `review_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_assignments` (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `reviewer_id` bigint(20) NOT NULL,
  `competing_interests` text,
  `recommendation` tinyint(4) DEFAULT NULL,
  `date_assigned` datetime DEFAULT NULL,
  `date_notified` datetime DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `date_acknowledged` datetime DEFAULT NULL,
  `date_due` datetime DEFAULT NULL,
  `date_response_due` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reminder_was_automatic` tinyint(4) NOT NULL DEFAULT '0',
  `declined` tinyint(4) NOT NULL DEFAULT '0',
  `reviewer_file_id` bigint(20) DEFAULT NULL,
  `date_rated` datetime DEFAULT NULL,
  `date_reminded` datetime DEFAULT NULL,
  `quality` tinyint(4) DEFAULT NULL,
  `review_round_id` bigint(20) DEFAULT NULL,
  `stage_id` tinyint(4) NOT NULL DEFAULT '1',
  `review_method` tinyint(4) NOT NULL DEFAULT '1',
  `round` tinyint(4) NOT NULL DEFAULT '1',
  `step` tinyint(4) NOT NULL DEFAULT '1',
  `review_form_id` bigint(20) DEFAULT NULL,
  `unconsidered` tinyint(4) DEFAULT NULL,
  `cancelled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`review_id`),
  KEY `review_assignments_submission_id` (`submission_id`),
  KEY `review_assignments_reviewer_id` (`reviewer_id`),
  KEY `review_assignments_form_id` (`review_form_id`),
  KEY `review_assignments_reviewer_review` (`reviewer_id`,`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_assignments`
--

LOCK TABLES `review_assignments` WRITE;
/*!40000 ALTER TABLE `review_assignments` DISABLE KEYS */;
INSERT INTO `review_assignments` VALUES (1,2,9,NULL,NULL,'2019-02-28 21:01:28','2019-02-28 21:01:28',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:01:28',0,0,NULL,NULL,NULL,NULL,2,3,2,1,1,NULL,0,0),(2,2,10,NULL,NULL,'2019-02-28 21:01:30','2019-02-28 21:01:30',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:01:30',0,0,NULL,NULL,NULL,NULL,2,3,2,1,1,NULL,0,0),(3,4,8,NULL,NULL,'2019-02-28 21:02:30','2019-02-28 21:02:30',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:02:30',0,0,NULL,NULL,NULL,NULL,3,3,2,1,1,NULL,0,0),(4,4,10,NULL,NULL,'2019-02-28 21:02:33','2019-02-28 21:02:33',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:02:33',0,0,NULL,NULL,NULL,NULL,3,3,2,1,1,NULL,0,0),(5,5,7,NULL,NULL,'2019-02-28 21:03:20','2019-02-28 21:03:20',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:03:20',0,0,NULL,NULL,NULL,NULL,4,3,2,1,1,NULL,0,0),(6,5,10,NULL,NULL,'2019-02-28 21:03:22','2019-02-28 21:03:22',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:03:22',0,0,NULL,NULL,NULL,NULL,4,3,2,1,1,NULL,0,0),(7,6,8,NULL,5,'2019-02-28 21:04:06','2019-02-28 21:04:06','2019-02-28 21:04:16','2019-02-28 21:04:21',NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:04:21',0,0,NULL,NULL,NULL,NULL,5,3,2,1,4,NULL,0,0),(8,6,9,NULL,NULL,'2019-02-28 21:04:08','2019-02-28 21:04:08',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:04:08',0,0,NULL,NULL,NULL,NULL,5,3,2,1,1,NULL,0,0),(9,6,10,NULL,NULL,'2019-02-28 21:04:11','2019-02-28 21:04:11',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:04:11',0,0,NULL,NULL,NULL,NULL,5,3,2,1,1,NULL,0,0),(10,8,7,NULL,NULL,'2019-02-28 21:05:17','2019-02-28 21:05:17',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:05:17',0,0,NULL,NULL,NULL,NULL,6,3,2,1,1,NULL,0,0),(11,8,10,NULL,NULL,'2019-02-28 21:05:20','2019-02-28 21:05:20',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:05:20',0,0,NULL,NULL,NULL,NULL,6,3,2,1,1,NULL,0,0),(12,15,7,NULL,NULL,'2019-02-28 21:06:14','2019-02-28 21:06:14',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:06:14',0,0,NULL,NULL,NULL,NULL,7,3,2,1,1,NULL,0,0),(13,15,9,NULL,NULL,'2019-02-28 21:06:17','2019-02-28 21:06:17',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:06:17',0,0,NULL,NULL,NULL,NULL,7,3,2,1,1,NULL,0,0),(14,15,10,NULL,NULL,'2019-02-28 21:06:19','2019-02-28 21:06:19',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:06:19',0,0,NULL,NULL,NULL,NULL,7,3,2,1,1,NULL,0,0),(15,16,9,NULL,2,'2019-02-28 21:07:13','2019-02-28 21:07:13','2019-02-28 21:07:21','2019-02-28 21:07:25',NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:07:25',0,0,NULL,NULL,NULL,NULL,8,3,2,1,4,NULL,0,0),(16,16,10,NULL,3,'2019-02-28 21:07:15','2019-02-28 21:07:15','2019-02-28 21:07:31','2019-02-28 21:07:35',NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:07:35',0,0,NULL,NULL,NULL,NULL,8,3,2,1,4,NULL,0,0),(17,18,7,NULL,NULL,'2019-02-28 21:08:31','2019-02-28 21:08:31',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:08:31',0,0,NULL,NULL,NULL,NULL,9,3,2,1,1,NULL,0,0),(18,18,8,NULL,NULL,'2019-02-28 21:08:33','2019-02-28 21:08:33',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:08:33',0,0,NULL,NULL,NULL,NULL,9,3,2,1,1,NULL,0,0),(19,19,7,NULL,2,'2019-02-28 21:09:05','2019-02-28 21:09:05','2019-02-28 21:09:15','2019-02-28 21:09:20',NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:09:20',0,0,NULL,NULL,NULL,NULL,10,3,2,1,4,NULL,0,0),(20,19,9,NULL,2,'2019-02-28 21:09:08','2019-02-28 21:09:08','2019-02-28 21:09:25','2019-02-28 21:09:30',NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:09:30',0,0,NULL,NULL,NULL,NULL,10,3,2,1,4,NULL,0,0),(21,19,10,NULL,3,'2019-02-28 21:09:10','2019-02-28 21:09:10','2019-02-28 21:09:38','2019-02-28 21:09:42',NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:09:42',0,0,NULL,NULL,NULL,NULL,10,3,2,1,4,NULL,0,0),(22,21,8,NULL,NULL,'2019-02-28 21:10:47','2019-02-28 21:10:47',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:10:47',0,0,NULL,NULL,NULL,NULL,11,3,2,1,1,NULL,0,0),(23,21,9,NULL,NULL,'2019-02-28 21:10:51','2019-02-28 21:10:51',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:10:51',0,0,NULL,NULL,NULL,NULL,11,3,2,1,1,NULL,0,0),(24,23,7,NULL,NULL,'2019-02-28 21:12:28','2019-02-28 21:12:28',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:12:28',0,0,NULL,NULL,NULL,NULL,12,3,2,1,1,NULL,0,0),(25,23,8,NULL,NULL,'2019-02-28 21:12:31','2019-02-28 21:12:31',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:12:31',0,0,NULL,NULL,NULL,NULL,12,3,2,1,1,NULL,0,0),(26,25,8,NULL,NULL,'2019-02-28 21:14:02','2019-02-28 21:14:02',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:14:02',0,0,NULL,NULL,NULL,NULL,13,3,2,1,1,NULL,0,0),(27,25,9,NULL,NULL,'2019-02-28 21:14:06','2019-02-28 21:14:06',NULL,NULL,NULL,'2019-03-28 00:00:00','2019-03-21 00:00:00','2019-02-28 21:14:06',0,0,NULL,NULL,NULL,NULL,13,3,2,1,1,NULL,0,0);
/*!40000 ALTER TABLE `review_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_files`
--

DROP TABLE IF EXISTS `review_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_files` (
  `review_id` bigint(20) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  UNIQUE KEY `review_files_pkey` (`review_id`,`file_id`),
  KEY `review_files_review_id` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_files`
--

LOCK TABLES `review_files` WRITE;
/*!40000 ALTER TABLE `review_files` DISABLE KEYS */;
INSERT INTO `review_files` VALUES (1,4),(2,4),(3,7),(4,7),(5,9),(6,9),(7,11),(8,11),(9,11),(10,14),(11,14),(12,28),(13,28),(14,28),(15,31),(16,31),(17,34),(18,34),(19,36),(20,36),(21,36),(22,39),(23,39),(24,42),(25,42),(26,46),(27,46);
/*!40000 ALTER TABLE `review_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_element_settings`
--

DROP TABLE IF EXISTS `review_form_element_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_element_settings` (
  `review_form_element_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `review_form_element_settings_pkey` (`review_form_element_id`,`locale`,`setting_name`),
  KEY `review_form_element_settings_review_form_element_id` (`review_form_element_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_element_settings`
--

LOCK TABLES `review_form_element_settings` WRITE;
/*!40000 ALTER TABLE `review_form_element_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_element_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_elements`
--

DROP TABLE IF EXISTS `review_form_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_elements` (
  `review_form_element_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `review_form_id` bigint(20) NOT NULL,
  `seq` double DEFAULT NULL,
  `element_type` bigint(20) DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `included` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`review_form_element_id`),
  KEY `review_form_elements_review_form_id` (`review_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_elements`
--

LOCK TABLES `review_form_elements` WRITE;
/*!40000 ALTER TABLE `review_form_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_responses`
--

DROP TABLE IF EXISTS `review_form_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_responses` (
  `review_form_element_id` bigint(20) NOT NULL,
  `review_id` bigint(20) NOT NULL,
  `response_type` varchar(6) DEFAULT NULL,
  `response_value` text,
  KEY `review_form_responses_pkey` (`review_form_element_id`,`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_responses`
--

LOCK TABLES `review_form_responses` WRITE;
/*!40000 ALTER TABLE `review_form_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_form_settings`
--

DROP TABLE IF EXISTS `review_form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_form_settings` (
  `review_form_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `review_form_settings_pkey` (`review_form_id`,`locale`,`setting_name`),
  KEY `review_form_settings_review_form_id` (`review_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_form_settings`
--

LOCK TABLES `review_form_settings` WRITE;
/*!40000 ALTER TABLE `review_form_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_forms`
--

DROP TABLE IF EXISTS `review_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_forms` (
  `review_form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  `seq` double DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`review_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_forms`
--

LOCK TABLES `review_forms` WRITE;
/*!40000 ALTER TABLE `review_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_round_files`
--

DROP TABLE IF EXISTS `review_round_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_round_files` (
  `submission_id` bigint(20) NOT NULL,
  `review_round_id` bigint(20) NOT NULL,
  `stage_id` tinyint(4) NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL DEFAULT '1',
  UNIQUE KEY `review_round_files_pkey` (`submission_id`,`review_round_id`,`file_id`,`revision`),
  KEY `review_round_files_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_round_files`
--

LOCK TABLES `review_round_files` WRITE;
/*!40000 ALTER TABLE `review_round_files` DISABLE KEYS */;
INSERT INTO `review_round_files` VALUES (1,1,3,2,1),(2,2,3,4,1),(4,3,3,7,1),(5,4,3,9,1),(6,5,3,11,1),(8,6,3,14,1),(15,7,3,28,1),(16,8,3,31,1),(18,9,3,34,1),(19,10,3,36,1),(21,11,3,39,1),(23,12,3,42,1),(25,13,3,46,1);
/*!40000 ALTER TABLE `review_round_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_rounds`
--

DROP TABLE IF EXISTS `review_rounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_rounds` (
  `review_round_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) DEFAULT NULL,
  `round` tinyint(4) NOT NULL,
  `review_revision` bigint(20) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`review_round_id`),
  UNIQUE KEY `review_rounds_submission_id_stage_id_round_pkey` (`submission_id`,`stage_id`,`round`),
  KEY `review_rounds_submission_id` (`submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_rounds`
--

LOCK TABLES `review_rounds` WRITE;
/*!40000 ALTER TABLE `review_rounds` DISABLE KEYS */;
INSERT INTO `review_rounds` VALUES (1,1,3,1,NULL,6),(2,2,3,1,NULL,4),(3,4,3,1,NULL,4),(4,5,3,1,NULL,4),(5,6,3,1,NULL,8),(6,8,3,1,NULL,4),(7,15,3,1,NULL,4),(8,16,3,1,NULL,8),(9,18,3,1,NULL,7),(10,19,3,1,NULL,1),(11,21,3,1,NULL,4),(12,23,3,1,NULL,4),(13,25,3,1,NULL,4),(14,11,3,1,NULL,6);
/*!40000 ALTER TABLE `review_rounds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_contexts`
--

DROP TABLE IF EXISTS `rt_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt_contexts` (
  `context_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version_id` bigint(20) NOT NULL,
  `title` varchar(120) NOT NULL,
  `abbrev` varchar(32) NOT NULL,
  `description` text,
  `cited_by` tinyint(4) NOT NULL DEFAULT '0',
  `author_terms` tinyint(4) NOT NULL DEFAULT '0',
  `define_terms` tinyint(4) NOT NULL DEFAULT '0',
  `geo_terms` tinyint(4) NOT NULL DEFAULT '0',
  `seq` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`context_id`),
  KEY `rt_contexts_version_id` (`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_contexts`
--

LOCK TABLES `rt_contexts` WRITE;
/*!40000 ALTER TABLE `rt_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_searches`
--

DROP TABLE IF EXISTS `rt_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt_searches` (
  `search_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` text,
  `url` text,
  `search_url` text,
  `search_post` text,
  `seq` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`search_id`),
  KEY `rt_searches_context_id` (`context_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_searches`
--

LOCK TABLES `rt_searches` WRITE;
/*!40000 ALTER TABLE `rt_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rt_versions`
--

DROP TABLE IF EXISTS `rt_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rt_versions` (
  `version_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `version_key` varchar(40) NOT NULL,
  `locale` varchar(14) DEFAULT 'en_US',
  `title` varchar(120) NOT NULL,
  `description` text,
  PRIMARY KEY (`version_id`),
  KEY `rt_versions_journal_id` (`journal_id`),
  KEY `rt_versions_version_key` (`version_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rt_versions`
--

LOCK TABLES `rt_versions` WRITE;
/*!40000 ALTER TABLE `rt_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `rt_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduled_tasks`
--

DROP TABLE IF EXISTS `scheduled_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduled_tasks` (
  `class_name` varchar(255) NOT NULL,
  `last_run` datetime DEFAULT NULL,
  UNIQUE KEY `scheduled_tasks_pkey` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduled_tasks`
--

LOCK TABLES `scheduled_tasks` WRITE;
/*!40000 ALTER TABLE `scheduled_tasks` DISABLE KEYS */;
INSERT INTO `scheduled_tasks` VALUES ('lib.pkp.classes.task.ReviewReminder','2020-02-05 21:08:02'),('lib.pkp.classes.task.StatisticsReport','2020-02-01 01:00:13'),('plugins.generic.usageStats.UsageStatsLoader','2020-02-05 21:08:02'),('plugins.importexport.crossref.CrossrefInfoSender','2020-02-05 21:08:02'),('plugins.importexport.datacite.DataciteInfoSender','2020-02-05 21:08:02'),('plugins.importexport.doaj.DOAJInfoSender','2020-02-05 21:08:02'),('plugins.importexport.medra.MedraInfoSender','2020-02-05 21:08:02');
/*!40000 ALTER TABLE `scheduled_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_editors`
--

DROP TABLE IF EXISTS `section_editors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section_editors` (
  `context_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `section_editors_pkey` (`context_id`,`section_id`,`user_id`),
  KEY `section_editors_context_id` (`context_id`),
  KEY `section_editors_section_id` (`section_id`),
  KEY `section_editors_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_editors`
--

LOCK TABLES `section_editors` WRITE;
/*!40000 ALTER TABLE `section_editors` DISABLE KEYS */;
INSERT INTO `section_editors` VALUES (1,1,4),(1,1,5),(1,2,6);
/*!40000 ALTER TABLE `section_editors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_settings`
--

DROP TABLE IF EXISTS `section_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section_settings` (
  `section_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `section_settings_pkey` (`section_id`,`locale`,`setting_name`),
  KEY `section_settings_section_id` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_settings`
--

LOCK TABLES `section_settings` WRITE;
/*!40000 ALTER TABLE `section_settings` DISABLE KEYS */;
INSERT INTO `section_settings` VALUES (1,'en_US','abbrev','ART','string'),(1,'en_US','identifyType','','string'),(1,'en_US','policy','','string'),(1,'en_US','title','Articles','string'),(2,'en_US','abbrev','REV','string'),(2,'en_US','identifyType','Review Article','string'),(2,'en_US','policy','','string'),(2,'en_US','title','Reviews','string');
/*!40000 ALTER TABLE `section_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `section_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `review_form_id` bigint(20) DEFAULT NULL,
  `seq` double NOT NULL DEFAULT '0',
  `editor_restricted` tinyint(4) NOT NULL DEFAULT '0',
  `meta_indexed` tinyint(4) NOT NULL DEFAULT '0',
  `meta_reviewed` tinyint(4) NOT NULL DEFAULT '1',
  `abstracts_not_required` tinyint(4) NOT NULL DEFAULT '0',
  `hide_title` tinyint(4) NOT NULL DEFAULT '0',
  `hide_author` tinyint(4) NOT NULL DEFAULT '0',
  `abstract_word_count` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`section_id`),
  KEY `sections_journal_id` (`journal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,0,1,0,1,1,0,0,0,NULL),(2,1,0,2,0,1,1,1,0,0,0);
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_address` varchar(39) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created` bigint(20) NOT NULL DEFAULT '0',
  `last_used` bigint(20) NOT NULL DEFAULT '0',
  `remember` tinyint(4) NOT NULL DEFAULT '0',
  `data` text,
  `domain` varchar(255) DEFAULT NULL,
  UNIQUE KEY `sessions_pkey` (`session_id`),
  KEY `sessions_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('038r7r3tmfd4kt5u907hep6ob1',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580481401,1580481401,0,'','127.0.0.1'),('093qoieb276u1qskk0423fg4ue',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509807,1580509807,0,'','127.0.0.1'),('1b8hb2u2o8hjbt4p2b4bqejqb3',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580821452,1580821452,0,'','127.0.0.1'),('1cbgvfo5usvsdvc1ackt52nipd',NULL,'127.0.0.1','curl/7.54.0',1580505768,1580505768,0,'','127.0.0.1'),('1d21vhvq36kfe02rjogo4u1igc',1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4001.0 Safari/537.36',1576792515,1578242420,1,'csrf|a:2:{s:9:\"timestamp\";i:1578242420;s:5:\"token\";s:32:\"13f0203d80336de5629a168571c60177\";}userId|i:1;username|s:5:\"admin\";','localhost'),('1fvo9iu8l47f0p1f1rsqshmdlb',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752713,1580752713,0,'','127.0.0.1'),('1sqvpvg2qund2rlsd230sh7h71',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580818856,1580818856,0,'','127.0.0.1'),('24j0l3rlr672kc5829f2cokj8o',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517981,1580517981,0,'','127.0.0.1'),('25qpldef1ebempr6o7flb0bun5',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518813,1580518813,0,'','127.0.0.1'),('2rk333qrumlgo6l4jd6b8ken3d',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580496342,1580496342,0,'','127.0.0.1'),('39e56qh9mp9rg1skdrkvdoe726',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580748463,1580748463,0,'','127.0.0.1'),('3j4ilh52tafm85jjhlt3otptt6',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509627,1580509627,0,'','127.0.0.1'),('40s86cqlavnjqv18bo92103jf9',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580748486,1580748486,0,'','127.0.0.1'),('49dui88i2ak24jq3joeu0am8n5',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580421739,1580421739,0,'','127.0.0.1'),('4kd667b8eqf9dn7d904fntag7t',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580496342,1580496342,0,'','127.0.0.1'),('50425vrvghr1erpuv1psprru2j',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752569,1580752569,0,'','127.0.0.1'),('5t02pccl1g1ka587h5d17n8j6q',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580421739,1580421739,0,'','127.0.0.1'),('61anecfmhagl0jaiuvhfd17q39',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509625,1580509625,0,'','127.0.0.1'),('6as41kanfm183eq615mopo857e',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580496342,1580496342,0,'','127.0.0.1'),('6l8kv6fp7kt5c75b0mmkspn35m',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509914,1580509914,0,'','127.0.0.1'),('71serjiblnkm565optfg6k6qo0',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518799,1580518799,0,'','127.0.0.1'),('7l5lebeltnj5mhil689lhqabs0',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580421738,1580421738,0,'','127.0.0.1'),('7r4v1aebivbsfe2v62ms07m0aq',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580821455,1580821455,0,'','127.0.0.1'),('8atd56uo232ouv2big4sr3iplf',NULL,'127.0.0.1','curl/7.54.0',1580421808,1580421808,0,'','127.0.0.1'),('8v236c42afipkt1dlbdpostsg0',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517827,1580517827,0,'','127.0.0.1'),('94fqfspld28pq7gutqvgqhc8on',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580748456,1580748456,0,'','127.0.0.1'),('96eabbftvkci9aj1bfs6masfp9',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580749837,1580749837,0,'','127.0.0.1'),('9hs9iknaf3iu09i336ta7a9hde',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518587,1580518587,0,'','127.0.0.1'),('a1opotaikn1s965o385c51b06t',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518516,1580518516,0,'','127.0.0.1'),('b0in4een5fne9henev4uid8m8u',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752903,1580752903,0,'','127.0.0.1'),('b1vqpdrmahtl3ni97o9te6bfc7',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580749794,1580749794,0,'','127.0.0.1'),('b80rc1cre6o5ol8qb400vuhosb',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752626,1580752626,0,'','127.0.0.1'),('bh33msom4i827m70n7vag17esp',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509204,1580509204,0,'','127.0.0.1'),('bpu94isd4hv47ercrt0rrnkd66',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509688,1580509688,0,'','127.0.0.1'),('bq5nrh5skq6nvqbdd214uut62g',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580749785,1580749785,0,'','127.0.0.1'),('bu23d88rjqc27e66hs1r4522jd',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509619,1580509619,0,'','127.0.0.1'),('c21dpuclpl0mu472b54rbimt3s',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518588,1580518588,0,'','127.0.0.1'),('c3silrbgi67qlp5bbbt250isv1',NULL,'127.0.0.1','curl/7.54.0',1580507415,1580507415,0,'','127.0.0.1'),('cc96larm0vejedmlbrbon1gvnk',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517806,1580517806,0,'','127.0.0.1'),('cl3lihkm0ao74lihfm6dg3ol7s',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580821444,1580821444,0,'','127.0.0.1'),('csm2mtfgt98t1fijv0ata6m72m',NULL,'127.0.0.1','curl/7.54.0',1580507312,1580507312,0,'','127.0.0.1'),('ctnrqt321fn0i261f5o23emmra',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580749477,1580749477,0,'','127.0.0.1'),('dace0tvfuf9ccu7i7ma6v833mf',NULL,'127.0.0.1','curl/7.54.0',1580508841,1580508841,0,'','127.0.0.1'),('dbcs4c8o88nk0dimvjq35liv7l',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517904,1580517904,0,'','127.0.0.1'),('djvngsh5fcatt5ihqfba1vp1ra',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509914,1580509914,0,'','127.0.0.1'),('e2rgonnjg8i97gclv308nn2u15',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580855431,1580855431,0,'','127.0.0.1'),('e32q96n7dkg830q1kd52h0b0pj',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580496340,1580496340,0,'','127.0.0.1'),('e4i0bco98nvtv5qajt90f61tfn',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580421737,1580421737,0,'','127.0.0.1'),('elhf3ua0utjcfkor2am4jkqpcg',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518811,1580518811,0,'','127.0.0.1'),('elooqsdi92skvd25hdrm9dpjag',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580686926,1580686926,0,'','127.0.0.1'),('epi8s8askstjd4hbt7es264g59',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509234,1580509234,0,'','127.0.0.1'),('erudpfds1pd58bg07l0jr27s7h',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580942247,1580942247,0,'','127.0.0.1'),('f3ja04mlv3ikedlc7r7mj58evb',NULL,'127.0.0.1','curl/7.54.0',1580506176,1580506176,0,'','127.0.0.1'),('f3luq9ic20k41j1k5qejkn563b',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518321,1580518321,0,'','127.0.0.1'),('fuaoitv2qva9c4o7675u3kne7h',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580748251,1580748251,0,'','127.0.0.1'),('g0g2lsecbs4av4mrtp403incu2',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509687,1580509687,0,'','127.0.0.1'),('g41rfjem59c3u0h5bni7n10mft',NULL,'127.0.0.1','curl/7.54.0',1580506163,1580506163,0,'','127.0.0.1'),('g7imstq2idcvt2uhks6p86i0v5',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509625,1580509625,0,'','127.0.0.1'),('ggi5ck2votj9tqq69hd9okouci',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580496339,1580496339,0,'','127.0.0.1'),('gqiprm0o5vh1buv3tfphi4lc7a',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509805,1580509805,0,'','127.0.0.1'),('h4vmskgomek0vfqbq0bl1jbpi6',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518776,1580518776,0,'','127.0.0.1'),('hc2v9pj8c8lhoc8rsulj60htrb',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580855432,1580855432,0,'','127.0.0.1'),('he2s897emhlkoeav43fuirf03s',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509206,1580509206,0,'','127.0.0.1'),('hfp4m957pbkv7jcumhj49g8mat',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580421739,1580421739,0,'','127.0.0.1'),('hruttqj25lrr6v48d5ofh52j7g',NULL,'127.0.0.1','curl/7.54.0',1580507280,1580507280,0,'','127.0.0.1'),('hv63b7heqqs91b0r3tufq9fc21',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509806,1580509806,0,'','127.0.0.1'),('jb71e1ebgqjabapodotqds0vp4',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518351,1580518351,0,'','127.0.0.1'),('jc4ohlchnp49v5flqi0q2cjvag',NULL,'127.0.0.1','curl/7.54.0',1580506149,1580506149,0,'','127.0.0.1'),('jd24ptj78fn51sar7is3bc22h7',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518514,1580518514,0,'','127.0.0.1'),('jje09go4d6canbo2aqhb5tub1s',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580686911,1580686911,0,'','127.0.0.1'),('jsro93hcrj5s4kh7ms5kokit1q',NULL,'127.0.0.1','curl/7.54.0',1580507710,1580507710,0,'','127.0.0.1'),('kn5fa9j2c7dig3nef0b66nn3fv',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752744,1580752744,0,'','127.0.0.1'),('kvvq766ik99e8vefjtfntttrlr',NULL,'127.0.0.1','curl/7.54.0',1580508882,1580508882,0,'','127.0.0.1'),('l6fguhn778pe0udhhrq3e1i02d',NULL,'127.0.0.1','curl/7.54.0',1580505704,1580505704,0,'','127.0.0.1'),('lqi89rfm9gftr7sdsb52tmuejp',NULL,'127.0.0.1','curl/7.54.0',1580421907,1580421907,0,'','127.0.0.1'),('ls8focn1he1lk7cgufjlijbv3v',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752716,1580752716,0,'','127.0.0.1'),('m63pfgf0p6907bvlg656mq99lo',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752743,1580752743,0,'','127.0.0.1'),('m8gphv58vqj3mqu6jktitvr2ap',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517805,1580517805,0,'','127.0.0.1'),('mbf29eok13m3mrm1uphrairicg',1,'127.0.0.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4034.0 Safari/537.36',1580421868,1580942251,1,'csrf|a:2:{s:9:\"timestamp\";i:1580942247;s:5:\"token\";s:32:\"243b144cf0262539fa49bfc4c6bb7bf8\";}userId|i:1;username|s:5:\"admin\";','localhost'),('md5605e0fik6o6jsn52kepdj6j',NULL,'127.0.0.1','curl/7.54.0',1580421976,1580421976,0,'','127.0.0.1'),('mhvathjgn10nvjo1lqvb6bhuo9',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580819630,1580819630,0,'','127.0.0.1'),('mig2m5jtn3lneje740hjmjneja',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518319,1580518319,0,'','127.0.0.1'),('mq8u88tgq5ch98uj5gvnnvp5h9',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580819627,1580819627,0,'','127.0.0.1'),('n3coclapn8a2i2ujvihu2ml629',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580855433,1580855433,0,'','127.0.0.1'),('n5t4amugjmhomut15ir5vekvth',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752702,1580752702,0,'','127.0.0.1'),('n9hemjainididr9f9ebmc9debj',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752742,1580752742,0,'','127.0.0.1'),('ng3flrkmui6aln67567b4qn7va',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509202,1580509202,0,'','127.0.0.1'),('nn1q5if9ep3g450e1j6qsq4qhp',NULL,'127.0.0.1','curl/7.54.0',1580505777,1580505777,0,'','127.0.0.1'),('nsr4pffn39hc02gpb3foao8lqq',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752714,1580752714,0,'','127.0.0.1'),('o2h7f2i5menere1i60peiqke3a',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580749841,1580749841,0,'','127.0.0.1'),('o7qtdqfqb574504sapt28g0svp',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518111,1580518111,0,'','127.0.0.1'),('ojbhhvulh58057465a0pikjade',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580496342,1580496342,0,'','127.0.0.1'),('ok79mamu3d8kujv280tp8sp4gs',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580421735,1580421735,0,'','127.0.0.1'),('ol2torfersd4f8epjl5krqu4kp',NULL,'127.0.0.1','curl/7.54.0',1580507250,1580507250,0,'','127.0.0.1'),('ppemn6863lndspb2h4rrcer89p',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509205,1580509205,0,'','127.0.0.1'),('pvj2p5jim3jg3t4tlkecgbq0f7',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580748256,1580748256,0,'','127.0.0.1'),('q8sio3ovbncki0idd59u0n660q',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580942203,1580942203,0,'','127.0.0.1'),('q9madbonp197mt92pdiiutcqvr',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752902,1580752902,0,'','127.0.0.1'),('qalfue3ab4o0bquves93880afk',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580686908,1580686908,0,'','127.0.0.1'),('qe15p2dnhgftds27gnm3pp5i2s',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517826,1580517826,0,'','127.0.0.1'),('qmn2rdmr69b9gp93jk7o3o8836',NULL,'127.0.0.1','curl/7.54.0',1580421915,1580421915,0,'','127.0.0.1'),('qp6ejfhe5kuqja1a5m1ecoj1gj',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580751044,1580751044,0,'','127.0.0.1'),('qqidv2mrf5ap23p229r4n05er1',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518353,1580518353,0,'','127.0.0.1'),('r32nmgdlg6mfg6pthc02vdcujh',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580751081,1580751081,0,'','127.0.0.1'),('rb9upl2cq4l4nesf29in8rhgu5',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580942219,1580942219,0,'','127.0.0.1'),('rco9ln9hcjhvi3e3h17o4glmn2',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580749469,1580749469,0,'','127.0.0.1'),('rmfmhqiv756q8pveavu4cgijjl',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509621,1580509621,0,'','127.0.0.1'),('s7fg0kngprf7p8lt8cqa9560i1',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580516903,1580516903,0,'','127.0.0.1'),('s9ovdke17fcr5qtrbhc9m71hvd',NULL,'127.0.0.1','curl/7.54.0',1580421802,1580421802,0,'','127.0.0.1'),('spfkur9e6mcevfd0shiofn05g5',NULL,'127.0.0.1','curl/7.54.0',1580496384,1580496384,0,'','127.0.0.1'),('t3aqnnpac39ka8ur2dbl59l6qr',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517979,1580517979,0,'','127.0.0.1'),('t4qokveh129ih0uuftm6lqk8i4',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509689,1580509689,0,'','127.0.0.1'),('tbre6p02bg31rluf4c537j1pjf',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752693,1580752693,0,'','127.0.0.1'),('tecrcat2evkfane3tsd0ftum63',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509206,1580509206,0,'','127.0.0.1'),('tere5m9s1258vu0qldstrg62v2',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580517901,1580517901,0,'','127.0.0.1'),('tl1mpsd25rh2332k4b1pm150to',NULL,'127.0.0.1','curl/7.54.0',1580516946,1580516946,0,'','127.0.0.1'),('tm23i3dhusmdu5ruropoo3b625',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580509205,1580509205,0,'','127.0.0.1'),('tt544mkdk8itqcv09031asoeh1',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580821453,1580821453,0,'','127.0.0.1'),('u09te7vh0l4pci6bch1m8b2svd',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580518110,1580518110,0,'','127.0.0.1'),('ubf8o3udq4hvede904md415cm3',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580748257,1580748257,0,'','127.0.0.1'),('v9atmjqd5hnibnu6ogo49penab',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580752905,1580752905,0,'','127.0.0.1'),('vopkrh45nqa04tvaklapp0i94t',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580941077,1580941077,0,'','127.0.0.1'),('vqtmm770aisn3soeugi0srd4sj',NULL,'127.0.0.1','curl/7.54.0',1580507560,1580507560,0,'','127.0.0.1'),('vtbe90kffgade36g5efpk2pe4b',NULL,'127.0.0.1','SWORDAPP PHP v2 library (version 0.1) http://php.swordapp.org/',1580749873,1580749873,0,'','127.0.0.1');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site` (
  `redirect` bigint(20) NOT NULL DEFAULT '0',
  `primary_locale` varchar(14) NOT NULL,
  `min_password_length` tinyint(4) NOT NULL DEFAULT '6',
  `installed_locales` varchar(255) NOT NULL DEFAULT 'en_US',
  `supported_locales` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
INSERT INTO `site` VALUES (0,'en_US',6,'a:2:{i:0;s:5:\"en_US\";i:1;s:5:\"fr_CA\";}','a:2:{i:0;s:5:\"en_US\";i:1;s:5:\"fr_CA\";}');
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_settings`
--

DROP TABLE IF EXISTS `site_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_settings` (
  `setting_name` varchar(255) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_value` text,
  UNIQUE KEY `site_settings_pkey` (`setting_name`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_settings`
--

LOCK TABLES `site_settings` WRITE;
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
INSERT INTO `site_settings` VALUES ('contactEmail','en_US','pkpadmin@mailinator.com'),('contactName','en_US','Open Journal Systems'),('showDescription','','1'),('showThumbnail','','1'),('showTitle','','1'),('themePluginPath','','default');
/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_assignments`
--

DROP TABLE IF EXISTS `stage_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage_assignments` (
  `stage_assignment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date_assigned` datetime NOT NULL,
  `recommend_only` tinyint(4) NOT NULL DEFAULT '0',
  `can_change_metadata` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`stage_assignment_id`),
  UNIQUE KEY `stage_assignment` (`submission_id`,`user_group_id`,`user_id`),
  KEY `stage_assignments_submission_id` (`submission_id`),
  KEY `stage_assignments_user_group_id` (`user_group_id`),
  KEY `stage_assignments_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_assignments`
--

LOCK TABLES `stage_assignments` WRITE;
/*!40000 ALTER TABLE `stage_assignments` DISABLE KEYS */;
INSERT INTO `stage_assignments` VALUES (1,1,14,17,'2019-02-28 21:00:16',0,0),(2,1,3,3,'2019-02-28 21:00:29',0,1),(3,1,5,5,'2019-02-28 21:00:30',0,0),(4,1,5,4,'2019-02-28 21:00:30',0,0),(5,1,5,6,'2019-02-28 21:00:41',1,0),(6,2,14,18,'2019-02-28 21:01:03',0,0),(7,2,3,3,'2019-02-28 21:01:16',0,1),(8,2,5,5,'2019-02-28 21:01:16',0,0),(9,2,5,4,'2019-02-28 21:01:16',0,0),(10,2,7,11,'2019-02-28 21:01:36',0,0),(11,3,14,19,'2019-02-28 21:01:44',0,0),(12,3,3,3,'2019-02-28 21:01:59',0,1),(13,3,5,5,'2019-02-28 21:01:59',0,0),(14,3,5,4,'2019-02-28 21:01:59',0,0),(15,4,14,20,'2019-02-28 21:02:06',0,0),(16,4,3,3,'2019-02-28 21:02:19',0,1),(17,4,5,5,'2019-02-28 21:02:19',0,0),(18,4,5,4,'2019-02-28 21:02:19',0,0),(19,4,7,11,'2019-02-28 21:02:38',0,0),(20,4,11,13,'2019-02-28 21:02:45',0,0),(21,4,13,15,'2019-02-28 21:02:48',0,0),(22,5,14,21,'2019-02-28 21:02:55',0,0),(23,5,3,3,'2019-02-28 21:03:08',0,1),(24,5,5,5,'2019-02-28 21:03:08',0,0),(25,5,5,4,'2019-02-28 21:03:08',0,0),(26,5,7,11,'2019-02-28 21:03:27',0,0),(27,5,11,13,'2019-02-28 21:03:34',0,0),(28,6,14,22,'2019-02-28 21:03:42',0,0),(29,6,3,3,'2019-02-28 21:03:55',0,1),(30,6,5,5,'2019-02-28 21:03:55',0,0),(31,6,5,4,'2019-02-28 21:03:55',0,0),(32,7,14,23,'2019-02-28 21:04:28',0,0),(33,7,3,3,'2019-02-28 21:04:43',0,1),(34,7,5,5,'2019-02-28 21:04:43',0,0),(35,7,5,4,'2019-02-28 21:04:43',0,0),(36,8,14,24,'2019-02-28 21:04:53',0,0),(37,8,3,3,'2019-02-28 21:05:06',0,1),(38,8,5,6,'2019-02-28 21:05:06',0,0),(39,8,7,12,'2019-02-28 21:05:26',0,0),(40,8,11,14,'2019-02-28 21:05:32',0,0),(41,8,13,16,'2019-02-28 21:05:35',0,0),(42,15,14,25,'2019-02-28 21:05:50',0,0),(43,15,3,3,'2019-02-28 21:06:03',0,1),(44,15,5,5,'2019-02-28 21:06:03',0,0),(45,15,5,4,'2019-02-28 21:06:03',0,0),(46,15,7,12,'2019-02-28 21:06:25',0,0),(47,15,11,14,'2019-02-28 21:06:31',0,0),(48,15,13,16,'2019-02-28 21:06:33',0,0),(49,16,14,26,'2019-02-28 21:06:48',0,0),(50,16,3,3,'2019-02-28 21:07:01',0,1),(51,16,5,5,'2019-02-28 21:07:01',0,0),(52,16,5,4,'2019-02-28 21:07:01',0,0),(53,17,14,27,'2019-02-28 21:07:42',0,0),(54,17,3,3,'2019-02-28 21:07:58',0,1),(55,17,5,5,'2019-02-28 21:07:58',0,0),(56,17,5,4,'2019-02-28 21:07:58',0,0),(57,18,14,28,'2019-02-28 21:08:06',0,0),(58,18,3,3,'2019-02-28 21:08:19',0,1),(59,18,5,5,'2019-02-28 21:08:19',0,0),(60,18,5,4,'2019-02-28 21:08:19',0,0),(61,19,14,29,'2019-02-28 21:08:40',0,0),(62,19,3,3,'2019-02-28 21:08:53',0,1),(63,19,5,5,'2019-02-28 21:08:53',0,0),(64,19,5,4,'2019-02-28 21:08:53',0,0),(65,20,14,30,'2019-02-28 21:09:58',0,0),(66,20,3,3,'2019-02-28 21:10:10',0,1),(67,20,5,5,'2019-02-28 21:10:10',0,0),(68,20,5,4,'2019-02-28 21:10:10',0,0),(69,21,14,31,'2019-02-28 21:10:17',0,0),(70,21,3,3,'2019-02-28 21:10:29',0,1),(71,21,5,5,'2019-02-28 21:10:29',0,0),(72,21,5,4,'2019-02-28 21:10:29',0,0),(73,21,7,12,'2019-02-28 21:11:02',0,0),(74,21,11,14,'2019-02-28 21:11:12',0,0),(75,22,14,32,'2019-02-28 21:11:30',0,0),(76,22,3,3,'2019-02-28 21:11:46',0,1),(77,22,5,5,'2019-02-28 21:11:46',0,0),(78,22,5,4,'2019-02-28 21:11:46',0,0),(79,23,14,33,'2019-02-28 21:12:01',0,0),(80,23,3,3,'2019-02-28 21:12:14',0,1),(81,23,5,5,'2019-02-28 21:12:15',0,0),(82,23,5,4,'2019-02-28 21:12:15',0,0),(83,23,7,11,'2019-02-28 21:12:39',0,0),(84,23,11,13,'2019-02-28 21:12:47',0,0),(85,23,13,15,'2019-02-28 21:12:50',0,0),(86,24,14,34,'2019-02-28 21:13:06',0,0),(87,24,3,3,'2019-02-28 21:13:20',0,1),(88,24,5,5,'2019-02-28 21:13:20',0,0),(89,24,5,4,'2019-02-28 21:13:20',0,0),(90,25,14,35,'2019-02-28 21:13:36',0,0),(91,25,3,3,'2019-02-28 21:13:49',0,1),(92,25,5,6,'2019-02-28 21:13:49',0,0),(93,25,7,12,'2019-02-28 21:14:12',0,0),(94,11,3,3,'2020-01-31 15:29:59',1,0),(95,63,3,3,'2020-02-04 13:08:38',0,1),(96,63,5,5,'2020-02-04 13:08:38',0,0),(97,63,5,4,'2020-02-04 13:08:38',0,0);
/*!40000 ALTER TABLE `stage_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_page_settings`
--

DROP TABLE IF EXISTS `static_page_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_page_settings` (
  `static_page_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `static_page_settings_pkey` (`static_page_id`,`locale`,`setting_name`),
  KEY `static_page_settings_static_page_id` (`static_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_page_settings`
--

LOCK TABLES `static_page_settings` WRITE;
/*!40000 ALTER TABLE `static_page_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_page_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_pages`
--

DROP TABLE IF EXISTS `static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_pages` (
  `static_page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `context_id` bigint(20) NOT NULL,
  PRIMARY KEY (`static_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_pages`
--

LOCK TABLES `static_pages` WRITE;
/*!40000 ALTER TABLE `static_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_artwork_files`
--

DROP TABLE IF EXISTS `submission_artwork_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_artwork_files` (
  `file_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL,
  `caption` text,
  `credit` varchar(255) DEFAULT NULL,
  `copyright_owner` varchar(255) DEFAULT NULL,
  `copyright_owner_contact` text,
  `permission_terms` text,
  `permission_file_id` bigint(20) DEFAULT NULL,
  `chapter_id` bigint(20) DEFAULT NULL,
  `contact_author` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`file_id`,`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_artwork_files`
--

LOCK TABLES `submission_artwork_files` WRITE;
/*!40000 ALTER TABLE `submission_artwork_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_artwork_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_comments`
--

DROP TABLE IF EXISTS `submission_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_comments` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_type` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assoc_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  `comment_title` text,
  `comments` text,
  `date_posted` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `viewable` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `submission_comments_submission_id` (`submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_comments`
--

LOCK TABLES `submission_comments` WRITE;
/*!40000 ALTER TABLE `submission_comments` DISABLE KEYS */;
INSERT INTO `submission_comments` VALUES (1,1,4096,6,7,8,'','<p>Here are my review comments.</p>','2019-02-28 21:04:21',NULL,1),(2,1,4096,16,15,9,'','<p>Here are my review comments.</p>','2019-02-28 21:07:25',NULL,1),(3,1,4096,16,16,10,'','<p>Here are my review comments.</p>','2019-02-28 21:07:35',NULL,1),(4,1,4096,19,19,7,'','<p>Here are my review comments.</p>','2019-02-28 21:09:20',NULL,1),(5,1,4096,19,20,9,'','<p>Here are my review comments.</p>','2019-02-28 21:09:30',NULL,1),(6,1,4096,19,21,10,'','<p>Here are my review comments.</p>','2019-02-28 21:09:42',NULL,1);
/*!40000 ALTER TABLE `submission_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_file_settings`
--

DROP TABLE IF EXISTS `submission_file_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_file_settings` (
  `file_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `submission_file_settings_pkey` (`file_id`,`locale`,`setting_name`),
  KEY `submission_file_settings_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_file_settings`
--

LOCK TABLES `submission_file_settings` WRITE;
/*!40000 ALTER TABLE `submission_file_settings` DISABLE KEYS */;
INSERT INTO `submission_file_settings` VALUES (1,'en_US','name','The influence of lactation on the quantity and quality of cashmere production','string'),(2,'en_US','name','Article Text, theinfluenceoflactationonthequantityandqualityofcashmereproduction.pdf','string'),(3,'en_US','name','The Facets Of Job Satisfaction: A Nine-Nation Comparative Study Of Construct Equivalence','string'),(4,'en_US','name','Article Text, thefacetsofjobsatisfactionaninenationcomparativestudyofconstructequivalence.pdf','string'),(5,'en_US','name','Computer Skill Requirements for New and Existing Teachers: Implications for Policy and Practice','string'),(6,'en_US','name','Genetic transformation of forest trees','string'),(7,'en_US','name','Article Text, genetictransformationofforesttrees.pdf','string'),(8,'en_US','name','Investigating the Shared Background Required for Argument: A Critique of Fogelin\'s Thesis on Deep Disagreement','string'),(9,'en_US','name','Article Text, investigatingthesharedbackgroundrequiredforargumentacritiqueoffogelinsthesisondeepdisagreement.pdf','string'),(10,'en_US','name','Developing efficacy beliefs in the classroom','string'),(11,'en_US','name','Article Text, developingefficacybeliefsintheclassroom.pdf','string'),(12,'en_US','name','Traditions and Trends in the Study of the Commons','string'),(13,'en_US','name','Hansen & Pinto: Reason Reclaimed','string'),(14,'en_US','name','Article Text, hansenpintoreasonreclaimed.pdf','string'),(15,'en_US','name','Cyclomatic Complexity: theme and variations','string'),(16,'en_US','name','Cyclomatic Complexity: theme and variations','string'),(17,'en_US','name','A Review of Information Systems and Corporate Memory: design for staff turn-over','string'),(18,'en_US','name','A Review of Information Systems and Corporate Memory: design for staff turn-over','string'),(19,'en_US','name','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles','string'),(20,'en_US','name','Data Modelling and Conceptual Modelling: a comparative analysis of functionality and roles','string'),(21,'en_US','name','A Review of Object Oriented Database Concepts and their Implementation','string'),(22,'en_US','name','A Review of Object Oriented Database Concepts and their Implementation','string'),(23,'en_US','name','Cyberspace Versus Citizenship: IT and emerging non space communities','string'),(24,'en_US','name','Cyberspace Versus Citizenship: IT and emerging non space communities','string'),(25,'en_US','name','Whistleblowing: an ethical dilemma','string'),(26,'en_US','name','Whistleblowing: an ethical dilemma','string'),(27,'en_US','name','Signalling Theory Dividends: A Review Of The Literature And Empirical Evidence','string'),(28,'en_US','name','Article Text, signallingtheorydividendsareviewoftheliteratureandempiricalevidence.pdf','string'),(29,'en_US','name','PDF','string'),(30,'en_US','name','Condensing Water Availability Models to Focus on Specific Water Management Systems','string'),(31,'en_US','name','Article Text, condensingwateravailabilitymodelstofocusonspecificwatermanagementsystems.pdf','string'),(32,'en_US','name','Learning Sustainable Design through Service','string'),(33,'en_US','name','Sodium butyrate improves growth performance of weaned piglets during the first period after weaning','string'),(34,'en_US','name','Article Text, sodiumbutyrateimprovesgrowthperformanceofweanedpigletsduringthefirstperiodafterweaning.pdf','string'),(35,'en_US','name','Hydrologic Connectivity in the Edwards Aquifer between San Marcos Springs and Barton Springs during 2009 Drought Conditions','string'),(36,'en_US','name','Article Text, hydrologicconnectivityintheedwardsaquiferbetweensanmarcosspringsandbartonspringsduring2009droughtconditions.pdf','string'),(37,'en_US','name','Towards Designing an Intercultural Curriculum: A Case Study from the Atlantic Coast of Nicaragua','string'),(38,'en_US','name','Yam diseases and its management in Nigeria','string'),(39,'en_US','name','Article Text, yamdiseasesanditsmanagementinnigeria.pdf','string'),(40,'en_US','name','Influence of long-term nutrition with different dietary fats on fatty acid composition of heavy pigs backfat','string'),(41,'en_US','name','Antimicrobial, heavy metal resistance and plasmid profile of coliforms isolated from nosocomial infections in a hospital in Isfahan, Iran','string'),(42,'en_US','name','Article Text, antimicrobialheavymetalresistanceandplasmidprofileofcoliformsisolatedfromnosocomialinfectionsinahospitalinisfahaniran.pdf','string'),(43,'en_US','name','PDF','string'),(44,'en_US','name','Self-Organization in Multi-Level Institutions in Networked Environments','string'),(45,'en_US','name','Finocchiaro: Arguments About Arguments','string'),(46,'en_US','name','Article Text, finocchiaroargumentsaboutarguments.pdf','string'),(47,'en_US','name','admin, sword_upload.dat','string'),(48,'en_US','name','admin, sword_upload.dat','string'),(49,'en_US','name','admin, sword_upload.dat','string'),(50,'en_US','name','admin, sword_upload.dat','string'),(51,'en_US','name','admin, sword_upload.dat','string'),(52,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(53,'en_US','name','admin, sword_upload.dat','string'),(54,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(55,'en_US','name','admin, sword_upload.dat','string'),(56,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(57,'en_US','name','admin, sword_upload.dat','string'),(58,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(59,'en_US','name','admin, sword_upload.dat','string'),(60,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(61,'en_US','name','admin, sword_upload.dat','string'),(62,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(63,'en_US','name','admin, sword_upload.dat','string'),(64,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(65,'en_US','name','admin, sword_upload.dat','string'),(66,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(67,'en_US','name','admin, sword_upload.dat','string'),(70,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(71,'en_US','name','admin, sword_upload.dat','string'),(72,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(73,'en_US','name','admin, sword_upload.dat','string'),(74,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(75,'en_US','name','admin, sword_upload.dat','string'),(76,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(77,'en_US','name','admin, sword_upload.dat','string'),(78,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(79,'en_US','name','admin, sword_upload.dat','string'),(80,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(81,'en_US','name','admin, sword_upload.dat','string'),(82,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(83,'en_US','name','admin, sword_upload.dat','string'),(84,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(85,'en_US','name','admin, sword_upload.dat','string'),(86,'en_US','name','admin, cyclomaticcomplexitythemeandvariations.pdf','string'),(87,'en_US','name','admin, sword_upload.dat','string'),(88,'en_US','name','admin, sword_upload.dat','string');
/*!40000 ALTER TABLE `submission_file_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_files`
--

DROP TABLE IF EXISTS `submission_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `revision` bigint(20) NOT NULL,
  `source_file_id` bigint(20) DEFAULT NULL,
  `source_revision` bigint(20) DEFAULT NULL,
  `submission_id` bigint(20) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `genre_id` bigint(20) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `file_stage` bigint(20) NOT NULL,
  `direct_sales_price` varchar(255) DEFAULT NULL,
  `sales_type` varchar(255) DEFAULT NULL,
  `viewable` tinyint(4) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `uploader_user_id` bigint(20) DEFAULT NULL,
  `assoc_type` bigint(20) DEFAULT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`file_id`,`revision`),
  KEY `submission_files_submission_id` (`submission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_files`
--

LOCK TABLES `submission_files` WRITE;
/*!40000 ALTER TABLE `submission_files` DISABLE KEYS */;
INSERT INTO `submission_files` VALUES (1,1,NULL,NULL,1,'application/pdf',1,14572,'theinfluenceoflactationonthequantityandqualityofcashmereproduction.pdf',2,NULL,NULL,1,'2019-02-28 21:00:20','2019-02-28 21:00:20',17,NULL,NULL),(2,1,1,1,1,'application/pdf',1,14572,'theinfluenceoflactationonthequantityandqualityofcashmereproduction.pdf',4,NULL,NULL,1,'2019-02-28 21:00:20','2019-02-28 21:00:38',17,NULL,NULL),(3,1,NULL,NULL,2,'application/pdf',1,14572,'thefacetsofjobsatisfactionaninenationcomparativestudyofconstructequivalence.pdf',2,NULL,NULL,1,'2019-02-28 21:01:08','2019-02-28 21:01:08',18,NULL,NULL),(4,1,3,1,2,'application/pdf',1,14572,'thefacetsofjobsatisfactionaninenationcomparativestudyofconstructequivalence.pdf',4,NULL,NULL,1,'2019-02-28 21:01:08','2019-02-28 21:01:24',18,NULL,NULL),(5,1,NULL,NULL,3,'application/pdf',1,14572,'computerskillrequirementsfornewandexistingteachersimplicationsforpolicyandpractice.pdf',2,NULL,NULL,1,'2019-02-28 21:01:48','2019-02-28 21:01:48',19,NULL,NULL),(6,1,NULL,NULL,4,'application/pdf',1,14572,'genetictransformationofforesttrees.pdf',2,NULL,NULL,1,'2019-02-28 21:02:10','2019-02-28 21:02:10',20,NULL,NULL),(7,1,6,1,4,'application/pdf',1,14572,'genetictransformationofforesttrees.pdf',4,NULL,NULL,1,'2019-02-28 21:02:10','2019-02-28 21:02:27',20,NULL,NULL),(8,1,NULL,NULL,5,'application/pdf',1,14572,'investigatingthesharedbackgroundrequiredforargumentacritiqueoffogelinsthesisondeepdisagreement.pdf',2,NULL,NULL,1,'2019-02-28 21:03:00','2019-02-28 21:03:00',21,NULL,NULL),(9,1,8,1,5,'application/pdf',1,14572,'investigatingthesharedbackgroundrequiredforargumentacritiqueoffogelinsthesisondeepdisagreement.pdf',4,NULL,NULL,1,'2019-02-28 21:03:00','2019-02-28 21:03:16',21,NULL,NULL),(10,1,NULL,NULL,6,'application/pdf',1,14572,'developingefficacybeliefsintheclassroom.pdf',2,NULL,NULL,1,'2019-02-28 21:03:46','2019-02-28 21:03:46',22,NULL,NULL),(11,1,10,1,6,'application/pdf',1,14572,'developingefficacybeliefsintheclassroom.pdf',4,NULL,NULL,1,'2019-02-28 21:03:46','2019-02-28 21:04:03',22,NULL,NULL),(12,1,NULL,NULL,7,'application/pdf',1,14572,'traditionsandtrendsinthestudyofthecommons.pdf',2,NULL,NULL,1,'2019-02-28 21:04:32','2019-02-28 21:04:32',23,NULL,NULL),(13,1,NULL,NULL,8,'application/pdf',1,14572,'hansenpintoreasonreclaimed.pdf',2,NULL,NULL,1,'2019-02-28 21:04:58','2019-02-28 21:04:58',24,NULL,NULL),(14,1,13,1,8,'application/pdf',1,14572,'hansenpintoreasonreclaimed.pdf',4,NULL,NULL,1,'2019-02-28 21:04:58','2019-02-28 21:05:14',24,NULL,NULL),(15,1,NULL,NULL,9,'application/pdf',1,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,NULL,NULL),(16,1,NULL,NULL,9,'application/pdf',1,14572,'cyclomaticcomplexitythemeandvariations.pdf',10,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,521,1),(17,1,NULL,NULL,10,'application/pdf',1,14572,'areviewofinformationsystemsandcorporatememorydesignforstaffturnover.pdf',2,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,NULL,NULL),(18,1,NULL,NULL,10,'application/pdf',1,14572,'areviewofinformationsystemsandcorporatememorydesignforstaffturnover.pdf',10,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,521,2),(19,1,NULL,NULL,11,'application/pdf',1,14572,'datamodellingandconceptualmodellingacomparativeanalysisoffunctionalityandroles.pdf',2,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,NULL,NULL),(20,1,NULL,NULL,11,'application/pdf',1,14572,'datamodellingandconceptualmodellingacomparativeanalysisoffunctionalityandroles.pdf',10,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,521,3),(21,1,NULL,NULL,12,'application/pdf',1,14572,'areviewofobjectorienteddatabaseconceptsandtheirimplementation.pdf',2,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,NULL,NULL),(22,1,NULL,NULL,12,'application/pdf',1,14572,'areviewofobjectorienteddatabaseconceptsandtheirimplementation.pdf',10,NULL,NULL,0,'2019-02-28 21:05:43','2019-02-28 21:05:43',3,521,4),(23,1,NULL,NULL,13,'application/pdf',1,14572,'cyberspaceversuscitizenshipitandemergingnonspacecommunities.pdf',2,NULL,NULL,0,'2019-02-28 21:05:44','2019-02-28 21:05:44',3,NULL,NULL),(24,1,NULL,NULL,13,'application/pdf',1,14572,'cyberspaceversuscitizenshipitandemergingnonspacecommunities.pdf',10,NULL,NULL,0,'2019-02-28 21:05:44','2019-02-28 21:05:44',3,521,5),(25,1,NULL,NULL,14,'application/pdf',1,14572,'whistleblowinganethicaldilemma.pdf',2,NULL,NULL,0,'2019-02-28 21:05:44','2019-02-28 21:05:44',3,NULL,NULL),(26,1,NULL,NULL,14,'application/pdf',1,14572,'whistleblowinganethicaldilemma.pdf',10,NULL,NULL,0,'2019-02-28 21:05:44','2019-02-28 21:05:44',3,521,6),(27,1,NULL,NULL,15,'application/pdf',1,14572,'signallingtheorydividendsareviewoftheliteratureandempiricalevidence.pdf',2,NULL,NULL,1,'2019-02-28 21:05:54','2019-02-28 21:05:54',25,NULL,NULL),(28,1,27,1,15,'application/pdf',1,14572,'signallingtheorydividendsareviewoftheliteratureandempiricalevidence.pdf',4,NULL,NULL,1,'2019-02-28 21:05:54','2019-02-28 21:06:11',25,NULL,NULL),(29,1,NULL,NULL,15,'application/pdf',1,14572,'pdf.pdf',10,NULL,NULL,0,'2019-02-28 21:06:38','2019-02-28 21:06:38',3,521,7),(30,1,NULL,NULL,16,'application/pdf',1,14572,'condensingwateravailabilitymodelstofocusonspecificwatermanagementsystems.pdf',2,NULL,NULL,1,'2019-02-28 21:06:52','2019-02-28 21:06:52',26,NULL,NULL),(31,1,30,1,16,'application/pdf',1,14572,'condensingwateravailabilitymodelstofocusonspecificwatermanagementsystems.pdf',4,NULL,NULL,1,'2019-02-28 21:06:52','2019-02-28 21:07:09',26,NULL,NULL),(32,1,NULL,NULL,17,'application/pdf',1,14572,'learningsustainabledesignthroughservice.pdf',2,NULL,NULL,1,'2019-02-28 21:07:46','2019-02-28 21:07:46',27,NULL,NULL),(33,1,NULL,NULL,18,'application/pdf',1,14572,'sodiumbutyrateimprovesgrowthperformanceofweanedpigletsduringthefirstperiodafterweaning.pdf',2,NULL,NULL,1,'2019-02-28 21:08:10','2019-02-28 21:08:10',28,NULL,NULL),(34,1,33,1,18,'application/pdf',1,14572,'sodiumbutyrateimprovesgrowthperformanceofweanedpigletsduringthefirstperiodafterweaning.pdf',4,NULL,NULL,1,'2019-02-28 21:08:10','2019-02-28 21:08:27',28,NULL,NULL),(35,1,NULL,NULL,19,'application/pdf',1,14572,'hydrologicconnectivityintheedwardsaquiferbetweensanmarcosspringsandbartonspringsduring2009droughtconditions.pdf',2,NULL,NULL,1,'2019-02-28 21:08:45','2019-02-28 21:08:45',29,NULL,NULL),(36,1,35,1,19,'application/pdf',1,14572,'hydrologicconnectivityintheedwardsaquiferbetweensanmarcosspringsandbartonspringsduring2009droughtconditions.pdf',4,NULL,NULL,1,'2019-02-28 21:08:45','2019-02-28 21:09:01',29,NULL,NULL),(37,1,NULL,NULL,20,'application/pdf',1,14572,'towardsdesigninganinterculturalcurriculumacasestudyfromtheatlanticcoastofnicaragua.pdf',2,NULL,NULL,1,'2019-02-28 21:10:01','2019-02-28 21:10:01',30,NULL,NULL),(38,1,NULL,NULL,21,'application/pdf',1,14572,'yamdiseasesanditsmanagementinnigeria.pdf',2,NULL,NULL,1,'2019-02-28 21:10:21','2019-02-28 21:10:21',31,NULL,NULL),(39,1,38,1,21,'application/pdf',1,14572,'yamdiseasesanditsmanagementinnigeria.pdf',4,NULL,NULL,1,'2019-02-28 21:10:21','2019-02-28 21:10:42',31,NULL,NULL),(40,1,NULL,NULL,22,'application/pdf',1,14572,'influenceoflongtermnutritionwithdifferentdietaryfatsonfattyacidcompositionofheavypigsbackfat.pdf',2,NULL,NULL,1,'2019-02-28 21:11:36','2019-02-28 21:11:36',32,NULL,NULL),(41,1,NULL,NULL,23,'application/pdf',1,14572,'antimicrobialheavymetalresistanceandplasmidprofileofcoliformsisolatedfromnosocomialinfectionsinahospitalinisfahaniran.pdf',2,NULL,NULL,1,'2019-02-28 21:12:06','2019-02-28 21:12:06',33,NULL,NULL),(42,1,41,1,23,'application/pdf',1,14572,'antimicrobialheavymetalresistanceandplasmidprofileofcoliformsisolatedfromnosocomialinfectionsinahospitalinisfahaniran.pdf',4,NULL,NULL,1,'2019-02-28 21:12:06','2019-02-28 21:12:24',33,NULL,NULL),(43,1,NULL,NULL,23,'application/pdf',1,14572,'pdf.pdf',10,NULL,NULL,0,'2019-02-28 21:12:56','2019-02-28 21:12:56',3,521,8),(44,1,NULL,NULL,24,'application/pdf',1,14572,'selforganizationinmultilevelinstitutionsinnetworkedenvironments.pdf',2,NULL,NULL,1,'2019-02-28 21:13:11','2019-02-28 21:13:11',34,NULL,NULL),(45,1,NULL,NULL,25,'application/pdf',1,14572,'finocchiaroargumentsaboutarguments.pdf',2,NULL,NULL,1,'2019-02-28 21:13:40','2019-02-28 21:13:40',35,NULL,NULL),(46,1,45,1,25,'application/pdf',1,14572,'finocchiaroargumentsaboutarguments.pdf',4,NULL,NULL,1,'2019-02-28 21:13:40','2019-02-28 21:13:58',35,NULL,NULL),(47,1,NULL,NULL,26,'application/zip',3,15311,'sword_upload.dat',0,NULL,NULL,0,'2020-01-03 14:46:38','2020-01-03 14:46:38',1,NULL,NULL),(48,1,NULL,NULL,27,'application/zip',3,15311,'sword_upload.dat',0,NULL,NULL,0,'2020-01-04 22:07:56','2020-01-04 22:07:56',1,NULL,NULL),(49,1,NULL,NULL,28,'application/zip',3,15311,'sword_upload.dat',0,NULL,NULL,0,'2020-01-05 03:43:10','2020-01-05 03:43:10',1,NULL,NULL),(50,1,NULL,NULL,29,'application/zip',3,15311,'sword_upload.dat',0,NULL,NULL,0,'2020-01-05 03:53:12','2020-01-05 03:53:12',1,NULL,NULL),(51,1,NULL,NULL,30,'application/zip',3,15311,'sword_upload.dat',0,NULL,NULL,0,'2020-01-05 03:54:19','2020-01-05 03:54:19',1,NULL,NULL),(52,1,NULL,NULL,31,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-30 22:02:16','2020-01-30 22:02:16',1,NULL,NULL),(53,1,NULL,NULL,31,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-30 22:02:16','2020-01-30 22:02:16',1,NULL,NULL),(54,1,NULL,NULL,32,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-31 18:45:40','2020-01-31 18:45:40',1,NULL,NULL),(55,1,NULL,NULL,32,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-31 18:45:40','2020-01-31 18:45:40',1,NULL,NULL),(56,1,NULL,NULL,37,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-31 22:20:02','2020-01-31 22:20:02',1,NULL,NULL),(57,1,NULL,NULL,37,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-31 22:20:03','2020-01-31 22:20:03',1,NULL,NULL),(58,1,NULL,NULL,38,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-31 22:20:34','2020-01-31 22:20:34',1,NULL,NULL),(59,1,NULL,NULL,38,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-31 22:20:34','2020-01-31 22:20:34',1,NULL,NULL),(60,1,NULL,NULL,39,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-31 22:27:05','2020-01-31 22:27:05',1,NULL,NULL),(61,1,NULL,NULL,39,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-31 22:27:05','2020-01-31 22:27:05',1,NULL,NULL),(62,1,NULL,NULL,40,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-31 22:28:08','2020-01-31 22:28:08',1,NULL,NULL),(63,1,NULL,NULL,40,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-31 22:28:08','2020-01-31 22:28:08',1,NULL,NULL),(64,1,NULL,NULL,41,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-31 22:30:06','2020-01-31 22:30:06',1,NULL,NULL),(65,1,NULL,NULL,41,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-31 22:30:06','2020-01-31 22:30:06',1,NULL,NULL),(66,1,NULL,NULL,42,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',0,NULL,NULL,0,'2020-01-31 22:31:54','2020-01-31 22:31:54',1,NULL,NULL),(67,1,NULL,NULL,42,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-01-31 22:31:54','2020-01-31 22:31:54',1,NULL,NULL),(68,1,NULL,NULL,54,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-03 17:11:12','2020-02-03 17:11:12',1,NULL,NULL),(69,1,NULL,NULL,55,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-03 17:31:20','2020-02-03 17:31:20',1,NULL,NULL),(70,1,NULL,NULL,56,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-03 17:56:55','2020-02-03 17:56:55',1,NULL,NULL),(71,1,NULL,NULL,56,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-03 17:57:05','2020-02-03 17:57:05',1,NULL,NULL),(72,1,NULL,NULL,57,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-03 17:58:20','2020-02-03 17:58:20',1,NULL,NULL),(73,1,NULL,NULL,57,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-03 17:58:20','2020-02-03 17:58:20',1,NULL,NULL),(74,1,NULL,NULL,58,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-03 17:58:34','2020-02-03 17:58:34',1,NULL,NULL),(75,1,NULL,NULL,58,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-03 17:58:34','2020-02-03 17:58:34',1,NULL,NULL),(76,1,NULL,NULL,59,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-03 17:59:03','2020-02-03 17:59:03',1,NULL,NULL),(77,1,NULL,NULL,59,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-03 17:59:03','2020-02-03 17:59:03',1,NULL,NULL),(78,1,NULL,NULL,60,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-03 18:01:43','2020-02-03 18:01:43',1,NULL,NULL),(79,1,NULL,NULL,60,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-03 18:01:43','2020-02-03 18:01:43',1,NULL,NULL),(80,1,NULL,NULL,61,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-04 12:33:44','2020-02-04 12:33:44',1,NULL,NULL),(81,1,NULL,NULL,61,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-04 12:33:44','2020-02-04 12:33:44',1,NULL,NULL),(82,1,NULL,NULL,62,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-04 13:04:03','2020-02-04 13:04:03',1,NULL,NULL),(83,1,NULL,NULL,62,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-04 13:04:03','2020-02-04 13:04:03',1,NULL,NULL),(84,1,NULL,NULL,63,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-04 13:04:13','2020-02-04 13:04:13',1,NULL,NULL),(85,1,NULL,NULL,63,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-04 13:04:13','2020-02-04 13:04:13',1,NULL,NULL),(86,1,NULL,NULL,64,'application/pdf',3,14572,'cyclomaticcomplexitythemeandvariations.pdf',2,NULL,NULL,1,'2020-02-04 22:30:32','2020-02-04 22:30:32',1,NULL,NULL),(87,1,NULL,NULL,64,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-04 22:30:32','2020-02-04 22:30:32',1,NULL,NULL),(88,1,NULL,NULL,65,'application/zip',3,15311,'sword_upload.dat',2,NULL,NULL,1,'2020-02-05 22:37:00','2020-02-05 22:37:00',1,NULL,NULL);
/*!40000 ALTER TABLE `submission_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_keyword_list`
--

DROP TABLE IF EXISTS `submission_search_keyword_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_search_keyword_list` (
  `keyword_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keyword_text` varchar(60) NOT NULL,
  PRIMARY KEY (`keyword_id`),
  UNIQUE KEY `submission_search_keyword_text` (`keyword_text`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_keyword_list`
--

LOCK TABLES `submission_search_keyword_list` WRITE;
/*!40000 ALTER TABLE `submission_search_keyword_list` DISABLE KEYS */;
INSERT INTO `submission_search_keyword_list` VALUES (115,'aberta'),(42,'abstraction'),(234,'access'),(76,'account'),(189,'acknowledges'),(254,'activities'),(292,'added'),(135,'alia'),(77,'alternative'),(146,'analysed'),(66,'analysis'),(92,'analytic'),(149,'applications'),(45,'applied'),(208,'approach'),(87,'area'),(177,'argued'),(129,'article'),(206,'aspects'),(150,'assessed'),(103,'assimilatable'),(126,'attention'),(123,'attracted'),(261,'awareness'),(266,'bangalore'),(106,'based'),(84,'basis'),(60,'bauman'),(49,'brian'),(277,'business'),(170,'centrality'),(249,'centre'),(230,'century'),(113,'cerpa'),(246,'challenge'),(167,'challenged'),(194,'change'),(61,'chapman'),(161,'citizenship'),(89,'clear'),(307,'codes'),(3,'colorado'),(228,'commonplace'),(164,'communities'),(169,'community'),(282,'company'),(65,'comparative'),(26,'comparison'),(30,'complexities'),(7,'complexity'),(272,'computer'),(120,'concepts'),(64,'conceptual'),(152,'conclusions'),(308,'conduct'),(223,'consequent'),(44,'considered'),(235,'control'),(54,'corporate'),(236,'crucial'),(258,'culture'),(192,'cultures'),(74,'current'),(257,'cyberpunk'),(159,'cyberspace'),(111,'cycle'),(6,'cyclomatic'),(62,'data'),(119,'database'),(122,'databases'),(125,'deal'),(14,'decision'),(188,'definition'),(248,'definitions'),(259,'demonstrate'),(173,'demonstrating'),(271,'depend'),(56,'design'),(47,'development'),(83,'diagrams'),(85,'dialogue'),(190,'differentiated'),(293,'difficulties'),(269,'dilemma'),(154,'directions'),(131,'discusses'),(140,'discussion'),(232,'disempower'),(90,'distinction'),(107,'distinctions'),(102,'easily'),(283,'easy'),(222,'economy'),(273,'electronically'),(209,'emerged'),(203,'emergence'),(162,'emerging'),(99,'emphasized'),(297,'employees'),(231,'empower'),(229,'end'),(179,'enmeshed'),(48,'environment'),(29,'essential'),(268,'ethical'),(19,'evaluation'),(247,'existing'),(88,'expert'),(296,'explores'),(298,'exposing'),(20,'extensions'),(98,'facilities'),(96,'facility'),(104,'familiar'),(12,'family'),(41,'finally'),(10,'focussing'),(2,'forcht'),(101,'form'),(79,'forms'),(309,'formulated'),(306,'found'),(67,'functionality'),(278,'functions'),(200,'general'),(186,'geographical'),(220,'globalisation'),(124,'great'),(182,'groups'),(260,'growing'),(255,'hacking'),(71,'history'),(299,'illegal'),(137,'illustrate'),(224,'impacts'),(121,'implementation'),(143,'implementations'),(262,'importance'),(275,'important'),(288,'increased'),(183,'increasingly'),(178,'individuals'),(34,'inessential'),(199,'influence'),(202,'influenced'),(53,'information'),(218,'insight'),(279,'integrity'),(134,'inter'),(75,'interpretation'),(1,'june'),(59,'karen'),(158,'keele'),(290,'knowledge'),(291,'lead'),(18,'leads'),(138,'lend'),(242,'level'),(43,'levels'),(110,'life'),(215,'light'),(184,'limited'),(116,'lisboa'),(141,'list'),(245,'local'),(187,'location'),(15,'logic'),(108,'made'),(294,'maintaining'),(240,'marginalised'),(11,'mccabe'),(35,'measure'),(13,'measures'),(165,'melvin'),(55,'memory'),(82,'merit'),(305,'method'),(33,'metrics'),(63,'modelling'),(21,'modularization'),(251,'moral'),(156,'narciso'),(243,'nation'),(225,'nationality'),(219,'nature'),(91,'needed'),(22,'nesting'),(176,'networks'),(205,'non-physical'),(191,'non-place'),(263,'non-space'),(168,'notions'),(117,'object'),(24,'object-oriented'),(39,'objective'),(151,'offer'),(239,'offered'),(217,'offers'),(142,'oodbms'),(28,'operating'),(238,'opportunities'),(304,'organization'),(270,'organizations'),(204,'orientation'),(118,'oriented'),(72,'origins'),(51,'oslo'),(130,'outlines'),(180,'overlapping'),(252,'panics'),(69,'paper'),(280,'paramount'),(198,'part'),(207,'participatory'),(276,'perform'),(241,'peripheral'),(250,'periphery'),(185,'physical'),(157,'pierson'),(303,'place'),(109,'positioned'),(38,'potential'),(23,'potentially'),(301,'practices'),(93,'prescriptive'),(80,'presented'),(133,'principles'),(155,'proceed'),(195,'process'),(37,'product'),(310,'professional'),(17,'program'),(31,'programs'),(174,'propinquity'),(286,'provide'),(97,'provided'),(264,'raj'),(181,'range'),(27,'rated'),(127,'recent'),(233,'reconsider'),(212,'reexamination'),(193,'reflects'),(244,'region'),(78,'representation'),(94,'requirements'),(153,'research'),(237,'resources'),(52,'review'),(81,'reviewed'),(70,'reviews'),(68,'roles'),(112,'roy'),(95,'schema'),(281,'securing'),(295,'security'),(132,'semantic'),(211,'seventies'),(175,'social'),(311,'societies'),(285,'sophisticated'),(226,'sovereignty'),(163,'space'),(148,'specific'),(57,'staff'),(4,'state'),(274,'store'),(145,'strengths'),(210,'strongly'),(40,'structural'),(16,'structure'),(25,'structures'),(172,'studies'),(86,'subject'),(139,'substance'),(32,'suggests'),(147,'suitability'),(100,'support'),(256,'supporting'),(253,'surrounding'),(105,'system'),(46,'systems'),(302,'taking'),(284,'task'),(227,'technologies'),(216,'technology'),(73,'term'),(8,'theme'),(201,'theory'),(197,'triggered'),(58,'turn-over'),(136,'understanding'),(300,'unethical'),(114,'universidade'),(5,'university'),(36,'unstructuredness'),(171,'urban'),(289,'user'),(9,'variations'),(50,'vemer'),(160,'versus'),(196,'view'),(144,'weaknesses'),(166,'webber'),(213,'webbers'),(267,'whistleblowing'),(287,'widespread'),(214,'work'),(221,'world'),(265,'yagna'),(128,'years');
/*!40000 ALTER TABLE `submission_search_keyword_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_object_keywords`
--

DROP TABLE IF EXISTS `submission_search_object_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_search_object_keywords` (
  `object_id` bigint(20) NOT NULL,
  `keyword_id` bigint(20) NOT NULL,
  `pos` int(11) NOT NULL,
  UNIQUE KEY `submission_search_object_keywords_pkey` (`object_id`,`pos`),
  KEY `submission_search_object_keywords_keyword_id` (`keyword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_object_keywords`
--

LOCK TABLES `submission_search_object_keywords` WRITE;
/*!40000 ALTER TABLE `submission_search_object_keywords` DISABLE KEYS */;
INSERT INTO `submission_search_object_keywords` VALUES (1,1,0),(1,2,1),(1,3,2),(1,4,3),(1,5,4),(8,5,2),(15,5,3),(29,5,3),(36,5,3),(2,6,0),(2,7,1),(3,7,26),(3,7,30),(3,7,35),(2,8,2),(2,9,3),(3,10,0),(3,11,1),(3,11,42),(3,12,2),(3,12,43),(3,13,3),(3,14,4),(3,15,5),(3,16,6),(3,17,7),(3,17,15),(3,18,8),(3,19,9),(3,20,10),(3,21,11),(3,22,12),(3,22,37),(3,23,13),(3,24,14),(3,24,45),(3,25,16),(3,26,17),(3,27,18),(3,28,19),(3,29,20),(3,30,21),(3,31,22),(3,32,23),(17,32,31),(17,32,75),(3,33,24),(3,33,41),(3,34,25),(3,35,27),(3,35,33),(3,36,28),(3,37,29),(31,37,37),(3,38,31),(3,39,32),(3,40,34),(3,41,36),(24,41,37),(3,42,38),(3,43,39),(3,44,40),(17,44,10),(3,45,44),(3,46,46),(9,46,2),(17,46,85),(31,46,46),(38,46,3),(38,46,14),(38,46,18),(38,46,22),(3,47,47),(24,47,43),(3,48,48),(8,49,0),(8,50,1),(8,51,3),(9,52,0),(23,52,0),(9,53,1),(17,53,15),(17,53,69),(17,53,84),(31,53,67),(38,53,13),(9,54,3),(9,55,4),(9,56,5),(24,56,2),(31,56,58),(9,57,6),(9,58,7),(15,59,0),(15,60,1),(15,61,2),(16,62,0),(17,62,3),(17,62,35),(17,62,51),(17,62,76),(24,62,14),(38,62,7),(16,63,1),(16,63,3),(17,63,4),(17,63,6),(17,63,16),(17,63,36),(17,63,38),(17,63,40),(17,63,42),(17,63,47),(17,63,52),(17,63,58),(17,63,77),(17,63,81),(16,64,2),(17,64,5),(17,64,37),(17,64,45),(17,64,56),(17,64,79),(16,65,4),(16,66,5),(16,67,6),(17,67,2),(17,67,49),(16,68,7),(17,69,0),(17,69,30),(17,69,74),(38,69,36),(17,70,1),(17,71,7),(17,72,8),(17,73,9),(17,73,13),(17,73,14),(17,74,11),(31,74,66),(31,74,86),(17,75,12),(17,76,17),(17,77,18),(17,78,19),(17,78,61),(17,79,20),(17,80,21),(17,80,54),(24,80,27),(17,81,22),(17,81,43),(17,82,23),(17,83,24),(17,84,25),(17,85,26),(17,86,27),(17,86,65),(17,87,28),(17,87,66),(24,87,41),(17,88,29),(17,88,67),(17,89,32),(17,90,33),(17,91,34),(17,92,39),(17,93,41),(17,94,44),(17,95,46),(17,95,57),(17,95,80),(17,96,48),(17,96,59),(17,96,78),(17,96,82),(17,97,50),(17,98,53),(17,99,55),(17,100,60),(38,100,51),(17,101,62),(31,101,41),(17,102,63),(17,103,64),(17,104,68),(17,105,70),(17,106,71),(17,107,72),(17,108,73),(17,109,83),(17,110,86),(17,111,87),(22,112,0),(22,113,1),(22,114,2),(22,115,3),(22,116,4),(23,117,1),(24,117,0),(24,117,19),(23,118,2),(24,118,1),(24,118,20),(31,118,38),(23,119,3),(23,120,4),(24,120,21),(23,121,5),(24,122,3),(24,123,4),(24,124,5),(24,125,6),(24,126,7),(24,127,8),(24,128,9),(24,129,10),(24,130,11),(24,131,12),(24,132,13),(24,133,15),(24,134,16),(24,135,17),(24,136,18),(24,137,22),(24,138,23),(24,139,24),(24,140,25),(24,141,26),(24,142,28),(24,143,29),(24,144,30),(24,145,31),(24,146,32),(24,147,33),(24,148,34),(24,149,35),(24,150,36),(24,151,38),(24,152,39),(24,153,40),(24,154,42),(24,155,44),(29,156,0),(29,157,1),(29,158,2),(30,159,0),(30,160,1),(30,161,2),(31,161,88),(30,162,3),(31,162,11),(31,162,120),(30,163,4),(30,164,5),(31,164,122),(31,165,0),(31,166,1),(31,166,48),(31,167,2),(31,168,3),(31,168,87),(31,169,4),(31,169,9),(31,169,28),(31,169,55),(31,169,102),(31,170,5),(31,171,6),(31,171,40),(31,172,7),(31,173,8),(31,174,10),(31,175,12),(31,175,21),(31,176,13),(31,176,22),(31,177,14),(31,178,15),(31,179,16),(31,180,17),(31,181,18),(31,181,31),(31,182,19),(31,182,97),(31,183,20),(31,184,23),(31,185,24),(31,186,25),(31,187,26),(31,188,27),(31,189,29),(31,190,30),(31,191,32),(31,192,33),(31,193,34),(31,194,35),(31,195,36),(31,196,39),(31,197,42),(31,198,43),(31,199,44),(31,200,45),(31,201,47),(31,202,49),(31,202,50),(31,203,51),(31,204,52),(31,205,53),(31,206,54),(31,207,56),(31,208,57),(31,209,59),(31,210,60),(31,211,61),(31,212,62),(31,213,63),(31,214,64),(31,215,65),(31,216,68),(31,217,69),(31,218,70),(31,219,71),(31,220,72),(31,221,73),(31,222,74),(31,223,75),(31,224,76),(31,225,77),(31,226,78),(31,227,79),(31,228,80),(31,229,81),(31,230,82),(31,231,83),(31,232,84),(31,233,85),(31,234,89),(38,234,25),(31,235,90),(31,236,91),(38,236,9),(31,237,92),(38,237,27),(31,238,93),(31,239,94),(31,240,95),(31,241,96),(31,242,98),(31,243,99),(31,244,100),(31,245,101),(31,246,103),(31,247,104),(31,248,105),(31,249,106),(31,250,107),(31,251,108),(31,252,109),(31,253,110),(31,254,111),(31,255,112),(31,256,113),(31,257,114),(31,258,115),(31,259,116),(31,260,117),(31,261,118),(31,262,119),(31,263,121),(36,264,0),(36,265,1),(36,266,2),(37,267,0),(38,267,38),(38,267,52),(37,268,1),(38,268,55),(37,269,2),(38,270,0),(38,271,1),(38,272,2),(38,272,26),(38,272,43),(38,272,49),(38,273,4),(38,274,5),(38,275,6),(38,276,8),(38,277,10),(38,278,11),(38,279,12),(38,280,15),(38,281,16),(38,282,17),(38,283,19),(38,284,20),(38,285,21),(38,286,23),(38,287,24),(38,288,28),(38,289,29),(38,290,30),(38,291,31),(38,292,32),(38,293,33),(38,294,34),(38,295,35),(38,295,50),(38,296,37),(38,297,39),(38,298,40),(38,299,41),(38,300,42),(38,301,44),(38,302,45),(38,303,46),(38,304,47),(38,305,48),(38,306,53),(38,307,54),(38,308,56),(38,309,57),(38,310,58),(38,311,59);
/*!40000 ALTER TABLE `submission_search_object_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_search_objects`
--

DROP TABLE IF EXISTS `submission_search_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_search_objects` (
  `object_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  `assoc_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_search_objects`
--

LOCK TABLES `submission_search_objects` WRITE;
/*!40000 ALTER TABLE `submission_search_objects` DISABLE KEYS */;
INSERT INTO `submission_search_objects` VALUES (1,9,1,0),(2,9,2,0),(3,9,4,0),(4,9,8,0),(5,9,16,0),(6,9,32,0),(7,9,64,0),(8,10,1,0),(9,10,2,0),(10,10,4,0),(11,10,8,0),(12,10,16,0),(13,10,32,0),(14,10,64,0),(15,11,1,0),(16,11,2,0),(17,11,4,0),(18,11,8,0),(19,11,16,0),(20,11,32,0),(21,11,64,0),(22,12,1,0),(23,12,2,0),(24,12,4,0),(25,12,8,0),(26,12,16,0),(27,12,32,0),(28,12,64,0),(29,13,1,0),(30,13,2,0),(31,13,4,0),(32,13,8,0),(33,13,16,0),(34,13,32,0),(35,13,64,0),(36,14,1,0),(37,14,2,0),(38,14,4,0),(39,14,8,0),(40,14,16,0),(41,14,32,0),(42,14,64,0);
/*!40000 ALTER TABLE `submission_search_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_settings`
--

DROP TABLE IF EXISTS `submission_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_settings` (
  `submission_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  UNIQUE KEY `submission_settings_pkey` (`submission_id`,`locale`,`setting_name`),
  KEY `submission_settings_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_settings`
--

LOCK TABLES `submission_settings` WRITE;
/*!40000 ALTER TABLE `submission_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_supplementary_files`
--

DROP TABLE IF EXISTS `submission_supplementary_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_supplementary_files` (
  `file_id` bigint(20) NOT NULL,
  `revision` bigint(20) NOT NULL,
  PRIMARY KEY (`file_id`,`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_supplementary_files`
--

LOCK TABLES `submission_supplementary_files` WRITE;
/*!40000 ALTER TABLE `submission_supplementary_files` DISABLE KEYS */;
INSERT INTO `submission_supplementary_files` VALUES (47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1);
/*!40000 ALTER TABLE `submission_supplementary_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_tombstones`
--

DROP TABLE IF EXISTS `submission_tombstones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission_tombstones` (
  `tombstone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `submission_id` bigint(20) NOT NULL,
  `date_deleted` datetime NOT NULL,
  `journal_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `set_spec` varchar(255) NOT NULL,
  `set_name` varchar(255) NOT NULL,
  `oai_identifier` varchar(255) NOT NULL,
  PRIMARY KEY (`tombstone_id`),
  KEY `submission_tombstones_journal_id` (`journal_id`),
  KEY `submission_tombstones_submission_id` (`submission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_tombstones`
--

LOCK TABLES `submission_tombstones` WRITE;
/*!40000 ALTER TABLE `submission_tombstones` DISABLE KEYS */;
/*!40000 ALTER TABLE `submission_tombstones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submissions` (
  `submission_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `date_submitted` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `submission_progress` tinyint(4) NOT NULL DEFAULT '1',
  `stage_id` bigint(20) NOT NULL DEFAULT '1',
  `current_publication_id` bigint(20) DEFAULT NULL,
  `date_last_activity` datetime DEFAULT NULL,
  PRIMARY KEY (`submission_id`),
  KEY `submissions_context_id` (`context_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (1,1,'2019-02-28 21:00:29','2019-02-28 21:00:50',1,0,3,1,'2019-02-28 21:00:50'),(2,1,'2019-02-28 21:01:16','2019-02-28 21:01:36',1,0,4,2,'2019-02-28 21:01:36'),(3,1,'2019-02-28 21:01:59','2019-02-28 21:01:59',1,0,1,3,'2019-02-28 21:01:59'),(4,1,'2019-02-28 21:02:19','2019-02-28 21:02:48',1,0,5,4,'2019-02-28 21:02:48'),(5,1,'2019-02-28 21:03:08','2019-02-28 21:03:34',1,0,5,5,'2019-02-28 21:03:34'),(6,1,'2019-02-28 21:03:54','2019-02-28 21:04:16',1,0,3,6,'2019-02-28 21:04:16'),(7,1,'2019-02-28 21:04:43','2019-02-28 21:04:43',1,0,1,7,'2019-02-28 21:04:43'),(8,1,'2019-02-28 21:05:06','2019-02-28 21:05:35',1,0,5,8,'2019-02-28 21:05:35'),(9,1,'2016-02-11 00:00:00','2019-02-28 21:05:43',3,0,1,9,'2019-02-28 21:05:43'),(10,1,'2016-02-11 00:00:00','2019-02-28 21:05:43',3,0,1,10,'2019-02-28 21:05:43'),(11,1,'2016-02-11 00:00:00','2019-02-28 21:05:43',3,0,3,35,'2020-01-31 15:29:59'),(12,1,'2016-02-11 00:00:00','2019-02-28 21:05:43',3,0,1,12,'2019-02-28 21:05:43'),(13,1,'2016-02-11 00:00:00','2019-02-28 21:05:44',3,0,1,13,'2020-01-31 14:58:43'),(14,1,'2016-02-11 00:00:00','2019-02-28 21:05:44',3,0,1,14,'2019-02-28 21:05:44'),(15,1,'2019-02-28 21:06:03','2019-02-28 21:06:40',1,0,5,15,'2019-02-28 21:06:40'),(16,1,'2019-02-28 21:07:01','2019-02-28 21:07:31',1,0,3,16,'2019-02-28 21:07:31'),(17,1,'2019-02-28 21:07:58','2019-02-28 21:07:58',1,0,1,17,'2019-02-28 21:07:58'),(18,1,'2019-02-28 21:08:19','2019-02-28 21:08:33',1,0,3,18,'2019-02-28 21:08:33'),(19,1,'2019-02-28 21:08:53','2019-02-28 21:09:51',1,0,3,19,'2019-02-28 21:09:51'),(20,1,'2019-02-28 21:10:10','2019-02-28 21:10:10',1,0,1,20,'2019-02-28 21:10:10'),(21,1,'2019-02-28 21:10:29','2019-02-28 21:11:12',1,0,5,21,'2020-01-30 22:09:14'),(22,1,'2019-02-28 21:11:46','2019-02-28 21:11:46',1,0,1,22,'2019-02-28 21:11:46'),(23,1,'2019-02-28 21:12:14','2019-02-28 21:12:58',1,0,5,23,'2019-02-28 21:12:58'),(24,1,'2019-02-28 21:13:20','2019-02-28 21:13:29',4,0,1,24,'2019-02-28 21:13:29'),(25,1,'2019-02-28 21:13:49','2019-02-28 21:14:12',1,0,4,25,'2019-02-28 21:14:12'),(65,1,'2020-02-05 22:36:59','2020-02-05 22:36:59',1,1,1,81,'2020-02-05 22:37:00');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_type_settings`
--

DROP TABLE IF EXISTS `subscription_type_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_type_settings` (
  `type_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `subscription_type_settings_pkey` (`type_id`,`locale`,`setting_name`),
  KEY `subscription_type_settings_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_type_settings`
--

LOCK TABLES `subscription_type_settings` WRITE;
/*!40000 ALTER TABLE `subscription_type_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_type_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_types`
--

DROP TABLE IF EXISTS `subscription_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_types` (
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `cost` double NOT NULL,
  `currency_code_alpha` varchar(3) NOT NULL,
  `non_expiring` tinyint(4) NOT NULL DEFAULT '0',
  `duration` smallint(6) DEFAULT NULL,
  `format` smallint(6) NOT NULL,
  `institutional` tinyint(4) NOT NULL DEFAULT '0',
  `membership` tinyint(4) NOT NULL DEFAULT '0',
  `disable_public_display` tinyint(4) NOT NULL,
  `seq` double NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_types`
--

LOCK TABLES `subscription_types` WRITE;
/*!40000 ALTER TABLE `subscription_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `subscription_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `membership` varchar(40) DEFAULT NULL,
  `reference_number` varchar(40) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_last_activity_submissions`
--

DROP TABLE IF EXISTS `temp_last_activity_submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_last_activity_submissions` (
  `submission_id` bigint(20) NOT NULL DEFAULT '0',
  `locale` varchar(14) DEFAULT NULL,
  `context_id` bigint(20) NOT NULL,
  `section_id` bigint(20) DEFAULT NULL,
  `language` varchar(10) DEFAULT 'en',
  `citations` text,
  `date_submitted` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_status_modified` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `submission_progress` tinyint(4) NOT NULL DEFAULT '1',
  `pages` varchar(255) DEFAULT NULL,
  `hide_author` tinyint(4) NOT NULL DEFAULT '0',
  `stage_id` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_last_activity_submissions`
--

LOCK TABLES `temp_last_activity_submissions` WRITE;
/*!40000 ALTER TABLE `temp_last_activity_submissions` DISABLE KEYS */;
INSERT INTO `temp_last_activity_submissions` VALUES (1,'en_US',1,1,'en',NULL,'2019-02-28 21:00:29','2019-02-28 21:00:50','2019-02-28 21:00:50',1,0,NULL,0,3),(2,'en_US',1,1,'en',NULL,'2019-02-28 21:01:16','2019-02-28 21:01:36','2019-02-28 21:01:36',1,0,NULL,0,4),(3,'en_US',1,1,'en',NULL,'2019-02-28 21:01:59','2019-02-28 21:01:59','2019-02-28 21:01:59',1,0,NULL,0,1),(4,'en_US',1,1,'en',NULL,'2019-02-28 21:02:19','2019-02-28 21:02:48','2019-02-28 21:02:48',1,0,NULL,0,5),(5,'en_US',1,1,'en',NULL,'2019-02-28 21:03:08','2019-02-28 21:03:34','2019-02-28 21:03:34',1,0,NULL,0,5),(6,'en_US',1,1,'en',NULL,'2019-02-28 21:03:54','2019-02-28 21:04:16','2019-02-28 21:04:16',1,0,NULL,0,3),(7,'en_US',1,1,'en',NULL,'2019-02-28 21:04:43','2019-02-28 21:04:43','2019-02-28 21:04:43',1,0,NULL,0,1),(8,'en_US',1,2,'en',NULL,'2019-02-28 21:05:06','2019-02-28 21:05:35','2019-02-28 21:05:35',1,0,NULL,0,5),(9,'en_US',1,1,NULL,NULL,'2016-02-11 00:00:00','2019-02-28 21:05:43','2019-02-28 21:05:43',3,0,NULL,0,1),(10,'en_US',1,2,NULL,NULL,'2016-02-11 00:00:00','2019-02-28 21:05:43','2019-02-28 21:05:43',3,0,NULL,0,1),(11,'en_US',1,1,NULL,NULL,'2016-02-11 00:00:00','2019-02-28 21:05:43','2019-02-28 21:05:43',3,0,NULL,0,1),(12,'en_US',1,2,NULL,NULL,'2016-02-11 00:00:00','2019-02-28 21:05:43','2019-02-28 21:05:43',3,0,NULL,0,1),(13,'en_US',1,1,NULL,NULL,'2016-02-11 00:00:00','2019-02-28 21:05:44','2019-02-28 21:05:43',3,0,NULL,0,1),(14,'en_US',1,1,NULL,NULL,'2016-02-11 00:00:00','2019-02-28 21:05:44','2019-02-28 21:05:44',3,0,NULL,0,1),(15,'en_US',1,1,'en',NULL,'2019-02-28 21:06:03','2019-02-28 21:06:40','2019-02-28 21:06:40',1,0,NULL,0,5),(16,'en_US',1,1,'en',NULL,'2019-02-28 21:07:01','2019-02-28 21:07:31','2019-02-28 21:07:31',1,0,NULL,0,3),(17,'en_US',1,1,'en',NULL,'2019-02-28 21:07:58','2019-02-28 21:07:58','2019-02-28 21:07:58',1,0,NULL,0,1),(18,'en_US',1,1,'en',NULL,'2019-02-28 21:08:19','2019-02-28 21:08:33','2019-02-28 21:08:33',1,0,NULL,0,3),(19,'en_US',1,1,'en',NULL,'2019-02-28 21:08:53','2019-02-28 21:09:51','2019-02-28 21:09:51',1,0,NULL,0,3),(20,'en_US',1,1,'en',NULL,'2019-02-28 21:10:10','2019-02-28 21:10:10','2019-02-28 21:10:10',1,0,NULL,0,1),(21,'en_US',1,1,'en',NULL,'2019-02-28 21:10:29','2019-02-28 21:11:12','2019-02-28 21:11:12',1,0,NULL,0,5),(22,'en_US',1,1,'en',NULL,'2019-02-28 21:11:46','2019-02-28 21:11:46','2019-02-28 21:11:46',1,0,NULL,0,1),(23,'en_US',1,1,'en',NULL,'2019-02-28 21:12:14','2019-02-28 21:12:58','2019-02-28 21:12:58',1,0,NULL,0,5),(24,'en_US',1,1,'en',NULL,'2019-02-28 21:13:20','2019-02-28 21:13:29','2019-02-28 21:13:29',4,0,NULL,0,1),(25,'en_US',1,2,'en',NULL,'2019-02-28 21:13:49','2019-02-28 21:14:12','2019-02-28 21:14:12',1,0,NULL,0,4),(26,'en_US',1,1,NULL,NULL,'2020-01-03 14:46:38','2020-01-03 14:46:38',NULL,1,0,NULL,0,1),(27,'en_US',1,1,NULL,NULL,'2020-01-04 22:07:56','2020-01-04 22:07:56',NULL,1,0,NULL,0,1),(28,'en_US',1,1,NULL,NULL,'2020-01-05 03:43:10','2020-01-05 03:43:10',NULL,1,0,NULL,0,1),(29,'en_US',1,1,NULL,NULL,'2020-01-05 03:53:12','2020-01-05 03:53:12',NULL,1,0,NULL,0,1),(30,'en_US',1,1,NULL,NULL,'2020-01-05 03:54:19','2020-01-05 03:54:19',NULL,1,0,NULL,0,1);
/*!40000 ALTER TABLE `temp_last_activity_submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary_files`
--

DROP TABLE IF EXISTS `temporary_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporary_files` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `file_name` varchar(90) NOT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size` bigint(20) NOT NULL,
  `original_file_name` varchar(127) DEFAULT NULL,
  `date_uploaded` datetime NOT NULL,
  PRIMARY KEY (`file_id`),
  KEY `temporary_files_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary_files`
--

LOCK TABLES `temporary_files` WRITE;
/*!40000 ALTER TABLE `temporary_files` DISABLE KEYS */;
INSERT INTO `temporary_files` VALUES (1,3,'xml8sghaN','text/xml',253830,'issue.xml','2019-02-28 21:05:42');
/*!40000 ALTER TABLE `temporary_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_stats_temporary_records`
--

DROP TABLE IF EXISTS `usage_stats_temporary_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_stats_temporary_records` (
  `assoc_id` bigint(20) NOT NULL,
  `assoc_type` bigint(20) NOT NULL,
  `day` bigint(20) NOT NULL,
  `entry_time` bigint(20) NOT NULL,
  `metric` bigint(20) NOT NULL DEFAULT '1',
  `country_id` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `load_id` varchar(255) NOT NULL,
  `file_type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_stats_temporary_records`
--

LOCK TABLES `usage_stats_temporary_records` WRITE;
/*!40000 ALTER TABLE `usage_stats_temporary_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_stats_temporary_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_settings`
--

DROP TABLE IF EXISTS `user_group_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_settings` (
  `user_group_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `user_group_settings_pkey` (`user_group_id`,`locale`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_settings`
--

LOCK TABLES `user_group_settings` WRITE;
/*!40000 ALTER TABLE `user_group_settings` DISABLE KEYS */;
INSERT INTO `user_group_settings` VALUES (1,'en_US','name','Site Admin','string'),(1,'fr_CA','name','##default.groups.name.siteAdmin##','string'),(2,'','abbrevLocaleKey','default.groups.abbrev.manager','string'),(2,'','nameLocaleKey','default.groups.name.manager','string'),(2,'en_US','abbrev','JM','string'),(2,'en_US','name','Journal manager','string'),(2,'fr_CA','abbrev','DIR','string'),(2,'fr_CA','name','Directeur de la revue','string'),(3,'','abbrevLocaleKey','default.groups.abbrev.editor','string'),(3,'','nameLocaleKey','default.groups.name.editor','string'),(3,'en_US','abbrev','JE','string'),(3,'en_US','name','Journal editor','string'),(3,'fr_CA','abbrev','RÉD','string'),(3,'fr_CA','name','Rédacteur','string'),(4,'','abbrevLocaleKey','default.groups.abbrev.productionEditor','string'),(4,'','nameLocaleKey','default.groups.name.productionEditor','string'),(4,'en_US','abbrev','ProdE','string'),(4,'en_US','name','Production editor','string'),(4,'fr_CA','abbrev','DirProd','string'),(4,'fr_CA','name','Directeur de production','string'),(5,'','abbrevLocaleKey','default.groups.abbrev.sectionEditor','string'),(5,'','nameLocaleKey','default.groups.name.sectionEditor','string'),(5,'en_US','abbrev','SecE','string'),(5,'en_US','name','Section editor','string'),(5,'fr_CA','abbrev','RÉDRUB','string'),(5,'fr_CA','name','Rédacteur de rubrique','string'),(6,'','abbrevLocaleKey','default.groups.abbrev.guestEditor','string'),(6,'','nameLocaleKey','default.groups.name.guestEditor','string'),(6,'en_US','abbrev','GE','string'),(6,'en_US','name','Guest editor','string'),(6,'fr_CA','abbrev','RÉDINV','string'),(6,'fr_CA','name','Rédacteur invité','string'),(7,'','abbrevLocaleKey','default.groups.abbrev.copyeditor','string'),(7,'','nameLocaleKey','default.groups.name.copyeditor','string'),(7,'en_US','abbrev','CE','string'),(7,'en_US','name','Copyeditor','string'),(7,'fr_CA','abbrev','RÉV','string'),(7,'fr_CA','name','Réviseur','string'),(8,'','abbrevLocaleKey','default.groups.abbrev.designer','string'),(8,'','nameLocaleKey','default.groups.name.designer','string'),(8,'en_US','abbrev','Design','string'),(8,'en_US','name','Designer','string'),(8,'fr_CA','abbrev','Design','string'),(8,'fr_CA','name','Designer','string'),(9,'','abbrevLocaleKey','default.groups.abbrev.funding','string'),(9,'','nameLocaleKey','default.groups.name.funding','string'),(9,'en_US','abbrev','FC','string'),(9,'en_US','name','Funding coordinator','string'),(9,'fr_CA','abbrev','CF','string'),(9,'fr_CA','name','Coordonnateur du financement','string'),(10,'','abbrevLocaleKey','default.groups.abbrev.indexer','string'),(10,'','nameLocaleKey','default.groups.name.indexer','string'),(10,'en_US','abbrev','IND','string'),(10,'en_US','name','Indexer','string'),(10,'fr_CA','abbrev','Indx','string'),(10,'fr_CA','name','Indexeur','string'),(11,'','abbrevLocaleKey','default.groups.abbrev.layoutEditor','string'),(11,'','nameLocaleKey','default.groups.name.layoutEditor','string'),(11,'en_US','abbrev','LE','string'),(11,'en_US','name','Layout Editor','string'),(11,'fr_CA','abbrev','RespMP','string'),(11,'fr_CA','name','Responsable de la mise en page','string'),(12,'','abbrevLocaleKey','default.groups.abbrev.marketing','string'),(12,'','nameLocaleKey','default.groups.name.marketing','string'),(12,'en_US','abbrev','MS','string'),(12,'en_US','name','Marketing and sales coordinator','string'),(12,'fr_CA','abbrev','CVM','string'),(12,'fr_CA','name','Coordonnateur des ventes et du marketing','string'),(13,'','abbrevLocaleKey','default.groups.abbrev.proofreader','string'),(13,'','nameLocaleKey','default.groups.name.proofreader','string'),(13,'en_US','abbrev','PR','string'),(13,'en_US','name','Proofreader','string'),(13,'fr_CA','abbrev','CorEp','string'),(13,'fr_CA','name','Correcteur d’épreuves','string'),(14,'','abbrevLocaleKey','default.groups.abbrev.author','string'),(14,'','nameLocaleKey','default.groups.name.author','string'),(14,'en_US','abbrev','AU','string'),(14,'en_US','name','Author','string'),(14,'fr_CA','abbrev','AU','string'),(14,'fr_CA','name','Auteur','string'),(15,'','abbrevLocaleKey','default.groups.abbrev.translator','string'),(15,'','nameLocaleKey','default.groups.name.translator','string'),(15,'en_US','abbrev','Trans','string'),(15,'en_US','name','Translator','string'),(15,'fr_CA','abbrev','Trad','string'),(15,'fr_CA','name','Traducteur','string'),(16,'','abbrevLocaleKey','default.groups.abbrev.externalReviewer','string'),(16,'','nameLocaleKey','default.groups.name.externalReviewer','string'),(16,'en_US','abbrev','R','string'),(16,'en_US','name','Reviewer','string'),(16,'fr_CA','abbrev','ÉVAL','string'),(16,'fr_CA','name','Évaluateur','string'),(17,'','abbrevLocaleKey','default.groups.abbrev.reader','string'),(17,'','nameLocaleKey','default.groups.name.reader','string'),(17,'en_US','abbrev','Read','string'),(17,'en_US','name','Reader','string'),(17,'fr_CA','abbrev','Lect','string'),(17,'fr_CA','name','Lecteur','string'),(18,'','abbrevLocaleKey','default.groups.abbrev.subscriptionManager','string'),(18,'','nameLocaleKey','default.groups.name.subscriptionManager','string'),(18,'en_US','abbrev','SubM','string'),(18,'en_US','name','Subscription Manager','string'),(18,'fr_CA','abbrev','RespAB','string'),(18,'fr_CA','name','Responsable des abonnements','string');
/*!40000 ALTER TABLE `user_group_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_stage`
--

DROP TABLE IF EXISTS `user_group_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_stage` (
  `context_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  `stage_id` bigint(20) NOT NULL,
  UNIQUE KEY `user_group_stage_pkey` (`context_id`,`user_group_id`,`stage_id`),
  KEY `user_group_stage_context_id` (`context_id`),
  KEY `user_group_stage_user_group_id` (`user_group_id`),
  KEY `user_group_stage_stage_id` (`stage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_stage`
--

LOCK TABLES `user_group_stage` WRITE;
/*!40000 ALTER TABLE `user_group_stage` DISABLE KEYS */;
INSERT INTO `user_group_stage` VALUES (1,3,1),(1,3,3),(1,3,4),(1,3,5),(1,4,4),(1,4,5),(1,5,1),(1,5,3),(1,5,4),(1,5,5),(1,6,1),(1,6,3),(1,6,4),(1,6,5),(1,7,4),(1,8,5),(1,9,1),(1,9,3),(1,10,5),(1,11,5),(1,12,4),(1,13,5),(1,14,1),(1,14,3),(1,14,4),(1,14,5),(1,15,1),(1,15,3),(1,15,4),(1,15,5),(1,16,3);
/*!40000 ALTER TABLE `user_group_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `user_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `context_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `show_title` tinyint(4) NOT NULL DEFAULT '1',
  `permit_self_registration` tinyint(4) NOT NULL DEFAULT '0',
  `permit_metadata_edit` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_group_id`),
  KEY `user_groups_user_group_id` (`user_group_id`),
  KEY `user_groups_context_id` (`context_id`),
  KEY `user_groups_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
INSERT INTO `user_groups` VALUES (1,0,1,1,0,0,0),(2,1,16,1,0,0,1),(3,1,16,1,0,0,1),(4,1,16,1,0,0,1),(5,1,17,1,0,0,0),(6,1,17,1,0,0,0),(7,1,4097,1,0,0,0),(8,1,4097,1,0,0,0),(9,1,4097,1,0,0,0),(10,1,4097,1,0,0,0),(11,1,4097,1,0,0,0),(12,1,4097,1,0,0,0),(13,1,4097,1,0,0,0),(14,1,65536,1,0,1,0),(15,1,65536,1,0,0,0),(16,1,4096,1,0,1,0),(17,1,1048576,1,0,1,0),(18,1,2097152,1,0,0,0);
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_interests`
--

DROP TABLE IF EXISTS `user_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_interests` (
  `user_id` bigint(20) NOT NULL,
  `controlled_vocab_entry_id` bigint(20) NOT NULL,
  UNIQUE KEY `u_e_pkey` (`user_id`,`controlled_vocab_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interests`
--

LOCK TABLES `user_interests` WRITE;
/*!40000 ALTER TABLE `user_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_settings` (
  `user_id` bigint(20) NOT NULL,
  `locale` varchar(14) NOT NULL DEFAULT '',
  `setting_name` varchar(255) NOT NULL,
  `assoc_type` bigint(20) DEFAULT '0',
  `assoc_id` bigint(20) DEFAULT '0',
  `setting_value` text,
  `setting_type` varchar(6) NOT NULL,
  UNIQUE KEY `user_settings_pkey` (`user_id`,`locale`,`setting_name`,`assoc_type`,`assoc_id`),
  KEY `user_settings_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
INSERT INTO `user_settings` VALUES (1,'en_US','givenName',0,0,'admin','string'),(1,'en_US','familyName',0,0,'admin','string'),(2,'en_US','biography',0,0,'','string'),(2,'en_US','signature',0,0,'','string'),(2,'en_US','affiliation',0,0,'Universidad Nacional Autónoma de México','string'),(2,'en_US','givenName',0,0,'Ramiro','string'),(2,'en_US','familyName',0,0,'Vaca','string'),(2,'en_US','preferredPublicName',0,0,'','string'),(2,'','orcid',0,0,'','string'),(3,'en_US','biography',0,0,'','string'),(3,'en_US','signature',0,0,'','string'),(3,'en_US','affiliation',0,0,'University of Melbourne','string'),(3,'en_US','givenName',0,0,'Daniel','string'),(3,'en_US','familyName',0,0,'Barnes','string'),(3,'en_US','preferredPublicName',0,0,'','string'),(3,'','orcid',0,0,'','string'),(4,'en_US','biography',0,0,'','string'),(4,'en_US','signature',0,0,'','string'),(4,'en_US','affiliation',0,0,'University of Chicago','string'),(4,'en_US','givenName',0,0,'David','string'),(4,'en_US','familyName',0,0,'Buskins','string'),(4,'en_US','preferredPublicName',0,0,'','string'),(4,'','orcid',0,0,'','string'),(5,'en_US','biography',0,0,'','string'),(5,'en_US','signature',0,0,'','string'),(5,'en_US','affiliation',0,0,'University of Toronto','string'),(5,'en_US','givenName',0,0,'Stephanie','string'),(5,'en_US','familyName',0,0,'Berardo','string'),(5,'en_US','preferredPublicName',0,0,'','string'),(5,'','orcid',0,0,'','string'),(6,'en_US','biography',0,0,'','string'),(6,'en_US','signature',0,0,'','string'),(6,'en_US','affiliation',0,0,'Kyoto University','string'),(6,'en_US','givenName',0,0,'Minoti','string'),(6,'en_US','familyName',0,0,'Inoue','string'),(6,'en_US','preferredPublicName',0,0,'','string'),(6,'','orcid',0,0,'','string'),(7,'en_US','biography',0,0,'','string'),(7,'en_US','signature',0,0,'','string'),(7,'en_US','affiliation',0,0,'Utrecht University','string'),(7,'en_US','givenName',0,0,'Julie','string'),(7,'en_US','familyName',0,0,'Janssen','string'),(7,'en_US','preferredPublicName',0,0,'','string'),(7,'','orcid',0,0,'','string'),(8,'en_US','biography',0,0,'','string'),(8,'en_US','signature',0,0,'','string'),(8,'en_US','affiliation',0,0,'McGill University','string'),(8,'en_US','givenName',0,0,'Paul','string'),(8,'en_US','familyName',0,0,'Hudson','string'),(8,'en_US','preferredPublicName',0,0,'','string'),(8,'','orcid',0,0,'','string'),(9,'en_US','biography',0,0,'','string'),(9,'en_US','signature',0,0,'','string'),(9,'en_US','affiliation',0,0,'University of Manitoba','string'),(9,'en_US','givenName',0,0,'Aisla','string'),(9,'en_US','familyName',0,0,'McCrae','string'),(9,'en_US','preferredPublicName',0,0,'','string'),(9,'','orcid',0,0,'','string'),(10,'en_US','biography',0,0,'','string'),(10,'en_US','signature',0,0,'','string'),(10,'en_US','affiliation',0,0,'State University of New York','string'),(10,'en_US','givenName',0,0,'Adela','string'),(10,'en_US','familyName',0,0,'Gallego','string'),(10,'en_US','preferredPublicName',0,0,'','string'),(10,'','orcid',0,0,'','string'),(11,'en_US','biography',0,0,'','string'),(11,'en_US','signature',0,0,'','string'),(11,'en_US','affiliation',0,0,'Ghent University','string'),(11,'en_US','givenName',0,0,'Maria','string'),(11,'en_US','familyName',0,0,'Fritz','string'),(11,'en_US','preferredPublicName',0,0,'','string'),(11,'','orcid',0,0,'','string'),(12,'en_US','biography',0,0,'','string'),(12,'en_US','signature',0,0,'','string'),(12,'en_US','affiliation',0,0,'Universidad de Chile','string'),(12,'en_US','givenName',0,0,'Sarah','string'),(12,'en_US','familyName',0,0,'Vogt','string'),(12,'en_US','preferredPublicName',0,0,'','string'),(12,'','orcid',0,0,'','string'),(13,'en_US','biography',0,0,'','string'),(13,'en_US','signature',0,0,'','string'),(13,'en_US','affiliation',0,0,'Duke University','string'),(13,'en_US','givenName',0,0,'Graham','string'),(13,'en_US','familyName',0,0,'Cox','string'),(13,'en_US','preferredPublicName',0,0,'','string'),(13,'','orcid',0,0,'','string'),(14,'en_US','biography',0,0,'','string'),(14,'en_US','signature',0,0,'','string'),(14,'en_US','affiliation',0,0,'University of Cape Town','string'),(14,'en_US','givenName',0,0,'Stephen','string'),(14,'en_US','familyName',0,0,'Hellier','string'),(14,'en_US','preferredPublicName',0,0,'','string'),(14,'','orcid',0,0,'','string'),(15,'en_US','biography',0,0,'','string'),(15,'en_US','signature',0,0,'','string'),(15,'en_US','affiliation',0,0,'Imperial College London','string'),(15,'en_US','givenName',0,0,'Catherine','string'),(15,'en_US','familyName',0,0,'Turner','string'),(15,'en_US','preferredPublicName',0,0,'','string'),(15,'','orcid',0,0,'','string'),(16,'en_US','biography',0,0,'','string'),(16,'en_US','signature',0,0,'','string'),(16,'en_US','affiliation',0,0,'National University of Singapore','string'),(16,'en_US','givenName',0,0,'Sabine','string'),(16,'en_US','familyName',0,0,'Kumar','string'),(16,'en_US','preferredPublicName',0,0,'','string'),(16,'','orcid',0,0,'','string'),(17,'en_US','affiliation',0,0,'University of Bologna','string'),(17,'en_US','givenName',0,0,'Carlo','string'),(17,'en_US','familyName',0,0,'Corino','string'),(18,'en_US','affiliation',0,0,'University of Windsor','string'),(18,'en_US','givenName',0,0,'Catherine','string'),(18,'en_US','familyName',0,0,'Kwantes','string'),(19,'en_US','affiliation',0,0,'University of Alberta','string'),(19,'en_US','givenName',0,0,'Craig','string'),(19,'en_US','familyName',0,0,'Montgomerie','string'),(20,'en_US','affiliation',0,0,'Alexandria University','string'),(20,'en_US','givenName',0,0,'Diaga','string'),(20,'en_US','familyName',0,0,'Diouf','string'),(21,'en_US','affiliation',0,0,'University of Toronto','string'),(21,'en_US','givenName',0,0,'Dana','string'),(21,'en_US','familyName',0,0,'Phillips','string'),(22,'en_US','affiliation',0,0,'University College Cork','string'),(22,'en_US','givenName',0,0,'Domatilia','string'),(22,'en_US','familyName',0,0,'Sokoloff','string'),(23,'en_US','affiliation',0,0,'Indiana University','string'),(23,'en_US','givenName',0,0,'Elinor','string'),(23,'en_US','familyName',0,0,'Ostrom','string'),(24,'en_US','affiliation',0,0,'University of Rome','string'),(24,'en_US','givenName',0,0,'Fabio','string'),(24,'en_US','familyName',0,0,'Paglieri','string'),(25,'en_US','affiliation',0,0,'University of Cape Town','string'),(25,'en_US','givenName',0,0,'John','string'),(25,'en_US','familyName',0,0,'Mwandenga','string'),(26,'en_US','affiliation',0,0,'Aalborg University','string'),(26,'en_US','givenName',0,0,'John','string'),(26,'en_US','familyName',0,0,'Novak','string'),(27,'en_US','affiliation',0,0,'Stanford University','string'),(27,'en_US','givenName',0,0,'Karim','string'),(27,'en_US','familyName',0,0,'Al-Khafaji','string'),(28,'en_US','affiliation',0,0,'Australian National University','string'),(28,'en_US','givenName',0,0,'Leo','string'),(28,'en_US','familyName',0,0,'Christopher','string'),(29,'en_US','affiliation',0,0,'University of Cape Town','string'),(29,'en_US','givenName',0,0,'Lise','string'),(29,'en_US','familyName',0,0,'Kumiega','string'),(30,'en_US','affiliation',0,0,'University of Wolverhampton','string'),(30,'en_US','givenName',0,0,'Patricia','string'),(30,'en_US','familyName',0,0,'Daniel','string'),(31,'en_US','affiliation',0,0,'University of Nairobi','string'),(31,'en_US','givenName',0,0,'Rana','string'),(31,'en_US','familyName',0,0,'Baiyewu','string'),(32,'en_US','affiliation',0,0,'Barcelona University','string'),(32,'en_US','givenName',0,0,'Rosanna','string'),(32,'en_US','familyName',0,0,'Rossi','string'),(33,'en_US','affiliation',0,0,'University of Tehran','string'),(33,'en_US','givenName',0,0,'Vajiheh','string'),(33,'en_US','familyName',0,0,'Karbasizaed','string'),(34,'en_US','affiliation',0,0,'University of Windsor','string'),(34,'en_US','givenName',0,0,'Valerie','string'),(34,'en_US','familyName',0,0,'Williamson','string'),(35,'en_US','affiliation',0,0,'CUNY','string'),(35,'en_US','givenName',0,0,'Zita','string'),(35,'en_US','familyName',0,0,'Woods','string'),(1,'','apiKeyEnabled',256,0,'1','bool'),(1,'','apiKey',256,0,'57293d25733589ce7ffb9d4ba4f532ff2f55c548','string');
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_user_groups`
--

DROP TABLE IF EXISTS `user_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_user_groups` (
  `user_group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  UNIQUE KEY `user_user_groups_pkey` (`user_group_id`,`user_id`),
  KEY `user_user_groups_user_group_id` (`user_group_id`),
  KEY `user_user_groups_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_user_groups`
--

LOCK TABLES `user_user_groups` WRITE;
/*!40000 ALTER TABLE `user_user_groups` DISABLE KEYS */;
INSERT INTO `user_user_groups` VALUES (1,1),(2,1),(2,2),(3,3),(5,4),(5,5),(5,6),(7,11),(7,12),(11,13),(11,14),(13,15),(13,16),(14,17),(14,18),(14,19),(14,20),(14,21),(14,22),(14,23),(14,24),(14,25),(14,26),(14,27),(14,28),(14,29),(14,30),(14,31),(14,32),(14,33),(14,34),(14,35),(16,7),(16,8),(16,9),(16,10),(17,17),(17,18),(17,19),(17,20),(17,21),(17,22),(17,23),(17,24),(17,25),(17,26),(17,27),(17,28),(17,29),(17,30),(17,31),(17,32),(17,33),(17,34),(17,35);
/*!40000 ALTER TABLE `user_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(2047) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `mailing_address` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `country` varchar(90) DEFAULT NULL,
  `locales` varchar(255) DEFAULT NULL,
  `gossip` text,
  `date_last_email` datetime DEFAULT NULL,
  `date_registered` datetime NOT NULL,
  `date_validated` datetime DEFAULT NULL,
  `date_last_login` datetime NOT NULL,
  `must_change_password` tinyint(4) DEFAULT NULL,
  `auth_id` bigint(20) DEFAULT NULL,
  `auth_str` varchar(255) DEFAULT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `disabled_reason` text,
  `inline_help` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `users_username` (`username`),
  UNIQUE KEY `users_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$3x6Vqjx57eHgDwPLHXtjR.OzCDi6VI/ZwWovnqq8nExe/z2FhOQru','pkpadmin@mailinator.com',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'2019-02-28 20:58:44',NULL,'2020-01-30 22:04:36',0,NULL,NULL,0,NULL,1),(2,'rvaca','$2y$10$UJzamyNltp8sRtU0kqxpxOWZ3e0msb460Jl9kxyUitjcWKVMhaBWi','rvaca@mailinator.com','','','',NULL,'MX','',NULL,NULL,'2019-02-28 20:59:10',NULL,'2019-02-28 20:59:10',0,NULL,NULL,0,NULL,1),(3,'dbarnes','$2y$10$5/X3HORBSZ.g2oJ17blX5.AyUs5GQppl8lni3MEur7xYLqcf4AxW2','dbarnes@mailinator.com','','','',NULL,'AU','',NULL,NULL,'2019-02-28 20:59:13',NULL,'2019-02-28 21:13:52',0,NULL,NULL,0,NULL,1),(4,'dbuskins','$2y$10$V4w9r1.T7ICXbR0tWMGgEe55.urnF8vZw5PrvG7hJiKRcjYTYmEVC','dbuskins@mailinator.com','','','',NULL,'US','',NULL,NULL,'2019-02-28 20:59:16',NULL,'2019-02-28 20:59:16',0,NULL,NULL,0,NULL,1),(5,'sberardo','$2y$10$P92IvXGq1oQxFLBl1bIt0eneLienwEXNQthsRK1J0WkkVFFXtvt9y','sberardo@mailinator.com','','','',NULL,'CA','',NULL,NULL,'2019-02-28 20:59:19',NULL,'2019-02-28 20:59:19',0,NULL,NULL,0,NULL,1),(6,'minoue','$2y$10$8TAlfRvmBkorQRUecml8iuzySnQe6/06kNaZLm8yhXLmryRx5cPb6','minoue@mailinator.com','','','',NULL,'JP','',NULL,NULL,'2019-02-28 20:59:22',NULL,'2019-02-28 21:00:46',0,NULL,NULL,0,NULL,1),(7,'jjanssen','$2y$10$fhnuLK6P6hbcROKC6uwlV.0hlxJHDfYrwTOktQVdlwbNzK3G7IF3G','jjanssen@mailinator.com','','','',NULL,'NL','',NULL,NULL,'2019-02-28 20:59:25',NULL,'2019-02-28 21:09:13',0,NULL,NULL,0,NULL,1),(8,'phudson','$2y$10$vWYz25oCylnTW8AQZuJCfeu/jR5zk3.GIytRAcSAhr8uEn0BJPhoK','phudson@mailinator.com','','','',NULL,'CA','',NULL,NULL,'2019-02-28 20:59:28',NULL,'2019-02-28 21:04:14',0,NULL,NULL,0,NULL,1),(9,'amccrae','$2y$10$GRmHsaVlxMUdy6aGdTjNCeDGmPmgVcs.MrAFhQR4zL0jrhIfUT17y','amccrae@mailinator.com','','','',NULL,'CA','',NULL,NULL,'2019-02-28 20:59:31',NULL,'2019-02-28 21:09:23',0,NULL,NULL,0,NULL,1),(10,'agallego','$2y$10$zpD8YyZx.xGAmWceCQ6Ouea1oW1jpS7b73LaJhXM57xelo.Uj2NmO','agallego@mailinator.com','','','',NULL,'US','',NULL,NULL,'2019-02-28 20:59:34',NULL,'2019-02-28 21:09:34',0,NULL,NULL,0,NULL,1),(11,'mfritz','$2y$10$5nfYZAUnYuCuJVDbdZngju8V6u9b1nJlvwUf1wRXAGdYbGd4ViJ7y','mfritz@mailinator.com','','','',NULL,'BE','',NULL,NULL,'2019-02-28 20:59:37',NULL,'2019-02-28 20:59:37',0,NULL,NULL,0,NULL,1),(12,'svogt','$2y$10$OCMDJyNT/AJAYNaJCLhiKO/fZ4HPdtyZKAfTxUlM.tBKroHKDeGna','svogt@mailinator.com','','','',NULL,'CL','',NULL,NULL,'2019-02-28 20:59:40',NULL,'2019-02-28 20:59:40',0,NULL,NULL,0,NULL,1),(13,'gcox','$2y$10$YJLt0hxT1FLeLN.RYJPWped7dXEyBfIRgvmqPd8BwlZVBFlh6k1UC','gcox@mailinator.com','','','',NULL,'US','',NULL,NULL,'2019-02-28 20:59:43',NULL,'2019-02-28 20:59:43',0,NULL,NULL,0,NULL,1),(14,'shellier','$2y$10$BnRxleGNnaWJTFza4bH4he8uUUUZwTdb9XiTaJxTjhqAY/PD6BvvW','shellier@mailinator.com','','','',NULL,'ZA','',NULL,NULL,'2019-02-28 20:59:46',NULL,'2019-02-28 20:59:46',0,NULL,NULL,0,NULL,1),(15,'cturner','$2y$10$civ70jWh7ODdaEob6EiyoeGE6kXK8Whbg63d5kZa1lWF1bdnGcI1a','cturner@mailinator.com','','','',NULL,'GB','',NULL,NULL,'2019-02-28 20:59:49',NULL,'2019-02-28 20:59:49',0,NULL,NULL,0,NULL,1),(16,'skumar','$2y$10$sjFTH6IhL5BGNdSvY5uN7OdpjuckIOX12oRMhQe6nRyIv/4ge8gGq','skumar@mailinator.com','','','',NULL,'SG','',NULL,NULL,'2019-02-28 20:59:52',NULL,'2019-02-28 20:59:52',0,NULL,NULL,0,NULL,1),(17,'ccorino','$2y$10$jTg/RBJTbPcotRG9D9vZwOQLGXjWPmXd0u/e3TLeRWxez7Zpd0V16','ccorino@mailinator.com',NULL,NULL,NULL,NULL,'IT','',NULL,NULL,'2019-02-28 21:00:13',NULL,'2019-02-28 21:00:13',0,NULL,NULL,0,NULL,1),(18,'ckwantes','$2y$10$OtGg/wKgg03NNhXXlRLY..IzccIothFhMDTgBQJqpcnLM6w4qCdNq','ckwantes@mailinator.com',NULL,NULL,NULL,NULL,'CA','',NULL,NULL,'2019-02-28 21:01:00',NULL,'2019-02-28 21:01:01',0,NULL,NULL,0,NULL,1),(19,'cmontgomerie','$2y$10$plwVVkSFflPVOCI.gpjMO.GQ/bfnJfSTJ7REC4cxBcCSAlPuGAvdO','cmontgomerie@mailinator.com',NULL,NULL,NULL,NULL,'CA','',NULL,NULL,'2019-02-28 21:01:41',NULL,'2019-02-28 21:01:41',0,NULL,NULL,0,NULL,1),(20,'ddiouf','$2y$10$CfWz3W4ftJBvSCcprjAr4uvdgmJZviSsxfVGq0qr3ly1tWd3Mm0O6','ddiouf@mailinator.com',NULL,NULL,NULL,NULL,'EG','',NULL,NULL,'2019-02-28 21:02:03',NULL,'2019-02-28 21:02:03',0,NULL,NULL,0,NULL,1),(21,'dphillips','$2y$10$cgC/IwZShUdJHGSqWje1teN9t8kgFdcuZxzctCqiTkqFiE7egvp3K','dphillips@mailinator.com',NULL,NULL,NULL,NULL,'CA','',NULL,NULL,'2019-02-28 21:02:53',NULL,'2019-02-28 21:02:53',0,NULL,NULL,0,NULL,1),(22,'dsokoloff','$2y$10$GOvCyNPZrFTQuwSdq3vikeEyDmfWhoMXrXk.9A/hDSCTsYx1dvUR6','dsokoloff@mailinator.com',NULL,NULL,NULL,NULL,'IE','',NULL,NULL,'2019-02-28 21:03:39',NULL,'2019-02-28 21:03:39',0,NULL,NULL,0,NULL,1),(23,'eostrom','$2y$10$CrfwUVgLZ6FGas/ASBsF1.6LDvsTAuBM.CRyqVVcVu7EaXra1MDq.','eostrom@mailinator.com',NULL,NULL,NULL,NULL,'US','',NULL,NULL,'2019-02-28 21:04:25',NULL,'2019-02-28 21:04:25',0,NULL,NULL,0,NULL,1),(24,'fpaglieri','$2y$10$oEcYJELUL2a4gw9XeCW1/.8kYfazLE4J1THAB1WC.rgri0zAFHDEi','fpaglieri@mailinator.com',NULL,NULL,NULL,NULL,'IT','',NULL,NULL,'2019-02-28 21:04:51',NULL,'2019-02-28 21:04:51',0,NULL,NULL,0,NULL,1),(25,'jmwandenga','$2y$10$lLvPuJQGI6PvGapkCeiDJO3Y2WWrkGGvsz.x3ZYNsT8MB6rfNxk8u','jmwandenga@mailinator.com',NULL,NULL,NULL,NULL,'ZA','',NULL,NULL,'2019-02-28 21:05:47',NULL,'2019-02-28 21:05:47',0,NULL,NULL,0,NULL,1),(26,'jnovak','$2y$10$n4CecFEh3JSsgUGDc0E5X.OfFTFIGjjbT32x5Bj0AHi0FLg5DFJkm','jnovak@mailinator.com',NULL,NULL,NULL,NULL,'DK','',NULL,NULL,'2019-02-28 21:06:45',NULL,'2019-02-28 21:06:45',0,NULL,NULL,0,NULL,1),(27,'kalkhafaji','$2y$10$n7QJoKhFdY7dzY0DgjDgCucCsvje5Q4HW4QS1kq83aXi31SDGkv8q','kalkhafaji@mailinator.com',NULL,NULL,NULL,NULL,'US','',NULL,NULL,'2019-02-28 21:07:39',NULL,'2019-02-28 21:07:40',0,NULL,NULL,0,NULL,1),(28,'lchristopher','$2y$10$hj9ex0dkw3ka2DvIh1VchOb2lFisYTWBNUS1T12c.BbEDusrdC88u','lchristopher@mailinator.com',NULL,NULL,NULL,NULL,'AU','',NULL,NULL,'2019-02-28 21:08:02',NULL,'2019-02-28 21:08:03',0,NULL,NULL,0,NULL,1),(29,'lkumiega','$2y$10$WUaRD5GW20oCN0og8uS.Zen7lkj6xTIRbPDKDw9F/TZYQgXcrr3gu','lkumiega@mailinator.com',NULL,NULL,NULL,NULL,'ZA','',NULL,NULL,'2019-02-28 21:08:38',NULL,'2019-02-28 21:08:38',0,NULL,NULL,0,NULL,1),(30,'pdaniel','$2y$10$EnvfYEoQ7onVKx3Cut5fCeUUJjEJtOzVeiafistBLHiNGZvTPOvsK','pdaniel@mailinator.com',NULL,NULL,NULL,NULL,'GB','',NULL,NULL,'2019-02-28 21:09:55',NULL,'2019-02-28 21:09:55',0,NULL,NULL,0,NULL,1),(31,'rbaiyewu','$2y$10$/Z0PUlRJC77OB6EyT2MUwOTk9fkrD1.Nabdy4eRpDtq1kMGbF6c6G','rbaiyewu@mailinator.com',NULL,NULL,NULL,NULL,'KE','',NULL,NULL,'2019-02-28 21:10:14',NULL,'2019-02-28 21:10:14',0,NULL,NULL,0,NULL,1),(32,'rrossi','$2y$10$oqrDq8RXDTXWdXnX9SYgY.d5qhByn/Bj26MQuO1Wzs3xvNMRaqBmm','rrossi@mailinator.com',NULL,NULL,NULL,NULL,'ES','',NULL,NULL,'2019-02-28 21:11:23',NULL,'2019-02-28 21:11:24',0,NULL,NULL,0,NULL,1),(33,'vkarbasizaed','$2y$10$QsBHPvOG4ix3/KUE355lce6IRnh2aC.ruVPc8YRjGI9ZVBI.PGPYy','vkarbasizaed@mailinator.com',NULL,NULL,NULL,NULL,'IR','',NULL,NULL,'2019-02-28 21:11:58',NULL,'2019-02-28 21:11:59',0,NULL,NULL,0,NULL,1),(34,'vwilliamson','$2y$10$MNzj8K6clxN973iIRBWF9e6/LTSkNUUD6SURzJt5TZ5CcaRcZVOru','vwilliamson@mailinator.com',NULL,NULL,NULL,NULL,'CA','',NULL,NULL,'2019-02-28 21:13:04',NULL,'2019-02-28 21:13:04',0,NULL,NULL,0,NULL,1),(35,'zwoods','$2y$10$GwqmCwgNeqZIjd9Ume4x2.llD8Dz/ggOVSfPs3eULugcja/IZq1YO','zwoods@mailinator.com',NULL,NULL,NULL,NULL,'US','',NULL,NULL,'2019-02-28 21:13:33',NULL,'2019-02-28 21:13:33',0,NULL,NULL,0,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `major` int(11) NOT NULL DEFAULT '0',
  `minor` int(11) NOT NULL DEFAULT '0',
  `revision` int(11) NOT NULL DEFAULT '0',
  `build` int(11) NOT NULL DEFAULT '0',
  `date_installed` datetime NOT NULL,
  `current` tinyint(4) NOT NULL DEFAULT '0',
  `product_type` varchar(30) DEFAULT NULL,
  `product` varchar(30) DEFAULT NULL,
  `product_class_name` varchar(80) DEFAULT NULL,
  `lazy_load` tinyint(4) NOT NULL DEFAULT '0',
  `sitewide` tinyint(4) NOT NULL DEFAULT '0',
  UNIQUE KEY `versions_pkey` (`product_type`,`product`,`major`,`minor`,`revision`,`build`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,0,0,0,'2019-02-28 20:58:45',1,'plugins.metadata','openurl10','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.metadata','mods34','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.metadata','dc11','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.auth','ldap','',0,0),(1,1,0,0,'2019-02-28 20:58:45',1,'plugins.blocks','subscription','SubscriptionBlockPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.blocks','browse','BrowseBlockPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.blocks','makeSubmission','MakeSubmissionBlockPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.blocks','information','InformationBlockPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.blocks','developedBy','DevelopedByBlockPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.blocks','languageToggle','LanguageToggleBlockPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.gateways','resolver','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','recommendByAuthor','RecommendByAuthorPlugin',1,1),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','usageStats','UsageStatsPlugin',0,1),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','lensGalley','LensGalleyPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','backup','BackupPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','browse','BrowsePlugin',1,0),(0,1,0,0,'2019-02-28 20:58:45',1,'plugins.generic','citationStyleLanguage','CitationStyleLanguagePlugin',1,0),(1,2,0,0,'2019-02-28 20:58:45',1,'plugins.generic','staticPages','StaticPagesPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','googleAnalytics','GoogleAnalyticsPlugin',1,0),(1,2,0,0,'2019-02-28 20:58:45',1,'plugins.generic','openAIRE','OpenAIREPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','driver','DRIVERPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','tinymce','TinyMCEPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',0,'plugins.generic','pdfJsViewer','PdfJsViewerPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','dublinCoreMeta','DublinCoreMetaPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','usageEvent','',0,0),(1,1,0,0,'2019-02-28 20:58:45',0,'plugins.generic','orcidProfile','OrcidProfilePlugin',1,0),(1,2,0,0,'2019-02-28 20:58:45',1,'plugins.generic','customBlockManager','CustomBlockManagerPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','externalFeed','ExternalFeedPlugin',1,0),(2,0,3,0,'2019-02-28 20:58:45',0,'plugins.generic','translator','TranslatorPlugin',1,1),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','webFeed','WebFeedPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','htmlArticleGalley','HtmlArticleGalleyPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','googleScholar','GoogleScholarPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','announcementFeed','AnnouncementFeedPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.generic','recommendBySimilarity','RecommendBySimilarityPlugin',1,1),(1,2,0,0,'2019-02-28 20:58:45',1,'plugins.generic','acron','AcronPlugin',1,1),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.importexport','native','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.importexport','users','',0,0),(1,1,0,0,'2019-02-28 20:58:45',1,'plugins.importexport','doaj','',0,0),(2,1,0,0,'2019-02-28 20:58:45',1,'plugins.importexport','crossref','',0,0),(2,0,0,0,'2019-02-28 20:58:45',1,'plugins.importexport','datacite','',0,0),(1,0,1,0,'2019-02-28 20:58:45',1,'plugins.importexport','quickSubmit','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.importexport','pubmed','',0,0),(2,0,0,0,'2019-02-28 20:58:45',1,'plugins.importexport','medra','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.oaiMetadataFormats','dc','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.oaiMetadataFormats','rfc1807','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.oaiMetadataFormats','marc','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.oaiMetadataFormats','marcxml','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.paymethod','paypal','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.paymethod','manual','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.pubIds','urn','URNPubIdPlugin',1,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.pubIds','doi','DOIPubIdPlugin',1,0),(2,0,0,0,'2019-02-28 20:58:45',1,'plugins.reports','reviewReport','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.reports','articles','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.reports','views','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.reports','subscriptions','',0,0),(1,1,0,0,'2019-02-28 20:58:45',1,'plugins.reports','counterReport','',0,0),(1,0,0,0,'2019-02-28 20:58:45',1,'plugins.themes','default','DefaultThemePlugin',1,0),(3,1,2,0,'2019-02-28 20:58:43',0,'core','ojs2','',0,1),(1,0,2,0,'2019-12-19 15:29:23',1,'plugins.generic','sword','SwordPlugin',1,0),(0,0,0,0,'2019-12-19 15:29:46',1,'plugins.gateways','swordserver','',1,0),(1,0,0,0,'2019-12-19 15:29:47',1,'plugins.generic','alm','AlmPlugin',1,0),(1,0,2,0,'2019-12-19 15:29:48',1,'plugins.themes','defaultManuscript','DefaultManuscriptChildThemePlugin',0,0),(1,0,1,0,'2020-01-30 20:12:14',1,'plugins.generic','pdfJsViewer','PdfJsViewerPlugin',1,0),(2,0,3,1,'2020-01-30 20:12:14',1,'plugins.generic','translator','TranslatorPlugin',1,1),(1,1,1,1,'2020-01-30 20:12:14',1,'plugins.generic','orcidProfile','OrcidProfilePlugin',1,0),(3,2,0,0,'2020-01-30 20:11:49',1,'core','ojs2','',0,1);
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-06 14:22:11
