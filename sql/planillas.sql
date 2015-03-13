/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : face_laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2015-03-12 18:25:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for planillas
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
