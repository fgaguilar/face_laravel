/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-04-06 10:51:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `parametros_hist`
-- ----------------------------
DROP TABLE IF EXISTS `parametros_hist`;
CREATE TABLE `parametros_hist` (
  `id` int(10) unsigned NOT NULL,
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
  `partida2` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of parametros_hist
-- ----------------------------
INSERT INTO `parametros_hist` VALUES ('1', 'ZINC', '9.18', '1.00', '52.55', '466.00', '0.25', '0.95', '1.00', '1.00', '6.96', '6.96', 'ANTWERP', 'BELGICA', '2.2046223', '32.15073', '32.00', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'DESCONOCIDO', '0000-00-00 00:00:00', '2015-04-06 00:24:52', 'Zinc-Plata', '2608.00.00.00', '2616.10.00.00');
INSERT INTO `parametros_hist` VALUES ('1', 'ZINC', '9.18', '1.20', '52.55', '466.00', '0.25', '0.95', '1.00', '1.00', '6.96', '6.96', 'ANTWERP', 'BELGICA', '2.2046223', '32.15073', '32.00', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'DESCONOCIDO', '0000-00-00 00:00:00', '2015-04-06 00:49:55', 'Zinc-Plata', '2608.00.00.00', '2616.10.00.00');
INSERT INTO `parametros_hist` VALUES ('2', 'PLOMO', '6.61', '1.00', '65.02', '2786.00', '0.00', '0.99', '0.00', '0.00', '6.96', '6.96', 'ONSAN', 'KOREA', '2.2046223', '32.15000', '32.00', 'FIDEL AGUILAR', 'POSNASKY 521', 'ONSAN', 'POTOSI - BOLIVIA', '2015-03-02 04:38:34', '2015-04-05 22:42:07', 'PLOMO-PLATA', '2145.00.00.11', '2146.00.00.00');
INSERT INTO `parametros_hist` VALUES ('2', 'PLOMO', '6.61', '1.01', '65.02', '2786.00', '0.00', '0.99', '0.00', '0.00', '6.96', '6.96', 'ONSAN', 'KOREA', '2.2046223', '32.15000', '32.00', 'FIDEL AGUILAR', 'POSNASKY 521', 'ONSAN', 'POTOSI - BOLIVIA', '2015-03-02 04:38:34', '2015-04-06 12:34:24', 'PLOMO-PLATA', '2145.00.00.11', '2146.00.00.00');
INSERT INTO `parametros_hist` VALUES ('1', 'ZINC', '9.18', '1.00', '52.55', '466.00', '0.25', '0.95', '1.00', '1.00', '6.96', '6.96', 'ANTWERP', 'BELGICA', '2.2046223', '32.15073', '32.00', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'DESCONOCIDO', '0000-00-00 00:00:00', '2015-04-06 12:33:37', 'Zinc-Plata', '2608.00.00.00', '2616.10.00.00');
