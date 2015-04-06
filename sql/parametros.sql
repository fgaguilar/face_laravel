/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-04-05 20:53:18
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
INSERT INTO `parametros` VALUES ('1', 'ZINC', '9.18', '1', '1.20', '1', '52.55', '1', '466.00', '1', '0.25', '2', '0.95', '2', '1.00', '2', '1.00', '2', '6.96', '1', '6.96', '1', 'ANTWERP', '1', 'BELGICA', '1', '2.2046223', '1', '32.15073', '1', '32.00', '1', 'FIDEL AGUILAR', '1', 'CASIMIRO CORRAL', '1', 'ARTPOR', '1', 'DESCONOCIDO', '1', '0000-00-00 00:00:00', '2015-04-06 00:49:55', 'Zinc-Plata', '1', '2608.00.00.00', '1', '2616.10.00.00', '1');
INSERT INTO `parametros` VALUES ('2', 'PLOMO', '6.61', '1', '1.00', '1', '65.02', '1', '2786.00', '1', '0.00', '2', '0.99', '2', '0.00', '2', '0.00', '2', '6.96', '1', '6.96', '1', 'ONSAN', '1', 'KOREA', '1', '2.2046223', '1', '32.15000', '1', '32.00', '1', 'FIDEL AGUILAR', '1', 'POSNASKY 521', '1', 'ONSAN', '1', 'POTOSI - BOLIVIA', '1', '2015-03-02 04:38:34', '2015-04-05 22:42:07', 'PLOMO-PLATA', '1', '2145.00.00.11', '1', '2146.00.00.00', '1');
DROP TRIGGER IF EXISTS `trg_historico`;
DELIMITER ;;
CREATE TRIGGER `trg_historico` AFTER UPDATE ON `parametros` FOR EACH ROW insert into parametros_hist values (
  OLD.id,
  OLD.planilla,
  OLD.humedad,
  OLD.humedad_d,
  OLD.merma,
  OLD.merma_d,
  OLD.leyes,
  OLD.leyes_d,
  OLD.leyesAg,
  OLD.leyesAg_d,
  OLD.cotizaciones,
  OLD.cotizaciones_d,
  OLD.cotizacionesAg,
  OLD.cotizacionesAg_d,
  OLD.alicuotas,
  OLD.alicuotas_d,
  OLD.alicuotasAg,
  OLD.alicuotasAg_d,
  OLD.tipoCambioANB,
  OLD.tipoCambioANB_d,
  OLD.tipoCambioOficial,
  OLD.tipoCambioOficial_d,
  OLD.puertoDestino,
  OLD.puertoDestino_d,
  OLD.paisDestino,
  OLD.paisDestino_d,
  OLD.factorKg1,
  OLD.factorKg1_d,
  OLD.factorKg2,
  OLD.factorKg2_d,
  OLD.externo,
  OLD.externo_d,
  OLD.comprador,
  OLD.comprador_d,
  OLD.direccion,
  OLD.direccion_d,
  OLD.puerto,
  OLD.puerto_d,
  OLD.origen,
  OLD.origen_d,
  OLD.created_at,
  OLD.updated_at,
  OLD.concentrado,
  OLD.concentrado_d,
  OLD.partida1,
  OLD.partida1_d,
  OLD.partida2,
  OLD.partida2_d)
;;
DELIMITER ;
