/* This file is created by MySQLReback 2014-12-02 01:18:31 */
 /* 创建表结构 `think_info`  */
 DROP TABLE IF EXISTS `think_info`;/* MySQLReback Separation */ CREATE TABLE `think_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `information` text NOT NULL COMMENT '信息',
  `ticket` text NOT NULL COMMENT '门票',
  `introduction` text NOT NULL COMMENT '简介',
  `location` text NOT NULL COMMENT '位置',
  `more` text COMMENT '更多信息',
  `place` int(11) NOT NULL COMMENT '景点',
  PRIMARY KEY (`id`),
  KEY `place` (`place`),
  CONSTRAINT `think_info_ibfk_1` FOREIGN KEY (`place`) REFERENCES `think_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `think_info` */
 INSERT INTO `think_info` VALUES ('1','位于珠海西部的港中旅（珠海）海泉湾度假区是国家旅游局授予的全国首家“国家旅游休闲度假示范区”，是香港中旅集团继建设开发深圳华侨城、世界之窗、锦绣中华之后又一力作。度假区总占地5.1平方公里，首期投资22亿元。另有青岛海泉湾、沙家浜海泉湾。\r\n\r\n开放时间：\r\n\r\n09:00-次日01:30\r\n','门市价：168元\r\n会员价：150元\r\n注：1.1米—1.4米儿童80元/位；1.1米 以下免费。','位于珠海西部的港中旅（珠海）海泉湾度假区是国家旅游局授予的全国首家“国家旅游休闲度假示范区”，是香港中旅集团继建设开发深圳华侨城、世界之窗、锦绣中华之后又一力作。度假区总占地5.1平方公里，首期投资22亿元。美国著名的EDSA、WATG公司、加拿大FORREC、日本的NIHON SEKKEI，美国的WILSON&amp;ASSOCLATES,INC、HBA、香港的CELL公司分别担纲了海泉湾度假区的总体规划及景观设计、建筑设 计、主题乐园规划设计、温泉项目和室内装修的设计。','广东省珠海市金湾区升平大道西尽头海泉湾渡假城 ','交通指南\r\n（1）江门线海泉湾快情况\r\n1．计费\r\n江门市区至海泉湾，单人单程票价32元，单人双程票价56元，6人单程（或3人双程）票价为152元（以填写发票的形式操作，多在新会推广）。\r\n2．行驶路线\r\n大方旅行社（江门市府对面）——银晶酒店——丽宫酒店——冈州宾馆（新会）——海泉湾。\r\n3．班次情况\r\n该线大方旅行社的始发时间为7：30、8：50、14：00和15：40。每天共发4班车。\r\n（2）中山线海泉湾快线情况\r\n1．计费\r\n中山市区至海泉湾，单人单程票价28元，单人双程票价52元，6人单程（或3人双程）票价为143元（以填写发票的形式操作）中山三乡单人单程票价23元，单人双程票价42元。珠海斗门井岸单人单程票价15元，单人双程票价26元。\r\n2．行驶线路\r\n中山石岐（具体地点另定）——三乡雅居乐（暂定）——斗门井岸东亚旅行社——海泉湾。\r\n3．班次情况\r\n该线的始发时间为7：30、8：50、13：15和15：30。每天共发4班车。\r\n注：所有运行方案将以届时的调整为准。\r\n针对1.1~1.4米儿童、残疾军人和持有60岁老人优待证的老人，快线设立单人6.5折单程票价。','1'),('2','珠海长隆国际海洋度假区地处与澳门近在咫尺的中国国家级开放新区—横琴新区，是长隆集团投资建设的又一个世界级超大型综合主题旅游度假区。其应用国际先进技术和经验，自主创新，并采用最顶尖的科技设备、最顶级、最IN的设计和最完善的管理，全力打造一个集主题公园、豪华酒店、商务会展、旅游购物、体育休闲于一体的超级旅游度假区，这里将成为“世界级旅游巨无霸”和“世界的长隆”。','成人 350\r\n儿童（1米--1.5米）245\r\n长者（65岁）245\r\n1米以下儿童免费进场！','2014年3月29日，经过2个多月的成功试业，全球最大的海洋主题度假区——珠海长隆国际海洋度假区正式开业！\r\n珠海长隆国际海洋度假区首期投资达到200亿，这个投资规模，即使放在全球的范围来看，这也是超乎常规的大手笔。它的正式开业，是中国旅游发展史上的一件大事，它汇聚了全球主题公园和度假区设计、包装、设备生产、制作等各类项目的最优秀公司，运用了当今世界最先进的技术和手段，结合中国人自身的创意和经验，是长隆人打造世界级民族品牌征程中的重要一步，是中国旅游行业比肩世界顶尖水平的代表之作。它的全面开放，对于粤港澳经济的一体化，珠海、澳门竞争力的提升，以及横琴产业多元化都将带来深远影响。它的全面开业，不仅是广东和珠海的大事，更是港澳各界和世界主题乐园界瞩目的大事。','珠海长隆','横琴长隆海洋王国确切地址：珠海横琴新区环岛东路与长隆大道交汇处 横琴口岸南3公里左右\r\n　　直达公交有K10、K11、14、63、86路5条 旅游专线公交有首末站由‘横琴’总站延伸至‘长隆’ 九洲港-长隆’、‘香洲-长隆’、‘城轨珠海站-长隆’、‘横琴口岸-长隆’等专线。”','2');/* MySQLReback Separation */
 /* 插入数据 `think_info` */
 INSERT INTO `think_info` VALUES ('3','石景山就是整个珠海城市的最佳观光点，石景山索道坐落于珠海市中心，著名的景山公园内。石景山占地面积57.9万平方米，海拔高度148米。这里石景独特、幽洞奇异、翠湖清澈、植被丰富，其山石林阁之美、人文风物之奇，与香炉湾畔婀娜多姿的“渔女”相映生辉，珠海三新索道有限公司在1998年投资开发的珠海石景山索滑道项目位于珠海城区中心、依山傍海的景山公园内。','公园营业时间：8:00开始；\r\n缆车营业时间：周一至周五9:00―17:30；周六、日8:30―6：00PM \r\n缆车收费：成人普通来回￥55/位（小童￥30/位），单程成人票￥30/位（小童￥20/位），节假日不变。','石景山以千奇百怪的石景而闻名，山上怪石起伏跌岩，错落有序，如奔马绝尘，似众流归海，浑然天成一幅百兽图，因而取名石景山。乘索道登临山顶，极目所至：东方明珠--香港，南望东方蒙地卡罗--澳门，放眼绿树成荫的珠海全貌，俯瞰近在咫尺的“香炉”、“渔女”和遥望玉珠滴翠、蜿蜒海边的“情侣路”，置身如画美景使人倍感&quot;浪漫之城&quot;现代而浪漫的气息。从山顶直达山下长达630米的管轨式滑道，跨石穿林、掠翠冲幽、蜿蜒起伏、新鲜刺激。乘坐它，心跳加快的动感顿时生出&quot;世界第一冲&quot;的超然与豪情。自1998年开业以来，已接待海内外游客两百多万人次，是珠海最为著名的旅游观光景区。','石景山公园','珠海石景山公园线路：2、4、13、20路车','3');/* MySQLReback Separation */
 /* 插入数据 `think_info` */
 INSERT INTO `think_info` VALUES ('4','珠海海洋乐园位于珠海横琴岛西面的二井湾，占地80万平方米。珠海海洋乐园内有红珊瑚，玳瑁，鹦鹉螺等多种国家一级保护动物，以及千年大海龟，中华白海豚标本展示。紧邻乐园有全省最大的红树林湿地生态保护区，区内有千姿百态的红树植物以及白鹤等数十种珍稀鸟类。','①景区开放时间：8：00-20：00\r\n②儿童票：身高1.1-1.4米之间半票，1.1米以下免票\r\n③预订60周岁以上老人票、军官票凭有效证件购买半票','珠海海洋乐园是珠海市水产科研与种苗中心基地的重要组成部分。珠海海洋乐园内有海洋与渔业科研中心、水产种苗孵化中心、技术培训中心，农业部、南海水产研究所、暨南大学和省、市多家试验中心的教学科研基地，海洋与渔业科普展示中心，还有海水生态湖，鱼趣、水趣娱乐中心等，是一个集海洋与渔业科研生产、科普展示、旅游观光和休闲度假于一体的综合性海洋生态度假乐园。特别是海洋与渔业科普展示区和红树林湿地观赏区，将成为中小学生认识海洋、探究海洋的知识窗口。','2','珠海海洋乐园内有海洋与渔业科研中心、水产种苗孵化中心、技术培训中心，农业部、南海水产研究所、暨南大学和省、市多家试验中心的教学科研基地，海洋与渔业科普展示中心，还有海水生态湖，鱼趣、水趣娱乐中心等，是一个集海洋与渔业科研生产、科普展示、旅游观光和休闲度假于一体的综合性海洋生态度假乐园。特别是海洋与渔业科普展示区和红树林湿地观赏区，将成为中小学生认识海洋、探究海洋的知识窗口。你步入海底隧道一般的展馆，海底世界多姿多彩的景象便如梦幻地展现在你眼前。岩洞及下班结构的展馆使游客仿佛置身于海底世界，沿通道在水下穿行，有如漫步海底。五光十色、形态各民的珊瑚礁丛、珍稀的海洋鱼群环在您的四周，民彩纷呈海洋动植物的迷人景观将尽收眼底。','4'),('5','圆明新园于公元1997年2月2日正式建成并开放，它坐落于珠海九州大道石林山下，占地面积为1.39平方公里，以北京圆明园为原稿，按1：1比例精选圆明园四十景中的十八景修建而成，投资6亿元人民币，是我国首批4A级景区之一。它以其浓厚的清文化、精雅别致的亭、台、楼、阁和气势磅礴的大型舞蹈表演吸引了无数国内外游客。圆明新园融古典皇家建筑群、江南古典园林建筑群和西洋建筑群为一体，为游客再显了清朝盛世风华。','0','圆明新园于公元一九九七年二月二日正式建成并开放，它坐落于珠海九洲大道石林山下，占地面积为1.39平方公里，以北京圆明园为原稿，按1：1比例精选圆明园四十景中的十八景修建而成，投资6亿元人民币，是我国首批4A级景区之一。它三面环山，南面平坦开阔，福海湖水域面积8万平方米。 圆明新园集中再现当年北京圆明园皇家园林的宏伟气势，所有建筑景观均按原尺寸仿建。大殿“正大光明”、“九州清晏”、“蓬岛瑶台”、“方壶胜景”组成中轴线为皇家宫殿式建筑群，中轴线西面是“远瀛观”、“大水法”、“海晏堂”等西洋楼景区，环湖有曲院风荷”、“上下天光”、“平湖秋月”、“濂溪乐处”等十余处中国江南园林建筑景观。它以其浓厚的清文化、精雅别致的亭、台、楼、阁和气势磅礴的大型舞蹈表演吸引了无数国内外游客。园内西部，是独具高贵气质的西洋建筑群，白色的大理石墙身，精致的殿内装饰，让您仿佛置身于古老的欧洲宫殿。','3','珠海圆明新园乘车路线：\r\n1、省内主要汽车站有直达珠海香洲车站、拱北车站或岐关车站的巴士，自驾车游客沿京珠高速路进入珠海市区，并根据路标指示，往珠海九洲大道西方向即可。\r\n2、圆明新园位于珠海九洲大道兰埔西兰埔，市内有1、13、14、20、25、30、40、60、69、99、201等线路的公共汽车和旅游观光巴士直达或经过。\r\n地址：兰埔路与白石路交界处\r\n周边公交：\r\n圆明新园-公交车站\r\n车次：1路; 13路; 25路; 40路; 60路; 62路; 69路; 992路\r\n圆明山庄-公交车站\r\n车次：13路; 62路; 69路\r\n\r\n银石雅园-公交车站\r\n途经公交车：1路, 14路, 25路, 30路, 40路, 60路, 202路, 206路, 601路, 603路, 605路, 608路, 609路, 992路, k9路\r\n','5');/* MySQLReback Separation */
 /* 创建表结构 `think_name`  */
 DROP TABLE IF EXISTS `think_name`;/* MySQLReback Separation */ CREATE TABLE `think_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(16) NOT NULL COMMENT '景点名字',
  `theme` varchar(32) NOT NULL COMMENT '主题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `think_name` */
 INSERT INTO `think_name` VALUES ('1','海泉湾','blue'),('2','长隆海洋王国','circle'),('3','石景山公园','green'),('4','海洋公园','blue'),('5','圆明新园','green');/* MySQLReback Separation */
 /* 创建表结构 `think_news`  */
 DROP TABLE IF EXISTS `think_news`;/* MySQLReback Separation */ CREATE TABLE `think_news` (
  `new_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `new_title` text NOT NULL COMMENT '标题',
  `new_context` text NOT NULL COMMENT '内容',
  `place` int(11) NOT NULL COMMENT '景点',
  PRIMARY KEY (`new_id`),
  KEY `place` (`place`),
  CONSTRAINT `think_news_ibfk_1` FOREIGN KEY (`place`) REFERENCES `think_name` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `think_permitssion`  */
 DROP TABLE IF EXISTS `think_permitssion`;/* MySQLReback Separation */ CREATE TABLE `think_permitssion` (
  `permit_id` int(11) NOT NULL AUTO_INCREMENT,
  `Info_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '景点信息编辑权限',
  `Rooms_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '住宿信息编辑权限',
  `Resturant_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '餐饮信息编辑权限',
  `Photos_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '相册信息编辑权限',
  `Theme_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '主题编辑权限',
  `User_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户管理权限',
  `LoginHistory_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '登录日志权限',
  `BackUp_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '备份管理权限',
  `ChartAnalyse_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '报表分析权限',
  `News_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '新闻管理权限',
  `Activity_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '活动管理权限',
  `Contact_PERMIT` tinyint(1) NOT NULL DEFAULT '1' COMMENT '联系管理权限',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`permit_id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`),
  KEY `user_id_3` (`user_id`),
  CONSTRAINT `think_permitssion_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `think_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `think_permitssion` */
 INSERT INTO `think_permitssion` VALUES ('1','1','1','1','1','1','1','1','1','1','1','1','1','1'),('8','1','1','1','1','1','1','1','1','1','1','1','1','2'),('9','1','1','1','1','1','1','1','1','1','1','1','1','22'),('10','1','1','1','1','1','0','0','0','1','1','1','1','23'),('11','1','1','1','1','1','1','1','1','1','1','1','1','24');/* MySQLReback Separation */
 /* 创建表结构 `think_photos`  */
 DROP TABLE IF EXISTS `think_photos`;/* MySQLReback Separation */ CREATE TABLE `think_photos` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img_url` text NOT NULL COMMENT '图片地址',
  `img_title` varchar(32) NOT NULL COMMENT '图片标题',
  `img_cover` tinyint(4) DEFAULT NULL COMMENT '是否景点封面',
  `place` int(11) NOT NULL COMMENT '景点',
  PRIMARY KEY (`img_id`),
  KEY `place` (`place`),
  CONSTRAINT `think_photos_ibfk_1` FOREIGN KEY (`place`) REFERENCES `think_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `think_photos` */
 INSERT INTO `think_photos` VALUES ('27','2014-10-25/544b94d40a8a0.jpg','海泉湾','1','1'),('28','2014-10-25/544b94f24d5e4.jpg','海泉湾',null,'1'),('29','2014-10-25/544b951a76b35.jpg','海泉湾2',null,'1'),('30','2014-10-25/544b952631874.jpg','海泉湾3',null,'1'),('31','2014-10-25/544b953a8ed49.jpg','海泉湾4',null,'1'),('32','2014-10-25/544b9546a4ba5.jpg','海泉湾5',null,'1'),('35','2014-10-25/544b9578bf4e7.jpg','海泉湾8',null,'1'),('36','2014-10-25/544b959b7e9b2.jpg','珠海长隆','1','2'),('37','2014-10-25/544b95d045b9c.jpg','长隆1',null,'2'),('38','2014-10-25/544b95dc9770d.jpg','长隆2',null,'2'),('39','2014-10-25/544b95e4949f6.jpg','长隆3',null,'2'),('40','2014-10-25/544b95eb80f1a.jpg','长隆4',null,'2'),('41','2014-10-25/544b95f581d0e.jpg','长隆5',null,'2'),('42','2014-10-25/544b95fc24a59.jpg','长隆6',null,'2'),('43','2014-10-25/544b960ea7855.jpg','长隆7',null,'2'),('44','2014-10-25/544b961ba9e65.jpg','长隆8',null,'2'),('45','2014-10-25/544b9627d7f7e.jpg','长隆9',null,'2'),('46','2014-10-25/544b96535dc5e.jpg','石景山','1','3'),('47','2014-10-25/544b968eaa48f.jpg','石景山1',null,'3'),('48','2014-10-25/544b96983e439.jpg','石景山2',null,'3'),('49','2014-10-25/544b96a086a54.jpg','石景山3',null,'3'),('50','2014-10-25/544b96a73b0e3.jpg','石景山4',null,'3'),('51','2014-10-25/544b96b051e33.jpg','石景山5',null,'3'),('52','2014-10-25/544b96e019ab7.jpg','海洋乐园','1','4'),('53','2014-10-25/544b9700802c5.jpg','海洋乐园1',null,'4'),('54','2014-10-25/544b9706d5778.jpg','海洋乐园2',null,'4'),('55','2014-10-25/544b970d32783.jpg','海洋乐园3',null,'4'),('56','2014-10-25/544b97177581e.jpg','海洋乐园4',null,'4'),('57','2014-10-25/544b971f663cc.jpg','海洋乐园5',null,'4'),('58','2014-10-25/544b975cca375.jpg','圆明新园','1','5'),('59','2014-10-25/544b97650c63b.jpg','圆明新园1',null,'5'),('60','2014-10-25/544b97762ae6e.jpg','圆明新园2',null,'5'),('61','2014-10-25/544b9782028a3.jpg','圆明新园3',null,'5'),('62','2014-10-25/544b978cad57f.jpg','圆明新园4',null,'5'),('63','2014-10-25/544b979be72c7.jpg','圆明新园5',null,'5'),('64','2014-10-25/544b97a7a75f6.jpg','圆明新园6',null,'5'),('65','2014-10-25/544b97bd980dd.jpg','圆明新园8',null,'5'),('66','2014-11-01/5454ebedebaf0.jpg','房间1',null,'1'),('67','2014-11-01/5454ebf984546.jpg','房间2',null,'1'),('68','2014-11-02/5455d8539f70d.jpg','长隆10',null,'2'),('69','2014-11-02/5455d8606ad57.jpg','长隆11',null,'2');/* MySQLReback Separation */
 /* 创建表结构 `think_resturant`  */
 DROP TABLE IF EXISTS `think_resturant`;/* MySQLReback Separation */ CREATE TABLE `think_resturant` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `res_name` varchar(32) NOT NULL COMMENT '名字',
  `res_time` text NOT NULL COMMENT '营业时间',
  `res_location` text NOT NULL COMMENT '地址',
  `res_feature` text NOT NULL COMMENT '特色',
  `res_notice` text NOT NULL COMMENT '注意事项',
  `res_introduction` text NOT NULL COMMENT '介绍',
  `place` int(11) NOT NULL COMMENT '景点',
  PRIMARY KEY (`res_id`),
  KEY `place` (`place`),
  CONSTRAINT `think_resturant_ibfk_1` FOREIGN KEY (`place`) REFERENCES `think_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `think_resturant` */
 INSERT INTO `think_resturant` VALUES ('1','餐厅1','10:00~24:00','地址','特色','注意','简介...','1'),('2','餐厅','时间','地址','特色','无','简介','2'),('3','餐厅2','时间2','地址','特色2','注意2','简介...','1');/* MySQLReback Separation */
 /* 创建表结构 `think_rooms`  */
 DROP TABLE IF EXISTS `think_rooms`;/* MySQLReback Separation */ CREATE TABLE `think_rooms` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `room_name` varchar(32) NOT NULL COMMENT '房间名称',
  `room_price` int(11) NOT NULL COMMENT '价格',
  `room_more` text NOT NULL COMMENT '信息',
  `room_cover` text COMMENT '封面',
  `room_detail` text COMMENT '具体信息',
  `place` int(11) NOT NULL COMMENT '景点',
  PRIMARY KEY (`room_id`),
  KEY `place` (`place`),
  CONSTRAINT `think_rooms_ibfk_1` FOREIGN KEY (`place`) REFERENCES `think_name` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `think_rooms` */
 INSERT INTO `think_rooms` VALUES ('1','园景房','681','信息','/Uploads/2014-11-01/5454ebedebaf0.jpg','早餐:有 wifi:有 电脑:有 可住:有 面积:100 楼层:99 窗:有 浴缸:有 床:有 ','1'),('2','房间','123','信息','/Uploads/2014-11-02/5455d8606ad57.jpg','早餐:有 wifi:有 电脑:有 可住:有 面积:100 楼层:99 窗:有 浴缸:有 床:有 ','2'),('3','园景大床房','788','信息','/Uploads/2014-11-01/5454ebf984546.jpg','早餐:有 wifi:有 电脑:有 可住:有 面积:12 楼层:22 窗:有 浴缸:有 床:有 ','1');/* MySQLReback Separation */
 /* 创建表结构 `think_user`  */
 DROP TABLE IF EXISTS `think_user`;/* MySQLReback Separation */ CREATE TABLE `think_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `loginname` varchar(32) NOT NULL COMMENT '登录名',
  `usertype` tinyint(4) NOT NULL COMMENT '用户类型',
  `lastlogin` datetime DEFAULT NULL COMMENT '最后登录时间',
  `lastip` varchar(16) DEFAULT NULL COMMENT '最近登录ip',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `think_user` */
 INSERT INTO `think_user` VALUES ('1','ivwsyygyfnhv','c88e71770041a9d72ea1b707787603a6','lwt','0','2014-11-28 23:23:14','127.0.0.1'),('2','flippancy','9b4111f4ffb2f9532b9e8120b7b8e2ea','flippancy','0','2014-12-01 23:52:14','127.0.0.1'),('12','xiaod','baab4517530bbb04d6e13a2318d3c9c3','xiaod','0','2014-11-28 22:16:29','127.0.0.1'),('22','xiaok','db884468559f4c432bf1c1775f3dc9da','xiaok','0',null,null),('23','sj','b5bf27b2555de44e3df2230080db5a1d','sj','1','2014-11-28 23:13:11','127.0.0.1'),('24','usert','0b25840277a713b21263acc3528a57e0','usert','2',null,null);/* MySQLReback Separation */