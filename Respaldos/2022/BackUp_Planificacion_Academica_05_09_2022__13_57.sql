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
  `DESCRIPCION` varchar(35) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
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
  `ID_GRADO` int NOT NULL,
  `CEDULA_DOCENTE` char(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BC_HB` (`ID_HORARIO_BLOQUE`),
  KEY `FK_BC_ASIGNATURA` (`ID_ASIGNATURA`),
  KEY `FK_BC_GRADO` (`ID_GRADO`),
  KEY `FK_DOCENTE_BLOQUE` (`CEDULA_DOCENTE`),
  CONSTRAINT `FK_BC_ASIGNATURA` FOREIGN KEY (`ID_ASIGNATURA`) REFERENCES `asignatura` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_BC_GRADO` FOREIGN KEY (`ID_GRADO`) REFERENCES `grado` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_BC_HB` FOREIGN KEY (`ID_HORARIO_BLOQUE`) REFERENCES `horario_bloque` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOCENTE_BLOQUE` FOREIGN KEY (`CEDULA_DOCENTE`) REFERENCES `personal` (`CEDULA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloque_clase`
--

LOCK TABLES `bloque_clase` WRITE;
/*!40000 ALTER TABLE `bloque_clase` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
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
  `DESCRIPCION` varchar(35) DEFAULT NULL,
  `ID_SECCION` int NOT NULL,
  `ID_TURNO` int NOT NULL,
  `ID_MODALIDAD` int NOT NULL,
  `CEDULA_DOCENTE` char(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_GRADO_SECCION` (`ID_SECCION`),
  KEY `FK_GRADO_TURNO` (`ID_TURNO`),
  KEY `FK_GRADO_MODALIDAD` (`ID_MODALIDAD`),
  KEY `FK_GRADO_PERSONAL` (`CEDULA_DOCENTE`),
  CONSTRAINT `FK_GRADO_MODALIDAD` FOREIGN KEY (`ID_MODALIDAD`) REFERENCES `modalidad` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_PERSONAL` FOREIGN KEY (`CEDULA_DOCENTE`) REFERENCES `personal` (`CEDULA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_SECCION` FOREIGN KEY (`ID_SECCION`) REFERENCES `seccion` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_GRADO_TURNO` FOREIGN KEY (`ID_TURNO`) REFERENCES `turno` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_bloque`
--

DROP TABLE IF EXISTS `horario_bloque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario_bloque` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NO _BLOQUE` varchar(35) NOT NULL,
  `HORARIO_DESIGNADO` varchar(35) NOT NULL,
  `ID_TURNO` int NOT NULL,
  `ID_DIA` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_HB_TURNO` (`ID_TURNO`),
  KEY `FK_ID_DIA` (`ID_DIA`),
  CONSTRAINT `FK_HB_TURNO` FOREIGN KEY (`ID_TURNO`) REFERENCES `turno` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ID_DIA` FOREIGN KEY (`ID_DIA`) REFERENCES `dia` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_bloque`
--

LOCK TABLES `horario_bloque` WRITE;
/*!40000 ALTER TABLE `horario_bloque` DISABLE KEYS */;
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
  `CONTRA` varchar(20) NOT NULL,
  `ESTADO` bit(1) NOT NULL,
  `ID_CARGO` int NOT NULL,
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
INSERT INTO `personal` VALUES ('001-070984-0031F','MAGDA','VERONICA','FLORES','LOPEZ','1984-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 2 CUADRAS AL SUR',0,'magda123','magdaco123',_binary '',2),('001-070989-0041P','MARJORIE','JACQUELINE','MEMBREÑO','CASTRO','1989-07-09','F','88124033','ENTRADA PRINCIPAL CIUDAD SANDINO 2 CUADRAS AL SUR',10,'marjo123','marjo123',_binary '',1),('001-070989-0239L','MARIA','ELIZABETH','ARAGON','ROA','1989-07-09','F','78974033','PARQUE MATEARE 3 CUADRAS AL SUR',10,'mari123','mari123',_binary '',1),('001-070990-0031F','YURI','PATRICIA','HERNANDEZ','RAMIREZ','1990-07-09','F','77774033','CIUDAD SANDINO ENTRANDA PRINCIPAL 7 CUADRAS AL SUR',0,'yuri123','yuri123',_binary '',3),('001-070991-0011Q','ANDREA','ANTONIA','SILVA','GUIDO','1991-07-09','F','77774033','PARQUE MATEARE 7 CUADRAS AL SUR',10,'andy123','andy123',_binary '',1),('001-070992-0031X','MARCO','AURELIO','ALEMAN','SOLIS','1992-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'marco123','marco123',_binary '',1),('001-070997-0031X','MEYLING','ESTEFANIA','PEREZ','VELASQUEZ','1997-07-09','F','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'mey123','mey123',_binary '',1),('001-070999-0043W','SEBASTIAN','JOSE','MEZA','PEREZ','1999-07-09','M','77774033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'sebas123','sebas123',_binary '',1),('001-070999-0231S','ESTELA','RACHEL','PEREZ','BRIONES','1999-07-09','F','79974033','PARQUE MATEARE 2 CUADRAS AL SUR',10,'este123','este123',_binary '',1),('001-100494-0001V','MARIA','MAGDALENA','URROZ','BLANDON','1994-04-10','F','88897312','CIUDAD SANDINO TOPE SUR',10,'mari123','mari123',_binary '',1),('001-180990-0004Z','SOFIA','SARAI','MARTINEZ','RUIZ','1990-09-18','F','89903242','PARQUE MATEARE 7 CUADRAS LA NORTE',10,'sofiy123','sofi123',_binary '',1),('001-230890-0031X','DINA','SARA','CASTRO','FLORES','1990-08-23','F','77774033','CARRETERA VIEJA A LEON KM 29',10,'dina123','dina123',_binary '',1);
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-05 13:57:19
