-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: monoshop
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (33,'Fred','fred@admin.com','fr1808ed');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prix` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'https://www.kindpng.com/picc/m/455-4552467_2017-e43-amg-sedan-mercedes-amg-e-63.png','Mercedes AMG E 63S',145000,'Une AMG avec un design dynamique.\r\n\r\nJamais une Classe E Berline n&#039;avait ??t?? aussi clairement configur??e pour offrir une dynamique de marche ??lev??e. La Mercedes-AMG E 63 S 4MATIC+ Berline affiche clairement son appartenance ?? la famille AMG. '),(2,'https://www.bmw.fr/content/dam/bmw/common/all-models/m-series/m8-gran-coupe/2022/navigation/bmw-m8-competition-gran-coupe-modelfinder.png','BMW S??rie 8',137000,'Les BMW S??rie 8 se distinguent par une affirmation m??me du luxe sportif et d&#039;un accomplissement technique. Elles int??grent avec caract??re, la famille des mod??les de luxe BMW, au design contemporain et abouti.'),(3,'https://porsche.cz/microsite/mission-e/a/files.porsche.com/microsite/mission-e/assets/images/share/01.jpg','Porsche Mission E',206000,'Une voiture de sport qui ne consomme pas la moindre goutte d???essence, mais qui peut parcourir 500 kilom??tres en toute autonomie, tout en offrant des performances remarquables. Bienvenue dans le futur avec le concept de voiture ??lectrique Mission E'),(4,'https://www.pngarts.com/files/8/Ferrari-F8-Tributo-Transparent-Images.png','Ferrari F8 Triturbo',327800,'Le r??sultat est une Ferrari F8 Tributo qui repr??sente l???une des supercars les plus rapide, palpitante et communicative. La nouvelle voiture remplace la 488 GTB, avec des am??liorations ?? tous les niveaux, offrant ?? la fois un meilleur contr??le durant la conduite aux limites et un plus haut niveau de confort ?? bord.'),(5,'data:image/jpeg;base64,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','Mustang',47500,'Avec son moteur GT V8 5.0, la Ford Mustang offre une vitesse de pointe de 249km/h et atteint 0-100km/h en 4,8 secondes. D??couvrez la Ford Mustang V8 5L.'),(6,'https://img.classistatic.de/api/v1/mo-prod/images/42/42195ab5-8cd8-4298-b672-ac484948ae45?rule=mo-1024.jpg','Fiat Punto',400,'La Fiat Punto est un mod??le automobile du constructeur italien Fiat fabriqu?? de 1993 ?? 1999.');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'monoshop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20 12:35:50
