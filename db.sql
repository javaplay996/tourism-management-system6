/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lvyouguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lvyouguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lvyouguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/lvyouguanlixitong/upload/1619164512873.jpg'),(2,'picture2','http://localhost:8080/lvyouguanlixitong/upload/1619164520834.jpg'),(3,'picture3','http://localhost:8080/lvyouguanlixitong/upload/1619164529540.jpg'),(6,'homepage','http://localhost:8080/lvyouguanlixitong/upload/1619164543863.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-23 15:21:44'),(2,'sex_types','性别',2,'女',NULL,'2021-04-23 15:21:44'),(3,'jingdian_types','景点类型名称',3,'公园',NULL,'2021-04-23 15:21:45'),(4,'jingdian_types','景点类型名称',2,'山脉',NULL,'2021-04-23 15:21:45'),(5,'jingdian_types','景点类型名称',1,'其他',NULL,'2021-04-23 15:21:45'),(6,'jingdian_dengji_types','景点等级名称',1,'五A景点',NULL,'2021-04-23 15:21:45'),(7,'jingdian_dengji_types','景点等级名称',2,'国家景点',NULL,'2021-04-23 15:21:45'),(8,'jingdian_dengji_types','景点等级名称',3,'市级景点',NULL,'2021-04-23 15:21:45'),(9,'jingdian_dengji_types','景点等级名称',4,'其他',NULL,'2021-04-23 15:21:45'),(10,'luxian_types','路线类型名称',1,'穷游路线',NULL,'2021-04-23 15:21:45'),(11,'luxian_types','路线类型名称',2,'最短路线',NULL,'2021-04-23 15:21:45'),(12,'luxian_types','路线类型名称',3,'其他',NULL,'2021-04-23 15:21:45'),(13,'taocana_types','套餐类型名称',1,'套餐1',NULL,'2021-04-23 15:21:45'),(14,'taocana_types','套餐类型名称',2,'套餐2',NULL,'2021-04-23 15:21:45'),(15,'taocana_types','套餐类型名称',3,'套餐3',NULL,'2021-04-23 15:21:45'),(16,'news_types','新闻类型名称',1,'日常新闻',NULL,'2021-04-23 15:21:45'),(17,'news_types','新闻类型名称',2,'紧急新闻',NULL,'2021-04-23 15:21:45');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名  Search111 ',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型  Search111 ',
  `jingdian_dengji_types` int(11) DEFAULT NULL COMMENT '景点等级  Search111 ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点缩略图',
  `jingdian_content` text COMMENT '景点详情',
  `jingdian_new_money` int(11) DEFAULT NULL COMMENT '参考门票价格',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_types`,`jingdian_dengji_types`,`jingdian_photo`,`jingdian_content`,`jingdian_new_money`,`create_time`) values (1,'景点1',2,3,'http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619163753040.jpg','景点详情1\r\n',100,'2021-04-23 15:42:40'),(2,'景点2',3,1,'http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619163771791.jpg','景点详情2\r\n',200,'2021-04-23 15:42:55'),(3,'景点3',1,2,'http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619166412841.jpg','景点详情3\r\n',300,'2021-04-23 16:27:01');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,2,1,'2021-04-23 16:39:23','2021-04-23 16:39:23');

/*Table structure for table `luxian` */

DROP TABLE IF EXISTS `luxian`;

CREATE TABLE `luxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_name` varchar(200) DEFAULT NULL COMMENT '路线名  Search111 ',
  `luxian_photo` varchar(200) DEFAULT NULL COMMENT '路线照片',
  `luxian_content` text COMMENT '路线详情',
  `luxian_types` int(11) DEFAULT NULL COMMENT '路线类型  Search111 ',
  `luxian_jingdian` varchar(200) DEFAULT NULL COMMENT '路线经过景点',
  `luxian_new_money` int(11) DEFAULT NULL COMMENT '路线大概总花费',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='路线';

/*Data for the table `luxian` */

insert  into `luxian`(`id`,`luxian_name`,`luxian_photo`,`luxian_content`,`luxian_types`,`luxian_jingdian`,`luxian_new_money`,`create_time`) values (1,'路线1','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619164191531.jpg','路线详情1\r\n',2,'路线经过景点1',100,'2021-04-23 15:50:05'),(2,'路线2','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619164211929.jpg','路线详情2\r\n',3,'路线经过景点2',200,'2021-04-23 15:50:23'),(3,'路线3','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619166435178.jpg','路线详情3\r\n',1,'路线经过景点3',300,'2021-04-23 16:27:27');

/*Table structure for table `luxian_collection` */

DROP TABLE IF EXISTS `luxian_collection`;

CREATE TABLE `luxian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `luxian_id` int(11) DEFAULT NULL COMMENT '路线id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='路线收藏';

/*Data for the table `luxian_collection` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻名称1',2,'http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619164247132.jpg','2021-04-23 15:50:50','新闻详情1\r\n','2021-04-23 15:50:50'),(2,'新闻名称2',1,'http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619164259882.jpg','2021-04-23 15:51:02','新闻详情2\r\n','2021-04-23 15:51:02');

/*Table structure for table `taocana` */

DROP TABLE IF EXISTS `taocana`;

CREATE TABLE `taocana` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `taocana_name` varchar(200) DEFAULT NULL COMMENT '套餐名  Search111 ',
  `taocana_types` int(11) DEFAULT NULL COMMENT '套餐类型  Search111 ',
  `taocana_money` decimal(10,4) DEFAULT NULL COMMENT '套餐价格  Search111 ',
  `taocana_photo` varchar(200) DEFAULT NULL COMMENT '套餐照片',
  `taocana_content` text COMMENT '套餐详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '套餐发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='套餐';

/*Data for the table `taocana` */

insert  into `taocana`(`id`,`taocana_name`,`taocana_types`,`taocana_money`,`taocana_photo`,`taocana_content`,`insert_time`,`create_time`) values (1,'套餐1',1,'100.0000','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619163662107.jpg','套餐详情1\r\n','2021-04-23 15:41:05','2021-04-23 15:41:05'),(2,'套餐2',2,'200.0000','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619163675083.jpg','套餐详情2\r\n','2021-04-23 15:41:17','2021-04-23 15:41:17'),(3,'套餐3',3,'300.0000','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619166389656.jpg','套餐详情3\r\n','2021-04-23 16:26:32','2021-04-23 16:26:32');

/*Table structure for table `taocana_liuyan` */

DROP TABLE IF EXISTS `taocana_liuyan`;

CREATE TABLE `taocana_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `taocana_id` int(11) DEFAULT NULL COMMENT '套餐id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `taocana_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='套餐留言';

/*Data for the table `taocana_liuyan` */

insert  into `taocana_liuyan`(`id`,`taocana_id`,`yonghu_id`,`taocana_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,1,1,'111',NULL,'2021-04-23 16:39:48','2021-04-23 16:39:48');

/*Table structure for table `taocana_order` */

DROP TABLE IF EXISTS `taocana_order`;

CREATE TABLE `taocana_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `taocana_id` int(11) DEFAULT NULL COMMENT '套餐id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `order_number` int(11) DEFAULT NULL COMMENT '预定数量',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='套餐订单';

/*Data for the table `taocana_order` */

insert  into `taocana_order`(`id`,`taocana_id`,`yonghu_id`,`order_number`,`insert_time`,`create_time`) values (1,1,1,11,'2021-04-23 16:13:02','2021-04-23 16:13:02'),(2,2,1,1111,'2021-04-23 16:39:17','2021-04-23 16:39:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','c7i8mgmzzp8qoa2gt2fry8tdriemy9rd','2021-04-23 15:17:28','2021-04-23 17:40:23'),(2,1,'111','yonghu','用户','owumloz0prbsodnj75f70u3eyxsdagxc','2021-04-23 15:19:30','2021-04-23 17:40:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011064871','17789944561','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619163579773.jpg','2021-04-23 15:39:40'),(2,'222','123456','用户2',2,'410882200011064872','17789944562','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619163597004.jpg','2021-04-23 15:39:58'),(3,'333','123456','用户3',1,'410882200011064873','17789944563','http://localhost:8080/lvyouguanlixitong/file/download?fileName=1619166300235.jpg','2021-04-23 16:25:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
