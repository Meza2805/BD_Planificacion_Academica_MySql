CREATE DATABASE  IF NOT EXISTS `planificacion_academica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `planificacion_academica`;
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
  `ID_ANIO` int DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'LENGUA Y LITERATURA',NULL),(2,'MATEMATICAS',NULL),(3,'APRENDER A EMPRENDER Y PROSPERAR',NULL),(4,'CIENCIAS SOCIALES',NULL),(5,'CIENCIAS NATURALES',NULL),(6,'EDUCACION FISICA Y PRACTICA DEPORTIVA',NULL),(7,'DERECHOS Y DIGNIDAD DE LA MUJER',NULL),(8,'FISICA',NULL),(9,'QUIMICA',NULL),(10,'BIOLOGIA',NULL),(11,'CRECIENDO EN VALORES',NULL),(12,'EDUCACION PARA APRENDER, EMPREDER Y PROSPERAR',NULL),(13,'TALLER DE ARTE Y CULTURA',NULL),(14,'LENGUA EXTRANJERA',NULL),(15,'HISTORIA',NULL);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque_clase`
--

LOCK TABLES `bloque_clase` WRITE;
/*!40000 ALTER TABLE `bloque_clase` DISABLE KEYS */;
INSERT INTO `bloque_clase` VALUES (3,1,1,3,'001-070985-0032X',NULL),(4,2,1,3,'001-070985-0032X',NULL),(5,3,2,3,'001-070985-0032X',NULL),(6,4,2,3,'001-070985-0032X',NULL),(7,5,6,3,'001-070985-0032X',NULL),(8,6,6,3,'001-070985-0032X',NULL),(9,7,14,3,'001-070985-0032X',NULL),(10,8,1,3,'001-070985-0032X',NULL),(11,9,11,3,'001-070985-0032X',NULL),(12,10,13,3,'001-070985-0032X',NULL),(13,11,13,3,'001-070985-0032X',NULL),(14,12,2,3,'001-070985-0032X',NULL),(15,13,1,3,'001-070985-0032X',NULL),(16,14,1,3,'001-070985-0032X',NULL),(17,15,2,3,'001-070985-0032X',NULL),(18,16,6,3,'001-070985-0032X',NULL),(19,17,12,3,'001-070985-0032X',NULL),(20,18,13,3,'001-070985-0032X',NULL),(21,19,2,3,'001-070985-0032X',NULL),(22,20,2,3,'001-070985-0032X',NULL),(23,21,1,3,'001-070985-0032X',NULL),(24,22,6,3,'001-070985-0032X',NULL),(25,23,13,3,'001-070985-0032X',NULL),(26,24,12,3,'001-070985-0032X',NULL),(27,25,2,3,'001-070985-0032X',NULL),(28,26,2,3,'001-070985-0032X',NULL),(29,27,1,3,'001-070985-0032X',NULL),(30,28,11,3,'001-070985-0032X',NULL),(31,29,13,3,'001-070985-0032X',NULL),(32,30,12,3,'001-070985-0032X',NULL),(39,1,1,4,'001-070988-0032W',NULL),(40,2,1,4,'001-070988-0032W',NULL),(41,3,2,4,'001-070988-0032W',NULL),(42,4,2,4,'001-070988-0032W',NULL),(43,5,6,4,'001-070988-0032W',NULL),(44,6,6,4,'001-070988-0032W',NULL),(45,7,14,4,'001-070988-0032W',NULL),(46,8,1,4,'001-070988-0032W',NULL),(47,9,11,4,'001-070988-0032W',NULL),(48,10,13,4,'001-070988-0032W',NULL),(49,11,13,4,'001-070988-0032W',NULL),(50,12,2,4,'001-070988-0032W',NULL),(51,13,1,4,'001-070988-0032W',NULL),(52,14,1,4,'001-070988-0032W',NULL),(53,15,2,4,'001-070988-0032W',NULL),(54,16,6,4,'001-070988-0032W',NULL),(55,17,12,4,'001-070988-0032W',NULL),(56,18,13,4,'001-070988-0032W',NULL),(57,19,2,4,'001-070988-0032W',NULL),(58,20,2,4,'001-070988-0032W',NULL),(59,21,1,4,'001-070988-0032W',NULL),(60,22,6,4,'001-070988-0032W',NULL),(61,23,13,4,'001-070988-0032W',NULL),(62,24,12,4,'001-070988-0032W',NULL),(63,25,2,4,'001-070988-0032W',NULL),(64,26,2,4,'001-070988-0032W',NULL),(65,27,1,4,'001-070988-0032W',NULL),(66,28,11,4,'001-070988-0032W',NULL),(67,29,13,4,'001-070988-0032W',NULL),(68,30,12,4,'001-070988-0032W',NULL),(69,1,1,5,'001-070989-0041P',NULL),(70,2,1,5,'001-070989-0041P',NULL),(71,3,14,5,'001-070989-0041P',NULL),(72,4,12,5,'001-070989-0041P',NULL),(73,5,2,5,'001-070989-0041P',NULL),(74,6,11,5,'001-070989-0041P',NULL),(75,7,14,5,'001-070989-0041P',NULL),(76,8,1,5,'001-070989-0041P',NULL),(77,9,11,5,'001-070989-0041P',NULL),(78,10,13,5,'001-070989-0041P',NULL),(79,11,13,5,'001-070989-0041P',NULL),(80,12,2,5,'001-070989-0041P',NULL),(81,13,1,5,'001-070989-0041P',NULL),(82,14,1,5,'001-070989-0041P',NULL),(83,15,2,5,'001-070989-0041P',NULL),(84,16,6,5,'001-070989-0041P',NULL),(85,17,12,5,'001-070989-0041P',NULL),(86,18,13,5,'001-070989-0041P',NULL),(87,19,2,5,'001-070989-0041P',NULL),(88,20,2,5,'001-070989-0041P',NULL),(89,21,1,5,'001-070989-0041P',NULL),(90,22,6,5,'001-070989-0041P',NULL),(91,23,13,5,'001-070989-0041P',NULL),(92,24,12,5,'001-070989-0041P',NULL),(93,25,2,5,'001-070989-0041P',NULL),(94,26,2,5,'001-070989-0041P',NULL),(95,27,1,5,'001-070989-0041P',NULL),(96,28,11,5,'001-070989-0041P',NULL),(97,29,13,5,'001-070989-0041P',NULL),(98,30,12,5,'001-070989-0041P',NULL),(99,1,1,6,'001-070989-0239L',NULL),(100,2,1,6,'001-070989-0239L',NULL),(101,3,14,6,'001-070989-0239L',NULL),(102,4,12,6,'001-070989-0239L',NULL),(103,5,2,6,'001-070989-0239L',NULL),(104,6,11,6,'001-070989-0239L',NULL),(105,7,14,6,'001-070989-0239L',NULL),(106,8,1,6,'001-070989-0239L',NULL),(107,9,11,6,'001-070989-0239L',NULL),(108,10,13,6,'001-070989-0239L',NULL),(109,11,13,6,'001-070989-0239L',NULL),(110,12,2,6,'001-070989-0239L',NULL),(111,13,1,6,'001-070989-0239L',NULL),(112,14,1,6,'001-070989-0239L',NULL),(113,15,2,6,'001-070989-0239L',NULL),(114,16,6,6,'001-070989-0239L',NULL),(115,17,12,6,'001-070989-0239L',NULL),(116,18,13,6,'001-070989-0239L',NULL),(117,19,2,6,'001-070989-0239L',NULL),(118,20,2,6,'001-070989-0239L',NULL),(119,21,1,6,'001-070989-0239L',NULL),(120,22,6,6,'001-070989-0239L',NULL),(121,23,13,6,'001-070989-0239L',NULL),(122,24,12,6,'001-070989-0239L',NULL),(123,25,2,6,'001-070989-0239L',NULL),(124,26,2,6,'001-070989-0239L',NULL),(125,27,1,6,'001-070989-0239L',NULL),(126,28,11,6,'001-070989-0239L',NULL),(127,29,13,6,'001-070989-0239L',NULL),(128,30,12,6,'001-070989-0239L',NULL),(129,1,1,7,'001-070991-0011Q',NULL),(130,2,1,7,'001-070991-0011Q',NULL),(131,3,4,7,'001-070991-0011Q',NULL),(132,4,12,7,'001-070991-0011Q',NULL),(133,5,2,7,'001-070991-0011Q',NULL),(134,6,5,7,'001-070991-0011Q',NULL),(135,7,1,7,'001-070991-0011Q',NULL),(136,8,1,7,'001-070991-0011Q',NULL),(137,9,11,7,'001-070991-0011Q',NULL),(138,10,13,7,'001-070991-0011Q',NULL),(139,11,5,7,'001-070991-0011Q',NULL),(140,12,2,7,'001-070991-0011Q',NULL),(141,19,2,7,'001-070991-0011Q',NULL),(142,20,2,7,'001-070991-0011Q',NULL),(143,21,1,7,'001-070991-0011Q',NULL),(144,22,6,7,'001-070991-0011Q',NULL),(145,23,5,7,'001-070991-0011Q',NULL),(146,24,5,7,'001-070991-0011Q',NULL),(147,25,2,7,'001-070991-0011Q',NULL),(148,26,2,7,'001-070991-0011Q',NULL),(149,27,1,7,'001-070991-0011Q',NULL),(150,28,11,7,'001-070991-0011Q',NULL),(151,29,13,7,'001-070991-0011Q',NULL),(152,30,12,7,'001-070991-0011Q',NULL),(153,13,6,7,'001-070991-0011Q',NULL),(154,14,4,7,'001-070991-0011Q',NULL),(155,15,2,7,'001-070991-0011Q',NULL),(156,16,1,7,'001-070991-0011Q',NULL),(157,17,4,7,'001-070991-0011Q',NULL),(158,18,4,7,'001-070991-0011Q',NULL),(159,1,1,8,'001-070992-0031X',NULL),(160,2,1,8,'001-070992-0031X',NULL),(161,3,4,8,'001-070992-0031X',NULL),(162,4,12,8,'001-070992-0031X',NULL),(163,5,2,8,'001-070992-0031X',NULL),(164,6,5,8,'001-070992-0031X',NULL),(165,7,1,8,'001-070992-0031X',NULL),(166,8,1,8,'001-070992-0031X',NULL),(168,13,6,8,'001-070992-0031X',NULL),(169,14,4,8,'001-070992-0031X',NULL),(170,15,2,8,'001-070992-0031X',NULL),(171,16,1,8,'001-070992-0031X',NULL),(172,17,4,8,'001-070992-0031X',NULL),(173,18,4,8,'001-070992-0031X',NULL),(174,19,2,8,'001-070992-0031X',NULL),(175,20,2,8,'001-070992-0031X',NULL),(176,21,1,8,'001-070992-0031X',NULL),(177,22,6,8,'001-070992-0031X',NULL),(178,23,5,8,'001-070992-0031X',NULL),(179,24,5,8,'001-070992-0031X',NULL),(180,25,2,8,'001-070992-0031X',NULL),(181,26,2,8,'001-070992-0031X',NULL),(182,27,1,8,'001-070992-0031X',NULL),(183,28,11,8,'001-070992-0031X',NULL),(184,29,13,8,'001-070992-0031X',NULL),(185,30,12,8,'001-070992-0031X',NULL);
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
INSERT INTO `cargo` VALUES (1,'DOCENTE',NULL),(2,'DIRECTOR',NULL),(3,'SUB DIRECTOR',NULL),(4,'INSPECTOR',NULL);
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
INSERT INTO `dia` VALUES (1,'LUNES',NULL),(2,'MARTES',NULL),(3,'MIERCOLES',NULL),(4,'JUEVES',NULL),(5,'VIERENES',NULL),(6,'SABADO',NULL);
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
INSERT INTO `grado` VALUES (1,'I NIVEL',NULL),(2,'II NIVEL',NULL),(3,'III NIVEL',NULL),(4,'PRIMER GRADO',NULL),(5,'SEGUNDO GRADO',NULL),(6,'TERCER GRADO',NULL),(7,'CUARTO GRADO',NULL),(8,'QUINTO GRADO',NULL),(9,'SEXTO GRADO',NULL),(10,'SEPTIMO GRADO',NULL),(11,'OCTAVO GRADO',NULL),(12,'NOVENO GRADO',NULL),(13,'DECIMO GRADO',NULL),(14,'UNDECIMO GRADO',NULL);
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
INSERT INTO `grupo` VALUES (3,4,1,1,4,'2022-09-18','001-070985-0032X',NULL),(4,4,2,1,4,'2022-09-18','001-070988-0032W',NULL),(5,5,1,1,4,'2022-09-18','001-070989-0041P',NULL),(6,5,2,1,4,'2022-09-18','001-070989-0239L',NULL),(7,6,1,1,4,'2022-09-18','001-070991-0011Q',NULL),(8,6,2,1,4,'2022-09-18','001-070992-0031X',NULL),(9,7,1,1,4,'2022-09-18','001-070997-0031X',NULL),(10,7,2,1,4,'2022-09-18','001-070999-0043W',NULL),(11,8,1,1,4,'2022-09-18','001-070999-0231S',NULL),(12,8,2,1,4,'2022-09-18','001-071070-0129X',NULL),(13,9,1,1,4,'2022-09-18','001-071072-0009A',NULL),(14,9,2,1,4,'2022-09-18','001-071073-0007Q',NULL),(15,4,1,3,4,'2022-09-18','001-071080-0018U',NULL),(16,4,2,3,4,'2022-09-18','001-071082-0129X',NULL),(17,5,1,3,4,'2022-09-18','001-071087-0023Z',NULL),(18,5,2,3,4,'2022-09-18','001-071089-0018K',NULL),(19,6,1,3,4,'2022-09-18','001-071089-0018U',NULL),(20,6,2,3,4,'2022-09-18','001-071090-0048H',NULL),(21,7,1,3,4,'2022-09-18','001-071091-0113Z',NULL),(22,7,2,3,4,'2022-09-18','001-071097-3248G',NULL),(23,8,1,3,4,'2022-09-18','001-071099-0148Y',NULL),(24,8,2,3,4,'2022-09-18','001-100494-0001V',NULL),(25,9,1,3,4,'2022-09-18','001-180990-0004Z',NULL),(26,9,2,3,4,'2022-09-18','001-230890-0031X',NULL);
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
  CONSTRAINT `FK_HORAIO_DESIGNADO` FOREIGN KEY (`ID_HORARIO_DESIGNADO`) REFERENCES `horario_designado` (`ID`),
  CONSTRAINT `FK_ID_DIA` FOREIGN KEY (`ID_DIA`) REFERENCES `dia` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_bloque`
--

LOCK TABLES `horario_bloque` WRITE;
/*!40000 ALTER TABLE `horario_bloque` DISABLE KEYS */;
INSERT INTO `horario_bloque` VALUES (1,1,1,1,NULL),(2,2,1,1,NULL),(3,3,1,1,NULL),(4,4,1,1,NULL),(5,5,1,1,NULL),(6,6,1,1,NULL),(7,1,1,2,NULL),(8,2,1,2,NULL),(9,3,1,2,NULL),(10,4,1,2,NULL),(11,5,1,2,NULL),(12,6,1,2,NULL),(13,1,1,3,NULL),(14,2,1,3,NULL),(15,3,1,3,NULL),(16,4,1,3,NULL),(17,5,1,3,NULL),(18,6,1,3,NULL),(19,1,1,4,NULL),(20,2,1,4,NULL),(21,3,1,4,NULL),(22,4,1,4,NULL),(23,5,1,4,NULL),(24,6,1,4,NULL),(25,1,1,5,NULL),(26,2,1,5,NULL),(27,3,1,5,NULL),(28,4,1,5,NULL),(29,5,1,5,NULL),(30,6,1,5,NULL),(31,7,3,1,NULL),(32,8,3,1,NULL),(33,9,3,1,NULL),(34,10,3,1,NULL),(35,11,3,1,NULL),(36,12,3,1,NULL),(37,7,3,2,NULL),(38,8,3,2,NULL),(39,9,3,2,NULL),(40,10,3,2,NULL),(41,11,3,2,NULL),(42,12,3,2,NULL),(43,7,3,3,NULL),(44,8,3,3,NULL),(45,9,3,3,NULL),(46,10,3,3,NULL),(47,11,3,3,NULL),(48,12,3,3,NULL),(49,7,3,4,NULL),(50,8,3,4,NULL),(51,9,3,4,NULL),(52,10,3,4,NULL),(53,11,3,4,NULL),(54,12,3,4,NULL),(55,7,3,5,NULL),(56,8,3,5,NULL),(57,9,3,5,NULL),(58,10,3,5,NULL),(59,11,3,5,NULL),(60,12,3,5,NULL);
/*!40000 ALTER TABLE `horario_bloque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_designado`
--

DROP TABLE IF EXISTS `horario_designado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario_designado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(20) DEFAULT NULL,
  `HORARIO` varchar(40) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_designado`
--

LOCK TABLES `horario_designado` WRITE;
/*!40000 ALTER TABLE `horario_designado` DISABLE KEYS */;
INSERT INTO `horario_designado` VALUES (1,'BLOQUE 1','7:00 AM - 7:45 AM',NULL),(2,'BLOQUE 2','7:45 AM - 8:30 AM',NULL),(3,'BLOQUE 3','8:30 AM - 9:15 AM',NULL),(4,'BLOQUE 4','9:15 AM - 10:00 AM',NULL),(5,'BLOQUE 5','10:30 AM - 11:15 AM',NULL),(6,'BLOQUE 6','11:15 AM - 12:00 MD',NULL),(7,'BLOQUE 1','12:30 MD - 1:15 PM',NULL),(8,'BLOQUE 2','1:15 PM - 2:00 PM',NULL),(9,'BLOQUE 3','2:00 PM - 2:45 PM',NULL),(10,'BLOQUE 4','2:45 PM - 3:30 PM',NULL),(11,'BLOQUE 5','3:45 PM - 4:30 PM',NULL),(12,'BLOQUE 6','4:30 PM - 5:15 PM',NULL);
/*!40000 ALTER TABLE `horario_designado` ENABLE KEYS */;
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
INSERT INTO `modalidad` VALUES (1,'PREESCOLAR COMUNITARIO',NULL),(2,'PREESCOLAR FORMAL',NULL),(3,'PREESCOLAR MULTINIVEL',NULL),(4,'PRIMARIA REGULAR',NULL),(5,'PRRIMARIA EXTRAEDAD',NULL),(6,'SECUNDARIA DIURNA',NULL),(7,'SECUNDARIA NOCTURNA',NULL),(8,'SECUNDARIA POR ENCUENTRO',NULL);
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
INSERT INTO `personal` VALUES ('001-070984-0031F','MAGDA','VERONICA','FLORES','LOPEZ','1984-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 2 CUADRAS AL SUR',0,'magda123','„V£‹ÀWrø2m',_binary '',2,'2022-09-08'),('001-070985-0032X','SARAI','SOFIA','MERCADO','LUNA','1985-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'sari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070988-0032W','MARIA','JULIETA','MARTINEZ','LARIOS','1988-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'maria123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070989-0041P','MARJORIE','JACQUELINE','MEMBREÑO','CASTRO','1989-07-09','F','88124033','ENTRADA PRINCIPAL CIUDAD SANDINO 2 CUADRAS AL SUR',40,'marjo123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070989-0239L','MARIA','ELIZABETH','ARAGON','ROA','1989-07-09','F','78974033','PARQUE MATEARE 3 CUADRAS AL SUR',40,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070990-0031F','YURI','PATRICIA','HERNANDEZ','RAMIREZ','1990-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 7 CUADRAS AL SUR',0,'yuri123','„V£‹ÀWrø2m',_binary '\0',3,'2022-09-08'),('001-070991-0011Q','ANDREA','ANTONIA','SILVA','GUIDO','1991-07-09','F','77774033','PARQUE MATEARE 7 CUADRAS AL SUR',40,'andy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070992-0031X','MARCO','AURELIO','ALEMAN','SOLIS','1992-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',36,'marco123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070997-0031X','MEYLING','ESTEFANIA','PEREZ','VELASQUEZ','1997-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'mey123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070999-0043W','SEBASTIAN','JOSE','MEZA','PEREZ','1999-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'sebas123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070999-0231S','ESTELA','RACHEL','PEREZ','BRIONES','1999-07-09','F','79974033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'este123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071070-0129X','MERCEDES','LISSETH','SAAVEDRA','ORTEGA','1970-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'mercedes123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071072-0009A','ATALIA','ABIGAIL','MONTERO','ORTEGA','1972-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'atalia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071073-0007Q','NOELIA','SOFIA','ARAGON','SOLIS','1973-09-09','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'noelia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071080-0018U','ANABEL','','OROZCO','VASQUEZ','1980-07-12','F','81299033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'anabel123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071082-0129X','URANIA','','ARROLIGA','ESTRADA','1982-07-12','F','81204333','CARRETERA VIEJA A LEON KM 24',10,'urania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071087-0023Z','JERONIMA','SONIA','MONTERO','CASTRO','1987-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'jeronima123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071089-0018K','BERTHA','ESMERALDA','ORDOÑEZ','MATUTE','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'bertha123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071089-0018U','BETHANIA','','SALGADO','MERARI','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'bethania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071090-0048H','IRIS','SOFIA','SOLIS','GUEVARA','1990-12-12','F','81223033','ENTRADA CIUDAD SANDINO 9 CUADRAS AL NORTE',10,'iris123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071091-0113Z','MARTIN','JOSE','CACERES','BRIONES','1991-07-10','M','77274089','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'martin123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071097-3248G','IRMA','','RODRIGUEZ','SOMARRIBA','1997-07-12','F','81274033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'irma123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071099-0148Y','REYNA','ISABEL','VELASZQUEZ','ROA','1999-07-10','F','81274033','CARRETERA VIEJA A LEON KM 24',10,'reyna123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-100494-0001V','MARIA','MAGDALENA','URROZ','BLANDON','1994-04-10','F','88897312','CIUDAD SANDINO TOPE SUR',10,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-180990-0004Z','SOFIA','SARAI','MARTINEZ','RUIZ','1990-09-18','F','89903242','PARQUE MATEARE 7 CUADRAS LA NORTE',10,'sofiy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-230890-0031X','DINA','SARA','CASTRO','FLORES','1990-08-23','F','77774033','CARRETERA VIEJA A LEON KM 29',10,'dina123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('002-071094-0148B','FATIMA','YALENA','MOJICA','ARAGON','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'fatima123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('002-071097-0148L','ARELYS','VANESSA','JALINA','ROCHA','1997-07-12','F','82474033','JARDINES DE VERACRUZ DE LA ROTONDA 2 CUADRAS AL LAGO',10,'arelys123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('440-071091-21480','FLOR','DE MARIA','PINEDA','ARVIXU','1991-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'flor123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('440-071094-0148Y','ISABEL','SERENA','MEZA','PEREZ','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'isabel123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('443-070990-0012P','JORGE','ENMANUEL','LEIVA','SILVA','1990-07-09','M','89774033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',10,'jorge123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('443-071091-0113Z','OSCAR','DANILO','CASTRO','FLORES','1991-07-10','M','81274033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',10,'oscar123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('448-1504993-0001V','MACOS','RAMON','MENDOZA','PEREZ','1993-04-15','M','75201807','SABANA GRANDE, VILLA JERUSALEM',10,'macos123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-21'),('449-071080-0148Y','CARMEN','ELVIRA','PINEDA','ARVIZU','1980-07-10','F','81271233','BO. NUEVA VIDA KM 10 CARRETERA VIEJA A LEON CASA NO210',10,'carmen123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08');
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
INSERT INTO `seccion` VALUES (1,'SECCION A',NULL),(2,'SECCION B',NULL),(3,'SECCION C',NULL);
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
INSERT INTO `turno` VALUES (1,'MATUTINO','7:00 AM - 12:00 MD',NULL),(2,'MATUTINO','8:00 AM - 11:00 AM',NULL),(3,'VESPERTINO','12:30 MD - 5:15 PM',NULL),(4,'SABATINO','8:00 AM - 4:00 PM',NULL);
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
     SELECT gg.DESCRIPCION as GRADO,s.DESCRIPCION AS SECCION,t.DESCRIPCION AS TURNO,d.DESCRIPCION AS DIA,hd.DESCRIPCION AS "NO DE BLOQUE", 
     hd.HORARIO AS "HORARIO DE BLOQUE" , a.DESCRIPCION as ASIGNATURA FROM BLOQUE_CLASE bc 					
										INNER JOIN  asignatura a on bc.ID_ASIGNATURA = a.ID
                                        INNER JOIN horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID
                                        INNER JOIN horario_designado hd on hb.ID_HORARIO_DESIGNADO = hd.ID
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
			INSERT INTO asignatura (DESCRIPCION) VALUES (upper(_Desripcion));
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
			INSERT into bloque_clase (ID_HORARIO_BLOQUE,ID_ASIGNATURA,ID_GRUPO,CEDULA_DOCENTE) VALUES (_id_horario_bloque,_id_asignatura,_id_grupo,_cedula);
			UPDATE personal SET HORAS_LABORALES = (HORAS_LABORALES + 1) where CEDULA =  _cedula;
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
/*!50001 VIEW `vw_bloque_info` AS select `bc`.`ID` AS `ID_BLOQUE_CLASE`,`bc`.`ID_GRUPO` AS `ID_GRUPO`,`m`.`ID` AS `ID_MODALIDAD`,`m`.`DESCRIPCION` AS `MODALIDAD`,`gg`.`ID` AS `ID_GRADO`,`gg`.`DESCRIPCION` AS `GRADO`,`s`.`ID` AS `ID_SECCION`,`s`.`DESCRIPCION` AS `SECCION`,`hb`.`ID_TURNO` AS `ID_TURNO`,`t`.`DESCRIPCION` AS `TURNO`,`hb`.`ID_DIA` AS `ID_DIA`,`d`.`DESCRIPCION` AS `DIA`,`hb`.`ID_HORARIO_DESIGNADO` AS `ID_BLOQUE`,`hd`.`DESCRIPCION` AS `NO_BLOQUE`,`hd`.`HORARIO` AS `HORARIO_BLOQUE`,`a`.`ID` AS `CODIGO_ASIGNATURA`,`a`.`DESCRIPCION` AS `ASIGNATURA`,`p`.`CEDULA` AS `CEDULA_DOCENTE`,concat(`p`.`PRIMER_NOMBRE`,' ',`p`.`PRIMER_APELLIDO`) AS `DOCENTE` from ((((((((((`bloque_clase` `bc` join `asignatura` `a` on((`bc`.`ID_ASIGNATURA` = `a`.`ID`))) join `horario_bloque` `hb` on((`bc`.`ID_HORARIO_BLOQUE` = `hb`.`ID`))) join `horario_designado` `hd` on((`hb`.`ID_HORARIO_DESIGNADO` = `hd`.`ID`))) join `turno` `t` on((`hb`.`ID_TURNO` = `t`.`ID`))) join `dia` `d` on((`hb`.`ID_DIA` = `d`.`ID`))) join `grupo` `g` on((`bc`.`ID_GRUPO` = `g`.`ID`))) join `modalidad` `m` on((`g`.`ID_MODALIDAD` = `m`.`ID`))) join `grado` `gg` on((`g`.`ID_GRADO` = `gg`.`ID`))) join `seccion` `s` on((`g`.`ID_SECCION` = `s`.`ID`))) join `personal` `p` on((`g`.`CEDULA_DOCENTE` = `p`.`CEDULA`))) order by `hb`.`ID` */;
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

-- Dump completed on 2022-09-27 17:14:21
