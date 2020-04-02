-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para taller1corte2
CREATE DATABASE IF NOT EXISTS `taller1corte2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `taller1corte2`;

-- Volcando estructura para tabla taller1corte2.chats
CREATE TABLE IF NOT EXISTS `chats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `perfile_id` bigint(20) unsigned NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chats_perfile_id_foreign` (`perfile_id`),
  CONSTRAINT `chats_perfile_id_foreign` FOREIGN KEY (`perfile_id`) REFERENCES `perfiles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.chats: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `chats` DISABLE KEYS */;
REPLACE INTO `chats` (`id`, `perfile_id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 2, 'ingeniero', '2020-03-29 18:36:58', '2020-03-29 18:36:58');
/*!40000 ALTER TABLE `chats` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.clanes
CREATE TABLE IF NOT EXISTS `clanes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.clanes: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `clanes` DISABLE KEYS */;
REPLACE INTO `clanes` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(1, 'La Farc', '2020-03-30 00:19:51', '2020-03-30 00:19:51'),
	(2, 'Clan Tc', '2020-03-30 00:19:51', '2020-03-30 00:19:51'),
	(3, 'Tu Padrino Tv', '2020-03-30 00:19:51', '2020-03-30 00:19:51'),
	(4, 'La Rocka', '2020-03-30 00:19:51', '2020-03-30 00:19:51'),
	(5, 'Hacker', '2020-03-30 00:19:51', '2020-03-30 00:19:51');
/*!40000 ALTER TABLE `clanes` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.clan_usuario
CREATE TABLE IF NOT EXISTS `clan_usuario` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `clan_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clan_usuario_user_id_foreign` (`user_id`),
  KEY `clan_usuario_clan_id_foreign` (`clan_id`),
  CONSTRAINT `clan_usuario_clan_id_foreign` FOREIGN KEY (`clan_id`) REFERENCES `clanes` (`id`),
  CONSTRAINT `clan_usuario_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.clan_usuario: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `clan_usuario` DISABLE KEYS */;
REPLACE INTO `clan_usuario` (`id`, `user_id`, `clan_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, NULL, NULL),
	(2, 1, 5, NULL, NULL),
	(3, 1, 2, NULL, NULL),
	(4, 1, 1, '2020-03-30 04:23:15', '2020-03-30 04:23:15'),
	(8, 3, 2, '2020-03-30 04:30:40', '2020-03-30 04:30:40');
/*!40000 ALTER TABLE `clan_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.migrations: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_11_200058_create_niveles_table', 1),
	(2, '2014_10_12_000000_create_users_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2020_03_27_195900_create_perfiles_table', 1),
	(5, '2020_03_27_195940_create_chats_table', 1),
	(6, '2020_03_27_200015_create_publicaciones_table', 1),
	(7, '2020_03_27_200117_create_clanes_table', 1),
	(8, '2020_03_27_205651_create_clan_usuario_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.niveles
CREATE TABLE IF NOT EXISTS `niveles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.niveles: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `niveles` DISABLE KEYS */;
REPLACE INTO `niveles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
	(8, 'Diamante', '2020-03-29 19:59:27', '2020-03-29 19:59:27'),
	(9, 'Diamante', '2020-03-29 21:10:13', '2020-03-29 21:10:13'),
	(10, 'Diamante', '2020-03-29 21:12:19', '2020-03-29 21:12:19'),
	(11, 'Diamante', '2020-03-29 21:34:20', '2020-03-29 21:34:20'),
	(12, 'Diamante', '2020-03-29 22:02:39', '2020-03-29 22:02:39');
/*!40000 ALTER TABLE `niveles` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.perfiles
CREATE TABLE IF NOT EXISTS `perfiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfiles_user_id_foreign` (`user_id`),
  CONSTRAINT `perfiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.perfiles: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `perfiles` DISABLE KEYS */;
REPLACE INTO `perfiles` (`id`, `user_id`, `facebook`, `created_at`, `updated_at`) VALUES
	(1, 1, '@facebook', '2020-03-29 18:25:40', '2020-03-29 18:25:40'),
	(2, 3, '@Tindder', '2020-03-29 18:36:58', '2020-03-29 18:36:58');
/*!40000 ALTER TABLE `perfiles` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.publicaciones
CREATE TABLE IF NOT EXISTS `publicaciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publicaciones_user_id_foreign` (`user_id`),
  CONSTRAINT `publicaciones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.publicaciones: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
REPLACE INTO `publicaciones` (`id`, `user_id`, `titulo`, `created_at`, `updated_at`) VALUES
	(1, 3, 'Publicacion 1: El Titani', '2020-03-29 23:30:43', '2020-03-29 23:30:43'),
	(2, 3, 'Publicacion 2: El Rock', '2020-03-29 23:30:43', '2020-03-29 23:30:43'),
	(3, 3, 'Publicacion 3: El Ram', '2020-03-29 23:30:43', '2020-03-29 23:30:43'),
	(4, 3, 'Publicacion 4: El Popeye', '2020-03-29 23:30:43', '2020-03-29 23:30:43'),
	(5, 3, 'Publicacion 5: El Motor', '2020-03-29 23:30:43', '2020-03-29 23:30:43');
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;

-- Volcando estructura para tabla taller1corte2.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nivel_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_nivel_id_foreign` (`nivel_id`),
  CONSTRAINT `users_nivel_id_foreign` FOREIGN KEY (`nivel_id`) REFERENCES `niveles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla taller1corte2.users: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `nivel_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Jahir Jose Sotomayor Restrepo', 'jahirsotomayor@hotmail.com', NULL, '$2y$10$Rcqn98s8Q8kYTcG3.90uT.NzTy7W7iIhPcr1ObCaZgS42flRtFCRC', NULL, '2020-03-29 18:25:40', '2020-03-29 18:25:40'),
	(3, NULL, 'Jose Restrepo', 'joserestrepo@gmail.com', NULL, '$2y$10$O4bjbJbLdlP0oD15zfe/reK/Qo5lTJd7GZDpFnI7V/INas.BvQX5K', NULL, '2020-03-29 18:36:57', '2020-03-29 18:36:57'),
	(4, 12, 'Jahir Restrepo', 'jahirrestrepo@gmail.com', NULL, '$2y$10$3MXnSqxqyzVdP4JoDC4v5eYRM9TZifmjM8.XWCgcNMBh5Lm2rjcHa', NULL, '2020-03-29 22:02:39', '2020-03-29 22:02:39'),
	(5, 12, 'Jose Sotomayor', 'josesotomayor@hotmail.com', NULL, '$2y$10$F/GmxBq4.g7Q7SEXkr.Ztu43Y5nloRcQU8VdcxzZbO73hIK9Ue6pW', NULL, '2020-03-29 22:02:39', '2020-03-29 22:02:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
