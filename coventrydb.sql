/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : coventrydb

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 23/01/2020 22:36:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(19) NOT NULL,
  `user_id` int(19) NULL DEFAULT NULL,
  `amount` int(6) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(19) NULL DEFAULT NULL,
  `updated_at` datetime(0) NOT NULL,
  `updated_by` int(19) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for applications
-- ----------------------------
DROP TABLE IF EXISTS `applications`;
CREATE TABLE `applications`  (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expiration_date` date NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(19) NULL DEFAULT NULL,
  `updated_at` datetime(0) NOT NULL,
  `updated_by` int(19) NOT NULL,
  `amount` int(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of applications
-- ----------------------------
INSERT INTO `applications` VALUES (1, 'BIt', '2020-01-30', 'Test', 1, 'undergrad', '2020-01-21 14:50:01', 1, '0000-00-00 00:00:00', 0, 1);
INSERT INTO `applications` VALUES (2, 'BCE', '2020-01-29', 'Test', 1, 'undergrad', '2020-01-21 14:52:28', 1, '0000-00-00 00:00:00', 0, 1);
INSERT INTO `applications` VALUES (3, 'BTE Under', '2020-01-30', 'Test', 1, 'undergrad', '2020-01-21 14:53:42', 1, '0000-00-00 00:00:00', 0, 1);
INSERT INTO `applications` VALUES (4, 'BCE Post', '2020-01-23', 'jii', 1, 'undergrad', '2020-01-21 14:54:35', 1, '0000-00-00 00:00:00', 0, 1);

-- ----------------------------
-- Table structure for refunds
-- ----------------------------
DROP TABLE IF EXISTS `refunds`;
CREATE TABLE `refunds`  (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `user_id` int(19) NULL DEFAULT NULL,
  `application_id` int(19) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(19) NULL DEFAULT NULL,
  `updated_at` datetime(0) NOT NULL,
  `updated_by` int(19) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `application_id` int(19) NULL DEFAULT NULL,
  `client_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(19) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `invoice_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (1, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, '0');
INSERT INTO `transactions` VALUES (2, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, '0');
INSERT INTO `transactions` VALUES (3, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, '0');
INSERT INTO `transactions` VALUES (4, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, '0');
INSERT INTO `transactions` VALUES (5, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, '0');
INSERT INTO `transactions` VALUES (6, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, '0');
INSERT INTO `transactions` VALUES (7, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, '0');
INSERT INTO `transactions` VALUES (8, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 2, NULL, 'failed');
INSERT INTO `transactions` VALUES (9, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 3, NULL, 'failed');
INSERT INTO `transactions` VALUES (10, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 3, NULL, 'failed');
INSERT INTO `transactions` VALUES (11, 1, '154.160.24.132', 'GH (Ghana)', '1.00', NULL, 3, NULL, 'failed');

-- ----------------------------
-- Table structure for user_application
-- ----------------------------
DROP TABLE IF EXISTS `user_application`;
CREATE TABLE `user_application`  (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `user_id` int(19) NULL DEFAULT NULL,
  `application_id` int(19) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(19) NULL DEFAULT NULL,
  `updated_at` datetime(0) NOT NULL,
  `updated_by` int(19) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_application
-- ----------------------------
INSERT INTO `user_application` VALUES (1, 2, 1, 0, '2020-01-22 20:33:21', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (2, 2, 1, 0, '2020-01-22 20:36:37', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (3, 2, 1, 0, '2020-01-22 20:38:10', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (4, 2, 1, 0, '2020-01-22 20:39:07', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (5, 2, 1, 0, '2020-01-22 20:39:37', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (6, 2, 1, 0, '2020-01-22 20:41:38', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (7, 2, 1, 0, '2020-01-22 20:43:24', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (8, 2, 1, 0, '2020-01-22 20:44:37', 2, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (9, 3, 1, -2, '2020-01-22 20:48:01', 3, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (10, 3, 1, -2, '2020-01-22 20:49:40', 3, '0000-00-00 00:00:00', 0);
INSERT INTO `user_application` VALUES (11, 3, 1, -2, '2020-01-22 20:50:57', 3, '0000-00-00 00:00:00', 0);

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
  `link_image` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `link_parent` int(19) NULL DEFAULT NULL,
  `page_id` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `page_id_sub` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_links
-- ----------------------------
INSERT INTO `user_links` VALUES (7, '#', 'Applications', 'Active', 'ti-files', 0, 'applications', NULL);
INSERT INTO `user_links` VALUES (8, '../applications?curpage=all_applications', 'View Applications', 'Active', 'ti-plus', 7, 'applications', NULL);
INSERT INTO `user_links` VALUES (9, '../applications?curpage=my_applications', 'My Applications', 'Active', 'ti-plus', 7, 'applications', NULL);
INSERT INTO `user_links` VALUES (10, '../applications?curpage=list_applications', 'List Applications', 'Active', 'ti-plus', 7, 'applications', NULL);
INSERT INTO `user_links` VALUES (11, '../applications?curpage=create_application', 'Create Application', 'Active', 'ti-plus', 7, 'applications', NULL);
INSERT INTO `user_links` VALUES (12, '../applications?curpage=applied_application', 'Applied ', 'Active', 'ti-plus', 7, 'applications', NULL);

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
  `religion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_cat` int(1) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `serial_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `marital_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `created_by` int(19) NULL DEFAULT NULL,
  `updated_at` datetime(0) NOT NULL,
  `updated_by` int(19) NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Kwame', 'moden', '2020-01-22', 'Dansoman', 'Chriistian', 1, 'kerticeasante@yahoo.com', '', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'single', '2020-01-19 23:49:28', 2147483647, '0000-00-00 00:00:00', 0, '0550762193');
INSERT INTO `users` VALUES (2, 'Dton', 'moden', '2020-01-16', 'Airport', 'Christian', 2, 'kerticeasant@yahoo.com', '5e25fa0b56', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'single', '2020-01-20 19:05:47', 2147483647, '0000-00-00 00:00:00', 0, '0550762193');
INSERT INTO `users` VALUES (3, 'Bernice', 'Nature', '2019-12-30', 'Tema', 'Christian', 2, 'bernicenature@gmail.com', '5e28b49784', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'single', '2020-01-22 20:46:15', 2147483647, '0000-00-00 00:00:00', 0, '0550762193');

SET FOREIGN_KEY_CHECKS = 1;
