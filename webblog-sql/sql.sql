-- MySQL dump 10.13  Distrib 5.7.11, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: dbblog
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) NOT NULL COMMENT '文章标题',
  `description` varchar(255) DEFAULT NULL COMMENT '文章描述',
  `author` varchar(50) DEFAULT NULL COMMENT '文章作者',
  `content` longtext COMMENT '文章内容',
  `content_format` longtext COMMENT 'html的content',
  `read_num` int(11) DEFAULT '0' COMMENT '阅读量',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论量',
  `like_num` int(11) DEFAULT '0' COMMENT '点赞量',
  `cover_type` int(11) DEFAULT NULL COMMENT '文章展示类别,1:普通，2：大图片，3：无图片',
  `cover` text COMMENT '封面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐文章',
  `category_id` varchar(50) DEFAULT NULL COMMENT '分类类别存在多级分类，用逗号隔开',
  `publish` tinyint(4) DEFAULT '0' COMMENT '发布状态',
  `top` tinyint(1) DEFAULT '0' COMMENT '是否置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='文章';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `author` varchar(50) DEFAULT NULL COMMENT '作者',
  `category_id` varchar(20) DEFAULT NULL COMMENT '分类类别',
  `recommend` tinyint(1) DEFAULT '0' COMMENT '是否推荐',
  `publisher` varchar(100) DEFAULT NULL COMMENT '出版社',
  `publish_date` date DEFAULT NULL COMMENT '出版日期',
  `page_num` int(11) DEFAULT NULL COMMENT '页数',
  `grade` double DEFAULT NULL COMMENT '评分',
  `description` text COMMENT '简介',
  `catalogue` text COMMENT '原书目录',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `read_num` int(11) DEFAULT '0' COMMENT '阅读量',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论量',
  `like_num` int(11) DEFAULT '0' COMMENT '点赞量',
  `publish` tinyint(1) DEFAULT '0' COMMENT '是否发布',
  `progress` int(11) DEFAULT '0' COMMENT '读书状态',
  `reading` tinyint(1) DEFAULT NULL COMMENT '是否阅读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='图书表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--


--
-- Table structure for table `book_note`
--

DROP TABLE IF EXISTS `book_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) NOT NULL COMMENT '笔记标题',
  `description` varchar(255) DEFAULT NULL COMMENT '笔记描述',
  `author` varchar(50) DEFAULT NULL COMMENT '笔记作者',
  `content` longtext COMMENT '笔记内容',
  `content_format` longtext COMMENT 'html的context',
  `read_num` int(11) DEFAULT '0' COMMENT '阅读量',
  `comment_num` int(11) DEFAULT '0' COMMENT '评论量',
  `like_num` int(11) DEFAULT '0' COMMENT '点赞量',
  `cover` text COMMENT '封面',
  `book_id` int(11) DEFAULT NULL COMMENT '所属书本',
  `chapter` varchar(255) DEFAULT NULL COMMENT '所属章节',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐笔记',
  `category_id` varchar(50) DEFAULT NULL COMMENT '分类类别存在多级分类，用逗号隔开',
  `publish` tinyint(4) DEFAULT '0' COMMENT '发布状态',
  `cover_type` int(11) DEFAULT NULL COMMENT '封面类型',
  `top` tinyint(1) DEFAULT NULL COMMENT '是否置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='笔记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_note`
--


--
-- Table structure for table `book_sense`
--

DROP TABLE IF EXISTS `book_sense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_sense` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `author` varchar(20) DEFAULT NULL COMMENT '作者',
  `content` text COMMENT '内容',
  `book_id` int(11) DEFAULT NULL COMMENT '关联图书Id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='读后感';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_sense`
--

LOCK TABLES `book_sense` WRITE;
/*!40000 ALTER TABLE `book_sense` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_sense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `type` int(11) DEFAULT NULL COMMENT '类型：0文章，1阅读',
  `rank` int(11) DEFAULT NULL COMMENT '级别',
  `parent_id` int(11) DEFAULT '0' COMMENT '父主键',
  PRIMARY KEY (`id`),
  UNIQUE KEY `operation_category_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'本站相关',0,0,-1),(2,'前端技术',0,0,-1),(17,'关系型数据库',0,1,45),(19,'mysql',0,2,17),(21,'非关系型数据库',0,1,45),(31,'LeetCode',1,1,55),(32,'后端技术',0,0,-1),(34,'Java基础',0,1,32),(37,'高并发',0,1,46),(39,'Java基础',1,1,52),(42,'Java进阶',0,1,32),(43,'工具',0,1,32),(44,'框架',0,1,32),(45,'数据库',0,0,-1),(46,'架构设计',0,0,-1),(47,'数据结构与算法',0,0,-1),(48,'Spring',0,2,44),(49,'SpringBoot',0,2,44),(50,'验证码',0,2,43),(51,'前端技术',1,0,-1),(52,'后端技术',1,0,-1),(53,'数据库',1,0,-1),(54,'架构设计',1,0,-1),(55,'数据结构与算法',1,0,-1),(56,'Java集合',0,2,34),(57,'多线程基础',0,2,42),(58,'开发者成长路线',0,0,-1),(59,'Java',0,1,58),(60,'IoT',0,1,58);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(50) DEFAULT NULL COMMENT '链接名称',
  `url` varchar(500) DEFAULT NULL COMMENT '链接地址',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='友链';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'个人站点','https://site.osalien.com','http://oss.osalien.com/dbblog/20200515/ed94c174a32f47b6b01b3a85b150da63.png'),(2,'每日分享','https://news.osalien.com','http://oss.osalien.com/dbblog/20200515/db33dd399ee74175a8bd2ef2b5e620ee.png'),(3,'Java工程师成神之路','https://hollischuang.github.io/toBeTopJavaer','http://oss.osalien.com/dbblog/20200515/d55bd0c8a0d24ea098dcb6da308c40b6.png'),(4,'Spring源码阅读','https://github.com/seaswalker/spring-analysis','http://oss.osalien.com/dbblog/20200515/0b809a4d668b4761bd60df9aa78d049d.png'),(5,'On Java 8','https://lingcoder.github.io/OnJava8','http://oss.osalien.com/dbblog/20200701/01990d1d80864b9390f1da1675197f48.jpg'),(6,'云点网','https://www.yundr.net','http://oss.osalien.com/dbblog/20200810/75e68b3e566f45ed9c82af610641b6a4.png');
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_like`
--

DROP TABLE IF EXISTS `log_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_like` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '点赞类型',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='点赞日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_like`
--

LOCK TABLES `log_like` WRITE;
/*!40000 ALTER TABLE `log_like` DISABLE KEYS */;
INSERT INTO `log_like` VALUES (1,'article','6',0,'172.17.0.1','2020-05-15 07:42:04'),(2,'article','6',0,'172.17.0.1','2020-05-15 07:49:17'),(3,'article','1',0,'172.17.0.1','2020-05-15 08:07:21'),(4,'article','1',0,'172.17.0.1','2020-05-15 08:07:22'),(5,'article','1',0,'172.17.0.1','2020-05-15 08:07:27'),(6,'article','1',0,'172.17.0.1','2020-05-15 08:07:27'),(7,'article','1',0,'172.17.0.1','2020-05-15 08:07:28'),(8,'article','1',0,'172.17.0.1','2020-05-15 08:07:28'),(9,'article','1',0,'172.17.0.1','2020-05-15 08:07:28'),(10,'article','9',0,'172.17.0.1','2020-09-27 09:05:02'),(11,'article','10',0,'172.17.0.1','2020-09-28 06:45:55');
/*!40000 ALTER TABLE `log_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_view`
--

DROP TABLE IF EXISTS `log_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_view` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '浏览类型',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8 COMMENT='阅读日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_view`
--

LOCK TABLES `log_view` WRITE;
/*!40000 ALTER TABLE `log_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oss_resource`
--

DROP TABLE IF EXISTS `oss_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oss_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 COMMENT='云存储资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oss_resource`
--

LOCK TABLES `oss_resource` WRITE;
/*!40000 ALTER TABLE `oss_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `oss_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `link_id` int(11) DEFAULT NULL COMMENT '推荐的文章Id',
  `type` int(11) DEFAULT NULL COMMENT '推荐类型',
  `order_num` int(11) DEFAULT '0' COMMENT '顺序',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `top` tinyint(1) DEFAULT '0' COMMENT '置顶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='推荐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` tinytext,
  `url` varchar(200) DEFAULT NULL,
  `perms` varchar(500) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `icon` tinytext,
  `order_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (5,1,'SQL监控','https://osb.osalien.com/dbblog/druid/sql.html',NULL,1,'sql',5),(1,0,'系统管理',NULL,NULL,0,'config',3),(2,1,'管理员列表','sys/user',NULL,1,'admin',1),(3,1,'角色管理','sys/role',NULL,1,'role',2),(4,1,'菜单管理','sys/menu',NULL,1,'menu',3),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:list',2,NULL,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:list',2,NULL,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0),(30,0,'博文管理',NULL,NULL,0,'article',0),(31,30,'新增博文','article/article-add-or-update','article:save,article:update',1,'add',0),(32,30,'博文列表','article/article',NULL,1,'list',0),(33,32,'删除',NULL,'article:delete',2,NULL,0),(34,32,'查看',NULL,'article:list',2,NULL,0),(38,43,'分类管理','operation/category',NULL,1,'category',6),(39,38,'查看',NULL,'operation:category:list,operation:category:info',2,NULL,6),(40,38,'新增',NULL,'operation:category:save',2,NULL,6),(41,38,'修改',NULL,'operation:category:update',2,NULL,6),(42,38,'删除',NULL,'operation:category:delete',2,NULL,6),(43,0,'运营管理',NULL,NULL,0,'operation',2),(45,1,'系统参数','sys/param',NULL,1,'param',4),(46,45,'查看',NULL,'sys:param:list,sys:param:info',2,NULL,6),(47,45,'新增',NULL,'sys:param:save',2,NULL,6),(48,45,'修改',NULL,'sys:param:update',2,NULL,6),(49,45,'删除',NULL,'sys:param:delete',2,NULL,6),(50,43,'标签管理','operation/tag',NULL,1,'tag',6),(51,50,'查看',NULL,'operation:tag:list,operation:tag:info',2,NULL,6),(52,50,'新增',NULL,'operation:tag:save',2,NULL,6),(53,50,'修改',NULL,'operation:tag:update',2,NULL,6),(54,50,'删除',NULL,'operation:tag:delete',2,NULL,6),(55,60,'评论管理','https://valine.osalien.com',NULL,1,'comment',6),(56,55,'查看',NULL,'comment:list,comment:info',2,NULL,6),(57,55,'新增',NULL,'comment:save',2,NULL,6),(58,55,'修改',NULL,'comment:update',2,NULL,6),(59,55,'删除',NULL,'comment:delete',2,NULL,6),(60,0,'评论管理',NULL,NULL,0,'comment',5),(61,66,'图书管理','book/book',NULL,1,'list',3),(62,61,'查看',NULL,'book:list,book:info',2,NULL,6),(63,61,'新增',NULL,'book:save',2,NULL,6),(64,61,'修改',NULL,'book:update',2,NULL,6),(65,61,'删除',NULL,'book:delete',2,NULL,6),(66,0,'阅读管理',NULL,NULL,0,'read',1),(67,66,'新增图书','book/book-add-or-update','',1,'add',1),(68,66,'笔记管理','book/note',NULL,1,'list',2),(69,68,'查看',NULL,'book:note:list,book:note:info',2,NULL,6),(70,68,'新增',NULL,'book:note:save',2,NULL,6),(71,68,'修改',NULL,'book:note:update',2,NULL,6),(72,68,'删除',NULL,'book:note:delete',2,NULL,6),(73,66,'新增笔记','book/note-add-or-update','',1,'add',0),(74,43,'友链管理','operation/link',NULL,1,'link',6),(75,74,'查看',NULL,'operation:link:list,operation:link:info',2,NULL,6),(76,74,'新增',NULL,'operation:link:save',2,NULL,6),(77,74,'修改',NULL,'operation:link:update',2,NULL,6),(78,74,'删除',NULL,'operation:link:delete',2,NULL,6),(79,43,'推荐管理','operation/recommend',NULL,1,'recommend',6),(80,79,'查看',NULL,'operation:recommend:list,operation:recommend:info',2,NULL,6),(81,79,'新增',NULL,'operation:recommend:save',2,NULL,6),(82,79,'修改',NULL,'operation:recommend:update',2,NULL,6),(83,79,'删除',NULL,'operation:recommend:delete',2,NULL,6);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_param`
--

DROP TABLE IF EXISTS `sys_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_param` (
  `id` int(11) DEFAULT NULL,
  `par_key` int(11) DEFAULT NULL,
  `par_value` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_param`
--

LOCK TABLES `sys_param` WRITE;
/*!40000 ALTER TABLE `sys_param` DISABLE KEYS */;
INSERT INTO `sys_param` VALUES (2,0,'一级','/operation-category','CATEGORY_RANK'),(3,1,'二级','/operation-category','CATEGORY_RANK'),(4,2,'三级','/operation-category','CATEGORY_RANK'),(7,0,'小图片','/article-addOrUpdate','ARTICLE_COVER_TYPE'),(8,1,'大图片','/article-addOrUpdate','ARTICLE_COVER_TYPE'),(9,2,'无图片','/article-addOrUpdate','ARTICLE_COVER_TYPE'),(10,0,'文章',NULL,'MODULE_TYPE'),(11,1,'图书',NULL,'MODULE_TYPE'),(12,2,'笔记',NULL,'MODULE_TYPE');
/*!40000 ALTER TABLE `sys_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` int(11) DEFAULT NULL,
  `username` tinytext,
  `password` varchar(255) DEFAULT NULL,
  `email` tinytext,
  `salt` tinytext,
  `create_user_id` tinytext,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','72d62f4fe31281677eb30aac311049fe5a3026924c3ad91f27b1ce1bd20c5a2d','me@osalien.com','YzcmCZNvbXocrsz9dm8e','1','2020-05-15 08:06:29',1);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '标签名字',
  `type` int(11) DEFAULT NULL COMMENT '所属类别：0文章，1类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='标签';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'本站相关',0),(7,'Java',0),(11,'数据库',0),(12,'关系型数据库',0),(13,'mysql',0),(14,'开源框架',0),(15,'源码解析',0),(16,'Spring',0),(17,'LeetCode',2),(18,'初级算法',2),(19,'算法',2),(20,'数组',2),(23,'LeetCode',1),(24,'锁',0),(25,'高并发',0),(26,'事务',0),(27,'Java Web',0),(28,'验证码',0),(29,'Java',1),(30,'故障排查',0),(31,'Java集合',0),(32,'多线程',0),(33,'开发者成长路线',0);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_link`
--

DROP TABLE IF EXISTS `tag_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tag_id` int(11) DEFAULT NULL COMMENT '标签Id',
  `link_id` int(11) DEFAULT NULL COMMENT '关联Id',
  `type` int(11) DEFAULT NULL COMMENT '所属类别：0文章，1阅读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8 COMMENT='标签多对多维护表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_link`
--

LOCK TABLES `tag_link` WRITE;
/*!40000 ALTER TABLE `tag_link` DISABLE KEYS */;
INSERT INTO `tag_link` VALUES (251,7,11,0),(252,27,11,0),(253,28,11,0),(254,7,10,0),(255,11,10,0),(256,24,10,0),(257,25,10,0),(258,26,10,0),(260,11,7,0),(261,12,7,0),(262,13,7,0),(263,14,8,0),(264,15,8,0),(265,16,8,0),(267,29,2,1),(268,23,1,1),(277,17,2,2),(278,19,2,2),(279,18,2,2),(280,20,2,2),(281,17,1,2),(282,19,1,2),(283,18,1,2),(284,20,1,2),(285,7,9,0),(286,30,9,0),(295,7,12,0),(296,30,12,0),(303,7,23,0),(304,32,23,0),(305,7,24,0),(306,32,24,0),(307,7,25,0),(308,32,25,0),(309,7,26,0),(310,32,26,0),(311,7,27,0),(312,32,27,0),(313,7,28,0),(314,32,28,0),(315,7,22,0),(316,32,22,0),(321,7,16,0),(322,31,16,0),(329,7,13,0),(330,31,13,0),(331,7,14,0),(332,31,14,0),(333,7,15,0),(334,31,15,0),(335,7,17,0),(336,31,17,0),(337,7,18,0),(338,31,18,0),(339,7,19,0),(340,31,19,0),(341,7,20,0),(342,32,20,0),(343,7,21,0),(344,32,21,0),(351,7,29,0),(352,33,29,0),(355,1,1,0),(356,7,30,0),(357,33,30,0);
/*!40000 ALTER TABLE `tag_link` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-25  0:00:05
