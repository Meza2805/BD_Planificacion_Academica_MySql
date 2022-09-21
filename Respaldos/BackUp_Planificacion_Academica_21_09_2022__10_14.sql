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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'LENGUA Y LITERATURA'),(2,'MATEMATICAS'),(3,'APRENDER A EMPRENDER Y PROSPERAR'),(4,'CIENCIAS SOCIALES'),(5,'CIENCIAS NATURALES'),(6,'EDUCACION FISICA Y PRACTICA DEPORTIVA'),(7,'DERECHOS Y DIGNIDAD DE LA MUJER'),(8,'FISICA'),(9,'QUIMICA'),(10,'BIOLOGIA'),(11,'CRECIENDO EN VALORES'),(12,'EDUCACION PARA APRENDER, EMPREDER Y PROSPERAR'),(13,'TALLER DE ARTE Y CULTURA'),(14,'LENGUA EXTRANJERA'),(15,'HISTORIA');
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
  PRIMARY KEY (`ID`),
  KEY `FK_BC_HB` (`ID_HORARIO_BLOQUE`),
  KEY `FK_BC_ASIGNATURA` (`ID_ASIGNATURA`),
  KEY `FK_DOCENTE_BLOQUE` (`CEDULA_DOCENTE`),
  KEY `FK_BC_GRADO` (`ID_GRUPO`),
  CONSTRAINT `FK_BC_ASIGNATURA` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_BC_GRADO` FOREIGN KEY (`ID_GRUPO`) REFERENCES `grupo` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_BC_HB` FOREIGN KEY (`ID_HORARIO_BLOQUE`) REFERENCES `horario_bloque` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOCENTE_BLOQUE` FOREIGN KEY (`CEDULA_DOCENTE`) REFERENCES `personal` (`CEDULA`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque_clase`
--

LOCK TABLES `bloque_clase` WRITE;
/*!40000 ALTER TABLE `bloque_clase` DISABLE KEYS */;
INSERT INTO `bloque_clase` VALUES (3,1,1,3,'001-070985-0032X'),(4,2,1,3,'001-070985-0032X'),(5,3,2,3,'001-070985-0032X'),(6,4,2,3,'001-070985-0032X'),(7,5,6,3,'001-070985-0032X'),(8,6,6,3,'001-070985-0032X');
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'DOCENTE'),(2,'DIRECTOR'),(3,'SUB DIRECTOR'),(4,'INSPECTOR');
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'LUNES'),(2,'MARTES'),(3,'MIERCOLES'),(4,'JUEVES'),(5,'VIERENES'),(6,'SABADO');
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'I NIVEL'),(2,'II NIVEL'),(3,'III NIVEL'),(4,'PRIMER GRADO'),(5,'SEGUNDO GRADO'),(6,'TERCER GRADO'),(7,'CUARTO GRADO'),(8,'QUINTO GRADO'),(9,'SEXTO GRADO'),(10,'SEPTIMO GRADO'),(11,'OCTAVO GRADO'),(12,'NOVENO GRADO'),(13,'DECIMO GRADO'),(14,'UNDECIMO GRADO');
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
INSERT INTO `grupo` VALUES (3,4,1,1,4,'2022-09-18','001-070985-0032X'),(4,4,2,1,4,'2022-09-18','001-070988-0032W'),(5,5,1,1,4,'2022-09-18','001-070989-0041P'),(6,5,2,1,4,'2022-09-18','001-070989-0239L'),(7,6,1,1,4,'2022-09-18','001-070991-0011Q'),(8,6,2,1,4,'2022-09-18','001-070992-0031X'),(9,7,1,1,4,'2022-09-18','001-070997-0031X'),(10,7,2,1,4,'2022-09-18','001-070999-0043W'),(11,8,1,1,4,'2022-09-18','001-070999-0231S'),(12,8,2,1,4,'2022-09-18','001-071070-0129X'),(13,9,1,1,4,'2022-09-18','001-071072-0009A'),(14,9,2,1,4,'2022-09-18','001-071073-0007Q'),(15,4,1,3,4,'2022-09-18','001-071080-0018U'),(16,4,2,3,4,'2022-09-18','001-071082-0129X'),(17,5,1,3,4,'2022-09-18','001-071087-0023Z'),(18,5,2,3,4,'2022-09-18','001-071089-0018K'),(19,6,1,3,4,'2022-09-18','001-071089-0018U'),(20,6,2,3,4,'2022-09-18','001-071090-0048H'),(21,7,1,3,4,'2022-09-18','001-071091-0113Z'),(22,7,2,3,4,'2022-09-18','001-071097-3248G'),(23,8,1,3,4,'2022-09-18','001-071099-0148Y'),(24,8,2,3,4,'2022-09-18','001-100494-0001V'),(25,9,1,3,4,'2022-09-18','001-180990-0004Z'),(26,9,2,3,4,'2022-09-18','001-230890-0031X');
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
INSERT INTO `horario_bloque` VALUES (1,1,1,1),(2,2,1,1),(3,3,1,1),(4,4,1,1),(5,5,1,1),(6,6,1,1),(7,1,1,2),(8,2,1,2),(9,3,1,2),(10,4,1,2),(11,5,1,2),(12,6,1,2),(13,1,1,3),(14,2,1,3),(15,3,1,3),(16,4,1,3),(17,5,1,3),(18,6,1,3),(19,1,1,4),(20,2,1,4),(21,3,1,4),(22,4,1,4),(23,5,1,4),(24,6,1,4),(25,1,1,5),(26,2,1,5),(27,3,1,5),(28,4,1,5),(29,5,1,5),(30,6,1,5),(31,7,3,1),(32,8,3,1),(33,9,3,1),(34,10,3,1),(35,11,3,1),(36,12,3,1),(37,7,3,2),(38,8,3,2),(39,9,3,2),(40,10,3,2),(41,11,3,2),(42,12,3,2),(43,7,3,3),(44,8,3,3),(45,9,3,3),(46,10,3,3),(47,11,3,3),(48,12,3,3),(49,7,3,4),(50,8,3,4),(51,9,3,4),(52,10,3,4),(53,11,3,4),(54,12,3,4),(55,7,3,5),(56,8,3,5),(57,9,3,5),(58,10,3,5),(59,11,3,5),(60,12,3,5);
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_designado`
--

LOCK TABLES `horario_designado` WRITE;
/*!40000 ALTER TABLE `horario_designado` DISABLE KEYS */;
INSERT INTO `horario_designado` VALUES (1,'BLOQUE 1','7:00 AM - 7:45 AM'),(2,'BLOQUE 2','7:45 AM - 8:30 AM'),(3,'BLOQUE 3','8:30 AM - 9:15 AM'),(4,'BLOQUE 4','9:15 AM - 10:00 AM'),(5,'BLOQUE 5','10:30 AM - 11:15 AM'),(6,'BLOQUE 6','11:15 AM - 12:00 MD'),(7,'BLOQUE 1','12:30 MD - 1:15 PM'),(8,'BLOQUE 2','1:15 PM - 2:00 PM'),(9,'BLOQUE 3','2:00 PM - 2:45 PM'),(10,'BLOQUE 4','2:45 PM - 3:30 PM'),(11,'BLOQUE 5','3:45 PM - 4:30 PM'),(12,'BLOQUE 6','4:30 PM - 5:15 PM');
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
INSERT INTO `modalidad` VALUES (1,'PREESCOLAR COMUNITARIO'),(2,'PREESCOLAR FORMAL'),(3,'PREESCOLAR MULTINIVEL'),(4,'PRIMARIA REGULAR'),(5,'PRRIMARIA EXTRAEDAD'),(6,'SECUNDARIA DIURNA'),(7,'SECUNDARIA NOCTURNA'),(8,'SECUNDARIA POR ENCUENTRO');
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
INSERT INTO `personal` VALUES ('001-070984-0031F','MAGDA','VERONICA','FLORES','LOPEZ','1984-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 2 CUADRAS AL SUR',0,'magda123','„V£‹ÀWrø2m',_binary '',2,'2022-09-08'),('001-070985-0032X','SARAI','SOFIA','MERCADO','LUNA','1985-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',16,'sari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070988-0032W','MARIA','JULIETA','MARTINEZ','LARIOS','1988-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'maria123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070989-0041P','MARJORIE','JACQUELINE','MEMBREÑO','CASTRO','1989-07-09','F','88124033','ENTRADA PRINCIPAL CIUDAD SANDINO 2 CUADRAS AL SUR',10,'marjo123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070989-0239L','MARIA','ELIZABETH','ARAGON','ROA','1989-07-09','F','78974033','PARQUE MATEARE 3 CUADRAS AL SUR',10,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070990-0031F','YURI','PATRICIA','HERNANDEZ','RAMIREZ','1990-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 7 CUADRAS AL SUR',0,'yuri123','„V£‹ÀWrø2m',_binary '\0',3,'2022-09-08'),('001-070991-0011Q','ANDREA','ANTONIA','SILVA','GUIDO','1991-07-09','F','77774033','PARQUE MATEARE 7 CUADRAS AL SUR',10,'andy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070992-0031X','MARCO','AURELIO','ALEMAN','SOLIS','1992-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'marco123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070997-0031X','MEYLING','ESTEFANIA','PEREZ','VELASQUEZ','1997-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'mey123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070999-0043W','SEBASTIAN','JOSE','MEZA','PEREZ','1999-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'sebas123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-070999-0231S','ESTELA','RACHEL','PEREZ','BRIONES','1999-07-09','F','79974033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'este123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071070-0129X','MERCEDES','LISSETH','SAAVEDRA','ORTEGA','1970-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'mercedes123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071072-0009A','ATALIA','ABIGAIL','MONTERO','ORTEGA','1972-07-12','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'atalia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071073-0007Q','NOELIA','SOFIA','ARAGON','SOLIS','1973-09-09','F','88901243','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'noelia123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071080-0018U','ANABEL','','OROZCO','VASQUEZ','1980-07-12','F','81299033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'anabel123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071082-0129X','URANIA','','ARROLIGA','ESTRADA','1982-07-12','F','81204333','CARRETERA VIEJA A LEON KM 24',10,'urania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071087-0023Z','JERONIMA','SONIA','MONTERO','CASTRO','1987-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'jeronima123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071089-0018K','BERTHA','ESMERALDA','ORDOÑEZ','MATUTE','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'bertha123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071089-0018U','BETHANIA','','SALGADO','MERARI','1989-07-12','F','81200033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE 2 CUADRAS ABAJO',10,'bethania123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071090-0048H','IRIS','SOFIA','SOLIS','GUEVARA','1990-12-12','F','81223033','ENTRADA CIUDAD SANDINO 9 CUADRAS AL NORTE',10,'iris123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071091-0113Z','MARTIN','JOSE','CACERES','BRIONES','1991-07-10','M','77274089','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'martin123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071097-3248G','IRMA','','RODRIGUEZ','SOMARRIBA','1997-07-12','F','81274033','ENTRADA CIUDAD SANDINO 7 CUADRAS AL NORTE',10,'irma123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-071099-0148Y','REYNA','ISABEL','VELASZQUEZ','ROA','1999-07-10','F','81274033','CARRETERA VIEJA A LEON KM 24',10,'reyna123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-100494-0001V','MARIA','MAGDALENA','URROZ','BLANDON','1994-04-10','F','88897312','CIUDAD SANDINO TOPE SUR',10,'mari123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-180990-0004Z','SOFIA','SARAI','MARTINEZ','RUIZ','1990-09-18','F','89903242','PARQUE MATEARE 7 CUADRAS LA NORTE',10,'sofiy123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('001-230890-0031X','DINA','SARA','CASTRO','FLORES','1990-08-23','F','77774033','CARRETERA VIEJA A LEON KM 29',10,'dina123','„V£‹ÀWrø2m',_binary '',1,'2022-09-08'),('002-071094-0148B','FATIMA','YALENA','MOJICA','ARAGON','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'fatima123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('002-071097-0148L','ARELYS','VANESSA','JALINA','ROCHA','1997-07-12','F','82474033','JARDINES DE VERACRUZ DE LA ROTONDA 2 CUADRAS AL LAGO',10,'arelys123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('440-071091-21480','FLOR','DE MARIA','PINEDA','ARVIXU','1991-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'flor123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('440-071094-0148Y','ISABEL','SERENA','MEZA','PEREZ','1994-07-10','F','81274033','CARRETERA VIEJA A LEON KM 29',10,'isabel123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('443-070990-0012P','JORGE','ENMANUEL','LEIVA','SILVA','1990-07-09','M','89774033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',10,'jorge123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('443-071091-0113Z','OSCAR','DANILO','CASTRO','FLORES','1991-07-10','M','81274033','ENTRADA CIUDAD SANDINO 3 CUADRAS AL NORTE',10,'oscar123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08'),('448-1504993-0001V','MACOS','RAMON','MENDOZA','PEREZ','1993-04-15','M','75201807','SABANA GRANDE, VILLA JERUSALEM',10,'macos123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-21'),('449-071080-0148Y','CARMEN','ELVIRA','PINEDA','ARVIZU','1980-07-10','F','81271233','BO. NUEVA VIDA KM 10 CARRETERA VIEJA A LEON CASA NO210',10,'carmen123','„V£‹ÀWrø2m',_binary '\0',1,'2022-09-08');
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES (1,'SECCION A'),(2,'SECCION B'),(3,'SECCION C');
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
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'MATUTINO','7:00 AM - 12:00 MD'),(2,'MATUTINO','8:00 AM - 11:00 AM'),(3,'VESPERTINO','12:30 MD - 5:15 PM'),(4,'SABATINO','8:00 AM - 4:00 PM');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'planificacion_academica'
--

--
-- Dumping routines for database 'planificacion_academica'
--
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-21 10:14:59
