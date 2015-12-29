/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-12-29 11:07:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `planillas`
-- ----------------------------
DROP TABLE IF EXISTS `planillas`;
CREATE TABLE `planillas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `planilla` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pesoKilosNetosHumedosPeso` double(15,2) NOT NULL,
  `pesoKilosNetosHumedosFactores` double(15,7) NOT NULL,
  `pesoHumedadPesos` double(6,2) NOT NULL,
  `pesoHumedadPeso` double(15,2) NOT NULL,
  `pesoHumedadFactores` double(15,7) NOT NULL,
  `pesoMermaPesos` double(6,2) NOT NULL,
  `pesoMermaPeso` double(15,2) NOT NULL,
  `pesoMermaFactores` double(6,2) NOT NULL,
  `pesoKilosNetosSecosPeso` double(15,2) NOT NULL,
  `pesoKilosNetosSecosFactores` date NOT NULL,
  `pesoLoteFactores` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contenidoListaEmpaqueFactores` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `contenidoZnLeyes` double(6,2) NOT NULL,
  `contenidoZnPesokg` double(15,2) NOT NULL,
  `contenidoZnTipoDeCambioFactores` double(6,2) NOT NULL,
  `contenidoZnPesolf` double(15,2) NOT NULL,
  `contenidoAgLeyes` double(8,2) NOT NULL,
  `contenidoAgPesokg` double(8,2) NOT NULL,
  `contenidoAgFleteTotalFactores` double(8,2) NOT NULL,
  `contenidoAgPesoot` double(15,2) NOT NULL,
  `contenidoAgInternoFactores` double(8,3) NOT NULL,
  `contenidoAgExternoFactores` double(8,2) NOT NULL,
  `baseZnCotizaciones` double(6,2) NOT NULL,
  `baseZnSus` double(15,2) NOT NULL,
  `baseZnContenedoresFactores` double(6,2) NOT NULL,
  `baseAgCotizaciones` double(8,2) NOT NULL,
  `baseAgSus` double(15,2) NOT NULL,
  `baseAgTaraTotalFactores` double(15,2) NOT NULL,
  `baseTotalSus` double(15,2) NOT NULL,
  `baseTotalPesoBrutoFactores` double(15,2) NOT NULL,
  `basePromedioSus` double(15,2) NOT NULL,
  `baseDiferenciaSus` double(15,2) NOT NULL,
  `baseDiferenciaDueFactores` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `impuestoFacturaFactores` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `impuestoZnAlicuota` double(15,2) NOT NULL,
  `impuestoZnSus` double(15,2) NOT NULL,
  `impuestoZnValorConcentradoFactores` double(15,6) NOT NULL,
  `impuestoAgAlicuota` double(15,2) NOT NULL,
  `impuestoAgSus` double(15,2) NOT NULL,
  `impuestoTotalSusSus` double(15,2) NOT NULL,
  `impuestoTotalBsSus` double(15,2) NOT NULL,
  `puertoDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paisDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nrotramitesin` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nroinerm` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechahora` datetime DEFAULT NULL,
  `nroboletabanco` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nroinermvalidado` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nroid` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nroordenform3007` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of planillas
-- ----------------------------
INSERT INTO `planillas` VALUES ('76', 'ZINC', '12.00', '1.0000000', '1.00', '0.12', '1.0000000', '10.00', '1.19', '1.00', '10.69', '2016-01-20', 'EXMSC-Z', '25', '1.00', '0.11', '1.00', '0.11', '1.00', '0.00', '11.00', '0.00', '10.000', '1.00', '1.00', '0.11', '1.00', '1.00', '0.00', '2050.00', '0.11', '2062.00', '0.05', '0.06', '1235', '28', '1.00', '0.00', '0.008911', '4.00', '0.00', '0.00', '0.00', '7', '3', '2015-11-20 13:50:45', '2015-11-20 21:56:21', 'Fidel', 'Fidel', null, null, null, null, null, null, null);
INSERT INTO `planillas` VALUES ('77', 'ZINC', '124.00', '0.0000000', '1.00', '1.24', '0.0000000', '0.00', '0.00', '0.00', '122.76', '2015-12-01', 'EXMSC-Z', '11', '1.00', '1.23', '0.00', '0.00', '1.00', '0.00', '1213.00', '0.00', '1213.000', '0.00', '10.00', '0.00', '1.00', '1.00', '0.00', '2050.00', '0.00', '2174.00', '0.00', '0.00', '1213', '29', '1.00', '0.00', '0.000000', '1.00', '0.00', '0.00', '0.00', '11', '1', '2015-12-01 21:39:29', '2015-12-01 21:39:29', 'Fidel', null, null, null, null, null, null, null, null);
INSERT INTO `planillas` VALUES ('78', 'ZINC', '1445243.00', '1.0000000', '1.00', '14452.43', '1.0000000', '1.00', '14307.91', '1.00', '1416482.66', '2015-06-21', 'EXMSC-Z', '12', '1.00', '14164.83', '1.00', '14164.83', '1.00', '1.42', '12.00', '1.42', '11.000', '1.00', '1.00', '14164.83', '1.00', '1.00', '1.42', '2050.00', '14166.24', '1447293.00', '6374.81', '17791.43', '1234', '30', '1.00', '141.65', '0.009802', '1.00', '0.01', '141.66', '141.66', '12', '1', '2015-12-21 12:43:59', '2015-12-23 14:16:13', 'Fidel', 'Fidel', null, null, null, null, null, null, null);
