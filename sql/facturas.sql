/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-04-27 21:38:35
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
  PRIMARY KEY (`id`,`pesoMermaPeso`),
  KEY `planilla_idx` (`planilla_id`) USING BTREE,
  CONSTRAINT `planilla_fk` FOREIGN KEY (`planilla_id`) REFERENCES `planillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of facturas
-- ----------------------------
INSERT INTO `facturas` VALUES ('31', '2015-03-08', '27', '0', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'ANTWERP', 'BELGICA', 'DESCONOCIDO', 'EXMSC-Z', '1445000.00', '9.18', '132651.00', '1.00', '13123.49', '52.55', '682743.01', '0.95', '1505190.46', '1299225.51', '466.00', '605.44', '19.05', '19465.31', '1429930.93', '370814.13', '1800745.06', '810335.28', '990409.78', '2015-03-16 01:04:35', '2015-03-16 01:04:35', '6.96', '43', '2E-1F-BF-0E', '29040011007', '2015-12-31', 'UN MILLON OCHOCIENTOS MIL SETECIENTOS CUARENTA Y CINCO CON 06/100 DOLARES AMERICANOS', 'NOVECIENTOS NOVENTA MIL CUATROCIENTOS NUEVE CON 78/100 DOLARES AMERICANOS', 'ZINC-PLATA', '2608.00.00.00', '2616.10.00.00', null, null, null, null);
INSERT INTO `facturas` VALUES ('33', '2015-03-08', '27', '0', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'ANTWERP', 'BELGICA', 'DESCONOCIDO', 'EXMSC-Z', '1445000.00', '9.18', '132651.00', '1.00', '13123.49', '52.55', '682743.01', '0.95', '1505190.46', '1299225.51', '466.00', '605.44', '19.05', '19465.31', '1429930.93', '370814.13', '1800745.06', '810335.28', '990409.78', '2015-03-19 01:27:51', '2015-03-19 01:27:51', '6.96', '43', '2E-1F-BF-0E', '29040011007', '2015-12-31', 'UN MILLON OCHOCIENTOS MIL SETECIENTOS CUARENTA Y CINCO CON 06/100 DOLARES AMERICANOS', 'NOVECIENTOS NOVENTA MIL CUATROCIENTOS NUEVE CON 78/100 DOLARES AMERICANOS', 'ZINC-PLATA', '2608.00.00.00', '2616.10.00.00', null, 'SEIS MILLONES OCHOCIENTOS NOVENTA Y TRES MIL DOSCIENTOS CINCUENTA Y DOS CON 06/100 BOLIVIANOS', null, null);
INSERT INTO `facturas` VALUES ('34', '2015-03-15', '28', '0', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'ANTWERP', 'BELGICA', 'DESCONOCIDO', 'EXMSC-Z', '1445000.00', '9.18', '132651.00', '1.00', '13123.49', '52.55', '682743.01', '0.95', '1505190.46', '1299225.51', '466.00', '605.44', '19.05', '19465.31', '1429930.93', '370814.13', '1800745.06', '810335.28', '990409.78', '2015-03-19 01:29:39', '2015-03-19 01:29:39', '6.96', '44', 'A6-84-79-FE', '29040011007', '2015-12-31', 'UN MILLON OCHOCIENTOS MIL SETECIENTOS CUARENTA Y CINCO CON 06/100 DOLARES AMERICANOS', 'NOVECIENTOS NOVENTA MIL CUATROCIENTOS NUEVE CON 78/100 DOLARES AMERICANOS', 'ZINC-PLATA', '2608.00.00.00', '2616.10.00.00', null, 'SEIS MILLONES OCHOCIENTOS NOVENTA Y TRES MIL DOSCIENTOS CINCUENTA Y DOS CON 06/100 BOLIVIANOS', null, null);
INSERT INTO `facturas` VALUES ('35', '2015-03-15', '28', '0', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'ANTWERP', 'BELGICA', 'DESCONOCIDO', 'EXMSC-Z', '1445000.00', '9.18', '132651.00', '1.00', '13123.49', '52.55', '682743.01', '0.95', '1505190.46', '1299225.51', '466.00', '605.44', '19.05', '19465.31', '1429930.93', '370814.13', '1800745.06', '810335.28', '990409.78', '2015-03-19 01:32:46', '2015-03-19 01:32:46', '6.96', '44', 'A6-84-79-FE', '29040011007', '2015-12-31', 'UN MILLON OCHOCIENTOS MIL SETECIENTOS CUARENTA Y CINCO CON 06/100 DOLARES AMERICANOS', 'NOVECIENTOS NOVENTA MIL CUATROCIENTOS NUEVE CON 78/100 DOLARES AMERICANOS', 'ZINC-PLATA', '2608.00.00.00', '2616.10.00.00', '6893252.07', 'SEIS MILLONES OCHOCIENTOS NOVENTA Y TRES MIL DOSCIENTOS CINCUENTA Y DOS CON 06/100 BOLIVIANOS', null, null);
INSERT INTO `facturas` VALUES ('36', '2015-03-15', '28', '0', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'ANTWERP', 'BELGICA', 'DESCONOCIDO', 'EXMSC-Z', '1445000.00', '9.18', '132651.00', '1.00', '13123.49', '52.55', '682743.01', '0.95', '1505190.46', '1299225.51', '466.00', '605.44', '19.05', '19465.31', '1429930.93', '370814.13', '1800745.06', '810335.28', '990409.78', '2015-03-19 03:13:44', '2015-03-19 03:13:44', '6.96', '44', 'A6-84-79-FE', '29040011007', '2015-12-31', 'UN MILLON OCHOCIENTOS MIL SETECIENTOS CUARENTA Y CINCO CON 06/100 DOLARES AMERICANOS', 'NOVECIENTOS NOVENTA MIL CUATROCIENTOS NUEVE CON 78/100 DOLARES AMERICANOS', 'ZINC-PLATA', '2608.00.00.00', '2616.10.00.00', '6893252.07', 'SEIS MILLONES OCHOCIENTOS NOVENTA Y TRES MIL DOSCIENTOS CINCUENTA Y DOS CON 06/100 BOLIVIANOS', null, null);
