-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: cathy
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Admin','admin@admin.com','2023-01-31 19:30:25','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CInr9BkLGS',NULL,NULL,'2023-01-31 19:30:25','2023-01-31 19:30:25');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applied_jobs`
--

DROP TABLE IF EXISTS `applied_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applied_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int unsigned NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_status` tinyint NOT NULL DEFAULT '0',
  `job_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applied_jobs`
--

LOCK TABLES `applied_jobs` WRITE;
/*!40000 ALTER TABLE `applied_jobs` DISABLE KEYS */;
INSERT INTO `applied_jobs` VALUES (1,1,'Ut et perspiciatis',1,'Camden Cervantes','ryrinaqixe@mailinator.com','resumes/1678590062.pdf',0,'25f25fc7-479c-47f8-901b-f0aabdb58eee','2023-03-12 02:01:02','2023-03-12 02:01:02');
/*!40000 ALTER TABLE `applied_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_requires` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `skills` text COLLATE utf8mb4_unicode_ci,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_applications_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
INSERT INTO `job_applications` VALUES (1,'Ut et perspiciatis','Stokes and Guthrie Inc','Nigeria','Quas sunt aut ut sim','jogofiso@mailinator.com','Dolore duis Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem,','60000','Soluta labore esse Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem,','2',NULL,1,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem,','2023-03-09 09:47:15','2023-03-09 09:47:15','Lorem ipsum dolor sit amet consectetur adipisicing elit.',1),(2,'Officia sed error ip','Lindsey and Church Trading','Expedita ipsum autem','Nam asperiores omnis','tymobyw@mailinator.com','Fugit quia in dolorLorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem,','80000','Quidem modi aut eiusLorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem,','5',NULL,1,'Veniam et at beataeLorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem,','2023-03-09 09:48:06','2023-03-09 09:48:06','Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem,',2);
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_categories`
--

DROP TABLE IF EXISTS `job_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_categories`
--

LOCK TABLES `job_categories` WRITE;
/*!40000 ALTER TABLE `job_categories` DISABLE KEYS */;
INSERT INTO `job_categories` VALUES (1,'Management',1,'2023-03-09 09:35:23','2023-03-09 09:35:23'),(2,'IT',1,'2023-03-09 09:35:33','2023-03-09 09:35:33'),(3,'Tech Support',1,'2023-03-09 09:36:03','2023-03-09 09:36:14');
/*!40000 ALTER TABLE `job_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_payment_types`
--

DROP TABLE IF EXISTS `manage_payment_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage_payment_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_payment_types`
--

LOCK TABLES `manage_payment_types` WRITE;
/*!40000 ALTER TABLE `manage_payment_types` DISABLE KEYS */;
INSERT INTO `manage_payment_types` VALUES (1,'Cryptocurrency','Bitcoin','4c14cfe8-9467-48ed-96f1-2462dc3a073c',1,'2023-03-10 09:40:11','2023-03-10 09:40:11'),(2,'Mobile Payment','Perfect Money','PM0845689',1,'2023-03-10 09:40:27','2023-03-10 09:40:27');
/*!40000 ALTER TABLE `manage_payment_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2023_01_31_194224_create_sessions_table',1),(7,'2023_01_31_201513_create_admins_table',2),(28,'2023_02_04_191213_create_job_applications_table',3),(29,'2023_02_08_202925_add_skills_to_job_applicatios_table',3),(30,'2023_02_10_132258_create_visas_table',3),(31,'2023_02_15_232555_create_job_categories_table',3),(32,'2023_02_15_234345_add_category_id_to_job_applications_table',3),(33,'2023_02_27_074015_create_applied_jobs_table',3),(34,'2023_03_03_195031_create_visa_applications_table',3),(35,'2023_03_08_135013_create_manage_payment_types_table',3),(36,'2023_03_09_064301_add_visa_process_amount_to_visa_table',3),(37,'2023_03_09_081756_add_more_columns_to_visas_table',3),(38,'2023_03_09_085140_add_gender_to_visas_table',3),(39,'2023_03_10_062815_add_more_columns_to_visa_application_table',4),(40,'2023_03_12_020639_create_prove_of_payments_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prove_of_payments`
--

DROP TABLE IF EXISTS `prove_of_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prove_of_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_option_id` int unsigned NOT NULL,
  `transaction_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prove_of_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prove_of_payments`
--

LOCK TABLES `prove_of_payments` WRITE;
/*!40000 ALTER TABLE `prove_of_payments` DISABLE KEYS */;
INSERT INTO `prove_of_payments` VALUES (1,1,'Camden Cervantes','ryrinaqixe@mailinator.com',1,'bd79-4f80-884a-72ff11043155','prove_of_payments/1678589817.jpg','2023-03-12 01:56:57','2023-03-12 01:56:57');
/*!40000 ALTER TABLE `prove_of_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('0R5gup8bNqArazE47OlP6nfYBhoEskby6a5IIam3',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUFEc09ITE1pSjlRUWNRbmM4aGp6Z25pMXpvTlRXVFhkbGRrRXZUaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1679439776),('16CDOA5cokY4b2tETXLJRdr1cq8v7btP1ZmPGMEW',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFVFem5SS09ZMFpFdmdUaWFERXA0aXBqaUF0akdyR1VOdDdLd3ZJZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439260),('1BPn3nZvtXVJF0FpmOrxrNstqY4jkFJvIp2HDXMM',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDFYZEhIbXdBQ3hVUkt4WkRtd0FFTUdNTEZ4V3hOU2haY20xZFRHeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679436857),('1EDHyS0joO1eLUhIdnj0eYNnxTkW88SvXz24MoAJ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXNMNXJIZ1hJRmlORmh5Z0xET09McWpGcjZlbXE4bENORnJvcmU0WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437678),('1S3uzaNDK6gCSH8VbYU6yuPGOKgLiasdXHP8XRF5',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkpQU2R1RUxsMXZGd1RhY0hJTkF0SFpxd2NETkhYWnVmVjMyTFRwWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438219),('2bzayQdB15ty759krwC1Vg5y14Nn3XmrbQRKAjEC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWFIUmprUVNGcVowZHBUZkxOUDl1b1l6UlROMDNYOWpLcnJrb1VBcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433591),('2jL3yx28XyIitej4gLIQeNVByiewAegwUlmgky47',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidTJZRU9SUkI4RTJ1U0RxTGdZbUZLMkFwZFRzSm13SnBwMXE1ZEFFMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437860),('2POQOrgxrvMdXSK9Rr4JtOoImUyCHNZzzeaJDqBz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHljb3h2bjZvZlpuYkdGQW03MGJic1UwVUlLblpSWnpSNnhqR3ROYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437038),('3qMCLTZibusj5sXEOYDaB7F06P2qCDyiEDaVv6sr',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnFJY0dFTWZQYUR4emlnc1dxTUUxSkk4OUo4eXNsRDRZMHZ4eUFYZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432830),('3vENTeySChBIYu8iyNJ0jm8odit0fMm1y2oJhWoj',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUGVUcDd1RmZpN2pHQUNEN2ROQnFGQVYwTGlBb3NMRlllbTVUNHZWUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437044),('3ZemVKw556MM0ppeiK4AcN9Hdxfh2IpFx3dv4li6',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoic3B0dGpZWWtpcU04RnF5NnJaeUJ1NGxoZVdwVHpjeVc0ZVI4MWxtMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437472),('4v6eGimr9w2jNtlcSeN4Cz2O8QofNxIURC8sGcne',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmxyRktqYnd4d1FJbHNhUlU5ZWRHSGZyNmg0Y0E5aWp1YURqU3JQcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431802),('4ZWaM6EgCnA4l2HZPNyFVwbuCbWUOJuNib0AsYr8',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEZ0b29Hc1pyMXd3TmhXOHlhakN6R0gybmVnUGhYWXRzMFNaODV6dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437025),('5Z5PSWWJ7U6tCVPtw8bdxgPN2kuljF1KN5pTuzDH',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2xOOU5HaGNmZ0dwWTlMREdmVzlWT0RWM09kc3A5T1hwMlluTlBScCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432064),('6KAyx96hJAgaKtdBlyIIU3j9kmwlJ8GFNZRS4Ued',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWtPZEVRNGozSWc5dVFsWE51ODZuWTNoek5Ic3V5c0FvbTducTF6WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438330),('75fXbdZuXv5QmshHZkejL8FSsbswwentsTkHrmUv',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNXFLUWxabWo1amFLVjZmTlNVZ3J6c1hvcnBOQnBRQ0lVVXVpOFY0WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437047),('7cWj0GANyIDj298ZfTZis9v56ToDr2bcqWK7ecW1',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDhKcG9pM3F4ZzltaXVIMDBUV3NIR3E3ZTBneGt2NlJpd3hDUUhVcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432061),('7xhGWbHYptqwiVtKCFENdazAE75oKHF74obPmrsd',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicGVpUFNVZHlGR2ZhUk1veXFrM1laWFRFenBGUG1ENlliOFNkZ2hHUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433194),('7Zq33OOEq4ABeCJHITkCLoaKJTmcvekHgqoSABP9',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2xrcE10aDllTHE1Zld1ZGRFZnNOa2NGbkxXNmNIMW5tVXpXTzJNUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437387),('81NMrE8RunD0da9VbKE6he1j0LdoQEwvwDqF0S99',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibXdLc3oxbEdhZVZhcGRRYUZsTVNaNUJ4aldtQWl4N3FWbmJWc2dhNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439357),('8AVXDhkEwZGbhn30HMDnzvYI9h0NGz7YjiYyJKq4',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSDJNVGZTZGViVXVZeEt6NDRzdHB1UTlJWnVHMXlPQW5qWW4wN0h3bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679434135),('8IdVF4sL1OvjbWcYOqTraiBeZWhTNAD82Uoq6Jcb',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibExYenJqaUNMQ1ZOZ0VNbFJiWmlPYU9zUXRVeGl3eTZ3aDRjVXMyciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439232),('8nb34A8YIBb8tb10Z5X5JLltruGoEp7cjCkRNMmE',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibzFRVVE2WkVSQ1ZNU3VXa3I3bjRmTFY5Rjh4UUpJTGRzcGtrNmJCUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439246),('8pnBGs8tmMvjkAgdepyfRp6aCy3506lLyQtAD68r',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGJFY25GbFM2bWRvNkpoTnRGZmU5QkF0M3hBWDhFczRwWDF3aEJ5QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432213),('8qoPyyloquiHYMN809iJoS8AtC2QCmU0YR4brWmu',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEdEUldxNkRtajVmT3JaUW1XZHlrdFpNYUR2N0Y4Y1NWV2VDS2VrcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439372),('8tWd93rSO0osjzzjGQGTISi4xr95yqalRi25Ciei',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWhoeTI5VExzcUZSSkliRU1hV0N0TzFianBNZkFFVzl6c0FmS1VGaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433191),('8zK2F5LCxW8mBC8D4WiIrViuCe8OQb3IqIOHRRDO',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3U3SWdNWGdFcVJrQmxLYjY2NVJQY1ZNc3NHam5YMjNyWG5oQUZFaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437466),('99Hx6bmWTrL8e6hRcLw5JltLNxvUUGZXP2UdBxnO',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibktOTkFHWWc4SmZycEVJQUt6YjlaNlZmQjlNblBIY2hpRFlrUlM3MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433919),('9wHi2OJRfiwo8apATyAsLTwBDGttn5mSusCaiYzB',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0preWxRSnliejRoY2dOakFnRDBWUndXNUF3MnFDck9uaEloREVZbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433926),('aDJjEwdsLeqWa0ZK8xuuicI55cQV5W0CW0kaCOdC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHR0cE5qd0xEc0x3c3dHcTZPTll1b0x2TDZBNnh0RFZ5RktGTzJPZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439272),('aIQRt0aViL9dqiZF8PrbvhdjwbCd0fMekhJNrVoK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiREpoU1FHcFhFN3lmdkZVb01ScnQzS3BXTHozSzF2Z2JraERkUUR5ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679436609),('aNfSj35eEjZiprtUzwnhgsOCKuyiC3C8aX6KWtWg',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDNuQU5QMzF4Rk9aZmxyNE4yZWZIQnk1b2x5SHlmUGl6NFJFSWFqbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439387),('axEaraCCUIhHCg1aAJv1OK7z3r8dUcKSOwZra976',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3BXR0RiVkQ5NFk4bElyUDdYM3hKNkNVM3FVQTlTVHhrSzN6eXJVMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439193),('AzEpvs8PHxsNjyOKzUFGrtWXFDmudtfdqBkUokSQ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2VLUUJBSks1NmhCY1owYWJUcjFBZWVKTnhnTDVIcE5oelUxRFZtbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439334),('b9qJ8i6Iv5QlbsxLJpFpeceS14LWRzpw896Xlg11',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjZ4U1FIbXJsemkyTFR5ZDRrWWlpaVlUMm9tVGppQkd0TXBFall3NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431941),('bdjJ56g0JUVihZQcw81rSo5uBlL6ag47ZsiW5Bw0',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicVhyT09qbHhzblFxNTVkZnJBUGsxeU1Fd21MNlhtWXhORUpPcUZGUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433853),('BlqgzkdURiJvP5EDsfUptWqam3sD2yqzXWj8cHYa',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoic2pXTURWYTBPY0FDRkRFeVc1bDAzQ3dPbUlmdVRhVUlwSndiMUREdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435648),('bPd2JwwWusTnrCFcAD9ii0Wg1pRQ8dHoOvlzRD9p',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMTB6VE1TbXU1c1ZtRGFvOTFRU0lncjhQMEZ3b3BHeWMwWDM5WmZ2WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439072),('BxeXtwJ16mZ8w3ZQVrE9gyjQXQfsEqAOzdKZTAKy',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibURVQ0k3WXBkNmZkM09sN25IbHpJakllNG1pQ1lCRkdqODVHdXhERyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432207),('cjw3b3tmrx8sWOXgjXbZgwyjJ7JlGiMdsFai4DlK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXJPUHpJQmMwbEt6b2R3U3JxdlVJZVo0aVJIOTVhZVJEaDZhdTdKbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433913),('cxe5loDJs6aFqbK8J164nP8Qy4ULlrr1dfuFaZSw',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0xUb1hOYXVGeU93cGU5cTlVTk52eG00MEtzZlJ2bDBpS1NZdmZsUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433851),('CYHtX3DsLKq29njSIxe2CygdSIdrKiF8B0YvDA3b',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUE9taEo5OTk3VmpOSlNvVzloTFVCNFUwa0xwR0FnTXVCMEtGcVI1MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437485),('dISkfcrBF94bFz9ZVK9nnZzDDV4uiETH69yk6ygC',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicDBHTVM3UkIwUENMclNsNUZtOUNHbmgyTnhla1RIY3ZsTGQ1NVhOQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435813),('dmwETfOeTiedEtXpWakt3mgR90kXLopVT5zcqkj8',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieDhYWUFMaFpNa2JPbXlHUTVDNVg3WWxFdFlyUUx1UTdHdjJBMGcyTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437421),('dRIilKYqNbY7B1hzmzTb56kiHh8fBt1JvcI8hK4a',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjZXQ1psUnVkaXdTWjNHNXlkUGVNblEyTUxsR2VTNVdjanE1TmlWRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433682),('dVZ88gTxkLZRAGx6vtcC3SvRJembHi9ni65D96uF',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGdFU2RBODlHc1lZVmh3cGIyME5ZTW1ld25iTndYUUJzVEJmTGJoNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438542),('E3oju1xzb0kvkGld5iEDfNApGgXDtkhfIsw8ccm9',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibktGODJnNEV1emszV3B2Ykt3WmsyY1hQVnVLdFM4aGg1QXJrV2RCVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439253),('eCJKPduUsOzcKhNFuuFAlmy44fwaDcOowVzxwQn2',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiclhkNE1vMEF3bGdYTDJuaDY1MUdhVUd6WEM3a1ZKbThwQmVrdmlTUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439063),('eEWxXyVqxIivLkXjS6ejt9a3Zc3Cl48ERwLI9vHK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTRMdG1TOHBjYjZQa0Fmd0JqNHB0czJVS29sNmJHY2NFUUFGOU9ycyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437393),('EGpVRc6kzZ4mJ6pTDr2K6p6NRYhpZCdyAH9zizGr',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoib0thNzVMNGhJTHJyZ0Jpb0VvZnRzS0c3Z05FekFEVG1NaUNSYXk4QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432796),('eHEkw8nl8han2zOaeOxLAP1IRCWg515I9WuVCNH2',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieVQ3V01jdkNNR01LbjRGYVBRendvSEZwenZkOGYwdUVDeDdzY3RuWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437461),('EljV8ASbjTuVCaiwTKqIbHnnHnlsClW4NVtFucqk',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWxQWXpjeVlLOFloRGswWHRmTHo3RE5sWHlDaHFtbkVtdFpRZzcyNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438520),('ePdtecKUlXxpv7qiZRTwfMEPiqojbC0VRDoH6XSw',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFQxcTF1dTV2NjlRSlkzNlhkU1ZjcG95ZXBvaDl6VkZ1QmJBNzBmZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431806),('EqoL0h1dCj7ZOyCBQXTTx90KfyrExBTVtbcOaad8',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieXFjV2pjekh4NG80RnZpV1hyZGo3cmFtdVkxenRUbE9QNTVYc3hNRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439218),('EquooVHpAAE14YSwQrBDQ7rZTSsCsfS8qxSgOETN',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0pZanN5bkZyUHpZc0pDcTlxZ05WdkJaTDB6QUdZQ1oyb0RhSTFtZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439280),('erA50T4jbMaSeT5u8c6K91MCRTdq7VPauRGcPTGB',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicmxVRnU4MWt2NHlFNzl4UmkxTzJHTGdsalE2ck1uQk05eTdNRTNlWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439082),('EtK4bfprL4z3Gqicjgl5Kj91wtEPjaYEPGR5BNKG',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidkc1T01iZ3JnREtES1c4VVBSVU5wOUlkMTBlRUpxaFBvWUduZktEUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438510),('f35xLU6gJ9W4tAYQfmsE8qEJA4AQ2z3AqvW7XVbw',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiejlEdXhzQ3VkSEtPN0xIOEFiYkh3VVVSM21CeTZiMW5xcHV3M3hiSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438309),('fQcXQ5OLmhVlUt2q1O7eazuQ857X2UUVZ9JHofTp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoic0FvWEhDU3AyQUt5VmxnZ2dHWFpwTTRMNEl1SXg4OVg4cE9uRUtsViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439398),('ft7nod7cc3EchWTyzhbU8LOg9rqQsPep3sZCtnNE',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1FuaDdqeTdNTFZNTHZIVlJWVHp6dnNWbm51VXRFM0UxNk1yMEgySSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439132),('gAmTGtVNfXqQZ3MgF25iB7On9dgaxUtsLeJPTDkB',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2cyaU56NmhRTVg2djRVZGZNR3Z0djg1a2MycUdaS1ZTNTRRaE5MciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439305),('Gi0dZ3LvoeOWK3d2xRpT5h2VjsrDFwOp0T59LrLN',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnZXNUdXMkxzY3RxQ3V2SWFVZjRQTFFpS0R3d1lFZmpRSjFjTnlNbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432194),('gJfAMI49UsvnT1JfTg5GPUnvb9TEXZhrcscvAe38',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEZxWGZ1bE02bzFvY25Ca0VzdUl6QUh4U0FwT2pFa0RJS21LamdIcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433516),('GOMT4hs6gptTxBZ4zRARtSCgl4bIFVPWrNfeVidT',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkM4WEcwZTZVN2lMbDJQY0tkOFhEMHh3SnE3TVhoTWsxQ0lpWDlUZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431987),('gqnf8ABdlZonE2AxZGBoiFmIu0Z43Vj0ebSRCmNP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidWN5WEUySU5YS05jamgxaUVDVjZDRk5SeWJBckpSSU1IakFVbTZEQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439322),('gXrzZFMKYLDPWCNsN0nFC3YVVzO8XrDNViVUnzPP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnlmd3YwSTducGFkS3hhZjl3djlRSHBuTzExOFRJTFA2dER1M21HYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439078),('GZffclIl2pzhKqEn9JkvEhVL6kQIkhu8nBm2bUeI',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ252eU4xS0FHWUo1Y1F1RUVRN1c2N0p1eVJBQU55Z2Y2UlVpVlhHWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679436031),('hGy5M4goehPvJ2wSFjuHOZ2bmOuD1aLrRINtGVcq',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibW94akRRZVcwMW5aTzEzVDdHM3R6WDN4RWFBNExjOXp1YWRpd2xaaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435844),('hRDaaFp9W1mAQkSPvrZ4CrMfmvOd8kR9vlBSsohE',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiS1lnQ3R1VjQ1VXl3cVRRclBaMkxQNXFsMkRNRlBTVHRudUJaRXdyOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433603),('hxHFfeHd1dui58KU55rUQT5iUePPc6q7EdOW8QcA',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoieGswMzhXdXpBcE5ubXJkelRkV0RRU00wZzFMUGtqd2NGYnFscDNMciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431950),('I6Cy9aLyznfr17iP9fD4jTjkBmNaYnIATKS0uqI4',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlZJVzRrMHhjdnRyVnFnd2s1UjdXMHprd3RocEwwU1pNYldoQXZzOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432889),('IgPPU9SRPQdzFKeaNEOMvM4onXVIb3eTyAC6mA7O',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkswVjJDbXFhYmw4M2o0bUgzMHBIaWZaS1BYNHh4VFFXdFRONXgxRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433858),('InH55RjECG4SLihUPOgowgeoFEqbU1QhaYucSFuq',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXYwTEx5MUgyMFRNbVFCUDd2aDBscGgwcGxveDI5TGc4RUREMWRmVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437041),('IxiOZGCx02Gb94EMEUKDJORJQSCkne8FPqsHL06m',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkY5WjkzU1UyN2IxcG4wUE5Fb1k0OHo2NTB0WXo1UENxYVNYY0dOUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438491),('izLEzNQNPuKLW0IhP7dRfOaIfotAYowj09E9iSwd',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQzVqam82VVlZVm9LczJieHVqcVF4SG96THR2encxSndlQWhGMlRlZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435405),('J0OUh8VRaznV5At7dWaR2AuJLNtKqp4lzyhbEV12',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmQ3TENzaWZpR1lqUExRQ0NhWVRtaG8zVEZXUEw3cjJKN3RlT0JzdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438256),('jap69K8p4H3VvpkUu8uvWJjTTQxuvZDGmLsUsvTX',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTVuUFNxQnRMaWRnczJmbmpqc0pmekRmb280NjNHWkoyMWVDZ3BuUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437478),('JHPxrD7xzJ05EZld3iMYC5LaIvtC90fi1rO2r4PM',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYmRnenZLVmM0SHduVUFyZ09WZ2FpOVpJOGxaOGR5QWlta3RseWN4VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437411),('Jml3spZNkjqCCaKsd1oidVPyFR2AMlh7L5SUgsCU',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUEoyWWNRcTRIYU05VGdTZFlEUDVzeDBqbUdJRnI0RkNTbzRiN05FTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437035),('jS30s6jQ40MrtxXrHxYfUNR6akzmKT2zw7ZyiZDP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWVZR2VNUE14bGFrdmVBbkJLcmNXVDZ0QldFek9VOWFQVXFLbjhYRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438560),('KBteqS2GcBPMLCDkC5hozgeQS6RqBd3DIgBifcDP',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibUFrek5YTktkaFpROXF0d1RQNUV2VmREMW9NcFVCUmpxOGZBRHBobiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439410),('kfOyo65yISLu1lWdpJkMdMKjO1nXdLg7k0JRnoM6',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVBHbHp1ZnZvS3ZVanlsSUpZTzY1QVVIV2I3azJ3TDJRZGpiYVV4UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437987),('kjXxuVUbeMr80f6Dc93GBtJ8mfyR1PCQ5eU1Dv9s',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibW9OcjVFUFJKdU9JUGd0eGFsenNJZE9aRTVnOFpUc1RSRzR6OExqUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432048),('kPtEWLPQSjx6T4hLI72KkGyb5GIFNvfDuSfXdpHv',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHZqc2lkRGhSdnpEcDJKdXZERkR2Tm5uazVINEpjTHg2aTBrZ3NJRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679434876),('KuiURpvVJ3dpdHt6WhcqqxlbwmHTSDNyyPBYMe2c',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmpKQ2M0YkU0NTNJSHRRdVJ2SVN5VWE0cmhGQmNxb2VrRUNkSDJOUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439288),('Kwzf98cGP1W4cUA3vfipVZfwfbyqNonQbWtCEgR6',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RCV3BPZzNOUFJibGpZdHBwMEEyQ2lNTXhVN3NEbVAxYUVYOVVvbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433872),('kyOSgOdCnqYXE7VUzYMCQ4ruM3juOgeEHG0IuOLh',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjRsN1lwb0pFRGJJTzNYbDFoWjFDSzVhM2VYSUtsWGhEMWFINmxJZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433865),('l5fuNsvFBg3Rk4yo2pgJnjI6cTYlnIcDrPpgG49S',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2ozaHF4TWZWSHpDeHROazhoVHkzVnJlYjFpQ0pVbnN2TzFZN2VsVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432800),('LiAud7TKgQkPEmeRHEcSLzog3h0cJZe0nuwJb49i',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia0s3a2w2RnZrSmcyWG53ckUwUllUN3NNWUczWEhoVEJoa2RWQnNOSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433188),('lLfk5nXEBeSMaGrpjdqgMsUABfZdC7Bcc67itJTU',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0hXeG9GNW1wVGhtWjBOUTNQRXZ1c3Z1UktEMHc2dWhvSTZsdm1ydCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437493),('LtsTef9eez6AIgF3RvRhRKSkcHKZYJbgIfl76G4J',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlJWNThyVDNkUFFKZW94NzFXbTJJdU84QVc0T2libm5JR3lVamRIZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433675),('lx6NY3vVjhsXSULrfykMtOd3xDt2VdGWc8SSBr04',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoib1ExQ1BYRmwzOWc0RWJxc0JJZGhlT2ZsSEdDT3N0QzRDUXdkWVNESCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437704),('n7C2s9xaSAozkm3aWKZtoOoRGNO0ENQeizNni9a9',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEZpVnFuazFmekRWbnlpOE9FQUFLalc5SHpwZEx0YjliSnFmeFpuVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431920),('NOp3Tz5ZJwiSAEM3Jch8xojhWj0dmBy8NvGOeq8T',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSkxrQ1p3NXJSZWsxdkJBOGdMdFJJSXF1OWg1SUd4MTJaZ05IYmNYQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439348),('NWqBT0fkrdBBgtv9g9bJfhbKCZJSIAqq1jJbsjQi',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHc3V25rY3o0NEd5WnlDVzRCTVhWUXREQ1NmejhHUUJNenp0Tk5uTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437017),('NzqHoFM8XVSoduubmK9rLL2vVSHAkjpEYKXzT9uH',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTlF6dEQzOXVXYWZNQnJsaHRoQ1E0TFduZmk1NFFqSTZiNm85VkJTeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433755),('O6kVkixSZJQ7WyxOjYyDkWyYDeF173eO4f4l1wv1',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGJ2ckNpWWI3dkJ3ZjhaZWdCQWdzRGRUaHNSbkx1WEpkM3N5ejUwRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432812),('OPke00RoOZhowHpulm9Fd4uVu6saf6O3tfcupXiz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidW5vQ2hWN1RKM0RKS2p5bEdrQ0RJc0FwR005OUJQOWxYVkZtSWJtaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432885),('oVzSa3tJeSDizMebd32xVN8CqFjju7HHaFoD2teT',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicldHR1k3eEZNZHhzRllqaTc3Y081Mmx2QUZ3U2lrczk0aDFNRkVWZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439103),('PIFkW9OLxsnY3fhNUMh17rjCgp8iANVM9MqdHQCQ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjQxSDQyRzJtM2Y4dHR5NnJjUkhkYVM0akZ1RGJtNERmdFdBb05QUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433613),('PJ7Yxwg5NPfkKeWw65frbwJtCZCkdi7CzygdmiGb',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidlV1VjRzb0VIbjl3NXV1eVR5S2RQZFljaG5zaG5TS1ZkaTA1dzNsNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432877),('PPWXd5ef0kjLTx7FE3zF0ZIzcyiRG6xDGGzTG2ti',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoienJVd2pYNnRBa1hSbndTbXRmRWhNOTFuSWFudk9CVFZ1MEQ4aVJPTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438316),('Pw4tb8Nw4489ZVTKri72eNqwACwMgokIuIWwNc1C',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia2ZsZXNjaGJRVjhvWDd1Qlkwd3BhVzRLZmJ3dVh4eU5mTEtyOXZHZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438197),('PXKmbAnUqvdlDJq20uhg6MB4YiVgdZktTg9WylYc',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RKTXNwek5GM0E5OXFVYmJrQkVnMGVTbTY0WmlRZE4xN09Xd3pDdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433882),('pYo9eIDOEyPBVhlRkpCxwD1yAOSmiS6T8pPPzxzA',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidmlkSGFFaWlsSlVmN01TM1g0YTk0WkJOM0ZHQ2d0bTRFeUhsT1N3cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439284),('Q1l4QiXS3zDKJVTDtPCsWKTtBnjktOCV6GIhOGQ4',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3I0bHR0WG5nejlrcWhKcUREY0V4S0JpSkJudjNmYTZWdnA3VnZocyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679434886),('qEJUawRUopQWsPUciShe8a5OzgpWZATAR3KZKQ2T',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYndHdnlNbmxHOXh4ZVhFQksyZ0g1OGdselVwZUllc01lTXdPYnhWcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435831),('qqxmM4NA1ghYcj7s2T4S6sD7UfkocXMdjVd0cQpu',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmswR2pkUU5ZWGxUd1l4Vmswc1g3VnVSRWZwM0VwT1NHMUFsRVl5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439414),('Qu4m62JhACLzVGMHEawS6e4fGWcYH0HKP28sYTbv',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoic0JHSlhhenhGOFlMWGFQY0JiWkdmemVaS0liaEF0aWt6ckdKcWNhRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433879),('r4Wq0GDX9Spr4hNxxg5PIbkpLtzbudI57Bwi1LOm',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjVwNkdGUUpTNE5xM3FYVE4zemV4Q2p5b081c2hHcGtNN1ZkVnV5USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437451),('RAflcGHynVyoyCFnD3m881qia7vyhywr2wTWtDJr',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUXdtOVBoSllSZDQ3dGRENWNRWGJQVGlqaURHOFl1WDBETkN4NmxNQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432042),('rgKX07U5DuyIOMRmtn1cXlXK3jymAptvrUmJVJXi',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ252bVVTN1RtS2gyNWVldVpXMVdBWW1ZM1lGMzZrV1huWlZhRmhHayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433646),('Rh1VAjUMAnTfFz4tJhFkacdhMTEXMngptoLYZNDh',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTVrZjcxUnZmN1M1d2V3d0dndnpocEtXTzRESjNBbVRTaHZwZFFaSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438323),('rpsIw24ewyVTaeLk9cI2Xb01e5lLX5bjgo9PQ9FW',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmxNWFFvbnRaZ1NmS3lBS2tCbGJmYlVPUzVMWW1yRU1rTUZCVlcxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435402),('Rv7FtQ2ecGxgIsLUfjUG7TefENy97mazf50fov6N',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibjFsVW5xT1J4NXBRMFUzNnZ2dkt5WmlsSEJjUEZVcHFiQml3NmFRNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437406),('RVs0b9SfWatFBqTglMqljFc1HGOTYfm8NfzUvldm',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVpqMHJDSkZSNFE2czl1ZmlMZnJFN3VxTmxrZkxjNHQ2WktQcXFOSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679434893),('S9eVHTEXbntO5wrbzROSfITIVjDH3RHWZFUk4GAz',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVVLQWpOQmVZMlZaNHh3QmdxcXJnSG10NFpGVnpCbGdadlQ0REF2RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439381),('SD801pJkXYsWXSODQE4DkpVsB5xTa1lw3ZuB0Kdt',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjB5SVJlcW5SVTBVWW0xWWRFZXdEVE9QODN1Y1ZJcXRkdENSRnhuZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438505),('siwS9zNpfKwWy1pxkW0GoolMFbly2ThIy8xbavBd',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUFjRTVwQzVmUVRia3YxSWVyV2xZSURuSlBIYURTdlROa2JWRWw1VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431953),('sOFll1VXLPouhvzobv03it98XdLtEI4wlBzUNMaI',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiczdQYzloa2xEOWhYNTNUWEMwalhVOVBXRG1VVWVKeWpYYXlYUjBwVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432221),('sr5Jx7ZyS7wOVBWJpGgcDdS9j5zhEm8kotzGZW8h',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia0hoUE03dUtHbmg3cnZNakdiUXl1SjRWcnBqbk9XR2xNS2lvclZ3OCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679436333),('tcS7q5wVUNzCzeyGykHUrMOPKinD5yMHYJMIFp44',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoidlNodThPZjd1N21zTnZtcndlaGFONjh3SzViRndYd2ViNGpoRm1SdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437693),('tEsWssxf8XvsOUF0sEoT5ADtLoaxliWf0Y8fqGaF',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiMkxZbVlNbDhsTGtKd3pyd21QNFhWa0dWZ3I3RTdlaDVpQnZMOWY2NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435399),('Tf9b7YqHX5vqGmlbbPuWzcmvbPbOq2JUU7FdqRUo',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkFkZE5YMGZCY0VzTVgwSnN3ZUNDWDFaZFIwZEs4MXhOb3poVUp6biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679438319),('u9Nxosn5ZE6RGou5lg3Y5IcLKeOVlbNkHGXXm1H2',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicWNZaHlqb3BiQ0dMNzlzSGNxSHFYVVJzb2JuaktneGNTSjhMUG9CdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432197),('UAA1qspkCwhFncd9uYVfa9unI0HGeFfa8HhYN4ZH',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHJ5TjhXZDJRNVVBRDhWVzdjT2ZPSGdic0RMQWM4cjJ5VkJrUm0wSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439317),('UblbLf32FZCyiCiSmOMPXR6UtnKu1Ux8NUlcSw2S',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibzdJN09KV0kwdkMzelZGNUN0VzBrY3NvOEl0Zk00YVFIZWUydVh0TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433844),('UhEmviVrK2IyWGVYXT5ZRjGRQxC4YCVCodFodcKp',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1g2SHdQTUU3NlpCS1FYTm1hNmtDMUlYZHplR3VlNkxMckZINXZVeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433498),('v9g3x2psgjaoquCjIRWqrgt6mXTBc6EACIkwvSob',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2JmVGFSclZ6MkNCTjN2TnlaalE2dTJmeGRuZ0c4TGVYUGhkeTRFcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432216),('wB4FUjf2XE2KpTsYRm5nt7d8bBa5CQGhFO71n6Ws',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoibjlFY0t0VVRrMWZ2c0lPQVBTaGRXM1VIMUlBME9NSXRuN3RyTGllYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439302),('wEBTRPWEloz4pMgN9rQNLXysFY9XOjQtNCw6L2eL',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRVZ4MFE5c2JnWEtLN3AxMnllOE05bVhiVGtwazlOb3huWEdOQnRobSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432231),('wT1jvjs01SFg1JkdcgzlKEKseH5et5OSEUyvbYvn',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoianU1YktYM1ZOdTdWcGlROFpWY0xVR0hGU0FnUEl0Y2pLNm10YnlSSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439429),('x4Obvs3kZDCPQ8C0RWpvzf6vmJX7D3E6nbILu1rw',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDhYeURnQ2RoWkZiT0NoN3RoZ0RBb0dwcHRGbmdRYVBxRUZ5b2tRcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435653),('X5r02ec92Ocf0bpRsubpavp2fjGR2mPfTgQyDOU4',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoicFptbFY2NlZjZGs2TEN0aFdneTNXd1hCN0lEM1BHcHgxYnI1M0FvYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439344),('xgWnLnzWn6iyjjMJtck3nbEZwkMukpV0AtuYo1wX',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmQ3dkk0cGtVNWRBWFQ1R0VlUzB3bmRCRVRIWDVHT01FUFdZMWJ3TiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679435635),('xPbCSFjPCIg4R50NOrGocJDRp3XmVp6b9onovQP9',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWc0Vm1tTWF6bW5NdHNKcWZQcFJPbTZoZmVhYnRTVU5lNER2a1hCRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437030),('XRTV9o4n7GMgXu2N9oJPO68PsUr8ae1Un8Yuqh84',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXI4bVRndWlQenJZalZQWXEyeFVIckNpS0FoTEF3UmlkbFEyYWtkWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431744),('Y12wX1w0YYueXunQO1uQGxWECjL6geyWgYnS5J6J',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFhFM1h1YTF5N01QTldxWFBEcDhqR2pqOGRpRlQwaUpmWEpCemFZayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433608),('yb0Cna0C1zq30TD4n4X63ZI6DvmRurxjvcmHu3rK',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUVY0VnBnTERGYjNTTzNuZVVOSXJzd0NVYnFmYXA0eHRIaDdUYXY5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437383),('YGJ4CZJpfrrcA8mCb4Ca2qeREW2bSop5G5SVScuE',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNEtuSnJCRGhxd3pPM1loZW5oWlFjVWFSTWt0dXlvTWluY1VKYUtaRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431962),('YMWaPakHYRTmjA8HpdxtXGvf6SyRZjMzAqzrXsWh',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTdhd0NXcTM0cDdMWml5SFptazJtd2xPM21LRjhqZ2UxS0Vpa05nVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437380),('YNsKoqmqsGSgtDCZRp9gWMZSDZtJQHPvcuvIIzOG',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWtzRDJLNXJGc3ZLUEZrTnI3aW5zQktEakczdlNyZjhCU1pBMTJaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679433923),('YRS3dEI2pXXPWsVz6tTOUHwGLbLbUNEPWswcSjfi',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoib1c5R2hsSlE2NVJ1cUtCWWJ3ajZncnZTZG83SVBzSzgxeFVKNXp3SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437398),('YSOTeE91hpOcGNvLXYJsHqT39SQUyVPcsOt4DJk3',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR2lScTJ1Z3lDcTQycHdOTm1KazJhSko2YkV1N3BadHdXN3ZpR2EweiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431287),('z0uAAO2OLiEDJt9d51czs3bQful8lEYcwIPp3kr1',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEhLekZONkRtcktXdVVkRXpnRFd6SW9OS1JUMmZ5NGNydUtoNG5MTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431914),('Zez2EjnPMq6aW13Tp9NCiHiQSXhakqcx6rVFXEUQ',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0g0MGJPZ3F5UTRGdXJSY0NJUVVQcW1uZ2FqTFg5YktwY3lEbGpMaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439330),('ZG4FCH6hqcjOcR9tkS7BlVim7bUnlExvdQtpoFla',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHVxamh1Q3BWaERha0tqbGpFcmFMYkJJV0cwZTM3WjBjeE1lTjVVTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679432808),('ZgH4ibXlzbqgjZDmhNX4HfWF4uOSUAr7KrsG0Ojx',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTVgyM2dwVm1MM1psRTZMRXQwVWhRNGFkcDFob3h4TnZmc3BpTFFociI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431958),('Zj7EtQRmzDedFd4LyMc4Mkieq6YfZCIxylROq5dV',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXNUZEJiWTlrRDRqS28xVkNoVHllb2RGSVZZME5GUnRQZ1FYVmYwYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437369),('ZsZcicWmkWVCPkpjHz3QxGvyriqfaE9MrrKxKzA1',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoia2E0V2pIVnlBMDQ1RXd1QUI2cHF4Z3ByMGNrODJtbzRnOU9UNnNwciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437006),('zvsGdsQBqsa70sm9ruOuqOuyXCEUJoGjBq6QTGIf',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0lmOFlJYmlJU2Rtb3E0NWVWUGRFQlZ6SVh0WkxIa3FVZmtVYTZnUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679431797),('ZWUMTUbXgXAnHSGFkPDRgrfHmFVYxrCJXQn4ECAq',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoiV1VoV0tjOUR5c21KRkVrTk5FcVVxRGMzbnV5dm05aEZwR3JSYWdVdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679439293),('zxXustAgWJfy4PK4yn1jBQ5aQD044o2ykfSn6wlM',NULL,NULL,'','YTozOntzOjY6Il90b2tlbiI7czo0MDoid3lnZ01pb0xXM2RnTzFkeDZXMkpOU01oZkN5c3cycWJrT01rZXFTdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1679437622);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Camden Cervantes','ryrinaqixe@mailinator.com','2023-03-12 06:20:58','$2y$10$zwocbsW4yunJC0cJ3y9a4uAFO8N5n1T9HUr8RM/0SuslrQZjBnMMy',NULL,NULL,NULL,NULL,NULL,'profile-photos/O4BzB96dyk0C838L6rtRCWzOzwEwHDTD2NsgH8R1.jpg','2023-01-31 18:55:09','2023-03-12 06:20:58'),(5,'Hadley Villarreal','juhep@mailinator.com',NULL,'$2y$10$VF00ve0Zvy1rTaoBeZ9dKudQEsA8d6vOFco3wjRd3ty2D1G2OOqIi',NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-15 21:48:20','2023-02-15 21:48:20'),(6,'TaShya Woods','huqinocod@mailinator.com',NULL,'$2y$10$Q0pZsKNdgGEp7uToigPiw.u1IrEbZx6DYYUj9l8iiBA3TNR/VEyIC',NULL,NULL,NULL,NULL,NULL,NULL,'2023-02-15 21:48:35','2023-02-15 21:48:35'),(9,'Kimberly Montgomery','hocykuriw@mailinator.com','2023-03-12 06:17:24','$2y$10$WNGj67GkJkhoH.ND8JIasOw4c92bc5R.7WgaZMihHXEikUCj3eCQW',NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-12 06:16:44','2023-03-12 06:17:24'),(10,'Rafael Frazier','papecizemu@mailinator.com',NULL,'$2y$10$ohezoIcUqI.WOtMG7G4KAezB3J4toZG2d9TQ2rVE8sp32GwZW2wqa',NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-12 07:38:08','2023-03-12 07:38:08'),(11,'steve jobs','nnaemego22@gmail.com',NULL,'$2y$10$3X05CSu59nW2Rz09vyyBW.srfJu0Sju83ENfCiQymnfJOciruKxUO',NULL,NULL,NULL,NULL,NULL,NULL,'2023-03-14 10:57:53','2023-03-14 10:57:53');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visa_applications`
--

DROP TABLE IF EXISTS `visa_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visa_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `visa_applied_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `visa_applied_id` int unsigned DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `pob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `purpose_of_travel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `travel_dates` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `itinerary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `employer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `education_institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `family_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `family_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `family_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `previous_travel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `health_information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `criminal_record` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `financial_support` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `university_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `degree_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `academic_transcript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `acceptance_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `destination_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `duration_of_stay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `hotel_reservation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `employer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `employer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `employment_contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visa_applications`
--

LOCK TABLES `visa_applications` WRITE;
/*!40000 ALTER TABLE `visa_applications` DISABLE KEYS */;
INSERT INTO `visa_applications` VALUES (1,'Employment Visa','Camden Cervantes','ryrinaqixe@mailinator.com',1,1,'Camden Cervantes','B94856f783','2023-03-09','Sed deserunt aliquid','germany','Sed deserunt aliquid, Sed deserunt aliquid','956758555','ryrinaqixe@mailinator.com','null',NULL,'Sint pariatur Rati','Sed deserunt aliquid','NIIT','null','HND','Quis eum tempor amet','null','null','null','null','health/1678434420.pdf','No',NULL,'null','null',NULL,NULL,'null','null',NULL,'null','null','null',NULL,'null','7873cb95-bd79-4f80-884a-72ff11043155','U1gZhhqwPE6VLT4j3AZhuhaDaQCThKq9jUA0PObc','2023-03-10 06:47:00','2023-03-10 06:47:00','Male','Germany',NULL,NULL,NULL,'20000');
/*!40000 ALTER TABLE `visa_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visas`
--

DROP TABLE IF EXISTS `visas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `visa_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose_of_travel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_dates` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_travel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criminal_record` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `financial_support` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `university_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_program` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `academic_transcript` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance_letter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_of_stay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_reservation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visas`
--

LOCK TABLES `visas` WRITE;
/*!40000 ALTER TABLE `visas` DISABLE KEYS */;
INSERT INTO `visas` VALUES (1,'Employment Visa','full_name','passport_number','dob','pob','nationality','address','phone','email',NULL,NULL,'itinerary','occupation','employer',NULL,'education','education_institution',NULL,NULL,NULL,NULL,'health_information','criminal_record',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Junior web Developer','Meta Inc','meta verse, new york, USA',NULL,'on','f695c558-70b7-4ff5-958b-673084af2fef','TsV576EBfhCE04g0NvRzcLLgSVeoBgi9fpqczFRr','Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem, sit maiores quia incidunt officia repudiandae consectetur aut nostrum laboriosam cumque reiciendis doloribus. Nostrum at eligendi aliquid veniam soluta sint? Quisquam suscipit laudantium animi maiores consectetur nemo veniam porro beatae, esse reprehenderit, deleniti aliquam maxime facere, vero odit impedit commodi dolorum facilis ducimus accusamus magni ipsa? Consequatur ad similique rerum blanditiis pariatur facere dignissimos ut id. Reprehenderit, nisi adipisci. Quas quam sunt ut aspernatur maiores!','2023-03-09 09:52:10','2023-03-09 09:52:10','20000','Germany',NULL,NULL,'contract','gender'),(2,'Employment Visa','full_name','passport_number','dob','pob','nationality','address','phone','email',NULL,NULL,'itinerary','occupation','employer',NULL,'education','education_institution',NULL,NULL,NULL,NULL,NULL,'criminal_record','financial_support',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Teacher','Oxford University','No. 1 Raius, 098CX, Brazil',NULL,'on','02d81fd3-84cc-4e55-b40c-c9039c58c43c','TsV576EBfhCE04g0NvRzcLLgSVeoBgi9fpqczFRr','Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem, sit maiores quia incidunt officia repudiandae consectetur aut nostrum laboriosam cumque reiciendis doloribus. Nostrum at eligendi aliquid veniam soluta sint? Quisquam suscipit laudantium animi maiores consectetur nemo veniam porro beatae, esse reprehenderit, deleniti aliquam maxime facere, vero odit impedit commodi dolorum facilis ducimus accusamus magni ipsa? Consequatur ad similique rerum blanditiis pariatur facere dignissimos ut id. Reprehenderit, nisi adipisci. Quas quam sunt ut aspernatur maiores!','2023-03-09 09:54:40','2023-03-09 09:54:40','1000','Brazil',NULL,NULL,'Permanent','gender'),(3,'Student visa','full_name','passport_number','dob','pob','nationality','address','phone','email',NULL,NULL,'itinerary','occupation','employer',NULL,'education','education_institution',NULL,'','','','health_information',NULL,NULL,'University Of Zurios','Computer Science',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'on','5e389b99-b699-4691-949e-c79d104d9949','TsV576EBfhCE04g0NvRzcLLgSVeoBgi9fpqczFRr','Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem, sit maiores quia incidunt officia repudiandae consectetur aut nostrum laboriosam cumque reiciendis doloribus. Nostrum at eligendi aliquid veniam soluta sint? Quisquam suscipit laudantium animi maiores consectetur nemo veniam porro beatae, esse reprehenderit, deleniti aliquam maxime facere, vero odit impedit commodi dolorum facilis ducimus accusamus magni ipsa? Consequatur ad similique rerum blanditiis pariatur facere dignissimos ut id. Reprehenderit, nisi adipisci. Quas quam sunt ut aspernatur maiores!','2023-03-09 09:56:46','2023-03-09 09:56:46','1000','Croatia','Master\'s Degree','2 Years',NULL,'gender'),(4,'Student visa','full_name','passport_number','dob','pob','nationality','address','phone','email',NULL,NULL,'itinerary','occupation','employer',NULL,'education','education_institution',NULL,NULL,NULL,NULL,NULL,'criminal_record','financial_support','University Of Canada','Economics','academic_transcript',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'on','58445b31-e219-4954-95ff-1cc7b3b302a7','TsV576EBfhCE04g0NvRzcLLgSVeoBgi9fpqczFRr','Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum sapiente fuga ad dolor quod architecto excepturi odio nulla mollitia soluta obcaecati rem nesciunt, nihil provident veritatis earum illum recusandae cupiditate nisi eum dignissimos est! Exercitationem, sit maiores quia incidunt officia repudiandae consectetur aut nostrum laboriosam cumque reiciendis doloribus. Nostrum at eligendi aliquid veniam soluta sint? Quisquam suscipit laudantium animi maiores consectetur nemo veniam porro beatae, esse reprehenderit, deleniti aliquam maxime facere, vero odit impedit commodi dolorum facilis ducimus accusamus magni ipsa? Consequatur ad similique rerum blanditiis pariatur facere dignissimos ut id. Reprehenderit, nisi adipisci. Quas quam sunt ut aspernatur maiores!','2023-03-09 09:59:02','2023-03-09 09:59:02','2000','Canada','Post Graduate Studies','1 year',NULL,'gender');
/*!40000 ALTER TABLE `visas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23  3:00:12
