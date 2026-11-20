-- xampp-lite https://sourceforge.net/projects/xampplite/
--
-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: bd2025sp
-- ------------------------------------------------------
-- Server version 	5.5.5-10.4.8-MariaDB
-- Date: Fri, 15 May 2026 20:15:45 +0200

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
-- Table structure for table `document`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `idDoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nomDoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateCreation` datetime NOT NULL,
  PRIMARY KEY (`idDoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`idDoc`, `nomDoc`, `dateCreation`) VALUES ('D0001','Liste employés.pdf','2025-02-15 09:14:39');
INSERT INTO `document` (`idDoc`, `nomDoc`, `dateCreation`) VALUES ('D0002','Demande de congés.docx','2021-10-09 08:10:09');
INSERT INTO `document` (`idDoc`, `nomDoc`, `dateCreation`) VALUES ('D0003','Réclamation ouvriers.docx','2022-02-07 11:00:29');
INSERT INTO `document` (`idDoc`, `nomDoc`, `dateCreation`) VALUES ('D0004','Statistiques2024.xlsx','2025-01-31 07:00:20');

-- Dumped table `document` with 4 row(s)
--

--
-- Table structure for table `droit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `droit` (
  `idDoc` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `idUtil` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ecriture` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `lecture` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `impression` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idUtil`,`idDoc`),
  KEY `idDoc` (`idDoc`),
  CONSTRAINT `droit_ibfk_1` FOREIGN KEY (`idDoc`) REFERENCES `document` (`idDoc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `droit_ibfk_2` FOREIGN KEY (`idUtil`) REFERENCES `utilisateur` (`idUtil`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `droit`
--


-- Dumped table `droit` with 0 row(s)
--

--
-- Table structure for table `utilisateur`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur` (
  `idUtil` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `nomPrenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idUtil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES ('U001','Ali GAFSI');
INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES ('U002','Mohamed SOUSSI');
INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES ('U003','Karima TOUNSI');
INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES ('U004','Kamel SFAXI');
INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES ('U005','Houda JANDOUBI');
INSERT INTO `utilisateur` (`idUtil`, `nomPrenom`) VALUES ('U006','Taoufik BEJI');

-- Dumped table `utilisateur` with 6 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Fri, 15 May 2026 20:15:45 +0200
