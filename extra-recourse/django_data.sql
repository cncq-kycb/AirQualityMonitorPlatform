/*
 Navicat Premium Data Transfer

 Source Server         : fvck
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : django_data

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 15/04/2020 20:09:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for WeatherSystem_airquality
-- ----------------------------
DROP TABLE IF EXISTS `WeatherSystem_airquality`;
CREATE TABLE `WeatherSystem_airquality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(20) NOT NULL,
  `aqi` int(11) NOT NULL,
  `pm25` int(11) NOT NULL,
  `pm10` int(11) NOT NULL,
  `co` double NOT NULL,
  `no2` int(11) NOT NULL,
  `o3` int(11) NOT NULL,
  `so2` int(11) NOT NULL,
  `record_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `WeatherSystem_airquality_city_name_7394b9ed` (`city_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1652 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of WeatherSystem_airquality
-- ----------------------------
BEGIN;
INSERT INTO `WeatherSystem_airquality` VALUES (1574, '北京', 104, 77, 97, 0.5, 33, 81, 8, '2020-04-15 19:55:57.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1575, '长春', 484, 764, 102, 2.8, 133, 97, 32, '2020-04-15 19:55:58.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1576, '长沙', 48, 28, 52, 0.8, 25, 87, 16, '2020-04-15 19:55:58.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1577, '重庆', 49, 35, 51, 0.7, 44, 80, 11, '2020-04-15 19:55:58.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1578, '贵阳', 53, 28, 55, 0.6, 14, 96, 10, '2020-04-15 19:55:58.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1579, '哈尔滨', 52, 16, 74, 0.4, 16, 94, 11, '2020-04-15 19:55:58.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1580, '海口', 43, 18, 38, 0.4, 10, 107, 4, '2020-04-15 19:55:58.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1581, '合肥', 46, 31, 61, 0.5, 39, 74, 9, '2020-04-15 19:55:58.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1582, '呼和浩特', 84, 25, 146, 0.5, 8, 85, 6, '2020-04-15 19:55:59.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1583, '济南', 69, 39, 66, 0.6, 17, 164, 10, '2020-04-15 19:55:59.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1584, '昆明', 45, 29, 61, 0.8, 23, 88, 12, '2020-04-15 19:55:59.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1585, '兰州', 120, 41, 171, 1.3, 41, 106, 34, '2020-04-15 19:55:59.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1586, '南京', 53, 26, 66, 0.7, 26, 114, 16, '2020-04-15 19:55:59.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1587, '南宁', 75, 51, 91, 0.6, 28, 114, 21, '2020-04-15 19:55:59.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1588, '盘锦', 87, 62, 84, 0.7, 21, 180, 12, '2020-04-15 19:55:59.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1589, '上海', 51, 55, 39, 0.6, 41, 97, 7, '2020-04-15 19:56:00.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1590, '沈阳', 84, 54, 86, 0.5, 20, 171, 10, '2020-04-15 19:56:00.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1591, '石家庄', 99, 83, 123, 1, 48, 90, 23, '2020-04-15 19:56:00.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1592, '太原', 129, 91, 168, 1.1, 48, 93, 24, '2020-04-15 19:56:00.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1593, '天津', 76, 53, 74, 0.6, 23, 128, 11, '2020-04-15 19:56:00.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1594, '武汉', 43, 28, 47, 0.7, 20, 110, 16, '2020-04-15 19:56:00.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1595, '乌鲁木齐', 47, 17, 43, 0.5, 18, 71, 10, '2020-04-15 19:56:00.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1596, '西安', 88, 52, 133, 0.7, 66, 44, 13, '2020-04-15 19:56:01.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1597, '西宁', 74, 38, 114, 1.2, 32, 64, 28, '2020-04-15 19:56:01.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1598, '银川', 112, 29, 168, 0.5, 12, 77, 12, '2020-04-15 19:56:01.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1599, '郑州', 63, 34, 76, 0.5, 24, 110, 12, '2020-04-15 19:56:01.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1600, '北京', 104, 77, 97, 0.5, 33, 81, 8, '2020-04-15 19:58:17.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1601, '长春', 484, 764, 102, 2.8, 133, 97, 32, '2020-04-15 19:58:18.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1602, '长沙', 48, 28, 52, 0.8, 25, 87, 16, '2020-04-15 19:58:18.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1603, '重庆', 49, 35, 51, 0.7, 44, 80, 11, '2020-04-15 19:58:18.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1604, '贵阳', 53, 28, 55, 0.6, 14, 96, 10, '2020-04-15 19:58:18.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1605, '哈尔滨', 52, 16, 74, 0.4, 16, 94, 11, '2020-04-15 19:58:18.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1606, '海口', 43, 18, 38, 0.4, 10, 107, 4, '2020-04-15 19:58:18.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1607, '合肥', 46, 31, 61, 0.5, 39, 74, 9, '2020-04-15 19:58:18.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1608, '呼和浩特', 84, 25, 146, 0.5, 8, 85, 6, '2020-04-15 19:58:19.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1609, '济南', 69, 39, 66, 0.6, 17, 164, 10, '2020-04-15 19:58:19.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1610, '昆明', 45, 29, 61, 0.8, 23, 88, 12, '2020-04-15 19:58:19.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1611, '兰州', 120, 41, 171, 1.3, 41, 106, 34, '2020-04-15 19:58:19.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1612, '南京', 53, 26, 66, 0.7, 26, 114, 16, '2020-04-15 19:58:19.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1613, '南宁', 75, 51, 91, 0.6, 28, 114, 21, '2020-04-15 19:58:19.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1614, '盘锦', 87, 62, 84, 0.7, 21, 180, 12, '2020-04-15 19:58:20.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1615, '上海', 51, 55, 39, 0.6, 41, 97, 7, '2020-04-15 19:58:20.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1616, '沈阳', 155, 108, 149, 1, 32, 157, 20, '2020-04-15 19:58:20.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1617, '石家庄', 99, 83, 123, 1, 48, 90, 23, '2020-04-15 19:58:20.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1618, '太原', 129, 91, 168, 1.1, 48, 93, 24, '2020-04-15 19:58:20.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1619, '天津', 76, 53, 74, 0.6, 23, 128, 11, '2020-04-15 19:58:20.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1620, '武汉', 52, 31, 60, 1, 38, 65, 20, '2020-04-15 19:58:20.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1621, '乌鲁木齐', 47, 17, 43, 0.5, 18, 71, 10, '2020-04-15 19:58:21.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1622, '西安', 88, 52, 133, 0.7, 66, 44, 13, '2020-04-15 19:58:21.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1623, '西宁', 74, 38, 114, 1.2, 32, 64, 28, '2020-04-15 19:58:21.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1624, '银川', 112, 29, 168, 0.5, 12, 77, 12, '2020-04-15 19:58:21.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1625, '郑州', 63, 34, 76, 0.5, 24, 110, 12, '2020-04-15 19:58:21.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1626, '北京', 104, 77, 97, 0.5, 33, 81, 8, '2020-04-15 19:58:32.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1627, '长春', 484, 764, 102, 2.8, 133, 97, 32, '2020-04-15 19:58:32.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1628, '长沙', 48, 28, 52, 0.8, 25, 87, 16, '2020-04-15 19:58:32.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1629, '重庆', 49, 35, 51, 0.7, 44, 80, 11, '2020-04-15 19:58:32.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1630, '贵阳', 53, 28, 55, 0.6, 14, 96, 10, '2020-04-15 19:58:32.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1631, '哈尔滨', 52, 16, 74, 0.4, 16, 94, 11, '2020-04-15 19:58:32.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1632, '海口', 43, 18, 38, 0.4, 10, 107, 4, '2020-04-15 19:58:32.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1633, '合肥', 46, 31, 61, 0.5, 39, 74, 9, '2020-04-15 19:58:33.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1634, '呼和浩特', 84, 25, 146, 0.5, 8, 85, 6, '2020-04-15 19:58:33.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1635, '济南', 69, 39, 66, 0.6, 17, 164, 10, '2020-04-15 19:58:33.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1636, '昆明', 45, 29, 61, 0.8, 23, 88, 12, '2020-04-15 19:58:33.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1637, '兰州', 120, 41, 171, 1.3, 41, 106, 34, '2020-04-15 19:58:33.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1638, '南京', 53, 26, 66, 0.7, 26, 114, 16, '2020-04-15 19:58:33.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1639, '南宁', 75, 51, 91, 0.6, 28, 114, 21, '2020-04-15 19:58:33.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1640, '盘锦', 87, 62, 84, 0.7, 21, 180, 12, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1641, '上海', 51, 55, 39, 0.6, 41, 97, 7, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1642, '沈阳', 155, 108, 149, 1, 32, 157, 20, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1643, '石家庄', 99, 83, 123, 1, 48, 90, 23, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1644, '太原', 129, 91, 168, 1.1, 48, 93, 24, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1645, '天津', 76, 53, 74, 0.6, 23, 128, 11, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1646, '武汉', 52, 31, 60, 1, 38, 65, 20, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1647, '乌鲁木齐', 47, 17, 43, 0.5, 18, 71, 10, '2020-04-15 19:58:34.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1648, '西安', 88, 52, 133, 0.7, 66, 44, 13, '2020-04-15 19:58:35.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1649, '西宁', 74, 38, 114, 1.2, 32, 64, 28, '2020-04-15 19:58:35.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1650, '银川', 112, 29, 168, 0.5, 12, 77, 12, '2020-04-15 19:58:35.000000');
INSERT INTO `WeatherSystem_airquality` VALUES (1651, '郑州', 63, 34, 76, 0.5, 24, 110, 12, '2020-04-15 19:58:35.000000');
COMMIT;

-- ----------------------------
-- Table structure for WeatherSystem_city
-- ----------------------------
DROP TABLE IF EXISTS `WeatherSystem_city`;
CREATE TABLE `WeatherSystem_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(20) NOT NULL,
  `city_name_eng` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_name` (`city_name`),
  UNIQUE KEY `city_name_eng` (`city_name_eng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of WeatherSystem_city
-- ----------------------------
BEGIN;
INSERT INTO `WeatherSystem_city` VALUES (1, '北京', 'beijing');
INSERT INTO `WeatherSystem_city` VALUES (2, '上海', 'shanghai');
INSERT INTO `WeatherSystem_city` VALUES (3, '天津', 'tianjin');
INSERT INTO `WeatherSystem_city` VALUES (4, '重庆', 'chongqing');
INSERT INTO `WeatherSystem_city` VALUES (5, '哈尔滨', 'haerbin');
INSERT INTO `WeatherSystem_city` VALUES (6, '长春', 'changchun');
INSERT INTO `WeatherSystem_city` VALUES (7, '沈阳', 'shenyang');
INSERT INTO `WeatherSystem_city` VALUES (8, '呼和浩特', 'huhehaote');
INSERT INTO `WeatherSystem_city` VALUES (9, '石家庄', 'shijiazhuang');
INSERT INTO `WeatherSystem_city` VALUES (10, '乌鲁木齐', 'wulumuqi');
INSERT INTO `WeatherSystem_city` VALUES (11, '兰州', 'lanzhou');
INSERT INTO `WeatherSystem_city` VALUES (12, '西宁', 'xining');
INSERT INTO `WeatherSystem_city` VALUES (13, '西安', 'xian');
INSERT INTO `WeatherSystem_city` VALUES (14, '银川', 'yinchuan');
INSERT INTO `WeatherSystem_city` VALUES (15, '郑州', 'zhengzhou');
INSERT INTO `WeatherSystem_city` VALUES (16, '济南', 'jinan');
INSERT INTO `WeatherSystem_city` VALUES (17, '太原', 'taiyuan');
INSERT INTO `WeatherSystem_city` VALUES (18, '合肥', 'hefei');
INSERT INTO `WeatherSystem_city` VALUES (19, '武汉', 'wuhan');
INSERT INTO `WeatherSystem_city` VALUES (20, '长沙', 'changsha');
INSERT INTO `WeatherSystem_city` VALUES (21, '南京', 'nanjing');
INSERT INTO `WeatherSystem_city` VALUES (22, '海口', 'haikou');
INSERT INTO `WeatherSystem_city` VALUES (23, '贵阳', 'guiyang');
INSERT INTO `WeatherSystem_city` VALUES (24, '昆明', 'kunming');
INSERT INTO `WeatherSystem_city` VALUES (25, '南宁', 'nanning');
INSERT INTO `WeatherSystem_city` VALUES (26, '盘锦', 'panjin');
COMMIT;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
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
INSERT INTO `auth_permission` VALUES (25, 'Can add city', 7, 'add_city');
INSERT INTO `auth_permission` VALUES (26, 'Can change city', 7, 'change_city');
INSERT INTO `auth_permission` VALUES (27, 'Can delete city', 7, 'delete_city');
INSERT INTO `auth_permission` VALUES (28, 'Can view city', 7, 'view_city');
INSERT INTO `auth_permission` VALUES (29, 'Can add air quality', 8, 'add_airquality');
INSERT INTO `auth_permission` VALUES (30, 'Can change air quality', 8, 'change_airquality');
INSERT INTO `auth_permission` VALUES (31, 'Can delete air quality', 8, 'delete_airquality');
INSERT INTO `auth_permission` VALUES (32, 'Can view air quality', 8, 'view_airquality');
INSERT INTO `auth_permission` VALUES (33, 'Can add main pollutant', 9, 'add_mainpollutant');
INSERT INTO `auth_permission` VALUES (34, 'Can change main pollutant', 9, 'change_mainpollutant');
INSERT INTO `auth_permission` VALUES (35, 'Can delete main pollutant', 9, 'delete_mainpollutant');
INSERT INTO `auth_permission` VALUES (36, 'Can view main pollutant', 9, 'view_mainpollutant');
INSERT INTO `auth_permission` VALUES (37, 'Can add city sort', 10, 'add_citysort');
INSERT INTO `auth_permission` VALUES (38, 'Can change city sort', 10, 'change_citysort');
INSERT INTO `auth_permission` VALUES (39, 'Can delete city sort', 10, 'delete_citysort');
INSERT INTO `auth_permission` VALUES (40, 'Can view city sort', 10, 'view_citysort');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'WeatherSystem', 'airquality');
INSERT INTO `django_content_type` VALUES (7, 'WeatherSystem', 'city');
INSERT INTO `django_content_type` VALUES (10, 'WeatherSystem', 'citysort');
INSERT INTO `django_content_type` VALUES (9, 'WeatherSystem', 'mainpollutant');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- View structure for city_sort
-- ----------------------------
DROP VIEW IF EXISTS `city_sort`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `city_sort` AS select `weathersystem_airquality`.`id` AS `id`,`weathersystem_airquality`.`city_name` AS `city_name`,`weathersystem_airquality`.`aqi` AS `aqi`,`weathersystem_airquality`.`pm25` AS `pm25`,`weathersystem_airquality`.`pm10` AS `pm10`,`weathersystem_airquality`.`co` AS `co`,`weathersystem_airquality`.`no2` AS `no2`,`weathersystem_airquality`.`o3` AS `o3`,`weathersystem_airquality`.`so2` AS `so2` from `weathersystem_airquality` where (timestampdiff(SECOND,`weathersystem_airquality`.`record_date`,now()) <= (60 * 60)) order by `weathersystem_airquality`.`aqi` limit 6;

-- ----------------------------
-- View structure for recent_items
-- ----------------------------
DROP VIEW IF EXISTS `recent_items`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recent_items` AS select `weathersystem_airquality`.`city_name` AS `city_name`,`weathersystem_airquality`.`aqi` AS `aqi`,`weathersystem_airquality`.`pm25` AS `pm25`,`weathersystem_airquality`.`pm10` AS `pm10`,`weathersystem_airquality`.`co` AS `co`,`weathersystem_airquality`.`no2` AS `no2`,`weathersystem_airquality`.`o3` AS `o3`,`weathersystem_airquality`.`so2` AS `so2`,`weathersystem_airquality`.`record_date` AS `record_date`,`weathersystem_city`.`id` AS `city_id` from (`weathersystem_airquality` join `weathersystem_city`) where ((timestampdiff(SECOND,`weathersystem_airquality`.`record_date`,now()) <= (((60 * 60) * 24) * 3)) and (`weathersystem_city`.`city_name` = `weathersystem_airquality`.`city_name`));

SET FOREIGN_KEY_CHECKS = 1;
