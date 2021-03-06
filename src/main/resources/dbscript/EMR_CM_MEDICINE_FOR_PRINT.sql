CREATE DATABASE  IF NOT EXISTS `EMR` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `EMR`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 1.224.169.78    Database: EMR
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.8-MariaDB

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
-- Table structure for table `CM_MEDICINE_FOR_PRINT`
--

DROP TABLE IF EXISTS `CM_MEDICINE_FOR_PRINT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CM_MEDICINE_FOR_PRINT` (
  `PRINCIPAL_COMP_CD` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `KD_CD` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'KD코드',
  `STD_CD` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'SNOMEDCT참고',
  `JOB_CD` char(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '복합작업코드',
  `DRUG_NM_KOR` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '약품명',
  `DRUG_NM_ENG` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '약품 영문명',
  `DRUG_MANUF` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '생산자',
  `HIRA_ATC_CD` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ATC코드',
  `HIRA_ATC_NM` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ATC명'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 11:37:27
