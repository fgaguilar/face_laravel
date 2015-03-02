/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-01 12:56:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pbparametros
-- ----------------------------
DROP TABLE IF EXISTS `pbparametros`;
CREATE TABLE `pbparametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `humedadPb` double(15,2) NOT NULL,
  `humedadPb_d` int(2) DEFAULT NULL,
  `mermaPb` double(15,2) NOT NULL,
  `mermaPb_d` int(2) DEFAULT NULL,
  `leyesPb` double(15,2) NOT NULL,
  `leyesPb_d` int(2) DEFAULT NULL,
  `leyesAgPb` double(15,2) NOT NULL,
  `leyesAgPb_d` int(2) DEFAULT NULL,
  `cotizacionesPb` double(15,2) NOT NULL,
  `cotizacionesPb_d` int(2) DEFAULT NULL,
  `cotizacionesAgPb` double(15,2) NOT NULL,
  `cotizacionesAgPb_d` int(2) DEFAULT NULL,
  `alicuotasPb` double(15,2) NOT NULL,
  `alicuotasPb_d` int(2) DEFAULT NULL,
  `alicuotasAgPb` double(15,2) NOT NULL,
  `alicuotasAgPb_d` int(2) DEFAULT NULL,
  `tipoCambioANB` double(15,2) NOT NULL,
  `tipoCambioANB_d` int(2) DEFAULT NULL,
  `tipoCambioOficial` double(15,2) NOT NULL,
  `tipoCambioOficial_d` int(2) DEFAULT NULL,
  `puertoDestinoPb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puertoDestinoPb_d` int(2) DEFAULT NULL,
  `paisDestinoPb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paisDestinoPb_d` int(2) DEFAULT NULL,
  `factorKg1Pb` double(15,7) NOT NULL,
  `factorKg1Pb_d` int(2) DEFAULT NULL,
  `factorKg2Pb` double(15,2) NOT NULL,
  `factorKg2Pb_d` int(2) DEFAULT NULL,
  `externoPb` double(15,2) NOT NULL,
  `externoPb_d` int(2) DEFAULT NULL,
  `compradorPb` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `compradorPb_d` int(2) DEFAULT NULL,
  `direccionPb` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direccionPb_d` int(2) DEFAULT NULL,
  `puertoPb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puertoPb_d` int(2) DEFAULT NULL,
  `origenPb` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origenPb_d` int(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pbparametros
-- ----------------------------
