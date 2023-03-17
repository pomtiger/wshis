/*
Navicat MySQL Data Transfer

Source Server         : 10.0.1.5
Source Server Version : 50505
Source Host           : 10.0.1.5:3306
Source Database       : p_data

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2023-03-17 11:16:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for db_login_log
-- ----------------------------
DROP TABLE IF EXISTS `db_login_log`;
CREATE TABLE `db_login_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_m_id` int(11) DEFAULT NULL COMMENT 'id สมาชิก',
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='ประวัติล๊อกอิน';

-- ----------------------------
-- Records of db_login_log
-- ----------------------------
INSERT INTO `db_login_log` VALUES ('1', '10', '2018-06-30 19:28:54');
INSERT INTO `db_login_log` VALUES ('2', '7', '2019-08-30 19:30:08');
INSERT INTO `db_login_log` VALUES ('3', '7', '2019-09-30 19:31:49');
INSERT INTO `db_login_log` VALUES ('4', '7', '2019-10-30 19:41:24');
INSERT INTO `db_login_log` VALUES ('5', '4', '2020-07-30 19:53:02');
INSERT INTO `db_login_log` VALUES ('6', '5', '2020-07-30 20:07:15');
INSERT INTO `db_login_log` VALUES ('7', '7', '2020-07-31 09:59:17');
INSERT INTO `db_login_log` VALUES ('8', '4', '2020-07-31 10:00:53');
INSERT INTO `db_login_log` VALUES ('9', '5', '2020-07-31 10:17:16');
INSERT INTO `db_login_log` VALUES ('10', '4', '2020-07-31 10:34:45');
INSERT INTO `db_login_log` VALUES ('11', '13', '2020-07-31 10:47:06');
INSERT INTO `db_login_log` VALUES ('12', '14', '2020-07-31 10:47:20');
INSERT INTO `db_login_log` VALUES ('13', '3', '2020-07-31 15:41:36');
INSERT INTO `db_login_log` VALUES ('14', '3', '2020-08-07 16:46:22');
INSERT INTO `db_login_log` VALUES ('15', '3', '2020-08-09 15:00:37');
INSERT INTO `db_login_log` VALUES ('16', '3', '2020-08-10 09:34:01');

-- ----------------------------
-- Table structure for db_member
-- ----------------------------
DROP TABLE IF EXISTS `db_member`;
CREATE TABLE `db_member` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_username` varchar(50) DEFAULT NULL,
  `m_password` varchar(50) DEFAULT NULL,
  `m_pname` varchar(10) DEFAULT NULL,
  `m_fname` varchar(100) DEFAULT NULL,
  `m_lname` varchar(100) DEFAULT NULL,
  `m_email` varchar(100) DEFAULT NULL,
  `m_address` text,
  `m_phone` varchar(15) DEFAULT NULL,
  `m_img` varchar(50) DEFAULT NULL,
  `m_level` varchar(10) DEFAULT NULL,
  `m_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_member
-- ----------------------------
INSERT INTO `db_member` VALUES ('1', 'aa1', '1234', 'นาย', 'admin1', 'adminn', 'admin1@gmail.com', '11/11 ม.1 ต.บัวเชด อ.บัวเชด จ.สุรินทร์ 32230 ', '0891110000', 'm_img170667189020200728_081508.jpg', 'ADMIN', '2020-07-28 08:18:52');
INSERT INTO `db_member` VALUES ('2', 'bbb', '1234', 'นาย', 'สุทัศ', 'ฟักทอง', 'bbb@gmail.com', '66 หมู่ 3 ต.ตาตุม อ.สังขะ จ.สุรินทร์', '0892220000', 'm_img176426238720200810_181425.png', 'ADMIN', '2020-08-10 18:20:12');
INSERT INTO `db_member` VALUES ('3', 'ccc', '1234', 'นาง', 'สิริยาภรณ์', 'มาละอินทร์', 'cccstaff1@gmail.com', '76/1 หมู่ 3 ต.ดม อ.สังขะ จ.สุรินทร์ 32150', '0893330000', 'm_img55767007720200728_172607.jpg', 'STAFF', '2020-07-28 17:27:28');
INSERT INTO `db_member` VALUES ('4', 'ddd', '1234', 'ด.ช.', 'ศุภณัฐ', 'โพธิยา', 'ddd@gmail.com', '4 หมู่ 7 ต.เทพรักษา อ.สังขะ จ.สุรินทร์ 32150', '0894440000', 'm_img158767963520200727_204732.png', 'STAFF', '2020-07-28 08:30:16');
INSERT INTO `db_member` VALUES ('5', 'eeee', '1234', 'ด.ญ.', 'เบญญาภา', 'สอนคำปน', 'eeee@hotmail.com', '149 หมู่ 4 ต.หนองหาร อ.สันทราย จ.เชียงใหม่', '0895550000', 'm_img46563957720200729_073046.png', 'STAFF', '2020-07-29 07:32:08');
INSERT INTO `db_member` VALUES ('6', 'ffff', '1234', 'นาง', 'ยุทธพงษ์', 'ยอดชมภู', 'fffff@gmail.com', '170 ม.1 ต.ดม อ.สังขะ จ.สุรินทร์ 32150', '0896660000', 'm_img161743048820200727_151015.png', 'STAFF', '2020-07-28 08:15:42');
INSERT INTO `db_member` VALUES ('7', 'iiii', '1234', 'นาง', 'ธัญวรัตน์', 'สุขประเสริฐ', 'ioiiii@gmail.com', '73 หมู่ 12 ต.ดม อ.สังขะ จ.สุรินทร์ 32150', '0897450000', 'm_img161743048820200727_151015.png', 'STAFF', '2020-07-28 08:15:42');
INSERT INTO `db_member` VALUES ('8', 'jjjj', '1234', 'น.ส.', 'วรารัตน์', 'ขยันวงษ์', 'jjjjjjjjj@gmail.com', '433/1 หมู่ 5 ต.สะเดา อ.บัวเชด จ.สุรินทร์ 32230', '0898540000', 'm_img161743048820200727_151015.png', 'STAFF', '2020-07-28 08:15:42');
INSERT INTO `db_member` VALUES ('9', 'hhhh', '1234', 'ด.ช.', 'กฤษกร', 'นาวารี', 'fgfsefh@gmail.com', '33 หมู่ 4 ต.บัวเชด อ.บัวเชด จ.สุรินทร์', '0892220000', 'm_img160008048820200727_204438.png', 'STAFF', '2020-07-28 08:31:03');
INSERT INTO `db_member` VALUES ('10', 'kkkkk', '1234', 'นาย', 'จีรณา', 'ทองนรินทร์', 'krtkksskk@hotmail.com', '433/1 หมู่ 5 ต.สะเดา อ.บัวเชด จ.สุรินทร์ 32230', '0892220000', 'm_img161743048820200727_151015.png', 'STAFF', '2020-07-28 08:15:42');
INSERT INTO `db_member` VALUES ('11', 'dhjfjxg', '1234', 'นาง', 'สุดารัตน์', 'วีรภัทร', 'cccfdzf@gmail.com', '33 หมู่ 4 ต.บัวเชด อ.บัวเชด จ.สุรินทร์', '0893330000', 'm_img161743048820200727_151015.png', 'STAFF', '2020-07-28 08:30:31');
INSERT INTO `db_member` VALUES ('12', 'llll', '1234', 'น.ส.', 'สุดามารัตน์', 'พันแก่น', 'llllll@gmail.com', '149 หมู่ 4 ต.หนองหาร อ.สันทราย จ.เชียงใหม่', '0893330000', 'm_img161743048820200727_151015.png', 'STAFF', '2020-07-28 08:30:42');
INSERT INTO `db_member` VALUES ('13', 'staff1', '1234', 'นาย', 'สตาฟหนึ่ง', 'นามสตาฟ', 'aaastaft1@gmail.com', 'fffffffffghdghfgjdfhjmfn 150', '0893330000', 'm_img131568366520200727_155434.png', 'STAFF', '2020-07-31 10:46:46');
INSERT INTO `db_member` VALUES ('14', 'staff14', '1234', 'น.ส.', 'สตาฟหนึ่ง4', 'xfbxhb', 'ddd222@gmail.com', 'xfgdfhdhhx', '0892220000', 'm_img88992480820200730_185448.png', 'STAFF', '2020-07-31 10:56:52');

-- ----------------------------
-- Table structure for db_product
-- ----------------------------
DROP TABLE IF EXISTS `db_product`;
CREATE TABLE `db_product` (
  `prd_id` int(11) NOT NULL AUTO_INCREMENT,
  `prd_type_id` int(11) NOT NULL COMMENT 'product_type_id',
  `prd_name` varchar(150) NOT NULL,
  `prd_detail` text NOT NULL,
  `prd_price` float(10,2) NOT NULL,
  `prd_img` varchar(100) DEFAULT NULL,
  `prd_view` int(11) DEFAULT NULL COMMENT 'Product View Count',
  `prd_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prd_reg_m_id` int(11) DEFAULT NULL COMMENT 'User Product Add',
  `prd_m_edit` varchar(50) DEFAULT NULL,
  `prd_m_edit_date` datetime NOT NULL,
  PRIMARY KEY (`prd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_product
-- ----------------------------
INSERT INTO `db_product` VALUES ('1', '4', 'กางเกงลิงชาย', 'กางเกงลิงชาย ใสส่สบาย', '599.00', 'prd_img163086393320200730_190454.png', null, '2020-07-27 12:11:12', '1', 'กฤษกร', '2020-07-30 19:04:13');
INSERT INTO `db_product` VALUES ('2', '1', 'DMAX', 'รถยนต์มือ 8 คุณภาพบ้าบอ', '7964655.00', 'prd_img164680784720200731_173735.png', null, '2020-07-27 12:17:20', '1', null, '2020-07-28 17:33:50');
INSERT INTO `db_product` VALUES ('3', '2', 'OPPO100', ' sopppljoljmll ljoljjlml                                 ', '9900.00', 'prd_img82953363620200728_155915.png', null, '2020-07-27 12:43:11', '1', null, '2020-07-28 17:33:50');
INSERT INTO `db_product` VALUES ('4', '4', 'ยกซงหุ้มเกราะ', 'ยกซงหุ้มเกราะ ป้องกันอาวุธปืน m16', '590.00', 'prd_img180662764820200731_173816.png', null, '2020-07-27 12:44:14', '1', null, '2020-07-28 17:33:50');
INSERT INTO `db_product` VALUES ('5', '7', 'computer Notebook', 'Notebook   drgdhgdhh    ', '89000.00', 'prd_img126168200520200728_180501.png', null, '2020-07-27 12:44:16', '1', 'สิริยาภรณ์', '2020-07-28 18:04:10');
INSERT INTO `db_product` VALUES ('6', '10', 'กระเป๋าเงิน หนังแท้', 'ghdghdththhd ดาเหส่ว่วผดาาอิผิงพ  ', '599.00', 'prd_img175104841920200727_183738.png', null, '2020-07-27 14:19:36', '1', 'เบญญาภา', '2020-07-30 18:05:08');
INSERT INTO `db_product` VALUES ('7', '9', 'ววาย', 'กดเ้กพั่ะดาีเาอิ่อิม้าส่้                    ', '582.00', 'prd_img8618111120200729_073427.png', null, '2020-07-27 14:41:24', '1', 'เบญญาภา', '2020-07-29 07:31:30');
INSERT INTO `db_product` VALUES ('8', '7', 'yr5ysdgh', 'ersgjffjygkcvhjtfjgykguvmfggfhdgd', '4564.00', 'prd_img186606650020200730_184822.png', null, '2020-07-27 14:46:07', '1', 'สิริยาภรณ์', '2020-07-28 19:27:59');
INSERT INTO `db_product` VALUES ('9', '9', 'เตาผิง', 'หดเสพนยีเนก้าอัไำนร้สรดสเย่วนนดเนหรเหน้อ                            ', '899.00', 'prd_img29986528920200730_184809.png', null, '2020-07-27 18:38:44', '1', 'ศุภณัฐ', '2020-07-30 18:30:16');
INSERT INTO `db_product` VALUES ('10', '2', 'oppo2', 'oppo5 รายการดี', '5900.00', 'prd_img51845634220200730_184752.png', null, '2020-07-28 15:57:42', '1', 'ศุภณัฐ', '2020-07-29 18:52:44');

-- ----------------------------
-- Table structure for db_product_type
-- ----------------------------
DROP TABLE IF EXISTS `db_product_type`;
CREATE TABLE `db_product_type` (
  `prd_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `prd_type_name` varchar(200) DEFAULT NULL,
  `prd_type_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prd_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_product_type
-- ----------------------------
INSERT INTO `db_product_type` VALUES ('1', 'รถยนต์', '2020-07-27 16:19:35');
INSERT INTO `db_product_type` VALUES ('2', 'โทรศัพท์มือถือ', '2020-07-27 13:24:05');
INSERT INTO `db_product_type` VALUES ('3', 'เสื้อผ้า', '2020-07-27 13:24:05');
INSERT INTO `db_product_type` VALUES ('4', 'ชุดชั้นใน', '2020-07-27 16:19:05');
INSERT INTO `db_product_type` VALUES ('5', 'คอมพิวเตอร์', '2020-07-27 13:24:05');
INSERT INTO `db_product_type` VALUES ('6', 'พัดลม', '2020-07-27 13:24:05');
INSERT INTO `db_product_type` VALUES ('7', 'โน๊ตบุค', '2020-07-27 13:24:05');
INSERT INTO `db_product_type` VALUES ('8', 'รองเท้า', '2020-07-27 14:07:49');
INSERT INTO `db_product_type` VALUES ('9', 'เตาแก๊ส', '2020-07-27 14:07:53');
INSERT INTO `db_product_type` VALUES ('10', 'กระเป๋า', '2020-07-27 14:09:50');

-- ----------------------------
-- Table structure for db_product_update_log
-- ----------------------------
DROP TABLE IF EXISTS `db_product_update_log`;
CREATE TABLE `db_product_update_log` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ref_p_id` int(11) DEFAULT NULL COMMENT 'id สินค้า',
  `ref_m_id` int(11) DEFAULT NULL COMMENT 'id ผู้แก่ไข',
  `log_date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_product_update_log
-- ----------------------------
INSERT INTO `db_product_update_log` VALUES ('1', '10', '3', '2020-07-28 19:28:48');
INSERT INTO `db_product_update_log` VALUES ('2', '8', '3', '2020-07-28 19:29:34');
INSERT INTO `db_product_update_log` VALUES ('3', '1', '4', '2020-07-29 07:31:26');
INSERT INTO `db_product_update_log` VALUES ('4', '7', '5', '2020-07-29 07:35:49');
INSERT INTO `db_product_update_log` VALUES ('5', '10', '4', '2020-07-29 18:57:14');
INSERT INTO `db_product_update_log` VALUES ('6', '1', '5', '2020-07-30 18:02:41');
INSERT INTO `db_product_update_log` VALUES ('7', '6', '5', '2020-07-30 18:06:33');
INSERT INTO `db_product_update_log` VALUES ('8', '9', '5', '2020-07-30 18:07:04');
INSERT INTO `db_product_update_log` VALUES ('9', '9', '4', '2020-07-30 18:31:20');
INSERT INTO `db_product_update_log` VALUES ('10', '9', '4', '2020-07-30 18:31:45');
INSERT INTO `db_product_update_log` VALUES ('11', '1', '9', '2020-07-30 19:05:32');
INSERT INTO `db_product_update_log` VALUES ('12', '1', '9', '2020-07-30 19:06:17');

-- ----------------------------
-- Table structure for p_member
-- ----------------------------
DROP TABLE IF EXISTS `p_member`;
CREATE TABLE `p_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับ',
  `member_firstname` varchar(50) NOT NULL COMMENT 'ชื่อ',
  `member_lastname` varchar(50) NOT NULL COMMENT 'นามสกุล',
  `member_username` varchar(50) NOT NULL COMMENT 'ชื่อผู้ใช้',
  `member_password` varchar(50) NOT NULL COMMENT 'รหัสผ่าน',
  `member_img` varchar(200) DEFAULT NULL COMMENT 'รูปผู้ใช้',
  `member_phone` varchar(20) NOT NULL COMMENT 'เบอร์โทร',
  `member_address` text NOT NULL COMMENT 'ที่อยู่',
  `member_email` varchar(50) NOT NULL COMMENT 'อีเมล',
  `member_level` varchar(10) NOT NULL COMMENT 'ระดับการใช้งาน',
  `daetinsert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'วันที่เพิ่มข้อมูล',
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of p_member
-- ----------------------------
INSERT INTO `p_member` VALUES ('1', 'คมกริช', 'khomkrit', 'khomkrit', 'khomkrit', 'mempic/15773_714537791953661_4700613261033821328_n.jpg', '0901542966', '199\\68 พีโน่ ปิ่นเกล้าราชพฤก', 'fordza4you@hotmail.com', 'a', '2015-02-23 13:36:20');
INSERT INTO `p_member` VALUES ('3', 'fff', 'fff', '1234', '1234', 'mempic/SmartWMS.jpg', '0355558989', 'xcxc', 'xcxc', 'm', '2015-02-26 13:21:57');
INSERT INTO `p_member` VALUES ('4', 'นายเข้มข้น', 'แข็งแรง', '1111', '1111', 'mempic/Security.ico', '022225566', 'dfgdf', 'gdfgdf', 'm', '2015-02-26 13:28:34');
INSERT INTO `p_member` VALUES ('8', 'นางสาวสวยงาม', 'น่ารักจัง', '6666', '6666', 'mempic/Secretary.ico', '0899959784', 'dfsgsdg', 'ooo@kkk', 'm', '2015-03-13 18:24:59');
INSERT INTO `p_member` VALUES ('9', 'นายราเชน', 'สีสวยงาม', '000', '000', 'mempic/King.ico', '0816522235', 'hgkjgj', 'klsdklsdklsdf@klfgklh', 'm', '2015-03-14 14:06:48');
INSERT INTO `p_member` VALUES ('10', 'นายรักดี', 'รักชาติ', '4087', '4087', 'mempic/Client.ico', '0988858589', '199/68 บางขนุน จ.นนทบุรี 11130', 'fast7@hotmail.com', 'm', '2015-06-10 18:06:28');
INSERT INTO `p_member` VALUES ('11', 'นาย เรียนดี', 'ตั้งใจเรียน', 'computer', 'computer', 'mempic/Uncle Sam.ico', '0988858585', ' 199/68 พลีโน่ ปิ่นเกล้า-ราชพฤก บางกรวย จ.นนทบุรี 11130', 'computer@gmail.com', 'm', '2015-07-27 16:35:02');
INSERT INTO `p_member` VALUES ('13', '1', '1', '1', '1', 'mempic/user-male-circle.png', '1', ' 1', 'fordza4you@gmail.com', 'a', '2018-07-23 10:59:38');
INSERT INTO `p_member` VALUES ('14', '2', '2', '2', '2', 'mempic/circled_user_female1600.png', '2', ' 2', 'fordza4you@hotmail.com', 'm', '2018-07-23 11:00:27');
INSERT INTO `p_member` VALUES ('15', 'g', 'g', 'g', 'g', 'mempic/user-male-circle.png', '4', ' g', 'gg@gmail.com', 'm', '2018-07-23 15:58:49');

-- ----------------------------
-- Table structure for tb_slider
-- ----------------------------
DROP TABLE IF EXISTS `tb_slider`;
CREATE TABLE `tb_slider` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `slider` text NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_slider
-- ----------------------------
INSERT INTO `tb_slider` VALUES ('1', '1435.jpg');
INSERT INTO `tb_slider` VALUES ('2', '1435.jpg');
INSERT INTO `tb_slider` VALUES ('3', '1435.jpg');
INSERT INTO `tb_slider` VALUES ('4', '1435.jpg');
INSERT INTO `tb_slider` VALUES ('5', '1435.jpg');
INSERT INTO `tb_slider` VALUES ('6', '1435.jpg');
INSERT INTO `tb_slider` VALUES ('7', '1435.jpg');
INSERT INTO `tb_slider` VALUES ('8', '1435.jpg');

-- ----------------------------
-- Table structure for tbl_admin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_user` varchar(20) NOT NULL,
  `a_pass` varchar(20) NOT NULL,
  `a_name` varchar(100) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES ('1', '1111', '1111', 'admin1aaa', '2018-11-16 12:34:50');
INSERT INTO `tbl_admin` VALUES ('2', '222', '222', 'admin2', '2018-11-16 12:34:50');
INSERT INTO `tbl_admin` VALUES ('3', '333', '333', 'admin3', '2018-11-16 12:35:30');
INSERT INTO `tbl_admin` VALUES ('5', '555', '555', 'admin5', '2020-07-16 17:53:32');
INSERT INTO `tbl_admin` VALUES ('7', '7777', '7777', 'admin7', '2020-07-17 08:13:01');
INSERT INTO `tbl_admin` VALUES ('8', '888', '888', 'admin8', '2020-07-17 08:57:04');
INSERT INTO `tbl_admin` VALUES ('9', '666', '666', 'admin6', '2020-07-17 08:58:57');
INSERT INTO `tbl_admin` VALUES ('10', '100', '100', 'admin10', '2020-07-19 12:38:36');
INSERT INTO `tbl_admin` VALUES ('11', '1011', '1011', 'admin11', '2020-07-19 13:21:14');
INSERT INTO `tbl_admin` VALUES ('12', 'admin12', '1234', 'admin12', '2020-07-19 13:21:35');
INSERT INTO `tbl_admin` VALUES ('13', 'admin13', '1313', 'admin13', '2020-07-19 13:21:59');
INSERT INTO `tbl_admin` VALUES ('14', 'admin14', '8cb2237d0679ca88db64', 'admibn14', '2020-07-20 11:07:31');

-- ----------------------------
-- Table structure for tbl_member
-- ----------------------------
DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE `tbl_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_user` varchar(20) NOT NULL,
  `m_pass` varchar(20) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `m_email` varchar(100) NOT NULL,
  `m_tel` varchar(20) NOT NULL,
  `m_address` varchar(200) NOT NULL,
  `date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_member
-- ----------------------------
INSERT INTO `tbl_member` VALUES ('2', '222', '222', 'sssss', 'wootlove@gmail.com', '0931294710', '28/38-39 ถนนยิงเป้า ต.สนามจันทร์ \r\nอ.เมือง จ.นครปฐม 73000', '2018-06-16 08:52:55');
INSERT INTO `tbl_member` VALUES ('3', '123', '213', 'waina', 'aaaa@gmail.com', '025837588', '46/148-9 ม.3 ถ.ศรีสมาน ต.บ้านใหม่ \r\nอ.ปากเกร็ด จ.นนทบุรี 11120', '2018-06-16 09:02:30');
INSERT INTO `tbl_member` VALUES ('4', '444', '444', 'member4', 'member4@amial.com', '0388241313', '72/33-34 ถ.ศุขประยูร ต.หน้าเมือง อ.เมือง จ.ฉะเชิงเทรา 24000', '2018-06-16 09:11:21');
INSERT INTO `tbl_member` VALUES ('5', '456', '654', 'waiya', 'waiy@gmail.com', '032419717', '252/1-2 ม.6 ถ.เพชรเกษม ต.บ้านหม้อ \r\nอ.เมือง จ.เพชรบุรี 76000', '2018-06-16 09:12:45');
INSERT INTO `tbl_member` VALUES ('7', '999', '999', 'tbanbi', 'eoom@n.com', '038860799', '109/10-11 ถ.จันทอุดม ต.เชิงเนิน \r\nอ.เมือง จ.ระยอง 21000	', '2018-06-16 09:20:34');
INSERT INTO `tbl_member` VALUES ('8', '765', '765', 'moota', 'aaaa@gmail.com', '053302450', '459/98 ถ.เจริญเมือง ต.วัดเกตุ \r\nอ.เมือง จ.เชียงใหม่ 50000', '2018-06-16 09:23:37');
INSERT INTO `tbl_member` VALUES ('9', '777', '777', 'foodra', 'wsss@gmail.com', '053733708', '111/12-13 ม.13 ต.สันทราย \r\nอ.เมือง จ.เชียงราย 57000', '2018-06-16 09:26:55');
INSERT INTO `tbl_member` VALUES ('10', '144', '311', 'wiratai', 'boom@m.com', '043324754', '269/64-65 ม.4 ถ.มิตรภาพ \r\nอ.เมือง จ.ขอนแก่น 40000', '2018-06-16 09:29:48');

-- ----------------------------
-- Table structure for tbl_product
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(200) NOT NULL,
  `p_type_id` int(11) NOT NULL,
  `p_detail` text NOT NULL,
  `p_img` varchar(200) NOT NULL,
  `datesave` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product
-- ----------------------------
INSERT INTO `tbl_product` VALUES ('3', 'กางเกงในชาย1', '8', 'กางเกงในชายมือ2 ของแท้ ลายคราม สภาพใช้งาน1             ', 'p_img101306753320200717_182227.jpg', '2020-07-17 18:25:07');
INSERT INTO `tbl_product` VALUES ('4', 'กางเกงในชาย2', '12', 'กางเกงในชายมือ2 ของแท้ ลายคราม สภาพใช้งาน2', 'p_img148214834220200717_185053.jpg', '2020-07-17 18:53:33');
INSERT INTO `tbl_product` VALUES ('5', 'หม้อ55', '1', 'หม้อ สำหรับหมอผี จับผีถ่วงน้ำ   2                                                 ', '106558710720200717_191252.jpg', '2020-07-17 19:06:23');
INSERT INTO `tbl_product` VALUES ('6', 'ควาย', '14', 'ควายธนู ยุคสงครามโลก1', 'p_img150824673320200719_121300.jpg', '2020-07-19 12:16:17');
INSERT INTO `tbl_product` VALUES ('7', 'บูท', '2', 'เอาใว้ใส่ว่าน้ำไปมาในทะเล 641231534554643\r\n1232344356453453', 'p_img174875462720200721_175132.gif', '2020-07-21 17:52:48');

-- ----------------------------
-- Table structure for tbl_product_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_product_type`;
CREATE TABLE `tbl_product_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_product_type
-- ----------------------------
INSERT INTO `tbl_product_type` VALUES ('1', 'อิเล็กทรอนิกส์');
INSERT INTO `tbl_product_type` VALUES ('2', 'รองเท้า');
INSERT INTO `tbl_product_type` VALUES ('4', 'แฟชั่น');
INSERT INTO `tbl_product_type` VALUES ('7', 'เครื่องแต่งกาย');
INSERT INTO `tbl_product_type` VALUES ('8', 'ของเล่น ');
INSERT INTO `tbl_product_type` VALUES ('9', 'นาฬิกา');
INSERT INTO `tbl_product_type` VALUES ('11', 'โทรศัพท์');
INSERT INTO `tbl_product_type` VALUES ('12', 'ชุดชั้นในชาย/หญิง');
INSERT INTO `tbl_product_type` VALUES ('13', 'ตุ๊กตายางแท้');
INSERT INTO `tbl_product_type` VALUES ('14', 'เครื่องประดับ');

-- ----------------------------
-- Table structure for td_login_log
-- ----------------------------
DROP TABLE IF EXISTS `td_login_log`;
CREATE TABLE `td_login_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_m_id` int(11) DEFAULT NULL COMMENT 'id สมาชิก',
  `login_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='ประวัติล๊อกอิน';

-- ----------------------------
-- Records of td_login_log
-- ----------------------------
INSERT INTO `td_login_log` VALUES ('1', '10', '2018-06-30 19:28:54');
INSERT INTO `td_login_log` VALUES ('2', '7', '2019-08-30 19:30:08');
INSERT INTO `td_login_log` VALUES ('3', '7', '2019-09-30 19:31:49');
INSERT INTO `td_login_log` VALUES ('4', '7', '2019-10-30 19:41:24');
INSERT INTO `td_login_log` VALUES ('5', '4', '2020-07-30 19:53:02');
INSERT INTO `td_login_log` VALUES ('6', '5', '2020-07-30 20:07:15');
INSERT INTO `td_login_log` VALUES ('7', '7', '2020-07-31 09:59:17');
INSERT INTO `td_login_log` VALUES ('8', '4', '2020-07-31 10:00:53');
INSERT INTO `td_login_log` VALUES ('9', '5', '2020-07-31 10:17:16');
INSERT INTO `td_login_log` VALUES ('10', '4', '2020-07-31 10:34:45');
INSERT INTO `td_login_log` VALUES ('11', '13', '2020-07-31 10:47:06');
INSERT INTO `td_login_log` VALUES ('12', '14', '2020-07-31 10:47:20');
INSERT INTO `td_login_log` VALUES ('13', '3', '2020-07-31 15:41:36');
INSERT INTO `td_login_log` VALUES ('14', '2', '2020-08-07 16:39:24');
INSERT INTO `td_login_log` VALUES ('15', '3', '2020-08-07 16:42:39');
INSERT INTO `td_login_log` VALUES ('16', '4', '2020-08-07 16:42:57');
INSERT INTO `td_login_log` VALUES ('17', '6', '2020-08-07 16:43:48');
INSERT INTO `td_login_log` VALUES ('18', '2', '2020-08-07 16:50:20');
INSERT INTO `td_login_log` VALUES ('19', '2', '2020-08-07 17:46:32');
INSERT INTO `td_login_log` VALUES ('20', '2', '2020-08-07 17:46:41');
INSERT INTO `td_login_log` VALUES ('21', '2', '2020-08-07 17:49:09');
INSERT INTO `td_login_log` VALUES ('22', '2', '2020-08-07 17:52:09');
INSERT INTO `td_login_log` VALUES ('23', '3', '2020-08-07 17:55:29');
INSERT INTO `td_login_log` VALUES ('24', '2', '2020-08-09 11:05:05');
INSERT INTO `td_login_log` VALUES ('25', '2', '2020-08-09 11:42:43');
INSERT INTO `td_login_log` VALUES ('26', '3', '2020-08-09 11:54:57');
INSERT INTO `td_login_log` VALUES ('27', '2', '2020-08-09 12:10:50');
INSERT INTO `td_login_log` VALUES ('28', '3', '2020-08-09 12:11:02');
INSERT INTO `td_login_log` VALUES ('29', '4', '2020-08-09 12:11:14');
INSERT INTO `td_login_log` VALUES ('30', '2', '2020-08-09 12:17:37');
INSERT INTO `td_login_log` VALUES ('31', '2', '2020-08-09 12:18:01');
INSERT INTO `td_login_log` VALUES ('32', '2', '2020-08-09 12:29:44');
INSERT INTO `td_login_log` VALUES ('33', '3', '2020-08-09 12:48:59');
INSERT INTO `td_login_log` VALUES ('34', '4', '2020-08-09 12:58:56');
INSERT INTO `td_login_log` VALUES ('35', '2', '2020-08-09 13:50:39');
INSERT INTO `td_login_log` VALUES ('36', '3', '2020-08-09 13:50:49');
INSERT INTO `td_login_log` VALUES ('37', '3', '2020-08-09 13:56:55');
INSERT INTO `td_login_log` VALUES ('38', '2', '2020-08-09 15:19:53');
INSERT INTO `td_login_log` VALUES ('39', '2', '2020-08-09 15:21:57');
INSERT INTO `td_login_log` VALUES ('40', '2', '2020-08-09 15:36:36');
INSERT INTO `td_login_log` VALUES ('41', '3', '2020-08-09 15:37:09');
INSERT INTO `td_login_log` VALUES ('42', '4', '2020-08-09 15:40:08');
INSERT INTO `td_login_log` VALUES ('43', '4', '2020-08-09 16:08:08');
INSERT INTO `td_login_log` VALUES ('44', '3', '2020-08-09 16:23:31');
INSERT INTO `td_login_log` VALUES ('45', '3', '2020-08-09 16:24:28');
INSERT INTO `td_login_log` VALUES ('46', '3', '2020-08-09 16:27:38');
INSERT INTO `td_login_log` VALUES ('47', '2', '2020-08-09 16:52:20');
INSERT INTO `td_login_log` VALUES ('48', '17', '2020-08-10 14:10:40');
INSERT INTO `td_login_log` VALUES ('49', '17', '2020-08-10 14:13:55');
INSERT INTO `td_login_log` VALUES ('50', '3', '2020-08-10 15:49:33');
INSERT INTO `td_login_log` VALUES ('51', '2', '2020-08-10 16:55:15');
INSERT INTO `td_login_log` VALUES ('52', '2', '2020-08-10 17:57:31');
INSERT INTO `td_login_log` VALUES ('53', '2', '2020-08-11 07:37:05');
INSERT INTO `td_login_log` VALUES ('54', '3', '2020-08-11 07:48:21');
INSERT INTO `td_login_log` VALUES ('55', '3', '2020-08-11 07:56:13');
INSERT INTO `td_login_log` VALUES ('56', '2', '2020-08-11 12:49:56');
INSERT INTO `td_login_log` VALUES ('57', '3', '2020-08-11 13:11:42');
INSERT INTO `td_login_log` VALUES ('58', '2', '2020-08-11 18:27:24');
INSERT INTO `td_login_log` VALUES ('59', '3', '2020-08-11 18:27:49');
INSERT INTO `td_login_log` VALUES ('60', '2', '2020-08-12 08:18:20');
INSERT INTO `td_login_log` VALUES ('61', '2', '2020-08-12 08:37:36');
INSERT INTO `td_login_log` VALUES ('62', '3', '2020-08-12 08:38:04');
INSERT INTO `td_login_log` VALUES ('63', '4', '2020-08-12 08:39:01');
INSERT INTO `td_login_log` VALUES ('64', '2', '2020-08-12 09:21:20');
INSERT INTO `td_login_log` VALUES ('65', '2', '2020-08-12 11:04:33');
INSERT INTO `td_login_log` VALUES ('66', '2', '2020-08-12 11:52:19');
INSERT INTO `td_login_log` VALUES ('67', '3', '2020-08-12 11:52:45');
INSERT INTO `td_login_log` VALUES ('68', '2', '2020-08-13 17:32:34');
INSERT INTO `td_login_log` VALUES ('69', '2', '2020-08-13 17:33:45');
INSERT INTO `td_login_log` VALUES ('70', '2', '2020-08-13 17:36:54');
INSERT INTO `td_login_log` VALUES ('71', '3', '2020-08-13 17:51:55');
INSERT INTO `td_login_log` VALUES ('72', '4', '2020-08-13 18:06:44');
INSERT INTO `td_login_log` VALUES ('73', '2', '2020-08-13 18:21:31');
INSERT INTO `td_login_log` VALUES ('74', '2', '2020-08-14 10:29:42');
INSERT INTO `td_login_log` VALUES ('75', '18', '2020-08-14 10:47:04');
INSERT INTO `td_login_log` VALUES ('76', '2', '2020-08-14 15:43:12');
INSERT INTO `td_login_log` VALUES ('77', '4', '2020-08-18 07:36:32');
INSERT INTO `td_login_log` VALUES ('78', '4', '2020-08-18 10:54:32');
INSERT INTO `td_login_log` VALUES ('79', '3', '2020-08-27 09:46:18');
INSERT INTO `td_login_log` VALUES ('80', '2', '2020-11-30 14:19:48');

-- ----------------------------
-- Table structure for td_member
-- ----------------------------
DROP TABLE IF EXISTS `td_member`;
CREATE TABLE `td_member` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_username` varchar(50) DEFAULT NULL,
  `m_password` varchar(50) DEFAULT NULL,
  `m_pname` varchar(10) DEFAULT NULL,
  `m_fname` varchar(100) DEFAULT NULL,
  `m_lname` varchar(100) DEFAULT NULL,
  `m_cid` varchar(13) DEFAULT NULL,
  `m_email` varchar(100) DEFAULT NULL,
  `m_address` text,
  `m_phone` varchar(15) DEFAULT NULL,
  `m_img` varchar(50) DEFAULT 'm_img170667189020200728_081508.jpg',
  `m_level` varchar(10) DEFAULT 'USER',
  `m_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of td_member
-- ----------------------------
INSERT INTO `td_member` VALUES ('1', 'a', '1234', 'นาย', 'เแอดมึน', 'นามสกุลแอด', '3321300170591', 'admin1@gmail.com', '11/11 ม.1 ต.บัวเชด อ.บัวเชด จ.สุรินทร์ 32230 ', '0891110000', 'm_img170667189020200728_081508.jpg', 'ADMIN', '2020-08-13 17:32:13');
INSERT INTO `td_member` VALUES ('2', 'b', '1234', 'รตต.', 'สุทัศ', 'ฟักทอง', '3650600160369', 'bbb@gmail.com', '66 หมู่ 3 ต.ตาตุม อ.สังขะ จ.สุรินทร์', '0892220012', 'm_img108562445920200811_074241.png', 'USER', '2020-08-11 13:04:44');
INSERT INTO `td_member` VALUES ('3', 'c', '1234', 'นาย', 'วิษณุพร', 'พันธ์ภา', '3321300170591', 'pom1@gmail.com', '76/1 หมู่ 3 ต.ดม อ.สังขะ จ.สุรินทร์ 32150', '0893330000', 'm_img57832354820200813_180234.jpg', 'USER', '2020-08-13 18:05:43');
INSERT INTO `td_member` VALUES ('4', 'd', '1234', 'ร.ต.ท.', 'นภดล', 'ตะคอนรัมย์', '3310200015461', 'ddd@gmail.com', '4 หมู่ 7 ต.เทพรักษา อ.สังขะ จ.สุรินทร์ 32150', '0894440000', 'm_img137370202120200812_083523.png', 'USER', '2020-08-12 08:39:24');
INSERT INTO `td_member` VALUES ('5', 'e', '1234', 'ด.ญ.', 'เบญญาภา', 'สอนคำปน', '', 'eeee@hotmail.com', '149 หมู่ 4 ต.หนองหาร อ.สันทราย จ.เชียงใหม่', '0895550000', 'm_img20566716520200813_165750.png', 'USER', '2020-08-13 16:59:23');
INSERT INTO `td_member` VALUES ('6', 'f', '1234', 'นาง', 'ยุทธพงษ์', 'ยอดชมภู', '', 'fffff@gmail.com', '170 ม.1 ต.ดม อ.สังขะ จ.สุรินทร์ 32150', '0896660000', 'm_img41392540720200813_165857.png', 'USER', '2020-08-13 17:00:30');
INSERT INTO `td_member` VALUES ('7', 'g', '1234', 'นาง', 'ธัญวรัตน์', 'สุขประเสริฐ', '', 'ioiiii@gmail.com', '73 หมู่ 12 ต.ดม อ.สังขะ จ.สุรินทร์ 32150', '0897450000', 'm_img9096701620200813_165930.jpg', 'USER', '2020-08-13 17:01:04');
INSERT INTO `td_member` VALUES ('8', 'h', '1234', 'น.ส.', 'วรารัตน์', 'ขยันวงษ์', '', 'jjjjjjjjj@gmail.com', '433/1 หมู่ 5 ต.สะเดา อ.บัวเชด จ.สุรินทร์ 32230', '0898540000', 'm_img11205518320200813_170008.png', 'USER', '2020-08-13 17:01:41');
INSERT INTO `td_member` VALUES ('9', 'i', '1234', 'ด.ช.', 'กฤษกร', 'นาวารี', '', 'fgfsefh@gmail.com', '33 หมู่ 4 ต.บัวเชด อ.บัวเชด จ.สุรินทร์', '0892220000', 'm_img78124085520200813_170650.png', 'USER', '2020-08-13 17:08:23');
INSERT INTO `td_member` VALUES ('10', 'j', '1234', 'นาย', 'จีรณา', 'ทองนรินทร์', '', 'krtkksskk@hotmail.com', '433/1 หมู่ 5 ต.สะเดา อ.บัวเชด จ.สุรินทร์ 32230', '0892220000', 'm_img160944531320200813_173352.jpg', 'USER', '2020-08-13 17:35:26');
INSERT INTO `td_member` VALUES ('11', 'k', '1234', 'นาง', 'สุดารัตน์', 'วีรภัทร', null, 'cccfdzf@gmail.com', '33 หมู่ 4 ต.บัวเชด อ.บัวเชด จ.สุรินทร์', '0893330000', 'm_img161743048820200727_151015.png', 'USER', '2020-08-12 08:41:29');
INSERT INTO `td_member` VALUES ('12', 'llll', '1234', 'น.ส.', 'สุดามารัตน์', 'พันแก่น', null, 'llllll@gmail.com', '149 หมู่ 4 ต.หนองหาร อ.สันทราย จ.เชียงใหม่', '0893330000', 'm_img161743048820200727_151015.png', 'USER', '2020-08-11 13:04:44');
INSERT INTO `td_member` VALUES ('14', 'staff14', '1234', 'น.ส.', 'สตาฟหนึ่ง4', 'xfbxhb', null, 'ddd222@gmail.com', 'xfgdfhdhhx', '0892220000', 'm_img88992480820200730_185448.png', 'USER', '2020-08-11 13:04:44');
INSERT INTO `td_member` VALUES ('15', '3321300155762', '1234', 'ดต.', 'พิเชษฐ์', 'ชาญศรี', '3321300155762', '', '4 /01 ต.บัวเชด อ.บัวเชด จ.สุรินทร์', '', 'm_img170667189020200728_081508.jpg', 'USER', '2020-08-14 10:35:07');
INSERT INTO `td_member` VALUES ('16', '3430200126611', '1234', '', 'สุบิน', 'ศรีสมบัติ', '3430200126611', '', '', '', 'm_img170667189020200728_081508.jpg', 'USER', '2020-08-13 16:53:23');
INSERT INTO `td_member` VALUES ('17', '3401900141273', '1234', null, 'เปรมปรี', 'สิงห์เพียง', '3401900141273', null, null, null, 'm_img170667189020200728_081508.jpg', 'USER', '2020-08-11 13:04:44');
INSERT INTO `td_member` VALUES ('18', '3311100446763', '1234', 'ร.ต.ต.', 'ธนิตพงศ์', 'กิตติระวีวัฒน์', '3311100446763', 'ccc@gmail.com', 'ต.บัวเชด อ.บัวเชด จ.สุรินทร์', '0893330000', 'm_img85762208620200814_103747.png', 'USER', '2020-08-14 10:48:24');

-- ----------------------------
-- Table structure for td_pname
-- ----------------------------
DROP TABLE IF EXISTS `td_pname`;
CREATE TABLE `td_pname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=tis620;

-- ----------------------------
-- Records of td_pname
-- ----------------------------
INSERT INTO `td_pname` VALUES ('1', 'คุณ', '2');
INSERT INTO `td_pname` VALUES ('2', 'คุณหญิง', '2');
INSERT INTO `td_pname` VALUES ('3', 'จ.ต.', '1');
INSERT INTO `td_pname` VALUES ('4', 'จ.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('5', 'จ.ท.', '1');
INSERT INTO `td_pname` VALUES ('6', 'จ.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('7', 'จ.ส.ต.', '1');
INSERT INTO `td_pname` VALUES ('8', 'จ.ส.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('9', 'จ.ส.ท.', '1');
INSERT INTO `td_pname` VALUES ('10', 'จ.ส.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('11', 'จ.ส.อ.', '1');
INSERT INTO `td_pname` VALUES ('12', 'จ.ส.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('13', 'จ.อ.', '1');
INSERT INTO `td_pname` VALUES ('14', 'จ.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('15', 'จ่าอากาศตรีหญิง', '2');
INSERT INTO `td_pname` VALUES ('16', 'จ่าอากาศตรี', '1');
INSERT INTO `td_pname` VALUES ('17', 'จ่าอากาศโทหญิง', '2');
INSERT INTO `td_pname` VALUES ('18', 'จ่าอากาศโท', '1');
INSERT INTO `td_pname` VALUES ('19', 'จ่าอากาศเอกหญิง', '2');
INSERT INTO `td_pname` VALUES ('20', 'จ่าอากาศเอก', '1');
INSERT INTO `td_pname` VALUES ('21', 'ด.ช.', '1');
INSERT INTO `td_pname` VALUES ('22', 'ด.ญ.', '2');
INSERT INTO `td_pname` VALUES ('23', 'ด.ต.', '1');
INSERT INTO `td_pname` VALUES ('24', 'ด.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('25', 'ดร.', '1');
INSERT INTO `td_pname` VALUES ('26', 'ท.พ.', '1');
INSERT INTO `td_pname` VALUES ('27', 'น.ต.', '1');
INSERT INTO `td_pname` VALUES ('28', 'น.ต.พ.ญ.', '2');
INSERT INTO `td_pname` VALUES ('29', 'น.ต.ม.ล.', '1');
INSERT INTO `td_pname` VALUES ('30', 'น.ต.ม.ล.หญิง', '2');
INSERT INTO `td_pname` VALUES ('31', 'น.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('32', 'น.พ.', '1');
INSERT INTO `td_pname` VALUES ('33', 'น.ส.', '2');
INSERT INTO `td_pname` VALUES ('34', 'น.อ.พิเศษ', '1');
INSERT INTO `td_pname` VALUES ('35', 'น.อ.พิเศษหญิง', '2');
INSERT INTO `td_pname` VALUES ('36', 'นช', '1');
INSERT INTO `td_pname` VALUES ('37', 'นนส.', '1');
INSERT INTO `td_pname` VALUES ('38', 'นนส.หญิง', '2');
INSERT INTO `td_pname` VALUES ('39', 'นรจ.', '1');
INSERT INTO `td_pname` VALUES ('40', 'นรจ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('41', 'นรต.', '1');
INSERT INTO `td_pname` VALUES ('42', 'นรต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('43', 'นักเรียนจ่าอากาศหญิง', '2');
INSERT INTO `td_pname` VALUES ('44', 'นักเรียนจ่าอากาศ', '1');
INSERT INTO `td_pname` VALUES ('45', 'นักเรียนนายเรืออากาศ', '1');
INSERT INTO `td_pname` VALUES ('46', 'นักเรียนนายเรืออากาศหญิง', '2');
INSERT INTO `td_pname` VALUES ('47', 'นาง', '2');
INSERT INTO `td_pname` VALUES ('48', 'นาย', '1');
INSERT INTO `td_pname` VALUES ('49', 'นาวาโท', '1');
INSERT INTO `td_pname` VALUES ('50', 'นาวาโทหญิง', '2');
INSERT INTO `td_pname` VALUES ('51', 'นาวาอากาศตรี', '1');
INSERT INTO `td_pname` VALUES ('52', 'นาวาอากาศตรีหญิง', '2');
INSERT INTO `td_pname` VALUES ('53', 'นาวาอากาศโท', '1');
INSERT INTO `td_pname` VALUES ('54', 'นาวาอากาศโทหญิง', '2');
INSERT INTO `td_pname` VALUES ('55', 'นาวาอากาศเอก', '1');
INSERT INTO `td_pname` VALUES ('56', 'นาวาอากาศเอกหญิง', '2');
INSERT INTO `td_pname` VALUES ('57', 'นาวาเอก', '1');
INSERT INTO `td_pname` VALUES ('58', 'นาวาเอกหญิง', '2');
INSERT INTO `td_pname` VALUES ('59', 'บาทหลวง', '1');
INSERT INTO `td_pname` VALUES ('60', 'พ.จ.ต.', '1');
INSERT INTO `td_pname` VALUES ('61', 'พ.จ.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('62', 'พ.จ.ท.', '1');
INSERT INTO `td_pname` VALUES ('63', 'พ.จ.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('64', 'พ.จ.อ.', '1');
INSERT INTO `td_pname` VALUES ('65', 'พ.จ.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('66', 'พ.ญ.', '2');
INSERT INTO `td_pname` VALUES ('67', 'พ.ต.', '1');
INSERT INTO `td_pname` VALUES ('68', 'พ.ต.ต.', '1');
INSERT INTO `td_pname` VALUES ('69', 'พ.ต.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('70', 'พ.ต.ท.', '1');
INSERT INTO `td_pname` VALUES ('71', 'พ.ต.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('72', 'พ.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('73', 'พ.ต.อ.', '1');
INSERT INTO `td_pname` VALUES ('74', 'พ.ต.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('75', 'พ.ท.', '1');
INSERT INTO `td_pname` VALUES ('76', 'พ.ท.น.พ.', '1');
INSERT INTO `td_pname` VALUES ('77', 'พ.ท.น.พ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('78', 'พ.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('79', 'พ.อ.', '1');
INSERT INTO `td_pname` VALUES ('80', 'พ.อ.พิเศษ', '1');
INSERT INTO `td_pname` VALUES ('81', 'พ.อ.พิเศษหญิง', '2');
INSERT INTO `td_pname` VALUES ('82', 'พ.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('83', 'พระ', '1');
INSERT INTO `td_pname` VALUES ('84', 'พระครู', '1');
INSERT INTO `td_pname` VALUES ('85', 'พระครูใบฎีกา', '1');
INSERT INTO `td_pname` VALUES ('86', 'พระครูปลัด', '1');
INSERT INTO `td_pname` VALUES ('87', 'พระปริยัติ', '1');
INSERT INTO `td_pname` VALUES ('88', 'พระมหา', '1');
INSERT INTO `td_pname` VALUES ('89', 'พระสมุห์', '1');
INSERT INTO `td_pname` VALUES ('90', 'พระอธิการ', '1');
INSERT INTO `td_pname` VALUES ('91', 'พล.ต', '1');
INSERT INTO `td_pname` VALUES ('92', 'พล.ต.ต.', '1');
INSERT INTO `td_pname` VALUES ('93', 'พล.ต.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('94', 'พล.ตหญิง', '2');
INSERT INTO `td_pname` VALUES ('95', 'พล.ท.', '1');
INSERT INTO `td_pname` VALUES ('96', 'พล.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('97', 'พล.ร.ต.', '1');
INSERT INTO `td_pname` VALUES ('98', 'พล.ร.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('99', 'พล.อ.', '1');
INSERT INTO `td_pname` VALUES ('100', 'พล.อ.ต.', '1');
INSERT INTO `td_pname` VALUES ('101', 'พล.อ.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('102', 'พล.อ.ท.', '1');
INSERT INTO `td_pname` VALUES ('103', 'พล.อ.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('104', 'พล.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('105', 'พล.อ.อ.', '1');
INSERT INTO `td_pname` VALUES ('106', 'พล.อ.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('107', 'พลตำรวจ', '1');
INSERT INTO `td_pname` VALUES ('108', 'พลตำรวจสมัคร', '1');
INSERT INTO `td_pname` VALUES ('109', 'พลตำรวจสมัครหญิง', '2');
INSERT INTO `td_pname` VALUES ('110', 'พลตำรวจสำรอง', '1');
INSERT INTO `td_pname` VALUES ('111', 'พลตำรวจสำรองพิเศษ', '1');
INSERT INTO `td_pname` VALUES ('112', 'พลตำรวจสำรองพิเศษหญิง', '2');
INSERT INTO `td_pname` VALUES ('113', 'พลตำรวจสำรองหญิง', '2');
INSERT INTO `td_pname` VALUES ('114', 'พลตำรวจหญิง', '2');
INSERT INTO `td_pname` VALUES ('115', 'พลทหาร', '1');
INSERT INTO `td_pname` VALUES ('116', 'พลทหารหญิง', '2');
INSERT INTO `td_pname` VALUES ('117', 'พลฯทหารเรือ', '1');
INSERT INTO `td_pname` VALUES ('118', 'พลฯทหารเรือหญิง', '2');
INSERT INTO `td_pname` VALUES ('119', 'พลฯทหารอากาศ', '1');
INSERT INTO `td_pname` VALUES ('120', 'พลฯทหารอากาศหญิง', '2');
INSERT INTO `td_pname` VALUES ('121', 'พันจ่าอากาศตรีหญิง', '2');
INSERT INTO `td_pname` VALUES ('122', 'พันจ่าอากาศตรี', '1');
INSERT INTO `td_pname` VALUES ('123', 'พันจ่าอากาศโทหญิง', '2');
INSERT INTO `td_pname` VALUES ('124', 'พันจ่าอากาศโท', '1');
INSERT INTO `td_pname` VALUES ('125', 'พันจ่าอากาศเอกหญิง', '2');
INSERT INTO `td_pname` VALUES ('126', 'พันจ่าอากาศเอก', '1');
INSERT INTO `td_pname` VALUES ('127', 'ม.จ.', '1');
INSERT INTO `td_pname` VALUES ('128', 'ม.ร.ว.', '1');
INSERT INTO `td_pname` VALUES ('129', 'ม.ล.', '1');
INSERT INTO `td_pname` VALUES ('130', 'แม่ชี', '2');
INSERT INTO `td_pname` VALUES ('131', 'ร.ต.', '1');
INSERT INTO `td_pname` VALUES ('132', 'ร.ต.ต.', '1');
INSERT INTO `td_pname` VALUES ('133', 'ร.ต.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('134', 'ร.ต.ท.', '1');
INSERT INTO `td_pname` VALUES ('135', 'ร.ต.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('136', 'ร.ต.ม.ล.', '1');
INSERT INTO `td_pname` VALUES ('137', 'ร.ต.ม.ล.หญิง', '2');
INSERT INTO `td_pname` VALUES ('138', 'ร.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('139', 'ร.ต.อ.', '1');
INSERT INTO `td_pname` VALUES ('140', 'ร.ต.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('141', 'ร.ท.', '1');
INSERT INTO `td_pname` VALUES ('142', 'ร.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('143', 'ร.อ.', '1');
INSERT INTO `td_pname` VALUES ('144', 'ร.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('145', 'เรืออากาศตรี', '1');
INSERT INTO `td_pname` VALUES ('146', 'เรืออากาศตรีหญิง', '2');
INSERT INTO `td_pname` VALUES ('147', 'เรืออากาศโท', '1');
INSERT INTO `td_pname` VALUES ('148', 'เรืออากาศโทหญิง', '2');
INSERT INTO `td_pname` VALUES ('149', 'เรืออากาศเอก', '1');
INSERT INTO `td_pname` VALUES ('150', 'เรืออากาศเอกหญิง', '2');
INSERT INTO `td_pname` VALUES ('151', 'ว่าที่ น.ต.', '1');
INSERT INTO `td_pname` VALUES ('152', 'ว่าที่ น.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('153', 'ว่าที่ น.อ.', '1');
INSERT INTO `td_pname` VALUES ('154', 'ว่าที่ น.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('155', 'ว่าที่ พ.ต.', '1');
INSERT INTO `td_pname` VALUES ('156', 'ว่าที่ พ.ต.ต.', '1');
INSERT INTO `td_pname` VALUES ('157', 'ว่าที่ พ.ต.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('158', 'ว่าที่ พ.ต.ท.', '1');
INSERT INTO `td_pname` VALUES ('159', 'ว่าที่ พ.ต.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('160', 'ว่าที่ พ.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('161', 'ว่าที่ พ.ท.', '1');
INSERT INTO `td_pname` VALUES ('162', 'ว่าที่ พ.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('163', 'ว่าที่ พ.อ.', '1');
INSERT INTO `td_pname` VALUES ('164', 'ว่าที่ พ.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('165', 'ว่าที่ ร.ต.', '1');
INSERT INTO `td_pname` VALUES ('166', 'ว่าที่ ร.ต.ต.', '1');
INSERT INTO `td_pname` VALUES ('167', 'ว่าที่ ร.ต.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('168', 'ว่าที่ ร.ต.ท.', '1');
INSERT INTO `td_pname` VALUES ('169', 'ว่าที่ ร.ต.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('170', 'ว่าที่ ร.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('171', 'ว่าที่ ร.ต.อ.', '1');
INSERT INTO `td_pname` VALUES ('172', 'ว่าที่ ร.ต.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('173', 'ว่าที่ ร.ท.', '1');
INSERT INTO `td_pname` VALUES ('174', 'ว่าที่ ร.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('175', 'ว่าที่ ร.อ.', '1');
INSERT INTO `td_pname` VALUES ('176', 'ว่าที่ ร.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('177', 'ว่าที่นาวาอากาศตรีหญิง', '2');
INSERT INTO `td_pname` VALUES ('178', 'ว่าที่นาวาอากาศตรี', '1');
INSERT INTO `td_pname` VALUES ('179', 'ว่าที่เรืออากาศตรีหญิง', '2');
INSERT INTO `td_pname` VALUES ('180', 'ว่าที่เรืออากาศตรี', '1');
INSERT INTO `td_pname` VALUES ('181', 'ว่าที่เรืออากาศโท', '1');
INSERT INTO `td_pname` VALUES ('182', 'ว่าที่เรืออากาศโทหญิง', '2');
INSERT INTO `td_pname` VALUES ('183', 'ว่าที่เรืออากาศเอก', '1');
INSERT INTO `td_pname` VALUES ('184', 'ว่าที่เรืออากาศเอกหญิง', '2');
INSERT INTO `td_pname` VALUES ('185', 'ศจ.น.พ.', '1');
INSERT INTO `td_pname` VALUES ('186', 'ส.ต.', '1');
INSERT INTO `td_pname` VALUES ('187', 'ส.ต.ต.', '1');
INSERT INTO `td_pname` VALUES ('188', 'ส.ต.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('189', 'ส.ต.ท.', '1');
INSERT INTO `td_pname` VALUES ('190', 'ส.ต.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('191', 'ส.ต.หญิง', '2');
INSERT INTO `td_pname` VALUES ('192', 'ส.ต.อ.', '1');
INSERT INTO `td_pname` VALUES ('193', 'ส.ต.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('194', 'ส.ท.', '1');
INSERT INTO `td_pname` VALUES ('195', 'ส.ท.หญิง', '2');
INSERT INTO `td_pname` VALUES ('196', 'ส.อ.', '1');
INSERT INTO `td_pname` VALUES ('197', 'ส.อ.หญิง', '2');
INSERT INTO `td_pname` VALUES ('198', 'สามเณร', '1');
INSERT INTO `td_pname` VALUES ('199', 'หม่อม', '2');
INSERT INTO `td_pname` VALUES ('200', 'อาสาสมัครทหารพราน', '1');
INSERT INTO `td_pname` VALUES ('201', 'อาสาสมัครทหารพราน หญิง', '2');

-- ----------------------------
-- Table structure for td_product
-- ----------------------------
DROP TABLE IF EXISTS `td_product`;
CREATE TABLE `td_product` (
  `prd_id` int(11) NOT NULL AUTO_INCREMENT,
  `prd_type_id` int(11) NOT NULL COMMENT 'product_type_id',
  `prd_name` varchar(150) NOT NULL,
  `prd_detail` text NOT NULL,
  `prd_price` float(10,2) NOT NULL,
  `prd_img` varchar(100) DEFAULT NULL,
  `prd_view` int(11) DEFAULT NULL COMMENT 'Product View Count',
  `prd_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prd_reg_m_id` int(11) DEFAULT NULL COMMENT 'User Product Add',
  `prd_m_edit` varchar(50) DEFAULT NULL,
  `prd_m_edit_date` datetime NOT NULL,
  PRIMARY KEY (`prd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of td_product
-- ----------------------------
INSERT INTO `td_product` VALUES ('1', '4', 'กางเกงลิงชาย', 'กางเกงลิงชาย ใสส่สบาย', '599.00', 'prd_img163086393320200730_190454.png', null, '2020-07-27 12:11:12', '1', 'กฤษกร', '2020-07-30 19:04:13');
INSERT INTO `td_product` VALUES ('2', '1', 'DMAX', 'รถยนต์มือ 8 คุณภาพบ้าบอ', '7964655.00', 'prd_img164680784720200731_173735.png', null, '2020-07-27 12:17:20', '1', null, '2020-07-28 17:33:50');
INSERT INTO `td_product` VALUES ('3', '2', 'OPPO100', ' sopppljoljmll ljoljjlml                                 ', '9900.00', 'prd_img82953363620200728_155915.png', null, '2020-07-27 12:43:11', '1', null, '2020-07-28 17:33:50');
INSERT INTO `td_product` VALUES ('4', '4', 'ยกซงหุ้มเกราะ', 'ยกซงหุ้มเกราะ ป้องกันอาวุธปืน m16', '590.00', 'prd_img180662764820200731_173816.png', null, '2020-07-27 12:44:14', '1', null, '2020-07-28 17:33:50');
INSERT INTO `td_product` VALUES ('5', '7', 'computer Notebook', 'Notebook   drgdhgdhh    ', '89000.00', 'prd_img126168200520200728_180501.png', null, '2020-07-27 12:44:16', '1', 'สิริยาภรณ์', '2020-07-28 18:04:10');
INSERT INTO `td_product` VALUES ('6', '10', 'กระเป๋าเงิน หนังแท้', 'ghdghdththhd ดาเหส่ว่วผดาาอิผิงพ  ', '599.00', 'prd_img175104841920200727_183738.png', null, '2020-07-27 14:19:36', '1', 'เบญญาภา', '2020-07-30 18:05:08');
INSERT INTO `td_product` VALUES ('7', '9', 'ววาย', 'กดเ้กพั่ะดาีเาอิ่อิม้าส่้                    ', '582.00', 'prd_img8618111120200729_073427.png', null, '2020-07-27 14:41:24', '1', 'เบญญาภา', '2020-07-29 07:31:30');
INSERT INTO `td_product` VALUES ('8', '7', 'yr5ysdgh', 'ersgjffjygkcvhjtfjgykguvmfggfhdgd', '4564.00', 'prd_img186606650020200730_184822.png', null, '2020-07-27 14:46:07', '1', 'สิริยาภรณ์', '2020-07-28 19:27:59');
INSERT INTO `td_product` VALUES ('9', '9', 'เตาผิง', 'หดเสพนยีเนก้าอัไำนร้สรดสเย่วนนดเนหรเหน้อ                            ', '899.00', 'prd_img29986528920200730_184809.png', null, '2020-07-27 18:38:44', '1', 'ศุภณัฐ', '2020-07-30 18:30:16');
INSERT INTO `td_product` VALUES ('10', '2', 'oppo2', 'oppo5 รายการดี', '5900.00', 'prd_img51845634220200730_184752.png', null, '2020-07-28 15:57:42', '1', 'ศุภณัฐ', '2020-07-29 18:52:44');

-- ----------------------------
-- Table structure for td_product_type
-- ----------------------------
DROP TABLE IF EXISTS `td_product_type`;
CREATE TABLE `td_product_type` (
  `prd_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `prd_type_name` varchar(200) DEFAULT NULL,
  `prd_type_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`prd_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of td_product_type
-- ----------------------------
INSERT INTO `td_product_type` VALUES ('1', 'รถยนต์', '2020-07-27 16:19:35');
INSERT INTO `td_product_type` VALUES ('2', 'โทรศัพท์มือถือ', '2020-07-27 13:24:05');
INSERT INTO `td_product_type` VALUES ('3', 'เสื้อผ้า', '2020-07-27 13:24:05');
INSERT INTO `td_product_type` VALUES ('4', 'ชุดชั้นใน', '2020-07-27 16:19:05');
INSERT INTO `td_product_type` VALUES ('5', 'คอมพิวเตอร์', '2020-07-27 13:24:05');
INSERT INTO `td_product_type` VALUES ('6', 'พัดลม', '2020-07-27 13:24:05');
INSERT INTO `td_product_type` VALUES ('7', 'โน๊ตบุค', '2020-07-27 13:24:05');
INSERT INTO `td_product_type` VALUES ('8', 'รองเท้า', '2020-07-27 14:07:49');
INSERT INTO `td_product_type` VALUES ('9', 'เตาแก๊ส', '2020-07-27 14:07:53');
INSERT INTO `td_product_type` VALUES ('10', 'กระเป๋า', '2020-07-27 14:09:50');

-- ----------------------------
-- Table structure for td_product_update_log
-- ----------------------------
DROP TABLE IF EXISTS `td_product_update_log`;
CREATE TABLE `td_product_update_log` (
  `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ref_p_id` int(11) DEFAULT NULL COMMENT 'id สินค้า',
  `ref_m_id` int(11) DEFAULT NULL COMMENT 'id ผู้แก่ไข',
  `log_date_save` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of td_product_update_log
-- ----------------------------
INSERT INTO `td_product_update_log` VALUES ('1', '10', '3', '2020-07-28 19:28:48');
INSERT INTO `td_product_update_log` VALUES ('2', '8', '3', '2020-07-28 19:29:34');
INSERT INTO `td_product_update_log` VALUES ('3', '1', '4', '2020-07-29 07:31:26');
INSERT INTO `td_product_update_log` VALUES ('4', '7', '5', '2020-07-29 07:35:49');
INSERT INTO `td_product_update_log` VALUES ('5', '10', '4', '2020-07-29 18:57:14');
INSERT INTO `td_product_update_log` VALUES ('6', '1', '5', '2020-07-30 18:02:41');
INSERT INTO `td_product_update_log` VALUES ('7', '6', '5', '2020-07-30 18:06:33');
INSERT INTO `td_product_update_log` VALUES ('8', '9', '5', '2020-07-30 18:07:04');
INSERT INTO `td_product_update_log` VALUES ('9', '9', '4', '2020-07-30 18:31:20');
INSERT INTO `td_product_update_log` VALUES ('10', '9', '4', '2020-07-30 18:31:45');
INSERT INTO `td_product_update_log` VALUES ('11', '1', '9', '2020-07-30 19:05:32');
INSERT INTO `td_product_update_log` VALUES ('12', '1', '9', '2020-07-30 19:06:17');
