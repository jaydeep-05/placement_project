-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: pms_website
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add student_ details',7,'add_student_details'),(26,'Can change student_ details',7,'change_student_details'),(27,'Can delete student_ details',7,'delete_student_details'),(28,'Can view student_ details',7,'view_student_details'),(29,'Can add company_ details',8,'add_company_details'),(30,'Can change company_ details',8,'change_company_details'),(31,'Can delete company_ details',8,'delete_company_details'),(32,'Can view company_ details',8,'view_company_details');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$ShX2uI2Ttx4FzkA5QrFxAW$qNjeMsjLltnnmmVx5mJmSD0dharNRZJdRvgplf/Y9pI=','2021-09-21 13:19:07.518223',1,'admin','','','tigaiya21@gmail.com',1,1,'2021-09-04 04:58:23.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-09-04 06:05:42.916876','70','Jaydeep Tigaiya',1,'[{\"added\": {}}]',7,1),(2,'2021-09-04 06:07:09.123161','319','COMPANY',1,'[{\"added\": {}}]',8,1),(3,'2021-09-04 06:07:41.814975','320','PMS',1,'[{\"added\": {}}]',8,1),(4,'2021-09-04 06:09:34.543343','320','PMS',3,'',8,1),(5,'2021-09-04 06:09:34.548329','319','COMPANY',3,'',8,1),(6,'2021-09-04 06:09:49.096083','70','Jaydeep Tigaiya',3,'',7,1),(7,'2021-09-07 14:37:00.204888','296','L&T Infotech Pvt. Ltd.',2,'[{\"changed\": {\"fields\": [\"Company placed\"]}}]',8,1),(8,'2021-09-12 12:10:49.598891','123','Jaydeep Tigaiya',1,'[{\"added\": {}}]',7,1),(9,'2021-09-12 12:11:36.993982','379','COMPANY',1,'[{\"added\": {}}]',8,1),(10,'2021-09-12 12:13:05.888387','1234','Gaurav Tuklia',1,'[{\"added\": {}}]',7,1),(11,'2021-09-12 12:13:28.822694','12345','Gaurav Tuklia',2,'[{\"changed\": {\"fields\": [\"University id\"]}}]',7,1),(12,'2021-09-12 12:14:11.335629','1234','Gaurav Tuklia',3,'',7,1),(13,'2021-09-12 12:14:28.651855','1234','Gaurav Tuklia',2,'[{\"changed\": {\"fields\": [\"University id\"]}}]',7,1),(14,'2021-09-12 12:15:08.014278','1234','Gaurav Tuklia',2,'[]',7,1),(15,'2021-09-12 12:15:24.715723','12345','Gaurav Tuklia',3,'',7,1),(16,'2021-09-12 12:15:30.984840','12345','Gaurav Tuklia',2,'[{\"changed\": {\"fields\": [\"University id\"]}}]',7,1),(17,'2021-09-12 12:16:20.591172','380','PMS',1,'[{\"added\": {}}]',8,1),(18,'2021-09-12 12:19:21.863609','380','PMS',3,'',8,1),(19,'2021-09-12 12:19:21.867599','379','COMPANY',3,'',8,1),(20,'2021-09-12 12:19:43.127214','12345','Gaurav Tuklia',3,'',7,1),(21,'2021-09-12 12:19:43.131826','1234','Gaurav Tuklia',3,'',7,1),(22,'2021-09-12 12:19:43.134824','123','Jaydeep Tigaiya',3,'',7,1),(23,'2021-09-12 12:28:07.516208','123','Jaydeep Tigaiya',1,'[{\"added\": {}}]',7,1),(24,'2021-09-12 12:28:31.198357','1234','Jaydeep Tigaiya',2,'[{\"changed\": {\"fields\": [\"University id\"]}}]',7,1),(25,'2021-09-12 12:28:51.327618','1234','Jaydeep Tigaiya',3,'',7,1),(26,'2021-09-12 12:28:51.331607','123','Jaydeep Tigaiya',3,'',7,1),(27,'2021-09-13 05:25:23.822493','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(28,'2021-09-13 05:49:08.000142','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',4,1),(29,'2021-09-13 06:40:03.147999','123','Jaydeep Tigaiya',3,'',7,1),(30,'2021-09-13 06:55:31.147931','381','ABC',3,'',8,1),(31,'2021-09-13 07:31:24.540346','382','ABC',3,'',8,1),(32,'2021-09-13 07:31:37.919360','123','jaykumar',3,'',7,1),(33,'2021-09-13 08:02:06.343242','999','abc xyz',3,'',7,1),(34,'2021-09-13 08:02:06.348249','888','pqr',3,'',7,1),(35,'2021-09-13 08:02:06.352244','777','pqr',3,'',7,1),(36,'2021-09-13 08:12:24.241534','386','aaa',3,'',8,1),(37,'2021-09-13 08:12:24.248358','385','PMS',3,'',8,1),(38,'2021-09-13 08:12:24.252475','384','COMPANY',3,'',8,1),(39,'2021-09-13 08:12:24.255348','383','ABC',3,'',8,1),(40,'2021-09-13 08:12:35.687174','1234','abc',3,'',7,1),(41,'2021-09-13 08:12:35.692178','777','pqr',3,'',7,1),(42,'2021-09-13 08:40:52.406927','123','Jaydeep Tigaiya',1,'[{\"added\": {}}]',7,1),(43,'2021-09-13 08:41:15.053695','123','Gaurav Tuklia',2,'[{\"changed\": {\"fields\": [\"Student name\"]}}]',7,1),(44,'2021-09-13 08:41:33.913936','123','Gaurav Tuklia',3,'',7,1),(45,'2021-09-13 08:49:30.377448','123','Jaykumar Wadia',2,'[{\"changed\": {\"fields\": [\"Student name\"]}}]',7,1),(46,'2021-09-13 08:49:46.777884','123','Jaykumar Wadia',3,'',7,1),(47,'2021-09-13 13:12:45.061431','1234','Jaydeep',2,'[{\"changed\": {\"fields\": [\"Student name\"]}}]',7,1),(48,'2021-09-13 13:13:18.483797','387','ABC',3,'',8,1),(49,'2021-09-13 13:13:42.565065','1234','Jaydeep',3,'',7,1),(50,'2021-09-15 11:48:47.576243','388','ABC',3,'',8,1),(51,'2021-09-15 11:49:00.505240','120','Jaydeep Tigaiya',3,'',7,1),(52,'2021-09-17 04:15:06.500135','111','Jaydeep Tigaiya',3,'',7,1),(53,'2021-09-17 12:54:35.679826','371','Media.net',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(54,'2021-09-17 12:54:35.686809','370','Media.net',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(55,'2021-09-17 12:54:35.694788','301','Media.net',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(56,'2021-09-17 12:55:04.155596','372','Publisis Media',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(57,'2021-09-17 12:55:29.599398','375','Reliance Jio',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(58,'2021-09-17 12:55:29.611366','369','Reliance Jio',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(59,'2021-09-17 12:55:29.618350','368','Reliance Jio',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(60,'2021-09-17 12:55:29.625329','306','Reliance jio',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(61,'2021-09-20 11:59:59.691268','389','COMPANY',3,'',8,1),(62,'2021-09-20 12:00:13.372409','123','Yash Panchal',3,'',7,1),(63,'2021-09-20 13:28:19.266634','302','Vodafone',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(64,'2021-09-20 13:29:28.806630','304','Globalspace',2,'[{\"changed\": {\"fields\": [\"Company type\"]}}]',8,1),(65,'2021-09-21 08:49:52.650107','123','Jaydeep Tigaiya',2,'[{\"changed\": {\"fields\": [\"Department\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'PMS_website','company_details'),(7,'PMS_website','student_details'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'PMS_website','0001_initial','2021-09-02 13:24:55.802752'),(2,'contenttypes','0001_initial','2021-09-02 13:24:55.982273'),(3,'auth','0001_initial','2021-09-02 13:24:57.380201'),(4,'admin','0001_initial','2021-09-02 13:24:57.865828'),(5,'admin','0002_logentry_remove_auto_add','2021-09-02 13:24:57.896776'),(6,'admin','0003_logentry_add_action_flag_choices','2021-09-02 13:24:57.968823'),(7,'contenttypes','0002_remove_content_type_name','2021-09-02 13:24:58.470603'),(8,'auth','0002_alter_permission_name_max_length','2021-09-02 13:24:58.763014'),(9,'auth','0003_alter_user_email_max_length','2021-09-02 13:24:58.926569'),(10,'auth','0004_alter_user_username_opts','2021-09-02 13:24:58.977433'),(11,'auth','0005_alter_user_last_login_null','2021-09-02 13:24:59.181885'),(12,'auth','0006_require_contenttypes_0002','2021-09-02 13:24:59.186869'),(13,'auth','0007_alter_validators_add_error_messages','2021-09-02 13:24:59.217788'),(14,'auth','0008_alter_user_username_max_length','2021-09-02 13:24:59.452160'),(15,'auth','0009_alter_user_last_name_max_length','2021-09-02 13:24:59.703040'),(16,'auth','0010_alter_group_name_max_length','2021-09-02 13:24:59.769373'),(17,'auth','0011_update_proxy_permissions','2021-09-02 13:24:59.811262'),(18,'auth','0012_alter_user_first_name_max_length','2021-09-02 13:25:00.017893'),(19,'sessions','0001_initial','2021-09-02 13:25:00.134582'),(20,'PMS_website','0002_alter_company_details_receivedofferletter','2021-09-02 13:39:08.053633'),(21,'PMS_website','0003_alter_company_details_dateofofferletter','2021-09-02 14:14:52.113946'),(22,'PMS_website','0004_auto_20210910_1158','2021-09-10 06:28:19.190889'),(23,'PMS_website','0005_auto_20210917_1743','2021-09-17 12:13:40.049357');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2b9c0vanjb4pvz97fmzyu0to7svukhuj','.eJxVjMEOwiAQBf-FsyHAAoJH7_0GwgIrVQNJaU_Gf9cmPej1zcx7sRC3tYZtlCXMmV2YZKffDWN6lLaDfI_t1nnqbV1m5LvCDzr41HN5Xg_376DGUb81ei9clA5sUiU7gdZJYyApUM6jkgm9QrLSEBHos_bJkSUUQhcgIGLvD8pBN7E:1mRT5P:KS7cjraJ8vZ6RZJ38C9jfH4-Mh84gc6RjDWb0iYjp10','2021-10-02 05:40:27.930507'),('49kq25d5r6gawuid5lv27b8cjkva1yy2','.eJxVjMEOwiAQBf-FsyHAAoJH7_0GwgIrVQNJaU_Gf9cmPej1zcx7sRC3tYZtlCXMmV2YZKffDWN6lLaDfI_t1nnqbV1m5LvCDzr41HN5Xg_376DGUb81ei9clA5sUiU7gdZJYyApUM6jkgm9QrLSEBHos_bJkSUUQhcgIGLvD8pBN7E:1mQr4l:KMe_acf2hxGhGIILSulDcitM759IDk2W095DxU2P_mA','2021-09-30 13:05:15.467865'),('5up50n30il7dq4tgygkpgll183g69itr','e30:1mN5p9:Pryvb-jIYkNqJqZIL68kGt4HPIEmKFuKFWJ28vu38vY','2021-09-20 04:01:35.900306'),('fq3yb5o7qnawbkf8m9u31p87yvrm6zoy','.eJxVjDsOwjAQBe_iGln-beylpM8ZrLW94ABypDipEHeHSCmgfTPzXiLStta4dV7iVMRZaHH63RLlB7cdlDu12yzz3NZlSnJX5EG7HOfCz8vh_h1U6vVbw6BQWSqOUyEkNMGh4YQZjE7e2mDBM3inFPIVHHBmzkBaB6P9gFa8P8_yNx4:1mPOIe:_foSmR4XmPE4qwUM5LeAkJ0oZV47VCkWWoTDdx2ha2g','2021-09-26 12:09:32.492292'),('fz9gbscmqvljf2fzqdf431qtbiz3l1cz','.eJxVjDsOwjAQBe_iGlm2ySY2JT1niNb7IQFkS3FSIe6OIqWA9s3Me5sRt3UatybLOLO5GG9Ov1tGekrZAT-w3KulWtZlznZX7EGbvVWW1_Vw_w4mbNNeszAgQ-xcJA8wOOnhnAZwio5VNVGIFJWCqvQaMgTwHXif-0TJofl8AfjtOD4:1mSbct:OhIeTYrKV69P54E-Q19wBftuOtqHW2ls0vri4bAR6cQ','2021-10-05 08:59:43.564917'),('ueaqvy1fd8pexaa8e6zbz6mwp19jhmw2','.eJxVjMEOwiAQBf-FsyHAAoJH7_0GwgIrVQNJaU_Gf9cmPej1zcx7sRC3tYZtlCXMmV2YZKffDWN6lLaDfI_t1nnqbV1m5LvCDzr41HN5Xg_376DGUb81ei9clA5sUiU7gdZJYyApUM6jkgm9QrLSEBHos_bJkSUUQhcgIGLvD8pBN7E:1mQqm2:56MzK2H2IN-1TFFXR7xgkFcjhGLOZL82TT2DNPfvVP4','2021-09-30 12:45:54.176011');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_website_company_details`
--

DROP TABLE IF EXISTS `pms_website_company_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_website_company_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_placed` varchar(255) NOT NULL,
  `offer_mode` varchar(20) NOT NULL,
  `ctc` decimal(4,2) NOT NULL,
  `dateOfInterview` varchar(255) NOT NULL,
  `receivedOfferLetter` varchar(255) NOT NULL,
  `dateOfOfferLetter` varchar(255) NOT NULL,
  `recruit_year` varchar(5) NOT NULL,
  `university_serial_id_id` bigint NOT NULL,
  `company_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PMS_website_company__university_serial_id_cac43260_fk_PMS_websi` (`university_serial_id_id`),
  CONSTRAINT `PMS_website_company__university_serial_id_cac43260_fk_PMS_websi` FOREIGN KEY (`university_serial_id_id`) REFERENCES `pms_website_student_details` (`university_id`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_website_company_details`
--

LOCK TABLES `pms_website_company_details` WRITE;
/*!40000 ALTER TABLE `pms_website_company_details` DISABLE KEYS */;
INSERT INTO `pms_website_company_details` VALUES (258,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','20th May, 2019 ','2019',201411057,'IT'),(259,'BNP PARIBAS','On Campus',5.00,'23rd January, 2019','No','','2019',201411057,'IT'),(260,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411054,'IT'),(261,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201521005,'IT'),(262,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411059,'IT'),(263,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201521010,'IT'),(264,'TCS Ninja Pvt. Ltd.','On Campus',3.36,'9th Sept. 2018','Yes','16th Sept. 2018','2019',201521010,'IT'),(265,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411019,'IT'),(266,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411052,'IT'),(267,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201521004,'IT'),(268,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411014,'IT'),(269,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411030,'IT'),(270,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411004,'IT'),(271,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411011,'IT'),(272,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411061,'IT'),(273,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411048,'IT'),(274,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411049,'IT'),(275,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411007,'IT'),(276,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411038,'IT'),(277,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201311007,'IT'),(278,'Accenture Pvt. Ltd.','On Campus',4.00,'8th Sept. 2018','Yes','19th March, 2019 ','2019',201411031,'IT'),(279,'Accenture Pvt. Ltd.','On Campus',4.00,'9th Sept. 2018','Yes','16th Sept. 2018','2019',201411032,'IT'),(280,'TCS Ninja Pvt. Ltd.','On Campus',3.36,'8th Sept. 2018','No','','2019',201411032,'IT'),(281,'Mu Sigma Pvt. Ltd.','On Campus',8.30,'24th Aug. 2018','Yes','16th Sept. 2018','2019',201411046,'IT'),(282,'TCS Ninja Pvt. Ltd.','On Campus',3.36,'9th Sept. 2018','No','','2019',201411046,'IT'),(283,'Mu Sigma Pvt. Ltd.','On Campus',8.30,'24th Aug. 2018','Yes','16th Sept. 2018','2019',201521011,'IT'),(284,'Majesco Pvt. Ltd.','On Campus',3.75,'8th Aug. 2018','Yes','10th Aug. 2018','2019',201411039,'IT'),(285,'Majesco Pvt. Ltd.','On Campus',3.75,'8th Aug. 2018','Yes','10th Aug. 2018','2019',201411028,'IT'),(286,'TCS Ninja','On Campus',3.36,'9th Sept. 2018','No','','2019',201411028,'IT'),(287,'Majesco Pvt. Ltd.','On Campus',3.75,'8th Aug. 2018','Yes','10th Aug. 2018','2019',201411003,'IT'),(288,'Majesco Pvt. Ltd.','On Campus',3.75,'8th Aug. 2018','Yes','10th Aug. 2018','2019',201411042,'IT'),(289,'Majesco Pvt. Ltd.','On Campus',3.75,'8th Aug. 2018','Yes','16th Sept. 2018','2019',201521001,'IT'),(290,'TCS Ninja','On Campus',3.36,'9th Sept. 2018','Yes','10th Aug. 2018','2019',201521001,'IT'),(291,'TCS Ninja','Off Campus',3.36,'9th Sept. 2018','Yes','16th Sept. 2018','2019',201411017,'IT'),(292,'TCS Ninja','Off Campus',3.36,'9th Sept. 2018','Yes','16th Sept. 2018','2019',201411001,'IT'),(293,'TCS Ninja','Off Campus',3.36,'9th Sept. 2018','Yes','16th Sept. 2018','2019',201411010,'IT'),(294,'TCS Ninja','Off Campus',3.36,'9th Sept. 2018','Yes','16th Sept. 2018','2019',201521006,'IT'),(295,'TCS Ninja','On Campus',3.36,'9th Sept. 2018','Yes','16th Sept. 2018','2019',201521002,'IT'),(296,'L&T Infotech Pvt. Ltd.','On Campus',4.18,'19th Sept. 2018','Yes','20th Sept. 2018','2019',201521002,'IT'),(297,'L&T Infotech Pvt. Ltd.','On Campus',4.18,'19th Sept. 2018','Yes','20th Sept. 2018','2019',201521003,'IT'),(298,'L&T Infotech Pvt. Ltd.','On Campus',4.18,'19th Sept. 2018','Yes','20th Sept. 2018','2019',201521007,'IT'),(299,'TCS Digital','Off Campus',7.00,'26th Sept. 2018','Yes','8th Oct. 2018','2019',201411047,'IT'),(300,'Vphrase','On Campus',3.60,'27th Dec, 2018','Yes','29th Dec. 2018','2019',201511010,'IT'),(301,'Media.net','On Campus',3.00,'9 th january,2019','Yes','21st January,2019','2019',201621012,'Non IT'),(302,'Vodafone','On Campus',4.15,'14th January,2019','Yes','27th January, 2019','2019',201511011,'Non IT'),(303,'Bitwise','On Campus',3.80,'30th Jan. 2019','Yes','4th April,2019','2019',201621010,'IT'),(304,'Globalspace','On Campus',3.80,'30th Jan. 2019','Yes','30th January, 2019','2019',201621010,'Non IT'),(305,'Bitwise','On Campus',3.80,'30th Jan. 2019','Yes','22nd March, 2019','2019',201511050,'IT'),(306,'Reliance jio','On Campus',3.50,'1st March, 2019','Yes','9th July, 2019','2019',201511046,'Non IT'),(307,'AtoS Syntel','On Campus',3.30,'23rd March,2019','Yes','10th April, 2019','2019',201621008,'IT'),(308,' IBM(off campus)','On Campus',4.25,'8th January, 2020','Yes','8th January, 2020','2019',201621008,'IT'),(309,'AtoS Syntel','On Campus',3.30,'23rd March,2019','Yes','10th April, 2019','2019',201511018,'IT'),(310,'Mastek','On Campus',3.39,'26th March, 2019','Yes','15th May,2019','2019',201511019,'IT'),(311,'Mastek','On Campus',3.39,'26th March, 2019','Yes','15th May,2019','2019',201621007,'IT'),(312,'Mastek','On Campus',3.39,'26th March, 2019','Yes','15th May,2019','2019',201511035,'IT'),(313,'weclick','On Campus',2.40,'23rd May, 2019','Yes','26th May, 2019','2019',201511016,'IT'),(314,'Cognizant','On Campus',3.38,'30th September, 2019','Yes','30th September, 2019','2019',201511021,'IT'),(315,'Cognizant','On Campus',3.38,'21st August, 2019','Yes','21st August, 2019','2019',201511022,'IT'),(316,'wisdmlabs','Off Campus',3.00,'24th July, 2019','Yes','24th July, 2019','2019',201421003,'IT'),(317,'Wipro','Off Campus',2.50,'19th January, 2017','Yes','19th January, 2017','2019',201421004,'IT'),(318,'CapGemini','Off Campus',9.20,'2nd March, 2020','Yes','2nd March, 2020','2019',201421004,'IT'),(321,'Mu Sigma','On Campus',8.30,'08-03-2019','Yes','2nd March 2019','2020',2016016400875571,'IT'),(322,'Mu Sigma','On Campus',8.30,'08-03-2019','Yes','2nd March 2020','2020',2016016400875814,'IT'),(323,'AtoS','On Campus',0.00,'08-03-2019','Yes','3rd Jan 2020','2020',2016016400875814,'IT'),(324,'Mu Sigma','On Campus',8.30,'03-08-2019','Yes','3rd Aug 2019','2020',2016016400875795,'IT'),(325,'TCS Ninja(Off campus)','Off Campus',3.30,'03-08-2019','Yes','12th Sept 2019','2020',2016016400875795,'IT'),(326,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400862624,'IT'),(327,'TCS Ninja(Off campus)','Off Campus',3.30,'8/28/2019','Yes','12th Oct 2019','2020',2016016400862624,'IT'),(328,'Infosys (Off)','Off Campus',5.00,'8/28/2019','No','','2020',2016016400862624,'IT'),(329,'Visible Alpha','On Campus',6.50,'8/28/2019','Yes','14th March 2019','2020',2016016400862624,'IT'),(330,'Accenture','On Campus',4.50,'8/28/2019','Yes','6th Feb 2020','2020',2016016400862872,'IT'),(331,'TCS Ninja(Off campus)','Off Campus',3.30,'8/28/2019','Yes','12th Oct 2019','2020',2016016400862872,'IT'),(332,'Accenture','On Campus',4.50,'8/28/2019','Yes','8th Feb 2020','2020',2016016400874881,'IT'),(333,'LTI','On Campus',6.50,'8/28/2019','Yes','12th Sept 2019','2020',2016016400874881,'IT'),(334,'Infosys','Off Campus',5.00,'8/28/2019','No','','2020',2016016400874881,'IT'),(335,'Accenture','On Campus',6.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400875474,'IT'),(336,'Accenture','Off Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400875845,'IT'),(337,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Feb 2020','2020',2016016400874397,'IT'),(338,'Accenture','On Campus',4.50,'8/28/2019','Yes','16th Mar 2020','2020',2016016400875501,'IT'),(339,'BNP paribas','On Campus',5.00,'8/28/2019','No','','2020',2016016400875501,'IT'),(340,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400875725,'IT'),(341,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400874447,'IT'),(342,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016402537283,'IT'),(343,'Accenture','On Campus',4.50,'8/28/2019','Yes','6th Feb 2020','2020',2016016400862512,'IT'),(344,'Accenture','On Campus',4.50,'8/28/2019','Yes','13th Feb 2020','2020',2016016400875621,'IT'),(345,'TCS Ninja(Off campus)','Off Campus',3.30,'8/28/2019','Yes','13th Oct 2019','2020',2016016400875621,'IT'),(346,'Accenture','On Campus',4.50,'8/28/2019','Yes','25th Feb 2020','2020',2016016400874954,'IT'),(347,'Accenture','Off Campus',4.50,'8/28/2019','Yes','27th Feb 2020','2020',2016016400830994,'IT'),(348,'Accenture','On Campus',4.50,'8/28/2019','Yes','27th Feb 2020','2020',2016016400862566,'IT'),(349,'Accenture','On Campus',4.50,'8/28/2019','No','','2020',2016016400862736,'IT'),(350,'Zeus Learning','On Campus',5.50,'8/28/2019','Yes','8th Oct 2019','2020',2016016400862736,'IT'),(351,'Accenture','On Campus',4.50,'8/28/2019','Yes','6th Feb 2020','2020',2016016400863191,'IT'),(352,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400862802,'IT'),(353,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400858947,'IT'),(354,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016402537291,'IT'),(355,'Accenture','On Campus',4.50,'8/28/2019','Yes','8th Jan 2020','2020',2016016400874737,'IT'),(356,'Accenture','On Campus',4.50,'8/28/2019','Yes','18th Jan 2020','2020',2016016400858901,'IT'),(357,'Accenture','On Campus',4.50,'8/28/2019','Yes','6th Feb 2020','2020',2016016400843124,'IT'),(358,'Accenture','On Campus',4.50,'8/28/2019','No','','2020',2016016400875733,'IT'),(359,'LTI','On Campus',5.00,'8/28/2019','Yes','12th Sept 2019','2020',2016016400875733,'IT'),(360,'Accenture','On Campus',4.50,'8/28/2019','Yes','21st Jan 2020','2020',2016016400858874,'IT'),(361,'Accenture','On Campus',4.50,'8/28/2019','Yes','13th Oct 2019','2020',2016016400874946,'IT'),(362,'LTI','On Campus',5.00,'09-09-2019','Yes','12th Sept 2019','2020',2017016402561553,'IT'),(363,'TCS Ninja(Off campus)','Off Campus',3.30,'09-09-2019','Yes','13th Oct 2019','2020',2017016402561553,'IT'),(364,'LTI','On Campus',5.00,'09-09-2019','Yes','12th Sept 2019','2020',2016016400863063,'IT'),(365,'LTI','On Campus',5.00,'09-09-2019','Yes','12th Sept 2019','2020',2016016400874602,'IT'),(366,'Amazon','On Campus',5.00,'8/30/2019','Yes','1st Jan 2020','2020',2017016402561495,'IT'),(367,'NSE IT','On Campus',5.50,'8/30/2019','Yes','14th Oct 2019','2020',2016016400863345,'IT'),(368,'Reliance Jio','On Campus',3.50,'1/31/2020','Yes','6th Nov 2020','2020',2016016400874486,'Non IT'),(369,'Reliance Jio','On Campus',3.50,'1/31/2020','Yes','6th Nov 2020','2020',2017016402561537,'Non IT'),(370,'Media.net','On Campus',3.00,'8/28/2019','Yes','30th Oct 2019','2020',201611043,'Non IT'),(371,'Media.net','On Campus',3.00,'8/28/2019','Yes','30th Oct 2019','2020',2016016400874857,'Non IT'),(372,'Publisis Media','On Campus',4.00,'10-01-2019','Yes','28th Oct 2019','2020',2017016402561561,'Non IT'),(373,'Zeus Learning','On Campus',5.50,'8/28/2019','Yes','8th Oct 2019','2020',2016016400874761,'IT'),(374,'Infosys','Off Campus',5.00,'10/17/2019','No','','2020',2016016400874567,'IT'),(375,'Reliance Jio','On Campus',3.50,'1/31/2020','Yes','8th Jul 2019','2020',2017016402561522,'Non IT'),(376,'LTI','On Campus',5.00,'09-09-2019','Yes','12th Sept 2019','2020',2016016400862744,'IT'),(377,'Medly Software System LLP','Off campus',5.50,'10-01-2020','Yes','15th Oct 2020','2020',2015016402135603,'IT'),(378,'Adroit Corporate Service Pvt. Ltd.','Off Campus',0.00,'12/30/2020','Yes','2nd Jan 2020','2020',2016016400874687,'IT'),(390,'COMPANY','On Campus',8.00,'12 dec 2021','Yes','NA','2021',123,'IT');
/*!40000 ALTER TABLE `pms_website_company_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pms_website_student_details`
--

DROP TABLE IF EXISTS `pms_website_student_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pms_website_student_details` (
  `university_id` bigint NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `finishing_school_attended` varchar(5) NOT NULL,
  `placed_year` varchar(4) NOT NULL,
  PRIMARY KEY (`university_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pms_website_student_details`
--

LOCK TABLES `pms_website_student_details` WRITE;
/*!40000 ALTER TABLE `pms_website_student_details` DISABLE KEYS */;
INSERT INTO `pms_website_student_details` VALUES (123,'Jaydeep Tigaiya','COMP','Yes','2021'),(1234,'Gaurav','COMP','Yes','2022'),(201311007,'Mrunal Vijay Kokate','COMP','Yes','2019'),(201411001,'Yash Pasad','COMP','Yes','2019'),(201411003,'Tushar Singh','COMP','Yes','2019'),(201411004,'Abhishek Abhijeet More','COMP','Yes','2019'),(201411007,'Varun Umesh Panditpautra','COMP','Yes','2019'),(201411010,'Sarthak Chawathe','COMP','Yes','2019'),(201411011,'Shiprarani Vinaykumar Dubey','COMP','Yes','2019'),(201411014,'Aishwarya Prakash Khavare','COMP','Yes','2019'),(201411017,'Paritosh Diya','COMP','Yes','2019'),(201411019,'Adrija Sunil Goswami','COMP','Yes','2019'),(201411028,'Wasique Ansari','COMP','Yes','2019'),(201411030,'Aman Tarun Gautam','COMP','Yes','2019'),(201411031,'Manisha Shriniwas Kalkuri','COMP','Yes','2019'),(201411032,'Kunal Dattatrey Sawant','COMP','Yes','2019'),(201411038,'Ankit Sanjay Patil','COMP','Yes','2019'),(201411039,'SachinYadav','COMP','Yes','2019'),(201411042,'Rashmi Negi','COMP','Yes','2019'),(201411046,'Varad Jadhav','COMP','Yes','2019'),(201411047,'Amey Noolkar','COMP','Yes','2019'),(201411048,'Sujai Sanjay Jain','COMP','Yes','2019'),(201411049,'Ashishkumar Rambachan Mouria','COMP','Yes','2019'),(201411052,'Divya Purnenduprakash Karn','COMP','Yes','2019'),(201411054,'Purav Haresh Chheda','COMP','Yes','2019'),(201411057,'Aditya Kishore Manelkar','COMP','Yes','2019'),(201411059,'Vidhi Vikesh Patel','COMP','Yes','2019'),(201411061,'Maanav Bhargav Acharya','COMP','Yes','2019'),(201421003,'Gaurang patel','COMP','Yes','2019'),(201421004,'Gaurav Hodar','COMP','Yes','2019'),(201511010,'Yash Bhavsar','COMP','Yes','2019'),(201511011,'Nupur Chauhan','COMP','Yes','2019'),(201511016,'Surbhi Dhakad','COMP','Yes','2019'),(201511018,'Divya Dubey','COMP','Yes','2019'),(201511019,'Namita Jagtap','COMP','Yes','2019'),(201511021,'Manish gami','COMP','Yes','2019'),(201511022,'Nikhil Kataria','COMP','Yes','2019'),(201511035,'Nidhi Mehta','COMP','Yes','2019'),(201511046,'Rohit Rayte','COMP','Yes','2019'),(201511050,'Kimaya Shah','COMP','Yes','2019'),(201521001,'Mahita Gandhi','COMP','Yes','2019'),(201521002,'Bhavit Shah','COMP','Yes','2019'),(201521003,'Rahil Nagar','COMP','Yes','2019'),(201521004,'Hardik Ashish Manek','COMP','Yes','2019'),(201521005,'Hemang Praful Bhanushali','COMP','Yes','2019'),(201521006,'Sagar Vaghela','COMP','Yes','2019'),(201521007,'Prajakta Sakpal','COMP','Yes','2019'),(201521010,'Suruchi Sudhir Sharma','COMP','Yes','2019'),(201521011,'Vishal Bhanushali','COMP','Yes','2019'),(201611043,'PATRA PRASHANT SWARAJ','COMP','Yes','2020'),(201621007,'Namrata Panchal','COMP','Yes','2019'),(201621008,'Ronit Patel','COMP','Yes','2019'),(201621010,'Prarthna Patil','COMP','Yes','2019'),(201621012,'Rushabh Shah','COMP','Yes','2019'),(2015016402135603,'TRIVEDI VIRAJ ATUL','COMP','Yes','2020'),(2016016400830994,'MEHTA KUNAL BHAVESH','COMP','Yes','2020'),(2016016400843124,'SHAH DARSHIL SHAILESH','COMP','Yes','2020'),(2016016400858874,'PATADE SIDDHESH GOVIND','COMP','Yes','2020'),(2016016400858901,'TOLAR PRITESH RAJU','COMP','Yes','2020'),(2016016400858947,'DOSHI MEET KETANKUMAR','COMP','Yes','2020'),(2016016400862512,'VEKHANDE VEDANK VIJAY','COMP','Yes','2020'),(2016016400862566,'BAKRE SNEHAL VINAY','COMP','Yes','2020'),(2016016400862624,'SHAH HIMANSHU SHISHIR','COMP','Yes','2020'),(2016016400862736,'SHAH RAJ BIPIN','COMP','Yes','2020'),(2016016400862744,'PARMAR RONAK CHETAN','COMP','Yes','2020'),(2016016400862802,'SINGAL VIDHISHA VIVEK','COMP','Yes','2020'),(2016016400862872,'GOWDA ARUNKUMAR SIDDARAM','COMP','Yes','2020'),(2016016400863063,'DAVE JAHANVI HITESH','COMP','Yes','2020'),(2016016400863191,'SWAIN ANUJEET CHITTARANJAN','COMP','Yes','2020'),(2016016400863345,'BHIDE SUPRIYA RAMCHANDRA','COMP','Yes','2020'),(2016016400874397,'SHETH BHAVYA AJAY','COMP','Yes','2020'),(2016016400874447,'KHOKRALE ATHARVA RAJESH','COMP','Yes','2020'),(2016016400874486,'MURZELLO FLORENTUS ROYSTON','COMP','Yes','2020'),(2016016400874567,'ASHAR NIYATI RUPESH','COMP','Yes','2020'),(2016016400874602,'DEDHIA PARSHVA MANISH','COMP','Yes','2020'),(2016016400874687,'SHAH KAJOL RAJESH','COMP','Yes','2020'),(2016016400874737,'GUPTA ADITI SUNIL','COMP','Yes','2020'),(2016016400874761,'FAIZEE SAKINA MUSTAFA','COMP','Yes','2020'),(2016016400874857,'JAIN MANALI SHANTILAL','COMP','Yes','2020'),(2016016400874881,'NIHATKAR SAKSHI ATUL','COMP','Yes','2020'),(2016016400874946,'SHAH MAYANK NIMISH','COMP','Yes','2020'),(2016016400874954,'KADAM SAKSHI ASHOK','COMP','Yes','2020'),(2016016400875474,'CHATURVEDI MEENAL VB','COMP','Yes','2020'),(2016016400875501,'PATEL DHWANI KIRTI','COMP','Yes','2020'),(2016016400875571,'SATPURKAR ADITYA ASHWINKUMAR','COMP','Yes','2020'),(2016016400875621,'NARVEKAR ADVAIT MAHENDRA','COMP','Yes','2020'),(2016016400875725,'KATIRA HIRAL TUSHAR','COMP','Yes','2020'),(2016016400875733,'CHHEDA JAY MUKESH','COMP','Yes','2020'),(2016016400875795,'PATIL HARSHAL SATISH','COMP','Yes','2020'),(2016016400875814,'PATEL PRIYAM PRAVIN','COMP','Yes','2020'),(2016016400875845,'MAKWANA YASH SANJAY','COMP','Yes','2020'),(2016016402537283,'THOMBARE SANJANA ANAND','COMP','Yes','2020'),(2016016402537291,'GAJINKAR MEHUL NARENDRA','COMP','Yes','2020'),(2017016402561495,'OZA DIVYANG PRAGNESH','COMP','Yes','2020'),(2017016402561522,'DOSHI VIRAJ RAJESH','COMP','Yes','2020'),(2017016402561537,'PADHIYAR DHRUV DEEPAK','COMP','Yes','2020'),(2017016402561553,'ASHRA JAY YOGESHCHANDRA','COMP','Yes','2020'),(2017016402561561,'THAKKAR KHUSHBOO BHAVESH','COMP','Yes','2020');
/*!40000 ALTER TABLE `pms_website_student_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-22 13:35:16
