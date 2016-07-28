/*
Navicat MySQL Data Transfer

Source Server         : lh
Source Server Version : 50546
Source Host           : 172.30.6.104:3306
Source Database       : longhien

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-07-28 14:58:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for advertising
-- ----------------------------
DROP TABLE IF EXISTS `advertising`;
CREATE TABLE `advertising` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `description` text,
  `type` enum('image','video','flash') DEFAULT 'image',
  `position` varchar(50) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `params` text,
  `order` int(10) DEFAULT '0',
  `created` int(10) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of advertising
-- ----------------------------
INSERT INTO `advertising` VALUES ('5', 'Slide1', '', 'image', 'slide', '/uploads/photos/28-05-2016-CV-10-17-15-AM5749702b44586.jpg', 'http://longhien.com/san-pham/chi-tiet/14-may-danh-bo-nut-dien-tu-2-cambonut-jack-jk-t1900bsk', '', '0', '0', '0');
INSERT INTO `advertising` VALUES ('6', 'Slide2', 'banner', 'image', 'slide', '/uploads/photos/28-05-2016-CV-10-17-26-AM57497036d1363.jpg', '', '', '0', '0', '1');
INSERT INTO `advertising` VALUES ('7', 'Slide3', '', 'image', 'slide', '/uploads/photos/28-05-2016-CV-10-17-33-AM5749703d1beef.jpg', '', '', '0', '0', '0');
INSERT INTO `advertising` VALUES ('8', 'Slide4', '', 'image', 'slide', '/uploads/photos/28-05-2016-CV-10-17-37-AM574970418e21a.jpg', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `images` text,
  `sectionid` int(11) DEFAULT '0',
  `description` text NOT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', '0', 'MÁY MAY 1 KIM', 'may-may-1-kim', null, '3', 'MÁY MAY 1 KIM', '1', '1', '0', null);
INSERT INTO `categories` VALUES ('2', '0', 'MÁY MAY 2 KIM', 'may-may-2-kim', null, '3', 'MÁY MAY 2 KIM', '1', '2', '0', null);
INSERT INTO `categories` VALUES ('3', '0', 'MÁY VẮT SỔ', 'may-vat-so', null, '3', 'MÁY VẮT SỔ', '1', '3', '0', null);
INSERT INTO `categories` VALUES ('4', '0', 'MÁY VIỀN', 'may-vien', null, '3', 'MÁY VIỀN', '1', '4', '0', null);
INSERT INTO `categories` VALUES ('5', '0', 'MÁY NHIỀU KIM', 'may-nhieu-kim', null, '3', 'MÁY NHIỀU KIM', '1', '4', '0', null);
INSERT INTO `categories` VALUES ('6', '0', 'MÁY ĐÍNH NÚT', 'may-dinh-nut', null, '3', 'MÁY ĐÍNH NÚT', '1', '7', '0', null);
INSERT INTO `categories` VALUES ('7', '0', 'MÁY THÙA KHUY', 'may-thua-khuy', null, '3', 'MÁY THÙA KHUY', '1', '9', '0', null);
INSERT INTO `categories` VALUES ('8', '0', 'MÁY ĐÍNH BỌ ĐIỆN TỬ', 'may-dinh-bo-dien-tu', null, '3', 'MÁY ĐÍNH BỌ ĐIỆN TỬ', '1', '10', '0', null);
INSERT INTO `categories` VALUES ('9', '0', 'MÁY LẬP TRÌNH', 'may-lap-trinh', null, '3', 'MÁY LẬP TRÌNH', '1', '11', '0', null);
INSERT INTO `categories` VALUES ('10', '0', 'MÁY BƯỚC', 'may-buoc', null, '3', 'MÁY BƯỚC', '0', '11', '0', null);
INSERT INTO `categories` VALUES ('11', '0', 'MÁY MAY 3 KIM', 'may-may-3-kim', null, '2', 'MÁY MAY 3 KIM', '1', '0', '0', null);
INSERT INTO `categories` VALUES ('12', '0', 'MÁY ĐÍNH CÚC', 'may-dinh-cuc', null, '2', 'MÁY ĐÍNH CÚC', '0', '0', '0', null);

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` text NOT NULL,
  `home` tinyint(1) DEFAULT '0',
  `sectionid` int(11) DEFAULT '0',
  `catid` int(11) DEFAULT '0',
  `created` int(10) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `modified` int(10) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `public_time` int(10) DEFAULT '0',
  `images` text,
  `urls` text,
  `ordering` int(11) DEFAULT '0',
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `hits` int(11) DEFAULT '0',
  `params` text,
  `access` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES ('1', 'Thương hiệu Jack', 'thuong-hieu-jack', '<span style=\"font-size: 13.3333px;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span>', '<span style=\"font-size: 13.3333px;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span><span style=\"font-size: 13.3333px;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span>', '1', '2', null, '1353905254', '0', '1466785037', '0', '1', '0', '/uploads/photos/may-danh-bo-nut-dien-tu-2-cam(bo+nut)-jack-jk-t1900bsk.png', '', '0', '', '', '', '0', 'Array', '0');
INSERT INTO `content` VALUES ('2', 'Cho thuê máy', 'cho-thue-may', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cho thuê máy</span></font><div><img src=\"http://www.vatgia.com/pictures_fullsize/tys1312793354.jpg\"></div>', '0', '4', null, '1353906254', '0', '1469537207', '0', '0', '0', '/uploads/photos/image4.jpg', '', '0', '', '', '', '0', 'Array', '0');
INSERT INTO `content` VALUES ('3', 'Đối tác với Jack', 'doi-tac-voi-jack', '<div><span style=\"font-family: Arial, Verdana; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;\">Link:&nbsp;</span><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\"><a href=\"http://en.chinajack.com/\">http://en.chinajack.com/</a><br>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.</span></font></div>', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '1', '5', null, '1353907254', '0', '1466785144', '0', '1', '0', '/uploads/photos/may-danh-bo-nut-dien-tu-2-cam(bo+nut)-jack-jk-t1900bsk.png', '', '0', '', '', '', '0', 'Array', '0');
INSERT INTO `content` VALUES ('4', 'Giảm giá & Khuyến mãi', 'content-3', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '0', '6', '0', '1353908254', '0', '1354638118', '0', '1', '0', '/uploads/photos/03-05-2016-CV-12-00-48-PM572876d078036.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('5', 'Content 4', 'content-4', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '0', '1', '0', '1353909037', '0', '1353909037', '0', '1', '0', '/uploads/photos/03-05-2016-CV-11-57-16-AM572875fc6b87d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('6', 'Content 1', 'content-1', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '0', '1', '0', '1353909262', '0', '1353909262', '0', '1', '0', '/uploads/photos/03-05-2016-CV-12-00-48-PM572876d078036.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('7', 'Content 2', 'content-2', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '0', '1', '0', '1353909473', '0', '1353909473', '0', '1', '0', '/uploads/photos/03-05-2016-CV-11-57-16-AM572875fc6b87d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('8', 'Content 3', 'content-3', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '0', '1', '0', '1353909661', '0', '1353909661', '0', '1', '0', '/uploads/photos/03-05-2016-CV-12-00-48-PM572876d078036.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('9', 'Content 4', 'content-4', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '0', '1', '0', '1353909765', '0', '1353909765', '0', '1', '0', '/uploads/photos/03-05-2016-CV-11-57-16-AM572875fc6b87d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('10', 'Content 5', 'content-5', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '0', '1', '0', '1353909863', '0', '1353909902', '0', '1', '0', '/uploads/photos/03-05-2016-CV-12-00-48-PM572876d078036.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('11', 'Content 6', 'content-6', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '1', '1', '0', '1354180940', '0', '1354181005', '0', '1', '0', '/uploads/photos/03-05-2016-CV-11-57-16-AM572875fc6b87d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('12', 'Content 7', 'content-7', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '1', '1', '0', '1354181104', '0', '1354181104', '0', '1', '0', '/uploads/photos/03-05-2016-CV-12-00-48-PM572876d078036.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('13', 'Content 8', 'content-8', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '1', '1', '0', '1354181221', '0', '1354181221', '0', '1', '0', '/uploads/photos/03-05-2016-CV-11-57-16-AM572875fc6b87d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('14', 'Content 9', 'content-9', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.<div><br></div>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<div><br></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div><div><span style=\"font-size: 13.3333px;\"><br></span></div><div><span style=\"font-size: 13.3333px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><div style=\"font-size: 13.3333px;\"><br></div><span style=\"font-size: 13.3333px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</span></div>', '1', '1', '0', '1354181507', '0', '1354181507', '0', '1', '0', '/uploads/photos/03-05-2016-CV-11-57-16-AM572875fc6b87d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('15', 'Thương hiệu BAOYU', 'thuong-hieu-baoyu', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Thương hiệu BAOYU</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Thương hiệu BAOYU</span></font>', '0', '2', null, '1466784310', '0', '1466784417', '0', '0', '0', '/uploads/photos/may-trang-tri-(-100-mau)-baoyu-bml-20u53d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('16', 'Thương hiệu ASWIN', 'thuong-hieu-aswin', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Thương hiệu ASWIN</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Thương hiệu ASWIN</span></font>', '0', '2', null, '1466784578', '0', '1466784578', '0', '0', '0', '/uploads/photos/1458366430-img_2604.png', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('17', 'HÀNG ĐÃ QUA SỬ DỤNG', 'hang-da-qua-su-dung', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HÀNG ĐÃ QUA SỬ DỤNG</span></font>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">HÀNG ĐÃ QUA SỬ DỤNG</span></font>', '0', '2', null, '1466784709', '0', '1466784709', '0', '0', '0', '/uploads/photos/de931699c7254262a7248df7211cb30e.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('18', 'Đối tác với Baoyu', 'doi-tac-voi-baoyu', '<span style=\"font-size: 13.3333px;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span>', '<span style=\"font-size: 13.3333px;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span><span style=\"font-size: 13.3333px;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span>', '0', '5', null, '1466784997', '0', '1466784997', '0', '0', '0', '/uploads/photos/may-trang-tri-(-100-mau)-baoyu-bml-20u53d.jpg', null, '0', null, null, null, '0', 'Array', '0');
INSERT INTO `content` VALUES ('19', 'Bán máy mới và máy đã qua sử dụng', 'ban-may-moi-va-may-da-qua-su-dung', '<span style=\"color: rgb(45, 45, 45); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 20px; background-color: rgb(255, 255, 255);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span>', '<span style=\"color: rgb(45, 45, 45); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 20px; background-color: rgb(255, 255, 255);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span><div><span style=\"color: rgb(45, 45, 45); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 20px; background-color: rgb(255, 255, 255);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span></div><div><span style=\"color: rgb(45, 45, 45); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 20px; background-color: rgb(255, 255, 255);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span></div><div><span style=\"color: rgb(45, 45, 45); font-family: Arial, Helvetica, sans-serif; font-size: 13.3333px; line-height: 20px; background-color: rgb(255, 255, 255);\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.&nbsp;</span></div>', '0', '4', null, '1466785373', '0', '1466785373', '0', '0', '0', null, null, '0', null, null, null, '0', null, '0');

-- ----------------------------
-- Table structure for made_in
-- ----------------------------
DROP TABLE IF EXISTS `made_in`;
CREATE TABLE `made_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of made_in
-- ----------------------------
INSERT INTO `made_in` VALUES ('1', 'Đài Loan ');
INSERT INTO `made_in` VALUES ('2', 'China');
INSERT INTO `made_in` VALUES ('3', 'Japan');

-- ----------------------------
-- Table structure for manufactory
-- ----------------------------
DROP TABLE IF EXISTS `manufactory`;
CREATE TABLE `manufactory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `made_in` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `made_in` (`made_in`),
  CONSTRAINT `manufactory_ibfk_1` FOREIGN KEY (`made_in`) REFERENCES `made_in` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manufactory
-- ----------------------------
INSERT INTO `manufactory` VALUES ('1', 'JACK', '2');
INSERT INTO `manufactory` VALUES ('2', 'BAOYU', '2');
INSERT INTO `manufactory` VALUES ('3', 'ASWIN', '2');

-- ----------------------------
-- Table structure for pay_detail
-- ----------------------------
DROP TABLE IF EXISTS `pay_detail`;
CREATE TABLE `pay_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `total_price` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_detail
-- ----------------------------
INSERT INTO `pay_detail` VALUES ('2', '135398842550b439495f177', 'Thanh', 'QB', '54455', 'Thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989077');
INSERT INTO `pay_detail` VALUES ('3', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989085');
INSERT INTO `pay_detail` VALUES ('4', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989088');
INSERT INTO `pay_detail` VALUES ('5', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989088');
INSERT INTO `pay_detail` VALUES ('6', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989090');
INSERT INTO `pay_detail` VALUES ('7', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989094');
INSERT INTO `pay_detail` VALUES ('8', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989095');
INSERT INTO `pay_detail` VALUES ('9', '135398842550b439495f177', 'Thanh', 'tran phu', '4545', 'thanh@yahoo.com', '7', '1', null, null, '70000', '1', '1353989095');
INSERT INTO `pay_detail` VALUES ('10', '135398942150b43d2d8b82f', 'Vo Dinh Thanh', '270 B Tan Binh p15 Quan Tan Binh. Tp .Ho Chi Minh', '0982 255 252', 'Thanh@yahoo.com.vn', '8', '1', null, null, '1500000', '1', '1353989421');
INSERT INTO `pay_detail` VALUES ('11', '135398942150b43d2d8b82f', 'Vo Dinh Thanh', '270 B Tan Binh p15 Quan Tan Binh. Tp .Ho Chi Minh', '0982 255 252', 'Thanh@yahoo.com.vn', '7', '1', null, null, '70000', '1', '1353989421');
INSERT INTO `pay_detail` VALUES ('12', '135398942150b43d2d8b82f', 'Phuong', 'Tran Phu Q5', '085455454', 'Phuong@gmail.com', '7', '5', null, null, '350000', '1', '1353989717');
INSERT INTO `pay_detail` VALUES ('13', '135398942150b43d2d8b82f', 'Phuong', 'Tran Phu Q5', '085455454', 'Phuong@gmail.com', '8', '1', null, null, '1500000', '1', '1353989717');
INSERT INTO `pay_detail` VALUES ('14', '135398942150b43d2d8b82f', 'Phuong', 'Tran Phu Q5', '085455454', 'Phuong@gmail.com', '7', '1', null, null, '70000', '1', '1353989717');
INSERT INTO `pay_detail` VALUES ('15', '135410990050b613cc44af3', 'Thanh', 'TB', '164654654654', 'thanh', '1', '2', null, null, '20000', '1', '1354110171');
INSERT INTO `pay_detail` VALUES ('16', '135410990050b613cc44af3', 'Thanh', 'TB', '164654654654', 'thanh', '9', '1', null, null, '15', '1', '1354110171');
INSERT INTO `pay_detail` VALUES ('17', '135410990050b613cc44af3', 'Thanh', 'TB', '164654654654', 'thanh', '12', '1', null, null, '700', '1', '1354110171');
INSERT INTO `pay_detail` VALUES ('18', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '1', '2', null, null, '20000', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('19', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '9', '1', null, null, '15', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('20', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '12', '1', null, null, '700', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('21', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '1', '2', null, null, '20000', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('22', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '9', '1', null, null, '15', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('23', '135410990050b613cc44af3', 'thnanh', 'TB', '7546464', 'thanh', '12', '1', null, null, '700', '1', '1354110214');
INSERT INTO `pay_detail` VALUES ('24', '135410990050b613cc44af3', 'tjhanh', 'sdsdslk', '4846459', 'thanh', '1', '2', null, null, '20000', '1', '1354110259');
INSERT INTO `pay_detail` VALUES ('25', '135410990050b613cc44af3', 'tjhanh', 'sdsdslk', '4846459', 'thanh', '12', '1', null, null, '700', '1', '1354110259');
INSERT INTO `pay_detail` VALUES ('26', '135411084050b61778613f8', 'Phuong', 'TT', '46465164646', 'Phuong@yahoo.com', '1', '2', null, null, '20000', '1', '1354110872');
INSERT INTO `pay_detail` VALUES ('27', '135411084050b61778613f8', 'Phuong', 'TT', '46465164646', 'Phuong@yahoo.com', '12', '1', null, null, '700', '1', '1354110872');
INSERT INTO `pay_detail` VALUES ('28', '135411084050b61778613f8', 'Tuan', 'BT', '84464984984', 'Tuan@gmail.com', '1', '2', null, null, '20000', '1', '1354111174');
INSERT INTO `pay_detail` VALUES ('29', '137157029351c08075a725e', 'abc', '123 abc', '123123q', 'aaa@aaaa.com', '18', '12', '233', 'Xanh', '7872', '1', '1371570429');

-- ----------------------------
-- Table structure for pcounter_save
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_save`;
CREATE TABLE `pcounter_save` (
  `save_name` varchar(10) NOT NULL,
  `save_value` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcounter_save
-- ----------------------------
INSERT INTO `pcounter_save` VALUES ('day_time', '2457598');
INSERT INTO `pcounter_save` VALUES ('max_count', '33');
INSERT INTO `pcounter_save` VALUES ('counter', '1407');
INSERT INTO `pcounter_save` VALUES ('yesterday', '24');
INSERT INTO `pcounter_save` VALUES ('online', '1');
INSERT INTO `pcounter_save` VALUES ('today', '1');
INSERT INTO `pcounter_save` VALUES ('max_time', '1469361600');

-- ----------------------------
-- Table structure for pcounter_users
-- ----------------------------
DROP TABLE IF EXISTS `pcounter_users`;
CREATE TABLE `pcounter_users` (
  `user_ip` varchar(39) NOT NULL,
  `user_time` int(10) unsigned NOT NULL,
  UNIQUE KEY `user_ip` (`user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pcounter_users
-- ----------------------------
INSERT INTO `pcounter_users` VALUES ('\'66.249.71.151\'', '1469687453');
INSERT INTO `pcounter_users` VALUES ('\'203.113.152.5\'', '1469665568');
INSERT INTO `pcounter_users` VALUES ('\'203.113.152.4\'', '1469666666');
INSERT INTO `pcounter_users` VALUES ('\'66.249.71.144\'', '1469690234');
INSERT INTO `pcounter_users` VALUES ('\'66.249.79.136\'', '1469668713');
INSERT INTO `pcounter_users` VALUES ('\'66.249.69.182\'', '1469669255');
INSERT INTO `pcounter_users` VALUES ('\'66.249.71.137\'', '1469687611');
INSERT INTO `pcounter_users` VALUES ('\'66.249.69.180\'', '1469669434');
INSERT INTO `pcounter_users` VALUES ('\'157.55.39.50\'', '1469670646');
INSERT INTO `pcounter_users` VALUES ('\'66.249.79.140\'', '1469670746');
INSERT INTO `pcounter_users` VALUES ('\'66.249.79.132\'', '1469672947');
INSERT INTO `pcounter_users` VALUES ('\'116.102.240.32\'', '1469678449');
INSERT INTO `pcounter_users` VALUES ('\'203.113.152.7\'', '1469682164');
INSERT INTO `pcounter_users` VALUES ('\'177.144.13.114\'', '1469685746');
INSERT INTO `pcounter_users` VALUES ('\'10.0.0.1\'', '1469692950');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` text NOT NULL,
  `home` tinyint(1) DEFAULT '0',
  `sectionid` int(11) DEFAULT '0',
  `catid` int(11) DEFAULT '0',
  `manufactory_id` int(11) DEFAULT '0',
  `made_in` int(11) DEFAULT '0',
  `created` int(10) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `modified` int(10) DEFAULT '0',
  `modified_by` int(11) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  `public_time` int(10) DEFAULT '0',
  `images` text,
  `urls` text,
  `ordering` int(11) DEFAULT '0',
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `hits` int(11) DEFAULT '0',
  `params` text,
  `access` tinyint(1) DEFAULT '0',
  `price` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `price_new` varchar(20) DEFAULT NULL,
  `promotions` tinyint(1) DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `fast_selling` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Máy 1 kim dao xén moto liền trục, không dầu JACK  JK-5558WB', 'may-1-kim-dao-xen-moto-lien-truc-khong-dau-jack-jk-5558wb', 'Direct drive intergrated lockstich sewing machine<div><br></div>', '<div style=\"font-family: Arial, Verdana; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;\">Direct drive intergrated lockstich sewing machine</div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; border-collapse: collapse; width: 283pt;\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"24\" style=\"mso-height-source:userset;height:18.0pt\">\r\n  <td height=\"24\" class=\"xl68\" width=\"186\" style=\"height:18.0pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"24\" style=\"mso-height-source:userset;height:18.0pt\">\r\n  <td height=\"24\" class=\"xl70\" width=\"186\" style=\"height:18.0pt;border-top:none;\r\n  width:140pt\">Needle position</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Vị\r\n  trí dừng kim</td>\r\n </tr>\r\n <tr height=\"24\" style=\"mso-height-source:userset;height:18.0pt\">\r\n  <td height=\"24\" class=\"xl70\" width=\"186\" style=\"height:18.0pt;border-top:none;\r\n  width:140pt\">Half stitch&nbsp;</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">thêm\r\n  mũi</td>\r\n </tr>\r\n <tr height=\"24\" style=\"mso-height-source:userset;height:18.0pt\">\r\n  <td height=\"24\" class=\"xl70\" width=\"186\" style=\"height:18.0pt;border-top:none;\r\n  width:140pt\">Safety switch</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Cảnh\r\n  báo an toàn</td>\r\n </tr>\r\n <tr height=\"19\" style=\"mso-height-source:userset;height:14.25pt\">\r\n  <td height=\"19\" class=\"xl70\" width=\"186\" style=\"height:14.25pt;border-top:none;\r\n  width:140pt\">Led light</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Đèn\r\n  LED</td>\r\n </tr></tbody></table>', '0', '3', '1', '0', '0', '1353736877', '0', '1469540184', '0', '1', '0', '/uploads/photos/may-1-kim-dao-xen-moto-lien-truc,-khong-dau-jack-jk-5558wb.png', null, '1', null, null, null, '0', '\"\\\"\\\\\\\"{\\\\\\\\\\\\\\\"file\\\\\\\\\\\\\\\":{\\\\\\\\\\\\\\\"name\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"M\\\\\\\\\\\\\\\\u00e1y 1 kim dao x\\\\\\\\\\\\\\\\u00e9n moto li\\\\\\\\\\\\\\\\u1ec1n tr\\\\\\\\\\\\\\\\u1ee5c, kh\\\\\\\\\\\\\\\\u00f4ng d\\\\\\\\\\\\\\\\u1ea7u JACK  JK-5558WB.png\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"type\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"image\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\/png\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"size\\\\\\\\\\\\\\\":312237,\\\\\\\\\\\\\\\"width\\\\\\\\\\\\\\\":800,\\\\\\\\\\\\\\\"height\\\\\\\\\\\\\\\":533,\\\\\\\\\\\\\\\"extension\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"png\\\\\\\\\\\\\\\"}}\\\\\\\"\\\"\"', '0', '0', null, null, '0', '1', '0', '0');
INSERT INTO `products` VALUES ('2', 'Máy 1 kim dao xén, moto liền trục, cắt chỉ tự  động, JACK JK-5559WE', 'may-1-kim-dao-xen-moto-lien-truc-cat-chi-tu-dong-jack-jk-5559we', '<div><span style=\"font-size: 13.3333px; font-family: Arial, Verdana;\">Direct drive intergrated Automatic lockstitch machine</span></div>', '<div><span style=\"font-size: 13.3333px; font-family: Arial, Verdana;\">Direct drive intergrated Automatic lockstitch machine</span></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl68\" width=\"186\" style=\"height:18.95pt;width:140pt\">Integrated\r\n  direct drive</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục\r\n  tích hợp</td>\r\n </tr>\r\n <tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl68\" width=\"186\" style=\"height:18.95pt;border-top:none;\r\n  width:140pt\">Auto foot lifter</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động nâng chân vịt.</td>\r\n </tr>\r\n <tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl68\" width=\"186\" style=\"height:18.95pt;border-top:none;\r\n  width:140pt\">Auto-trimmer</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động cắt chỉ</td>\r\n </tr>\r\n <tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl68\" width=\"186\" style=\"height:18.95pt;border-top:none;\r\n  width:140pt\">Auto-reverse</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động lại mũi</td>\r\n </tr>\r\n <tr height=\"21\" style=\"mso-height-source:userset;height:15.75pt\">\r\n  <td height=\"21\" class=\"xl68\" width=\"186\" style=\"height:15.75pt;border-top:none;\r\n  width:140pt\">Electronic thread tension</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Cụm\r\n  đồng tiền điện tử</td>\r\n </tr></tbody></table></div>', '0', '2', '2', '0', '0', '1353737877', '0', '1466064400', '0', '1', '0', '/uploads/photos/may-1-kim-dao-xen,-moto-lien-truc,-cat-chi-tu-dong,-jack-jk-5559we.png', null, '2', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y 1 kim dao x\\u00e9n, moto li\\u1ec1n tr\\u1ee5c, c\\u1eaft ch\\u1ec9 t\\u1ef1  \\u0111\\u1ed9ng, JACK JK-5559WE.png\",\"type\":\"image\\/png\",\"size\":1173783,\"width\":1360,\"height\":907,\"extension\":\"png\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('3', 'Máy 1 kim điện tử, nâng chân vịt tự động,  cắt chỉ tự động BAOYU BML-9300-D4', 'may-1-kim-dien-tu-nang-chan-vit-tu-dong-cat-chi-tu-dong-baoyu-bml-9300-d4', 'Computerized lockstitch machine with automatic presser foot lifter', '<span style=\"font-size: 13.3333px;\">Computerized lockstitch machine with automatic presser foot lifter</span><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl68\" width=\"186\" style=\"height:18.95pt;width:140pt\">Good\r\n  looking</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Hình dáng đẹp</td>\r\n </tr>\r\n <tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl68\" width=\"186\" style=\"height:18.95pt;border-top:none;\r\n  width:140pt\">Speaking</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">biết\r\n  nói</td>\r\n </tr>\r\n <tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl68\" width=\"186\" style=\"height:18.95pt;border-top:none;\r\n  width:140pt\">Easy to use</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">dễ\r\n  sử dụng</td>\r\n </tr></tbody></table>', '0', '3', '1', '0', '0', '1353738877', '0', '1469538039', '0', '1', '0', '/uploads/photos/may-1-kim-dien-tu,-nang-chan-vit-tu-dong,-cat-chi-tu-dong-baoyu-bml-9300-d4.jpg', null, '3', null, null, null, '0', '\"\\\"{\\\\\\\"file\\\\\\\":{\\\\\\\"name\\\\\\\":\\\\\\\"M\\\\\\\\u00e1y 1 kim \\\\\\\\u0111i\\\\\\\\u1ec7n t\\\\\\\\u1eed, n\\\\\\\\u00e2ng ch\\\\\\\\u00e2n v\\\\\\\\u1ecbt t\\\\\\\\u1ef1 \\\\\\\\u0111\\\\\\\\u1ed9ng,  c\\\\\\\\u1eaft ch\\\\\\\\u1ec9 t\\\\\\\\u1ef1 \\\\\\\\u0111\\\\\\\\u1ed9ng BAOYU BML-9300-D4.JPG\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"image\\\\\\\\\\\\\\/jpeg\\\\\\\",\\\\\\\"size\\\\\\\":2273445,\\\\\\\"width\\\\\\\":4032,\\\\\\\"height\\\\\\\":3024,\\\\\\\"extension\\\\\\\":\\\\\\\"JPG\\\\\\\"}}\\\"\"', '0', '0', null, null, '0', '0', '0', '0');
INSERT INTO `products` VALUES ('4', 'Máy 2 kim cố định ố nhỏ , cắt chỉ tự  động JACK JK-58420D-005-405', 'may-2-kim-co-dinh-o-nho-cat-chi-tu-dong-jack-jk-58420d-005-405', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-58420C-003/-005</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle lockstitch machine fix needle bar with small hook</span></font></div>', '<span style=\"font-size: 13.3333px;\">Double needle lockstitch machine fix needle bar with small hook</span><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"64\" style=\"mso-height-source:userset;height:48.0pt\">\r\n  <td rowspan=\"2\" height=\"128\" class=\"xl68\" width=\"186\" style=\"\">-003: for light duty<br>\r\n    -005: for heavy duty<br>\r\n    small hook<br>\r\n    Semi-dry</td>\r\n  <td rowspan=\"2\" class=\"xl70\" width=\"190\" style=\"\">-003: chất liệu mỏng<br>\r\n    -005: chất liệu dày.<br>\r\n    ổ nhỏ<br>\r\n    Dầu khô</td>\r\n </tr>\r\n <tr height=\"64\" style=\"mso-height-source:userset;height:48.0pt\">\r\n </tr></tbody></table></div>', '0', '2', '2', '0', '0', '1353739877', '0', '1466064711', '0', '1', '0', '/uploads/photos/may-2-kim-co-dinh-o-nho-,-cat-chi-tu-dong-jack-jk-58420d-005-405.jpg', null, '4', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y 2 kim c\\u1ed1 \\u0111\\u1ecbnh \\u1ed1 nh\\u1ecf , c\\u1eaft ch\\u1ec9 t\\u1ef1  \\u0111\\u1ed9ng JACK JK-58420D-005-405.JPG\",\"type\":\"image\\/jpeg\",\"size\":94865,\"width\":1280,\"height\":850,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '0', '0');
INSERT INTO `products` VALUES ('5', 'Máy 2 kim cơ động ổ to, cắt chỉ tự động,  JACK JK-58750D-005-405', 'may-2-kim-co-dong-o-to-cat-chi-tu-dong-jack-jk-58750d-005-405', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-58450C-003/-005</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle lockstitch machine split needle bar with small hook</span></font></div>', '<span style=\"font-size: 13.3333px;\">Double needle lockstitch machine split needle bar with small hook</span><div><span style=\"font-size: 13.3333px;\"><br></span>\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"64\" style=\"mso-height-source:userset;height:48.0pt\">\r\n  <td rowspan=\"2\" height=\"128\" class=\"xl68\" width=\"186\" style=\"\">-003: for light duty<br>\r\n    -005: for heavy duty<br>\r\n    small hook<br>\r\n    Semi-dry</td>\r\n  <td rowspan=\"2\" class=\"xl70\" width=\"190\" style=\"\">-003: chất liệu mỏng<br>\r\n    -005: chất liệu dày.<br>\r\n    ổ nhỏ<br>\r\n    Dầu khô</td>\r\n </tr>\r\n <tr height=\"64\" style=\"mso-height-source:userset;height:48.0pt\">\r\n </tr></tbody></table>\r\n</div>', '0', '2', '2', '0', '0', '1353740877', '0', '1466064789', '0', '1', '0', '/uploads/photos/may-2-kim-co-dong-o-to,-cat-chi-tu-dong,-jack-jk-58750d-005-405.png', null, '5', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y 2 kim c\\u01a1 \\u0111\\u1ed9ng \\u1ed5 to, c\\u1eaft ch\\u1ec9 t\\u1ef1 \\u0111\\u1ed9ng,  JACK JK-58750D-005-405.png\",\"type\":\"image\\/png\",\"size\":7561293,\"width\":4288,\"height\":2848,\"extension\":\"png\"}}', '0', '0', null, null, '0', '0', '0', '1');
INSERT INTO `products` VALUES ('6', 'Máy 2 kim di động BAOYU BML-845', 'may-2-kim-di-dong-baoyu-bml-845', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-58720C-003/-005</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle lockstitch machine fix needle bar with big hook</span></font></div>', '<span style=\"font-size: 13.3333px;\">Double needle lockstitch machine fix needle bar with big hook</span><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"64\" style=\"mso-height-source:userset;height:48.0pt\">\r\n  <td rowspan=\"2\" height=\"128\" class=\"xl68\" width=\"186\" style=\"\">-003: for light duty<br>\r\n    -005: for heavy duty<br>\r\n    big hook<br>\r\n    Semi-dry</td>\r\n  <td rowspan=\"2\" class=\"xl70\" width=\"190\" style=\"\">-003: chất liệu mỏng<br>\r\n    -005: chất liệu dày.<br>\r\n    ổ lớn<br>\r\n    Dầu khô</td>\r\n </tr>\r\n <tr height=\"64\" style=\"mso-height-source:userset;height:48.0pt\">\r\n </tr></tbody></table></div>', '0', '2', '6', '0', '0', '1353741877', '0', '1466064809', '0', '1', '0', '/uploads/photos/may-2-kim-di-dong-baoyu-bml-845.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y 2 kim di \\u0111\\u1ed9ng BAOYU BML-845.JPG\",\"type\":\"image\\/jpeg\",\"size\":2077717,\"width\":4032,\"height\":3024,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '0', '0');
INSERT INTO `products` VALUES ('7', 'Máy 2 kim di động ổ nhỏ , cắt chỉ tự động  JACK JK-58450D-005-405', 'may-2-kim-di-dong-o-nho-cat-chi-tu-dong-jack-jk-58450d-005-405', '<font face=\"Arial, Verdana\"><span style=\"font-size: 10pt;\">JK-58750C-003/-005</span></font><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle lockstitch machine split needle bar with big hook</span></font></div>', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle lockstitch machine split needle bar with big hook</span></font><br><div style=\"font-family: Arial, Verdana; font-size: 13.3333px; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse: collapse; width: 283pt;\"><colgroup><col width=\"186\" style=\"width: 140pt;\"><col width=\"190\" style=\"width: 143pt;\"></colgroup><tbody><tr height=\"64\" style=\"height: 48pt;\"><td rowspan=\"2\" height=\"128\" class=\"xl68\" width=\"186\">-003: for light duty<br>-005: for heavy duty<br>big hook<br>Semi-dry</td><td rowspan=\"2\" class=\"xl70\" width=\"190\">-003: chất liệu mỏng<br>-005: chất liệu dày.<br>ổ lớn<br>Dầu khô</td></tr><tr height=\"64\" style=\"height: 48pt;\"></tr></tbody></table></div>', '0', '2', '2', '0', '0', '1353742877', '0', '1466064842', '0', '1', '0', '/uploads/photos/may-2-kim-di-dong-o-nho-,-cat-chi-tu-dong-jack-jk-58450d-005-405.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y 2 kim di \\u0111\\u1ed9ng \\u1ed5 nh\\u1ecf , c\\u1eaft ch\\u1ec9 t\\u1ef1 \\u0111\\u1ed9ng  JACK JK-58450D-005-405.JPG\",\"type\":\"image\\/jpeg\",\"size\":89173,\"width\":1280,\"height\":850,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '0', '0');
INSERT INTO `products` VALUES ('8', 'Máy 2 kim móc xích, trụ kim không dầu JACK  JK-8558W-1(-2-3)', 'may-2-kim-moc-xich-tru-kim-khong-dau-jack-jk-8558w-1-2-3', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-58420D-003/-005/-403/-405</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle machine fix needle bar small hook &nbsp;with auto trimmer</span></font></div>', '<span style=\"font-size: 13.3333px;\">Double needle machine fix needle bar small hook &nbsp;with auto trimmer</span><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"65\" style=\"mso-height-source:userset;height:48.95pt\">\r\n  <td rowspan=\"4\" height=\"260\" class=\"xl68\" width=\"186\" style=\"height:195.8pt;\r\n  width:140pt\">Auto-trimmer<br>\r\n    <br>\r\n    Semi-dry<br>\r\n    <br>\r\n    -003: for light duty<br>\r\n    -005: for heavy duty<br>\r\n    <br>\r\n    -403: for light duty with auto foot lifter ( $60 more for auto\r\n  lifter)<br>\r\n    -405: for heavy duty with auto foot lifter ( $60 more for auto lifter)</td>\r\n  <td rowspan=\"4\" class=\"xl69\" width=\"190\" style=\"width:143pt\">tự động cắt chỉ<br>\r\n    <br>\r\n    Dầu khô<br>\r\n    <br>\r\n    -003: chất liệu mỏng<br>\r\n    -005: chất liệu dày.<br>\r\n    <br>\r\n    -403: chất liệu mỏng và tự động nâng chân vịt ( thệm $60)<br>\r\n    -405: chất liệu dày và tự động nâng chân vịt ( thệm $60)</td>\r\n </tr>\r\n <tr height=\"65\" style=\"mso-height-source:userset;height:48.95pt\">\r\n </tr>\r\n <tr height=\"65\" style=\"mso-height-source:userset;height:48.95pt\">\r\n </tr>\r\n <tr height=\"65\" style=\"mso-height-source:userset;height:48.95pt\">\r\n </tr></tbody></table>', '1', '2', '2', '0', '0', '1353743877', '0', '1466064863', '0', '1', '0', '/uploads/photos/may-2-kim-moc-xich,-tru-kim-khong-dau-jack-jk-8558w-1(-2-3).png', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y 2 kim m\\u00f3c x\\u00edch, tr\\u1ee5 kim kh\\u00f4ng d\\u1ea7u JACK  JK-8558W-1(-2-3).png\",\"type\":\"image\\/png\",\"size\":6159135,\"width\":4288,\"height\":2848,\"extension\":\"png\"}}', '0', '0', null, null, '0', '1', '0', '0');
INSERT INTO `products` VALUES ('9', 'Máy 3 kim móc xích, trụ kim không dầu JACK  JK-8560W(-PL)', 'may-3-kim-moc-xich-tru-kim-khong-dau-jack-jk-8560w-pl', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-58450D-003/-005/-403/-405</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle machine split needle bar small hook &nbsp;with auto trimmer</span></font></div>', '<span style=\"font-size: 13.3333px;\">Double needle machine split needle bar small hook &nbsp;with auto trimmer</span><br style=\"font-size: 13.3333px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-size: 13.3333px; border-collapse: collapse; width: 283pt;\"><colgroup><col width=\"186\" style=\"width: 140pt;\"><col width=\"190\" style=\"width: 143pt;\"></colgroup><tbody><tr height=\"65\" style=\"height: 48.95pt;\"><td rowspan=\"4\" height=\"260\" class=\"xl68\" width=\"186\" style=\"height: 195.8pt; width: 140pt;\">Auto-trimmer<br><br>Semi-dry<br><br>-003: for light duty<br>-005: for heavy duty<br><br>-403: for light duty with auto foot lifter ( $60 more for auto lifter)<br>-405: for heavy duty with auto foot lifter ( $60 more for auto lifter)</td><td rowspan=\"4\" class=\"xl69\" width=\"190\" style=\"width: 143pt;\">tự động cắt chỉ<br><br>Dầu khô<br><br>-003: chất liệu mỏng<br>-005: chất liệu dày.<br><br>-403: chất liệu mỏng và tự động nâng chân vịt ( thệm $60)<br>-405: chất liệu dày và tự động nâng chân vịt ( thệm $60)</td></tr><tr height=\"65\" style=\"height: 48.95pt;\"></tr><tr height=\"65\" style=\"height: 48.95pt;\"></tr><tr height=\"65\" style=\"height: 48.95pt;\"></tr></tbody></table>', '1', '2', '11', '0', '0', '1353745587', '0', '1466064934', '0', '1', '0', '/uploads/photos/may-3-kim-moc-xich,-tru-kim-khong-dau-jack-jk-8560w(-pl).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y 3 kim m\\u00f3c x\\u00edch, tr\\u1ee5 kim kh\\u00f4ng d\\u1ea7u JACK  JK-8560W(-PL).jpg\",\"type\":\"image\\/jpeg\",\"size\":478311,\"width\":4288,\"height\":2848,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '1', '1', '1');
INSERT INTO `products` VALUES ('10', 'Máy bước điện tử, cắt chỉ tự động BAOYU  BML-0303-D3', 'may-buoc-dien-tu-cat-chi-tu-dong-baoyu-bml-0303-d3', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-58720D-003/-005/-403/-405</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle machine fix needle bar big hook &nbsp;with auto trimmer</span></font></div>', '<div><span style=\"font-size: 13.3333px;\">Double needle machine fix needle bar big hook &nbsp;with auto trimmer</span></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-size: 13.3333px; border-collapse: collapse; width: 283pt;\"><colgroup><col width=\"186\" style=\"width: 140pt;\"><col width=\"190\" style=\"width: 143pt;\"></colgroup><tbody><tr height=\"65\" style=\"height: 48.95pt;\"><td rowspan=\"4\" height=\"260\" class=\"xl68\" width=\"186\" style=\"height: 195.8pt; width: 140pt;\">Auto-trimmer<br><br>Semi-dry<br><br>-003: for light duty<br>-005: for heavy duty<br><br>-403: for light duty with auto foot lifter ( $60 more for auto lifter)<br>-405: for heavy duty with auto foot lifter ( $60 more for auto lifter)</td><td rowspan=\"4\" class=\"xl69\" width=\"190\" style=\"width: 143pt;\">tự động cắt chỉ<br><br>Dầu khô<br><br>-003: chất liệu mỏng<br>-005: chất liệu dày.<br><br>-403: chất liệu mỏng và tự động nâng chân vịt ( thệm $60)<br>-405: chất liệu dày và tự động nâng chân vịt ( thệm $60)</td></tr><tr height=\"65\" style=\"height: 48.95pt;\"></tr><tr height=\"65\" style=\"height: 48.95pt;\"></tr><tr height=\"65\" style=\"height: 48.95pt;\"></tr></tbody></table>', '1', '2', '10', '0', '0', '1353745671', '0', '1466064945', '0', '1', '0', '/uploads/photos/may-buoc-dien-tu,-cat-chi-tu-dong-baoyu-bml-0303-d3.jpg', null, '1', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y b\\u01b0\\u1edbc \\u0111i\\u1ec7n t\\u1eed, c\\u1eaft ch\\u1ec9 t\\u1ef1 \\u0111\\u1ed9ng BAOYU  BML-0303-D3.JPG\",\"type\":\"image\\/jpeg\",\"size\":2880167,\"width\":4032,\"height\":3024,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '1', '1', '0');
INSERT INTO `products` VALUES ('11', 'Máy chạy lưng BAOYU BML-1508P', 'may-chay-lung-baoyu-bml-1508p', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-58750D-003/-005/-403/-405</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Double needle machine split needle bar big hook &nbsp;with auto trimmer</span></font></div>', '<div><span style=\"font-size: 13.3333px;\">Double needle machine split needle bar big hook &nbsp;with auto trimmer</span><br style=\"font-size: 13.3333px;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-size: 13.3333px; border-collapse: collapse; width: 283pt;\"><colgroup><col width=\"186\" style=\"width: 140pt;\"><col width=\"190\" style=\"width: 143pt;\"></colgroup><tbody><tr height=\"65\" style=\"font-size: 13.3333px; height: 48.95pt;\"><td rowspan=\"4\" height=\"260\" class=\"xl68\" width=\"186\" style=\"height: 195.8pt; width: 140pt;\">Auto-trimmer<br><br>Semi-dry<br><br>-003: for light duty<br>-005: for heavy duty<br><br>-403: for light duty with auto foot lifter ( $60 more for auto lifter)<br>-405: for heavy duty with auto foot lifter ( $60 more for auto lifter)</td><td rowspan=\"4\" class=\"xl69\" width=\"190\" style=\"width: 143pt;\">tự động cắt chỉ<br><br>Dầu khô<br><br>-003: chất liệu mỏng<br>-005: chất liệu dày.<br><br>-403: chất liệu mỏng và tự động nâng chân vịt ( thệm $60)<br>-405: chất liệu dày và tự động nâng chân vịt ( thệm $60)</td></tr><tr height=\"65\" style=\"font-size: 13.3333px; height: 48.95pt;\"></tr><tr height=\"65\" style=\"font-size: 13.3333px; height: 48.95pt;\"></tr></tbody></table></div>', '1', '2', '10', '0', '0', '1353911574', '0', '1466064967', '0', '1', '0', '/uploads/photos/may-chay-lung-baoyu-bml-1508p.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y ch\\u1ea1y l\\u01b0ng BAOYU BML-1508P.JPG\",\"type\":\"image\\/jpeg\",\"size\":2378076,\"width\":4032,\"height\":3024,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '1', '1');
INSERT INTO `products` VALUES ('12', 'Máy cuốn ống 2 kim , có trợ lực, chất liệu  trung bình JACK JK-T9270-13-2PL(1-4)', 'may-cuon-ong-2-kim-co-tro-luc-chat-lieu-trung-binh-jack-jk-t9270-13-2pl1-4', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-5558WB</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive lockstitch with side cutter</span></font></div>', '<span style=\"font-size: 13.3333px;\">Direct drive lockstitch with side cutter</span><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"32\" style=\"mso-height-source:userset;height:24.0pt\">\r\n  <td height=\"32\" class=\"xl69\" width=\"186\" style=\"height:24.0pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"32\" style=\"mso-height-source:userset;height:24.0pt\">\r\n  <td height=\"32\" class=\"xl69\" width=\"186\" style=\"height:24.0pt;border-top:none;\r\n  width:140pt\">Side cutter</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Dao\r\n  xén</td>\r\n </tr>\r\n <tr height=\"32\" style=\"mso-height-source:userset;height:24.0pt\">\r\n  <td height=\"32\" class=\"xl69\" width=\"186\" style=\"height:24.0pt;border-top:none;\r\n  width:140pt\">Without Oil</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">không\r\n  dầu.</td>\r\n </tr></tbody></table>', '1', '2', '2', '0', '0', '1353911795', '0', '1466066943', '0', '1', '0', '/uploads/photos/may-cuon-ong-2-kim-,-co-tro-luc,-chat-lieu-trung-binh-jack-jk-t9270-13-2pl(1-4).png', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y cu\\u1ed1n \\u1ed1ng 2 kim , c\\u00f3 tr\\u1ee3 l\\u1ef1c, ch\\u1ea5t li\\u1ec7u  trung b\\u00ecnh JACK JK-T9270-13-2PL(1-4).png\",\"type\":\"image\\/png\",\"size\":338868,\"width\":800,\"height\":534,\"extension\":\"png\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('13', 'Máy cuốn ống 3 kim, có trợ lực, chất liệu  dầy, JACK JK-T9280-73-2PL(1-8)', 'may-cuon-ong-3-kim-co-tro-luc-chat-lieu-day-jack-jk-t9280-73-2pl1-8', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-5559WE</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive intergrated Automatic lockstitch machine with side cutter</span></font></div>', '<span style=\"font-size: 13.3333px;\">Direct drive intergrated Automatic lockstitch machine with side cutter</span><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"19\" style=\"height:14.25pt\">\r\n  <td height=\"19\" class=\"xl68\" width=\"186\" style=\"height:14.25pt;width:140pt\">Integrated\r\n  direct drive</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục\r\n  tích hợp</td>\r\n </tr>\r\n <tr height=\"19\" style=\"height:14.25pt\">\r\n  <td height=\"19\" class=\"xl68\" width=\"186\" style=\"height:14.25pt;border-top:none;\r\n  width:140pt\">Side cutter</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Dao\r\n  xén</td>\r\n </tr>\r\n <tr height=\"19\" style=\"height:14.25pt\">\r\n  <td height=\"19\" class=\"xl68\" width=\"186\" style=\"height:14.25pt;border-top:none;\r\n  width:140pt\">Auto-trimmer</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động cắt chỉ</td>\r\n </tr>\r\n <tr height=\"19\" style=\"height:14.25pt\">\r\n  <td height=\"19\" class=\"xl68\" width=\"186\" style=\"height:14.25pt;border-top:none;\r\n  width:140pt\">Auto foot lifter</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động nâng chân vịt.</td>\r\n </tr>\r\n <tr height=\"19\" style=\"height:14.25pt\">\r\n  <td height=\"19\" class=\"xl68\" width=\"186\" style=\"height:14.25pt;border-top:none;\r\n  width:140pt\">Without Oil</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">không\r\n  dầu.</td>\r\n </tr></tbody></table>', '1', '2', '3', '0', '0', '1353994365', '0', '1466066950', '0', '1', '0', '/uploads/photos/may-cuon-ong-3-kim,-co-tro-luc,-chat-lieu-day,-jack-jk-t9280-73-2pl(1-8).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y cu\\u1ed1n \\u1ed1ng 3 kim, c\\u00f3 tr\\u1ee3 l\\u1ef1c, ch\\u1ea5t li\\u1ec7u  d\\u1ea7y, JACK JK-T9280-73-2PL(1-8).jpg\",\"type\":\"image\\/jpeg\",\"size\":132084,\"width\":738,\"height\":600,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('14', 'Máy đánh bọ nút điện tử 2 cam(Bọ+Nút) JACK  JK-T1900BSK', 'may-danh-bo-nut-dien-tu-2-cambonut-jack-jk-t1900bsk', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8558W-1/-2/-3</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Chainstitch machine 2 needle</span></font></div>', '<span style=\"font-size: 13.3333px;\">Chainstitch machine 2 needle</span><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"30\" style=\"mso-height-source:userset;height:23.1pt\">\r\n  <td height=\"30\" class=\"xl69\" width=\"186\" style=\"height:23.1pt;width:140pt\">Chainstitch</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Máy 2 kim móc\r\n  xích</td>\r\n </tr>\r\n <tr height=\"30\" style=\"mso-height-source:userset;height:23.1pt\">\r\n  <td height=\"30\" class=\"xl69\" width=\"186\" style=\"height:23.1pt;border-top:none;\r\n  width:140pt\">needle bar without oil</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">trụ\r\n  kim không dầu</td>\r\n </tr></tbody></table>', '1', '2', '8', '0', '0', '1354345020', '0', '1466066982', '0', '1', '0', '/uploads/photos/may-danh-bo-nut-dien-tu-2-cam(bo+nut)-jack-jk-t1900bsk.png', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y \\u0111\\u00e1nh b\\u1ecd n\\u00fat \\u0111i\\u1ec7n t\\u1eed 2 cam(B\\u1ecd+N\\u00fat) JACK  JK-T1900BSK.png\",\"type\":\"image\\/png\",\"size\":7223238,\"width\":7360,\"height\":4912,\"extension\":\"png\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('15', 'Máy đính cúc cơ dùng được cam thẳng và cam  chéo JACK JK-T1377', 'may-dinh-cuc-co-dung-duoc-cam-thang-va-cam-cheo-jack-jk-t1377', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8560W (-PL)</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Chainstitch machine &nbsp;3 needle</span></font></div>', '<span style=\"font-size: 13.3333px;\">Chainstitch machine &nbsp;3 needle</span><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"30\" style=\"mso-height-source:userset;height:23.1pt\">\r\n  <td height=\"30\" class=\"xl69\" width=\"186\" style=\"height:23.1pt;width:140pt\">Chainstitch</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Máy 3 kim móc\r\n  xích</td>\r\n </tr>\r\n <tr height=\"30\" style=\"mso-height-source:userset;height:23.1pt\">\r\n  <td height=\"30\" class=\"xl69\" width=\"186\" style=\"height:23.1pt;border-top:none;\r\n  width:140pt\">needle bar without oil</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">trụ\r\n  kim không dầu</td>\r\n </tr></tbody></table>', '1', '2', '12', '0', '0', '1354345309', '0', '1466067033', '0', '1', '0', '/uploads/photos/may-dinh-cuc-co-dung-duoc-cam-thang-va-cam-cheo-jack-jk-t1377.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y \\u0111\\u00ednh c\\u00fac c\\u01a1 d\\u00f9ng \\u0111\\u01b0\\u1ee3c cam th\\u1eb3ng v\\u00e0 cam  ch\\u00e9o JACK JK-T1377.jpg\",\"type\":\"image\\/jpeg\",\"size\":420883,\"width\":4288,\"height\":2848,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('16', 'Máy làm khuy điện tử JACK JK-T1790BK-1_  JK-T1790BS-1', 'may-lam-khuy-dien-tu-jack-jk-t1790bk-1_-jk-t1790bs-1', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-6380</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Top and bottom feed lockstitch machine</span></font></div>', '<span style=\"font-size: 13.3333px;\">Top and bottom feed lockstitch machine</span><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"49\" style=\"mso-height-source:userset;height:36.95pt\">\r\n  <td height=\"49\" class=\"xl68\" width=\"186\" style=\"height:36.95pt;width:140pt\">Top and\r\n  bottom feed</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">trụ kim bơi</td>\r\n </tr>\r\n <tr height=\"49\" style=\"mso-height-source:userset;height:36.95pt\">\r\n  <td height=\"49\" class=\"xl68\" width=\"186\" style=\"height:36.95pt;border-top:none;\r\n  width:140pt\">heavy duty</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">làm\r\n  chất liệu dày</td>\r\n </tr></tbody></table>', '1', '2', '7', '0', '0', '1354346305', '0', '1466067053', '0', '1', '0', '/uploads/photos/may-lam-khuy-dien-tu-jack-jk-t1790bk-1_-jk-t1790bs-1.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y l\\u00e0m khuy \\u0111i\\u1ec7n t\\u1eed JACK JK-T1790BK-1_  JK-T1790BS-1.jpg\",\"type\":\"image\\/jpeg\",\"size\":111018,\"width\":800,\"height\":531,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('17', 'Máy làm khuy vuông JACK JK-T781D', 'may-lam-khuy-vuong-jack-jk-t781d', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-6380E-3B</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Top and bottom feed Integrated Automatic lockstitch machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-6380E-3B</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Top and bottom feed Integrated Automatic lockstitch machine</span></font></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; border-collapse: collapse; width: 283pt;\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"20\" style=\"mso-height-source:userset;height:15.0pt\">\r\n  <td height=\"20\" class=\"xl68\" width=\"186\" style=\"height:15.0pt;width:140pt\">Integrated\r\n  direct drive</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục\r\n  tích hợp</td>\r\n </tr>\r\n <tr height=\"20\" style=\"mso-height-source:userset;height:15.0pt\">\r\n  <td height=\"20\" class=\"xl68\" width=\"186\" style=\"height:15.0pt;border-top:none;\r\n  width:140pt\">Auto-trimmer</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động cắt chỉ</td>\r\n </tr>\r\n <tr height=\"20\" style=\"mso-height-source:userset;height:15.0pt\">\r\n  <td height=\"20\" class=\"xl68\" width=\"186\" style=\"height:15.0pt;border-top:none;\r\n  width:140pt\">Auto-reverse</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động lại mũi</td>\r\n </tr>\r\n <tr height=\"20\" style=\"mso-height-source:userset;height:15.0pt\">\r\n  <td height=\"20\" class=\"xl68\" width=\"186\" style=\"height:15.0pt;border-top:none;\r\n  width:140pt\">Electronic thread tension</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">cụm\r\n  đồng tiền điện tử</td>\r\n </tr></tbody></table>', '1', '2', '7', '0', '0', '1354346490', '0', '1466067069', '0', '1', '0', '/uploads/photos/may-lam-khuy-vuong-jack-jk-t781d.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y l\\u00e0m khuy vu\\u00f4ng JACK JK-T781D.jpg\",\"type\":\"image\\/jpeg\",\"size\":3025102,\"width\":4288,\"height\":2848,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('18', 'Máy lập trình khổ lớn JACK JK-T2210 ( 220mm x  100mm)', 'may-lap-trinh-kho-lon-jack-jk-t2210-220mm-x-100mm', '<div style=\"font-family: \'Times New Roman\'; font-size: medium;\"><font face=\"Arial, Verdana\"><div><span style=\"font-size: 13.3333px;\">JK-803D-M2-04</span></div><div><span style=\"font-size: 13.3333px;\">JK-804D-M2-24</span></div><div><span style=\"font-size: 13.3333px;\">JK-805D-M2-55</span></div></font></div><font face=\"Arial, Verdana\" style=\"font-size: medium;\"><span style=\"font-size: 13.3333px;\">3/4/5 thread Direct drive overlock machine</span></font>', '<div><font face=\"Arial, Verdana\"><div><span style=\"font-size: 13.3333px;\">JK-803D-M2-04</span></div><div><span style=\"font-size: 13.3333px;\">JK-804D-M2-24</span></div><div><span style=\"font-size: 13.3333px;\">JK-805D-M2-55</span></div></font></div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">3/4/5 thread Direct drive overlock machine</span></font><br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; border-collapse: collapse; width: 283pt;\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl69\" width=\"186\" style=\"height:15.0pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl69\" width=\"186\" style=\"height:15.0pt;border-top:none;\r\n  width:140pt\">Speed up to 5500rpm</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tốc\r\n  độ lên tới 5500 rpm</td>\r\n </tr>\r\n <tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl69\" width=\"186\" style=\"height:15.0pt;border-top:none;\r\n  width:140pt\">No oil leakage</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">không\r\n  ro ri dầu</td>\r\n </tr></tbody></table>', '1', '3', '9', '0', '0', '1354346614', '0', '1469538520', '0', '1', '0', '/uploads/photos/may-lap-trinh-kho-lon-jack-jk-t2210-(-220mm-x-100mm).jpg', null, '0', null, null, null, '0', '\"{\\\"file\\\":{\\\"name\\\":\\\"M\\\\u00e1y l\\\\u1eadp tr\\\\u00ecnh kh\\\\u1ed5 l\\\\u1edbn JACK JK-T2210 ( 220mm x  100mm).jpg\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\",\\\"size\\\":21801,\\\"width\\\":800,\\\"height\\\":531,\\\"extension\\\":\\\"jpg\\\"}}\"', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('19', 'Máy lập trình khổ lớn JACK JK-T3020 ( 300mm x  200mm)', 'may-lap-trinh-kho-lon-jack-jk-t3020-300mm-x-200mm', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-798E-3P-504-02/233</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-798E-4P-514-M03/333</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-798E-5P-516-03/333</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">3/4/5 thread automatic overlock machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-798E-3P-504-02/233</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-798E-4P-514-M03/333</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-798E-5P-516-03/333</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">3/4/5 thread automatic overlock machine</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl69\" width=\"186\" style=\"height:15.0pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"38\" style=\"height:28.5pt\">\r\n  <td height=\"38\" class=\"xl69\" width=\"186\" style=\"height:28.5pt;border-top:none;\r\n  width:140pt\">Auto-trimmer &amp; foot lifter</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Tự\r\n  động cắt chỉ và nâng chân vịt</td>\r\n </tr>\r\n <tr height=\"20\" style=\"height:15.0pt\">\r\n  <td height=\"20\" class=\"xl69\" width=\"186\" style=\"height:15.0pt;border-top:none;\r\n  width:140pt\">With sensor</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">cảm\r\n  biến</td>\r\n </tr>\r\n <tr height=\"46\" style=\"mso-height-source:userset;height:35.1pt\">\r\n  <td height=\"46\" class=\"xl69\" width=\"186\" style=\"height:35.1pt;border-top:none;\r\n  width:140pt\">&nbsp;</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">&nbsp;</td>\r\n </tr></tbody></table></div>', '1', '2', '8', '0', '0', '1354346916', '0', '1466067150', '0', '1', '0', '/uploads/photos/may-lap-trinh-kho-lon-jack-jk-t3020-(-300mm-x-200mm).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y l\\u1eadp tr\\u00ecnh kh\\u1ed5 l\\u1edbn JACK JK-T3020 ( 300mm x  200mm).jpg\",\"type\":\"image\\/jpeg\",\"size\":1234285,\"width\":4441,\"height\":2747,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '0', '1');
INSERT INTO `products` VALUES ('20', 'Máy lập trình khổ nhỏ JACK JK-T1906B( Size 60mm x  40mm) (1)', 'may-lap-trinh-kho-nho-jack-jk-t1906b-size-60mm-x-40mm-1', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8569ADI-01GBX356</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive flat-bed interlock machine</span></font></div>', '<div style=\"font-family: \'Times New Roman\'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8569ADI-01GBX356</span></font></div><div style=\"font-family: \'Times New Roman\'; font-size: medium; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive flat-bed interlock machine</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct Drive<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Mô tơ liền trục</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Flatbed<span class=\"Apple-tab-span\" style=\"white-space: pre;\">		</span>đầu bằng</span></font></div>', '1', '2', '8', '0', '0', '1354347153', '0', '1466067159', '0', '1', '0', '/uploads/photos/may-lap-trinh-kho-nho-jack-jk-t1906b(-size-60mm-x-40mm)-(1).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y l\\u1eadp tr\\u00ecnh kh\\u1ed5 nh\\u1ecf JACK JK-T1906B( Size 60mm x  40mm) (1).jpg\",\"type\":\"image\\/jpeg\",\"size\":3556129,\"width\":4288,\"height\":2848,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '1', '0', '1');
INSERT INTO `products` VALUES ('21', 'Máy lập trình khổ trung bình JACK JK-T1310 ( 130mmx  100mm)', 'may-lap-trinh-kho-trung-binh-jack-jk-t1310-130mmx-100mm', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8569ADII-01GBX356/UT</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Flat-bed interlock machine with auto trimmer and foot lifter</span></font></div>', '<div style=\"font-family: \'Times New Roman\'; font-size: medium;\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8569ADII-01GBX356/UT</span></font></div><div style=\"font-family: \'Times New Roman\'; font-size: medium;\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Flat-bed interlock machine with auto trimmer and foot lifter</span></font></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl69\" width=\"186\" style=\"height:18.95pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"26\" style=\"mso-height-source:userset;height:19.5pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:19.5pt;border-top:none;\r\n  width:140pt\">Flatbed</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">đầu\r\n  bằng</td>\r\n </tr>\r\n <tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl69\" width=\"186\" style=\"height:18.95pt;border-top:none;\r\n  width:140pt\">Auto-trimmer</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động cắt chỉ</td>\r\n </tr>\r\n <tr height=\"25\" style=\"mso-height-source:userset;height:18.95pt\">\r\n  <td height=\"25\" class=\"xl69\" width=\"186\" style=\"height:18.95pt;border-top:none;\r\n  width:140pt\">Auto foot lifter</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động nâng chân vịt.</td>\r\n </tr></tbody></table>', '1', '2', '9', '0', '0', '1354347247', '0', '1466067171', '0', '1', '0', '/uploads/photos/may-lap-trinh-kho-trung-binh-jack-jk-t1310-(-130mmx-100mm).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y l\\u1eadp tr\\u00ecnh kh\\u1ed5 trung b\\u00ecnh JACK JK-T1310 ( 130mmx  100mm).jpg\",\"type\":\"image\\/jpeg\",\"size\":801153,\"width\":4441,\"height\":2827,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '0', '1');
INSERT INTO `products` VALUES ('22', 'Máy may 1 kim bước chất liệu dầy, không cắt  chỉ JACK JK-6380 (1)', 'may-may-1-kim-buoc-chat-lieu-day-khong-cat-chi-jack-jk-6380-1', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DI-01GBX356 &nbsp;&nbsp;</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive cylinder-bed interlock machine</span></font></div>', '<div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DI-01GBX356 &nbsp;&nbsp;</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive cylinder-bed interlock machine</span></font></div></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct Drive<span class=\"Apple-tab-span\" style=\"white-space: pre;\">	</span>Mô tơ liền trục</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cylinder bed<span class=\"Apple-tab-span\" style=\"white-space:pre\">	</span>đầu túm</span></font></div><div style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal;\"><br></div>', '1', '2', '7', '0', '0', '1354347303', '0', '1466067201', '0', '1', '0', '/uploads/photos/may-may-1-kim-buoc-chat-lieu-day,-khong-cat-chi-jack-jk-6380-(1).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y may 1 kim b\\u01b0\\u1edbc ch\\u1ea5t li\\u1ec7u d\\u1ea7y, kh\\u00f4ng c\\u1eaft  ch\\u1ec9 JACK JK-6380 (1).jpg\",\"type\":\"image\\/jpeg\",\"size\":406300,\"width\":4288,\"height\":2848,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '1', '0');
INSERT INTO `products` VALUES ('23', 'Máy may 1 kim điện tử moto liền trục JACK  JK-SHIRLEYIIECA (1)', 'may-may-1-kim-dien-tu-moto-lien-truc-jack-jk-shirleyiieca-1', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DII-01GBX356/UT</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cylinder-bed interlock machine with auto trimmer and foot lifter</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DII-01GBX356/UT</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cylinder-bed interlock machine with auto trimmer and foot lifter</span></font></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; border-collapse: collapse; width: 283pt;\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"26\" style=\"mso-height-source:userset;height:20.1pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:20.1pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"26\" style=\"mso-height-source:userset;height:20.1pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:20.1pt;border-top:none;\r\n  width:140pt\">Cylinder bed</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">đầu\r\n  túm</td>\r\n </tr>\r\n <tr height=\"26\" style=\"mso-height-source:userset;height:20.1pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:20.1pt;border-top:none;\r\n  width:140pt\">Auto-trimmer</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động cắt chỉ</td>\r\n </tr>\r\n <tr height=\"26\" style=\"mso-height-source:userset;height:20.1pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:20.1pt;border-top:none;\r\n  width:140pt\">Auto foot lifter</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">tự\r\n  động nâng chân vịt.</td>\r\n </tr></tbody></table>', '1', '2', '6', '0', '0', '1354347628', '0', '1466067212', '0', '1', '0', '/uploads/photos/may-may-1-kim-dien-tu-moto-lien-truc-jack-jk-shirleyiieca-(1).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y may 1 kim \\u0111i\\u1ec7n t\\u1eed moto li\\u1ec1n tr\\u1ee5c JACK  JK-SHIRLEYIIECA (1).jpg\",\"type\":\"image\\/jpeg\",\"size\":2333919,\"width\":4032,\"height\":2717,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '1', '0', '1');
INSERT INTO `products` VALUES ('24', 'Máy may 1 kim điện tử moto liền trục JACK  JK-SHIRLEYIIECA (1)', 'may-may-1-kim-dien-tu-moto-lien-truc-jack-jk-shirleyiieca-1-1', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DI-35ACX356</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive cylinder-bed interlock machine with left side cutter</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DI-35ACX356</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Direct drive cylinder-bed interlock machine with left side cutter</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"32\" style=\"mso-height-source:userset;height:24.0pt\">\r\n  <td height=\"32\" class=\"xl69\" width=\"186\" style=\"height:24.0pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"32\" style=\"mso-height-source:userset;height:24.0pt\">\r\n  <td height=\"32\" class=\"xl69\" width=\"186\" style=\"height:24.0pt;border-top:none;\r\n  width:140pt\">Cylinder bed</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">đầu\r\n  túm</td>\r\n </tr>\r\n <tr height=\"32\" style=\"mso-height-source:userset;height:24.0pt\">\r\n  <td height=\"32\" class=\"xl69\" width=\"186\" style=\"height:24.0pt;border-top:none;\r\n  width:140pt\">With left side cutter</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">có\r\n  dao xén trái.</td>\r\n </tr></tbody></table></div>', '1', '2', '5', '0', '0', '1354347821', '0', '1466067243', '0', '1', '0', '/uploads/photos/may-may-1-kim-dien-tu-moto-lien-truc-jack-jk-shirleyiieca-(1).jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y may 1 kim \\u0111i\\u1ec7n t\\u1eed moto li\\u1ec1n tr\\u1ee5c JACK  JK-SHIRLEYIIECA (1).jpg\",\"type\":\"image\\/jpeg\",\"size\":2333919,\"width\":4032,\"height\":2717,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '1', '1');
INSERT INTO `products` VALUES ('25', 'Máy may 2 kim cố định BAOYU BML-842', 'may-may-2-kim-co-dinh-baoyu-bml-842', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DII-35ACX356/UT</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cylinder-bed interlock machine with left side cutter with auto trimmer and foot lifter</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8669DII-35ACX356/UT</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Cylinder-bed interlock machine with left side cutter with auto trimmer and foot lifter</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"26\" style=\"mso-height-source:userset;height:20.1pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:20.1pt;width:140pt\">Direct\r\n  Drive</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Mô tơ liền trục</td>\r\n </tr>\r\n <tr height=\"26\" style=\"mso-height-source:userset;height:20.1pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:20.1pt;border-top:none;\r\n  width:140pt\">Cylinder bed</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">đầu\r\n  túm</td>\r\n </tr>\r\n <tr height=\"38\" style=\"mso-height-source:userset;height:28.5pt\">\r\n  <td height=\"38\" class=\"xl70\" width=\"186\" style=\"height:28.5pt;border-top:none;\r\n  width:140pt\">Auto-trimmer &amp; foot lifter</td>\r\n  <td class=\"xl71\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Tự\r\n  động cắt chỉ và nâng chân vịt</td>\r\n </tr>\r\n <tr height=\"26\" style=\"mso-height-source:userset;height:20.1pt\">\r\n  <td height=\"26\" class=\"xl69\" width=\"186\" style=\"height:20.1pt;border-top:none;\r\n  width:140pt\">With left side cutter</td>\r\n  <td class=\"xl71\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">có\r\n  dao xén trái.</td>\r\n </tr></tbody></table></div>', '1', '2', '4', '0', '0', '1354347822', '0', '1466067259', '0', '1', '0', '/uploads/photos/may-may-2-kim-co-dinh-baoyu-bml-842.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y may 2 kim c\\u1ed1 \\u0111\\u1ecbnh BAOYU BML-842.JPG\",\"type\":\"image\\/jpeg\",\"size\":1790995,\"width\":4032,\"height\":3024,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '1', '1');
INSERT INTO `products` VALUES ('26', 'Máy may cơ, hàng dầy, ổ lớn BAOYU BML-202', 'may-may-co-hang-day-o-lon-baoyu-bml-202', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8009VC-12064P</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12-needle chainstitch machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8009VC-12064P</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">12-needle chainstitch machine</span></font></div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"font-family: Arial, Verdana; font-size: 10pt; font-style: normal; font-variant: normal; font-weight: normal; line-height: normal; border-collapse: collapse; width: 283pt;\"><tbody><tr height=\"49\" style=\"mso-height-source:userset;height:36.95pt\">\r\n  <td height=\"49\" class=\"xl68\" width=\"186\" style=\"height:36.95pt;width:140pt\">12\r\n  needle machine</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Máy kan sai,\r\n  12kim</td></tr></tbody></table>', '1', '2', '3', '0', '0', '1354347929', '0', '1466067265', '0', '1', '0', '/uploads/photos/may-may-co,-hang-day,-o-lon-baoyu-bml-202.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y may c\\u01a1, h\\u00e0ng d\\u1ea7y, \\u1ed5 l\\u1edbn BAOYU BML-202.JPG\",\"type\":\"image\\/jpeg\",\"size\":58831,\"width\":640,\"height\":480,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '1', '0', '1');
INSERT INTO `products` VALUES ('27', 'Máy may móc xích( 2 kim, 3 kim) BAOYU BML-20058A,  BML-20058D', 'may-may-moc-xich-2-kim-3-kim-baoyu-bml-20058a-bml-20058d', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8009VC-13064P-32P</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">13-needle chainstitch machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-8009VC-13064P-32P</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">13-needle chainstitch machine</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\"><tbody><tr height=\"49\" style=\"mso-height-source:userset;height:36.95pt\">\r\n  <td height=\"49\" class=\"xl68\" width=\"186\" style=\"height:36.95pt;width:140pt\">13\r\n  needle machine</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Máy kan sai,\r\n  13kim</td></tr></tbody></table></div>', '1', '2', '6', '0', '0', '1354347929', '0', '1466067271', '0', '1', '0', '/uploads/photos/may-may-moc-xich(-2-kim,-3-kim)-baoyu-bml-20058a,-bml-20058d.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y may m\\u00f3c x\\u00edch( 2 kim, 3 kim) BAOYU BML-20058A,  BML-20058D.JPG\",\"type\":\"image\\/jpeg\",\"size\":2077532,\"width\":4032,\"height\":3024,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '1', '0', '1');
INSERT INTO `products` VALUES ('28', 'Máy mổ túi tự động JACK JK-5878-68', 'may-mo-tui-tu-dong-jack-jk-5878-68', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T9270-13-2PL (1/4)&nbsp;</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T9280-73-2PL (1/8) &nbsp;</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Feed-of-the-arm machine&nbsp;</span></font></div>', '<div style=\"font-family: \'Times New Roman\'; font-size: medium;\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T9270-13-2PL (1/4)&nbsp;</span></font></div><div style=\"font-family: \'Times New Roman\'; font-size: medium;\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T9280-73-2PL (1/8) &nbsp;</span></font></div><div style=\"font-family: \'Times New Roman\'; font-size: medium;\"><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Feed-of-the-arm machine&nbsp;</span></font></div><div style=\"font-family: \'Times New Roman\'; font-size: medium;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"29\" style=\"mso-height-source:userset;height:21.95pt\">\r\n  <td height=\"29\" class=\"xl69\" width=\"186\" style=\"height:21.95pt;width:140pt\">feed-of-the-arm</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-left:none;width:143pt\">Máy cuốn sườn</td>\r\n </tr>\r\n <tr height=\"29\" style=\"mso-height-source:userset;height:21.95pt\">\r\n  <td height=\"29\" class=\"xl69\" width=\"186\" style=\"height:21.95pt;border-top:none;\r\n  width:140pt\">for light duty</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">làm\r\n  chất liệu mỏng</td>\r\n </tr>\r\n <tr height=\"36\" style=\"mso-height-source:userset;height:27.0pt\">\r\n  <td height=\"36\" class=\"xl69\" width=\"186\" style=\"height:27.0pt;border-top:none;\r\n  width:140pt\">for heavy duty&nbsp;</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">làm\r\n  chất liệu dày</td>\r\n </tr></tbody></table></div>', '1', '2', '4', '0', '0', '1354348166', '0', '1466067278', '0', '1', '0', '/uploads/photos/may-mo-tui-tu-dong-jack-jk-5878-68.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y m\\u1ed5 t\\u00fai t\\u1ef1 \\u0111\\u1ed9ng JACK JK-5878-68.jpg\",\"type\":\"image\\/jpeg\",\"size\":5399728,\"width\":4288,\"height\":2848,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '0', '1');
INSERT INTO `products` VALUES ('29', 'Máy mổ túi tự động JACK JK-5878-68', 'may-mo-tui-tu-dong-jack-jk-5878-68-1', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1377</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Button sew machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1377</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Button sew machine</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"57\" style=\"mso-height-source:userset;height:42.95pt\">\r\n  <td height=\"57\" class=\"xl68\" width=\"186\" style=\"height:42.95pt;width:140pt\">Botton\r\n  sewer</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Máy đính nút</td>\r\n </tr>\r\n <tr height=\"57\" style=\"mso-height-source:userset;height:42.95pt\">\r\n  <td height=\"57\" class=\"xl68\" width=\"186\" style=\"height:42.95pt;border-top:none;\r\n  width:140pt\">\"x\" and \"=\" can exchange</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">có\r\n  thể thay đổi dùng cam thẳng hoạc cam chéo</td>\r\n </tr></tbody></table></div>', '1', '2', '5', '0', '0', '1354348316', '0', '1466067284', '0', '1', '0', '/uploads/photos/may-mo-tui-tu-dong-jack-jk-5878-68.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y m\\u1ed5 t\\u00fai t\\u1ef1 \\u0111\\u1ed9ng JACK JK-5878-68.jpg\",\"type\":\"image\\/jpeg\",\"size\":5399728,\"width\":4288,\"height\":2848,\"extension\":\"jpg\"}}', '0', '0', null, null, '0', '0', '0', '0');
INSERT INTO `products` VALUES ('30', 'Máy thùa khuy BAOYU BML-781', 'may-thua-khuy-baoyu-bml-781', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T781D</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Button hole machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T781D</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Button hole machine</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"49\" style=\"mso-height-source:userset;height:36.95pt\">\r\n  <td height=\"49\" class=\"xl68\" width=\"186\" style=\"height:36.95pt;width:140pt\">Button\r\n  hole&nbsp;</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Máy khuy đầu\r\n  bằng</td>\r\n </tr>\r\n <tr height=\"49\" style=\"mso-height-source:userset;height:36.95pt\">\r\n  <td height=\"49\" class=\"xl68\" width=\"186\" style=\"height:36.95pt;border-top:none;\r\n  width:140pt\">Direct Drive</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">mô\r\n  tơ liền trục</td>\r\n </tr></tbody></table></div>', '1', '2', '3', '0', '0', '1354348386', '0', '1466067296', '0', '1', '0', '/uploads/photos/may-thua-khuy-baoyu-bml-781.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y th\\u00f9a khuy BAOYU BML-781.JPG\",\"type\":\"image\\/jpeg\",\"size\":2467478,\"width\":4032,\"height\":3024,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '0', '1');
INSERT INTO `products` VALUES ('31', 'Máy trang trí ( 100 mẫu) BAOYU BML-20U53D', 'may-trang-tri-100-mau-baoyu-bml-20u53d', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1900BSK/1903BSK</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Computerized bar tack and &nbsp;button attach machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1900BSK/1903BSK</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Computerized bar tack and &nbsp;button attach machine</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\"><tbody><tr height=\"100\" style=\"mso-height-source:userset;height:75.0pt\">\r\n  <td height=\"100\" class=\"xl68\" width=\"186\" style=\"height:75.0pt;width:140pt\">Bartack\r\n  and button attach can exchange</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"border-left:none;width:143pt\">Chuyển đổi giữa\r\n  bọ và nút</td></tr></tbody></table></div>', '1', '2', '6', '0', '0', '1354348442', '0', '1466067303', '0', '1', '0', '/uploads/photos/may-trang-tri-(-100-mau)-baoyu-bml-20u53d.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y trang tr\\u00ed ( 100 m\\u1eabu) BAOYU BML-20U53D.JPG\",\"type\":\"image\\/jpeg\",\"size\":2092831,\"width\":4032,\"height\":3024,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '0', '1');
INSERT INTO `products` VALUES ('32', 'Máy vắt sổ 3 chỉ điện tử, cắt chỉ tự  động, JACK JK-798E-3P-504-02-233', 'may-vat-so-3-chi-dien-tu-cat-chi-tu-dong-jack-jk-798e-3p-504-02-233', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1904BS</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1906BS</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Computerized bar tack machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1904BS</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1906BS</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Computerized bar tack machine</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"29\" style=\"mso-height-source:userset;height:21.95pt\">\r\n  <td height=\"29\" class=\"xl68\" width=\"186\" style=\"height:21.95pt;width:140pt\">Elastic\r\n  thread shirring</td>\r\n  <td class=\"xl69\" width=\"190\" style=\"width:143pt\">có chạy thun</td>\r\n </tr>\r\n <tr height=\"29\" style=\"mso-height-source:userset;height:21.95pt\">\r\n  <td height=\"29\" class=\"xl68\" width=\"186\" style=\"height:21.95pt;border-top:none;\r\n  width:140pt\">computerized machine</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;width:143pt\">máy lap trình\r\n  nhỏ</td>\r\n </tr>\r\n <tr height=\"29\" style=\"mso-height-source:userset;height:21.95pt\">\r\n  <td height=\"29\" class=\"xl68\" width=\"186\" style=\"height:21.95pt;border-top:none;\r\n  width:140pt\">SIZE: 60mm x 40mm</td>\r\n  <td class=\"xl70\" width=\"190\" style=\"border-top:none;width:143pt\">kt: 60mm x 40mm</td>\r\n </tr></tbody></table></div>', '1', '2', '3', '0', '0', '1354348481', '0', '1466067308', '0', '1', '0', '/uploads/photos/may-vat-so-3-chi-dien-tu,-cat-chi-tu-dong,-jack-jk-798e-3p-504-02-233.jpg', null, '0', null, null, null, '0', '{\"file\":{\"name\":\"M\\u00e1y v\\u1eaft s\\u1ed5 3 ch\\u1ec9 \\u0111i\\u1ec7n t\\u1eed, c\\u1eaft ch\\u1ec9 t\\u1ef1  \\u0111\\u1ed9ng, JACK JK-798E-3P-504-02-233.JPG\",\"type\":\"image\\/jpeg\",\"size\":2435876,\"width\":3264,\"height\":2448,\"extension\":\"JPG\"}}', '0', '0', null, null, '0', '0', '0', '1');
INSERT INTO `products` VALUES ('33', 'Máy vắt sổ 3 chỉ moto liền trục tốc độ cao  JACK JK-803D-M2-04', 'may-vat-so-3-chi-moto-lien-truc-toc-do-cao-jack-jk-803d-m2-04', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1790BK-1</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1790BS-1&nbsp;</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Electronic Button Holing Machine</span></font></div>', '<div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1790BK-1</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">JK-T1790BS-1&nbsp;</span></font></div><div><font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Electronic Button Holing Machine</span></font></div><div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"376\" style=\"border-collapse:\r\n collapse;width:283pt\">\r\n <colgroup><col width=\"186\" style=\"mso-width-source:userset;mso-width-alt:5952;width:140pt\">\r\n <col width=\"190\" style=\"mso-width-source:userset;mso-width-alt:6080;width:143pt\">\r\n </colgroup><tbody><tr height=\"31\" style=\"mso-height-source:userset;height:23.25pt\">\r\n  <td height=\"31\" class=\"xl70\" width=\"186\" style=\"height:23.25pt;width:140pt\">for\r\n  knit and for woven</td>\r\n  <td class=\"xl71\" width=\"190\" style=\"width:143pt\">Dùng cho dệt kim và len</td>\r\n </tr>\r\n <tr height=\"31\" style=\"mso-height-source:userset;height:23.25pt\">\r\n  <td height=\"31\" class=\"xl69\" width=\"186\" style=\"height:23.25pt;border-top:none;\r\n  width:140pt\">25mm</td>\r\n  <td class=\"xl72\" width=\"190\" style=\"border-left:none;width:143pt\">25mm</td>\r\n </tr>\r\n <tr height=\"46\" style=\"mso-height-source:userset;height:34.5pt\">\r\n  <td height=\"46\" class=\"xl73\" width=\"186\" style=\"height:34.5pt;border-top:none;\r\n  width:140pt\">Max length: 120mm (price different)</td>\r\n  <td class=\"xl68\" width=\"190\" style=\"border-top:none;border-left:none;width:143pt\">Max.\r\n  120mm (giá khác)</td>\r\n </tr></tbody></table></div>', '1', '3', '3', '0', '0', '1354348516', '0', '1469538373', '0', '1', '0', '/uploads/photos/may-vat-so-3-chi-moto-lien-truc-toc-do-cao-jack-jk-803d-m2-04.jpg', null, '0', null, null, null, '0', '\"{\\\"file\\\":{\\\"name\\\":\\\"M\\\\u00e1y v\\\\u1eaft s\\\\u1ed5 3 ch\\\\u1ec9 moto li\\\\u1ec1n tr\\\\u1ee5c t\\\\u1ed1c \\\\u0111\\\\u1ed9 cao  JACK JK-803D-M2-04.JPG\\\",\\\"type\\\":\\\"image\\\\\\/jpeg\\\",\\\"size\\\":2095625,\\\"width\\\":3264,\\\"height\\\":2448,\\\"extension\\\":\\\"JPG\\\"}}\"', '0', '0', null, null, '0', '0', '0', '1');

-- ----------------------------
-- Table structure for sections
-- ----------------------------
DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `images` text,
  `description` text NOT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(1) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sections
-- ----------------------------
INSERT INTO `sections` VALUES ('1', 'Home', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('2', 'Thương hiệu', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('3', 'Sản phẩm', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('4', 'Dịch vụ', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('5', 'Đối tác', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('6', 'Giảm giá & Khuyến mãi', null, null, '', '0', '0', '0', null);
INSERT INTO `sections` VALUES ('7', 'Liên hệ', null, null, '', '0', '0', '0', null);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` char(32) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('99sdg5079p7unrf2hnqdj9c3a1', '1469693834', '');
INSERT INTO `sessions` VALUES ('fho9usnm540mke571jdgtrqt10', '1469693836', '');
INSERT INTO `sessions` VALUES ('hrihordib2o5nti37b8ded52j5', '1469693827', '');
INSERT INTO `sessions` VALUES ('m2s4787d4uuju8drqft3ulp9t3', '1469693831', '');
INSERT INTO `sessions` VALUES ('nogmtpdeq20rpkh6gvslvuc6e1', '1469693839', '');
INSERT INTO `sessions` VALUES ('umvv2u4b31mkt5sn8r6g68med0', '1469693819', '');
INSERT INTO `sessions` VALUES ('user', '1469693819', 0x7B226964223A223134363936393239313935373939626266373231386466227D);

-- ----------------------------
-- Table structure for translation
-- ----------------------------
DROP TABLE IF EXISTS `translation`;
CREATE TABLE `translation` (
  `message` varbinary(255) NOT NULL,
  `translation` varchar(255) NOT NULL,
  `language` varchar(5) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`message`,`language`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of translation
-- ----------------------------
INSERT INTO `translation` VALUES (0x41626F7574, 'Über', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'Acerca', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'me concernant ??', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'Info', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41626F7574, 'Info', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41636365737320636F6E74726F6C, 'Zugangskontrolle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41636365737320636F6E74726F6C, 'Controle d acces', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41636365737320636F6E74726F6C, 'Controllo accesso', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Aktion', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Acción', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Action', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E, 'Azione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Aktionen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Acciones', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Actions', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374696F6E73, 'Azioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697661746564, 'erstmalig Aktiviert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697661746564, 'PremiÃ¨re activation de votre compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697661746564, 'Attivato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Aktiv', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Activo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Actif', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Attiv', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'Aktiv', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416374697665, 'ÐÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x416374697665202D204669727374207669736974, 'Aktiv - erster Besuch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697665202D204669727374207669736974, 'Actif - premiÃ¨re visite', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697665202D204669727374207669736974, 'Attivo - Priva visita', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Aktive Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Usuarios activos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Utiliateurs actifs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Utenti attivi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416374697665207573657273, 'Aktywni uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'Aktivitäten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'Actividades', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'ActivitÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41637469766974696573, 'AttivitÃ ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Zur Kontaktliste hinzufügen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Agregar como amigo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Ajouter Ã  ma liste de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416464206173206120667269656E64, 'Aggiungi un contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Administratorposteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Bandeja de entrada de Admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Boite e-mail de l administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'Admin - Posta in arrivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E20696E626F78, 'ZarzÄ…dzaj skrzynkÄ… odbiorczÄ…', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'Gesendete Nachrichten des Administrators', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'Mensajes enviados de Admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'E-mail envoyÃ© par l administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'Admin - Messaggi inviati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2073656E74206D65737361676573, 'WiadomoÅ›ci wysÅ‚ane przez administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Administratoren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Usuarios administradores', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Utenti admin', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E207573657273, 'Administratorzy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'Administratoren können nicht gelöscht werden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, '¡No se pueden eliminar los usuarios Administradores!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'UN compte administrateur ne peut pas Ãªtre supprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'Utente admin non cancellabile!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41646D696E2075736572732063616E206E6F742062652064656C6574656421, 'Nie moÅ¼na usunÄ…Ä‡ konta administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C6C, 'Alle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C, 'Ade tous', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C, 'Tutto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Profilkommentare erlauben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Permitir comentarios en perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Autoriser les commentaires de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F772070726F66696C6520636F6D6D656E7473, 'Consenti commenti profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Erlaubt sind Kleinbuchstaben und Ziffern.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Se permiten letras minúsculas y dígitos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Seules les minuscule et les chiffres sont autorisÃ©s.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Sono consentiti lettere minuscole e numeri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420617265206C6F77657263617365206C65747465727320616E64206469676974732E, 'Erlaubt sind Kleinbuchstaben und Ziffern.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564206C6F77657263617365206C65747465727320616E64206469676974732E, 'Consenti lettere minuscole e numeri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564206C6F77657263617365206C65747465727320616E64206469676974732E, 'Ð”Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ ÑÑ‚Ñ€Ð¾Ñ‡Ð½Ñ‹Ðµ Ð±ÑƒÐºÐ²Ñ‹ Ð¸ Ñ†Ð¸Ñ„Ñ€Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Erlaubte Rollen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Roles permitidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Permission rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'Ruoli autorizzati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F77656420726F6C6573, 'DostÄ™pne role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Erlaubte Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Usuarios permitidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Permission utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'Utenti autorizzati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C6C6F776564207573657273, 'DostÄ™pni uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Existiert bereits.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Ya existe.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Existe dÃ©jÃ .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'GiÃ  esistente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Existiert bereits.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416C7265616479206578697374732E, 'Ð£Ð¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Es ist ein Fehler aufgetreten.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Ocurrió un error al guardar los cambios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Une erreur est survenue.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'Si Ã¨ verificato un errore durante il salvataggio delle modifiche.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C6520736176696E6720796F7572206368616E676573, 'WystÄ…piÅ‚ bÅ‚Ä…d podczas zapisywania Twoich zmian.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C652075706C6F6164696E6720796F75722061766174617220696D616765, 'Ein Fehler ist beim hochladen ihres Profilbildes aufgetreten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C652075706C6F6164696E6720796F75722061766174617220696D616765, 'Une erreur est survenue lors du chargement de votre photo de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x416E206572726F72206F636375726564207768696C652075706C6F6164696E6720796F75722061766174617220696D616765, 'Si Ã¨ verificato un errore durante il caricamento dell\'immagine', 'it', 'yum');
INSERT INTO `translation` VALUES (0x416E73776572, 'Antworten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41707065617220696E20736561726368, 'In der Suche erscheinen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41707065617220696E20736561726368, 'Je souhaite apparaitre dans les rÃ©sultats de recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41707065617220696E20736561726368, 'Mostra nelle ricerche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Sind Sie Sicher, dass Sie Ihren Zugang löschen wollen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, '¿Seguro que desea eliminar su cuenta?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Etes vous sur de vouloir supprimer votre compte?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Sicuro di voler cancellare il tuo account?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207265616C6C79207375726520796F752077616E7420746F2064656C65746520796F7572204163636F756E743F, 'Czy jesteÅ› pewien, Å¼e chcesz usunÄ…Ä‡ konto?', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Sind Sie sicher, dass Sie dieses Element wirklich löschen wollen? ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, '¿Seguro desea eliminar este elemento?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Etes vous sur de supprimÃ© cet elÃ©ment? ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Sicuro di cancellare questo elemento?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2064656C6574652074686973206974656D3F, 'Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ?', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, 'Sind Sie sicher, dass sie diesen Kommentar entfernen wollen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, '¿Estás seguro que deseas borrar este comentario?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, 'Etes vous sur de vouloir supprimer ce commentaire?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520746F2072656D6F7665207468697320636F6D6D656E742066726F6D20796F75722070726F66696C653F, 'Sicuro di voler eliminare il commento dal tuo profilo?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520796F752077616E7420746F2072656D6F7665207468697320667269656E643F, 'Sind Sie sicher, dass Sie diesen Kontakt aus ihrer Liste entfernen wollen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520796F752077616E7420746F2072656D6F7665207468697320667269656E643F, 'ÃŠtes vous sur de vouloir suprimer ce membre de votre liste de contact?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41726520796F75207375726520796F752077616E7420746F2072656D6F7665207468697320667269656E643F, 'Sicuro di voler rimuovere questo contatto?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41737369676E207468697320726F6C6520746F206E6577207573657273206175746F6D61746963616C6C79, 'Rolle automatisch an neue Benutzer zuweisen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41737369676E207468697320726F6C6520746F206E6577207573657273206175746F6D61746963616C6C79, 'RÃ´le automatique pour un nouveau membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41737369676E207468697320726F6C6520746F206E6577207573657273206175746F6D61746963616C6C79, 'Assegna questo ruolo automaticamente ai nuovi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Profilbild', 'de', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Tu Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x41766174617220696D616765, 'Avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Zurück', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Volver', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Retour', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B, 'Indietro', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Zurück zum Posteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Volver a la bandeja de entrada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Retour Ã  la boite mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F20696E626F78, 'Torna alla posta in arrivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Zurück zu meinem Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Volver a mi Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Retour Ã  mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F206D792050726F66696C65, 'Torna al mio profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Zurück zum Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Volver a perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Retour au profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'Torna al mio profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4261636B20746F2070726F66696C65, 'ZurÃ¼ck zum Profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Verbannt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Excluido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Membre banni', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Bannato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Verbannt', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564, 'Ð—Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Gesperrte Benuter', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Usuarios excluidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Utilisateur bloquÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Utenti bannati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42616E6E6564207573657273, 'Zbanowani uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365, 'Durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F7773652067726F757073, 'Buscar grupos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'Benutzeraktivitäten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'Consultar bitácora de actividades del usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'ActivitÃ© des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206C6F6767656420757365722061637469766974696573, 'Naviga attivitÃ  utenti loggati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206D656D6265727368697073, 'Mitgliedschaften kaufen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206D656D6265727368697073, 'Mitgliedschaften kaufen ??', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365206D656D6265727368697073, 'Naviga iscrizioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722061637469766974696573, 'Tätigkeitenhistorie', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722061637469766974696573, 'ActivitÃ© de mon compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722061637469766974696573, 'Naviga attivitÃ  utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Benutzergruppen durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Buscar grupos de usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Rechercher dans un grouppe d utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F77736520757365722067726F757073, 'Naviga gruppi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657267726F757073, 'Gruppen durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657267726F757073, 'Rechercher dans les grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657267726F757073, 'Naviga gruppi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Benutzer durchsuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Buscar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Rechercher dans la liste des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x42726F777365207573657273, 'Naviga utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Abbrechen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Cancelar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Annuler', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C, 'Cancella', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Löschvorgang abbrechen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Cancelar eliminación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Stopper la suppression', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Annulla cancellazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2064656C6574696F6E, 'Anuluj usuwanie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2072657175657374, 'Anfrage zurückziehen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2072657175657374, 'Annuler la demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43616E63656C2072657175657374, 'Cancella richiesta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43616E6E6F74207365742070617373776F72642E2054727920616761696E2E, 'No pudimos guardar tu contraseña. Inténtalo otra vez', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43617465676F7279, 'Kategorie', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652050617373776F7264, 'Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Administratorpasswort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Cambiar contraseña de Admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Changer le mot de passe de l administrateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'Modifica password admin', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652061646D696E2050617373776F7264, 'ZmieÅ„ hasÅ‚o administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Passwort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Cambiar contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Modification du mot de ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Cambia password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67652070617373776F7264, 'Passwort Ã¤ndern', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Änderungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Cambios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Modification', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Modifiche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E676573, 'Zmiany', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Änderungen wurden gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Cambios guardados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Les modifications ont bien Ã©tÃ© enregistrÃ©es.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Modifiche salvate.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E67657320617265207361766564, 'Zmiany zostaÅ‚y zapisane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Änderungen wurde gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Cambio guardado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Modifications mÃ©morisÃ©es.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Modifiche salvate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4368616E6765732069732073617665642E, 'Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Alle auswählen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Seleccionar todos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'SÃ©lectioner tout', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Scegli tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43686F6F736520416C6C, 'Wybierz wszystkie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Stadt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Ciudad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Ville', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'CittÃ ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43697479, 'Miasto', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Spaltentyp in der Datenbank', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Columna tipo de Campo en la base de datos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Type de la colone dans la banque de donnÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Tipo di colonna nel database', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6C756D6E204669656C64207479706520696E207468652064617461626173652E, 'Spaltentyp in der Datenbank', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Kommentar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D6D656E74, 'Commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365, 'Ecrire un message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365, 'Scrivi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Crear mensaje nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Ecrire un nouveau message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F7365206E6577206D657373616765, 'Scrivi nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Creando mensaje nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Ecrire un nouveau message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6D706F73696E67206E6577206D657373616765, 'Scrittura nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Bestätigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Confirmar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Confirmer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D, 'Conferma', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Löschvorgang bestätigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Confirmar eliminación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Confirmation de suppression', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'Conferma cancellazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D2064656C6574696F6E, 'PotwierdÅº usuwanie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'Bestätigung ausstehend', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'Esperando confirmación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'Confirmation en attente', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E6669726D6174696F6E2070656E64696E67, 'In attesa di conferma', 'it', 'yum');
INSERT INTO `translation` VALUES (0x436F6E74656E74, 'Inhalt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x436F6E74656E74, 'Texte du message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x436F6E74656E74, 'Contenuto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Crear', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'CÃ©er', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Aggiungi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'Dodaj', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465, 'ÐÐ¾Ð²Ñ‹Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520416374696F6E, 'Crea azione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Profilfeld anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Crear Campo de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Nouveau champ de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Aggiungi campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Dodaj pole profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652050726F66696C65204669656C64, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Rolle anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Crear Rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'CrÃ©er un rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Crea ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520526F6C65, 'Dodaj rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'Benutzer anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'Crear Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'CrÃ©er un nouvel utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'Nuovo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652055736572, 'ÐÐ¾Ð²Ñ‹Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x437265617465205573657267726F7570, 'Neue Gruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465205573657267726F7570, 'Crea gruppo utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206D792070726F66696C65, 'Mein Profil anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206D792070726F66696C65, 'Crea profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577205472616E736C6174696F6E, 'Neue Übersetzung erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772055736572, 'Neuen Benutzer anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577205573657267726F7570, 'Neue Gruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577205573657267726F7570, 'Crear nuevo grupo de usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Neue Aktion', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Crear acción nueva', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Nouvelle action', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720616374696F6E, 'Nuova azione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Neue Feldgruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Crear campo de grupo nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'CrÃ©er un nouveau champs dans le groupe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Nuovo campo gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577206669656C642067726F7570, 'Dodaj nowÄ… grupÄ™ pÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207061796D656E742074797065, 'Neue Zahlungsart hinzufügen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207061796D656E742074797065, 'CrÃ©er un nouveau mode de paiement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207061796D656E742074797065, 'Nuovo tipo pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Neue Rolle anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Crear rol nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'CrÃ©er un nouveau rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Nuovo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E657720726F6C65, 'Dodaj nowÄ… rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Neues Einstellungsprofil erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Crear ajuste de perfil nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'crÃ©er une nouvelle configuration de profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Nuova opzion profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772073657474696E67732070726F66696C65, 'Dodaj nowe ustawienia profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'Crear usuario nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'CrÃ©er un nouveau membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'Nuovo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E65772075736572, 'Dodaj nowego uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207573657267726F7570, 'Neue Gruppe erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207573657267726F7570, 'CrÃ©er un nouveau grouppe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x437265617465206E6577207573657267726F7570, 'Nuovo usergroup', 'it', 'yum');
INSERT INTO `translation` VALUES (0x437265617465207061796D656E742074797065, 'Zahlungsart anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x437265617465207061796D656E742074797065, 'Crea tipo pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Ein neues Profilfeld erstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Crear campo de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'CrÃ©er un nouveau champ de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Crea campo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64, 'Dodaj pole do profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64732067726F7570, 'Crear grupo de campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64732067726F7570, 'Nuovo gruppo di campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652070726F66696C65206669656C64732067726F7570, 'Dodaj grupÄ™ pÃ³l do profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Neue Rolle anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Crear rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'CrÃ©er un nouveau rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Crea ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x43726561746520726F6C65, 'Dodaj rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Benutzer anlegen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Crear usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'CrÃ©er un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Crea utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4372656174652075736572, 'Dodaj uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Datum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Fecha', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Date', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Data', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44617465, 'Data', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Default', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Predeterminado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Default', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'Predefinito', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656661756C74, 'ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Zugang löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Eliminar Cuenta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Supprimer le compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465204163636F756E74, 'Cancella account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652050726F66696C65204669656C64, 'Cancella campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652050726F66696C65204669656C64, 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Benutzer löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Eliminar Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Supprimer le membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Cancella utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652055736572, 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Zugang löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Eliminar cuenta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Supprimer ce compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'Cancella account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206163636F756E74, 'UsuÅ„ konto', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x44656C6574652066696C65, 'Cancella file', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Nachricht löschen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Eliminar mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Supprimer le message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C657465206D657373616765, 'Cancella messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656C65746564, 'Gelöscht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656C65746564, 'SupprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656C65746564, 'Cancella', 'it', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Ablehnen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Negar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Refuser', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x44656E79, 'Vietao', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Beschreibung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Descripción', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Description', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Descrizione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4465736372697074696F6E, 'Opis', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Anzahl der heute angemeldeten Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Diferentes usuarios iniciaron sesión hoy', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Nombre d utilisateurs inscrits/connectÃ©s aujourd hui.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Numero di utenti connessi oggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E74207573657273206C6F6767656420696E20746F646179, 'Liczba dzisiejszych unikalnych logowaÅ„', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Insgesamt betrachtete Profile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Perfiles diferentes vistos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Total des profils consultÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446966666572656E7420766965776E2050726F66696C6573, 'Visualizzazioni profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Reihenfolgenposition, in der das Feld angezeigt wird', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Mostrar orden de los campos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Ordre de position dans laquelle le champ apparaitra', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'Mostra ordine dei campi.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'KolejnoÅ›Ä‡ wyÅ›wietlania pÃ³l.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F66206669656C64732E, 'ÐŸÐ¾Ñ€ÑÐ´Ð¾Ðº Ð¾Ñ‚Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð¿Ð¾Ð»ÐµÐ¹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Anzeigereihenfolge der Gruppe.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Mostrar orden del grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Annonces ordonnÃ©es du grouppe.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'Ordine di visualizzazione del gruppo.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446973706C6179206F72646572206F662067726F75702E, 'WyÅ›wietl kolejnoÅ›Ä‡ grup.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742061707065617220696E20736561726368, 'Nicht in der Suche erscheinen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742061707065617220696E20736561726368, 'Ne pas paraitre dans les rÃ©sultat de recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742061707065617220696E20736561726368, 'Non mostrare nelle ricerche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F77206D79206F6E6C696E6520737461747573, 'Status verstecken', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F77206D79206F6E6C696E6520737461747573, 'Ne pas rendre mon profil visible lorsque je suis en ligne', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F77206D79206F6E6C696E6520737461747573, 'Non mostrare il mio stato online', 'it', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F7720746865206F776E6572206F6620612070726F66696C65207768656E20692076697369742068696D, 'Niemandem zeigen, wen ich besucht habe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F7720746865206F776E6572206F6620612070726F66696C65207768656E20692076697369742068696D, 'Ne pas montrer les profils que j ai visitÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x446F206E6F742073686F7720746865206F776E6572206F6620612070726F66696C65207768656E20692076697369742068696D, 'Non mostrare al proprietario quando visito il suo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4475726174696F6E20696E2064617973, 'Gültigkeitsdauer in Tagen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4475726174696F6E20696E2064617973, 'ValiditÃ© en jours', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4475726174696F6E20696E2064617973, 'Durata in giorni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'E-Mail Adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'Correo electrónico', 'es', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'Adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C2061646472657373, 'Indirizzo email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x452D4D61696C20616C726561647920696E207573652E20496620796F752068617665206E6F742072656769737465726564206265666F72652C20706C6561736520636F6E74616374206F75722053797374656D2061646D696E6973747261746F722E, 'Este correo ya está siendo usado por alguien. Si no te habías registrado antes entonces contáctanos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'E-mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'Correo electrónico', 'es', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'E-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'E-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'Mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x452D6D61696C, 'Ð­Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð°Ñ Ð¿Ð¾Ñ‡Ñ‚Ð°', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Editar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Editer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Modifica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Bearbeiten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x45646974, 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Persönliche Daten bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Editar datos personales', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Modifier mes donnÃ©es personnelles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4564697420706572736F6E616C2064617461, 'Modifica dati personali', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Profil bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Editar perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Editer le profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Modifica profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Meine Profildaten bearbeiten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65, 'Ð ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Profilfeld bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Editar campo del perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Editer les champ du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Modifica campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456469742070726F66696C65206669656C64, 'Profilfeld bearbeiten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456469742074657874, 'Modifica testo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Diese Rolle bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Editar este rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Modifier ce rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'Modifica questo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x45646974207468697320726F6C65, 'ZmieÅ„ tÄ™ rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'E-Mail ist nicht korrekt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'Email incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'L adresse e-mail est incorrecte.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'Email non corretta.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'Mejl jest niepoprawny.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C20697320696E636F72726563742E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ Ð½Ðµ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x456D61696C206973206E6F7420736574207768656E20747279696E6720746F2073656E6420526567697374726174696F6E20456D61696C, 'Debes colocar el correo electrónico para enviar el correo de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Captcha Überprüfung aktivieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Habilitar Captcha', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Activer le controle par Captcha', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'Attiva Captcha', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652043617074636861, 'WÅ‚Ä…cz Captcha', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Aktivierung per E-Mail einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Habilitar Activación por Email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Activer l activation par e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'Attiva attivazione via Email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520456D61696C2041637469766174696F6E, 'WÅ‚Ä…cz aktywacjÄ™ mejlem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Profilhistorie einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Habilitar Historial de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Activer le protocole des profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'Attiva storico Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C652050726F66696C6520486973746F7279, 'WÅ‚Ä…cz historiÄ™ profilÃ³w', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Wiederherstellung einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Habilitar Recuperación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Activer la restauration', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'Attiva rispristino', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C65205265636F76657279, 'WÅ‚Ä…cz odzyskiwanie haseÅ‚', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Registrierung einschalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Habilitar Registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Activer l enregistrement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'Attiva registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E61626C6520526567697374726174696F6E, 'WÅ‚Ä…cz rejestracjÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x456E642064617465, 'Enddatum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E642064617465, 'Data scadenza', 'it', 'yum');
INSERT INTO `translation` VALUES (0x456E6473206174, 'Endet am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x456E6473206174, 'Scade il', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Fehlermeldung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Mensaje de Error', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Message d erreur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Messaggio d\'errore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72204D657373616765, 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¾Ð± Ð¾ÑˆÐ¸Ð±ÐºÐµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Fehlermeldung falls die Validierung fehlschlägt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Mensaje de error cuando la Validación falla', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Message d erreur pour le cas ou la validation Ã©choue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E2056616C69646174696F6E206661696C732E, 'Messaggio d\'errore se fallisce la validazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E20796F752076616C69646174652074686520666F726D2E, 'Messaggio d\'errore durante la validazione del form.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72206D657373616765207768656E20796F752076616C69646174652074686520666F726D2E, 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¾Ð± Ð¾ÑˆÐ¸Ð±ÐºÐµ Ð¿Ñ€Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐµ Ñ„Ð¾Ñ€Ð¼Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72207768696C652070726F63657373696E67206E65772061766174617220696D616765203A207B6572726F725F6D6573736167657D3B2046696C65207761732075706C6F6164656420776974686F757420726573697A696E67, 'Das Bild konnte nicht richtig skaliert werden: {error_message}. Es wurde trotzdem erfolgreich hochgeladen und in ihrem Profil aktiviert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72207768696C652070726F63657373696E67206E65772061766174617220696D616765203A207B6572726F725F6D6573736167657D3B2046696C65207761732075706C6F6164656420776974686F757420726573697A696E67, 'L image n a pas pu Ãªtre retaillÃ©e automatiquement lors du chargement. : {error_message}. elle a Ã©tÃ© cependant chargÃ©e avec succÃ¨s et activÃ©e dans votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4572726F72207768696C652070726F63657373696E67206E65772061766174617220696D616765203A207B6572726F725F6D6573736167657D3B2046696C65207761732075706C6F6164656420776974686F757420726573697A696E67, 'Errore processando il nuovo avatar: {error_message}. File caricato senza ridimensionamento.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Feld', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64, 'Pole', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Feldgröße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Tamaño del Campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Longueur du champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Dimensione campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65, 'Ð Ð°Ð·Ð¼ÐµÑ€ Ð¿Ð¾Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'min Feldgröße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'Tamaño mínimo del campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'longueur du champ minimum', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'Dimesione minima campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642053697A65206D696E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Feldtyp', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Tipo de Campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Type du champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Tipo campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642054797065, 'Ð¢Ð¸Ð¿ Ð¿Ð¾Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Feldgruppe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Grupo de Campos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Champ des groupes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Campi gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642067726F7570, 'Grupa pÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Feldname in der Ursprungssprache', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nombre del campo en el idioma \"sourceLanguage\".', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Non du champ dans la langue standard', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nome campo per il linguaggio di \"sourceLanguage\".', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Feldname in der Ursprungssprache', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ Ð¿Ð¾Ð»Ñ Ð½Ð° ÑÐ·Ñ‹ÐºÐµ \"sourceLanguage\".', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Feldgröße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Tamaño del campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Longueur du champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'Dimensione campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A65, 'FeldgrÃ¶ÃŸe', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520636F6C756D6E20696E207468652064617461626173652E, 'Dimensione campo nel database', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520636F6C756D6E20696E207468652064617461626173652E, 'Ð Ð°Ð·Ð¼ÐµÑ€ Ð¿Ð¾Ð»Ñ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð² Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Feldgröße in der Datenbank', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Tamaño del campo en la base de datos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Longueur du champ dans la banque de donnÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'Dimensione campo nel database', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642073697A6520696E207468652064617461626173652E, 'FeldgrÃ¶ÃŸe in der Datenbank', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Feldtyp', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Tipo de campo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Type de champ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Tipo campo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C642074797065, 'Feldtyp', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64207479706520636F6C756D6E20696E207468652064617461626173652E, 'Tipo campo nel database.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64207479706520636F6C756D6E20696E207468652064617461626173652E, 'Ð¢Ð¸Ð¿ Ð¿Ð¾Ð»Ñ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð² Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ….', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669656C64732077697468203C7370616E20636C6173733D227265717569726564223E2A3C2F7370616E3E206172652072657175697265642E, 'Felder mit <span class=\"required\">*</span> sind Pflichtfelder.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669727374204E616D65, 'Nome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669727374204E616D65, 'Ð˜Ð¼Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Vorname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Nombre', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'PrÃ©nom', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Cognome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4669727374206E616D65, 'Vorname', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Für alle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Para todos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Pour tous', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Per tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x466F7220616C6C, 'Ð”Ð»Ñ Ð²ÑÐµÑ…', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x466F726D2076616C69646174696F6E206572726F72, 'Error en la validación del formulario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Kontakte', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473, 'Contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473206F66207B757365726E616D657D, 'Kontakte von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473206F66207B757365726E616D657D, 'Contact de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473206F66207B757365726E616D657D, 'Contatti di {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Kontakt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Amistades', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970, 'Contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Freundschaft bestätigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Amistad confirmada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Demande de contact confirmÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E647368697020636F6E6669726D6564, 'Contatto confermato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E64736869702072656A6563746564, 'Kontaktanfrage abgelehnt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E64736869702072656A6563746564, 'Demande de contact refusÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E64736869702072656A6563746564, 'Amizicia rigettata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'Kontaktbestätigung ausstehend', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'Ya se envió la solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'En attente de confirmation', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420616C72656164792073656E74, 'Richiesta di contatto giÃ  inviata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'Kontaktanfrage an {username} gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'La solicitud de amistad a {username} ha sido enviada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'Demande de contact envoyÃ©e Ã  {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420666F72207B757365726E616D657D20686173206265656E2073656E74, 'Inviata richiesta di contatto a {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Kontaktanfrage zurückgewiesen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Solicitud de amistad rechazada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Votre demande de contact a Ã©tÃ© rejetÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x467269656E6473686970207265717565737420686173206265656E2072656A6563746564, 'Richiesta di contatto respinta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Von', 'de', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Desde', 'es', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'De', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Da', 'it', 'yum');
INSERT INTO `translation` VALUES (0x46726F6D, 'Od', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x47656E6572616C, 'Allgemein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47656E6572616C, 'Generale', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'Zufallsbenutzer erzeugen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'Genera datos de prueba', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'GÃ©nÃ©rer un compte membre-dÃ©mo', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47656E65726174652044656D6F2044617461, 'Genera dati demo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Zum Profil von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Ir al perfil de {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Voir le profil de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x476F20746F2070726F66696C65206F66207B757365726E616D657D, 'Vai al profilo di {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Berechtigung zuweisen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Otorgar permiso', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Attribuer une permission ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4772616E74207065726D697373696F6E, 'Assegna permesso', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Gruppenname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nombre de grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nom du groupe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nome gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570204E616D65, 'Nazwa grupy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Gruppenname in der Basissprache.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nombre del grupo en el idioma \"sourceLanguage\".', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nom du groupe dans la langue principale.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Il nome del gruppo nella lingua di base.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206E616D65206F6E20746865206C616E6775616765206F662022736F757263654C616E6775616765222E, 'Nazwa grupy w jÄ™zyku uÅ¼ytkownika.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'Gruppeneigentümer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'Dueño del grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'PropriÃ©taire du grouppe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570206F776E6572, 'Proprietario gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Titel der Gruppe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Título del grupo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Titre du grouppe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x47726F7570207469746C65, 'Titolo gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x486176696E67, 'Anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x486176696E67, 'Annonce', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x486176696E67, 'Visualizza', 'it', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Verstecken', 'de', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Escondido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'CachÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Nascosto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x48696464656E, 'Ð¡ÐºÑ€Ñ‹Ñ‚', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x486F7720657870656E736976652069732061206D656D626572736869703F, 'Preis der Mitgliedschaft', 'de', 'yum');
INSERT INTO `translation` VALUES (0x486F7720657870656E736976652069732061206D656D626572736869703F, 'Prix de l abbonement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x486F7720657870656E736976652069732061206D656D626572736869703F, 'Quanto costa l\'iscrizione?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x486F77206D616E7920646179732077696C6C20746865206D656D626572736869702062652076616C6964206166746572207061796D656E743F, 'Wie viele Tage ist die Mitgliedschaft nach Zahlungseingang gültig?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x486F77206D616E7920646179732077696C6C20746865206D656D626572736869702062652076616C6964206166746572207061796D656E743F, 'Nombre de jours pour la validitÃ© d un abbonement aprÃ¨s paiement?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x486F77206D616E7920646179732077696C6C20746865206D656D626572736869702062652076616C6964206166746572207061796D656E743F, 'Quanti giorni Ã¨ valida l\'iscrizione dopo il pagamento?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignorieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignorar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignorer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F7265, 'Ignora', 'it', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Ignorierliste', 'de', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Usuarios ignorados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Liste noire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x49676E6F726564207573657273, 'Utenti ignorati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Inaktive Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Usuarios inactivos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Utilisateur inactif', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Utenti inattivi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E616374697665207573657273, 'Nieaktywni uÅ¼ytkownicy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C, 'El enlace de activación que usaste es incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'Falsche Aktivierungs URL.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'URL de activación incorrecta.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'Le lien d activation de votre compte est incorrect ou pÃ©rimÃ©. Consultez notre FAQ: mot clÃ©= inscription ou contactez gratuitement notre Help-Center en ligne sur la page d aide.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'URL di attivazione incorretto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'Falsche Aktivierungs URL.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742061637469766174696F6E2055524C2E, 'ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð°Ñ ÑÑÑ‹Ð»ÐºÐ° Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸ ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Falsches Passwort (minimale Länge 4 Zeichen).', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Contraseña incorrecta (debe tener mínimo 4 caracteres).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Mot de passe incorrect (longueur minimal de 4 charactÃ¨res).', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Password sbagliata (lunga almeno 4 caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'Falsches Passwort (minimale LÃ¤nge 4 Zeichen).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742070617373776F726420286D696E696D616C206C656E67746820342073796D626F6C73292E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð°Ñ Ð´Ð»Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ 4 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Recovery link ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Enlace de recuperación que usaste es incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Le lien de restauration est incorrect ou pÃ©rimÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Link ripristino incorretto.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'Recovery link ist falsch.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F7272656374207265636F76657279206C696E6B2E, 'ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð°Ñ ÑÑÑ‹Ð»ÐºÐ° Ð²Ð¾ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð¿Ð°Ñ€Ð¾Ð»Ñ.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Im Benutzernamen sind nur Buchstaben und Zahlen erlaubt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Caracteres incorrectos. (A-z0-9)', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Pour le choix de votre nom d utilisateur seules les lettres de l alphabet et les chiffres sont acceptÃ©s .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Sono consentiti solo lettere e numeri', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Im Benutzernamen sind nur Buchstaben und Zahlen erlaubt.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F72726563742073796D626F6C27732E2028412D7A302D3929, 'Ð’ Ð¸Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð´Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð»Ð°Ñ‚Ð¸Ð½ÑÐºÐ¸Ðµ Ð±ÑƒÐºÐ²Ñ‹ Ð¸ Ñ†Ð¸Ñ„Ñ€Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Falscher Benutzername (Länge zwischen 3 und 20 Zeichen).', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Nombre de usuario incorrecto (debe tener longitud entre 3 y 20 caracteres)', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Nom d utilisateur incorrect (Longueur comprise entre 3 et 20 charactÃ¨res).', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Username errato (lunghezza tra i 3 e i 20 caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Falscher Benutzername (LÃ¤nge zwischen 3 und 20 Zeichen).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x496E636F727265637420757365726E616D6520286C656E677468206265747765656E203320616E642032302063686172616374657273292E, 'Ð”Ð»Ð¸Ð½Ð° Ð¸Ð¼ÐµÐ½Ð¸ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ Ð¾Ñ‚ 3 Ð´Ð¾ 20 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð².', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Weitere Anweisungen wurden an ihr E-Mail Postfach geschickt. Bitte prüfen Sie ihre E-Mails', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Se enviarion instrucciones a tu correo. Por favor, ve tu cuenta de correo.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous a Ã©tÃ© envoyÃ© par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E737472756374696F6E732068617665206265656E2073656E7420746F20796F752E20506C6561736520636865636B20796F757220656D61696C2E, 'Istruzioni inviate per email. Controlla la tua casella di posta elettronica.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x496E76616C6964207265636F76657279206B6579, 'Fehlerhafter Wiederherstellungsschlüssel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Einladung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Invitaciones', 'es', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Invitation', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x496E7669746174696F6E, 'Invito', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4973206D656D6265727368697020706F737369626C65, 'Mitgliedschaft möglich?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4973206D656D6265727368697020706F737369626C65, 'Inscription possible?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4973206D656D6265727368697020706F737369626C65, 'Iscrizione possibile?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4A6F696E2067726F7570, 'Beitreten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4A6F696E2067726F7570, 'Collega al gruppo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4A756D7020746F2070726F66696C65, 'Zum Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4A756D7020746F2070726F66696C65, 'Consulter le profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4A756D7020746F2070726F66696C65, 'Vai al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, 'Sprache', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, 'Idioma', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, '	Langue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C616E6775616765, 'Lingua', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374204E616D65, 'Cognome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374204E616D65, 'Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nachname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Apellido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nom de famille', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374206E616D65, 'Nachname', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'Letzter Besuch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'òltima visita', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'DernÃ¨re visite', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'Ultima visita', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'Letzter Besuch', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C617374207669736974, 'ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹ Ð²Ð¸Ð·Ð¸Ñ‚', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6574206D652061707065617220696E2074686520736561726368, 'Ich möchte in der Suche erscheinen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6574206D652061707065617220696E2074686520736561726368, 'Je ne souhaite pas apparaitre dans les rÃ©sultats des moteurs de recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6574206D652061707065617220696E2074686520736561726368, 'Mostrami nei risultati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C65742074686520757365722063686F6F736520696E20707269766163792073657474696E6773, 'Den Benutzer entscheiden lassen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C65742074686520757365722063686F6F736520696E20707269766163792073657474696E6773, 'Laisser l utilisateur choisir lui-mÃªme', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C65742074686520757365722063686F6F736520696E20707269766163792073657474696E6773, 'Consentire all\'utente di scegliere le impostazioni della privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Zwischen Groß-und Kleinschreibung wird nicht unterschieden.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Las letras nos son sensibles a mayúsculas y minúsculas.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Aucune importance ne sera apportÃ©e aux minuscules ou majuscules.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'La ricerca non Ã¨ case sensitive.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Zwischen GroÃŸ-und Kleinschreibung wird nicht unterschieden.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C65747465727320617265206E6F7420636173652D73656E7369746976652E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð½Ðµ Ð¸Ð¼ÐµÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742050726F66696C65204669656C64, 'Lista campi Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742050726F66696C65204669656C64, 'Ð¡Ð¿Ð¸ÑÐ¾Ðº', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742055736572, 'Lista utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742055736572, 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Rollen anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Listar roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'liste des rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Lista ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C69737420726F6C6573, 'Lista rÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Benutzer auflisten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Listar usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Liste complÃ¨tes des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Lista utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6973742075736572, 'Benutzer auflisten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Listar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Liste des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Lista utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C697374207573657273, 'Lista uÅ¼ytkownikÃ³w', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F672070726F66696C6520766973697473, 'Meine Profilbesuche anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F672070726F66696C6520766973697473, 'Voir les statistiques des visiteurs de mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F672070726F66696C6520766973697473, 'Log visite profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F6767656420696E206173, 'Angemeldet als', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F6767656420696E206173, 'ConnectÃ© en tant que', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F6767656420696E206173, 'Loggato come', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Anmeldung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Iniciar sesión', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Entra', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Logowanie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E, 'Ð’Ñ…Ð¾Ð´', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Anmeldungsart', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Tipo de inicio de sesión', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Mode de connection', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Tipo login', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E2054797065, 'Rodzaj logowania', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Anmeldung per Benutzername oder E-Mail adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Inicio de sesión por Email y Nombre de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Connection avec le nom d utilisateur ou adresse e-mail.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Login con il nome utente o l\'indirizzo e-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F77656420627920456D61696C20616E6420557365726E616D65, 'Logowanie przez nazwÄ™ lub mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Anmeldung nur per E-Mail adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Inicio de sesión sólo por Email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'COnnection avec l adresse e-mail seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Login solo tramite email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920456D61696C, 'Logowanie poprzez mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Anmeldung nur per Benutzername', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Inicio de sesión sólo por Nombre de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Connection avec le nom d utilisateur seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Login solo tramite username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E20616C6C6F776564206F6E6C7920627920557365726E616D65, 'Logowanie poprzez nazwÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F67696E206973206E6F7420706F737369626C6520776974682074686520676976656E2063726564656E7469616C73, 'Anmeldung mit den angegebenen Werten nicht möglich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Abmelden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Cerrar sesión', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'DÃ©connection', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Esci', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Wyloguj', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4C6F676F7574, 'Ð’Ñ‹Ð¹Ñ‚Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742050617373776F72643F, 'Password dimenticata?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742050617373776F72643F, 'Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Passwort vergessen?', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, '¿Olvidó la contraseña?', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Mot de passe oubliÃ©?', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Password dimenticata?', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4C6F73742070617373776F72643F, 'Passwort vergessen?', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Nachrichtenversandmethode', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Método de envío de correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Mode d envoie des messages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Metodo invio mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61696C2073656E64206D6574686F64, 'Metoda wysyÅ‚ania mejli', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616B65207B6669656C647D207075626C696320617661696C61626C65, 'Das Feld {field} öffentlich machen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616B65207B6669656C647D207075626C696320617661696C61626C65, 'Rendre publique le champ {field}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616B65207B6669656C647D207075626C696320617661696C61626C65, 'Rendi pubblico il campo {field}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Administrar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Gestion', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Gestione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520416374696F6E73, 'Gestione azioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'Profilfeld verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'Administrar Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'GÃ©rer le champ de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'Gestione campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'ZarzÄ…dzaj polem profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C64, 'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð¿Ð¾Ð»ÐµÐ¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'Profilfelder verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'Administrar Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'GÃ©rer les champs de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'Gestione campi Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'ZarzÄ…dzaj polami profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C65204669656C6473, 'ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð¿Ð¾Ð»ÐµÐ¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'Profile verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'Administrar Perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'GÃ©rer les profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652050726F66696C6573, 'Gestione profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Rollenverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Administrar Roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Gestion des rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'Gestione Ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520526F6C6573, 'ZarzÄ…dzaj rolami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Benutzerverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Administrar Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Gestion utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Benutzerverwaltung', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652055736572, 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Benutzerverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Administrar Usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Gestion des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765205573657273, 'Gestione utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'Feldgruppen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'Administrar grupos de campos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'GÃ©rer les champs des groupes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'Gestione campo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206669656C642067726F757073, 'ZarzÄ…dzaj grupami pÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Freundschaftsverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Administrar amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Gestion des contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520667269656E6473, 'Gestione contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'Meine Benutzer verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'Administrar mis usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'GÃ©rer mes membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'Gestione utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765206D79207573657273, 'ZarzÄ…dzaj moimi uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207061796D656E7473, 'Zahlungsarten verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207061796D656E7473, 'Gestione pagamenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207065726D697373696F6E73, 'Berechtigungen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207065726D697373696F6E73, 'Gestione permessi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Profilfelder verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Administrar Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'GÃ©rer les champs du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Gestione campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65204669656C6473, 'Profilfelder verwalten', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'Administrar grupos de campos de perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'GÃ©rer les champs des profils de grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'Gestione campo profilo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C642067726F757073, 'ZarzÄ…dzaj grupami pÃ³l w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'Profilfelder verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'GÃ©rer les champs de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'Gestione campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C6473, 'ZarzÄ…dzaj polami profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C64732067726F757073, 'Gestione campi profilo gruppi ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C65206669656C64732067726F757073, 'ZarzÄ…dzaj grupami pÃ³l w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'Profile verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'Administrar perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'GÃ©rer les profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'Gestione profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E6167652070726F66696C6573, 'ZarzÄ…dzaj profilem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'Rollen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'Adminsitrar roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'GÃ©rer les rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'Gestione Ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520726F6C6573, 'ZarzÄ…dzaj rolami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Texteinstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Administrar configuración de texto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Option de texte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746578742073657474696E6773, 'Impostazioni di testo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'dieses Profil bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'Administrar este perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'Modifier ce profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'Modifica profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520746869732070726F66696C65, 'ZarzÄ…dzaj tym profilem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Benutzergruppen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Administrar Grupos de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Gerer les utilisateurs des grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E61676520757365722047726F757073, 'Gestine gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'Benutzer verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'Administrar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'GÃ©rer les membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'Gestione utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D616E616765207573657273, 'ZarzÄ…dzaj uÅ¼ytkownikaki', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D616E67652050726F66696C65204669656C64, 'Mange Profil Field', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D616E67652050726F66696C65204669656C64, 'Administrar Campo del Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D616E67652050726F66696C65204669656C64, 'Gestione campo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61726B2061732072656164, 'Als gelesen markieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D61726B2061732072656164, 'Marquer comme lu', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D61726B2061732072656164, 'Segna come letto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Treffer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Combinar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'RÃ©sultat', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Corrispondenza (RegExp)', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D61746368, 'Ð¡Ð¾Ð²Ð¿Ð°Ð´ÐµÐ½Ð¸Ðµ (RegExp)', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D656D62657273686970, 'Mitgliedschaft', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D62657273686970, 'Devenir membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D656D62657273686970, 'Iscrizione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020656E64732061743A207B646174657D, 'Mitgliedschaft endet am: {date}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020656E64732061743A207B646174657D, 'Iscrizione termina il: {date}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020686173206E6F74206265656E20706179656420796574, 'Zahlungseingang noch nicht erfolgt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697020686173206E6F74206265656E20706179656420796574, 'Iscrizione non pagata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D626572736869702070617965642061743A207B646174657D, 'Zahlungseingang erfolgt am: {date}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D626572736869702070617965642061743A207B646174657D, 'Iscrizione pagata il: {date}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697073, 'Mitgliedschaften', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D656D6265727368697073, 'Iscrizioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Nachricht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D657373616765, 'Messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220686173206265656E2073656E7420746F207B746F7D, 'Nachricht \"{message}\" wurde an {to} gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220686173206265656E2073656E7420746F207B746F7D, 'Message \"{message}\" a Ã©tÃ© envoyÃ© {to} ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220686173206265656E2073656E7420746F207B746F7D, 'Messaggio \"{message}\" Ã¨ stato inviato a {to}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220776173206D61726B65642061732072656164, 'Nachricht \"{message}\" wurde als gelesen markiert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220776173206D61726B65642061732072656164, 'Message \"{message}\" marquer comme lu.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520227B6D6573736167657D2220776173206D61726B65642061732072656164, 'Messaggio \"{message}\" Ã¨ stato contrassegnato come letto.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676520636F756E74, 'Anzahl Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D, 'Nachricht von', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D, 'Message de', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D, 'Messaggio da', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Nachricht von ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Mensaje de', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Message de ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Messaggio da ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167652066726F6D20, 'Nachricht von ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Mensajes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'Messagi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D65737361676573, 'WiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Nachrichtensystem', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Sistema de mensajes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Message-Board', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'Sistema messaggistica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6573736167696E672073797374656D, 'System wiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Minimale Länge des Passworts 4 Zeichen.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Mínimo 4 caracteres para la contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'La longueur de votre mot de passe doit comporter au moins quatre charactÃ¨res.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Lunghezza minima password di 4 caratteri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'Minimale LÃ¤nge des Passworts 4 Zeichen.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D696E696D616C2070617373776F7264206C656E67746820342073796D626F6C732E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð°Ñ Ð´Ð»Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ 4 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Moduleinstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Ajustes del módulo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'RÃ©glage des modules', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Opzioni modulo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C652073657474696E6773, 'Ustawienia moduÅ‚u', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C6520746578742073657474696E6773, 'Ajustes de texto del módulo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C6520746578742073657474696E6773, 'Opzioni testo modulo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D6F64756C6520746578742073657474696E6773, 'Ustawienia tekstÃ³w moduÅ‚u', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Posteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Mi bandeja de entrada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Boite e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D7920496E626F78, 'Moja skrzynka odbiorcza', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Meine Kontakte', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Mis amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Mes contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D7920667269656E6473, 'Contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Meine Gruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Mis grupos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Mes grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D792067726F757073, 'Gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Mein Posteingang', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Mi bandeja de entrada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Ma boite e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D7920696E626F78, 'Posta in arrivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D79206D656D6265727368697073, 'Meine Mitgliedschaften', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D79206D656D6265727368697073, 'Options de mon compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D79206D656D6265727368697073, 'Iscrizioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Mein Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Mi perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4D792070726F66696C65, 'Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E64736869702072657175657374, 'nueva solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E647368697020726571756573742066726F6D207B757365726E616D657D, 'neue Kontaktanfrage von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E647368697020726571756573742066726F6D207B757365726E616D657D, 'Nouvelle demande de contact de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E647368697020726571756573742066726F6D207B757365726E616D657D, 'Nuova richiesta di contatto da {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Neue Freundschaftsanfragen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Nueva solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Nouvelle demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E657720667269656E6473686970207265717565737473, 'Nuova richiesta contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6577206D65737361676573, 'Neue Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6577206D65737361676573, 'Nouveaux mÃ©ssages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6577206D65737361676573, 'Nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F7264, 'Neues Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F7264, 'Nouveau mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F7264, 'Nuovo Password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Neues Passwort wird gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'La contraseña nueva ha sido guardada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Votre nouveau mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Nuova passowrd salvata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'Neues Passwort wird gespeichert.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070617373776F72642069732073617665642E, 'ÐÐ¾Ð²Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ ÑÐ¾Ñ…Ñ€Ð°Ð½ÐµÐ½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E74, 'Nuevo comentario de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E742066726F6D207B757365726E616D657D, 'Neuer Profilkommentar von {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E742066726F6D207B757365726E616D657D, 'Nouveau commentaire pour le profil de {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772070726F66696C6520636F6D6D656E742066726F6D207B757365726E616D657D, 'Nuovo commento per il profilo {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Neues Einstellungsprofil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nuevos ajustes de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nouvelle configuration de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nuova preferenze profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772073657474696E67732070726F66696C65, 'Nowe ustawienia profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6577207472616E736C6174696F6E, 'Neue Übersetzung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Neuer Wert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Valor nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Nouvelle valeur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Nuovo valore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E65772076616C7565, 'Nowa wartoÅ›Ä‡', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'Nein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'No', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'Non', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'No', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'Nein', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F, 'ÐÐµÑ‚', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'Keine Freundschaft angefragt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'No hay solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'Pas de demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F20667269656E647368697020726571756573746564, 'Contatto non richiesto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F206E6577206D65737361676573, 'Keine neuen Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F206E6577206D65737361676573, 'Pas de nouveaux mÃ©ssages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F206E6577206D65737361676573, 'Nessun nuovo messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'Keine Profiländerungen stattgefunden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'No se hicieron cambios en el perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'pas de rÃ©sultat pour les profils modifiÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'Nessun cambiamento al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2070726F66696C65206368616E6765732077657265206D616465, 'Nie dokonano zmian w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'Ja, und auf Registrierungsseite anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'No, pero mostrar en formulario de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'non et charger le formulaire d inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'No, ma mostra nel form di registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'Nie, ale pokaÅ¼ w formularzu rejestracji', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F2C206275742073686F77206F6E20726567697374726174696F6E20666F726D, 'ÐÐµÑ‚, Ð½Ð¾ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F64792068617320636F6D6D656E74656420796F75722070726F66696C6520796574, 'Bisher hat niemand mein Profil kommentiert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F64792068617320636F6D6D656E74656420796F75722070726F66696C6520796574, 'Aucun commentaire pour votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F64792068617320636F6D6D656E74656420796F75722070726F66696C6520796574, 'Nessuno ha commentato il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Bisher hat noch niemand ihr Profil angesehen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Nadie ha visitado tu perfil todavía', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Aucune visite rÃ©cente de votre profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F626F647920686173207669736974656420796F75722070726F66696C6520796574, 'Fino ad ora nessuno ha visto il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Keine', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Ninguno', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Aucun', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Nessuno', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F6E65, 'Å»aden', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Nicht aktiv', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Innactivo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Non actif', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Non attivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'Nicht aktiv', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F7420616374697665, 'ÐÐµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Nicht zugewiesen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'No asignado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Non assignÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Non assegnato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742061737369676E6564, 'Nie przypisano', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4E6F742076697369746564, 'Non visitato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Aceptar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4F6B, 'Ok', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Alter Wert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Valor antiguo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Ancienne valeur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Vecchio valore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6C642076616C7565, 'Stara wartoÅ›Ä‡', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Einer der gewählten Benutzer ({username}) hat Sie auf seiner Ignorier-Liste. Die Nachricht wird nicht gesendet!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Uno de los destinatarios ({username}) te ha ignorado. ¡No se enviará el mensaje!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Un des membres sÃ©lectionnÃ© vous a mis sur sa liste noire ({username}). Ce message ne sera pas envoyÃ©!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6E65206F662074686520726563697069656E747320287B757365726E616D657D29206861732069676E6F72656420796F752E204D6573736167652077696C6C206E6F742062652073656E7421, 'Un destinatario ({username}) ti ha inserito nella lista degli ignorati. Messaggio non inviato!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Nur Besitzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Sólo el dueño', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'PropriÃ©taire seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Solo proprietario', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C79206F776E6572, 'Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð²Ð»Ð°Ð´ÐµÐ»ÐµÑ†', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C7920796F757220667269656E6473206172652073686F776E2068657265, 'Nur ihre Kontakte werden hier angezeigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C7920796F757220667269656E6473206172652073686F776E2068657265, 'Seuls vos contacts seront visibles ici', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F6E6C7920796F757220667269656E6473206172652073686F776E2068657265, 'Solo i tuoi contatti verranno visualizzati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F7264657220636F6E6669726D6564, 'Bestellbestätigung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F7264657220636F6E6669726D6564, 'Ordini confermati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F726465722064617465, 'Bestelldatum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F726465722064617465, 'Data ordine', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206D656D62657273686970, 'Mitgliedschaft bestellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206D656D62657273686970, 'Ordine iscrizione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206E756D626572, 'Bestellnummer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F72646572206E756D626572, 'Numero ordine', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206174, 'Bestellt am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206174, 'Ordinato il', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206D656D6265727368697073, 'Bestellte Mitgliedschaften', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206D656D6265727368697073, 'Options complÃ©mentaires', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F726465726564206D656D6265727368697073, 'Iscrizioni ordinate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Verschiedenes', 'de', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Otro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Divers', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'Altro', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F74686572, 'PozostaÅ‚e', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Otro validador', 'es', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Autre validation', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Altro validatore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x4F746865722056616C696461746F72, 'Ð”Ñ€ÑƒÐ³Ð¾Ð¹ Ð²Ð°Ð»Ð¸Ð´Ð°Ñ‚Ð¾Ñ€', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5061727469636970616E7420636F756E74, 'Anzahl Teilnehmer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061727469636970616E7473, 'Teilnehmer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061727469636970616E7473, 'Partecipanti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Passwort', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'Password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264, 'HasÅ‚o', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Ablaufzeit von Passwörtern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Tiempo de expiración de la contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'DurÃ©e de vie des mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Scadenza password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72642045787069726174696F6E2054696D65, 'Czas waÅ¼noÅ›ci hasÅ‚a', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Passwort ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Contraseña incorrecta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Le mot de passe est incorrect.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Password incorretta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'Niepoprawne hasÅ‚o.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F726420697320696E636F72726563742E, 'ÐÐµÐ²ÐµÑ€Ð½Ñ‹Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264207265636F76657279, 'Passwort wiederherstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F7264207265636F76657279, 'Recuperación de contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50617373776F72647320646F206E6F74206D61746368, 'Las contraseñas no coinciden', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74, 'Zahlungsmethode', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74, 'Pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742061727269766564, 'Zahlungseingang bestätigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742061727269766564, 'Pagamento arrivato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742064617465, 'Bezahlt am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E742064617465, 'Data pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74207479706573, 'Zahlungsarten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74207479706573, 'Options de paiement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E74207479706573, 'Tipi pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E7473, 'Zahlungsarten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5061796D656E7473, 'Pagamenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Berechtigungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Permisos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Permissions', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5065726D697373696F6E73, 'Autorizzazioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520616374697661746520796F75206163636F756E7420676F20746F207B61637469766174696F6E5F75726C7D, 'Perfavore attiva il tuo accounto all\'indirizzo {activation_url}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Bitte überprüfen Sie Ihre E-Mails. Eine Anleitung wurde an Ihre E-Mail-Adresse geschickt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Por favor verifica tu e-mail a donde se han enviado más instrucciones.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Controlez votre boite e-mail, d autres instructions vous ont Ã©tÃ© envoyÃ©es par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre fournisseur  d accÃ¨s internet et placÃ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Perfavore controlla la tua email con le istruzioni che ti abbiamo inviato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails. Eine Anleitung wurde an Ihre E-Mail-Adresse geschickt.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20416E20696E737472756374696F6E73207761732073656E7420746F20796F757220656D61696C20616464726573732E, 'ÐÐ° Ð’Ð°Ñˆ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð±Ñ‹Ð»Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾ Ð¿Ð¸ÑÑŒÐ¼Ð¾ Ñ Ð¸Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸ÑÐ¼Ð¸.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Bitte schauen Sie in Ihr Postfach. Weitere Anweisungen wurden per E-Mail geschickt.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Por favor revisa tu e-mail. Hemos enviado intrusiones a tu dirección de e-mail.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Controlez votre boite e-mail. D autres instructions vous ont Ã©tÃ© envoyÃ©es par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre fournisseur  d accÃ¨s internet et placÃ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'Si prega di controllare la casella di posta. Ulteriori istruzioni sono state inviate via e-mail.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520636865636B20796F757220656D61696C2E20496E737472756374696F6E732068617665206265656E2073656E7420746F20796F757220656D61696C20616464726573732E, 'ProszÄ™ sprawdÅº TwÃ³j mejl. Instrukcje zostaÅ‚y wysÅ‚ane na TwÃ³j adres mejlowy.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Bitte geben Sie eine Nachricht bis zu 255 Zeichen an, die dem Benutzer bei der Kontaktanfrage mitgegeben wird', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Por favor escribe un mensaje no mayor a 255 caracteres', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Vous pouvez ajouter un message personalisÃ© de 255 charactÃ¨res Ã  votre demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220612072657175657374204D65737361676520757020746F203235352063686172616374657273, 'Perfavore inserisci un messaggio di richiesta di massimo 255 caratteri', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Bitte geben Sie die, oben im Bild angezeigten, Buchstaben ein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Por favor escribe las letras que se muestran en la imagen.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Recopiez les charactÃ¨res apparaissant dans l image au dessus.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Perfavore inserire le lettere mostrate nella seguente immagine.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'Bitte geben Sie die, oben im Bild angezeigten, Buchstaben ein.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220746865206C6574746572732061732074686579206172652073686F776E20696E2074686520696D6167652061626F76652E, 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð±ÑƒÐºÐ²Ñ‹, Ð¿Ð¾ÐºÐ°Ð·Ð°Ð½Ð½Ñ‹Ðµ Ð½Ð° ÐºÐ°Ñ€Ñ‚Ð¸Ð½ÐºÐµ Ð²Ñ‹ÑˆÐµ.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C206164647265732E, 'Perfavore inserisci il tuo username o l\'indirizzo mail.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C206164647265732E, 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð’Ð°Ñˆ Ð»Ð¾Ð³Ð¸Ð½ Ð¸Ð»Ð¸ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Bitte geben Sie Ihren Benutzernamen oder E-Mail-Adresse ein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Por favor escribe tu nombre de usuario o dirección de e-mail.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Indiquez dans ce champ, votre nom d utilisateur ou votre adresse e-mail.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Inserisci il tuo nome utente o indirizzo e-mail.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F7572206C6F67696E206F7220656D61696C20616464726573732E, 'Bitte geben Sie Ihren Benutzernamen oder E-Mail-Adresse ein.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Bitte geben Sie Ihr Passwort ein, um den Löschvorgang zu bestätigen:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Por favor escribe tu contraseña para confirmar la eliminación:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Renseignez votre mot de passe, pour confirmer la suppression:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'Si prega di inserire la password per confermare l\'eliminazione:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722070617373776F726420746F20636F6E6669726D2064656C6574696F6E3A, 'ProszÄ™ wprowadÅº swoje hasÅ‚o w celu potwierdzenia usuwania:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722075736572206E616D65206F7220656D61696C20616464726573732E, 'Bitte geben Sie Ihren Benutzernamen oder E-mail Adresse ein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722075736572206E616D65206F7220656D61696C20616464726573732E, 'Renseignez votre nom d utilisateur ou votre adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C6561736520656E74657220796F75722075736572206E616D65206F7220656D61696C20616464726573732E, 'Inserisci il tuo nome utente o indirizzo e-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Bitte geben Sie ihre Login-Daten ein:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Por favor llena el formulario con tu información de inicio de sesión:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Entrez dans le champ vos donnÃ©es de connection:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Perfavore inserisci le tue credenziali d\'accesso:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'Bitte geben Sie ihre Login-Daten ein:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652066696C6C206F75742074686520666F6C6C6F77696E6720666F726D207769746820796F7572206C6F67696E2063726564656E7469616C733A, 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰ÑƒÑŽ Ñ„Ð¾Ñ€Ð¼Ñƒ Ñ Ð²Ð°ÑˆÐ¸Ð¼Ð¸ Ð›Ð¾Ð³Ð¸Ð½ Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÐµÐ¼:', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x506C65617365206C6F6720696E20696E746F20746865206170706C69636174696F6E2E, 'Por favor, entra a la aplicación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506C656173652076657269667920796F757220452D4D61696C2061646472657373, 'Por favor verifica tu dirección de correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Position', 'de', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Posición', 'es', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Position', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'Posizioe', 'it', 'yum');
INSERT INTO `translation` VALUES (0x506F736974696F6E, 'ÐŸÐ¾Ð·Ð¸Ñ†Ð¸Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Vordefinierter Bereich (z.B. 1, 2, 3, 4, 5),', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Valores predefinidos (ejemplo: 1,2,3,4,5;).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Valeur prÃ©dÃ©finie (z.B. 1, 2, 3, 4, 5),', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'Valori predefiniti (es. 1, 2, 3, 4, 5),', 'it', 'yum');
INSERT INTO `translation` VALUES (0x507265646566696E65642076616C75657320286578616D706C653A20312C20322C20332C20342C20353B292E, 'ÐŸÑ€ÐµÐ´Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ñ‹Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ (Ð¿Ñ€Ð¸Ð¼ÐµÑ€: 1;2;3;4;5;).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Profile aufbewahren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Preservar Perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Profile aufbewahren ???', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Mantieni profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x507265736576652050726F66696C6573, 'Zachowaj profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5072696365, 'Preis', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5072696365, 'Prix', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5072696365, 'Prezzo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'Privatsphäre', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'Privacidad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'DonnÃ©es privÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'Privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726976616379, 'PrivatsphÃ¤re', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Privatsphäre', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Configuración de Privacidad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Vos donnÃ©es personnelles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E6773, 'Privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Privatsphäreneinstellungen für {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Configuración de Privacidad para {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Configuration des donnÃ©es privÃ©es pour {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x507269766163792073657474696E677320666F72207B757365726E616D657D, 'Opzioni Privacy per {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'Privatsphäre', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'Configuración de Privacidad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'DonnÃ©es privÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5072697661637973657474696E6773, 'Opzioni privacy', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'Profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65, 'ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'Pinnwand', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'COmentarios de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'Pinnwand', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520436F6D6D656E7473, 'Commenti profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Profilfelder', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Campos de Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Champs des profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'Pola profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65204669656C6473, 'ÐŸÐ¾Ð»Ñ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Profilfeldgruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Grupos de campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Champs des profils de groupes.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C642067726F757073, 'Campo profilo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207075626C6963206F7074696F6E73, 'Einstellungen der Profilfelder', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207075626C6963206F7074696F6E73, 'Configuration des champs publique du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207075626C6963206F7074696F6E73, 'Opzioni pubbliche campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Profilfeld {fieldname}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Campo de perfil {fieldname}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Camp de profil {fieldname}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, '{fieldname} campo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64207B6669656C646E616D657D, 'Pole profilu {fieldname}', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Profilfeldverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Gestion des champs de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Campi profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C6473, 'Pole profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Profilfeldgruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Grupos de campos de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Champ des profils de groupes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Campi profilo gruppi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206669656C64732067726F757073, 'Grupy pÃ³l w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Profilverlauf', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Historial del perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Chronique du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Storico profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520686973746F7279, 'Historia profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Profilnummer: ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Número de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'NumÃ©ro du profil: ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Numero profilo: ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206E756D626572, 'Numer profilu: ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Profil von ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Perfil de', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Profil de ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C65206F6620, 'Profilo di ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520766973697473, 'Profilbesuche', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520766973697473, 'Visiteurs de mon profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6520766973697473, 'Visite profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profiles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x50726F66696C6573, 'Profile', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Bereich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Rango', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Intervallo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52616E6765, 'Ð ÑÐ´ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Nur-Lese Profile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Perfiles de Sólo Lectura', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Lecture seule des profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Profilo sola lettura', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656164204F6E6C792050726F66696C6573, 'Profile tylko do odczytu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'E-Mail Benachrichtigung bei neuer Kontaktanfrage', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'Recibir un correo cuando recibas una nueva solicitud de amistad', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'Informez moi par e-mail pour les nouvelles demandes de contact.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C20666F72206E657720467269656E64736869702072657175657374, 'Email di notifica per nuovo contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'E-Mail Benachrichtigung bei Profilkommentar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'Recibir un correo cuando comenten en tu perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'Informez moi par e-mail e-mail pour les nouveaux commentaire de mon profil ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E2061206E65772070726F66696C6520636F6D6D656E7420776173206D616465, 'Email di notifica per nuovo commento al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'E-Mail Benachrichtigung bei neuer interner Nachricht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'Recibir un correo cuanto te llegue un nuevo mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'Informez moi par e-mail pour les nouveaux messages. ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656365697665206120456D61696C207768656E206E6577204D6573736167652061727269766573, 'Email di notifica per i nuovi messaggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Registrierte Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Usuarios registrados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Membre enregistrÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Utenti registrati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656769737465726564207573657273, 'Ð—Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Registrierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Reistrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Rejestracja', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Anmeldedatum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Fecha de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Date d inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Data registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Anmeldedatum', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526567697374726174696F6E2064617465, 'Ð”Ð°Ñ‚Ð° Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Regulärer Ausdruck (z. B.: \'/^[A-Za-z0-9s,]+$/u\')', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Expresión regular (ejemplo: \'/^[A-Za-z0-9s,]+$/u\')', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Expression regulaire (exemple.: \'/^[A-Za-z0-9s,]+$/u\')', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Espressione regolare (esempio: \'/^[A-Za-z0-9s,]+$/u\')', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526567756C61722065787072657373696F6E20286578616D706C653A20272F5E5B412D5A612D7A302D39732C5D2B242F7527292E, 'Ð ÐµÐ³ÑƒÐ»ÑÑ€Ð½Ñ‹Ðµ Ð²Ñ‹Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ (Ð¿Ñ€Ð¸Ð¼ÐµÑ€: \'/^[A-Za-z0-9s,]+$/u\')', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E65742074696D65, 'ZapamiÄ™taj mnie nastÄ™pnym razem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Angemeldet bleiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Recordarme la próxima vez', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Rester connectÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Ricordami', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D656D626572206D65206E6578742074696D65, 'Ð—Ð°Ð¿Ð¾Ð¼Ð½Ð¸Ñ‚ÑŒ Ð¼ÐµÐ½Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F7665, 'Entfernen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F7665, 'Supprimer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F7665, 'Rimuovi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Profilbild entfernen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Borrar este Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Supprimer l image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520417661746172, 'Rimuovi avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Kommentar entfernen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Borrar comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Supprimer ce commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520636F6D6D656E74, 'Rimuovi commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Freundschaft kündigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Borrar amigo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Supprimer ce contact de ma liste', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52656D6F766520667269656E64, 'Rimuovi contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Antwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Responder', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'RÃ©pondre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Rispondi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265706C79, 'Odpowiedz', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'auf diese Nachricht antworten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'Responder al Mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'RÃ©pondre Ã  ce message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'Rispondi al messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F204D657373616765, 'Odpowiedz', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F206D657373616765, 'Responder al mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265706C7920746F206D657373616765, 'Rispondi al messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Kontaktanfrage für {username}', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Solicitar amistar al usuario {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Demande de contact pour {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265717565737420667269656E647368697020666F722075736572207B757365726E616D657D, 'Richiesta contatto per {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Benötigt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Requerido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Recquis', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'Obbligatorio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564, 'ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564206669656C642028666F726D2076616C696461746F72292E, 'Campo obbligatorio (validazione form).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265717569726564206669656C642028666F726D2076616C696461746F72292E, 'ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¿Ð¾Ð»Ðµ (Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ° Ñ„Ð¾Ñ€Ð¼Ñ‹).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Wiederherstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Recuperar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Restaurer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Ripristino', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Wiederherstellen', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526573746F7265, 'Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652050617373776F7264, 'ÐŸÐ¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652050617373776F726420697320696E636F72726563742E, 'ÐŸÐ°Ñ€Ð¾Ð»Ð¸ Ð½Ðµ ÑÐ¾Ð²Ð¿Ð°Ð´Ð°ÑŽÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Passwort wiederholen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Repite la contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Redonnez votre mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Conferma password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F7264, 'Passwort wiederholen', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Wiederholtes Passwort ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Contraseña repetida incorrecta', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Le mot de passe est a nouveau incorrect.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Conferma password Ã¨ errata.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5265747970652070617373776F726420697320696E636F72726563742E, 'Wiederholtes Passwort ist falsch.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x52657479706520796F7572206E65772070617373776F7264, 'Wiederholen Sie Ihr neues Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x52657479706520796F7572206E65772070617373776F7264, 'Confirmez votre nouveau mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x52657479706520796F7572206E65772070617373776F7264, 'Confermare la nuova password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526574797065642070617373776F726420697320696E636F7272656374, 'Wiederholtes Passwort ist nicht identisch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526574797065642070617373776F726420697320696E636F7272656374, 'Le mot de passe renseignÃ© n est pas identique au prÃ©cÃ©dent', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526574797065642070617373776F726420697320696E636F7272656374, 'Password di conferma non identica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Rollenverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Administración de rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Gestion des rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'Gestione dei ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526F6C652041646D696E697374726174696F6E, 'ZarzÄ…dzanie rolami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Rollen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'RÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573, 'Role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x526F6C6573202F2041636365737320636F6E74726F6C, 'Rollen / Zugangskontrolle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Sichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Guardar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'MÃ©moriser', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Salva', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Sichern', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53617665, 'Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x53617665207061796D656E742074797065, 'Zahlungsart speichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53617665207061796D656E742074797065, 'Salva tipo pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x536176652070726F66696C65206368616E676573, 'Profiländerungen speichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x536176652070726F66696C65206368616E676573, 'Salva modifiche profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5361766520726F6C65, 'Rolle speichern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5361766520726F6C65, 'MÃ©moriser ce rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5361766520726F6C65, 'Salva ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656172636820666F7220757365726E616D65, 'Suche nach Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656172636820666F7220757365726E616D65, 'Recherche par nom d\'utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656172636820666F7220757365726E616D65, 'Cerca per username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656172636861626C65, 'Suchbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656172636861626C65, 'visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656172636861626C65, 'Ricercabile', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C6563742061206D6F6E7468, 'Monatsauswahl', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C6563742061206D6F6E7468, 'Seleziona un mese', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Wählen Sie mehrere Empfänger mit der STRG-Taste aus', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Selecciona varios destinatarios manteniendo presionada la tecla CTRL', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Choix multiple en laissant la touche STRG de votre clavier enfoncÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656C656374206D756C7469706C6520726563697069656E747320627920686F6C64696E6720746865204354524C206B6579, 'Seleziona destinatari multipli con il tasto CTRL', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637420746865206669656C647320746861742073686F756C64206265207075626C6963, 'Diese Felder sind öffentlich einsehbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637420746865206669656C647320746861742073686F756C64206265207075626C6963, 'Ces champs sont publiques et seront visibles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637420746865206669656C647320746861742073686F756C64206265207075626C6963, 'Scegli i campi da rendere publici', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637461626C65206F6E20726567697374726174696F6E, 'Während der Registrierung wählbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637461626C65206F6E20726567697374726174696F6E, 'Option Ã  selectionner au cours de l inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656C65637461626C65206F6E20726567697374726174696F6E, 'Selezionabile durante la registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Senden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Enviar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Envoyer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Invia', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E64, 'Senden', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Diesem Benutzer eine Nachricht senden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Enviar un mensaje a este Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Faire parvenir un message Ã  ce membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E642061206D65737361676520746F20746869732055736572, 'Invia messaggio all\'utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Kontaktanfrage senden', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Enviar invitación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Envoyer la demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E6420696E7669746174696F6E, 'Kontaktanfrage senden', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Benachrichtigungen schicken', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Enviar mensaje de e-mail de notificación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Envoie d une notification', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E64206D657373616765206E6F74696669657220656D61696C73, 'Notifiche e-mail', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'Gesendet am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'Enviado al', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'ENvoyÃ© le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'Pubblicato il', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206174, 'WysÅ‚ano', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Gesendete Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Mensajes enviados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Message envoyÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'Messaggi inviati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53656E74206D65737361676573, 'WysÅ‚ane wiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Benutzernamen mit Komma trennen, um sie zu ignorieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Separa con coma los nombres de los usuarios que deseas ignorar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Ma liste noire, pour introduire plusieurs membres en une seule fois, sÃ©parer les noms d utilisateur avec une virgule', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x536570617261746520757365726E616D6573207769746820636F6D6D6120746F2069676E6F726520737065636966696564207573657273, 'Separa gli username con una virgola, per ignorare gli utenti specificati', 'it', 'yum');
INSERT INTO `translation` VALUES (0x536574207061796D656E74206461746520746F20746F646179, 'Zahlungseingang bestätigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x536574207061796D656E74206461746520746F20746F646179, 'Imposta data pagamento ad oggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Einstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Ajustes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'RÃ©glage', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Impostazioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E6773, 'Ustawienia', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Einstellungsprofile', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Ajustes de perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'RÃ©glages des profiles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Impostazioni profili', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53657474696E67732070726F66696C6573, 'Ustawienia profili', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061637469766974696573, 'Zeige Aktivitäten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061637469766974696573, 'Voir la chronique des activitÃ©s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061637469766974696573, 'Mostra attivitÃ ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Hierarchie', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Mostrar jerarquía de administración', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Hierarchie', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'Gerarchia', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F772061646D696E697374726174696F6E20486965726172636879, 'PokaÅ¼ hierarchiÄ™ administrowania', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720616C6C, 'Mostra tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'Kontaktliste veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'Mostrar amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'REndre ma liste de contacts visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720667269656E6473, 'Mostra contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206D79206F6E6C696E652073746174757320746F2065766572796F6E65, 'Meinen Online-Status veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206D79206F6E6C696E652073746174757320746F2065766572796F6E65, 'Montrer lorsque je suis en ligne', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206D79206F6E6C696E652073746174757320746F2065766572796F6E65, 'Mostra il mio stato a tutti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206F6E6C696E6520737461747573, 'Online-Status anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206F6E6C696E6520737461747573, 'Status en ligne visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77206F6E6C696E6520737461747573, 'Mostra lo stato online', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Berechtigungen anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Mostrar permisos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Montrer les permissions', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207065726D697373696F6E73, 'Mostra autorizzazioni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Profilbesuche anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Mostrar perfil de visitas', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Montrer les visites de profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F772070726F66696C6520766973697473, 'Visualizza visite profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Rollen anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Mostrar roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Voir les rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'Mostra ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720726F6C6573, 'PokaÅ¼ role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720746865206F776E6572207768656E2069207669736974206869732070726F66696C65, 'Dem Profileigentümer erkenntlich machen, wenn ich sein Profil besuche', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720746865206F776E6572207768656E2069207669736974206869732070726F66696C65, 'Montrer aux propriÃ©taires des profils lorsque je consulte leur profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F7720746865206F776E6572207768656E2069207669736974206869732070726F66696C65, 'Mostra al proprietario quando visito il suo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Mostrar usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Voir les membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'Mostra utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53686F77207573657273, 'PokaÅ¼ uÅ¼ytkownikow', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Benutzerstatistik', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Estadísticas', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Statistiques des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Statistiche', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53746174697374696373, 'Statystyki', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Status', 'de', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Estado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Status', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Stato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Status', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x537461747573, 'Ð¡Ñ‚Ð°Ñ‚ÑƒÑ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Straße', 'de', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Calle', 'es', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Rue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Indirizzo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537472656574, 'Ulica', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5375626A656374, 'Titel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5375626A656374, 'Sujet', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5375626A656374, 'Oggetto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'Erfolgreich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'Exitoso', 'es', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'RÃ©ussi', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x53756363657373, 'Successo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'de', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superusuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'it', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Superuser', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x537570657275736572, 'Ð¡ÑƒÐ¿ÐµÑ€ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Text Email Konto-Aktivierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Texto de activación por correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Texte contenu dans l e-mail d activation de compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C2041637469766174696F6E, 'Testo email d\'attivazione account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Text E-Mail Passwort wiederherstellen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Texto de recuperación de contraseña por correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Texte contenu dans l e-Mail de renouvellement de mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C205265636F76657279, 'Testo email recupero password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Text E-Mail Registrierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Texto de registro por correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Texte contenu dans l e-Mail d enregistrement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420456D61696C20526567697374726174696F6E, 'Testo email di registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Text im Login-footer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Text im Login-footer', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Text im Login-footer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20466F6F746572, 'Testo nel piepagina del login', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Text im Login-header', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Text im Login-header', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Texte de connection-header', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54657874204C6F67696E20486561646572, 'Testo nell\'intestazione del login', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Text im Registrierung-footer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Text im Registrierung-footer', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Texte d enregistrement-footer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20466F6F746572, 'Testo nel piepagina della registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Text im Registrierung-header', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Text im Registrierung-header', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Texte d enregistrement-header', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420526567697374726174696F6E20486561646572, 'Testo nell\'intestazione della registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Text für eine neue Kontaktanfrage', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Text für eine neue Kontaktanfrage', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Texte pour une nouvelle demande de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E657720667269656E64736869702072657175657374, 'Testo per una nuova richiesta di contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Text für neuen Profilkommentar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Text für neuen Profilkommentar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Texte pour un nouveau commentaire dans un profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5465787420666F72206E65772070726F66696C6520636F6D6D656E74, 'Testo per un nuovo commento al profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54657874207472616E736C6174696F6E73, 'Übersetzungstexte', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20436F6E746163742041646D696E20746F20616374697661746520796F7572206163636F756E742E, 'Grazie per la tua registrazione. Contatta l\'ammnistratore per attivare l\'account', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Vielen Dank für Ihre Anmeldung. Bitte überprüfen Sie Ihre E-Mails oder loggen Sie sich ein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous a Ã©tÃ© envoyÃ© par e-mail.Attention! Par mesure de sÃ©curitÃ©, le lien contenu dans ce mail, n est valable que 48h *IMPORTANT:pour le cas ou notre e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Grazie per la tua registrazione, controlla la tua email o effettua il login,', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Vielen Dank fÃ¼r Ihre Anmeldung. Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails oder loggen Sie sich ein.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C206F72206C6F67696E2E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ð¹ ÑÑ‰Ð¸Ðº Ð¸Ð»Ð¸ Ð²Ñ‹Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ Ð²Ñ…Ð¾Ð´.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Vielen Dank für Ihre Anmeldung. Bitte überprüfen Sie Ihre E-Mails.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Gracias por su registro. Por favor revise su email.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Merci pour votre inscription.Controlez votre boite e-mail, le code d activation de votre compte vous a Ã©tÃ© envoyÃ© par e-mail. *IMPORTANT:pour le cas ou notre e-mail ne vous serais pas parvenu, il est possible que notre e-mail ai Ã©tÃ© filtrÃ© par votre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Grazie per la tua registrazione, controlla la tua email,', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Vielen Dank fÃ¼r Ihre Anmeldung. Bitte Ã¼berprÃ¼fen Sie Ihre E-Mails.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C6561736520636865636B20796F757220656D61696C2E, 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð° Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ²Ð¾Ð¹ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ð¹ ÑÑ‰Ð¸Ðº.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E20506C65617365207B7B6C6F67696E7D7D2E, 'Grazie per la tua registrazone. Effettua il {{login}}.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Der Kommentar wurde gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Der Kommentar wurde gespeichert', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Le commentaire a bien Ã©tÃ© mÃ©morisÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520636F6D6D656E7420686173206265656E207361766564, 'Il commento Ã¨ stato salvato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'Die Datei {file} ist kein Bild.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'Este archivo {file} no es una imagen.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'DLe fichier {file} n est pas un fichier image.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468652066696C6520227B66696C657D22206973206E6F7420616E20696D6167652E, 'Il file {file} non Ã¨ un\'immagine.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520667269656E6473686970207265717565737420686173206265656E2073656E74, 'Die Kontaktanfrage wurde gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520667269656E6473686970207265717565737420686173206265656E2073656E74, 'Votre demande de contact Ã  bien Ã©tÃ© envoyÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520667269656E6473686970207265717565737420686173206265656E2073656E74, 'La richiesta di contatto Ã¨ stata inviata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'Die Datei {file} muss genau {height}px hoch sein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'La imagen {file} debe tener {height}px de largo.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'La photo {file} doit avoir une hauteur maximum de {height}px .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D22206865696768742073686F756C6420626520227B6865696768747D7078222E, 'L\'immagine {file} deve essere {height}px.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'Die Datei {file} muss genau {width}px breit sein.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'La imagen {file} debe tener {width}px de ancho.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'La photo {file} doit avoir une largeur maximum de {width}px .', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520227B66696C657D222077696474682073686F756C6420626520227B77696474687D7078222E, 'L\'immagine {file} deve essere larga {width}px.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520686173206265656E20726573697A656420746F207B6D61785F706978656C7D7078207769647468207375636365737366756C6C79, 'Das Bild wurde beim hochladen automatisch auf eine Breite von {max_pixel} skaliert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520686173206265656E20726573697A656420746F207B6D61785F706978656C7D7078207769647468207375636365737366756C6C79, 'Votre photo de profil a Ã©tÃ© retaillÃ©e automatiquement Ã  une taille de{max_pixel}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D61676520686173206265656E20726573697A656420746F207B6D61785F706978656C7D7078207769647468207375636365737366756C6C79, 'Immagine ridimensionata a {max_pixel}px con successo.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'das Bild sollte mindestens 50px und maximal 200px in der Höhe und Breite betragen. Mögliche Dateitypen sind .jpg, .gif und .png', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'La imagen debe tener un mínimo de 50px y un máximo de 200px de ancho y largo. Los tipos de archivo soportados son .jpg, .gif y .png', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'La foto chargÃ©e doit avoir une largeur maximum de 50px  et une hauteur maximale de 200px. Les fichiers acceptÃ©s sont; .jpg, .gif und .png', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D6167652073686F756C642068617665206174206C65617374203530707820616E642061206D6178696D756D206F6620323030707820696E20776964746820616E64206865696768742E20537570706F727465642066696C65747970657320617265202E6A70672C202E67696620616E64202E706E67, 'L\'immagine deve essere almeno 50px e massimo 200px in larghezza e altezza. Tipi di file supportati .jpg, .gif e .png', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D616765207761732075706C6F61646564207375636365737366756C6C79, 'Das Bild wurde erfolgreich hochgeladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D616765207761732075706C6F61646564207375636365737366756C6C79, 'L image a Ã©tÃ© chargÃ©e avec succÃ¨s', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686520696D616765207761732075706C6F61646564207375636365737366756C6C79, 'Immagine caricata con successo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865206D6573736167657320666F7220796F7572206170706C69636174696F6E206C616E677561676520617265206E6F7420646566696E65642E, 'Los mensajes para el idioma de tu aplicación no están definidos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'Minimalwert des Feldes (Form-Validierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'El valor mínimo del campo (validador de formulario)', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'Valeur minimum du champ (Validation du formulaire)', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'Valore minimo del campo (validazione form).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865206D696E696D756D2076616C7565206F6620746865206669656C642028666F726D2076616C696461746F72292E, 'ÐœÐ¸Ð½Ð¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»Ñ (Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ° Ñ„Ð¾Ñ€Ð¼Ñ‹).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E207361766564, 'Das neue Passwort wurde gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E207361766564, 'Votre nouveau mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E207361766564, 'La nuova password Ã¨ stata salvata.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865206E65772070617373776F726420686173206265656E2073617665642E, 'La nueva contraseña ha sido guardada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Standard-Wert für die Datenbank', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'El valor predeterminado del campo (base de datos).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Valeur standard pour la banque de donnÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Valore del campo predefnito (database).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'DomyÅ›lna wartoÅ›Ä‡ pola (bazodanowego).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468652076616C7565206F66207468652064656661756C74206669656C6420286461746162617365292E, 'Ð—Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»Ñ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ (Ð±Ð°Ð·Ð° Ð´Ð°Ð½Ð½Ñ‹Ñ…).', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Es gibt in ihrem System insgesamt {messages} Nachrichten.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Hay un total de {messages} mensajes en su sistema.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Il existe dans votre systÃ¨me {messages} messages.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Ci sno un totale di {messages} messaggi nel Sistema.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265206120746F74616C206F66207B6D657373616765737D206D6573736167657320696E20796F75722053797374656D2E, 'Istnieje {messages} wiadomoÅ›ci w Twoim systemie.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, ' Es gibt {active_users} aktive und {inactive_users} inaktive Benutzer in ihrem System, von denen {admin_users} Benutzer Administratoren sind.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, 'Hay {active_users} usuarios activos y {inactive_users} usuarios inactivos en su sistema, de los cuales {admin_users} son Administradores.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, ' Il existe {active_users}  membres actifs et {inactive_users} membres inactifs dans votre systÃ©me, pour lesquels {admin_users} membres sont dÃ©signÃ©s en tant qu administrateurs.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, ' Ci sono {active_users} utenti attivi e {inactive_users} utenti inattivi nel Sistema, di cui {admin_users} sono amministratori.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B6163746976655F75736572737D2061637469766520616E64207B696E6163746976655F75736572737D20696E61637469766520757365727320696E20796F75722053797374656D2C2066726F6D207768696368207B61646D696E5F75736572737D206172652041646D696E6973747261746F72732E, 'IstniejÄ… {active_users} aktywni i {inactive_users} nieaktywni uÅ¼ytkownicy w Twoim systemie, w tym {admin_users} administratorzy.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Es gibt {profiles} Profile in ihren System. Diese bestehen aus {profile_fields} Profilfeldern, die sich in {profile_field_groups} Profilfeldgruppen aufteilen.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Hay {profiles} perfiles en su sistema. Estos consisten de {profile_fields} campos de perfiles en {profile_field_groups} grupos de campos de perfiles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Il existe {profiles} profils dans votre systÃ¨me. Ils se composent de {profile_fields} champs de profils, qui se dÃ©composent {profile_field_groups} en grouppe de champs de profils.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'Ci sono {profiles} profili nel Sistema. sono costituiti da {profile_fields} campi profili, in {profile_field_groups} campo profili gruppi.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B70726F66696C65737D2070726F66696C657320696E20796F75722053797374656D2E20546865736520636F6E73697374206F66207B70726F66696C655F6669656C64737D2070726F66696C65206669656C647320696E207B70726F66696C655F6669656C645F67726F7570737D2070726F66696C65206669656C642067726F757073, 'IstniejÄ… {profiles} profile w Twoim systemie, ktÃ³re zawierajÄ… pola {profile_fields} w grupach {profile_field_groups}', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Es gibt {roles} Rollen in ihrem System', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Hay {roles} roles en su sistema.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Il existe les {roles} rÃ´les suivant dans votre systÃ¨me', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Ci sono {roles} ruoli nel Sistema', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546865726520617265207B726F6C65737D20726F6C657320696E20796F75722053797374656D2E, 'Istnieje {roles} rÃ³l w Twoim systemie', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686572652077617320616E206572726F7220736176696E67207468652070617373776F7264, 'Fehler beim speichern des Passwortes', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686572652077617320616E206572726F7220736176696E67207468652070617373776F7264, 'Erreur produite lors de la mÃ©morisation de votre mot de passe.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686572652077617320616E206572726F7220736176696E67207468652070617373776F7264, 'Impossibile salvare la password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Ihr Konto wurde blockiert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Esta cuenta está bloqueada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Votre compte a Ã©tÃ© bloquÃ©. Contactez nous.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'Il tuo account Ã¨ stato bloccato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E7420697320626C6F636B65642E, 'To konto jest zablokowane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Ihr Konto wurde nicht aktiviert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Esta cuenta no está activada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Votre compte n a pas Ã©tÃ© activÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'Il tuo account non Ã¨ attivato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206163636F756E74206973206E6F74206163746976617465642E, 'To konto nie zostaÅ‚o jeszcze aktywowane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D656D62657273686970206973207374696C6C207B646179737D206461797320616374697665, 'Die Mitgliedschaft ist noch {days} Tage aktiv', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D656D62657273686970206973207374696C6C207B646179737D206461797320616374697665, 'L\'iscrizione Ã¨ ancora attiva per {days} giorni', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Diese Nachricht wird an {username} versandt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Este mensaje será enviado a {username}', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Ce message sera envoyÃ© Ã  {username}', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973206D6573736167652077696C6C2062652073656E7420746F207B757365726E616D657D, 'Questo messaggio verrÃ  inviato a {username}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320726F6C652063616E2061646D696E6973746572207573657273206F66207468697320726F6C6573, 'Este rol puede administrar usuarios de estos roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320726F6C652063616E2061646D696E6973746572207573657273206F66207468697320726F6C6573, 'Membres ayant ce rÃ´le peuvent administrer ces utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320726F6C652063616E2061646D696E6973746572207573657273206F66207468697320726F6C6573, 'Questo ruolo puÃ² amministrare utenti di questo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'Benutzer gehört diesen Rollen an:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'Este usuario pertenece a estos roles:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'A ce membre a Ã©tÃ© attribuÃ© ces rÃ´les:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'L\'Utente appartiene a questi ruoli:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722062656C6F6E677320746F20746865736520726F6C65733A, 'UÅ¼ytkownik posiada role:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Dieser Benutzer kann diese Nutzer administrieren', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Este usuario puede administrar estos usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Ce membre peut gÃ©rer ces utilisateurs.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E69737465722074686973207573657273, 'Gli utenti possono gestire questi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Benutzer kann diese Benutzer verwalten:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Este usuario puede administrar estos usuarios:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Ce membre peut administrer ces membres:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'Gli utenti possono gestire questi utenti:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374657220746869732075736572733A, 'UÅ¼ytkownik moÅ¼e zarzÄ…dzaj nastÄ™pujÄ…cymi uÅ¼ytkownikami:', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722063616E2061646D696E697374726174652074686973207573657273, 'UÅ¼ytkownik moÅ¼e administrowaÄ‡ podanymi uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C206164647265737320616C7265616479206578697374732E, 'Indirizzo email esistente.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Der Benutzer E-Mail-Adresse existiert bereits.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'La dirección de e-mail de este usuario ya existe.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Cette adresse e-mail existe dÃ©jÃ  dans notre banque de donnÃ©e.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Indirizzo e-mail giÃ  esistente.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'Podany adres melopwy jest w uÅ¼yciu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572277320656D61696C2061647265737320616C7265616479206578697374732E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Der Benutzer Name existiert bereits.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Este nombre de usuario ya existe.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Ce nom d utilisateur existe dÃ©jÃ  dans notre banque de donnÃ©e.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Nome esistenze', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'Podana nazwa uÅ¼ytkownika jest w uÅ¼yciu.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365722773206E616D6520616C7265616479206578697374732E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ Ð¸Ð¼ÐµÐ½ÐµÐ¼ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652061206F726465726564206D656D6265727368697073206F66207468697320726F6C65, 'Diese Benutzer haben eine Mitgliedschaft in dieser Rolle', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652061206F726465726564206D656D6265727368697073206F66207468697320726F6C65, 'Ces membres sont assignÃ©s Ã  ce rÃ´le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652061206F726465726564206D656D6265727368697073206F66207468697320726F6C65, 'Questi utenti hanno ordinato l\'iscrizione a questo ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'Diese Nutzer gehören dieser Rolle an: ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'Este usuario ha sido asignado a este Rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'A ces membres ont Ã©tÃ© attribuÃ©s ce rÃ´le: ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'Questi utenti sono assegnati al ruolo: ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320526F6C65, 'UÅ¼ytkownik zostaÅ‚ przypisany do rÃ³l: ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Dieser Rolle gehören diese Benutzer an', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Este usuario ha sido asignado a este rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Ce rÃ´le a bien Ã©tÃ© attribuÃ© Ã  ces membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Questo ruolo Ã¨ assegnato  a questo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665206265656E2061737369676E656420746F207468697320726F6C65, 'Uzytkownik zostaÅ‚ przypisany do rÃ³l', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x54686973207573657273206861766520636F6D6D656E74656420796F75722070726F66696C6520726563656E746C79, 'Diese Benutzer haben mein Profil kürzlich kommentiert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54686973207573657273206861766520636F6D6D656E74656420796F75722070726F66696C6520726563656E746C79, 'Cet utilisateur Ã  commentÃ© rÃ©cemment votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54686973207573657273206861766520636F6D6D656E74656420796F75722070726F66696C6520726563656E746C79, 'Questo utente ha recentemente commentato sul tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Diese Benutzer haben mein Profil besucht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Estos usuarios han visitado mi perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Les membres ayant visitÃ© mon profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5468697320757365727320686176652076697369746564206D792070726F66696C65, 'Questi utenti hanno visitato il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665207669736974656420796F75722070726F66696C6520726563656E746C79, 'Diese Benutzer haben kürzlich mein Profil besucht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665207669736974656420796F75722070726F66696C6520726563656E746C79, 'Cet utilisateur a visitÃ© votre profil rÃ©cemment', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546869732075736572732068617665207669736974656420796F75722070726F66696C6520726563656E746C79, 'Questi utenti hanno recentemente visitato il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'Gesendet am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'Hora de envío', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'EnvoyÃ© le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'Pubblicato su', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54696D652073656E74, 'WysÅ‚ano', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Titel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Título', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Titre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'Titolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5469746C65, 'ÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'An', 'de', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'Para', 'es', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'A', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x546F, 'A', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5472616E736C6174696F6E, 'Übersetzung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5472616E736C6174696F6E732068617665206265656E207361766564, 'Die Übersetzungen wurden gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Erneut versuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Intenta de nuevo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Essayer Ã  nouveau', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'Prova di nuovo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x54727920616761696E, 'SprÃ³buj jeszcze raz', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Actualizar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Modifier', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'Aggiorna', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557064617465, 'ZmieÅ„', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Profilfeld bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Actualizar Campo del Perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Modifier le champ du profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'Aggiorna campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'ZmieÅ„ pole w profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652050726F66696C65204669656C64, 'ÐŸÑ€Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'Benutzer bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'Actualizar Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'GÃ©rer les membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'Aggiorna utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652055736572, 'ÐŸÑ€Ð°Ð²Ð¸Ñ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x557064617465206D792070726F66696C65, 'Mein Profil bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557064617465206D792070726F66696C65, 'Aggiorna profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557064617465207061796D656E74, 'Zahlungsart bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557064617465207061796D656E74, 'Aggiorna pagamento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Rolle bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Actualizar rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Modifier les rÃ´les', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Aggiorna ruolo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706461746520726F6C65, 'Edytuj rolÄ™', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Benutzer bearbeiten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Actualizar usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Modifier un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'Aggiorna utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5570646174652075736572, 'ZmieÅ„ uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420417661746172, 'Subir un Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420417661746172, 'Charger une image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420417661746172, 'Carica avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Profilbild hochladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Subir un avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Charger une image de profil maintenant', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F616420617661746172, 'Carica avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220496D616765, 'Carica avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Profilbild hochladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Cargar imagen de perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Charger une image pour votre profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55706C6F61642061766174617220696D616765, 'Carica immagine avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572, 'Utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Benutzerverwaltung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Gestion des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'Gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722041646D696E697374726174696F6E, 'ZarzÄ…dzanie uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Benutzerverwaltung Startseite', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Page de gestion des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Home gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E7420486F6D65, 'Strona startowa profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Einstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Ajustes de configuración de la Administración de usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Options de configuration des profils', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572204D616E6167656D656E742073657474696E677320636F6E66696775726174696F6E, 'Configurazione impostazioni gestione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Benutzeraktionen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Operaciones de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Action de l utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'Azioni utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572204F7065726174696F6E73, 'CzynnoÅ›ci uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'User-Aktivierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'Activación de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'Activation du compte utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'Attivazione utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'User-Aktivierung', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722061637469766174696F6E, 'ÐÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Benutzerkontrollzentrum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Panel de administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Centre de controle des membres', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Pannello di controllo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2050616E656C, 'Panel zarzÄ…dzania uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Kontrollzentrum', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Panel de administración de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Centre de controle user', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Pannello di controllo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722061646D696E697374726174696F6E2070616E656C, 'Panel zarzÄ…dzania uÅ¼ytkownikiem', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'Benutzer gehört diesen Rollen an', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'El usuario pertenece al los Roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'Attribuer des rÃ´les Ã  un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'Utente appartiene a questi ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20526F6C6573, 'UÅ¼ytkownik posiada role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'Benutzer gehört diesen Rollen an', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'El usuario pertenece a estos roles', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'Attribuer ce rÃ´le Ã  un membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'Utente appartiene a questi ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722062656C6F6E677320746F20746865736520726F6C6573, 'UÅ¼ytkownik posiada role', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'Kann keine Benutzer verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'El usuario no puede administrar ningún usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'Ne peut pas gÃ©rer les utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'Impossibile gestire gli utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273, 'UÅ¼ytkownik nie moÅ¼e zarzÄ…dzaÄ‡ Å¼adnymi uÅ¼ytkownikami', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'Kann keine Rollen verwalten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'El usuario no puede administrar ningún usuario o ningún rol', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'Ne peut pas gÃ©rer les rolles', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'Impossibile gestire i ruoli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365722063616E206E6F742061646D696E697374657220616E79207573657273206F6620616E7920726F6C65, 'UÅ¼ytkownik nie moÅ¼e zarzÄ…dzaÄ‡ Å¼adnymi rolami uÅ¼ytkownikÃ³w', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x55736572206973204F6E6C696E6521, 'Benutzer ist Online!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572206973204F6E6C696E6521, 'Utilisateur en ligne!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572206973204F6E6C696E6521, 'Utente online!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Moduleinstellungen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Ajustes del módulo de usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'RÃ©glages du module user', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Modulo impostazioni utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572206D6F64756C652073657474696E6773, 'Ustawienia moduÅ‚u uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Benutzergruppen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Grupos del usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Utilisateur des grouppes', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5573657267726F757073, 'Gruppi utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Benutzername', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Benutzername', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'Username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65, 'UÅ¼ytkownik', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Benutzername ist falsch.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Nombre de usuario incorrecto', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Le nom d utilisateur est incorrect.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Username non corretto.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'Nazwa uÅ¼ytkownika jest niepoprawna.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D6520697320696E636F72726563742E, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ñ Ñ‚Ð°ÐºÐ¸Ð¼ Ð¸Ð¼ÐµÐ½ÐµÐ¼ Ð½Ðµ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Benutzername oder E-mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Nombre de usuario o Email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Nom d utilisateur ou adresse e-mail.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220456D61696C, 'Username o email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Benutzername oder Passwort ist falsch', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Usuario o contraseña incorrectos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Nom d utilisateur ou mot passe incorrect', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F722050617373776F726420697320696E636F7272656374, 'Username o password errato/a', 'it', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220656D61696C, 'Benutzername oder E-Mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220656D61696C, 'Nom d utilisateur ou adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x557365726E616D65206F7220656D61696C, 'Username o email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'Usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'Utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'Utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5573657273, 'ÐŸÐ¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Benutzer: ', 'de', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Usuarios:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Membres: ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'Utenti: ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x55736572733A20, 'UÅ¼ytkownicy: ', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Variablen name', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Nombre de variable', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Nom de la variable', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Nome variabile', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5661726961626C65206E616D65, 'Ð˜Ð¼Ñ Ð¿ÐµÑ€ÐµÐ¼ÐµÐ½Ð½Ð¾Ð¹', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20436F6465, 'Codice verifica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20436F6465, 'Kod weryfikujÄ…cy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20436F6465, 'ÐŸÑ€Ð¾Ð²ÐµÑ€Ð¾Ñ‡Ð½Ñ‹Ð¹ ÐºÐ¾Ð´', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Verifizierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Código de verificación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Code de verification', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x566572696669636174696F6E20636F6465, 'Codice verifica', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Ver', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Editer', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'Visualizza', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577, 'PolaÅ¼', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x566965772044657461696C73, 'Zur Gruppe', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566965772044657461696C73, 'Mostra dettagli', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C64, 'Mostra campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C64, 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C642023, 'Mostra # campo Profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772050726F66696C65204669656C642023, 'ÐŸÐ¾Ð»Ðµ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ #', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Ver Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Consulter le profil du membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'Mostra utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772055736572, 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ñ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Administratornachrichten anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Ver mensajes de admin', 'es', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Voir les messages de l administateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'Visualizza messaggi amministratore', 'it', 'yum');
INSERT INTO `translation` VALUES (0x566965772061646D696E206D65737361676573, 'PokaÅ¼ wiadomoÅ›ci administratora', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Meine Nachrichten ansehen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Ver mis mensajes', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Voir mes messages', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'Visualizza messaggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577206D79206D65737361676573, 'WyÅ›wietl moje wiadomoÅ›ci', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Benutzer \"{username}\"', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Ver usuario \"{username}\"', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Membre \"{username}\"', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'Visualizza utente \"{username}\"', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657220227B757365726E616D657D22, 'UÅ¼ytkownik \"{username}\"', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Benutzer anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Ver usuarios', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Montrer les utilisateurs', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'Visualizza utenti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56696577207573657273, 'PokaÅ¼ uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Sichtbar', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Visible', 'es', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Visible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Visibile', 'it', 'yum');
INSERT INTO `translation` VALUES (0x56697369626C65, 'Ð’Ð¸Ð´Ð¸Ð¼Ð¾ÑÑ‚ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x56697369742070726F66696C65, 'Profil besuchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x56697369742070726F66696C65, 'Visiter le profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x56697369742070726F66696C65, 'Visita profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5768656E2073656C656374696E672073656172636861626C652C207573657273206F66207468697320726F6C652063616E20626520736561726368656420696E207468652022757365722042726F777365222066756E6374696F6E, 'Wenn \"suchbar\" ausgewählt wird, kann man Nutzer dieser Rolle in der \"Benutzer durchsuchen\"-Funktion suchen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5768656E2073656C656374696E672073656172636861626C652C207573657273206F66207468697320726F6C652063616E20626520736561726368656420696E207468652022757365722042726F777365222066756E6374696F6E, 'Si le status de \"visible\" est choisi, un membre de ce rÃ´le pourra apparaitre dans les rÃ©sultats d une recherche', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5768656E2073656C656374696E672073656172636861626C652C207573657273206F66207468697320726F6C652063616E20626520736561726368656420696E207468652022757365722042726F777365222066756E6374696F6E, 'Quando selezioni \"Ricercabile\", gli utenti di questo ruolo sono ricercabili nella funzione \"Browser utenti\" ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Kommentar hinterlassen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Escribir un comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Laisser un commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206120636F6D6D656E74, 'Scrivi commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Escribir un mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Ecrire un message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Scrivi messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D657373616765, 'Napisz wiadomoÅ›Ä‡', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Diesem Benutzer eine Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Escribir un mensaje a este Usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Ecrire un message Ã  ce membre', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F20746869732055736572, 'Scrivi messaggio a questo utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F207B757365726E616D657D, 'Nachricht an {username} schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F207B757365726E616D657D, 'Message Ã©crire Ã  {username} ', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726974652061206D65737361676520746F207B757365726E616D657D, 'Scrivi messaggio a {username} ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Eine weitere Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Escribir otro mensaje', 'es', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Ecrire un autre message', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Scrivi un\'altro messaggio', 'it', 'yum');
INSERT INTO `translation` VALUES (0x577269746520616E6F74686572206D657373616765, 'Eine weitere Nachricht schreiben', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Kommentar schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Escribir comentario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Ecrire un commentaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x577269746520636F6D6D656E74, 'Scrivi commento', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5772697465206D657373616765, 'Nachricht schreiben', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Geschrieben am', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Escrito el', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Ecrit le', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E206174, 'Scritto a ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Geschrieben von', 'de', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Escrito por', 'es', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Ecrit par', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x5772697474656E2066726F6D, 'Scritto da ', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Falsches Bestätigugspasswort! Zugang wurde nicht gelöscht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, '¡Contraseña para confirmación incorrecta! Lacuenta no ha sido eliminada', 'es', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Confirmation incorrecte! Le compte n a pas Ã©tÃ© supprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Password id oconferma errata! Account non cancellato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x57726F6E672070617373776F726420636F6E6669726D6174696F6E21204163636F756E7420776173206E6F742064656C65746564, 'Niepoprawne hasÅ‚o! Konto nie zostaÅ‚o usuniÄ™te', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Ja', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Sí', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Oui', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Si', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Ja', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596573, 'Ð”Ð°', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Ja, und auf Registrierungsseite anzeigen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Si y mostrar en formulario de registro', 'es', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'oui et charger le formulaire d inscription', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Si e mostra nel form di registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Tak i pokaÅ¼ w formularzu rejestracji', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x59657320616E642073686F77206F6E20726567697374726174696F6E20666F726D, 'Ð”Ð° Ð¸ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¿Ñ€Ð¸ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Ihr Konto wurde aktiviert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Su cuenta está activada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Votre compte a bien Ã©tÃ© activÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Account attivato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Ihr Konto wurde aktiviert.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976617465642E, 'Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Ihr Konto ist aktiv.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Su cuenta está activa.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Votre compte est actif.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Account attivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Ihr Konto ist aktiv.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206163746976652E, 'Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ ÑƒÐ¶Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð°.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E7420697320626C6F636B65642E, 'Account bloccato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E7420697320626C6F636B65642E, 'Ð’Ð°Ñˆ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚ Ð·Ð°Ð±Ð»Ð¾ÐºÐ¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206E6F74206163746976617465642E, 'Account non attivo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206163636F756E74206973206E6F74206163746976617465642E, 'Ð’Ð°Ñˆ Ð°ÐºÐºÐ°ÑƒÐ½Ñ‚ Ð½Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ð½.', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Ihr seid bereits Freunde', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Ya son amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Ce membre figure dÃ©jÃ  dans votre liste de contact', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520616C72656164792061726520667269656E6473, 'Siete giÃ  in contatto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'Sie dürfen dieses Profil nicht ansehen.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'No tiene permiso para ver este perfil.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'VOus ne pouvez pas consulter ce profil.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'Non puoi vedere questo profilo.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7520617265206E6F7420616C6C6F77656420746F207669657720746869732070726F66696C652E, 'Nie masz uprawnie do przeglÄ…dania tego profilu', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Dies ist das Yii-User-Management Modul in Version {version} im Debug Modus!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, '¡Está ejecutando el Módulo de Administración de Usuarios Yii {version} en modo de depuración!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Dies ist das Yii-User-Management Modul in Version {version} im Debug Modus!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Questo Ã¨ il modulo di YUM versione {version} in modalitÃ  debug!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75206172652072756E6E696E6720746865205969692055736572204D616E6167656D656E74204D6F64756C65207B76657273696F6E7D20696E204465627567204D6F646521, 'Uruchamiasz moduÅ‚ Yii User Management Modul, wersja {version}, w trybie DEBUG!', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'Ihre Kontaktliste ist leer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'No tienes ningún amigo todavía', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'Votre liste de contact est vide', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F74206861766520616E7920667269656E647320796574, 'Lista contatti vuota', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Es wurde noch kein Profilbild hochgeladen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Aún no has subido tu imágen de Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Aucune photo de votre profil disponible', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7520646F206E6F7420686176652073657420616E2061766174617220696D61676520796574, 'Non hai settato un\'avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206A6F696E656420746869732067726F7570, 'Sie sind dieser Gruppe beigetreten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, 'Sie haben neue Nachrichten !', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, '¡Tienes Mensajes nuevos!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, 'Vous avez de nouveaux messages !', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577204D657373616765732021, 'Hai un nuovo messaggio!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Sie haben neue Nachrichten!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, '¡Tienes mensajes nuevos!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Vous n avez pas de messages!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Hai un nuovo messaggio!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6577206D6573736167657321, 'Masz nowÄ… wiadomoÅ›Ä‡!', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6F206D6573736167657320796574, 'Sie haben bisher noch keine Nachrichten', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6F206D6573736167657320796574, 'Aucun message rÃ©cent', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665206E6F206D6573736167657320796574, 'Non hai messaggi', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Sie haben {count} neue Nachricht(en)!', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, '¡Tienes {count} mensajes nuevos!', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Vous avez {count} nouveau(x) message(s)!', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Hai {count} nuovi messaggi!', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F752068617665207B636F756E747D206E6577204D657373616765732021, 'Masz {count} nowych wiadomoÅ›ci !', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7520726567697374657265642066726F6D207B736974655F6E616D657D, 'Sei registrato su {site_name}', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'Ihr Zugang wurde aktiviert. Danke für die Registierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Votre compte a bien Ã©tÃ© activÃ©. Merci pour votre inscription.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Il tuo account Ã¨ stato attivato. Grazie per la tua registrazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Ihr Avatar-Bild', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Tu imagen de Avatar', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Votre image de profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722041766174617220696D616765, 'Il tuo avatar', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204D65737361676520686173206265656E2073656E742E, 'El Mensaje ha sido enviado.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204D65737361676520686173206265656E2073656E742E, 'Votre mÃ©ssage a Ã©tÃ© envoyÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572204D65737361676520686173206265656E2073656E742E, 'Messaggio inviato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E, 'Tu cuenta ha sido activada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'Ihr Zugang wurde aktiviert. Danke für ihre Registrierung', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'VOtre compte est maintenant actif. Merci de vous Ãªtre enregistrÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E, 'Il tuo account Ã¨ stato attivato. Grazie per esserti registrato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Tu cuenta ha sido activada. Gracias por registrarte.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E206163746976617465642E205468616E6B20796F7520666F7220796F757220726567697374726174696F6E2E, 'Twoje konto zostaÅ‚o aktywowane. DziÄ™kujemy za rejestracjÄ™.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E2064656C657465642E, 'Ihr Zugang wurde gelöscht', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E2064656C657465642E, 'Votre compte a bien Ã©tÃ© supprimÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206163636F756E7420686173206265656E2064656C657465642E, 'Il tuo account Ã¨ stato cancellato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722061637469766174696F6E20737563636565646564, 'Ihre Aktivierung war erfolgreich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722061637469766174696F6E20737563636565646564, 'Votre compte a Ã©tÃ© activÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722061637469766174696F6E20737563636565646564, 'Attivazione riuscita', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Ihre Änderungen wurden gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Los cambios han sido guardados', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Vos modification ont Ã©tÃ© mÃ©morisÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Le modifiche sono state salvate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206368616E6765732068617665206265656E207361766564, 'Twoje zmiany zostaÅ‚y zapisane', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264, 'Ihr aktuelles Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264, 'Votre mot de passe actuel', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264, 'La tua password corrente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264206973206E6F7420636F7272656374, 'Ihr aktuelles Passwort ist nicht korrekt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264206973206E6F7420636F7272656374, 'Votre mot de passe actuel n est pas correct', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722063757272656E742070617373776F7264206973206E6F7420636F7272656374, 'La tua password corrente non Ã¨ corretta', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F757220667269656E6473686970207265717565737420686173206265656E206163636570746564, 'Ihre Freundschaftsanfrage wurde akzeptiert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F757220667269656E6473686970207265717565737420686173206265656E206163636570746564, 'Votre demande de contact a bien Ã©tÃ© acceptÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F757220667269656E6473686970207265717565737420686173206265656E206163636570746564, 'La richiesta di contatto Ã¨ stata accettata', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Ihre Nachricht wurde gesendet', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'El mensaje ha sido enviado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Votre mÃ©ssage a bien Ã©tÃ© envoyÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Il tuo messaggio Ã¨ stato inviato.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206D65737361676520686173206265656E2073656E74, 'Twoja wiadomoÅ›Ä‡ zostaÅ‚a wysÅ‚ana', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'Ihr Passwort wurde gespeichert.', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'La nueva contraseña ha sido guardada.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'La modification de votre mot de passe a bien Ã©tÃ© mÃ©morisÃ©.', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'La nuova password Ã¨ stata salvata.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F7572206E65772070617373776F726420686173206265656E2073617665642E, 'Twoje nowe hasÅ‚o zostaÅ‚o zapisane.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'Ihr Passwort ist abgelaufen. Bitte geben Sie ein neues Passwort an:', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'La contraseña ha expirado. Por favor escribe una contraseña nueva abajo:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'La durÃ©e de vie de votre mot de passe est arrivÃ©e Ã  Ã©chÃ©ance. Veuillez en definir un nouveau:', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070617373776F72642068617320657870697265642E20506C6561736520656E74657220796F7572206E65772050617373776F72642062656C6F773A, 'La password Ã¨ scaduta. Si prega di inserire una nuova password:', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F757220707269766163792073657474696E67732068617665206265656E207361766564, 'Ihre Privatsphären-einstellungen wurden gespeichert', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F757220707269766163792073657474696E67732068617665206265656E207361766564, 'La configuration de vos donnÃ©es privÃ©es a bien Ã©tÃ© enregistrÃ©e', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F757220707269766163792073657474696E67732068617665206265656E207361766564, 'Le tue opzioni Privacy sono state salvate', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ihr Profil', 'de', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Tu perfil', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ihr Profil', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Il tuo profilo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ihr Profil', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x596F75722070726F66696C65, 'Ð’Ð°Ñˆ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x596F757220726567697374726174696F6E206469646E277420776F726B2E20506C656173652074727920616E6F7468657220452D4D61696C20616464726573732E20496620746869732070726F626C656D2070657273697374732C20706C6561736520636F6E74616374206F75722053797374656D2041646D696E6973747261746F722E20, 'Tu proceso de registro falló. Por favor intenta con otra cuenta de correo. Si el problema persiste por favor contáctanos.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x596F75722072657175657374207375636365656465642E20506C6561736520656E7465722062656C6F7720796F7572206E65772070617373776F72643A, 'Tu solicitud fué exitosa. Por favor, escribe a continuación tu nueva contraseña:', 'es', 'yum');
INSERT INTO `translation` VALUES (0x61626F7574, 'information me concernant', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x61626F7574, 'Informazioni su', 'it', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'Aktivierungsschlüssel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'clave de activación', 'es', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'ClÃ© d activation de votre compte', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'chiave di attivazione', 'it', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'AktivierungsschlÃ¼ssel', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x61637469766174696F6E206B6579, 'ÐšÐ»ÑŽÑ‡ Ð°ÐºÑ‚Ð¸Ð²Ð°Ñ†Ð¸Ð¸', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x626972746864617465, 'Geburtstag', 'de', 'yum');
INSERT INTO `translation` VALUES (0x626972746864617465, 'anniversaire', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x626972746864617465, 'Compleanno', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6269727468646179, 'Geburtstag', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6269727468646179, 'date de naissance', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6269727468646179, 'Compleanno', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'Passwort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'cambiar Contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'Changer le mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652050617373776F7264, 'ZmieÅ„ hasÅ‚o', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'Passwort ändern', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'cambiar contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'Modifier le mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6368616E67652070617373776F7264, 'Cambia password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x646F206E6F74206D616B65206D7920667269656E6473207075626C6963, 'Meine Kontakte nicht veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x646F206E6F74206D616B65206D7920667269656E6473207075626C6963, 'Ne pas rendre publique la liste de mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x646F206E6F74206D616B65206D7920667269656E6473207075626C6963, 'Non mostrare i miei contatti pubblicamente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'E-Mail', 'de', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'correo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'e-Mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C, 'mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C2061646472657373, 'correo electrónico', 'es', 'yum');
INSERT INTO `translation` VALUES (0x656D61696C2061646472657373, 'Adres mejlowy', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x66697273746E616D65, 'Vorname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x66697273746E616D65, 'prÃ©nom', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x66697273746E616D65, 'Cognome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'Nur Freunde', 'de', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'sólo amigos', 'es', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'A mes contacts seulement', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x667269656E6473206F6E6C79, 'Solo contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6C6173746E616D65, 'Nachname', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6C6173746E616D65, 'nom de famille', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6C6173746E616D65, 'Nome', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6D616B65206D7920667269656E6473207075626C6963, 'Meine Kontakte veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6D616B65206D7920667269656E6473207075626C6963, 'Rendre visibles mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6D616B65206D7920667269656E6473207075626C6963, 'Rendi pubblici i miei contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6E6F, 'Nein', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6E6F, 'Non', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6E6F, 'No', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6F662075736572, 'von Benutzer', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6F662075736572, 'de l utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6F662075736572, 'dell\'utente', 'it', 'yum');
INSERT INTO `translation` VALUES (0x6F6E6C7920746F206D7920667269656E6473, 'Nur an meine Freunde veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x6F6E6C7920746F206D7920667269656E6473, 'Visible seulement pour mes contacts', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x6F6E6C7920746F206D7920667269656E6473, 'solamente ai miei contatti', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'Passwort', 'de', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'contraseña', 'es', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'mot de passe', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'password', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'hadÅ‚o', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x70617373776F7264, 'ÐŸÐ°Ñ€Ð¾Ð»ÑŒ', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'Privat', 'de', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'privado', 'es', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'PrivÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'Privato', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70726976617465, 'prywatny', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'Geschützt', 'de', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'protegido', 'es', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'ProtÃ¨gÃ©', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'Protetto', 'it', 'yum');
INSERT INTO `translation` VALUES (0x70726F746563746564, 'chroniony', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'Öffentlich', 'de', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'público', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'Publique', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'Pubblico', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7075626C6963, 'publiczny', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x737472656574, 'rue', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x737472656574, 'Indirizzo', 'it', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'Zeitstempel', 'de', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'marca de tiempo', 'es', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'tempon de date et heure', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x74696D657374616D70, 'timestamp', 'it', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'Benutzername', 'de', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'usuario', 'es', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'nom d utilisateur', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'username', 'it', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'nazwa uÅ¼ytkownika', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65, 'Ð›Ð¾Ð³Ð¸Ð½', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'Benutzername oder E-Mail Adresse', 'de', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'nombre de usuario o email', 'es', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'nom d utilisateur ou adresse e-mail', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'username or email', 'it', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'nazwa uÅ¼ytkowniak lub mejl', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x757365726E616D65206F7220656D61696C, 'Ð›Ð¾Ð³Ð¸Ð½ Ð¸Ð»Ð¸ email', 'ru', 'yum');
INSERT INTO `translation` VALUES (0x796573, 'Ja, diese Daten veröffentlichen', 'de', 'yum');
INSERT INTO `translation` VALUES (0x796573, 'Oui, rendre publique ces donnÃ©es', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x796573, 'Si', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7A6970636F6465, 'Postleitzahl', 'de', 'yum');
INSERT INTO `translation` VALUES (0x7A6970636F6465, 'code postal', 'fr', 'yum');
INSERT INTO `translation` VALUES (0x7A6970636F6465, 'CAP', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F206C6F6E6720286D61782E207B6E756D7D2063686172616374657273292E, '{attribute} es muy larga (max. {num} caracteres).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F206C6F6E6720286D61782E207B6E756D7D2063686172616374657273292E, '{attribute} troppo lungo (max. {num} caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F206C6F6E6720286D61782E207B6E756D7D2063686172616374657273292E, '{attribute} jest zbyt dÅ‚ugi (max. {num} znakÃ³w).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F2073686F727420286D696E2E207B6E756D7D2063686172616374657273292E, '{attribute} es muy corta (min. {num} caracteres).', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F2073686F727420286D696E2E207B6E756D7D2063686172616374657273292E, '{attribute} troppo corto (min. {num} caratteri).', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D20697320746F6F2073686F727420286D696E2E207B6E756D7D2063686172616374657273292E, '{attribute} jest zbyt krÃ³tki (min. {num} znakÃ³w).', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206469676974732E, '{attribute} debe tener al menos {num} dígitos.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206469676974732E, '{attribute}deve includere almeno {num} numeri.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206469676974732E, '{attribute} musi zawieraÄ‡ co najmniej {num} cyfr.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206C6F7765722063617365206C6574746572732E, '{attribute} debe tener al menos {num} caracteres en minúscula.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206C6F7765722063617365206C6574746572732E, '{attribute} deve includere almeno {num} lettere minuscole.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D206C6F7765722063617365206C6574746572732E, '{attribute} musi zawieraÄ‡ co najmniej {num} maÅ‚ych liter.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2073796D626F6C732E, '{attribute} debe tener al menos {num} símbolos.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2073796D626F6C732E, '{attribute} deve includere almeno {num} simboli.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2073796D626F6C732E, '{attribute} musi zawieraÄ‡ co najmniej {num} symboli.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2075707065722063617365206C6574746572732E, '{attribute} debe tener al menos {num} caracteres en mayúscula.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2075707065722063617365206C6574746572732E, '{attribute} deve includere almeno {num} lettere maiuscole.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D75737420696E636C756465206174206C65617374207B6E756D7D2075707065722063617365206C6574746572732E, '{attribute} musi zawieraÄ‡ co najmniej {num} duÅ¼ych liter.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E206D6F7265207468616E207B6E756D7D2073657175656E7469616C6C7920726570656174656420636861726163746572732E, '{attribute} no debe tener más de {num} caracteres repetidos secuencialmente.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E206D6F7265207468616E207B6E756D7D2073657175656E7469616C6C7920726570656174656420636861726163746572732E, '{attribute} non deve contenere {num} caratteri ripetuti sequenzialmente.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E206D6F7265207468616E207B6E756D7D2073657175656E7469616C6C7920726570656174656420636861726163746572732E, '{attribute} nie moÅ¼e zawieraÄ‡ wiÄ™cej niÅ¼ {num} sekwencji znakÃ³w.', 'pl', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E20776869746573706163652E, '{attribute} no debe contener espacios.', 'es', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E20776869746573706163652E, '{attribute} non deve contenere spazi.', 'it', 'yum');
INSERT INTO `translation` VALUES (0x7B6174747269627574657D206D757374206E6F7420636F6E7461696E20776869746573706163652E, '{attribute} nie moÅ¼e zawieraÄ‡ biaÅ‚ych znakÃ³w.', 'pl', 'yum');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `activationKey` varchar(128) NOT NULL DEFAULT '',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `lastvisit` int(10) NOT NULL DEFAULT '0',
  `lastaction` int(10) NOT NULL DEFAULT '0',
  `lastpasswordchange` int(10) NOT NULL DEFAULT '0',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `notifyType` enum('None','Digest','Instant','Threshold') DEFAULT 'Instant',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `status` (`status`),
  KEY `superuser` (`superuser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '1353000304', '1469692954', '0', '0', '1', '1', null, 'Instant');
INSERT INTO `user` VALUES ('2', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', '', '1353000304', '0', '0', '0', '0', '1', null, 'Instant');
