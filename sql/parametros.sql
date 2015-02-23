/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-02-23 00:33:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for parametros
-- ----------------------------
DROP TABLE IF EXISTS `parametros`;
CREATE TABLE `parametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `humedad` double(15,2) NOT NULL,
  `merma` double(15,2) NOT NULL,
  `leyesZn` double(15,2) NOT NULL,
  `leyesPb` double(15,2) NOT NULL,
  `leyesAg` double(15,2) NOT NULL,
  `cotizacionesZn` double(15,2) NOT NULL,
  `cotizacionesPb` double(15,2) NOT NULL,
  `cotizacionesAg` double(15,2) NOT NULL,
  `alicuotasZn` double(15,2) NOT NULL,
  `alicuotasPb` double(15,2) NOT NULL,
  `alicuotasAg` double(15,2) NOT NULL,
  `tipoCambioANB` double(15,2) NOT NULL,
  `tipoCambioOficial` double(15,2) NOT NULL,
  `puertoDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paisDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `factorKg1` double(15,7) NOT NULL,
  `factorKg2` double(15,2) NOT NULL,
  `externo` double(15,2) NOT NULL,
  `comprador` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `puerto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `origen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
