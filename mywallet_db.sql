/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : mywallet_db

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 27/01/2020 10:02:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_by` int(3) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `amount` int(10) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (1, '1LZrQJkXGqsv8AFpdgV0P4fUb', 4, '2020-01-26 02:06:15', 1, -1);
INSERT INTO `transactions` VALUES (2, 'pcgobJ5dHZDRxkz9uQMSXBtIi', 4, '2020-01-26 11:52:12', 1, 1);
INSERT INTO `transactions` VALUES (3, 'UrcgXKZmSWY08QBofHFkhsl5j', 4, '2020-01-26 17:29:05', 10, -1);
INSERT INTO `transactions` VALUES (4, 'RuhtsjHKE4QI0yZMN7fl3zVnJ', 4, '2020-01-26 23:16:17', 10, 1);
INSERT INTO `transactions` VALUES (5, 'Yf0L6HsKiM9yhUdBe4O8IwFG2', 4, '2020-01-26 23:48:54', NULL, 1);
INSERT INTO `transactions` VALUES (6, 'CL6Wi7bcOspQramElGNFMZ2u8', 4, '2020-01-26 23:51:19', NULL, 1);
INSERT INTO `transactions` VALUES (7, 'U6rysuQCxDKhPO2fvkAMcda9g', 4, '2020-01-26 23:51:21', NULL, 1);
INSERT INTO `transactions` VALUES (8, 'mvYy34qgz7GQZwHn5KRCb6BLp', 4, '2020-01-27 06:06:10', 39, -1);
INSERT INTO `transactions` VALUES (9, 'c9qtjfRbpKBzGFCyki2aMs7lg', 4, '2020-01-27 06:08:05', 90, -1);
INSERT INTO `transactions` VALUES (10, 'y1WAZETqaYIuvjSpMzFknhGes', 4, '2020-01-27 06:09:28', 55, -1);
INSERT INTO `transactions` VALUES (11, '9petz82dDbxRs4jGUhcYQ3COS', 4, '2020-01-27 06:10:35', 48, 1);
INSERT INTO `transactions` VALUES (12, 'CmMGlhroOKua1LBnQp9Afdwt3', 4, '2020-01-27 06:20:42', 4000, -1);
INSERT INTO `transactions` VALUES (13, 'CMEfDBTwerzxqbZGdOhQKuYgL', 4, '2020-01-27 09:11:09', 141, -1);

-- ----------------------------
-- Table structure for user_cat
-- ----------------------------
DROP TABLE IF EXISTS `user_cat`;
CREATE TABLE `user_cat`  (
  `cat_id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_on` datetime(0) NULL DEFAULT NULL,
  `created_by` int(19) NULL DEFAULT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_cat
-- ----------------------------
INSERT INTO `user_cat` VALUES (1, 'Administrator', 'He is the owner of the app', 'Active', '2019-05-21 18:54:19', 1);
INSERT INTO `user_cat` VALUES (2, 'User', 'Student', 'Active', '2019-05-21 18:55:03', 1);

-- ----------------------------
-- Table structure for user_cat_links
-- ----------------------------
DROP TABLE IF EXISTS `user_cat_links`;
CREATE TABLE `user_cat_links`  (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `link_id` int(19) NOT NULL,
  `cat_id` int(19) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_cat_links
-- ----------------------------
INSERT INTO `user_cat_links` VALUES (13, 7, 2);
INSERT INTO `user_cat_links` VALUES (14, 8, 2);
INSERT INTO `user_cat_links` VALUES (15, 9, 2);
INSERT INTO `user_cat_links` VALUES (16, 10, 1);
INSERT INTO `user_cat_links` VALUES (17, 7, 1);
INSERT INTO `user_cat_links` VALUES (18, 11, 1);
INSERT INTO `user_cat_links` VALUES (19, 12, 1);

-- ----------------------------
-- Table structure for user_links
-- ----------------------------
DROP TABLE IF EXISTS `user_links`;
CREATE TABLE `user_links`  (
  `link_id` int(19) NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `link_image` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_parent` int(19) NULL DEFAULT NULL,
  `page_id` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `page_id_sub` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_links
-- ----------------------------
INSERT INTO `user_links` VALUES (7, '../transactions', 'Transactions', 'Active', 'ti-credit-card', 0, 'transactions', NULL);
INSERT INTO `user_links` VALUES (8, '../transactions?curpage=make_deposit', 'Make Deposit', 'Active', 'ti-plus', 7, 'transactions', NULL);
INSERT INTO `user_links` VALUES (9, '../transactions?curpage=my_transactions', 'My Transactions', 'Active', 'ti-plus', 7, 'transactions', NULL);
INSERT INTO `user_links` VALUES (10, '../applications?curpage=list_all_deposits', 'List Deposits', 'Active', 'ti-plus', 7, 'transactions', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dob` date NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_cat` int(1) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `serial_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(19) NULL DEFAULT NULL,
  `updated_at` datetime(0) NOT NULL,
  `updated_by` int(19) NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (4, 'tom', 'doe', '2020-01-15', 'dansoman', 2, 'tomdoe@gmail.com', '5e2cdb487b', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2020-01-26 00:20:24', 500, '0000-00-00 00:00:00', 0, '0244151506');
INSERT INTO `users` VALUES (5, 'John ', 'Doe', '2020-01-08', 'Tesano', 1, 'admin@gmail.com', '5e2da6ce85', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '2020-01-26 14:48:46', 500, '0000-00-00 00:00:00', 0, '0244151506');

SET FOREIGN_KEY_CHECKS = 1;
