/*
Navicat MySQL Data Transfer

Source Server         : whsxt
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-11-24 23:46:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'cjh', '123456');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '白兰地');
INSERT INTO `category` VALUES ('2', '威士忌');
INSERT INTO `category` VALUES ('3', '金酒');
INSERT INTO `category` VALUES ('4', '伏特加');
INSERT INTO `category` VALUES ('5', '朗姆酒');
INSERT INTO `category` VALUES ('6', '特吉拉酒');
INSERT INTO `category` VALUES ('9', '长城');

-- ----------------------------
-- Table structure for categorysecond
-- ----------------------------
DROP TABLE IF EXISTS `categorysecond`;
CREATE TABLE `categorysecond` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `csname` varchar(255) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`csid`),
  KEY `FK936FCAF21DB1FD15` (`cid`),
  CONSTRAINT `FK936FCAF21DB1FD15` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categorysecond
-- ----------------------------
INSERT INTO `categorysecond` VALUES ('1', '马利', '1');
INSERT INTO `categorysecond` VALUES ('2', '人头马', '1');
INSERT INTO `categorysecond` VALUES ('3', '爱之喜', '1');
INSERT INTO `categorysecond` VALUES ('4', '百事吉', '1');
INSERT INTO `categorysecond` VALUES ('5', '金花', '1');
INSERT INTO `categorysecond` VALUES ('6', '路易斯', '1');
INSERT INTO `categorysecond` VALUES ('7', '奥塔尔', '1');
INSERT INTO `categorysecond` VALUES ('9', '皇家礼炮', '2');
INSERT INTO `categorysecond` VALUES ('10', '老佰威', '2');
INSERT INTO `categorysecond` VALUES ('11', '格兰利非特', '2');
INSERT INTO `categorysecond` VALUES ('12', '红方', '2');
INSERT INTO `categorysecond` VALUES ('13', '黑方', '2');
INSERT INTO `categorysecond` VALUES ('14', '白马', '2');
INSERT INTO `categorysecond` VALUES ('15', '御林军', '3');
INSERT INTO `categorysecond` VALUES ('16', '博士', '3');
INSERT INTO `categorysecond` VALUES ('17', '戈登斯', '3');
INSERT INTO `categorysecond` VALUES ('18', '波尔斯', '3');
INSERT INTO `categorysecond` VALUES ('19', '波克马', '3');
INSERT INTO `categorysecond` VALUES ('20', '斯刁利西那亚', '4');
INSERT INTO `categorysecond` VALUES ('21', '兰牛', '4');
INSERT INTO `categorysecond` VALUES ('22', '莫斯科卡亚', '4');
INSERT INTO `categorysecond` VALUES ('23', '斯米诺夫', '4');
INSERT INTO `categorysecond` VALUES ('24', '百家地', '5');
INSERT INTO `categorysecond` VALUES ('25', '龙里可', '5');
INSERT INTO `categorysecond` VALUES ('26', '摩根船长', '5');
INSERT INTO `categorysecond` VALUES ('27', '麦尔斯', '5');
INSERT INTO `categorysecond` VALUES ('28', '凯尔弗', '6');
INSERT INTO `categorysecond` VALUES ('29', '斗牛士', '6');
INSERT INTO `categorysecond` VALUES ('30', '玛利亚西', '6');
INSERT INTO `categorysecond` VALUES ('31', '索查', '3');
INSERT INTO `categorysecond` VALUES ('32', '欧雷', '6');
INSERT INTO `categorysecond` VALUES ('34', '干欲葡萄酒', '9');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `itemid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `FKE8B2AB6166C01961` (`oid`),
  KEY `FKE8B2AB6171DB7AE4` (`pid`),
  KEY `FKE8B2AB6140ACF87A` (`oid`),
  KEY `FKE8B2AB6140AD0F00` (`uid`),
  CONSTRAINT `FKE8B2AB6140ACF87A` FOREIGN KEY (`oid`) REFERENCES `orders` (`oid`),
  CONSTRAINT `FKE8B2AB6140AD0F00` FOREIGN KEY (`uid`) REFERENCES `orders` (`oid`),
  CONSTRAINT `FKE8B2AB6171DB7AE4` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('1', '1', '228', '1', '1', null);
INSERT INTO `orderitem` VALUES ('2', '1', '119', '3', '2', null);
INSERT INTO `orderitem` VALUES ('3', '1', '172', '2', '3', null);
INSERT INTO `orderitem` VALUES ('4', '1', '299', '60', '4', '4');
INSERT INTO `orderitem` VALUES ('5', '1', '299', '60', '5', '5');
INSERT INTO `orderitem` VALUES ('6', '1', '299', '60', '6', '6');
INSERT INTO `orderitem` VALUES ('7', '1', '299', '60', '7', '7');
INSERT INTO `orderitem` VALUES ('8', '1', '299', '60', '8', '8');
INSERT INTO `orderitem` VALUES ('9', '1', '299', '60', '9', '9');
INSERT INTO `orderitem` VALUES ('10', '1', '299', '60', '10', '10');
INSERT INTO `orderitem` VALUES ('11', '1', '228', '1', '11', null);
INSERT INTO `orderitem` VALUES ('12', '1', '299', '57', '12', null);
INSERT INTO `orderitem` VALUES ('13', '1', '186', '35', '12', null);
INSERT INTO `orderitem` VALUES ('14', '1', '198', '24', '13', null);
INSERT INTO `orderitem` VALUES ('15', '1', '198', '28', '13', null);
INSERT INTO `orderitem` VALUES ('16', '1', '358', '51', '13', null);
INSERT INTO `orderitem` VALUES ('17', '1', '299', '57', '14', null);
INSERT INTO `orderitem` VALUES ('18', '1', '1299', '5', '14', null);
INSERT INTO `orderitem` VALUES ('19', '1', '228', '1', '15', null);
INSERT INTO `orderitem` VALUES ('20', '1', '299', '57', '15', null);
INSERT INTO `orderitem` VALUES ('21', '1', '590', '7', '16', null);
INSERT INTO `orderitem` VALUES ('22', '1', '186', '40', '17', null);
INSERT INTO `orderitem` VALUES ('23', '1', '198', '25', null, null);
INSERT INTO `orderitem` VALUES ('24', '1', '186', '40', '19', null);
INSERT INTO `orderitem` VALUES ('25', '1', '198', '22', '19', null);
INSERT INTO `orderitem` VALUES ('26', '1', '299', '57', '20', null);
INSERT INTO `orderitem` VALUES ('27', '1', '228', '1', '21', null);
INSERT INTO `orderitem` VALUES ('28', '1', '228', '1', null, null);
INSERT INTO `orderitem` VALUES ('29', '1', '358', '44', null, null);
INSERT INTO `orderitem` VALUES ('30', '1', '228', '1', null, null);
INSERT INTO `orderitem` VALUES ('31', '1', '228', '1', '24', null);
INSERT INTO `orderitem` VALUES ('32', '1', '358', '51', null, null);
INSERT INTO `orderitem` VALUES ('33', '1', '358', '42', '26', null);
INSERT INTO `orderitem` VALUES ('34', '1', '299', '60', '27', null);
INSERT INTO `orderitem` VALUES ('35', '1', '299', '57', '28', null);
INSERT INTO `orderitem` VALUES ('36', '1', '358', '51', '29', null);
INSERT INTO `orderitem` VALUES ('37', '1', '299', '57', null, null);
INSERT INTO `orderitem` VALUES ('38', '1', '299', '60', null, null);
INSERT INTO `orderitem` VALUES ('39', '1', '358', '51', null, null);
INSERT INTO `orderitem` VALUES ('40', '2', '396', '22', '31', null);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `total` double DEFAULT NULL,
  `ordertime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `FKC3DF62E5AA3D9C7` (`uid`),
  CONSTRAINT `FKC3DF62E5AA3D9C7` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '228', '2017-04-15 11:11:41', '1', '??', '15726607618', '??????????3?', null);
INSERT INTO `orders` VALUES ('2', '119', '2017-04-15 11:12:54', '1', '??', '15726607618', '??????????3?', null);
INSERT INTO `orders` VALUES ('3', '172', '2017-04-15 11:25:27', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('4', '299', '2017-04-15 12:15:52', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('5', '299', '2017-04-15 12:22:55', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('6', '299', '2017-04-15 12:23:00', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('7', '299', '2017-04-15 12:23:01', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('8', '299', '2017-04-15 12:23:02', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('9', '299', '2017-04-15 12:23:02', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('10', '299', '2017-04-15 12:23:03', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('11', '228', '2017-04-15 12:49:43', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('12', '485', '2017-04-15 15:09:57', '1', null, null, null, null);
INSERT INTO `orders` VALUES ('13', '754', '2017-04-15 15:27:57', '1', '崔佳豪', null, null, null);
INSERT INTO `orders` VALUES ('14', '1598', '2017-04-16 10:43:39', '1', '王云泽', null, null, null);
INSERT INTO `orders` VALUES ('15', '527', '2017-04-16 10:47:25', '1', '刘萌', null, null, '9');
INSERT INTO `orders` VALUES ('16', '590', '2017-05-10 08:56:29', '1', '刘萌', null, null, '9');
INSERT INTO `orders` VALUES ('17', '186', '2017-05-10 09:06:00', '1', '陈晓宇', null, null, '16');
INSERT INTO `orders` VALUES ('19', '384', '2017-05-10 10:09:01', '1', '苏文华', null, null, '18');
INSERT INTO `orders` VALUES ('20', '299', '2017-06-02 20:46:55', '1', '刘云飞', '15726607618', '????????????', '19');
INSERT INTO `orders` VALUES ('21', '228', '2017-06-02 21:09:12', '3', '胡文青', '15726607618', '????????????', '20');
INSERT INTO `orders` VALUES ('24', '228', '2017-06-02 22:07:41', '2', '刘云飞', '15726607618', '????????????', '19');
INSERT INTO `orders` VALUES ('26', '358', '2017-06-02 22:10:18', '3', '刘萌', '15726607618', '????????????', '9');
INSERT INTO `orders` VALUES ('27', '299', '2017-06-02 22:12:39', '3', '王云泽', '15726607618', '????????????', null);
INSERT INTO `orders` VALUES ('28', '299', '2017-06-02 22:13:24', '3', '苏文华', '15726607618', '????????????', '18');
INSERT INTO `orders` VALUES ('29', '358', '2017-06-02 22:16:23', '3', '陈晓宇', '15726607618', '????????????', '16');
INSERT INTO `orders` VALUES ('31', '396', '2018-11-24 22:44:09', '3', '周小伟', '15678221928', '湖北省武汉市江汉路28号', '23');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `shop_price` double DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdesc` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `csid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKED8DCCEFB9B74E02` (`csid`),
  CONSTRAINT `FKED8DCCEFB9B74E02` FOREIGN KEY (`csid`) REFERENCES `categorysecond` (`csid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '799', '228', 'products/1/cs10001.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2017-05-08 19:54:35', '1');
INSERT INTO `product` VALUES ('2', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶y', '1150', '999', 'products/1/cs10002.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-08 19:55:07', '1');
INSERT INTO `product` VALUES ('3', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '495', '399', 'products/1/cs10003.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-10 08:49:35', '1');
INSERT INTO `product` VALUES ('5', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '1338', '1299', 'products/1/cs10004.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-10 08:49:41', '2');
INSERT INTO `product` VALUES ('6', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '3588', '3299', 'products/1/cs10005.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。\r\n??? 白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-08 19:55:02', '2');
INSERT INTO `product` VALUES ('7', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶l', '1120', '690', 'products/1/cs10006.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2018-11-24 23:37:13', '3');
INSERT INTO `product` VALUES ('8', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶l', '672', '336', 'products/1/cs10007.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-08 19:55:20', '3');
INSERT INTO `product` VALUES ('9', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '238', '119', 'products/1/cs10008.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-10 08:49:59', '3');
INSERT INTO `product` VALUES ('10', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '356', '158', 'products/1/cs10009.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-10 08:49:52', '4');
INSERT INTO `product` VALUES ('11', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '19800', '9900', 'products/1/cs20001.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2017-05-10 08:49:46', '4');
INSERT INTO `product` VALUES ('12', '美国进口洋酒JackDaniel\'s 杰克丹尼威士忌700mL/瓶', '19800', '9900', 'products/1/cs20002.jpg', '百事吉（Bisquit），始创于1819年，经过一百八十余年的发展，现已成为欧洲最大的蒸馏酒酿造厂之一。当亚历山大·百事吉创建这个酒厂的时候，还只是一个二十岁的小伙子，但凭借着非凡的才干，这个年轻人让他的酒厂最终成为了干邑地区最好的白兰地酒厂之一。', '0', '2014-11-03 20:18:00', '4');
INSERT INTO `product` VALUES ('13', '卡慕 经典特醇1750ML 宝树行 Camus 金花卡慕干邑白兰地 法国原装进口洋酒', '19800', '9900', 'products/1/cs20003.jpg', '始创于1863年的卡慕干邑又称金花干邑，是世界干邑顶级品牌，享有盛誉、尊崇达150年之久。卡幕家族传承五代至今无止境地追求着干邑酿造的极致，是全球最大的、唯一完全由家族掌控的独立干邑世家。卡慕的制作工艺尊重传统，所产干邑白兰地均采用自家果园栽种的圣·迪米里翁（Saint Emilion）优质葡萄作为原料加以醇制混合而成，因此具有雅致且充满活力的紫罗兰芳香。', '0', '2014-11-03 20:18:00', '5');
INSERT INTO `product` VALUES ('14', '卡慕 经典特醇1750ML 宝树行 Camus 金花卡慕干邑白兰地 法国原装进口洋酒', '19800', '9900', 'products/1/cs20004.jpg', '始创于1863年的卡慕干邑又称金花干邑，是世界干邑顶级品牌，享有盛誉、尊崇达150年之久。卡幕家族传承五代至今无止境地追求着干邑酿造的极致，是全球最大的、唯一完全由家族掌控的独立干邑世家。卡慕的制作工艺尊重传统，所产干邑白兰地均采用自家果园栽种的圣·迪米里翁（Saint Emilion）优质葡萄作为原料加以醇制混合而成，因此具有雅致且充满活力的紫罗兰芳香。', '0', '2014-11-03 20:18:00', '5');
INSERT INTO `product` VALUES ('15', '卡慕 经典特醇1750ML 宝树行 Camus 金花卡慕干邑白兰地 法国原装进口洋酒', '19800', '9900', 'products/1/cs20005.jpg', '始创于1863年的卡慕干邑又称金花干邑，是世界干邑顶级品牌，享有盛誉、尊崇达150年之久。卡幕家族传承五代至今无止境地追求着干邑酿造的极致，是全球最大的、唯一完全由家族掌控的独立干邑世家。卡慕的制作工艺尊重传统，所产干邑白兰地均采用自家果园栽种的圣·迪米里翁（Saint Emilion）优质葡萄作为原料加以醇制混合而成，因此具有雅致且充满活力的紫罗兰芳香。', '0', '2014-11-03 20:18:00', '5');
INSERT INTO `product` VALUES ('16', '宝树行人头马路易十三700mL Louis XIII 干邑白兰地原装进口洋酒', '19800', '9900', 'products/1/cs20006.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '6');
INSERT INTO `product` VALUES ('17', '宝树行人头马路易十三700mL Louis XIII 干邑白兰地原装进口洋酒', '19800', '9900', 'products/1/cs20007.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '6');
INSERT INTO `product` VALUES ('18', '宝树行人头马路易十三700mL Louis XIII 干邑白兰地原装进口洋酒', '19800', '9900', 'products/1/cs20008.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '6');
INSERT INTO `product` VALUES ('19', '宝树行 人头马路易十三3000mL 原装进口洋酒干邑白兰地', '19800', '9900', 'products/1/cs20009.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-10-01 20:18:00', '7');
INSERT INTO `product` VALUES ('20', '宝树行 人头马路易十三3000mL 原装进口洋酒干邑白兰地', '17900', '7290', 'products/1/cs20010.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '7');
INSERT INTO `product` VALUES ('21', '宝树行 人头马路易十三3000mL 原装进口洋酒干邑白兰地', '598', '198', 'products/1/cs30001.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-11-03 20:18:00', '7');
INSERT INTO `product` VALUES ('22', '皇家礼炮Royal Salute 21年苏格兰威士忌 3000ml 进口洋酒', '598', '198', 'products/1/cs30002.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '9');
INSERT INTO `product` VALUES ('23', '皇家礼炮Royal Salute 21年苏格兰威士忌 3000ml 进口洋酒', '598', '198', 'products/1/cs30003.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '9');
INSERT INTO `product` VALUES ('24', '皇家礼炮Royal Salute 21年苏格兰威士忌 3000ml 进口洋酒', '598', '198', 'products/1/cs30004.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '9');
INSERT INTO `product` VALUES ('25', '国王路易十五XO白兰地 法国原瓶进口洋酒 礼盒洋酒 700ml*1', '598', '198', 'products/1/cs30005.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '10');
INSERT INTO `product` VALUES ('26', '国王路易十五XO白兰地 法国原瓶进口洋酒 礼盒洋酒 700ml*1', '598', '198', 'products/1/cs30006.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '10');
INSERT INTO `product` VALUES ('27', '国王路易十五XO白兰地 法国原瓶进口洋酒 礼盒洋酒 700ml*1', '598', '198', 'products/1/cs30007.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '10');
INSERT INTO `product` VALUES ('28', '进口洋酒 美国杰克丹尼威士忌酒700ml Jack Daniels 鸡尾酒基酒', '598', '198', 'products/1/cs30008.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '11');
INSERT INTO `product` VALUES ('29', '进口洋酒 美国杰克丹尼威士忌酒700ml Jack Daniels 鸡尾酒基酒', '598', '198', 'products/1/cs30009.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '11');
INSERT INTO `product` VALUES ('31', '原装进口 正品洋酒 百龄坛12年威士忌 苏格兰威士忌 700ml', '387', '186', 'products/1/cs40001.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '12');
INSERT INTO `product` VALUES ('32', '原装进口 正品洋酒 百龄坛12年威士忌 苏格兰威士忌 700ml', '387', '186', 'products/1/cs40002.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '12');
INSERT INTO `product` VALUES ('33', '原装进口 正品洋酒 百龄坛12年威士忌 苏格兰威士忌 700ml', '387', '186', 'products/1/cs40003.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '12');
INSERT INTO `product` VALUES ('34', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40004.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '13');
INSERT INTO `product` VALUES ('35', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40005.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-11-03 20:18:00', '13');
INSERT INTO `product` VALUES ('36', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40006.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '13');
INSERT INTO `product` VALUES ('37', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40007.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '14');
INSERT INTO `product` VALUES ('38', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40008.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '14');
INSERT INTO `product` VALUES ('39', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40009.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '14');
INSERT INTO `product` VALUES ('40', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40010.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '15');
INSERT INTO `product` VALUES ('41', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '387', '186', 'products/1/cs40011.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-11-03 20:18:00', '15');
INSERT INTO `product` VALUES ('42', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50001.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-11-03 20:18:00', '15');
INSERT INTO `product` VALUES ('43', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50002.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '16');
INSERT INTO `product` VALUES ('44', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50003.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-11-03 20:18:00', '16');
INSERT INTO `product` VALUES ('45', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50004.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-12-07 20:18:00', '16');
INSERT INTO `product` VALUES ('46', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50005.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '17');
INSERT INTO `product` VALUES ('47', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50006.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-11-03 20:18:00', '17');
INSERT INTO `product` VALUES ('48', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50007.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '17');
INSERT INTO `product` VALUES ('49', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50008.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '18');
INSERT INTO `product` VALUES ('50', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '899', '358', 'products/1/cs50009.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '18');
INSERT INTO `product` VALUES ('51', '冬装外套棉衣立领修身商务大码男装潮牌上衣', '899', '358', 'products/1/cs50010.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-12-07 20:18:00', '18');
INSERT INTO `product` VALUES ('52', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60001.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '19');
INSERT INTO `product` VALUES ('53', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60002.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-11-03 20:18:00', '19');
INSERT INTO `product` VALUES ('54', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60003.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '19');
INSERT INTO `product` VALUES ('55', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60004.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '20');
INSERT INTO `product` VALUES ('56', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60005.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '20');
INSERT INTO `product` VALUES ('57', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60006.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-12-07 22:18:00', '21');
INSERT INTO `product` VALUES ('58', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60007.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '21');
INSERT INTO `product` VALUES ('59', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60008.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '22');
INSERT INTO `product` VALUES ('60', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60009.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '1', '2014-12-02 20:18:00', '22');
INSERT INTO `product` VALUES ('61', '正品洋酒米歇尔威士忌礼盒套装特价包邮 700ml*1', '997', '299', 'products/1/cs60010.jpg', '白兰地等级是根据桶贮时间划分的。人头马的生产标准高于干邑产区生产法令规定的标准，陈化期达到50年以上的称为路易十三。', '0', '2014-11-03 20:18:00', '22');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('7', 'jack', 'aaa12345', '崔佳豪', 'jack@shop.com', '15726607628', '山西省晋中经济技术开发区', '1', '');
INSERT INTO `user` VALUES ('8', 'mike', 'bbb12345', '王云泽', 'mike@shop.com', '18726607628', '北京市西三旗中腾建华3楼', '1', '');
INSERT INTO `user` VALUES ('9', 'rose', '123456', '刘萌', 'liumeng@126.com', '15827112886', '上海市金山区佳木路12号', '1', null);
INSERT INTO `user` VALUES ('16', 'smile', '1234', '陈晓宇', '502582283@qq.com', '18535466312', '湖北省咸宁市嘉鱼县一中', '0', '5cab3db11c154886b9043ac37fb39f77751169778778482ba521e37d52898a51');
INSERT INTO `user` VALUES ('18', 'andy', '12345', '苏文华', '182994283@qq.com', '15827165828', '北京市昌平区回龙观大街38号', '1', 'ecf2fa216ecc45bd896949395fa10e906e35dc526a704b3eb967f620ea80f092');
INSERT INTO `user` VALUES ('19', 'dsmdf', '12345', '刘云飞', '234343555@qq.com', '18233866324', '北京市昌平区回龙观大街36号', '1', '02492ab722df41f0804aa516da322b0f5d87a9c0e0834ba3a148f0c379d5859e');
INSERT INTO `user` VALUES ('20', 'huwq', '12345', '胡文青', '435455668@qq.com', '18135462756', '北京市昌平区文峰大街22号', '1', '6e5de1ab8c804aeb833a5d45c2b0b3b099aa21bbb98a42dea761ddc0426ac048');
INSERT INTO `user` VALUES ('23', 'andy_kkk', '1234567', '周小伟', 'andy@126.com', '15678221928', '湖北省武汉市江汉路28号', '1', '53e685362b6246579d963cea6e3f7ba9f0db4f92b79e47d8b26e488da2c23c0e');
