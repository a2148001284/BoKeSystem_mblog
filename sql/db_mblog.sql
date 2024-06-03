-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: db_mblog
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `flyway_schema_history`
--

DROP TABLE IF EXISTS `flyway_schema_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `script` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flyway_schema_history`
--

LOCK TABLES `flyway_schema_history` WRITE;
/*!40000 ALTER TABLE `flyway_schema_history` DISABLE KEYS */;
INSERT INTO `flyway_schema_history` VALUES (1,'3.2','update','SQL','V3.2__update.sql',-53734780,'root','2023-05-24 01:51:53',27,1);
/*!40000 ALTER TABLE `flyway_schema_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_channel`
--

DROP TABLE IF EXISTS `mto_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `status` int(5) NOT NULL,
  `thumbnail` varchar(128) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_channel`
--

LOCK TABLES `mto_channel` WRITE;
/*!40000 ALTER TABLE `mto_channel` DISABLE KEYS */;
INSERT INTO `mto_channel` VALUES (1,'banner','banner',1,'/storage/thumbnails/_signature/QHEKH8OMQEOH7S2Q58JSO24R.JPG',3),(2,'blog','鍗氬',0,'',2),(3,'jotting','闅忕瑪',0,'',1),(4,'share','鍒嗕韩',0,'',0);
/*!40000 ALTER TABLE `mto_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_comment`
--

DROP TABLE IF EXISTS `mto_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IK_POST_ID` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_comment`
--

LOCK TABLES `mto_comment` WRITE;
/*!40000 ALTER TABLE `mto_comment` DISABLE KEYS */;
INSERT INTO `mto_comment` VALUES (1,1,'哈哈哈、\n','2023-05-24 09:57:07',0,1,0);
/*!40000 ALTER TABLE `mto_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_favorite`
--

DROP TABLE IF EXISTS `mto_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_favorite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IK_USER_ID` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_favorite`
--

LOCK TABLES `mto_favorite` WRITE;
/*!40000 ALTER TABLE `mto_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `mto_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_message`
--

DROP TABLE IF EXISTS `mto_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `event` int(11) NOT NULL,
  `from_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_message`
--

LOCK TABLES `mto_message` WRITE;
/*!40000 ALTER TABLE `mto_message` DISABLE KEYS */;
INSERT INTO `mto_message` VALUES (1,'2023-05-24 09:57:07',3,1,1,1,1);
/*!40000 ALTER TABLE `mto_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_options`
--

DROP TABLE IF EXISTS `mto_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_options` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) DEFAULT NULL,
  `type` int(5) DEFAULT '0',
  `value` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_options`
--

LOCK TABLES `mto_options` WRITE;
/*!40000 ALTER TABLE `mto_options` DISABLE KEYS */;
INSERT INTO `mto_options` VALUES (1,'site_name',0,'Mtons'),(2,'site_domain',0,'http://mtons.com'),(3,'site_keywords',0,'mtons,鍗氬,绀惧尯'),(4,'site_description',0,'Mtons, 鍋氫竴涓湁鍐呮兜鐨勬妧鏈ぞ鍖�'),(5,'site_metas',0,''),(6,'site_copyright',0,'Copyright 漏 Mtons'),(7,'site_icp',0,''),(8,'qq_callback',0,''),(9,'qq_app_id',0,''),(10,'qq_app_key',0,''),(11,'weibo_callback',0,''),(12,'weibo_client_id',0,''),(13,'weibo_client_sercret',0,''),(14,'github_callback',0,''),(15,'github_client_id',0,''),(16,'github_secret_key',0,''),(17,'theme',0,'default');
/*!40000 ALTER TABLE `mto_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_post`
--

DROP TABLE IF EXISTS `mto_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `favors` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IK_CHANNEL_ID` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_post`
--

LOCK TABLES `mto_post` WRITE;
/*!40000 ALTER TABLE `mto_post` DISABLE KEYS */;
INSERT INTO `mto_post` VALUES (1,1,2,1,'2023-05-24 09:56:29',0,0,0,'啊cdefg、','','','嘿嘿嘿',2,0),(2,2,3,0,'2023-05-24 09:59:25',0,0,0,'集团年天气真好','','','heihei',1,0),(3,3,2,0,'2024-06-03 15:35:04',0,0,0,'你好呀','','','你好呀',2,0);
/*!40000 ALTER TABLE `mto_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_post_attribute`
--

DROP TABLE IF EXISTS `mto_post_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_post_attribute` (
  `id` bigint(20) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `editor` varchar(16) COLLATE utf8_unicode_ci DEFAULT 'tinymce',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_post_attribute`
--

LOCK TABLES `mto_post_attribute` WRITE;
/*!40000 ALTER TABLE `mto_post_attribute` DISABLE KEYS */;
INSERT INTO `mto_post_attribute` VALUES (1,'啊cdefg、','markdown'),(2,'集团年天气真好','markdown'),(3,'你好呀','markdown');
/*!40000 ALTER TABLE `mto_post_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_post_resource`
--

DROP TABLE IF EXISTS `mto_post_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_post_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `resource_id` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IK_POST_ID` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_post_resource`
--

LOCK TABLES `mto_post_resource` WRITE;
/*!40000 ALTER TABLE `mto_post_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `mto_post_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_post_tag`
--

DROP TABLE IF EXISTS `mto_post_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_post_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL,
  `weight` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IK_TAG_ID` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_post_tag`
--

LOCK TABLES `mto_post_tag` WRITE;
/*!40000 ALTER TABLE `mto_post_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mto_post_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_resource`
--

DROP TABLE IF EXISTS `mto_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) NOT NULL DEFAULT '0',
  `create_time` datetime DEFAULT NULL,
  `md5` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_MD5` (`md5`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_resource`
--

LOCK TABLES `mto_resource` WRITE;
/*!40000 ALTER TABLE `mto_resource` DISABLE KEYS */;
INSERT INTO `mto_resource` VALUES (1,0,NULL,'QHEKH8OMQEOH7S2Q58JSO24R','/storage/thumbnails/_signature/QHEKH8OMQEOH7S2Q58JSO24R.JPG','2023-06-06 16:43:30');
/*!40000 ALTER TABLE `mto_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_security_code`
--

DROP TABLE IF EXISTS `mto_security_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_security_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `key_` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `target` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_shxjkbkgnpxa80pnv4ts57o19` (`key_`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_security_code`
--

LOCK TABLES `mto_security_code` WRITE;
/*!40000 ALTER TABLE `mto_security_code` DISABLE KEYS */;
INSERT INTO `mto_security_code` VALUES (1,'741834','2024-06-03 15:29:18','2024-06-03 15:59:18','2148001284@qq.com',0,'2148001284@qq.com',3);
/*!40000 ALTER TABLE `mto_security_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_tag`
--

DROP TABLE IF EXISTS `mto_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_post_id` bigint(20) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `posts` int(11) NOT NULL,
  `thumbnail` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9ki38gg59bw5agwxsc4xtednf` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_tag`
--

LOCK TABLES `mto_tag` WRITE;
/*!40000 ALTER TABLE `mto_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mto_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_user`
--

DROP TABLE IF EXISTS `mto_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT '/dist/images/ava/default.png',
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `gender` int(5) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `signature` varchar(140) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_user`
--

LOCK TABLES `mto_user` WRITE;
/*!40000 ALTER TABLE `mto_user` DISABLE KEYS */;
INSERT INTO `mto_user` VALUES (1,'admin','灏忚眴涓�','https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png','example@mtons.com','3TGCQF25BLHU9R7IQUITN0FCC5',0,'2017-08-06 17:52:41','2017-07-26 11:08:36','2024-06-03 15:36:47',0,1,1,1,''),(2,'a2148001284','a2148001284','https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png',NULL,'UUKHSDDI5KPA43A8VL06V0TU2',0,'2023-05-24 09:58:19',NULL,'2023-05-24 09:59:26',0,NULL,0,1,NULL),(3,'a18115129239','a18115129239','https://en.gravatar.com/userimage/154673030/b9a54b5b990a61cc074668b2e2a0b8c0.png',NULL,'UUKHSDDI5KPA43A8VL06V0TU2',0,'2024-06-03 15:34:27',NULL,'2024-06-03 15:35:58',0,NULL,0,1,NULL);
/*!40000 ALTER TABLE `mto_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mto_user_oauth`
--

DROP TABLE IF EXISTS `mto_user_oauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mto_user_oauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `access_token` varchar(128) DEFAULT NULL,
  `expire_in` varchar(128) DEFAULT NULL,
  `oauth_code` varchar(128) DEFAULT NULL,
  `oauth_type` int(11) DEFAULT NULL,
  `oauth_user_id` varchar(128) DEFAULT NULL,
  `refresh_token` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mto_user_oauth`
--

LOCK TABLES `mto_user_oauth` WRITE;
/*!40000 ALTER TABLE `mto_user_oauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `mto_user_oauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_permission`
--

DROP TABLE IF EXISTS `shiro_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `parent_id` bigint(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_NAME` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_permission`
--

LOCK TABLES `shiro_permission` WRITE;
/*!40000 ALTER TABLE `shiro_permission` DISABLE KEYS */;
INSERT INTO `shiro_permission` VALUES (1,'杩涘叆鍚庡彴','admin',0,0,0),(2,'鏍忕洰绠＄悊','channel:list',0,0,0),(3,'缂栬緫鏍忕洰','channel:update',2,0,0),(4,'鍒犻櫎鏍忕洰','channel:delete',2,0,0),(5,'鏂囩珷绠＄悊','post:list',0,0,0),(6,'缂栬緫鏂囩珷','post:update',5,0,0),(7,'鍒犻櫎鏂囩珷','post:delete',5,0,0),(8,'璇勮绠＄悊','comment:list',0,0,0),(9,'鍒犻櫎璇勮','comment:delete',8,0,0),(10,'鐢ㄦ埛绠＄悊','user:list',0,0,0),(11,'鐢ㄦ埛鎺堟潈','user:role',10,0,0),(12,'淇敼瀵嗙爜','user:pwd',10,0,0),(13,'婵�娲荤敤鎴�','user:open',10,0,0),(14,'鍏抽棴鐢ㄦ埛','user:close',10,0,0),(15,'瑙掕壊绠＄悊','role:list',0,0,0),(16,'淇敼瑙掕壊','role:update',15,0,0),(17,'鍒犻櫎瑙掕壊','role:delete',15,0,0),(18,'涓婚绠＄悊','theme:index',0,0,0),(19,'绯荤粺閰嶇疆','options:index',0,0,0),(20,'淇敼閰嶇疆','options:update',19,0,0);
/*!40000 ALTER TABLE `shiro_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_role`
--

DROP TABLE IF EXISTS `shiro_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_role`
--

LOCK TABLES `shiro_role` WRITE;
/*!40000 ALTER TABLE `shiro_role` DISABLE KEYS */;
INSERT INTO `shiro_role` VALUES (1,NULL,'admin',0),(2,NULL,'hacker',0),(3,NULL,'',0);
/*!40000 ALTER TABLE `shiro_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_role_permission`
--

DROP TABLE IF EXISTS `shiro_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_role_permission`
--

LOCK TABLES `shiro_role_permission` WRITE;
/*!40000 ALTER TABLE `shiro_role_permission` DISABLE KEYS */;
INSERT INTO `shiro_role_permission` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,2,2),(22,8,3);
/*!40000 ALTER TABLE `shiro_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiro_user_role`
--

DROP TABLE IF EXISTS `shiro_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shiro_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiro_user_role`
--

LOCK TABLES `shiro_user_role` WRITE;
/*!40000 ALTER TABLE `shiro_user_role` DISABLE KEYS */;
INSERT INTO `shiro_user_role` VALUES (1,1,1);
/*!40000 ALTER TABLE `shiro_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 15:43:52
