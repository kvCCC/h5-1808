/*
Navicat MySQL Data Transfer

Source Server         : jiawei
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-27 09:41:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` varchar(255) NOT NULL,
  `Sname` varchar(255) DEFAULT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `jianshu` varchar(255) DEFAULT NULL,
  `curprice` varchar(255) DEFAULT NULL,
  `oldprice` varchar(255) DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  `zheshu` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for details
-- ----------------------------
DROP TABLE IF EXISTS `details`;
CREATE TABLE `details` (
  `id` varchar(255) NOT NULL,
  `imgsrc` varchar(255) DEFAULT NULL,
  `Sname` varchar(255) DEFAULT NULL,
  `jianshu` varchar(255) DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  `curprice` varchar(255) DEFAULT NULL,
  `oldprice` varchar(255) DEFAULT NULL,
  `zheshu` varchar(255) DEFAULT NULL,
  `timer` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of details
-- ----------------------------
INSERT INTO `details` VALUES ('001', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin3.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '28', '428', '4.9', '2017-10-10');
INSERT INTO `details` VALUES ('002', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin4.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '29', '429', '3.7', '2018-10-10');
INSERT INTO `details` VALUES ('003', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin5.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '30', '430', '2.4', '2018-10-02');
INSERT INTO `details` VALUES ('004', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin6.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '31', '431', '1.8', '2018-09-27');
INSERT INTO `details` VALUES ('005', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin7.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '32', '432', '3.5', '2018-09-26');
INSERT INTO `details` VALUES ('006', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin8.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '33', '433', '2.5', '2018-09-25');
INSERT INTO `details` VALUES ('007', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin9.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '34', '434', '3.8', '2018-10-01');
INSERT INTO `details` VALUES ('008', '../images/shangpin1.jpg&../images/shangpin2.jpg&../images/shangpin10.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '35', '435', '7.5', '2018-10-01');
INSERT INTO `details` VALUES ('009', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin10.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '36', '436', '2.6', '2018-10-01');
INSERT INTO `details` VALUES ('010', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin9.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '37', '437', '2.8', '2018-10-01');
INSERT INTO `details` VALUES ('011', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '38', '438', '3.4', '2018-10-01');
INSERT INTO `details` VALUES ('012', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin3.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '39', '439', '2.1', '2018-10-01');
INSERT INTO `details` VALUES ('013', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin4.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '40', '440', '3.5', '2018-09-25');
INSERT INTO `details` VALUES ('014', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin5.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '41', '441', '3.3', '2018-09-25');
INSERT INTO `details` VALUES ('015', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin6.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '42', '442', '3.4', '2018-09-25');
INSERT INTO `details` VALUES ('016', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin7.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '43', '443', '3.8', '2018-10-10');
INSERT INTO `details` VALUES ('017', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin8.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '44', '444', '1.9', '2018-10-10');
INSERT INTO `details` VALUES ('018', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin9.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '45', '445', '2.2', '2018-10-10');
INSERT INTO `details` VALUES ('019', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin10.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '46', '446', '3.4', '2018-10-10');
INSERT INTO `details` VALUES ('020', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '47', '447', '7.2', '2018-10-10');
INSERT INTO `details` VALUES ('021', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '48', '448', '3.3', '2018-10-10');
INSERT INTO `details` VALUES ('022', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin3.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '49', '449', '4.5', '2018-10-10');
INSERT INTO `details` VALUES ('023', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin4.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '50', '450', '5.6', '2018-10-10');
INSERT INTO `details` VALUES ('024', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin5.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '51', '451', '3.1', '2018-10-10');
INSERT INTO `details` VALUES ('025', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin6.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '52', '452', '1.6', '2018-10-10');
INSERT INTO `details` VALUES ('026', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin7.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '53', '453', '2.6', '2018-10-10');
INSERT INTO `details` VALUES ('027', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin8.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '54', '454', '1.3', '2018-10-10');
INSERT INTO `details` VALUES ('028', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin9.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '55', '455', '3.4', '2017-10-10');
INSERT INTO `details` VALUES ('029', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin10.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '56', '456', '5.5', '2018-10-10');
INSERT INTO `details` VALUES ('030', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '57', '457', '4.7', '2018-10-02');
INSERT INTO `details` VALUES ('031', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '58', '458', '4.9', '2018-09-27');
INSERT INTO `details` VALUES ('032', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin3.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '59', '459', '3.7', '2018-09-26');
INSERT INTO `details` VALUES ('033', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin4.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '60', '460', '2.4', '2018-09-25');
INSERT INTO `details` VALUES ('034', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin5.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '61', '461', '1.8', '2018-10-01');
INSERT INTO `details` VALUES ('035', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin6.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '62', '462', '3.5', '2018-10-01');
INSERT INTO `details` VALUES ('036', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin7.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '63', '463', '2.5', '2018-10-01');
INSERT INTO `details` VALUES ('037', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin8.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '64', '464', '3.8', '2018-10-01');
INSERT INTO `details` VALUES ('038', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin9.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '65', '465', '7.5', '2018-10-01');
INSERT INTO `details` VALUES ('039', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin3.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '66', '466', '2.6', '2018-10-01');
INSERT INTO `details` VALUES ('040', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin4.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '67', '467', '2.8', '2018-09-25');
INSERT INTO `details` VALUES ('041', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin5.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '68', '468', '3.4', '2018-09-25');
INSERT INTO `details` VALUES ('042', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin6.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '69', '469', '2.1', '2018-09-25');
INSERT INTO `details` VALUES ('043', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin7.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '70', '470', '3.5', '2018-10-10');
INSERT INTO `details` VALUES ('044', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin8.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '71', '471', '3.3', '2018-10-10');
INSERT INTO `details` VALUES ('045', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin9.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '72', '472', '3.4', '2018-10-10');
INSERT INTO `details` VALUES ('046', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin10.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '73', '473', '3.8', '2018-10-10');
INSERT INTO `details` VALUES ('047', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '74', '474', '1.9', '2017-10-10');
INSERT INTO `details` VALUES ('048', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '75', '475', '2.2', '2018-10-10');
INSERT INTO `details` VALUES ('049', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '76', '476', '3.4', '2018-10-02');
INSERT INTO `details` VALUES ('050', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '77', '477', '7.2', '2018-09-27');
INSERT INTO `details` VALUES ('051', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '78', '478', '3.3', '2018-09-26');
INSERT INTO `details` VALUES ('052', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '79', '479', '4.5', '2018-09-25');
INSERT INTO `details` VALUES ('053', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '80', '480', '5.6', '2018-10-01');
INSERT INTO `details` VALUES ('054', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '81', '481', '3.1', '2018-10-01');
INSERT INTO `details` VALUES ('055', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '82', '482', '1.6', '2018-10-01');
INSERT INTO `details` VALUES ('056', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '83', '483', '2.6', '2018-10-01');
INSERT INTO `details` VALUES ('057', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '84', '484', '1.3', '2018-10-01');
INSERT INTO `details` VALUES ('058', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '85', '485', '3.4', '2018-10-01');
INSERT INTO `details` VALUES ('059', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '86', '486', '5.5', '2018-09-25');
INSERT INTO `details` VALUES ('060', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '87', '487', '4.7', '2018-09-25');
INSERT INTO `details` VALUES ('061', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '88', '488', '4.9', '2018-09-25');
INSERT INTO `details` VALUES ('062', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '89', '489', '3.7', '2018-10-10');
INSERT INTO `details` VALUES ('063', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '90', '490', '2.4', '2018-10-10');
INSERT INTO `details` VALUES ('064', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '91', '491', '1.8', '2018-10-10');
INSERT INTO `details` VALUES ('065', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '92', '492', '3.5', '2018-10-10');
INSERT INTO `details` VALUES ('066', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin3.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '93', '493', '2.5', '2018-10-10');
INSERT INTO `details` VALUES ('067', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin4.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '94', '494', '3.8', '2018-10-10');
INSERT INTO `details` VALUES ('068', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin5.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '95', '495', '7.5', '2018-10-10');
INSERT INTO `details` VALUES ('069', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin6.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '96', '496', '2.6', '2018-10-10');
INSERT INTO `details` VALUES ('070', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin7.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '97', '497', '2.8', '2017-10-10');
INSERT INTO `details` VALUES ('071', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin8.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '98', '498', '3.4', '2018-10-10');
INSERT INTO `details` VALUES ('072', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg&../images/shangpin9.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '99', '499', '2.1', '2018-10-02');
INSERT INTO `details` VALUES ('073', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin1.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '999', '500', '3.5', '2018-09-27');
INSERT INTO `details` VALUES ('074', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin2.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '999', '501', '3.3', '2018-09-26');
INSERT INTO `details` VALUES ('075', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin3.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '999', '502', '3.4', '2018-09-25');
INSERT INTO `details` VALUES ('076', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin4.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '99', '503', '3.8', '2018-10-01');
INSERT INTO `details` VALUES ('077', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin5.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '999', '504', '1.9', '2018-10-01');
INSERT INTO `details` VALUES ('078', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin6.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '999', '505', '2.2', '2018-10-01');
INSERT INTO `details` VALUES ('079', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin7.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '999', '506', '3.4', '2018-10-01');
INSERT INTO `details` VALUES ('080', '../images/shangpin9.jpg&../images/shangpin2.jpg&../images/shangpin8.jpg', 'SK-II 紧肤抗皱修复系列 肌源修护润致精华霜    ', 'Lancome (兰蔻) ', 'Lancome (兰蔻) 精华眼膜霜是针对易出现老化疲惫征兆的细致眼周肌肤，改善眼部肌底和眼周肌肤状况，日复一日，明晰动人的双眸，明亮新生。', '999', '507', '7.2', '2018-10-01');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `img` varchar(255) CHARACTER SET latin1 NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` varchar(255) CHARACTER SET latin1 NOT NULL,
  `savemoney` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '2011-12-10 08:00:00', 'images/goods.png', 'up down open sfrda efjds dfh dfh oitye...', '144', '30');
INSERT INTO `list` VALUES ('2', '2011-12-13 08:55:45', 'images/good3.png', 'up down open sfrda efjds dfh dfh oitye...', '164', '30');
INSERT INTO `list` VALUES ('3', '2000-8-10 08:00:00', 'images/goods.png', 'up  down open sfrda efjds dfh dfh oitye...', '134', '30');
INSERT INTO `list` VALUES ('4', '2013-8-10 08:00:00', 'images/good3.png', 'up  down open sfrda efjds dfh dfh oitye...', '154', '30');
INSERT INTO `list` VALUES ('5', '2014-8-10 08:00:00', 'images/goods.png', 'up  down open sfrda efjds dfh dfh oitye...', '126', '30');
INSERT INTO `list` VALUES ('6', '2015-8-10 08:00:00', 'images/good3.png', 'up  down open sfrda efjds dfh dfh oitye...', '535', '30');
INSERT INTO `list` VALUES ('7', '2111-8-10 08:00:00', 'images/goods.png', 'up  down open sfrda efjds dfh dfh oitye...', '167', '30');
INSERT INTO `list` VALUES ('8', '2017-8-10 08:00:00', 'images/good3.png', 'up down open sfrda efjds dfh dfh oitye...', '333', '30');
INSERT INTO `list` VALUES ('9', '2018-8-10 08:00:00', 'images/goods.png', 'up  down open sfrda efjds dfh dfh oitye...', '775', '30');
INSERT INTO `list` VALUES ('10', '2019-8-10 08:00:00', 'images/good3.png', 'up  down open sfrda efjds dfh dfh oitye...', '475', '30');
INSERT INTO `list` VALUES ('11', '2020-8-10 08:00:00', 'images/goods.png', 'up  down open sfrda efjds dfh dfh oitye...', '555', '30');
INSERT INTO `list` VALUES ('12', '2000-1-10 08:00:00', 'images/good3.png', 'up  down open sfrda efjds dfh dfh oitye...', '666', '30');
INSERT INTO `list` VALUES ('13', '2022-8-10 08:00:00', 'images/goods.png', 'up down open sfrda efjds dfh dfh oitye...', '886', '30');
INSERT INTO `list` VALUES ('14', '2023-8-10 08:00:00', 'images/good3.png', 'up  down open sfrda efjds dfh dfh oitye...', '543', '30');
INSERT INTO `list` VALUES ('15', '2008-8-15 08:00:00', 'images/goods.png', 'up & down open sfrda efjds dfh dfh oitye...', '122', '30');
INSERT INTO `list` VALUES ('16', '1999-8-10 08:00:00', 'images/good3.png', 'up & down open sfrda efjds dfh dfh oitye...', '560', '30');
INSERT INTO `list` VALUES ('17', '2006-2-10 08:00:00', 'images/goods.png', 'up & down open sfrda efjds dfh dfh oitye...', '987', '30');
INSERT INTO `list` VALUES ('18', '2003-10-10 08:00:00', 'images/good3.png', 'up & down open sfrda efjds dfh dfh oitye...', '888', '30');

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `mima` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('qwer123', 'qwer123');
INSERT INTO `sign` VALUES ('陈同学', '123456');
INSERT INTO `sign` VALUES ('77777777', '123456');
INSERT INTO `sign` VALUES ('陈同学嗯', '123456');
INSERT INTO `sign` VALUES ('李军政', '13534955141');
INSERT INTO `sign` VALUES ('啊啊啊啊啊啊啊', '123456');
INSERT INTO `sign` VALUES ('我啊你', '123456');
INSERT INTO `sign` VALUES ('陈同学啊啊', '13534955141');
INSERT INTO `sign` VALUES ('qqqqqqqqqqqq', 'qqqqqqq');
INSERT INTO `sign` VALUES ('ssssssssssss', 'ssssssss');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `stuname` varchar(255) NOT NULL DEFAULT '',
  `team` int(6) NOT NULL,
  `gender` varchar(20) NOT NULL DEFAULT '',
  `settime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('8', 'lemon', '4', '女', '2018-10-08 20:27:51');
INSERT INTO `student` VALUES ('2', '小圆', '2', '女', '2018-10-08 17:28:12');
INSERT INTO `student` VALUES ('3', '小悦', '3', '男', '2018-10-08 17:28:21');
INSERT INTO `student` VALUES ('4', '捞B', '1', '男', '2018-10-08 18:26:04');
INSERT INTO `student` VALUES ('5', '小欧', '2', '女', '2018-10-08 17:28:45');
INSERT INTO `student` VALUES ('6', '小飞', '2', '女', '2018-10-08 17:28:57');
INSERT INTO `student` VALUES ('7', '欧飞悦', '2', '女', '2018-10-08 17:33:22');
SET FOREIGN_KEY_CHECKS=1;
