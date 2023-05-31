-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: planificacion_academica
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(35) NOT NULL,
  `DESCRIPCION` varchar(300) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time NOT NULL,
  `LUGAR` varchar(40) DEFAULT NULL,
  `CEDULA_PERSONAL` char(18) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PERSONAL_ACTIVIDAD` (`CEDULA_PERSONAL`),
  CONSTRAINT `FK_PERSONAL_ACTIVIDAD` FOREIGN KEY (`CEDULA_PERSONAL`) REFERENCES `personal` (`CEDULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(45) NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'LENGUA Y LITERATURA',_binary ''),(2,'MATEMATICAS',_binary ''),(3,'APRENDER A EMPRENDER Y PROSPERAR',_binary ''),(4,'CIENCIAS SOCIALES',_binary ''),(5,'CIENCIAS NATURALES',_binary ''),(6,'EDUCACION FISICA Y PRACTICA DEPORTIVA',_binary ''),(7,'DERECHOS Y DIGNIDAD DE LA MUJER',_binary ''),(8,'FISICA',_binary '\0'),(9,'QUIMICA',_binary '\0'),(10,'BIOLOGIA',_binary '\0'),(11,'CRECIENDO EN VALORES',_binary ''),(12,'EDUCACION PARA APRENDER, EMPREDER Y PROSPERAR',_binary ''),(13,'TALLER DE ARTE Y CULTURA',_binary ''),(14,'LENGUA EXTRANJERA',_binary ''),(15,'HISTORIA',_binary '\0'),(16,'ASIGNATURA DE PRUEBA',_binary '\0');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloque`
--

DROP TABLE IF EXISTS `bloque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloque` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(20) DEFAULT NULL,
  `HORARIO` varchar(40) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque`
--

LOCK TABLES `bloque` WRITE;
/*!40000 ALTER TABLE `bloque` DISABLE KEYS */;
INSERT INTO `bloque` VALUES (1,'BLOQUE 1','7:00 AM - 7:45 AM',_binary ''),(2,'BLOQUE 2','7:45 AM - 8:30 AM',_binary ''),(3,'BLOQUE 3','8:30 AM - 9:15 AM',_binary ''),(4,'BLOQUE 4','9:15 AM - 10:00 AM',_binary ''),(5,'BLOQUE 5','10:30 AM - 11:15 AM',_binary ''),(6,'BLOQUE 6','11:15 AM - 12:00 MD',_binary ''),(7,'BLOQUE 1','12:30 MD - 1:15 PM',_binary ''),(8,'BLOQUE 2','1:15 PM - 2:00 PM',_binary ''),(9,'BLOQUE 3','2:00 PM - 2:45 PM',_binary ''),(10,'BLOQUE 4','2:45 PM - 3:30 PM',_binary ''),(11,'BLOQUE 5','3:45 PM - 4:30 PM',_binary ''),(12,'BLOQUE 6','4:30 PM - 5:15 PM',_binary '');
/*!40000 ALTER TABLE `bloque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloque_clase`
--

DROP TABLE IF EXISTS `bloque_clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloque_clase` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_HORARIO_BLOQUE` int NOT NULL,
  `ID_ASIGNATURA` int NOT NULL,
  `ID_GRUPO` int NOT NULL,
  `CEDULA_DOCENTE` char(18) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BC_HB` (`ID_HORARIO_BLOQUE`),
  KEY `FK_BC_ASIGNATURA` (`ID_ASIGNATURA`),
  KEY `FK_DOCENTE_BLOQUE` (`CEDULA_DOCENTE`),
  KEY `FK_BC_GRADO` (`ID_GRUPO`),
  CONSTRAINT `FK_BC_ASIGNATURA` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_BC_GRADO` FOREIGN KEY (`ID_GRUPO`) REFERENCES `grupo` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_BC_HB` FOREIGN KEY (`ID_HORARIO_BLOQUE`) REFERENCES `horario_bloque` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOCENTE_BLOQUE` FOREIGN KEY (`CEDULA_DOCENTE`) REFERENCES `personal` (`CEDULA`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque_clase`
--

LOCK TABLES `bloque_clase` WRITE;
/*!40000 ALTER TABLE `bloque_clase` DISABLE KEYS */;
INSERT INTO `bloque_clase` VALUES (3,1,1,3,'001-070985-0032X',_binary ''),(4,2,1,3,'001-070985-0032X',_binary ''),(5,3,2,3,'001-070985-0032X',_binary ''),(6,4,2,3,'001-070985-0032X',_binary ''),(7,5,6,3,'001-070985-0032X',_binary ''),(8,6,6,3,'001-070985-0032X',_binary ''),(9,7,14,3,'001-070985-0032X',_binary ''),(10,8,1,3,'001-070985-0032X',_binary ''),(11,9,11,3,'001-070985-0032X',_binary ''),(12,10,13,3,'001-070985-0032X',_binary ''),(13,11,13,3,'001-070985-0032X',_binary ''),(14,12,2,3,'001-070985-0032X',_binary ''),(15,13,1,3,'001-070985-0032X',_binary ''),(16,14,1,3,'001-070985-0032X',_binary ''),(17,15,2,3,'001-070985-0032X',_binary ''),(18,16,6,3,'001-070985-0032X',_binary ''),(19,17,12,3,'001-070985-0032X',_binary ''),(20,18,13,3,'001-070985-0032X',_binary ''),(21,19,2,3,'001-070985-0032X',_binary ''),(22,20,2,3,'001-070985-0032X',_binary ''),(23,21,1,3,'001-070985-0032X',_binary ''),(24,22,6,3,'001-070985-0032X',_binary ''),(25,23,13,3,'001-070985-0032X',_binary ''),(26,24,12,3,'001-070985-0032X',_binary ''),(27,25,2,3,'001-070985-0032X',_binary ''),(28,26,2,3,'001-070985-0032X',_binary ''),(29,27,1,3,'001-070985-0032X',_binary ''),(30,28,11,3,'001-070985-0032X',_binary ''),(31,29,13,3,'001-070985-0032X',_binary ''),(32,30,12,3,'001-070985-0032X',_binary ''),(39,1,1,4,'001-070988-0032W',_binary ''),(40,2,1,4,'001-070988-0032W',_binary ''),(41,3,2,4,'001-070988-0032W',_binary ''),(42,4,2,4,'001-070988-0032W',_binary ''),(43,5,6,4,'001-070988-0032W',_binary ''),(44,6,6,4,'001-070988-0032W',_binary ''),(45,7,14,4,'001-070988-0032W',_binary ''),(46,8,1,4,'001-070988-0032W',_binary ''),(47,9,11,4,'001-070988-0032W',_binary ''),(48,10,13,4,'001-070988-0032W',_binary ''),(49,11,13,4,'001-070988-0032W',_binary ''),(50,12,2,4,'001-070988-0032W',_binary ''),(51,13,1,4,'001-070988-0032W',_binary ''),(52,14,1,4,'001-070988-0032W',_binary ''),(53,15,2,4,'001-070988-0032W',_binary ''),(54,16,6,4,'001-070988-0032W',_binary ''),(55,17,12,4,'001-070988-0032W',_binary ''),(56,18,13,4,'001-070988-0032W',_binary ''),(57,19,2,4,'001-070988-0032W',_binary ''),(58,20,2,4,'001-070988-0032W',_binary ''),(59,21,1,4,'001-070988-0032W',_binary ''),(60,22,6,4,'001-070988-0032W',_binary ''),(61,23,13,4,'001-070988-0032W',_binary ''),(62,24,12,4,'001-070988-0032W',_binary ''),(63,25,2,4,'001-070988-0032W',_binary ''),(64,26,2,4,'001-070988-0032W',_binary ''),(65,27,1,4,'001-070988-0032W',_binary ''),(66,28,11,4,'001-070988-0032W',_binary ''),(67,29,13,4,'001-070988-0032W',_binary ''),(68,30,12,4,'001-070988-0032W',_binary ''),(69,1,1,5,'001-070989-0041P',_binary ''),(70,2,1,5,'001-070989-0041P',_binary ''),(71,3,14,5,'001-070989-0041P',_binary ''),(72,4,12,5,'001-070989-0041P',_binary ''),(73,5,2,5,'001-070989-0041P',_binary ''),(74,6,11,5,'001-070989-0041P',_binary ''),(75,7,14,5,'001-070989-0041P',_binary ''),(76,8,1,5,'001-070989-0041P',_binary ''),(77,9,11,5,'001-070989-0041P',_binary ''),(78,10,13,5,'001-070989-0041P',_binary ''),(79,11,13,5,'001-070989-0041P',_binary ''),(80,12,2,5,'001-070989-0041P',_binary ''),(81,13,1,5,'001-070989-0041P',_binary ''),(82,14,1,5,'001-070989-0041P',_binary ''),(83,15,2,5,'001-070989-0041P',_binary ''),(84,16,6,5,'001-070989-0041P',_binary ''),(85,17,12,5,'001-070989-0041P',_binary ''),(86,18,13,5,'001-070989-0041P',_binary ''),(87,19,2,5,'001-070989-0041P',_binary ''),(88,20,2,5,'001-070989-0041P',_binary ''),(89,21,1,5,'001-070989-0041P',_binary ''),(90,22,6,5,'001-070989-0041P',_binary ''),(91,23,13,5,'001-070989-0041P',_binary ''),(92,24,12,5,'001-070989-0041P',_binary ''),(93,25,2,5,'001-070989-0041P',_binary ''),(94,26,2,5,'001-070989-0041P',_binary ''),(95,27,1,5,'001-070989-0041P',_binary ''),(96,28,11,5,'001-070989-0041P',_binary ''),(97,29,13,5,'001-070989-0041P',_binary ''),(98,30,12,5,'001-070989-0041P',_binary ''),(99,1,1,6,'001-070989-0239L',_binary ''),(100,2,1,6,'001-070989-0239L',_binary ''),(101,3,14,6,'001-070989-0239L',_binary ''),(102,4,12,6,'001-070989-0239L',_binary ''),(103,5,2,6,'001-070989-0239L',_binary ''),(104,6,11,6,'001-070989-0239L',_binary ''),(105,7,14,6,'001-070989-0239L',_binary ''),(106,8,1,6,'001-070989-0239L',_binary ''),(107,9,11,6,'001-070989-0239L',_binary ''),(108,10,13,6,'001-070989-0239L',_binary ''),(109,11,13,6,'001-070989-0239L',_binary ''),(110,12,2,6,'001-070989-0239L',_binary ''),(111,13,1,6,'001-070989-0239L',_binary ''),(112,14,1,6,'001-070989-0239L',_binary ''),(113,15,2,6,'001-070989-0239L',_binary ''),(114,16,6,6,'001-070989-0239L',_binary ''),(115,17,12,6,'001-070989-0239L',_binary ''),(116,18,13,6,'001-070989-0239L',_binary ''),(117,19,2,6,'001-070989-0239L',_binary ''),(118,20,2,6,'001-070989-0239L',_binary ''),(119,21,1,6,'001-070989-0239L',_binary ''),(120,22,6,6,'001-070989-0239L',_binary ''),(121,23,13,6,'001-070989-0239L',_binary ''),(122,24,12,6,'001-070989-0239L',_binary ''),(123,25,2,6,'001-070989-0239L',_binary ''),(124,26,2,6,'001-070989-0239L',_binary ''),(125,27,1,6,'001-070989-0239L',_binary ''),(126,28,11,6,'001-070989-0239L',_binary ''),(127,29,13,6,'001-070989-0239L',_binary ''),(128,30,12,6,'001-070989-0239L',_binary ''),(129,1,1,7,'001-070991-0011Q',_binary ''),(130,2,1,7,'001-070991-0011Q',_binary ''),(131,3,4,7,'001-070991-0011Q',_binary ''),(132,4,12,7,'001-070991-0011Q',_binary ''),(133,5,2,7,'001-070991-0011Q',_binary ''),(134,6,5,7,'001-070991-0011Q',_binary ''),(135,7,1,7,'001-070991-0011Q',_binary ''),(136,8,1,7,'001-070991-0011Q',_binary ''),(137,9,11,7,'001-070991-0011Q',_binary ''),(138,10,13,7,'001-070991-0011Q',_binary ''),(139,11,5,7,'001-070991-0011Q',_binary ''),(140,12,2,7,'001-070991-0011Q',_binary ''),(141,19,2,7,'001-070991-0011Q',_binary ''),(142,20,2,7,'001-070991-0011Q',_binary ''),(143,21,1,7,'001-070991-0011Q',_binary ''),(144,22,6,7,'001-070991-0011Q',_binary ''),(145,23,5,7,'001-070991-0011Q',_binary ''),(146,24,5,7,'001-070991-0011Q',_binary ''),(147,25,2,7,'001-070991-0011Q',_binary ''),(148,26,2,7,'001-070991-0011Q',_binary ''),(149,27,1,7,'001-070991-0011Q',_binary ''),(150,28,11,7,'001-070991-0011Q',_binary ''),(151,29,13,7,'001-070991-0011Q',_binary ''),(152,30,12,7,'001-070991-0011Q',_binary ''),(153,13,6,7,'001-070991-0011Q',_binary ''),(154,14,4,7,'001-070991-0011Q',_binary ''),(155,15,2,7,'001-070991-0011Q',_binary ''),(156,16,1,7,'001-070991-0011Q',_binary ''),(157,17,4,7,'001-070991-0011Q',_binary ''),(158,18,4,7,'001-070991-0011Q',_binary ''),(159,1,1,8,'001-070992-0031X',_binary ''),(160,2,1,8,'001-070992-0031X',_binary ''),(161,3,4,8,'001-070992-0031X',_binary ''),(162,4,12,8,'001-070992-0031X',_binary ''),(163,5,2,8,'001-070992-0031X',_binary ''),(164,6,5,8,'001-070992-0031X',_binary ''),(165,7,1,8,'001-070992-0031X',_binary ''),(166,8,1,8,'001-070992-0031X',_binary ''),(168,13,6,8,'001-070992-0031X',_binary ''),(169,14,4,8,'001-070992-0031X',_binary ''),(170,15,2,8,'001-070992-0031X',_binary ''),(171,16,1,8,'001-070992-0031X',_binary ''),(172,17,4,8,'001-070992-0031X',_binary ''),(173,18,4,8,'001-070992-0031X',_binary ''),(174,19,2,8,'001-070992-0031X',_binary ''),(175,20,2,8,'001-070992-0031X',_binary ''),(176,21,1,8,'001-070992-0031X',_binary ''),(177,22,6,8,'001-070992-0031X',_binary ''),(178,23,5,8,'001-070992-0031X',_binary ''),(179,24,5,8,'001-070992-0031X',_binary ''),(180,25,2,8,'001-070992-0031X',_binary ''),(181,26,2,8,'001-070992-0031X',_binary ''),(182,27,1,8,'001-070992-0031X',_binary ''),(183,28,11,8,'001-070992-0031X',_binary ''),(184,29,13,8,'001-070992-0031X',_binary ''),(185,30,12,8,'001-070992-0031X',_binary ''),(186,9,1,8,'001-070992-0031X',_binary ''),(187,10,13,8,'001-070992-0031X',_binary ''),(188,11,5,8,'001-070992-0031X',_binary ''),(189,12,2,8,'001-070992-0031X',_binary ''),(190,1,2,9,'001-070997-0031X',_binary ''),(191,2,1,9,'001-070997-0031X',_binary ''),(192,3,4,9,'001-070997-0031X',_binary ''),(193,4,5,9,'001-070997-0031X',_binary ''),(194,5,6,9,'001-070997-0031X',_binary ''),(195,6,14,9,'001-070997-0031X',_binary ''),(196,7,1,9,'001-070997-0031X',_binary ''),(197,8,2,9,'001-070997-0031X',_binary ''),(198,9,14,9,'001-070997-0031X',_binary ''),(199,10,13,9,'001-070997-0031X',_binary ''),(200,11,5,9,'001-070997-0031X',_binary ''),(201,12,6,9,'001-070997-0031X',_binary ''),(202,13,6,9,'001-070997-0031X',_binary ''),(203,14,4,9,'001-070997-0031X',_binary ''),(204,15,2,9,'001-070997-0031X',_binary ''),(205,16,1,9,'001-070997-0031X',_binary ''),(206,17,4,9,'001-070997-0031X',_binary ''),(207,18,4,9,'001-070997-0031X',_binary ''),(208,19,2,9,'001-070997-0031X',_binary ''),(209,20,5,9,'001-070997-0031X',_binary ''),(210,21,12,9,'001-070997-0031X',_binary ''),(211,22,14,9,'001-070997-0031X',_binary ''),(212,23,1,9,'001-070997-0031X',_binary ''),(213,24,4,9,'001-070997-0031X',_binary ''),(214,25,2,9,'001-070997-0031X',_binary ''),(215,26,2,9,'001-070997-0031X',_binary ''),(216,27,1,9,'001-070997-0031X',_binary ''),(217,28,11,9,'001-070997-0031X',_binary ''),(218,29,13,9,'001-070997-0031X',_binary ''),(219,30,12,9,'001-070997-0031X',_binary ''),(220,1,2,10,'001-070999-0043W',_binary ''),(221,2,1,10,'001-070999-0043W',_binary ''),(222,3,4,10,'001-070999-0043W',_binary ''),(223,4,5,10,'001-070999-0043W',_binary ''),(224,5,6,10,'001-070999-0043W',_binary ''),(225,6,14,10,'001-070999-0043W',_binary ''),(226,7,1,10,'001-070999-0043W',_binary ''),(227,8,2,10,'001-070999-0043W',_binary ''),(228,9,14,10,'001-070999-0043W',_binary ''),(229,10,13,10,'001-070999-0043W',_binary ''),(230,11,5,10,'001-070999-0043W',_binary ''),(231,12,6,10,'001-070999-0043W',_binary ''),(232,13,6,10,'001-070999-0043W',_binary ''),(233,14,4,10,'001-070999-0043W',_binary ''),(234,15,2,10,'001-070999-0043W',_binary ''),(235,16,1,10,'001-070999-0043W',_binary ''),(236,17,4,10,'001-070999-0043W',_binary ''),(237,18,4,10,'001-070999-0043W',_binary ''),(238,19,2,10,'001-070999-0043W',_binary ''),(239,20,5,10,'001-070999-0043W',_binary ''),(240,21,12,10,'001-070999-0043W',_binary ''),(241,22,14,10,'001-070999-0043W',_binary ''),(242,23,1,10,'001-070999-0043W',_binary ''),(243,24,4,10,'001-070999-0043W',_binary ''),(244,25,2,10,'001-070999-0043W',_binary ''),(245,26,2,10,'001-070999-0043W',_binary ''),(246,27,1,10,'001-070999-0043W',_binary ''),(247,28,11,10,'001-070999-0043W',_binary ''),(248,29,13,10,'001-070999-0043W',_binary ''),(249,30,12,10,'001-070999-0043W',_binary ''),(250,1,5,11,'001-070999-0231S',_binary ''),(251,2,1,11,'001-070999-0231S',_binary ''),(252,3,4,11,'001-070999-0231S',_binary ''),(253,4,5,11,'001-070999-0231S',_binary ''),(254,5,6,11,'001-070999-0231S',_binary ''),(255,6,14,11,'001-070999-0231S',_binary ''),(256,7,1,11,'001-070999-0231S',_binary ''),(257,8,2,11,'001-070999-0231S',_binary ''),(258,9,14,11,'001-070999-0231S',_binary ''),(259,10,13,11,'001-070999-0231S',_binary ''),(260,11,5,11,'001-070999-0231S',_binary ''),(261,12,6,11,'001-070999-0231S',_binary '');
/*!40000 ALTER TABLE `bloque_clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(35) NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'DOCENTE',_binary ''),(2,'DIRECTOR',_binary ''),(3,'SUB DIRECTOR',_binary ''),(4,'SECRETARIA',_binary '\0');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(35) NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'LUNES',_binary ''),(2,'MARTES',_binary ''),(3,'MIERCOLES',_binary ''),(4,'JUEVES',_binary ''),(5,'VIERENES',_binary ''),(6,'SABADO',_binary '\0');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(30) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'I NIVEL',_binary '\0'),(2,'II NIVEL',_binary '\0'),(3,'III NIVEL',_binary '\0'),(4,'PRIMER GRADO',_binary ''),(5,'SEGUNDO GRADO',_binary ''),(6,'TERCER GRADO',_binary ''),(7,'CUARTO GRADO',_binary ''),(8,'QUINTO GRADO',_binary ''),(9,'SEXTO GRADO',_binary ''),(10,'SEPTIMO GRADO',_binary '\0'),(11,'OCTAVO GRADO',_binary '\0'),(12,'NOVENO GRADO',_binary '\0'),(13,'DECIMO GRADO',_binary '\0'),(14,'UNDECIMO GRADO',_binary '\0');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_GRADO` int DEFAULT NULL,
  `ID_SECCION` int NOT NULL,
  `ID_TURNO` int NOT NULL,
  `ID_MODALIDAD` int NOT NULL,
  `ANIO_ESCOLAR` date DEFAULT NULL,
  `CEDULA_DOCENTE` char(18) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GRADO_SECCION` (`ID_SECCION`),
  KEY `FK_GRADO_TURNO` (`ID_TURNO`),
  KEY `FK_GRADO_MODALIDAD` (`ID_MODALIDAD`),
  KEY `fk_grupo_grado` (`ID_GRADO`),
  KEY `FK_GRADO_PERSONAL` (`CEDULA_DOCENTE`),
  CONSTRAINT `FK_GRADO_MODALIDAD` FOREIGN KEY (`ID_MODALIDAD`) REFERENCES `modalidad` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_PERSONAL` FOREIGN KEY (`CEDULA_DOCENTE`) REFERENCES `personal` (`CEDULA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_SECCION` FOREIGN KEY (`ID_SECCION`) REFERENCES `seccion` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_TURNO` FOREIGN KEY (`ID_TURNO`) REFERENCES `turno` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_grupo_grado` FOREIGN KEY (`ID_GRADO`) REFERENCES `grado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (3,4,1,1,4,'2022-09-18','001-070985-0032X',_binary ''),(4,4,2,1,4,'2022-09-18','001-070988-0032W',_binary ''),(5,5,1,1,4,'2022-09-18','001-070989-0041P',_binary ''),(6,5,2,1,4,'2022-09-18','001-070989-0239L',_binary ''),(7,6,1,1,4,'2022-09-18','001-070991-0011Q',_binary ''),(8,6,2,1,4,'2022-09-18','001-070992-0031X',_binary ''),(9,7,1,1,4,'2022-09-18','001-070997-0031X',_binary ''),(10,7,2,1,4,'2022-09-18','001-070999-0043W',_binary ''),(11,8,1,1,4,'2022-09-18','001-070999-0231S',_binary ''),(12,8,2,1,4,'2022-09-18','001-071070-0129X',_binary ''),(13,9,1,1,4,'2022-09-18','001-071072-0009A',_binary ''),(14,9,2,1,4,'2022-09-18','001-071073-0007Q',_binary ''),(15,4,1,3,4,'2022-09-18','001-071080-0018U',_binary ''),(16,4,2,3,4,'2022-09-18','001-071082-0129X',_binary ''),(17,5,1,3,4,'2022-09-18','001-071087-0023Z',_binary ''),(18,5,2,3,4,'2022-09-18','001-071089-0018K',_binary ''),(19,6,1,3,4,'2022-09-18','001-071089-0018U',_binary ''),(20,6,2,3,4,'2022-09-18','001-071090-0048H',_binary ''),(21,7,1,3,4,'2022-09-18','001-071091-0113Z',_binary ''),(22,7,2,3,4,'2022-09-18','001-071097-3248G',_binary ''),(23,8,1,3,4,'2022-09-18','001-071099-0148Y',_binary ''),(24,8,2,3,4,'2022-09-18','001-100494-0001V',_binary ''),(25,9,1,3,4,'2022-09-18','001-180990-0004Z',_binary ''),(26,9,2,3,4,'2022-09-18','001-230890-0031X',_binary '');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_bloque`
--

DROP TABLE IF EXISTS `horario_bloque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario_bloque` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_HORARIO_DESIGNADO` int NOT NULL,
  `ID_TURNO` int NOT NULL,
  `ID_DIA` int DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_HB_TURNO` (`ID_TURNO`),
  KEY `FK_ID_DIA` (`ID_DIA`),
  KEY `FK_HORAIO_DESIGNADO` (`ID_HORARIO_DESIGNADO`),
  CONSTRAINT `FK_HB_TURNO` FOREIGN KEY (`ID_TURNO`) REFERENCES `turno` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_HORAIO_DESIGNADO` FOREIGN KEY (`ID_HORARIO_DESIGNADO`) REFERENCES `bloque` (`ID`),
  CONSTRAINT `FK_ID_DIA` FOREIGN KEY (`ID_DIA`) REFERENCES `dia` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_bloque`
--

LOCK TABLES `horario_bloque` WRITE;
/*!40000 ALTER TABLE `horario_bloque` DISABLE KEYS */;
INSERT INTO `horario_bloque` VALUES (1,1,1,1,_binary ''),(2,2,1,1,_binary ''),(3,3,1,1,_binary ''),(4,4,1,1,_binary ''),(5,5,1,1,_binary ''),(6,6,1,1,_binary ''),(7,1,1,2,_binary ''),(8,2,1,2,_binary ''),(9,3,1,2,_binary ''),(10,4,1,2,_binary ''),(11,5,1,2,_binary ''),(12,6,1,2,_binary ''),(13,1,1,3,_binary ''),(14,2,1,3,_binary ''),(15,3,1,3,_binary ''),(16,4,1,3,_binary ''),(17,5,1,3,_binary ''),(18,6,1,3,_binary ''),(19,1,1,4,_binary ''),(20,2,1,4,_binary ''),(21,3,1,4,_binary ''),(22,4,1,4,_binary ''),(23,5,1,4,_binary ''),(24,6,1,4,_binary ''),(25,1,1,5,_binary ''),(26,2,1,5,_binary ''),(27,3,1,5,_binary ''),(28,4,1,5,_binary ''),(29,5,1,5,_binary ''),(30,6,1,5,_binary ''),(31,7,3,1,_binary ''),(32,8,3,1,_binary ''),(33,9,3,1,_binary ''),(34,10,3,1,_binary ''),(35,11,3,1,_binary ''),(36,12,3,1,_binary ''),(37,7,3,2,_binary ''),(38,8,3,2,_binary ''),(39,9,3,2,_binary ''),(40,10,3,2,_binary ''),(41,11,3,2,_binary ''),(42,12,3,2,_binary ''),(43,7,3,3,_binary ''),(44,8,3,3,_binary ''),(45,9,3,3,_binary ''),(46,10,3,3,_binary ''),(47,11,3,3,_binary ''),(48,12,3,3,_binary ''),(49,7,3,4,_binary ''),(50,8,3,4,_binary ''),(51,9,3,4,_binary ''),(52,10,3,4,_binary ''),(53,11,3,4,_binary ''),(54,12,3,4,_binary ''),(55,7,3,5,_binary ''),(56,8,3,5,_binary ''),(57,9,3,5,_binary ''),(58,10,3,5,_binary ''),(59,11,3,5,_binary ''),(60,12,3,5,_binary '');
/*!40000 ALTER TABLE `horario_bloque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidad` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(35) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
INSERT INTO `modalidad` VALUES (1,'PREESCOLAR COMUNITARIO',_binary '\0'),(2,'PREESCOLAR FORMAL',_binary '\0'),(3,'PREESCOLAR MULTINIVEL',_binary '\0'),(4,'PRIMARIA REGULAR',_binary ''),(5,'PRRIMARIA EXTRAEDAD',_binary '\0'),(6,'SECUNDARIA DIURNA',_binary '\0'),(7,'SECUNDARIA NOCTURNA',_binary '\0'),(8,'SECUNDARIA POR ENCUENTRO',_binary '\0');
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal` (
  `CEDULA` char(18) NOT NULL,
  `PRIMER_NOMBRE` varchar(35) NOT NULL,
  `SEGUNDO_NOMBRE` varchar(35) DEFAULT NULL,
  `PRIMER_APELLIDO` varchar(35) NOT NULL,
  `SEGUNDO_APELLIDO` varchar(35) DEFAULT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `TELEFONO` varchar(8) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `HORAS_LABORALES` int NOT NULL,
  `USSER` varchar(20) NOT NULL,
  `CONTRA` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ESTADO` bit(1) NOT NULL,
  `ID_CARGO` int NOT NULL,
  `FECHA_REGISTRO` date NOT NULL,
  PRIMARY KEY (`CEDULA`),
  KEY `FK_CARGO_PADMIN` (`ID_CARGO`),
  CONSTRAINT `FK_CARGO_PADMIN` FOREIGN KEY (`ID_CARGO`) REFERENCES `cargo` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES ('001-070984-0031F','MAGDA','VERONICA','FLORES','LOPEZ','1984-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 2 CUADRAS AL SUR',0,'magda123','„V£‹ÀWrø2m',_binary '',2,'2022-09-08'),('001-070985-0032X','SARAI','SOFIA','MERCADO','LUNA','1985-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'sari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070988-0032W','MARIA','JULIETA','MARTINEZ','LARIOS','1988-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'maria123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070989-0041P','MARJORIE','JACQUELINE','MEMBREÑO','CASTRO','1989-07-09','F','88124033','ENTRADA PRINCIPAL CIUDAD SANDINO 2 CUADRAS AL SUR',40,'marjo123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070989-0239L','MARIA','ELIZABETH','ARAGON','ROA','1989-07-09','F','78974033','PARQUE MATEARE 3 CUADRAS AL SUR',40,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070990-0031F','YURI','PATRICIA','HERNANDEZ','RAMIREZ','1990-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 7 CUADRAS AL SUR',0,'yuri123','„V£‹ÀWrø2m',_binary '\0',3,'2022-09-08'),('001-070991-0011Q','ANDREA','ANTONIA','SILVA','GUIDO','1991-07-09','F','77774033','PARQUE MATEARE 7 CUADRAS AL SUR',40,'andy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070992-0031X','MARCO','AURELIO','ALEMAN','SOLIS','1992-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'marco123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070997-0031X','MEYLING','ESTEFANIA','PEREZ','VELASQUEZ','1997-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'mey123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070999-0043W','SEBASTIAN','JOSE','MEZA','PEREZ','1999-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'sebas123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070999-0231S','ESTELA','RACHEL','PEREZ','BRIONES','1999-07-09','F','79974033','PARQUE MATEARE 2 CUADRAS AL SUR',22,'este123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071070-0129X','MERCEDES','LISSETH','SAAVEDRA','ORTEGA','1970-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'mercedes123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071072-0009A','ATALIA','ABIGAIL','MONTERO','ORTEGA','1972-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'atalia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071073-0007Q','NOELIA','SOFIA','ARAGON','SOLIS','1973-09-09','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'noelia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071080-0018U','ANABEL','','OROZCO','VASQUEZ','1980-07-12','F','81299033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'anabel123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071082-0129X','URANIA','','ARROLIGA','ESTRADA','1982-07-12','F','81204333','CARRETERA VIEJA A LEON KM 24',10,'urania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071087-0023Z','JERONIMA','SONIA','MONTERO','CASTRO','1987-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'jeronima123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071089-0018K','BERTHA','ESMERALDA','ORDOÑEZ','MATUTE','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'bertha123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071089-0018U','BETHANIA','','SALGADO','MERARI','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'bethania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071090-0048H','IRIS','SOFIA','SOLIS','GUEVARA','1990-12-12','F','81223033','ENTRADA CIUDAD SANDINO 9 CUADRAS AL NORTE',10,'iris123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071091-0113Z','MARTIN','JOSE','CACERES','BRIONES','1991-07-10','M','77274089','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'martin123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071097-3248G','IRMA','','RODRIGUEZ','SOMARRIBA','1997-07-12','F','81274033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'irma123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071099-0148Y','REYNA','ISABEL','VELASZQUEZ','ROA','1999-07-10','F','81274033','CARRETERA VIEJA A LEON KM 24',10,'reyna123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-100494-0001V','MARIA','MAGDALENA','URROZ','BLANDON','1994-04-10','F','88897312','CIUDAD SANDINO TOPE SUR',10,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-180990-0004Z','SOFIA','SARAI','MARTINEZ','RUIZ','1990-09-18','F','89903242','PARQUE MATEARE 7 CUADRAS LA NORTE',10,'sofiy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-230890-0031X','DINA','SARA','CASTRO','FLORES','1990-08-23','F','77774033','CARRETERA VIEJA A LEON KM 29',10,'dina123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('002-071094-0148B','FATIMA','YALENA','MOJICA','ARAGON','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'fatima123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('002-071097-0148L','ARELYS','VANESSA','JALINA','ROCHA','1997-07-12','F','82474033','JARDINES DE VERACRUZ DE LA ROTONDA 2 CUADRAS AL LAGO',10,'arelys123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('440-071091-21480','FLOR','DE MARIA','PINEDA','ARVIXU','1991-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'flor123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('440-071094-0148Y','ISABEL','SERENA','MEZA','PEREZ','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'isabel123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('443-070990-0012P','JORGE','ENMANUEL','LEIVA','SILVA','1990-07-09','M','89774033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',10,'jorge123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('443-071091-0113Z','OSCAR','DANILO','CASTRO','FLORES','1991-07-10','M','81274033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',10,'oscar123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('448-1504993-0001V','MACOS','RAMON','MENDOZA','PEREZ','1993-04-15','M','75201807','SABANA GRANDE, VILLA JERUSALEM',10,'macos123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-21'),('449-071080-0148Y','CARMEN','ELVIRA','PINEDA','ARVIZU','1980-07-10','F','81271233','BO. NUEVA VIDA KM 10 CARRETERA VIEJA A LEON CASA NO210',10,'carmen123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seccion` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(10) NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES (1,'SECCION A',_binary ''),(2,'SECCION B',_binary ''),(3,'SECCION C',_binary '\0');
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turno` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(35) NOT NULL,
  `HORARIO` varchar(35) NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'MATUTINO','7:00 AM - 12:00 MD',_binary ''),(2,'MATUTINO','8:00 AM - 11:00 AM',_binary '\0'),(3,'VESPERTINO','12:30 MD - 5:15 PM',_binary ''),(4,'SABATINO','8:00 AM - 4:00 PM',_binary '\0');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_bloque_info`
--

DROP TABLE IF EXISTS `vw_bloque_info`;
/*!50001 DROP VIEW IF EXISTS `vw_bloque_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_bloque_info` AS SELECT 
 1 AS `ID_BLOQUE_CLASE`,
 1 AS `ID_GRUPO`,
 1 AS `ID_MODALIDAD`,
 1 AS `MODALIDAD`,
 1 AS `ID_GRADO`,
 1 AS `GRADO`,
 1 AS `ID_SECCION`,
 1 AS `SECCION`,
 1 AS `ID_TURNO`,
 1 AS `TURNO`,
 1 AS `ID_DIA`,
 1 AS `DIA`,
 1 AS `ID_BLOQUE`,
 1 AS `NO_BLOQUE`,
 1 AS `HORARIO_BLOQUE`,
 1 AS `CODIGO_ASIGNATURA`,
 1 AS `ASIGNATURA`,
 1 AS `CEDULA_DOCENTE`,
 1 AS `DOCENTE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_grupos_registrados`
--

DROP TABLE IF EXISTS `vw_grupos_registrados`;
/*!50001 DROP VIEW IF EXISTS `vw_grupos_registrados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_grupos_registrados` AS SELECT 
 1 AS `CEDULA`,
 1 AS `DOCENTE GUIA`,
 1 AS `ID GRUPO`,
 1 AS `GRADO`,
 1 AS `SECCION`,
 1 AS `TURNO`,
 1 AS `MODALIDAD`,
 1 AS `AÑO ELECTIVO`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'planificacion_academica'
--

--
-- Dumping routines for database 'planificacion_academica'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_Horario_Grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Horario_Grupo`(
	ID_grupo int
)
begin
     if exists (select ID from grupo where ID = ID_grupo) then
     SELECT gg.DESCRIPCION as GRADO,s.DESCRIPCION AS SECCION,t.DESCRIPCION AS TURNO,d.DESCRIPCION AS DIA,b.DESCRIPCION AS "NO DE BLOQUE", 
     b.HORARIO AS "HORARIO DE BLOQUE" , a.DESCRIPCION as ASIGNATURA FROM BLOQUE_CLASE bc 					
										INNER JOIN  asignatura a on bc.ID_ASIGNATURA = a.ID
                                        INNER JOIN horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID
                                        INNER JOIN bloque b on hb.ID_HORARIO_DESIGNADO = b.ID
                                        INNER JOIN turno t on hb.ID_TURNO = t.ID 
                                        INNER JOIN dia d on hb.ID_DIA = d.ID 
                                        INNER JOIN grupo g on bc.ID_GRUPO = g.ID 
										INNER JOIN modalidad m on g.ID_MODALIDAD = m.ID		
                                        INNER JOIN seccion s on g.ID_SECCION = s.ID	
										INNER JOIN grado gg on g.ID_GRADO = gg.ID	where g.ID= ID_grupo
										order by hb.id;  /*Se ordena por el id del bloque de clase*/ 
     
     else
      select "EL GRUPO NO SE ENCUENTRA EN LA BASE DE DATOS" as  "MENSAJE";
     end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Asigantura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Asigantura`(
	_Desripcion varchar(45)
)
begin
	if (not exists (select DESCRIPCION from asignatura where STRCMP(DESCRIPCION,_Desripcion)  = 0) ) then
			INSERT INTO asignatura (DESCRIPCION,ESTADO) VALUES (upper(_Desripcion),0);
    select 'LA ASIGNATURA REGISTRADA' AS 'MENSAJE';
    else
			select 'LA ASIGNATURA YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Bloque_Clase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Bloque_Clase`(
	_id_horario_bloque int,
    _id_asignatura int,
    _id_grupo int,
    _cedula char(18)
)
begin
	if exists ( select ID_HORARIO_BLOQUE from BLOQUE_CLASE where ID_HORARIO_BLOQUE = _id_horario_bloque  AND CEDULA_DOCENTE = _cedula) then
		select 'EL DOCENTE YA IMPARTE UNA CLASE DURANTE ESE HORARIO' AS 'MENSAJE';
        
	elseif ((select HORAS_LABORALES from personal WHERE CEDULA = _cedula)=40) then
			select 'EL DOCENTE YA TIENE COMPLETO SUS HORAS SEMANALES' AS 'MENSAJE';
    else
			INSERT into bloque_clase (ID_HORARIO_BLOQUE,ID_ASIGNATURA,ID_GRUPO,CEDULA_DOCENTE,ESTADO) VALUES (_id_horario_bloque,_id_asignatura,_id_grupo,_cedula,1);
			UPDATE personal SET HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA =  _cedula;
            update asignatura set ESTADO = 1 where ID =_id_asignatura;
			select 'BLOQUE DE CLASE REGISTRADO CORRECTAMENTE' AS 'MENSAJE';
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Grupo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Grupo`(
	_id_grado int,
    _id_seccion int,
    _id_turno int,
    _id_modalidad int,
    _cedula_docente char(18)
)
begin
	if (not exists (select CEDULA_DOCENTE from grupo where STRCMP(CEDULA_DOCENTE,_cedula_docente)  = 0) ) then
		INSERT INTO GRUPO (ID_GRADO,ID_SECCION,ID_TURNO,ID_MODALIDAD,ANIO_ESCOLAR,CEDULA_DOCENTE)
			VALUES	(_id_grado,_id_seccion,_id_turno,_id_modalidad,CURDATE(), _cedula_docente);
        select 'GRUPO CREADO' as 'MENSAJE';
        UPDATE PERSONAL SET ESTADO=1 WHERE CEDULA = _cedula_docente;
        UPDATE GRADO SET ESTADO = 1 WHERE ID = _id_grado;
        UPDATE SECCION SET ESTADO = 1 WHERE ID = _id_seccion;
        UPDATE TURNO SET ESTADO = 1 WHERE ID = _id_turno;
        UPDATE MODALIDAD SET ESTADO = 1 WHERE ID = _id_modalidad;
    else 
		select 'EL DOCENTE INGRESADO YA TIENE UN GRUPO GUIADO' as 'MENSAJE';
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Personal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Personal`(
	_Cedula_Personal char(18),
	_Primer_Nombre varchar(35),
	_Segundo_Nombre varchar(35),
	_Primer_Apellido varchar(35),
	_Segundo_Apellido varchar(35),
    _Fecha_Nacimiento date,
	_Sexo char(1),
	_Telefono char(8),
    _Direccion varchar(100),
    _cargo int
)
begin
	/*INICIALIZANDO ALGUNAS VARIABLES*/
		DECLARE _Usser varchar(20);
		 DECLARE _Horas int;
         declare _estado bit;
         set _Horas = 10;
         set _Usser = lower(CONCAT(_Primer_Nombre , "123"));
         set _estado = 0;
	if (not exists (select CEDULA from PERSONAL where STRCMP(CEDULA,_Cedula_Personal)  = 0) ) then
			insert into PERSONAL(CEDULA,PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,SEXO,TELEFONO,DIRECCION,HORAS_LABORALES,USSER,CONTRA,ESTADO,ID_CARGO,FECHA_REGISTRO) 
			values (upper(_Cedula_Personal),upper(_Primer_Nombre),upper(_Segundo_Nombre),upper(_Primer_Apellido),upper(_Segundo_Apellido),_Fecha_Nacimiento,upper(_Sexo),_Telefono,upper(_Direccion),_Horas,_Usser, aes_encrypt('temporal','jabalises'),_estado,_cargo,curdate());
	
    select 'EL PERSONAL HA SIDO REGISTRADO EN LA BASE DE DATOS' AS 'MENSAJE';
    else
			select 'EL PERSONAL YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LOGIN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_LOGIN`(
	Usuario varchar(40),
    Contras varchar(40)
)
begin
     if exists (select USSER from personal where USSER = Usuario) then
		if ((select convert (aes_decrypt(CONTRA,'jabalises') using utf8) as CONTRA from personal where USSER = "magda123") = Contras) then
			select "ACCESO EXITOSO" as "MENSAJE";
		else
			select "CONTRASEÑA INCORRECTA" as "MENSAJE";
		end if;
     else
      select "EL USUARIO NO EXISTE" as  "MENSAJE";
     end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_bloque_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_bloque_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_bloque_info` AS select `bc`.`ID` AS `ID_BLOQUE_CLASE`,`bc`.`ID_GRUPO` AS `ID_GRUPO`,`m`.`ID` AS `ID_MODALIDAD`,`m`.`DESCRIPCION` AS `MODALIDAD`,`gg`.`ID` AS `ID_GRADO`,`gg`.`DESCRIPCION` AS `GRADO`,`s`.`ID` AS `ID_SECCION`,`s`.`DESCRIPCION` AS `SECCION`,`hb`.`ID_TURNO` AS `ID_TURNO`,`t`.`DESCRIPCION` AS `TURNO`,`hb`.`ID_DIA` AS `ID_DIA`,`d`.`DESCRIPCION` AS `DIA`,`hb`.`ID_HORARIO_DESIGNADO` AS `ID_BLOQUE`,`b`.`DESCRIPCION` AS `NO_BLOQUE`,`b`.`HORARIO` AS `HORARIO_BLOQUE`,`a`.`ID` AS `CODIGO_ASIGNATURA`,`a`.`DESCRIPCION` AS `ASIGNATURA`,`p`.`CEDULA` AS `CEDULA_DOCENTE`,concat(`p`.`PRIMER_NOMBRE`,' ',`p`.`PRIMER_APELLIDO`) AS `DOCENTE` from ((((((((((`bloque_clase` `bc` join `asignatura` `a` on((`bc`.`ID_ASIGNATURA` = `a`.`ID`))) join `horario_bloque` `hb` on((`bc`.`ID_HORARIO_BLOQUE` = `hb`.`ID`))) join `bloque` `b` on((`hb`.`ID_HORARIO_DESIGNADO` = `b`.`ID`))) join `turno` `t` on((`hb`.`ID_TURNO` = `t`.`ID`))) join `dia` `d` on((`hb`.`ID_DIA` = `d`.`ID`))) join `grupo` `g` on((`bc`.`ID_GRUPO` = `g`.`ID`))) join `modalidad` `m` on((`g`.`ID_MODALIDAD` = `m`.`ID`))) join `grado` `gg` on((`g`.`ID_GRADO` = `gg`.`ID`))) join `seccion` `s` on((`g`.`ID_SECCION` = `s`.`ID`))) join `personal` `p` on((`g`.`CEDULA_DOCENTE` = `p`.`CEDULA`))) order by `hb`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_grupos_registrados`
--

/*!50001 DROP VIEW IF EXISTS `vw_grupos_registrados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_grupos_registrados` AS select `p`.`CEDULA` AS `CEDULA`,concat(`p`.`PRIMER_NOMBRE`,' ',`p`.`PRIMER_APELLIDO`) AS `DOCENTE GUIA`,`g`.`ID` AS `ID GRUPO`,`gp`.`DESCRIPCION` AS `GRADO`,`s`.`DESCRIPCION` AS `SECCION`,`t`.`DESCRIPCION` AS `TURNO`,`m`.`DESCRIPCION` AS `MODALIDAD`,year(`g`.`ANIO_ESCOLAR`) AS `AÑO ELECTIVO` from (((((`grupo` `g` join `grado` `gp` on((`g`.`ID_GRADO` = `gp`.`ID`))) join `turno` `t` on((`g`.`ID_TURNO` = `t`.`ID`))) join `modalidad` `m` on((`g`.`ID_MODALIDAD` = `m`.`ID`))) join `personal` `p` on((`g`.`CEDULA_DOCENTE` = `p`.`CEDULA`))) join `seccion` `s` on((`g`.`ID_SECCION` = `s`.`ID`))) order by `gp`.`ID`,`t`.`ID` */;
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

-- Dump completed on 2022-10-09 10:14:27