/*
Navicat MySQL Data Transfer

Source Server         : mysql_face
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : forge

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2015-03-28 18:16:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_activation_code_index` (`activation_code`),
  KEY `users_reset_password_code_index` (`reset_password_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin@admin.com', '$2y$10$3H713XYW6x6KQIN5Gr1gdOzXtz7jmwkLOP5Ot.2c4zl9fDOsvLDX2', null, '1', null, null, '2015-03-28 20:50:22', '$2y$10$CJcUNqum81QOhbIX0hgtresSu6VvZS3I2BK/2VnRElGdPcZuwAPlC', null, null, null, '2015-03-28 20:45:19', '2015-03-28 20:50:22', 'admin');
INSERT INTO `users` VALUES ('2', 'user@user.com', '$2y$10$OhmP47Uxrx7hOvR0SqwlW.CTKsHb/gvIU8yq5QEdtAr18ErlkAdT.', null, '1', null, null, null, null, null, null, null, '2015-03-28 20:45:19', '2015-03-28 20:45:19', '');
