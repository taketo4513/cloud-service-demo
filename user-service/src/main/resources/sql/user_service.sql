/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.31.101
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 192.168.31.101:3306
 Source Schema         : user_service

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 22/01/2024 17:36:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '0：未删除，1：删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'Saito Ren', 'LWSe64P2Af', '2023-03-07 13:28:00', '2016-03-16 09:14:12', 0);
INSERT INTO `t_user` VALUES (2, 'Ding Xiaoming', 'YSQMmsCXtP', '2005-04-25 00:05:47', '2008-07-12 08:44:58', 0);
INSERT INTO `t_user` VALUES (3, 'Guo Xiuying', 'PA5TnoTcY6', '2000-10-13 03:46:29', '2020-04-16 02:28:06', 0);
INSERT INTO `t_user` VALUES (4, 'Bobby Ross', '0bxO49m2AH', '2018-02-18 07:27:34', '2009-11-02 15:59:13', 0);
INSERT INTO `t_user` VALUES (5, 'Tracy Chavez', 'zl6nPK0EwW', '2002-10-13 13:48:43', '2006-07-10 18:43:43', 0);
INSERT INTO `t_user` VALUES (6, 'Peng Lu', 'klWASHn3K0', '2008-05-20 03:58:23', '2023-01-23 14:09:07', 0);
INSERT INTO `t_user` VALUES (7, 'Ku Wai Han', 'ziLztvLa2x', '2016-03-25 21:22:30', '2004-04-06 17:52:56', 0);
INSERT INTO `t_user` VALUES (8, 'Cheng Tsz Ching', 'CxicoROedx', '2014-03-29 07:43:54', '2011-04-15 00:04:29', 0);
INSERT INTO `t_user` VALUES (9, 'Troy Wilson', '5FzftRHE0E', '2000-10-28 08:35:22', '2013-10-19 09:48:05', 0);
INSERT INTO `t_user` VALUES (10, 'Wong Wing Sze', 'KSMkYD1CpI', '2023-01-15 20:39:47', '2007-11-15 23:54:43', 0);
INSERT INTO `t_user` VALUES (11, 'Cheng Ka Keung', '9eIbOct1Qr', '2008-03-18 21:40:49', '2009-02-05 00:59:18', 0);
INSERT INTO `t_user` VALUES (12, 'To Kwok Kuen', 'pkdl4Jwwfg', '2022-01-07 18:15:38', '2017-05-02 20:25:31', 0);
INSERT INTO `t_user` VALUES (13, 'Mak Ka Man', 'gEBTLOgLdb', '2006-03-15 22:30:42', '2018-10-22 12:16:36', 0);
INSERT INTO `t_user` VALUES (14, 'Christine Ramirez', '5FxRK27NCb', '2006-04-09 20:02:50', '2003-02-03 19:37:08', 0);
INSERT INTO `t_user` VALUES (15, 'Lau Chieh Lun', 'fWwEtfTwKD', '2011-11-03 03:00:07', '2006-08-23 10:09:38', 0);
INSERT INTO `t_user` VALUES (16, 'Ogawa Airi', '8rGYP1OX6U', '2009-08-02 17:32:40', '2023-03-07 16:23:56', 0);
INSERT INTO `t_user` VALUES (17, 'Tao Xiaoming', 'RQxsp2PiN5', '2008-12-27 01:22:03', '2020-01-30 22:52:13', 0);
INSERT INTO `t_user` VALUES (18, 'Wong On Kay', 'KI47C4uzNw', '2020-08-13 10:58:59', '2015-05-22 02:23:17', 0);
INSERT INTO `t_user` VALUES (19, 'Nancy Robinson', 'AVz4LQjac6', '2007-11-21 11:23:13', '2020-06-26 00:18:24', 0);
INSERT INTO `t_user` VALUES (20, 'Siu Kwok Ming', 'UmXFfU8U3n', '2009-12-13 01:20:09', '2016-08-04 01:09:08', 0);
INSERT INTO `t_user` VALUES (21, 'Okamoto Mai', 'Ij3Hs5haFY', '2004-11-09 22:05:19', '2007-09-11 11:27:24', 0);
INSERT INTO `t_user` VALUES (22, 'Ono Seiko', 'G2n5nxPO7g', '2001-02-25 10:18:05', '2007-04-15 05:29:12', 0);
INSERT INTO `t_user` VALUES (23, 'Nakano Rin', 'GfJ0lSqJM4', '2016-06-30 13:47:25', '2011-11-22 13:06:17', 0);
INSERT INTO `t_user` VALUES (24, 'Yamashita Akina', 'yaGzynFTbI', '2006-10-10 16:34:40', '2008-10-11 01:59:40', 0);
INSERT INTO `t_user` VALUES (25, 'Chic Chung Yin', 'DKLicLFjO2', '2012-03-05 02:46:19', '2007-02-26 06:43:09', 0);
INSERT INTO `t_user` VALUES (26, 'Johnny Rice', '9KhLMIXCH1', '2013-10-04 21:17:57', '2022-03-17 09:50:47', 0);
INSERT INTO `t_user` VALUES (27, 'Liao Anqi', 'ivKMFjoQQV', '2019-10-11 01:26:18', '2003-07-21 13:35:47', 0);
INSERT INTO `t_user` VALUES (28, 'Shimada Takuya', 'KDY4LvxSgG', '2005-08-02 02:26:36', '2004-10-14 01:55:22', 0);
INSERT INTO `t_user` VALUES (29, 'Kinoshita Yuna', 'Buj17aOEbq', '2004-04-11 04:29:59', '2012-10-05 23:39:45', 0);
INSERT INTO `t_user` VALUES (30, 'Suzuki Akina', 'v0RsOSu3Yu', '2007-02-03 07:53:37', '2023-07-10 16:43:14', 0);
INSERT INTO `t_user` VALUES (31, 'Kato Riku', 'VOHqk3ErbK', '2004-02-20 12:57:33', '2021-08-05 02:51:45', 0);
INSERT INTO `t_user` VALUES (32, 'Cho Sau Man', 'DNHziuU720', '2010-08-31 06:20:04', '2014-09-29 16:27:59', 0);
INSERT INTO `t_user` VALUES (33, 'Mak Ka Ming', '0VMYAnPEFH', '2008-03-27 13:14:33', '2001-04-13 13:37:03', 0);
INSERT INTO `t_user` VALUES (34, 'Yan Xiaoming', 'y3b5GS8l36', '2020-01-13 18:13:11', '2020-08-14 07:28:12', 0);
INSERT INTO `t_user` VALUES (35, 'Liu Jialun', 'c44ZO2JQF6', '2016-09-12 00:30:13', '2006-06-29 09:06:45', 0);
INSERT INTO `t_user` VALUES (36, 'Yeow Yun Fat', 'paV2eUyyAC', '2016-09-22 07:52:50', '2002-01-17 21:49:44', 0);
INSERT INTO `t_user` VALUES (37, 'Rachel Ryan', 'hTWhgyCGbn', '2017-01-09 13:48:19', '2001-10-21 03:58:57', 0);
INSERT INTO `t_user` VALUES (38, 'Cheng Wing Fat', 'XscJ1ffybK', '2005-11-18 12:17:11', '2007-06-18 06:05:13', 0);
INSERT INTO `t_user` VALUES (39, 'Ueda Itsuki', 'i2zDR38XLk', '2018-11-29 03:56:06', '2006-12-06 09:00:16', 0);
INSERT INTO `t_user` VALUES (40, 'Peter Silva', 'p5VzK9VyY3', '2019-03-08 09:57:26', '2018-03-10 02:48:20', 0);
INSERT INTO `t_user` VALUES (41, 'Chang Kwok Wing', 'bxwH2WT1Du', '2016-05-01 12:49:38', '2018-07-29 13:34:50', 0);
INSERT INTO `t_user` VALUES (42, 'Russell Mason', 'QPlAipRP7j', '2000-09-22 10:57:02', '2004-04-28 10:15:08', 0);
INSERT INTO `t_user` VALUES (43, 'Kathleen Reynolds', 'KRoHB2Jsrh', '2013-01-23 17:39:28', '2011-03-02 14:03:53', 0);
INSERT INTO `t_user` VALUES (44, 'Richard Richardson', 'uxE8aEoqeb', '2011-01-10 01:21:29', '2017-10-26 02:13:15', 0);
INSERT INTO `t_user` VALUES (45, 'Wong On Kay', '8G6PV18n59', '2015-07-22 08:44:22', '2021-05-30 13:13:48', 0);
INSERT INTO `t_user` VALUES (46, 'Okada Yuto', 'rrviE0ZlmV', '2018-05-06 16:46:16', '2008-06-14 06:26:39', 0);
INSERT INTO `t_user` VALUES (47, 'Ikeda Ikki', 'OVMxL8Di8N', '2000-11-23 17:42:09', '2013-08-20 04:07:03', 0);
INSERT INTO `t_user` VALUES (48, 'Miyamoto Ryota', 'pt5ki7kllr', '2010-06-21 10:59:28', '2015-06-07 14:54:56', 0);
INSERT INTO `t_user` VALUES (49, 'Kwok Cho Yee', 'elHEJuQJn0', '2014-05-29 22:45:25', '2007-05-06 21:53:22', 0);
INSERT INTO `t_user` VALUES (50, 'Louise Campbell', 'ub1J4SmYiy', '2002-08-16 16:56:39', '2021-10-26 05:04:05', 0);
INSERT INTO `t_user` VALUES (51, 'Sato Yuna', 'Dme7K0Lig5', '2003-11-05 09:20:33', '2014-07-13 09:59:37', 0);
INSERT INTO `t_user` VALUES (52, 'Chu Chung Yin', 'O76CtJ68Xs', '2015-08-13 13:09:06', '2010-04-21 18:10:28', 0);
INSERT INTO `t_user` VALUES (53, 'Alfred Stewart', 'wR9n6SnESh', '2001-09-08 22:37:59', '2001-12-10 16:38:04', 0);
INSERT INTO `t_user` VALUES (54, 'He Jiehong', '4UvuGBTHE3', '2002-03-29 01:46:33', '2002-04-12 23:36:58', 0);
INSERT INTO `t_user` VALUES (55, 'Kimura Daisuke', 'iT01JX06kS', '2019-07-22 09:59:19', '2016-07-27 16:18:52', 0);
INSERT INTO `t_user` VALUES (56, 'Yan Ziyi', 'XTO9tfZKRw', '2014-07-18 03:00:34', '2000-09-14 17:19:24', 0);
INSERT INTO `t_user` VALUES (57, 'Yuen Chi Ming', 'WY4xxJexiB', '2001-11-05 16:39:50', '2023-05-08 19:23:49', 0);
INSERT INTO `t_user` VALUES (58, 'Liao Sai Wing', 'nkoWbl0mtw', '2006-11-30 08:54:38', '2018-05-28 19:50:49', 0);
INSERT INTO `t_user` VALUES (59, 'Meng Xiuying', '1IpcSDdmey', '2004-10-30 19:16:03', '2019-08-06 16:11:21', 0);
INSERT INTO `t_user` VALUES (60, 'Zhu Lan', 'ykFrO6D2vd', '2023-03-19 01:58:59', '2018-02-12 10:40:05', 0);
INSERT INTO `t_user` VALUES (61, 'Aoki Nanami', 'xtIuqV3D6z', '2005-03-12 13:59:36', '2016-08-06 23:27:36', 0);
INSERT INTO `t_user` VALUES (62, 'Ogawa Momoka', 'Sbs9CIxzj4', '2017-01-18 01:53:54', '2008-04-27 08:49:28', 0);
INSERT INTO `t_user` VALUES (63, 'Yin Zhiyuan', 'sqXpd5atXu', '2010-03-22 04:34:55', '2021-01-06 16:17:34', 0);
INSERT INTO `t_user` VALUES (64, 'Susan Sanchez', 'K5Z5aozP0e', '2020-11-05 11:06:53', '2005-05-31 08:32:17', 0);
INSERT INTO `t_user` VALUES (65, 'Carl Vasquez', 'ThoL72bdyL', '2001-09-25 12:03:09', '2006-07-29 23:30:50', 0);
INSERT INTO `t_user` VALUES (66, 'Otsuka Yuto', 'CdMxevfJZH', '2005-06-23 16:19:02', '2016-03-11 11:00:14', 0);
INSERT INTO `t_user` VALUES (67, 'Betty Jordan', '0M84zpI7Pl', '2003-03-18 06:46:45', '2016-12-03 19:51:30', 0);
INSERT INTO `t_user` VALUES (68, 'Iwasaki Daichi', 'prPHYFKygX', '2005-03-23 16:44:05', '2016-04-10 02:27:57', 0);
INSERT INTO `t_user` VALUES (69, 'Hara Ikki', 'bPJ58s9Cwj', '2002-07-01 08:14:47', '2002-04-17 00:30:55', 0);
INSERT INTO `t_user` VALUES (70, 'Cheng Anqi', 'KDY73kpYzX', '2005-10-03 22:11:49', '2017-02-18 04:26:38', 0);
INSERT INTO `t_user` VALUES (71, 'Cao Lu', 'Umh3lEvRT5', '2010-10-09 16:18:22', '2017-01-01 15:27:15', 0);
INSERT INTO `t_user` VALUES (72, 'Clara Mcdonald', 'QYQiEHZO6Q', '2018-11-29 06:18:27', '2023-06-22 05:51:01', 0);
INSERT INTO `t_user` VALUES (73, 'Imai Shino', 'mF8YlKjHEO', '2005-07-07 03:54:33', '2019-12-14 05:32:57', 0);
INSERT INTO `t_user` VALUES (74, 'Hayashi Sakura', '1TWgOl6cgV', '2011-08-05 09:43:22', '2019-11-25 22:33:57', 0);
INSERT INTO `t_user` VALUES (75, 'Zhou Jialun', '3p8l8FKEQE', '2023-07-22 00:13:09', '2009-07-26 20:08:30', 0);
INSERT INTO `t_user` VALUES (76, 'Chic Kwok Yin', 'EPbWeVwBE1', '2009-07-20 14:17:56', '2004-06-09 17:32:01', 0);
INSERT INTO `t_user` VALUES (77, 'Hu Xiaoming', 'xoPA3mKXT5', '2010-03-19 20:13:52', '2015-01-08 20:43:08', 0);
INSERT INTO `t_user` VALUES (78, 'Heung Ching Wan', 'WfR402uRvO', '2007-11-21 23:27:23', '2020-08-23 05:12:57', 0);
INSERT INTO `t_user` VALUES (79, 'Miguel Burns', '1UhwdHyZCG', '2017-12-15 12:25:13', '2016-03-15 02:35:00', 0);
INSERT INTO `t_user` VALUES (80, 'Tang Ziyi', 'WDQFr73zni', '2007-05-30 10:29:14', '2012-09-05 05:51:55', 0);
INSERT INTO `t_user` VALUES (81, 'Randy Gutierrez', 'qywOGS3IEj', '2002-04-29 00:53:31', '2003-12-05 02:46:27', 0);
INSERT INTO `t_user` VALUES (82, 'Lau Lik Sun', 'zUnWXUlfj7', '2003-08-12 00:39:47', '2002-07-03 08:27:25', 0);
INSERT INTO `t_user` VALUES (83, 'Kudo Airi', 'lppFDWWFLz', '2007-08-27 18:13:17', '2023-11-13 00:49:57', 0);
INSERT INTO `t_user` VALUES (84, 'Shibata Itsuki', 'I8QoDnGFou', '2017-12-05 03:04:59', '2000-07-18 16:33:56', 0);
INSERT INTO `t_user` VALUES (85, 'Richard Mitchell', 'KpvbL2u77d', '2016-11-20 11:50:55', '2016-03-11 23:06:27', 0);
INSERT INTO `t_user` VALUES (86, 'Wan Kwok Ming', 'RIMOBNH2es', '2007-08-20 13:10:02', '2004-07-06 20:55:28', 0);
INSERT INTO `t_user` VALUES (87, 'Nakajima Hikaru', 'UmPwCfUyqK', '2018-01-30 01:33:27', '2020-01-23 18:02:40', 0);
INSERT INTO `t_user` VALUES (88, 'Tang Zitao', 'pZlUAzs9mO', '2008-08-16 17:04:07', '2007-01-22 08:04:39', 0);
INSERT INTO `t_user` VALUES (89, 'Carlos Henderson', 'trEl49Fyfh', '2023-05-01 15:34:49', '2009-07-23 21:05:18', 0);
INSERT INTO `t_user` VALUES (90, 'Dai Tin Wing', 'ngmkttCJKb', '2000-10-30 03:33:42', '2018-12-11 21:51:52', 0);
INSERT INTO `t_user` VALUES (91, 'Justin Clark', 'K7ivSOoG2X', '2000-05-11 14:10:00', '2020-10-20 12:37:34', 0);
INSERT INTO `t_user` VALUES (92, 'Patricia Foster', 'MPVi9at7ka', '2022-04-20 00:54:55', '2010-11-18 23:27:10', 0);
INSERT INTO `t_user` VALUES (93, 'Ishida Sakura', 'p9rnjfUbEI', '2015-08-11 02:57:31', '2019-01-12 19:23:17', 0);
INSERT INTO `t_user` VALUES (94, 'Connie Ruiz', 'WIWenEveFj', '2010-09-20 05:16:51', '2017-12-20 03:17:24', 0);
INSERT INTO `t_user` VALUES (95, 'Gregory Schmidt', 'xmU8c7iwFs', '2012-01-02 00:39:45', '2022-10-21 17:27:49', 0);
INSERT INTO `t_user` VALUES (96, 'Tian Jialun', 'swdZ0f6NAj', '2014-05-31 14:06:32', '2002-08-18 06:18:44', 0);
INSERT INTO `t_user` VALUES (97, 'Cheng Ka Keung', 'lOIRrN8JMW', '2017-01-30 16:11:03', '2012-08-18 12:45:59', 0);
INSERT INTO `t_user` VALUES (98, 'Ueno Hazuki', 'C6tYgGqlfr', '2005-11-01 03:16:53', '2016-06-25 23:38:42', 0);
INSERT INTO `t_user` VALUES (99, 'Fong Wai Lam', 'DJTIM8w08e', '2012-01-13 14:37:03', '2018-05-15 10:29:11', 0);
INSERT INTO `t_user` VALUES (100, 'Miura Yota', '2TArkMch99', '2003-08-20 06:03:29', '2004-12-18 20:59:35', 0);

SET FOREIGN_KEY_CHECKS = 1;
