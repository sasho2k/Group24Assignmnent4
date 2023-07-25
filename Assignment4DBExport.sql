CREATE DATABASE  IF NOT EXISTS `cap3104` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cap3104`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cap3104
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priority` (
  `priority_id` int NOT NULL AUTO_INCREMENT,
  `priority_value` int NOT NULL,
  `priority_text` varchar(50) NOT NULL,
  PRIMARY KEY (`priority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,5,'Low'),(2,5,'Low'),(3,3,'Medium'),(4,3,'Medium'),(5,1,'High'),(6,5,'Low'),(7,3,'Medium'),(8,3,'Medium'),(9,1,'High'),(10,5,'Low'),(11,3,'Medium'),(12,3,'Medium'),(13,3,'Medium'),(14,5,'Low'),(15,5,'Low'),(16,1,'High'),(17,3,'Medium'),(18,5,'Low'),(19,5,'Low'),(20,3,'Medium'),(21,5,'Low'),(22,3,'Medium'),(23,5,'Low'),(24,5,'Low'),(25,5,'Low'),(26,3,'Medium'),(27,5,'Low'),(28,1,'High'),(29,3,'Medium'),(30,1,'High'),(31,3,'Medium'),(32,5,'Low'),(33,5,'Low'),(34,3,'Medium'),(35,3,'Medium'),(36,5,'Low'),(37,1,'High'),(38,3,'Medium'),(39,5,'Low'),(40,5,'Low'),(41,5,'Low'),(42,1,'High'),(43,3,'Medium'),(44,5,'Low'),(45,5,'Low'),(46,3,'Medium'),(47,1,'High'),(48,3,'Medium'),(49,5,'Low'),(50,5,'Low'),(51,5,'Low'),(52,1,'High'),(53,3,'Medium'),(54,5,'Low'),(55,5,'Low'),(56,3,'Medium'),(57,5,'Low'),(58,3,'Medium'),(59,5,'Low'),(60,5,'Low'),(61,5,'Low'),(62,1,'High'),(63,1,'High'),(64,5,'Low'),(65,5,'Low'),(66,3,'Medium'),(67,1,'High'),(68,5,'Low'),(69,5,'Low'),(70,3,'Medium'),(71,5,'Low'),(72,1,'High'),(73,5,'Low'),(74,5,'Low'),(75,5,'Low'),(76,5,'Low'),(77,3,'Medium'),(78,5,'Low'),(79,5,'Low'),(80,5,'Low'),(81,1,'High'),(82,1,'High'),(83,3,'Medium'),(84,5,'Low'),(85,5,'Low'),(86,3,'Medium');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement`
--

DROP TABLE IF EXISTS `requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirement` (
  `requirement_id` int NOT NULL AUTO_INCREMENT,
  `requirement_number` varchar(25) DEFAULT NULL,
  `requirement_text` text NOT NULL,
  PRIMARY KEY (`requirement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement`
--

LOCK TABLES `requirement` WRITE;
/*!40000 ALTER TABLE `requirement` DISABLE KEYS */;
INSERT INTO `requirement` VALUES (1,'3.2.1.1.1','An icon shall be selected during detailed design to show a gate in a closed position.'),(2,'3.2.1.1.2','An icon shall be selected during detailed design to show a gate in an open position.'),(3,'3.2.1.1.3','An icon shall be selected during detailed design to show a gate in a partially open (15%) open\nposition.'),(4,'3.2.1.1.4','The gate icon shall be configurable to show the name of the gate with the icon.'),(5,'3.2.1.1.5','The gate icon shall be configurable to show the state of the gate (e.g., open or close).'),(6,'3.2.1.1.6','The gate icon shall be configurable to show the status of the gate (operational, failed, or no data).\nThe color of the gate icon shall be changed to show the status of the gate.'),(7,'3.2.1.1.7','When the operator moves the mouse over a gate icon a text window shall be displayed showing a \nsummary of the gate status. The details of the summary status display will be defined in the GUI design document.'),(8,'3.2.1.1.8','The operator shall be able to activate a detailed device status window for the selected gate by double\nleft clicking on the icon. This action shall cause a circle to be displayed over the gate icon for as long as the detailed device status window is displayed for that gate.'),(9,'3.2.1.1.9','The operator shall be able to activate a device control window for the selected gate by right clicking\non the icon. The right click on the icons shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed \nover the gate icon for as long as the device control window is displayed for that gate.'),(10,'3.2.1.1.9.1','If operation of the device is locked out for safety reasons a command option will be “grayed out”\nand not selectable.'),(11,'3.2.1.2.1','An icon shall be selected during detailed design to indicate a group of popups in an “Up” or entrance\nclosed position.'),(12,'3.2.1.2.2','An icon shall be selected during detailed design to indicate a group of popups in a “Down” or\nentrance opened position.'),(13,'3.2.1.2.3','An icon shall be selected during detailed design to indicate a failure status when some popups in a\ngroup are in a “Down” position and some popups in the same group are in an “Up’ position.'),(14,'3.2.1.2.4','The popup icon shall be configurable to display the name of the popup group.'),(15,'3.2.1.2.5','The popup icon shall be configurable to display the state of the popup group (up or down).'),(16,'3.2.1.2.6','The popup icon shall be configurable to display the status of the popup group. The color of the icon\nshall be changed to show the status of the popup group.'),(17,'3.2.1.2.7','When the operator moves the mouse over a popup icon a text window shall be displayed showing a\nsummary of the popup group status. The details of the status display will be defined in the GUI design document.'),(18,'3.2.1.2.8','The operator shall be able to activate a detailed device status window for the selected popup group by\ndouble left clicking on the icon. A circle shall be displayed over the icon as long as the detailed status window is displayed for the icon.'),(19,'3.2.1.2.9','The operator shall be able to activate a device control window for the selected popup by right clicking\non the icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the \ndevice control window is displayed for the icon.'),(20,'3.2.1.2.9.1','If operation of the device is locked out for safety reasons a command option will be “grayed out”\nand not selectable.'),(21,'3.2.1.3.1','An icon shall be selected during detailed design to indicate changeable message signs.'),(22,'3.2.1.3.2','An icon shall be selected during detailed design to indicate a changeable message sign that is\ndisplaying a message.'),(23,'3.2.1.3.3','The CMS icon shall be configurable to display the name of the sign with the icon.'),(24,'3.2.1.3.4','The CMS icon shall be configurable to display an abbreviated message text with the icon.'),(25,'3.2.1.3.5','The CMS icon shall be configurable to display the status of the sign associated with the icon. The\nCMS icon color shall represent the operational status of the CMS sign: green for operational, yellow for operational with errors, gray for no communications and red for failed.'),(26,'3.2.1.3.6','If the operator moves the mouse over the CMS icon then a text window shall be displayed with a\nsummary of the operational state and status of the sign and the text of any message being displayed on the sign.'),(27,'3.2.1.3.7','The operator shall be able to activate a detailed device status window for the sign by double left\nclicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.'),(28,'3.2.1.3.8','The operator shall be able to activate a device control window for the CMS sign by right clicking on\nthe selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as \nlong as the device control window is displayed for that icon.'),(29,'3.2.1.3.8.1','If operation of the device is locked out for safety reasons a command option will be “grayed out”\nand not selectable.'),(30,'3.2.1.4.1','An icon shall be selected to indicate a CCTV camera'),(31,'3.2.1.4.2','The camera icon shall be configurable to show the name of the camera with the icon.'),(32,'3.2.1.4.3','The camera icon shall be configurable to show the state of the camera.'),(33,'3.2.1.4.4','The camera icon shall be configurable to show the status of the camera. The color of the camera icon\nshall be changed to show the status of the camera.'),(34,'3.2.1.4.5','When a user moves the mouse over a camera icon a text window shall be displayed showing a\nsummary of the camera status.'),(35,'3.2.1.4.6','The user shall be able to activate a detailed device status window for the selected camera by double\nleft clicking on the icon. This action shall cause a circle to be displayed over the camera icon for as long as the detailed device status window is displayed for that camera.'),(36,'3.2.1.4.7','The user shall be able to activate a device control window for the selected camera by right clicking on\nthe icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed over the camera \nicon for as long as the device control window is displayed for that camera.'),(37,'3.2.1.5.1','An icon shall be selected during detailed design to indicate a group of draw lights that are off.'),(38,'3.2.1.5.2','An icon shall be selected during detailed design to indicate a group of draw lights that are on.'),(39,'3.2.1.5.3','An icon shall be selected during detailed design to indicate a group of draw lights where some are on\nand some are off.'),(40,'3.2.1.5.4','The draw light icon shall be configurable to display the name of the draw lights.'),(41,'3.2.1.5.5','The draw light icon shall be configurable to display the state of the draw lights.'),(42,'3.2.1.5.6','The draw light icon shall be configurable to display the status of the draw lights. The color of the\ndraw light icon shall represent the status of the draw light: green for operational, yellow for operational with errors, gray for no communications and red for failed.'),(43,'3.2.1.5.7','When the operator moves the mouse over a draw light icon a text window shall be displayed showing\na summary of the status of the group of draw lights. The details of the status display will be defined in the GUI design document.'),(44,'3.2.1.5.8','The operator shall be able to activate a detailed device status window for the draw lights by double\nleft clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.'),(45,'3.2.1.5.9','The operator shall be able to activate a device control window for the draw lights by right clicking on\nthe selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long \nas the device control window is displayed for that icon.'),(46,'3.2.1.5.9.1','If operation of the device is locked out for safety reasons the command option will be “grayed out”\nand not selectable.'),(47,'3.2.1.6.1','An icon shall be selected during detailed design to indicate a group of wrong way lights that are off.'),(48,'3.2.1.6.2','An icon shall be selected during detailed design to indicate a group of wrong way lights that are on.'),(49,'3.2.1.6.3','An icon shall be selected during detailed design to indicate a group of wrong way lights where some\nare on and some are off.'),(50,'3.2.1.6.4','The wrong way light icon shall be configurable to display the name of the draw lights.'),(51,'3.2.1.6.5','The wrong way light icon shall be configurable to display the state of the wrong way lights.'),(52,'3.2.1.6.6','The wrong way light icon shall be configurable to display the status of the group of wrong way\nlights. The color of the wrong way light icon shall represent the status of the wrong way light: green for operational, yellow for operational with errors, gray for no communications and \nred for failed.'),(53,'3.2.1.6.7',' When the operator moves the mouse over a wrong way light icon a text window shall be displayed\nshowing a summary of the status of the group of wrong way lights. The details of the status display will be defined in the GUI design document.'),(54,'3.2.1.6.8','The operator shall be able to activate a detailed device status window for the wrong way lights by\ndouble left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.'),(55,'3.2.1.6.9','The operator shall be able to activate the control window for the wrong way light by right clicking on\nthe selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. \nA circle shall be displayed over the icon as long as the device control window is displayed for that icon.'),(56,'3.2.1.6.9.1','If operation of the device is locked out for safety a command option will be “grayed out” and not\nselectable.'),(57,'3.2.1.7.1','An icon shall be selected during detailed design to indicate a loop detector.'),(58,'3.2.1.7.2','An icon shall be selected during detailed design to indicate a group of loop detectors.'),(59,'3.2.1.7.3','The loop detector and group detector icons shall use color to indicate either speed, volume, or\noccupancy is within a specified range or if no data is available from the detector or from all loop detectors in a group.'),(60,'3.2.1.7.4','The color used to indicate a range shall be configurable.'),(61,'3.2.1.7.5','The data being displayed by color shall be configurable.'),(62,'3.2.1.7.6','The range being displayed by a color shall be configurable.'),(63,'3.2.1.7.7',' The operator shall be able to configure the color, the range and/or the data type without restarting the\napplication.'),(64,'3.2.1.7.8','The loop detector icon shall be configurable to display the name of the loop detector.'),(65,'3.2.1.7.9','The loop detector icon shall be configurable to display the N second volume, speed and occupancy\nvalues as text associated with the icon. The value on N shall be configurable.'),(66,'3.2.1.7.10','The group detector icon shall be configurable to display the name of the detector group name as text\nwith the icon.'),(67,'3.2.1.7.11','The group detector icon shall be configurable to display the N second average of volume, speed and\noccupancy for all detectors in the group as text with the icon. The value of N shall be configurable.'),(68,'3.2.1.7.12','The detector loop icon shall be configurable to display the status of the loop detector or group of loop\ndetectors.'),(69,'3.2.1.7.13','When the operator moves the mouse over a detector loop icon a text window shall be displayed\nshowing a summary of the status of the loop detector or the group of detector loops. The details of the status display will be defined in the GUI design document.'),(70,'3.2.1.7.14','The operator shall be able to activate a detailed device status window for the loop or group of loops\nby double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window for that icon.'),(71,'3.2.1.8.1','Icons shall be selected during detailed design to represent the FCUs and the DCU/MCUs.'),(72,'3.2.1.8.2','The FCU icon and the DCU/MCU icon shall be configurable to show the name of the site with the icon.'),(73,'3.2.1.8.3','The icons shall be configurable to show the status of the equipment at the site. The color of the icons\nshall be changed to show the status of the equipment.'),(74,'3.2.1.8.4','When the operator moves the mouse over an FCU or DCU/MCU icon a text window shall be\ndisplayed showing a summary of the site status. The details of the status display will be defined in the GUI design document.'),(75,'3.2.1.8.5','The operator shall be able to activate a detailed device status window for the selected site by double\nleft clicking on the icon. This action shall cause a circle to be displayed over the icon for as long as the detailed device status window is displayed for that site.'),(76,'3.2.1.9.1','An icon shall represent the end point of the HOV lanes (North and South). The icon shall have\ndifferent shapes to represent that the end point is closed, open Southbound or open Northbound.'),(77,'3.2.1.9.2','The end point icon shall be configurable to show the name of the end point associated with the icon.'),(78,'3.2.1.9.3','The end point icon shall be configurable to show the state of the end point associated with the icon.'),(79,'3.2.1.9.4','The end point icon shall be configurable to show the status of the end point. The color of the icon\nshall be changed to show the status of the end point.'),(80,'3.2.1.9.5','When the operator moves the mouse over an end point icon a text window shall be displayed showing\na summary of the end point status. The details of the summary status display will be defined in the GUI design document.'),(81,'3.2.1.9.6','The operator shall be able to activate a detailed device status window for the selected end point by\ndouble left clicking on the icon. This action shall cause a circle to be displayed over the icon for as\nlong as the detailed device status window is displayed for that end point.'),(82,'3.2.1.10.1','An icon shall be selected during detailed design to represent active incidents.'),(83,'3.2.1.10.2','The incident icon shall be configurable to display the state of the incident.'),(84,'3.2.1.10.3','When the operator moves the mouse over an incident icon a text window shall be displayed showing\na summary of the incident state. The details of the summary state display will be defined in the GUI design document.'),(85,'3.2.1.10.4','The operator shall be able to activate a detailed incident state window for the selected incident by\ndouble left clicking on the icon. This action shall cause a circle to be displayed over the incident icon for as long as the detailed device status window is displayed for that incident.'),(86,'3.2.1.10.5','The operator shall be able to activate an edit window for the selected incident by right clicking on the\nicon. This action shall cause a circle to be displayed over the incident icon for as long as the edit window is displayed for that incident.');
/*!40000 ALTER TABLE `requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_value` int NOT NULL,
  `status_text` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,1,'Completed'),(2,1,'Completed'),(3,1,'Completed'),(4,2,'50% Complete'),(5,1,'Completed'),(6,1,'Completed'),(7,1,'Completed'),(8,1,'Completed'),(9,1,'Completed'),(10,1,'Completed'),(11,1,'Completed'),(12,1,'Completed'),(13,1,'Completed'),(14,2,'50% Complete'),(15,1,'Completed'),(16,1,'Completed'),(17,1,'Completed'),(18,1,'Completed'),(19,1,'Completed'),(20,1,'Completed'),(21,1,'Completed'),(22,1,'Completed'),(23,2,'50% Complete'),(24,1,'Completed'),(25,1,'Completed'),(26,1,'Completed'),(27,1,'Completed'),(28,1,'Completed'),(29,1,'Completed'),(30,1,'Completed'),(31,1,'Completed'),(32,1,'Completed'),(33,1,'Completed'),(34,2,'50% Complete'),(35,1,'Completed'),(36,1,'Completed'),(37,1,'Completed'),(38,1,'Completed'),(39,1,'Completed'),(40,2,'50% Complete'),(41,1,'Completed'),(42,1,'Completed'),(43,1,'Completed'),(44,1,'Completed'),(45,1,'Completed'),(46,1,'Completed'),(47,1,'Completed'),(48,1,'Completed'),(49,1,'Completed'),(50,2,'50% Complete'),(51,1,'Completed'),(52,1,'Completed'),(53,1,'Completed'),(54,1,'Completed'),(55,1,'Completed'),(56,1,'Completed'),(57,1,'Completed'),(58,1,'Completed'),(59,1,'Completed'),(60,2,'50% Complete'),(61,1,'Completed'),(62,1,'Completed'),(63,1,'Completed'),(64,1,'Completed'),(65,1,'Completed'),(66,1,'Completed'),(67,1,'Completed'),(68,1,'Completed'),(69,1,'Completed'),(70,1,'Completed'),(71,1,'Completed'),(72,1,'Completed'),(73,1,'Completed'),(74,2,'50% Complete'),(75,1,'Completed'),(76,1,'Completed'),(77,1,'Completed'),(78,1,'Completed'),(79,2,'50% Complete'),(80,1,'Completed'),(81,1,'Completed'),(82,1,'Completed'),(83,1,'Completed'),(84,1,'Completed'),(85,2,'50% Complete'),(86,1,'Completed');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking` (
  `tracking_id` int NOT NULL AUTO_INCREMENT,
  `requirement_id` int DEFAULT NULL,
  `priority_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`tracking_id`),
  KEY `requirement_id` (`requirement_id`),
  KEY `priority_id` (`priority_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`requirement_id`) REFERENCES `requirement` (`requirement_id`),
  CONSTRAINT `tracking_ibfk_2` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`priority_id`),
  CONSTRAINT `tracking_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,1,5,1),(2,2,5,1),(3,3,3,1),(4,4,3,2),(5,5,1,1),(6,6,5,1),(7,7,3,1),(8,8,3,1),(9,9,1,1),(10,10,5,1),(11,11,3,1),(12,12,3,1),(13,13,3,1),(14,14,5,2),(15,15,5,1),(16,16,1,1),(17,17,3,1),(18,18,5,1),(19,19,5,1),(20,20,3,1),(21,21,5,1),(22,22,3,1),(23,23,5,2),(24,24,5,1),(25,25,5,1),(26,26,3,1),(27,27,5,1),(28,28,1,1),(29,29,3,1),(30,30,1,1),(31,31,3,1),(32,32,5,1),(33,33,5,1),(34,34,3,2),(35,35,3,1),(36,36,5,1),(37,37,1,1),(38,38,3,1),(39,39,5,1),(40,40,5,2),(41,41,5,1),(42,42,1,1),(43,43,3,1),(44,44,5,1),(45,45,5,1),(46,46,3,1),(47,47,1,1),(48,48,3,1),(49,49,5,1),(50,50,5,2),(51,51,5,1),(52,52,1,1),(53,53,3,1),(54,54,5,1),(55,55,5,1),(56,56,3,1),(57,57,5,1),(58,58,3,1),(59,59,5,1),(60,60,5,2),(61,61,5,1),(62,62,1,1),(63,63,1,1),(64,64,5,1),(65,65,5,1),(66,66,3,1),(67,67,1,1),(68,68,5,1),(69,69,5,1),(70,70,3,1),(71,71,5,1),(72,72,1,1),(73,73,5,1),(74,74,5,2),(75,75,5,1),(76,76,5,1),(77,77,3,1),(78,78,5,1),(79,79,5,2),(80,80,5,1),(81,81,1,1),(82,82,1,1),(83,83,3,1),(84,84,5,1),(85,85,5,2),(86,86,3,1);
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `trackingview`
--

DROP TABLE IF EXISTS `trackingview`;
/*!50001 DROP VIEW IF EXISTS `trackingview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trackingview` AS SELECT 
 1 AS `requirement_number`,
 1 AS `requirement_text`,
 1 AS `priority_text`,
 1 AS `status_text`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `trackingview`
--

/*!50001 DROP VIEW IF EXISTS `trackingview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trackingview` AS select `r`.`requirement_number` AS `requirement_number`,`r`.`requirement_text` AS `requirement_text`,`p`.`priority_text` AS `priority_text`,`s`.`status_text` AS `status_text` from (((`tracking` `t` join `requirement` `r` on((`t`.`requirement_id` = `r`.`requirement_id`))) join `priority` `p` on((`t`.`priority_id` = `p`.`priority_id`))) join `status` `s` on((`t`.`status_id` = `s`.`status_id`))) */;
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

-- Dump completed on 2023-07-24 22:40:29
