CREATE DATABASE  IF NOT EXISTS `campamento` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `campamento`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: campamento
-- ------------------------------------------------------
-- Server version	8.0.46

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
  `idactividad` int NOT NULL,
  PRIMARY KEY (`idactividad`),
  UNIQUE KEY `idactividad_UNIQUE` (`idactividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (101),(102),(103),(104),(105),(106),(107),(108),(109),(110);
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacioncabana`
--

DROP TABLE IF EXISTS `asignacioncabana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacioncabana` (
  `idninio` int NOT NULL,
  `id_cabana` int NOT NULL,
  `numero_cabana` int NOT NULL,
  PRIMARY KEY (`idninio`),
  UNIQUE KEY `idninio_UNIQUE` (`idninio`),
  UNIQUE KEY `id_cabana_UNIQUE` (`id_cabana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacioncabana`
--

LOCK TABLES `asignacioncabana` WRITE;
/*!40000 ALTER TABLE `asignacioncabana` DISABLE KEYS */;
INSERT INTO `asignacioncabana` VALUES (6,1,101),(7,2,102),(8,3,103),(9,4,104),(10,5,105);
/*!40000 ALTER TABLE `asignacioncabana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignaciontienda`
--

DROP TABLE IF EXISTS `asignaciontienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignaciontienda` (
  `id_ninio` int NOT NULL,
  `id_tienda` int NOT NULL,
  `numero_tienda` int NOT NULL,
  PRIMARY KEY (`id_ninio`),
  UNIQUE KEY `id_tienda_UNIQUE` (`id_tienda`),
  UNIQUE KEY `id_ninio_UNIQUE` (`id_ninio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaciontienda`
--

LOCK TABLES `asignaciontienda` WRITE;
/*!40000 ALTER TABLE `asignaciontienda` DISABLE KEYS */;
INSERT INTO `asignaciontienda` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `asignaciontienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabana`
--

DROP TABLE IF EXISTS `cabana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabana` (
  `idcabana` int NOT NULL,
  PRIMARY KEY (`idcabana`),
  UNIQUE KEY `idcabana_UNIQUE` (`idcabana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabana`
--

LOCK TABLES `cabana` WRITE;
/*!40000 ALTER TABLE `cabana` DISABLE KEYS */;
INSERT INTO `cabana` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `cabana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `idgrupo` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idgrupo`),
  UNIQUE KEY `idgrupo_UNIQUE` (`idgrupo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor`
--

DROP TABLE IF EXISTS `monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitor` (
  `dni` int NOT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `dni_UNIQUE` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor`
--

LOCK TABLES `monitor` WRITE;
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
INSERT INTO `monitor` VALUES (10101010),(11111111),(22222222),(33333333),(44444444),(55555555),(66666666),(77777777),(88888888),(99999999);
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitorgrupoactividad`
--

DROP TABLE IF EXISTS `monitorgrupoactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitorgrupoactividad` (
  `dni_monitor` varchar(9) COLLATE utf8mb3_spanish_ci NOT NULL,
  `id_grupo` int NOT NULL,
  `cod_actividad` int NOT NULL,
  PRIMARY KEY (`dni_monitor`,`id_grupo`,`cod_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitorgrupoactividad`
--

LOCK TABLES `monitorgrupoactividad` WRITE;
/*!40000 ALTER TABLE `monitorgrupoactividad` DISABLE KEYS */;
INSERT INTO `monitorgrupoactividad` VALUES ('10101010',10,110),('11111111',1,101),('22222222',2,102),('33333333',3,103),('44444444',4,104),('55555555',5,105),('66666666',6,106),('77777777',7,107),('88888888',8,108),('99999999',9,109);
/*!40000 ALTER TABLE `monitorgrupoactividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ninio`
--

DROP TABLE IF EXISTS `ninio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ninio` (
  `idninio` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `apellidos` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `edad` int NOT NULL,
  `idgrupo` int NOT NULL,
  PRIMARY KEY (`idninio`),
  UNIQUE KEY `idninio_UNIQUE` (`idninio`),
  KEY `fk_ninio_grupo_idx` (`idgrupo`),
  CONSTRAINT `fk_ninio_cabana` FOREIGN KEY (`idninio`) REFERENCES `asignacioncabana` (`idninio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ninio_grupo` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ninio_tienda` FOREIGN KEY (`idninio`) REFERENCES `asignaciontienda` (`id_ninio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ninio`
--

LOCK TABLES `ninio` WRITE;
/*!40000 ALTER TABLE `ninio` DISABLE KEYS */;
INSERT INTO `ninio` VALUES (1,'Alejandro','García Pérez',8,1),(2,'Lucía','Martínez Gómez',9,2),(3,'Mateo','Rodríguez López',10,3),(4,'Sofía','Fernández Sánchez',11,4),(5,'Daniel','López Martín',12,5),(6,'Paula','Jiménez Ruiz',13,6),(7,'Álvaro','Moreno Díaz',14,7),(8,'Elena','Álvarez Moreno',8,8),(9,'Pablo','Romero Alonso',9,9),(10,'Carmen','Gutiérrez Navarro',10,10);
/*!40000 ALTER TABLE `ninio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda`
--

DROP TABLE IF EXISTS `tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda` (
  `idTienda` int NOT NULL,
  PRIMARY KEY (`idTienda`),
  UNIQUE KEY `idTienda_UNIQUE` (`idTienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda`
--

LOCK TABLES `tienda` WRITE;
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
INSERT INTO `tienda` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10);
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-28 23:03:47
