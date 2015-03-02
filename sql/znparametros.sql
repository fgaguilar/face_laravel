/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-01 12:56:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for znparametros
-- ----------------------------
DROP TABLE IF EXISTS `znparametros`;
CREATE TABLE `znparametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `humedadZn` double(15,2) NOT NULL,
  `humedadZn_d` int(2) DEFAULT NULL,
  `mermaZn` double(15,2) NOT NULL,
  `mermaZn_d` int(2) DEFAULT NULL,
  `leyesZn` double(15,2) NOT NULL,
  `leyesZn_d` int(2) DEFAULT NULL,
  `leyesAgZn` double(15,2) NOT NULL,
  `leyesAgZn_d` int(2) DEFAULT NULL,
  `cotizacionesZn` double(15,2) NOT NULL,
  `cotizacionesZn_d` int(2) DEFAULT NULL,
  `cotizacionesAgZn` double(15,2) NOT NULL,
  `cotizacionesAgZn_d` int(2) DEFAULT NULL,
  `alicuotasZn` double(15,2) NOT NULL,
  `alicuotasZn_d` int(2) DEFAULT NULL,
  `alicuotasAgZn` double(15,2) NOT NULL,
  `alicuotasAgZn_d` int(2) DEFAULT NULL,
  `tipoCambioANB` double(15,2) NOT NULL,
  `tipoCambioANB_d` int(2) DEFAULT NULL,
  `tipoCambioOficial` double(15,2) NOT NULL,
  `tipoCambioOficial_d` int(2) DEFAULT NULL,
  `puertoDestinoZn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puertoDestinoZn_d` int(2) DEFAULT NULL,
  `paisDestinoZn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paisDestinoZn_d` int(2) DEFAULT NULL,
  `factorKg1Zn` double(15,7) NOT NULL,
  `factorKg1Zn_d` int(2) DEFAULT NULL,
  `factorKg2Zn` double(15,2) NOT NULL,
  `factorKg2Zn_d` int(2) DEFAULT NULL,
  `externoZn` double(15,2) NOT NULL,
  `externoZn_d` int(2) DEFAULT NULL,
  `compradorZn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `compradorZn_d` int(2) DEFAULT NULL,
  `direccionZn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direccionZn_d` int(2) DEFAULT NULL,
  `puertoZn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puertoZn_d` int(2) DEFAULT NULL,
  `origenZn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origenZn_d` int(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of znparametros
-- ----------------------------
