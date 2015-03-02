/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-01 23:05:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for parametros
-- ----------------------------
DROP TABLE IF EXISTS `parametros`;
CREATE TABLE `parametros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `planilla` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `humedad` double(15,2) NOT NULL,
  `humedad_d` int(2) DEFAULT NULL,
  `merma` double(15,2) NOT NULL,
  `merma_d` int(2) DEFAULT NULL,
  `leyes` double(15,2) NOT NULL,
  `leyes_d` int(2) DEFAULT NULL,
  `leyesAg` double(15,2) NOT NULL,
  `leyesAg_d` int(2) DEFAULT NULL,
  `cotizaciones` double(15,2) NOT NULL,
  `cotizaciones_d` int(2) DEFAULT NULL,
  `cotizacionesAg` double(15,2) NOT NULL,
  `cotizacionesAg_d` int(2) DEFAULT NULL,
  `alicuotas` double(15,2) NOT NULL,
  `alicuotas_d` int(2) DEFAULT NULL,
  `alicuotasAg` double(15,2) NOT NULL,
  `alicuotasAg_d` int(2) DEFAULT NULL,
  `tipoCambioANB` double(15,2) NOT NULL,
  `tipoCambioANB_d` int(2) DEFAULT NULL,
  `tipoCambioOficial` double(15,2) NOT NULL,
  `tipoCambioOficial_d` int(2) DEFAULT NULL,
  `puertoDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puertoDestino_d` int(2) DEFAULT NULL,
  `paisDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paisDestino_d` int(2) DEFAULT NULL,
  `factorKg1` double(15,7) NOT NULL,
  `factorKg1_d` int(2) DEFAULT NULL,
  `factorKg2` double(15,2) NOT NULL,
  `factorKg2_d` int(2) DEFAULT NULL,
  `externo` double(15,2) NOT NULL,
  `externo_d` int(2) DEFAULT NULL,
  `comprador` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comprador_d` int(2) DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `direccion_d` int(2) DEFAULT NULL,
  `puerto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puerto_d` int(2) DEFAULT NULL,
  `origen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origen_d` int(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of parametros
-- ----------------------------
INSERT INTO `parametros` VALUES ('1', 'ZINC', '9.18', '15', '1.00', '1', '1.00', '1', '1.00', '1', '1.00', null, '1.00', '1', '1.00', '11', '11.00', '1', '1.00', '1', '1.00', '11', '11', '11', '11', '1', '11.0000000', '11', '1.00', '1', '1.00', '1', 'FIDEL AGUILAR', '0', 'CASIMIRO CORRAL', '0', 'ARTPOR', '15', 'DESCONOCIDO', '0', '0000-00-00 00:00:00', '2015-03-02 06:02:11');
INSERT INTO `parametros` VALUES ('2', 'PLOMO', '9.02', '11', '1.00', '1', '1.00', '1', '1.00', '1', '1.00', null, '1.00', '1', '1.00', '11', '11.00', '1', '1.00', '1', '1.00', '11', '11', '11', '11', '1', '11.0000000', '11', '1.00', '1', '1.00', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-02 04:38:34', '2015-03-02 06:04:43');
