-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: wordpressdbonprem
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-06-06 06:58:36','2019-06-06 06:58:36','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://18.220.156.11/wordpress','yes'),(2,'home','http://18.220.156.11/wordpress','yes'),(3,'blogname','AWSOME ONPREM','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','adndkrkd@yahoo.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/index.php/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:74:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentyseventeen','yes'),(41,'stylesheet','twentyseventeen','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','38590','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:0:{}','yes'),(80,'widget_rss','a:0:{}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'initial_db_version','38590','yes'),(92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(93,'fresh_site','0','yes'),(94,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(99,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(100,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'nonce_key','87J3A;d>*5rtWoT9M^eZ2tWkZR[hA$p2kMs}hn@-4?(O|g_;GV=b4ALk%k4W:lSk','no'),(107,'nonce_salt','eEa-<2InIoP)-lg.:#w)kqFj]7:-6pTAad~z~1^;u/C ;pa6>+IL@)GFD[JA&H`A','no'),(108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'cron','a:3:{i:1559847517;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1559890727;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(112,'theme_mods_twentyseventeen','a:1:{s:18:\"custom_css_post_id\";i:-1;}','yes'),(119,'_site_transient_timeout_theme_roots','1559806124','no'),(120,'_site_transient_theme_roots','a:1:{s:15:\"twentyseventeen\";s:7:\"/themes\";}','no'),(124,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:6:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.1\";s:7:\"version\";s:5:\"5.1.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.4\";s:7:\"version\";s:5:\"5.0.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-4.9.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-4.9.10-new-bundled.zip\";s:7:\"partial\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.10-partial-5.zip\";s:8:\"rollback\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.10-rollback-5.zip\";}s:7:\"current\";s:6:\"4.9.10\";s:7:\"version\";s:6:\"4.9.10\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"4.9.5\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1559804324;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}','no'),(125,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1559804324;s:7:\"checked\";a:1:{s:15:\"twentyseventeen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:45:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-10-05 12:04:13\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/bg_BG.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 18:10:48\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/ca.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-04-12 06:58:35\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-01-18 09:41:47\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/cy.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-28 16:13:23\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/da_DK.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 16:30:52\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-02-28 13:31:52\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/el.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-06-08 23:07:52\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/en_CA.zip\";s:10:\"autoupdate\";b:1;}i:8;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-09 13:03:56\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/eo.zip\";s:10:\"autoupdate\";b:1;}i:9;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-30 21:43:28\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:10;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2016-12-07 17:03:02\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.3/eu.zip\";s:10:\"autoupdate\";b:1;}i:11;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-01-16 14:02:55\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/fa_IR.zip\";s:10:\"autoupdate\";b:1;}i:12;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-10-09 06:17:08\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/fi.zip\";s:10:\"autoupdate\";b:1;}i:13;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 15:29:10\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:14;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-06-18 11:01:28\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/gl_ES.zip\";s:10:\"autoupdate\";b:1;}i:15;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2016-12-06 09:16:43\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.3/he_IL.zip\";s:10:\"autoupdate\";b:1;}i:16;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 14:40:36\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/hr.zip\";s:10:\"autoupdate\";b:1;}i:17;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2017-03-20 15:32:42\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.0/hu_HU.zip\";s:10:\"autoupdate\";b:1;}i:18;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-05-17 18:15:36\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/it_IT.zip\";s:10:\"autoupdate\";b:1;}i:19;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 08:35:12\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/ja.zip\";s:10:\"autoupdate\";b:1;}i:20;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-10-23 07:26:18\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/jv_ID.zip\";s:10:\"autoupdate\";b:1;}i:21;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2016-12-06 09:16:49\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.3/ka_GE.zip\";s:10:\"autoupdate\";b:1;}i:22;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-10-26 06:09:26\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/ko_KR.zip\";s:10:\"autoupdate\";b:1;}i:23;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-06-15 13:14:38\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/lv.zip\";s:10:\"autoupdate\";b:1;}i:24;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-03-05 23:19:51\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/ms_MY.zip\";s:10:\"autoupdate\";b:1;}i:25;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-03-02 09:48:28\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/nb_NO.zip\";s:10:\"autoupdate\";b:1;}i:26;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 15:35:52\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:27;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-03-28 06:00:45\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:28;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 19:35:29\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:29;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-12-13 15:32:05\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/pt_PT.zip\";s:10:\"autoupdate\";b:1;}i:30;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-05-08 16:23:03\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/ro_RO.zip\";s:10:\"autoupdate\";b:1;}i:31;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 10:20:10\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:32;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-09-08 11:25:59\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/sk_SK.zip\";s:10:\"autoupdate\";b:1;}i:33;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 19:09:00\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/sl_SI.zip\";s:10:\"autoupdate\";b:1;}i:34;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-04-09 13:33:59\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/sq.zip\";s:10:\"autoupdate\";b:1;}i:35;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-07-28 12:33:02\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/sr_RS.zip\";s:10:\"autoupdate\";b:1;}i:36;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 19:34:52\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/sv_SE.zip\";s:10:\"autoupdate\";b:1;}i:37;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"th\";s:7:\"version\";s:3:\"1.3\";s:7:\"updated\";s:19:\"2016-12-05 15:10:13\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.3/th.zip\";s:10:\"autoupdate\";b:1;}i:38;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-11-16 22:42:14\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/tr_TR.zip\";s:10:\"autoupdate\";b:1;}i:39;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-05-02 21:10:52\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/uk.zip\";s:10:\"autoupdate\";b:1;}i:40;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-12-05 16:05:37\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/ur.zip\";s:10:\"autoupdate\";b:1;}i:41;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2018-04-20 08:31:03\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/vi.zip\";s:10:\"autoupdate\";b:1;}i:42;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-12-15 16:35:19\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/zh_CN.zip\";s:10:\"autoupdate\";b:1;}i:43;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-06-09 08:47:35\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/zh_HK.zip\";s:10:\"autoupdate\";b:1;}i:44;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2017-06-13 08:24:28\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/1.5/zh_TW.zip\";s:10:\"autoupdate\";b:1;}}}','no'),(126,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1559804324;s:7:\"checked\";a:1:{s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:44:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-09-30 13:25:05\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/bg_BG.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-05-12 18:03:35\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/bs_BA.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"3.3.4\";s:7:\"updated\";s:19:\"2017-07-26 02:20:15\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/3.3.4/ca.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2017-01-30 12:29:04\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/cs_CZ.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-10-14 16:27:45\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/cy.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2015-04-13 17:42:38\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1/da_DK.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-11-14 20:11:52\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"el\";s:7:\"version\";s:6:\"3.1.11\";s:7:\"updated\";s:19:\"2016-05-12 18:04:39\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/el.zip\";s:10:\"autoupdate\";b:1;}i:8;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:34:53\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/en_CA.zip\";s:10:\"autoupdate\";b:1;}i:9;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:34:56\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/eo.zip\";s:10:\"autoupdate\";b:1;}i:10;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-06 16:48:55\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/es_CL.zip\";s:10:\"autoupdate\";b:1;}i:11;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:35:43\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:12;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-09 10:48:54\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/es_PE.zip\";s:10:\"autoupdate\";b:1;}i:13;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-09-06 16:48:48\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/eu.zip\";s:10:\"autoupdate\";b:1;}i:14;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-11-14 09:20:19\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/fa_IR.zip\";s:10:\"autoupdate\";b:1;}i:15;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-12-06 06:15:43\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/fi.zip\";s:10:\"autoupdate\";b:1;}i:16;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:35:00\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:17;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"3.3.4\";s:7:\"updated\";s:19:\"2017-07-15 22:36:06\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.3.4/gl_ES.zip\";s:10:\"autoupdate\";b:1;}i:18;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-09-19 18:01:05\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/he_IL.zip\";s:10:\"autoupdate\";b:1;}i:19;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-09-19 18:00:43\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/hr.zip\";s:10:\"autoupdate\";b:1;}i:20;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2015-04-21 23:53:01\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1/id_ID.zip\";s:10:\"autoupdate\";b:1;}i:21;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"3.3.4\";s:7:\"updated\";s:19:\"2017-07-13 22:15:11\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.3.4/it_IT.zip\";s:10:\"autoupdate\";b:1;}i:22;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:35:12\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/ja.zip\";s:10:\"autoupdate\";b:1;}i:23;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-10-23 07:18:11\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/jv_ID.zip\";s:10:\"autoupdate\";b:1;}i:24;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"3.1\";s:7:\"updated\";s:19:\"2015-04-22 14:17:52\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1/ko_KR.zip\";s:10:\"autoupdate\";b:1;}i:25;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-10-09 10:28:44\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/lv.zip\";s:10:\"autoupdate\";b:1;}i:26;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"3.1.5\";s:7:\"updated\";s:19:\"2015-09-10 16:30:51\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.5/nb_NO.zip\";s:10:\"autoupdate\";b:1;}i:27;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-12-15 09:38:56\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/nl_NL.zip\";s:10:\"autoupdate\";b:1;}i:28;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:6:\"3.1.11\";s:7:\"updated\";s:19:\"2016-05-12 18:05:47\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:29;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"3.3.4\";s:7:\"updated\";s:19:\"2017-05-28 18:24:19\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.3.4/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:30;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-12-13 15:29:50\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/pt_PT.zip\";s:10:\"autoupdate\";b:1;}i:31;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:35:33\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/ro_RO.zip\";s:10:\"autoupdate\";b:1;}i:32;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:35:34\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:33;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-12-15 09:48:41\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/sk_SK.zip\";s:10:\"autoupdate\";b:1;}i:34;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:34:38\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/sq.zip\";s:10:\"autoupdate\";b:1;}i:35;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-01-21 15:49:15\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/sr_RS.zip\";s:10:\"autoupdate\";b:1;}i:36;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-05-26 15:35:46\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/sv_SE.zip\";s:10:\"autoupdate\";b:1;}i:37;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"3.1.11\";s:7:\"updated\";s:19:\"2016-05-12 18:06:30\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.1.11/th.zip\";s:10:\"autoupdate\";b:1;}i:38;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"3.2\";s:7:\"updated\";s:19:\"2016-11-06 11:02:23\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/akismet/3.2/tr_TR.zip\";s:10:\"autoupdate\";b:1;}i:39;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-11-11 22:57:26\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/uk.zip\";s:10:\"autoupdate\";b:1;}i:40;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-10-05 16:53:44\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/vi.zip\";s:10:\"autoupdate\";b:1;}i:41;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2017-11-10 03:23:38\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/zh_CN.zip\";s:10:\"autoupdate\";b:1;}i:42;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"3.3.4\";s:7:\"updated\";s:19:\"2017-08-03 04:32:01\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/3.3.4/zh_HK.zip\";s:10:\"autoupdate\";b:1;}i:43;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.0.3\";s:7:\"updated\";s:19:\"2018-02-20 06:13:53\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.3/zh_TW.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:0:{}}','no'),(127,'auth_key',' SckX}K.@ncv`IgOL-^cbM,fxr8N(lCbM6XeC)`NFq99[Rfhw.^{`.wXj9~vB2H8','no'),(128,'auth_salt','(y,nk31JeC:<>)ryFxDG_<Loioo`sVhxXh) #&n9:yq`cdZ_5Nc5hPzme(khj`@y','no'),(129,'logged_in_key','} b@2#`et:1M|j]:4Yx(A%!13=!eLg:Wswzcy^o+/8bQ30%I+UB0w6}^sV96ec0,','no'),(130,'logged_in_salt','Z}t9%B7B|SCb.u( hU*=*b7q0wWO;IWxN$K)-LSIBe@GZQ9[K/=5,%WI!ITcSO,5','no'),(131,'_site_transient_timeout_browser_dfccbc0815b5740e8a1ea5d8c953a2ef','1560409127','no'),(132,'_site_transient_browser_dfccbc0815b5740e8a1ea5d8c953a2ef','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.157\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}','no'),(134,'_site_transient_timeout_community-events-f9ab0ffd7b714b78e32970c32882df67','1559847530','no'),(135,'can_compress_scripts','0','no'),(136,'_site_transient_community-events-f9ab0ffd7b714b78e32970c32882df67','a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"110.54.226.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2019.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2019-06-20 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Berlin, Germany\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:52.50697;s:9:\"longitude\";d:13.2843064;}}}}','no'),(137,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1559847530','no'),(138,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div><div class=\"rss-widget\"><ul><li>An error has occurred, which probably means the feed is down. Try again later.</li></ul></div>','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,1,'_edit_lock','1559804563:1'),(3,1,'_edit_last','1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-06-06 06:58:36','2019-06-06 06:58:36','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world! onpremise','','publish','open','open','','hello-world','','','2019-06-06 06:59:18','2019-06-06 06:59:18','',0,'http://18.220.156.11/wordpress/?p=1',0,'post','',1),(2,1,'2019-06-06 06:58:36','2019-06-06 06:58:36','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://18.220.156.11/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','closed','open','','sample-page','','','2019-06-06 06:58:36','2019-06-06 06:58:36','',0,'http://18.220.156.11/wordpress/?page_id=2',0,'page','',0),(3,1,'2019-06-06 06:58:47','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-06-06 06:58:47','0000-00-00 00:00:00','',0,'http://18.220.156.11/wordpress/?p=3',0,'post','',0),(4,1,'2019-06-06 06:59:18','2019-06-06 06:59:18','Welcome to WordPress. This is your first post. Edit or delete it, then start writing!','Hello world! onpremise','','inherit','closed','closed','','1-revision-v1','','','2019-06-06 06:59:18','2019-06-06 06:59:18','',1,'http://18.220.156.11/wordpress/index.php/2019/06/06/1-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','root'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"a7d461744d3ca8c0a297a606d7308c7547e122a15dc09e47390e5aacf4fa5ade\";a:4:{s:10:\"expiration\";i:1561013927;s:2:\"ip\";s:13:\"110.54.226.27\";s:2:\"ua\";s:127:\"Mozilla/5.0 (Linux; Android 8.0.0; ASUS_Z012D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36\";s:5:\"login\";i:1559804327;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','3'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"110.54.226.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'root','$P$Bd4/BNaq0gkjDVektmLwBfEaz9IZrK0','root','adndkrkd@yahoo.com','','2019-06-06 06:58:36','',0,'root');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-06  7:47:54
