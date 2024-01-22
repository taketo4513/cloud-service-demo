/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.31.101
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : 192.168.31.101:3306
 Source Schema         : order_service

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 22/01/2024 17:51:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `id` int NOT NULL COMMENT '订单id',
  `order_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单编号',
  `order_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单内容',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` int NULL DEFAULT 0 COMMENT '0：未删除，1：删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, '57e2fe6b-72ce-2bea-c10e-10da70fe8282', 'iMango', 25, '2024-01-06 21:32:40', '2021-01-23 08:03:37', 0);
INSERT INTO `t_order` VALUES (2, '5fb9cc52-6cbf-df98-b15d-75e55ab2c9d4', 'Orange', 77, '2021-09-19 18:22:57', '2001-08-20 14:25:59', 0);
INSERT INTO `t_order` VALUES (3, '257c5392-a221-e21a-4bb1-fd7181ec2188', 'Raspbeiry core', 28, '2006-12-08 13:15:25', '2019-12-10 04:50:22', 0);
INSERT INTO `t_order` VALUES (4, '2702a53f-5531-6279-5c7b-5fe59e4db2de', 'ambi-Rembutan', 89, '2013-08-27 20:31:38', '2010-10-07 21:33:34', 0);
INSERT INTO `t_order` VALUES (5, '8cb95ffd-f59b-f9b5-7e71-b63c769d3f5b', 'Raspberry premium', 67, '2000-08-31 14:39:23', '2013-06-14 13:06:14', 0);
INSERT INTO `t_order` VALUES (6, 'c3376c8f-f14d-59b9-fa29-35165c55c586', 'Pluoys', 15, '2018-01-28 22:15:16', '2018-07-09 15:19:11', 0);
INSERT INTO `t_order` VALUES (7, '91ffd206-4333-b99f-582e-69fcd18fe457', 'iiwi se', 6, '2000-12-18 21:55:20', '2010-12-02 15:03:08', 0);
INSERT INTO `t_order` VALUES (8, '4d73b06b-f61d-1b8d-01f7-b4fde6dc5d35', 'Apple premium', 84, '2004-12-16 09:24:37', '2015-09-29 20:29:06', 0);
INSERT INTO `t_order` VALUES (9, '2500adfb-442e-8d01-b1e9-256ec6396cb2', 'Mango', 63, '2017-11-12 02:18:15', '2010-06-11 08:52:59', 0);
INSERT INTO `t_order` VALUES (10, 'fdca0913-3c2f-5fac-0127-ddb21560b1af', 'Kiwi plus', 4, '2005-02-13 17:16:45', '2023-10-14 11:56:26', 0);
INSERT INTO `t_order` VALUES (11, 'd4688413-2b9e-2753-3bf1-1f53d13faff3', 'cpple mini', 10, '2019-06-29 02:35:34', '2023-08-07 08:06:35', 0);
INSERT INTO `t_order` VALUES (12, '52a8bd55-d10f-d9cd-405c-061c9a6a4039', 'ambi-Raspberry', 92, '2023-02-09 08:49:49', '2020-08-21 13:55:51', 0);
INSERT INTO `t_order` VALUES (13, '13d4497d-5eb3-2c19-5c05-5b544614ee1e', 'Apple air', 82, '2014-05-11 18:35:59', '2001-03-05 02:58:23', 0);
INSERT INTO `t_order` VALUES (14, '7950d6a8-f7fe-a17c-8396-6f876d78307b', 'Strawberry', 39, '2008-09-15 07:31:24', '2000-03-22 14:44:27', 0);
INSERT INTO `t_order` VALUES (15, '597224b8-017a-89f5-0763-fa0d8d239ccc', 'Raspberry', 88, '2006-02-10 04:47:58', '2009-02-17 16:25:31', 0);
INSERT INTO `t_order` VALUES (16, '4922c16e-d5cb-13bc-8004-7e8898bf630c', 'ambi-Cherry', 97, '2008-09-13 11:02:24', '2004-08-31 10:57:29', 0);
INSERT INTO `t_order` VALUES (17, '772f8242-a809-9e75-2c32-ad5c99fd0851', 'Orange', 21, '2017-09-26 09:11:58', '2019-05-27 13:43:20', 0);
INSERT INTO `t_order` VALUES (18, '0dce2f0d-0c63-067f-f02a-b7110d5faee9', 'Rambutan plus', 38, '2016-05-15 00:27:54', '2018-04-29 20:58:22', 0);
INSERT INTO `t_order` VALUES (19, 'f2382e1a-3ce4-d1d9-4617-787de8797ae6', 'omni-Manpo', 44, '2011-05-09 07:50:46', '2014-06-05 01:07:45', 0);
INSERT INTO `t_order` VALUES (20, '8f83c27a-aa6f-841b-89da-b348ecacf6ff', 'Rambytan', 15, '2008-06-04 22:05:19', '2005-01-02 20:32:23', 0);
INSERT INTO `t_order` VALUES (21, '7a527227-676e-52b5-ccd5-939748fad0a5', 'Pluots', 23, '2017-11-06 21:05:26', '2009-05-26 06:53:02', 0);
INSERT INTO `t_order` VALUES (22, '132391ce-ac0b-f441-647f-38576103d23e', 'Pluots', 39, '2017-10-12 20:31:18', '2020-07-09 10:51:36', 0);
INSERT INTO `t_order` VALUES (23, '1bf24606-32bc-10b1-0c5b-4c3960891827', 'kpple pi', 13, '2016-10-24 02:37:34', '2000-12-14 05:54:30', 0);
INSERT INTO `t_order` VALUES (24, '9171d9be-6e70-96d3-6250-8efd3aaff4a4', 'Apple', 61, '2013-11-14 05:23:28', '2014-10-27 12:59:08', 0);
INSERT INTO `t_order` VALUES (25, 'f0742956-2662-a8ad-298f-3aa41235a996', 'iAppce', 89, '2000-07-21 17:47:05', '2007-11-02 18:22:48', 0);
INSERT INTO `t_order` VALUES (26, '9684ae8d-75bb-a7c9-17e5-9f794ba69891', 'Grape', 54, '2010-06-09 07:45:17', '2002-09-17 10:34:54', 0);
INSERT INTO `t_order` VALUES (27, 'f29fbbca-e3f4-05da-40ad-b26078cb5d5e', 'Gjape air', 58, '2002-01-06 20:28:17', '2006-04-06 17:59:11', 0);
INSERT INTO `t_order` VALUES (28, '3c9691b5-bd3c-6d92-1a86-d609ae9cf638', 'Pluots', 27, '2011-11-07 12:55:41', '2004-10-04 21:24:42', 0);
INSERT INTO `t_order` VALUES (29, '0698759a-801b-908a-191b-f937635d9967', 'Auple air', 50, '2014-01-04 22:47:47', '2009-05-14 22:15:53', 0);
INSERT INTO `t_order` VALUES (30, 'cc59c790-6302-b0a6-c9af-54c46f0f1c80', 'wiwi', 90, '2015-05-24 10:41:05', '2011-01-19 19:23:40', 0);
INSERT INTO `t_order` VALUES (31, '458c1786-168f-b8da-2e31-7d4d02c567ca', 'Chfrry', 59, '2017-09-25 05:32:41', '2022-01-13 04:13:46', 0);
INSERT INTO `t_order` VALUES (32, '93f3e093-8800-6e6f-e08f-629574dab649', 'xMango', 89, '2020-10-16 00:44:15', '2008-03-16 15:03:46', 0);
INSERT INTO `t_order` VALUES (33, '1911ffb6-95d7-9563-1deb-097f27635c0f', 'Grape', 11, '2006-11-05 17:18:57', '2003-11-20 15:06:52', 0);
INSERT INTO `t_order` VALUES (34, 'cb827835-a2dd-9e55-5769-c57a50457504', 'Raspberry plus', 28, '2012-10-06 05:35:00', '2000-12-16 15:36:55', 0);
INSERT INTO `t_order` VALUES (35, '756d6335-a5dc-2adf-bf31-b3319acfda0a', 'Ormnge', 12, '2008-12-30 02:26:03', '2008-02-14 15:56:47', 0);
INSERT INTO `t_order` VALUES (36, 'c6553fc3-9c18-6c12-06e0-63fe02e99ae3', 'omni-Kiwi', 2, '2017-09-21 14:59:04', '2020-01-30 11:34:28', 0);
INSERT INTO `t_order` VALUES (37, '984b84b2-740c-0f27-3502-9c88afd204a9', 'Pluots', 78, '2005-10-24 17:14:30', '2013-06-05 12:04:20', 0);
INSERT INTO `t_order` VALUES (38, '44a9194a-e9e6-6d04-8d21-434b4c583e80', 'iGpape', 58, '2020-10-28 16:14:54', '2009-11-11 01:07:47', 0);
INSERT INTO `t_order` VALUES (39, '42ab428e-6fcc-a531-5f74-f6a8fd1d408c', 'Apple', 84, '2006-04-24 21:42:36', '2015-09-03 16:42:38', 0);
INSERT INTO `t_order` VALUES (40, '9f5b7b44-27a6-1930-3b26-07989c422e0f', 'Raspberry', 53, '2000-02-27 19:21:16', '2008-01-07 10:10:17', 0);
INSERT INTO `t_order` VALUES (41, '484eb897-19ae-e90f-dfa3-4118645cc3f1', 'eambutan premium', 39, '2017-06-02 22:50:32', '2000-08-29 22:31:45', 0);
INSERT INTO `t_order` VALUES (42, '95b14a99-86e2-571e-825c-590fbcb385b0', 'Mango plus', 90, '2007-05-10 05:15:06', '2001-09-22 08:27:55', 0);
INSERT INTO `t_order` VALUES (43, '64a308d0-c429-1005-f364-f7b36c0a35f0', 'Pluuts', 40, '2010-12-16 04:13:03', '2003-07-05 20:40:34', 0);
INSERT INTO `t_order` VALUES (44, 'ee774d04-a1c7-82c9-7bd1-309e56ec73c7', 'omni-Rbmbutan', 2, '2021-12-01 02:10:38', '2002-05-12 06:09:49', 0);
INSERT INTO `t_order` VALUES (45, 'd8a92ad2-4108-d903-36d9-b578886ba572', 'xManzo', 74, '2012-02-03 20:15:58', '2004-12-10 20:43:22', 0);
INSERT INTO `t_order` VALUES (46, '82c45482-4d74-d7a2-3c53-f47fcc0ee900', 'ultra-Pluqts', 85, '2001-11-22 04:03:48', '2016-11-04 22:36:16', 0);
INSERT INTO `t_order` VALUES (47, '2315855a-1505-a4b4-715a-c55e2d4c19a0', 'Orange', 25, '2018-12-30 16:52:08', '2000-08-08 06:49:13', 0);
INSERT INTO `t_order` VALUES (48, 'ab7d87b4-8328-b8c7-bfd0-e50a784f19f1', 'Pluods', 85, '2008-06-22 17:44:32', '2004-03-17 04:18:48', 0);
INSERT INTO `t_order` VALUES (49, '9b729ce8-f1cc-92f8-539a-d08ca7420c6d', 'Cherry', 13, '2012-02-07 17:55:43', '2015-12-07 01:55:08', 0);
INSERT INTO `t_order` VALUES (50, '3a6c0086-14b1-0c6d-dabb-2f983142e773', 'Cherry', 40, '2009-02-28 18:52:31', '2005-03-25 06:45:23', 0);
INSERT INTO `t_order` VALUES (51, '2a3f765a-e019-f060-f05f-b5ef6c53f3f2', 'Cherny', 37, '2006-09-05 17:41:02', '2000-04-12 11:03:20', 0);
INSERT INTO `t_order` VALUES (52, 'a06e337e-69b9-ff47-0605-c65c631cd239', 'Apale premium', 24, '2011-07-20 19:36:10', '2022-12-12 11:21:26', 0);
INSERT INTO `t_order` VALUES (53, '648bc938-54f1-217b-d13c-4c4d404cf0fd', 'Mango', 24, '2009-05-04 20:22:54', '2019-05-27 03:30:51', 0);
INSERT INTO `t_order` VALUES (54, '5228492c-5d4e-2510-4113-11f78cca752a', 'Ormnge mini', 58, '2013-01-02 17:51:28', '2017-01-07 02:12:55', 0);
INSERT INTO `t_order` VALUES (55, '6a30ebea-6323-fe81-57e8-96c94434750c', 'Orange plus', 33, '2004-01-17 14:07:11', '2014-11-22 20:27:03', 0);
INSERT INTO `t_order` VALUES (56, 'e77a53bf-c049-8468-be5b-3ea76a94d109', 'xango premium', 33, '2010-04-04 11:08:22', '2002-11-30 14:22:54', 0);
INSERT INTO `t_order` VALUES (57, 'a7388ade-9b48-caf3-02b6-a358897a20f8', 'Grape', 75, '2000-04-24 12:06:46', '2010-10-23 19:48:23', 0);
INSERT INTO `t_order` VALUES (58, '9e3b01b2-64a6-98b6-72da-4a274610bf1f', 'vambutan', 49, '2021-02-13 23:14:26', '2010-03-21 06:48:02', 0);
INSERT INTO `t_order` VALUES (59, '8886cbe8-060b-78b7-89f1-7d3e9ed3f8a5', 'ambi-Ktwi', 100, '2017-06-06 09:47:09', '2003-04-10 20:31:43', 0);
INSERT INTO `t_order` VALUES (60, 'dfdd904c-7bb2-1dee-a6e8-86ee7a7c1b09', 'Strawverry', 64, '2009-08-26 01:09:30', '2017-01-13 18:26:20', 0);
INSERT INTO `t_order` VALUES (61, '89106d6b-094d-941a-bf27-5ebd4f31fd97', 'Orange', 79, '2005-07-04 06:33:32', '2017-05-02 02:43:05', 0);
INSERT INTO `t_order` VALUES (62, '659b68d2-44f5-2ac8-cc8c-db792341e4b0', 'Raspberfy pi', 71, '2017-11-22 18:24:24', '2017-11-12 11:37:10', 0);
INSERT INTO `t_order` VALUES (63, '35312865-4975-d841-4127-979a94b23da8', 'Oranae', 92, '2018-03-28 12:43:08', '2018-07-20 04:39:43', 0);
INSERT INTO `t_order` VALUES (64, 'fc8d7fa6-7936-cbc9-5a98-920dd676c212', 'crape core', 5, '2014-03-14 04:01:53', '2001-07-17 15:38:31', 0);
INSERT INTO `t_order` VALUES (65, 'dcad3e55-5692-f295-37e7-02286937040c', 'apple pro', 37, '2020-05-13 13:51:09', '2006-04-28 04:27:36', 0);
INSERT INTO `t_order` VALUES (66, 'a2d25184-33e3-b432-b11f-b76fcd7b3466', 'omni-Mbngo', 64, '2000-09-03 16:39:09', '2010-07-14 09:22:53', 0);
INSERT INTO `t_order` VALUES (67, '438960a5-511e-e991-60a9-14a5a8a897e0', 'xRaspbirry', 31, '2015-02-16 00:00:54', '2016-05-14 17:51:30', 0);
INSERT INTO `t_order` VALUES (68, '08db85b8-fc70-a4d5-610b-eb08d2f28b7d', 'Grape', 99, '2001-04-09 14:31:28', '2007-01-26 16:02:46', 0);
INSERT INTO `t_order` VALUES (69, 'a133d0c0-0aa8-70a1-0797-feef88275f4d', 'therry core', 54, '2022-12-16 17:50:18', '2009-04-23 16:41:29', 0);
INSERT INTO `t_order` VALUES (70, '1c6d12a1-561c-4637-678c-efaee23f043f', 'Raspbeury', 28, '2001-07-14 16:55:06', '2006-09-18 19:58:55', 0);
INSERT INTO `t_order` VALUES (71, '64399f05-5d96-d349-378a-05cb33391ecb', 'xApple', 66, '2012-12-05 19:04:29', '2002-04-22 03:25:13', 0);
INSERT INTO `t_order` VALUES (72, '15b495d0-d536-1415-7186-6399f84a26ad', 'Straoberry', 53, '2007-09-16 02:18:13', '2019-06-26 03:38:35', 0);
INSERT INTO `t_order` VALUES (73, 'f95b774f-cbf2-1b80-d1ab-3d4925f69add', 'aherry', 43, '2006-11-08 11:15:23', '2019-08-15 16:28:46', 0);
INSERT INTO `t_order` VALUES (74, '1b850d9e-2053-4ea2-906a-aa06d3c168d9', 'giwi core', 57, '2011-01-04 21:23:54', '2015-09-25 01:03:07', 0);
INSERT INTO `t_order` VALUES (75, '6c26dec2-9518-253f-0714-d2545d3acc27', 'opple', 66, '2017-02-15 17:53:04', '2010-06-28 05:25:16', 0);
INSERT INTO `t_order` VALUES (76, 'bcc7f0da-f2f9-01f4-908e-cfb90d8188c7', 'iStrawberry', 69, '2005-06-25 22:35:15', '2023-07-04 11:19:49', 0);
INSERT INTO `t_order` VALUES (77, 'c0af4c2c-2f95-85ea-f3a1-7cc588d90c84', 'Rambutan', 69, '2007-12-16 00:06:56', '2021-09-03 07:39:49', 0);
INSERT INTO `t_order` VALUES (78, '4b4de7f3-d711-0a69-7b89-2de4d90898b1', 'Oranoe', 33, '2017-10-06 23:34:20', '2012-01-04 17:15:26', 0);
INSERT INTO `t_order` VALUES (79, '866bb5f1-fd76-092e-5792-b455ae8d85ad', 'etrawberry plus', 13, '2001-11-26 17:40:28', '2000-09-26 11:46:23', 0);
INSERT INTO `t_order` VALUES (80, 'd8f99220-1d47-d7f0-579b-80fa47014151', 'oango', 90, '2001-06-25 06:54:56', '2008-04-18 18:16:00', 0);
INSERT INTO `t_order` VALUES (81, 'efe4552c-c2ea-90d4-2366-98cbb3fbb4dc', 'ultra-Msngo', 79, '2009-09-01 08:39:13', '2010-06-03 17:37:59', 0);
INSERT INTO `t_order` VALUES (82, '766106dd-11cc-b627-531f-b3211cff7a97', 'fiwi premium', 80, '2014-08-12 18:11:01', '2013-12-29 18:33:40', 0);
INSERT INTO `t_order` VALUES (83, 'afd53d75-2a58-fb9f-97ab-c608101aad82', 'Mango core', 70, '2007-08-13 04:45:13', '2006-11-09 00:02:47', 0);
INSERT INTO `t_order` VALUES (84, '2b233ebf-4657-8260-2a99-8e2604b42d86', 'Strawberry', 18, '2014-07-19 18:18:03', '2009-10-06 13:24:38', 0);
INSERT INTO `t_order` VALUES (85, '79230457-4712-83f5-2e21-ed26e61e0e97', 'ultra-Kswi', 98, '2011-02-21 18:08:56', '2005-09-09 05:30:21', 0);
INSERT INTO `t_order` VALUES (86, '292d5cff-5af2-8bf4-6c2a-c6d38ecd7e99', 'Raspberry', 84, '2001-11-19 05:16:35', '2016-12-01 18:38:54', 0);
INSERT INTO `t_order` VALUES (87, '6e42c0c5-4d9e-5394-df73-7270a2a04ed9', 'Strawberry', 18, '2017-05-28 02:48:12', '2003-02-08 23:47:24', 0);
INSERT INTO `t_order` VALUES (88, '31b18296-91fc-3c1a-239c-a7436ae7b636', 'xPluots', 89, '2012-12-19 17:19:15', '2021-12-11 00:18:25', 0);
INSERT INTO `t_order` VALUES (89, '759f16a2-4400-b90f-789f-174e860b5846', 'Kiwi', 39, '2012-12-10 00:45:39', '2012-07-15 18:22:04', 0);
INSERT INTO `t_order` VALUES (90, '88c3de76-8c5d-c7d0-ad27-c448b534da52', 'ambi-Grape', 96, '2010-07-17 22:08:27', '2015-06-06 09:32:10', 0);
INSERT INTO `t_order` VALUES (91, 'f4ff0f18-64bd-b280-f0f8-dbe23cd0bfbb', 'iOrange', 63, '2001-10-17 14:14:44', '2001-05-23 04:02:30', 0);
INSERT INTO `t_order` VALUES (92, '9e3cd17f-ad07-a084-cb1b-70d1d6d6978e', 'aango', 58, '2023-07-15 03:44:39', '2003-11-06 20:33:45', 0);
INSERT INTO `t_order` VALUES (93, 'e4f494e0-3a6a-ea8e-af6c-31faa42fb7a3', 'Orange', 35, '2022-09-27 04:11:54', '2014-07-25 17:34:04', 0);
INSERT INTO `t_order` VALUES (94, 'ed731457-3608-f31b-0698-e45ff5b2c614', 'kherry core', 53, '2015-10-06 10:00:24', '2012-03-15 00:52:42', 0);
INSERT INTO `t_order` VALUES (95, '2759accd-5045-279a-cc2c-3aa2f12ba7fb', 'Raspberry pro', 53, '2019-11-15 19:03:57', '2006-08-22 22:05:00', 0);
INSERT INTO `t_order` VALUES (96, 'd14892d5-07f8-9631-7023-2a2e1f596af7', 'Mango', 8, '2004-01-23 08:41:43', '2020-09-17 06:51:00', 0);
INSERT INTO `t_order` VALUES (97, 'e91b12e4-e2c9-53b3-6e0e-e93ff499846c', 'aiwi', 33, '2010-02-22 20:41:26', '2012-07-20 23:08:31', 0);
INSERT INTO `t_order` VALUES (98, '87736583-822d-84f3-75be-239ff25ed848', 'Pluots', 73, '2013-06-15 15:20:35', '2008-02-07 00:32:21', 0);
INSERT INTO `t_order` VALUES (99, '93dbc524-366a-304e-cda2-2ced8bf4f43d', 'Rambutan plus', 94, '2004-03-17 10:15:15', '2018-07-29 16:23:06', 0);
INSERT INTO `t_order` VALUES (100, 'e7ced179-97cc-adcd-0459-02043d130244', 'Raspberry', 67, '2010-03-17 23:18:56', '2016-11-19 22:48:42', 0);

SET FOREIGN_KEY_CHECKS = 1;
