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
  `DESCRIPCION` text NOT NULL,
  `PROTAGONISTA` text NOT NULL,
  `META_ANUAL` int DEFAULT NULL,
  `METRA_TRIMESTRAL` int DEFAULT NULL,
  `PARTICIPANTES_F` int DEFAULT NULL,
  `PARTICIPANTES_M` int DEFAULT NULL,
  `DIFICULTADES` text,
  `ALERTAS` text,
  `PROPUESTA` text,
  `OBSERVACION` text,
  `ID_P_MEDIDA` int DEFAULT NULL,
  `ID_V_CUALITATIVA` int DEFAULT NULL,
  `CEDULA_PERSONAL` char(18) DEFAULT NULL,
  `FECHA_REGISTRO` date NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PERSONAL_ACTIVIDAD` (`CEDULA_PERSONAL`),
  KEY `FK_ACTIVDAD_P_MEDIDA` (`ID_P_MEDIDA`),
  KEY `FK_ACTIVDAD_VALORACION_CUALITATIVA` (`ID_V_CUALITATIVA`),
  CONSTRAINT `FK_ACTIVDAD_P_MEDIDA` FOREIGN KEY (`ID_P_MEDIDA`) REFERENCES `plan_de_medidas` (`ID`),
  CONSTRAINT `FK_ACTIVDAD_VALORACION_CUALITATIVA` FOREIGN KEY (`ID_V_CUALITATIVA`) REFERENCES `valoracion_cualitativa` (`ID`),
  CONSTRAINT `FK_PERSONAL_ACTIVIDAD` FOREIGN KEY (`CEDULA_PERSONAL`) REFERENCES `personal` (`CEDULA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,' IMPLEMENTAR EL PROGRAMA NACIONAL ORIENTADO A FORTALECER \nCOMPETENCIAS FUNDAMENTALES VERIFICABLES EN: APRENDIZAJE AMIGABLE DE LAS MATEMÁTICAS PARA LA RESOLUCIÓN \nDE PROBLEMAS; EL HÁBITO, DISFRUTE DE LA LECTURA Y COMPRENSIÓN LECTORA; DOMINIO DEL MÉTODO CIENTÍFICO, \nCOHERENTE CON ESTÁNDARES CURRICULARES Y METODOLOGÍAS ACORDES A CADA NIVEL EDUCATIVO QUE CONTRIBUYA A ÁREAS \nVITALES PARA LA CALIDAD EDUCATIVA','40 CENTROS EDUCATIVOS REALIZANDO FESTIVALES DE ORATORIA',40,30,20,10,'A PESAR QUE SE HA AVANZADO EN UN 75%, EL RESULTADO NO ES SATISFACTORIO, DEBIDO A QUE \n NO CONTABAN CON LA NORMATIVA PARA REALIZAR LOS FESTIVALES DE ORATORIA.','LAS CIRCULARES \n ENVIADAS POR INFOMINED EL DESTINO FINAL SON LAS DELEGACIONES DEPARTAMENTALES LO QUE REQUIERE OTRO TIEMPO PARA QUE \n LLEGUE HASTA LOS CENTROS EDUCATIVOS.','LAS CIRCULARES \n ENVIADAS POR INFOMINED EL DESTINO FINAL SON LAS DELEGACIONES DEPARTAMENTALES LO QUE REQUIERE OTRO TIEMPO PARA QUE \n LLEGUE HASTA LOS CENTROS EDUCATIVOS.','',1,1,'001-070984-0031F','2022-11-20',_binary ''),(2,'1. IMPLEMENTAR EL PROGRAMA NACIONAL ORIENTADO A FORTALECER \nCOMPETENCIAS FUNDAMENTALES VERIFICABLES EN: APRENDIZAJE AMIGABLE DE LAS MATEMÁTICAS PARA LA RESOLUCIÓN DE PROBLEMAS;\n EL HÁBITO, DISFRUTE DE LA LECTURA Y COMPRENSIÓN LECTORA; DOMINIO DEL MÉTODO CIENTÍFICO, COHERENTE CON ESTÁNDARES CURRICULARES\n Y METODOLOGÍAS ACORDES A CADA NIVEL EDUCATIVO QUE CONTRIBUYA A ÁREAS VITALES PARA LA CALIDAD EDUCATIVA.','DOCENTES DE PRIMARIA INTEGRADOS EN CURSOS DE PROFESIONALIZACIÓN EN ESCUELAS NORMALES DEL PAIS.',40,30,20,10,'A PESAR QUE SE HA AVANZADO EN UN 75%, EL RESULTADO NO ES SATISFACTORIO, DEBIDO A QUE NO CONTABAN CON LA NORMATIVA PARA REALIZAR LOS FESTIVALES DE ORATORIA.','','','',2,2,'001-070984-0031F','2022-11-20',_binary ''),(3,' IMPLEMENTAR EL PROGRAMA NACIONAL ORIENTADO A FORTALECER \nCOMPETENCIAS FUNDAMENTALES VERIFICABLES EN: APRENDIZAJE AMIGABLE DE LAS MATEMÁTICAS PARA LA RESOLUCIÓN \nDE PROBLEMAS; EL HÁBITO, DISFRUTE DE LA LECTURA Y COMPRENSIÓN LECTORA; DOMINIO DEL MÉTODO CIENTÍFICO, \nCOHERENTE CON ESTÁNDARES CURRICULARES Y METODOLOGÍAS ACORDES A CADA NIVEL EDUCATIVO QUE CONTRIBUYA A ÁREAS \nVITALES PARA LA CALIDAD EDUCATIVA','40 CENTROS EDUCATIVOS REALIZANDO FESTIVALES DE ORATORIA',40,30,20,10,'A PESAR QUE SE HA AVANZADO EN UN 75%, EL RESULTADO NO ES SATISFACTORIO, DEBIDO A QUE \n NO CONTABAN CON LA NORMATIVA PARA REALIZAR LOS FESTIVALES DE ORATORIA.','LAS CIRCULARES \n ENVIADAS POR INFOMINED EL DESTINO FINAL SON LAS DELEGACIONES DEPARTAMENTALES LO QUE REQUIERE OTRO TIEMPO PARA QUE \n LLEGUE HASTA LOS CENTROS EDUCATIVOS.','LAS CIRCULARES \n ENVIADAS POR INFOMINED EL DESTINO FINAL SON LAS DELEGACIONES DEPARTAMENTALES LO QUE REQUIERE OTRO TIEMPO PARA QUE \n LLEGUE HASTA LOS CENTROS EDUCATIVOS.','',3,3,'001-070984-0031F','2022-11-20',_binary ''),(4,'1. IMPLEMENTAR EL PROGRAMA NACIONAL ORIENTADO A FORTALECER \nCOMPETENCIAS FUNDAMENTALES VERIFICABLES EN: APRENDIZAJE AMIGABLE DE LAS MATEMÁTICAS PARA LA RESOLUCIÓN DE PROBLEMAS;\n EL HÁBITO, DISFRUTE DE LA LECTURA Y COMPRENSIÓN LECTORA; DOMINIO DEL MÉTODO CIENTÍFICO, COHERENTE CON ESTÁNDARES CURRICULARES\n Y METODOLOGÍAS ACORDES A CADA NIVEL EDUCATIVO QUE CONTRIBUYA A ÁREAS VITALES PARA LA CALIDAD EDUCATIVA.','DOCENTES DE PRIMARIA INTEGRADOS EN CURSOS DE PROFESIONALIZACIÓN EN ESCUELAS NORMALES DEL PAIS.',40,30,8,9,'A PESAR QUE SE HA AVANZADO EN UN 75%, EL RESULTADO NO ES SATISFACTORIO, DEBIDO A QUE NO CONTABAN CON LA NORMATIVA PARA REALIZAR LOS FESTIVALES DE ORATORIA.','','','',4,4,'001-070984-0031F','2022-11-20',_binary ''),(5,'','1',10,5,1,1,'1','1','1','1',5,5,'001-070984-0031F','2022-11-21',_binary '');
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
  `ESTADO_A` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'LENGUA Y LITERATURA',_binary '',_binary ''),(2,'MATEMATICAS',_binary '',_binary ''),(3,'APRENDER A EMPRENDER Y PROSPERAR',_binary '',_binary ''),(4,'CIENCIAS SOCIALES',_binary '',_binary ''),(5,'CIENCIAS NATURALES',_binary '',_binary ''),(6,'EDUCACION FISICA Y PRACTICA DEPORTIVA',_binary '',_binary ''),(7,'DERECHOS Y DIGNIDAD DE LA MUJER',_binary '',_binary ''),(8,'FISICA',_binary '',_binary ''),(9,'QUIMICA',_binary '',_binary ''),(10,'BIOLOGIA',_binary '\0',_binary ''),(11,'CRECIENDO EN VALORES',_binary '',_binary ''),(12,'EDUCACION PARA APRENDER, EMPREDER Y PROSPERAR',_binary '',_binary ''),(13,'TALLER DE ARTE Y CULTURA',_binary '',_binary ''),(14,'LENGUA EXTRANJERA (INGLES)',_binary '',_binary ''),(15,'HISTORIA',_binary '\0',_binary ''),(16,'ASIGNATURA DE PRUEBA',_binary '\0',_binary ''),(17,'ECONOMIA',_binary '\0',_binary ''),(18,'ESTADISTICAS',_binary '\0',_binary ''),(19,'LENGUA EXTRANJERA (FRANCES)',_binary '\0',_binary ''),(20,'TERMODINAMICA',_binary '\0',_binary '\0'),(21,'ANALISIS',_binary '\0',_binary ''),(22,'PROBANDO7485',_binary '\0',_binary ''),(23,'POO',_binary '\0',_binary '\0'),(24,'PERRORS',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_modalidad`
--

DROP TABLE IF EXISTS `asignatura_modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura_modalidad` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_ASIGNATURA` int DEFAULT NULL,
  `ID_MODALIDAD` int DEFAULT NULL,
  `ESTADO_AM` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`),
  KEY `FK_ASIGNATURA_AM` (`ID_ASIGNATURA`),
  KEY `FK_MODALIDAD_AM` (`ID_MODALIDAD`),
  CONSTRAINT `FK_ASIGNATURA_AM` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID`),
  CONSTRAINT `FK_MODALIDAD_AM` FOREIGN KEY (`ID_MODALIDAD`) REFERENCES `modalidad` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_modalidad`
--

LOCK TABLES `asignatura_modalidad` WRITE;
/*!40000 ALTER TABLE `asignatura_modalidad` DISABLE KEYS */;
INSERT INTO `asignatura_modalidad` VALUES (1,1,6,_binary ''),(2,1,4,_binary ''),(3,2,6,_binary ''),(4,2,4,_binary ''),(5,3,6,_binary ''),(6,3,4,_binary ''),(7,4,6,_binary ''),(8,4,4,_binary ''),(9,5,6,_binary ''),(10,5,4,_binary ''),(11,6,6,_binary ''),(12,6,4,_binary ''),(13,7,4,_binary ''),(14,8,6,_binary ''),(15,9,6,_binary ''),(16,10,6,_binary ''),(17,11,4,_binary ''),(18,11,6,_binary ''),(19,12,4,_binary ''),(20,12,6,_binary ''),(21,13,4,_binary ''),(22,13,6,_binary '\0'),(23,14,4,_binary '\0'),(24,14,6,_binary '\0'),(25,15,6,_binary ''),(26,1,11,_binary '\0'),(27,19,6,_binary ''),(28,19,8,_binary ''),(29,8,7,_binary ''),(30,19,10,_binary ''),(31,19,3,_binary '\0');
/*!40000 ALTER TABLE `asignatura_modalidad` ENABLE KEYS */;
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
  `TIEMPO_DESIGNADO` varchar(40) DEFAULT NULL,
  `ID_TURNO` int DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BLOQUE_TURNO` (`ID_TURNO`),
  CONSTRAINT `FK_BLOQUE_TURNO` FOREIGN KEY (`ID_TURNO`) REFERENCES `turno` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque`
--

LOCK TABLES `bloque` WRITE;
/*!40000 ALTER TABLE `bloque` DISABLE KEYS */;
INSERT INTO `bloque` VALUES (1,'BLOQUE 1','7:00 AM - 7:45 AM',NULL,_binary ''),(2,'BLOQUE 2','7:45 AM - 8:30 AM',NULL,_binary ''),(3,'BLOQUE 3','8:30 AM - 9:15 AM',NULL,_binary ''),(4,'BLOQUE 4','9:15 AM - 10:00 AM',NULL,_binary ''),(5,'BLOQUE 5','10:30 AM - 11:15 AM',NULL,_binary ''),(6,'BLOQUE 6','11:15 AM - 12:00 MD',NULL,_binary ''),(7,'BLOQUE 1','12:30 MD - 1:15 PM',NULL,_binary ''),(8,'BLOQUE 2','1:15 PM - 2:00 PM',NULL,_binary ''),(9,'BLOQUE 3','2:00 PM - 2:45 PM',NULL,_binary ''),(10,'BLOQUE 4','2:45 PM - 3:30 PM',NULL,_binary ''),(11,'BLOQUE 5','3:45 PM - 4:30 PM',NULL,_binary ''),(12,'BLOQUE 6','4:30 PM - 5:15 PM',NULL,_binary ''),(13,'BLOQUE 1 ','8:00 AM - 8:25 AM',NULL,_binary '\0'),(14,'BLOQUE 2 ','8:25 AM - 8:40 AM',NULL,_binary '\0'),(15,'BLOQUE 3','8:40 AM - 8:55 AM',NULL,_binary '\0'),(16,'BLOQUE 4 ','8:55 AM - 9:20 AM',NULL,_binary '\0'),(17,'BLOQUE 5 ','9:20 AM - 9:50 AM',NULL,_binary '\0'),(18,'BLOQUE 6 ','10:20 AM - 10:35 AM',NULL,_binary '\0'),(19,'BLOQUE 7 ','10:35 AM - 11:00 AM',NULL,_binary '\0'),(20,'BLOQUE 1 ','8:00 AM - 8:25 AM',NULL,_binary '\0'),(21,'BLOQUE 2 ','8:25 AM - 8:45 AM',NULL,_binary '\0'),(22,'BLOQUE 3 ','8:45 AM - 9:05 AM',NULL,_binary '\0'),(23,'BLOQUE 4 ','9:05 AM - 9:30 AM',NULL,_binary '\0'),(24,'BLOQUE 5 ','9:30 AM - 10:00 AM',NULL,_binary '\0'),(25,'BLOQUE 6 ','10:30 AM - 10:50 AM',NULL,_binary '\0'),(26,'BLOQUE 7 ','10:50 AM - 11:11 AM',NULL,_binary '\0'),(27,'BLOQUE 8 ','11:11 AM - 11:30 AM',NULL,_binary '\0'),(28,'BLOQUE 1','8:00 AM - 8:20 AM',NULL,_binary '\0'),(29,'BLOQUE 2','8:20 AM - 8:50 AM',NULL,_binary '\0'),(30,'BLOQUE 3','8:50 AM - 9:20 AM',NULL,_binary '\0'),(31,'BLOQUE 4','9:20 AM - 9:40 AM',NULL,_binary '\0'),(32,'BLOQUE 5','9:40 AM - 10:10 AM',NULL,_binary '\0'),(33,'BLOQUE 6','10:40 AM - 11:10 AM',NULL,_binary '\0'),(34,'BLOQUE 7','11:10 AM - 11:40 AM',NULL,_binary '\0'),(35,'BLOQUE 8','11:40 AM - 12:00 AM',NULL,_binary '\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque_clase`
--

LOCK TABLES `bloque_clase` WRITE;
/*!40000 ALTER TABLE `bloque_clase` DISABLE KEYS */;
INSERT INTO `bloque_clase` VALUES (3,1,1,3,'001-070985-0032X',_binary ''),(4,2,1,3,'001-070985-0032X',_binary ''),(5,3,2,3,'001-070985-0032X',_binary ''),(6,4,2,3,'001-070985-0032X',_binary ''),(7,5,6,3,'001-070985-0032X',_binary ''),(8,6,6,3,'001-070985-0032X',_binary ''),(9,7,14,3,'001-070985-0032X',_binary ''),(10,8,1,3,'001-070985-0032X',_binary ''),(11,9,11,3,'001-070985-0032X',_binary ''),(12,10,13,3,'001-070985-0032X',_binary ''),(13,11,13,3,'001-070985-0032X',_binary ''),(14,12,2,3,'001-070985-0032X',_binary ''),(15,13,1,3,'001-070985-0032X',_binary ''),(16,14,1,3,'001-070985-0032X',_binary ''),(17,15,2,3,'001-070985-0032X',_binary ''),(18,16,6,3,'001-070985-0032X',_binary ''),(19,17,12,3,'001-070985-0032X',_binary ''),(20,18,13,3,'001-070985-0032X',_binary ''),(21,19,2,3,'001-070985-0032X',_binary ''),(22,20,2,3,'001-070985-0032X',_binary ''),(23,21,1,3,'001-070985-0032X',_binary ''),(24,22,6,3,'001-070985-0032X',_binary ''),(25,23,13,3,'001-070985-0032X',_binary ''),(26,24,12,3,'001-070985-0032X',_binary ''),(27,25,2,3,'001-070985-0032X',_binary ''),(28,26,2,3,'001-070985-0032X',_binary ''),(29,27,1,3,'001-070985-0032X',_binary ''),(30,28,11,3,'001-070985-0032X',_binary ''),(31,29,13,3,'001-070985-0032X',_binary ''),(32,30,12,3,'001-070985-0032X',_binary ''),(39,1,1,4,'001-070988-0032W',_binary ''),(40,2,1,4,'001-070988-0032W',_binary ''),(41,3,2,4,'001-070988-0032W',_binary ''),(42,4,2,4,'001-070988-0032W',_binary ''),(43,5,6,4,'001-070988-0032W',_binary ''),(44,6,6,4,'001-070988-0032W',_binary ''),(45,7,14,4,'001-070988-0032W',_binary ''),(46,8,1,4,'001-070988-0032W',_binary ''),(47,9,11,4,'001-070988-0032W',_binary ''),(48,10,13,4,'001-070988-0032W',_binary ''),(49,11,13,4,'001-070988-0032W',_binary ''),(50,12,2,4,'001-070988-0032W',_binary ''),(51,13,1,4,'001-070988-0032W',_binary ''),(52,14,1,4,'001-070988-0032W',_binary ''),(53,15,2,4,'001-070988-0032W',_binary ''),(54,16,6,4,'001-070988-0032W',_binary ''),(55,17,12,4,'001-070988-0032W',_binary ''),(56,18,13,4,'001-070988-0032W',_binary ''),(57,19,2,4,'001-070988-0032W',_binary ''),(58,20,2,4,'001-070988-0032W',_binary ''),(59,21,1,4,'001-070988-0032W',_binary ''),(60,22,6,4,'001-070988-0032W',_binary ''),(61,23,13,4,'001-070988-0032W',_binary ''),(62,24,12,4,'001-070988-0032W',_binary ''),(63,25,2,4,'001-070988-0032W',_binary ''),(64,26,2,4,'001-070988-0032W',_binary ''),(65,27,1,4,'001-070988-0032W',_binary ''),(66,28,11,4,'001-070988-0032W',_binary ''),(67,29,13,4,'001-070988-0032W',_binary ''),(68,30,12,4,'001-070988-0032W',_binary ''),(69,1,1,5,'001-070989-0041P',_binary ''),(70,2,1,5,'001-070989-0041P',_binary ''),(71,3,14,5,'001-070989-0041P',_binary ''),(72,4,12,5,'001-070989-0041P',_binary ''),(73,5,2,5,'001-070989-0041P',_binary ''),(74,6,11,5,'001-070989-0041P',_binary ''),(75,7,14,5,'001-070989-0041P',_binary ''),(76,8,1,5,'001-070989-0041P',_binary ''),(77,9,11,5,'001-070989-0041P',_binary ''),(78,10,13,5,'001-070989-0041P',_binary ''),(79,11,13,5,'001-070989-0041P',_binary ''),(80,12,2,5,'001-070989-0041P',_binary ''),(81,13,1,5,'001-070989-0041P',_binary ''),(82,14,1,5,'001-070989-0041P',_binary ''),(83,15,2,5,'001-070989-0041P',_binary ''),(84,16,6,5,'001-070989-0041P',_binary ''),(85,17,12,5,'001-070989-0041P',_binary ''),(86,18,13,5,'001-070989-0041P',_binary ''),(87,19,2,5,'001-070989-0041P',_binary ''),(88,20,2,5,'001-070989-0041P',_binary ''),(89,21,1,5,'001-070989-0041P',_binary ''),(90,22,6,5,'001-070989-0041P',_binary ''),(91,23,13,5,'001-070989-0041P',_binary ''),(92,24,12,5,'001-070989-0041P',_binary ''),(93,25,2,5,'001-070989-0041P',_binary ''),(94,26,2,5,'001-070989-0041P',_binary ''),(95,27,1,5,'001-070989-0041P',_binary ''),(96,28,11,5,'001-070989-0041P',_binary ''),(97,29,13,5,'001-070989-0041P',_binary ''),(98,30,12,5,'001-070989-0041P',_binary ''),(99,1,1,6,'001-070989-0239L',_binary ''),(100,2,1,6,'001-070989-0239L',_binary ''),(101,3,14,6,'001-070989-0239L',_binary ''),(102,4,12,6,'001-070989-0239L',_binary ''),(103,5,2,6,'001-070989-0239L',_binary ''),(104,6,11,6,'001-070989-0239L',_binary ''),(105,7,14,6,'001-070989-0239L',_binary ''),(106,8,1,6,'001-070989-0239L',_binary ''),(107,9,11,6,'001-070989-0239L',_binary ''),(108,10,13,6,'001-070989-0239L',_binary ''),(109,11,13,6,'001-070989-0239L',_binary ''),(110,12,2,6,'001-070989-0239L',_binary ''),(111,13,1,6,'001-070989-0239L',_binary ''),(112,14,1,6,'001-070989-0239L',_binary ''),(113,15,2,6,'001-070989-0239L',_binary ''),(114,16,6,6,'001-070989-0239L',_binary ''),(115,17,12,6,'001-070989-0239L',_binary ''),(116,18,13,6,'001-070989-0239L',_binary ''),(117,19,2,6,'001-070989-0239L',_binary ''),(118,20,2,6,'001-070989-0239L',_binary ''),(119,21,1,6,'001-070989-0239L',_binary ''),(120,22,6,6,'001-070989-0239L',_binary ''),(121,23,13,6,'001-070989-0239L',_binary ''),(122,24,12,6,'001-070989-0239L',_binary ''),(123,25,2,6,'001-070989-0239L',_binary ''),(124,26,2,6,'001-070989-0239L',_binary ''),(125,27,1,6,'001-070989-0239L',_binary ''),(126,28,11,6,'001-070989-0239L',_binary ''),(127,29,13,6,'001-070989-0239L',_binary ''),(128,30,12,6,'001-070989-0239L',_binary ''),(129,1,1,7,'001-070991-0011Q',_binary ''),(130,2,1,7,'001-070991-0011Q',_binary ''),(131,3,4,7,'001-070991-0011Q',_binary ''),(132,4,12,7,'001-070991-0011Q',_binary ''),(133,5,2,7,'001-070991-0011Q',_binary ''),(134,6,5,7,'001-070991-0011Q',_binary ''),(135,7,1,7,'001-070991-0011Q',_binary ''),(136,8,1,7,'001-070991-0011Q',_binary ''),(137,9,11,7,'001-070991-0011Q',_binary ''),(138,10,13,7,'001-070991-0011Q',_binary ''),(139,11,5,7,'001-070991-0011Q',_binary ''),(140,12,2,7,'001-070991-0011Q',_binary ''),(141,19,2,7,'001-070991-0011Q',_binary ''),(142,20,2,7,'001-070991-0011Q',_binary ''),(143,21,1,7,'001-070991-0011Q',_binary ''),(144,22,6,7,'001-070991-0011Q',_binary ''),(145,23,5,7,'001-070991-0011Q',_binary ''),(146,24,5,7,'001-070991-0011Q',_binary ''),(147,25,2,7,'001-070991-0011Q',_binary ''),(148,26,2,7,'001-070991-0011Q',_binary ''),(149,27,1,7,'001-070991-0011Q',_binary ''),(150,28,11,7,'001-070991-0011Q',_binary ''),(151,29,13,7,'001-070991-0011Q',_binary ''),(152,30,12,7,'001-070991-0011Q',_binary ''),(153,13,6,7,'001-070991-0011Q',_binary ''),(154,14,4,7,'001-070991-0011Q',_binary ''),(155,15,2,7,'001-070991-0011Q',_binary ''),(156,16,1,7,'001-070991-0011Q',_binary ''),(157,17,4,7,'001-070991-0011Q',_binary ''),(158,18,4,7,'001-070991-0011Q',_binary ''),(159,1,1,8,'001-070992-0031X',_binary ''),(160,2,1,8,'001-070992-0031X',_binary ''),(161,3,4,8,'001-070992-0031X',_binary ''),(162,4,12,8,'001-070992-0031X',_binary ''),(163,5,2,8,'001-070992-0031X',_binary ''),(164,6,5,8,'001-070992-0031X',_binary ''),(165,7,1,8,'001-070992-0031X',_binary ''),(166,8,1,8,'001-070992-0031X',_binary ''),(168,13,6,8,'001-070992-0031X',_binary ''),(169,14,4,8,'001-070992-0031X',_binary ''),(170,15,2,8,'001-070992-0031X',_binary ''),(171,16,1,8,'001-070992-0031X',_binary ''),(172,17,4,8,'001-070992-0031X',_binary ''),(173,18,4,8,'001-070992-0031X',_binary ''),(174,19,2,8,'001-070992-0031X',_binary ''),(175,20,2,8,'001-070992-0031X',_binary ''),(176,21,1,8,'001-070992-0031X',_binary ''),(177,22,6,8,'001-070992-0031X',_binary ''),(178,23,5,8,'001-070992-0031X',_binary ''),(179,24,5,8,'001-070992-0031X',_binary ''),(180,25,2,8,'001-070992-0031X',_binary ''),(181,26,2,8,'001-070992-0031X',_binary ''),(182,27,1,8,'001-070992-0031X',_binary ''),(183,28,11,8,'001-070992-0031X',_binary ''),(184,29,13,8,'001-070992-0031X',_binary ''),(185,30,12,8,'001-070992-0031X',_binary ''),(186,9,1,8,'001-070992-0031X',_binary ''),(187,10,13,8,'001-070992-0031X',_binary ''),(188,11,5,8,'001-070992-0031X',_binary ''),(189,12,2,8,'001-070992-0031X',_binary ''),(190,1,2,9,'001-070997-0031X',_binary ''),(191,2,1,9,'001-070997-0031X',_binary ''),(192,3,4,9,'001-070997-0031X',_binary ''),(193,4,5,9,'001-070997-0031X',_binary ''),(194,5,6,9,'001-070997-0031X',_binary ''),(195,6,14,9,'001-070997-0031X',_binary ''),(196,7,1,9,'001-070997-0031X',_binary ''),(197,8,2,9,'001-070997-0031X',_binary ''),(198,9,14,9,'001-070997-0031X',_binary ''),(199,10,13,9,'001-070997-0031X',_binary ''),(200,11,5,9,'001-070997-0031X',_binary ''),(201,12,6,9,'001-070997-0031X',_binary ''),(202,13,6,9,'001-070997-0031X',_binary ''),(203,14,4,9,'001-070997-0031X',_binary ''),(204,15,2,9,'001-070997-0031X',_binary ''),(205,16,1,9,'001-070997-0031X',_binary ''),(206,17,4,9,'001-070997-0031X',_binary ''),(207,18,4,9,'001-070997-0031X',_binary ''),(208,19,2,9,'001-070997-0031X',_binary ''),(209,20,5,9,'001-070997-0031X',_binary ''),(210,21,12,9,'001-070997-0031X',_binary ''),(211,22,14,9,'001-070997-0031X',_binary ''),(212,23,1,9,'001-070997-0031X',_binary ''),(213,24,4,9,'001-070997-0031X',_binary ''),(214,25,2,9,'001-070997-0031X',_binary ''),(215,26,2,9,'001-070997-0031X',_binary ''),(216,27,1,9,'001-070997-0031X',_binary ''),(217,28,11,9,'001-070997-0031X',_binary ''),(218,29,13,9,'001-070997-0031X',_binary ''),(219,30,12,9,'001-070997-0031X',_binary ''),(220,1,2,10,'001-070999-0043W',_binary ''),(221,2,1,10,'001-070999-0043W',_binary ''),(222,3,4,10,'001-070999-0043W',_binary ''),(223,4,5,10,'001-070999-0043W',_binary ''),(224,5,6,10,'001-070999-0043W',_binary ''),(225,6,14,10,'001-070999-0043W',_binary ''),(226,7,1,10,'001-070999-0043W',_binary ''),(227,8,2,10,'001-070999-0043W',_binary ''),(228,9,14,10,'001-070999-0043W',_binary ''),(229,10,13,10,'001-070999-0043W',_binary ''),(230,11,5,10,'001-070999-0043W',_binary ''),(231,12,6,10,'001-070999-0043W',_binary ''),(232,13,6,10,'001-070999-0043W',_binary ''),(233,14,4,10,'001-070999-0043W',_binary ''),(234,15,2,10,'001-070999-0043W',_binary ''),(235,16,1,10,'001-070999-0043W',_binary ''),(236,17,4,10,'001-070999-0043W',_binary ''),(237,18,4,10,'001-070999-0043W',_binary ''),(238,19,2,10,'001-070999-0043W',_binary ''),(239,20,5,10,'001-070999-0043W',_binary ''),(240,21,12,10,'001-070999-0043W',_binary ''),(241,22,14,10,'001-070999-0043W',_binary ''),(242,23,1,10,'001-070999-0043W',_binary ''),(243,24,4,10,'001-070999-0043W',_binary ''),(244,25,2,10,'001-070999-0043W',_binary ''),(245,26,2,10,'001-070999-0043W',_binary ''),(246,27,1,10,'001-070999-0043W',_binary ''),(247,28,11,10,'001-070999-0043W',_binary ''),(248,29,13,10,'001-070999-0043W',_binary ''),(249,30,12,10,'001-070999-0043W',_binary ''),(250,1,5,11,'001-070999-0231S',_binary ''),(251,2,1,11,'001-070999-0231S',_binary ''),(252,3,4,11,'001-070999-0231S',_binary ''),(253,4,5,11,'001-070999-0231S',_binary ''),(254,5,6,11,'001-070999-0231S',_binary ''),(255,6,14,11,'001-070999-0231S',_binary ''),(256,7,1,11,'001-070999-0231S',_binary ''),(257,8,2,11,'001-070999-0231S',_binary ''),(258,9,14,11,'001-070999-0231S',_binary ''),(259,10,13,11,'001-070999-0231S',_binary ''),(260,11,5,11,'001-070999-0231S',_binary ''),(261,12,6,11,'001-070999-0231S',_binary ''),(262,13,6,11,'001-070999-0231S',_binary ''),(263,14,4,11,'001-070999-0231S',_binary ''),(264,15,2,11,'001-070999-0231S',_binary ''),(265,16,1,11,'001-070999-0231S',_binary ''),(266,17,4,11,'001-070999-0231S',_binary ''),(267,18,4,11,'001-070999-0231S',_binary ''),(268,19,2,11,'001-070999-0231S',_binary ''),(269,20,5,11,'001-070999-0231S',_binary ''),(270,21,12,11,'001-070999-0231S',_binary ''),(271,22,14,11,'001-070999-0231S',_binary ''),(272,23,1,11,'001-070999-0231S',_binary ''),(273,24,4,11,'001-070999-0231S',_binary ''),(274,25,2,11,'001-070999-0231S',_binary ''),(275,26,2,11,'001-070999-0231S',_binary ''),(276,27,1,11,'001-070999-0231S',_binary ''),(277,28,11,11,'001-070999-0231S',_binary ''),(278,29,13,11,'001-070999-0231S',_binary ''),(279,30,12,11,'001-070999-0231S',_binary ''),(280,1,5,12,'001-071070-0129X',_binary ''),(281,2,1,12,'001-071070-0129X',_binary ''),(282,3,4,12,'001-071070-0129X',_binary ''),(283,4,5,12,'001-071070-0129X',_binary ''),(284,5,6,12,'001-071070-0129X',_binary ''),(285,6,14,12,'001-071070-0129X',_binary ''),(286,7,1,12,'001-071070-0129X',_binary ''),(287,8,2,12,'001-071070-0129X',_binary ''),(288,9,14,12,'001-071070-0129X',_binary ''),(289,10,13,12,'001-071070-0129X',_binary ''),(290,11,5,12,'001-071070-0129X',_binary ''),(291,12,6,12,'001-071070-0129X',_binary ''),(292,13,6,12,'001-071070-0129X',_binary ''),(293,14,4,12,'001-071070-0129X',_binary ''),(294,15,2,12,'001-071070-0129X',_binary ''),(295,16,1,12,'001-071070-0129X',_binary ''),(296,17,4,12,'001-071070-0129X',_binary ''),(297,18,4,12,'001-071070-0129X',_binary ''),(298,19,2,12,'001-071070-0129X',_binary ''),(299,20,5,12,'001-071070-0129X',_binary ''),(300,21,12,12,'001-071070-0129X',_binary ''),(301,22,14,12,'001-071070-0129X',_binary ''),(302,23,1,12,'001-071070-0129X',_binary ''),(303,24,4,12,'001-071070-0129X',_binary ''),(304,25,2,12,'001-071070-0129X',_binary ''),(305,26,2,12,'001-071070-0129X',_binary ''),(306,27,1,12,'001-071070-0129X',_binary ''),(307,28,11,12,'001-071070-0129X',_binary ''),(308,29,13,12,'001-071070-0129X',_binary ''),(309,30,12,12,'001-071070-0129X',_binary ''),(310,1,5,13,'001-071072-0009A',_binary ''),(311,2,1,13,'001-071072-0009A',_binary ''),(312,3,4,13,'001-071072-0009A',_binary ''),(313,4,5,13,'001-071072-0009A',_binary ''),(314,5,6,13,'001-071072-0009A',_binary ''),(315,6,14,13,'001-071072-0009A',_binary ''),(316,7,1,13,'001-071072-0009A',_binary ''),(317,8,2,13,'001-071072-0009A',_binary ''),(318,9,14,13,'001-071072-0009A',_binary ''),(320,13,6,13,'001-071072-0009A',_binary ''),(321,14,4,13,'001-071072-0009A',_binary ''),(322,15,2,13,'001-071072-0009A',_binary ''),(323,16,1,13,'001-071072-0009A',_binary ''),(324,17,4,13,'001-071072-0009A',_binary ''),(325,18,4,13,'001-071072-0009A',_binary ''),(326,19,2,13,'001-071072-0009A',_binary ''),(327,20,5,13,'001-071072-0009A',_binary ''),(328,21,12,13,'001-071072-0009A',_binary ''),(329,22,14,13,'001-071072-0009A',_binary ''),(330,23,1,13,'001-071072-0009A',_binary ''),(331,24,4,13,'001-071072-0009A',_binary ''),(332,25,2,13,'001-071072-0009A',_binary ''),(333,26,2,13,'001-071072-0009A',_binary ''),(334,27,1,13,'001-071072-0009A',_binary ''),(335,28,11,13,'001-071072-0009A',_binary ''),(336,29,13,13,'001-071072-0009A',_binary ''),(337,30,12,13,'001-071072-0009A',_binary ''),(339,10,13,13,'001-071072-0009A',_binary ''),(340,11,5,13,'001-071072-0009A',_binary ''),(341,12,6,13,'001-071072-0009A',_binary ''),(342,1,5,14,'001-071073-0007Q',_binary ''),(343,2,1,14,'001-071073-0007Q',_binary ''),(344,3,4,14,'001-071073-0007Q',_binary ''),(345,4,5,14,'001-071073-0007Q',_binary ''),(346,5,6,14,'001-071073-0007Q',_binary ''),(347,6,14,14,'001-071073-0007Q',_binary ''),(348,7,1,14,'001-071073-0007Q',_binary ''),(349,8,2,14,'001-071073-0007Q',_binary ''),(350,9,14,14,'001-071073-0007Q',_binary ''),(351,10,13,14,'001-071073-0007Q',_binary ''),(352,11,5,14,'001-071073-0007Q',_binary ''),(353,12,6,14,'001-071073-0007Q',_binary ''),(354,13,6,14,'001-071073-0007Q',_binary ''),(355,14,4,14,'001-071073-0007Q',_binary ''),(356,15,2,14,'001-071073-0007Q',_binary ''),(357,16,1,14,'001-071073-0007Q',_binary ''),(358,17,4,14,'001-071073-0007Q',_binary ''),(359,18,4,14,'001-071073-0007Q',_binary ''),(360,19,2,14,'001-071073-0007Q',_binary ''),(361,20,5,14,'001-071073-0007Q',_binary ''),(362,21,12,14,'001-071073-0007Q',_binary ''),(363,22,14,14,'001-071073-0007Q',_binary ''),(364,23,1,14,'001-071073-0007Q',_binary ''),(365,24,4,14,'001-071073-0007Q',_binary ''),(366,25,2,14,'001-071073-0007Q',_binary ''),(367,26,2,14,'001-071073-0007Q',_binary ''),(368,27,1,14,'001-071073-0007Q',_binary ''),(369,28,11,14,'001-071073-0007Q',_binary ''),(370,29,13,14,'001-071073-0007Q',_binary ''),(371,30,12,14,'001-071073-0007Q',_binary ''),(372,55,5,15,'001-071080-0018U',_binary ''),(373,56,1,15,'001-071080-0018U',_binary ''),(374,57,4,15,'001-071080-0018U',_binary ''),(375,58,5,15,'001-071080-0018U',_binary ''),(376,59,6,15,'001-071080-0018U',_binary ''),(377,60,14,15,'001-071080-0018U',_binary ''),(378,31,1,15,'001-071080-0018U',_binary ''),(379,32,1,15,'001-071080-0018U',_binary ''),(380,33,2,15,'001-071080-0018U',_binary ''),(381,34,2,15,'001-071080-0018U',_binary ''),(382,35,6,15,'001-071080-0018U',_binary ''),(383,36,6,15,'001-071080-0018U',_binary ''),(384,37,14,15,'001-071080-0018U',_binary ''),(385,38,1,15,'001-071080-0018U',_binary ''),(386,39,11,15,'001-071080-0018U',_binary ''),(387,40,13,15,'001-071080-0018U',_binary ''),(388,41,13,15,'001-071080-0018U',_binary ''),(389,42,2,15,'001-071080-0018U',_binary ''),(390,43,1,15,'001-071080-0018U',_binary ''),(391,44,1,15,'001-071080-0018U',_binary ''),(392,45,2,15,'001-071080-0018U',_binary ''),(393,46,6,15,'001-071080-0018U',_binary ''),(394,47,12,15,'001-071080-0018U',_binary ''),(395,48,13,15,'001-071080-0018U',_binary ''),(396,49,2,15,'001-071080-0018U',_binary ''),(397,50,2,15,'001-071080-0018U',_binary ''),(398,51,1,15,'001-071080-0018U',_binary ''),(399,52,6,15,'001-071080-0018U',_binary ''),(400,53,13,15,'001-071080-0018U',_binary ''),(401,54,12,15,'001-071080-0018U',_binary ''),(402,37,14,16,'001-071082-0129X',_binary ''),(403,38,1,16,'001-071082-0129X',_binary ''),(404,39,11,16,'001-071082-0129X',_binary ''),(405,40,13,16,'001-071082-0129X',_binary ''),(406,41,13,16,'001-071082-0129X',_binary ''),(407,42,2,16,'001-071082-0129X',_binary ''),(408,31,1,16,'001-071082-0129X',_binary ''),(409,32,1,16,'001-071082-0129X',_binary ''),(410,33,2,16,'001-071082-0129X',_binary ''),(411,34,2,16,'001-071082-0129X',_binary ''),(412,35,6,16,'001-071082-0129X',_binary ''),(413,36,6,16,'001-071082-0129X',_binary ''),(414,43,1,16,'001-071082-0129X',_binary ''),(415,44,1,16,'001-071082-0129X',_binary ''),(416,45,2,16,'001-071082-0129X',_binary ''),(417,46,6,16,'001-071082-0129X',_binary ''),(418,47,12,16,'001-071082-0129X',_binary ''),(419,48,13,16,'001-071082-0129X',_binary ''),(420,49,2,16,'001-071082-0129X',_binary ''),(421,50,2,16,'001-071082-0129X',_binary ''),(422,51,1,16,'001-071082-0129X',_binary ''),(423,52,6,16,'001-071082-0129X',_binary ''),(424,53,13,16,'001-071082-0129X',_binary ''),(425,54,12,16,'001-071082-0129X',_binary ''),(426,55,2,16,'001-071082-0129X',_binary ''),(427,56,2,16,'001-071082-0129X',_binary ''),(428,57,1,16,'001-071082-0129X',_binary ''),(429,58,11,16,'001-071082-0129X',_binary ''),(430,59,13,16,'001-071082-0129X',_binary ''),(431,60,12,16,'001-071082-0129X',_binary ''),(432,31,1,17,'001-071087-0023Z',_binary ''),(433,32,1,17,'001-071087-0023Z',_binary ''),(434,33,14,17,'001-071087-0023Z',_binary ''),(435,34,12,17,'001-071087-0023Z',_binary ''),(436,35,2,17,'001-071087-0023Z',_binary ''),(437,36,11,17,'001-071087-0023Z',_binary ''),(438,37,14,17,'001-071087-0023Z',_binary ''),(439,38,1,17,'001-071087-0023Z',_binary ''),(440,39,11,17,'001-071087-0023Z',_binary ''),(441,40,13,17,'001-071087-0023Z',_binary ''),(442,41,13,17,'001-071087-0023Z',_binary ''),(443,42,2,17,'001-071087-0023Z',_binary ''),(444,43,1,17,'001-071087-0023Z',_binary ''),(445,44,1,17,'001-071087-0023Z',_binary ''),(446,45,2,17,'001-071087-0023Z',_binary ''),(447,46,6,17,'001-071087-0023Z',_binary ''),(448,47,12,17,'001-071087-0023Z',_binary ''),(449,48,13,17,'001-071087-0023Z',_binary ''),(450,49,2,17,'001-071087-0023Z',_binary ''),(451,50,2,17,'001-071087-0023Z',_binary ''),(452,51,1,17,'001-071087-0023Z',_binary ''),(453,52,6,17,'001-071087-0023Z',_binary ''),(454,53,13,17,'001-071087-0023Z',_binary ''),(455,54,12,17,'001-071087-0023Z',_binary ''),(456,55,2,17,'001-071087-0023Z',_binary ''),(457,56,2,17,'001-071087-0023Z',_binary ''),(458,57,1,17,'001-071087-0023Z',_binary ''),(459,58,11,17,'001-071087-0023Z',_binary ''),(460,59,13,17,'001-071087-0023Z',_binary ''),(461,60,12,17,'001-071087-0023Z',_binary ''),(462,31,1,18,'001-071089-0018K',_binary ''),(463,32,1,18,'001-071089-0018K',_binary ''),(464,33,14,18,'001-071089-0018K',_binary ''),(465,34,12,18,'001-071089-0018K',_binary ''),(466,35,2,18,'001-071089-0018K',_binary ''),(467,36,11,18,'001-071089-0018K',_binary ''),(468,37,14,18,'001-071089-0018K',_binary ''),(469,38,1,18,'001-071089-0018K',_binary ''),(470,39,11,18,'001-071089-0018K',_binary ''),(471,40,13,18,'001-071089-0018K',_binary ''),(472,41,13,18,'001-071089-0018K',_binary ''),(473,42,2,18,'001-071089-0018K',_binary ''),(474,43,1,18,'001-071089-0018K',_binary ''),(475,44,1,18,'001-071089-0018K',_binary ''),(476,45,2,18,'001-071089-0018K',_binary ''),(477,46,6,18,'001-071089-0018K',_binary ''),(478,47,12,18,'001-071089-0018K',_binary ''),(479,48,13,18,'001-071089-0018K',_binary ''),(480,55,2,18,'001-071089-0018K',_binary ''),(481,56,2,18,'001-071089-0018K',_binary ''),(482,57,1,18,'001-071089-0018K',_binary ''),(483,58,11,18,'001-071089-0018K',_binary ''),(484,59,13,18,'001-071089-0018K',_binary ''),(485,60,12,18,'001-071089-0018K',_binary ''),(486,49,2,18,'001-071089-0018K',_binary ''),(487,50,2,18,'001-071089-0018K',_binary ''),(488,51,1,18,'001-071089-0018K',_binary ''),(489,52,6,18,'001-071089-0018K',_binary ''),(490,53,13,18,'001-071089-0018K',_binary ''),(491,54,12,18,'001-071089-0018K',_binary ''),(492,31,1,19,'001-071089-0018U',_binary ''),(493,32,1,19,'001-071089-0018U',_binary ''),(494,33,4,19,'001-071089-0018U',_binary ''),(495,34,12,19,'001-071089-0018U',_binary ''),(496,35,2,19,'001-071089-0018U',_binary ''),(497,36,5,19,'001-071089-0018U',_binary ''),(498,37,1,19,'001-071089-0018U',_binary ''),(499,38,1,19,'001-071089-0018U',_binary ''),(500,39,11,19,'001-071089-0018U',_binary ''),(501,40,13,19,'001-071089-0018U',_binary ''),(502,41,5,19,'001-071089-0018U',_binary ''),(503,42,2,19,'001-071089-0018U',_binary ''),(504,43,6,19,'001-071089-0018U',_binary ''),(505,44,4,19,'001-071089-0018U',_binary ''),(506,45,2,19,'001-071089-0018U',_binary ''),(507,46,1,19,'001-071089-0018U',_binary ''),(508,47,4,19,'001-071089-0018U',_binary ''),(509,48,4,19,'001-071089-0018U',_binary ''),(510,49,2,19,'001-071089-0018U',_binary ''),(511,50,2,19,'001-071089-0018U',_binary ''),(512,51,1,19,'001-071089-0018U',_binary ''),(513,52,6,19,'001-071089-0018U',_binary ''),(514,53,5,19,'001-071089-0018U',_binary ''),(515,54,5,19,'001-071089-0018U',_binary ''),(516,55,2,19,'001-071089-0018U',_binary ''),(517,56,2,19,'001-071089-0018U',_binary ''),(518,57,1,19,'001-071089-0018U',_binary ''),(519,58,11,19,'001-071089-0018U',_binary ''),(520,59,13,19,'001-071089-0018U',_binary ''),(521,60,12,19,'001-071089-0018U',_binary ''),(522,31,1,20,'001-071090-0048H',_binary ''),(523,32,1,20,'001-071090-0048H',_binary ''),(524,33,4,20,'001-071090-0048H',_binary ''),(525,34,12,20,'001-071090-0048H',_binary ''),(526,35,2,20,'001-071090-0048H',_binary ''),(527,36,5,20,'001-071090-0048H',_binary ''),(528,37,1,20,'001-071090-0048H',_binary ''),(529,38,1,20,'001-071090-0048H',_binary ''),(530,39,1,20,'001-071090-0048H',_binary ''),(531,40,13,20,'001-071090-0048H',_binary ''),(532,41,5,20,'001-071090-0048H',_binary ''),(533,42,2,20,'001-071090-0048H',_binary ''),(534,43,6,20,'001-071090-0048H',_binary ''),(535,44,4,20,'001-071090-0048H',_binary ''),(536,45,2,20,'001-071090-0048H',_binary ''),(537,46,1,20,'001-071090-0048H',_binary ''),(538,47,4,20,'001-071090-0048H',_binary ''),(539,48,4,20,'001-071090-0048H',_binary ''),(540,49,2,20,'001-071090-0048H',_binary ''),(541,50,2,20,'001-071090-0048H',_binary ''),(542,51,1,20,'001-071090-0048H',_binary ''),(543,52,6,20,'001-071090-0048H',_binary ''),(544,53,5,20,'001-071090-0048H',_binary ''),(545,54,5,20,'001-071090-0048H',_binary ''),(546,55,2,20,'001-071090-0048H',_binary ''),(547,56,2,20,'001-071090-0048H',_binary ''),(548,57,1,20,'001-071090-0048H',_binary ''),(549,58,11,20,'001-071090-0048H',_binary ''),(550,59,13,20,'001-071090-0048H',_binary ''),(551,60,12,20,'001-071090-0048H',_binary ''),(552,55,2,21,'001-071091-0113Z',_binary ''),(553,56,2,21,'001-071091-0113Z',_binary ''),(554,57,1,21,'001-071091-0113Z',_binary ''),(555,58,11,21,'001-071091-0113Z',_binary ''),(556,59,13,21,'001-071091-0113Z',_binary ''),(557,60,12,21,'001-071091-0113Z',_binary ''),(558,49,2,21,'001-071091-0113Z',_binary ''),(559,50,5,21,'001-071091-0113Z',_binary ''),(560,51,12,21,'001-071091-0113Z',_binary ''),(561,52,14,21,'001-071091-0113Z',_binary ''),(562,53,1,21,'001-071091-0113Z',_binary ''),(563,54,4,21,'001-071091-0113Z',_binary ''),(564,43,6,21,'001-071091-0113Z',_binary ''),(565,44,4,21,'001-071091-0113Z',_binary ''),(566,45,2,21,'001-071091-0113Z',_binary ''),(567,46,1,21,'001-071091-0113Z',_binary ''),(568,47,4,21,'001-071091-0113Z',_binary ''),(569,48,4,21,'001-071091-0113Z',_binary ''),(570,37,1,21,'001-071091-0113Z',_binary ''),(571,38,2,21,'001-071091-0113Z',_binary ''),(572,39,14,21,'001-071091-0113Z',_binary ''),(573,40,13,21,'001-071091-0113Z',_binary ''),(574,41,5,21,'001-071091-0113Z',_binary ''),(575,42,6,21,'001-071091-0113Z',_binary ''),(576,31,2,21,'001-071091-0113Z',_binary ''),(577,32,1,21,'001-071091-0113Z',_binary ''),(578,33,4,21,'001-071091-0113Z',_binary ''),(579,34,5,21,'001-071091-0113Z',_binary ''),(580,35,6,21,'001-071091-0113Z',_binary ''),(581,36,14,21,'001-071091-0113Z',_binary ''),(582,31,2,22,'001-071097-3248G',_binary ''),(583,32,1,22,'001-071097-3248G',_binary ''),(584,33,4,22,'001-071097-3248G',_binary ''),(585,34,5,22,'001-071097-3248G',_binary ''),(586,35,6,22,'001-071097-3248G',_binary ''),(587,36,14,22,'001-071097-3248G',_binary ''),(588,37,1,22,'001-071097-3248G',_binary ''),(589,38,2,22,'001-071097-3248G',_binary ''),(590,39,14,22,'001-071097-3248G',_binary ''),(591,40,13,22,'001-071097-3248G',_binary ''),(592,41,5,22,'001-071097-3248G',_binary ''),(593,42,6,22,'001-071097-3248G',_binary ''),(594,43,6,22,'001-071097-3248G',_binary ''),(595,44,4,22,'001-071097-3248G',_binary ''),(596,45,2,22,'001-071097-3248G',_binary ''),(597,46,1,22,'001-071097-3248G',_binary ''),(598,47,4,22,'001-071097-3248G',_binary ''),(599,48,4,22,'001-071097-3248G',_binary ''),(600,49,2,22,'001-071097-3248G',_binary ''),(601,50,5,22,'001-071097-3248G',_binary ''),(602,51,12,22,'001-071097-3248G',_binary ''),(603,52,14,22,'001-071097-3248G',_binary ''),(604,53,1,22,'001-071097-3248G',_binary ''),(605,54,4,22,'001-071097-3248G',_binary ''),(606,55,2,22,'001-071097-3248G',_binary ''),(607,56,2,22,'001-071097-3248G',_binary ''),(608,57,1,22,'001-071097-3248G',_binary ''),(609,58,11,22,'001-071097-3248G',_binary ''),(610,59,13,22,'001-071097-3248G',_binary ''),(611,60,12,22,'001-071097-3248G',_binary ''),(612,31,5,23,'001-071099-0148Y',_binary ''),(613,32,1,23,'001-071099-0148Y',_binary ''),(614,33,4,23,'001-071099-0148Y',_binary ''),(615,34,5,23,'001-071099-0148Y',_binary ''),(616,35,6,23,'001-071099-0148Y',_binary ''),(617,36,14,23,'001-071099-0148Y',_binary ''),(618,37,1,23,'001-071099-0148Y',_binary ''),(619,38,2,23,'001-071099-0148Y',_binary ''),(620,39,14,23,'001-071099-0148Y',_binary ''),(621,40,13,23,'001-071099-0148Y',_binary ''),(622,41,5,23,'001-071099-0148Y',_binary ''),(623,42,6,23,'001-071099-0148Y',_binary ''),(624,49,2,23,'001-071099-0148Y',_binary ''),(625,50,5,23,'001-071099-0148Y',_binary ''),(626,51,12,23,'001-071099-0148Y',_binary ''),(627,52,14,23,'001-071099-0148Y',_binary ''),(628,53,1,23,'001-071099-0148Y',_binary ''),(629,54,4,23,'001-071099-0148Y',_binary ''),(630,43,6,23,'001-071099-0148Y',_binary ''),(631,44,4,23,'001-071099-0148Y',_binary ''),(632,45,2,23,'001-071099-0148Y',_binary ''),(633,46,1,23,'001-071099-0148Y',_binary ''),(634,47,4,23,'001-071099-0148Y',_binary ''),(635,48,4,23,'001-071099-0148Y',_binary ''),(636,55,2,23,'001-071099-0148Y',_binary ''),(637,56,2,23,'001-071099-0148Y',_binary ''),(638,57,1,23,'001-071099-0148Y',_binary ''),(639,58,11,23,'001-071099-0148Y',_binary ''),(640,59,13,23,'001-071099-0148Y',_binary ''),(641,60,12,23,'001-071099-0148Y',_binary ''),(642,31,5,24,'001-100494-0001V',_binary ''),(643,32,1,24,'001-100494-0001V',_binary ''),(644,33,4,24,'001-100494-0001V',_binary ''),(645,34,5,24,'001-100494-0001V',_binary ''),(646,35,6,24,'001-100494-0001V',_binary ''),(647,36,14,24,'001-100494-0001V',_binary ''),(648,37,1,24,'001-100494-0001V',_binary ''),(649,38,2,24,'001-100494-0001V',_binary ''),(650,39,14,24,'001-100494-0001V',_binary ''),(651,40,13,24,'001-100494-0001V',_binary ''),(652,41,5,24,'001-100494-0001V',_binary ''),(653,42,6,24,'001-100494-0001V',_binary ''),(654,43,6,24,'001-100494-0001V',_binary ''),(655,44,4,24,'001-100494-0001V',_binary ''),(656,45,2,24,'001-100494-0001V',_binary ''),(657,46,1,24,'001-100494-0001V',_binary ''),(658,47,4,24,'001-100494-0001V',_binary ''),(659,48,4,24,'001-100494-0001V',_binary ''),(660,49,2,24,'001-100494-0001V',_binary ''),(661,50,5,24,'001-100494-0001V',_binary ''),(662,51,12,24,'001-100494-0001V',_binary ''),(663,52,14,24,'001-100494-0001V',_binary ''),(664,53,1,24,'001-100494-0001V',_binary ''),(665,54,4,24,'001-100494-0001V',_binary ''),(666,55,2,24,'001-100494-0001V',_binary ''),(667,56,2,24,'001-100494-0001V',_binary ''),(668,57,1,24,'001-100494-0001V',_binary ''),(669,58,11,24,'001-100494-0001V',_binary ''),(670,59,13,24,'001-100494-0001V',_binary ''),(671,60,12,24,'001-100494-0001V',_binary ''),(672,43,6,25,'001-180990-0004Z',_binary ''),(673,44,4,25,'001-180990-0004Z',_binary ''),(674,45,2,25,'001-180990-0004Z',_binary ''),(675,46,1,25,'001-180990-0004Z',_binary ''),(676,47,4,25,'001-180990-0004Z',_binary ''),(677,48,4,25,'001-180990-0004Z',_binary ''),(678,37,1,25,'001-180990-0004Z',_binary ''),(679,38,2,25,'001-180990-0004Z',_binary ''),(680,39,14,25,'001-180990-0004Z',_binary ''),(681,40,13,25,'001-180990-0004Z',_binary ''),(682,41,5,25,'001-180990-0004Z',_binary ''),(683,42,6,25,'001-180990-0004Z',_binary ''),(684,31,5,25,'001-180990-0004Z',_binary ''),(685,32,1,25,'001-180990-0004Z',_binary ''),(686,33,4,25,'001-180990-0004Z',_binary ''),(687,34,5,25,'001-180990-0004Z',_binary ''),(688,35,6,25,'001-180990-0004Z',_binary ''),(689,36,14,25,'001-180990-0004Z',_binary ''),(690,49,2,25,'001-180990-0004Z',_binary ''),(691,50,5,25,'001-180990-0004Z',_binary ''),(692,51,12,25,'001-180990-0004Z',_binary ''),(693,52,14,25,'001-180990-0004Z',_binary ''),(694,53,1,25,'001-180990-0004Z',_binary ''),(695,54,4,25,'001-180990-0004Z',_binary ''),(696,55,2,25,'001-180990-0004Z',_binary ''),(697,56,2,25,'001-180990-0004Z',_binary ''),(698,57,1,25,'001-180990-0004Z',_binary ''),(699,58,11,25,'001-180990-0004Z',_binary ''),(700,59,13,25,'001-180990-0004Z',_binary ''),(701,60,12,25,'001-180990-0004Z',_binary ''),(702,55,2,26,'001-230890-0031X',_binary ''),(703,56,2,26,'001-230890-0031X',_binary ''),(704,57,1,26,'001-230890-0031X',_binary ''),(705,58,11,26,'001-230890-0031X',_binary ''),(706,59,13,26,'001-230890-0031X',_binary ''),(707,60,12,26,'001-230890-0031X',_binary ''),(708,49,2,26,'001-230890-0031X',_binary ''),(709,50,5,26,'001-230890-0031X',_binary ''),(710,51,12,26,'001-230890-0031X',_binary ''),(711,52,14,26,'001-230890-0031X',_binary ''),(712,53,1,26,'001-230890-0031X',_binary ''),(713,54,4,26,'001-230890-0031X',_binary ''),(714,43,6,26,'001-230890-0031X',_binary ''),(715,44,4,26,'001-230890-0031X',_binary ''),(716,45,2,26,'001-230890-0031X',_binary ''),(717,46,1,26,'001-230890-0031X',_binary ''),(718,47,4,26,'001-230890-0031X',_binary ''),(719,48,4,26,'001-230890-0031X',_binary ''),(720,37,1,26,'001-230890-0031X',_binary ''),(721,38,2,26,'001-230890-0031X',_binary ''),(722,39,14,26,'001-230890-0031X',_binary ''),(723,40,13,26,'001-230890-0031X',_binary ''),(724,41,5,26,'001-230890-0031X',_binary ''),(725,42,6,26,'001-230890-0031X',_binary ''),(726,31,5,26,'001-230890-0031X',_binary ''),(727,32,1,26,'001-230890-0031X',_binary ''),(728,33,4,26,'001-230890-0031X',_binary ''),(729,34,5,26,'001-230890-0031X',_binary ''),(730,35,6,26,'001-230890-0031X',_binary ''),(731,36,14,26,'001-230890-0031X',_binary ''),(732,31,2,27,'001-1504993-4101V',_binary ''),(733,32,1,27,'001-1504993-3101V',_binary ''),(734,33,4,27,'002-071097-0148L',_binary ''),(735,34,3,27,'002-071094-0148B',_binary ''),(736,35,13,27,'449-071080-0148Y',_binary ''),(737,36,14,27,'440-071091-21480',_binary ''),(739,37,4,27,'002-071097-0148L',_binary ''),(740,38,6,27,'443-071091-0113Z',_binary ''),(741,39,2,27,'001-1504993-4101V',_binary ''),(742,40,13,27,'449-071080-0148Y',_binary ''),(743,41,1,27,'001-1504993-3101V',_binary ''),(744,42,1,27,'001-1504993-3101V',_binary ''),(745,43,14,27,'440-071091-21480',_binary ''),(746,44,3,27,'002-071094-0148B',_binary ''),(747,45,3,27,'002-071094-0148B',_binary ''),(748,46,4,27,'002-071097-0148L',_binary ''),(749,47,13,27,'449-071080-0148Y',_binary ''),(750,48,13,27,'449-071080-0148Y',_binary ''),(751,49,4,27,'002-071097-0148L',_binary ''),(752,50,4,27,'002-071097-0148L',_binary ''),(753,51,6,27,'443-071091-0113Z',_binary ''),(754,52,14,27,'440-071091-21480',_binary ''),(755,53,1,27,'001-1504993-3101V',_binary ''),(756,54,3,27,'002-071094-0148B',_binary ''),(757,31,3,28,'002-071094-0148B',_binary ''),(758,32,3,28,'002-071094-0148B',_binary ''),(759,33,6,28,'443-071091-0113Z',_binary ''),(760,34,1,28,'001-1504993-3101V',_binary ''),(761,35,4,28,'002-071097-0148L',_binary ''),(762,36,2,28,'001-1504993-4101V',_binary ''),(763,37,2,28,'001-1504993-4101V',_binary ''),(764,38,2,28,'001-1504993-4101V',_binary ''),(765,39,14,28,'440-071091-21480',_binary ''),(766,40,4,28,'002-071097-0148L',_binary ''),(767,41,3,28,'002-071094-0148B',_binary ''),(768,42,6,28,'443-071091-0113Z',_binary ''),(769,43,4,28,'002-071097-0148L',_binary ''),(770,44,4,28,'002-071097-0148L',_binary ''),(771,45,14,28,'440-071091-21480',_binary ''),(772,46,6,28,'443-071091-0113Z',_binary ''),(773,47,1,28,'001-1504993-3101V',_binary ''),(774,48,2,28,'001-1504993-4101V',_binary ''),(775,49,13,28,'449-071080-0148Y',_binary ''),(776,50,13,28,'449-071080-0148Y',_binary ''),(777,51,2,28,'001-1504993-4101V',_binary ''),(778,52,1,28,'001-1504993-3101V',_binary ''),(779,53,6,28,'443-071091-0113Z',_binary ''),(780,54,4,28,'002-071097-0148L',_binary ''),(781,55,1,28,'001-1504993-3101V',_binary ''),(782,56,4,28,'002-071097-0148L',_binary ''),(783,57,13,28,'449-071080-0148Y',_binary ''),(784,58,2,28,'001-1504993-4101V',_binary ''),(785,59,3,28,'002-071094-0148B',_binary ''),(786,60,14,28,'440-071091-21480',_binary ''),(787,31,14,29,'440-071091-21480',_binary ''),(788,32,14,29,'440-071091-21480',_binary ''),(789,33,1,29,'001-1504993-3101V',_binary ''),(790,34,2,29,'001-1504993-4101V',_binary ''),(791,35,2,29,'001-1504993-4101V',_binary ''),(792,36,6,29,'443-071091-0113Z',_binary ''),(793,37,3,29,'002-071094-0148B',_binary ''),(794,38,3,29,'002-071094-0148B',_binary ''),(795,39,1,29,'001-1504993-3101V',_binary ''),(796,40,6,29,'443-071091-0113Z',_binary ''),(797,41,2,29,'001-1504993-4101V',_binary ''),(798,42,4,29,'002-071097-0148L',_binary ''),(799,43,2,29,'001-1504993-4101V',_binary ''),(800,44,2,29,'001-1504993-4101V',_binary ''),(801,45,1,29,'001-1504993-3101V',_binary ''),(802,46,13,29,'449-071080-0148Y',_binary ''),(803,47,6,29,'443-071091-0113Z',_binary ''),(804,48,3,29,'002-071094-0148B',_binary ''),(805,49,1,29,'001-1504993-3101V',_binary ''),(806,50,1,29,'001-1504993-3101V',_binary ''),(807,51,3,29,'002-071094-0148B',_binary ''),(808,52,2,29,'001-1504993-4101V',_binary ''),(809,53,14,29,'440-071091-21480',_binary ''),(810,54,6,29,'443-071091-0113Z',_binary ''),(811,55,6,29,'443-071091-0113Z',_binary ''),(812,56,14,29,'440-071091-21480',_binary ''),(813,57,14,29,'440-071091-21480',_binary ''),(814,58,1,29,'001-1504993-3101V',_binary ''),(815,59,4,29,'002-071097-0148L',_binary ''),(816,60,13,29,'449-071080-0148Y',_binary ''),(817,31,6,30,'443-071091-0113Z',_binary ''),(818,32,13,30,'449-071080-0148Y',_binary ''),(819,33,13,30,'449-071080-0148Y',_binary ''),(820,34,4,30,'002-071097-0148L',_binary ''),(821,35,3,30,'002-071094-0148B',_binary ''),(822,36,1,30,'001-1504993-3101V',_binary ''),(823,37,1,30,'001-1504993-3101V',_binary ''),(824,38,4,30,'002-071097-0148L',_binary ''),(825,39,3,30,'002-071094-0148B',_binary ''),(826,40,14,30,'440-071091-21480',_binary ''),(827,41,14,30,'440-071091-21480',_binary ''),(828,42,2,30,'001-1504993-4101V',_binary ''),(829,43,6,30,'443-071091-0113Z',_binary ''),(830,44,13,30,'449-071080-0148Y',_binary ''),(831,45,13,30,'449-071080-0148Y',_binary ''),(832,46,1,30,'001-1504993-3101V',_binary ''),(833,47,3,30,'002-071094-0148B',_binary ''),(834,48,4,30,'002-071097-0148L',_binary ''),(835,49,3,30,'002-071094-0148B',_binary ''),(836,50,6,30,'443-071091-0113Z',_binary ''),(837,51,4,30,'002-071097-0148L',_binary ''),(838,52,13,30,'449-071080-0148Y',_binary ''),(839,53,2,30,'002-071094-0148B',_binary ''),(840,54,1,30,'001-1504993-3101V',_binary ''),(841,55,3,30,'002-071094-0148B',_binary ''),(842,56,3,30,'002-071094-0148B',_binary ''),(843,57,1,30,'001-1504993-3101V',_binary ''),(844,58,4,30,'002-071097-0148L',_binary ''),(845,59,6,30,'443-071091-0113Z',_binary ''),(846,60,6,30,'443-071091-0113Z',_binary ''),(847,37,14,31,'440-071091-21480',_binary ''),(848,38,14,31,'440-071091-21480',_binary ''),(849,39,6,31,'443-071091-0113Z',_binary ''),(850,41,9,31,'002-071097-0148L',_binary ''),(851,42,13,31,'449-071080-0148Y',_binary ''),(852,34,6,31,'443-071091-0113Z',_binary ''),(853,35,1,31,'001-1504993-3101V',_binary ''),(854,36,13,31,'449-071080-0148Y',_binary ''),(855,43,13,31,'449-071080-0148Y',_binary ''),(856,44,1,31,'001-1504993-3101V',_binary ''),(857,45,6,31,'443-071091-0113Z',_binary ''),(858,46,2,31,'002-071094-0148B',_binary ''),(859,48,14,31,'440-071091-21480',_binary ''),(860,50,2,31,'002-071094-0148B',_binary ''),(861,52,6,31,'443-071091-0113Z',_binary ''),(862,53,13,31,'449-071080-0148Y',_binary ''),(863,55,9,31,'002-071097-0148L',_binary ''),(864,57,2,31,'002-071094-0148B',_binary ''),(865,58,6,31,'443-071091-0113Z',_binary ''),(866,60,1,31,'001-1504993-3101V',_binary ''),(867,31,1,32,'001-1504993-3101V',_binary ''),(868,33,2,32,'002-071094-0148B',_binary ''),(869,34,14,32,'440-071091-21480',_binary ''),(870,35,14,32,'440-071091-21480',_binary ''),(871,36,9,32,'002-071097-0148L',_binary ''),(872,32,6,32,'443-071091-0113Z',_binary ''),(873,39,13,32,'449-071080-0148Y',_binary ''),(874,40,1,32,'001-1504993-3101V',_binary ''),(875,41,6,32,'443-071091-0113Z',_binary ''),(876,42,14,32,'440-071091-21480',_binary ''),(877,37,13,32,'449-071080-0148Y',_binary ''),(878,38,13,32,'449-071080-0148Y',_binary ''),(879,39,9,32,'002-071097-0148L',_binary ''),(880,43,8,32,'002-071094-0148B',_binary ''),(885,49,14,32,'440-071091-21480',_binary ''),(886,48,1,32,'001-1504993-3101V',_binary ''),(887,47,14,32,'440-071091-21480',_binary ''),(888,46,14,32,'440-071091-21480',_binary ''),(889,45,2,32,'001-1504993-4101V',_binary ''),(891,33,2,32,'001-1504993-4101V',_binary ''),(892,57,2,31,'001-1504993-4101V',_binary ''),(893,49,2,31,'001-1504993-4101V',_binary ''),(894,46,2,31,'001-1504993-4101V',_binary ''),(895,47,2,31,'001-1504993-4101V',_binary ''),(896,53,2,30,'001-1504993-4101V',_binary ''),(897,44,6,32,'443-071091-0113Z',_binary ''),(898,51,13,31,'449-071080-0148Y',_binary ''),(899,50,14,32,'440-071091-21480',_binary ''),(900,51,1,32,'001-1504993-3101V',_binary ''),(901,52,8,32,'002-071094-0148B',_binary ''),(902,53,9,32,'002-071097-0148L',_binary ''),(903,54,13,32,'449-071080-0148Y',_binary ''),(904,55,2,32,'001-1504993-4101V',_binary ''),(905,56,2,32,'001-1504993-4101V',_binary ''),(906,57,9,32,'002-071097-0148L',_binary ''),(907,58,13,32,'449-071080-0148Y',_binary ''),(908,60,8,32,'002-071094-0148B',_binary ''),(909,59,1,32,'001-1504993-3101V',_binary ''),(910,31,13,33,'449-071080-0148Y',_binary ''),(911,32,2,33,'001-1504993-4101V',_binary ''),(912,33,14,33,'440-071091-21480',_binary ''),(913,34,13,33,'449-071080-0148Y',_binary ''),(914,35,6,33,'443-071091-0113Z',_binary ''),(915,36,8,33,'002-071094-0148B',_binary ''),(916,37,6,33,'443-071091-0113Z',_binary ''),(917,38,1,33,'001-1504993-3101V',_binary ''),(918,40,2,33,'001-1504993-4101V',_binary ''),(919,41,13,33,'449-071080-0148Y',_binary ''),(920,42,8,33,'002-071094-0148B',_binary ''),(921,47,9,33,'002-071097-0148L',_binary ''),(922,43,1,33,'001-1504993-3101V',_binary ''),(923,44,14,33,'440-071091-21480',_binary ''),(924,48,6,33,'443-071091-0113Z',_binary ''),(925,45,9,33,'002-071097-0148L',_binary ''),(926,46,8,33,'440-071094-0148Y',_binary ''),(927,39,8,33,'440-071094-0148Y',_binary ''),(928,49,1,33,'448-1504993-0001V',_binary ''),(929,50,1,33,'448-1504993-0001V',_binary ''),(930,51,8,33,'440-071094-0148Y',_binary ''),(931,52,8,33,'440-071094-0148Y',_binary ''),(933,48,1,32,'448-1504993-0001V',_binary ''),(934,40,1,32,'448-1504993-0001V',_binary ''),(936,53,2,33,'443-070990-0012P',_binary ''),(937,54,2,33,'443-070990-0012P',_binary ''),(938,55,14,33,'440-071091-21480',_binary ''),(939,56,6,33,'443-071091-0113Z',_binary ''),(940,57,9,33,'443-070990-0012P',_binary ''),(941,58,9,33,'443-070990-0012P',_binary ''),(942,59,1,33,'448-1504993-0001V',_binary ''),(943,60,8,33,'440-071094-0148Y',_binary ''),(944,32,2,34,'443-070990-0012P',_binary ''),(945,33,1,34,'448-1504993-0001V',_binary ''),(946,34,9,34,'443-070990-0012P',_binary ''),(947,35,9,34,'443-070990-0012P',_binary ''),(948,31,6,34,'440-071094-0148Y',_binary '');
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
  `ESTADO_C` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'DOCENTE',_binary '',_binary ''),(2,'DIRECTOR',_binary '',_binary ''),(3,'SUB DIRECTOR',_binary '',_binary ''),(4,'SECRETARIA',_binary '',_binary ''),(5,'CONSERJE',_binary '',_binary ''),(6,'TECNICO SUPERIOR',_binary '',_binary ''),(7,'TECNICO',_binary '\0',_binary '\0'),(8,'PROFESOR TECNICO',_binary '\0',_binary '\0'),(9,'PRUEBA',_binary '\0',_binary '\0'),(10,'PRUEB02',_binary '\0',_binary '\0'),(11,'',_binary '\0',_binary '\0'),(13,'[OBJECT HTMLINPUTELEMENT]',_binary '\0',_binary '\0'),(14,'ASD',_binary '\0',_binary ''),(15,'PPPPPPLL',_binary '\0',_binary '\0');
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
INSERT INTO `grado` VALUES (1,'I NIVEL',_binary '\0'),(2,'II NIVEL',_binary '\0'),(3,'III NIVEL',_binary '\0'),(4,'PRIMER GRADO',_binary ''),(5,'SEGUNDO GRADO',_binary ''),(6,'TERCER GRADO',_binary ''),(7,'CUARTO GRADO',_binary ''),(8,'QUINTO GRADO',_binary ''),(9,'SEXTO GRADO',_binary ''),(10,'SEPTIMO GRADO',_binary ''),(11,'OCTAVO GRADO',_binary ''),(12,'NOVENO GRADO',_binary ''),(13,'DECIMO GRADO',_binary ''),(14,'UNDECIMO GRADO',_binary '');
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
  `ANIO_ESCOLAR` date DEFAULT NULL,
  `CEDULA_DOCENTE` char(18) DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  `ID_MODALIDAD` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GRADO_SECCION` (`ID_SECCION`),
  KEY `FK_GRADO_TURNO` (`ID_TURNO`),
  KEY `fk_grupo_grado` (`ID_GRADO`),
  KEY `FK_GRADO_PERSONAL` (`CEDULA_DOCENTE`),
  CONSTRAINT `FK_GRADO_PERSONAL` FOREIGN KEY (`CEDULA_DOCENTE`) REFERENCES `personal` (`CEDULA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_SECCION` FOREIGN KEY (`ID_SECCION`) REFERENCES `seccion` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_TURNO` FOREIGN KEY (`ID_TURNO`) REFERENCES `turno` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_grupo_grado` FOREIGN KEY (`ID_GRADO`) REFERENCES `grado` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (3,4,1,1,'2022-09-18','001-070985-0032X',_binary '',4),(4,4,2,1,'2022-09-18','001-070988-0032W',_binary '',4),(5,5,1,1,'2022-09-18','001-070989-0041P',_binary '',4),(6,5,2,1,'2022-09-18','001-070989-0239L',_binary '',4),(7,6,1,1,'2022-09-18','001-070991-0011Q',_binary '',4),(8,6,2,1,'2022-09-18','001-070992-0031X',_binary '',4),(9,7,1,1,'2022-09-18','001-070997-0031X',_binary '',4),(10,7,2,1,'2022-09-18','001-070999-0043W',_binary '',4),(11,8,1,1,'2022-09-18','001-070999-0231S',_binary '',4),(12,8,2,1,'2022-09-18','001-071070-0129X',_binary '',4),(13,9,1,1,'2022-09-18','001-071072-0009A',_binary '',4),(14,9,2,1,'2022-09-18','001-071073-0007Q',_binary '',4),(15,4,1,3,'2022-09-18','001-071080-0018U',_binary '',4),(16,4,2,3,'2022-09-18','001-071082-0129X',_binary '',4),(17,5,1,3,'2022-09-18','001-071087-0023Z',_binary '',4),(18,5,2,3,'2022-09-18','001-071089-0018K',_binary '',4),(19,6,1,3,'2022-09-18','001-071089-0018U',_binary '',4),(20,6,2,3,'2022-09-18','001-071090-0048H',_binary '',4),(21,7,1,3,'2022-09-18','001-071091-0113Z',_binary '',4),(22,7,2,3,'2022-09-18','001-071097-3248G',_binary '',4),(23,8,1,3,'2022-09-18','001-071099-0148Y',_binary '',4),(24,8,2,3,'2022-09-18','001-100494-0001V',_binary '',4),(25,9,1,3,'2022-09-18','001-180990-0004Z',_binary '',4),(26,9,2,3,'2022-09-18','001-230890-0031X',_binary '',4),(27,10,1,3,'2022-10-10','001-1504993-3101V',_binary '',6),(28,10,2,3,'2022-10-10','001-1504993-4101V',_binary '',6),(29,11,1,3,'2022-10-10','002-071094-0148B',_binary '',6),(30,11,2,3,'2022-10-10','002-071097-0148L',_binary '',6),(31,12,1,3,'2022-10-10','440-071091-21480',_binary '',6),(32,12,2,3,'2022-10-10','440-071094-0148Y',_binary '',6),(33,13,1,3,'2022-10-10','443-070990-0012P',_binary '',6),(34,13,2,3,'2022-10-10','443-071091-0113Z',_binary '',6),(35,14,1,3,'2022-10-10','448-1504993-0001V',_binary '',6),(36,14,2,3,'2022-10-10','449-071080-0148Y',_binary '',6);
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
  `ID_DIA` int DEFAULT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ID_DIA` (`ID_DIA`),
  KEY `FK_HORAIO_DESIGNADO` (`ID_HORARIO_DESIGNADO`),
  CONSTRAINT `FK_HORAIO_DESIGNADO` FOREIGN KEY (`ID_HORARIO_DESIGNADO`) REFERENCES `bloque` (`ID`),
  CONSTRAINT `FK_ID_DIA` FOREIGN KEY (`ID_DIA`) REFERENCES `dia` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_bloque`
--

LOCK TABLES `horario_bloque` WRITE;
/*!40000 ALTER TABLE `horario_bloque` DISABLE KEYS */;
INSERT INTO `horario_bloque` VALUES (1,1,1,_binary ''),(2,2,1,_binary ''),(3,3,1,_binary ''),(4,4,1,_binary ''),(5,5,1,_binary ''),(6,6,1,_binary ''),(7,1,2,_binary ''),(8,2,2,_binary ''),(9,3,2,_binary ''),(10,4,2,_binary ''),(11,5,2,_binary ''),(12,6,2,_binary ''),(13,1,3,_binary ''),(14,2,3,_binary ''),(15,3,3,_binary ''),(16,4,3,_binary ''),(17,5,3,_binary ''),(18,6,3,_binary ''),(19,1,4,_binary ''),(20,2,4,_binary ''),(21,3,4,_binary ''),(22,4,4,_binary ''),(23,5,4,_binary ''),(24,6,4,_binary ''),(25,1,5,_binary ''),(26,2,5,_binary ''),(27,3,5,_binary ''),(28,4,5,_binary ''),(29,5,5,_binary ''),(30,6,5,_binary ''),(31,7,1,_binary ''),(32,8,1,_binary ''),(33,9,1,_binary ''),(34,10,1,_binary ''),(35,11,1,_binary ''),(36,12,1,_binary ''),(37,7,2,_binary ''),(38,8,2,_binary ''),(39,9,2,_binary ''),(40,10,2,_binary ''),(41,11,2,_binary ''),(42,12,2,_binary ''),(43,7,3,_binary ''),(44,8,3,_binary ''),(45,9,3,_binary ''),(46,10,3,_binary ''),(47,11,3,_binary ''),(48,12,3,_binary ''),(49,7,4,_binary ''),(50,8,4,_binary ''),(51,9,4,_binary ''),(52,10,4,_binary ''),(53,11,4,_binary ''),(54,12,4,_binary ''),(55,7,5,_binary ''),(56,8,5,_binary ''),(57,9,5,_binary ''),(58,10,5,_binary ''),(59,11,5,_binary ''),(60,12,5,_binary '');
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
  `ESTADO_M` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
INSERT INTO `modalidad` VALUES (1,'PREESCOLAR COMUNITARIO',_binary '\0',_binary ''),(2,'PREESCOLAR FORMAL',_binary '\0',_binary ''),(3,'PREESCOLAR MULTINIVEL',_binary '\0',_binary ''),(4,'PRIMARIA REGULAR',_binary '',_binary ''),(5,'PRRIMARIA EXTRAEDAD',_binary '\0',_binary ''),(6,'SECUNDARIA DIURNA',_binary '',_binary ''),(7,'SECUNDARIA NOCTURNA',_binary '\0',_binary ''),(8,'SECUNDARIA POR ENCUENTRO',_binary '\0',_binary ''),(9,'PRIMARIA EXTRAEDAD',_binary '\0',_binary ''),(10,'SECUNDARIA TECNICA',_binary '\0',_binary ''),(11,'PREPARATORIA',_binary '\0',_binary ''),(12,'PRUENA',_binary '\0',_binary '\0'),(13,'',_binary '\0',_binary '\0'),(14,'MOD',_binary '\0',_binary '\0'),(15,'SAS',_binary '\0',_binary '\0'),(16,'PER',_binary '\0',_binary '\0'),(17,'LOLAZO',_binary '\0',_binary '\0'),(18,'OP',_binary '\0',_binary '\0'),(19,'IOP',_binary '\0',_binary '\0'),(20,'OLKI',_binary '\0',_binary '\0'),(21,'MODALIDAD_INSECTO',_binary '\0',_binary '\0'),(22,'FDDFSFSF',_binary '\0',_binary '\0'),(23,'MEZA',_binary '\0',_binary '\0'),(24,'PERRUNA',_binary '\0',_binary '\0'),(25,'QWERTY',_binary '\0',_binary '\0'),(26,'QW',_binary '\0',_binary '\0'),(27,'GHJHJ',_binary '\0',_binary '\0'),(28,'GHJK',_binary '\0',_binary '\0'),(29,'789',_binary '\0',_binary '\0'),(30,'96',_binary '\0',_binary '\0'),(31,'963',_binary '\0',_binary '\0'),(32,'9874',_binary '\0',_binary '\0'),(33,'PLOKIOK',_binary '\0',_binary '\0'),(34,'ZXC',_binary '\0',_binary '\0'),(35,'ZXCZXCZXC',_binary '\0',_binary '\0'),(36,'ZXC XCXZ',_binary '\0',_binary '\0'),(37,'DFSF',_binary '\0',_binary '\0'),(38,'SIRVE',_binary '\0',_binary '\0'),(39,'SAD',_binary '\0',_binary '\0'),(40,'LÑL',_binary '\0',_binary '\0'),(41,'DGHHF',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad_bloque`
--

DROP TABLE IF EXISTS `modalidad_bloque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidad_bloque` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_BLOQUE` int DEFAULT NULL,
  `ID_MODALIDAD` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BLOQUE_MB` (`ID_BLOQUE`),
  KEY `FK_MODALIDAD_MB` (`ID_MODALIDAD`),
  CONSTRAINT `FK_BLOQUE_MB` FOREIGN KEY (`ID_BLOQUE`) REFERENCES `bloque` (`ID`),
  CONSTRAINT `FK_MODALIDAD_MB` FOREIGN KEY (`ID_MODALIDAD`) REFERENCES `modalidad` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad_bloque`
--

LOCK TABLES `modalidad_bloque` WRITE;
/*!40000 ALTER TABLE `modalidad_bloque` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalidad_bloque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad_grado`
--

DROP TABLE IF EXISTS `modalidad_grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidad_grado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_GRADO` int DEFAULT NULL,
  `ID_MODALIDAD` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GRADO_MG` (`ID_GRADO`),
  KEY `FK_MODALIDAD_MG` (`ID_MODALIDAD`),
  CONSTRAINT `FK_GRADO_MG` FOREIGN KEY (`ID_GRADO`) REFERENCES `grado` (`ID`),
  CONSTRAINT `FK_MODALIDAD_MG` FOREIGN KEY (`ID_MODALIDAD`) REFERENCES `modalidad` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad_grado`
--

LOCK TABLES `modalidad_grado` WRITE;
/*!40000 ALTER TABLE `modalidad_grado` DISABLE KEYS */;
INSERT INTO `modalidad_grado` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,4),(11,5,4),(12,6,4),(13,7,4),(14,8,4),(15,9,4),(16,10,6),(17,10,7),(18,10,8),(19,11,6),(20,11,7),(21,11,8),(22,12,6),(23,12,7),(24,12,8),(25,13,7),(26,14,8),(28,13,6),(29,13,8),(30,14,6),(31,14,7);
/*!40000 ALTER TABLE `modalidad_grado` ENABLE KEYS */;
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
  `ESTADO_A` bit(1) DEFAULT b'1',
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
INSERT INTO `personal` VALUES ('001-010805-1023O','MEZA','','','MEZA','2003-12-10','M','75201807','SABANA GRANDE, VILLA JERUZALEN (PORYECTO BISMARK MARTINEZ) CASA F12-39, COLOR AMARILLA',10,'gersisitis123','Ç€“ÀA+æwô6ðg‹×B',_binary '\0',1,'2022-11-21',_binary ''),('001-010805-1023Y','GERSON','','','SON-GOKU','2004-12-20','F','25556565','ASIKJDAJKFKJDAKFJP',10,'gerson123','„V£‹ÀWrø2m',_binary '\0',1,'2022-11-21',_binary ''),('001-070984-0031F','MAGDA','VERONICA','FLORES','LOPEZ','1984-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 2 CUADRAS AL SUR',0,'magda123','ªÑ´û¢=©+ÍÑÓ7û',_binary '',2,'2022-09-08',_binary ''),('001-070985-0032X','SARAI','SOFIA','MERCADO','LUNA','1985-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'sari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070988-0032W','MARIA','JULIETA','MARTINEZ','LARIOS','1988-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'maria123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070989-0041P','MARJORIE','JACQUELINE','MEMBREÑO','CASTRO','1989-07-09','F','88124033','ENTRADA PRINCIPAL CIUDAD SANDINO 2 CUADRAS AL SUR',40,'marjo123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070989-0239L','MARIA','ELIZABETH','ARAGON','ROA','1989-07-09','F','78974033','PARQUE MATEARE 3 CUADRAS AL SUR',40,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070990-0031F','YURI','PATRICIA','HERNANDEZ','RAMIREZ','1990-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 7 CUADRAS AL SUR',0,'yuri123','„V£‹ÀWrø2m',_binary '\0',3,'2022-09-08',_binary ''),('001-070991-0011Q','ANDREA','ANTONIA','SILVA','GUIDO','1991-07-09','F','77774033','PARQUE MATEARE 7 CUADRAS AL SUR',40,'andy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070992-0031X','MARCO','AURELIO','ALEMAN','SOLIS','1992-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'marco123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070997-0031X','MEYLING','ESTEFANIA','PEREZ','VELASQUEZ','1997-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'mey123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070999-0043W','SEBASTIAN','JOSE','MEZA','PEREZ','1999-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'sebas123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-070999-0231S','ESTELA','RACHEL','PEREZ','BRIONES','1999-07-09','F','79974033','PARQUE MATEARE 2 CUADRAS AL SUR',40,'este123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071070-0129X','MERCEDES','LISSETH','SAAVEDRA','ORTEGA','1970-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',40,'mercedes123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071072-0009A','ATALIA','ABIGAIL','MONTERO','ORTEGA','1972-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',40,'atalia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071073-0007Q','NOELIA','SOFIA','ARAGON','SOLIS','1973-09-09','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',40,'noelia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071080-0018U','PANCRACIA','','VASQUEZ','OROZCO','1980-07-12','2','81299033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',40,'anabel123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071082-0129X','URANIA','','ARROLIGA','ESTRADA','1982-07-12','F','81204333','CARRETERA VIEJA A LEON KM 24',40,'urania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071087-0023Z','JERONIMA','SONIA','MONTERO','CASTRO','1987-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',40,'jeronima123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071089-0018K','BERTHA','ESMERALDA','ORDOÑEZ','MATUTE','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',40,'bertha123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071089-0018U','BETHANIA','','SALGADO','MERARI','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',40,'bethania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071090-0048H','IRIS','SOFIA','SOLIS','GUEVARA','1990-12-12','F','81223033','ENTRADA CIUDAD SANDINO 9 CUADRAS AL NORTE',40,'iris123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071091-0113Z','MARTIN','JOSE','CACERES','BRIONES','1991-07-10','M','77274089','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',40,'martin123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071097-3248G','IRMA','','RODRIGUEZ','SOMARRIBA','1997-07-12','F','81274033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',40,'irma123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-071099-0148Y','REYNA','ISABEL','VELASZQUEZ','ROA','1999-07-10','F','81274033','CARRETERA VIEJA A LEON KM 24',40,'reyna123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-100494-0001V','MARIA','MAGDALENA','URROZ','BLANDON','1994-04-10','F','88897312','CIUDAD SANDINO TOPE SUR',40,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-1504993-3101V','MARIA','LILIANA','RAMIREZ','PICADO','1993-04-15','F','75201807','SABANA GRANDE, VILLA JERUSALEM',39,'maria123','„V£‹ÀWrø2m',_binary '',1,'2022-10-10',_binary ''),('001-1504993-4101V','JOSUE','JACINTO','MENDIETA','ROA','1993-04-15','M','75201807','SABANA GRANDE, VILLA JERUSALEM',36,'josue123','„V£‹ÀWrø2m',_binary '',1,'2022-10-10',_binary ''),('001-180990-0004Z','SOFIA','SARAI','MARTINEZ','RUIZ','1990-09-18','F','89903242','PARQUE MATEARE 7 CUADRAS LA NORTE',40,'sofiy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('001-230890-0031X','DINA','SARA','CASTRO','FLORES','1990-08-23','F','77774033','CARRETERA VIEJA A LEON KM 29',40,'dina123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('002-071094-0148B','FATIMA','YALENA','MOJICA','ARAGON','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',38,'fatima123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('002-071097-0148L','ARELYS','VANESSA','JALINA','ROCHA','1997-07-12','F','82474033','JARDINES DE VERACRUZ DE LA ROTONDA 2 CUADRAS AL LAGO',36,'arelys123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary '\0'),('440-071091-21480','FLOR','DE MARIA','PINEDA','ARVIXU','1991-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',36,'flor123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('440-071094-0148Y','ISABEL','SERENA','MEZA','PEREZ','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',16,'isabel123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('443-070990-0012P','JORGE','ENMANUEL','LEIVA','SILVA','1990-07-09','M','89774033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',17,'jorge123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('443-071091-0113Z','OSCAR','DANILO','CASTRO','FLORES','1991-07-10','M','81274033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',38,'oscar123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('445-1504992-3101V','LILIT','','RAMIREZ','PICADO','1993-04-15','F','75201807','SABANA GRANDE, VILLA JERUSALEM',10,'lilit123','„V£‹ÀWrø2m',_binary '\0',1,'2022-11-13',_binary ''),('448-150493-0001C','ALANIS','JJJJ','KKK','','2004-12-21','F','89977488','ZFDFDF',10,'alanis123','„V£‹ÀWrø2m',_binary '\0',1,'2022-11-21',_binary '\0'),('448-1504993-0001V','MACOS','RAMON','MENDOZA','PEREZ','1993-04-15','M','75201807','SABANA GRANDE, VILLA JERUSALEM',16,'macos123','„V£‹ÀWrø2m',_binary '',1,'2022-09-21',_binary ''),('449-071080-0148Y','CARMEN','ELVIRA','PINEDA','ARVIZU','1980-07-10','F','81271233','BO. NUEVA VIDA KM 10 CARRETERA VIEJA A LEON CASA NO210',37,'carmen123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08',_binary ''),('A','MEZA','MEZA','MEZA','MEZA','2003-12-10','M','','',10,'a123','„V£‹ÀWrø2m',_binary '\0',1,'2022-11-16',_binary '\0'),('PRUEBA','JULIANA','MARVIN','GARCIA','CASIMIRA','2000-06-14','M','75201807','SABANA GRANDE, VILLA JERUZALEN (PORYECTO BISMARK MARTINEZ) CASA F12-39, COLOR AMARILLA',10,'juliana123','„V£‹ÀWrø2m',_binary '\0',4,'2022-11-18',_binary '\0'),('PRUEBA02','CARMELA','','BERMUDEZ','RODRIGEUZ','2004-12-07','M','88999665','SU CASA',10,'carmela123','„V£‹ÀWrø2m',_binary '\0',4,'2022-11-18',_binary ''),('SDFSDDFGSDFGDFGD','MALDICION','ASDASD','ASDSAD','ASDSAD','2003-12-10','F','75201807','SABANA GRANDE, VILLA JERUZALEN (PORYECTO BISMARK MARTINEZ) CASA F12-39, COLOR AMARILLA',10,'maldicion123','„V£‹ÀWrø2m',_binary '\0',2,'2022-11-13',_binary '\0'),('VCB','MARCUS','MATEO','CVB','MAIRENA','2004-12-28','1','78978978','DFGDFGDF',10,'cvb123','„V£‹ÀWrø2m',_binary '\0',1,'2022-11-17',_binary '\0');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_de_medidas`
--

DROP TABLE IF EXISTS `plan_de_medidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_de_medidas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PREGUNTA_01` text NOT NULL,
  `PREGUNTA_02` text NOT NULL,
  `PREGUNTA_03` text NOT NULL,
  `PREGUNTA_04` text NOT NULL,
  `PREGUNTA_05` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_de_medidas`
--

LOCK TABLES `plan_de_medidas` WRITE;
/*!40000 ALTER TABLE `plan_de_medidas` DISABLE KEYS */;
INSERT INTO `plan_de_medidas` VALUES (1,'15 DE MAYO','CON ESTUDIANTES DE \n PRIMARIA Y SECUNDARIA DE LAS ESCUELAS QUE NO REALIZARON LA ACTIVIDAD','10 CENTROS EDUCATIVOS','ORGANIZADOS A \n LA HORA DE RECESO O EN DEPORTE ESCOLAR','EN CADA UNA DE LAS 10 ESCUELAS DEL MUNICIPIO DE MASAYA'),(2,'18 DE MAYO','ESTUDIANTES DE PRIMARIA Y SECUNDARIA','20 CENTROS EDUCATIVOS','ORGANIZADOS A LA HORA DE RECESO','CENTRO DE ESTUDIO'),(3,'15 DE MAYO','CON ESTUDIANTES DE \n PRIMARIA Y SECUNDARIA DE LAS ESCUELAS QUE NO REALIZARON LA ACTIVIDAD','10 CENTROS EDUCATIVOS','ORGANIZADOS A \n LA HORA DE RECESO O EN DEPORTE ESCOLAR','EN CADA UNA DE LAS 10 ESCUELAS DEL MUNICIPIO DE MASAYA'),(4,'18 DE MAYO','ESTUDIANTES DE PRIMARIA Y SECUNDARIA','20 CENTROS EDUCATIVOS','ORGANIZADOS A LA HORA DE RECESO','CENTRO DE ESTUDIO'),(5,'1','1','1','1','1');
/*!40000 ALTER TABLE `plan_de_medidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba`
--

DROP TABLE IF EXISTS `prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prueba` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba`
--

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` VALUES (1,3),(2,3),(3,3);
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
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
-- Table structure for table `valoracion_cualitativa`
--

DROP TABLE IF EXISTS `valoracion_cualitativa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valoracion_cualitativa` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PREGUNTA_01` text NOT NULL,
  `PREGUNTA_02` text NOT NULL,
  `PREGUNTA_03` text NOT NULL,
  `PREGUNTA_04` text NOT NULL,
  `PREGUNTA_05` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoracion_cualitativa`
--

LOCK TABLES `valoracion_cualitativa` WRITE;
/*!40000 ALTER TABLE `valoracion_cualitativa` DISABLE KEYS */;
INSERT INTO `valoracion_cualitativa` VALUES (1,'FESTIVALES DE ORATORIA',' CON ESTUDIANTES DE PRIMARIA, SECUNDARIA DOCENTES Y DIRCTORES DE 30 CENTROS \nEDUCATIVOS DEL MUNICIPIO DE MASAYA','SOBRE FALACIAS LÓGICAS Y ARGUMENTATIVAS, COMO DEBATES, DISCURSOS, \nCONVERSACIÓN Y ENTREVISTAS','PROMUEVEN LA EXPRESIÓN ORAL EN LOS ESTUDIANTES',' ESTAS ACTIVIDADES HAN MOTIVADO\n A OTROS ESTUDIANTES A INVOLUCRARSE A LAS ACTIVIDADES DE EXPRESION ORAL, EVIDENCIANDO LO EXTROVERTIDO DE LOS\n NIÑOS,NIÑAS Y JOVENES'),(2,'SE REALIZARON LOS FESTIVALES DE ORATORIA EN 30 CENTROS EDUCATIVOS DEL MUNICIPIO DE MASAYA, CON ESTUDIANTES DE PRIMARIA','CON ESTUDIANTES DE PRIMARIA',' SECUNDARIA, DOCENTES Y DIRECTORES','SOBRE FALACIAS LÓGICAS Y ARGUMENTATIVAS, COMO DEBATES, \n DISCURSOS, CONVERSACIÓN Y ENTREVISTAS QUE PROMUEVEN LA EXPRESIÓN ORAL EN LOS ESTUDIANTES.','ESTAS ACTIVIDADES HAN MOTIVADO A OTROS \n ESTUDIANTES A INVOLUCRARSE A LAS ACTIVIDADES DE EXPRESION ORAL, EVIDENCIANDO LO EXTROVERTIDO DE LOS NIÑOS,NIÑAS Y JOVENES.'),(3,'FESTIVALES DE ORATORIA',' CON ESTUDIANTES DE PRIMARIA, SECUNDARIA DOCENTES Y DIRCTORES DE 30 CENTROS \nEDUCATIVOS DEL MUNICIPIO DE MASAYA','SOBRE FALACIAS LÓGICAS Y ARGUMENTATIVAS, COMO DEBATES, DISCURSOS, \nCONVERSACIÓN Y ENTREVISTAS','PROMUEVEN LA EXPRESIÓN ORAL EN LOS ESTUDIANTES',' ESTAS ACTIVIDADES HAN MOTIVADO\n A OTROS ESTUDIANTES A INVOLUCRARSE A LAS ACTIVIDADES DE EXPRESION ORAL, EVIDENCIANDO LO EXTROVERTIDO DE LOS\n NIÑOS,NIÑAS Y JOVENES'),(4,'SE REALIZARON LOS FESTIVALES DE ORATORIA EN 30 CENTROS EDUCATIVOS DEL MUNICIPIO DE MASAYA, CON ESTUDIANTES DE PRIMARIA','CON ESTUDIANTES DE PRIMARIA',' SECUNDARIA, DOCENTES Y DIRECTORES','SOBRE FALACIAS LÓGICAS Y ARGUMENTATIVAS, COMO DEBATES, \n DISCURSOS, CONVERSACIÓN Y ENTREVISTAS QUE PROMUEVEN LA EXPRESIÓN ORAL EN LOS ESTUDIANTES.','ESTAS ACTIVIDADES HAN MOTIVADO A OTROS \n ESTUDIANTES A INVOLUCRARSE A LAS ACTIVIDADES DE EXPRESION ORAL, EVIDENCIANDO LO EXTROVERTIDO DE LOS NIÑOS,NIÑAS Y JOVENES.'),(5,'1','1','1','1','1');
/*!40000 ALTER TABLE `valoracion_cualitativa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'planificacion_academica'
--

--
-- Dumping routines for database 'planificacion_academica'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_Actualizar_Asigantura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Actualizar_Asigantura`(
	_ID int,
	_Desripcion varchar(45)
)
begin
	set _Desripcion = upper(ltrim(rtrim(_Desripcion)));
	if (not exists (select DESCRIPCION from asignatura where STRCMP(DESCRIPCION,_Desripcion)  = 0) ) then
		update asignatura set DESCRIPCION = _Desripcion where ID = _ID;
    select 'LA ASIGNATURA HA SIDO ACTUALIZADA CORRECTAMENTE' AS 'MENSAJE';
    else
			select 'LA ASIGNATURA YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Actualizar_Cargo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Actualizar_Cargo`(
_id_cargo int,
_cargo varchar(35)
)
begin
set _cargo = ltrim(rtrim(_cargo));
	if (not exists (select DESCRIPCION from CARGO where DESCRIPCION = _cargo  )) then
			  update cargo set DESCRIPCION= upper(_cargo) where ID = _id_cargo;
    select "CARGO ACTUALIZADO CORRECTAMENTE" AS "MENSAJE";
    else
			select 'EL CARGO ACADÉMICO YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Actualizar_Datos_Basicos_Personal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Actualizar_Datos_Basicos_Personal`(
  _cedula char(18),
  _p_nombre varchar(35),
  _s_nombre varchar(35),
  _p_apellido varchar(35),
  _s_apellido varchar(35),
  _fecha_nac date,
  _sexo int,
  _telefono char(8),
  _direccion varchar(100),
  _id_cargo int
)
begin
declare new_sexo char(1);
if (_sexo = 1 ) then
	 set new_sexo = 'F';
		else
	  set new_sexo = 'M';
end if;
   update personal  
	   set PRIMER_NOMBRE = upper(_p_nombre) ,
		   SEGUNDO_NOMBRE = upper(_s_nombre) ,
           PRIMER_APELLIDO =upper(_p_apellido) ,
           SEGUNDO_APELLIDO = upper(_s_apellido) ,
           FECHA_NACIMIENTO = _fecha_nac,
		   SEXO = upper(new_sexo) ,
           TELEFONO = _telefono,
           DIRECCION =upper(_direccion) ,
           ID_CARGO = _id_cargo where CEDULA = _cedula;
		select "PERSONAL ACTUALIZADO" AS "MENSAJE";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Actualizar_Modalidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Actualizar_Modalidad`(
	_ID int,
	_Descripcion varchar(45)
)
begin
	set _Descripcion = upper(ltrim(rtrim(_Descripcion)));
	if (not exists (select DESCRIPCION from modalidad where DESCRIPCION = _Descripcion )) then
				update modalidad set DESCRIPCION = _Descripcion where ID = _ID;
    select 'LA MODALIDAD HA SIDO ACTUALIZADA CORRECTAMENTE' AS 'MENSAJE';
    else
		select 'LA MODALIDAD YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_BUSCAR_NOMBRE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_BUSCAR_NOMBRE`(
	Usuario varchar(40)
)
begin
    SELECT concat(PRIMER_NOMBRE," " ,PRIMER_APELLIDO)  AS NOMBRE FROM PERSONAL where USSER = Usuario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Buscar_Personal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Buscar_Personal`(
  _cedula char(18)
)
begin
  select PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO 
  as FECHA_NAC,SEXO,TELEFONO,DIRECCION,ID_CARGO from personal where CEDULA = _cedula ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Cambiar_contra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Cambiar_contra`(
	_Cedula_Personal char(18),
	_contra varchar(35)
)
begin
	update PERSONAL set CONTRA = aes_encrypt(_contra,'jabalises') where CEDULA=_Cedula_Personal;
    select 'CONTRASELA ACTUALIZDA' AS 'MENSAJE';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Eliminar_Asigantura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Eliminar_Asigantura`(
	_ID int
)
begin
	update asignatura set ESTADO_A = 0 where ID = _ID;
    select "ASIGNATURA ELIMINADA CORRECTAMENTE" AS "MENSAJE";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Eliminar_Asignatura_Modalidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Eliminar_Asignatura_Modalidad`(
_ID INT
)
begin
	update asignatura_modalidad set ESTADO_AM = 0 where ID = _ID;
    SELECT "ASIGNACION A MODALIDAD ELIMINADA" AS "MENSAJE";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Eliminar_Cargo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Eliminar_Cargo`(
_id_cargo int
)
begin
  update cargo set ESTADO_C = 0 where ID = _id_cargo;
  select "CARGO ELIMINADO" AS "MENSAJE";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Eliminar_Modalidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Eliminar_Modalidad`(
	_ID int
)
begin
	update modalidad set ESTADO_M = 0 where ID = _ID;
    select "MODALIDAD ELIMINADA DE LA BASE DE DATOS" AS "MENSAJE";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Eliminar_Personal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Eliminar_Personal`(
	_cedula char(18)
)
begin
	/*delete from personal where CEDULA=_cedula;*/
    UPDATE PERSONAL SET ESTADO_A=0 WHERE CEDULA= _cedula ;
	select "PERSONAL ELIMINADO DE LA BASE DE DATOS" AS "MENSAJE";
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
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
     b.TIEMPO_DESIGNADO AS "HORARIO DE BLOQUE" , a.DESCRIPCION as ASIGNATURA FROM BLOQUE_CLASE bc 					
										INNER JOIN  asignatura a on bc.ID_ASIGNATURA = a.ID
                                        INNER JOIN horario_bloque hb on bc.ID_HORARIO_BLOQUE = hb.ID
                                        INNER JOIN bloque b on hb.ID_HORARIO_DESIGNADO = b.ID
                                        INNER JOIN turno t on hb.ID_TURNO = t.ID 
                                        INNER JOIN dia d on hb.ID_DIA = d.ID 
                                        INNER JOIN grupo g on bc.ID_GRUPO = g.ID 
                                        INNER JOIN seccion s on g.ID_SECCION = s.ID	
										INNER JOIN grado gg on g.ID_GRADO = gg.ID	where g.ID=  ID_grupo
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Actividad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Actividad`(
	_cedula char(18),
    descripcion_actividad text,
    protagonista_ac text,
    meta_a int,
    meta_t int,
    part_f int,
    part_m int,
     /*preguntas de valoracion cualitativa*/
    v_cualitatia01 text,
    v_cualitatia02 text,
    v_cualitatia03 text,
    v_cualitatia04 text,
    v_cualitatia05 text,
    dificultades_ac text,
    /*preguntas de plan de medida*/
	p_medida_pregunta01 text,
    p_medida_pregunta02 text,
    p_medida_pregunta03 text,
    p_medida_pregunta04 text,
    p_medida_pregunta05 text,
    alertas_ac text,
    propuesta_ac text,
    observacion_ac text
)
begin
	/*Declarando variables de codigo*/
    DECLARE part_total INT;
    declare id_medida int;
    declare id_cualitativa int;
    /*Convirtiendo todo a mayusculas*/
    set descripcion_actividad = upper(descripcion_actividad);
    set protagonista_ac= upper(protagonista_ac);
    set v_cualitatia01= upper(v_cualitatia01);
    set v_cualitatia02= upper(v_cualitatia02);
    set v_cualitatia03= upper(v_cualitatia03);
    set v_cualitatia04 = upper(v_cualitatia04);
    set v_cualitatia05 = upper(v_cualitatia05);
    set dificultades_ac =  upper(dificultades_ac);
	set p_medida_pregunta01= upper(p_medida_pregunta01) ;
    set p_medida_pregunta02 =  upper(p_medida_pregunta02);
    set p_medida_pregunta03 = upper(p_medida_pregunta03);
    set p_medida_pregunta04 = upper(p_medida_pregunta04);
    set p_medida_pregunta05= upper(p_medida_pregunta05);
    set alertas_ac = upper(alertas_ac) ;
    set observacion_ac = upper(observacion_ac);
    set alertas_ac = upper(alertas_ac);
    SET part_total = part_f+ part_M;
    
    if (part_total > meta_t) then
		select "LA SUMA DE LOS PARTICIPANTES NO PUEDE SER MAYOR QUE LA META ESTABLECIDA" AS "MENSAJE";
	ELSE
           insert into plan_de_medidas (PREGUNTA_01,PREGUNTA_02,PREGUNTA_03,PREGUNTA_04,PREGUNTA_05)
			values(p_medida_pregunta01,p_medida_pregunta02,p_medida_pregunta03,p_medida_pregunta04,p_medida_pregunta05);
			set id_medida = (SELECT LAST_INSERT_ID());
    
			insert into valoracion_cualitativa (PREGUNTA_01,PREGUNTA_02,PREGUNTA_03,PREGUNTA_04,PREGUNTA_05)
						values(v_cualitatia01,v_cualitatia02,v_cualitatia03,v_cualitatia04,v_cualitatia05);
			Set id_cualitativa = (SELECT LAST_INSERT_ID());
    
			insert into actividad (DESCRIPCION,PROTAGONISTA,META_ANUAL,METRA_TRIMESTRAL,PARTICIPANTES_F,PARTICIPANTES_M,DIFICULTADES
			,ALERTAS,PROPUESTA,OBSERVACION,ID_P_MEDIDA,ID_V_CUALITATIVA,CEDULA_PERSONAL,FECHA_REGISTRO,ESTADO)
			values(descripcion_actividad,protagonista_ac,meta_a,meta_t,part_f,part_m,dificultades_ac,alertas_ac,alertas_ac,
			observacion_ac,id_medida,id_cualitativa,_cedula,curdate(),1);
			SELECT "ACTIVIDAD REGISTRADA CORRECTAMENTE" AS "MENSAJE";
        
        
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
    select 'LA ASIGNATURA HA SIDO REGISTRADA CORRECTAMENTE' AS 'MENSAJE';
    else
			select 'LA ASIGNATURA YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
	end if; 
  
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Asigantura_Modalidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Asigantura_Modalidad`(
	_ID_ASIGNATURA int,
    _ID_MODLIDAD int
)
begin
	if   ( (not exists (select ID from asignatura_modalidad WHERE (ID_ASIGNATURA = _ID_ASIGNATURA and ID_MODALIDAD=_ID_MODLIDAD)) )) then
			INSERT INTO asignatura_modalidad (ID_ASIGNATURA,ID_MODALIDAD) values(_ID_ASIGNATURA,_ID_MODLIDAD);
    select 'LA ASIGNATURA HA SIDO ASIGNADA A UN MODALIDAD CORRECTAMENTE' AS 'MENSAJE';
    else
			select 'LA ASIGNATURA YA SE ENCUENTRA ASIGNADA A ESA MODALIDAD' AS 'MENSAJE';
	end if; 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Cargo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Cargo`(
	_cargo varchar(30)
)
begin
	set _cargo = ltrim(rtrim(_cargo));
	if (not exists (select DESCRIPCION from CARGO where DESCRIPCION = _cargo  )) then
			insert into cargo(DESCRIPCION,ESTADO,ESTADO_C) VALUES (upper(_cargo) ,0,1);
    select 'EL CARGO ACADÉMICO HA SIDO REGISTRADO EN LA BASE DE DATOS' AS 'MENSAJE';
    else
			select 'EL CARGO ACADÉMICO YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_Insertar_Modalidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Insertar_Modalidad`(
	_Descripcion varchar(45)
)
begin
	set _Descripcion = upper(ltrim(rtrim(_Descripcion)));
	if (not exists (select DESCRIPCION from modalidad where DESCRIPCION = _Descripcion )) then
			INSERT INTO modalidad (DESCRIPCION,ESTADO,ESTADO_M) VALUES (_Descripcion,0,1);
    select 'LA MODALIDAD HA SIDO REGISTRADA CORRECTAMENTE' AS 'MENSAJE';
    else
		select 'LA ASIGNATURA YA EXISTE EN LA BASE DE DATOS' AS 'MENSAJE';
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
	_Sexo int,
	_Telefono char(8),
    _Direccion varchar(100),
    _cargo int
)
begin
	/*INICIALIZANDO ALGUNAS VARIABLES*/
		DECLARE _Usser varchar(20);
		 DECLARE _Horas int;
         declare _estado bit;
         declare _s char(1);
         if(_Sexo = 1) then
			 set _s="F";
		 else
			set _s="M";
			end if;
         set _Horas = 10;
         set _Usser = lower(CONCAT(_Primer_Nombre , "123"));
         set _estado = 0;
	if (not exists (select CEDULA from PERSONAL where STRCMP(CEDULA,_Cedula_Personal)  = 0) ) then
			insert into PERSONAL(CEDULA,PRIMER_NOMBRE,SEGUNDO_NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,FECHA_NACIMIENTO,SEXO,TELEFONO,DIRECCION,HORAS_LABORALES,USSER,CONTRA,ESTADO,ID_CARGO,FECHA_REGISTRO) 
			values (upper(_Cedula_Personal),upper(_Primer_Nombre),upper(_Segundo_Nombre),upper(_Primer_Apellido),upper(_Segundo_Apellido),_Fecha_Nacimiento,upper(_s),_Telefono,upper(_Direccion),_Horas,_Usser, aes_encrypt('temporal','jabalises'),_estado,_cargo,curdate());
			update cargo set ESTADO = 1 where ID = _cargo;
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
		if ((select convert (aes_decrypt(CONTRA,'jabalises') using utf8) as CONTRA from personal where USSER = Usuario) = Contras) then
			select "ACCESO EXITOSO" as "MENSAJE",concat(p.PRIMER_NOMBRE,' ',p.PRIMER_APELLIDO) as "NOMBRE", c.DESCRIPCION as"CARGO",p.CEDULA as "CEDULA" from personal
            p inner join cargo c ON p.ID_CARGO = c.ID
            where USSER = Usuario;
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Actividad01` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Actividad01`(
	
)
begin
	select ID as CODIGO, DESCRIPCION from actividad ORDER BY ID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Actividad02` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Actividad02`(
	
)
begin
	select ID as CODIGO, PROTAGONISTA from actividad ORDER BY ID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Actividad03` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Actividad03`(
	
)
begin
	select ID as CODIGO,META_ANUAL,METRA_TRIMESTRAL,PARTICIPANTES_F,PARTICIPANTES_M ,
(PARTICIPANTES_F +PARTICIPANTES_M) as TOTAL_PARTICIPANTES, concat( round((((PARTICIPANTES_F +PARTICIPANTES_M) * 100)/ METRA_TRIMESTRAL),2)," ","%")   as META_TRIMESTRAL,
 concat( round((((PARTICIPANTES_F +PARTICIPANTES_M) * 100)/ META_ANUAL) ,2)," ","%") as META_ANUAL from actividad ORDER BY ID;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Actividad04` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Actividad04`(
	
)
begin
select a.ID, v.PREGUNTA_01, v.PREGUNTA_02, v.PREGUNTA_03,v.PREGUNTA_04, 
v.PREGUNTA_05 from actividad a inner join valoracion_cualitativa v on a.ID_V_CUALITATIVA = v.ID ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Actividad05` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Actividad05`(
	
)
begin
select a.ID, p.PREGUNTA_01, p.PREGUNTA_02, p.PREGUNTA_03,p.PREGUNTA_04, 
p.PREGUNTA_05 from actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Actividad06` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Actividad06`(
	
)
begin
select a.ID, DIFICULTADES,ALERTAS,PROPUESTA,OBSERVACION
from actividad a inner join plan_de_medidas p on a.ID_P_MEDIDA = p.ID ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Asignatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Asignatura`(
)
begin
	select ID,DESCRIPCION AS ASIGNATURA, if(ESTADO =1,'ACTIVO','NO ACTIVO') AS ESTADO from asignatura 
    WHERE ESTADO_A = 1
    ORDER BY DESCRIPCION;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Asignatura_Modalidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Asignatura_Modalidad`(
)
begin
	SELECT  am.ID as CODIGO,  a.DESCRIPCION as ASIGNATURA, m.DESCRIPCION as MODALIDAD, if(a.ESTADO = 1,'ASIGNADO','NO ASIGNADO')  AS ESTADO FROM ASIGNATURA a inner join asignatura_modalidad am on a.ID = am.ID_ASIGNATURA
								inner join modalidad m on am.ID_MODALIDAD = m.ID
                                WHERE ESTADO_M = 1
                                ORDER BY a.DESCRIPCION;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Cargo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Cargo`(
)
begin
  select ID,DESCRIPCION from cargo WHERE ESTADO_C = 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Cargo_Lista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Cargo_Lista`(
)
begin
	select ID, DESCRIPCION, (if(ESTADO = 1,"ACTIVO","NO ACTIVO")) AS ESTADO from cargo
    WHERE ESTADO_C = 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Grado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Grado`(
	_ID_MODALIDAD int
)
begin
 select g.ID, g.DESCRIPCION as GRADO from grado g inner join modalidad_grado mg on g.ID = mg.ID_GRADO
					  inner join modalidad m on mg.ID_MODALIDAD = m.ID where m.ID= _ID_MODALIDAD;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Grupos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Grupos`(
)
begin
 select  gg.ID as CODIGO_GRUPO, g.DESCRIPCION AS GRADO,m.DESCRIPCION as  MODALIDAD,
 s.DESCRIPCION AS SECCION, t.DESCRIPCION AS TURNO,year(gg.ANIO_ESCOLAR) as AÑO_ESCOLAR, if(gg.ESTADO=1,'ACTIVO','NO ACTIVO') AS ESTADO_GRUPO, concat(p.PRIMER_NOMBRE," ",p.PRIMER_APELLIDO) as DOCENTE_GUIA
 from grupo gg inner join grado g on gg.ID_GRADO = g.ID
                        inner join modalidad m on gg.ID_MODALIDAD =  m.ID
						inner join seccion s on gg.ID_SECCION = s.ID
						inner join turno t on gg.ID_TURNO = t.ID
                        inner join personal p on gg.CEDULA_DOCENTE = p.CEDULA 
                        order by Gg.ID; 
                        
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Modalidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Modalidades`(
)
begin
  select ID, DESCRIPCION, if(ESTADO=1,'ACITVO','NO ACTIVO') AS ESTADO from modalidad where ESTADO_M = 1
  ORDER BY DESCRIPCION;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Personal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Personal`(
  
)
begin
    select CEDULA,concat(PRIMER_NOMBRE," ",SEGUNDO_NOMBRE," ",PRIMER_APELLIDO," ",SEGUNDO_APELLIDO) as NOMBRE, 
    year(curdate())-year(FECHA_NACIMIENTO) as EDAD , IF(SEXO='F','FEMENINO','MASCULINO') AS SEXO,TELEFONO,DIRECCION,c.DESCRIPCION AS CARGO
    from personal p INNER JOIN CARGO c on p.ID_CARGO = c.ID
    
    where ESTADO_A = 1 order by NOMBRE ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Mostrar_Usuario_Contra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Mostrar_Usuario_Contra`(

)
begin
select CEDULA, concat(PRIMER_NOMBRE," ",SEGUNDO_NOMBRE," ",PRIMER_APELLIDO," ",SEGUNDO_APELLIDO) as NOMBRE
 ,  USSER , CONTRA from personal;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Prueba` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Prueba`(
 _numero int
)
begin
	insert into prueba (numero) values (_numero);
   SELECT LAST_INSERT_ID();
    
end ;;
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

-- Dump completed on 2022-11-22 12:59:44
