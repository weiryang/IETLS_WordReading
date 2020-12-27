/*
 Navicat Premium Data Transfer

 Source Server         : xddd
 Source Server Type    : MySQL
 Source Server Version : 50625
 Source Host           : localhost:3306
 Source Schema         : word_article

 Target Server Type    : MySQL
 Target Server Version : 50625
 File Encoding         : 65001

 Date: 27/12/2020 10:50:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dia_article_org
-- ----------------------------
DROP TABLE IF EXISTS `dia_article_org`;
CREATE TABLE `dia_article_org`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_from` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '摘自 如nature,internet等',
  `context_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '短文主体',
  `article_from_detail` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '摘自，详细信息',
  `create_by` int(11) DEFAULT NULL COMMENT '建立人',
  `create_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '建立时间',
  `edit_time` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '编辑时间',
  `remark` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '短文原始表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dia_article_org
-- ----------------------------
INSERT INTO `dia_article_org` VALUES (1, NULL, 'Everyone\'s lives are like a very long sidewalk. Some are well paved. Others, like mine, have cracks, banana skins and cigarette butts. Your sidewalk is like mine but probably not as many cracks...', '', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
