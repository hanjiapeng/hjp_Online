/*
Navicat MySQL Data Transfer

Source Server         : django
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : hjp_online

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-11-12 20:55:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add Bookmark', '6', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('22', 'Can change Bookmark', '6', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete Bookmark', '6', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('24', 'Can view Bookmark', '6', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('25', 'Can add User Setting', '7', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('26', 'Can change User Setting', '7', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete User Setting', '7', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('28', 'Can view User Setting', '7', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('29', 'Can add User Widget', '8', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('30', 'Can change User Widget', '8', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete User Widget', '8', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('32', 'Can view User Widget', '8', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('33', 'Can add log entry', '9', 'add_log');
INSERT INTO `auth_permission` VALUES ('34', 'Can change log entry', '9', 'change_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete log entry', '9', 'delete_log');
INSERT INTO `auth_permission` VALUES ('36', 'Can view log entry', '9', 'view_log');
INSERT INTO `auth_permission` VALUES ('37', 'Can add revision', '10', 'add_revision');
INSERT INTO `auth_permission` VALUES ('38', 'Can change revision', '10', 'change_revision');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete revision', '10', 'delete_revision');
INSERT INTO `auth_permission` VALUES ('40', 'Can view revision', '10', 'view_revision');
INSERT INTO `auth_permission` VALUES ('41', 'Can add version', '11', 'add_version');
INSERT INTO `auth_permission` VALUES ('42', 'Can change version', '11', 'change_version');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete version', '11', 'delete_version');
INSERT INTO `auth_permission` VALUES ('44', 'Can view version', '11', 'view_version');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 轮播图', '12', 'add_banner');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 轮播图', '12', 'change_banner');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 轮播图', '12', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 轮播图', '12', 'view_banner');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 邮箱验证码', '13', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 邮箱验证码', '13', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 邮箱验证码', '13', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 邮箱验证码', '13', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 用户信息', '14', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 用户信息', '14', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 用户信息', '14', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 用户信息', '14', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 课程', '15', 'add_course');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 课程', '15', 'change_course');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 课程', '15', 'delete_course');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 课程', '15', 'view_course');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 章节', '16', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 章节', '16', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 章节', '16', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 章节', '16', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 视频', '17', 'add_video');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 视频', '17', 'change_video');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 视频', '17', 'delete_video');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 视频', '17', 'view_video');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 课程资源', '18', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 课程资源', '18', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 课程资源', '18', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 课程资源', '18', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 城市', '19', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 城市', '19', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 城市', '19', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 城市', '19', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 课程机构', '20', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 课程机构', '20', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 课程机构', '20', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 课程机构', '20', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 教师', '21', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 教师', '21', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 教师', '21', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 教师', '21', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 用户咨询', '22', 'add_userask');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 用户咨询', '22', 'change_userask');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 用户咨询', '22', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('88', 'Can view 用户咨询', '22', 'view_userask');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 用户消息', '23', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 用户消息', '23', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 用户消息', '23', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 用户消息', '23', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 课程评论', '24', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 课程评论', '24', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 课程评论', '24', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 课程评论', '24', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 用户收藏', '25', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 用户收藏', '25', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 用户收藏', '25', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('100', 'Can view 用户收藏', '25', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('101', 'Can add 用户课程', '26', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('102', 'Can change 用户课程', '26', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete 用户课程', '26', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('104', 'Can view 用户课程', '26', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('105', 'Can add captcha store', '27', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('106', 'Can change captcha store', '27', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete captcha store', '27', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('108', 'Can view captcha store', '27', 'view_captchastore');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `index` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('164', 'LMLC', 'lmlc', 'c0718f22d4924d25898f3d8f3a50546ce7734155', '2020-11-08 16:46:55.553230');
INSERT INTO `captcha_captchastore` VALUES ('165', 'LQGR', 'lqgr', 'f61db1a9f76d7900439bb8483ab00c90b72aa6db', '2020-11-08 16:48:55.893402');
INSERT INTO `captcha_captchastore` VALUES ('166', 'CNJL', 'cnjl', '109d82f0c7f41aca4381a8f5c06d0f7668374d95', '2020-11-08 16:49:56.006399');
INSERT INTO `captcha_captchastore` VALUES ('167', 'AKXA', 'akxa', '463edc0167f3934328ea35aba710b7ee5037d1c7', '2020-11-08 16:50:00.009459');
INSERT INTO `captcha_captchastore` VALUES ('168', 'BZIF', 'bzif', '966911a2737547946c4b8055d3c912822f0c323f', '2020-11-08 16:50:05.467774');
INSERT INTO `captcha_captchastore` VALUES ('169', 'CLQI', 'clqi', '23067da86bac44ce167d16a5774dc7a715d200ba', '2020-11-08 16:50:09.571781');
INSERT INTO `captcha_captchastore` VALUES ('170', 'ZQIQ', 'zqiq', 'b13c71c3cb890df09696ea0a48ba08c6853e94b0', '2020-11-08 16:50:22.307015');
INSERT INTO `captcha_captchastore` VALUES ('172', 'VCFC', 'vcfc', 'bf34068b9564fd6d6bf24b51920e9c70bc04936a', '2020-11-08 16:50:27.926257');

-- ----------------------------
-- Table structure for citydict
-- ----------------------------
DROP TABLE IF EXISTS `citydict`;
CREATE TABLE `citydict` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of citydict
-- ----------------------------
INSERT INTO `citydict` VALUES ('3', '北京', '中国首都', '2020-11-09 20:56:00.000000');
INSERT INTO `citydict` VALUES ('4', '上海', '一线城市', '2020-11-10 08:27:00.000000');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `degree` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int NOT NULL,
  `students` int NOT NULL,
  `fav_nums` int NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_org_id` int DEFAULT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_id` int DEFAULT NULL,
  `teacher_tell` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `youneed_know` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `course_course_org_id_e6ee9f66_fk_courseorg_id` (`course_org_id`),
  KEY `course_teacher_id_b694c4f5_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `course_course_org_id_e6ee9f66_fk_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `courseorg` (`id`),
  CONSTRAINT `course_teacher_id_b694c4f5_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('5', '乒乓球基础', '准学员要求身体健康并对乒乓球课程感兴趣', '掌握乒乓球竞赛规则与裁判法并能够组织小型比赛。 授课手段和教学方法： 主要运用指导法、喂多球练习法和评价法等教学方法，根据学生的乒乓球水平参差不齐的现状分层教学和要求。指导法主要包括讲解、示范、领做与口令、纠正错误。喂多球练习法的形式主要有教师通过多球强化学生技术和学生一对一多球练习；而练习的方法主要有模仿练习、重复练习和实战练习。评价法主要是通过观察与提问、抽查与检验和教学比赛来实施的。', 'gj', '45', '105', '100', 'courses/2020/11/ppq_AblS2Rm.jpg', '166', '2020-11-09 20:58:00.000000', '7', '体育', '爱运动，增强体质', '4', '突破自己，你会成为下一个国家运动员', '必须好好练习，刻苦，努力');
INSERT INTO `course` VALUES ('6', '计算机基础', '培养计算机人才', '每天上课2个小时', 'zj', '45', '50', '100', 'courses/2020/11/jsj_lvCXmwG.jpg', '102', '2020-11-10 08:28:00.000000', '8', '技能', '', null, '', '');
INSERT INTO `course` VALUES ('7', '大学英语', '英语高级', '培养一流翻译官', 'gj', '45', '54', '60', 'courses/2020/11/yy_ieGFsIu.jpg', '50', '2020-11-11 08:28:00.000000', '8', '外语', '外语，表达力', '5', '努力，成为一名世界翻译官', '刻苦学习，学习外语高级');
INSERT INTO `course` VALUES ('8', '高等数学', '高级数学', '数学可以给你带来快乐', 'gj', '45', '60', '60', 'courses/2020/11/sx_hsgoieG.jpg', '124', '2020-11-11 08:32:00.000000', '8', '教育', '', null, '', '');
INSERT INTO `course` VALUES ('9', '企业管理', '学习企业管理流程', '让你对企业有了进一步的认识', 'zj', '45', '120', '50', 'courses/2020/11/qy_dpXhALe.jpg', '80', '2020-11-11 08:35:00.000000', '8', '教育', '', null, '', '');
INSERT INTO `course` VALUES ('10', '大学物理', '对物理的认识', '可以让你做更多的实验', 'cj', '45', '60', '40', 'courses/2020/11/wl_5tpFfqp.jpg', '30', '2020-11-11 08:38:00.000000', '8', '教育', '', null, '', '');
INSERT INTO `course` VALUES ('11', '运动参与目标', '培养从事乒乓球的运动能力', '在运动汇中引导学生的兴趣', 'cj', '45', '200', '120', 'courses/2020/11/ppq2_atMjOgi.jpg', '107', '2020-11-11 08:42:00.000000', '7', '体育', '', null, '', '');
INSERT INTO `course` VALUES ('12', '运动技能目标', '系统全面学习乒乓球的知识', '乒乓球的技能，能够学以致用', 'zj', '45', '160', '100', 'courses/2020/11/ppq3_FqiTNF1.png', '62', '2020-11-11 08:46:00.000000', '7', '体育', '', null, '', '');
INSERT INTO `course` VALUES ('13', '身体健康目标', '能够发展身体的各器官系统的生理功能', '发展灵敏，协调，速度，力量等身体素质', 'gj', '50', '140', '130', 'courses/2020/11/ppq4_2T4HovF.jpg', '127', '2020-11-11 08:48:00.000000', '7', '体育', '', null, '', '');
INSERT INTO `course` VALUES ('14', '心理健康目标', '发展身心健康的愉悦活动', '得到心里战术和技战术的培养', 'zj', '50', '200', '150', 'courses/2020/11/ppq5_WJD22WI.jpg', '192', '2020-11-11 08:52:00.000000', '7', '体育', '', null, '', '');

-- ----------------------------
-- Table structure for coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `coursecomments`;
CREATE TABLE `coursecomments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `coursecomments_course_id_3a5b62c9_fk_course_id` (`course_id`),
  KEY `coursecomments_user_id_8ecdafe5_fk_userprofile_id` (`user_id`),
  CONSTRAINT `coursecomments_course_id_3a5b62c9_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `coursecomments_user_id_8ecdafe5_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of coursecomments
-- ----------------------------
INSERT INTO `coursecomments` VALUES ('1', '加油、努力、不放弃', '2020-11-11 20:51:34.346998', '5', '18');
INSERT INTO `coursecomments` VALUES ('2', '一定要实现自己的梦想 ', '2020-11-11 20:53:22.080214', '5', '18');

-- ----------------------------
-- Table structure for courseorg
-- ----------------------------
DROP TABLE IF EXISTS `courseorg`;
CREATE TABLE `courseorg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `course_nums` int NOT NULL,
  `students` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courseorg_city_id_e58fd2c3_fk_citydict_id` (`city_id`),
  CONSTRAINT `courseorg_city_id_e58fd2c3_fk_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courseorg
-- ----------------------------
INSERT INTO `courseorg` VALUES ('7', '中国乒乓球协会', '中国乒乓球协会（简称中国乒协，英文名：CHINESE TABLE TENNIS ASSOCIATION，缩写：CTTA）成立于1955年，是具有独立法人资格的全国性群众体育组织，总部设在北京市。', '100', '100', 'org/202011/ppq.png', '北京朝阳区', '2020-11-09 20:56:00.000000', '3', 'pxjg', '100', '100');
INSERT INTO `courseorg` VALUES ('8', '启程教育机构', '一种是通过希望客户知道的产品、服务或者企业来确定某些质量，另一种类型则涉及到那些归因于原因、来源或者起源的名字，这类教育机构起名通常被称为“表示来源的名字”它们是基于个人或者地理名称来进行教育机构命名的。', '10', '100', 'org/202011/jg.jpg', '北京丰台区', '2020-11-10 08:20:00.000000', '3', 'gx', '5', '50');

-- ----------------------------
-- Table structure for courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courseresource`;
CREATE TABLE `courseresource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `download` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courseresource_course_id_cbd3f6f1_fk_course_id` (`course_id`),
  CONSTRAINT `courseresource_course_id_cbd3f6f1_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courseresource
-- ----------------------------
INSERT INTO `courseresource` VALUES ('2', '正、反手学习', 'course/resource/2020/11/正反手资料.txt', '2020-11-11 20:07:00.000000', '5');
INSERT INTO `courseresource` VALUES ('3', 'A Never, ever give up!', 'course/resource/2020/11/大学英语.txt', '2020-11-12 08:30:00.000000', '7');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('27', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'course', 'course');
INSERT INTO `django_content_type` VALUES ('18', 'course', 'courseresource');
INSERT INTO `django_content_type` VALUES ('16', 'course', 'lesson');
INSERT INTO `django_content_type` VALUES ('17', 'course', 'video');
INSERT INTO `django_content_type` VALUES ('24', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('22', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('26', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('25', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('23', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('19', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('20', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('21', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('10', 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES ('11', 'reversion', 'version');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('12', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('13', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('14', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('6', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-11-03 15:37:32.605833');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-11-03 15:37:32.760423');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-11-03 15:37:32.888079');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-11-03 15:37:33.246124');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-11-03 15:37:33.256097');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-11-03 15:37:33.267067');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-11-03 15:37:33.278037');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-11-03 15:37:33.282025');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-11-03 15:37:33.291003');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-11-03 15:37:33.299978');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-11-03 15:37:33.307957');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-11-03 15:37:33.344858');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-11-03 15:37:33.353833');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2020-11-03 15:37:33.597182');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2020-11-03 15:37:34.102034');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2020-11-03 15:37:34.266419');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2020-11-03 15:37:34.278937');
INSERT INTO `django_migrations` VALUES ('18', 'course', '0001_initial', '2020-11-03 15:37:34.548178');
INSERT INTO `django_migrations` VALUES ('19', 'organization', '0001_initial', '2020-11-03 15:37:34.877296');
INSERT INTO `django_migrations` VALUES ('20', 'reversion', '0001_squashed_0004_auto_20160611_1202', '2020-11-03 15:37:35.250303');
INSERT INTO `django_migrations` VALUES ('21', 'sessions', '0001_initial', '2020-11-03 15:37:35.540058');
INSERT INTO `django_migrations` VALUES ('22', 'xadmin', '0001_initial', '2020-11-03 15:37:35.708281');
INSERT INTO `django_migrations` VALUES ('23', 'xadmin', '0002_log', '2020-11-03 15:37:36.196385');
INSERT INTO `django_migrations` VALUES ('24', 'xadmin', '0003_auto_20160715_0100', '2020-11-03 15:37:36.456201');
INSERT INTO `django_migrations` VALUES ('25', 'users', '0002_auto_20201103_1656', '2020-11-03 16:56:51.446603');
INSERT INTO `django_migrations` VALUES ('26', 'operation', '0001_initial', '2020-11-04 08:43:07.417466');
INSERT INTO `django_migrations` VALUES ('27', 'course', '0002_auto_20201104_1115', '2020-11-04 11:15:57.283416');
INSERT INTO `django_migrations` VALUES ('28', 'course', '0003_auto_20201104_1120', '2020-11-04 11:21:02.833695');
INSERT INTO `django_migrations` VALUES ('29', 'captcha', '0001_initial', '2020-11-05 10:00:26.137107');
INSERT INTO `django_migrations` VALUES ('30', 'organization', '0002_courseorg_category', '2020-11-06 10:34:04.391936');
INSERT INTO `django_migrations` VALUES ('31', 'organization', '0003_auto_20201106_1901', '2020-11-06 19:01:33.103838');
INSERT INTO `django_migrations` VALUES ('32', 'organization', '0004_teacher_image', '2020-11-09 10:08:51.398156');
INSERT INTO `django_migrations` VALUES ('33', 'course', '0004_course_course_org', '2020-11-09 10:08:51.620208');
INSERT INTO `django_migrations` VALUES ('34', 'organization', '0005_teacher_take_office', '2020-11-09 20:15:51.659023');
INSERT INTO `django_migrations` VALUES ('35', 'course', '0005_course_category', '2020-11-11 09:38:43.314240');
INSERT INTO `django_migrations` VALUES ('36', 'course', '0006_course_tag', '2020-11-11 19:24:21.335152');
INSERT INTO `django_migrations` VALUES ('37', 'course', '0007_video_url', '2020-11-11 19:52:31.379788');
INSERT INTO `django_migrations` VALUES ('38', 'course', '0008_video_learn_times', '2020-11-11 20:01:21.365733');
INSERT INTO `django_migrations` VALUES ('39', 'course', '0009_auto_20201111_2022', '2020-11-11 20:22:12.195233');
INSERT INTO `django_migrations` VALUES ('40', 'organization', '0006_teacher_teacher_age', '2020-11-12 14:22:11.613398');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('08bdl3pychjuqf3zzi60ybrm7bmtcm8u', 'NjcwNDgzYzY4OTFkZmNmYzI2MDQ2MTZjY2U1ODNjYzVlZTBlMTgxZDp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzBkODFiZTQ3ZTBlOWY4YjMzZGU0MDc5MTZmZjI4MGY1MjI4NWZiIn0=', '2020-11-22 15:57:36.991387');
INSERT INTO `django_session` VALUES ('accsshkn0ysd93fbzoqhgk3vacjp99y0', 'NjcwNDgzYzY4OTFkZmNmYzI2MDQ2MTZjY2U1ODNjYzVlZTBlMTgxZDp7Il9hdXRoX3VzZXJfaWQiOiIxOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzBkODFiZTQ3ZTBlOWY4YjMzZGU0MDc5MTZmZjI4MGY1MjI4NWZiIn0=', '2020-11-26 17:21:20.929690');
INSERT INTO `django_session` VALUES ('sxrbgcb7kpnth1r335duujeal14ubku1', 'Mzc4Mjk2MTBmODVjZWU3NzQzMTRiNDBhMThkMGIwM2YwOTZhNzE5Zjp7Il9hdXRoX3VzZXJfaWQiOiIyMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNjA1NDBhMTE0MTM2MGY0OTIxNWFiNWNkZTc4N2NmOWY3YzBhYWZhIn0=', '2020-11-22 16:16:06.963122');
INSERT INTO `django_session` VALUES ('u4lk16pjl1fdwembjz9ead1max9cgjgq', 'Yzg1NzczMmI2OGEwMjUwOTlhNmM3MjA3ODMyYWZlN2E1MjcxNGZmMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjIzMTRjY2FhYzdkYjUyZjA0ODg3ZmM3YjYyYWIzZmZiNzE3YzMwNjEiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl19', '2020-11-20 15:18:57.387534');

-- ----------------------------
-- Table structure for emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `emailverifyrecord`;
CREATE TABLE `emailverifyrecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of emailverifyrecord
-- ----------------------------
INSERT INTO `emailverifyrecord` VALUES ('1', 'ZSPY9aIwfswd1f7z', '1935337186@qq.com', 'register', '2020-11-05 19:21:36.615174');
INSERT INTO `emailverifyrecord` VALUES ('2', 'LkvjLzwTyni9EZTV', '1935337186@qq.com', 'register', '2020-11-05 19:26:01.562250');
INSERT INTO `emailverifyrecord` VALUES ('3', 'KNguXFURkBWMXGgU', '1935337186@qq.com', 'forget', '2020-11-06 08:57:02.726524');
INSERT INTO `emailverifyrecord` VALUES ('4', 'izgMmm7tsHLgbmhe', '1935337186@qq.com', 'forget', '2020-11-06 09:14:51.039476');
INSERT INTO `emailverifyrecord` VALUES ('5', '9Q7xQGYT5LXreN9b', '1935337186@qq.com', 'register', '2020-11-06 09:24:59.233274');
INSERT INTO `emailverifyrecord` VALUES ('6', 'UbXQMA5AryUal6xI', '2323074423@qq.com', 'register', '2020-11-08 09:20:57.051588');
INSERT INTO `emailverifyrecord` VALUES ('7', 'u3ziOsYd0Z0kjBLS', '154621@qq.com', 'register', '2020-11-08 09:21:28.991736');
INSERT INTO `emailverifyrecord` VALUES ('8', 'bEEUdJELuQP2qSh5', '1935337186@qq.com', 'register', '2020-11-08 09:28:22.760531');
INSERT INTO `emailverifyrecord` VALUES ('9', 'mkRAxnn3KRAm9JUg', '193537186@qq.com', 'forget', '2020-11-08 09:57:27.048581');
INSERT INTO `emailverifyrecord` VALUES ('10', 'gXYX4ztkSa3mZQYX', '1935337186@qq.com', 'forget', '2020-11-08 09:57:51.107170');
INSERT INTO `emailverifyrecord` VALUES ('11', 'AG4cUsqbYWWKkJMP', '1935337186@qq.com', 'register', '2020-11-08 10:19:49.829012');
INSERT INTO `emailverifyrecord` VALUES ('12', 'NFbNg1Ymq8SK55Oj', '1935337186@qq.com', 'register', '2020-11-08 15:54:48.105699');
INSERT INTO `emailverifyrecord` VALUES ('13', 'RNp5d6Cf1bTh6Uz2', '123@qq.com', 'register', '2020-11-08 16:10:50.099586');
INSERT INTO `emailverifyrecord` VALUES ('14', 'RuvhqiG4uotQSr9G', '456@qq.com', 'register', '2020-11-08 16:14:09.856042');
INSERT INTO `emailverifyrecord` VALUES ('15', 'sFC2R7waIzzvdsGu', '123@qq.com', 'register', '2020-11-08 16:35:54.822410');
INSERT INTO `emailverifyrecord` VALUES ('16', 'FeifYjJO5Z4zP3Cq', '979253281@qq.com', 'register', '2020-11-08 16:36:57.103183');
INSERT INTO `emailverifyrecord` VALUES ('17', '393jMbC1Bg9AKlSk', '551171359@qq.com', 'register', '2020-11-08 16:45:40.798719');

-- ----------------------------
-- Table structure for lesson
-- ----------------------------
DROP TABLE IF EXISTS `lesson`;
CREATE TABLE `lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lesson_course_id_0cde9fbb_fk_course_id` (`course_id`),
  CONSTRAINT `lesson_course_id_0cde9fbb_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of lesson
-- ----------------------------
INSERT INTO `lesson` VALUES ('2', '正手，反手练习', '2020-11-11 19:51:00.000000', '5');
INSERT INTO `lesson` VALUES ('3', '大学英语4级', '2020-11-12 08:27:00.000000', '7');

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_userprofile_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of reversion_revision
-- ----------------------------

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version` (
  `id` int NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `serialized_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `object_repr` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `revision_id` int NOT NULL,
  `db` varchar(191) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of reversion_version
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `work_years` int NOT NULL,
  `work_company` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `work_position` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `points` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `take_office` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_age` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_org_id_0131c96e_fk_courseorg_id` (`org_id`),
  CONSTRAINT `teacher_org_id_0131c96e_fk_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('4', '刘国梁', '10', '中国乒乓球协会', '主席', '培养人才', '100', '100', '2020-11-09 21:00:00.000000', '7', 'teacher/2020/11/lgl.jpg', '乒乓球选拔', '25');
INSERT INTO `teacher` VALUES ('5', '氢伟氢', '10', '启程教育机构', '话唠', '爱给人发钱', '100', '100', '2020-11-10 08:32:00.000000', '8', 'teacher/2020/11/qwq.jpg', 'python基础', '25');

-- ----------------------------
-- Table structure for userask
-- ----------------------------
DROP TABLE IF EXISTS `userask`;
CREATE TABLE `userask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `course_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userask
-- ----------------------------
INSERT INTO `userask` VALUES ('1', '韩嘉鹏', '18734794234', '哈哈哈', '2020-11-08 20:46:05.699168');
INSERT INTO `userask` VALUES ('2', '刘庸庸', '18563200000', '大学物理', '2020-11-12 11:22:22.282429');

-- ----------------------------
-- Table structure for usercourse
-- ----------------------------
DROP TABLE IF EXISTS `usercourse`;
CREATE TABLE `usercourse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usercourse_course_id_b87281f9_fk_course_id` (`course_id`),
  KEY `usercourse_user_id_400ee691_fk_userprofile_id` (`user_id`),
  CONSTRAINT `usercourse_course_id_b87281f9_fk_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `usercourse_user_id_400ee691_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of usercourse
-- ----------------------------
INSERT INTO `usercourse` VALUES ('1', '2020-11-11 15:37:00.000000', '5', '23');
INSERT INTO `usercourse` VALUES ('2', '2020-11-12 08:45:57.726211', '5', '18');
INSERT INTO `usercourse` VALUES ('3', '2020-11-12 08:46:04.827870', '7', '18');
INSERT INTO `usercourse` VALUES ('4', '2020-11-12 08:46:14.157107', '10', '18');
INSERT INTO `usercourse` VALUES ('5', '2020-11-12 09:12:07.119283', '14', '18');
INSERT INTO `usercourse` VALUES ('6', '2020-11-12 09:15:26.224601', '8', '18');
INSERT INTO `usercourse` VALUES ('7', '2020-11-12 09:31:54.806607', '11', '18');

-- ----------------------------
-- Table structure for userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `userfavorite`;
CREATE TABLE `userfavorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fav_id` int NOT NULL,
  `fav_type` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userfavorite_user_id_bb118a7a_fk_userprofile_id` (`user_id`),
  CONSTRAINT `userfavorite_user_id_bb118a7a_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userfavorite
-- ----------------------------
INSERT INTO `userfavorite` VALUES ('27', '7', '1', '2020-11-12 08:21:55.187905', '18');
INSERT INTO `userfavorite` VALUES ('41', '4', '3', '2020-11-12 16:38:21.677410', '18');
INSERT INTO `userfavorite` VALUES ('44', '5', '1', '2020-11-12 17:26:41.841848', '18');
INSERT INTO `userfavorite` VALUES ('45', '7', '2', '2020-11-12 17:28:27.459986', '18');

-- ----------------------------
-- Table structure for usermessage
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of usermessage
-- ----------------------------

-- ----------------------------
-- Table structure for userprofile
-- ----------------------------
DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userprofile
-- ----------------------------
INSERT INTO `userprofile` VALUES ('1', 'pbkdf2_sha256$150000$u9mtuyNurjMy$C3PlVrx4W3rqgmQ4f+gyKu26cHhzHB4jZiRqac58YVE=', '2020-11-09 20:45:53.920209', '1', 'xadmin', '', '', 'xadmin@163.com', '1', '1', '2020-11-03 16:07:59.052605', '', null, 'male', null, 'image/default.png', null);
INSERT INTO `userprofile` VALUES ('2', '123456', null, '0', '张三', '', '', '', '0', '1', '2020-11-03 16:22:00.000000', '血色浪漫', null, 'male', null, 'image/202011/头像.jpg', null);
INSERT INTO `userprofile` VALUES ('3', '123456789', null, '0', '李四', '', '', '', '0', '1', '2020-11-04 08:47:00.000000', '记忆中的你', null, 'male', '18888888888', 'image/202011/head_portrait.png', '');
INSERT INTO `userprofile` VALUES ('18', 'pbkdf2_sha256$150000$Vckn1hR2kEpN$VNzukLR4s0cOiMkJxdTU6+Uy63EOSvwZEQiAfshrWEA=', '2020-11-12 17:21:20.919721', '1', 'hanjiapeng', '嘉鹏', '韩', '1935337186@qq.com', '1', '1', '2020-11-08 15:54:00.000000', '浪子', '2001-08-05', 'male', '15735431776', 'image/202011/head_portrait_EJCgAhV.png', '');
INSERT INTO `userprofile` VALUES ('23', 'pbkdf2_sha256$150000$9Ee1dJ8eto1h$LeS9Xh0vo9D2YAqj1zrT6RiJFBgJXqDecjwk3bXfwLQ=', '2020-11-08 16:50:07.603445', '0', 'hanjiapeng_2001', '', '', '551171359@qq.com', '0', '1', '2020-11-08 16:45:40.663082', '浪子无期', '2001-06-06', 'male', null, 'image/202011/head_portrait_I4Jxb72.png', null);

-- ----------------------------
-- Table structure for userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `userprofile_groups`;
CREATE TABLE `userprofile_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userprofile_groups_userprofile_id_group_id_850640d8_uniq` (`userprofile_id`,`group_id`),
  KEY `userprofile_groups_group_id_e25cf300_fk_auth_group_id` (`group_id`),
  CONSTRAINT `userprofile_groups_group_id_e25cf300_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `userprofile_groups_userprofile_id_ffc3c019_fk_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `userprofile_user_permissions`;
CREATE TABLE `userprofile_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userprofile_user_permiss_userprofile_id_permissio_b528d16d_uniq` (`userprofile_id`,`permission_id`),
  KEY `userprofile_user_per_permission_id_7fd54787_fk_auth_perm` (`permission_id`),
  CONSTRAINT `userprofile_user_per_permission_id_7fd54787_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `userprofile_user_per_userprofile_id_50a5dd7d_fk_userprofi` FOREIGN KEY (`userprofile_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userprofile_user_permissions
-- ----------------------------
INSERT INTO `userprofile_user_permissions` VALUES ('1', '18', '2');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `video_lesson_id_43319a4d_fk_lesson_id` (`lesson_id`),
  CONSTRAINT `video_lesson_id_43319a4d_fk_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('5', '正、反手标准动作', '2020-11-11 19:52:00.000000', '2', 'https://v.youku.com/v_show/id_XNDQ3MDYzMTcxMg==', '0');
INSERT INTO `video` VALUES ('7', 'Section A 降低难度的完型', '2020-11-12 08:28:00.000000', '3', 'http://vjs.zencdn.net/v/oceans.mp4', '22');

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `url_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `query` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2020-11-03 16:23:03.352054', '127.0.0.1', '2', '张三', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2020-11-04 08:47:51.861856', '127.0.0.1', '3', '李四', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2020-11-04 11:04:03.322143', '127.0.0.1', '1', '用Python模块turtle绘图', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2020-11-04 11:05:35.440001', '127.0.0.1', '1', '《用Python模块turtle绘图课程的章节》>> python', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2020-11-04 11:06:04.828539', '127.0.0.1', '1', 'Video object (1)', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2020-11-04 11:06:30.173524', '127.0.0.1', '1', 'CourseResource object (1)', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2020-11-04 11:11:00.903047', '127.0.0.1', '2', 'Excel业务分析', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2020-11-04 11:17:43.288472', '127.0.0.1', '2', 'Excel业务分析', 'change', '修改 detail 和 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2020-11-04 11:18:32.784398', '127.0.0.1', '2', 'Excel业务分析', 'change', '修改 detail 和 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2020-11-04 11:19:30.342143', '127.0.0.1', '2', 'Excel业务分析', 'change', '修改 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2020-11-04 11:20:11.098377', '127.0.0.1', '2', 'Excel业务分析', 'change', '修改 detail 和 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2020-11-04 11:21:58.595832', '127.0.0.1', '2', 'Excel业务分析', 'change', '修改 detail 和 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2020-11-06 10:38:44.775689', '127.0.0.1', '1', 'CityDict object (1)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2020-11-06 10:39:10.354676', '127.0.0.1', '1', 'CourseOrg object (1)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2020-11-06 10:39:43.541696', '127.0.0.1', '2', 'CourseOrg object (2)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2020-11-06 10:40:27.157386', '127.0.0.1', '3', 'CourseOrg object (3)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2020-11-06 11:06:10.334122', '127.0.0.1', '4', 'CourseOrg object (4)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2020-11-06 11:06:59.823864', '127.0.0.1', '5', 'CourseOrg object (5)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2020-11-06 11:07:52.579499', '127.0.0.1', '2', 'CityDict object (2)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2020-11-06 11:36:01.394534', '127.0.0.1', '6', 'CourseOrg object (6)', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2020-11-06 15:18:57.181085', '127.0.0.1', '6', 'CourseOrg object (6)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2020-11-08 09:03:34.942764', '127.0.0.1', '1', 'CourseOrg object (1)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2020-11-08 09:17:52.270368', '127.0.0.1', '2', 'CourseOrg object (2)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2020-11-08 09:18:03.364732', '127.0.0.1', '3', 'CourseOrg object (3)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2020-11-08 09:18:11.436011', '127.0.0.1', '4', 'CourseOrg object (4)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2020-11-08 09:18:30.598446', '127.0.0.1', '5', 'CourseOrg object (5)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2020-11-08 09:18:39.256992', '127.0.0.1', '6', 'CourseOrg object (6)', 'change', '修改 image', '20', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2020-11-09 15:14:23.362839', '127.0.0.1', '1', '[CourseOrg object (1)]的教师: 王五', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2020-11-09 17:53:50.288659', '127.0.0.1', '3', '西游记', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2020-11-09 17:55:00.351442', '127.0.0.1', '2', 'Excel业务分析', 'change', '修改 image 和 course_org', '15', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2020-11-09 20:16:48.744212', '127.0.0.1', '2', '[乒乓球3]的教师: 刘国梁', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2020-11-09 20:19:37.795756', '127.0.0.1', '2', '[乒乓球4]的教师: 刘国梁', 'change', '修改 org 和 image', '21', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2020-11-09 20:22:48.324372', '127.0.0.1', '3', '西游记', 'change', '修改 image 和 course_org', '15', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2020-11-09 20:23:43.570079', '127.0.0.1', '1', '[乒乓球1]的教师: 王五', 'change', '修改 image 和 take_office', '21', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2020-11-09 20:28:34.917034', '127.0.0.1', '3', '[乒乓球4]的教师: 马龙', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2020-11-09 20:38:09.035452', '127.0.0.1', '4', '乒乓球', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2020-11-09 20:47:10.138947', '127.0.0.1', '18', 'hanjiapeng', 'change', '修改 last_login，is_superuser，user_permissions，first_name，last_name，is_staff，mobile 和 image', '14', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2020-11-09 20:56:19.751729', '127.0.0.1', '3', '北京', 'create', '已添加。', '19', '18');
INSERT INTO `xadmin_log` VALUES ('39', '2020-11-09 20:57:55.430261', '127.0.0.1', '7', '中国乒乓球协会', 'create', '已添加。', '20', '18');
INSERT INTO `xadmin_log` VALUES ('40', '2020-11-09 21:00:11.913492', '127.0.0.1', '5', '乒乓球基础', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('41', '2020-11-09 21:01:59.155320', '127.0.0.1', '4', '[中国乒乓球协会]的教师: 刘国梁', 'create', '已添加。', '21', '18');
INSERT INTO `xadmin_log` VALUES ('42', '2020-11-10 08:16:15.376523', '127.0.0.1', '5', '乒乓球基础', 'change', '修改 image', '15', '18');
INSERT INTO `xadmin_log` VALUES ('43', '2020-11-10 08:16:27.923879', '127.0.0.1', '4', '[中国乒乓球协会]的教师: 刘国梁', 'change', '修改 image', '21', '18');
INSERT INTO `xadmin_log` VALUES ('44', '2020-11-10 08:27:09.865825', '127.0.0.1', '8', '启程教育机构', 'create', '已添加。', '20', '18');
INSERT INTO `xadmin_log` VALUES ('45', '2020-11-10 08:27:45.033801', '127.0.0.1', '4', '上海', 'create', '已添加。', '19', '18');
INSERT INTO `xadmin_log` VALUES ('46', '2020-11-10 08:32:28.682595', '127.0.0.1', '6', '计算机基础', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('47', '2020-11-10 08:35:28.182222', '127.0.0.1', '5', '[启程教育机构]的教师: 氢伟氢', 'create', '已添加。', '21', '18');
INSERT INTO `xadmin_log` VALUES ('48', '2020-11-11 08:27:12.195959', '127.0.0.1', '1', '用Python模块turtle绘图', 'delete', '', '15', '18');
INSERT INTO `xadmin_log` VALUES ('49', '2020-11-11 08:27:36.794480', '127.0.0.1', '5', '乒乓球基础', 'change', '修改 image', '15', '18');
INSERT INTO `xadmin_log` VALUES ('50', '2020-11-11 08:32:41.679572', '127.0.0.1', '7', '大学英语', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('51', '2020-11-11 08:34:18.410469', '127.0.0.1', '8', '高等数学', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('52', '2020-11-11 08:35:21.871704', '127.0.0.1', '5', '乒乓球基础', 'change', '修改 image', '15', '18');
INSERT INTO `xadmin_log` VALUES ('53', '2020-11-11 08:38:05.362651', '127.0.0.1', '9', '企业管理', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('54', '2020-11-11 08:42:00.530724', '127.0.0.1', '10', '大学物理', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('55', '2020-11-11 08:46:15.143992', '127.0.0.1', '11', '运动参与目标', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('56', '2020-11-11 08:48:30.589052', '127.0.0.1', '12', '运动技能目标', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('57', '2020-11-11 08:52:22.100402', '127.0.0.1', '13', '身体健康目标', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('58', '2020-11-11 08:55:05.475131', '127.0.0.1', '14', '心理健康目标', 'create', '已添加。', '15', '18');
INSERT INTO `xadmin_log` VALUES ('59', '2020-11-11 09:46:57.941413', '127.0.0.1', '14', '心理健康目标', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('60', '2020-11-11 09:47:14.594195', '127.0.0.1', '13', '身体健康目标', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('61', '2020-11-11 09:47:24.512628', '127.0.0.1', '12', '运动技能目标', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('62', '2020-11-11 09:47:36.733981', '127.0.0.1', '11', '运动参与目标', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('63', '2020-11-11 09:48:04.659736', '127.0.0.1', '10', '大学物理', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('64', '2020-11-11 09:48:17.616008', '127.0.0.1', '9', '企业管理', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('65', '2020-11-11 09:48:28.518515', '127.0.0.1', '8', '高等数学', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('66', '2020-11-11 09:48:46.925088', '127.0.0.1', '7', '大学英语', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('67', '2020-11-11 09:49:02.096363', '127.0.0.1', '6', '计算机基础', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('68', '2020-11-11 09:49:13.572167', '127.0.0.1', '6', '计算机基础', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('69', '2020-11-11 09:49:24.520822', '127.0.0.1', '5', '乒乓球基础', 'change', '修改 image 和 category', '15', '18');
INSERT INTO `xadmin_log` VALUES ('70', '2020-11-11 15:38:09.500623', '127.0.0.1', '1', 'UserCourse object (1)', 'create', '已添加。', '26', '18');
INSERT INTO `xadmin_log` VALUES ('71', '2020-11-11 19:51:43.135977', '127.0.0.1', '2', '《乒乓球基础课程的章节》>> 正手，反手练习', 'create', '已添加。', '16', '18');
INSERT INTO `xadmin_log` VALUES ('72', '2020-11-11 19:54:30.409344', '127.0.0.1', '2', '正、反手标准动作', 'create', '已添加。', '17', '18');
INSERT INTO `xadmin_log` VALUES ('73', '2020-11-11 20:09:04.321305', '127.0.0.1', '2', 'CourseResource object (2)', 'create', '已添加。', '18', '18');
INSERT INTO `xadmin_log` VALUES ('74', '2020-11-11 20:25:12.605047', '127.0.0.1', '5', '乒乓球基础', 'change', '修改 image，tag，teacher，youneed_know 和 teacher_tell', '15', '18');
INSERT INTO `xadmin_log` VALUES ('75', '2020-11-12 08:27:23.949667', '127.0.0.1', '7', '大学英语', 'change', '修改 image，tag，teacher，youneed_know 和 teacher_tell', '15', '18');
INSERT INTO `xadmin_log` VALUES ('76', '2020-11-12 08:28:40.509167', '127.0.0.1', '3', '《大学英语课程的章节》>> 大学英语4级', 'create', '已添加。', '16', '18');
INSERT INTO `xadmin_log` VALUES ('77', '2020-11-12 08:30:05.819090', '127.0.0.1', '3', 'Section A 降低难度的完型', 'create', '已添加。', '17', '18');
INSERT INTO `xadmin_log` VALUES ('78', '2020-11-12 08:35:19.916058', '127.0.0.1', '3', 'CourseResource object (3)', 'create', '已添加。', '18', '18');
INSERT INTO `xadmin_log` VALUES ('79', '2020-11-12 15:43:30.882216', '127.0.0.1', '7', 'Section A 降低难度的完型', 'change', '修改 url', '17', '18');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', 'https://bootswatch.com/3/flatly/bootstrap.min.css', '1');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'dashboard:home:pos', '', '18');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
  `widget_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
