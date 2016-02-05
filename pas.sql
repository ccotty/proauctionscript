-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.46-0ubuntu0.14.04.2 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for pas
CREATE DATABASE IF NOT EXISTS `pas` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `pas`;


-- Dumping structure for table pas.auction_pages
DROP TABLE IF EXISTS `auction_pages`;
CREATE TABLE IF NOT EXISTS `auction_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_title` text COLLATE utf8_unicode_ci,
  `page_description` text COLLATE utf8_unicode_ci,
  `page_scripts` text COLLATE utf8_unicode_ci,
  `page_css` text COLLATE utf8_unicode_ci,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Generic page info for each page in the front-end';

-- Dumping data for table pas.auction_pages: ~1 rows (approximately)
DELETE FROM `auction_pages`;
/*!40000 ALTER TABLE `auction_pages` DISABLE KEYS */;
INSERT INTO `auction_pages` (`id`, `page_name`, `page_title`, `page_description`, `page_scripts`, `page_css`) VALUES
	(1, 'home', 'ProAuctionScript.com Demo Website', 'Demo of the most advanced and modern online auction sites available to the public.', NULL, NULL);
/*!40000 ALTER TABLE `auction_pages` ENABLE KEYS */;


-- Dumping structure for table pas.auction_settings
DROP TABLE IF EXISTS `auction_settings`;
CREATE TABLE IF NOT EXISTS `auction_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `base_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile_theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `timezone` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This is the settings for the front end side of the auction';

-- Dumping data for table pas.auction_settings: ~1 rows (approximately)
DELETE FROM `auction_settings`;
/*!40000 ALTER TABLE `auction_settings` DISABLE KEYS */;
INSERT INTO `auction_settings` (`id`, `theme`, `base_url`, `mobile_theme`, `timezone`) VALUES
	(1, 'buttercup', 'local.proauctionscript.com', 'buttercup_m', 'America/New_York');
/*!40000 ALTER TABLE `auction_settings` ENABLE KEYS */;


-- Dumping structure for table pas.auction_themes
DROP TABLE IF EXISTS `auction_themes`;
CREATE TABLE IF NOT EXISTS `auction_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `scripts` text COLLATE utf8_unicode_ci,
  `css` text COLLATE utf8_unicode_ci,
  `active` int(1) DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='List of available themes plus specific theme info for each one';

-- Dumping data for table pas.auction_themes: ~1 rows (approximately)
DELETE FROM `auction_themes`;
/*!40000 ALTER TABLE `auction_themes` DISABLE KEYS */;
INSERT INTO `auction_themes` (`id`, `theme`, `scripts`, `css`, `active`) VALUES
	(1, 'buttercup', '//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js|script.js', 'style.css', 1);
/*!40000 ALTER TABLE `auction_themes` ENABLE KEYS */;


-- Dumping structure for table pas.command_users
DROP TABLE IF EXISTS `command_users`;
CREATE TABLE IF NOT EXISTS `command_users` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='List of users that can access the admin panel';

-- Dumping data for table pas.command_users: ~1 rows (approximately)
DELETE FROM `command_users`;
/*!40000 ALTER TABLE `command_users` DISABLE KEYS */;
INSERT INTO `command_users` (`id`, `username`, `password`, `permissions`, `active`) VALUES
	(0000000001, 'chris', '183fc2000d9d65c1ecd57c3bf65eba24', '', 1);
/*!40000 ALTER TABLE `command_users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
