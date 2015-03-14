/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-14 15:51:17
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
  `factorKg2` double(15,5) NOT NULL,
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
  `concentrado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concentrado_d` int(2) DEFAULT NULL,
  `partida1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partida1_d` int(2) DEFAULT NULL,
  `partida2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partida2_d` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of parametros
-- ----------------------------
INSERT INTO `parametros` VALUES ('1', 'ZINC', '9.18', '100', '1.00', '0', '52.55', '0', '466.00', '15', '0.95', '30', '19.05', '15', '5.00', '0', '6.00', '0', '6.96', '0', '6.96', '15', 'ANTWERP', '30', 'BELGICA', '0', '2.2046223', '15', '32.15073', '0', '32.00', '15', 'FIDEL AGUILAR', '30', 'CASIMIRO CORRAL', '30', 'ARTPOR', '30', 'DESCONOCIDO', '30', '0000-00-00 00:00:00', '2015-03-14 22:07:16', 'ZINC-PLATA', '0', '2608.00.00.00', '0', '2616.10.00.00', '0');
INSERT INTO `parametros` VALUES ('2', 'PLOMO', '6.61', '30', '1.00', '0', '65.02', '0', '2786.00', '30', '0.92', '30', '16.32', '0', '5.00', '0', '6.00', '0', '6.96', '0', '6.96', '0', 'ONSAN', '0', 'KOREA', '0', '2.2046223', '0', '32.15000', '0', '32.00', '1', 'FIDEL AGUILAR', '0', 'POSNASKY 521', '0', 'ONSAN', '0', 'POTOSI - BOLIVIA', '0', '2015-03-02 04:38:34', '2015-03-14 00:22:57', 'PLOMO-PLATA', '0', '2548.00.00.12', '0', '2654.00.21.22', '0');
