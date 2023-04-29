/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.6
 Source Server Type    : MySQL
 Source Server Version : 50620
 Source Host           : localhost:3306
 Source Schema         : jobas

 Target Server Type    : MySQL
 Target Server Version : 50620
 File Encoding         : 65001

 Date: 03/09/2022 23:31:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `accounts_userprofile`;
CREATE TABLE `accounts_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `picture` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_law` tinyint(1) NOT NULL,
  `law_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `accounts_userprofile_user_id_92240672_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of accounts_userprofile
-- ----------------------------
INSERT INTO `accounts_userprofile` VALUES (1, NULL, '', '1', 0, '', 2);
INSERT INTO `accounts_userprofile` VALUES (2, NULL, '', '1', 0, '', 3);

-- ----------------------------
-- Table structure for app01_city
-- ----------------------------
DROP TABLE IF EXISTS `app01_city`;
CREATE TABLE `app01_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `JobCount` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 311 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of app01_city
-- ----------------------------
INSERT INTO `app01_city` VALUES (1, '安顺', 383);
INSERT INTO `app01_city` VALUES (2, '澳门', 83);
INSERT INTO `app01_city` VALUES (3, '成都', 2369);
INSERT INTO `app01_city` VALUES (4, '滁州', 218);
INSERT INTO `app01_city` VALUES (5, '保定', 348);
INSERT INTO `app01_city` VALUES (6, '北京', 2803);
INSERT INTO `app01_city` VALUES (7, '赤峰', 171);
INSERT INTO `app01_city` VALUES (8, '沧州', 245);
INSERT INTO `app01_city` VALUES (9, '重庆', 2276);
INSERT INTO `app01_city` VALUES (10, '长治', 258);
INSERT INTO `app01_city` VALUES (11, '池州', 162);
INSERT INTO `app01_city` VALUES (12, '百色', 425);
INSERT INTO `app01_city` VALUES (13, '长春', 1792);
INSERT INTO `app01_city` VALUES (14, '承德', 179);
INSERT INTO `app01_city` VALUES (15, '安庆', 194);
INSERT INTO `app01_city` VALUES (16, '长沙', 1904);
INSERT INTO `app01_city` VALUES (17, '宝鸡', 248);
INSERT INTO `app01_city` VALUES (18, '包头', 256);
INSERT INTO `app01_city` VALUES (19, '阿坝', 264);
INSERT INTO `app01_city` VALUES (20, '朝阳', 294);
INSERT INTO `app01_city` VALUES (21, '滨州', 284);
INSERT INTO `app01_city` VALUES (22, '毕节', 409);
INSERT INTO `app01_city` VALUES (23, '蚌埠', 248);
INSERT INTO `app01_city` VALUES (24, '安康', 357);
INSERT INTO `app01_city` VALUES (25, '保山', 383);
INSERT INTO `app01_city` VALUES (26, '白银', 393);
INSERT INTO `app01_city` VALUES (27, '亳州', 198);
INSERT INTO `app01_city` VALUES (28, '巴中', 139);
INSERT INTO `app01_city` VALUES (29, '阿里', 109);
INSERT INTO `app01_city` VALUES (30, '安阳', 437);
INSERT INTO `app01_city` VALUES (31, '北海', 160);
INSERT INTO `app01_city` VALUES (32, '本溪', 299);
INSERT INTO `app01_city` VALUES (33, '阿拉善', 306);
INSERT INTO `app01_city` VALUES (34, '鞍山', 224);
INSERT INTO `app01_city` VALUES (35, '常德', 178);
INSERT INTO `app01_city` VALUES (36, '常州', 387);
INSERT INTO `app01_city` VALUES (37, '潮州', 179);
INSERT INTO `app01_city` VALUES (38, '巢湖', 163);
INSERT INTO `app01_city` VALUES (39, '郴州', 178);
INSERT INTO `app01_city` VALUES (40, '大连', 2050);
INSERT INTO `app01_city` VALUES (41, '崇左', 350);
INSERT INTO `app01_city` VALUES (42, '楚雄', 371);
INSERT INTO `app01_city` VALUES (43, '昌都', 80);
INSERT INTO `app01_city` VALUES (44, '丹东', 195);
INSERT INTO `app01_city` VALUES (45, '东莞', 2799);
INSERT INTO `app01_city` VALUES (46, '大庆', 237);
INSERT INTO `app01_city` VALUES (47, '德州', 266);
INSERT INTO `app01_city` VALUES (48, '德阳', 174);
INSERT INTO `app01_city` VALUES (49, '东营', 250);
INSERT INTO `app01_city` VALUES (50, '大理', 157);
INSERT INTO `app01_city` VALUES (51, '大同', 181);
INSERT INTO `app01_city` VALUES (52, '恩施', 413);
INSERT INTO `app01_city` VALUES (53, '鄂州', 167);
INSERT INTO `app01_city` VALUES (54, '迪庆', 338);
INSERT INTO `app01_city` VALUES (55, '定西', 374);
INSERT INTO `app01_city` VALUES (56, '大兴安岭', 341);
INSERT INTO `app01_city` VALUES (57, '德宏', 359);
INSERT INTO `app01_city` VALUES (58, '福州', 1822);
INSERT INTO `app01_city` VALUES (59, '抚顺', 288);
INSERT INTO `app01_city` VALUES (60, '佛山', 1591);
INSERT INTO `app01_city` VALUES (61, '鄂尔多斯', 134);
INSERT INTO `app01_city` VALUES (62, '防城港', 318);
INSERT INTO `app01_city` VALUES (63, '广州', 2912);
INSERT INTO `app01_city` VALUES (64, '阜新', 237);
INSERT INTO `app01_city` VALUES (65, '抚州', 127);
INSERT INTO `app01_city` VALUES (66, '阜阳', 222);
INSERT INTO `app01_city` VALUES (67, '贵阳', 1938);
INSERT INTO `app01_city` VALUES (68, '桂林', 1574);
INSERT INTO `app01_city` VALUES (69, '赣州', 203);
INSERT INTO `app01_city` VALUES (70, '贵港', 390);
INSERT INTO `app01_city` VALUES (71, '果洛', 86);
INSERT INTO `app01_city` VALUES (72, '甘孜', 324);
INSERT INTO `app01_city` VALUES (73, '广元', 127);
INSERT INTO `app01_city` VALUES (74, '广安', 108);
INSERT INTO `app01_city` VALUES (75, '哈尔滨', 1684);
INSERT INTO `app01_city` VALUES (76, '杭州', 2384);
INSERT INTO `app01_city` VALUES (77, '甘南', 53);
INSERT INTO `app01_city` VALUES (78, '合肥', 1888);
INSERT INTO `app01_city` VALUES (79, '葫芦岛', 231);
INSERT INTO `app01_city` VALUES (80, '邯郸', 247);
INSERT INTO `app01_city` VALUES (81, '淮南', 246);
INSERT INTO `app01_city` VALUES (82, '淮安', 329);
INSERT INTO `app01_city` VALUES (83, '湖州', 294);
INSERT INTO `app01_city` VALUES (84, '呼和浩特', 289);
INSERT INTO `app01_city` VALUES (85, '衡水', 204);
INSERT INTO `app01_city` VALUES (86, '海口', 298);
INSERT INTO `app01_city` VALUES (87, '海南', 79);
INSERT INTO `app01_city` VALUES (88, '惠州', 352);
INSERT INTO `app01_city` VALUES (89, '衡阳', 183);
INSERT INTO `app01_city` VALUES (90, '怀化', 416);
INSERT INTO `app01_city` VALUES (91, '黄山', 179);
INSERT INTO `app01_city` VALUES (92, '黄冈', 434);
INSERT INTO `app01_city` VALUES (93, '黄石', 163);
INSERT INTO `app01_city` VALUES (94, '河源', 161);
INSERT INTO `app01_city` VALUES (95, '鹤岗', 464);
INSERT INTO `app01_city` VALUES (96, '淮北', 185);
INSERT INTO `app01_city` VALUES (97, '菏泽', 235);
INSERT INTO `app01_city` VALUES (98, '贺州', 373);
INSERT INTO `app01_city` VALUES (99, '鹤壁', 440);
INSERT INTO `app01_city` VALUES (100, '黑河', 357);
INSERT INTO `app01_city` VALUES (101, '汉中', 413);
INSERT INTO `app01_city` VALUES (102, '呼伦贝尔', 132);
INSERT INTO `app01_city` VALUES (103, '红河', 108);
INSERT INTO `app01_city` VALUES (104, '河池', 364);
INSERT INTO `app01_city` VALUES (105, '荆门', 217);
INSERT INTO `app01_city` VALUES (106, '荆州', 219);
INSERT INTO `app01_city` VALUES (107, '嘉兴', 388);
INSERT INTO `app01_city` VALUES (108, '九江', 232);
INSERT INTO `app01_city` VALUES (109, '济南', 1880);
INSERT INTO `app01_city` VALUES (110, '晋城', 229);
INSERT INTO `app01_city` VALUES (111, '吉林', 332);
INSERT INTO `app01_city` VALUES (112, '晋中', 242);
INSERT INTO `app01_city` VALUES (113, '济宁', 363);
INSERT INTO `app01_city` VALUES (114, '吉安', 215);
INSERT INTO `app01_city` VALUES (115, '江门', 378);
INSERT INTO `app01_city` VALUES (116, '金华', 343);
INSERT INTO `app01_city` VALUES (117, '酒泉', 425);
INSERT INTO `app01_city` VALUES (118, '佳木斯', 462);
INSERT INTO `app01_city` VALUES (119, '金昌', 392);
INSERT INTO `app01_city` VALUES (120, '揭阳', 277);
INSERT INTO `app01_city` VALUES (121, '焦作', 275);
INSERT INTO `app01_city` VALUES (122, '锦州', 293);
INSERT INTO `app01_city` VALUES (123, '嘉峪关', 112);
INSERT INTO `app01_city` VALUES (124, '昆明', 1704);
INSERT INTO `app01_city` VALUES (125, '开封', 172);
INSERT INTO `app01_city` VALUES (126, '景德镇', 171);
INSERT INTO `app01_city` VALUES (127, '辽源', 431);
INSERT INTO `app01_city` VALUES (128, '辽阳', 196);
INSERT INTO `app01_city` VALUES (129, '连云港', 343);
INSERT INTO `app01_city` VALUES (130, '洛阳', 308);
INSERT INTO `app01_city` VALUES (131, '兰州', 1409);
INSERT INTO `app01_city` VALUES (132, '丽江', 423);
INSERT INTO `app01_city` VALUES (133, '廊坊', 220);
INSERT INTO `app01_city` VALUES (134, '丽水', 158);
INSERT INTO `app01_city` VALUES (135, '六安', 173);
INSERT INTO `app01_city` VALUES (136, '娄底', 126);
INSERT INTO `app01_city` VALUES (137, '聊城', 201);
INSERT INTO `app01_city` VALUES (138, '莱芜', 412);
INSERT INTO `app01_city` VALUES (139, '临沂', 293);
INSERT INTO `app01_city` VALUES (140, '柳州', 202);
INSERT INTO `app01_city` VALUES (141, '拉萨', 200);
INSERT INTO `app01_city` VALUES (142, '漯河', 164);
INSERT INTO `app01_city` VALUES (143, '凉山', 387);
INSERT INTO `app01_city` VALUES (144, '临汾', 147);
INSERT INTO `app01_city` VALUES (145, '乐山', 144);
INSERT INTO `app01_city` VALUES (146, '陇南', 338);
INSERT INTO `app01_city` VALUES (147, '来宾', 351);
INSERT INTO `app01_city` VALUES (148, '龙岩', 153);
INSERT INTO `app01_city` VALUES (149, '吕梁', 132);
INSERT INTO `app01_city` VALUES (150, '泸州', 403);
INSERT INTO `app01_city` VALUES (151, '林芝', 66);
INSERT INTO `app01_city` VALUES (152, '临沧', 85);
INSERT INTO `app01_city` VALUES (153, '临夏', 65);
INSERT INTO `app01_city` VALUES (154, '马鞍山', 155);
INSERT INTO `app01_city` VALUES (155, '眉山', 126);
INSERT INTO `app01_city` VALUES (156, '梅州', 224);
INSERT INTO `app01_city` VALUES (157, '牡丹江', 135);
INSERT INTO `app01_city` VALUES (158, '六盘水', 100);
INSERT INTO `app01_city` VALUES (159, '南京', 2449);
INSERT INTO `app01_city` VALUES (160, '宁波', 2107);
INSERT INTO `app01_city` VALUES (161, '南通', 1131);
INSERT INTO `app01_city` VALUES (162, '南宁', 1750);
INSERT INTO `app01_city` VALUES (163, '南阳', 163);
INSERT INTO `app01_city` VALUES (164, '南平', 131);
INSERT INTO `app01_city` VALUES (165, '宁德', 115);
INSERT INTO `app01_city` VALUES (166, '绵阳', 175);
INSERT INTO `app01_city` VALUES (167, '南昌', 1959);
INSERT INTO `app01_city` VALUES (168, '茂名', 186);
INSERT INTO `app01_city` VALUES (169, '内江', 126);
INSERT INTO `app01_city` VALUES (170, '盘锦', 170);
INSERT INTO `app01_city` VALUES (171, '濮阳', 144);
INSERT INTO `app01_city` VALUES (172, '那曲', 92);
INSERT INTO `app01_city` VALUES (173, '怒江', 42);
INSERT INTO `app01_city` VALUES (174, '南充', 151);
INSERT INTO `app01_city` VALUES (175, '平凉', 81);
INSERT INTO `app01_city` VALUES (176, '攀枝花', 97);
INSERT INTO `app01_city` VALUES (177, '莆田', 182);
INSERT INTO `app01_city` VALUES (178, '青岛', 2235);
INSERT INTO `app01_city` VALUES (179, '平顶山', 155);
INSERT INTO `app01_city` VALUES (180, '普洱', 60);
INSERT INTO `app01_city` VALUES (181, '萍乡', 107);
INSERT INTO `app01_city` VALUES (182, '泉州', 311);
INSERT INTO `app01_city` VALUES (183, '秦皇岛', 183);
INSERT INTO `app01_city` VALUES (184, '曲靖', 104);
INSERT INTO `app01_city` VALUES (185, '钦州', 61);
INSERT INTO `app01_city` VALUES (186, '清远', 157);
INSERT INTO `app01_city` VALUES (187, '衢州', 170);
INSERT INTO `app01_city` VALUES (188, '齐齐哈尔', 164);
INSERT INTO `app01_city` VALUES (189, '深圳', 1948);
INSERT INTO `app01_city` VALUES (190, '上海', 3741);
INSERT INTO `app01_city` VALUES (191, '黔西南', 92);
INSERT INTO `app01_city` VALUES (192, '日喀则', 70);
INSERT INTO `app01_city` VALUES (193, '黔东南', 84);
INSERT INTO `app01_city` VALUES (194, '日照', 162);
INSERT INTO `app01_city` VALUES (195, '庆阳', 114);
INSERT INTO `app01_city` VALUES (196, '潜江', 102);
INSERT INTO `app01_city` VALUES (197, '黔南', 82);
INSERT INTO `app01_city` VALUES (198, '苏州', 2379);
INSERT INTO `app01_city` VALUES (199, '沈阳', 2313);
INSERT INTO `app01_city` VALUES (200, '四平', 212);
INSERT INTO `app01_city` VALUES (201, '石家庄', 2191);
INSERT INTO `app01_city` VALUES (202, '绥化', 152);
INSERT INTO `app01_city` VALUES (203, '随州', 146);
INSERT INTO `app01_city` VALUES (204, '十堰', 187);
INSERT INTO `app01_city` VALUES (205, '汕头', 274);
INSERT INTO `app01_city` VALUES (206, '宿州', 192);
INSERT INTO `app01_city` VALUES (207, '绍兴', 226);
INSERT INTO `app01_city` VALUES (208, '宿迁', 245);
INSERT INTO `app01_city` VALUES (209, '三亚', 171);
INSERT INTO `app01_city` VALUES (210, '上饶', 155);
INSERT INTO `app01_city` VALUES (211, '朔州', 142);
INSERT INTO `app01_city` VALUES (212, '韶关', 159);
INSERT INTO `app01_city` VALUES (213, '汕尾', 203);
INSERT INTO `app01_city` VALUES (214, '商丘', 159);
INSERT INTO `app01_city` VALUES (215, '三明', 162);
INSERT INTO `app01_city` VALUES (216, '邵阳', 163);
INSERT INTO `app01_city` VALUES (217, '遂宁', 151);
INSERT INTO `app01_city` VALUES (218, '台湾', 59);
INSERT INTO `app01_city` VALUES (219, '铁岭', 265);
INSERT INTO `app01_city` VALUES (220, '天津', 2997);
INSERT INTO `app01_city` VALUES (221, '通化', 191);
INSERT INTO `app01_city` VALUES (222, '太原', 1740);
INSERT INTO `app01_city` VALUES (223, '三门峡', 136);
INSERT INTO `app01_city` VALUES (224, '山南', 85);
INSERT INTO `app01_city` VALUES (225, '商洛', 108);
INSERT INTO `app01_city` VALUES (226, '泰州', 249);
INSERT INTO `app01_city` VALUES (227, '通辽', 169);
INSERT INTO `app01_city` VALUES (228, '铜陵', 209);
INSERT INTO `app01_city` VALUES (229, '台州', 315);
INSERT INTO `app01_city` VALUES (230, '泰安', 279);
INSERT INTO `app01_city` VALUES (231, '铜川', 131);
INSERT INTO `app01_city` VALUES (232, '唐山', 327);
INSERT INTO `app01_city` VALUES (233, '铜仁', 135);
INSERT INTO `app01_city` VALUES (234, '温州', 1768);
INSERT INTO `app01_city` VALUES (235, '无锡', 2309);
INSERT INTO `app01_city` VALUES (236, '天水', 132);
INSERT INTO `app01_city` VALUES (237, '武汉', 2597);
INSERT INTO `app01_city` VALUES (238, '潍坊', 390);
INSERT INTO `app01_city` VALUES (239, '威海', 470);
INSERT INTO `app01_city` VALUES (240, '乌鲁木齐', 276);
INSERT INTO `app01_city` VALUES (241, '芜湖', 311);
INSERT INTO `app01_city` VALUES (242, '武威', 142);
INSERT INTO `app01_city` VALUES (243, '渭南', 207);
INSERT INTO `app01_city` VALUES (244, '文山', 126);
INSERT INTO `app01_city` VALUES (245, '梧州', 156);
INSERT INTO `app01_city` VALUES (246, '乌海', 132);
INSERT INTO `app01_city` VALUES (247, '厦门', 1804);
INSERT INTO `app01_city` VALUES (248, '香港', 68);
INSERT INTO `app01_city` VALUES (249, '西安', 2149);
INSERT INTO `app01_city` VALUES (250, '乌兰察布', 90);
INSERT INTO `app01_city` VALUES (251, '徐州', 346);
INSERT INTO `app01_city` VALUES (252, '邢台', 227);
INSERT INTO `app01_city` VALUES (253, '新乡', 214);
INSERT INTO `app01_city` VALUES (254, '咸阳', 262);
INSERT INTO `app01_city` VALUES (255, '许昌', 226);
INSERT INTO `app01_city` VALUES (256, '兴安', 100);
INSERT INTO `app01_city` VALUES (257, '孝感', 147);
INSERT INTO `app01_city` VALUES (258, '襄阳', 222);
INSERT INTO `app01_city` VALUES (259, '宣城', 156);
INSERT INTO `app01_city` VALUES (260, '忻州', 151);
INSERT INTO `app01_city` VALUES (261, '湘潭', 151);
INSERT INTO `app01_city` VALUES (262, '咸宁', 154);
INSERT INTO `app01_city` VALUES (263, '湘西', 103);
INSERT INTO `app01_city` VALUES (264, '新余', 105);
INSERT INTO `app01_city` VALUES (265, '西宁', 199);
INSERT INTO `app01_city` VALUES (266, '西双版纳', 79);
INSERT INTO `app01_city` VALUES (267, '锡林郭勒', 73);
INSERT INTO `app01_city` VALUES (268, '信阳', 159);
INSERT INTO `app01_city` VALUES (269, '延边', 217);
INSERT INTO `app01_city` VALUES (270, '运城', 175);
INSERT INTO `app01_city` VALUES (271, '银川', 286);
INSERT INTO `app01_city` VALUES (272, '盐城', 305);
INSERT INTO `app01_city` VALUES (273, '烟台', 365);
INSERT INTO `app01_city` VALUES (274, '阳泉', 156);
INSERT INTO `app01_city` VALUES (275, '扬州', 1509);
INSERT INTO `app01_city` VALUES (276, '营口', 195);
INSERT INTO `app01_city` VALUES (277, '岳阳', 170);
INSERT INTO `app01_city` VALUES (278, '宜昌', 215);
INSERT INTO `app01_city` VALUES (279, '益阳', 153);
INSERT INTO `app01_city` VALUES (280, '阳江', 206);
INSERT INTO `app01_city` VALUES (281, '永州', 141);
INSERT INTO `app01_city` VALUES (282, '宜春', 124);
INSERT INTO `app01_city` VALUES (283, '玉林', 152);
INSERT INTO `app01_city` VALUES (284, '宜宾', 141);
INSERT INTO `app01_city` VALUES (285, '雅安', 96);
INSERT INTO `app01_city` VALUES (286, '玉树', 70);
INSERT INTO `app01_city` VALUES (287, '玉溪', 122);
INSERT INTO `app01_city` VALUES (288, '云浮', 125);
INSERT INTO `app01_city` VALUES (289, '淄博', 335);
INSERT INTO `app01_city` VALUES (290, '郑州', 2098);
INSERT INTO `app01_city` VALUES (291, '枣庄', 197);
INSERT INTO `app01_city` VALUES (292, '张家口', 159);
INSERT INTO `app01_city` VALUES (293, '镇江', 223);
INSERT INTO `app01_city` VALUES (294, '珠海', 1221);
INSERT INTO `app01_city` VALUES (295, '延安', 139);
INSERT INTO `app01_city` VALUES (296, '榆林', 121);
INSERT INTO `app01_city` VALUES (297, '遵义', 153);
INSERT INTO `app01_city` VALUES (298, '中山', 313);
INSERT INTO `app01_city` VALUES (299, '漳州', 178);
INSERT INTO `app01_city` VALUES (300, '周口', 138);
INSERT INTO `app01_city` VALUES (301, '舟山', 159);
INSERT INTO `app01_city` VALUES (302, '张家界', 108);
INSERT INTO `app01_city` VALUES (303, '肇庆', 226);
INSERT INTO `app01_city` VALUES (304, '资阳', 118);
INSERT INTO `app01_city` VALUES (305, '张掖', 125);
INSERT INTO `app01_city` VALUES (306, '昭通', 123);
INSERT INTO `app01_city` VALUES (307, '湛江', 216);
INSERT INTO `app01_city` VALUES (308, '自贡', 123);
INSERT INTO `app01_city` VALUES (309, '驻马店', 154);
INSERT INTO `app01_city` VALUES (310, '株洲', 137);

-- ----------------------------
-- Table structure for app01_partjobinfo
-- ----------------------------
DROP TABLE IF EXISTS `app01_partjobinfo`;
CREATE TABLE `app01_partjobinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `county` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_j` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jobName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `readCount` int(11) NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateTime` datetime(6) NOT NULL,
  `companyName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(10, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 98003 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of app01_partjobinfo
-- ----------------------------
INSERT INTO `app01_partjobinfo` VALUES (97865, '哈尔滨', '南岗', '文员文秘', '大专', 'http://hrb.ssjzw.com/job/2012103628.html', '办公文案文员', 865, '2800元/月', '2019-05-09 14:59:18.000000', '哈尔滨新感觉广告传媒有限责任公司 ', '[\'岗位职责：完成资料的查阅，整理，信息登记及其他办公室日常工作。\', \'工作时间：9:00—12:00；13:00—17:00。\', \'任职资格：大专或本科以上学历，思路清晰，办事周到，熟练操作办公软件。\']', 2800.00);
INSERT INTO `app01_partjobinfo` VALUES (97866, '南京', '玄武', '营业员', '本科', 'http://nj.ssjzw.com/job/2012097190.html', '招聘夫子庙店店员5名', 688, '100元/天', '2019-04-01 19:08:16.000000', '茉莉花食品公司 ', '[\'要求：女性，18-38岁，形象好，沟通佳，有经验者优先。\', \'上班时间：09：00-22:00，早晚班，8小时工作制\', \'面试地址：南京秦淮夫子庙贡院街122号秦淮礼物内好一朵茉莉花（科举博物馆售票隔壁）\', \'（-）+提成+保险+住宿\', \'福利待遇有：五险一金、包住，工作环境好，带薪培训，节假日发放礼品。\', \'晋升机制：店员-收银员-领班-店长-区域经理\', \'（每个岗位5个等级）\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97867, '上海', '浦东', '营业员', '高中', 'http://sh.ssjzw.com/job/2012102176.html', '阿迪达斯杨高中路店员', 647, '100元/天', '2019-04-30 23:41:18.000000', '阿迪达斯 ', '[\'阿迪达斯体育（中国）有限公司招聘导购员，月薪-元。福利待遇有：五险一金、年底双薪、交通补助、员工体检、带薪年假，工作环境好，有相关经验者优先。\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97868, '上海', '浦东', '营业员', '本科', 'http://sh.ssjzw.com/job/2012101699.html', '饮品店8小时周结', 679, '200元/天', '2019-04-27 12:35:55.000000', '上海煜世文化传媒有限公司 ', '[\'浦东八佰伴商圈\', \'，饮品店\', \'168－210一天周结\', \'店内统一办理健康证\', \'【招聘岗位】店员\', \'18—30周岁\', \'男女不限\', \'同业有经验者优先\', \'【工作内容】饮品制作、收银出单、清洁区域\', \'【工作时间】8小时轮班制\', \'做六休一\', \'09:00—18:00\', \'14:00—22:00\', \'，加班另计\', \'【薪资待遇】21元/小时，节日63/小时【\', \'周结工资】\', \'【面试地址】浦东南路号（9号线2号出口）明天下午13:00\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97869, '北京', '全市', '代理合作', '大专', 'http://bj.ssjzw.com/job/2012125168.html', '介绍_文的人', 790, '80元/天', '2019-08-30 11:18:02.000000', '文化公司 ', '[\'寻找需要发表论文的人，论文内容只要和文化有关就可以（比如文化艺术，文化传承，文化研究，历史文化，文化教育等等）\', \'发表论文需要自付版面费！\', \'只需要介绍过来，成交发表一篇反80、\']', 80.00);
INSERT INTO `app01_partjobinfo` VALUES (97870, '北京', '全市', '加工制作', '高中', 'http://bj.ssjzw.com/job/2012115392.html', '武汉金华招聘操作工', 962, '5000元/月', '2019-07-04 10:40:22.000000', '甘肃合众 ', '[\'工作内容：\', \'主要生产空调配件，工作简单，需要一定的责任心。\', \'工作时间:\', \'7点-19点，基本长白班，有吃饭时间，月休2天。（工作时间具体根据企业安排）\', \'招聘工种：\', \'机床操作工、机床维修工、电工、模具维修工、数控人员。\', \'招工要求：年龄18周岁—50周岁，品行端正。\', \'1、初中以上学历,无大面积纹身、无犯罪记录、无身体精神异常，身高：男1、65米以上，女1、55米以上，身体健康，无传染疾病。；\', \'2、身体健康，心理健康，二代身份证原件须真实有效；\', \'3、能吃苦耐劳，有相关工作经验优先。\']', 5000.00);
INSERT INTO `app01_partjobinfo` VALUES (97871, '北京', '全市', '加工制作', '硕士', 'http://bj.ssjzw.com/job/2012115391.html', '上海达丰招聘操作工 ', 898, '5000元/月', '2019-07-04 10:40:18.000000', '甘肃合众 ', '[\'主要工作内容：\', \'1、主要以生产笔记本电脑为主，兼顾服务器、手机、液晶显示器、液晶电视等IT产品的生产；\', \'2、两班制：能配合上夜，班接受倒班；\', \'录入条件：\', \'1、男女比例1:1，会26个英文字母，简单加减乘除法；\', \'2、身份证原件及身份证复印件8份，毕业证复印件1张（有就带着，没有也没关系，学历高晋升快），一寸照片6张；\', \'3、无明显纹身烟疤（看手），无案底，黑名单永不录用；\', \'4、达丰达富自离两个月以上可返厂；上海达丰、常熟达富三进三出者不录用。\', \'5、当天面试，当天体检，当天分宿舍，次日报道签合同；\']', 5000.00);
INSERT INTO `app01_partjobinfo` VALUES (97872, '北京', '海淀', '市场销售', '高中', 'http://bj.ssjzw.com/job/2012073706.html', '7000元直聘轻松自由高薪的短期兼职', 1573, '600元/天', '2019-04-05 23:40:34.000000', '北京龙源创新信息技术有限公司 ', '[\'工作10天，保底薪酬元起(白天1-2小时)！！正规公司直招兼职，承诺不收取任何形式费用！！\', \'年龄30周岁以下女性，身高在160公分以上（北京地区）均可！！在线咨询QQ：\', \'或者QQ:\', \'！！！\']', 600.00);
INSERT INTO `app01_partjobinfo` VALUES (97873, '北京', '全市', '建筑装潢', '高中', 'http://bj.ssjzw.com/job/2012117873.html', '绿化工程：车库顶板绿化、屋顶花园、垂直绿', 916, '3元/小时', '2019-07-18 10:31:32.000000', '泰安市泽瑞土工材料营销部 ', '[\'公司拥有自主开发的排水蓄水和环保垃圾覆盖防渗防水材料，在环保领域中的应用及技术先进性居国内同行业前列，是一个集研发制造、工程设计、施工安装、运营服务为一体的环保企业。\', \'应用领域：\', \'绿化工程：车库顶板绿化、屋顶花园、垂直绿化、斜屋顶绿化、足球场、高尔夫球场。市政工程：机场、道路路基、地铁、隧道、垃圾填埋场。建筑工程：建筑物基础上层或下层、地下室内外墙体和底板以及顶板、屋面防渗和隔热层等。水利工程：水库防渗水、蓄水池、人工湖防渗水。交通工程：公路、铁路路基、堤坝和护坡层。\', \'我厂经营湖南地区排水蓄水储水透水疏水板、、、我们将坚持规模与特色经营，信奉“信誉至上，客户至上”“诚信、专业、\', \'高效、超越”的企业精神，真诚地与社会各界朋友广泛合\']', 3.00);
INSERT INTO `app01_partjobinfo` VALUES (97874, '武汉', '青山', '服务员', '硕士', 'http://wh.ssjzw.com/job/2012138885.html', '餐饮预订员', 446, '18元/小时', '2020-08-18 10:39:45.000000', '广利投资有限公司滁州国际酒店  ', '[\'任职资格:\', \'1、女，18—35周岁，高中以上学历；\', \'2、口齿清晰，表达能力强；\', \'3、有餐饮工作经验者优先考虑。\', \'岗位职责：\', \'1、正确无误的接听定餐电话，并传到达各部；\', \'2、与客人建立良好的关系，了解客人喜好，主动倾销菜品。\', \'3、接受酒店所有的宴会通知单。\', \'4、建立完善的客户档案分析表，了解所有单位用餐统计便于做好造访工作。\', \'5、统计新推菜品，反馈意见，根据不同情况提出公道化建议。\', \'6、适当处理客人投诉，并反馈于餐饮经理。\', \'7、客人预订时，仔细记录好预订时间、宴会情势，宴会标准，宴会地点，进餐桌数、口味喜好、风格习惯和忌讳等。\', \'8、询问客人特殊要求，具体记录并复述，对不能满足要求的应予婉转拒绝和向上级汇报、请示、妥善解决。\', \'9、根据客人要求，仔细填写预订表。\', \'10、填写预定单，并传到各点。\', \'11、完成各级交办的其它任务。\']', 18.00);
INSERT INTO `app01_partjobinfo` VALUES (97875, '武汉', '青山', '服务员', '硕士', 'http://wh.ssjzw.com/job/2012139093.html', '急招餐厅服务员', 447, '18元/小时', '2020-08-21 13:53:57.000000', '广州市博粤置业有限公司 ', '[\'急招珠江新城自助餐餐厅服务员\', \'【工作待遇】：14/h\', \'包吃住\', \'【工作内容】:加水果，加海鲜等工作\', \'简单轻松\', \'【工作时间】:11：00-15：00，17：00-22:00\', \'【工作要求】:\', \'16-35岁，生，要求个子高挑\', \'需做2个月以上\']', 18.00);
INSERT INTO `app01_partjobinfo` VALUES (97876, '天津', '开发区', '其它', '大专', 'http://tj.ssjzw.com/job/2012131631.html', '线束厂单休姑娘多速报名', 630, '5000元/月', '2020-02-06 21:12:06.000000', '', '[\'本公司于年9月正式注册成立。目前为长春一汽富晟李尔汽车电器电子有限公司的子公司，由一汽富晟集团和李尔（毛里求斯）有限公司共同设立的中外合资公司。\', \'主营\', \'：汽车电子电器产品的设计、开发、生产等业务，并为一汽大众周边市场提供汽车线束两项业务。\', \'招聘要求：16-40周岁，男女不限，无纹身及传染病。\', \'工作内容：奔驰\', \'宝马\', \'现代等汽车线束制造、检验、包装，工作轻松，\', \'工作时间：一天11小时，上六休一两班倒\', \'薪资待遇：社会员工工资17元/小时\', \'一天（180元以上）左右，学生工工资14/小时一天（150以上）左右，月综合薪资元-元，每个月5号发工资。\', \'福利待遇：\', \'1、管工作餐、管住、\', \'2、工厂的生产环境严格按照7S管理，厂内除湿、无尘、恒温、无噪音、无异味；\']', 5000.00);
INSERT INTO `app01_partjobinfo` VALUES (97877, '北京', '全市', '礼仪主持', '硕士', 'http://bj.ssjzw.com/job/2012102090.html', '汽车用品展示礼仪协助人员', 943, '300元/小时', '2019-04-30 12:39:22.000000', '', '[\'汽车用品展示礼仪协助人员：\', \'负责汽车用品产品的展示、解说、沟通等，会进行简单的产品培训。\', \'要求：女，年龄18-28周岁之间，甜美可爱，青春有活力，身高在165以上，整体形象好，气质佳。\', \'主要讲解产品为汽车记录仪，主要解说产品的优势。\', \'薪资待遇好，完工结算不拖欠，无模卡无押金，不收取任何费用。\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97878, '北京', '全市', '礼仪主持', '高中', 'http://bj.ssjzw.com/job/2012102092.html', '大型汽车轮胎展礼仪人员', 922, '1200元/天', '2019-04-30 12:59:24.000000', '', '[\'大型汽车轮胎展礼仪人员：\', \'负责汽车轮胎展示厅内站立烘托气氛\', \'要求：女，年龄18-28周岁之间，青春有活力，身高在163以上，整体形象好，气质佳。\', \'薪资待遇好，完工结算不拖欠，无模卡无押金，不收取任何费用。\']', 1200.00);
INSERT INTO `app01_partjobinfo` VALUES (97879, '北京', '全市', '建筑装潢', '大专', 'http://bj.ssjzw.com/job/2012119516.html', '供应抗老化鱼塘防渗膜|农业果园蓄水池防渗', 916, '3元/小时', '2019-07-24 10:26:27.000000', '泰安市泽瑞土工材料营销部 ', '[\'桑经理\', \'抗老化鱼塘防渗膜农业果园蓄水池防渗膜施工废弃物处理、废渣处理等环保项目中。垃圾填埋处理保护周围环境不被破坏成为重中之重。水平防渗层由垃圾填埋场边坡的垃圾场土工膜和土层构成，上下界往往接受不平衡的摩擦力，然后致使膜内发生拉应力。在垃圾填埋场中发挥着不可或缺的重要作用。\', \'功能：防渗、隔离、防水、绿化。\', \'防渗膜生产需要采用优良的原料聚乙烯而成经过吹塑而成，经过严格的配比，生产技术人员层层检查检测。\', \'具有良好的防渗膜表面光滑，光泽度好，质地柔软，溶脂高；抗老化，耐腐蚀，使用寿命长。产品无毒无害特别适用于蓄水池、灌溉池、种植业、水产黄鳝泥鳅海参养殖防渗膜、养鱼池防渗膜、莲藕池防渗膜、河道堤坝防渗膜蓄水池防渗膜、污水池防渗膜、抗老化鱼塘防渗膜、农业果园蓄水池防渗膜施工垃圾填埋场防渗膜、沉淀池煤灰池防渗膜等工程等。\', \'1、防渗膜幅宽4米到10米、0、2毫米-2毫米厚度规格齐全。\', \'2、具有优良的耐环境应力开裂性能及优良的耐化学腐蚀性能。\', \'3、优良的耐化学腐蚀性能。\', \'4、具有较大的使用温度范围和较长的使用寿命。\', \'5、使用于鱼塘防渗、水池防渗、景观湖防渗、垃圾覆盖防渗、果园蓄水池防渗防漏用、垃圾填埋场、尾矿储存场、渠道防渗、堤坝防渗及地铁工程等。\', \'养殖膜本身就具有推动虾苗的成长，可以缩短老到的时间。通水产养殖膜夏天放养方式、水产养殖膜无需脱碱、无需消毒。\', \'抗老化鱼塘防渗膜、农业果园蓄水池防渗膜施工公司始终致力于“做客户长久的朋友，做客户放心的产品”。欢迎订购：\', \'桑经理\']', 3.00);
INSERT INTO `app01_partjobinfo` VALUES (97880, '北京', '全市', '建筑装潢', '大专', 'http://bj.ssjzw.com/job/2012125317.html', '结算专员', 999, '8000元/月', '2019-09-02 12:52:47.000000', '', '[\'负责报价，班组结算！投标、过程签证，结算资料等等，预结算员所需要做的事项\', \'岗位职责：负责项目投标报价、施工组织设计编制、项目成本核算及建安分包结算审计工作。任职要求：\', \'1、工程造价（概预算）专业或建筑工程相近专业专科以上学历；有建造师证者优先。2、能独立完成项目投标报价、工程预决算工作，有较强的成本核算控制能力、3、熟练使用兴安得力云计价平台(清单计价）、工程算量、预算等应用软件，熟悉建筑工程施工工艺；4、工作地点：上海；5、有敬业精神和责任感\', \'薪资八千到两万，包吃住，看个人能力定工资。上海和广州都需要哦。有意者联系\', \'或微信sanjinfan\', \'张小姐\']', 8000.00);
INSERT INTO `app01_partjobinfo` VALUES (97881, '北京', '全市', '网站建设', '硕士', 'http://bj.ssjzw.com/job/2012115826.html', '高薪招聘微信兼职人员（150/小时）', 1265, '200元/小时', '2019-07-06 23:37:46.000000', '', '[\'上午10:00到10：30有空余时间\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97882, '北京', '全市', '文员文秘', '本科', 'http://bj.ssjzw.com/job/2012148034.html', '招聘助理', 370, '240元/天', '2021-03-22 15:16:16.000000', '泰康养老分公司 ', '[\'招聘助理：\', \'岗位要求：25-45岁\', \'大专以上学历\', \'岗位职责：\', \'1、对业务日常工作完成检查\', \'2、日常考勤提醒\', \'3、辅助公司政策实施\', \'4、职位招聘\', \'5、入职管理\', \'6、底薪+提成+满勤+招聘补助\', \'7、需熟练运用基本办公软件，有1年以上行政或HR经验优先\', \'工作时间：9-16点，六日双休，工作地点：通州万达附近，联系人：张女士，\', \'（同微信）\']', 240.00);
INSERT INTO `app01_partjobinfo` VALUES (97883, '北京', '全市', '网站建设', '本科', 'http://bj.ssjzw.com/job/2012126263.html', '诚聘网络产品信息发布员', 980, '300元/天', '2019-09-23 15:36:02.000000', '世联博研（北京）科技有限公司 ', '[\'1、负责把公司指定产品信息在阿里巴巴\', \'m或其他网站上发布产品宣传广告\', \'2、工作时间不限制，在单位或家兼职，按发布产品条数付薪水，多劳多得\', \'3、高中及以上学历，\', \'4、有淘宝等网络销售经历者优先录用\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97884, '深圳', '龙岗', '其它', '硕士', 'http://sz.ssjzw.com/job/2012150627.html', '布吉兆驰电子', 54, '5800元/月', '2022-06-12 20:59:07.000000', '布吉兆驰电子 ', '[\'6月13号\', \'布吉兆驰电子\', \'一、【企业概况】主要生产液晶电视、机顶盒、LED元器件、网络通讯终端等电子产品。空调车间，两班倒（部分长白班随机分），有站有坐，普通工衣，工厂环境一流，管理人性化，好留人！二入职需满三个月，自离的永不录用。\', \'二、【招聘要求】男女不限，24-40岁，本人真有效证件，有磁性，无案底，四大民族已满，身体健康，微小纹身可收，无染发！入职统一体检，自备体检费40元，有健康证或体检报告无需体检！\', \'三、员工：底薪元/月，加班按劳动法，平时加班20、34元/小时，周末加班27、12元/小时，节假日加班40、69元/小时，岗位津贴0-元不等，工龄津贴50-300元/月不等(每半年加50元/月)，夜班津贴25元/晚。每月15号发放上月工资，不提供借支。\', \'四、【食宿情况】厂区宿舍免费住宿，水电平摊，外宿补贴85元/月，宿舍有空调、热水，8-10人/间。入职第一个月刷卡吃饭，先吃后扣，第二个开始自行充卡，伙食补贴200元/月！\', \'工作满一个月，可获200元新人稳岗奖，持续三个月，由工厂发放。每月15号发放上月工资，防疫政策：面试须提供健康码和48小时核酸检测，行程卡无*号，接种3针疫苗。\', \'加微信\']', 5800.00);
INSERT INTO `app01_partjobinfo` VALUES (97885, '北京', '全市', '网站建设', '大专', 'http://bj.ssjzw.com/job/2012131576.html', '2020最新版钱包量化区块链挖矿系统', 844, '100元/小时', '2020-02-03 16:32:02.000000', '河南易佳互联 ', '[\'最新版钱包量化区块链挖矿系统\', \'全新UI区块链挖矿系统，新增屏蔽省市,运营级云矿机，带交易大厅可二开，可封装app\', \'界面高端大气上档次\', \'合约大厅实时兑换矿机，我的合约一键领取矿机产量\', \'交易大厅—求购订单—发布订单等\', \'新增人机验证注册\', \'后台团队树形图，快速掌握团队情况\', \'后台赠送矿机，矿机记录，赠送可售币，可售余额等。\', \'后台矿机管理，订单明细等。\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97886, '北京', '全市', '营业员', '高中', 'http://bj.ssjzw.com/job/2012097155.html', '水果店营业员', 727, '100元/天', '2019-04-01 18:35:10.000000', '城关区甘南路果味香水果店 ', '[\'果唯伊水果超市，在兰州已经有三十多家连锁店，因业务拓展，需要招聘3-5名营业员\', \'工作分早中晚班，工作内容简单，轻松，无压力\', \'主要工作负责早晨收货，平时理货，接待顾客\', \'工资保底，根据店铺营业额增加提成，能力强者有好的发展机会\', \'工作地点:甘南路与皋兰路交口(长征写字楼下)。\', \'附近车站:路桥音乐广场，皋兰路站\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97887, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012142382.html', '日结导游副班免费吃住免费旅游', 800, '100元/小时', '2020-11-10 07:50:52.000000', '深圳市德成商务咨询有限公司 ', '[\'急招日结酱油导游副班，轻松好玩，免费旅游，工资日结，《今天下午安排宿舍，明天上班》\', \'现急招日结酱油校外辅导员（副班），轻松、自由、好玩。我们主要是在深圳及周边各旅游景点（东部华侨城、观澜湖、大峡谷、欢乐谷、深圳野生动物园、锦绣中华、欢乐田园、海洋世界、民俗村、西冲、梦幻百花洲等）带学生参观旅游学习，协助主班带领学生完成校外实践，负责学生的安全，不要走丢，上下车时扶下学生。\', \'【要求】本人身份证，16～35周岁，个人干净整洁，胖瘦适中。要服从管理，喝酒、穿拖鞋、纹身太大的不要。\', \'【待遇】天天日结，100元/天，包中晚餐和水，包接送（学校到宿舍），包住。至少做一天，可连续做。住在风景迷人的景区里，宿舍有空调和免费的军用被。表现好的，可以提升主班。主班170元/天，周末可以带你出亲子团，350元/天。\', \'【集合】今天下午可以安排宿舍！宿舍就在横岗，附近有地铁站，交通较为便利。\', \'报名热线刘姐\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97888, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012128783.html', '龙华民治货物打包', 677, '100元/天', '2019-11-15 15:03:49.000000', '蜻蜓电子商务有限公司 ', '[\'女性，18-30岁，\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97889, '北京', '全市', '网站建设', '高中', 'http://bj.ssjzw.com/job/2012127930.html', 'SAAS平台运维人员', 888, '100元/小时', '2019-10-28 16:41:21.000000', '', '[\'域名维护（申请、备案）、微信公众号维护（申请、认证、接口配置）、支付宝企业版(申请认证、接口配置)、商城后台运维（可培训上岗）\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97890, '北京', '全市', '钟点工', '高中', 'http://bj.ssjzw.com/job/2012098012.html', '手机兼职薪资日结', 746, '30元/小时', '2019-04-09 00:53:46.000000', '嘉昊文化传媒有限公司 ', '[\'只要有手机就可以操作，薪资30/小时，app推广，有导师一对一教学\']', 30.00);
INSERT INTO `app01_partjobinfo` VALUES (97891, '深圳', '龙岗', '其它', '大专', 'http://sz.ssjzw.com/job/2012099315.html', '诚招罗湖区保安', 809, '300元/天', '2019-04-16 09:16:25.000000', '华信中安（北京）保安服务有限公司深圳分公司 ', '[\'要求：18-40岁，身高1、70米，无纹身，无伤疤，无前科。\', \'厂区保安，需要倒班，底薪，另加加班费，五险一金\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97892, '北京', '全市', '会计', '硕士', 'http://bj.ssjzw.com/job/2012129209.html', '招聘会计英语辅导人员', 854, '50元/小时', '2019-11-25 13:38:37.000000', '', '[\'岗位要求：\', \'1、本科大三以上学生，专业不限；\', \'2、英语必须满足其中之一：①非英语专业英语六级500分以上；②英语专业英语专八良好以上；③托福90分以上；④雅思6、5分以上；⑤其他（能提供比前四项更具实力凭证）；\', \'3、做事认真、带有责任心，能在规定的时间内完成，不拖稿；\', \'工作时间：工作时间不限，可以根据自己的空闲时间与兴趣自由选择你可以胜任的领域，我们的工作安排公正合理人性化；\', \'工作地点：不限地区地点，直接线上操作。\']', 50.00);
INSERT INTO `app01_partjobinfo` VALUES (97893, '北京', '全市', '礼仪主持', '高中', 'http://bj.ssjzw.com/job/2012102091.html', '企业开幕仪式礼仪接待人员', 920, '200元/小时', '2019-04-30 12:51:36.000000', '', '[\'企业开幕仪式礼仪接待人员：\', \'负责人员签到、礼品派发、开幕剪彩托盘等。\', \'要求：女，年龄18-28周岁之间，身高在163以上，整体形象好，气质佳，可以穿高跟鞋。\', \'薪资待遇好，完工结算不拖欠，无模卡无押金，不收取任何费用。\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97894, '北京', '全市', '翻译', '硕士', 'http://bj.ssjzw.com/job/2011861389.html', '英语兼职翻译（笔译）', 5935, '500元/天', '2019-04-02 15:01:59.000000', '信实翻译公司 ', '[\'职位：英语兼职翻译（笔译）（信实翻译公司）\', \'该职位不需要到公司上班，在学校或在家里接单即可,\', \'时间上比较灵活、\', \'具体情况如下：\', \'我司正在持续快速发展阶段，未来2-3年，需要大量优秀的英语翻译。稿件专业程度不高，但需要译员有较好的语言功底，可保证充足的翻译量。\', \'要求：\', \'1、\', \'重点大学英语专业优先\', \'2、\', \'英语水平优秀\', \'鉴于我司对项目认真负责的态度，需要对译员进行试译，试译文链接如下（其中，第1项（中译英普通（通用）类）和第2项（英译中普通（通用）类）为必选试译，其他项是自由选择的）：\', \'http://www、xinshify、com、cn/index、php/resource/doc/375\', \'另外，我们目前也比较紧缺合同类的译员，如果您对此领域比较擅长，也可完成上述链接中的“中译英法律类”和“英译中法律类”，谢谢。\', \'有意者，请尽早发回试译文，连同个人简历发至邮箱：jz#xinshify、com、cn，邮件标题格式：“姓名+\', \'应聘英语兼职笔译项目”、简历名格式：“英语_姓名_简历更新时间”，如：“英语_张三丰_、doc”，以及试译文格式：“姓名_英语**项目试译文_日期”。\']', 500.00);
INSERT INTO `app01_partjobinfo` VALUES (97895, '深圳', '龙岗', '其它', '大专', 'http://sz.ssjzw.com/job/2012141826.html', '天天日结！平湖日结跟车配送免费包吃包住', 802, '110元/天', '2020-11-10 07:50:54.000000', '深圳市德成商务咨询有限公司 ', '[\'龙岗平湖天天日结110元免费包吃包住！当天报名即可免费安排吃住！《7号晚上可以上班》\', \'日结蔬菜配送！蔬菜运输公司现补招蔬菜配送员。每天凌晨一点开始上班，到第二天上午8/9点结束。主要是给深圳各个区的酒店，工厂银行，海关配送蔬菜。一天实际做事时间只有4-5小时，大部分时间坐车十分轻松。\', \'1、要求18～55周岁\', \'2、工资待遇：免费包吃包住，不扣一分钱！110元/天。确定做的，发短信：姓名+蔬菜配送\', \'到我手机，我会一一回复。\', \'工作地址：大岭路八号，新南大岭公交站\']', 110.00);
INSERT INTO `app01_partjobinfo` VALUES (97896, '北京', '全市', '培训', '大专', 'http://bj.ssjzw.com/job/2012110972.html', '地质大学专科本科热招', 929, '0元/小时', '2019-06-11 15:05:45.000000', '', '[\'中国地质大学（远程教育，重点主推。）\', \'中国地质大学（北京）继续教育学院是我校成人高等教育、现代远程教育和培训工作等各类继续教育的归口管理部门和二级教学单位。中国地质大学（北京）现代远程教育坚持突出品牌和特色，坚持学校“特色加精品”办学理念，以学校优质教学资源为基础，以人性化服务为手段，以保证教学质量为目标，形成了以构建终身教育体系为目标，以资源整合为基础，以规范管理为保障的现代远程开放教育系统。学校远程教育教学设施先进，教学网站功能齐全，教学资源丰富，实行弹性学制，满足学生个性化学习需要，为学生提供全方位教学支持服务。学院实行与学校一体化管理的运行机制，在招生、学籍管理、教学、资源建设等环节，以继续教育学院为主，由学校的相关职能部门、院系积极参与，共同承担、实施完成，保证教学正常运行和教学质量。\', \'高起专专业：宝玉石鉴定与加工、地籍测绘与土地管理、矿山机电技术、电气自动化技术、计算机应用技术。\', \'专升本专业：资源勘查工程、安全工程、土木工程、电气工程及其自动化、土地资源管理、机械设计制造及其自动化、会计学、法学、工商管理、计算机科学与技术等。\', \'报名截止：随报随入学（名额有限，抓紧报名）。\', \'学费：专科\', \'元/人，本科\', \'元/人（如有其它服务项目单独收费）。\', \'报名资料：\', \'①报名需要身份证原件，身份证正反面电子版（扫描件）。\', \'②1、2寸蓝底照片各4张、电子版1份。\', \'③毕业证书电子版，报本科需专科证书网上查询学历认证报告电子版1份。\']', 0.00);
INSERT INTO `app01_partjobinfo` VALUES (97897, '深圳', '龙岗', '其它', '硕士', 'http://sz.ssjzw.com/job/2012108849.html', '招聘临时工保安包吃住', 1217, '130元/天', '2019-05-30 14:11:16.000000', '', '[\'招保安员，（日结）\', \'主要工作场所有，车展等等一些会场保安和工厂保安，\', \'工作时长十小时，日结130/天，包吃住\', \'应聘要求：\', \'限男性，18-40岁，声高165CM，身体健康，工作地点在光明、公明，沙井等地，上下班专车接送。\', \'上班轻松，自由，面试较简单，\', \'面试地点：宝安大道源兴大厦\']', 130.00);
INSERT INTO `app01_partjobinfo` VALUES (97898, '深圳', '龙岗', '其它', '本科', 'http://sz.ssjzw.com/job/2012150614.html', '日结app体验', 160, '170元/天', '2022-06-25 00:16:35.000000', '龙岗日结 ', '[\'天天上人\', \'【工作内容】充场软件体验测试\', \'【工作时间】9：30～17：00\', \'【工作地点】深圳龙岗区龙城广场\', \'【工作要求】18-30岁\', \'【薪资待遇】日结130-170，免费午餐和车补\', \'加微信\']', 170.00);
INSERT INTO `app01_partjobinfo` VALUES (97899, '北京', '全市', '培训', '本科', 'http://bj.ssjzw.com/job/2012111141.html', '中国地质大学（远程教育，重点主推。）', 881, '0元/小时', '2019-06-12 10:44:02.000000', '', '[\'中国地质大学（远程教育，重点主推。）\', \'中国地质大学（北京）继续教育学院是我校成人高等教育、现代远程教育和培训工作等各类继续教育的归口管理部门和二级教学单位。中国地质大学（北京）现代远程教育坚持突出品牌和特色，坚持学校“特色加精品”办学理念，以学校优质教学资源为基础，以人性化服务为手段，以保证教学质量为目标，形成了以构建终身教育体系为目标，以资源整合为基础，以规范管理为保障的现代远程开放教育系统。学校远程教育教学设施先进，教学网站功能齐全，教学资源丰富，实行弹性学制，满足学生个性化学习需要，为学生提供全方位教学支持服务。学院实行与学校一体化管理的运行机制，在招生、学籍管理、教学、资源建设等环节，以继续教育学院为主，由学校的相关职能部门、院系积极参与，共同承担、实施完成，保证教学正常运行和教学质量。\', \'高起专专业：宝玉石鉴定与加工、地籍测绘与土地管理、矿山机电技术、电气自动化技术、计算机应用技术。\', \'专升本专业：资源勘查工程、安全工程、土木工程、电气工程及其自动化、土地资源管理、机械设计制造及其自动化、会计学、法学、工商管理、计算机科学与技术等。\', \'报名截止：随报随入学（名额有限，抓紧报名）。\', \'学费：专科\', \'元/人，本科\', \'元/人（如有其它服务项目单独收费）。\', \'报名资料：\', \'①报名需要身份证原件，身份证正反面电子版（扫描件）。\', \'②1、2寸蓝底照片各4张、电子版1份。\', \'③毕业证书电子版，报本科需专科证书网上查询学历认证报告电子版1份。\']', 0.00);
INSERT INTO `app01_partjobinfo` VALUES (97900, '北京', '全市', '演艺模特', '高中', 'http://bj.ssjzw.com/job/2012108158.html', '面向北京各个大学 下达兼职通告', 737, '300元/小时', '2019-05-28 12:45:26.000000', '', '[\'\"职位要求：\', \'年龄18岁以上,身高155cm以上（条件优秀者可以放宽身高限制）,形象好。\', \'年龄18岁以上,身高175cm以上。\', \'无须经验\', \'要求:上镜效果好。\', \'面试通过之后，可以根据个人业余时间弹性安排拍摄活动，通常提前告知，可自由选择是否参与摄制。\', \'可直接投递简历报名第一时间联系你\"\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97901, '北京', '全市', '演艺模特', '大专', 'http://bj.ssjzw.com/job/2012108160.html', '公司招聘兼职服装试衣新人拍摄', 809, '300元/小时', '2019-05-28 12:47:14.000000', '', '[\'拍摄内容：多风格服装，旗袍，帽子，鞋类，包包，首饰等。有无经验均可，老师免费指导。\', \'工作时间：面试通过之后，根据个人业余时间弹性安排拍摄活动，通常提前1-2天告知，可自由选择是否参与摄制。\', \'拍摄时间：根据当天工作安排，配合好可提前完成。\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97902, '北京', '全市', '培训', '硕士', 'http://bj.ssjzw.com/job/2012099927.html', '建（构）筑消防员', 949, '100元/天', '2019-04-19 10:41:40.000000', '', '[\'课程简介：在消防中控全称“建（构）筑消防员”，是劳动部与公安局联合颁发的特殊职业从业资格证，行业内共分初级到高级_五个等级，一经颁发终身有效，全国通用。培训内容：所学内容消防员的基本知识、物业管理部门消防职责、火源管理、电气防火管理、防火检查、消防员必备。火场救护知识、防火的程序与方法、灭火必备知识、火灾现场安全疏、物业初起火灾补救、各种类项火灾补救、消防员实用档案表格、典型火灾案例分析等。考试安排：考试分为学校结业考试及国家鉴定考试，结业考试通过两周左右发放结业证书，持结业证书可在北京市行政区域内上岗使用；国家鉴定考试每年3、6、9、12月份进行，证书全国通用。教学方式：网课与面授课结合进行。培训周期：面授课时间为7-8天。培训费用：初级元/人，中级元/人，高级元/人（含教材）。\', \'注册消防工程师二级元/人，一级元/人。报名资料：身份证复印件2份（正反面）,学历复印件或户口本复印件2份，1寸蓝底彩色照片4张。如报中级需加单位工作证明一份（6年以上工作经验）。预约报名方式：提供姓名、身份证号、联系方式。我们会主动联系您，确定您申报的级别。报名费200元。您可以通过银行汇款的形式进行报名，余款在开班**天缴纳清。我们将在收款后，为您开据收据。因个人原因需要退费的，请于开班前办理。\', \'报名地址：北京朝阳区静安里26号楼通成达大厦二层学习中心\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97903, '北京', '全市', '培训', '硕士', 'http://bj.ssjzw.com/job/2012099929.html', '北京二级_/一级高级_招生简章', 1083, '100元/小时', '2019-04-19 11:01:58.000000', '', '[\'一、职业简况\', \'职业名称:电工\', \'职业定义:从事机械设备和电气系统线路及器件等的安装、调试与维护、修理的人员。\', \'职业等级:本职业共设五个等级,分别为:初级(国家职业资格五级)、中级(国家职业资格四级)、高级(国家职业资格三级)、_(国家职业资格二级)、高级_(国家职业资格一级)。\', \'二、申报条件\', \'二级/_报考条件：\', \'（1）取得本职业三级/高級工职业资格证书(技能等级证书)后,累计从事本职业工作4年(含)以上；\', \'（2）取得本职业三级/高级工职业资格证书(技能等级证书)的高级技工学校、_学院毕业生,累计从事本职业工作3年（含)以上；或取得本职业预备_证书的_学院毕业生,累计从事本职业工作2年(含)以上。\', \'一级/高级_报考条件：\', \'（1）\\t取得本职业二级/_职业资格证书(技能等级证书)后,累计从事本职业工作4年(含)以上。\', \'三、报名资料\', \'1、身份证复印件2份；\', \'\\u30002、高级电工资格证复印件2份；\', \'\\u30003、学历证书复印件2份；\', \'\\u30004、其它相关证书复印件1份；\', \'5、二寸蓝底彩色照片4张，附带同版电子版相片1份；\', \'\\u30006、报考电工_需提供北京市安全生产监督管理局颁发的电工操作证复印件1份；\', \'四、培训安排\', \'1、培训方式：采取集中教学与自学辅导相结合的方式进行考前辅导。\', \'2、培训周期：年4月-6月,每周六、日上课,额满即开班。培训总学时320学时,其中集中培训200学时、辅导自学120学时。\', \'3、上课地点:1\', \'北京国华成人学习中心、\', \'2\', \'北京西城区实美培训学校德胜门\', \'五、培训费用：_:元/人、高级_:元/人。\', \'以上费用包括报名费、培训费、教材费、资料费、考核费、论文评审费等。\', \'预约报名方式\', \'：提供姓名、身份证号、联系方式。我们会主动联系您\', \'，确定您申报的级别。报名费200元。您可以通过银行汇款的形式进行报名，余款在开班第一天缴纳清。我们将在收款后，为您开据收据。因个人原因需要退费的，请于开班前办理。\', \'六、咨询报名：\', \'联\', \'系\', \'人:常老师\', \'石老师\', \'联系电话:\', \'微信同步\', \'报名地址：北京朝阳区静安里26号楼通成达大厦二层学习中心。\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97904, '深圳', '龙岗', '其它', '本科', 'http://sz.ssjzw.com/job/2012123605.html', '招聘人事助理兼职', 1095, '20元/小时', '2019-08-19 11:34:31.000000', '', '[\'工作内容\', \'1、接待来访客人\', \'2、负责区域的环境维护，保证设备安全及正常运转\', \'3、完成上级交办的其他工作\', \'任职资格\', \'1、兼职\', \'2、会ps优先\', \'3、较强的服务意思\']', 20.00);
INSERT INTO `app01_partjobinfo` VALUES (97905, '北京', '全市', '培训', '硕士', 'http://bj.ssjzw.com/job/2012114123.html', '保育员职业技能培训 北京国华专业培训', 920, '0元/小时', '2019-06-26 10:56:42.000000', '', '[\'职业定义：在托幼园所、社会福利机构及其他保育机构中，辅助教师负责婴幼儿保健、养育和协助教师对婴幼儿进行教育的人员。\', \'项目背景：\', \'近年来，社会的发展，家政行业迅速在市场上占据了不可忽略的地位，婴幼儿早期教育市场的迅猛发展，家长们对幼儿的教育问题也越来越重视，聘请保育员对孩子进行早期的科学护理和教育，逐渐成为一个热门职业领域。培训内容：婴幼儿生长发育的规律和特点；婴幼儿日常生活照料；婴幼儿常见疾病的预防与护理，意外情况的急救处理；婴幼儿营养与喂养；早期教育与智力开发，婴幼儿游戏设计、个别化教育方案的制定；感觉统合训练。培训对象：有爱心和责任心，有志从事亲子、早教机构及幼儿教育的工作人员；关心孩子健康成长的0-3岁婴幼儿父母、长辈们及看护人。要求：年龄18周岁以上；中等以上学历。\', \'凡年满18周岁，想让自己的职业规划更完善的人员；二、有志从事或准备从事育婴教育、育婴管理的人员；\', \'想学习育儿知识并为自己将来创造更佳就业机会的“准父母”们。鉴定方式：分理论和专业技能考试两部分。报名资料：身份证复印件一份（正反面），学历复印件，报考高级需有中级证原件及复印件，4张2寸蓝底彩色照片。培训费用：初级\', \'元/人\', \'中级元/人\', \'高级元/人。报名地址：北京朝阳区静安里26号楼通成达大厦二层学习中心\']', 0.00);
INSERT INTO `app01_partjobinfo` VALUES (97906, '深圳', '龙岗', '其它', '大专', 'http://sz.ssjzw.com/job/2012150605.html', '龙岗充场日结', 93, '170元/天', '2022-06-25 00:16:47.000000', '龙岗日结 ', '[\'招日结兼职\', \'【工作内容】充场软件体验测试\', \'【工作时间】9：30～17：00\', \'【工作地点】深圳龙岗区龙城广场\', \'【工作要求】18-30岁\', \'【薪资待遇】日结130-170，免费午餐和车补\', \'加微信\']', 170.00);
INSERT INTO `app01_partjobinfo` VALUES (97907, '北京', '全市', '市场销售', '硕士', 'http://bj.ssjzw.com/job/2012143492.html', '招募校园经理人', 379, '200元/小时', '2020-11-10 11:02:15.000000', '', '[\'有敢拼的心\', \'有努力的劲\', \'有奋斗的力\', \'有拼搏的气\', \'敢想敢为\', \'能思能做\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97908, '深圳', '龙岗', '其它', '本科', 'http://sz.ssjzw.com/job/2012129900.html', '坂田日结12号到15号每天日结', 1074, '16元/小时', '2019-12-11 23:48:17.000000', '', '[\'日结。16-17元/小时\', \'坂田上雪工业区招聘日结工\', \'（12月12号~15号每天日结）\', \'白班16元/小时，晚班17元/小时，\', \'工作内容：拣货，包装手机保护膜，轻松\', \'工作要求：男女不限，女16-40，男16-35。\', \'早班8、30～晚上9、00左右下班，\', \'晚班20:30到早上9点左右，各班次提前半小时集合。\', \'旁边公交站：上雪工业园\', \'\\xa0\', \'报名备注坂田日结，白班/晚班\', \'微\', \'张主管\']', 16.00);
INSERT INTO `app01_partjobinfo` VALUES (97909, '北京', '全市', '市场销售', '高中', 'http://bj.ssjzw.com/job/2012144099.html', '兼职推广一单150元', 552, '300元/天', '2020-11-21 17:29:59.000000', '', '[\'_项目推广，工作轻松，按单结算，一单150-300元，不限时间，不限地点\', \'工作要求：\', \'1、对家政，母婴行业感兴趣\', \'2、有挣钱欲望，吃苦耐劳\', \'注：按月清算，十号结算\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97910, '北京', '朝阳', '礼仪主持', '硕士', 'http://bj.ssjzw.com/job/2012102733.html', '北京商务礼仪接待（可暑假工）', 1135, '600元/天', '2019-05-05 12:10:59.000000', '', '[\'薪资待遇：\', \'1、工资500-/天，工资当天结算，月薪轻松4-20万。\', \'2、每月全勤奖元（每个月24天考勤达标者）\', \'3、免费为模特提供专业的个人包装，专业的形象设计师设计形象。\', \'4、面试合格当天安排上班，当天即可安排住宿\']', 600.00);
INSERT INTO `app01_partjobinfo` VALUES (97911, '深圳', '龙岗', '其它', '本科', 'http://sz.ssjzw.com/job/2012129689.html', '深圳招募寒假工', 948, '180元/天', '2019-12-09 09:43:03.000000', '', '[\'1、能吃苦耐劳，工作认真；\', \'2、为人诚恳、热情；\', \'3、有团队合作精神；\', \'4、有奉献精神\', \'普工\', \'工作内容\', \'1、在管理人员厂长的领导和车间负责人指挥下开展工作；\', \'2、自觉遵守公司安全、品质、卫生等各项规章制度，自觉服从工作安排；\', \'3、严格按照所在工序操作工艺要求进行作业；\', \'4、增强效率意识，加强协调配合，确保当班生产任务的按时完成；\', \'5、正确选用作业设备、工具、严格按照操作过程操作机械、设备，严禁违章操作或未经培训操作。\']', 180.00);
INSERT INTO `app01_partjobinfo` VALUES (97912, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012102505.html', '酱油两日结保安', 934, '140元/天', '2019-05-04 22:06:12.000000', '畅鸿（深圳）人力资源服务有限公司 ', '[\'5月6号7号两天酱油保安，140元每天八小时，主要负责指挥交通，房地产老板母亲办丧事，包去包回，包餐，吃住都很好，\', \'要求16-50周岁，有身份证，不能有案底，穿纯黑色鞋子\', \'要去抓紧，预定名额，6号早上7点30，龙华汽车站后面集合，坐车一起去潮州，加微信报名\']', 140.00);
INSERT INTO `app01_partjobinfo` VALUES (97913, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012127904.html', '阿尔卑斯糖果厂22元包吃住', 1555, '22元/小时', '2019-10-28 00:15:51.000000', '', '[\'22元包吃住\', \'每周只招一天\', \'22元包吃住，现在开始接受报名\', \'意大利独资企业\', \'深圳阿尔卑斯糖果厂22元包吃住！！！（50个名额，招满为止，现在开始接受报名，车费50元自理，至少做一个月，满月报销车费）\', \'***意大利企业，福利待遇优悦***\', \'注：包吃住（三餐自己承担每日3元；住宿水电1、5元每天）！！！！伙食三餐全部按管理层标准待遇！！\', \'注：欧美国家独自企业，管控加班，每个月工时210—230小时适合不太喜欢加班的人。\', \'注：工期至少一个月，不满一个月扣2元。\', \'注：加班不多，每个月210-230工时左右。\', \'注：每个人免费体检（食品级），色盲、听力不足、心肺、等有问题的一概会体检不过！报名之前请确定自己各项体检指标符合条件。\', \'1、招聘要求：18岁-45岁（只要社会工），只招男性，女性已满；无色盲；无案底；本人二代真实身份证；男性身高165CM以上；初中及以上学历，会写字认字；必须参加体检（首次体检免费）；本厂黑名单不要；本厂离职自离未满3个月的不要！！\', \'2、工作环境：全部恒温车间、冬暖夏凉；有站有坐；\', \'3、吃住：\', \'A、住宿免费，水电1、5元/天；\', \'B、伙食：1、早餐：有面包、馒头、花卷、炒饭、油条、鸡蛋、粥等，自助。\', \'2、中餐、晚餐：三菜一汤自选或粤式烧鹅饭，外加水果（每天不同水果）、饮料。\', \'C、一日三餐，员工、主管、外籍顾问全部一个用餐标准，员工一个月自己只需要承担3元每天（三餐）；\', \'4、薪资待遇：纯工资22元/时（不到一个月按20发），有两班倒、三班倒。包吃住！！！体检免费！！；每个月15日发工资；工厂只有500人左右的中小企业、但是是世界*知名的意大利企业，欧美企业福利待遇伙食都是一流的！！\', \'5、工作地址：深圳葵涌，小梅沙、玫瑰海岸等旅游景点附近；工厂门口面朝大海！环境优美！\', \'（每个星期可安排一天应聘）\', \'报名可添微\', \'备注应聘阿尔卑斯糖果厂\']', 22.00);
INSERT INTO `app01_partjobinfo` VALUES (97914, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012149031.html', '爱联极兔 日结200一天', 1150, '19元/小时', '2021-06-24 15:03:16.000000', '', '[\'爱联极兔\', \'日结200一天\', \'上班时间18：00-4:00左右，男女不限，18-42岁\', \'（单价19元/小时）\', \'岗位职责：小件货分拣，扫码，卸车\', \'感兴趣的小伙伴可以联系~\']', 19.00);
INSERT INTO `app01_partjobinfo` VALUES (97915, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012140924.html', '民治圆通快递18元-20元日结+周结自选', 730, '18元/小时', '2020-09-18 09:47:04.000000', '', '[\'男女不限16-40岁\', \'18元-20元/小时。\', \'日结+周结+自选，白班，夜班，凌晨班\', \'包吃提供住宿，岗位分拣，扫描，打包轻松自由。\']', 18.00);
INSERT INTO `app01_partjobinfo` VALUES (97916, '深圳', '龙岗', '其它', '本科', 'http://sz.ssjzw.com/job/2012112575.html', '广州白云快递夜班兼职', 890, '17元/小时', '2019-06-18 15:54:45.000000', '', '[\'【15-17/时，日结，快递兼职】\', \'人数：30人，16-45岁，男女不限\', \'薪酬：15-17元/时，包餐\', \'工作：分拣/打包/扫描/装车/卸车/打包/倒包等岗位\', \'时间：20:00-8:00\', \'12号\', \'15块/时\', \'继续做13号16块/时\', \'继续做14号17块/时\', \'地点：中成路总公交站附近【线路791线路旅游3线可以直达】\', \'报名：\']', 17.00);
INSERT INTO `app01_partjobinfo` VALUES (97917, '深圳', '龙岗', '其它', '硕士', 'http://sz.ssjzw.com/job/2012149033.html', '坂田德邦快递分拣 日结20一小时', 1075, '20元/小时', '2021-06-24 16:36:32.000000', '', '[\'坂田德邦快递分拣\', \'日结20一小时\', \'岗位职责：快递分拣、大小件打包扫描\', \'岗位要求：男女不限，18-50岁左右\', \'上班时间：21：00-09：00（12小时）\', \'欢迎大家积极报名~\']', 20.00);
INSERT INTO `app01_partjobinfo` VALUES (97918, '北京', '全市', '市场销售', '高中', 'http://bj.ssjzw.com/job/2012144106.html', '招聘店主', 453, '20元/小时', '2020-11-22 15:38:03.000000', '', '[\'惊喜汇电子商城招商了\', \'你想把自己的农产品或商品放在互联网售销吗？\', \'你想拥有上万种商品的销售权吗？\', \'请加惊喜汇商城完成你的零投资电商行动吧！\', \'加入惊喜汇，你就是店主，里面产品随你分享，分享有提成、卖货有收益、有自己的产品也可以上架，全网帮你卖，在家看孩子的宝_或者想兼职都可以，欢迎体验！\', \'体验微信号：\']', 20.00);
INSERT INTO `app01_partjobinfo` VALUES (97919, '北京', '全市', '促销导购', '本科', 'http://bj.ssjzw.com/job/2012147466.html', '招聘兼职销售', 477, '2000元/月', '2021-02-19 20:59:31.000000', '', '[\'招聘兼职销售，公司统一安排销售任务，可以自行在家办公，每日提交报表给公司。\', \'公司根据每日报表每日结算提成！\', \'工资日结。\', \'要求：\', \'1，会操作手机\', \'2，用操作电脑\', \'3，家里必须有网络和电脑\']', 2000.00);
INSERT INTO `app01_partjobinfo` VALUES (97920, '深圳', '龙岗', '其它', '大专', 'http://sz.ssjzw.com/job/2012129684.html', '招募网络推广员', 948, '200元/天', '2019-12-06 13:48:17.000000', '', '[\'工作内容\', \'1、每天抽出几分钟做事就有抽成。\', \'2、免费培训，操作简单，我们可以包交包会。\', \'3、每天花点精力就可以，不会占用太多时间\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97921, '北京', '朝阳', '礼仪主持', '高中', 'http://bj.ssjzw.com/job/2012097921.html', '北京礼仪商务接待日结1000', 1480, '1000元/天', '2019-04-07 13:59:36.000000', '', '[\'任职要求：\', \'1、年龄18-28周岁，女性身高1、60M以上，形象好，气质佳。\', \'2、具有良好的沟通协调能力及服务意识，反应灵敏，端庄大方、举止文雅。\', \'3、敬业乐业、具有较强的责任心和吃苦耐劳的职业素养，具备良好的交流能力。\', \'4、需要有基础的礼仪常识，能适应上班时间，晚8点—12点。\', \'岗位职责：\', \'1、负责来宾的接待\', \'2、负责给客户的引座，替客户指导方向，回答客户询问\', \'3、接待客户应主动，热情，礼貌，耐心，周到\', \'4、运用礼貌语言，为客户提供最佳的服务\', \'5、配合领班工作，服从领班或以上的领导指挥，团结及善于帮助同事工作\', \'薪资待遇：\', \'1、薪资日结，600到价位不等，多劳多得。\', \'2、一经面试合格后，即可安排试岗，试岗薪资与正式员工相同待遇。\', \'欢迎有工作经验及有目标肯奋斗得小伙伴们！\']', 1000.00);
INSERT INTO `app01_partjobinfo` VALUES (97922, '北京', '全市', '市场销售', '高中', 'http://bj.ssjzw.com/job/2012142882.html', '线上兼职销售东北特色农产品', 451, '100元/天', '2020-10-24 09:49:50.000000', '', '[\'【工作薪资】待遇优厚，工资，支持日结可以十天一结也可以月结。\', \'【工作内容】负责通过朋友圈，微信群或者其他渠道推广公司特色农产品，主要为五常大米。小程序下单，可后台直接查询提成，提现等。\', \'【上班时间】时间自由，随意。\', \'【工作地点】全国各地均可，线上销售。\', \'【工作要求】\', \'只要你有微信，有朋友圈，想赚钱，请联系我!\', \'无任何押金。\', \'【其他福利】如果你有团队，根据业绩，每个月奖励可达500-元。\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97923, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012147728.html', '共识乳业网店推广专员', 407, '0元/小时', '2021-03-09 16:01:17.000000', '', '[\'熟练操作手机，熟悉微信、快手、抖音、小红书、视频号等使用流程，年龄不限，宝_及家庭主妇优先。\', \'1、负责推广共识乳业线上店铺\', \'2、有耐心会聊天，掌握产品基本卖点\', \'3、宝_，学生，上班族有时间皆可，时间自由不影响工作学习\', \'4、无底薪制，提成最高可达30%，多劳多得，可长期稳定做\', \'5、有基础培训以及定期培训，根据情况教导\', \'6、工资时时结算，提现秒到账\']', 0.00);
INSERT INTO `app01_partjobinfo` VALUES (97924, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012148448.html', '广东等多地区高薪问卷拦截访问兼职', 354, '200元/天', '2021-04-20 11:52:38.000000', '', '[\'以下地方能做问卷拦截访问的联系\', \'广州、东莞、常平、樟木头\', \'中山、小榄、北滘、容桂、南朗\', \'珠海、拱北、香洲\', \'有经验、普通话标准、形象较好\', \'自带平板优先考虑~\', \'报名格式：地区+姓名+性别+电话\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97925, '深圳', '龙岗', '其它', '本科', 'http://sz.ssjzw.com/job/2012149038.html', '龙岗五和顺丰 日结18一小时', 1120, '18元/小时', '2021-06-25 10:45:13.000000', '', '[\'涨价了，日结18\', \'龙岗五和顺丰中转场\', \'岗位：分拣、理货、卸车，工作较轻松\', \'工期：暂定到月底\', \'晚班：21：00-07:00\', \'要求：只要男\', \'有身份证或者其他证件也行，年龄18-45岁\', \'工资：日结18元/小时；\']', 18.00);
INSERT INTO `app01_partjobinfo` VALUES (97926, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012147468.html', '网络推广', 520, '100元/小时', '2021-02-20 13:39:16.000000', '', '[\'社交电商运营\', \'招募：微信商城分销\', \'工作内容：本平台是规范化线上商城，主营正品特卖（每个品牌特卖为期两天），通过建微信群发布当天的特卖信息，在群里进行分享与互动。\', \'定位：大牌低价、限时特卖！所有商品均为正品，支持专柜验货，全场赠送运费险，退换货无忧。\', \'1，每天能够抽出碎片时间1个小时左右\\xa0\', \'2，按照指导人员的要求，建微信群，发朋友圈，做各大品牌特卖\\xa0\', \'（部分品牌如：百丽、奥康、海澜之家、三彩、衣香丽影、GXG、太平鸟等）\', \'正品保障，下单有赠运费险，不满意包退换。\\xa0\', \'3，前三天会有一个线上指导，教你如何搭建特卖群，如何转发产品，学习后可以继续或者退出，自由选择。\\xa0\', \'4、薪资待遇：薪资按照个人销售业绩10%-20%计算（上不封顶，多劳多得哦~）\\xa0\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97927, '深圳', '龙岗', '其它', '大专', 'http://sz.ssjzw.com/job/2012100082.html', '17/小时 服装打包分拣员', 905, '17元/小时', '2019-04-19 14:56:35.000000', '点米科技有限公司 ', '[\'【岗位】服装打包分拣\', \'【薪资】17元/小时(次周二结算上周)\', \'【日期】优先长期(每周休1/2天)\', \'【时间】9:00-18:00(偶尔加班1-2小时)\', \'【地点】龙岗区中泰粮食大厦\', \'【要求】男女不限，18以上，吃苦耐劳，服从安排\', \'【内容】服装分拣打包\']', 17.00);
INSERT INTO `app01_partjobinfo` VALUES (97928, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012149029.html', '日结18一小时  坂田圆通分拣装卸', 971, '18元/小时', '2021-06-24 10:39:40.000000', '', '[\'日结18一小时\', \'坂田圆通分拣装卸\', \'待遇：包吃\', \'有住\', \'上班时间：\', \'晚班20:00-7:00\', \'日结18/小时包一餐\', \'凌晨班23:00-12:30\', \'日结19/小时包一餐\', \'感兴趣的朋友联系我们~\']', 18.00);
INSERT INTO `app01_partjobinfo` VALUES (97929, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012147561.html', '深圳高薪活动兼职', 458, '800元/小时', '2021-03-01 15:14:35.000000', '', '[\'任职资格:\', \'限女性，地点深圳，年龄18-28岁以下，能吃苦耐劳，热情大方，举止端庄。\', \'2、岗位职责:内容为活动cosplay女友，非诚勿扰，活动时长一般2小时左右。\']', 800.00);
INSERT INTO `app01_partjobinfo` VALUES (97930, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012149523.html', '龙岗坂田招厨房兼职人员', 1221, '300元/天', '2021-08-23 15:19:06.000000', '', '[\'职务：厨房后厨各岗位（炒锅、上什、砧板、烧腊、打荷）\', \'兼职日期：9月1日起到20号，每天需要\', \'时间：早上10：00-晚10点区间（包2餐），工资日结\', \'要求：需要有经验的，烧腊需要会烤乳猪\', \'薪资：炒锅320/天，烧腊320/天，上什300/天，砧板300/天，打荷280/天\', \'有需要随时报名\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97931, '北京', '全市', '传单派发', '硕士', 'http://bj.ssjzw.com/job/2012126073.html', '网络兼职推广专员', 852, '30元/小时', '2019-09-20 10:57:23.000000', '', '[\'只要一个玩家有充值（1元都行）\', \'就算1个充值用户\', \'，一个充值用户额外返10元\', \'{红包秒结}\']', 30.00);
INSERT INTO `app01_partjobinfo` VALUES (97932, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012149569.html', '招聘电商仓库打包员', 1140, '20元/小时', '2021-08-27 10:30:04.000000', '', '[\'仓库打包质检贴标封箱搬货（小箱）\', \'能吃苦耐劳，夏天仓库有点热。\', \'做事勤恳勤快，有工作经验者优先\', \'工作时间：9、00-18、00中午休息一个半钟，\', \'工作地址：岗头风门坳工业区\', \'介意距离者勿投，可直接电话联系\']', 20.00);
INSERT INTO `app01_partjobinfo` VALUES (97933, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012126340.html', '网络兼职推广专员', 796, '30元/小时', '2019-09-25 09:59:49.000000', '', '[\'推广APP软件，通过你的下载链接下载的玩家，每个玩家只要最低充值1元，每个真实用户充值，都可以获得10元现金红包，添加微信直接下款，另外还有10%-15%的充值流水，新注册的账号送80元话费卡和8天打鱼任务送100元京东卡购物卡\']', 30.00);
INSERT INTO `app01_partjobinfo` VALUES (97934, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012126730.html', '大学校园餐厅档口传单派发 兼职', 897, '100元/小时', '2019-10-08 14:11:26.000000', '', '[\'工作内容：\', \'对校园内所有餐厅档口进行传单发放，一所学校内所有的餐厅发放一遍为一单。\', \'人员要求：\', \'18-45岁，身体健康，男女不限。校内人员择优。\', \'工作要求：\', \'在派发传单时要求对餐厅及档口进行视频录制，视频要求体现年月日、校园名称、餐厅名称及档口发放视频，只需将传单放在档口，一所大学所有餐厅派发完毕算一单，进行佣金结算。\', \'其他细则：\', \'本职位为兼职，不提供任何劳务保险之类，自己根据自身情况接单，如出现任何问题请自行解决，只以每单进行佣金结算，不提供任何交通等补助。\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97935, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012126795.html', '高薪扫码兼职', 985, '150元/天', '2019-10-09 14:34:44.000000', '', '[\'公司品牌宣传，不需要坐班，灵活性强，用手机就可以工作，不带销售工作内容\', \'要求一天完成30个有效扫码150元/天，在校大学生优先，工资周结公司直招，绝不收费\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97936, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012125568.html', '招聘兼职户外搜寻活动', 933, '200元/天', '2019-09-08 09:51:03.000000', '', '[\'职位要求：公司直聘兼职户外搜寻活动\', \'工作地点：北京\', \'工作时间：2天\', \'薪资待遇：200元/天，完工结清\', \'工作职责：领队助理，负责协助领队携带行李物品、派发传单等工作\', \'任职资格：\', \'男性，18-35岁，学历不限\', \'吃苦耐劳，脑筋灵活，对工作有责任心\', \'服从领队安排、调度，跟随领队完成任务\', \'工作即时性强，可立即上团者优先\', \'无工作经验亦可，公司简单培训即可上岗\', \'欢迎报名，不收取任何费用\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97937, '深圳', '龙岗', '其它', '大专', 'http://sz.ssjzw.com/job/2012150351.html', '深圳龙岗，美食探店暗访兼职', 387, '50元/天', '2022-02-10 11:22:01.000000', '', '[\'各位新年好！\', \'深圳龙岗的小伙伴请留意！！\', \'美食探店暗访兼职\', \'餐费报销+劳务\', \'双人进店用餐，隐秘录像+拍照\', \'有兴趣的请V信\']', 50.00);
INSERT INTO `app01_partjobinfo` VALUES (97938, '北京', '全市', '传单派发', '本科', 'http://bj.ssjzw.com/job/2012126834.html', '长期招负责的宣传单派发员', 867, '100元/天', '2019-10-10 11:50:16.000000', '', '[\'1、省妇幼附近派发宣传单页；\', \'2、高档社区、美容院和月子会所派发宣传单页；\', \'招宣传单派发员数名\', \'【工作地址】洪山区街道口省妇幼保健院\', \'【工作时间】早上8点-下午3点\', \'加粉一个5元，成单提成2个点（比如卖元，提30元），专门的二维码用于登记\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97939, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012127443.html', '大量招聘淘宝_专员，单结', 880, '68元/小时', '2019-10-19 12:42:54.000000', '淘宝店铺 ', '[\'淘宝号无黑号，无风控，其他无要求。\']', 68.00);
INSERT INTO `app01_partjobinfo` VALUES (97940, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012127457.html', '招聘发传单员', 1008, '8888元/小时', '2019-10-19 19:42:08.000000', '', '[\'简单的派单员发传单的工作，不限制工作地点\', \'也不需缴纳任何押金，一个一付，一单一清\\u3000多挤出点时间一天收入300，没有时间地点要求啥限制，均可工作我能给的只有钱跟安全\', \'诚信靠谱，非诚勿扰\']', 8888.00);
INSERT INTO `app01_partjobinfo` VALUES (97941, '深圳', '龙岗', '其它', '高中', 'http://sz.ssjzw.com/job/2012150436.html', '招聘兼职写手 商业计划书 可行性研究报告', 315, '500元/小时', '2022-03-07 17:29:03.000000', '', '[\'招聘兼职任职要求：\', \'1、\', \'文笔流畅，写作内容结构清晰，有环评、能评、稳评、资金申请报告、商业计划书或项目计划书、可研报告等写作经验\', \'2、\', \'反应敏捷，能提出切实可行方案及应对措施，为客户提供有价值的思路\', \'3、\', \'或会PPT制作\', \'4、\', \'能长期兼职合作\', \'招聘兼职工作内容及职责：\', \'兼职策划编制可行性研究报告、可行性报告、商业计划书、投资分析报告、风险评估报告、项目计划书、创业计划书、融资计划书、项目建议书、项目申请核准报告、节能评估报告、资金申请报告等投融资文件\']', 500.00);
INSERT INTO `app01_partjobinfo` VALUES (97942, '北京', '全市', '促销导购', '本科', 'http://bj.ssjzw.com/job/2012148493.html', '招募商场内门店暗访人员，需录像无问卷', 396, '150元/天', '2021-04-27 11:46:27.000000', '', '[\'招募商场内门店暗访人员，需录像无问卷：\', \'请联系督导，微信同号\', \'1陕西：西安，渭南，宝鸡，汉中，商洛，咸阳，榆林\', \'2贵州：贵阳，毕节，六盘水，黔南都匀，遵义\', \'3广东：佛山，广州，河源，惠州，茂名，韶关，阳江，湛江，肇庆\', \'4、江西：_，抚州，宜春，吉安，九江\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97943, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012126392.html', '推广人员', 1099, '30元/小时', '2019-09-26 10:22:08.000000', '', '[\'推广APP软件，通过你的下载链接下载的玩家，每个玩家只要最低充值1元，每个真实用户充值，都可以获得10元现金红包，添加微信直接下款，另外还有10%-15%的充值流水\']', 30.00);
INSERT INTO `app01_partjobinfo` VALUES (97944, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012126239.html', '网络推广专员', 925, '30元/小时', '2019-09-23 09:59:29.000000', '', '[\'只要一个玩家有充值（1元都行）\', \'就算1个充值用户\', \'，一个充值用户额外返10元\', \'{红包秒结}\']', 30.00);
INSERT INTO `app01_partjobinfo` VALUES (97945, '北京', '全市', '传单派发', '硕士', 'http://bj.ssjzw.com/job/2012125618.html', '藤门国际教育招北京各高校校园大使校园代理', 959, '5000元/月', '2019-09-09 14:08:02.000000', '', '[\'藤门国际教育招北京各高校校园大使\', \'工作内容：\', \'1、学生推荐与招生（出国留学，托福雅思培训）\', \'2、讲座活动来人邀约，现场维护与组织\', \'3、协助公司市场人员组织校园活动\', \'4、公司品牌以及内容的宣传推广\', \'职位要求：\', \'1、在校大学生，学生会、外联部、社团协会等成员优先考虑\', \'2、具备较强的咨询沟通技巧，有团队意识；\', \'3、工作积极热情大方，有一定的沟通与表达能力；\', \'4、具备较强的工作责任心以及组织与管理能力；\', \'工作时间：除讲座、活动协助外，自由安排\', \'工作地点：各自学校\', \'薪资待遇：底薪+提成-（多劳多得）\', \'联系人：冯老师\', \'微信QQ：\']', 5000.00);
INSERT INTO `app01_partjobinfo` VALUES (97946, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012125952.html', '走进悦程出行这家机场体验馆，我开始期待航', 855, '150元/小时', '2019-09-17 16:57:05.000000', '悦城出行 ', '[\'解释：龙行天下和悦程出行是有一家公司，都是由严峻董事长成立。\', \'【悦程出行·品库唯选全球购】现已和全国多家机场组成CP，悦程出行设立机场线_验馆，将为奔波旅途、无暇挑选全球好物的你带来颠覆式的大改变！绝对优秀到让你期待航班晚点~\', \'【悦程出行·品库唯选线_验馆】系全球唯一新零售社交电商线_验馆，在母体公司龙行天下机场VIP休息室服务的基础上进行全面升级，提供全球精选产品体验、服务体验、生活美学体验等，致力于为商旅人士打造一个高品质体验场馆。\', \'品库唯选CEO蔡延武先生表示：体验馆不仅将同步展示线上商城所售产品，让用户触摸体验产品，还将为用户提供多元化的产品体验(比如产品沙龙会、新品体验会等等)以及更贴心高效的购买服务。\', \'悦程出行计划在全国范围内设立48+机场品库唯选线_验馆，目前【兰州中川国际机场店】与【澜沧景迈机场店】已经装修完成。\', \'相信大家一定很好奇，品库机场线下店将以什么样的形式呈现在大家面前呢？就让库宝带大家提前感受下【兰州中川国际机场店】的装修效果，商旅休息与商品体验完美融合，每一个细节都堪称极致。\', \'入门即见精致的陈列柜和宽敞的休息区\', \'右侧是一条极具艺术气息的休息长廊\', \'让您在慵懒的氛围中欣赏品质好物\', \'大门左侧为5D观影区\', \'为您的旅途提供真正的relax\', \'休息区风格多样\', \'在绿植的映衬下感受惬意的时光\', \'如果您需要沉思或小眠\', \'那么这两个地方一定适合你\', \'除了以上优雅的休息环境与丰富的产品体验，悦程出行线下馆还将依托千个国际一二线品牌、上万个全球精选好物，与用户分享全球优质生活理念。\', \'未来，悦程出行·品库唯选线_验馆将代表着一种高品质的生活方式，真正成为品质生活拥趸者的私人领地，为商旅人群提供探索新生活的完美时空，寻找属于自己的生活方式。\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97947, '北京', '全市', '传单派发', '本科', 'http://bj.ssjzw.com/job/2012128246.html', '京津冀各大高校发传单', 888, '120元/天', '2019-11-03 14:18:51.000000', '', '[\'去各个大学门口发传单，最好是本校的学生,长期有效\']', 120.00);
INSERT INTO `app01_partjobinfo` VALUES (97948, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012128777.html', '收徒三名，骗人自插5刀，有梦想的就来', 995, '300元/天', '2019-11-15 11:49:40.000000', '', '[\'骗人自插5刀，没太好的收入的话，记得联系我微信xxv419\', \'任职要求：\', \'1、年龄20-45周岁，初中以上学历，对工作认真负责，积极向上；\', \'2、为人正直，坦率，用良好的职业道德规范自己；\', \'3、工作时间每天9:00---23：00，不限制时间段，可自选时间。\', \'4、正规兼职，诚信兼职！不收任何费用！工资日结！利用自己业余时间兼职即可！\', \'备注：18岁以下勿扰，正规工作，非诚勿扰！！\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97949, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012129438.html', '转转闲鱼app实名认证', 1251, '10元/小时', '2019-11-30 16:40:39.000000', '新创意商务服务有限公司 ', '[\'按照客服要求进行实名认证，认证完后交单，完成立结\']', 10.00);
INSERT INTO `app01_partjobinfo` VALUES (97950, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012131553.html', '扫码加群日结', 1177, '200元/天', '2020-01-31 16:49:02.000000', '', '[\'扫码加群免费送蔬菜\', \'地点：江宁文靖路超市、附近菜场\', \'要求：男女不限，性格大方。\', \'工资：加满30人即可下班，超过30人，每个2元，多劳多得。\', \'10分钟能做完10分钟就可下班。做的好的每天两三百不是问题\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97951, '北京', '全市', '传单派发', '硕士', 'http://bj.ssjzw.com/job/2012132982.html', '招聘传单派发员', 755, '250元/小时', '2020-04-14 18:16:43.000000', '', '[\'招聘传单派发员，性别不限,年龄不限，不收取任何押金费用\', \'工作时间自由无限制就近分配工作区域，可根据个人的时间安排工作时间，发一张有一张的工资；因业务发展，急需兼职工进行发传单服务，工作轻松长期招聘优秀个人及团队！\', \'工作要求：认真负责、吃苦耐劳，听从安排\']', 250.00);
INSERT INTO `app01_partjobinfo` VALUES (97952, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012134576.html', '张贴花呗海报 免费招聘，无任何费用，日结', 679, '200元/天', '2020-05-27 15:58:28.000000', '', '[\'1、工作内容：在商家店铺内张贴\"花呗海报+花呗贴纸\"。\', \'2、工作地点：全北京地区。\', \'3、薪资：一个商家2—2、5元，工资日结。\', \'4、结算时间：次日下午结算，不压工资。\', \'5、要求：每个商家拍摄4张照片上传于\"线下服务商\"app。\', \'（1）门头照：门外含店铺名称的全景照。\', \'（2）店铺内景照：进门后含收银台的全景照。\', \'（3）收银台花呗贴纸照和支付宝收款码合照（含收银台，花呗贴纸，支付宝收款码）\', \'（4）花呗海报照\', \'：A4大小用花呗付款领奖励\"海报\"\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97953, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012134706.html', '深圳扫码兼职  200元/天  日结', 744, '200元/天', '2020-05-30 14:32:18.000000', '', '[\'深圳扫码兼职\', \'200元/天\', \'日结\', \'工作时间：6月1日至10月31日\', \'12:00-20:00（最少能做3天）；\', \'要\', \'求：男女不限，积极主动，服从安排即可；\', \'主要工作：关注小程序即可；\', \'待\', \'遇：200元/天\', \'日结；\', \'人\', \'数：30人/天；\', \'工作地点：深圳南山区地铁附近（地铁站：南山书城、桃园、南山）；\', \'联\', \'系\', \'人：（马督导）\', \'报名方式：加微信报名\', \'咨询电话：\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97954, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012138809.html', '在校大学生校内派发宣传页', 442, '25元/天', '2020-08-14 19:09:00.000000', '', '[\'任职要求：有诚信，有责任心，在校学生于校园内发布传单\']', 25.00);
INSERT INTO `app01_partjobinfo` VALUES (97955, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012140205.html', '大学生派单兼职', 512, '150元/天', '2020-09-09 16:50:14.000000', '', '[\'[商场内长期兼职派单]\', \'派单时间：周六日中午11、00到20：30；\', \'派单地点：萝岗万达广场,天河太阳新天地商场，嘉禾望岗云门商场；\', \'薪酬：120-150元每天（包含10-20个有效名单）。超过有效名单按5元/个，不封顶！\', \'工作内容：\', \'1、商场内派单，添加客户有效名单；\', \'2、派单内容：3-12岁少儿语言艺术课程；\', \'3、有责任心，能够长期合作。\', \'每天薪酬大概是200元/天至350元/天。\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97956, '北京', '全市', '传单派发', '硕士', 'http://bj.ssjzw.com/job/2012140206.html', '学生兼职派单', 591, '150元/天', '2020-09-09 16:51:43.000000', '', '[\'[商场内长期兼职派单]\', \'派单时间：周六日中午11、00到20：30；\', \'派单地点：萝岗万达广场,天河太阳新天地商场，嘉禾望岗云门商场；\', \'薪酬：120-150元每天（包含10-20个有效名单）。超过有效名单按5元/个，不封顶！\', \'工作内容：\', \'1、商场内派单，添加客户有效名单；\', \'2、派单内容：3-12岁少儿语言艺术课程；\', \'3、有责任心，能够长期合作。\', \'每天薪酬大概是200元/天至350元/天。\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97957, '北京', '全市', '传单派发', '硕士', 'http://bj.ssjzw.com/job/2012141157.html', '代理微商', 528, '150元/天', '2020-09-22 11:05:35.000000', '', '[\'要求不限\', \'最好是大学生\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97958, '北京', '全市', '传单派发', '本科', 'http://bj.ssjzw.com/job/2012141346.html', '微信公众号转发，按条结算', 717, '20元/小时', '2020-09-24 10:41:45.000000', '常州数玩信息科技 ', '[\'微信公众号转发，按条结算，操作简单，无上限\']', 20.00);
INSERT INTO `app01_partjobinfo` VALUES (97959, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012142806.html', '诚聘兼职代理（无任何费用）', 588, '100元/小时', '2020-10-22 23:00:51.000000', 'KG休闲手游 ', '[\'我司开发娱乐App手游，为扩展业务，诚招代理，可兼职也可全职，全程公司扶持，无需您去寻找客户，工作内容简单，只需利用空闲时间，粘贴传单海报，认真做月入过万非常容易，全程无需任何投入，薪资待遇，日薪周薪月薪，多劳多得无需操心。\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97960, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012143505.html', '地推专员', 707, '120元/天', '2020-11-10 14:38:19.000000', '', '[\'工作内容：\', \'1、负责公司产品的地面推广工作，完成相关推广业绩；\', \'2、负责产品的市场渠道开拓与销售工作，建立合作关系；\', \'3、进行行业推广渠道发展趋势分析；\', \'4、根据公司营销策划，自主拓展新客户。\', \'任职资格：\', \'工作经验要求：一年以上销售和市场营销经验\', \'技能技巧要求\', \'：具备优秀的渠道开发和市场拓展能力\', \'工作态度要求：\', \'有强烈的事业心和责任感，具备良好的人际交往、社会活动能力及_能力\', \'其他要求\', \'：对工作热情，思维清晰、活跃，具有良好的职业形象和亲和力\', \'薪资架构：\', \'有责底薪3K-5K；提成500/台\', \'无责底薪；提成/台\', \'正常缴纳五险一金\']', 120.00);
INSERT INTO `app01_partjobinfo` VALUES (97961, '北京', '全市', '传单派发', '高中', 'http://bj.ssjzw.com/job/2012146064.html', '招聘兼职发单员', 798, '100元/天', '2020-12-23 17:43:50.000000', '', '[\'薪资：半天100元，按月结算\', \'公司提供资料\', \'上班时间：早上9：00-中午12:00。\', \'工作方式：在指定地点有意向的客户留下电话转交给销售即可。无成交业绩的任务。公司提供资料。\', \'要求：20-45岁，无身体疾病\', \'报名请直接添加客服微信：\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97962, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012147524.html', '地推扫码推广专员', 688, '120元/小时', '2021-02-24 14:58:52.000000', '', '[\'招聘兼职推广员，负责在儿童医院，儿研所，北医六院等地邀请客户扫码\', \'要求：\', \'身体健康、口齿说话清楚；\', \'举止文明礼貌；\', \'禁止恶意刷人数，系统后台有数据可查！\', \'岗位要求：\', \'1、手机一部，微信号一个\', \'2、有流量\', \'3、有耐心\', \'工作内容：\', \'1、以兼职人员自己熟悉的方式，推荐分享系统派发的二维码\', \'2、邀请扫码引导填写信息\', \'薪资说明：\', \'1、日结底薪：120元/天（时间自己掌控最少3小时）\', \'2、薪资待遇：完成每天4个扫码，每个扫码额外给予30元超过4个额外增加5元\', \'3、除以上保底底薪外，还享受承担奖励100元\']', 120.00);
INSERT INTO `app01_partjobinfo` VALUES (97963, '北京', '全市', '传单派发', '大专', 'http://bj.ssjzw.com/job/2012147569.html', '地推扫码推广专员-时间自由', 787, '120元/小时', '2021-03-03 09:41:07.000000', '', '[\'招聘兼职推广员，负责在儿童医院，儿研所，北医六院等地邀请客户扫码\', \'要求：\', \'身体健康、口齿说话清楚；\', \'举止文明礼貌；\', \'禁止恶意刷人数，系统后台有数据可查！\', \'岗位要求：\', \'1、手机一部，微信号一个\', \'2、有流量\', \'3、有耐心\', \'工作内容：\', \'1、以兼职人员自己熟悉的方式，推荐分享系统派发的二维码\', \'2、邀请扫码引导填写信息\', \'薪资说明：\', \'1、日结底薪：120元/天（时间自己掌控最少3小时）\', \'2、薪资待遇：完成每天4个扫码，每个扫码额外给予30元超过4个额外增加5元\', \'3、除以上保底底薪外，还享受成单奖励100元\']', 120.00);
INSERT INTO `app01_partjobinfo` VALUES (97964, '北京', '全市', '传单派发', '本科', 'http://bj.ssjzw.com/job/2012149554.html', '推广专员', 510, '200元/天', '2021-08-26 16:58:29.000000', '', '[\'米米外卖公众号推广加粉，要求在写字楼，大学城区域地推\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97965, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012148654.html', '高薪资促销员', 346, '160元/天', '2021-05-22 11:09:52.000000', '', '[\'促销员，做满6天后可以预支工资\', \'【工作要求】年龄35岁以下，有食品卫生健康许可证，态度积极阳光。每个店一个人\', \'【工作内容】促销龙虾\', \'【工作时间】：早10点到晚7点（每周五六日3天，每家店连续做两周共6天）\', \'【工作待遇】：160/天，做满6天后可以预支工资，剩余的每月20日结清上月工资\', \'【工作地址】：西城区\', \'西单北大街131号大悦城B2层\', \'顺义区\', \'顺义区裕翔路99号欧陆广场B1层\', \'顺义区安奉大街9号院中粮祥云小镇小北区7号楼LG层\', \'昌平区\', \'北京市昌平区南囗镇陈庄八达岭奥菜C1区940\', \'东城区北三环东路36号北京环球贸易中心E座1层\', \'朝阳区\', \'朝阳区建国路87号北京SKP地下一层\', \'朝阳区朝阳公园路6号蓝色港湾M层\', \'朝阳区三里屯北路19号三里屯太古里B1层\', \'报名后预约随时按排面试上班\', \'\\xa0\']', 160.00);
INSERT INTO `app01_partjobinfo` VALUES (97966, '北京', '全市', '促销导购', '本科', 'http://bj.ssjzw.com/job/2012148655.html', '2021春季大型国际拍卖会拍卖员', 399, '180元/天', '2021-05-22 11:37:07.000000', '', '[\'春季大型国际拍卖会180-260\', \'5月30日-6月8日\', \'早9:00-20:00\', \'地址：北京国贸大酒店，地铁：（一号线，十号线）国贸站\', \'要求：男生，女生，做过拍卖的优先安排，17-26公司免费正装（黑色西服，黑西裤，）自备（白衬衫，黑皮鞋）\', \'部门\', \':书画\', \'瓷器，\', \'工资：17/小时，管饭管水，合计180元-260元/天\', \'超过十点打车报销，必须接受加班，能做全程的优先安排\', \'管两餐＋水。\', \'工资活动结束一周内天内结算\']', 180.00);
INSERT INTO `app01_partjobinfo` VALUES (97967, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012148727.html', '销售推广员', 400, '200元/天', '2021-05-26 16:43:40.000000', '', '[\'1、主要职务是寻找全国各大中医学院或者有中医系的大学内或者周边的小卖部进行洽谈我司产品寄卖合作。\', \'2、我司产品为中医智能脉诊仪，所以需要寻找有学“中医诊断学”的大学小卖部/小超市合作寄卖。\', \'3、薪资为200-300/天\', \'的薪资、按次数收费，先收钱后和商家洽谈，每成功一家合作商即可再得提成，工作轻松自由。有意者可联系。\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97968, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012149104.html', '高新区管委会及办公大楼招聘会服前台', 480, '20元/小时', '2021-07-02 19:11:45.000000', '', '[\'高新区管委会及办公大楼招聘会服前台，男女不限，要求形象好，语言表达强，不戴眼镜，身高1、63以上，每周双休，节假日休息，8小时工作时间，工作轻松，试用期三个月元/月，每天加10元食宿补助，转正后元/月，每天加10元食宿补助，缴纳五险一金\']', 20.00);
INSERT INTO `app01_partjobinfo` VALUES (97969, '北京', '全市', '促销导购', '本科', 'http://bj.ssjzw.com/job/2012149216.html', '保健康复红光训练增视仪', 478, '200元/小时', '2021-07-09 16:31:00.000000', '', '[\'看得清”品牌多功能训练仪是一种新型的可以应用于家庭、专业视力矫正机构的专业仪器，它以最真实环境训练为基本训练方法，功能强大，集中了远近直线训练、明暗适应训练、眼球视野训练三种基本的视力训练方法，针对近视、弱视、斜视、视觉发等视光问题，具有显著的改善效果。\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97970, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012149262.html', '中药眼部薰蒸仪解除视力疲劳视力保健康复仪', 458, '200元/小时', '2021-07-22 10:11:47.000000', '', '[\'看得清”品牌多功能训练仪是一种新型的可以应用于家庭、专业视力矫正机构的专业仪器，它以最真实环境训练为基本训练方法，功能强大，集中了远近直线训练、明暗适应训练、眼球视野训练三种基本的视力训练方法，针对近视、斜视、视觉发等视光问题，具有显著的改善效果。\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97971, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012149682.html', '商场导购', 609, '260元/小时', '2021-09-03 17:24:00.000000', '', '[\'日结\', \'商场导购\', \'260元/天\', \'工作内容：再商场店铺里引导顾客购物以及店面的日常运营\', \'工作时间：10小时每天，排班制\', \'工资待遇：260元每天\', \'工作要求：不限，18--30岁以内。\', \'工作地点：全北京就近分配！\']', 260.00);
INSERT INTO `app01_partjobinfo` VALUES (97972, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012149733.html', '轻松自由兼职', 1004, '2元/天', '2021-09-09 16:36:30.000000', '', '[\'1、主要职务是寻找全国各大中医学院或者有中医系的大学内或者周边的小卖部进行洽谈我司产品寄卖合作。\', \'2、我司产品为中医智能脉诊仪，所以需要寻找有学“中医诊断学”的大学小卖部/小超市合作寄卖。\', \'3、薪资为200-300/天\', \'的薪资，工作轻松自由。有意者可联系微信\', \'。\']', 2.00);
INSERT INTO `app01_partjobinfo` VALUES (97973, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012149817.html', '微商大学生销售兼职', 1001, '120元/天', '2021-09-20 09:41:16.000000', '', '[\'广州澳莱娜生物科技有限公司，位于广州南沙，自建工厂5、8万平方米。主要产品为家用美容仪，护肤品，消字号产品，日化洗护产品。可做代加工贴牌，也有现货。\', \'现招聘兼职销售，我们提_品，卖价你们决定。能赚多少靠自己能力。\', \'若有找到需要做代加工贴牌的客户，成交后将有提成。\', \'有需要请联系曾经理\', \'（微信同号）\']', 120.00);
INSERT INTO `app01_partjobinfo` VALUES (97974, '北京', '全市', '促销导购', '高中', 'http://bj.ssjzw.com/job/2012149827.html', '中医智能脉诊仪销售', 872, '300元/天', '2021-09-22 10:39:25.000000', '', '[\'1、主要职务是寻找全国各大中医学院或者有中医系的大学内或附近周边的大学生接触多的商家或商店进行洽谈我司产品寄卖合作。\', \'2、我司产品为中医智能脉诊仪，需要寻找有学“中医诊断学”大学的校内或附近寻找小卖部,小超市,快递点，图书店\', \'打印店谈合作寄卖。\', \'3、薪资为300-500/天\', \'的薪资，工作轻松自由。有意者可联系微信。\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97975, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012149899.html', '销售或推广', 984, '300元/天', '2021-10-09 16:01:00.000000', '', '[\'1、主要职务是寻找全国各大中医学院或者有中医系的大学内或附近周边的大学生接触多的商家或商店进行洽谈我司产品寄卖合作。\', \'2、我司产品为中医智能脉诊仪，需要寻找有学“中医诊断学”大学的校内或附近寻找小卖部,小超市,快递点，图书店\', \'打印店谈合作寄卖。\', \'3、薪资为300-500/天\', \'的薪资，工作轻松自由。有意者可联系微信\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97976, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012149965.html', '急聘长期在家在校兼职，时间自由，有奖励和', 1406, '100元/天', '2021-10-21 19:34:19.000000', '', '[\'岗位职责：\', \'1、负责公司公众号的推广。\', \'2、通过互联网、地推等方式发掘客户，积累客户资源，促成合作。\', \'优先录用：学生/宝_或其他失业人士等，无学历文凭要求。\', \'工作地点/时间：\', \'在家/在校工作，无城市要求，无打卡，工作时间自由安排；\', \'岗位要求：\', \'1、有无经验均可\', \'2、\', \'能熟练使用智能手机，有良好的语言表达能力，敢于说话，善于沟通，积极完成工作\', \'3、热爱销售行业，愿意从基层做起。\', \'可接受应届毕业生。\', \'兼职全职代理均可\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97977, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012150008.html', '女装导购', 408, '200元/天', '2021-10-29 14:41:13.000000', '', '[\'岗位要求\', \'1、对服装、饰品行业有兴趣，形象良好，有时尚感，男女不限；\', \'2、口头表达能力较好、沟通能力较强等，有销售经验者优先；\', \'3、做事认真、细心、负责；\', \'4、适应早晚班制度；\', \'5、入职享有良好的晋升机制及各种福利；\', \'任职要求：\', \'1、年龄20-35周岁，女身高160cm以上，男身高175cm以上\', \'2、有1-2年女装品牌销售经验\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97978, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012150093.html', '销售或推广', 452, '300元/小时', '2021-11-19 09:42:17.000000', '', '[\'1、主要职务是寻找全国各大中医学院或者有中医系的大学内或附近周边的大学生接触多的商家或商店进行洽谈我司产品寄卖合作。\', \'2、我司产品为中医智能脉诊仪，需要寻找有学“中医诊断学”大学的校内或附近寻找小卖部,小超市,快递点，图书店\', \'打印店谈合作寄卖。\', \'3、薪资为300-500/天\', \'的薪资，工作轻松自由。有意者可联系微信。\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97979, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012150103.html', '招募：满意度问卷调研员', 400, '150元/天', '2021-11-24 09:59:39.000000', '', '[\'招募：满意度问卷调研员\', \'任务内容：问卷调研（满意度问卷，邀请别人评分即可），可派发\', \'所需城市：北京，长春，青岛，上海，江门，成都\', \'有兴趣直接联系微信\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97980, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012150233.html', '超市促销员', 322, '160元/天', '2021-12-23 16:51:28.000000', '', '[\'周末促销兼职\', \'160元/天\', \'做六日两天也行\', \'【工作内容】:穿着工服在卖场做产品推广促销工作（熟食），\', \'【工作要求】:\', \'45岁以下男女不限，有促销经验优先，对工作认真负责，有服务意识\', \'【工作时间】:周五-周日三天\', \'早八晚六\', \'【工作地点】:北京市各区\', \'【工资待遇】:160元/天\']', 160.00);
INSERT INTO `app01_partjobinfo` VALUES (97981, '北京', '全市', '促销导购', '高中', 'http://bj.ssjzw.com/job/2012150272.html', '吉林：通辽、延边州，简单暗访项目', 342, '200元/天', '2022-01-05 10:29:05.000000', '', '[\'简单暗访项目\', \'价格美丽，操作简单\', \'城市：吉林：通辽、延边州\', \'非诚勿扰\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97982, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012150315.html', '杭州东火车站日结兼职招募', 323, '150元/天', '2022-01-14 10:31:48.000000', '', '[\'杭州东火车站日结兼职招募\', \'1月16、18两天，早七晚五连续\', \'简单工作！在指定位置负责看设备\', \'可以玩手机~但不能离开！\', \'联系V信\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97983, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012150319.html', '广州大学生兼职', 290, '100元/天', '2022-01-14 20:09:58.000000', '', '[\'工作内容：在广州市内批发商场派传单。\', \'岗位要求：学生兼职\', \'人员要求：女生5名\', \'工作地点：广州市各区\', \'工作时间：周末和工作日都行\', \'急招人，微信：\', \'，添加备注兼职派传单\']', 100.00);
INSERT INTO `app01_partjobinfo` VALUES (97984, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012150434.html', '地推工作日薪800元有执行力的来', 504, '800元/小时', '2022-03-07 15:42:39.000000', '', '[\'底薪：800元\', \'提成：超过60单每单提成10元\', \'任务量：60个新用户下载APP\', \'岗位职责：\', \'1、在步行街、小区、快递点、超市等人流量较大的地方送礼品邀请用户下载APP。\', \'2、快速观察不同区域的客流以及顾客需求群体，采用不同的话术和方法获取客户。\', \'3、采取点位推广和散推两种方式，指引顾客下载APP等流程，确认后送出礼品、赠品。\', \'4、拓展高效获取新用户的渠道，对引流渠道与模式进行挖掘，提升拉新效率；\', \'岗位要求：\', \'1、有地推经验优先；\', \'2、学习能力强，并具有管理素养；\', \'3、具备聪明、乐观、皮实、自省的性格特征；\', \'4、具备较强的沟通能力、抗压能力和目标感，有团队合作精神；\', \'5、喜欢做销售类型工作，有赚钱欲望；注重长远职业规划，目标在销售管理岗位上长期发展。\', \'PS：\', \'1、弹性工作制，轻松自由，结果导向。\', \'2、无经验的新人，第一天做单我们会进行1对1指导作业。\', \'3、经过我们长期的推广实践，正常人推广一天60个新用户是最低的属于新人，推广超过3天基本都能超过100单。\']', 800.00);
INSERT INTO `app01_partjobinfo` VALUES (97985, '北京', '全市', '促销导购', '本科', 'http://bj.ssjzw.com/job/2012150449.html', '店铺拍照采集员', 651, '200元/天', '2022-03-10 09:15:26.000000', '', '[\'1、负责开展当前城市信息采集工作，主要采集对象为餐饮店铺（低于100平的小店为主）\', \'2、通过我们的APP领任务，拍照上传收集指定的2张照片，门头照片和店内照片\', \'任职要求：\', \'1、年龄18-45岁，男女不限，接受持续外勤作业的工作方式；\', \'2、沟通及表达能力较好；\', \'3、需要安卓手机，苹果手机勿扰\', \'4、入职会有统一线上培训（培训采集标准），培训后考试通过即可开始采集作业\', \'5、有电动车的优先考虑\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97986, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012150543.html', '深圳福田、南山家长招募', 199, '150元/天', '2022-05-06 10:00:29.000000', '', '[\'深圳福田、南山家长招募\', \'需带孩子进店体验两次~\', \'小学、初中、高中生都要\', \'礼金丰厚，可现场结算\', \'欢迎推荐介绍，有红包\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (97987, '北京', '全市', '促销导购', '大专', 'http://bj.ssjzw.com/job/2012132499.html', '羊毛加工厂招工  侯老师 ', 18, '面议元/小时', '2020-03-26 16:25:38.000000', '', '[\'一、工作地点：新南威尔士州、维多利亚州、西澳\', \'二、申请条件及主要培训从事的工种\', \'1、职位：操作工、小车司机\', \'2、年龄：20-52周岁\', \'3、性别：不限\', \'4、身体健康，无传染疾病，无不良嗜好\', \'5、合同期限：2年（可续签）\', \'三、薪资待遇及工作时间：\', \'1、工资发放标准：周薪制，每周底薪澳币税后。\', \'2、工作时间：每天工作8小时，每周工作5天，每周工作40小时，加班需提出申请，加班费不低于正常薪资的1、5倍。休息期间可以自由活动，不允许私自打工。\', \'3、福利保险：雇主提供医疗及意外保险每年有21天带薪假，如工作出色，用工方每年免费提供往返中国的机票；2年后可出具移民担保，帮助申请移民，不回国另外每年请假不超过7天多给1个月的薪水。休息期间可以自由活动，不允许私自打工。\', \'4、家属赴澳：工作满半年由雇主协助申请有能力的家属赴澳打工，雇主会以现金形式支付每年澳币，以及未满18周岁的子女免费赴就学。\', \'5、食宿：提供食宿，2个人一个房间（房间统一配备电视、热水器、卫生间等）。\', \'五、申请周期：3个月\', \'六、总费用：6、5万\', \'七、付款方式：分期付款，国内支付，余款登机前一次性付清或工资中扣除。\', \'八、免费服务：\', \'1、由多年从事出国劳务专家提供免费的审核与评估；\', \'2、提供专业的指导；\', \'3、免费安排专人进行接机服务；\']', 0.00);
INSERT INTO `app01_partjobinfo` VALUES (97988, '北京', '全市', '促销导购', '硕士', 'http://bj.ssjzw.com/job/2012150776.html', '5G电信手机促销/地推/BD', 76, '200元/天', '2022-08-04 11:13:11.000000', '', '[\'工作描述：\', \'5G电信手机现场促销。\', \'不是在店里，要外出的档位。\', \'有促销/地推经验优先。\', \'地点在广州市白云区嘉禾一带。\', \'不限上班时间，依个人时间而定。\', \'按单结算，\', \'超高提成。\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (97989, '北京', '朝阳', '礼仪主持', '硕士', 'http://bj.ssjzw.com/job/2012107642.html', '招聘暑假工接待礼仪（商务）日结一千', 1046, '300元/小时', '2019-05-26 11:20:15.000000', '', '[\'职位描述:\', \'一、招聘要求：女性，工作认真，有责任心，有上进心，有良好的服务意识。\', \'二、善于沟通，与无经验均可，无工作经验可免费培训，带薪学习。\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97990, '北京', '朝阳', '礼仪主持', '大专', 'http://bj.ssjzw.com/job/2012116592.html', '高薪招聘酒店礼仪接待', 895, '1000元/天', '2019-07-11 10:27:10.000000', '', '[\'招聘要求：1：年龄16—29岁以下、不限学历、身高1、55米以上、性格开朗，时尚形象摇号\', \'2：薪资待遇：曰结，面试合适当天上班，安排住宿，看环境决定去留。\', \'3：其它要求：不限身高、学历、形象。胆大的即可，只要你感觉自己没有问题，就联系我\', \'。\', \'4：温馨提示：专门人负责安排相关的工作、来去自由，轻松、无工作压力。\']', 1000.00);
INSERT INTO `app01_partjobinfo` VALUES (97991, '北京', '朝阳', '礼仪主持', '硕士', 'http://bj.ssjzw.com/job/2012108173.html', '每个人心中都明星梦 我们可以帮你们实现', 981, '300元/小时', '2019-05-28 13:35:01.000000', '', '[\'\"工作内容：\', \'1、在会议、展会、演唱会等各类大型活动中担任礼仪服务人员。\', \'2、工作时长分为半天、全天、连续多日不等，根据个人业余时间选择性参加。薪酬日结!做的好可长期合作。\', \'3、本公司是正规直招公司，不需要培训，押金。工作内容健康、安全、正规、合法。\', \'任职要求：\', \'身高155CM，年龄18-30岁。五官端正，体态匀称，自信大方。\', \'报名流程：有兴趣可直接投递个人简历。\', \'\"\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97992, '北京', '朝阳', '礼仪主持', '大专', 'http://bj.ssjzw.com/job/2012108171.html', '趁着青春 勇敢的秀出你自己 ', 782, '400元/小时', '2019-05-28 13:34:56.000000', '', '[\'\"工作内容：\', \'\"青春就是要任性，勇敢的秀出你自己，不要给年轻留遗憾，如果你心动了就要勇敢走出这一步，无论你是骨感的还是微胖的都是一种美。\', \'看到招聘信息,不要怀疑自己行不行,先问问自己喜不喜欢,想不想\', \'每个人都有属于自己不一样的美，独特的美，只要您对自己有信心，喜欢爱美，自拍，上镜的你就来挑战你的舞台吧，我们都欢迎您前来公司面试。可周末做！也可以长期合作\', \'！\', \'试衣模特：（主要为商家展示未上市新款服装，良好演绎产品特色）\', \'淘宝模特：（主要拍摄：各季服装，鞋子、包包、首饰、护肤品等）\', \'平面模特：（主要拍摄：杂志封面广告、服装广告、画册、饰品广告等）\', \'微胖模特：（要求：身材相对偏胖一些，主要拍摄大码服饰、写真）\', \'产品模特：（主要拍摄：珠宝、旗袍、饰品等）\', \'职位要求：\', \'M年龄16-30岁（可大龄）,身高155以上（条件优秀者可以放宽身高限制）,形象好\', \'G年龄16-28岁,身高170以上。（无须经验,身材匀称,上镜效果好。）\', \'可以根据个人业余时间协调安排拍摄，薪资日结，不要求经验，有兴趣都可以来尝试下，青春不要犹豫\', \'欢迎加入我们，不管你有没有经验公司都一视同仁，我们都欢迎您前来公司面试。机会是人人平等的，一经录取可长期合作！放心参加位有意者放心参加\"\']', 400.00);
INSERT INTO `app01_partjobinfo` VALUES (97993, '北京', '朝阳', '礼仪主持', '硕士', 'http://bj.ssjzw.com/job/2012108170.html', '在这里你可以尽情的展示自己招聘网店模特', 920, '300元/小时', '2019-05-28 13:34:56.000000', '', '[\'\"青春就是要任性，勇敢地秀出你自己，不要给年轻留遗憾。文静或是狂野，温柔亦或冷艳，骨感还是微胖，都是属于你独特的美。\', \'看到招聘信息，不要怀疑自己行不行，先问问自己喜不喜欢，愿不愿意尝试。只要您对自己有信心，爱美，爱自拍，渴望上镜，就来挑战你的舞台吧。\', \'工作内容：\', \'试衣模特：（主要为商家展示未上市新款服装，良好演绎产品特色）\', \'淘宝模特：（主要拍摄：各季服装，鞋子、包包、首饰、护肤品等）\', \'平面模特：（主要拍摄：杂志封面广告、服装广告、画册、饰品广告等）\', \'微胖模特：（要求：身材相对偏胖一些，主要拍摄大码服饰、写真）\', \'产品模特：（主要拍摄：珠宝、旗袍、饰品等）\', \'根据个人业余时间弹性安排拍摄活动，薪酬日结!做的好可长期合作。\', \'本公司是正规直招公司，不需要培训，押金。工作内容健康、安全、正规、合法。\', \'任职要求：\', \'1、喜欢化妆和拍照、镜头表现力好。有无经验均可。\', \'2、身高155CM/175CM以上，年龄18-30岁。五官端正，体态匀称，自信大方。\', \'报名流程：有兴趣可直接投递个人简历。\"\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97994, '北京', '朝阳', '礼仪主持', '硕士', 'http://bj.ssjzw.com/job/2012108167.html', '招聘有明星梦的和心怀巨星舞台的童靴', 889, '300元/小时', '2019-05-28 13:34:53.000000', '', '[\'\"工作内容：\', \'1、在会议、展会、演唱会等各类大型活动中担任礼仪服务人员。\', \'2、工作时长分为半天、全天、连续多日不等，根据个人业余时间选择性参加。薪酬日结!做的好可长期合作。\', \'3、本公司是正规直招公司，不需要培训，押金。工作内容健康、安全、正规、合法。\', \'任职要求：\', \'身高155CM，年龄18-30岁。五官端正，体态匀称，自信大方。\', \'报名流程：有兴趣可直接投递个人简历。\', \'\"\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97995, '北京', '朝阳', '礼仪主持', '大专', 'http://bj.ssjzw.com/job/2012119728.html', '免费直招兼职全职礼仪迎宾', 991, '600元/天', '2019-07-25 15:10:08.000000', '北京金典文化传媒 ', '[\'工作时间晚7点-12点左右，时间自由，多上多得，有无经验者均可，可免费培训上岗。\', \'\\u3000\\u3000招聘佳丽：形象好，有一定服务意识，有亲和力，日薪800--元以上，女18－26岁，身高1米62以上，无经验可培训！（身高年龄可根据个人形象而定）\']', 600.00);
INSERT INTO `app01_partjobinfo` VALUES (97996, '北京', '朝阳', '礼仪主持', '本科', 'http://bj.ssjzw.com/job/2012108168.html', '招聘广告模特', 943, '400元/小时', '2019-05-28 13:34:55.000000', '', '[\'\"工作内容：\', \'1、在会议、展会、演唱会等各类大型活动中担任礼仪服务人员。\', \'2、工作时长分为半天、全天、连续多日不等，根据个人业余时间选择性参加。薪酬日结!做的好可长期合作。\', \'3、本公司是正规直招公司，不需要培训，押金。工作内容健康、安全、正规、合法。\', \'任职要求：\', \'身高155CM，年龄18-30岁。五官端正，体态匀称，自信大方。\', \'报名流程：有兴趣可直接投递个人简历。\', \'\"\']', 400.00);
INSERT INTO `app01_partjobinfo` VALUES (97997, '北京', '朝阳', '礼仪主持', '硕士', 'http://bj.ssjzw.com/job/2012108174.html', '只要你会穿着打扮都可以来挑战这个属于自己', 888, '300元/小时', '2019-05-28 13:35:04.000000', '', '[\'\"工作内容：\', \'1、为各大网店产品做买家秀展示，范围包括休闲装、运动装、淑女装、欧美装、日韩装、毛衣、连衣裙、毛呢外套、羽绒服、棉服、牛仔裤等，以及如鞋帽、精品、首饰、婚纱、化妆品、彩妆等、香水、红酒、首饰等常见商品。\', \'2、根据个人业余时间弹性安排拍摄活动，薪酬日结!\', \'3、本公司是正规直招公司，不需要培训，押金。工作内容健康、安全、正规、合法。\', \'任职要求：\', \'1、18岁以上，身高155cm以上。形象好，气质佳；能穿高跟鞋，化妆不过敏。\', \'18岁以上，身高175以上。身材比例良好，阳光帅气，活泼开朗。\', \'2、喜欢拍照，乐于沟通。有无经验均可。\', \'报名流程：有兴趣可直接投递个人简历。\"\']', 300.00);
INSERT INTO `app01_partjobinfo` VALUES (97998, '北京', '朝阳', '礼仪主持', '大专', 'http://bj.ssjzw.com/job/2012119964.html', '招聘礼仪接待', 1029, '800元/天', '2019-07-27 11:00:59.000000', '', '[\'司因工作需要，现诚聘礼仪部员工20名，也可长期兼职。\\xa0\', \'工资待遇:-，提供吃住，套房式，公司附近。\', \'工作内容:咨客接待\', \'工作要求:16周岁以上，五官端正，形象好，身体健康。\', \'同等条件下，行业内薪资最高，收入最具有保障！\', \'既然都来到这里了，给自己一个机会，拿起你的电话给我电话,可能是一个很好的平台和机会、\\xa0如果你不来电话，对我而言没有任何损失，\\xa0对你而言，损失的可能是一次很好的赚发展机会\']', 800.00);
INSERT INTO `app01_partjobinfo` VALUES (97999, '北京', '朝阳', '礼仪主持', '高中', 'http://bj.ssjzw.com/job/2012120347.html', '招聘礼仪接待', 1119, '200元/小时', '2019-07-30 10:35:28.000000', '', '[\'形象好气质佳即可，有经验者优先\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (98000, '北京', '朝阳', '实习生', '高中', 'http://bj.ssjzw.com/job/2012111541.html', '【实习】【限湖南籍学生】数据分析实习生', 1132, '200元/小时', '2019-06-13 19:01:09.000000', '', '[\'工作内容：\\xa0\', \'1、对长沙话音频内容进行音节和汉字标注。\\xa0\', \'2、根据长沙话用户会话内容样本，进行分词处理。\', \'3、用长沙话对语音识别系统进行测试，和错误分析。\\xa0\', \'任职要求：\\xa0\', \'1、在校本科生或硕士生，专业不限。\\xa0\', \'2、长沙人，长沙话口音标准、读写流利。\\xa0\', \'3、可尽快到岗，可持续3\\xa0个月以上。\\xa0每周出勤3天以上。\\xa0\', \'4、认真细致，有耐心和责任心，分析能力、逻辑能力强。\\xa0\', \'5、可以熟练操作常用办公软件。\', \'公司简介：\', \'北京猎户星空科技有限公司（美国上市公司猎豹移动旗下机器人公司），创立于年9月，专注于智能机器人产品和智能语音服务解决方案。公司拥有自主知识产权的世界顶尖智能语音识别、语音合成、语义理解、视觉识别、机械臂技术、深度学习技术等。\', \'工作地点：北京市朝阳区姚家园南路1号惠通时代广场猎豹移动（靠近地铁6号线青年路）\', \'工作时间：早上10点-晚上7点\', \'薪资待遇：180-200/天（税前），餐补20/天；地铁站免费班车\', \'感兴趣的同学请随时投递简历至\', \'[email\\xa0protected]\', \"/* <![CDATA[ */!function(t,e,r,n,c,a,p){try{t=document.currentScript||function(){for(t=document.getElementsByTagName(\'script\'),e=t.length;e--;)if(t[e].getAttribute(\'data-yjshash\'))return t[e]}();if(t&&(c=t.previousSibling)){p=t.parentNode;if(a=c.getAttribute(\'data-yjsemail\')){for(e=\'\',r=\'0x\'+a.substr(0,2)|0,n=2;a.length-n;n+=2)e+=\'%\'+(\'0\'+(\'0x\'+a.substr(n,2)^r).toString(16)).slice(-2);p.replaceChild(document.createTextNode(decodeURIComponent(e)),c)}p.removeChild(t)}}catch(u){}}()/* ]]> */\", \'、com，也可以随时加我微信沟通：（备注咨询实习岗位，谢谢。）\']', 200.00);
INSERT INTO `app01_partjobinfo` VALUES (98001, '北京', '朝阳', '实习生', '硕士', 'http://bj.ssjzw.com/job/2012128382.html', '三星手机官方客服实习生', 993, '150元/天', '2019-11-06 17:37:20.000000', '', '[\'高大上！三星总部客服实习生\', \'至少工作2个月哦，150元每天\', \'三星公司北京总部-三里屯，实习生短期客服！\', \'朝阳，地铁10号线团结湖站出站即是\', \'工作要求：男女不限\', \'普通话标准\', \'作为三星公司官方客服，负责手机用户活动咨询等相关工作内容，轻松简单\', \'工作地点：三星北京总部，地铁10号线团结湖站出站即是，工作环境高大上\', \'工作时间：9点-18点，每周双休\', \'工作地点：地铁10号线团结湖站，出站5分钟即是\', \'（说明：该岗位至少工作2个月，能长期工作更好）\', \'工资待遇：150元每天\', \'惊喜：工作二到三个月后，可申请转为三星公司正式编制，工资待遇-元每月+六险一金\', \'报名方式：⑴直接拨打联系人电话报名。\', \'⑵编辑短信“姓名+年龄+性别+三星”发送至联系人电话。\', \'说明：该岗位为三星公司直接招聘，请大家放心求职哦\']', 150.00);
INSERT INTO `app01_partjobinfo` VALUES (98002, '北京', '朝阳', '实习生', '硕士', 'http://bj.ssjzw.com/job/2012132706.html', '功能测试实习生', 888, '100元/天', '2020-04-03 10:59:16.000000', '', '[\'测试内容：\', \'平台系统的全流程测试操作：注册-认证-下载-接单-项目启动-提交成果-项目结束-薪酬发放\', \'整个过程的功能流程度，以及同一时间接单的最大承载量等\', \'职位简介：\', \'1、需到公司进行测试，功能测试按次数结算120元/次，当天结算，完成测试立即结算工资；\', \'2、由于测试任务有限，每周1-2次不等，根据公司分配为准；\', \'3、需签订兼职协议，提供学生证和身份证复印件，可标注仅供兼职工作使用\', \'4、奖励政策：推荐一人奖励10元，上不封顶，推荐100人每周测试2次，推荐人即可获得元奖励金，且无需占用自身时间来公司，当天推荐当天发奖励。\', \'5、需签订兼职协议，提供学生证和身份证复印件，可标注仅供兼职工作使用。\', \'线上测试\', \'1、完成高薪工资app注册（看到流程最后一步截图后）奖励20元。\', \'测试人员收不到短信给不了截图的这种情况，需要姓名身份证号给到后台查询，经查询有记录后再发送奖励。\', \'2、注册完进行功能测试后每笔奖励5元，次数不限。\', \'职位要求：\', \'1、在校大学生，专业不限\', \'2、踏实、有责任心\']', 100.00);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add job_info', 7, 'add_job_info');
INSERT INTO `auth_permission` VALUES (26, 'Can change job_info', 7, 'change_job_info');
INSERT INTO `auth_permission` VALUES (27, 'Can delete job_info', 7, 'delete_job_info');
INSERT INTO `auth_permission` VALUES (28, 'Can view job_info', 7, 'view_job_info');
INSERT INTO `auth_permission` VALUES (29, 'Can add city', 8, 'add_city');
INSERT INTO `auth_permission` VALUES (30, 'Can change city', 8, 'change_city');
INSERT INTO `auth_permission` VALUES (31, 'Can delete city', 8, 'delete_city');
INSERT INTO `auth_permission` VALUES (32, 'Can view city', 8, 'view_city');
INSERT INTO `auth_permission` VALUES (33, 'Can add part job info', 9, 'add_partjobinfo');
INSERT INTO `auth_permission` VALUES (34, 'Can change part job info', 9, 'change_partjobinfo');
INSERT INTO `auth_permission` VALUES (35, 'Can delete part job info', 9, 'delete_partjobinfo');
INSERT INTO `auth_permission` VALUES (36, 'Can view part job info', 9, 'view_partjobinfo');
INSERT INTO `auth_permission` VALUES (37, 'Can add snippet', 10, 'add_snippet');
INSERT INTO `auth_permission` VALUES (38, 'Can change snippet', 10, 'change_snippet');
INSERT INTO `auth_permission` VALUES (39, 'Can delete snippet', 10, 'delete_snippet');
INSERT INTO `auth_permission` VALUES (40, 'Can view snippet', 10, 'view_snippet');
INSERT INTO `auth_permission` VALUES (41, 'Can add 用户信息', 11, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (42, 'Can change 用户信息', 11, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 用户信息', 11, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (44, 'Can view 用户信息', 11, 'view_userprofile');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$260000$S3Q6OsWi0UPXV9KEQYi6a0$L+Ekms6t2n9bMssegkBujN4PTeSPmxXRH+9ASaPoFy4=', '2022-09-03 08:19:48.952289', 1, 'root', '', '', '', 1, 1, '2021-04-11 08:51:14.445392');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$260000$JdS0gZ0u2hyEGvVjbdXCW3$/JsXvB1jG3Y2Em2VqfyTiI2vuJqPglhFNxG+Fz9uUsI=', '2021-04-11 12:51:56.152844', 0, 'simp', '', '', '128@qq.com', 0, 1, '2021-04-11 12:51:56.048804');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$260000$Cox6ym1sx8q3UaUb9P2jia$58OVWk7LEFUkxh9uDac9erRPoYpgD1UseL5pQt1rV+k=', '2021-04-11 13:12:11.803993', 0, 'simp1', '', '', '123456@qq.com', 0, 1, '2021-04-11 13:12:11.707091');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (11, 'accounts', 'userprofile');
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (8, 'app01', 'city');
INSERT INTO `django_content_type` VALUES (7, 'app01', 'job_info');
INSERT INTO `django_content_type` VALUES (9, 'app01', 'partjobinfo');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'snippets', 'snippet');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-03-09 09:38:01.414988');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2021-03-09 09:38:02.216872');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2021-03-09 09:38:06.800581');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-03-09 09:38:07.961475');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-09 09:38:07.998377');
INSERT INTO `django_migrations` VALUES (6, 'app01', '0001_initial', '2021-03-09 09:38:08.146980');
INSERT INTO `django_migrations` VALUES (7, 'contenttypes', '0002_remove_content_type_name', '2021-03-09 09:38:08.603785');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2021-03-09 09:38:09.130372');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0003_alter_user_email_max_length', '2021-03-09 09:38:09.262994');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0004_alter_user_username_opts', '2021-03-09 09:38:09.338820');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0005_alter_user_last_login_null', '2021-03-09 09:38:09.786592');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0006_require_contenttypes_0002', '2021-03-09 09:38:09.813521');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2021-03-09 09:38:09.839451');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0008_alter_user_username_max_length', '2021-03-09 09:38:09.954145');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2021-03-09 09:38:10.039939');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0010_alter_group_name_max_length', '2021-03-09 09:38:10.128677');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0011_update_proxy_permissions', '2021-03-09 09:38:10.161589');
INSERT INTO `django_migrations` VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2021-03-09 09:38:10.246367');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2021-03-09 09:38:10.387984');
INSERT INTO `django_migrations` VALUES (20, 'app01', '0002_auto_20210309_1744', '2021-03-09 09:44:45.274581');
INSERT INTO `django_migrations` VALUES (21, 'app01', '0003_auto_20210411_0024', '2021-04-10 16:24:52.606817');
INSERT INTO `django_migrations` VALUES (22, 'app01', '0004_auto_20210411_0051', '2021-04-10 16:51:12.062604');
INSERT INTO `django_migrations` VALUES (23, 'snippets', '0001_initial', '2021-04-11 09:08:04.441359');
INSERT INTO `django_migrations` VALUES (24, 'app01', '0005_delete_job_info', '2021-04-11 12:10:52.481075');
INSERT INTO `django_migrations` VALUES (25, 'accounts', '0001_initial', '2021-04-11 12:11:20.832131');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1ja391xx98qpixguzhfcf9eyjxunj7r7', '.eJxVjMsOwiAQRf-FtSE8CjN16d5vIAxDpWogKe3K-O_apAvd3nPOfYkQt7WEreclzCzOQovT70YxPXLdAd9jvTWZWl2XmeSuyIN2eW2cn5fD_TsosZdvnSIhTMBOWTQwgiU7anDolQJljXEJcsaEmNiD1gMxoqLBecLJsnbi_QG67TbI:1oUOMV:clx3EB6oZUEnoiOogsg4LbggxSfC5-yqzijRSLvjlNY', '2022-09-17 08:18:43.318435');
INSERT INTO `django_session` VALUES ('epmh2damr9uzi54dth7aygxpuon872by', '.eJxVjDsOwjAQBe_iGln-fyjpOYO19m5wANlSnFSIu0OkFNC-mXkvlmBba9oGLWlGdmaanX63DOVBbQd4h3brvPS2LnPmu8IPOvi1Iz0vh_t3UGHUbx3KhDFkA8JHY1AazFo5G4Ik6YublKOotBMmgICowargJWkvZMnFW2DvD84pNxg:1lVZsp:HFLbVdURrHuy8ySoiC1_OHvdMTNIXfrQmqxX7qrV3KI', '2021-04-25 13:12:11.804719');
INSERT INTO `django_session` VALUES ('qojizsmzkvioj7nz6092xbanbalhkjyp', 'e30:1lVZZE:KusxOcIQw7qVtBqgzEWte_qcH9_ITHBWPokxFvJ5rYo', '2021-04-25 12:51:56.150676');
INSERT INTO `django_session` VALUES ('vfvr0080tof4s2euwvm2wfvuq3k3q9ul', '.eJxVjMsOwiAQRf-FtSE8CjN16d5vIAxDpWogKe3K-O_apAvd3nPOfYkQt7WEreclzCzOQovT70YxPXLdAd9jvTWZWl2XmeSuyIN2eW2cn5fD_TsosZdvnSIhTMBOWTQwgiU7anDolQJljXEJcsaEmNiD1gMxoqLBecLJsnbi_QG67TbI:1oUONY:G3GJK9lHHHVsSDj5nBTsJVnVwpVTkf5z3DMGTvaXCdw', '2022-09-17 08:19:48.955288');

-- ----------------------------
-- Table structure for snippets_snippet
-- ----------------------------
DROP TABLE IF EXISTS `snippets_snippet`;
CREATE TABLE `snippets_snippet`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `linenos` tinyint(1) NOT NULL,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `style` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
