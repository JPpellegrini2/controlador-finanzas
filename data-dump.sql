-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: finanzas
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `categorias_egreso`
--

DROP TABLE IF EXISTS `categorias_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias_egreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_egreso`
--

LOCK TABLES `categorias_egreso` WRITE;
/*!40000 ALTER TABLE `categorias_egreso` DISABLE KEYS */;
INSERT INTO `categorias_egreso` VALUES (1,'juan','hola'),(2,'juan','hola'),(3,'juan','hola'),(4,'juan','hola'),(5,'juan','hola'),(6,'juan','hola'),(7,'juan','hola');
/*!40000 ALTER TABLE `categorias_egreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_ingreso`
--

DROP TABLE IF EXISTS `categorias_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias_ingreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_ingreso`
--

LOCK TABLES `categorias_ingreso` WRITE;
/*!40000 ALTER TABLE `categorias_ingreso` DISABLE KEYS */;
INSERT INTO `categorias_ingreso` VALUES (1,'juan','hola');
/*!40000 ALTER TABLE `categorias_ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `egresos`
--

DROP TABLE IF EXISTS `egresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `egresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` float NOT NULL,
  `movimiento` int(11) DEFAULT NULL,
  `categoria_egreso` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_mov_idx` (`movimiento`),
  KEY `id_cat_egr_idx` (`categoria_egreso`),
  CONSTRAINT `id_cat_egr` FOREIGN KEY (`categoria_egreso`) REFERENCES `categorias_egreso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_mov` FOREIGN KEY (`movimiento`) REFERENCES `movimientos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egresos`
--

LOCK TABLES `egresos` WRITE;
/*!40000 ALTER TABLE `egresos` DISABLE KEYS */;
INSERT INTO `egresos` VALUES (1,110,1,1,'','2019'),(2,0,1,1,'','2019'),(3,0.5,1,1,'','2019'),(4,12,1,1,'hola','2019'),(5,12,1,1,'hola','2019'),(6,12,1,1,'hola','2019'),(7,12,1,1,'hola','2019'),(8,12.5,1,1,'hola','2019');
/*!40000 ALTER TABLE `egresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresos`
--

DROP TABLE IF EXISTS `ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` float NOT NULL,
  `movimiento` int(11) DEFAULT NULL,
  `categoria_ingreso` int(11) DEFAULT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_movimiento_idx` (`movimiento`),
  KEY `id_categotia_ing_idx` (`categoria_ingreso`),
  CONSTRAINT `id_categotia_ing` FOREIGN KEY (`categoria_ingreso`) REFERENCES `categorias_ingreso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_movimiento` FOREIGN KEY (`movimiento`) REFERENCES `movimientos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresos`
--

LOCK TABLES `ingresos` WRITE;
/*!40000 ALTER TABLE `ingresos` DISABLE KEYS */;
INSERT INTO `ingresos` VALUES (2,200,1,1,'','2019'),(3,200,1,1,'','2019'),(4,200,1,1,'','2019'),(5,120,1,1,'hola','2019'),(6,120,1,1,'hola','2019'),(7,120,1,1,'hola','2019'),(8,12,1,1,'hola','2019'),(9,12,1,1,'hola','2019'),(10,12,1,1,'hola','2019'),(11,12,1,1,'hola','2019'),(12,12,1,1,'hola','2019'),(13,12,1,1,'hola','2019'),(14,10,1,1,'hola','2019'),(15,10,1,1,'hola','2019'),(16,125,1,1,'hola','2019'),(17,12,1,1,'hola','2019'),(18,12,1,1,'hola','2019'),(19,12.5,1,1,'hola','2019');
/*!40000 ALTER TABLE `ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES (1,'juan','hola'),(2,'juan','hola');
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-29 12:35:40
