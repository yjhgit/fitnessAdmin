/*
 Navicat Premium Data Transfer

 Source Server         : 124.71.217.106-js
 Source Server Type    : MySQL
 Source Server Version : 50740
 Source Host           : 124.71.217.106:3306
 Source Schema         : lxgym

 Target Server Type    : MySQL
 Target Server Version : 50740
 File Encoding         : 65001

 Date: 01/04/2023 13:59:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2023-03-06 17:37:20', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2023-03-06 17:37:20', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2023-03-06 17:37:20', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2023-03-06 17:37:20', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2023-03-06 17:37:20', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2023-03-06 17:37:20', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (7, '2023-03-06 17:37:20', 17, '宇宙银河系黑洞1号', '黑某', '13823888887', '是');
INSERT INTO `address` VALUES (8, '2023-03-06 17:37:20', 18, '宇宙银河系地球1号', '地某', '13823888888', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'jianshenshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680244310450 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for diaokeshenqing
-- ----------------------------
DROP TABLE IF EXISTS `diaokeshenqing`;
CREATE TABLE `diaokeshenqing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程类型',
  `shenqingshuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申请说明',
  `shenqingshijian` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练姓名',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调课申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diaokeshenqing
-- ----------------------------
INSERT INTO `diaokeshenqing` VALUES (121, '2023-03-06 17:37:20', '课程名称1', '课程类型1', '申请说明1', '2023-03-06 17:37:20', '工号1', '教练姓名1', '是', '');
INSERT INTO `diaokeshenqing` VALUES (122, '2023-03-06 17:37:20', '课程名称2', '课程类型2', '申请说明2', '2023-03-06 17:37:20', '工号2', '教练姓名2', '是', '');
INSERT INTO `diaokeshenqing` VALUES (123, '2023-03-06 17:37:20', '课程名称3', '课程类型3', '申请说明3', '2023-03-06 17:37:20', '工号3', '教练姓名3', '是', '');
INSERT INTO `diaokeshenqing` VALUES (124, '2023-03-06 17:37:20', '课程名称4', '课程类型4', '申请说明4', '2023-03-06 17:37:20', '工号4', '教练姓名4', '是', '');
INSERT INTO `diaokeshenqing` VALUES (125, '2023-03-06 17:37:20', '课程名称5', '课程类型5', '申请说明5', '2023-03-06 17:37:20', '工号5', '教练姓名5', '是', '');
INSERT INTO `diaokeshenqing` VALUES (126, '2023-03-06 17:37:20', '课程名称6', '课程类型6', '申请说明6', '2023-03-06 17:37:20', '工号6', '教练姓名6', '是', '');
INSERT INTO `diaokeshenqing` VALUES (127, '2023-03-06 17:37:20', '课程名称7', '课程类型7', '申请说明7', '2023-03-06 17:37:20', '工号7', '教练姓名7', '是', '');
INSERT INTO `diaokeshenqing` VALUES (128, '2023-03-06 17:37:20', '课程名称8', '课程类型8', '申请说明8', '2023-03-06 17:37:20', '工号8', '教练姓名8', '是', '');

-- ----------------------------
-- Table structure for discussjianshenjiaolian
-- ----------------------------
DROP TABLE IF EXISTS `discussjianshenjiaolian`;
CREATE TABLE `discussjianshenjiaolian`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身教练评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discussjianshenkecheng
-- ----------------------------
DROP TABLE IF EXISTS `discussjianshenkecheng`;
CREATE TABLE `discussjianshenkecheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身课程评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discussjianshenqicai
-- ----------------------------
DROP TABLE IF EXISTS `discussjianshenqicai`;
CREATE TABLE `discussjianshenqicai`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身器材评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for discussjianshenshangpin
-- ----------------------------
DROP TABLE IF EXISTS `discussjianshenshangpin`;
CREATE TABLE `discussjianshenshangpin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身商品评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jianshenjiaolian
-- ----------------------------
DROP TABLE IF EXISTS `jianshenjiaolian`;
CREATE TABLE `jianshenjiaolian`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `dengji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '等级',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `jianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `gonghao`(`gonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身教练' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jianshenjiaolian
-- ----------------------------
INSERT INTO `jianshenjiaolian` VALUES (21, '2023-03-06 17:37:20', '工号1', '123456', '姓名1', '男', 'upload/jianshenjiaolian_touxiang1.jpg', '年龄1', '初级', '13823888881', '简介1', 200);
INSERT INTO `jianshenjiaolian` VALUES (22, '2023-03-06 17:37:20', '工号2', '123456', '姓名2', '男', 'upload/jianshenjiaolian_touxiang2.jpg', '年龄2', '初级', '13823888882', '简介2', 200);
INSERT INTO `jianshenjiaolian` VALUES (23, '2023-03-06 17:37:20', '工号3', '123456', '姓名3', '男', 'upload/jianshenjiaolian_touxiang3.jpg', '年龄3', '初级', '13823888883', '简介3', 200);
INSERT INTO `jianshenjiaolian` VALUES (24, '2023-03-06 17:37:20', '工号4', '123456', '姓名4', '男', 'upload/jianshenjiaolian_touxiang4.jpg', '年龄4', '初级', '13823888884', '简介4', 200);
INSERT INTO `jianshenjiaolian` VALUES (25, '2023-03-06 17:37:20', '工号5', '123456', '姓名5', '男', 'upload/jianshenjiaolian_touxiang5.jpg', '年龄5', '初级', '13823888885', '简介5', 200);
INSERT INTO `jianshenjiaolian` VALUES (26, '2023-03-06 17:37:20', '工号6', '123456', '姓名6', '男', 'upload/jianshenjiaolian_touxiang6.jpg', '年龄6', '初级', '13823888886', '简介6', 200);
INSERT INTO `jianshenjiaolian` VALUES (27, '2023-03-06 17:37:20', '工号7', '123456', '姓名7', '男', 'upload/jianshenjiaolian_touxiang7.jpg', '年龄7', '初级', '13823888887', '简介7', 200);
INSERT INTO `jianshenjiaolian` VALUES (28, '2023-03-06 17:37:20', '1', '1', '姓名8', '男', 'upload/jianshenjiaolian_touxiang8.jpg', '年龄8', '初级', '13823888888', '简介8', 200);

-- ----------------------------
-- Table structure for jianshenkecheng
-- ----------------------------
DROP TABLE IF EXISTS `jianshenkecheng`;
CREATE TABLE `jianshenkecheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程类型',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `shangkeshijian` date NULL DEFAULT NULL COMMENT '上课时间',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练姓名',
  `fabushijian` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `kechengjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程介绍',
  `curriculumlevel` int(1) NULL DEFAULT NULL COMMENT '课程层级 1普通课程 2半年卡课程 3年卡课程',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身课程' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jianshenkecheng
-- ----------------------------
INSERT INTO `jianshenkecheng` VALUES (71, '2023-03-06 17:37:20', '课程名称1', '课程类型1', 'upload/jianshenkecheng_tupian1.jpg,upload/jianshenkecheng_tupian2.jpg,upload/jianshenkecheng_tupian3.jpg', '2023-03-06', 1, '工号1', '姓名1', '2023-03-06 17:37:20', '<p>课程介绍1</p>', 2);
INSERT INTO `jianshenkecheng` VALUES (72, '2023-03-06 09:37:20', '课程名称2', '课程类型2', 'upload/jianshenkecheng_tupian2.jpg,upload/jianshenkecheng_tupian3.jpg,upload/jianshenkecheng_tupian4.jpg', '2023-03-06', 2, '工号2', '教练姓名2', '2023-03-06 17:37:20', '课程介绍2', 2);
INSERT INTO `jianshenkecheng` VALUES (73, '2023-03-06 09:37:20', '课程名称3', '课程类型3', 'upload/jianshenkecheng_tupian3.jpg,upload/jianshenkecheng_tupian4.jpg,upload/jianshenkecheng_tupian5.jpg', '2023-03-06', 3, '工号3', '教练姓名3', '2023-03-06 17:37:20', '课程介绍3', 1);
INSERT INTO `jianshenkecheng` VALUES (74, '2023-03-06 09:37:20', '课程名称4', '课程类型4', 'upload/jianshenkecheng_tupian4.jpg,upload/jianshenkecheng_tupian5.jpg,upload/jianshenkecheng_tupian6.jpg', '2023-03-06', 4, '工号4', '教练姓名4', '2023-03-06 17:37:20', '课程介绍4', 1);
INSERT INTO `jianshenkecheng` VALUES (75, '2023-03-06 09:37:20', '课程名称5', '课程类型5', 'upload/jianshenkecheng_tupian5.jpg,upload/jianshenkecheng_tupian6.jpg,upload/jianshenkecheng_tupian7.jpg', '2023-03-06', 5, '工号5', '教练姓名5', '2023-03-06 17:37:20', '课程介绍5', 1);
INSERT INTO `jianshenkecheng` VALUES (76, '2023-03-06 09:37:20', '课程名称6', '课程类型6', 'upload/jianshenkecheng_tupian6.jpg,upload/jianshenkecheng_tupian7.jpg,upload/jianshenkecheng_tupian8.jpg', '2023-03-06', 6, '工号6', '教练姓名6', '2023-03-06 17:37:20', '课程介绍6', 2);
INSERT INTO `jianshenkecheng` VALUES (77, '2023-03-06 09:37:20', '课程名称7', '课程类型7', 'upload/jianshenkecheng_tupian7.jpg,upload/jianshenkecheng_tupian8.jpg,upload/jianshenkecheng_tupian9.jpg', '2023-03-06', 7, '工号7', '教练姓名7', '2023-03-06 17:37:20', '课程介绍7', 3);
INSERT INTO `jianshenkecheng` VALUES (78, '2023-03-06 09:37:20', '课程名称8', '课程类型8', 'upload/jianshenkecheng_tupian8.jpg,upload/jianshenkecheng_tupian9.jpg,upload/jianshenkecheng_tupian10.jpg', '2023-03-06', 8, '工号2', '姓名2', '2023-03-06 17:37:20', '<p>课程介绍8</p>', 3);

-- ----------------------------
-- Table structure for jianshenqicai
-- ----------------------------
DROP TABLE IF EXISTS `jianshenqicai`;
CREATE TABLE `jianshenqicai`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaibianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '器材编号',
  `qicaimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '器材类型',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `qicaijieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '器材介绍',
  `onelimittimes` int(11) NULL DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) NULL DEFAULT NULL COMMENT '库存',
  `price` float NOT NULL COMMENT '价格',
  `vipprice` float NULL DEFAULT -1 COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `qicaibianhao`(`qicaibianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身器材' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jianshenqicai
-- ----------------------------
INSERT INTO `jianshenqicai` VALUES (51, '2023-03-06 17:37:20', '器材编号1', '器材名称1', '器材类型1', 'upload/jianshenqicai_tupian1.jpg,upload/jianshenqicai_tupian2.jpg,upload/jianshenqicai_tupian3.jpg', '器材介绍1', 1, 99, 99.9, 1);
INSERT INTO `jianshenqicai` VALUES (52, '2023-03-06 17:37:20', '器材编号2', '器材名称2', '器材类型2', 'upload/jianshenqicai_tupian2.jpg,upload/jianshenqicai_tupian3.jpg,upload/jianshenqicai_tupian4.jpg', '器材介绍2', 2, 96, 99.9, 2);
INSERT INTO `jianshenqicai` VALUES (53, '2023-03-06 17:37:20', '器材编号3', '器材名称3', '器材类型3', 'upload/jianshenqicai_tupian3.jpg,upload/jianshenqicai_tupian4.jpg,upload/jianshenqicai_tupian5.jpg', '器材介绍3', 3, 99, 99.9, 3);
INSERT INTO `jianshenqicai` VALUES (54, '2023-03-06 17:37:20', '器材编号4', '器材名称4', '器材类型4', 'upload/jianshenqicai_tupian4.jpg,upload/jianshenqicai_tupian5.jpg,upload/jianshenqicai_tupian6.jpg', '器材介绍4', 4, 99, 99.9, 4);
INSERT INTO `jianshenqicai` VALUES (55, '2023-03-06 17:37:20', '器材编号5', '器材名称5', '器材类型5', 'upload/jianshenqicai_tupian5.jpg,upload/jianshenqicai_tupian6.jpg,upload/jianshenqicai_tupian7.jpg', '器材介绍5', 5, 99, 99.9, 5);
INSERT INTO `jianshenqicai` VALUES (56, '2023-03-06 17:37:20', '器材编号6', '器材名称6', '器材类型6', 'upload/jianshenqicai_tupian6.jpg,upload/jianshenqicai_tupian7.jpg,upload/jianshenqicai_tupian8.jpg', '器材介绍6', 6, 99, 99.9, 6);
INSERT INTO `jianshenqicai` VALUES (57, '2023-03-06 17:37:20', '器材编号7', '器材名称7', '器材类型7', 'upload/jianshenqicai_tupian7.jpg,upload/jianshenqicai_tupian8.jpg,upload/jianshenqicai_tupian9.jpg', '器材介绍7', 7, 99, 99.9, 7);
INSERT INTO `jianshenqicai` VALUES (58, '2023-03-06 17:37:20', '器材编号8', '器材名称8', '器材类型8', 'upload/jianshenqicai_tupian8.jpg,upload/jianshenqicai_tupian9.jpg,upload/jianshenqicai_tupian10.jpg', '器材介绍8', 8, 99, 99.9, 8);

-- ----------------------------
-- Table structure for jianshenshangpin
-- ----------------------------
DROP TABLE IF EXISTS `jianshenshangpin`;
CREATE TABLE `jianshenshangpin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `tupian` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `shangpinjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品介绍',
  `faburiqi` datetime(0) NULL DEFAULT NULL COMMENT '发布日期',
  `onelimittimes` int(11) NULL DEFAULT NULL COMMENT '单限',
  `alllimittimes` int(11) NULL DEFAULT NULL COMMENT '库存',
  `price` float NOT NULL COMMENT '价格',
  `vipprice` float NULL DEFAULT -1 COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jianshenshangpin
-- ----------------------------
INSERT INTO `jianshenshangpin` VALUES (141, '2023-03-06 17:37:20', '商品名称1', '商品类型1', 'upload/jianshenshangpin_tupian1.jpg,upload/jianshenshangpin_tupian2.jpg,upload/jianshenshangpin_tupian3.jpg', '商品介绍1', '2023-03-06 17:37:20', 1, 97, 99.9, 1);
INSERT INTO `jianshenshangpin` VALUES (142, '2023-03-06 17:37:20', '商品名称2', '商品类型2', 'upload/jianshenshangpin_tupian2.jpg,upload/jianshenshangpin_tupian3.jpg,upload/jianshenshangpin_tupian4.jpg', '商品介绍2', '2023-03-06 17:37:20', 2, 99, 99.9, 2);
INSERT INTO `jianshenshangpin` VALUES (143, '2023-03-06 17:37:20', '商品名称3', '商品类型3', 'upload/jianshenshangpin_tupian3.jpg,upload/jianshenshangpin_tupian4.jpg,upload/jianshenshangpin_tupian5.jpg', '商品介绍3', '2023-03-06 17:37:20', 3, 99, 99.9, 3);
INSERT INTO `jianshenshangpin` VALUES (144, '2023-03-06 17:37:20', '商品名称4', '商品类型4', 'upload/jianshenshangpin_tupian4.jpg,upload/jianshenshangpin_tupian5.jpg,upload/jianshenshangpin_tupian6.jpg', '商品介绍4', '2023-03-06 17:37:20', 4, 99, 99.9, 4);
INSERT INTO `jianshenshangpin` VALUES (145, '2023-03-06 17:37:20', '商品名称5', '商品类型5', 'upload/jianshenshangpin_tupian5.jpg,upload/jianshenshangpin_tupian6.jpg,upload/jianshenshangpin_tupian7.jpg', '商品介绍5', '2023-03-06 17:37:20', 5, 99, 99.9, 5);
INSERT INTO `jianshenshangpin` VALUES (146, '2023-03-06 17:37:20', '商品名称6', '商品类型6', 'upload/jianshenshangpin_tupian6.jpg,upload/jianshenshangpin_tupian7.jpg,upload/jianshenshangpin_tupian8.jpg', '商品介绍6', '2023-03-06 17:37:20', 6, 99, 99.9, 6);
INSERT INTO `jianshenshangpin` VALUES (147, '2023-03-06 17:37:20', '商品名称7', '商品类型7', 'upload/jianshenshangpin_tupian7.jpg,upload/jianshenshangpin_tupian8.jpg,upload/jianshenshangpin_tupian9.jpg', '商品介绍7', '2023-03-06 17:37:20', 7, 99, 99.9, 7);
INSERT INTO `jianshenshangpin` VALUES (148, '2023-03-06 17:37:20', '商品名称8', '商品类型8', 'upload/jianshenshangpin_tupian8.jpg,upload/jianshenshangpin_tupian9.jpg,upload/jianshenshangpin_tupian10.jpg', '商品介绍8', '2023-03-06 17:37:20', 8, 99, 99.9, 8);

-- ----------------------------
-- Table structure for jiaolianyuyue
-- ----------------------------
DROP TABLE IF EXISTS `jiaolianyuyue`;
CREATE TABLE `jiaolianyuyue`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练姓名',
  `changdimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '场地名称',
  `yuyueshuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '预约说明',
  `yuyueshijian` datetime(0) NOT NULL COMMENT '预约时间',
  `time_frame` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约时段',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `userid` int(20) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT NULL COMMENT '预约状态 0 已取消，1已预约，2已完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680243437696 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教练预约' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaolianyuyue
-- ----------------------------
INSERT INTO `jiaolianyuyue` VALUES (1680162325533, '2023-03-30 15:45:26', '工号2', '姓名2', '', '12', '2023-03-31 00:00:00', '9:00', '1', '姓名8', '13823888888', 18, 0);
INSERT INTO `jiaolianyuyue` VALUES (1680170725055, '2023-03-30 18:05:26', '工号3', '姓名3', '', '1', '2023-04-20 00:00:00', '14:00', '1', '姓名8', '13823888888', 18, 0);
INSERT INTO `jiaolianyuyue` VALUES (1680174531168, '2023-03-30 19:08:52', '工号1', '姓名1', '', '1', '2023-03-31 00:00:00', '14:00', '1', '姓名8', '13823888888', 18, 1);
INSERT INTO `jiaolianyuyue` VALUES (1680243376467, '2023-03-31 14:16:15', '工号1', '姓名1', '', '1', '2023-04-01 00:00:00', '9:00', '2', '姓名7', '13823888887', 17, 1);
INSERT INTO `jiaolianyuyue` VALUES (1680243425981, '2023-03-31 14:17:05', '工号1', '姓名1', '', '1', '2023-04-01 00:00:00', '14:00', '1', '姓名8', '13823888888', 18, 1);
INSERT INTO `jiaolianyuyue` VALUES (1680243437695, '2023-03-31 14:17:17', '工号2', '姓名2', '', '1', '2023-04-01 00:00:00', '9:00', '1', '姓名8', '13823888888', 18, 1);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  `rpicture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (201, '2023-03-06 17:37:20', 1, '用户名1', 'upload/messages_avatarurl1.jpg', '留言内容1', 'upload/messages_cpicture1.jpg', '回复内容1', 'upload/messages_rpicture1.jpg');
INSERT INTO `messages` VALUES (202, '2023-03-06 17:37:20', 2, '用户名2', 'upload/messages_avatarurl2.jpg', '留言内容2', 'upload/messages_cpicture2.jpg', '回复内容2', 'upload/messages_rpicture2.jpg');
INSERT INTO `messages` VALUES (203, '2023-03-06 17:37:20', 3, '用户名3', 'upload/messages_avatarurl3.jpg', '留言内容3', 'upload/messages_cpicture3.jpg', '回复内容3', 'upload/messages_rpicture3.jpg');
INSERT INTO `messages` VALUES (204, '2023-03-06 17:37:20', 4, '用户名4', 'upload/messages_avatarurl4.jpg', '留言内容4', 'upload/messages_cpicture4.jpg', '回复内容4', 'upload/messages_rpicture4.jpg');
INSERT INTO `messages` VALUES (205, '2023-03-06 17:37:20', 5, '用户名5', 'upload/messages_avatarurl5.jpg', '留言内容5', 'upload/messages_cpicture5.jpg', '回复内容5', 'upload/messages_rpicture5.jpg');
INSERT INTO `messages` VALUES (206, '2023-03-06 17:37:20', 6, '用户名6', 'upload/messages_avatarurl6.jpg', '留言内容6', 'upload/messages_cpicture6.jpg', '回复内容6', 'upload/messages_rpicture6.jpg');
INSERT INTO `messages` VALUES (207, '2023-03-06 17:37:20', 7, '用户名7', 'upload/messages_avatarurl7.jpg', '留言内容7', 'upload/messages_cpicture7.jpg', '回复内容7', 'upload/messages_rpicture7.jpg');
INSERT INTO `messages` VALUES (208, '2023-03-06 17:37:20', 8, '用户名8', 'upload/messages_avatarurl8.jpg', '留言内容8', 'upload/messages_cpicture8.jpg', '回复内容8', 'upload/messages_rpicture8.jpg');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 199 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '健身资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (191, '2023-03-06 17:37:20', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/news_picture1.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>');
INSERT INTO `news` VALUES (192, '2023-03-06 17:37:20', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/news_picture2.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>');
INSERT INTO `news` VALUES (193, '2023-03-06 17:37:20', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
INSERT INTO `news` VALUES (194, '2023-03-06 17:37:20', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>');
INSERT INTO `news` VALUES (195, '2023-03-06 17:37:20', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>');
INSERT INTO `news` VALUES (196, '2023-03-06 17:37:20', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (197, '2023-03-06 17:37:20', 'Leave未必是一种痛苦', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture7.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
INSERT INTO `news` VALUES (198, '2023-03-06 17:37:20', '坚持才会成功', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture8.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'jianshenshangpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int(11) NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `logistics` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '物流',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680244321517 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1680078323418, '2023-03-29 16:25:24', '2023329162522971', 'jianshenqicai', 18, 52, '器材名称2', 'upload/jianshenqicai_tupian2.jpg', 1, 2, 2, 2, 2, 1, '已支付', NULL, NULL, NULL, '', NULL);
INSERT INTO `orders` VALUES (1680078325972, '2023-03-29 16:25:26', '2023329162525392', 'jianshenqicai', 18, 52, '器材名称2', 'upload/jianshenqicai_tupian2.jpg', 1, 2, 2, 2, 2, 1, '已支付', NULL, NULL, NULL, '', NULL);
INSERT INTO `orders` VALUES (1680078327153, '2023-03-29 16:25:26', '2023329162525901', 'jianshenqicai', 18, 52, '器材名称2', 'upload/jianshenqicai_tupian2.jpg', 1, 2, 2, 2, 2, 1, '已支付', NULL, NULL, NULL, '', NULL);
INSERT INTO `orders` VALUES (1680244319889, '2023-03-31 14:32:00', '2023331143159514', 'jianshenshangpin', 18, 141, '商品名称1', 'upload/jianshenshangpin_tupian1.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', NULL, NULL, NULL, '', NULL);
INSERT INTO `orders` VALUES (1680244321516, '2023-03-31 14:32:01', '20233311432142', 'jianshenshangpin', 18, 141, '商品名称1', 'upload/jianshenshangpin_tupian1.jpg', 1, 99.9, 99.9, 99.9, 99.9, 1, '已支付', NULL, NULL, NULL, '', NULL);

-- ----------------------------
-- Table structure for pingfenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `pingfenxinxi`;
CREATE TABLE `pingfenxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练姓名',
  `gerenpingjia` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '个人评价',
  `pingfen` int(11) NOT NULL COMMENT '评分',
  `pingfenshijian` datetime(0) NULL DEFAULT NULL COMMENT '评分时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '评分信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingfenxinxi
-- ----------------------------
INSERT INTO `pingfenxinxi` VALUES (41, '2023-03-06 17:37:20', '工号1', '教练姓名1', '个人评价1', 10, '2023-03-06 17:37:20', '用户名1', 1, 1);
INSERT INTO `pingfenxinxi` VALUES (42, '2023-03-06 17:37:20', '工号2', '教练姓名2', '个人评价2', 10, '2023-03-06 17:37:20', '用户名2', 2, 2);
INSERT INTO `pingfenxinxi` VALUES (43, '2023-03-06 17:37:20', '工号3', '教练姓名3', '个人评价3', 10, '2023-03-06 17:37:20', '用户名3', 3, 3);
INSERT INTO `pingfenxinxi` VALUES (44, '2023-03-06 17:37:20', '工号4', '教练姓名4', '个人评价4', 10, '2023-03-06 17:37:20', '用户名4', 4, 4);
INSERT INTO `pingfenxinxi` VALUES (45, '2023-03-06 17:37:20', '工号5', '教练姓名5', '个人评价5', 10, '2023-03-06 17:37:20', '用户名5', 5, 5);
INSERT INTO `pingfenxinxi` VALUES (46, '2023-03-06 17:37:20', '工号6', '教练姓名6', '个人评价6', 10, '2023-03-06 17:37:20', '用户名6', 6, 6);
INSERT INTO `pingfenxinxi` VALUES (47, '2023-03-06 17:37:20', '工号7', '教练姓名7', '个人评价7', 10, '2023-03-06 17:37:20', '用户名7', 7, 7);
INSERT INTO `pingfenxinxi` VALUES (48, '2023-03-06 17:37:20', '工号8', '教练姓名8', '个人评价8', 10, '2023-03-06 17:37:20', '用户名8', 8, 8);

-- ----------------------------
-- Table structure for qicaizujie
-- ----------------------------
DROP TABLE IF EXISTS `qicaizujie`;
CREATE TABLE `qicaizujie`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qicaimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '器材名称',
  `qicaileixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '器材类型',
  `zujieshuliang` int(11) NOT NULL COMMENT '租借数量',
  `zulinshijian` datetime(0) NULL DEFAULT NULL COMMENT '租赁时间',
  `zulinshuoming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租赁说明',
  `zujieren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租借人',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `zhuangtai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '器材租借' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qicaizujie
-- ----------------------------
INSERT INTO `qicaizujie` VALUES (61, '2023-03-06 17:37:20', '器材名称1', '器材类型1', 1, '2023-03-06 17:37:20', '租赁说明1', '租借人1', '13823888881', '未归还');
INSERT INTO `qicaizujie` VALUES (62, '2023-03-06 17:37:20', '器材名称2', '器材类型2', 2, '2023-03-06 17:37:20', '租赁说明2', '租借人2', '13823888882', '未归还');
INSERT INTO `qicaizujie` VALUES (63, '2023-03-06 17:37:20', '器材名称3', '器材类型3', 3, '2023-03-06 17:37:20', '租赁说明3', '租借人3', '13823888883', '未归还');
INSERT INTO `qicaizujie` VALUES (64, '2023-03-06 17:37:20', '器材名称4', '器材类型4', 4, '2023-03-06 17:37:20', '租赁说明4', '租借人4', '13823888884', '未归还');
INSERT INTO `qicaizujie` VALUES (65, '2023-03-06 17:37:20', '器材名称5', '器材类型5', 5, '2023-03-06 17:37:20', '租赁说明5', '租借人5', '13823888885', '未归还');
INSERT INTO `qicaizujie` VALUES (66, '2023-03-06 17:37:20', '器材名称6', '器材类型6', 6, '2023-03-06 17:37:20', '租赁说明6', '租借人6', '13823888886', '未归还');
INSERT INTO `qicaizujie` VALUES (67, '2023-03-06 17:37:20', '器材名称7', '器材类型7', 7, '2023-03-06 17:37:20', '租赁说明7', '租借人7', '13823888887', '未归还');
INSERT INTO `qicaizujie` VALUES (68, '2023-03-06 17:37:20', '器材名称8', '器材类型8', 8, '2023-03-06 17:37:20', '租赁说明8', '租借人8', '13823888888', '未归还');

-- ----------------------------
-- Table structure for shangpinleixing
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleixing`;
CREATE TABLE `shangpinleixing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinleixing`(`shangpinleixing`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinleixing
-- ----------------------------
INSERT INTO `shangpinleixing` VALUES (131, '2023-03-06 17:37:20', '商品类型1');
INSERT INTO `shangpinleixing` VALUES (132, '2023-03-06 17:37:20', '商品类型2');
INSERT INTO `shangpinleixing` VALUES (133, '2023-03-06 17:37:20', '商品类型3');
INSERT INTO `shangpinleixing` VALUES (134, '2023-03-06 17:37:20', '商品类型4');
INSERT INTO `shangpinleixing` VALUES (135, '2023-03-06 17:37:20', '商品类型5');
INSERT INTO `shangpinleixing` VALUES (136, '2023-03-06 17:37:20', '商品类型6');
INSERT INTO `shangpinleixing` VALUES (137, '2023-03-06 17:37:20', '商品类型7');
INSERT INTO `shangpinleixing` VALUES (138, '2023-03-06 17:37:20', '商品类型8');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) NULL DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `picture` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680228926849 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1680228924882, '2023-03-31 10:15:24', 18, 71, 'jianshenkecheng', '课程名称1', 'upload/jianshenkecheng_tupian1.jpg', '1', NULL, NULL);
INSERT INTO `storeup` VALUES (1680228926848, '2023-03-31 10:15:26', 18, 71, 'jianshenkecheng', '课程名称1', 'upload/jianshenkecheng_tupian1.jpg', '1', NULL, NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NULL DEFAULT NULL COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', 'q4etwwba43xeunxy0ewbfqnw1eya850y', '2023-03-06 17:40:27', '2023-03-31 16:35:59');
INSERT INTO `token` VALUES (2, 18, '1', 'yonghu', '用户', 'qtk0i1ht9x1g3od66y0k7gw3vbagnom4', '2023-03-06 17:40:40', '2023-04-01 14:34:05');
INSERT INTO `token` VALUES (3, 28, '1', 'jianshenjiaolian', '健身教练', '548ti22jxj4zhn8w7y9afalsn2qesfd1', '2023-03-06 17:42:06', '2023-03-30 19:17:25');
INSERT INTO `token` VALUES (4, 22, '2', 'jianshenjiaolian', '健身教练', 'at7i50n8bff3qnstzh5xw9gd1g38xvxm', NULL, '2023-03-30 19:22:08');
INSERT INTO `token` VALUES (5, 17, '2', 'yonghu', '用户', 'nmlg4ven50c7emzrj4zv5iprhufuk648', NULL, '2023-03-31 15:15:48');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2023-03-06 17:37:20');

-- ----------------------------
-- Table structure for xuankexinxi
-- ----------------------------
DROP TABLE IF EXISTS `xuankexinxi`;
CREATE TABLE `xuankexinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程类型',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练姓名',
  `jiage` int(11) NULL DEFAULT NULL COMMENT '价格',
  `xiadanshijian` date NULL DEFAULT NULL COMMENT '下单时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  `curriculumlevel` int(1) NULL DEFAULT NULL COMMENT '课程层级 1普通课程 2半年卡课程 3年卡课程用户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680243387245 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '选课信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuankexinxi
-- ----------------------------
INSERT INTO `xuankexinxi` VALUES (81, '2023-03-06 17:37:20', '1111111111', '课程名称1', '课程类型1', '工号1', '教练姓名1', 1, '2023-03-06', '用户名1', '姓名1', '13823888881', 1, 1, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (82, '2023-03-06 17:37:20', '2222222222', '课程名称2', '课程类型2', '工号2', '教练姓名2', 2, '2023-03-06', '用户名2', '姓名2', '13823888882', 2, 2, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (83, '2023-03-06 17:37:20', '3333333333', '课程名称3', '课程类型3', '工号3', '教练姓名3', 3, '2023-03-06', '用户名3', '姓名3', '13823888883', 3, 3, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (84, '2023-03-06 17:37:20', '4444444444', '课程名称4', '课程类型4', '工号4', '教练姓名4', 4, '2023-03-06', '用户名4', '姓名4', '13823888884', 4, 4, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (85, '2023-03-06 17:37:20', '5555555555', '课程名称5', '课程类型5', '工号5', '教练姓名5', 5, '2023-03-06', '用户名5', '姓名5', '13823888885', 5, 5, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (86, '2023-03-06 17:37:20', '6666666666', '课程名称6', '课程类型6', '工号6', '教练姓名6', 6, '2023-03-06', '用户名6', '姓名6', '13823888886', 6, 6, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (87, '2023-03-06 17:37:20', '7777777777', '课程名称7', '课程类型7', '工号7', '教练姓名7', 7, '2023-03-06', '用户名7', '姓名7', '13823888887', 7, 7, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (88, '2023-03-06 17:37:20', '8888888888', '课程名称8', '课程类型8', '1', '教练姓名8', 8, '2023-03-06', '1', '姓名8', '13823888888', 8, 8, '未支付', NULL);
INSERT INTO `xuankexinxi` VALUES (1680230317224, '2023-03-31 10:38:37', '1680230307885', '课程名称1', '课程类型1', '工号1', '姓名1', 1, '2023-03-31', '1', '姓名8', '13823888888', 18, 71, '', 3);
INSERT INTO `xuankexinxi` VALUES (1680242132642, '2023-03-31 13:55:32', '1680242102927', '课程名称7', '课程类型7', '工号7', '教练姓名7', 0, '2023-03-31', '1', '姓名8', '13823888888', 18, 77, '会员支付', NULL);
INSERT INTO `xuankexinxi` VALUES (1680242842555, '2023-03-31 14:07:22', '1680242840569', '课程名称2', '课程类型2', '工号2', '教练姓名2', 2, '2023-03-31', '1', '姓名8', '13823888888', 18, 72, '', 2);
INSERT INTO `xuankexinxi` VALUES (1680242964958, '2023-03-31 14:09:24', '1680242955208', '课程名称3', '课程类型3', '工号3', '教练姓名3', 3, '2023-03-31', '1', '姓名8', '13823888888', 18, 73, '会员支付', 1);
INSERT INTO `xuankexinxi` VALUES (1680243387244, '2023-03-31 14:16:26', '1680243384883', '课程名称7', '课程类型7', '工号7', '教练姓名7', 7, '2023-03-31', '2', '姓名7', '13823888887', 17, 77, '已支付', 2);

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  `vip` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '会员',
  `synopsis` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '健身简介',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2023-03-06 17:37:19', '用户名1', '123456', '姓名1', 'upload/yonghu_touxiang1.jpg', '男', '年龄1', '773890001@qq.com', '13823888881', 200, '普通会员', NULL);
INSERT INTO `yonghu` VALUES (12, '2023-03-06 17:37:19', '用户名2', '123456', '姓名2', 'upload/yonghu_touxiang2.jpg', '男', '年龄2', '773890002@qq.com', '13823888882', 200, '普通会员', NULL);
INSERT INTO `yonghu` VALUES (13, '2023-03-06 17:37:19', '用户名3', '123456', '姓名3', 'upload/yonghu_touxiang3.jpg', '男', '年龄3', '773890003@qq.com', '13823888883', 200, '普通会员', NULL);
INSERT INTO `yonghu` VALUES (14, '2023-03-06 17:37:19', '用户名4', '123456', '姓名4', 'upload/yonghu_touxiang4.jpg', '男', '年龄4', '773890004@qq.com', '13823888884', 200, '普通会员', NULL);
INSERT INTO `yonghu` VALUES (15, '2023-03-06 17:37:19', '用户名5', '123456', '姓名5', 'upload/yonghu_touxiang5.jpg', '男', '年龄5', '773890005@qq.com', '13823888885', 200, '普通会员', NULL);
INSERT INTO `yonghu` VALUES (16, '2023-03-06 17:37:19', '用户名6', '123456', '姓名6', 'upload/yonghu_touxiang6.jpg', '男', '年龄6', '773890006@qq.com', '13823888886', 200, '普通会员', NULL);
INSERT INTO `yonghu` VALUES (17, '2023-03-06 17:37:19', '2', '2', '姓名7', 'upload/yonghu_touxiang7.jpg', '男', '年龄7', '773890007@qq.com', '13823888887', 200, '半年卡', NULL);
INSERT INTO `yonghu` VALUES (18, '2023-03-06 17:37:19', '1', '1', '姓名8', 'upload/yonghu_touxiang8.jpg', '男', '年龄8', '', '13823888888', 1103.2, '半年卡', '12323');

-- ----------------------------
-- Table structure for yuyuequxiao
-- ----------------------------
DROP TABLE IF EXISTS `yuyuequxiao`;
CREATE TABLE `yuyuequxiao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练姓名',
  `changdimingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '场地名称',
  `quxiaoshuoming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '取消说明',
  `quxiaoshijian` datetime(0) NULL DEFAULT NULL COMMENT '取消时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `crossuserid` bigint(20) NULL DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) NULL DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '预约取消' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuyuequxiao
-- ----------------------------
INSERT INTO `yuyuequxiao` VALUES (111, '2023-03-06 17:37:20', '工号1', '教练姓名1', '场地名称1', '取消说明1', '2023-03-06 17:37:20', '用户名1', '姓名1', '13823888881', 1, 1);
INSERT INTO `yuyuequxiao` VALUES (112, '2023-03-06 17:37:20', '工号2', '教练姓名2', '场地名称2', '取消说明2', '2023-03-06 17:37:20', '用户名2', '姓名2', '13823888882', 2, 2);
INSERT INTO `yuyuequxiao` VALUES (113, '2023-03-06 17:37:20', '工号3', '教练姓名3', '场地名称3', '取消说明3', '2023-03-06 17:37:20', '用户名3', '姓名3', '13823888883', 3, 3);
INSERT INTO `yuyuequxiao` VALUES (114, '2023-03-06 17:37:20', '工号4', '教练姓名4', '场地名称4', '取消说明4', '2023-03-06 17:37:20', '用户名4', '姓名4', '13823888884', 4, 4);
INSERT INTO `yuyuequxiao` VALUES (115, '2023-03-06 17:37:20', '工号5', '教练姓名5', '场地名称5', '取消说明5', '2023-03-06 17:37:20', '用户名5', '姓名5', '13823888885', 5, 5);
INSERT INTO `yuyuequxiao` VALUES (116, '2023-03-06 17:37:20', '工号6', '教练姓名6', '场地名称6', '取消说明6', '2023-03-06 17:37:20', '用户名6', '姓名6', '13823888886', 6, 6);
INSERT INTO `yuyuequxiao` VALUES (117, '2023-03-06 17:37:20', '工号7', '教练姓名7', '场地名称7', '取消说明7', '2023-03-06 17:37:20', '用户名7', '姓名7', '13823888887', 7, 7);
INSERT INTO `yuyuequxiao` VALUES (118, '2023-03-06 17:37:20', '工号8', '教练姓名8', '场地名称8', '取消说明8', '2023-03-06 17:37:20', '用户名8', '姓名8', '13823888888', 8, 8);

-- ----------------------------
-- Table structure for zaixianliuyan
-- ----------------------------
DROP TABLE IF EXISTS `zaixianliuyan`;
CREATE TABLE `zaixianliuyan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaolianxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练姓名',
  `liuyanneirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言内容',
  `liuyanshijian` datetime(0) NULL DEFAULT NULL COMMENT '留言时间',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1680139801827 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线留言' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zaixianliuyan
-- ----------------------------
INSERT INTO `zaixianliuyan` VALUES (31, '2023-03-06 17:37:20', '工号1', '教练姓名1', '留言内容1', '2023-03-06 17:37:20', '用户名1', '姓名1', '');
INSERT INTO `zaixianliuyan` VALUES (32, '2023-03-06 17:37:20', '工号2', '教练姓名2', '留言内容2', '2023-03-06 17:37:20', '用户名2', '姓名2', '');
INSERT INTO `zaixianliuyan` VALUES (33, '2023-03-06 17:37:20', '工号3', '教练姓名3', '留言内容3', '2023-03-06 17:37:20', '用户名3', '姓名3', '');
INSERT INTO `zaixianliuyan` VALUES (34, '2023-03-06 17:37:20', '工号4', '教练姓名4', '留言内容4', '2023-03-06 17:37:20', '用户名4', '姓名4', '');
INSERT INTO `zaixianliuyan` VALUES (35, '2023-03-06 17:37:20', '工号5', '教练姓名5', '留言内容5', '2023-03-06 17:37:20', '用户名5', '姓名5', '');
INSERT INTO `zaixianliuyan` VALUES (36, '2023-03-06 17:37:20', '工号6', '教练姓名6', '留言内容6', '2023-03-06 17:37:20', '用户名6', '姓名6', '');
INSERT INTO `zaixianliuyan` VALUES (37, '2023-03-06 17:37:20', '工号7', '教练姓名7', '留言内容7', '2023-03-06 17:37:20', '用户名7', '姓名7', '');
INSERT INTO `zaixianliuyan` VALUES (38, '2023-03-06 17:37:20', '工号8', '教练姓名8', '留言内容8', '2023-03-06 17:37:20', '用户名8', '姓名8', '');
INSERT INTO `zaixianliuyan` VALUES (1680139801826, '2023-03-30 09:30:02', '工号1', '姓名1', '1', '2023-03-30 09:29:57', '1', '姓名8', NULL);

SET FOREIGN_KEY_CHECKS = 1;
