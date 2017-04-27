CREATE DATABASE  IF NOT EXISTS `dbsemanaoracion` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbsemanaoracion`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: dbsemanaoracion
-- ------------------------------------------------------
-- Server version	5.6.24-log

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
-- Table structure for table `bienvenida`
--

DROP TABLE IF EXISTS `bienvenida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bienvenida` (
  `id_bienvenida` int(11) NOT NULL,
  `nombres_apellidos` varchar(100) DEFAULT NULL,
  `biografia` longtext,
  `foto` varchar(100) DEFAULT NULL,
  `id_semana_oracion` int(11) NOT NULL,
  PRIMARY KEY (`id_bienvenida`),
  KEY `fk_bienvenida_semana_oracion1_idx` (`id_semana_oracion`),
  CONSTRAINT `fk_bienvenida_semana_oracion1` FOREIGN KEY (`id_semana_oracion`) REFERENCES `semana_oracion` (`id_semana_oracion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bienvenida`
--

LOCK TABLES `bienvenida` WRITE;
/*!40000 ALTER TABLE `bienvenida` DISABLE KEYS */;
/*!40000 ALTER TABLE `bienvenida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biografia`
--

DROP TABLE IF EXISTS `biografia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biografia` (
  `id_biografia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_apellidos` varchar(100) DEFAULT NULL,
  `biografia` longtext,
  `foto` varchar(100) DEFAULT NULL,
  `id_semana_oracion` int(11) NOT NULL,
  PRIMARY KEY (`id_biografia`),
  KEY `fk_biografia_semana_oracion1_idx` (`id_semana_oracion`),
  CONSTRAINT `fk_biografia_semana_oracion1` FOREIGN KEY (`id_semana_oracion`) REFERENCES `semana_oracion` (`id_semana_oracion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biografia`
--

LOCK TABLES `biografia` WRITE;
/*!40000 ALTER TABLE `biografia` DISABLE KEYS */;
/*!40000 ALTER TABLE `biografia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cantico`
--

DROP TABLE IF EXISTS `cantico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cantico` (
  `id_cantico` int(11) NOT NULL AUTO_INCREMENT,
  `nro_cantico` int(11) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `letra` longtext,
  `id_semana_oracion` int(11) NOT NULL,
  PRIMARY KEY (`id_cantico`),
  KEY `fk_cantico_semana_oracion1_idx` (`id_semana_oracion`),
  CONSTRAINT `fk_cantico_semana_oracion1` FOREIGN KEY (`id_semana_oracion`) REFERENCES `semana_oracion` (`id_semana_oracion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantico`
--

LOCK TABLES `cantico` WRITE;
/*!40000 ALTER TABLE `cantico` DISABLE KEYS */;
/*!40000 ALTER TABLE `cantico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descarga`
--

DROP TABLE IF EXISTS `descarga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descarga` (
  `id_descarga` int(11) NOT NULL AUTO_INCREMENT,
  `contador` int(11) DEFAULT NULL,
  `id_semana_oracion` int(11) NOT NULL,
  PRIMARY KEY (`id_descarga`),
  KEY `fk_descarga_semana_oracion1_idx` (`id_semana_oracion`),
  CONSTRAINT `fk_descarga_semana_oracion1` FOREIGN KEY (`id_semana_oracion`) REFERENCES `semana_oracion` (`id_semana_oracion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descarga`
--

LOCK TABLES `descarga` WRITE;
/*!40000 ALTER TABLE `descarga` DISABLE KEYS */;
/*!40000 ALTER TABLE `descarga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia` (
  `id_dia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_dia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_dia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'DOMINGO'),(2,'LUNES'),(3,'MARTES'),(4,'MIERCOLES'),(5,'JUEVES'),(6,'VIERNES'),(7,'SÁBADO');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_turno_tema`
--

DROP TABLE IF EXISTS `dia_turno_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia_turno_tema` (
  `id_dia_turno_tema` int(11) NOT NULL AUTO_INCREMENT,
  `id_dia` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  PRIMARY KEY (`id_dia_turno_tema`),
  KEY `fk_turno_dia1_idx` (`id_dia`),
  KEY `fk_turno_tema1_idx` (`id_tema`),
  KEY `fk_dia_turno_tema_turno1_idx` (`id_turno`),
  CONSTRAINT `fk_dia_turno_tema_turno1` FOREIGN KEY (`id_turno`) REFERENCES `turno` (`id_turno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_turno_dia1` FOREIGN KEY (`id_dia`) REFERENCES `dia` (`id_dia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_turno_tema1` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_turno_tema`
--

LOCK TABLES `dia_turno_tema` WRITE;
/*!40000 ALTER TABLE `dia_turno_tema` DISABLE KEYS */;
INSERT INTO `dia_turno_tema` VALUES (1,2,4,1),(2,2,4,2),(3,2,5,3),(4,3,6,1),(5,3,6,2),(6,3,7,3),(7,4,8,1),(8,4,8,2),(9,4,9,3),(10,5,10,1),(11,5,10,2),(12,5,11,3),(13,6,12,1),(15,6,13,3);
/*!40000 ALTER TABLE `dia_turno_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensaje` (
  `id_mensaje` int(11) NOT NULL AUTO_INCREMENT,
  `telefono` varchar(10) DEFAULT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `descripcion` longtext,
  `id_semana_oracion` int(11) NOT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_mensaje`),
  KEY `fk_mensaje_semana_oracion1_idx` (`id_semana_oracion`),
  CONSTRAINT `fk_mensaje_semana_oracion1` FOREIGN KEY (`id_semana_oracion`) REFERENCES `semana_oracion` (`id_semana_oracion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsabilidad`
--

DROP TABLE IF EXISTS `responsabilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsabilidad` (
  `id_responsabilidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_responsabilidad` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_responsabilidad`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsabilidad`
--

LOCK TABLES `responsabilidad` WRITE;
/*!40000 ALTER TABLE `responsabilidad` DISABLE KEYS */;
INSERT INTO `responsabilidad` VALUES (1,'Responsable del turno'),(2,'Bienvenida'),(3,'Cántico inicial'),(4,'Oración inicial'),(5,'Número Esp.'),(6,'Cántico final'),(7,'Oración final'),(8,'Ujieres');
/*!40000 ALTER TABLE `responsabilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsable`
--

DROP TABLE IF EXISTS `responsable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsable` (
  `id_responsable` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_responsable` varchar(100) DEFAULT NULL,
  `telefono_contacto` varchar(10) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_responsable`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsable`
--

LOCK TABLES `responsable` WRITE;
/*!40000 ALTER TABLE `responsable` DISABLE KEYS */;
INSERT INTO `responsable` VALUES (2,'Eusebio Goñi Castillejo',NULL,NULL),(3,'Antonio Villafuerte De La Cruz',NULL,NULL),(4,'Elmer Cruzado Vásquez',NULL,NULL),(5,'Celina Ramirez Vega',NULL,NULL),(6,'Julissa Perca Romero',NULL,NULL),(7,'Mijail Pinedo Torres',NULL,NULL),(8,'Evila Acosta Muñoz ',NULL,NULL),(9,'Yngue Ramirez Pezo',NULL,NULL),(10,'Juan Vigo Rivera ',NULL,NULL),(11,'Elizabeth Chalco Mendoza',NULL,NULL),(12,'José Paz Vilchez',NULL,NULL),(13,'Paul Troyes Rimapa',NULL,NULL),(14,'Manuel Amasifuen Reategui',NULL,NULL),(15,'Joel Pérez Suárez',NULL,NULL),(16,'Robin Díaz Saavedra',NULL,NULL),(17,'David Davila Cerron',NULL,NULL),(18,'Alberto Corimayhua Condori',NULL,NULL),(19,'Dan Saenz Gaspar',NULL,NULL),(20,'Jhonatan Otárola Mescua',NULL,NULL),(21,'Katty Silva Villanueva',NULL,NULL),(22,'Edwin Barboza Mestanza',NULL,NULL),(23,'Miriam Bances Marín',NULL,NULL),(24,'Giovany Caruzo Sánchez',NULL,NULL),(25,'Jheimy Tuanama Tirado',NULL,NULL),(26,'Wesley Moreto Guerrero',NULL,NULL),(27,'Isaias Abad Jibaja',NULL,NULL),(28,'Jefferson Carranza Marin',NULL,NULL),(29,'Nedjha Ruiz Castillo',NULL,NULL),(30,'David Pachamora Pinedo',NULL,NULL),(31,'Noemi Mendoza Salas',NULL,NULL),(32,'German Prado Correa',NULL,NULL),(33,'Henry Peñaloza Rojas',NULL,NULL),(34,'Esther Villanueva Huamán',NULL,NULL),(35,'Julio Paredes Guzman',NULL,NULL),(36,'Antonio Villafuerte De La Cruz',NULL,NULL),(37,'Jenson Chambi Aguilar',NULL,NULL),(38,'Joel Contreras Gonzales',NULL,NULL),(39,'Fiorela Sangama Curto',NULL,NULL),(40,'July Tuesta Vásquez',NULL,NULL),(41,'Manasés Díaz Quispe',NULL,NULL),(42,'Roberto Cueva Vargas',NULL,NULL),(43,'Isaí Caruajulca Bravo',NULL,NULL),(44,'Jhon Erazo Chinchay ',NULL,NULL),(45,'Abel Rivera Cervantes ',NULL,NULL),(46,'Llerili Lozano Tapullima ',NULL,NULL),(47,'Lori Romero Chinguel',NULL,NULL),(48,'Roiser Zoto Sanchez',NULL,NULL),(49,'WendyInga Poquioma',NULL,NULL),(50,'Luis Lavado Llaro',NULL,NULL),(51,'Gina Parado Aquino',NULL,NULL),(52,'  Mariana Angulo Delgado ',NULL,NULL),(53,'Edual Santos Gutierrez',NULL,NULL),(54,'Mirian Ticona Yapo',NULL,NULL);
/*!40000 ALTER TABLE `responsable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semana_oracion`
--

DROP TABLE IF EXISTS `semana_oracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semana_oracion` (
  `id_semana_oracion` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_semana_oracion`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semana_oracion`
--

LOCK TABLES `semana_oracion` WRITE;
/*!40000 ALTER TABLE `semana_oracion` DISABLE KEYS */;
INSERT INTO `semana_oracion` VALUES (1,'AMOR SIN SECRETOS','2016-05-13','2016-05-21','1');
/*!40000 ALTER TABLE `semana_oracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(200) DEFAULT NULL,
  `id_semana_oracion` int(11) NOT NULL,
  PRIMARY KEY (`id_tema`),
  KEY `fk_tema_semana_oracion1_idx` (`id_semana_oracion`),
  CONSTRAINT `fk_tema_semana_oracion1` FOREIGN KEY (`id_semana_oracion`) REFERENCES `semana_oracion` (`id_semana_oracion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (1,'Como Dios lo pide.',1),(2,'Día de fiesta, día de sufrimiento.',1),(3,'¿Plan Divino o capricho humano?.',1),(4,'Amor sin secretos.',1),(5,'Generación de Príncipes.',1),(6,'El costo de una decisión.',1),(7,'Amor que no abandona.',1),(8,'Amor que no lastima.',1),(9,'Amor que transforma.',1),(10,'El poder del amor.',1),(11,'Ahora o quizás nunca.',1),(12,'Triángulo amoroso.',1),(13,'Dios tiene la última palabra.',1),(14,'¿Generación de príncipes o generación de mendigos?',1);
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_turno` varchar(20) DEFAULT NULL,
  `hora_inicio` varchar(10) DEFAULT NULL,
  `hora_fin` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'MAÑANA','9:15 AM','11:00 AM'),(2,'TARDE','04:50 PM','6:00 PM'),(3,'NOCHE','07:30 PM','9:00 PM');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno_responsabilidades`
--

DROP TABLE IF EXISTS `turno_responsabilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno_responsabilidades` (
  `id_turno_responsabilidades` int(11) NOT NULL AUTO_INCREMENT,
  `id_responsabilidad` int(11) NOT NULL,
  `id_dia_turno_tema` int(11) NOT NULL,
  `id_responsable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turno_responsabilidades`),
  KEY `fk_turno_responsabilidades_responsabilidad1_idx` (`id_responsabilidad`),
  KEY `fk_turno_responsabilidades_dia_turno_tema1_idx` (`id_dia_turno_tema`),
  KEY `id_responsable_idx` (`id_responsable`),
  CONSTRAINT `fk_turno_responsabilidades_dia_turno_tema1` FOREIGN KEY (`id_dia_turno_tema`) REFERENCES `dia_turno_tema` (`id_dia_turno_tema`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_turno_responsabilidades_responsabilidad1` FOREIGN KEY (`id_responsabilidad`) REFERENCES `responsabilidad` (`id_responsabilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_responsable` FOREIGN KEY (`id_responsable`) REFERENCES `responsable` (`id_responsable`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno_responsabilidades`
--

LOCK TABLES `turno_responsabilidades` WRITE;
/*!40000 ALTER TABLE `turno_responsabilidades` DISABLE KEYS */;
INSERT INTO `turno_responsabilidades` VALUES (1,1,1,8),(2,2,1,2),(3,3,1,3),(4,4,1,4),(5,5,1,5),(6,6,1,6),(7,7,1,7);
/*!40000 ALTER TABLE `turno_responsabilidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-21 13:28:01
