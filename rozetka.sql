-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: rozetka
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

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
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `accessory_product_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_accessories_on_product_id` (`product_id`),
  KEY `index_accessories_on_accessory_product_id` (`accessory_product_id`),
  KEY `index_accessories_on_discount_id` (`discount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories`
--

LOCK TABLES `accessories` WRITE;
/*!40000 ALTER TABLE `accessories` DISABLE KEYS */;
INSERT INTO `accessories` VALUES (1,12,1,1,'2013-04-02 15:20:11','2013-04-02 15:20:11');
/*!40000 ALTER TABLE `accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Asus','2013-04-02 10:26:28','2013-04-02 10:26:28'),(2,'Acer','2013-04-02 10:26:28','2013-04-02 10:26:28'),(3,'Apple','2013-04-02 10:26:28','2013-04-02 10:26:28'),(4,'Lenovo','2013-04-02 10:26:28','2013-04-02 10:26:28'),(5,'Google','2013-04-02 10:26:29','2013-04-02 10:26:29'),(6,'Assus','2013-04-02 10:26:29','2013-04-02 10:26:29');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,20,'2013-04-02 15:19:57','2013-04-02 15:19:57');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `in_filter` tinyint(1) DEFAULT NULL,
  `primary` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
INSERT INTO `features` VALUES (1,'Диагональ экрана',1,1,'2013-04-02 10:15:42','2013-04-02 10:21:55'),(2,'Разрешение экрана',1,1,'2013-04-02 10:15:42','2013-04-02 10:22:00'),(3,'Вид экрана',NULL,NULL,'2013-04-02 10:15:42','2013-04-02 10:15:42'),(4,'Тип экрана',0,0,'2013-04-02 10:15:42','2013-04-02 13:32:10'),(5,'Операционная система',NULL,NULL,'2013-04-02 10:15:42','2013-04-02 10:15:42'),(6,'Процессор',1,1,'2013-04-02 10:15:42','2013-04-02 10:22:11'),(7,'Количество ядер',NULL,NULL,'2013-04-02 10:15:42','2013-04-02 10:15:42'),(8,'Оперативная память',NULL,NULL,'2013-04-02 10:15:42','2013-04-02 10:15:42'),(9,'Емкость накопителя',1,0,'2013-04-02 10:15:42','2013-04-02 13:32:17'),(10,'Поддержка карт памяти',1,1,'2013-04-02 10:15:42','2013-04-02 10:21:50'),(11,'Цвет',1,1,'2013-04-02 10:15:42','2013-04-02 10:21:39');
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_photos_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'2012-09-12_23.21.35.jpg','image/jpeg',1656921,'2013-04-02 14:48:09','2013-04-02 14:47:08','2013-04-02 14:48:11',12),(2,'2012-09-12_23.20.47.jpg','image/jpeg',1591787,'2013-04-02 14:48:49','2013-04-02 14:48:52','2013-04-02 14:49:06',12);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price_cents` int(11) NOT NULL DEFAULT '0',
  `price_currency` varchar(255) NOT NULL DEFAULT 'USD',
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_prices_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,68000,'USD',1,'2013-04-02 10:15:42','2013-04-02 10:15:42'),(2,67900,'USD',2,'2013-04-02 10:15:42','2013-04-02 10:15:42'),(3,59900,'USD',3,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(4,38200,'USD',4,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(5,37000,'USD',5,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(6,39200,'USD',6,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(7,59900,'USD',7,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(8,38200,'USD',8,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(9,92700,'USD',9,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(10,92400,'USD',10,'2013-04-02 10:15:43','2013-04-02 10:15:43'),(11,89000,'USD',11,'2013-04-02 10:15:44','2013-04-02 10:15:44'),(12,88400,'USD',12,'2013-04-02 10:15:44','2013-04-02 10:15:44');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_features`
--

DROP TABLE IF EXISTS `product_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `feature_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_product_features_on_product_id` (`product_id`),
  KEY `index_product_features_on_feature_id` (`feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_features`
--

LOCK TABLES `product_features` WRITE;
/*!40000 ALTER TABLE `product_features` DISABLE KEYS */;
INSERT INTO `product_features` VALUES (1,1,1,'10.1\"','2013-04-02 10:15:42','2013-04-02 10:15:42'),(2,1,2,'1920х1200','2013-04-02 10:15:42','2013-04-02 10:15:42'),(3,1,3,'Емкостный','2013-04-02 10:15:42','2013-04-02 10:15:42'),(4,1,4,'Super IPS+','2013-04-02 10:15:42','2013-04-02 10:15:42'),(5,1,5,'Android 4.0','2013-04-02 10:15:42','2013-04-02 10:15:42'),(6,1,6,'NVIDIA Tegra 3 (1.6 ГГц)','2013-04-02 10:15:42','2013-04-02 10:15:42'),(7,1,7,'4','2013-04-02 10:15:42','2013-04-02 10:15:42'),(8,1,8,'1 ГБ','2013-04-02 10:15:42','2013-04-02 10:15:42'),(9,1,9,'64 ГБ','2013-04-02 10:15:42','2013-04-02 10:15:42'),(10,1,10,'microSD/microSDHC','2013-04-02 10:15:42','2013-04-02 10:15:42'),(11,1,11,'Gold','2013-04-02 10:15:42','2013-04-02 10:15:42'),(12,2,1,'10.1\"','2013-04-02 10:15:42','2013-04-02 10:15:42'),(13,2,2,'1280x800','2013-04-02 10:15:42','2013-04-02 10:15:42'),(14,2,3,'Емкостный','2013-04-02 10:15:42','2013-04-02 10:15:42'),(15,2,4,'Super AMOLED','2013-04-02 10:15:42','2013-04-02 10:15:42'),(16,2,5,'Android 4.0','2013-04-02 10:15:42','2013-04-02 10:15:42'),(17,2,6,'Qualcomm Snapdragon S4 8260A (1.5 ГГц)','2013-04-02 10:15:42','2013-04-02 10:15:42'),(18,2,7,'2','2013-04-02 10:15:42','2013-04-02 10:15:42'),(19,2,8,'1 ГБ','2013-04-02 10:15:42','2013-04-02 10:15:42'),(20,2,9,'32 ГБ','2013-04-02 10:15:42','2013-04-02 10:15:42'),(21,2,10,'microSD/microSDHC','2013-04-02 10:15:42','2013-04-02 10:15:42'),(22,2,11,'Brown','2013-04-02 10:15:43','2013-04-02 10:15:43'),(23,3,1,'10.1\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(24,3,2,'1920х1200','2013-04-02 10:15:43','2013-04-02 10:15:43'),(25,3,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(26,3,4,'Super IPS+','2013-04-02 10:15:43','2013-04-02 10:15:43'),(27,3,5,'Android 4.0','2013-04-02 10:15:43','2013-04-02 10:15:43'),(28,3,6,'NVIDIA Tegra 3 (1.6 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(29,3,7,'4','2013-04-02 10:15:43','2013-04-02 10:15:43'),(30,3,8,'1 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(31,3,9,'64 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(32,3,10,'microSD/microSDHC','2013-04-02 10:15:43','2013-04-02 10:15:43'),(33,3,11,'Gold','2013-04-02 10:15:43','2013-04-02 10:15:43'),(34,4,1,'10.1\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(35,4,2,'1280x800','2013-04-02 10:15:43','2013-04-02 10:15:43'),(36,4,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(37,4,4,'IPS','2013-04-02 10:15:43','2013-04-02 10:15:43'),(38,4,5,'Android 4.1','2013-04-02 10:15:43','2013-04-02 10:15:43'),(39,4,6,'NVIDIA Tegra 3 (1.2 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(40,4,7,'4','2013-04-02 10:15:43','2013-04-02 10:15:43'),(41,4,8,'1 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(42,4,9,'16 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(43,4,10,'microSD/microSDHC','2013-04-02 10:15:43','2013-04-02 10:15:43'),(44,4,11,'Blue','2013-04-02 10:15:43','2013-04-02 10:15:43'),(45,5,1,'7\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(46,5,2,'1280x800','2013-04-02 10:15:43','2013-04-02 10:15:43'),(47,5,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(48,5,4,'IPS','2013-04-02 10:15:43','2013-04-02 10:15:43'),(49,5,5,'Android 4.2','2013-04-02 10:15:43','2013-04-02 10:15:43'),(50,5,6,'NVIDIA Tegra 3 (1.2 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(51,5,7,'4','2013-04-02 10:15:43','2013-04-02 10:15:43'),(52,5,8,'1 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(53,5,9,'32 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(54,5,10,'нет','2013-04-02 10:15:43','2013-04-02 10:15:43'),(55,5,11,'Black','2013-04-02 10:15:43','2013-04-02 10:15:43'),(56,6,1,'10.1\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(57,6,2,'1280x800','2013-04-02 10:15:43','2013-04-02 10:15:43'),(58,6,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(59,6,4,'IPS','2013-04-02 10:15:43','2013-04-02 10:15:43'),(60,6,5,'Android 4.0','2013-04-02 10:15:43','2013-04-02 10:15:43'),(61,6,6,'NVIDIA Tegra 3 (1.2 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(62,6,7,'4','2013-04-02 10:15:43','2013-04-02 10:15:43'),(63,6,8,'1 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(64,6,9,'16 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(65,6,10,'microSD/microSDHC','2013-04-02 10:15:43','2013-04-02 10:15:43'),(66,6,11,'Blue','2013-04-02 10:15:43','2013-04-02 10:15:43'),(67,7,1,'10.1\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(68,7,2,'1366x768','2013-04-02 10:15:43','2013-04-02 10:15:43'),(69,7,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(70,7,4,'IPS','2013-04-02 10:15:43','2013-04-02 10:15:43'),(71,7,5,'Windows 8','2013-04-02 10:15:43','2013-04-02 10:15:43'),(72,7,6,'Intel Atom Z2760 (1.8 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(73,7,7,'2','2013-04-02 10:15:43','2013-04-02 10:15:43'),(74,7,8,'2 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(75,7,9,'64 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(76,7,10,'microSD/microSDHC','2013-04-02 10:15:43','2013-04-02 10:15:43'),(77,7,11,'Black','2013-04-02 10:15:43','2013-04-02 10:15:43'),(78,8,1,'10.1\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(79,8,2,'1280x800','2013-04-02 10:15:43','2013-04-02 10:15:43'),(80,8,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(81,8,4,'IPS','2013-04-02 10:15:43','2013-04-02 10:15:43'),(82,8,5,'Android 4.1','2013-04-02 10:15:43','2013-04-02 10:15:43'),(83,8,6,'NVIDIA Tegra 3 (1.2 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(84,8,7,'4','2013-04-02 10:15:43','2013-04-02 10:15:43'),(85,8,8,'1 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(86,8,9,'16 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(87,8,10,'microSD/microSDHC','2013-04-02 10:15:43','2013-04-02 10:15:43'),(88,8,11,'White','2013-04-02 10:15:43','2013-04-02 10:15:43'),(89,9,1,'10.1\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(90,9,2,'1280x800','2013-04-02 10:15:43','2013-04-02 10:15:43'),(91,9,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(92,9,4,'Super IPS+','2013-04-02 10:15:43','2013-04-02 10:15:43'),(93,9,5,'Android 4.0','2013-04-02 10:15:43','2013-04-02 10:15:43'),(94,9,6,'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(95,9,7,'4','2013-04-02 10:15:43','2013-04-02 10:15:43'),(96,9,8,'2 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(97,9,9,'64 ГБ','2013-04-02 10:15:43','2013-04-02 10:15:43'),(98,9,10,'нет','2013-04-02 10:15:43','2013-04-02 10:15:43'),(99,9,11,'White','2013-04-02 10:15:43','2013-04-02 10:15:43'),(100,10,1,'10.1\"','2013-04-02 10:15:43','2013-04-02 10:15:43'),(101,10,2,'1280x800','2013-04-02 10:15:43','2013-04-02 10:15:43'),(102,10,3,'Емкостный','2013-04-02 10:15:43','2013-04-02 10:15:43'),(103,10,4,'Super IPS+','2013-04-02 10:15:43','2013-04-02 10:15:43'),(104,10,5,'Android 4.0','2013-04-02 10:15:43','2013-04-02 10:15:43'),(105,10,6,'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)','2013-04-02 10:15:43','2013-04-02 10:15:43'),(106,10,7,'4','2013-04-02 10:15:43','2013-04-02 10:15:43'),(107,10,8,'2 ГБ','2013-04-02 10:15:44','2013-04-02 10:15:44'),(108,10,9,'64 ГБ','2013-04-02 10:15:44','2013-04-02 10:15:44'),(109,10,10,'нет','2013-04-02 10:15:44','2013-04-02 10:15:44'),(110,10,11,'Black','2013-04-02 10:15:44','2013-04-02 10:15:44'),(111,11,1,'10.1\"','2013-04-02 10:15:44','2013-04-02 10:15:44'),(112,11,2,'1280x800','2013-04-02 10:15:44','2013-04-02 10:15:44'),(113,11,3,'Емкостный','2013-04-02 10:15:44','2013-04-02 10:15:44'),(114,11,4,'Super IPS+','2013-04-02 10:15:44','2013-04-02 10:15:44'),(115,11,5,'Android 4.0','2013-04-02 10:15:44','2013-04-02 10:15:44'),(116,11,6,'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)','2013-04-02 10:15:44','2013-04-02 10:15:44'),(117,11,7,'4','2013-04-02 10:15:44','2013-04-02 10:15:44'),(118,11,8,'2 ГБ','2013-04-02 10:15:44','2013-04-02 10:15:44'),(119,11,9,'32 ГБ','2013-04-02 10:15:44','2013-04-02 10:15:44'),(120,11,10,'нет','2013-04-02 10:15:44','2013-04-02 10:15:44'),(121,11,11,'White','2013-04-02 10:15:44','2013-04-02 10:15:44'),(122,12,1,'10.1\"','2013-04-02 10:15:44','2013-04-02 10:15:44'),(123,12,2,'1280x800','2013-04-02 10:15:44','2013-04-02 10:15:44'),(124,12,3,'Емкостный','2013-04-02 10:15:44','2013-04-02 10:15:44'),(125,12,4,'Super IPS+','2013-04-02 10:15:44','2013-04-02 10:15:44'),(126,12,5,'Android 4.0','2013-04-02 10:15:44','2013-04-02 10:15:44'),(127,12,6,'Qualcomm Snapdragon S4 Pro 8064 (1.5 ГГц)','2013-04-02 10:15:44','2013-04-02 10:15:44'),(128,12,7,'4','2013-04-02 10:15:44','2013-04-02 10:15:44'),(129,12,8,'2 ГБ','2013-04-02 10:15:44','2013-04-02 10:15:44'),(130,12,9,'32 ГБ','2013-04-02 10:15:44','2013-04-02 10:15:44'),(131,12,10,'нет','2013-04-02 10:15:44','2013-04-02 10:15:44'),(132,12,11,'Black','2013-04-02 10:15:44','2013-04-02 10:15:44');
/*!40000 ALTER TABLE `product_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` text,
  `brand_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_brand_id` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Asus Transformer Pad Infinity TF700T 64GB Doc (TF700T-1I101A) Champagne Gold + Карта памяти на 16GB в подарок!',NULL,NULL,'2013-04-02 10:15:42','2013-04-02 10:27:39',NULL,1),(2,'Asus PadFone A66 PS 32GB (A66-1A088WWE) Brown + Карта памяти на 32GB в подарок!!!',NULL,NULL,'2013-04-02 10:15:42','2013-04-02 10:27:39',NULL,2),(3,'Asus Transformer Pad Infinity TF700T 64GB (TF700T-1I100A) Champagne Gold + Карта памяти на 32GB в подарок!',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,3),(4,'Asus MeMO Pad ME301T 16GB (ME301T-1B070A) Blue',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,4),(5,'Asus Google Nexus 7C 3G 32GB (ASUS-1B013A) Официальная гарантия!!!',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,5),(6,'Asus Eee Pad Transformer TF300T 16GB (TF300T-1K063A) Blue',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,1),(7,'Asus VivoTab Smart ME400C 64GB (ME400C-1B007W) Black',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,3),(8,'Asus MeMO Pad ME301T 16GB (ME301T-1A066A) White',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,3),(9,'Asus PadFone 2 A68 PS 64GB (A68-1B231RUS) White',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,6),(10,'Asus PadFone 2 A68 PS 64GB (A68-1A230RUS) Black',NULL,NULL,'2013-04-02 10:15:43','2013-04-02 10:27:40',NULL,6),(11,'Asus PadFone 2 A68 PS 32GB (A68-1B229RUS) White',NULL,NULL,'2013-04-02 10:15:44','2013-04-02 10:27:40',NULL,6),(12,'Asus PadFone 2 A68 PS 32GB (A68-1A200RUS) Black','','','2013-04-02 10:15:44','2013-04-02 14:53:37','<h2 class=\"what\"><span>What is Lorem Ipsum?</span></h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>',6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rails_admin_histories`
--

DROP TABLE IF EXISTS `rails_admin_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rails_admin_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `username` varchar(255) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `year` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_rails_admin_histories` (`item`,`table`,`month`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rails_admin_histories`
--

LOCK TABLES `rails_admin_histories` WRITE;
/*!40000 ALTER TABLE `rails_admin_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `rails_admin_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_comments`
--

DROP TABLE IF EXISTS `review_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `comment` text,
  `review_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_review_comments_on_review_id` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_comments`
--

LOCK TABLES `review_comments` WRITE;
/*!40000 ALTER TABLE `review_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_usefullnesses`
--

DROP TABLE IF EXISTS `review_usefullnesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review_usefullnesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usefull` tinyint(1) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_review_usefullnesses_on_review_id` (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_usefullnesses`
--

LOCK TABLES `review_usefullnesses` WRITE;
/*!40000 ALTER TABLE `review_usefullnesses` DISABLE KEYS */;
INSERT INTO `review_usefullnesses` VALUES (1,1,1,'2013-04-02 14:54:20','2013-04-02 14:54:20'),(2,0,1,'2013-04-02 14:54:25','2013-04-02 14:54:25'),(3,1,1,'2013-04-02 14:54:33','2013-04-02 14:54:33'),(4,1,1,'2013-04-02 14:54:40','2013-04-02 14:54:40'),(5,1,1,'2013-04-02 14:54:47','2013-04-02 14:54:47'),(6,1,1,'2013-04-02 14:54:52','2013-04-02 14:54:52'),(7,1,3,'2013-04-02 14:55:13','2013-04-02 14:55:13'),(8,0,3,'2013-04-02 14:55:19','2013-04-02 14:55:19');
/*!40000 ALTER TABLE `review_usefullnesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `marg` int(11) DEFAULT NULL,
  `pros` varchar(255) DEFAULT NULL,
  `cons` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `index_reviews_on_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'Вова','jaromudr@gmail.com',12,5,'cool','opa','2013-04-02 14:51:50','2013-04-02 14:51:50','Some default comment'),(2,'Ігор','jaromudr@gmail.com',12,4,'','','2013-04-02 14:52:15','2013-04-02 14:52:15',''),(3,'Анастасія','',12,4,'','','2013-04-02 14:52:43','2013-04-02 14:52:43','Тестовий коментарій');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130330190423'),('20130330195421'),('20130330195628'),('20130330195629'),('20130330202939'),('20130330231314'),('20130330232144'),('20130331000312'),('20130331002717'),('20130331003229'),('20130331013711'),('20130331015336'),('20130331023801'),('20130331023937'),('20130331032815'),('20130331032931'),('20130331210910'),('20130331210947');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `var` varchar(255) NOT NULL,
  `value` text,
  `thing_id` int(11) DEFAULT NULL,
  `thing_type` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_settings_on_thing_type_and_thing_id_and_var` (`thing_type`,`thing_id`,`var`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jaromudr@gmail.com','$2a$10$p9RDVenfjuZd/ib4PBEOUOrrt3CShR.noQl9a2hmN4tmk62bsSvK6',NULL,NULL,'2013-04-02 10:21:13',1,'2013-04-02 10:21:13','2013-04-02 10:21:13','127.0.0.1','127.0.0.1','2013-04-02 10:20:16','2013-04-02 10:21:13');
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

-- Dump completed on 2013-04-02 20:25:42
