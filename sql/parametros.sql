/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-12-29 09:53:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `parametros`
-- ----------------------------
DROP TABLE IF EXISTS `parametros`;
CREATE TABLE `parametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `planilla` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `humedad` double(15,2) NOT NULL,
  `merma` double(15,2) NOT NULL,
  `leyes` double(15,2) NOT NULL,
  `leyesAg` double(15,2) NOT NULL,
  `cotizaciones` double(15,2) NOT NULL,
  `cotizacionesAg` double(15,2) NOT NULL,
  `alicuotas` double(15,2) NOT NULL,
  `alicuotasAg` double(15,2) NOT NULL,
  `tipoCambioANB` double(15,2) NOT NULL,
  `tipoCambioOficial` double(15,2) NOT NULL,
  `puertoDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paisDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `factorKg1` double(15,7) NOT NULL,
  `factorKg2` double(15,5) NOT NULL,
  `externo` double(15,2) NOT NULL,
  `comprador` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `puerto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `origen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `concentrado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `partida1` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `partida2` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefono` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of parametros
-- ----------------------------
INSERT INTO `parametros` VALUES ('1', 'ZINC', '0.00', '1.00', '0.00', '0.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '0', '0', '1.0000000', '1.00000', '1.00', '0', '0', '0', '0', '0000-00-00 00:00:00', '2015-12-21 12:41:22', '0', '0', '0', null, null, null, null);
INSERT INTO `parametros` VALUES ('2', 'PLOMO', '0.00', '2.00', '0.00', '0.00', '2.00', '2.00', '2.00', '2.00', '2.00', '2.00', '0', '0', '2.0000000', '2.00000', '2.00', '0', '0', '0', '0', '2015-03-02 04:38:34', '2015-12-21 12:41:45', '0', '0', '0', null, null, null, null);
DROP TRIGGER IF EXISTS `trg_historico`;
DELIMITER ;;
CREATE TRIGGER `trg_historico` AFTER UPDATE ON `parametros` FOR EACH ROW insert into parametros_hist values (
  OLD.id,
  OLD.planilla,
  OLD.humedad,
  OLD.merma,
  OLD.leyes,
  OLD.leyesAg,
  OLD.cotizaciones,
  OLD.cotizacionesAg,
  OLD.alicuotas,
  OLD.alicuotasAg,
  OLD.tipoCambioANB,
  OLD.tipoCambioOficial,
  OLD.puertoDestino,
  OLD.paisDestino,
  OLD.factorKg1,
  OLD.factorKg2,
  OLD.externo,
  OLD.comprador,
  OLD.direccion,
  OLD.puerto,
  OLD.origen,
  OLD.created_at,
  OLD.updated_at,
  OLD.concentrado,
  OLD.partida1,
  OLD.partida2)
;;
DELIMITER ;
