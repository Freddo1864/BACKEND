-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: achat_voiture
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `caracteristiques`
--

DROP TABLE IF EXISTS `caracteristiques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristiques` (
  `id_caracteristique` int(11) NOT NULL,
  `transmission` varchar(50) DEFAULT NULL,
  `carburant` varchar(50) DEFAULT NULL,
  `puissance` varchar(50) DEFAULT NULL,
  `vitesse` int(11) DEFAULT NULL,
  `cylindre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_caracteristique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristiques`
--

LOCK TABLES `caracteristiques` WRITE;
/*!40000 ALTER TABLE `caracteristiques` DISABLE KEYS */;
INSERT INTO `caracteristiques` VALUES (1,'manuelle','essence','98',5,4),(2,'manuelle','essence','105',5,4),(3,'manuelle','essence','204',6,6),(4,'manuelle','essence','90',5,4),(5,'automatique','diesel','150',5,6),(6,'manuelle','essence','204',6,6),(7,'manuelle','essence','105',5,4),(8,'manuelle','essence','204',6,6),(9,'manuelle','essence','125',5,4),(10,'manuelle','diesel','50',5,4);
/*!40000 ALTER TABLE `caracteristiques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donnees_de_base`
--

DROP TABLE IF EXISTS `donnees_de_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donnees_de_base` (
  `id_donnee` int(11) NOT NULL,
  `carrosserie` varchar(50) DEFAULT NULL,
  `etat` varchar(50) DEFAULT NULL,
  `type_moteur` varchar(50) DEFAULT NULL,
  `portes` int(11) DEFAULT NULL,
  `version_pays` varchar(50) DEFAULT NULL,
  `num_annonce` int(11) DEFAULT NULL,
  `siege` int(11) DEFAULT NULL,
  `garantie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_donnee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donnees_de_base`
--

LOCK TABLES `donnees_de_base` WRITE;
/*!40000 ALTER TABLE `donnees_de_base` DISABLE KEYS */;
INSERT INTO `donnees_de_base` VALUES (1,'cabriolet','occasion','avant',3,'france',123456,4,'3 mois'),(2,'berline','occasion','avant',5,'france',521476,5,'6 mois'),(3,'berline','occasion','avant',3,'allemagne',287642,5,'12 mois'),(4,'berline','neuve','avant',3,'espagne',275645,5,'6 mois'),(5,'berline','occasion','avant',5,'belgique',461812,5,'6 mois'),(6,'break','occasion','avant',5,'france',468513,5,'3 mois'),(7,'cabriolet','neuve','avant',5,'allemagne',362187,4,'12 mois'),(8,'berline','occasion','avant',3,'espagne',279513,4,'6 mois'),(9,'break','occasion','avant',3,'italie',216975,5,'3 mois'),(10,'coupe','occasion','avant',3,'france',468427,2,'3 mois');
/*!40000 ALTER TABLE `donnees_de_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historique_vehicule`
--

DROP TABLE IF EXISTS `historique_vehicule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historique_vehicule` (
  `id_historique` int(11) NOT NULL,
  `kilometrage` int(11) DEFAULT NULL,
  `annee` varchar(50) DEFAULT NULL,
  `controle_technique` int(11) DEFAULT NULL,
  `nbre_proprietaire` int(11) DEFAULT NULL,
  `carnet_entretien` varchar(50) DEFAULT NULL,
  `vehicule_fumeur` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_historique`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historique_vehicule`
--

LOCK TABLES `historique_vehicule` WRITE;
/*!40000 ALTER TABLE `historique_vehicule` DISABLE KEYS */;
INSERT INTO `historique_vehicule` VALUES (1,231333,'2000',2000,3,'oui','non'),(2,153120,'1999',1997,2,'oui','oui'),(3,22045,'2012',2011,1,'non','oui'),(4,178000,'1999',1998,3,'oui','oui'),(5,101150,'2011',2011,2,'oui','non'),(6,220000,'2017',2016,1,'oui','non'),(7,105214,'2016',2014,3,'non','oui'),(8,171000,'2018',2017,2,'oui','oui'),(9,26000,'2020',2020,1,'oui','non'),(10,193450,'2019',2016,2,'oui','non'),(11,34120,'2020',2020,1,'oui','non'),(12,12050,'2022',2021,1,'oui','non');
/*!40000 ALTER TABLE `historique_vehicule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id_image` int(11) NOT NULL AUTO_INCREMENT,
  `nom_image` varchar(100) DEFAULT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `id_voiture` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  KEY `id_voiture` (`id_voiture`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_voiture`) REFERENCES `voitures` (`id_voiture`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'volkswagen_sirocco','https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/VW_Scirocco_III_R_Risingblue.JPG/270px-VW_Scirocco_III_R_Risingblue.JPG',1),(2,'audi_a3','https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Audi_A3_Sportback_front_20080809.jpg/294px-Audi_A3_Sportback_front_20080809.jpg',2),(3,'volkswagen_passat','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/6th-Volkswagen-Passat.jpg/280px-6th-Volkswagen-Passat.jpg',5),(4,'seat_toledo','https://upload.wikimedia.org/wikipedia/commons/5/5a/Seat_Toledo_1.4_TSI_Style_Salsa_%28IV%29_%E2%80%93_Frontansicht%2C_1._September_2013%2C_M%C3%BCnster.jpg',4),(5,'volkswagen_tiguan','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Volkswagen_Tiguan_Allspace_FL_IMG_5741.jpg/220px-Volkswagen_Tiguan_Allspace_FL_IMG_5741.jpg',3),(6,'volkswagen_lupo','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Car_VW_Lupo_2_wikipedia.JPG/1024px-Car_VW_Lupo_2_wikipedia.JPG',6),(7,'seat_leon','https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/SEAT_Leon_Mk4_IMG_3445.jpg/1200px-SEAT_Leon_Mk4_IMG_3445.jpg',7),(8,'volkswagen_golf','https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/VW_Golf_I_Facelift_front_20081209.jpg/289px-VW_Golf_I_Facelift_front_20081209.jpg',8),(9,'volkswagen_polo','https://upload.wikimedia.org/wikipedia/commons/9/91/VW_Polo_beats_%28VI%29_%E2%80%93_f_03032019_%28exposure_adjusted%29.jpg',9),(10,'audi_a1','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Audi_A1_35_TFSI_S_line_%28II%29_%E2%80%93_f_22092019.jpg/640px-Audi_A1_35_TFSI_S_line_%28II%29_%E2%80%93_f_22092019.jpg',10),(11,'seat_ibiza','https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Seat_Ibiza_FR_%281%29_%E2%80%93_IAA_2017_%E2%80%93_by_Nicolas_V%C3%B6lcker.jpg/2560px-Seat_Ibiza_FR_%281%29_%E2%80%93_IAA_2017_%E2%80%93_by_Nicolas_V%C3%B6lcker.jpg',11),(12,'seat_ateca','https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Seat_IBe_%28front_quarter%29.jpg/220px-Seat_IBe_%28front_quarter%29.jpg',12),(13,'audi_q3','https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Audi_RS_Q3_F3_IMG_2071.jpg/1280px-Audi_RS_Q3_F3_IMG_2071.jpg',13),(14,'audi_tt','https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Audi_TTS_Glutorange.JPG/280px-Audi_TTS_Glutorange.JPG',14);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infos_supplementaires`
--

DROP TABLE IF EXISTS `infos_supplementaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infos_supplementaires` (
  `id_info` int(11) NOT NULL,
  `couleur_exterieure` varchar(50) DEFAULT NULL,
  `type_peinture` varchar(50) DEFAULT NULL,
  `couleur_interieure` varchar(50) DEFAULT NULL,
  `garniture` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infos_supplementaires`
--

LOCK TABLES `infos_supplementaires` WRITE;
/*!40000 ALTER TABLE `infos_supplementaires` DISABLE KEYS */;
INSERT INTO `infos_supplementaires` VALUES (1,'noire','mat','beige','tissu'),(2,'gris','metallise','gris','tissu'),(3,'gris','metallise','noir','cuir'),(4,'rouge','mat','noir','tissu'),(5,'noire','mat','gris','tissu'),(6,'bleu','metallise','gris','cuir'),(7,'gris','mat','blanc','cuir'),(8,'rouge','metallise','beige','tissu'),(9,'noire','metallise','rouge','cuir'),(10,'blanc','mat','blanc','tissu'),(11,'orange','mat','noir','tissu'),(12,'vert','mat','noir','tissu'),(13,'marron','mat','beige','tissu'),(14,'jaune','metallise','blanc','cuir');
/*!40000 ALTER TABLE `infos_supplementaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeles`
--

DROP TABLE IF EXISTS `modeles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modeles` (
  `id_modele` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_modele`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeles`
--

LOCK TABLES `modeles` WRITE;
/*!40000 ALTER TABLE `modeles` DISABLE KEYS */;
INSERT INTO `modeles` VALUES (1,'sirocco'),(2,'a3'),(3,'passat'),(4,'toledo'),(5,'tiguan'),(6,'lupo'),(7,'leon'),(8,'golf'),(9,'polo'),(10,'a1'),(11,'ibiza'),(12,'ateca'),(13,'Q3'),(14,'TT');
/*!40000 ALTER TABLE `modeles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prix`
--

DROP TABLE IF EXISTS `prix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prix` (
  `id_prix` int(11) NOT NULL,
  `prix` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prix`
--

LOCK TABLES `prix` WRITE;
/*!40000 ALTER TABLE `prix` DISABLE KEYS */;
INSERT INTO `prix` VALUES (1,24900),(2,1290),(3,14150),(4,4000),(5,2900),(6,10500),(7,6500),(8,8000),(9,4500),(10,990),(11,35000),(12,28750);
/*!40000 ALTER TABLE `prix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id_type` int(11) NOT NULL,
  `definition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'GLI Sportline'),(2,'1.6i Confort'),(3,'V6 4Motion'),(4,'1.8 GL'),(5,'2.5 V6 TDI Confort A'),(6,'2.8i V6 4Motion'),(7,'1.6'),(8,'V8 4Motion'),(9,'1.6 gti'),(10,'1.9 TDI GTI');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendeurs`
--

DROP TABLE IF EXISTS `vendeurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendeurs` (
  `id_vendeur` int(11) NOT NULL,
  `nom_vendeur` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `num_tel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_vendeur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendeurs`
--

LOCK TABLES `vendeurs` WRITE;
/*!40000 ALTER TABLE `vendeurs` DISABLE KEYS */;
INSERT INTO `vendeurs` VALUES (1,'car jager','pro','2 place Jeanne d\'Arc',13100,'aix en provence','carjager@gmail.com','01-76-24-17-50'),(2,'auto alfort','pro','12 rue Charles Martigny',94700,'maison-alfort','autoalfort@outlook.fr','06-95-04-54-23'),(3,'dupont','particulier','5 rue de la grangerie',66200,'rivesaltes','dupont.greg@gmail.com','06-02-37-69-47'),(4,'durand','particulier','124 rue du vivier',59114,'eecke','durand.albert@orange.fr','06-04-43-77-47'),(5,'palace auto','pro','100 Bd F??lix Faure',93300,'aubervilliers','palace.auto@sfr.fr','06-20-51-45-17'),(6,'delta motors','pro','154 rue de la mode',59000,'lille','deltamotors@gmail.com','04-84-75-95-95'),(7,'peon','particulier','12 rue du general vandenberg',6160,'antibes','peon.louis@orange.fr','06-33-62-87-77'),(8,'louis','particulier','45 rue faidherbe',59120,'loos','louisgrenier@sfr.fr','06-15-75-94-25'),(9,'nickelcar83','pro','26 rue sainte victoire',83470,'saint-maximin','nickelcar@free.fr','06-50-84-60-52'),(10,'sarl autodem','pro','514 rue des fleurs',14123,'fleury sur orne','autodem@gmail.com','02-31-83-31-51');
/*!40000 ALTER TABLE `vendeurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voitures`
--

DROP TABLE IF EXISTS `voitures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voitures` (
  `id_voiture` int(11) NOT NULL,
  `nom_voiture` varchar(50) DEFAULT NULL,
  `id_vendeur` int(11) NOT NULL,
  `id_donnee` int(11) NOT NULL,
  `id_historique` int(11) NOT NULL,
  `id_caracteristique` int(11) NOT NULL,
  `id_info` int(11) NOT NULL,
  `id_prix` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_modele` int(11) NOT NULL,
  PRIMARY KEY (`id_voiture`),
  KEY `id_vendeur` (`id_vendeur`),
  KEY `id_donnee` (`id_donnee`),
  KEY `id_historique` (`id_historique`),
  KEY `id_caracteristique` (`id_caracteristique`),
  KEY `id_info` (`id_info`),
  KEY `id_prix` (`id_prix`),
  KEY `id_type` (`id_type`),
  KEY `id_modele` (`id_modele`),
  CONSTRAINT `voitures_ibfk_1` FOREIGN KEY (`id_vendeur`) REFERENCES `vendeurs` (`id_vendeur`),
  CONSTRAINT `voitures_ibfk_2` FOREIGN KEY (`id_donnee`) REFERENCES `donnees_de_base` (`id_donnee`),
  CONSTRAINT `voitures_ibfk_3` FOREIGN KEY (`id_historique`) REFERENCES `historique_vehicule` (`id_historique`),
  CONSTRAINT `voitures_ibfk_4` FOREIGN KEY (`id_caracteristique`) REFERENCES `caracteristiques` (`id_caracteristique`),
  CONSTRAINT `voitures_ibfk_5` FOREIGN KEY (`id_info`) REFERENCES `infos_supplementaires` (`id_info`),
  CONSTRAINT `voitures_ibfk_6` FOREIGN KEY (`id_prix`) REFERENCES `prix` (`id_prix`),
  CONSTRAINT `voitures_ibfk_7` FOREIGN KEY (`id_type`) REFERENCES `types` (`id_type`),
  CONSTRAINT `voitures_ibfk_8` FOREIGN KEY (`id_modele`) REFERENCES `modeles` (`id_modele`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voitures`
--

LOCK TABLES `voitures` WRITE;
/*!40000 ALTER TABLE `voitures` DISABLE KEYS */;
INSERT INTO `voitures` VALUES (1,'volkswagen',1,5,4,4,6,5,3,1),(2,'audi',5,6,8,6,2,1,8,2),(3,'volkswagen',7,1,10,1,9,8,4,5),(4,'seat',3,2,3,2,5,6,7,4),(5,'volkswagen',10,8,6,9,3,7,10,3),(6,'volkswagen',2,3,9,3,12,3,2,6),(7,'seat',9,7,2,5,8,2,7,7),(8,'volkswagen',6,4,1,7,13,4,1,8),(9,'volkswagen',4,9,5,8,2,10,5,9),(10,'audi',8,10,7,10,14,9,6,10),(11,'seat',10,5,4,5,4,1,5,11),(12,'seat',4,7,3,3,8,6,8,12),(13,'audi',9,9,11,3,4,12,6,13),(14,'audi',5,1,12,6,11,11,8,14);
/*!40000 ALTER TABLE `voitures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'achat_voiture'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-13 15:08:03
