/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50645
Source Host           : localhost:3306
Source Database       : interactive_class

Target Server Type    : MYSQL
Target Server Version : 50645
File Encoding         : 65001

Date: 2020-05-08 10:18:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` varchar(36) NOT NULL,
  `class_name` varchar(60) DEFAULT NULL,
  `class_num` int(6) DEFAULT '0' COMMENT '班级人数',
  `class_introduce` varchar(255) DEFAULT NULL COMMENT '班级简介',
  `class_create_code` varchar(32) DEFAULT '' COMMENT '班级创建j标识,可以根据班级code 搜索',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '逻辑删除。1标识被删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_class_code` (`class_create_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('18952731-e1db-4415-90ff-197ff048b6b4', '1502', '40', '1502班级简介。。。', '715596', '2020-04-25 23:48:35', '2020-04-25 23:48:35', '0');
INSERT INTO `class` VALUES ('25b929ef-1134-4333-b747-30b34a9c78a8', '1401', '32', '这是1401班', '399343', '2020-05-07 23:46:39', '2020-05-07 23:46:39', '0');
INSERT INTO `class` VALUES ('504bf968-0735-4892-ac3b-aa0d1a3257aa', '1403', '24', '这是1403班', '440325', '2020-05-07 23:47:20', '2020-05-07 23:47:20', '0');
INSERT INTO `class` VALUES ('64f5fa91-8c22-43e6-a63c-6184d84711ad', '1506', '34', '777777', '940221', '2020-05-04 20:22:20', '2020-05-04 20:22:20', '0');
INSERT INTO `class` VALUES ('9c68ae80-a913-435b-a434-722c97ad804f', '1501', '34', '1501班级简介。。。', '697042', '2020-04-25 23:48:17', '2020-04-25 23:48:17', '0');
INSERT INTO `class` VALUES ('c77112f8-30bd-491a-b6af-c1bb0dc95674', '1402', '20', '这是1402班', '420185', '2020-05-07 23:47:00', '2020-05-07 23:47:00', '0');
INSERT INTO `class` VALUES ('fc343902-b4ca-4e21-a238-c38539e587b2', 'test', '22', '22', '914360', '2020-05-08 09:55:14', '2020-05-08 09:55:14', '0');

-- ----------------------------
-- Table structure for class_user
-- ----------------------------
DROP TABLE IF EXISTS `class_user`;
CREATE TABLE `class_user` (
  `id` varchar(36) NOT NULL,
  `class_id` varchar(255) NOT NULL DEFAULT '',
  `class_name` varchar(200) DEFAULT NULL,
  `member_id` varchar(36) NOT NULL DEFAULT '' COMMENT '班级成员id',
  `created_user_id` varchar(36) NOT NULL DEFAULT '' COMMENT '班级创建者Id',
  `creat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_user
-- ----------------------------
INSERT INTO `class_user` VALUES ('47fdedb98e5c4a4aaee08689983c7176', '64f5fa91-8c22-43e6-a63c-6184d84711ad', null, '99b9a2f574d94a3491f8bec131d1c502', '99b9a2f574d94a3491f8bec131d1c502', '2020-05-04 20:22:20', '2020-05-04 20:22:20');
INSERT INTO `class_user` VALUES ('661500a06b57439c96335d06d1e91b5e', 'c77112f8-30bd-491a-b6af-c1bb0dc95674', null, '68b9a2f57443803491f8bec131d1c254', '68b9a2f57443803491f8bec131d1c254', '2020-05-07 23:47:00', '2020-05-07 23:47:00');
INSERT INTO `class_user` VALUES ('662530fcbfba4127a4cb93028f651fd5', '18952731-e1db-4415-90ff-197ff048b6b4', null, '99b9a2f574d94a3491f8bec131d1c502', '', '2020-04-26 00:21:40', '2020-04-26 00:21:40');
INSERT INTO `class_user` VALUES ('70185e59b1b7484194ba18aa442d9ca4', '504bf968-0735-4892-ac3b-aa0d1a3257aa', null, '68b9a2f57443803491f8bec131d1c254', '68b9a2f57443803491f8bec131d1c254', '2020-05-07 23:47:20', '2020-05-07 23:47:20');
INSERT INTO `class_user` VALUES ('8e89456304d14163bd479ffee94944fb', '25b929ef-1134-4333-b747-30b34a9c78a8', null, '68b9a2f57443803491f8bec131d1c254', '68b9a2f57443803491f8bec131d1c254', '2020-05-07 23:46:39', '2020-05-07 23:46:39');
INSERT INTO `class_user` VALUES ('a6cace5927814ffa93fcd7f8d38db83d', 'c77112f8-30bd-491a-b6af-c1bb0dc95674', null, '99b9a2f574d94a3491f8bec131d1c502', '', '2020-05-07 23:50:59', '2020-05-07 23:50:59');
INSERT INTO `class_user` VALUES ('f088e10eae4444fd91ec25ce6922aec8', 'fc343902-b4ca-4e21-a238-c38539e587b2', null, '80dbfc1af25e49b7b8e38df7a66e3b91', '80dbfc1af25e49b7b8e38df7a66e3b91', '2020-05-08 09:55:14', '2020-05-08 09:55:14');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` varchar(36) NOT NULL,
  `course_name` varchar(180) DEFAULT '' COMMENT '课程名称',
  `course_introduce` varchar(255) DEFAULT '' COMMENT '课程介绍',
  `course_time` varchar(50) DEFAULT '' COMMENT '课程时长',
  `course_score` varchar(80) DEFAULT '' COMMENT '课程学分',
  `class_id` varchar(255) NOT NULL DEFAULT '',
  `class_name` varchar(120) DEFAULT NULL,
  `created_user_id` varchar(36) NOT NULL DEFAULT '' COMMENT '课程创建者Id',
  `class_num` int(11) DEFAULT '0' COMMENT '上课人数',
  `begin_time` varchar(50) DEFAULT '' COMMENT '上课时间',
  `end_time` varchar(50) DEFAULT '' COMMENT '下课时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('0de9e3b0-e31b-47a0-83b1-43cf30cbdf37', 'java课程', 'java课程简介', '', '20', '9c68ae80-a913-435b-a434-722c97ad804f', '1501', '99b9a2f574d94a3491f8bec131d1c502', '0', '08:20:20', '10:10:11');
INSERT INTO `course` VALUES ('6bae0c16-84d8-4b23-9693-6621c08cd522', 'C++', '这是一门C++课程', '', '', 'c77112f8-30bd-491a-b6af-c1bb0dc95674', '1402', '68b9a2f57443803491f8bec131d1c254', '0', '08:30:00', '09:30:00');
INSERT INTO `course` VALUES ('799c8d7e-bc3a-41f5-9d49-d256f075058d', 'java课程', 'java课程简介', '', '8', '18952731-e1db-4415-90ff-197ff048b6b4', '1502', '99b9a2f574d94a3491f8bec131d1c502', '0', '08:20:20', '10:10:11');
INSERT INTO `course` VALUES ('d5ec1a87-aa24-4e33-94cd-5187df846799', 'C++', '这是一门C++课程', '', '', '25b929ef-1134-4333-b747-30b34a9c78a8', '1401', '68b9a2f57443803491f8bec131d1c254', '0', '08:30:00', '09:30:00');

-- ----------------------------
-- Table structure for course_resource
-- ----------------------------
DROP TABLE IF EXISTS `course_resource`;
CREATE TABLE `course_resource` (
  `id` varchar(36) NOT NULL,
  `course_resource_name` varchar(180) DEFAULT NULL COMMENT '课程资源名称',
  `resource_des` varchar(255) DEFAULT '' COMMENT '课件资源说明',
  `resource_type` int(11) DEFAULT '1' COMMENT '课件类型1：ppt；2：视频',
  `resource_path` varchar(180) DEFAULT '' COMMENT '资源存储路径',
  `user_id` varchar(36) DEFAULT '' COMMENT '资源作者id',
  `course_id` varchar(36) DEFAULT NULL,
  `class_id` varchar(36) DEFAULT NULL,
  `create_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_resource
-- ----------------------------
INSERT INTO `course_resource` VALUES ('b4ce020f03724614a78ddbd0b8953e92', '演示文稿1.pptx', 'ppt、word资源', '1', '202005/759264_演示文稿1.pptx', '99b9a2f574d94a3491f8bec131d1c502', '0de9e3b0-e31b-47a0-83b1-43cf30cbdf37', '9c68ae80-a913-435b-a434-722c97ad804f', '2020-05-04 00:52:49');
INSERT INTO `course_resource` VALUES ('c1e7365e69e24c0490609c52b11e39f7', '演示文稿1.pptx', 'ppt、word资源', '1', '202005/832372_演示文稿1.pptx', '99b9a2f574d94a3491f8bec131d1c502', '799c8d7e-bc3a-41f5-9d49-d256f075058d', '18952731-e1db-4415-90ff-197ff048b6b4', '2020-05-04 01:43:54');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` varchar(36) NOT NULL,
  `notice_title` varchar(180) DEFAULT '' COMMENT '通知、公告标题',
  `notice_content` varchar(255) DEFAULT NULL COMMENT '通知公告内容',
  `publish_time` varchar(50) DEFAULT NULL,
  `publish_user_id` varchar(36) DEFAULT NULL,
  `class_id` varchar(36) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('294771a1-a7c6-41c4-86f9-c4b88cde41a8', '公告标题1', '公告内容1', '2020-04-27 00:35:18', '99b9a2f574d94a3491f8bec131d1c502', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `notice` VALUES ('2a4111d4-f809-4526-b569-068deef1d453', '公告1标题', '公告1内容。。。。', '2020-05-03 21:35:25', '99b9a2f574d94a3491f8bec131d1c502', '18952731-e1db-4415-90ff-197ff048b6b4', '799c8d7e-bc3a-41f5-9d49-d256f075058d');
INSERT INTO `notice` VALUES ('41dce5e6-a790-4d97-a0b6-18d449879c90', '12233', '444558', '2020-04-28 00:05:09', '', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `notice` VALUES ('4e559b3f-806b-4e0e-af0a-669ff8ef9ea8', '12233', '444558', '2020-04-28 00:06:01', '', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `notice` VALUES ('72daf96f-bd52-4afd-b1f5-87f44fe05e2b', '公告标题3', '公告内容3', '2020-04-27 00:35:38', '99b9a2f574d94a3491f8bec131d1c502', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `notice` VALUES ('af63d126-6359-46c8-8356-a532a1f725fb', '77777', '88888。。。。。。。。。。。。。。。。。。。。。。。。。。。', '2020-04-28 00:10:29', '99b9a2f574d94a3491f8bec131d1c502', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `notice` VALUES ('dea363de-e705-46b0-888c-8532f7c8d198', '公告标题2', '公告内容2', '2020-04-27 00:35:29', '99b9a2f574d94a3491f8bec131d1c502', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `notice` VALUES ('dfb9c3cf-4d1a-4e4f-86b8-7b978d63a4bc', '公告标题5', '公告内容5.。。。。', '2020-04-27 16:17:04', '99b9a2f574d94a3491f8bec131d1c502', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `notice` VALUES ('e58ac89c-c25f-4935-a491-fabbc653497f', '1401班第一条公告', '大家好好学习，天天向上。。。', '2020-05-07 23:57:04', '68b9a2f57443803491f8bec131d1c254', 'c77112f8-30bd-491a-b6af-c1bb0dc95674', '6bae0c16-84d8-4b23-9693-6621c08cd522');
INSERT INTO `notice` VALUES ('f1d5682d-64f0-4abd-81ba-5924d22ba03c', '44', '444444.。。。', '2020-04-27 00:37:05', '99b9a2f574d94a3491f8bec131d1c502', '18952731-e1db-4415-90ff-197ff048b6b4', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` varchar(36) NOT NULL,
  `paper_name` varchar(180) DEFAULT NULL,
  `paper_score` varchar(120) DEFAULT NULL,
  `paper_time` varchar(50) DEFAULT '' COMMENT '答题时长',
  `answer_begin_time` varchar(50) DEFAULT NULL,
  `answer_end_time` varchar(50) DEFAULT NULL,
  `publish_user_id` varchar(36) DEFAULT '' COMMENT '试卷发布者id',
  `publish_time` varchar(50) DEFAULT NULL,
  `answer_user_id` varchar(36) DEFAULT '' COMMENT '试卷答题用户id',
  `class_id` varchar(36) DEFAULT '' COMMENT '试卷答题班级班级',
  `course_id` varchar(36) DEFAULT NULL,
  `student_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('11e81f9206d94dfbb135773d5db42613', '2019年12月份摸底考试', null, '120分钟', null, null, '68b9a2f57443803491f8bec131d1c254', '2020-57-07 11:57:56', '', 'c77112f8-30bd-491a-b6af-c1bb0dc95674', '6bae0c16-84d8-4b23-9693-6621c08cd522', null);
INSERT INTO `paper` VALUES ('4ee2dddfa0a7483a8d573595cd903ea8', '2020年1月测试', null, '120分钟', null, null, '99b9a2f574d94a3491f8bec131d1c502', '2020-31-04 08:31:52', '', '18952731-e1db-4415-90ff-197ff048b6b4', '799c8d7e-bc3a-41f5-9d49-d256f075058d', null);
INSERT INTO `paper` VALUES ('7ec8dac0c545473a92373ed31a24922a', '2019年3月份月考', null, '120分钟', null, null, '99b9a2f574d94a3491f8bec131d1c502', '2020-58-03 10:58:45', '', '18952731-e1db-4415-90ff-197ff048b6b4', '799c8d7e-bc3a-41f5-9d49-d256f075058d', null);

-- ----------------------------
-- Table structure for paper_question
-- ----------------------------
DROP TABLE IF EXISTS `paper_question`;
CREATE TABLE `paper_question` (
  `id` varchar(36) NOT NULL,
  `question_name` varchar(255) DEFAULT '' COMMENT '问题名称',
  `question_type` tinyint(2) DEFAULT '1' COMMENT '试卷题目类型。1：选择题；2：填空题',
  `question_answer` varchar(255) DEFAULT '' COMMENT '问题答案',
  `question_num` varchar(20) DEFAULT '' COMMENT '问题编号',
  `score` varchar(20) DEFAULT NULL,
  `paper_id` varchar(36) DEFAULT NULL,
  `order` smallint(6) DEFAULT '1' COMMENT '试题排序顺序',
  `question_a` varchar(255) DEFAULT NULL,
  `question_b` varchar(255) DEFAULT NULL,
  `question_c` varchar(255) DEFAULT NULL,
  `question_d` varchar(255) DEFAULT NULL,
  `question_self_answer` varchar(255) DEFAULT NULL COMMENT '填空题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper_question
-- ----------------------------
INSERT INTO `paper_question` VALUES ('33fb5dcd2d5f435d845f22dd0ee39aed', '下列javaDoc注释正确的是', '1', 'C', '4', '5', '4ee2dddfa0a7483a8d573595cd903ea8', '1', '/*我爱北京天安门*/', '//我爱北京天安门*/', '/**我爱北京天安门*/', '/*我爱北京天安门**/', null);
INSERT INTO `paper_question` VALUES ('3910895a15db4f94a09ad8be71ac2c95', '一个Java源程序是由若干个类组成。如果源文件中有多个类时，则只能有一个类是____类，并且这个类必须与源文件名同名。', '2', 'public', '6', '4', '4ee2dddfa0a7483a8d573595cd903ea8', '1', ' boolean = 1', 'boolean a = (9 >= 10)', 'boolean a=\"真\"', ' boolean a = = false', null);
INSERT INTO `paper_question` VALUES ('6a457f5b04594476b52d523490ca6fb5', '变量命名规范说法正确的是', '1', 'B', '3', '5', '4ee2dddfa0a7483a8d573595cd903ea8', '1', '变量由字母、下划线、数字、$符号随意组成', '变量不能以数字作为开头', 'A和a在java中是同一个变量', '不同类型的变量，可以起相同的名字', null);
INSERT INTO `paper_question` VALUES ('7c3126e1b2e549f6902a7275c37283a6', '下列说法正确的是', '1', 'A', '2', '4', '4ee2dddfa0a7483a8d573595cd903ea8', '1', 'JAVA程序的main方法必须写在类里面', 'JAVA程序中可以有多个main方法', 'JAVA程序中类名必须与文件名一样', 'JAVA程序的main方法中如果只有一条语句，可以不用{}(大括号)括起来', null);
INSERT INTO `paper_question` VALUES ('8c91c81a5266470db11e8df1ccb0f8d9', 'JAVA所定义的版本中不包括', '1', 'C', '1', '4', '4ee2dddfa0a7483a8d573595cd903ea8', '1', 'JAVA2 EE', 'JAVA2 Card', 'JAVA2 HE', 'JAVA2 ME', null);
INSERT INTO `paper_question` VALUES ('a8c4f337ecff48f7afe3ec20f51fe847', '如果希望将自定义类Student的多个对象放入集合TreeSet，实现所有元素按照某个属性的自然顺序排列，则需要Student类实现____接口', '2', 'Comparable', '9', '5', '4ee2dddfa0a7483a8d573595cd903ea8', '1', ' boolean = 1', 'boolean a = (9 >= 10)', 'boolean a=\"真\"', ' boolean a = = false', null);
INSERT INTO `paper_question` VALUES ('d0ada3512b534f9487607437608f0268', '为一个boolean类型变量赋值时，可以使用()方式', '1', 'B', '4', '4', '4ee2dddfa0a7483a8d573595cd903ea8', '1', ' boolean = 1', 'boolean a = (9 >= 10)', 'boolean a=\"真\"', ' boolean a = = false', null);
INSERT INTO `paper_question` VALUES ('e8cbd6430a724c4a9c55b02fa0900cb6', 'char c =\'a\';System.out.println(c+1);运行结果为', '2', '98', '7', '5', '4ee2dddfa0a7483a8d573595cd903ea8', '1', ' boolean = 1', 'boolean a = (9 >= 10)', 'boolean a=\"真\"', ' boolean a = = false', null);
INSERT INTO `paper_question` VALUES ('f523fec27fe447b19c88bf01279377de', 'char类型用来表示在Unicode编码表中的字符，长度是____个字节', '2', '2', '8', '2', '4ee2dddfa0a7483a8d573595cd903ea8', '1', ' boolean = 1', 'boolean a = (9 >= 10)', 'boolean a=\"真\"', ' boolean a = = false', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT '' COMMENT '角色名称',
  `role_code` varchar(50) NOT NULL DEFAULT '' COMMENT '角色权限标识（要求输入英文）',
  `desc` varchar(255) DEFAULT '' COMMENT '角色描述',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '用于逻辑删除，1标识数据被删除',
  `is_used` tinyint(255) DEFAULT '1' COMMENT '是否使用。1正在使用，0禁止使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '学生', 'student', '学生', '0', '1');
INSERT INTO `role` VALUES ('2', '老师', 'teacher', '拥有老师权限', '0', '1');
INSERT INTO `role` VALUES ('3', '管理员', 'admin', 'admin', '0', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT '0' COMMENT '性别，0：未知；1：男性；2：女性。',
  `account` varchar(255) DEFAULT '' COMMENT '登录账号',
  `password` varchar(255) DEFAULT NULL,
  `user_num` varchar(32) DEFAULT '' COMMENT '学号',
  `user_avatar` varchar(60) DEFAULT '' COMMENT '用户图像路径',
  `role_id` int(11) DEFAULT '0' COMMENT '角色id',
  `login_ip` varchar(255) DEFAULT '' COMMENT '登录ip',
  `login_time` varchar(50) DEFAULT '' COMMENT '登录时间',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '逻辑删除。1被删除',
  `is_used` tinyint(1) DEFAULT '1' COMMENT '是否禁用。0账号被禁用',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1479574d4264403ca52384e87f6c1659', '123456', '0', '123456', '123456', '123456', '', '1', '192.168.0.104', '', '2020-04-25 23:47:16', '2020-04-25 23:47:16', '0', '1');
INSERT INTO `user` VALUES ('68b9a2f57443803491f8bec131d1c254', '8888', '0', '8888', '8888', '8888', '', '2', '192.168.0.104', '2020-05-08 00:26:32', '2020-05-07 23:44:28', '2020-05-07 23:44:42', '0', '1');
INSERT INTO `user` VALUES ('80dbfc1af25e49b7b8e38df7a66e3b91', 'tesT2', '0', '999', '999', '999', '', '2', '192.168.0.101', '2020-05-08 09:52:28', '2020-05-08 09:43:08', '2020-05-08 09:43:08', '0', '1');
INSERT INTO `user` VALUES ('99b9a2f574d94a3491f8bec131d1c502', '222', '0', '222', '222', '222', '', '1', '192.168.0.101', '2020-05-08 10:03:49', '2020-04-25 23:46:52', '2020-04-25 23:46:52', '0', '1');

-- ----------------------------
-- Table structure for user_question
-- ----------------------------
DROP TABLE IF EXISTS `user_question`;
CREATE TABLE `user_question` (
  `id` varchar(36) DEFAULT NULL,
  `question_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `my_answer` varchar(255) DEFAULT NULL COMMENT '我的答案',
  `correct_answer` varchar(255) DEFAULT NULL COMMENT '正确答案',
  `score` varchar(4) DEFAULT NULL COMMENT '所得分数',
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_question
-- ----------------------------
INSERT INTO `user_question` VALUES ('6484192c8e5c4685b594bd58c4fe9bcf', '8c91c81a5266470db11e8df1ccb0f8d9', '99b9a2f574d94a3491f8bec131d1c502', 'C', null, '4', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('6206545c755e4ce7b2d404cdbb58b11b', '7c3126e1b2e549f6902a7275c37283a6', '99b9a2f574d94a3491f8bec131d1c502', 'A', null, '4', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('ce65765085384a2581448c843cfaeea5', '6a457f5b04594476b52d523490ca6fb5', '99b9a2f574d94a3491f8bec131d1c502', 'B', null, '5', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('f40322fb39884b5180b701c92a696064', '33fb5dcd2d5f435d845f22dd0ee39aed', '99b9a2f574d94a3491f8bec131d1c502', 'A', null, '0', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('5d8220b47bbf4bf69ef553cdfb9ad1b9', 'd0ada3512b534f9487607437608f0268', '99b9a2f574d94a3491f8bec131d1c502', 'B', null, '4', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('b9123df32ab148df85f5cf2b5f6dec63', '3910895a15db4f94a09ad8be71ac2c95', '99b9a2f574d94a3491f8bec131d1c502', '2', null, '0', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('9887537988dc4d9d95ce8a681ecea038', 'e8cbd6430a724c4a9c55b02fa0900cb6', '99b9a2f574d94a3491f8bec131d1c502', '2', null, '0', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('5a9be2b88021427e8c3bde3e49953da8', 'f523fec27fe447b19c88bf01279377de', '99b9a2f574d94a3491f8bec131d1c502', '2', null, '2', '2020-05-07 22:14:37', null);
INSERT INTO `user_question` VALUES ('0d5464b809e34dd1b28912e509d3921a', 'a8c4f337ecff48f7afe3ec20f51fe847', '99b9a2f574d94a3491f8bec131d1c502', 'class', null, '0', '2020-05-07 22:14:37', null);

-- ----------------------------
-- Table structure for user_score
-- ----------------------------
DROP TABLE IF EXISTS `user_score`;
CREATE TABLE `user_score` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `paper_id` varchar(32) DEFAULT NULL,
  `course_id` varchar(32) DEFAULT NULL,
  `total_score` varchar(255) DEFAULT '0' COMMENT '总分',
  `create_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_score
-- ----------------------------
INSERT INTO `user_score` VALUES ('239c04b6ce9945819119658f19b46822', '99b9a2f574d94a3491f8bec131d1c502', '4ee2dddfa0a7483a8d573595cd903ea8', null, '19', '2020-05-07 22:14:37');

-- ----------------------------
-- Table structure for user_sign
-- ----------------------------
DROP TABLE IF EXISTS `user_sign`;
CREATE TABLE `user_sign` (
  `id` varchar(36) NOT NULL,
  `class_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `sign_time` varchar(50) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sign_place` varchar(255) NOT NULL,
  `sign_in` tinyint(1) NOT NULL DEFAULT '1' COMMENT '签到。1表示签到，0表示签退',
  `ip` varchar(255) DEFAULT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_sign
-- ----------------------------
INSERT INTO `user_sign` VALUES ('2d59b3f07fc248cea70ddf4458ce379c', '18952731-e1db-4415-90ff-197ff048b6b4', '99b9a2f574d94a3491f8bec131d1c502', '222', '17:03:42', '大悟县人民政府(府前街东)', '0', '192.168.0.104', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `user_sign` VALUES ('3ec9527eb789407c8c4bcac2240f926b', 'c77112f8-30bd-491a-b6af-c1bb0dc95674', '68b9a2f57443803491f8bec131d1c254', '8888', '23:59:56', '大悟县人民政府(府前街东)', '0', '192.168.0.104', '6bae0c16-84d8-4b23-9693-6621c08cd522');
INSERT INTO `user_sign` VALUES ('50816f497d97483483d7170b04b93ea6', '18952731-e1db-4415-90ff-197ff048b6b4', '99b9a2f574d94a3491f8bec131d1c502', '222', '22:13:04', 'undefined', '1', '192.168.0.104', '799c8d7e-bc3a-41f5-9d49-d256f075058d');
INSERT INTO `user_sign` VALUES ('67fc85cc07c546f0a707fd9110cd59f8', '18952731-e1db-4415-90ff-197ff048b6b4', '99b9a2f574d94a3491f8bec131d1c502', '222', '17:03:41', '大悟县人民政府(府前街东)', '1', '192.168.0.104', 'bbc7f50e-702a-4314-b70a-fd30e3d682eb');
INSERT INTO `user_sign` VALUES ('8b975fc74925400ea7aac6099c19d62e', '18952731-e1db-4415-90ff-197ff048b6b4', '99b9a2f574d94a3491f8bec131d1c502', '222', '22:13:11', 'undefined', '0', '192.168.0.104', '799c8d7e-bc3a-41f5-9d49-d256f075058d');
INSERT INTO `user_sign` VALUES ('c038872929af42a0b73f91f3257df895', 'c77112f8-30bd-491a-b6af-c1bb0dc95674', '68b9a2f57443803491f8bec131d1c254', '8888', '23:59:53', '大悟县人民政府(府前街东)', '1', '192.168.0.104', '6bae0c16-84d8-4b23-9693-6621c08cd522');
