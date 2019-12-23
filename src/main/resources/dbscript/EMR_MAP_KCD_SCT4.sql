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
-- Table structure for table `MAP_KCD_SCT4`
--

DROP TABLE IF EXISTS `MAP_KCD_SCT4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAP_KCD_SCT4` (
  `ORI_TP_CD` varchar(20) NOT NULL DEFAULT 'KCD' COMMENT '매핑도메인코드',
  `MAP_VER` varchar(20) NOT NULL COMMENT '버전코드',
  `ORI_CD` varchar(20) NOT NULL COMMENT 'KCD 코드',
  `SCT_ID` varchar(18) NOT NULL COMMENT 'SNOMED CT 코드',
  `MAP_STAT_CD` varchar(20) DEFAULT NULL COMMENT '매핑 결과 코드',
  `RV_STAT_CD` varchar(20) DEFAULT NULL COMMENT '리뷰 결과 코드',
  `MAP_MEMO` varchar(50) DEFAULT NULL COMMENT '매핑메모',
  `DISP_ODR` int(11) DEFAULT NULL COMMENT '출력순서',
  `UDT_DT` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`ORI_TP_CD`,`MAP_VER`,`ORI_CD`,`SCT_ID`),
  KEY `index2` (`ORI_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='처치및시술 매핑 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 11:37:31
