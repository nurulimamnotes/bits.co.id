-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2015 at 03:02 AM
-- Server version: 5.5.40-MariaDB
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `server_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE IF NOT EXISTS `backend_access_log` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '36.84.243.236', '2015-01-21 17:08:22', '2015-01-21 17:08:22'),
(2, 1, '103.22.201.107', '2015-01-22 14:01:10', '2015-01-22 14:01:10');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE IF NOT EXISTS `backend_users` (
`id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Nurul', 'Imam', 'nurulimam', 'me@nurulimam.com', '$2y$10$1vMCMilUHm73DkvgnU2ts.CsF0VE2hDt5BmVp8G3vDO2vOtH8dePi', NULL, '$2y$10$bLFcNvxnixW41bjEtWlSbuD6rG4nntZC8LNUu53JXzu2zp17WHvHm', NULL, '{"superuser":1}', 1, NULL, '2015-01-22 14:01:09', '2015-01-21 16:28:50', '2015-01-22 14:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE IF NOT EXISTS `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE IF NOT EXISTS `backend_user_groups` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Admins', NULL, '2015-01-21 16:28:50', '2015-01-21 16:28:50', 'admins', 'Default group for administrators', 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE IF NOT EXISTS `backend_user_preferences` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE IF NOT EXISTS `backend_user_throttle` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '36.84.243.236', 0, NULL, 0, NULL, 0, NULL),
(2, 1, '103.22.201.107', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE IF NOT EXISTS `cms_theme_data` (
`id` int(10) unsigned NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_theme_data`
--

INSERT INTO `cms_theme_data` (`id`, `theme`, `data`, `created_at`, `updated_at`) VALUES
(1, 'bits', '{"site_name":"Banten IT Solutions"}', '2015-01-21 17:27:23', '2015-01-21 17:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `cron_queue`
--

CREATE TABLE IF NOT EXISTS `cron_queue` (
`id` int(10) unsigned NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `retries` int(11) NOT NULL DEFAULT '0',
  `payload` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE IF NOT EXISTS `deferred_bindings` (
`id` int(10) unsigned NOT NULL,
  `master_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_10_01_000001_Db_Deferred_Bindings', 1),
('2013_10_01_000002_Db_System_Files', 1),
('2013_10_01_000003_Db_System_Plugin_Versions', 1),
('2013_10_01_000004_Db_System_Plugin_History', 1),
('2013_10_01_000005_Db_System_Settings', 1),
('2013_10_01_000006_Db_System_Parameters', 1),
('2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
('2013_10_01_000008_Db_System_Mail_Templates', 1),
('2013_10_01_000009_Db_System_Mail_Layouts', 1),
('2013_10_01_000010_Db_Cron_Queue', 1),
('2014_10_01_000011_Db_System_Event_Logs', 1),
('2014_10_01_000012_Db_System_Request_Logs', 1),
('2014_10_01_000013_Db_System_Sessions', 1),
('2013_10_01_000001_Db_Backend_Users', 2),
('2013_10_01_000002_Db_Backend_User_Groups', 2),
('2013_10_01_000003_Db_Backend_Users_Groups', 2),
('2013_10_01_000004_Db_Backend_User_Throttle', 2),
('2014_01_04_000005_Db_Backend_User_Preferences', 2),
('2014_10_01_000006_Db_Backend_Access_Log', 2),
('2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
('2014_10_01_000001_Db_Cms_Theme_Data', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci,
  `last_activity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE IF NOT EXISTS `system_event_logs` (
`id` int(10) unsigned NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE IF NOT EXISTS `system_files` (
`id` int(10) unsigned NOT NULL,
  `disk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE IF NOT EXISTS `system_mail_layouts` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'default', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ message|raw }}\n    </body>\n</html>', '{{ message|raw }}', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2015-01-21 16:28:50', '2015-01-21 16:28:50'),
(2, 'System', 'system', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ message|raw }}\n        <hr />\n        <p>This is an automatic message. Please do not reply to it.</p>\n    </body>\n</html>', '{{ message|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2015-01-21 16:28:50', '2015-01-21 16:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE IF NOT EXISTS `system_mail_templates` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE IF NOT EXISTS `system_parameters` (
`id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '"8e89b66244b14a46e401b3c0470d6b71"'),
(3, 'system', 'core', 'build', '"182"'),
(4, 'system', 'update', 'retry', '1421928503'),
(5, 'cms', 'theme', 'active', '"bits"');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE IF NOT EXISTS `system_plugin_history` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE IF NOT EXISTS `system_plugin_versions` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE IF NOT EXISTS `system_request_logs` (
`id` int(10) unsigned NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `system_request_logs`
--

INSERT INTO `system_request_logs` (`id`, `status_code`, `url`, `referer`, `count`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://www.server.banten-it.com/themes/bits/assets/images/proses.jpg?%2Fthemes%2Fbits%2Fassets%2Fimages%2Fproses.jpg', '["http:\\/\\/www.server.banten-it.com\\/combine\\/dbd5f985434720cf479a020cd293b9c3-1421843226"]', 3, '2015-01-21 17:27:32', '2015-01-22 12:35:37'),
(2, 404, 'http://www.bits.co.id/themes/bits/assets/images/proses.jpg?%2Fthemes%2Fbits%2Fassets%2Fimages%2Fproses.jpg', '["http:\\/\\/www.bits.co.id\\/combine\\/bf836e55112c8b2905ece430711fba67-1421844895"]', 15, '2015-01-21 18:00:11', '2015-01-22 14:01:47'),
(3, 404, 'http://104.218.52.100/themes/bits/assets/images/proses.jpg?%2Fthemes%2Fbits%2Fassets%2Fimages%2Fproses.jpg', '["http:\\/\\/104.218.52.100\\/combine\\/bf836e55112c8b2905ece430711fba67-1421844895"]', 1, '2015-01-21 18:02:09', '2015-01-21 18:02:09'),
(4, 404, 'http://bits.co.id/themes/bits/assets/images/proses.jpg?%2Fthemes%2Fbits%2Fassets%2Fimages%2Fproses.jpg', '["http:\\/\\/bits.co.id\\/combine\\/bf836e55112c8b2905ece430711fba67-1421844895"]', 15, '2015-01-21 18:02:48', '2015-01-22 13:23:36'),
(5, 404, 'http://www.bits.co.id/robots.txt?%2Frobots.txt', NULL, 9, '2015-01-21 18:04:01', '2015-01-22 13:08:24'),
(6, 404, 'http://bits.co.id/themes?%2Fthemes%2F%2Findex.html', NULL, 1, '2015-01-21 18:04:01', '2015-01-21 18:04:01'),
(7, 404, 'http://cms.nurulimam.com/themes/jtherczeg-corlate/assets/images/portfolio/recent/item1.png?%2Fthemes%2Fjtherczeg-corlate%2Fassets%2Fimages%2Fportfolio%2Frecent%2Fitem1.png', NULL, 8, '2015-01-21 20:01:37', '2015-01-22 04:53:40'),
(8, 404, 'http://104.218.52.100/cgi-bin/php?%2Fcgi-bin%2Fphp', NULL, 1, '2015-01-21 20:20:08', '2015-01-21 20:20:08'),
(9, 404, 'http://104.218.52.100/cgi-bin/php5?%2Fcgi-bin%2Fphp5', NULL, 1, '2015-01-21 20:20:08', '2015-01-21 20:20:08'),
(10, 404, 'http://104.218.52.100/cgi-bin/php-cgi?%2Fcgi-bin%2Fphp-cgi', NULL, 1, '2015-01-21 20:20:09', '2015-01-21 20:20:09'),
(11, 404, 'http://104.218.52.100/cgi-bin/php.cgi?%2Fcgi-bin%2Fphp.cgi', NULL, 1, '2015-01-21 20:20:09', '2015-01-21 20:20:09'),
(12, 404, 'http://104.218.52.100/cgi-bin/php4?%2Fcgi-bin%2Fphp4', NULL, 1, '2015-01-21 20:20:09', '2015-01-21 20:20:09'),
(13, 404, 'http://bits.co.id/robots.txt?%2Frobots.txt', NULL, 1, '2015-01-21 21:34:33', '2015-01-21 21:34:33'),
(14, 404, 'http://bits.co.id/project-services/warnet?%2Fproject-services%2Fwarnet%2F', NULL, 1, '2015-01-21 21:34:35', '2015-01-21 21:34:35'),
(15, 404, 'http://104.218.52.100/robots.txt?%2Frobots.txt', NULL, 1, '2015-01-21 22:31:39', '2015-01-21 22:31:39'),
(16, 404, 'http://bits.co.id/products/software/apotek-management?%2Fproducts%2Fsoftware%2Fapotek-management%2F', NULL, 1, '2015-01-22 02:35:08', '2015-01-22 02:35:08'),
(17, 404, 'http://www.msftncsi.com/ncsi.txt?%2Fncsi.txt', NULL, 1, '2015-01-22 02:36:11', '2015-01-22 02:36:11'),
(18, 404, 'http://104.218.52.100/HNAP1?%2FHNAP1%2F', NULL, 1, '2015-01-22 02:36:11', '2015-01-22 02:36:11'),
(19, 404, 'http://cms.nurulimam.com/robots.txt?%2Frobots.txt', NULL, 1, '2015-01-22 06:12:35', '2015-01-22 06:12:35'),
(20, 404, 'http://bits.co.id/profile?%2Fprofile%2F', NULL, 1, '2015-01-22 09:25:30', '2015-01-22 09:25:30'),
(21, 404, 'http://system.bits.co.id/themes/bits/assets/images/proses.jpg?%2Fthemes%2Fbits%2Fassets%2Fimages%2Fproses.jpg', '["http:\\/\\/system.bits.co.id\\/combine\\/bf836e55112c8b2905ece430711fba67-1421903994"]', 1, '2015-01-22 11:00:27', '2015-01-22 11:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
`id` int(10) unsigned NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `backend_users_login_unique` (`login`), ADD UNIQUE KEY `backend_users_email_unique` (`email`), ADD KEY `backend_users_activation_code_index` (`activation_code`), ADD KEY `backend_users_reset_password_code_index` (`reset_password_code`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
 ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `backend_user_groups_name_unique` (`name`), ADD KEY `backend_user_groups_code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
 ADD PRIMARY KEY (`id`), ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
 ADD PRIMARY KEY (`id`), ADD KEY `backend_user_throttle_user_id_index` (`user_id`), ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
 ADD PRIMARY KEY (`id`), ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `cron_queue`
--
ALTER TABLE `cron_queue`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
 ADD PRIMARY KEY (`id`), ADD KEY `deferred_bindings_master_type_index` (`master_type`), ADD KEY `deferred_bindings_master_field_index` (`master_field`), ADD KEY `deferred_bindings_slave_type_index` (`slave_type`), ADD KEY `deferred_bindings_slave_id_index` (`slave_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
 ADD PRIMARY KEY (`id`), ADD KEY `system_files_field_index` (`field`), ADD KEY `system_files_attachment_id_index` (`attachment_id`), ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
 ADD PRIMARY KEY (`id`), ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
 ADD PRIMARY KEY (`id`), ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
 ADD PRIMARY KEY (`id`), ADD KEY `system_plugin_history_code_index` (`code`), ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
 ADD PRIMARY KEY (`id`), ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
 ADD PRIMARY KEY (`id`), ADD KEY `system_settings_item_index` (`item`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cron_queue`
--
ALTER TABLE `cron_queue`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

