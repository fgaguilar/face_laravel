/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-11 20:50:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for facturas
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
  PRIMARY KEY (`id`,`pesoMermaPeso`),
  KEY `planilla_idx` (`planilla_id`),
  CONSTRAINT `planilla_fk` FOREIGN KEY (`planilla_id`) REFERENCES `planillas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
