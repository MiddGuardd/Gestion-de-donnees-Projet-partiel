-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: projet_30_01_23
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chambres_detail`
--

DROP TABLE IF EXISTS `chambres_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chambres_detail` (
  `num_chambre` int NOT NULL,
  `prix_journalier` int NOT NULL,
  `statut` varchar(100) NOT NULL,
  PRIMARY KEY (`num_chambre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambres_detail`
--

LOCK TABLES `chambres_detail` WRITE;
/*!40000 ALTER TABLE `chambres_detail` DISABLE KEYS */;
INSERT INTO `chambres_detail` VALUES (101,65,'libre'),(110,65,'occupée'),(201,75,'occupée'),(202,75,'reservée'),(303,100,'reservée'),(307,100,'libre'),(309,100,'occupée');
/*!40000 ALTER TABLE `chambres_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chambres_global`
--

DROP TABLE IF EXISTS `chambres_global`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chambres_global` (
  `nb_chambres_total` int NOT NULL DEFAULT '30',
  `nb_chambres_dispo` int NOT NULL,
  `nb_chambres_occupees` int NOT NULL,
  `nb_chambres_reservees` int NOT NULL,
  `num_chambre` int NOT NULL,
  PRIMARY KEY (`num_chambre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chambres_global`
--

LOCK TABLES `chambres_global` WRITE;
/*!40000 ALTER TABLE `chambres_global` DISABLE KEYS */;
INSERT INTO `chambres_global` VALUES (30,12,10,8,101),(30,12,10,8,110),(30,12,10,8,201),(30,12,10,8,202),(30,12,10,8,303),(30,12,10,8,309);
/*!40000 ALTER TABLE `chambres_global` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `num_chambre` int NOT NULL,
  `duree_sejour` int NOT NULL,
  `date_arrivee` date NOT NULL,
  `date_depart` date NOT NULL,
  `cout_sejour` int NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'DOE','John',110,10,'2023-01-20','2023-01-30',650),(2,'DOE','Marie',110,10,'2023-01-20','2023-01-30',650),(3,'BERNARD','BIANCA',303,2,'2023-03-15','2023-03-17',200),(4,'DUCHAMPS','Julie',201,5,'2023-01-17','2023-01-22',375),(5,'JACKSON','Michael',310,15,'2023-02-03','2023-02-18',1500),(6,'BRUEL','Patrick',202,1,'2023-01-29','2023-01-29',75);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employes`
--

DROP TABLE IF EXISTS `employes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employes` (
  `id_employe` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom_poste` varchar(100) NOT NULL,
  `salaire` int NOT NULL,
  `date_embauche` date NOT NULL,
  PRIMARY KEY (`id_employe`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employes`
--

LOCK TABLES `employes` WRITE;
/*!40000 ALTER TABLE `employes` DISABLE KEYS */;
INSERT INTO `employes` VALUES (1,'CANU','Vincent','directeur d\'hôtel',35000,'2020-01-20'),(2,'ETCHEBEST','Philippe','directeur de restaurant',27600,'2021-11-14'),(3,'SARDOU','Michel','barman',20400,'2020-02-12'),(4,'DARROZE','Hélène','cuisinière',21000,'2020-02-12'),(5,'DION','Céline','employée de restaurant',20400,'2022-12-10'),(6,'POTTER','Harry','valet de chambre',20400,'2021-04-09'),(7,'STARK','Arya','serveuse',18000,'2023-01-01'),(8,'NICO','Robin','gérante de restauration collective',23000,'2020-12-15'),(9,'VARTAN','Sylvie','gouvernante',24000,'2021-07-24'),(10,'LAROCHE','Michel','maître d\'hôtel',20400,'2022-06-30'),(11,'COLIN','Jules','pâtissier',22000,'2020-01-20'),(12,'KING','Stephen','receptionniste',21000,'2022-08-08'),(13,'WILLS','Adrien','somelier',20400,'2021-05-16');
/*!40000 ALTER TABLE `employes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `nom_hotel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code_postal` int NOT NULL DEFAULT '92240',
  `nb_chambres_dispo` int NOT NULL DEFAULT '30',
  `revenus` int NOT NULL,
  `depenses` int NOT NULL,
  PRIMARY KEY (`nom_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES ('BDD Hôtel',92240,12,400000,285000);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localisation`
--

DROP TABLE IF EXISTS `localisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localisation` (
  `nom_ville` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nom_departement` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code_postal` int NOT NULL,
  `nom_pays` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`code_postal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localisation`
--

LOCK TABLES `localisation` WRITE;
/*!40000 ALTER TABLE `localisation` DISABLE KEYS */;
INSERT INTO `localisation` VALUES ('Malakoff','Ile de France',92240,'France');
/*!40000 ALTER TABLE `localisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'projet_30_01_23'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-21 16:43:12
