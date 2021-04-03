-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.5.9-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных skydream
CREATE DATABASE IF NOT EXISTS `skydream` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `skydream`;

-- Дамп структуры для таблица skydream.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы skydream.hibernate_sequence: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(16);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Дамп структуры для таблица skydream.post
CREATE TABLE IF NOT EXISTS `post` (
  `id` bigint(20) NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы skydream.post: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`id`, `image_url`, `message`, `title`) VALUES
	(7, 'https://aeronautica.online/wp-content/uploads/2019/04/Airbus-A320-111-Airbus-Industrie-TLS-1920x800.jpg', 'Транспортируется на стоянку', 'Airbus A320'),
	(9, 'https://aviado.ru/infratrans-content/pictures/2018/08/boeing-737-800-pobeda.jpg', 'Вылет из Домодедово', 'Boeing-737-800'),
	(15, 'https://upload.wikimedia.org/wikipedia/commons/4/4e/Cubana_Ilyushin_Il-96-300_Tang.jpg', 'Перед взлетом', 'ИЛ-96');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
