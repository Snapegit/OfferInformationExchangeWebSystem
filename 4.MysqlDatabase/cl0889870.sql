-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl0889870
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl0889870`
--

/*!40000 DROP DATABASE IF EXISTS `cl0889870`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl0889870` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl0889870`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinzibaoliao`
--

DROP TABLE IF EXISTS `discussxinzibaoliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinzibaoliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='薪资爆料评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinzibaoliao`
--

LOCK TABLES `discussxinzibaoliao` WRITE;
/*!40000 ALTER TABLE `discussxinzibaoliao` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussxinzibaoliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhaopinxinxi`
--

DROP TABLE IF EXISTS `discusszhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710143352296 DEFAULT CHARSET=utf8 COMMENT='招聘信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhaopinxinxi`
--

LOCK TABLES `discusszhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discusszhaopinxinxi` DISABLE KEYS */;
INSERT INTO `discusszhaopinxinxi` VALUES (1710143352295,'2024-03-11 07:49:11',51,1710143277336,'file/1710143268207.png','111','11111111111111111111111',NULL);
/*!40000 ALTER TABLE `discusszhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongzuorenyuan`
--

DROP TABLE IF EXISTS `gongzuorenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongzuorenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `suoshubumen` varchar(200) DEFAULT NULL COMMENT '所属部门',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710143439120 DEFAULT CHARSET=utf8 COMMENT='工作人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongzuorenyuan`
--

LOCK TABLES `gongzuorenyuan` WRITE;
/*!40000 ALTER TABLE `gongzuorenyuan` DISABLE KEYS */;
INSERT INTO `gongzuorenyuan` VALUES (61,'2024-03-05 09:06:41','账号1','123456','姓名1','file/gongzuorenyuanTouxiang1.jpg','男','公司名称1','所属部门1','19819881111','441622200101010001'),(62,'2024-03-05 09:06:41','账号2','123456','姓名2','file/gongzuorenyuanTouxiang2.jpg','男','公司名称2','所属部门2','19819881112','441622200202020002'),(63,'2024-03-05 09:06:41','账号3','123456','姓名3','file/gongzuorenyuanTouxiang3.jpg','男','公司名称3','所属部门3','19819881113','441622200303030003'),(64,'2024-03-05 09:06:41','账号4','123456','姓名4','file/gongzuorenyuanTouxiang4.jpg','男','公司名称4','所属部门4','19819881114','441622200404040004'),(65,'2024-03-05 09:06:41','账号5','123456','姓名5','file/gongzuorenyuanTouxiang5.jpg','男','公司名称5','所属部门5','19819881115','441622200505050005'),(66,'2024-03-05 09:06:41','账号6','123456','姓名6','file/gongzuorenyuanTouxiang6.jpg','男','公司名称6','所属部门6','19819881116','441622200606060006'),(1710143439119,'2024-03-11 07:50:39','111','111','111','file/1710143433130.png','男','111','111',NULL,NULL);
/*!40000 ALTER TABLE `gongzuorenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-05 09:06:41','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"管理员\",\"menuJump\":\"列表\",\"tableName\":\"users\"},{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"工作人员\",\"menuJump\":\"列表\",\"tableName\":\"gongzuorenyuan\"}],\"fontClass\":\"icon-common17\",\"menu\":\"用户管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"审核\",\"查看评论\",\"删除\"],\"menu\":\"薪资爆料\",\"menuJump\":\"列表\",\"tableName\":\"xinzibaoliao\"},{\"appFrontIcon\":\"cuIcon-circle\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"行业类型\",\"menuJump\":\"列表\",\"tableName\":\"xingyeleixing\"}],\"fontClass\":\"icon-common23\",\"menu\":\"薪资爆料管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"},{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"招聘批次\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinpici\"}],\"fontClass\":\"icon-common17\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common46\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common5\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xedae;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common1\",\"menu\":\"薪资爆料\",\"menuJump\":\"列表\",\"tableName\":\"xinzibaoliao\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"薪资爆料\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common2\",\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\",\"unicode\":\"&#xeda4;\"}],\"fontClass\":\"icon-common2\",\"menu\":\"招聘信息\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common7\",\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xedb4;\"}],\"fontClass\":\"icon-common7\",\"menu\":\"新闻资讯\",\"unicode\":\"&#xedb4;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"新增\",\"修改\",\"删除\",\"查看评论\",\"查看\"],\"menu\":\"薪资爆料\",\"menuJump\":\"列表\",\"tableName\":\"xinzibaoliao\"}],\"fontClass\":\"icon-common23\",\"menu\":\"薪资爆料管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"查看评论\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common25\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xee09;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common1\",\"menu\":\"薪资爆料\",\"menuJump\":\"列表\",\"tableName\":\"xinzibaoliao\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"薪资爆料\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common2\",\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\",\"unicode\":\"&#xeda4;\"}],\"fontClass\":\"icon-common2\",\"menu\":\"招聘信息\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common7\",\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xedb4;\"}],\"fontClass\":\"icon-common7\",\"menu\":\"新闻资讯\",\"unicode\":\"&#xedb4;\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"审核\",\"查看评论\",\"修改\",\"删除\"],\"menu\":\"薪资爆料\",\"menuJump\":\"列表\",\"tableName\":\"xinzibaoliao\"}],\"fontClass\":\"icon-common23\",\"menu\":\"薪资爆料管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"fontClass\":\"icon-common17\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xedfe;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common46\",\"menu\":\"新闻资讯管理\",\"unicode\":\"&#xef3d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common25\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xee09;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common1\",\"menu\":\"薪资爆料\",\"menuJump\":\"列表\",\"tableName\":\"xinzibaoliao\",\"unicode\":\"&#xeda3;\"}],\"fontClass\":\"icon-common1\",\"menu\":\"薪资爆料\",\"unicode\":\"&#xeda3;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-form\",\"buttons\":[\"查看\",\"查看评论\"],\"fontClass\":\"icon-common2\",\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\",\"unicode\":\"&#xeda4;\"}],\"fontClass\":\"icon-common2\",\"menu\":\"招聘信息\",\"unicode\":\"&#xeda4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common7\",\"menu\":\"新闻资讯\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xedb4;\"}],\"fontClass\":\"icon-common7\",\"menu\":\"新闻资讯\",\"unicode\":\"&#xedb4;\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"工作人员\",\"tableName\":\"gongzuorenyuan\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2024-03-05 09:06:41','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(82,'2024-03-05 09:06:41','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(83,'2024-03-05 09:06:41','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(84,'2024-03-05 09:06:41','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(85,'2024-03-05 09:06:41','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(86,'2024-03-05 09:06:41','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710143380362 DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1710143295600,'2024-03-11 07:48:14',51,'zhaopinxinxi','公司名称1','file/zhaopinxinxiFengmian1.jpg','21',NULL,NULL,1710143277336),(1710143380361,'2024-03-11 07:49:39',41,'xinzibaoliao','爆料公司名称1','file/xinzibaoliaoTupian1.jpg','21',NULL,NULL,1710143277336);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1710143277336,'111','yonghu','用户','70qj21bu9vtpm6vk0bs2lg0kd0djrimd','2024-03-11 07:48:03','2024-03-11 08:48:04'),(2,1710143439119,'111','gongzuorenyuan','管理员','thriruc4hnj2tdzz1dtij9aumb5c9jna','2024-03-11 07:50:49','2024-03-11 08:50:49'),(3,1,'admin','users','管理员','xfgmv0q7r55vjzf7ipu3riwk1ynyuopi','2024-03-11 07:54:22','2024-03-11 08:54:22');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-05 09:06:41','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xingyeleixing`
--

DROP TABLE IF EXISTS `xingyeleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xingyeleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingyeleixing` varchar(200) DEFAULT NULL COMMENT '行业类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='行业类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xingyeleixing`
--

LOCK TABLES `xingyeleixing` WRITE;
/*!40000 ALTER TABLE `xingyeleixing` DISABLE KEYS */;
INSERT INTO `xingyeleixing` VALUES (71,'2024-03-05 09:06:41','行业类型1'),(72,'2024-03-05 09:06:41','行业类型2'),(73,'2024-03-05 09:06:41','行业类型3'),(74,'2024-03-05 09:06:41','行业类型4'),(75,'2024-03-05 09:06:41','行业类型5'),(76,'2024-03-05 09:06:41','行业类型6');
/*!40000 ALTER TABLE `xingyeleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinzibaoliao`
--

DROP TABLE IF EXISTS `xinzibaoliao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinzibaoliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoliaogongsimingcheng` varchar(200) DEFAULT NULL COMMENT '爆料公司名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '公司账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '公司负责人',
  `tupian` longtext COMMENT '图片',
  `gongsigangwei` varchar(200) DEFAULT NULL COMMENT '公司岗位',
  `xingyeleixing` varchar(200) DEFAULT NULL COMMENT '行业类型',
  `suozaichengshi` varchar(200) DEFAULT NULL COMMENT '所在城市',
  `xinzigoucheng` varchar(200) DEFAULT NULL COMMENT '薪资构成',
  `nianxin` varchar(200) DEFAULT NULL COMMENT '年薪/万',
  `zhaopinleibie` varchar(200) DEFAULT NULL COMMENT '招聘类别',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `xingye` varchar(200) DEFAULT NULL COMMENT '行业',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `baoliaoxiangqing` longtext COMMENT '爆料详情',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1710143576705 DEFAULT CHARSET=utf8 COMMENT='薪资爆料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinzibaoliao`
--

LOCK TABLES `xinzibaoliao` WRITE;
/*!40000 ALTER TABLE `xinzibaoliao` DISABLE KEYS */;
INSERT INTO `xinzibaoliao` VALUES (41,'2024-03-05 09:06:41','爆料公司名称1','公司账号1','公司负责人1','file/xinzibaoliaoTupian1.jpg,file/xinzibaoliaoTupian2.jpg,file/xinzibaoliaoTupian3.jpg','公司岗位1','行业类型1','所在城市1','薪资构成1','年薪/万1','实习生','学历要求1','行业1','备注1','是','','爆料详情1','用户账号1','用户姓名1',1,2,1,'2024-03-11 15:49:33'),(42,'2024-03-05 09:06:41','爆料公司名称2','公司账号2','公司负责人2','file/xinzibaoliaoTupian2.jpg,file/xinzibaoliaoTupian3.jpg,file/xinzibaoliaoTupian4.jpg','公司岗位2','行业类型2','所在城市2','薪资构成2','年薪/万2','实习生','学历要求2','行业2','备注2','是','','爆料详情2','用户账号2','用户姓名2',2,2,2,'2024-03-11 15:48:49'),(43,'2024-03-05 09:06:41','爆料公司名称3','公司账号3','公司负责人3','file/xinzibaoliaoTupian3.jpg,file/xinzibaoliaoTupian4.jpg,file/xinzibaoliaoTupian5.jpg','公司岗位3','行业类型3','所在城市3','薪资构成3','年薪/万3','实习生','学历要求3','行业3','备注3','是','','爆料详情3','用户账号3','用户姓名3',3,3,3,'2024-03-05 17:06:41'),(44,'2024-03-05 09:06:41','爆料公司名称4','公司账号4','公司负责人4','file/xinzibaoliaoTupian4.jpg,file/xinzibaoliaoTupian5.jpg,file/xinzibaoliaoTupian6.jpg','公司岗位4','行业类型4','所在城市4','薪资构成4','年薪/万4','实习生','学历要求4','行业4','备注4','是','','爆料详情4','用户账号4','用户姓名4',4,4,4,'2024-03-05 17:06:41'),(45,'2024-03-05 09:06:41','爆料公司名称5','公司账号5','公司负责人5','file/xinzibaoliaoTupian5.jpg,file/xinzibaoliaoTupian6.jpg,file/xinzibaoliaoTupian7.jpg','公司岗位5','行业类型5','所在城市5','薪资构成5','年薪/万5','实习生','学历要求5','行业5','备注5','是','','爆料详情5','用户账号5','用户姓名5',5,5,5,'2024-03-05 17:06:41'),(46,'2024-03-05 09:06:41','爆料公司名称6','公司账号6','公司负责人6','file/xinzibaoliaoTupian6.jpg,file/xinzibaoliaoTupian7.jpg,file/xinzibaoliaoTupian8.jpg','公司岗位6','行业类型6','所在城市6','薪资构成6','年薪/万6','实习生','学历要求6','行业6','备注6','是','','爆料详情6','用户账号6','用户姓名6',6,6,6,'2024-03-05 17:06:41'),(1710143576704,'2024-03-11 07:52:56','111','111','111','file/1710143545517.png','运营','行业类型1','北京','','','正式工','','','','是','222','1111111111111111111111','111','111',0,0,0,NULL);
/*!40000 ALTER TABLE `xinzibaoliao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  `shenfenzhenghaoma` varchar(200) DEFAULT NULL COMMENT '身份证号码',
  `xingyeleixing` varchar(200) DEFAULT NULL COMMENT '从事行业',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1710143277337 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-05 09:06:41','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','441622200101010001','从事行业1'),(32,'2024-03-05 09:06:41','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','441622200202020002','从事行业2'),(33,'2024-03-05 09:06:41','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','441622200303030003','从事行业3'),(34,'2024-03-05 09:06:41','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','441622200404040004','从事行业4'),(35,'2024-03-05 09:06:41','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','441622200505050005','从事行业5'),(36,'2024-03-05 09:06:41','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','441622200606060006','从事行业6'),(1710143277336,'2024-03-11 07:47:57','111','111','111','file/1710143268207.png','男','18524512544',NULL,'行业类型1');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinpici`
--

DROP TABLE IF EXISTS `zhaopinpici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinpici` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinpici` varchar(200) DEFAULT NULL COMMENT '招聘批次',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='招聘批次';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinpici`
--

LOCK TABLES `zhaopinpici` WRITE;
/*!40000 ALTER TABLE `zhaopinpici` DISABLE KEYS */;
INSERT INTO `zhaopinpici` VALUES (91,'2024-03-05 09:06:41','招聘批次1'),(92,'2024-03-05 09:06:41','招聘批次2'),(93,'2024-03-05 09:06:41','招聘批次3'),(94,'2024-03-05 09:06:41','招聘批次4'),(95,'2024-03-05 09:06:41','招聘批次5'),(96,'2024-03-05 09:06:41','招聘批次6');
/*!40000 ALTER TABLE `zhaopinpici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `fengmian` longtext COMMENT '封面',
  `gongzuogangwei` varchar(200) DEFAULT NULL COMMENT '工作岗位',
  `xingyeleixing` varchar(200) DEFAULT NULL COMMENT '行业类型',
  `gongzuochengshi` varchar(200) DEFAULT NULL COMMENT '工作城市',
  `zhaopinpici` varchar(200) DEFAULT NULL COMMENT '招聘批次',
  `zhaopinshijian` date DEFAULT NULL COMMENT '招聘时间',
  `zhaopinjieshu` varchar(200) DEFAULT NULL COMMENT '招聘届数',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `zhuanyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '专业要求',
  `gangweiyaoqiu` longtext COMMENT '岗位要求',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT NULL COMMENT '赞',
  `crazilynum` int(11) DEFAULT NULL COMMENT '踩',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (51,'2024-03-05 09:06:41','公司名称1','file/zhaopinxinxiFengmian1.jpg,file/zhaopinxinxiFengmian2.jpg,file/zhaopinxinxiFengmian3.jpg','工作岗位1','行业类型1','工作城市1','招聘批次1','2024-03-05','招聘届数1','学历要求1','专业要求1','岗位要求1','19819881111',2,1,1),(52,'2024-03-05 09:06:41','公司名称2','file/zhaopinxinxiFengmian2.jpg,file/zhaopinxinxiFengmian3.jpg,file/zhaopinxinxiFengmian4.jpg','工作岗位2','行业类型2','工作城市2','招聘批次2','2024-03-05','招聘届数2','学历要求2','专业要求2','岗位要求2','19819881112',2,2,2),(53,'2024-03-05 09:06:41','公司名称3','file/zhaopinxinxiFengmian3.jpg,file/zhaopinxinxiFengmian4.jpg,file/zhaopinxinxiFengmian5.jpg','工作岗位3','行业类型3','工作城市3','招聘批次3','2024-03-05','招聘届数3','学历要求3','专业要求3','岗位要求3','19819881113',3,3,3),(54,'2024-03-05 09:06:41','公司名称4','file/zhaopinxinxiFengmian4.jpg,file/zhaopinxinxiFengmian5.jpg,file/zhaopinxinxiFengmian6.jpg','工作岗位4','行业类型4','工作城市4','招聘批次4','2024-03-05','招聘届数4','学历要求4','专业要求4','岗位要求4','19819881114',4,4,4),(55,'2024-03-05 09:06:41','公司名称5','file/zhaopinxinxiFengmian5.jpg,file/zhaopinxinxiFengmian6.jpg,file/zhaopinxinxiFengmian7.jpg','工作岗位5','行业类型5','工作城市5','招聘批次5','2024-03-05','招聘届数5','学历要求5','专业要求5','岗位要求5','19819881115',5,5,5),(56,'2024-03-05 09:06:41','公司名称6','file/zhaopinxinxiFengmian6.jpg,file/zhaopinxinxiFengmian7.jpg,file/zhaopinxinxiFengmian8.jpg','工作岗位6','行业类型6','工作城市6','招聘批次6','2024-03-05','招聘届数6','学历要求6','专业要求6','岗位要求6','19819881116',6,6,6);
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-11 17:55:05
