/*
 Navicat Premium Data Transfer

 Source Server         : myDB
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : b2c

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 19/06/2020 16:37:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `permission` int(1) NOT NULL,
  `type_manager` int(1) NOT NULL,
  `goods_manager` int(1) NOT NULL,
  `order_manager` int(1) NOT NULL,
  `user_manager` int(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES (1, 'admin', '3Eg+gKegvZ73HYz5c2c5JA==', 1, 1, 0, 0, 0);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type_id` int(2) NOT NULL,
  `img` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` double(20, 2) NOT NULL,
  `is_deleted` int(2) NOT NULL,
  `is_show` int(2) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goods_type`(`type_id`) USING BTREE,
  CONSTRAINT `goods_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (13, '测试', 11, 'http://10.24.23.103:8080/img/FFF_400x400.png', 123.00, 1, 0);
INSERT INTO `goods` VALUES (16, 'iphoneX', 11, 'http://10.24.23.103:8080/img/FFF_400x400.png|', 4999.00, 0, 1);
INSERT INTO `goods` VALUES (17, '三星 Galaxy A51 5G', 13, 'http://10.24.23.103:8080/img/202006170147032382.jpg|http://10.24.23.103:8080/img/202006170147038792.jpg|http://10.24.23.103:8080/img/202006170147032108.jpg|', 2699.00, 0, 0);
INSERT INTO `goods` VALUES (18, '荣耀V30 5G', 14, 'http://10.24.23.103:8080/img/202006170204314556.jpg|http://10.24.23.103:8080/img/202006170204312565.jpg|http://10.24.23.103:8080/img/202006170204319817.jpg|', 2499.00, 0, 1);
INSERT INTO `goods` VALUES (19, 'OPPO Reno4 5G', 15, 'http://10.24.23.103:8080/img/202006170207408746.jpg|http://10.24.23.103:8080/img/202006170207405645.jpg|', 3299.00, 0, 0);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `order_id` int(2) NULL DEFAULT NULL,
  `user_id` int(2) NOT NULL,
  `type` int(2) NOT NULL,
  `goods_id` int(2) NOT NULL,
  `num` int(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item_order`(`order_id`) USING BTREE,
  CONSTRAINT `item_order` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `amount` double(20, 2) NOT NULL,
  `user_id` int(2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (11, '手机');
INSERT INTO `type` VALUES (13, '三星');
INSERT INTO `type` VALUES (14, '华为');
INSERT INTO `type` VALUES (15, 'OPPO');
INSERT INTO `type` VALUES (16, '小米');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
