/*
Navicat MySQL Data Transfer

Source Server         : django
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : hjp_online

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-11-17 19:03:38
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
INSERT INTO `auth_permission` VALUES ('45', 'Can add captcha store', '12', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('46', 'Can change captcha store', '12', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete captcha store', '12', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('48', 'Can view captcha store', '12', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 轮播图', '13', 'add_banner');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 轮播图', '13', 'change_banner');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 轮播图', '13', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 轮播图', '13', 'view_banner');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 邮箱验证码', '14', 'add_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 邮箱验证码', '14', 'change_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 邮箱验证码', '14', 'delete_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 邮箱验证码', '14', 'view_emailverifyrecord');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户信息', '15', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户信息', '15', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户信息', '15', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户信息', '15', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 课程', '16', 'add_course');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 课程', '16', 'change_course');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 课程', '16', 'delete_course');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 课程', '16', 'view_course');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 章节', '17', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 章节', '17', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 章节', '17', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 章节', '17', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 视频', '18', 'add_video');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 视频', '18', 'change_video');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 视频', '18', 'delete_video');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 视频', '18', 'view_video');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 课程资源', '19', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 课程资源', '19', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 课程资源', '19', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 课程资源', '19', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 城市', '20', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 城市', '20', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 城市', '20', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 城市', '20', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 课程机构', '21', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 课程机构', '21', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 课程机构', '21', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 课程机构', '21', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 教师', '22', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 教师', '22', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 教师', '22', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('88', 'Can view 教师', '22', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('89', 'Can add 课程评论', '23', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('90', 'Can change 课程评论', '23', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete 课程评论', '23', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('92', 'Can view 课程评论', '23', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('93', 'Can add 用户咨询', '24', 'add_userask');
INSERT INTO `auth_permission` VALUES ('94', 'Can change 用户咨询', '24', 'change_userask');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete 用户咨询', '24', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('96', 'Can view 用户咨询', '24', 'view_userask');
INSERT INTO `auth_permission` VALUES ('97', 'Can add 用户课程', '25', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('98', 'Can change 用户课程', '25', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete 用户课程', '25', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('100', 'Can view 用户课程', '25', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('101', 'Can add 用户收藏', '26', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('102', 'Can change 用户收藏', '26', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete 用户收藏', '26', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('104', 'Can view 用户收藏', '26', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('105', 'Can add 用户消息', '27', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('106', 'Can change 用户消息', '27', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('107', 'Can delete 用户消息', '27', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('108', 'Can view 用户消息', '27', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('109', 'Can add 轮播课程', '28', 'add_bannercourse');
INSERT INTO `auth_permission` VALUES ('110', 'Can change 轮播课程', '28', 'change_bannercourse');
INSERT INTO `auth_permission` VALUES ('111', 'Can delete 轮播课程', '28', 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES ('112', 'Can view 轮播课程', '28', 'view_bannercourse');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '乒乓机构', 'banner/202011/ppq_hehGnOF.png', 'http://127.0.0.1:8000/org/home/1/', '1', '2020-11-17 15:23:00.000000');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('5', 'DRRT', 'drrt', '8e3d05efd2169982abf475461356266f1f6083fb', '2020-11-17 15:48:29.756665');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of citydict
-- ----------------------------
INSERT INTO `citydict` VALUES ('1', '北京', '中国首都', '2020-11-17 15:00:00.000000');
INSERT INTO `citydict` VALUES ('2', '上海', '一线城市', '2020-11-17 15:00:00.000000');

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
  `tag` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `youneed_know` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  `teacher_tell` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `course_org_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_course_org_id_e6ee9f66_fk_courseorg_id` (`course_org_id`),
  KEY `course_teacher_id_b694c4f5_fk_teacher_id` (`teacher_id`),
  CONSTRAINT `course_course_org_id_e6ee9f66_fk_courseorg_id` FOREIGN KEY (`course_org_id`) REFERENCES `courseorg` (`id`),
  CONSTRAINT `course_teacher_id_b694c4f5_fk_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '乒乓球', '培养国家级运动员', '准学员要求身体健康并对乒乓球课程感兴趣', 'zj', '45', '20', '21', 'courses/2020/11/ppq1_C6SFecS.png', '23', '爱运动，增强体质', '2020-11-17 14:47:00.000000', '体育', '必须好好练习，刻苦，努力', '1', '突破自己，你会成为下一个国家运动员', '1', '1');
INSERT INTO `course` VALUES ('2', '公共部门经济学', '一门研究公共部门经济行为的部门经济学学科', '它从经济学的角度解释、分析和规范在市场经济体制下，公共部门应具有的职能和作用。本课程系统、全面阐述公共部门经济学的基本概念与原理，从理论上弄清在市场经济条件下，什么是公共部门、什么是政府、政府必须做什么、以及政府应该怎样做等问题', 'gj', '50', '30', '20', 'courses/2020/11/lsczx_sylTIQ9.jpg', '16', '表达能力', '2020-11-17 14:49:00.000000', '教育', '刻苦学习', '1', '努力，成为一名优秀的人才', '2', '2');
INSERT INTO `course` VALUES ('3', '中国财政史', '高等院校财经类财政税务专业的基础课', '着重于结合财政学的基本理论、知识和方法，阐述中国财政在数千年历史发展过程中的基本演变轨迹、特点及其规律，以便学生据以了解、掌握和运用中国财政演变发展的规律，为我国正在进行的财政体制改革提供某些有益的借鉴作用。', 'gj', '55', '46', '41', 'courses/2020/11/lsczx_whjO6Qr.jpg', '41', '课外知识', '2020-11-17 14:53:00.000000', '历史', '刻苦学习', '1', '努力，成为一名优秀的人才', '2', '2');
INSERT INTO `course` VALUES ('4', '外国财政制度与管理', '使学生了解世界上主要国家财政制度与管理的内容', '掌握市场经济条件下财政制度运行的一般规律和财政管理的共同特征，并能运用所学知识分析和解决我国财政实践中的问题。主要内容包括外国在以下方面的制度与管理：公共支出、公共收入、税收、预算、政府间转移支付、政府采购、社会保障、公债、财政投融资、公有企业、国际财政等。', 'cj', '50', '60', '55', 'courses/2020/11/zgsgl_mUrz6d2.jpg', '50', '历史', '2020-11-17 14:55:00.000000', '历史', '刻苦学习', '1', '努力，成为一名优秀的人才', '2', '2');
INSERT INTO `course` VALUES ('5', 'Course Descriptions', '一般说来一个完整的Course Description可分为三部bai分：名称、学时和大纲，具体格式如下： Course Descriptions', 'The aim of this course is to develop the preliminary writing ability of students, which includes the writing of synopsises, summaries, essays, and simple practical writings. （此处翻译二楼。其实简介写清楚这门课是干什么的、有什么目的就够了；如果想写得长一点，可以写具体的课程安排，举例见下）', 'gj', '50', '42', '20', 'courses/2020/11/yu_w1pu1I0.jpg', '22', '外语，表达力', '2020-11-17 14:57:00.000000', '外语', '刻苦学习，学习外语高级', '1', '努力，成为一名世界翻译官', '3', '3');
INSERT INTO `course` VALUES ('6', 'python', '是一门面向对象编程语言', 'Python是一种代表简单主义思想的语言。阅读一个良好的Python程序就感觉像是在读英语一样，尽管这个英语的要求非常严格！Python的这种伪代码本质是它最大的优点之一。它使你能够专注于解决问题而不是去搞明白语言本身。', 'zj', '45', '30', '0', 'courses/2020/11/python.jpg', '0', 'python', '2020-11-17 17:33:00.000000', '技能', '刻苦学习', '1', '努力，成为一名优秀的人才', '2', '2');
INSERT INTO `course` VALUES ('7', 'python', 'python是一门面向对象编程语言', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; letter-spacing: 0.2px; orphans: 3; widows: 3; background-color: rgb(255, 255, 255);\">Python是一种代表简单主义思想的语言。阅读一个良好的Python程序就感觉像是在读英语一样，尽管这个英语的要求非常严格！Python的这种伪代码本质是它最大的优点之一。它使你能够专注于解决问题而不是去搞明白语言本身。</span></p>', 'zj', '50', '40', '0', 'courses/2020/11/python_aBMsyib.jpg', '0', 'python', '2020-11-17 17:51:00.000000', '技能', '刻苦学习', '1', '努力，成为一名优秀的人才', '2', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of coursecomments
-- ----------------------------
INSERT INTO `coursecomments` VALUES ('1', '很好', '2020-11-17 18:06:14.024898', '3', '2');

-- ----------------------------
-- Table structure for courseorg
-- ----------------------------
DROP TABLE IF EXISTS `courseorg`;
CREATE TABLE `courseorg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `students` int NOT NULL,
  `course_nums` int NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `tag` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `city_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courseorg_city_id_e58fd2c3_fk_citydict_id` (`city_id`),
  CONSTRAINT `courseorg_city_id_e58fd2c3_fk_citydict_id` FOREIGN KEY (`city_id`) REFERENCES `citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courseorg
-- ----------------------------
INSERT INTO `courseorg` VALUES ('1', '中国乒乓球协会', '乒乓球运动的特点是球小、速度快、变化多、器材设备比较简单、在室内外都可以进行。该课程具有完善的理论和技术教学体系：现代乒乓球运动的发展趋势、乒乓球运动的规则与裁判方法、乒乓球技战术理论知识讲解、体育运动与健康知识讲座是该课程的理论讲授的重点；反手推挡与拨球技术、正手攻球技术、正反手移动击球技术、正反手发球技术、实战比赛则是该课程的技术教学重点', 'pxjg', '213', '101', '200', '50', 'org/202011/ppq_caBzBhw.png', '北京', '全国知名', '2020-11-17 15:00:00.000000', '1');
INSERT INTO `courseorg` VALUES ('2', '中国财政史', '中国奴隶社会的国家财政du、春秋战国时期、秦汉时期、魏晋南北朝时zhi期、两宋时dao期、辽、金、元三朝、明朝、清前期、清后期、北洋政府时期、南京国民政府初期、国民政府抗战时期等各个历史时期的财政情况。', 'gx', '301', '200', '500', '5', 'org/202011/jg_rcsdxKj.jpg', '上海', '全国知名', '2020-11-17 15:03:00.000000', '2');
INSERT INTO `courseorg` VALUES ('3', '启迪英语教育', '因为能够脱产学习英语的人不多，所以提供这个培训课程的机构也会少一些。但如自由职业者、退休人士或者家庭主妇还是有脱产学习的条件和需求的，那我就重点阐述一下。因为学习人数很少，小规模的机构没办法开课，因此开设有全日制成人英语培训班课的都是大规模的机构，例如英语、英孚成人、美联英语等。这几家英语培训机构学员很多，方便组班，而且早9点至晚9点都有课，订课很便利，能够很好地确保学习效果。', 'gr', '101', '50', '60', '40', 'org/202011/yujg.jpg', '北京', '全国知名', '2020-11-17 15:10:00.000000', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of courseresource
-- ----------------------------
INSERT INTO `courseresource` VALUES ('1', '财政', 'course/resource/2020/11/czs.txt', '2020-11-17 15:18:00.000000', '3');
INSERT INTO `courseresource` VALUES ('2', 'python', 'course/resource/2020/11/czs_aNsVrMN.txt', '2020-11-17 17:33:00.000000', '6');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('12', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('28', 'course', 'bannercourse');
INSERT INTO `django_content_type` VALUES ('16', 'course', 'course');
INSERT INTO `django_content_type` VALUES ('19', 'course', 'courseresource');
INSERT INTO `django_content_type` VALUES ('17', 'course', 'lesson');
INSERT INTO `django_content_type` VALUES ('18', 'course', 'video');
INSERT INTO `django_content_type` VALUES ('23', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('24', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('25', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('26', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('27', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('20', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('21', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('22', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('10', 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES ('11', 'reversion', 'version');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('13', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('14', 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES ('15', 'users', 'userprofile');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2020-11-17 11:35:23.333434');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2020-11-17 11:35:23.461120');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-11-17 11:35:23.574826');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2020-11-17 11:35:23.945797');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2020-11-17 11:35:23.955807');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2020-11-17 11:35:23.963779');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2020-11-17 11:35:23.972726');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2020-11-17 11:35:23.976714');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2020-11-17 11:35:23.985724');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2020-11-17 11:35:23.993711');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2020-11-17 11:35:24.002684');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2020-11-17 11:35:24.027579');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2020-11-17 11:35:24.038590');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2020-11-17 11:35:24.245998');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2020-11-17 11:35:24.665912');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2020-11-17 11:35:24.825447');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2020-11-17 11:35:24.837415');
INSERT INTO `django_migrations` VALUES ('18', 'captcha', '0001_initial', '2020-11-17 11:35:24.934157');
INSERT INTO `django_migrations` VALUES ('19', 'organization', '0001_initial', '2020-11-17 11:35:25.059820');
INSERT INTO `django_migrations` VALUES ('20', 'course', '0001_initial', '2020-11-17 11:35:25.503638');
INSERT INTO `django_migrations` VALUES ('21', 'operation', '0001_initial', '2020-11-17 11:35:26.097047');
INSERT INTO `django_migrations` VALUES ('22', 'operation', '0002_auto_20201117_1135', '2020-11-17 11:35:26.251635');
INSERT INTO `django_migrations` VALUES ('23', 'reversion', '0001_squashed_0004_auto_20160611_1202', '2020-11-17 11:35:26.792218');
INSERT INTO `django_migrations` VALUES ('24', 'sessions', '0001_initial', '2020-11-17 11:35:27.126339');
INSERT INTO `django_migrations` VALUES ('25', 'xadmin', '0001_initial', '2020-11-17 11:35:27.344712');
INSERT INTO `django_migrations` VALUES ('26', 'xadmin', '0002_log', '2020-11-17 11:35:27.702760');
INSERT INTO `django_migrations` VALUES ('27', 'xadmin', '0003_auto_20160715_0100', '2020-11-17 11:35:28.137632');
INSERT INTO `django_migrations` VALUES ('28', 'course', '0002_bannercourse', '2020-11-17 17:32:40.710825');

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
INSERT INTO `django_session` VALUES ('5m79dz3v64xjrbkzg4w84wbv56l5lq23', 'ZGRjMGY3YmYxMjc5MDE2MzM2YTk0YzI3MWI2ZmQ3MGE1YjJiOGYxNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImI5OWE2YzQ3MmMzOGFhMWRjYTg0N2Y1ODY3NTNiOTA4YzY0NWZjMTQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2UiLCJiYW5uZXJjb3Vyc2UiXSwiIl19', '2020-12-01 19:01:50.587374');
INSERT INTO `django_session` VALUES ('8vjuhwdykrspwy7y26aocgxlxg9g707u', 'NjgzZjVjZmZmMDY4OTA4M2U4MTAyMDBmZDczZTFmMjc1ZTJkMWE2ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1ZmI4OWIyYzBjOTFiODY0YTVkYTZmNDUzNjYyNTgxOThlMWVjOGIiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==', '2020-12-01 11:37:01.184582');
INSERT INTO `django_session` VALUES ('avum5pkcrbufemix50rqrvwsvwefkuxz', 'MGIxNjMyNDRjYjI3YzQ2ODkyNDQ3NmMxNmY1MjcxMTI2YTUyZjk3Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjY1ZmI4OWIyYzBjOTFiODY0YTVkYTZmNDUzNjYyNTgxOThlMWVjOGIiLCJMSVNUX1FVRVJZIjpbWyJvcGVyYXRpb24iLCJ1c2VybWVzc2FnZSJdLCIiXX0=', '2020-12-01 15:52:59.743288');

-- ----------------------------
-- Table structure for emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `emailverifyrecord`;
CREATE TABLE `emailverifyrecord` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `send_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `send_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of emailverifyrecord
-- ----------------------------
INSERT INTO `emailverifyrecord` VALUES ('1', 'r3lzvPAXAJ2ckuG0', '1935337186@qq.com', 'register', '2020-11-17 11:38:37.700027');
INSERT INTO `emailverifyrecord` VALUES ('2', '1JjewWCZzVUPjNhM', '551171359@qq.com', 'register', '2020-11-17 15:44:13.681898');

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
INSERT INTO `lesson` VALUES ('1', '经济管理', '2020-11-17 14:59:00.000000', '2');
INSERT INTO `lesson` VALUES ('2', '历史探秘', '2020-11-17 14:59:00.000000', '3');
INSERT INTO `lesson` VALUES ('3', 'python基础', '2020-11-17 17:33:00.000000', '6');

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
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `take_office` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `teacher_age` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_org_id_0131c96e_fk_courseorg_id` (`org_id`),
  CONSTRAINT `teacher_org_id_0131c96e_fk_courseorg_id` FOREIGN KEY (`org_id`) REFERENCES `courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '刘国梁', '20', '中国乒乓球协会', '主席', '培养人才', '105', '100', 'teacher/2020/11/lgl_8HwyEj6.jpg', '乒乓球选拔', '50', '2020-11-17 15:04:00.000000', '1');
INSERT INTO `teacher` VALUES ('2', '刘守刚', '20', '财政史', '一级讲师', '培养人才', '100', '100', 'teacher/2020/11/lsg.jpg', '财政教学', '30', '2020-11-17 15:06:00.000000', '2');
INSERT INTO `teacher` VALUES ('3', '李玉超', '10', '启迪英语教育', '一级讲师', '一流的外语', '50', '50', 'teacher/2020/11/lyc.png', '英语语法', '25', '2020-11-17 15:14:00.000000', '3');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userask
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of usercourse
-- ----------------------------
INSERT INTO `usercourse` VALUES ('1', '2020-11-17 17:14:08.241533', '5', '2');
INSERT INTO `usercourse` VALUES ('2', '2020-11-17 18:06:02.188995', '3', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userfavorite
-- ----------------------------
INSERT INTO `userfavorite` VALUES ('2', '1', '1', '2020-11-17 17:13:50.252582', '2');
INSERT INTO `userfavorite` VALUES ('3', '1', '2', '2020-11-17 17:14:32.700648', '2');
INSERT INTO `userfavorite` VALUES ('4', '3', '1', '2020-11-17 18:06:00.032990', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of usermessage
-- ----------------------------
INSERT INTO `usermessage` VALUES ('1', '2', '加油  努力', '1', '2020-11-17 18:03:00.000000');

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
  `address` longtext COLLATE utf8mb4_general_ci,
  `mobile` varchar(11) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userprofile
-- ----------------------------
INSERT INTO `userprofile` VALUES ('1', 'pbkdf2_sha256$150000$ujlBHzVmJaGI$L+unlHDo6fOE4rdGVwp2P10iTzuqCsiPfO7YfimN3/8=', '2020-11-17 17:17:35.008274', '1', 'xadmin', '', '', 'xadmin@163.com', '1', '1', '2020-11-17 11:36:26.290595', '', null, 'male', null, null, 'image/default.png');
INSERT INTO `userprofile` VALUES ('2', 'pbkdf2_sha256$150000$35pDa97KQgXa$80mUBwt1/kuntsS9I1v5YjOVeU7gxDqkZdfyPi+4DBE=', '2020-11-17 18:02:02.768006', '1', 'hanjiapeng', '', '', '1935337186@qq.com', '1', '1', '2020-11-17 11:38:00.000000', '欠你一个天下', '1999-08-05', 'male', '北京房山', null, 'image/202011/head_portrait_hxwx36c.png');
INSERT INTO `userprofile` VALUES ('3', 'pbkdf2_sha256$150000$Ew0yyugaE4CC$T962YwZtne+hAqhvLOX1jl538Zyjwz9ifj9z55v/3H0=', '2020-11-17 15:44:33.727983', '0', '551171359@qq.com', '', '', '551171359@qq.com', '0', '1', '2020-11-17 15:44:13.553241', '', null, 'male', null, null, 'image/default.png');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `learn_times` int NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `video_lesson_id_43319a4d_fk_lesson_id` (`lesson_id`),
  CONSTRAINT `video_lesson_id_43319a4d_fk_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '经济管理', 'https://v.qq.com/x/page/i0797fod8a4.html', '20', '2020-11-17 15:18:00.000000', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2020-11-17 14:32:51.053218', '127.0.0.1', '2', 'hanjiapeng', 'change', '修改 last_login，is_superuser 和 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2020-11-17 14:39:21.818577', '127.0.0.1', '2', 'hanjiapeng', 'change', '修改 last_login 和 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2020-11-17 14:49:43.249595', '127.0.0.1', '1', '乒乓球', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2020-11-17 14:53:41.808565', '127.0.0.1', '2', '公共部门经济学', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2020-11-17 14:55:31.350130', '127.0.0.1', '3', '中国财政史', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2020-11-17 14:56:54.997212', '127.0.0.1', '4', '外国财政制度与管理', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2020-11-17 14:59:16.931396', '127.0.0.1', '5', 'Course Descriptions', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2020-11-17 14:59:52.449460', '127.0.0.1', '1', '《公共部门经济学课程的章节》>> 经济管理', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2020-11-17 15:00:06.317713', '127.0.0.1', '2', '《中国财政史课程的章节》>> 历史探秘', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2020-11-17 15:00:23.003670', '127.0.0.1', '1', '北京', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2020-11-17 15:00:35.523725', '127.0.0.1', '2', '上海', 'create', '已添加。', '20', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2020-11-17 15:03:44.599381', '127.0.0.1', '1', '中国乒乓球协会', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2020-11-17 15:04:44.179629', '127.0.0.1', '2', '中国财政史', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2020-11-17 15:06:33.658938', '127.0.0.1', '1', '[中国乒乓球协会]的教师: 刘国梁', 'create', '已添加。', '22', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2020-11-17 15:08:47.503331', '127.0.0.1', '2', '[中国财政史]的教师: 刘守刚', 'create', '已添加。', '22', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2020-11-17 15:09:44.912933', '127.0.0.1', '1', '乒乓球', 'change', '修改 image，course_org 和 teacher', '16', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2020-11-17 15:10:07.480446', '127.0.0.1', '2', '公共部门经济学', 'change', '修改 image，course_org 和 teacher', '16', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2020-11-17 15:10:19.818788', '127.0.0.1', '3', '中国财政史', 'change', '修改 image，course_org 和 teacher', '16', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2020-11-17 15:14:15.503750', '127.0.0.1', '3', '启迪英语教育', 'create', '已添加。', '21', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2020-11-17 15:17:15.922407', '127.0.0.1', '3', '[启迪英语教育]的教师: 李玉超', 'create', '已添加。', '22', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2020-11-17 15:17:39.057190', '127.0.0.1', '4', '外国财政制度与管理', 'change', '修改 image，course_org 和 teacher', '16', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2020-11-17 15:17:55.210078', '127.0.0.1', '5', 'Course Descriptions', 'change', '修改 image，course_org 和 teacher', '16', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2020-11-17 15:18:45.484014', '127.0.0.1', '1', '经济管理', 'create', '已添加。', '18', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2020-11-17 15:21:21.825178', '127.0.0.1', '1', 'CourseResource object (1)', 'create', '已添加。', '19', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2020-11-17 15:24:00.841564', '127.0.0.1', '1', 'Banner object (1)', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2020-11-17 17:37:18.934783', '127.0.0.1', '6', 'python', 'create', '已添加。', '16', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2020-11-17 17:59:43.098607', '127.0.0.1', '2', 'hanjiapeng', 'change', '修改 last_login 和 image', '15', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2020-11-17 18:03:51.573085', '127.0.0.1', '1', 'UserMessage object (1)', 'create', '已添加。', '27', '2');
INSERT INTO `xadmin_log` VALUES ('29', '2020-11-17 18:04:10.210977', '127.0.0.1', '1', 'UserMessage object (1)', 'change', '没有字段被修改。', '27', '2');
INSERT INTO `xadmin_log` VALUES ('30', '2020-11-17 18:04:59.205798', '127.0.0.1', '1', 'UserMessage object (1)', 'change', '修改 user', '27', '2');
INSERT INTO `xadmin_log` VALUES ('31', '2020-11-17 18:05:44.579020', '127.0.0.1', '1', 'UserMessage object (1)', 'change', '修改 user', '27', '2');

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
INSERT INTO `xadmin_usersettings` VALUES ('2', 'course_course_editform_portal', ',lesson_set-group,courseresource_set-group', '1');
INSERT INTO `xadmin_usersettings` VALUES ('3', 'dashboard:home:pos', '', '2');

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
