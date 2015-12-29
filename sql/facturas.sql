/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-12-29 08:59:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `facturas`
-- ----------------------------
DROP TABLE IF EXISTS `facturas`;
CREATE TABLE `facturas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `factura` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comprador` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puertoTransito` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `puertoDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paisDestino` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `origen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numeroLote` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pesoKilosNetosHumedosPeso` double(15,2) NOT NULL,
  `pesoHumedadPesos` double(6,2) NOT NULL,
  `pesoHumedadPeso` double(15,2) NOT NULL,
  `pesoMermaPesos` double(6,2) NOT NULL,
  `pesoMermaPeso` double(15,2) NOT NULL,
  `contenidoZnLeyes` double(6,2) NOT NULL,
  `contenidoZnPesokg` double(15,2) NOT NULL,
  `baseZnCotizaciones` double(6,2) NOT NULL,
  `contenidoZnPesolf` double(15,2) NOT NULL,
  `pesoKilosNetosSecosPeso` double(15,2) NOT NULL,
  `contenidoAgLeyes` double(8,2) NOT NULL,
  `contenidoAgPesokg` double(8,2) NOT NULL,
  `baseAgCotizaciones` double(8,2) NOT NULL,
  `contenidoAgPesoot` double(15,2) NOT NULL,
  `baseZnSus` double(15,2) NOT NULL,
  `baseAgSus` double(15,2) NOT NULL,
  `baseTotalSus` double(15,2) NOT NULL,
  `basePromedioSus` double(15,2) NOT NULL,
  `baseDiferenciaSus` double(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tipoCambio` double(6,2) NOT NULL,
  `planilla_id` int(10) unsigned NOT NULL,
  `control` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `autorizacion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vencimiento` date DEFAULT NULL,
  `literal1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `literal2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `concentrado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partida1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `partida2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseDiferenciaBs` double(15,2) DEFAULT NULL,
  `literal3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto` bigint(30) DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`pesoMermaPeso`),
  KEY `planilla_idx` (`planilla_id`) USING BTREE,
  CONSTRAINT `planilla_fk` FOREIGN KEY (`planilla_id`) REFERENCES `planillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of facturas
-- ----------------------------
INSERT INTO `facturas` VALUES ('11', '2015-06-21', '30', '0', '0', '0', '0', '12', '1', '0', 'EXMSC-Z', '1445243.00', '1.00', '14452.43', '1.00', '14307.91', '1.00', '14164.83', '1.00', '14164.83', '1416482.66', '1.00', '1.42', '1.00', '1.42', '14164.83', '1.42', '14166.24', '6374.81', '17791.43', '2015-12-29 12:49:02', '2015-12-29 12:50:20', '1.00', '78', '1C-71-A3-FD', '2345647', '2015-09-26', 'CATORCE MIL CIENTO SESENTA Y SEIS 24/100', 'DIECISIETE MIL SETECIENTOS NOVENTA Y UN 43/100', '0', '0', '0', '17791.43', 'DIECISIETE MIL SETECIENTOS NOVENTA Y UN 43/100', 'Fidel', null, null, null);
