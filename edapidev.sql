-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour edapidev
CREATE DATABASE IF NOT EXISTS `edapidev` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `edapidev`;

-- Listage de la structure de la table edapidev. failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.failed_jobs : ~0 rows (environ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.migrations : ~7 rows (environ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_10_24_100519_create_permission_tables', 2),
	(6, '2022_10_26_105209_create_projects_table', 3),
	(7, '2022_10_26_113229_create_project_skelets_table', 3),
	(8, '2022_10_26_115112_create_project_skelets_table', 4),
	(9, '2022_10_27_094331_create_project_skelet_touches_table', 5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.model_has_permissions : ~0 rows (environ)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.model_has_roles : ~2 rows (environ)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(2, 'App\\Models\\User', 1),
	(3, 'App\\Models\\User', 2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.password_resets : ~0 rows (environ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.permissions : ~15 rows (environ)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'gestion-panneau-de-configuration', 'web', '2022-10-24 13:48:24', '2022-10-24 13:48:24'),
	(2, 'gestion-logicielle', 'web', '2022-10-24 13:50:47', '2022-10-24 13:50:47'),
	(3, 'gestion-profil', 'web', '2022-10-24 13:52:47', '2022-10-24 13:52:47'),
	(4, 'gestion-coordonnee', 'web', '2022-10-24 13:53:37', '2022-10-24 13:53:37'),
	(5, 'gestion-du-projet', 'web', '2022-10-24 13:54:05', '2022-10-24 13:54:05'),
	(6, 'gestion-contexte-edition', 'web', '2022-10-24 13:54:40', '2022-10-24 13:54:40'),
	(7, 'gestion-des-articles', 'web', '2022-10-24 13:55:43', '2022-10-24 13:55:43'),
	(8, 'gestion-workflow', 'web', '2022-10-24 13:56:25', '2022-10-24 13:56:25'),
	(9, 'gestion-audit', 'web', '2022-10-24 13:56:51', '2022-10-24 14:06:01'),
	(10, 'gestion-atelier', 'web', '2022-10-24 13:57:09', '2022-10-24 13:57:09'),
	(11, 'organisation-des-articles', 'web', '2022-10-24 13:58:03', '2022-10-24 13:58:03'),
	(12, 'gestion-des-ressources', 'web', '2022-10-24 13:58:44', '2022-10-24 13:58:44'),
	(13, 'gestion-des-types-de-test', 'web', '2022-10-24 14:00:14', '2022-10-24 14:00:14'),
	(14, 'gestion-des-reportings', 'web', '2022-10-24 14:01:20', '2022-10-24 14:01:20'),
	(15, 'gestion-des-archives', 'web', '2022-10-24 14:01:39', '2022-10-24 14:01:39');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.personal_access_tokens : ~4 rows (environ)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
	(5, 'App\\Models\\User', 1, 'user-auth-token', 'e21997c1f498a23aea8ff12732963177a0a8d9f03430bb8ec81c3cbe585975f1', '["*"]', '2022-10-21 16:21:39', '2022-10-21 15:44:36', '2022-10-21 16:21:39'),
	(6, 'App\\Models\\User', 1, 'user-auth-token', 'f847a4c6d1e4d211db689d014a98ad2af8edab16bb88bbb1958e5e2f42e564a7', '["*"]', '2022-10-25 15:41:31', '2022-10-25 15:40:54', '2022-10-25 15:41:31'),
	(7, 'App\\Models\\User', 1, 'user-auth-token', '79295b91fc7f15bb4f67b53ed1177dd48791893e96194bc850265a27db12f25d', '["*"]', '2022-10-26 09:12:30', '2022-10-26 09:10:34', '2022-10-26 09:12:30'),
	(8, 'App\\Models\\User', 1, 'user-auth-token', '412a4a52d698c59b51cfc411648696f007b4a8db60b3f883c71e18bebfcf38ae', '["*"]', '2022-10-27 11:52:51', '2022-10-26 10:03:00', '2022-10-27 11:52:51');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `projects_user_id_foreign` (`user_id`),
  CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.projects : ~2 rows (environ)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'GnadoeMag', 1, '2022-10-26 13:15:59', '2022-10-26 14:44:11'),
	(3, 'Kpakpato Mag', 1, '2022-10-26 14:51:08', '2022-10-26 14:51:08');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. project_skelets
CREATE TABLE IF NOT EXISTS `project_skelets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jargon_meta_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jargon_meta_key` int(11) NOT NULL,
  `jargon_meta_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_skelets_project_id_foreign` (`project_id`),
  KEY `project_skelets_user_id_foreign` (`user_id`),
  CONSTRAINT `project_skelets_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_skelets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.project_skelets : ~2 rows (environ)
/*!40000 ALTER TABLE `project_skelets` DISABLE KEYS */;
INSERT INTO `project_skelets` (`id`, `jargon_meta_value`, `jargon_meta_key`, `jargon_meta_data`, `project_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'Header', 1, '<header>\n<h1>GnadoeMag</h1>\n</header>', 1, 3, '2022-10-26 17:18:19', '2022-10-26 17:18:19'),
	(2, 'Header', 2, '<header>\n<h1>Kpakpato Mag</h1>\n</header>', 3, 3, '2022-10-26 17:39:44', '2022-10-26 17:42:55');
/*!40000 ALTER TABLE `project_skelets` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. project_skelet_touches
CREATE TABLE IF NOT EXISTS `project_skelet_touches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `old_meta_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_meta_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_skelet_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_skelet_touches_project_skelet_id_foreign` (`project_skelet_id`),
  KEY `project_skelet_touches_user_id_foreign` (`user_id`),
  CONSTRAINT `project_skelet_touches_project_skelet_id_foreign` FOREIGN KEY (`project_skelet_id`) REFERENCES `project_skelets` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project_skelet_touches_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.project_skelet_touches : ~1 rows (environ)
/*!40000 ALTER TABLE `project_skelet_touches` DISABLE KEYS */;
INSERT INTO `project_skelet_touches` (`id`, `old_meta_data`, `new_meta_data`, `project_skelet_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, '<header>\n<h1></h1>\n</header>', '<header>\n<h2>HIee</h2>\n</header>', 2, 3, '2022-10-27 11:21:47', '2022-10-27 11:52:51');
/*!40000 ALTER TABLE `project_skelet_touches` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.roles : ~7 rows (environ)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(2, 'god', 'web', '2022-10-24 11:15:35', '2022-10-24 13:25:08'),
	(3, 'super-admin', 'web', '2022-10-24 11:17:15', '2022-10-24 11:17:15'),
	(4, 'admin', 'web', '2022-10-24 11:17:52', '2022-10-24 11:17:52'),
	(5, 'directeur-publication', 'web', '2022-10-24 11:18:19', '2022-10-24 11:18:19'),
	(6, 'redacteur-chef', 'web', '2022-10-24 11:18:48', '2022-10-24 11:18:48'),
	(7, 'redacteur', 'web', '2022-10-24 11:19:01', '2022-10-24 11:19:01'),
	(8, 'secretaire-redaction', 'web', '2022-10-24 11:19:45', '2022-10-24 11:19:45');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.role_has_permissions : ~70 rows (environ)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(12, 2),
	(13, 2),
	(14, 2),
	(15, 2),
	(1, 3),
	(2, 3),
	(3, 3),
	(4, 3),
	(5, 3),
	(15, 3),
	(1, 4),
	(2, 4),
	(3, 4),
	(4, 4),
	(5, 4),
	(6, 4),
	(7, 4),
	(8, 4),
	(9, 4),
	(10, 4),
	(11, 4),
	(12, 4),
	(13, 4),
	(14, 4),
	(15, 4),
	(1, 5),
	(2, 5),
	(3, 5),
	(4, 5),
	(5, 5),
	(6, 5),
	(7, 5),
	(8, 5),
	(9, 5),
	(10, 5),
	(11, 5),
	(12, 5),
	(13, 5),
	(14, 5),
	(15, 5),
	(3, 6),
	(5, 6),
	(6, 6),
	(7, 6),
	(8, 6),
	(9, 6),
	(10, 6),
	(11, 6),
	(12, 6),
	(13, 6),
	(14, 6),
	(15, 6),
	(7, 7),
	(10, 7),
	(11, 7),
	(15, 7),
	(7, 8),
	(11, 8),
	(15, 8);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Listage de la structure de la table edapidev. users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table edapidev.users : ~3 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `last_login`, `created_at`, `updated_at`) VALUES
	(1, 'aleck', 'aleckbernard9@gmail.com', NULL, '$2y$10$TkMx28wUxn9d69ngFiI.EOGDmmE.I4/laBdGEfeXzzdHbPMHvF1BS', NULL, '2022-10-26 10:03:00', '2022-10-21 13:36:22', '2022-10-26 10:03:00'),
	(2, 'iw422', 'iw422@gmail.com', NULL, '$2y$10$gnSliRwDp9/qCzeCzij87u6Mnetb/4BurjY/TkPAMKcaHwjeqeWBi', NULL, NULL, '2022-10-21 13:39:46', '2022-10-21 13:39:46'),
	(3, 'ye', 'ye@donda.com', NULL, '$2y$10$DQbEBbUr7b5RAvx.DgofC./fSw1.i0t8Vn0yqArwyZebqPpohbQEu', NULL, NULL, '2022-10-21 14:22:07', '2022-10-21 14:22:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
