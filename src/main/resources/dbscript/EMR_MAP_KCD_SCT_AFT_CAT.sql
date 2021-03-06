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
-- Table structure for table `MAP_KCD_SCT_AFT_CAT`
--

DROP TABLE IF EXISTS `MAP_KCD_SCT_AFT_CAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAP_KCD_SCT_AFT_CAT` (
  `ORI_TP_CD` varchar(20) NOT NULL COMMENT '원코드 타입',
  `MAP_VER` varchar(20) NOT NULL COMMENT '버전코드',
  `ORI_CD` varchar(10) NOT NULL COMMENT '원 코드',
  `SCT_ID` varchar(18) NOT NULL COMMENT 'SNOMED CT 코드',
  `ATT_SCT_ID` varchar(18) NOT NULL COMMENT '추가속성SCTID',
  `VALGRP_SCT_ID` varchar(18) NOT NULL COMMENT 'VALUE 그룹 코드\n',
  `VAL_SCT_ID` varchar(18) NOT NULL COMMENT 'VALUE SCTID',
  `MAP_STAT_CD` varchar(20) DEFAULT NULL COMMENT '매핑 결과 코드',
  `RV_STAT_CD` varchar(20) DEFAULT NULL COMMENT '리뷰 결과 코드',
  `DISP_ODR` int(11) DEFAULT NULL COMMENT '출력순서',
  `UDT_DT` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`ORI_TP_CD`,`MAP_VER`,`ORI_CD`,`SCT_ID`,`ATT_SCT_ID`,`VAL_SCT_ID`,`VALGRP_SCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SNOMED CT 코드 매핑 후조합 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 11:37:29
