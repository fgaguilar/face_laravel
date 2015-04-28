/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-04-27 21:38:25
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
  `contenidoAgInternoFactores` double(8,2) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of planillas
-- ----------------------------
INSERT INTO `planillas` VALUES ('43', 'ZINC', '1445000.00', '2.2046223', '9.18', '132651.00', '32.1507300', '1.00', '13123.49', '6.96', '1299225.51', '2015-03-08', 'EXMSC-Z', '11', '52.55', '682743.01', '6.96', '1505190.46', '466.00', '605.44', '43.00', '19465.31', '11.00', '32.00', '0.95', '1429930.93', '11.00', '19.05', '370814.13', '22550.00', '1800745.06', '1467550.00', '810335.28', '990409.78', '11', '27', '5.00', '71496.55', '1.246190', '6.00', '22248.85', '93745.39', '652467.94', 'ANTWERP', 'BELGICA', '2015-03-15 17:28:03', '2015-03-15 17:28:03', 'Fidel', null);
INSERT INTO `planillas` VALUES ('44', 'ZINC', '1445000.00', '2.2046223', '9.18', '132651.00', '32.1507300', '1.00', '13123.49', '6.96', '1299225.51', '2015-03-15', 'EXMSC-Z', '115', '52.55', '682743.01', '6.96', '1505190.46', '466.00', '605.44', '43.35', '19465.31', '11.35', '32.00', '0.95', '1429930.93', '82.00', '19.05', '370814.13', '168100.00', '1800745.06', '1613100.00', '810335.28', '990409.78', '23', '28', '5.00', '71496.55', '1.246190', '6.00', '22248.85', '93745.39', '652467.94', 'ANTWERP', 'BELGICA', '2015-03-16 01:47:08', '2015-03-16 01:47:08', 'Fidel', null);
INSERT INTO `planillas` VALUES ('45', 'PLOMO', '1445000.00', '2.2046223', '6.61', '95514.50', '32.1500000', '1.00', '13494.85', '6.96', '1335990.65', '2015-03-18', 'EXMSC-P-2015-01', '12354', '65.02', '868661.12', '6.96', '1915069.67', '2786.00', '3722.07', '43.25', '119664.55', '11.25', '32.00', '0.92', '1761864.10', '52.00', '16.32', '1952925.43', '106600.00', '3714789.53', '1551600.00', '1671655.29', '2043134.24', '3256', '29', '5.00', '88093.20', '2.570789', '6.00', '117175.53', '205268.73', '1428670.37', 'ONSAN', 'KOREA', '2015-03-19 02:02:58', '2015-03-19 02:02:58', 'Fidel', null);
INSERT INTO `planillas` VALUES ('46', 'ZINC', '1445000.00', '2.2046223', '9.20', '132940.00', '32.1507300', '1.01', '13251.81', '6.96', '1298808.19', '2015-04-27', '5841', '542', '52.55', '682523.71', '6.96', '1504706.98', '466.00', '605.24', '43.25', '19459.06', '11.25', '32.00', '0.25', '376176.75', '2.00', '0.95', '18486.10', '4100.00', '394662.85', '1449100.00', '177598.28', '217064.57', '528', '6589', '111.00', '417556.19', '0.273123', '222.00', '41039.15', '458595.34', '3191823.55', 'ANTWERP', 'BELGICA', '2015-04-28 02:42:16', '2015-04-28 03:17:39', 'Fidel', 'Gaby');
INSERT INTO `planillas` VALUES ('47', 'ZINC', '111.00', '2.2046223', '9.20', '10.21', '32.1507300', '1.01', '1.02', '6.96', '99.77', '2015-04-27', 'EXMSC-Z', '11', '52.55', '52.43', '6.96', '115.59', '466.00', '0.05', '43.00', '1.49', '11.00', '32.00', '0.25', '28.90', '22.00', '0.95', '1.42', '45100.00', '30.32', '45211.00', '13.64', '16.67', '125', '31', '111.00', '32.08', '0.273123', '222.00', '3.15', '35.23', '245.19', 'ANTWERP', 'BELGICA', '2015-04-28 03:05:00', '2015-04-28 03:20:04', 'Fidel', 'Fidel');
INSERT INTO `planillas` VALUES ('48', 'ZINC', '1445000.00', '2.2046223', '9.20', '132940.00', '32.1507300', '1.01', '13251.81', '6.96', '1298808.19', '2015-04-27', 'EXMSC-Z', '11', '52.55', '682523.71', '6.96', '1504706.98', '466.00', '605.24', '43.00', '19459.06', '11.00', '32.00', '0.25', '376176.75', '11.00', '0.95', '18486.10', '22550.00', '394662.85', '1467550.00', '177598.28', '217064.57', '245', '32', '111.00', '417556.19', '0.273123', '222.00', '41039.15', '458595.34', '3191823.55', 'ANTWERP', 'BELGICA', '2015-04-28 03:12:31', '2015-04-28 03:12:31', 'Fidel', null);
INSERT INTO `planillas` VALUES ('49', 'ZINC', '22222.00', '2.2046223', '9.20', '2044.42', '32.1507300', '1.01', '203.79', '6.96', '19973.78', '2015-04-27', 'EXMSC-Z', '22', '52.55', '10496.22', '6.96', '23140.21', '466.00', '9.31', '43.00', '299.25', '11.00', '32.00', '0.25', '5785.05', '11.00', '0.95', '284.29', '22550.00', '6069.34', '44772.00', '2731.20', '3338.14', '11', '33', '111.00', '6421.41', '0.273123', '222.00', '631.12', '7052.53', '49085.61', 'ANTWERP', 'BELGICA', '2015-04-28 03:22:10', '2015-04-28 04:37:10', 'Fidel', 'Fidel');
INSERT INTO `planillas` VALUES ('50', 'PLOMO', '33333.00', '2.2046223', '6.61', '2203.31', '32.1500000', '1.01', '314.41', '6.96', '30815.28', '2015-04-27', 'EXMSC-P', '22', '65.02', '20036.09', '6.96', '44172.02', '2786.00', '85.85', '77.00', '2760.12', '45.00', '32.00', '0.25', '11043.01', '11.00', '0.99', '2732.52', '22550.00', '13775.53', '55883.00', '6198.99', '7576.54', '5478', '34', '1.00', '110.43', '0.413270', '1.00', '27.33', '137.76', '958.78', 'AKITA', 'BELGICA', '2015-04-28 03:27:58', '2015-04-28 03:27:58', 'Gaby', null);
