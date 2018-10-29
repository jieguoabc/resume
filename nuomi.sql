SET NAMES UTF8;
DROP DATABASE IF EXISTS nuomi;
CREATE DATABASE nuomi CHARSET=UTF8;
USE nuomi;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `nuomi_index_carousel`
-- ----------------------------
/*轮播图*/
DROP TABLE IF EXISTS `nuomi_index_carousel`;
CREATE TABLE `nuomi_index_carousel` (
  `cid` int(11) NOT NULL auto_increment,
  `img` varchar(128) default NULL,
  `title` varchar(64) default NULL,
  `href` varchar(128) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_index_carousel
-- ----------------------------
INSERT INTO `nuomi_index_carousel` VALUES ('9', 'img/index/banner1.png', '轮播广告商品1', 'product_details.html?lid=28');
INSERT INTO `nuomi_index_carousel` VALUES ('10', 'img/index/banner2.png', '轮播广告商品2', 'product_details.html?lid=19');
INSERT INTO `nuomi_index_carousel` VALUES ('11', 'img/index/banner3.png', '轮播广告商品3', 'lookforward.html');
INSERT INTO `nuomi_index_carousel` VALUES ('12', 'img/index/banner4.png', '轮播广告商品4', 'lookforward.html');

-- ----------------------------
-- Table structure for `nuomi_index_product`
-- ----------------------------
/*首页产品列表*/
DROP TABLE IF EXISTS `nuomi_index_product1`;
CREATE TABLE `nuomi_index_product1` (
  `pid` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `score` Varchar(3) default NULL,
  `pic` varchar(128) default NULL,
  `href` varchar(128) default NULL,
  `seq_recommended` tinyint(4) default NULL,
  `seq_new_arrival` tinyint(4) default NULL,
  `seq_top_sale` tinyint(4) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nuomi_index_product1
-- ----------------------------
INSERT INTO `nuomi_index_product1` VALUES ('8', '铁血战士', '6.9', 'img/index/movie1.jpg', 'product_details.html?lid=1', '1', '1', '1');
INSERT INTO `nuomi_index_product1` VALUES ('9', '昨日晴空', '8.0', 'img/index/movie2.jpg', 'product_details.html?lid=5', '2', '2', '2');
INSERT INTO `nuomi_index_product1` VALUES ('10', '无双', '8.4', 'img/index/movie3.jpg','product_details.html?lid=9', '3', '3', '3');
INSERT INTO `nuomi_index_product1` VALUES ('11', '嗝嗝老师','8.7', 'img/index/movie4.jpg','product_details.html?lid=13', '4', '4', '4');
INSERT INTO `nuomi_index_product1` VALUES ('12', '雪怪大冒险','8.7', 'img/index/movie5.jpg','product_details.html?lid=17', '5', '5', '5');
INSERT INTO `nuomi_index_product1` VALUES ('13', '找到你','8.4', 'img/index/movie6.jpg','product_details.html?lid=19', '6', '6', '6');


-- ----------------------------
-- Table structure for `nuomi_index_product2`
-- ----------------------------
/*首页产品列表2*/
DROP TABLE IF EXISTS `nuomi_index_product2`;
CREATE TABLE `nuomi_index_product2` (
  `pid` int(11) NOT NULL auto_increment,
  `title` varchar(64) default NULL,
  `details` varchar(64) default NULL,
  `area` varchar(64) default NULL,
  `count` Varchar(12) default NULL,
  `avg` Varchar(3) default NULL,
  `pic` varchar(128) default NULL,
  `href` varchar(128) default NULL,
  `seq_recommended` tinyint(4) default NULL,
  `seq_new_arrival` tinyint(4) default NULL,
  `seq_top_sale` tinyint(4) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nuomi_index_product2
-- ----------------------------
INSERT INTO `nuomi_index_product2` VALUES ('14', '纸牌污桌游馆','桌游','抚琴','已售2208','暂无', 'img/index/active1.jpg', 'product_details.html?lid=1', '1', '1', '1');
INSERT INTO `nuomi_index_product2` VALUES ('15', '时空迷阵密室逃脱','其他生活服务','春熙路','已售1394','￥38/人', 'img/index/active2.jpg', 'product_details.html?lid=1', '1', '1', '1');
INSERT INTO `nuomi_index_product2` VALUES ('16', '海兰云天','足疗按摩','光华村','已售71','暂无', 'img/index/active3.jpg', 'product_details.html?lid=1', '1', '1', '1');
INSERT INTO `nuomi_index_product2` VALUES ('17', '呼一下到酒店SPA按摩(上门按摩店)','足疗按摩','宽窄巷子','已售52','暂无', 'img/index/active4.jpg', 'product_details.html?lid=1', '1', '1', '1');
INSERT INTO `nuomi_index_product2` VALUES ('18', '中国现代五项赛事中心游泳馆','运动健身','天府新区','已售524','暂无', 'img/index/active5.jpg', 'product_details.html?lid=1', '1', '1', '1');
-- ----------------------------
-- Table structure for `nuomi_food`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_laptop`;
CREATE TABLE `nuomi_laptop` (
  `lid` int(11) NOT NULL auto_increment,
  `family_id` int(11) default NULL,
  `title` varchar(128) default NULL,
  `address` varchar(128) default NULL,
  `phone` varchar(48) default NULL,
   `time` varchar(128) default NULL,
  `price` decimal(10,2) default NULL,
   `orgin_price` decimal(10,2) default NULL,
  `promise` varchar(64) default NULL,
  `spec` varchar(64) default NULL,
  `lname` varchar(32) default NULL,
  `os` varchar(32) default NULL,
  `memory` varchar(32) default NULL,
  `resolution` varchar(32) default NULL,
  `video_card` varchar(32) default NULL,
  `cpu` varchar(32) default NULL,
  `video_memory` varchar(32) default NULL,
  `category` varchar(32) default NULL,
  `disk` varchar(32) default NULL,
  `details` varchar(1024) default NULL,
  `shelf_time` bigint(20) default NULL,
  `sold_count` int(11) default NULL,
  `is_onsale` tinyint(1) default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nuomi_
-- ----------------------------
INSERT INTO `nuomi_laptop` VALUES ('1', '1', '醉烧刀海鲜美食汇(春熙Village店) ', '成都市锦江区东大街上东大街段111号（春熙Village6楼）', '02886666671','全天','78', '108','*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/128GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150123456789', '2968', '1');
INSERT INTO `nuomi_laptop` VALUES ('2', '2', '吉布鲁牛排海鲜自助(青羊万达店)', '成都市青羊区日月大道一段978号万达广场四层4027-4029号', '02861983102','11:00-21:00','73','98', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '双核i5/8GB内存/256GB闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i5低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150223456789', '1922', '0');
INSERT INTO `nuomi_laptop` VALUES ('3', '3', '澳洲肥牛捞捞锅(万家湾店)', '成都市青羊区光华东四路78号东原时光道15栋3楼', '02886674886','11:00-21:00','55','68', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/128G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150323456789', '733', '0');
INSERT INTO `nuomi_laptop` VALUES ('4', '4', '川西坝子自助火锅(新鸿路店)', '成都市成华区成华大道新鸿路268号','02884329786|17716126986','10:00-00:00', '39.9','49.8', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '定制款：双核i7/8G内存/256G闪存', 'AppleMacBook Air', 'MacOS', '8G', '1920*1080', '集成显卡', 'Intel i7低功耗版', '其它', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>', '150323456789', '105', '0');
INSERT INTO `nuomi_laptop` VALUES ('5', '5', '芭比伦牛排海鲜自助', '成都市青羊区西大街1号新城市广场3楼', '02886695138','周一,周二,周三,周四,周五,周六,周日(10:00-23:00)','73','98', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【13.3英寸】I5-6200U 8G 256G', '小米Air', 'Windows 10', '8G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '1G', '轻薄本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', '154123456789', '1527', '1');
INSERT INTO `nuomi_laptop` VALUES ('6', '6', '阳光岛·海鲜盛宴(孵化园店)', '成都市高新区天府大道北段1199号银泰中心in99L5层512号', '02886052389','全天','296','388', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5银色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', '153123456789', '115', '0');
INSERT INTO `nuomi_laptop` VALUES ('7', '7', '七掌柜自助火锅(建设路店) ', '成都市成华区建设南新路77号', '02862393293|17702833489','全天','41.8','52.8', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5金色】 M-7Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', '156123456789', '812', '1');
INSERT INTO `nuomi_laptop` VALUES ('8', '8', '名言屋牛排海鲜自助', '成都市金牛区一环路北一段汇龙湾生活广场1楼', '1388193859','全天','78', '98',' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【12.5英寸】M-6Y30 4G 128G', '小米Air', 'Windows 10', '4G', '全高清屏(1920*1080)', '集成显卡', 'Intel CoreM', '其它', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div c', '157123456789', '1081', '0');
INSERT INTO `nuomi_laptop` VALUES ('9', '9', '汉丽轩韩式自助烤肉(紫荆店)', '成都市高新区紫荆北路2号2楼', '02864867488|18428017078','全天','69.9', '79',' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i3 4G 500G独显', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i3', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '150423456789', '1461', '1');
INSERT INTO `nuomi_laptop` VALUES ('10', '10', '鱼香四季河鲜自助火锅店(金仙桥店)', '成都市金牛区金仙桥路1号1栋2楼', '02885379088','09:00-00:00','56.8','66', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 500G', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '151423456789', '733', '0');
INSERT INTO `nuomi_laptop` VALUES ('11', '11', '烤尚宫韩式涮烤自助餐厅(龙湖金楠时光店)', '成都市武侯区晋阳路432号2栋附309号', '02861994066','10:00-21:00','58','68', ' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 4G 256GSSD', 'ThinkPadE480c', 'Windows10', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '152423456789', '913', '1');
INSERT INTO `nuomi_laptop` VALUES ('12', '12', '盛和快乐家族牛排自助(双流万达店) ', '成都市双流县东升街道星空路999号（万达广场3楼）3007-3008号', '02864936078','全天','72','78',' *退货补运费 *30天无忧退货 *48小时快速退款', '【E480C-2017新】i5 8G 256GSSD', 'ThinkPadE480c', 'Windows10', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规笔记本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58745160N7de01df6.jpg\"></div></div></div>', '153423456789', '112', '0');
INSERT INTO `nuomi_laptop` VALUES ('13', '13', '酥咪铬海鲜自助烤肉·涮涮锅(大丰店)', '成都市新都区大丰大天路439号福地广场2楼19号（家乐福二楼）', '13320982074','全天','54.9','68',' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I3-7100U/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '151123456789', '1197', '1');
INSERT INTO `nuomi_laptop` VALUES ('14', '14', '老三样江湖菜(成都总店)', '成都市金牛区金仙桥路15号川铁大厦附1-2号','02889644958','全天', '85','100', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/128G固态', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '152123456789', '137', '0');
INSERT INTO `nuomi_laptop` VALUES ('15', '15', 'xcake(金沙店) ', '成都市青羊区苏坡东路27号附28号', '02861676108|4008000108','10:00-21:00','79','159',' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/4G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '4G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '153123456789', '21', '0');
INSERT INTO `nuomi_laptop` VALUES ('16', '16', '王氏老灶火锅 ', '成都市郫县鸿发街115号', '15108388285','周一,周二,周三,周四,周五,周六,周日(11:00-22:00:00)','38','38.8', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '13.3英寸I5/8G/256G/2G独显', '华硕(ASUS)13.3英寸RX310UQ金属超极本 学生 商务', 'Windows 10', '8G', '全高清屏(1920×1080)', '高性能游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59190fe7N6a9fb112.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfceNc0694135.jpg\"><img class=\"\" src=\"img/product/detail/59143b58N0f24f48d.jpg\"><img class=\"\" src=\"img/product/detail/58f9de03Nd67611dc.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfcbNc96d061c.jpg\"><img class=\"\" src=\"img/product/detail/58d0bfd1Nea212a7a.jpg\"></div></div></div>', '152423456789', '981', '0');
INSERT INTO `nuomi_laptop` VALUES ('17', '17', '麒麟鱼庄生态河鲜自助火锅', '成都市锦江区经天西路5临','18123267812', '11:00-03:00','46.8', '56',' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i5 双硬盘 GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i5标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', '149123456789', '192', '1');
INSERT INTO `nuomi_laptop` VALUES ('18', '18', '小乔过桥米线(永陵路店)', '成都市金牛区永陵路19号永辉超市', '02868520688','全天','21','25',' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '小新700【i7 8G 500G GTX950M】', '联想小新700', 'Windows 10', '8G', '分辨率：全高清屏(1920×1080)', 'GTX950M', 'Intel i7标准电压版', '4G', '游戏本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58ca2b14Nd5c09fcd.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b28Na5a22f83.jpg\"><img class=\"\" src=\"img/product/detail/58ca3012Nc99ab61f.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b51Nbf258c3b.jpg\"><img class=\"\" src=\"img/product/detail/58ca2b67N436e60de.jpg\"></div></div></div>', '151523456789', '260', '0');
INSERT INTO `nuomi_laptop` VALUES ('19', '19', '二妹鲜鱼火锅', '成都市武侯区晋吉西一街10号一层', '15228843052','10:00-21:00','16.9','18', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【流光银】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', '151923456789', '911', '0');
INSERT INTO `nuomi_laptop` VALUES ('20', '20', '黄记煌三汁焖锅(青羊万达店)', '成都市青羊区日月大道一段978号青羊万达广场4楼23号','02883249918', '10:00-22:00','85','100', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【溢彩金】i7-7500u 8G 128 1T', '戴尔燃7000', 'Windows 10', '8G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i7低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', '150823456789', '1930', '1');
INSERT INTO `nuomi_laptop` VALUES ('21', '21', '小郡肝(上道西城店)', '成都市青羊区万寿路2号115-117号', '18108236627','全天','88','100', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '【元気粉】i5-7200u 4G 128 500G', '戴尔燃7000', 'Windows 10', '4G', '全高清屏(1920×1080)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '轻薄本', '128G+500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58d87221Na033954c.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58e5e4b5N862f8aa1.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/57bfa672N20953b71.jpg\"></div></div></div>', '151023456789', '987', '1');
INSERT INTO `nuomi_laptop` VALUES ('22', '22', '成都新希望高新皇冠假日酒店   ', '成都市高新区新天路8号(靠近新希望皇冠国际)', '02887826666','全天','198','288', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5745B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '148123456789', '1901', '1');
INSERT INTO `nuomi_laptop` VALUES ('23', '23', '鲜花椒冷锅鱼', '成都市武侯区郭家桥西街13号', '13398188075','全天','23','45', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '153123456789', '1231', '0');
INSERT INTO `nuomi_laptop` VALUES ('24', '24', 'W-CLUB(誉峰遇见店)', '成都市高新区万象南路360号交子大道与成汉南路交汇处（原誉峰售楼部）','02887571256|18880476252','周一,周二,周三,周四,周五,周六,周日(11:00:00-23:59:00);周一,周二,周三,周四,周五,周六,周日(00:00:00-02:00:00)', '680','1560', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '枪弹版 i7-7700HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645SE', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1539923456789', '221', '0');
INSERT INTO `nuomi_laptop` VALUES ('25', '25', '龙滋鲜鱼捞(新华公园店)', '成都市成华区新鸿南路28号', '02883515476','11:00-23:00','19.9', '129',' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i7-6700HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1519123456789', '711', '1');
INSERT INTO `nuomi_laptop` VALUES ('26', '26', '临江门印象老火锅', '成都市金牛区甘泉路6号附3号（好亿佳超市西侧20米）', '02887787388','11:00-23:00','88', '100',' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '精锐版 i5-6300HQ 4G GTX960 4G', '戴尔游匣', 'Windows 10', '4G', '全高清屏(1920×1080)', 'GTX960M', 'Intel i5标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1529123456789', '319', '0');
INSERT INTO `nuomi_laptop` VALUES ('27', '27', '张花椒川菜馆', '成都市青羊区黄土村9组纬八路113号', '15198250720','周一,周二,周三,周四,周五,周六,周日(11:00:00-23:59:00)','85','100', ' *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '宗师版 i5-7300HQ 8G GTX1050 4G', '戴尔灵越游匣15PR-5645B', 'Windows 10', '8G', '全高清屏(1920×1080)', 'GTX1050', 'Intel i7标准电压版', '4G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d3fNd4e6c74e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d49Nd9aa8623.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003d53N79717f17.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003db4N5441df2e.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/59003afdN7d9208b8.jpg\"></div></div></div>', '1511123456789', '2110', '0');
INSERT INTO `nuomi_laptop` VALUES ('28', '28', '一路红新概念自助火锅店(科华旗舰店) ', '成都市武侯区科华北路145号附2号','02885353508', '10:00-次日00:00','49.9','69', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 500G', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '150123456789', '117', '1');
INSERT INTO `nuomi_laptop` VALUES ('29', '29', '汉釜宫韩式养生自助烤肉(龙湖北城天街店)', '成都市金牛区五福桥东路229号附105号4楼（招商银行楼上）', '18681360991','10:00-21:00','57','78', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 500G', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '500G', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '151123456789', '1862', '0');
INSERT INTO `nuomi_laptop` VALUES ('30', '30', '味天下醉牛肉醉鱼庄 ', '成都市高新区土龙路89号', '02883417268','10:00-21:00','168','228', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 8G 1TB', 'ThinkPadE470 c', 'Linux', '8G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '152123456789', '812', '1');
INSERT INTO `nuomi_laptop` VALUES ('31', '31', 'EASE BAKE逸焙(路苑店)', '成都市青羊区西货站路312号清水路苑11栋1楼3号','02887314973|18180668700', '08:00-22:00','19.9','28', '*30天无忧退货 *48小时快速退款', '【E470C-2017新】i5 4G 256GSSD', 'ThinkPadE470 c', 'Linux', '4G', '标准屏(1366×768)', '入门级游戏独立显卡', 'Intel i5低功耗版', '2G', '常规本', '256G固态', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/58119b8aNb84f1e22.jpg\"></div></div></div>', '153123456789', '162', '0');
INSERT INTO `nuomi_laptop` VALUES ('33', '32', 'pizza豪客咻', '成都市金牛区一环路北一段113号附33号', '13308237047|15902881178','全天','40','50', ' *退货补运费 *30天无忧退货 *72小时发货', '【高速】顽石游戏本i74G1T128SSD', '华硕FH5900V', 'Windows 10', '4G', '全高清屏(1920*1080)', '入门级游戏独立显卡', 'Intel i7标准电压版', '2G', '游戏本', '128G+1T', '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/583d2fb0N44aa29cf.jpg\"><img class=\"\" src=\"img/product/detail/583d2fd5N33db758b.jpg\"><img class=\"\" src=\"img/product/detail/583d359aN47f3276b.jpg\"><img class=\"\" src=\"img/product/detail/583d3036Nef20d28f.jpg\"><img class=\"\" src=\"img/product/detail/583d304aN4722f8d5.jpg\"></div></div></div>', '1450123456789', '1231', '0');

-- ----------------------------
-- Table structure for `nuomi_food_family`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_food_family`;
CREATE TABLE `nuomi_food_family` (
  `fid` int(11) NOT NULL auto_increment,
  `fname` varchar(32) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nuomi_food_family
-- ----------------------------
INSERT INTO `nuomi_food_family` VALUES ('1', '醉烧刀海鲜美食汇');
INSERT INTO `nuomi_food_family` VALUES ('2', '吉布鲁牛排海鲜自助');
INSERT INTO `nuomi_food_family` VALUES ('3', '澳洲肥牛捞捞锅');
INSERT INTO `nuomi_food_family` VALUES ('4', '川西坝子自助火锅');
INSERT INTO `nuomi_food_family` VALUES ('5', '芭比伦牛排海鲜自助');
INSERT INTO `nuomi_food_family` VALUES ('6', '阳光岛·海鲜盛宴');
INSERT INTO `nuomi_food_family` VALUES ('7', '七掌柜自助火锅');
INSERT INTO `nuomi_food_family` VALUES ('8', '名言屋牛排海鲜自助');
INSERT INTO `nuomi_food_family` VALUES ('9', '汉丽轩韩式自助烤肉');
INSERT INTO `nuomi_food_family` VALUES ('10', '鱼香四季河鲜自助火锅店');
INSERT INTO `nuomi_food_family` VALUES ('11', '烤尚宫韩式涮烤自助餐厅');
INSERT INTO `nuomi_food_family` VALUES ('12', '盛和快乐家族牛排自助');
INSERT INTO `nuomi_food_family` VALUES ('13', '酥咪铬海鲜自助烤肉·涮涮锅');
INSERT INTO `nuomi_food_family` VALUES ('14', '老三样江湖菜');
INSERT INTO `nuomi_food_family` VALUES ('15', 'xcake');
INSERT INTO `nuomi_food_family` VALUES ('16', '王氏老灶火锅');
INSERT INTO `nuomi_food_family` VALUES ('17', '麒麟鱼庄生态河鲜自助火锅');
INSERT INTO `nuomi_food_family` VALUES ('18', '小乔过桥米线');
INSERT INTO `nuomi_food_family` VALUES ('19', '二妹鲜鱼火锅');
INSERT INTO `nuomi_food_family` VALUES ('20', '黄记煌三汁焖锅');
INSERT INTO `nuomi_food_family` VALUES ('21', '小郡肝');
INSERT INTO `nuomi_food_family` VALUES ('22', '成都新希望高新皇冠假日酒店');
INSERT INTO `nuomi_food_family` VALUES ('23', '鲜花椒冷锅鱼');
INSERT INTO `nuomi_food_family` VALUES ('24', 'W-CLUB');
INSERT INTO `nuomi_food_family` VALUES ('25', '龙滋鲜鱼捞');
INSERT INTO `nuomi_food_family` VALUES ('26', '临江门印象老火锅');
INSERT INTO `nuomi_food_family` VALUES ('27', '张花椒川菜馆');
INSERT INTO `nuomi_food_family` VALUES ('28', '一路红新概念自助火锅店');
INSERT INTO `nuomi_food_family` VALUES ('29', '汉釜宫韩式养生自助烤肉');
INSERT INTO `nuomi_food_family` VALUES ('30', '味天下醉牛肉醉鱼庄');
INSERT INTO `nuomi_food_family` VALUES ('31', 'EASE BAKE逸焙');
INSERT INTO `nuomi_food_family` VALUES ('32', 'pizza豪客咻');
-- ----------------------------
-- Table structure for `糯米_laptop_pic`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_food_pic`;
CREATE TABLE `nuomi_food_pic` (
  `pid` int(11) NOT NULL auto_increment,
  `laptop_id` int(11) default NULL,
  `sm` varchar(128) default NULL,
  `md` varchar(128) default NULL,
  `lg` varchar(128) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nuomi_food_pic
-- ----------------------------
INSERT INTO `nuomi_food_pic` VALUES ('1', '1', 'img/product/sm/1.jpg', 'img/product/md/1.jpg', 'img/product/lg/1.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('2', '1', 'img/product/sm/2.jpg', 'img/product/md/2', 'img/product/lg/2.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('3', '2', 'img/product/sm/3.jpg', 'img/product/md/3.jpg', 'img/product/3.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('4', '3', 'img/product/sm/4.jpg', 'img/product/md/4.jpg', 'img/product/lg/4.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('5', '4', 'img/product/sm/5.jpg', 'img/product/md/5.jpg', 'img/product/lg/5.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('6', '5', 'img/product/sm/6.jpg', 'img/product/md/6.jpg', 'img/product/lg/6.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('7', '6', 'img/product/sm/7.jpg', 'img/product/md/7.jpg', 'img/product/lg/7.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('8', '7', 'img/product/sm/8.jpg', 'img/product/md/8.jpg', 'img/product/lg/8.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('9', '8', 'img/product/sm/9.jpg', 'img/product/md/9.jpg', 'img/product/lg/9.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('10', '9', 'img/product/sm/10.jpg', 'img/product/md/10.jpg', 'img/product/lg/10.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('11', '10', 'img/product/sm/11.jpg', 'img/product/md/11.jpg', 'img/product/lg/11.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('12', '11', 'img/product/sm12.jpg', 'img/product/md/12.jpg', 'img/product/lg/12.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('13', '12', 'img/product/sm/13.jpg', 'img/product/md/13.jpg', 'img/product/lg/13.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('14', '13', 'img/product/sm/14.jpg', 'img/product/md/14.jpg', 'img/product/lg/14.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('15', '14', 'img/product/sm/15.jpg', 'img/product/md/15.jpg', 'img/product/lg/15.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('16', '15', 'img/product/sm/16.jpg', 'img/product/md/16.jpg', 'img/product/lg/16.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('17', '16', 'img/product/sm/17.jpg', 'img/product/md/17.jpg', 'img/product/17.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('18', '17', 'img/product/sm/18.jpg', 'img/product/md/18.jpg', 'img/product/lg/18.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('19', '18', 'img/product/sm/19.jpg', 'img/product/md/19.jpg', 'img/product/lg/19.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('20', '19', 'img/product/sm/20.jpg', 'img/product/md/20.jpg', 'img/product/lg/20.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('21', '20', 'img/product/sm/21.jpg', 'img/product/md/21.jpg', 'img/product/lg/21.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('22', '21', 'img/product/sm/22.jpg', 'img/product/md/22.jpg', 'img/product/lg/22.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('23', '22', 'img/product/sm/23.jpg', 'img/product/md/23.jpg', 'img/product/lg/23.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('24', '23', 'img/product/sm/24.jpg', 'img/product/md/24.jpg', 'img/product/lg/24.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('25', '24', 'img/product/sm/25.jpg', 'img/product/md/25.jpg', 'img/product/lg/25.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('26', '25', 'img/product/sm/26.jpg', 'img/product/md/26.jpg', 'img/product/lg/26.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('27', '26', 'img/product/sm/27.jpg', 'img/product/md/27.jpg', 'img/product/lg/27.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('28', '27', 'img/product/sm/28.jpg', 'img/product/md/28.jpg', 'img/product/lg/28.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('29', '28', 'img/product/sm/29.jpg', 'img/product/md/29.jpg', 'img/product/lg/29.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('30', '29', 'img/product/sm/30.jpg', 'img/product/md/30.jpg', 'img/product/lg/30.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('31', '30', 'img/product/sm/31.jpg', 'img/product/md/31.jpg', 'img/product/lg/31.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('32', '31', 'img/product/sm/32.jpg', 'img/product/md/32.jpg', 'img/product/lg/32.jpg');
INSERT INTO `nuomi_food_pic` VALUES ('33', '32', 'img/product/sm/33.jpg', 'img/product/md/33.jpg', 'img/product/lg/33.jpg');
-- ----------------------------
-- Table structure for `nuomi_order`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_order`;
CREATE TABLE `nuomi_order` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `address_id` int(11) default NULL,
  `status` int(11) default NULL,
  `order_time` bigint(20) default NULL,
  `pay_time` bigint(20) default NULL,
  `deliver_time` bigint(20) default NULL,
  `received_time` bigint(20) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_order
-- ----------------------------

-- ----------------------------
-- Table structure for `xz_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_order_detail`;
CREATE TABLE `nuomi_order_detail` (
  `did` int(11) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nuomi_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `nuomi_receiver_address`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_receiver_address`;
CREATE TABLE `nuomi_receiver_address` (
  `aid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `receiver` varchar(16) default NULL,
  `province` varchar(16) default NULL,
  `city` varchar(16) default NULL,
  `county` varchar(16) default NULL,
  `address` varchar(128) default NULL,
  `cellphone` varchar(16) default NULL,
  `fixedphone` varchar(16) default NULL,
  `postcode` char(6) default NULL,
  `tag` varchar(16) default NULL,
  `is_default` tinyint(1) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nuomi_receiver_address
-- ----------------------------

-- ----------------------------
-- Table structure for `nuomi_shoppingcart_item`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_shoppingcart_item`;
CREATE TABLE `nuomi_shoppingcart_item` (
  `iid` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `product_id` int(11) default NULL,
  `count` int(11) default NULL,
  `is_checked` tinyint(1) default NULL,
  PRIMARY KEY  (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_shoppingcart_item
-- ----------------------------
INSERT INTO `nuomi_shoppingcart_item` VALUES ('1', '10', '17', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('2', '11', '11', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('3', '12', '1', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('4', '13', '3', '9', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('5', '14', '1', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('13', '20', '1', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('14', '22', '17', '11', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('15', '20', '28', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('16', '25', '2', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('17', '3', '28', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('18', '3', '14', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('19', '28', '1', '99997', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('20', '29', '31', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('25', '3', '18', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('26', '32', '13', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('27', '32', '5', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('28', '32', '19', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('29', '33', '1', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('31', '3', '1', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('32', '35', '20', '1', '0');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('33', '2', '19', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('34', '39', '19', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('35', '1', '5', '15', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('36', '1', '28', '2', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('37', '1', '9', '1', '1');
INSERT INTO `nuomi_shoppingcart_item` VALUES ('38', '45', '22', '1', '0');


-- ----------------------------
-- Table structure for `nuomi_user`
-- ----------------------------
DROP TABLE IF EXISTS `nuomi_user`;
CREATE TABLE `nuomi_user` (
  `uid` int(11) NOT NULL auto_increment,
  `uname` varchar(32) default NULL,
  `upwd` varchar(32) default NULL,
  `email` varchar(64) default NULL,
  `phone` varchar(16) default NULL,
  `avatar` varchar(128) default NULL,
  `user_name` varchar(32) default NULL,
  `gender` int(11) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xz_user
-- ----------------------------
INSERT INTO `nuomi_user` VALUES ('1', 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋', '0');
INSERT INTO `nuomi_user` VALUES ('2', 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵', '1');
INSERT INTO `nuomi_user` VALUES ('3', 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1');
INSERT INTO `nuomi_user` VALUES ('4', 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');
INSERT INTO `nuomi_user` VALUES ('5', '1111', '111111', '441977193@qq.com', '18357100796', null, null, null);
INSERT INTO `nuomi_user` VALUES ('6', 'ABCD', '123456', '123@qq.com', '13538894495', null, null, null);
INSERT INTO `nuomi_user` VALUES ('7', 'mohk', '123456', '11@qq.com', '13512312312', null, null, null);
INSERT INTO `nuomi_user` VALUES ('8', '121123', 'w13945128995', '491000888@qq.com', '13213389258', null, null, null);
INSERT INTO `nuomi_user` VALUES ('9', '555555', '5555555', '55555555@163.com', '13400000000', null, null, null);
INSERT INTO `nuomi_user` VALUES ('10', 'xuyong', '123456', '123456789@qq.com', '15525623622', null, null, null);
INSERT INTO `nuomi_user` VALUES ('11', 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', null, null, null);
