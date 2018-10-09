-- MySQL dump 10.16  Distrib 10.3.9-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: villagegreen
-- ------------------------------------------------------
-- Server version	10.3.9-MariaDB

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
-- Current Database: `villagegreen`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `villagegreen` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `villagegreen`;

--
-- Table structure for table `Produit`
--

DROP TABLE IF EXISTS `Produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produit` (
  `produit_id` int(11) NOT NULL AUTO_INCREMENT,
  `produit_nomcourt` char(50) NOT NULL,
  `produit_nom` varchar(255) NOT NULL,
  `produit_photo` varchar(255) NOT NULL,
  `produit_qtite` int(11) NOT NULL,
  `produit_prixHT` decimal(7,2) NOT NULL,
  `produit_qtiteale` int(11) NOT NULL,
  `produit_sousrub_id` int(11) NOT NULL,
  PRIMARY KEY (`produit_id`),
  KEY `produit_sousrub_id` (`produit_sousrub_id`),
  CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`produit_sousrub_id`) REFERENCES `sous_rubrique` (`sousrub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produit`
--

LOCK TABLES `Produit` WRITE;
/*!40000 ALTER TABLE `Produit` DISABLE KEYS */;
INSERT INTO `Produit` VALUES (1,'C40BL','Yamaha - Guitare Classique C40BL Noir','../images/default_guit.jpg',5,130.00,2,20),(2,'SG2019','GIBSON SG Standard Tribute 2019 - vintage cherry satin','../images/default_guit.jpg',6,856.00,2,18),(3,'AE44II','APPLAUSE AE44II Mid Cutaway - natural','../images/default_guit.jpg',3,270.00,2,19),(4,'AQUI1854','AQUILINA Shelby 4 Custom (#01854) - natural','../images/default_guit.jpg',3,3200.00,2,15),(5,'CORTSJB6FX','CORT SJB6FX Fretless NAT +bag - natural','../images/default_guit.jpg',5,740.00,2,16),(6,'FLPROU2','Flyht Pro Case Uni­versal 2 / 120cm','../images/default_guit.jpg',3,200.00,2,14),(7,'AS50DC','MARSHALL AS50DC Acoustic - Racing Green','../images/default_guit.jpg',2,290.00,2,21),(8,'FENDRS800','FENDER Rumble Stage 800','../images/default_guit.jpg',8,800.00,2,22),(9,'BEYTGV35D','BEYERDYNAMIC TG V35d s Mic Set Pack micro avec pied','../images/default_guit.jpg',4,60.00,2,23),(10,'MIXSQ7','ALLEN AND HEATH SQ-7 table de mixage','../images/default_guit.jpg',2,4000.00,2,24),(11,'PEXL725PC','PEARLEXL725PC-248 black Smoke','../images/default_guit.jpg',2,500.00,2,1),(12,'PMMCR22','Pearl Master maple complete Rock 22\" satin natural burst','../images/default_guit.jpg',2,1200.00,2,2),(13,'PEF20-B','Pearl Export fusion 20\" High Voltage Blue','../images/default_guit.jpg',2,700.00,2,3),(14,'PDMP4FJ18-Y','Pearl DMP 4F JAZZ 18\" solid yellow','../images/default_guit.jpg',2,900.00,2,4),(15,'PRJ18-R','Pearl roadshow junior 18\" red wine','../images/default_guit.jpg',2,390.00,2,5),(16,'GBE-BASS','GATOR GBE-BASS','../images/default_guit.jpg',2,23.00,2,13),(17,'GBE-GUIT','GATOR GBE-GUIT','../images/default_guit.jpg',3,20.00,2,13),(18,'MR500C','IBANEZ MR500C Road Tour Electric Guitar Case','../images/default_guit.jpg',3,150.00,2,17),(19,'PRJ18-B','Pearl roadshow junior 18 pouces jet black','../images/default_guit.jpg',2,367.00,2,6),(20,'EM-54T','Pearl Pearl e/Merge e/Traditional','../images/default_guit.jpg',2,3000.00,2,7),(21,'PCF-DL10','Ebs Câble de patch guitare 10 cm','../images/default_guit.jpg',2,3.00,2,8),(22,'EB-6048','Ernie Ball Cables instrument classic jack/jack 3m noir','../images/default_guit.jpg',5,17.00,2,9),(23,'CCM20FM','Cordial Câble micro XLR 20 m','../images/default_guit.jpg',5,18.00,2,10);
/*!40000 ALTER TABLE `Produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appro`
--

DROP TABLE IF EXISTS `appro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appro` (
  `appro_fournisseur_id` int(11) NOT NULL,
  `appro_produit_id` int(11) NOT NULL,
  `appro_prixachat` decimal(7,2) NOT NULL,
  `appro_datecom` date NOT NULL,
  `appro_datelivr` date NOT NULL,
  `appro_qtite` int(11) NOT NULL,
  `appro_id` int(11) NOT NULL,
  PRIMARY KEY (`appro_id`),
  KEY `appro_fournisseur_id` (`appro_fournisseur_id`),
  KEY `appro_produit_id` (`appro_produit_id`),
  CONSTRAINT `appro_ibfk_1` FOREIGN KEY (`appro_fournisseur_id`) REFERENCES `fournisseur` (`fournisseur_id`),
  CONSTRAINT `appro_ibfk_2` FOREIGN KEY (`appro_produit_id`) REFERENCES `produit` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appro`
--

LOCK TABLES `appro` WRITE;
/*!40000 ALTER TABLE `appro` DISABLE KEYS */;
INSERT INTO `appro` VALUES (5,3,200.00,'0000-00-00','2018-05-23',2,1),(6,4,2800.00,'0000-00-00','2018-06-26',2,2),(7,5,600.00,'0000-00-00','2018-07-09',2,3),(8,6,100.00,'0000-00-00','2018-08-22',2,4),(9,7,200.00,'0000-00-00','2018-09-09',2,5);
/*!40000 ALTER TABLE `appro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_nom` varchar(50) NOT NULL,
  `client_prenom` varchar(50) NOT NULL,
  `client_rue` varchar(50) NOT NULL,
  `client_ville` varchar(50) NOT NULL,
  `client_codepo` char(5) NOT NULL,
  `client_telephone` char(14) NOT NULL,
  `client_mail` varchar(50) NOT NULL,
  `client_type` varchar(3) NOT NULL,
  `client_siret` char(15) DEFAULT NULL,
  `client_commerciaux_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'George','Nolan','CP 214, 1460 Dui Avenue','Moerkerke','81313','01 29 81 29 27','et.ultrices.posuere@pharetranibh.ca','par',NULL,1),(2,'Sandoval','Linda','Appartement 443-4185 Lacinia. Route','Torgnon','12512','03 45 29 89 67','Proin.dolor@sodales.net','par',NULL,2),(3,'Johns','Judah','478-741 Urna. Av.','Baarle-Hertog','68356','01 47 64 91 62','nibh.Phasellus.nulla@veliteu.co.uk','pro','979188216-00001',3),(4,'Sweeney','Calista','CP 938, 319 A Av.','Wismar','65254','03 70 19 20 26','ornare@amet.ca','pro','236741799-00001',4),(5,'Pittman','Bianca','Appartement 680-4357 Eu Impasse','Yumbel','80081','04 32 28 83 80','sit@aliquamenimnec.org','pro','334401775-00005',5),(6,'Myers','Mikayla','9429 Non Route','Lafayette','27251','09 81 66 04 86','urna@malesuadaid.net','pro','605336924-00002',6),(7,'Mcintosh','Desirae','8227 Risus Rue','Jaunpur','84392','08 32 00 38 60','nulla.ante@sed.co.uk','par',NULL,7),(8,'Nicholson','Zeus','3193 Aliquam Ave','Tubeke Tubize','38742','02 90 59 95 10','Sed.eget@lacusUt.net','pro','811978493-00005',8),(9,'Brock','Kaseem','Appartement 615-1490 Integer Av.','Fleurus','85736','02 87 17 50 58','Donec.sollicitudin.adipiscing@vulputaterisusa.com','pro','553039645-00005',9),(10,'Whitfield','Yoshio','577-7165 Cras Route','Geertruidenberg','40939','04 70 87 00 53','vel.mauris.Integer@gravidamauris.net','par',NULL,10),(11,'Maldonado','Barbara','556-6930 Amet, Route','Sauvenière','85217','09 38 68 12 56','facilisis.facilisis@nuncestmollis.edu','pro','708808084-00006',1),(12,'Raymond','Dean','7882 Luctus Rue','Lonquimay','45354','07 97 96 55 59','cursus@odioEtiam.edu','pro','263853525-00008',2),(13,'Mcdonald','Colt','Appartement 911-1540 Augue, Av.','Flint','84769','03 57 86 21 66','quis.accumsan.convallis@nasceturridiculusmus.edu','par',NULL,3),(14,'Woodward','William','CP 394, 7305 Risus. Route','Lunel','68624','05 90 65 53 06','posuere.at@sit.net','par',NULL,4),(15,'Holder','Lareina','Appartement 473-4026 Est, Impasse','Koekelberg','62629','02 39 94 72 66','velit@nonummyac.co.uk','pro','051830867-00001',5),(16,'Gilmore','Len','226-6532 Convallis Avenue','Bhilai','62534','04 47 43 48 14','quis.diam.luctus@lectus.com','par',NULL,6),(17,'Stanley','Merritt','413-5832 Curae; Chemin','Muridke','51840','02 61 19 52 74','Cras@sagittisDuis.org','par',NULL,7),(18,'Sloan','Cain','3831 Eu Route','Portland','29059','05 76 83 78 57','arcu@egestas.net','par',NULL,8),(19,'Davidson','Rana','Appartement 913-1930 Senectus Av.','Camaragibe','38402','07 56 06 71 04','faucibus.Morbi@Quisque.com','par',NULL,9),(20,'Oneill','Nasim','9969 Aliquet Route','Coevorden','40616','06 13 28 09 27','urna.justo@at.co.uk','par','307846188-00000',10),(21,'Kelley','Kelsie','Appartement 760-3173 Ullamcorper. Chemin','Sioux City','87015','04 15 43 21 10','sociis@egestas.com','par',NULL,1),(22,'Faulkner','Megan','Appartement 691-6161 Non Rue','Jacksonville','94276','08 79 89 35 23','ac@erosnectellus.co.uk','pro','030486161-00000',2),(23,'Cruz','Harlan','590-7854 Scelerisque Ave','Prenzlau','63124','02 73 87 89 86','a.felis.ullamcorper@Fuscediam.co.uk','pro','814796157-00000',3),(24,'Espinoza','Anthony','175-1542 Curabitur Avenue','Yellowknife','53786','03 39 83 21 39','ut.quam@ridiculusmusAenean.edu','pro','466494945-00002',4),(25,'Dickson','Rosalyn','7975 Mauris Av.','Darwin','62818','03 45 04 22 82','nunc@enim.org','par',NULL,5),(26,'Simon','Uriah','Appartement 699-5400 Proin Impasse','Saint-Léger','06939','05 88 17 45 96','volutpat.nunc.sit@in.net','pro','848415915-00000',6),(27,'Galloway','Colin','Appartement 328-4775 Donec Route','Castelvecchio Calvisio','30521','05 97 17 24 17','ante@nequevitae.org','par',NULL,7),(28,'Gomez','Keaton','Appartement 277-2174 Aenean Route','Redwater','67174','09 34 86 65 54','volutpat@erat.net','pro','672184264-00006',8),(29,'Roach','Illiana','CP 502, 9629 Ultricies Av.','Pettineo','51027','07 33 45 03 46','convallis.est@magnamalesuada.net','pro','881935886-00005',9),(30,'Hyde','Simon','CP 476, 8686 Aliquam Rd.','Buckley','07660','08 81 75 69 65','id.enim@odio.edu','pro','581207537-00001',10);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `commande_id` int(11) NOT NULL AUTO_INCREMENT,
  `commande_date` datetime NOT NULL,
  `commande_reduc` decimal(3,2) NOT NULL,
  `commande_prixtot` decimal(7,2) NOT NULL,
  `commande_datereglem` date NOT NULL,
  `commande_date_facture` date NOT NULL,
  `commande_livraison_rue` varchar(50) NOT NULL,
  `commande_livraison_ville` varchar(50) NOT NULL,
  `commande_livraison_codepo` char(5) NOT NULL,
  `commande_facturation_rue` varchar(50) NOT NULL,
  `commande_facturation_ville` varchar(50) NOT NULL,
  `commande_facturation_codepo` char(5) NOT NULL,
  `commande_client_id` int(11) NOT NULL,
  PRIMARY KEY (`commande_id`),
  KEY `commande_client_id` (`commande_client_id`),
  CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`commande_client_id`) REFERENCES `client` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,'2018-01-15 00:00:00',0.10,4270.00,'2018-01-15','2018-01-15','10 rue des corbak','AMIENS','80000','10 rue des corbak','AMIENS','80000',10),(2,'2018-03-18 00:00:00',0.20,6400.00,'2018-01-15','2018-01-15','7882 Luctus Rue','Lonquimay','45354','7882 Luctus Rue','Lonquimay','45354',12),(3,'2018-05-21 00:00:00',0.30,2200.00,'2018-01-15','2018-01-15','CP 394, 7305 Risus. Route','Lunel','68624','CP 394, 7305 Risus. Route','Lunel','68624',14),(4,'2018-07-24 00:00:00',1.00,800.00,'2018-01-15','2018-01-15','226-6532 Convallis Avenue','Bhilai','62534','226-6532 Convallis Avenue','Bhilai','62534',16),(5,'2018-09-27 00:00:00',0.50,1450.00,'2018-01-15','2018-01-15','3831 Eu Route','Portland','29059','3831 Eu Route','Portland','29059',18),(6,'2018-11-30 00:00:00',0.60,4800.00,'2018-01-15','2018-01-15','9969 Aliquet Route','Coevorden','40616','9969 Aliquet Route','Coevorden','40616',20),(7,'0000-00-00 00:00:00',0.70,420.00,'2018-01-15','2018-01-15','Appartement 691-6161 Non Rue','Jacksonville','94276','Appartement 691-6161 Non Rue','Jacksonville','94276',22);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commerciaux`
--

DROP TABLE IF EXISTS `commerciaux`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commerciaux` (
  `commerciaux_id` int(11) NOT NULL AUTO_INCREMENT,
  `commerciaux_nom` varchar(50) NOT NULL,
  `commerciaux_prenom` varchar(50) NOT NULL,
  `commerciaux_tel` char(14) NOT NULL,
  `commerciaux_mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`commerciaux_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commerciaux`
--

LOCK TABLES `commerciaux` WRITE;
/*!40000 ALTER TABLE `commerciaux` DISABLE KEYS */;
INSERT INTO `commerciaux` VALUES (1,'Dumont','Rosalie','08 05 47 58 81','dictum@NullamnislMaecenas.net'),(2,'Guerin','Amélie','06 23 11 82 05','Cras.eu@diamnunc.edu'),(3,'Denis','Martin','02 67 41 64 98','Quisque.nonummy.ipsum@fringilla.ca'),(4,'Vasseur','Mohamed','08 56 22 35 22','pede.Praesent.eu@faucibusorciluctus.edu'),(5,'Marty','Sara','08 26 94 72 26','arcu.et.pede@non.com'),(6,'Dufour','Lilian','01 57 13 13 19','ac.mattis@malesuada.org'),(7,'Durand','Corentin','07 97 98 17 72','Morbi@dictum.co.uk'),(8,'Clement','Lutécia','07 06 48 04 45','ac@tinciduntcongue.net'),(9,'Philippe','Mehdi','04 04 93 57 07','eget@urnaNunc.com'),(10,'Dupuis','Valentine','06 72 14 95 83','lectus@egetmollislectus.com');
/*!40000 ALTER TABLE `commerciaux` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contient` (
  `contient_livraison_id` int(11) NOT NULL,
  `contient_produit_id` int(11) NOT NULL,
  `contient_qteliv` int(11) DEFAULT NULL,
  PRIMARY KEY (`contient_livraison_id`,`contient_produit_id`),
  KEY `contient_produit_id` (`contient_produit_id`),
  CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`contient_livraison_id`) REFERENCES `livraison` (`livraison_id`),
  CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`contient_produit_id`) REFERENCES `produit` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contient`
--

LOCK TABLES `contient` WRITE;
/*!40000 ALTER TABLE `contient` DISABLE KEYS */;
INSERT INTO `contient` VALUES (1,3,1),(2,4,1),(3,4,1);
/*!40000 ALTER TABLE `contient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `fournisseur_id` int(11) NOT NULL AUTO_INCREMENT,
  `fournisseur_nom` varchar(50) NOT NULL,
  `fournisseur_rue` varchar(50) NOT NULL,
  `fournisseur_cp` int(11) NOT NULL,
  `fournisseur_ville` varchar(50) NOT NULL,
  `fournisseur_tel` char(10) NOT NULL,
  `fournisseur_nomcontact` varchar(50) NOT NULL,
  `fournisseur_prenomcontact` varchar(50) NOT NULL,
  PRIMARY KEY (`fournisseur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (1,'Amet Orci PC','Appartement 402-3526 Massa Rue',88835,'Cinisi','09 65 12 4','Riddle','Orlando'),(2,'Integer Vulputate Risus Consulting','4509 Libero Chemin',91003,'Mazenzele','07 12 88 7','Harper','Edan'),(3,'Maecenas Malesuada Inc.','Appartement 975-1252 Odio. Impasse',55361,'Washington','07 09 79 4','Dale','Lucius'),(4,'Dictum Mi Ac Inc.','Appartement 245-2355 Auctor, Route',21846,'Vandoeuvre-lès-Nancy','09 04 52 0','Holden','Dorian'),(5,'Eleifend Vitae Industries','Appartement 536-5751 Neque Rue',12959,'San Nicolás','08 04 60 7','Herman','Aurora'),(6,'Nunc Quis Arcu Corporation','491-9263 Aenean Avenue',56602,'Werder','08 30 54 0','Cruz','Alvin'),(7,'A Sollicitudin Consulting','Appartement 142-1903 Libero Rue',23030,'White Rock','02 08 93 3','Santana','Carissa'),(8,'Pede Suspendisse Dui LLC','5319 Vel Impasse',33597,'Conca Casale','04 94 93 1','Weeks','Imogene'),(9,'Ac LLP','985-4900 Nunc Rd.',81603,'Acireale','03 56 76 7','Greene','Kaden'),(10,'Nunc In Associates','CP 707, 7848 Aliquam Rue',23124,'Piancastagnaio','02 97 66 6','Mclaughlin','Porter'),(11,'Ante Maecenas Mi Company','CP 384, 6634 Consequat Ave',61451,'Silvan','03 76 85 2','Potter','Pamela'),(12,'Sodales Elit Associates','CP 258, 5538 Id, Chemin',92254,'Duncan','09 50 74 7','Ramos','Wyatt'),(13,'Ligula LLC','410-7821 Fermentum Avenue',53877,'Rebecq','05 20 62 9','Melton','Kirby'),(14,'Enim Incorporated','CP 335, 9413 Tempor Chemin',46699,'Chittoor','02 49 15 1','Paul','Rae'),(15,'Nisi Sem Foundation','8400 Euismod Av.',40680,'Harelbeke','03 17 66 2','Dudley','Baxter'),(16,'Ut Consulting','2585 Facilisis. Rd.',67963,'Bihar Sharif','05 70 60 7','Pittman','Rigel'),(17,'Sed Pharetra Institute','7928 Neque Ave',58634,'Camerino','07 65 17 4','Wynn','Cameron'),(18,'Consequat Auctor Consulting','321-7248 Sed Rd.',76839,'Rutland','06 28 82 6','Stanton','Garrett'),(19,'Vestibulum Lorem Institute','CP 867, 668 Ornare. Route',85913,'Vance','08 50 01 0','Burris','Raphael'),(20,'In Tincidunt Limited','877-7388 Ornare Av.',32377,'LaSalle','05 61 82 8','Best','Forrest');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livraison`
--

DROP TABLE IF EXISTS `livraison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livraison` (
  `livraison_id` int(11) NOT NULL AUTO_INCREMENT,
  `livraison_num_bon` varchar(50) NOT NULL,
  `livraison_date` date NOT NULL,
  `livraison_commande_id` int(11) NOT NULL,
  PRIMARY KEY (`livraison_id`),
  KEY `livraison_commande_id` (`livraison_commande_id`),
  CONSTRAINT `livraison_ibfk_1` FOREIGN KEY (`livraison_commande_id`) REFERENCES `commande` (`commande_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livraison`
--

LOCK TABLES `livraison` WRITE;
/*!40000 ALTER TABLE `livraison` DISABLE KEYS */;
INSERT INTO `livraison` VALUES (1,'1','2018-01-15',1),(2,'2','2018-01-15',2),(3,'3','2018-01-15',2);
/*!40000 ALTER TABLE `livraison` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubrique`
--

DROP TABLE IF EXISTS `rubrique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubrique` (
  `rubrique_id` int(11) NOT NULL AUTO_INCREMENT,
  `rubrique_nom` varchar(255) NOT NULL,
  `rubrique_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`rubrique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubrique`
--

LOCK TABLES `rubrique` WRITE;
/*!40000 ALTER TABLE `rubrique` DISABLE KEYS */;
INSERT INTO `rubrique` VALUES (1,'batterie','ça tape et ça cogne'),(2,'cables','de la connection'),(3,'cases','des rangements et des rangements'),(4,'guitares','ça gratte'),(5,'studio','pour ceux qui chantes ou pas...'),(6,'claviers','pia pia piano'),(7,'instruments à vent','ça va souffler'),(8,'sono','c\'est qui le DJ');
/*!40000 ALTER TABLE `rubrique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secomposede`
--

DROP TABLE IF EXISTS `secomposede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secomposede` (
  `secomposede_id` int(11) NOT NULL,
  `secomposede_commande_id` int(11) NOT NULL,
  `secomposede_produit_id` int(11) NOT NULL,
  `secomposede_qtitecommande` int(11) NOT NULL,
  `secomposede_prixvente` decimal(7,2) NOT NULL,
  PRIMARY KEY (`secomposede_id`),
  KEY `secomposede_commande_id` (`secomposede_commande_id`),
  KEY `secomposede_produit_id` (`secomposede_produit_id`),
  CONSTRAINT `secomposede_ibfk_1` FOREIGN KEY (`secomposede_commande_id`) REFERENCES `commande` (`commande_id`),
  CONSTRAINT `secomposede_ibfk_2` FOREIGN KEY (`secomposede_produit_id`) REFERENCES `produit` (`produit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secomposede`
--

LOCK TABLES `secomposede` WRITE;
/*!40000 ALTER TABLE `secomposede` DISABLE KEYS */;
INSERT INTO `secomposede` VALUES (1,1,3,1,270.00),(2,2,4,2,3200.00),(3,3,5,3,740.00),(4,4,6,4,200.00),(5,5,7,5,290.00),(6,6,8,6,800.00),(7,7,9,7,60.00),(8,1,10,1,4000.00);
/*!40000 ALTER TABLE `secomposede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sous_rubrique`
--

DROP TABLE IF EXISTS `sous_rubrique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sous_rubrique` (
  `sousrub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sousrub_nom` varchar(120) NOT NULL,
  `sousrub_desc` varchar(500) NOT NULL,
  `sousrub_rubrique_id` int(11) NOT NULL,
  PRIMARY KEY (`sousrub_id`),
  KEY `sousrub_rubrique_id` (`sousrub_rubrique_id`),
  CONSTRAINT `sous_rubrique_ibfk_1` FOREIGN KEY (`sousrub_rubrique_id`) REFERENCES `rubrique` (`rubrique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sous_rubrique`
--

LOCK TABLES `sous_rubrique` WRITE;
/*!40000 ALTER TABLE `sous_rubrique` DISABLE KEYS */;
INSERT INTO `sous_rubrique` VALUES (1,'standard','le grand classique',1),(2,'rock','indémodable',1),(3,'fusion','ça déchire',1),(4,'jazz','le virtuose',1),(5,'junior','le pitchoune',1),(6,'débutant','il faut bien commencer',1),(7,'compacte','y à plus de place',1),(8,'jack court','longueurs < à un mètre',2),(9,'jack','longueurs > à un mètre',2),(10,'cable micro','connectic multi pin pour micros',2),(11,'midi','micros et sonos',2),(12,'mixte','adaptateur et double connectics',2),(13,'housse','housses souples',3),(14,'rigide','plastic ou bois delux',3),(15,'basse electrique','du lourd',4),(16,'basse acoustique','pour les unpluged',4),(17,'étuis rigides','étuis en bois ou plastiqu pour sonos',3),(18,'guitare électrique','les guitares électrique de toutes marques',4),(19,'guitare acoustique','les guitares acoustiques de toutes marques',4),(20,'guitare classique','les guitares classiques de toutes marques',4),(21,'ampli guitare','sonorisation quitare',8),(22,'ampli basse','sonorisation basse',8),(23,'micro','prise de son',5),(24,'mixage','table de mixage',5);
/*!40000 ALTER TABLE `sous_rubrique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suivipar`
--

DROP TABLE IF EXISTS `suivipar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suivipar` (
  `suivipar_client_id` int(11) NOT NULL,
  `suivipar_commerciaux_id` int(11) NOT NULL,
  PRIMARY KEY (`suivipar_client_id`,`suivipar_commerciaux_id`),
  KEY `suivipar_commerciaux_id` (`suivipar_commerciaux_id`),
  CONSTRAINT `suivipar_ibfk_1` FOREIGN KEY (`suivipar_client_id`) REFERENCES `client` (`client_id`),
  CONSTRAINT `suivipar_ibfk_2` FOREIGN KEY (`suivipar_commerciaux_id`) REFERENCES `commerciaux` (`commerciaux_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suivipar`
--

LOCK TABLES `suivipar` WRITE;
/*!40000 ALTER TABLE `suivipar` DISABLE KEYS */;
/*!40000 ALTER TABLE `suivipar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-08 16:59:32
