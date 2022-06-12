-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.33-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.6037
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para projeto_integrador
CREATE DATABASE IF NOT EXISTS `projeto_integrador` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projeto_integrador`;

-- Copiando estrutura para tabela projeto_integrador.attachments
CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curso_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `filename` longtext,
  `path` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela projeto_integrador.attachments: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` (`id`, `curso_id`, `user_id`, `filename`, `path`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'charset1_1655010138.png', 'public/upload/charset1_1655010138.png', '2022-06-12 02:02:18', '2022-06-12 02:02:18'),
	(2, 2, 2, 'documento_1655052023.txt', 'public/upload/documento_1655052023.txt', '2022-06-12 13:40:24', '2022-06-12 13:40:24');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;

-- Copiando estrutura para tabela projeto_integrador.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  `carga_horaria` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela projeto_integrador.cursos: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `nome`, `carga_horaria`) VALUES
	(1, 'Análise e Desenvolvimento de Sistemas', 200),
	(2, 'Administração', 100);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Copiando estrutura para tabela projeto_integrador.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela projeto_integrador.migrations: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela projeto_integrador.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela projeto_integrador.password_resets: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('cmartinssouza20@gmail.com', '$2y$10$eXfAgu3dGgAibnAtR8YvMedjJCUkjTFqu8XuwNWMC07INiprJMvkG', '2022-06-11 23:49:00');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando estrutura para tabela projeto_integrador.status_horas
CREATE TABLE IF NOT EXISTS `status_horas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `horas_pendentes` float NOT NULL DEFAULT '0',
  `horas_enviadas` float NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela projeto_integrador.status_horas: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `status_horas` DISABLE KEYS */;
INSERT INTO `status_horas` (`id`, `user_id`, `horas_pendentes`, `horas_enviadas`, `created_at`, `updated_at`) VALUES
	(1, 1, 165, 35, '2022-06-12 02:02:19', '2022-06-12 02:02:19'),
	(2, 2, 90, 10, '2022-06-12 13:40:24', '2022-06-12 13:40:24');
/*!40000 ALTER TABLE `status_horas` ENABLE KEYS */;

-- Copiando estrutura para tabela projeto_integrador.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `curso_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Copiando dados para a tabela projeto_integrador.users: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `curso_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Camila Martins', 'cmartinssouza20@gmail.com', '$2y$10$126R/QiArWm8azENxoJaSO9HLMhPbTy5JwTofhHB/st0vKlQM33NK', 1, 'FctO9TMPSmWP6WXtjzgvcQdoRehvdXU4qlFsSlCj1Q36oqcUCQP8vuFwtcHM', '2022-06-11 23:48:52', '2022-06-11 23:48:52'),
	(2, 'adm', 'adm@gmail.com', '$2y$10$QKrM3pVkdx1vSiAUVDtlg.xBkzmgi7DCDl6Mwnnw7Qyzwhq4sPePa', 2, NULL, '2022-06-12 13:38:21', '2022-06-12 13:38:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Copiando estrutura para trigger projeto_integrador.trg_preencher_status_horas
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE user`@`skip-grants host` TRIGGER `trg_preencher_status_horas` AFTER INSERT ON `users` FOR EACH ROW BEGIN
	INSERT INTO projeto_integrador.status_horas VALUES(NULL,NEW.id,(SELECT carga_horaria FROM projeto_integrador.cursos WHERE id = NEW.curso_id),0,NULL,NULL);
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
