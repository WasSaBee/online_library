/*
 Navicat Premium Data Transfer

 Source Server         : was
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : online_library

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 27/08/2018 16:11:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `isbn` int(11) NOT NULL,
  `price` int(11) NULL DEFAULT NULL,
  `stock` smallint(6) NOT NULL,
  `lastaccess` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `lastid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`isbn`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('book2', 122312, 20, 0, '', NULL);
INSERT INTO `book` VALUES ('book1', 123123, 20, 4, 'was', 25);
INSERT INTO `book` VALUES ('book6', 123456, 30, 4, 'was', 26);
INSERT INTO `book` VALUES ('book3', 135464, 25, 6, 'was', 20);
INSERT INTO `book` VALUES ('book7', 147258, 30, 0, NULL, NULL);
INSERT INTO `book` VALUES ('book4', 152316, 30, 5, NULL, NULL);
INSERT INTO `book` VALUES ('book5', 234141, 30, 10, 'was', 21);
INSERT INTO `book` VALUES ('book8', 369258, 30, 10, 'was', 13);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `isbn` int(255) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `nickname` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nickname`(`nickname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'was', '123456', 'was');
INSERT INTO `users` VALUES (2, 'NIMAS', '123456', 'nimas');
INSERT INTO `users` VALUES (3, 'acb123', '123456', 'abc');

SET FOREIGN_KEY_CHECKS = 1;
