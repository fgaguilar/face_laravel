/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : laravelapp

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-03-23 11:52:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password_temp` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`password`),
  UNIQUE KEY `users_username_unique` (`password_temp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('2', 'faguilar@aduana.gob.bo', 'fgaguilar', 'Valentina2010', 'Valentina2010', '', '0', '2015-03-23 11:50:24', '2015-03-23 11:50:29');
