/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-04-06 10:50:58
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of parametros
-- ----------------------------
INSERT INTO `parametros` VALUES ('1', 'ZINC', '9.18', '1.01', '52.55', '466.00', '0.25', '0.95', '1.00', '1.00', '6.96', '6.96', 'ANTWERP', 'BELGICA', '2.2046223', '32.15073', '32.00', 'FIDEL AGUILAR', 'CASIMIRO CORRAL', 'ARTPOR', 'DESCONOCIDO', '0000-00-00 00:00:00', '2015-04-06 13:12:02', 'Zinc-Plata', '2608.00.00.00', '2616.10.00.00');
INSERT INTO `parametros` VALUES ('2', 'PLOMO', '6.61', '1.01', '65.02', '2786.00', '0.25', '0.99', '1.00', '1.00', '6.96', '6.96', 'ONSAN', 'KOREA', '2.2046223', '32.15000', '32.00', 'FIDEL AGUILAR', 'POSNASKY 521', 'ONSAN', 'POTOSI - BOLIVIA', '2015-03-02 04:38:34', '2015-04-06 12:39:36', 'PLOMO-PLATA', '2145.00.00.11', '2146.00.00.00');
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
