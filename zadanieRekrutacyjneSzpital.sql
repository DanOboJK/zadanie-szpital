-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: zadanie_rekrutacyjne_szpital
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `dane_adresowe_pacjentow`
--

DROP TABLE IF EXISTS `dane_adresowe_pacjentow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dane_adresowe_pacjentow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_pacjenta` int DEFAULT NULL,
  `kraj` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `miasto` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `ulica` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_domu` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_mieszkania` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `kod_pocztowy` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane_adresowe_pacjentow`
--

LOCK TABLES `dane_adresowe_pacjentow` WRITE;
/*!40000 ALTER TABLE `dane_adresowe_pacjentow` DISABLE KEYS */;
INSERT INTO `dane_adresowe_pacjentow` VALUES (1,1,'Polska','Lublin','Krakowska','10','9','20-001');
/*!40000 ALTER TABLE `dane_adresowe_pacjentow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dane_adresowe_pracownikow`
--

DROP TABLE IF EXISTS `dane_adresowe_pracownikow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dane_adresowe_pracownikow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nr_legitymacji` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `kraj` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `miasto` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `ulica` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_domu` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_mieszkania` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `kod_pocztowy` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane_adresowe_pracownikow`
--

LOCK TABLES `dane_adresowe_pracownikow` WRITE;
/*!40000 ALTER TABLE `dane_adresowe_pracownikow` DISABLE KEYS */;
INSERT INTO `dane_adresowe_pracownikow` VALUES (1,'L0001','Polska','Lublin','Wiślana','11','99','20-000');
/*!40000 ALTER TABLE `dane_adresowe_pracownikow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dane_lekarza`
--

DROP TABLE IF EXISTS `dane_lekarza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dane_lekarza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `tytul` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_legitymacji` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_legitymacji` (`id_legitymacji`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane_lekarza`
--

LOCK TABLES `dane_lekarza` WRITE;
/*!40000 ALTER TABLE `dane_lekarza` DISABLE KEYS */;
INSERT INTO `dane_lekarza` VALUES (1,'Artur','Nowak','doktor mgr','L0001'),(2,'Magda','Kamień','doktor','L0002');
/*!40000 ALTER TABLE `dane_lekarza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dane_pacjentow`
--

DROP TABLE IF EXISTS `dane_pacjentow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dane_pacjentow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `ERP` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `plec` enum('mezczyzna','kobieta','inna') COLLATE utf8_polish_ci DEFAULT NULL,
  `stan` enum('zywy','martwy') COLLATE utf8_polish_ci DEFAULT NULL,
  `grupa_krwi` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ERP` (`ERP`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane_pacjentow`
--

LOCK TABLES `dane_pacjentow` WRITE;
/*!40000 ALTER TABLE `dane_pacjentow` DISABLE KEYS */;
INSERT INTO `dane_pacjentow` VALUES (1,'Daniel','Oborski','121456','1993-09-11','mezczyzna','zywy','A'),(2,'Grzegorz','Rasiak','12145458','1983-09-02','mezczyzna','martwy','C'),(3,'Mateusz','Kap','12145489','1989-09-02','mezczyzna','zywy','b');
/*!40000 ALTER TABLE `dane_pacjentow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dane_pracownika_laboratoryjnego`
--

DROP TABLE IF EXISTS `dane_pracownika_laboratoryjnego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dane_pracownika_laboratoryjnego` (
  `id` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_legitymacji` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_legitymacji` (`id_legitymacji`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane_pracownika_laboratoryjnego`
--

LOCK TABLES `dane_pracownika_laboratoryjnego` WRITE;
/*!40000 ALTER TABLE `dane_pracownika_laboratoryjnego` DISABLE KEYS */;
INSERT INTO `dane_pracownika_laboratoryjnego` VALUES (1,'Michał','Marek','L0003');
/*!40000 ALTER TABLE `dane_pracownika_laboratoryjnego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dane_wizyt`
--

DROP TABLE IF EXISTS `dane_wizyt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dane_wizyt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numer_wizyty` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_przyjecia` date DEFAULT NULL,
  `data_wypisu` date DEFAULT NULL,
  `id_lekarza_przyjmujacego` int DEFAULT NULL,
  `id_lekarza_wypisujacego` int DEFAULT NULL,
  `id_pacjenta` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numer_wizyty` (`numer_wizyty`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane_wizyt`
--

LOCK TABLES `dane_wizyt` WRITE;
/*!40000 ALTER TABLE `dane_wizyt` DISABLE KEYS */;
INSERT INTO `dane_wizyt` VALUES (1,'z2','2021-11-16','2021-11-20',1,2,1),(2,'z9','2021-12-01','2021-12-03',1,1,3),(3,'z7','2021-10-15','2021-11-03',2,1,2);
/*!40000 ALTER TABLE `dane_wizyt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dane_zleconych_badan`
--

DROP TABLE IF EXISTS `dane_zleconych_badan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dane_zleconych_badan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numer_zlecenia` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_zakonczenia_wykonywanych_badan` date DEFAULT NULL,
  `id_lekarza_zlecajacego` int DEFAULT NULL,
  `status_zlecenia` enum('rozpoczete','oczekuje','wykonane') COLLATE utf8_polish_ci DEFAULT NULL,
  `id_wizyty` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numer_zlecenia` (`numer_zlecenia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dane_zleconych_badan`
--

LOCK TABLES `dane_zleconych_badan` WRITE;
/*!40000 ALTER TABLE `dane_zleconych_badan` DISABLE KEYS */;
/*!40000 ALTER TABLE `dane_zleconych_badan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pobrane_probki`
--

DROP TABLE IF EXISTS `pobrane_probki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pobrane_probki` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazwa_probki` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `ilosc` int DEFAULT NULL,
  `jednostka` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_zlecenia` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pobrane_probki`
--

LOCK TABLES `pobrane_probki` WRITE;
/*!40000 ALTER TABLE `pobrane_probki` DISABLE KEYS */;
INSERT INTO `pobrane_probki` VALUES (1,'krew',NULL,NULL,NULL),(2,'osocze',NULL,NULL,NULL),(3,'szpik',NULL,NULL,NULL),(4,'mocz',NULL,NULL,NULL),(5,'krew',NULL,NULL,NULL),(6,'krew',NULL,NULL,NULL),(7,'osocze',NULL,NULL,NULL);
/*!40000 ALTER TABLE `pobrane_probki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wyniki_testow`
--

DROP TABLE IF EXISTS `wyniki_testow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wyniki_testow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nazwa_testu` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `wynik` int DEFAULT NULL,
  `jednostka` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_wykonania_testu` date DEFAULT NULL,
  `id_pracownika_laboratoryjnego` int DEFAULT NULL,
  `id_probki` int DEFAULT NULL,
  `id_zlecenia` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nazwa_testu` (`nazwa_testu`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wyniki_testow`
--

LOCK TABLES `wyniki_testow` WRITE;
/*!40000 ALTER TABLE `wyniki_testow` DISABLE KEYS */;
INSERT INTO `wyniki_testow` VALUES (1,NULL,NULL,NULL,NULL,NULL,1,NULL),(2,NULL,NULL,NULL,NULL,NULL,2,NULL),(3,NULL,NULL,NULL,NULL,NULL,3,NULL),(4,NULL,NULL,NULL,NULL,NULL,4,NULL),(5,NULL,NULL,NULL,NULL,NULL,5,NULL),(6,NULL,NULL,NULL,NULL,NULL,6,NULL),(7,NULL,NULL,NULL,NULL,NULL,7,NULL);
/*!40000 ALTER TABLE `wyniki_testow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 15:42:07
