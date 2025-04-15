/*
 Navicat Premium Data Transfer

 Source Server         : bing6749
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : 121.41.46.15:3306
 Source Schema         : CS_83646

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 15/04/2025 23:12:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_token
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;
CREATE TABLE `access_token`  (
  `token_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '临时访问牌',
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `maxage` int NOT NULL DEFAULT 2 COMMENT '最大寿命：默认2小时',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `user_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户编号:',
  PRIMARY KEY (`token_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 129 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '登陆访问时长' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO `access_token` VALUES (57, '5accf85cb6a7f06f0aa2968deadaec1b', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (58, '46ff1d4d07714f046ba07b34bffe0af9', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (59, 'ed9d6cba9826fda1beafcd9326be7a86', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (60, 'c99763c1833ea0785d9e2b81da3fd28f', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (61, '33fbfaccd6d1cb9143e4129bd919d4b0', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (62, '493e13da5f293ba67a56a0fe3e1fa6cf', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (63, 'c4b48e9e2160db09c703041a8fee0a1f', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (64, 'd13cdaefd3823c360c959a02a262f71d', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (65, '6c6ff426fd77ea5a2025ce5ed2e42c8a', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (66, '80930065a61ffcdd5cbb75f60932973c', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (67, '94114763cf2e3b020495d8a27096d4ef', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (68, '761052c551c97c9317bc3aa475c85b84', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (69, '7c44ef14131a0ba7c16aa16cef104065', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (70, '96380f3d9542c80d04bdade1cf7635a5', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (71, 'bfdc7acfcbf5763fda81945b60961222', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (72, '170a598e51ae8ae2badde20a42fe171d', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (73, 'c82c357488c75926a92d8a9608d4b367', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (74, '4d35290c023f407a820f37dbbb1ceb09', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (75, '8d19162776682b695c0f62f3c7a92fec', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (76, 'a7ea2cdc9a2be179e19200e593ad5a69', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (77, 'c79a554f9832adc01f19682c5d576bc4', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (78, '1c7d95001fa09951a679841c8100ad1f', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (79, '776da1bcdd01ddb3cbf0a37fa13fc5b0', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (80, 'd336e88e57c329d0166931292c1fac41', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (81, '37a40f526a6c82fc6110b512802d35bf', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (82, '691ad331771f4109206d58aeee572371', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (83, '9942e458886219960d3344b4a6a6fbec', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (84, 'e9939a8b7ccf9f548f0bbb5664981f96', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (85, 'f5b27912060d1909bef61fab9d96faae', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (86, '7c5888682f1d449eb1b62f0054a79fbf', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (87, '00dfdc6ac21c4a9da80fd71c990764d1', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (88, '3cce592bc72840ab932ce96d85a194da', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (89, '43fdaa989a644ad683ef4b4d488e8629', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (90, 'd6a3cecadacff0dbd6b43b25372cc2a2', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (91, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (92, '5570bc5b07b3589f4ef8553bd46eb0d1', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (93, '26c553bd2ee2ab6605d18dfd310d85f9', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (94, '3fd52f81236ed2c37ff91a6696d4e47a', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (95, '893332e9ee67d60d8312b3700c58a359', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (96, 'b7844068ade535b2e517df4a40948703', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (97, '179b37a5e1893c3af6b946bd5a1c8625', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (98, '3a47b8a040a83ebbc9194cb255dc668c', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (99, 'afa60196afb77dcc2b520ed13a817560', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (100, '7fc6d9b324f8c0a3a1784d04ef132692', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (101, '84e31b291f2bde6b7ceb27af5fe8eee3', NULL, 2, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `access_token` VALUES (102, 'e4c5e85fd333484889f2d6e118343bd2', NULL, 2, '2025-02-19 20:26:54', '2025-02-19 20:26:54', 1);
INSERT INTO `access_token` VALUES (103, 'b877f2c9e542425d87a436280ca96604', NULL, 2, '2025-02-19 21:57:34', '2025-02-19 21:57:34', 1);
INSERT INTO `access_token` VALUES (104, '6e3aafd9e62b4b509ed4869d237788ce', NULL, 2, '2025-02-20 10:41:29', '2025-02-20 10:41:29', 1);
INSERT INTO `access_token` VALUES (105, 'da3c575323164c8e877b64fbcc224f0b', NULL, 2, '2025-02-20 10:49:55', '2025-02-20 10:49:55', 1);
INSERT INTO `access_token` VALUES (106, '03889bc38bc44315b1ec4f02b2373f40', NULL, 2, '2025-03-19 06:34:14', '2025-03-19 06:34:14', 1);
INSERT INTO `access_token` VALUES (107, '36f7bf3fb1294b75a6dd95e29bb0e3e6', NULL, 2, '2025-03-19 07:05:40', '2025-03-19 07:05:40', 1);
INSERT INTO `access_token` VALUES (108, '548c62d9bd43437b8fb4b665cb02f6da', NULL, 2, '2025-03-19 07:06:22', '2025-03-19 07:06:22', 1);
INSERT INTO `access_token` VALUES (109, 'b59e942f95704808becf557c50ab3744', NULL, 2, '2025-03-19 07:21:06', '2025-03-19 07:21:06', 1);
INSERT INTO `access_token` VALUES (110, '5916914131784d01ac47bac8db200ccf', NULL, 2, '2025-03-19 07:23:52', '2025-03-19 07:23:52', 1);
INSERT INTO `access_token` VALUES (111, 'd1313dcc54a947a6ac27a4a5147557eb', NULL, 2, '2025-03-19 07:26:35', '2025-03-19 07:26:35', 2);
INSERT INTO `access_token` VALUES (112, '7cc280379a7146e6872c490eafd985d3', NULL, 2, '2025-03-19 10:18:01', '2025-03-19 10:18:01', 1);
INSERT INTO `access_token` VALUES (115, '7e4e5700c33d466fafc918f503ef700d', NULL, 2, '2025-03-19 15:10:40', '2025-03-19 15:10:40', 1);
INSERT INTO `access_token` VALUES (114, 'dbd3c3b8aa024a08935bff0ed0c010b1', NULL, 2, '2025-03-19 13:09:37', '2025-03-19 13:09:37', 1);
INSERT INTO `access_token` VALUES (116, '88579b96e34441e8907957a85a58b911', NULL, 2, '2025-03-19 15:33:32', '2025-03-19 15:33:32', 1);
INSERT INTO `access_token` VALUES (117, '3257b48522de4fa9b585850c3b014798', NULL, 2, '2025-03-19 16:44:32', '2025-03-19 16:44:32', 1);
INSERT INTO `access_token` VALUES (118, '8c5d75bd6e6f48ccabb22274dc7c16f5', NULL, 2, '2025-03-21 09:13:21', '2025-03-21 09:13:21', 1);
INSERT INTO `access_token` VALUES (119, '1ed30f2372d34883aef19abea4d34ea9', NULL, 2, '2025-03-21 09:14:05', '2025-03-21 09:14:05', 1);
INSERT INTO `access_token` VALUES (120, 'c1d7a6395bc74a578987b208414cdfaf', NULL, 2, '2025-03-21 11:43:18', '2025-03-21 11:43:18', 1);
INSERT INTO `access_token` VALUES (121, '437f7142144a433b8b5c0135f4b0c2b9', NULL, 2, '2025-03-21 11:49:41', '2025-03-21 11:49:41', 1);
INSERT INTO `access_token` VALUES (122, '4168df3ba47e41ca9d7808f73301fd42', NULL, 2, '2025-03-21 11:54:32', '2025-03-21 11:54:32', 2);
INSERT INTO `access_token` VALUES (123, 'd15e7e94b0284844a480e98320ce955b', NULL, 2, '2025-03-21 12:02:03', '2025-03-21 12:02:03', 1);
INSERT INTO `access_token` VALUES (124, '13226f26e59741e5b85837f65569649a', NULL, 2, '2025-03-21 12:02:05', '2025-03-21 12:02:05', 1);
INSERT INTO `access_token` VALUES (125, 'e0ad02ec7a5c45968a79afc04e0bc75b', NULL, 2, '2025-03-21 12:02:37', '2025-03-21 12:02:37', 1);
INSERT INTO `access_token` VALUES (126, 'f53301096d234eb09d2393259c217b10', NULL, 2, '2025-03-23 12:54:36', '2025-03-23 12:54:36', 1);
INSERT INTO `access_token` VALUES (127, '0161a105bbf045d98e6069345b5cb75d', NULL, 2, '2025-03-30 07:37:26', '2025-03-30 07:37:26', 1);
INSERT INTO `access_token` VALUES (128, '7437136d56d841d0bf67eeafea267cfc', NULL, 2, '2025-04-15 10:39:13', '2025-04-15 10:39:13', 1);
INSERT INTO `access_token` VALUES (129, '14c38cd696d24a5f8dd27b118836d84b', NULL, 2, '2025-04-15 14:33:16', '2025-04-15 14:33:16', 1);

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '收货地址：',
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名：',
  `phone` varchar(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机：',
  `postcode` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮编：',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址：',
  `user_id` mediumint UNSIGNED NOT NULL COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '默认判断',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收货地址：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (3, '田七', '13590509090', NULL, '广州市越秀区东风西路187号', 1, '2023-03-31 18:21:49', '2023-03-31 18:21:49', 1);
INSERT INTO `address` VALUES (4, '0', '19817804382', NULL, '温州商学院', 2, '2025-03-19 07:27:27', '2025-03-19 07:27:42', 1);
INSERT INTO `address` VALUES (5, '1', '19817804382', NULL, '温州', 2, '2025-03-21 11:53:31', '2025-03-21 11:53:31', 0);

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`  (
  `auth_id` int NOT NULL AUTO_INCREMENT COMMENT '授权 ID',
  `user_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户组',
  `mod_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模块名',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '表名',
  `page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '页面标题',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '路由路径',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '位置',
  `mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跳转方式',
  `add` int NOT NULL COMMENT '是否可增加',
  `del` int NOT NULL COMMENT '是否可删除',
  `set` int NOT NULL COMMENT '是否可修改',
  `get` int NOT NULL COMMENT '是否可查看',
  `field_add` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '添加字段',
  `field_set` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改字段',
  `field_get` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '查询字段',
  `table_nav_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '跨表导航名称',
  `table_nav` tinyint(1) NULL DEFAULT NULL COMMENT '是否跨表操作',
  `option` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '配置',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定制授权表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES (1, '管理员', '系统用户', 'system_user', '系统用户', '/system_user/table', '', '_blank', 1, 1, 1, 1, 'user_no,user_name', 'user_no,user_name', 'user_no,user_name', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (2, '管理员', '系统用户', 'system_user', '系统用户详情', '/system_user/view', '', '_blank', 1, 1, 1, 1, 'user_no,user_name', 'user_no,user_name', 'user_no,user_name', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (3, '管理员', '商城中心', 'mall_center', '商城中心', '/mall_center/table', '', '_blank', 1, 1, 1, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"can_show_comment\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (4, '管理员', '商城中心', 'mall_center', '商城中心详情', '/mall_center/view', '', '_blank', 1, 1, 1, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (5, '管理员', '商城中心', 'mall_center', '商城中心', '/mall_center/list', '', '_blank', 1, 1, 1, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"cart_page\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (6, '管理员', '商城中心', 'mall_center', '商城中心详情', '/mall_center/details', '', '_blank', 1, 1, 1, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"can_comment\":true,\"can_show_comment\":true,\"cart_page\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (7, '管理员', '限时秒杀', 'time_limited_second_kill', '限时秒杀', '/time_limited_second_kill/table', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (8, '管理员', '限时秒杀', 'time_limited_second_kill', '限时秒杀详情', '/time_limited_second_kill/view', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (9, '管理员', '限时秒杀', 'time_limited_second_kill', '限时秒杀', '/time_limited_second_kill/list', 'top', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (10, '管理员', '限时秒杀', 'time_limited_second_kill', '限时秒杀详情', '/time_limited_second_kill/details', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (11, '管理员', '类型', 'type', '类型', '/type/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (12, '管理员', '类型', 'type', '类型详情', '/type/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (13, '管理员', '秒杀订单', 'second_kill_order', '秒杀订单', '/second_kill_order/table', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{\"pay\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (14, '管理员', '秒杀订单', 'second_kill_order', '秒杀订单详情', '/second_kill_order/view', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (15, '管理员', '秒杀订单', 'second_kill_order', '秒杀订单', '/second_kill_order/edit', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (16, '管理员', '每日特价', 'daily_specials', '每日特价', '/daily_specials/table', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (17, '管理员', '每日特价', 'daily_specials', '每日特价详情', '/daily_specials/view', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (18, '管理员', '每日特价', 'daily_specials', '每日特价', '/daily_specials/list', 'top', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (19, '管理员', '每日特价', 'daily_specials', '每日特价详情', '/daily_specials/details', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (20, '管理员', '特价订单', 'special_order', '特价订单', '/special_order/table', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{\"pay\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (21, '管理员', '特价订单', 'special_order', '特价订单详情', '/special_order/view', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (22, '管理员', '特价订单', 'special_order', '特价订单', '/special_order/edit', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (23, '管理员', '我的收藏', 'collect', '我的收藏', '/collect/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (24, '管理员', '订单', 'order', '订单列表', '/order/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{\"print\":true,\"export_db\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (25, '管理员', '订单', 'order', '订单详情', '/order/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{\"print\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (26, '管理员', '订单', 'order', '我的订单', '/order/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (27, '管理员', '订单', 'order', '订单详情', '/order/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{\"can_comment\":true,\"can_score\":true,\"can_show_comment\":true,\"can_show_score\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (28, '管理员', '商品', 'goods', '商品列表', '/goods/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{\"print\":true,\"export_db\":true,\"import_db\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (29, '管理员', '商品', 'goods', '商品详情', '/goods/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{\"print\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (30, '管理员', '商品', 'goods', '商品列表', '/goods/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (31, '管理员', '商品', 'goods', '商品详情', '/goods/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{\"can_comment\":true,\"can_score\":true,\"can_show_comment\":true,\"can_show_score\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (32, '管理员', '收货地址', 'address', '收货地址', '/address/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (33, '管理员', '收货地址', 'address', '地址详情', '/address/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (34, '管理员', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (35, '管理员', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (36, '管理员', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (37, '管理员', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (38, '游客', '系统用户', 'system_user', '系统用户', '/system_user/table', '', '_blank', 1, 0, 0, 0, 'user_no,user_name', 'user_no,user_name', 'user_no,user_name', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (39, '游客', '系统用户', 'system_user', '系统用户详情', '/system_user/view', '', '_blank', 1, 0, 0, 0, 'user_no,user_name', 'user_no,user_name', 'user_no,user_name', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (40, '游客', '商城中心', 'mall_center', '商城中心', '/mall_center/table', '', '_blank', 0, 0, 0, 0, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"can_show_comment\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (41, '游客', '商城中心', 'mall_center', '商城中心详情', '/mall_center/view', '', '_blank', 0, 0, 0, 0, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (42, '游客', '商城中心', 'mall_center', '商城中心', '/mall_center/list', '', '_blank', 0, 0, 0, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"cart_page\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (43, '游客', '商城中心', 'mall_center', '商城中心详情', '/mall_center/details', '', '_blank', 0, 0, 0, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"can_comment\":false,\"can_show_comment\":false,\"cart_page\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (44, '游客', '限时秒杀', 'time_limited_second_kill', '限时秒杀', '/time_limited_second_kill/table', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (45, '游客', '限时秒杀', 'time_limited_second_kill', '限时秒杀详情', '/time_limited_second_kill/view', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (46, '游客', '限时秒杀', 'time_limited_second_kill', '限时秒杀', '/time_limited_second_kill/list', 'top', '_blank', 0, 0, 0, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (47, '游客', '限时秒杀', 'time_limited_second_kill', '限时秒杀详情', '/time_limited_second_kill/details', '', '_blank', 0, 0, 0, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (48, '游客', '类型', 'type', '类型', '/type/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (49, '游客', '类型', 'type', '类型详情', '/type/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (50, '游客', '秒杀订单', 'second_kill_order', '秒杀订单', '/second_kill_order/table', '', '_blank', 0, 0, 0, 0, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{\"pay\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (51, '游客', '秒杀订单', 'second_kill_order', '秒杀订单详情', '/second_kill_order/view', '', '_blank', 0, 0, 0, 0, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (52, '游客', '秒杀订单', 'second_kill_order', '秒杀订单', '/second_kill_order/edit', '', '_blank', 0, 0, 0, 0, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (53, '游客', '每日特价', 'daily_specials', '每日特价', '/daily_specials/table', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (54, '游客', '每日特价', 'daily_specials', '每日特价详情', '/daily_specials/view', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (55, '游客', '每日特价', 'daily_specials', '每日特价', '/daily_specials/list', 'top', '_blank', 0, 0, 0, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (56, '游客', '每日特价', 'daily_specials', '每日特价详情', '/daily_specials/details', '', '_blank', 0, 0, 0, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (57, '游客', '特价订单', 'special_order', '特价订单', '/special_order/table', '', '_blank', 0, 0, 0, 0, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{\"pay\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (58, '游客', '特价订单', 'special_order', '特价订单详情', '/special_order/view', '', '_blank', 0, 0, 0, 0, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (59, '游客', '特价订单', 'special_order', '特价订单', '/special_order/edit', '', '_blank', 0, 0, 0, 0, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (60, '游客', '我的收藏', 'collect', '我的收藏', '/collect/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (61, '游客', '订单', 'order', '订单列表', '/order/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"print\":false,\"export_db\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (62, '游客', '订单', 'order', '订单详情', '/order/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"print\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (63, '游客', '订单', 'order', '我的订单', '/order/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (64, '游客', '订单', 'order', '订单详情', '/order/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"can_comment\":false,\"can_score\":false,\"can_show_comment\":false,\"can_show_score\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (65, '游客', '商品', 'goods', '商品列表', '/goods/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"print\":false,\"export_db\":false,\"import_db\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (66, '游客', '商品', 'goods', '商品详情', '/goods/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"print\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (67, '游客', '商品', 'goods', '商品列表', '/goods/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (68, '游客', '商品', 'goods', '商品详情', '/goods/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"can_comment\":false,\"can_score\":false,\"can_show_comment\":false,\"can_show_score\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (69, '游客', '收货地址', 'address', '收货地址', '/address/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (70, '游客', '收货地址', 'address', '地址详情', '/address/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (71, '游客', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (72, '游客', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (73, '游客', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (74, '游客', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (75, '系统用户', '系统用户', 'system_user', '系统用户', '/system_user/table', '', '_blank', 0, 0, 0, 0, 'user_no,user_name', 'user_no,user_name', 'user_no,user_name', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (76, '系统用户', '系统用户', 'system_user', '系统用户详情', '/system_user/view', '', '_blank', 0, 0, 0, 0, 'user_no,user_name', 'user_no,user_name', 'user_no,user_name', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (77, '系统用户', '商城中心', 'mall_center', '商城中心', '/mall_center/table', '', '_blank', 0, 0, 0, 0, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"can_show_comment\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (78, '系统用户', '商城中心', 'mall_center', '商城中心详情', '/mall_center/view', '', '_blank', 0, 0, 0, 0, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (79, '系统用户', '商城中心', 'mall_center', '商城中心', '/mall_center/list', '', '_blank', 0, 0, 0, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"cart_page\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (80, '系统用户', '商城中心', 'mall_center', '商城中心详情', '/mall_center/details', '', '_blank', 0, 0, 0, 1, 'specifications,weight,flavor', 'specifications,weight,flavor', 'specifications,weight,flavor', NULL, 0, '{\"can_comment\":true,\"can_show_comment\":true,\"cart_page\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (81, '系统用户', '限时秒杀', 'time_limited_second_kill', '限时秒杀', '/time_limited_second_kill/table', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (82, '系统用户', '限时秒杀', 'time_limited_second_kill', '限时秒杀详情', '/time_limited_second_kill/view', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (83, '系统用户', '限时秒杀', 'time_limited_second_kill', '限时秒杀', '/time_limited_second_kill/list', 'top', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (84, '系统用户', '限时秒杀', 'time_limited_second_kill', '限时秒杀详情', '/time_limited_second_kill/details', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,price_spike,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (85, '系统用户', '类型', 'type', '类型', '/type/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (86, '系统用户', '类型', 'type', '类型详情', '/type/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (87, '系统用户', '秒杀订单', 'second_kill_order', '秒杀订单', '/second_kill_order/table', '', '_blank', 0, 0, 0, 1, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{\"pay\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (88, '系统用户', '秒杀订单', 'second_kill_order', '秒杀订单详情', '/second_kill_order/view', '', '_blank', 0, 0, 0, 1, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (89, '系统用户', '秒杀订单', 'second_kill_order', '秒杀订单', '/second_kill_order/edit', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,price_spike,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (90, '系统用户', '每日特价', 'daily_specials', '每日特价', '/daily_specials/table', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (91, '系统用户', '每日特价', 'daily_specials', '每日特价详情', '/daily_specials/view', '', '_blank', 0, 0, 0, 0, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (92, '系统用户', '每日特价', 'daily_specials', '每日特价', '/daily_specials/list', 'top', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (93, '系统用户', '每日特价', 'daily_specials', '每日特价详情', '/daily_specials/details', '', '_blank', 1, 1, 1, 1, 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', 'product_name,type,specifications,weight,flavor,original_price,current_special_price,quality_guarantee_period,picture', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (94, '系统用户', '特价订单', 'special_order', '特价订单', '/special_order/table', '', '_blank', 0, 0, 0, 1, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{\"pay\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (95, '系统用户', '特价订单', 'special_order', '特价订单详情', '/special_order/view', '', '_blank', 0, 0, 0, 1, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (96, '系统用户', '特价订单', 'special_order', '特价订单', '/special_order/edit', '', '_blank', 1, 1, 1, 1, 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', 'order_no,product_name,type,specifications,weight,flavor,current_special_price,picture,user_no,user_name,picking_type,contact_number,address', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (97, '系统用户', '我的收藏', 'collect', '我的收藏', '/collect/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (98, '系统用户', '订单', 'order', '订单列表', '/order/table', '', '_blank', 0, 1, 0, 1, '', '', '', NULL, 0, '{\"print\":false,\"export_db\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (99, '系统用户', '订单', 'order', '订单详情', '/order/view', '', '_blank', 0, 1, 0, 1, '', '', '', NULL, 0, '{\"print\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (100, '系统用户', '订单', 'order', '我的订单', '/order/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (101, '系统用户', '订单', 'order', '订单详情', '/order/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{\"can_comment\":true,\"can_score\":true,\"can_show_comment\":true,\"can_show_score\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (102, '系统用户', '商品', 'goods', '商品列表', '/goods/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"print\":false,\"export_db\":false,\"import_db\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (103, '系统用户', '商品', 'goods', '商品详情', '/goods/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{\"print\":false}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (104, '系统用户', '商品', 'goods', '商品列表', '/goods/list', '', '_blank', 0, 0, 0, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (105, '系统用户', '商品', 'goods', '商品详情', '/goods/details', '', '_blank', 0, 0, 0, 1, '', '', '', NULL, 0, '{\"can_comment\":true,\"can_score\":true,\"can_show_comment\":true,\"can_show_score\":true}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (106, '系统用户', '收货地址', 'address', '收货地址', '/address/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (107, '系统用户', '收货地址', 'address', '地址详情', '/address/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (108, '系统用户', '评论', 'comment', '评论列表', '/comment/table', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (109, '系统用户', '评论', 'comment', '评论详情', '/comment/view', '', '_blank', 0, 0, 0, 0, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (110, '系统用户', '评论', 'comment', '我的评论', '/comment/list', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `auth` VALUES (111, '系统用户', '评论', 'comment', '评论详情', '/comment/details', '', '_blank', 1, 1, 1, 1, '', '', '', NULL, 0, '{}', '2023-02-08 14:48:37', '2023-02-08 14:48:37');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cart_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '购物车ID：',
  `title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0' COMMENT '图片：',
  `user_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `state` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态：使用中，已失效',
  `price` double(8, 2) NOT NULL DEFAULT 0.00 COMMENT '单价：',
  `price_ago` double(8, 2) NOT NULL DEFAULT 0.00 COMMENT '原价：',
  `price_count` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '总价：',
  `num` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '数量：',
  `goods_id` mediumint UNSIGNED NOT NULL COMMENT '商品id：[0,8388607]',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  PRIMARY KEY (`cart_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `collect_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '收藏ID：',
  `user_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '收藏人ID：',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题：',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '封面：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`collect_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 1, 'goods', 'goods_id', 1, '测试商品1', '/api/upload/good_1.jpg', '2025-02-20 10:44:13', '2025-02-20 10:44:13');
INSERT INTO `collect` VALUES (2, 1, 'goods', 'goods_id', 2, '测试商品2', '/api/upload/good_2.jpg', '2025-02-20 10:44:17', '2025-02-20 10:44:17');
INSERT INTO `collect` VALUES (3, 0, 'daily_specials', 'daily_specials_id', 6, '品名6', '/api/upload/1585462586395066368.jpg', '2025-03-19 07:25:56', '2025-03-19 07:25:56');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论ID：',
  `user_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论人ID：',
  `reply_to_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '回复评论ID：空为0',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容：',
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '昵称：',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '评论：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for commodity_type
-- ----------------------------
DROP TABLE IF EXISTS `commodity_type`;
CREATE TABLE `commodity_type`  (
  `commodity_type_id` int NOT NULL AUTO_INCREMENT COMMENT '商品类型ID',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `recommend` int NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`commodity_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of commodity_type
-- ----------------------------
INSERT INTO `commodity_type` VALUES (1, '类型1', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `commodity_type` VALUES (2, '类型2', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `commodity_type` VALUES (3, '类型3', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `commodity_type` VALUES (4, '类型4', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `commodity_type` VALUES (5, '类型5', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `commodity_type` VALUES (6, '类型6', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `commodity_type` VALUES (7, '类型7', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `commodity_type` VALUES (8, '类型8', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');

-- ----------------------------
-- Table structure for daily_specials
-- ----------------------------
DROP TABLE IF EXISTS `daily_specials`;
CREATE TABLE `daily_specials`  (
  `daily_specials_id` int NOT NULL AUTO_INCREMENT COMMENT '每日特价ID',
  `product_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '品名',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `specifications` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `weight` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '重量',
  `flavor` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '口味',
  `original_price` int NULL DEFAULT 0 COMMENT '原价',
  `current_special_price` int NULL DEFAULT 0 COMMENT '现特价',
  `quality_guarantee_period` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '保质期',
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `hits` int NOT NULL DEFAULT 0 COMMENT '点击数',
  `praise_len` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `recommend` int NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`daily_specials_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '每日特价' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of daily_specials
-- ----------------------------
INSERT INTO `daily_specials` VALUES (1, '品名1', '类型1', '规格1', '重量1', '口味1', 1, 1, '保质期1', '/api/upload/1585462332278964224.jpg', 577, 343, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `daily_specials` VALUES (2, '品名2', '类型2', '规格2', '重量2', '口味2', 2, 2, '保质期2', '/api/upload/1585462630112296961.jpg', 518, 62, 0, '2023-02-08 14:48:37', '2025-03-21 11:52:24');
INSERT INTO `daily_specials` VALUES (3, '品名3', '类型3', '规格3', '重量3', '口味3', 3, 3, '保质期3', '/api/upload/1585462415535898625.jpg', 851, 245, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `daily_specials` VALUES (4, '品名4', '类型4', '规格4', '重量4', '口味4', 4, 4, '保质期4', '/api/upload/1585462454614228992.jpg', 860, 216, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `daily_specials` VALUES (5, '品名5', '类型5', '规格5', '重量5', '口味5', 5, 5, '保质期5', '/api/upload/1585462505113649153.jpg', 208, 870, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `daily_specials` VALUES (6, '品名6', '类型6', '规格6', '重量6', '口味6', 6, 6, '保质期6', '/api/upload/1585462586395066368.jpg', 535, 844, 0, '2023-02-08 14:48:37', '2025-03-19 07:25:54');
INSERT INTO `daily_specials` VALUES (7, '品名7', '类型7', '规格7', '重量7', '口味7', 7, 7, '保质期7', '/api/upload/1585462372338761728.jpg', 892, 150, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `daily_specials` VALUES (8, '品名8', '类型8', '规格8', '重量8', '口味8', 8, 8, '保质期8', '/api/upload/1585462283427905537.jpg', 257, 276, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goods_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '产品id：[0,8388607]',
  `title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题：[0,125]用于产品和html的<title>标签中',
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '封面图：用于显示于产品列表页',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `price_ago` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '原价：[1]',
  `price` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '卖价：[1]',
  `sales` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '销量：[0,1000000000]',
  `inventory` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '商品库存',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '商品分类：',
  `hits` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击量：[0,1000000000]访问这篇产品的人次',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文：产品的主体内容',
  `img_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图1：',
  `img_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图2：',
  `img_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图3：',
  `img_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图4：',
  `img_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图5：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `customize_field` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '自定义字段',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `user_id` int UNSIGNED NULL DEFAULT 0 COMMENT '添加人',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品信息：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '测试商品1', '/api/upload/good_1.jpg', '测试商品1', 110.00, 99.00, 0, 74, '分类一', 0, '<p>11111</p>', '/api/upload/img_1_1.jpg', '/api/upload/img_1_2.jpg', '/api/upload/img_1_3.jpg', '/api/upload/img_1_4.jpg', '/api/upload/img_1_5.jpg', '2023-03-31 18:21:49', '2025-04-15 15:10:19', '[{\"field_name\":\"规格\",\"field_value\":\"规格1\"},{\"field_name\":\"重量\",\"field_value\":\"重量1\"},{\"field_name\":\"口味\",\"field_value\":\"口味1\"}]', 'mall_center', 'mall_center_id', 1, 1);
INSERT INTO `goods` VALUES (2, '测试商品2', '/api/upload/good_2.jpg', '测试商品2', 220.00, 110.00, 0, 10, '分类二', 0, '', '/api/upload/img_2_1.jpg', '/api/upload/img_2_2.jpg', '/api/upload/img_2_3.jpg', '/api/upload/img_2_4.jpg', '/api/upload/img_2_5.jpg', '2023-03-31 18:21:49', '2025-02-19 20:20:33', '[{\"field_name\":\"规格\",\"field_value\":\"规格2\"},{\"field_name\":\"重量\",\"field_value\":\"重量2\"},{\"field_name\":\"口味\",\"field_value\":\"口味2\"}]', 'mall_center', 'mall_center_id', 2, 1);
INSERT INTO `goods` VALUES (3, '测试商品3', '/api/upload/good_3.jpg', '测试商品3', 20.00, 10.00, 0, 10, '分类二', 0, '', '/api/upload/img_3_1.jpg', '/api/upload/img_3_2.jpg', '/api/upload/img_3_3.jpg', '/api/upload/img_3_4.jpg', '/api/upload/img_3_5.jpg', '2023-03-31 18:21:49', '2025-02-19 20:20:33', '[{\"field_name\":\"规格\",\"field_value\":\"规格3\"},{\"field_name\":\"重量\",\"field_value\":\"重量3\"},{\"field_name\":\"口味\",\"field_value\":\"口味3\"}]', 'mall_center', 'mall_center_id', 3, 1);
INSERT INTO `goods` VALUES (4, '测试商品4', '/api/upload/good_4.jpg', '测试商品4', 199.00, 99.00, 0, 20, '分类二', 0, '', '/api/upload/img_4_1.jpg', '/api/upload/img_4_2.jpg', '/api/upload/img_4_3.jpg', '/api/upload/img_4_4.jpg', '/api/upload/img_4_5.jpg', '2023-03-31 18:21:49', '2025-02-19 20:20:33', '[{\"field_name\":\"规格\",\"field_value\":\"规格4\"},{\"field_name\":\"重量\",\"field_value\":\"重量4\"},{\"field_name\":\"口味\",\"field_value\":\"口味4\"}]', 'mall_center', 'mall_center_id', 4, 1);
INSERT INTO `goods` VALUES (5, '测试商品5', '/api/upload/good_5.jpg', '测试商品5', 110.00, 99.00, 0, 30, '分类二', 0, '', '/api/upload/img_5_1.jpg', '/api/upload/img_5_2.jpg', '/api/upload/img_5_3.jpg', '/api/upload/img_5_4.jpg', '/api/upload/img_5_5.jpg', '2023-03-31 18:21:49', '2025-02-19 20:20:33', '[{\"field_name\":\"规格\",\"field_value\":\"规格5\"},{\"field_name\":\"重量\",\"field_value\":\"重量5\"},{\"field_name\":\"口味\",\"field_value\":\"口味5\"}]', 'mall_center', 'mall_center_id', 5, 1);
INSERT INTO `goods` VALUES (6, '测试商品6', '/api/upload/good_6.jpg', '测试商品6', 999.00, 888.00, 0, 40, '分类三', 0, '', '/api/upload/img_6_1.jpg', '/api/upload/img_6_2.jpg', '/api/upload/img_6_3.jpg', '/api/upload/img_6_4.jpg', '/api/upload/img_6_5.jpg', '2023-03-31 18:21:49', '2025-02-19 20:20:33', '[{\"field_name\":\"规格\",\"field_value\":\"规格6\"},{\"field_name\":\"重量\",\"field_value\":\"重量6\"},{\"field_name\":\"口味\",\"field_value\":\"口味6\"}]', 'mall_center', 'mall_center_id', 6, 1);
INSERT INTO `goods` VALUES (7, '测试商品7', '/api/upload/good_7.jpg', '测试商品7', 20.00, 220.00, 0, 110, '分类一', 0, '<p>测试商品7</p>', '/api/upload/img_7_1.jpg', '/api/upload/img_7_2.jpg', '/api/upload/img_7_3.jpg', '/api/upload/img_7_4.jpg', '/api/upload/img_7_5.jpg', '2023-03-31 18:21:49', '2025-02-19 20:20:33', '[{\"field_name\":\"规格\",\"field_value\":\"规格7\"},{\"field_name\":\"重量\",\"field_value\":\"重量7\"},{\"field_name\":\"口味\",\"field_value\":\"口味7\"}]', 'mall_center', 'mall_center_id', 7, 1);
INSERT INTO `goods` VALUES (8, '测试商品8', '/api/upload/good_8.jpg', '测试商品8', 20.00, 30.00, 0, 30, '分类二', 0, '', '/api/upload/img_8_1.jpg', '/api/upload/img_8_2.jpg', '/api/upload/img_8_3.jpg', '/api/upload/img_8_4.jpg', '/api/upload/img_8_5.jpg', '2023-03-31 18:21:49', '2025-02-19 20:20:33', '[{\"field_name\":\"规格\",\"field_value\":\"规格8\"},{\"field_name\":\"重量\",\"field_value\":\"重量8\"},{\"field_name\":\"口味\",\"field_value\":\"口味8\"}]', 'mall_center', 'mall_center_id', 8, 1);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `type_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品分类ID：',
  `father_id` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT '上级分类ID：[0,32767]',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称：',
  `desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述：',
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图标：',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (1, 0, '分类一', '', '', NULL, NULL, '2023-03-31 18:21:49', '2023-03-31 18:21:49');
INSERT INTO `goods_type` VALUES (2, 0, '分类二', '', '', NULL, NULL, '2023-03-31 18:21:49', '2023-03-31 18:21:49');
INSERT INTO `goods_type` VALUES (3, 0, '分类三', '', '', NULL, NULL, '2023-03-31 18:21:49', '2023-03-31 18:21:49');

-- ----------------------------
-- Table structure for hits
-- ----------------------------
DROP TABLE IF EXISTS `hits`;
CREATE TABLE `hits`  (
  `hits_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hits
-- ----------------------------
INSERT INTO `hits` VALUES (1, 0, '2025-03-19 07:25:52', '2025-03-19 07:25:52', 'daily_specials', 'daily_specials_id', 6);
INSERT INTO `hits` VALUES (2, 2, '2025-03-21 09:20:06', '2025-03-21 09:20:06', 'daily_specials', 'daily_specials_id', 2);
INSERT INTO `hits` VALUES (3, 2, '2025-03-21 11:52:20', '2025-03-21 11:52:20', 'daily_specials', 'daily_specials_id', 2);

-- ----------------------------
-- Table structure for mall_center
-- ----------------------------
DROP TABLE IF EXISTS `mall_center`;
CREATE TABLE `mall_center`  (
  `mall_center_id` int NOT NULL AUTO_INCREMENT COMMENT '商城中心ID',
  `specifications` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `weight` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '重量',
  `flavor` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '口味',
  `hits` int NOT NULL DEFAULT 0 COMMENT '点击数',
  `praise_len` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `recommend` int NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `cart_title` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题：[0,125]用于产品html的标签中',
  `cart_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '封面图：用于显示于产品列表页',
  `cart_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `cart_price_ago` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '原价：[1]',
  `cart_price` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '卖价：[1]',
  `cart_inventory` int NOT NULL DEFAULT 0 COMMENT '商品库存',
  `cart_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `cart_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '正文：产品的主体内容',
  `cart_img_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图1：',
  `cart_img_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图2：',
  `cart_img_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图3：',
  `cart_img_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图4：',
  `cart_img_5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '主图5：',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`mall_center_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商城中心' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mall_center
-- ----------------------------
INSERT INTO `mall_center` VALUES (1, '规格1', '重量1', '口味1', 59, 295, 0, '测试商品1', '/api/upload/good_1.jpg', '测试商品1', 110.00, 99.00, 74, '分类一', '<p>11111</p>', '/api/upload/img_1_1.jpg', '/api/upload/img_1_2.jpg', '/api/upload/img_1_3.jpg', '/api/upload/img_1_4.jpg', '/api/upload/img_1_5.jpg', '2023-02-08 14:48:36', '2025-04-15 15:10:19');
INSERT INTO `mall_center` VALUES (2, '规格2', '重量2', '口味2', 421, 498, 0, '测试商品2', '/api/upload/good_2.jpg', '测试商品2', 220.00, 110.00, 10, '分类二', '', '/api/upload/img_2_1.jpg', '/api/upload/img_2_2.jpg', '/api/upload/img_2_3.jpg', '/api/upload/img_2_4.jpg', '/api/upload/img_2_5.jpg', '2023-02-08 14:48:36', '2025-02-19 20:20:33');
INSERT INTO `mall_center` VALUES (3, '规格3', '重量3', '口味3', 115, 243, 0, '测试商品3', '/api/upload/good_3.jpg', '测试商品3', 20.00, 10.00, 10, '分类二', '', '/api/upload/img_3_1.jpg', '/api/upload/img_3_2.jpg', '/api/upload/img_3_3.jpg', '/api/upload/img_3_4.jpg', '/api/upload/img_3_5.jpg', '2023-02-08 14:48:36', '2025-02-19 20:20:33');
INSERT INTO `mall_center` VALUES (4, '规格4', '重量4', '口味4', 496, 478, 0, '测试商品4', '/api/upload/good_4.jpg', '测试商品4', 199.00, 99.00, 20, '分类二', '', '/api/upload/img_4_1.jpg', '/api/upload/img_4_2.jpg', '/api/upload/img_4_3.jpg', '/api/upload/img_4_4.jpg', '/api/upload/img_4_5.jpg', '2023-02-08 14:48:36', '2025-02-19 20:20:33');
INSERT INTO `mall_center` VALUES (5, '规格5', '重量5', '口味5', 70, 283, 0, '测试商品5', '/api/upload/good_5.jpg', '测试商品5', 110.00, 99.00, 30, '分类二', '', '/api/upload/img_5_1.jpg', '/api/upload/img_5_2.jpg', '/api/upload/img_5_3.jpg', '/api/upload/img_5_4.jpg', '/api/upload/img_5_5.jpg', '2023-02-08 14:48:36', '2025-02-19 20:20:33');
INSERT INTO `mall_center` VALUES (6, '规格6', '重量6', '口味6', 200, 242, 0, '测试商品6', '/api/upload/good_6.jpg', '测试商品6', 999.00, 888.00, 40, '分类三', '', '/api/upload/img_6_1.jpg', '/api/upload/img_6_2.jpg', '/api/upload/img_6_3.jpg', '/api/upload/img_6_4.jpg', '/api/upload/img_6_5.jpg', '2023-02-08 14:48:36', '2025-02-19 20:20:33');
INSERT INTO `mall_center` VALUES (7, '规格7', '重量7', '口味7', 629, 150, 0, '测试商品7', '/api/upload/good_7.jpg', '测试商品7', 20.00, 220.00, 110, '分类一', '<p>测试商品7</p>', '/api/upload/img_7_1.jpg', '/api/upload/img_7_2.jpg', '/api/upload/img_7_3.jpg', '/api/upload/img_7_4.jpg', '/api/upload/img_7_5.jpg', '2023-02-08 14:48:36', '2025-02-19 20:20:33');
INSERT INTO `mall_center` VALUES (8, '规格8', '重量8', '口味8', 534, 378, 0, '测试商品8', '/api/upload/good_8.jpg', '测试商品8', 20.00, 30.00, 30, '分类二', '', '/api/upload/img_8_1.jpg', '/api/upload/img_8_2.jpg', '/api/upload/img_8_3.jpg', '/api/upload/img_8_4.jpg', '/api/upload/img_8_5.jpg', '2023-02-08 14:48:36', '2025-02-19 20:20:33');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单ID：',
  `order_number` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单号：',
  `goods_id` mediumint UNSIGNED NOT NULL COMMENT '商品id：[0,8388607]',
  `title` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品标题：',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品图片：',
  `price` double(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格：',
  `price_ago` double(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '原价：',
  `num` int NOT NULL DEFAULT 1 COMMENT '数量：',
  `price_count` double(8, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '总价：',
  `norms` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格：',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未分类' COMMENT '商品分类：',
  `contact_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人姓名：',
  `contact_email` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人邮箱：',
  `contact_phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人手机：',
  `contact_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '收件地址：',
  `postal_code` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮政编码：',
  `user_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '买家ID：',
  `merchant_id` mediumint UNSIGNED NOT NULL DEFAULT 0 COMMENT '商家ID：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]用于产品规格描述',
  `state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '待付款' COMMENT '订单状态：待付款，待发货，待签收，已签收，待退款，已退款，已拒绝，已完成',
  `appointment` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '预约时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (2, '1740019406856519085', 1, '测试商品1', '/api/upload/good_1.jpg', 99.00, 110.00, 1, 99.00, '', '分类一', '田七', '', '13590509090', '广州市越秀区东风西路187号', '', 1, 0, '2025-02-20 10:43:26', '2025-04-15 11:18:27', '测试商品1', '已付款', '2025-04-15 19:18:26');
INSERT INTO `order` VALUES (4, '1742389787064631297', 1, '测试商品1', '/api/upload/good_1.jpg', 99.00, 110.00, 1, 99.00, NULL, '分类一', '田七', NULL, '13590509090', '广州市越秀区东风西路187号', NULL, 1, 0, '2025-03-19 13:09:48', '2025-04-15 10:46:14', '测试商品1', '已付款', '2025-03-19 13:09:48');
INSERT INTO `order` VALUES (5, '1742395408930456414', 1, '测试商品1', '/api/upload/good_1.jpg', 99.00, 110.00, 1, 99.00, NULL, '分类一', '田七', NULL, '13590509090', '广州市越秀区东风西路187号', NULL, 1, 0, '2025-03-19 14:43:30', '2025-04-15 14:47:59', '测试商品1', '已付款', '2025-03-19 14:43:30');
INSERT INTO `order` VALUES (6, '1742396607413330722', 1, '测试商品1', '/api/upload/good_1.jpg', 99.00, 110.00, 1, 99.00, NULL, '分类一', '田七', NULL, '13590509090', '广州市越秀区东风西路187号', NULL, 1, 0, '2025-03-19 15:03:29', '2025-04-15 10:46:14', '测试商品1', '已付款', '2025-03-19 15:03:29');
INSERT INTO `order` VALUES (7, '1742396607413330722', 1, '测试商品1', '/api/upload/good_1.jpg', 99.00, 110.00, 1, 99.00, NULL, '分类一', '田七', NULL, '13590509090', '广州市越秀区东风西路187号', NULL, 1, 0, '2025-03-19 15:03:29', '2025-04-15 10:46:14', '测试商品1', '已付款', '2025-03-19 15:03:29');
INSERT INTO `order` VALUES (10, '1742558780699324661', 2, '测试商品2', '/api/upload/good_2.jpg', 110.00, 220.00, 1, 110.00, NULL, '分类二', '0', NULL, '19817804382', '温州商学院', NULL, 2, 0, '2025-03-21 12:06:34', '2025-04-15 10:46:14', '测试商品2', '待付款', '2025-03-21 12:06:34');
INSERT INTO `order` VALUES (11, '1744728444449669745', 1, '测试商品1', '/api/upload/good_1.jpg', 99.00, 110.00, 1, 99.00, NULL, '分类一', '田七', NULL, '13590509090', '广州市越秀区东风西路187号', NULL, 1, 0, '2025-04-15 14:47:24', '2025-04-15 15:10:19', '测试商品1', '已付款', '2025-04-30 00:00:00');
INSERT INTO `order` VALUES (12, '1744728547643633575', 1, '测试商品1', '/api/upload/good_1.jpg', 99.00, 110.00, 1, 99.00, NULL, '分类一', '田七', NULL, '13590509090', '广州市越秀区东风西路187号', NULL, 1, 0, '2025-04-15 14:49:07', '2025-04-15 14:49:07', '测试商品1', '待付款', '2025-04-15 14:49:07');

-- ----------------------------
-- Table structure for praise
-- ----------------------------
DROP TABLE IF EXISTS `praise`;
CREATE TABLE `praise`  (
  `praise_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
  `user_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞人：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '点赞状态:1为点赞，0已取消',
  PRIMARY KEY (`praise_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '点赞：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of praise
-- ----------------------------
INSERT INTO `praise` VALUES (1, 0, '2025-03-19 07:25:54', '2025-03-19 07:25:54', 'daily_specials', 'daily_specials_id', 6, 1);

-- ----------------------------
-- Table structure for second_kill_order
-- ----------------------------
DROP TABLE IF EXISTS `second_kill_order`;
CREATE TABLE `second_kill_order`  (
  `second_kill_order_id` int NOT NULL AUTO_INCREMENT COMMENT '秒杀订单ID',
  `order_no` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `product_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '品名',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `specifications` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `weight` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '重量',
  `flavor` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '口味',
  `price_spike` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '秒杀价',
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `user_no` int NULL DEFAULT 0 COMMENT '用户编号',
  `user_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `picking_type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '取货类型',
  `contact_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `pay_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '未支付' COMMENT '支付状态',
  `pay_type` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '支付类型: 微信、支付宝、网银',
  `recommend` int NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`second_kill_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '秒杀订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of second_kill_order
-- ----------------------------
INSERT INTO `second_kill_order` VALUES (1, '订单编号1', '品名1', '类型1', '规格1', '重量1', '口味1', '秒杀价1', '/api/upload/1585462630112296961.jpg', 0, '用户姓名1', '取货类型1', '15707060126', '地址1', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `second_kill_order` VALUES (2, '订单编号2', '品名2', '类型2', '规格2', '重量2', '口味2', '秒杀价2', '/api/upload/1585462332278964224.jpg', 0, '用户姓名2', '取货类型2', '15712581181', '地址2', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `second_kill_order` VALUES (3, '订单编号3', '品名3', '类型3', '规格3', '重量3', '口味3', '秒杀价3', '/api/upload/1585462505113649153.jpg', 0, '用户姓名3', '取货类型3', '17654791913', '地址3', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `second_kill_order` VALUES (4, '订单编号4', '品名4', '类型4', '规格4', '重量4', '口味4', '秒杀价4', '/api/upload/1585462372338761728.jpg', 0, '用户姓名4', '取货类型4', '17309580719', '地址4', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `second_kill_order` VALUES (5, '订单编号5', '品名5', '类型5', '规格5', '重量5', '口味5', '秒杀价5', '/api/upload/1585462454614228992.jpg', 0, '用户姓名5', '取货类型5', '17298291253', '地址5', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `second_kill_order` VALUES (6, '订单编号6', '品名6', '类型6', '规格6', '重量6', '口味6', '秒杀价6', '/api/upload/1585462415535898625.jpg', 0, '用户姓名6', '取货类型6', '17614540894', '地址6', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `second_kill_order` VALUES (7, '订单编号7', '品名7', '类型7', '规格7', '重量7', '口味7', '秒杀价7', '/api/upload/1585462586395066368.jpg', 0, '用户姓名7', '取货类型7', '17640294970', '地址7', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `second_kill_order` VALUES (8, '订单编号8', '品名8', '类型8', '规格8', '重量8', '口味8', '秒杀价8', '/api/upload/1585462283427905537.jpg', 0, '用户姓名8', '取货类型8', '15910963385', '地址8', '未支付', '支付宝', 0, '2023-02-08 14:48:36', '2023-02-08 14:48:36');

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides`  (
  `slides_id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '轮播图ID：',
  `title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题：',
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '内容：',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '链接：',
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '轮播图：',
  `hits` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击量：',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`slides_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '轮播图：' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of slides
-- ----------------------------
INSERT INTO `slides` VALUES (1, '轮播图1', '内容1', '/article/details?article=1', '/api/upload/1.png', 766, '2023-02-08 14:48:37', '2025-03-23 12:54:47');
INSERT INTO `slides` VALUES (2, '轮播图2', '内容2', '/article/details?article=2', '/api/upload/2.png', 459, '2023-02-08 14:48:37', '2025-03-23 12:54:53');
INSERT INTO `slides` VALUES (3, '轮播图3', '内容3', '/article/details?article=3', '/api/upload/3.png', 719, '2023-02-08 14:48:37', '2025-03-23 12:54:59');
INSERT INTO `slides` VALUES (9, '轮播图4', '', '', '/api/upload/4.png', 0, '2025-03-23 12:55:14', '2025-03-23 12:55:14');
INSERT INTO `slides` VALUES (10, '轮播图5', '', '', '/api/upload/5.png', 0, '2025-03-23 12:55:23', '2025-03-23 12:55:23');
INSERT INTO `slides` VALUES (11, '轮播图6', '', '', '/api/upload/6.png', 0, '2025-03-23 12:55:30', '2025-03-23 12:55:30');

-- ----------------------------
-- Table structure for special_order
-- ----------------------------
DROP TABLE IF EXISTS `special_order`;
CREATE TABLE `special_order`  (
  `special_order_id` int NOT NULL AUTO_INCREMENT COMMENT '特价订单ID',
  `order_no` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `product_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '品名',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `specifications` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `weight` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '重量',
  `flavor` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '口味',
  `current_special_price` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '现特价',
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `user_no` int NULL DEFAULT 0 COMMENT '用户编号',
  `user_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `picking_type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '取货类型',
  `contact_number` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  `pay_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '未支付' COMMENT '支付状态',
  `pay_type` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '支付类型: 微信、支付宝、网银',
  `recommend` int NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`special_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '特价订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of special_order
-- ----------------------------
INSERT INTO `special_order` VALUES (1, '订单编号1', '品名1', '类型1', '规格1', '重量1', '口味1', '现特价1', '/api/upload/1585462332278964224.jpg', 0, '用户姓名1', '取货类型1', '15550818745', '地址1', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `special_order` VALUES (2, '订单编号2', '品名2', '类型2', '规格2', '重量2', '口味2', '现特价2', '/api/upload/1585462630112296961.jpg', 0, '用户姓名2', '取货类型2', '15237472352', '地址2', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `special_order` VALUES (3, '订单编号3', '品名3', '类型3', '规格3', '重量3', '口味3', '现特价3', '/api/upload/1585462415535898625.jpg', 0, '用户姓名3', '取货类型3', '15808398503', '地址3', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `special_order` VALUES (4, '订单编号4', '品名4', '类型4', '规格4', '重量4', '口味4', '现特价4', '/api/upload/1585462505113649153.jpg', 0, '用户姓名4', '取货类型4', '17347462204', '地址4', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `special_order` VALUES (5, '订单编号5', '品名5', '类型5', '规格5', '重量5', '口味5', '现特价5', '/api/upload/1585462454614228992.jpg', 0, '用户姓名5', '取货类型5', '15528132428', '地址5', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `special_order` VALUES (6, '订单编号6', '品名6', '类型6', '规格6', '重量6', '口味6', '现特价6', '/api/upload/1585462372338761728.jpg', 0, '用户姓名6', '取货类型6', '15935136723', '地址6', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `special_order` VALUES (7, '订单编号7', '品名7', '类型7', '规格7', '重量7', '口味7', '现特价7', '/api/upload/1585462586395066368.jpg', 0, '用户姓名7', '取货类型7', '17833147125', '地址7', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `special_order` VALUES (8, '订单编号8', '品名8', '类型8', '规格8', '重量8', '口味8', '现特价8', '/api/upload/1585462283427905537.jpg', 0, '用户姓名8', '取货类型8', '14580543995', '地址8', '未支付', '支付宝', 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user`  (
  `system_user_id` int NOT NULL AUTO_INCREMENT COMMENT '系统用户ID',
  `user_no` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户编号',
  `user_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `examine_state` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
  `recommend` int NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `user_id` int NOT NULL DEFAULT 0 COMMENT '用户ID',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`system_user_id`) USING BTREE,
  UNIQUE INDEX `user_no`(`user_no`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES (1, '1', '金', '已通过', 0, 2, '2025-03-19 07:25:48', '2025-03-19 07:25:48');

-- ----------------------------
-- Table structure for time_limited_second_kill
-- ----------------------------
DROP TABLE IF EXISTS `time_limited_second_kill`;
CREATE TABLE `time_limited_second_kill`  (
  `time_limited_second_kill_id` int NOT NULL AUTO_INCREMENT COMMENT '限时秒杀ID',
  `product_name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '品名',
  `type` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型',
  `specifications` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `weight` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '重量',
  `flavor` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '口味',
  `original_price` int NULL DEFAULT 0 COMMENT '原价',
  `price_spike` int NULL DEFAULT 0 COMMENT '秒杀价',
  `quality_guarantee_period` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '保质期',
  `picture` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `recommend` int NOT NULL DEFAULT 0 COMMENT '智能推荐',
  `timer_title` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '计时器标题',
  `timing_start_time` datetime NULL DEFAULT NULL COMMENT '计时开始时间',
  `timing_end_time` datetime NULL DEFAULT NULL COMMENT '计时结束时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`time_limited_second_kill_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '限时秒杀' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of time_limited_second_kill
-- ----------------------------
INSERT INTO `time_limited_second_kill` VALUES (1, '品名1', '类型1', '规格1', '重量1', '口味1', 1, 1, '保质期1', '/api/upload/1585462630112296961.jpg', 0, '计时器标题1', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `time_limited_second_kill` VALUES (2, '品名2', '类型2', '规格2', '重量2', '口味2', 2, 2, '保质期2', '/api/upload/1585462332278964224.jpg', 0, '计时器标题2', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `time_limited_second_kill` VALUES (3, '品名3', '类型3', '规格3', '重量3', '口味3', 3, 3, '保质期3', '/api/upload/1585462372338761728.jpg', 0, '计时器标题3', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `time_limited_second_kill` VALUES (4, '品名4', '类型4', '规格4', '重量4', '口味4', 4, 4, '保质期4', '/api/upload/1585462415535898625.jpg', 0, '计时器标题4', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `time_limited_second_kill` VALUES (5, '品名5', '类型5', '规格5', '重量5', '口味5', 5, 5, '保质期5', '/api/upload/1585462505113649153.jpg', 0, '计时器标题5', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `time_limited_second_kill` VALUES (6, '品名6', '类型6', '规格6', '重量6', '口味6', 6, 6, '保质期6', '/api/upload/1585462586395066368.jpg', 0, '计时器标题6', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `time_limited_second_kill` VALUES (7, '品名7', '类型7', '规格7', '重量7', '口味7', 7, 7, '保质期7', '/api/upload/1585462454614228992.jpg', 0, '计时器标题7', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');
INSERT INTO `time_limited_second_kill` VALUES (8, '品名8', '类型8', '规格8', '重量8', '口味8', 8, 8, '保质期8', '/api/upload/1585462283427905537.jpg', 0, '计时器标题8', '2023-02-08 00:00:00', '2024-02-08 00:00:00', '2023-02-08 14:48:36', '2023-02-08 14:48:36');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `upload_id` int NOT NULL AUTO_INCREMENT COMMENT '上传ID',
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '访问路径',
  `file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `display` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '显示顺序',
  `father_id` int NULL DEFAULT 0 COMMENT '父级ID',
  `dir` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件夹',
  `type` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES (1, 'movie.mp4', '/upload/movie.mp4', '', NULL, 0, NULL, 'video');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
  `state` smallint UNSIGNED NOT NULL DEFAULT 1 COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
  `user_group` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上次登录时间：',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
  `phone_state` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
  `username` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
  `nickname` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '昵称：[0,16]',
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
  `email` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
  `email_state` smallint UNSIGNED NOT NULL DEFAULT 0 COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像地址：[0,255]',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户账户：用于保存用户登录信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 1, '管理员', '2025-03-23 12:54:24', '19817804382', 0, 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1836111838@qq.com', 0, '/api/upload/admin_avatar.jpg', '2023-03-31 17:35:13');
INSERT INTO `user` VALUES (2, 1, '系统用户', '2025-03-21 09:21:04', '13205220820', 0, 'yonghu', 'jin', 'e10adc3949ba59abbe56e057f20f883e', '1836111838@qq.com', 0, NULL, '2025-03-19 07:25:48');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `group_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
  `display` smallint UNSIGNED NOT NULL DEFAULT 100 COMMENT '显示顺序：[0,1000]',
  `name` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
  `source_table` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源表：',
  `source_field` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
  `source_id` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
  `register` smallint UNSIGNED NULL DEFAULT 0 COMMENT '注册位置:',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间：',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间：',
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户组：用于用户前端身份和鉴权' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, 100, '管理员', NULL, '', '', 0, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `user_group` VALUES (2, 100, '游客', NULL, '', '', 0, 0, '2023-02-08 14:48:37', '2023-02-08 14:48:37');
INSERT INTO `user_group` VALUES (3, 100, '系统用户', NULL, 'system_user', 'system_user_id', 0, 3, '2023-02-08 14:48:37', '2023-02-08 14:48:37');

SET FOREIGN_KEY_CHECKS = 1;
