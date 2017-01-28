-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2017 at 02:54 PM
-- Server version: 5.6.33-cll-lve
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tihoblaj_django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add info', 1, 'add_info'),
(2, 'Can change info', 1, 'change_info'),
(3, 'Can delete info', 1, 'delete_info'),
(4, 'Can add service', 2, 'add_service'),
(5, 'Can change service', 2, 'change_service'),
(6, 'Can delete service', 2, 'delete_service'),
(7, 'Can add sld_ cat', 3, 'add_sld_cat'),
(8, 'Can change sld_ cat', 3, 'change_sld_cat'),
(9, 'Can delete sld_ cat', 3, 'delete_sld_cat'),
(10, 'Can add slider', 4, 'add_slider'),
(11, 'Can change slider', 4, 'change_slider'),
(12, 'Can delete slider', 4, 'delete_slider'),
(13, 'Can add img_ cat', 5, 'add_img_cat'),
(14, 'Can change img_ cat', 5, 'change_img_cat'),
(15, 'Can delete img_ cat', 5, 'delete_img_cat'),
(16, 'Can add image', 6, 'add_image'),
(17, 'Can change image', 6, 'change_image'),
(18, 'Can delete image', 6, 'delete_image'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add site', 8, 'add_site'),
(23, 'Can change site', 8, 'change_site'),
(24, 'Can delete site', 8, 'delete_site'),
(25, 'Can add registration profile', 9, 'add_registrationprofile'),
(26, 'Can change registration profile', 9, 'change_registrationprofile'),
(27, 'Can delete registration profile', 9, 'delete_registrationprofile'),
(28, 'Can add group', 10, 'add_group'),
(29, 'Can change group', 10, 'change_group'),
(30, 'Can delete group', 10, 'delete_group'),
(31, 'Can add user', 11, 'add_user'),
(32, 'Can change user', 11, 'change_user'),
(33, 'Can delete user', 11, 'delete_user'),
(34, 'Can add permission', 12, 'add_permission'),
(35, 'Can change permission', 12, 'change_permission'),
(36, 'Can delete permission', 12, 'delete_permission'),
(37, 'Can add content type', 13, 'add_contenttype'),
(38, 'Can change content type', 13, 'change_contenttype'),
(39, 'Can delete content type', 13, 'delete_contenttype'),
(40, 'Can add session', 14, 'add_session'),
(41, 'Can change session', 14, 'change_session'),
(42, 'Can delete session', 14, 'delete_session'),
(43, 'Can add comment flag', 15, 'add_commentflag'),
(44, 'Can change comment flag', 15, 'change_commentflag'),
(45, 'Can delete comment flag', 15, 'delete_commentflag'),
(46, 'Can add comment', 16, 'add_comment'),
(47, 'Can change comment', 16, 'change_comment'),
(48, 'Can delete comment', 16, 'delete_comment'),
(49, 'Can moderate comments', 16, 'can_moderate'),
(50, 'Can add tagged item', 17, 'add_taggeditem'),
(51, 'Can change tagged item', 17, 'change_taggeditem'),
(52, 'Can delete tagged item', 17, 'delete_taggeditem'),
(53, 'Can add tag', 18, 'add_tag'),
(54, 'Can change tag', 18, 'change_tag'),
(55, 'Can delete tag', 18, 'delete_tag'),
(56, 'Can add category', 19, 'add_category'),
(57, 'Can change category', 19, 'change_category'),
(58, 'Can delete category', 19, 'delete_category'),
(59, 'Can add entry', 20, 'add_entry'),
(60, 'Can change entry', 20, 'change_entry'),
(61, 'Can delete entry', 20, 'delete_entry'),
(62, 'Can view all entries', 20, 'can_view_all'),
(63, 'Can change status', 20, 'can_change_status'),
(64, 'Can change author(s)', 20, 'can_change_author'),
(65, 'Can add author', 11, 'add_author'),
(66, 'Can change author', 11, 'change_author'),
(67, 'Can delete author', 11, 'delete_author');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$yIGFvNKJ0CZO$cYSsMyYVL+2iMTlo+rmxrySG1P9iYuZIQeIO/1wQNq0=', '2017-01-28 12:26:43.214889', 1, 'admin', 'Tihomir', 'Blazhev', 'raylight75@tihoblajev.com', 1, 1, '2016-12-21 14:54:51.389000'),
(2, 'pbkdf2_sha256$30000$IvsOAMbWjUK0$IYDfHDQ1nyawi5VNBKpa+inT/5wFiZJBflKQd4rzHEc=', '2016-12-21 14:00:24.541907', 0, 'raylight75', 'Tiho', 'BLajev', 'raylight75@gmail.com', 1, 1, '2016-12-21 14:56:21.739000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 60),
(2, 2, 61),
(3, 2, 62);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-12-21 14:56:02.476000', '1', 'admin', 2, '[{"changed": {"fields": ["first_name", "last_name"]}}]', 11, 1),
(2, '2016-12-21 14:56:21.784000', '2', 'raylight75', 1, '[{"added": {}}]', 11, 1),
(3, '2016-12-21 14:56:48.666000', '2', 'raylight75', 2, '[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff"]}}]', 11, 1),
(4, '2016-12-28 22:43:34.414565', '5', 'Economy', 1, '[{"added": {}}]', 18, 1),
(5, '2016-12-28 22:48:38.384868', '4', 'Modern socialism vs Capitalism: published', 1, '[{"added": {}}]', 20, 1),
(6, '2016-12-28 22:52:56.385466', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(7, '2016-12-28 22:55:04.955372', '6', 'Economy', 1, '[{"added": {}}]', 19, 1),
(8, '2016-12-28 22:58:58.077378', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(9, '2016-12-28 23:00:16.015888', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(10, '2016-12-28 23:01:13.392531', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(11, '2016-12-28 23:02:03.272080', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(12, '2016-12-28 23:04:27.304041', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(13, '2016-12-28 23:07:41.292552', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(14, '2016-12-28 23:08:16.793947', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(15, '2016-12-28 23:08:52.384115', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(16, '2017-01-03 17:30:52.033647', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(17, '2017-01-03 17:40:42.416476', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(18, '2017-01-17 07:01:35.335036', '4', 'Modern socialism vs Capitalism: published', 2, '[{"changed": {"fields": ["categories"]}}]', 20, 1),
(19, '2017-01-17 08:33:10.388597', '8', 'Slider object', 2, '[{"changed": {"fields": ["title"]}}]', 4, 1),
(20, '2017-01-17 08:34:17.952168', '54', 'Image object', 1, '[{"added": {}}]', 6, 1),
(21, '2017-01-17 08:34:50.271395', '55', 'Image object', 1, '[{"added": {}}]', 6, 1),
(22, '2017-01-28 12:39:17.090410', '5', 'Laravel 5.4: published', 1, '[{"added": {}}]', 20, 1),
(23, '2017-01-28 12:40:10.707986', '7', 'Frameworks', 1, '[{"added": {}}]', 19, 1),
(24, '2017-01-28 12:40:32.001065', '5', 'Laravel 5.4: published', 2, '[{"changed": {"fields": ["categories"]}}]', 20, 1),
(25, '2017-01-28 12:48:02.814888', '5', 'Laravel 5.4: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(26, '2017-01-28 12:49:25.210266', '5', 'Laravel 5.4: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1),
(27, '2017-01-28 12:51:24.610665', '5', 'Laravel 5.4: published', 2, '[{"changed": {"fields": ["content"]}}]', 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_comments`
--

CREATE TABLE IF NOT EXISTS `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_commen_content_type_id_c4afe962_fk_django_content_type_id` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9_uniq` (`submit_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_comments`
--

INSERT INTO `django_comments` (`id`, `object_pk`, `user_name`, `user_email`, `user_url`, `comment`, `submit_date`, `ip_address`, `is_public`, `is_removed`, `content_type_id`, `site_id`, `user_id`) VALUES
(7, '3', 'Tomas', 't_muler@architekten-verzeichnis.net', '', 'Good  work my friend, nice renders', '2016-11-28 09:29:05.800157', '212.116.146.26', 1, 0, 20, 1, NULL),
(8, '3', 'admin', 'raylight75@gmail.com', '', 'Thanks', '2016-12-03 09:43:29.152100', '79.100.249.202', 1, 0, 20, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_comment_flags`
--

CREATE TABLE IF NOT EXISTS `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_327a6c43` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(10, 'auth', 'group'),
(12, 'auth', 'permission'),
(11, 'auth', 'user'),
(6, 'backend', 'image'),
(5, 'backend', 'img_cat'),
(1, 'backend', 'info'),
(2, 'backend', 'service'),
(3, 'backend', 'sld_cat'),
(4, 'backend', 'slider'),
(13, 'contenttypes', 'contenttype'),
(16, 'django_comments', 'comment'),
(15, 'django_comments', 'commentflag'),
(9, 'registration', 'registrationprofile'),
(14, 'sessions', 'session'),
(8, 'sites', 'site'),
(18, 'tagging', 'tag'),
(17, 'tagging', 'taggeditem'),
(21, 'zinnia', 'author'),
(19, 'zinnia', 'category'),
(20, 'zinnia', 'entry');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-12-21 14:45:23.455000'),
(2, 'auth', '0001_initial', '2016-12-21 14:45:35.567000'),
(3, 'admin', '0001_initial', '2016-12-21 14:45:38.076000'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-12-21 14:45:38.212000'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-12-21 14:45:40.079000'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-12-21 14:45:41.610000'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-12-21 14:45:42.721000'),
(8, 'auth', '0004_alter_user_username_opts', '2016-12-21 14:45:42.787000'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-12-21 14:45:43.645000'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-12-21 14:45:43.829000'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-12-21 14:45:43.965000'),
(12, 'auth', '0008_alter_user_username_max_length', '2016-12-21 14:45:44.954000'),
(13, 'backend', '0001_initial', '2016-12-21 14:45:50.745000'),
(14, 'sites', '0001_initial', '2016-12-21 14:45:52.038000'),
(15, 'django_comments', '0001_initial', '2016-12-21 14:45:59.025000'),
(16, 'django_comments', '0002_update_user_email_field_length', '2016-12-21 14:46:01.135000'),
(17, 'django_comments', '0003_add_submit_date_index', '2016-12-21 14:46:01.581000'),
(18, 'registration', '0001_initial', '2016-12-21 14:46:02.858000'),
(19, 'registration', '0002_registrationprofile_activated', '2016-12-21 14:46:04.056000'),
(20, 'registration', '0003_migrate_activatedstatus', '2016-12-21 14:46:04.114000'),
(21, 'sessions', '0001_initial', '2016-12-21 14:46:04.904000'),
(22, 'sites', '0002_alter_domain_unique', '2016-12-21 14:46:05.783000'),
(23, 'tagging', '0001_initial', '2016-12-21 14:46:10.233000'),
(24, 'tagging', '0002_on_delete', '2016-12-21 14:46:12.936000'),
(25, 'zinnia', '0001_initial', '2016-12-21 14:46:34.579000'),
(26, 'zinnia', '0002_lead_paragraph_and_image_caption', '2016-12-21 14:46:36.523000'),
(27, 'zinnia', '0003_publication_date', '2016-12-21 14:46:39.490000'),
(28, 'zinnia', '0004_on_delete_arg', '2016-12-21 14:46:41.023000');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9f82mmjau95hskx2pjkw085oi4ufd6sj', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-21 10:59:17.380000'),
('dhk8p0zdh2eo4gbc7lqx52ie1pklaas8', 'NTU0NzhhMzhlMjFmMTMyZDExNzZiOWQ1NzdhZWE1NGJiYmE0OGRiMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQyZDEyYzZlODQyZGRlYjVkMWRkMTY0MDA5N2Q4MjJhZmY4YmQ1NzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-12-11 15:33:01.320412'),
('glco278pwno3jb63sye7yts448y0ihe1', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-23 08:16:10.226000'),
('ht34dr3yb04sy8tsjtxofqzaabuk90sj', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-20 21:19:36.423000'),
('kktzz2lqq0gradbxukqsilyb3n80dgkn', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-10-16 16:41:55.455000'),
('mkad6nh2pu7yucxk9u2mje446cwvvcjv', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-25 08:32:33.128000'),
('rwlajmj43to520268ot2bnjx211rft58', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-24 15:38:51.106000');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'www.tihoblajev.com', 'www.tihoblajev.com');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `title`, `cat_id`, `image`) VALUES
(1, 'Nissan GTR', 2, 'images/nissanGTR1.jpg'),
(2, 'Arion Render', 2, 'images/a10.jpg'),
(3, 'View', 6, 'images/ar3.jpg'),
(4, 'Style', 3, 'images/new_scene3.jpg'),
(5, 'Kitchen', 3, 'images/i15.jpg'),
(6, 'Leopard', 5, 'images/m1.jpg'),
(7, 'Hero', 5, 'images/m6.jpg'),
(8, 'Mac', 4, 'images/b11.jpg'),
(9, 'BO', 3, 'images/i1.jpg'),
(10, 'Lamborgini', 2, 'images/a4.jpg'),
(11, 'Night', 6, 'images/ar6.jpg'),
(12, 'Tiger WW2', 5, 'images/m2.jpg'),
(13, 'Blender Cycles', 3, 'images/i7.jpg'),
(14, 'Prism', 5, 'images/l3.jpg'),
(15, 'Tadao', 6, 'images/test5_fina_3.jpg'),
(16, 'Fighter', 5, 'images/m7.jpg'),
(17, 'Contemporary', 3, 'images/contemporary_2.jpg'),
(18, 'Audi Motion', 2, 'images/a7.jpg'),
(19, 'BMW M3', 2, 'images/a13.jpg'),
(20, 'BMW DOF', 2, 'images/a15.jpg'),
(21, 'Lights', 4, 'images/designhouses.jpg'),
(22, 'Interior', 3, 'images/kipriana_4.jpg'),
(23, 'Modern Kitchen', 3, 'images/Kitchen_Final.jpg'),
(24, 'Nimbus', 3, 'images/Nimbus_Roxanne.jpg'),
(25, 'Jar', 4, 'images/Jar_of_Sandwich.jpg'),
(26, 'Armchairs', 4, 'images/b12.jpg'),
(27, 'Sofa', 4, 'images/test_sofa_7.jpg'),
(28, 'Audi', 2, 'images/a6.jpg'),
(29, 'Lancer EVO', 2, 'images/Lancer_EVO.jpg'),
(30, 'OKA', 3, 'images/nkuku_oka_film_9.jpg'),
(31, 'Bedroom', 3, 'images/i9.jpg'),
(32, 'Japan Architecture', 6, 'images/ar5.jpg'),
(33, 'Vertical Windows', 3, 'images/scene_06.jpg'),
(34, 'Elephant', 4, 'images/elephant_03.jpg'),
(35, 'Spartan', 1, 'images/test17.jpg'),
(36, 'teutonic knight', 1, 'images/m9.jpg'),
(37, 'Yasmin', 4, 'images/yasmin_chair_02.jpg'),
(38, 'Tadao Ando View', 6, 'images/ar2_eOWhPqA.jpg'),
(39, 'Sofa Brown', 4, 'images/b6.jpg'),
(41, 'WW2', 5, 'images/m5.jpg'),
(42, 'Honda CRZ', 2, 'images/a9.jpg'),
(43, 'TRex', 1, 'images/T_rex.jpg'),
(44, 'Closeup', 3, 'images/Robert_Abbey.jpg'),
(45, 'Exterior', 6, 'images/Final22.jpg'),
(46, 'Corona', 3, 'images/final_corona.jpg'),
(47, 'Bedroom', 3, 'images/contemporary_1.jpg'),
(48, 'Black Lambo', 2, 'images/a3.jpg'),
(49, 'Sunset', 2, 'images/a2.jpg'),
(50, 'Room', 3, 'images/Suny_Room_2.jpg'),
(51, 'McLaren', 2, 'images/corona_Mclaren.jpg'),
(52, 'Frank sofa', 3, 'images/slider5_7yWYa7I.jpg'),
(53, 'Blue', 3, 'images/slider8_uW0F94B.jpg'),
(54, 'Cossy', 3, 'images/slider8_HKryaAs.jpg'),
(55, 'Longines', 4, 'images/longines.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `img_cat`
--

CREATE TABLE IF NOT EXISTS `img_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `img_cat`
--

INSERT INTO `img_cat` (`id`, `cat`) VALUES
(1, 'Sculpting'),
(2, 'Cars'),
(3, 'Interiors'),
(4, 'Models'),
(5, 'Various'),
(6, 'Architectural');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `text` longtext NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `skype` varchar(32) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `cat` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `notice`, `title`, `text`, `email`, `phone`, `skype`, `address`, `cat`) VALUES
(1, 'about-info', 'Few words about me', '<p>\r\n     Hello, my name is Tihomir Blajev. I am a 3d Artist from the city of Plovdiv, Bulgaria. \r\nWelcome to my online portfolio website showcasing a range of 3D generated images created by me. This is the place where you can see a very small selection of the projects that I’ve been involved with over the years as a 3D Artist. \r\nI currently work full-time last 5 year as a 3d Artist at Designconnected  where my responsibilities include rendering, modeling, texturing, lighting and creating basic animation. I have been working also for 6 years as a freelance 3d artist. \r\n<q class=" alignleft">\r\nThe projects seen on my website are a result of 10 years work and experience. I must say that in some of them, become so pretty because our modelers in Designconnected did great work on 3d models.\r\n</q>\r\nI started my work early in 2004 using  Alias Maya and gradually made the transition to Autodesk 3D Max and other 3d packages. I am skilled in lighting, rendering, 3D modelling, texturing, unwraping and basic animation and also have a lot of experience working with Autodesk products. I find them all very exciting programs to use and create projects with.\r\n     I have won many awards and my work has been posted on the front pages of popular websites like Evermotion, CGTalk, CGArena ,  CGArchitect,  3D Total,  3DBG ,  Blender Guru,  Blender Artist .  Many of my renders were posted by online magazines and books like The art of Blender,  3d Artist ,  3D World  ,  CGArena ,  Ceiga .\r\n<q class=" alignright"> \r\n     My latest interest has become programming. I am especially interested  and very passionate in web orientated programming and Frameworks with PHP, Python and  Ruby. I am very passionate and devoted to my work and constantly trying to better my knowledge and learn new skills in this dinamic situation.\r\n</q>\r\n</p>', 'raylight75@gmail.com', '+359898735129', 'tiho1975', 'Skopie 45,Plovdiv,Bulgaria', 'about'),
(2, '10+ Years Experience', 'Freelance 3D Artist', '10 years experience in ArchiVIZ and CG industry mostly in private project. For more aditional information about project use email form.', 'raylight75@tihoblajev.com', '+359898735129', 'tiho1975', 'Skopie 45,Plovdiv,Bulgaria', 'skills'),
(3, '5+ Years Experience', '3D Artist at Designconnected', 'I currently work full-time as a 3d Artist at Designconnected my responsibilities include rendering, modeling, texturing, lighting and basic animation.', 'tblajev@yahoo.com', '+359898735129', 'tiho1975', 'Skopie 45,Plovdiv,Bulgaria', 'skills'),
(4, 'Notice:', 'Contact Info', 'For more aditional information like PDF, complete CV, feel free to contact me via skype, emails or social links.', 'raylight75@gmail.com', '+359898735129', 'tiho1975', 'Skopie 45,Plovdiv,Bulgaria', 'contact'),
(5, 'Additional Info', 'Additional Info', 'I currently work full-time as a 3d Artist at Designconnected my responsibilities include rendering, modeling, texturing, lighting and basic animation.', 'tihomir@designconnected.com', '+35932539170', 'tihomir_blazhev', 'bul Hristo Botev 92B', 'contact');

-- --------------------------------------------------------

--
-- Table structure for table `registration_registrationprofile`
--

CREATE TABLE IF NOT EXISTS `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activation_key` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activated` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `name` varchar(32) NOT NULL,
  `image` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `text`, `name`, `image`) VALUES
(1, 'Do not be shy feel free to contact me via Email, Skype or Phone. Use social icons for additional information for me and my work', 'THE CONTACT', 'images/contact-icon-4.png'),
(2, 'Presents your ideas with skeches, drawings, send me 3D files or CAD plans to discuss and choose the most appropriate solution for them.', 'THE IDEAS', 'images/service-1.png'),
(3, 'Complete creation of CG art including design, high quality 3D modeling, texturing and high resolution rendering with high quality.', 'CREATION QUALITY', 'images/service-4.png'),
(4, 'I’ve developed a workflow using certain applications I’m happy with, but I’m comfortable and experienced using most of the common industry standard 3D applications.', 'WORKFLOW', 'images/service-3.png'),
(5, 'As a profesional artist, I’m available for hiring worldwide on a project by project basis. These are the services I provide, inquiries are welcome.', 'WORLD WIDE', 'images/service-6.png'),
(6, 'Visualization or pre-viz of vehicles, interiors, industrial products, architectural visualization, creation of low poly 3D characters.', 'SERVICE RANGE', 'images/service-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `sld_cat`
--

CREATE TABLE IF NOT EXISTS `sld_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sld_cat`
--

INSERT INTO `sld_cat` (`id`, `cat`) VALUES
(1, 'Sliders'),
(2, 'Service Slider'),
(3, 'Aboutme'),
(4, 'about_top');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `cat_id`, `image`) VALUES
(1, 'Focal', 1, 'images/baner-bg-2-3_WOmcw5k.jpg'),
(2, 'Tadao Ando', 1, 'images/baner-bg-3-3_iUEXKaL.jpg'),
(3, 'service_bg', 2, 'images/contact-sep2.jpg'),
(4, 'Slide_aboutme', 3, 'images/dezeen_banner2.jpg'),
(5, 'About_top', 4, 'images/baner-bg-11.jpg'),
(6, 'Miura', 1, 'images/miura.jpg'),
(7, 'Frank sofa', 1, 'images/slider5.jpg'),
(8, 'Cossy Sofa', 1, 'images/slider8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag`
--

CREATE TABLE IF NOT EXISTS `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tagging_tag`
--

INSERT INTO `tagging_tag` (`id`, `name`) VALUES
(1, 'Design'),
(5, 'Economy'),
(3, 'Exterior'),
(2, 'Interior'),
(4, 'Personal');

-- --------------------------------------------------------

--
-- Table structure for table `tagging_taggeditem`
--

CREATE TABLE IF NOT EXISTS `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagging_taggeditem_tag_id_3d53f09d_uniq` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_af31437c` (`object_id`),
  KEY `tagging_tagge_content_type_id_ede1c265_fk_django_content_type_id` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tagging_taggeditem`
--

INSERT INTO `tagging_taggeditem` (`id`, `object_id`, `content_type_id`, `tag_id`) VALUES
(5, 1, 14, 1),
(8, 2, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_category`
--

CREATE TABLE IF NOT EXISTS `zinnia_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `zinnia_category_caf7cc51` (`lft`),
  KEY `zinnia_category_3cfbd988` (`rght`),
  KEY `zinnia_category_656442a0` (`tree_id`),
  KEY `zinnia_category_c9e9a848` (`level`),
  KEY `zinnia_category_6be37982` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `zinnia_category`
--

INSERT INTO `zinnia_category` (`id`, `title`, `slug`, `description`, `lft`, `rght`, `tree_id`, `level`, `parent_id`) VALUES
(1, 'Design', 'design', '', 1, 2, 1, 0, NULL),
(2, 'Interior', 'interior', '', 1, 2, 5, 0, NULL),
(4, 'Personal', 'personal', '', 1, 2, 6, 0, NULL),
(5, 'Rules', 'rules', '', 1, 2, 7, 0, NULL),
(6, 'Economy', 'economy', 'Economy', 1, 2, 3, 0, NULL),
(7, 'Frameworks', 'frameworks', '', 1, 2, 4, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL,
  `start_publication` datetime(6) DEFAULT NULL,
  `end_publication` datetime(6) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `comment_enabled` tinyint(1) NOT NULL,
  `pingback_enabled` tinyint(1) NOT NULL,
  `trackback_enabled` tinyint(1) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `pingback_count` int(11) NOT NULL,
  `trackback_count` int(11) NOT NULL,
  `excerpt` longtext NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `tags` varchar(255) CHARACTER SET latin1 NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `content_template` varchar(250) CHARACTER SET latin1 NOT NULL,
  `detail_template` varchar(250) CHARACTER SET latin1 NOT NULL,
  `image_caption` longtext CHARACTER SET latin1 NOT NULL,
  `lead` longtext NOT NULL,
  `publication_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zinnia_entry_2dbcba41` (`slug`),
  KEY `zinnia_entry_9acb4454` (`status`),
  KEY `zinnia_entry_6dc6f11d` (`start_publication`),
  KEY `zinnia_entry_b803a79a` (`end_publication`),
  KEY `zinnia_entry_slug_8de07f28_idx` (`slug`,`publication_date`),
  KEY `zinnia_entry_status_b9d97cbc_idx` (`status`,`publication_date`,`start_publication`,`end_publication`),
  KEY `zinnia_entry_93b83098` (`publication_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `zinnia_entry`
--

INSERT INTO `zinnia_entry` (`id`, `title`, `slug`, `status`, `start_publication`, `end_publication`, `creation_date`, `last_update`, `content`, `comment_enabled`, `pingback_enabled`, `trackback_enabled`, `comment_count`, `pingback_count`, `trackback_count`, `excerpt`, `image`, `featured`, `tags`, `login_required`, `password`, `content_template`, `detail_template`, `image_caption`, `lead`, `publication_date`) VALUES
(1, 'Nobuya Kashima House', 'Nobuya-Kashima-House', 2, NULL, NULL, '2016-11-19 21:33:48.974000', '2016-11-27 15:45:10.727644', 'My favorite  3D style  in 3D VIZ and in real architecture, this is the reason to create this 3D image.  It is a Nobuya Kashima House from reference image and i try to make a scene that recreates the real world lighting.', 1, 0, 0, 0, 0, 0, 'Japanese Architecture', 'uploads/zinnia/2016/11/27/ar5.jpg', 0, 'Design', 0, '', 'zinnia/_entry_detail.html', 'entry_detail.html', '', 'Japanese Architecture', '2016-11-19 21:33:48.000000'),
(2, 'Rules', 'rules', 2, NULL, NULL, '2016-11-19 21:36:51.374000', '2016-11-27 15:44:53.005440', 'Втори Пост ВАЖНО!!\r\nПравила до колкото съществуват в интернет и за тези които въобще решат да пишат и коментират тук.\r\nИмайте на предвид че блога си е частен – аз си го подържам и плащам не е Dnes.bg , така че който пише да е без глупости и излишен хейт, темите ще са най-различни така че нека сме позитивни.', 1, 0, 0, 0, 0, 0, 'Една дума само..rules', 'uploads/zinnia/2016/11/27/post-missing.png', 0, 'personal', 0, '', 'zinnia/_entry_detail.html', 'entry_detail.html', '', 'Една дума само..rules', '2016-11-19 21:36:51.000000'),
(3, 'New Blog', 'new-blog', 2, NULL, NULL, '2016-11-19 21:38:33.175000', '2016-11-27 16:19:39.473059', 'Първи пост , който ще е на български естествено.\r\n\r\n&nbsp И така... отново update на целия website за 3 –ти път, реших тотално да напусна ужасно бавния Wordpress и този път избрах Python Django. Минах през Raw HTML, PHP и Laravel, Django беше най-бързото за пускане и поддръжка - така или иначе няма да има смазващ трафик освен роднини приятели и някои клиенти.\r\n<img src="http://blog.spiralytics.com/hs-fs/hub/1964188/file-3879076587-jpg/blog-files/first-blog-post-winning-600x321.jpg?t=1479110278909" alt="first_post" class="img-thumbnail img-responsive" />\r\nМоже да разгледате портфолиото, което силно outdated някои неща са вече на 8-9 години, защото работата ми в Designconnected ми отнема доста от времето. Качил съм много малко от рендерите, които съм правил и някои неща от настоящата ми работа, в която естествено са замесени и целия ни екип от талантливи артисти. \r\n&nbsp Естествено ще качвам и нови снимки, рендери и други интерестни неща. Блогът ще е персонален и семейно ориентиран. Ще има от CG Art, програмиране до как да си направим сирене и лютеница. Евентуално ще е лична трибуна за някое лично мнение по всякакви теми от политика до правене на циментови замазки.\r\n\r\nНе на последно място не всичко работи още.. ако някой види нещо да пише с коментар или в email формата.', 1, 0, 0, 2, 0, 0, 'Първи пост , който ще е на български естествено.\r\nИ така... отново update на целия website за 3 –ти път, реших тотално да напусна ужасно бавния Wordpress и този път избрах Python Django.', 'uploads/zinnia/2016/11/27/write1.jpg', 0, '', 0, '', 'zinnia/_entry_detail.html', 'entry_detail.html', 'welcome', 'Първи пост , който ще е на български естествено.\r\nИ така... отново update на целия website за 3 –ти път, реших тотално да напусна ужасно бавния Wordpress и този път избрах Python Django.', '2016-11-19 21:38:33.000000'),
(4, 'Modern socialism vs Capitalism', 'modern-socialism-vs-capitalism', 2, NULL, NULL, '2016-12-28 22:48:35.201261', '2017-01-17 07:01:34.836770', 'Ще бъда кратък, като дойдат празници ние в България почваме да работим и реших, че вече съм адски добър в строителството и ще ставам Pro майстор. Речено-сторено тръгвам си аз бодро към най-близкия Praktiker доволен и ухилен, че съм вече професионалист и реших, че ми трябва лазерна рулетка.... Оооо но каква изненада 149 лв цена, съвестта ми прошепна в ухото и каза Тише има измама тука.\r\nПоплаках си малко. Викам не съм за професионалния сектор ще си карам с обикновената от 5лв, но нещо в мен ми казваше, че капитализма, както казва Карл Маркс при печалба над сто процента става безочлив и нагъл и погазва всякакви човешки закони. Решението се оказа в контролирания социализъм на Jack Ma и AliExpress, които ми предложиха устройството за 40лв с добри пожелания от Китай.\r\n<img class="img-responsive" src="https://s29.postimg.org/dxukclmpj/blog3.jpg" alt="">\r\nПечалбата на Практикер не отива в голямата си част в Българската икономика, както и моите пари ще отидат в Китай, но се чудя кое европейско или българско законодателство дава право на даден търговец да продава очевидно нескопосано пре-брандиран продукт с 450 процента печалба.\r\nДа не говорим, че продукта, който показвам е с по-добри параметри и данни.\r\nЩе завърша с един цитат:\r\n•	"Предел за производството са печалбите на капиталистите, а съвсем не потребностите на производителите." — "Капиталът" IV, част II', 1, 1, 1, 0, 0, 0, 'Praktiker', 'uploads/zinnia/2016/12/28/post4.jpg', 0, '', 0, '', 'zinnia/_entry_detail.html', 'entry_detail.html', '', 'Печалбата на Практикер не отива в голямата си част в Българската икономика, както и моите пари ще отидат в Китай, но се чудя кое европейско или българско законодателство дава право на даден търговец да продава очевидно нескопосано пребрандиран продукт с 450 процента печалба.', '2016-12-28 22:43:54.000000'),
(5, 'Laravel 5.4', 'laravel-54', 2, NULL, NULL, '2017-01-28 12:39:13.796191', '2017-01-28 12:51:24.565087', 'Въпреки многото езици в уеб пространството, като Python и Ruby, които са доста стабилни и универсални PHP си остават най-популярния уеб програмен език затова трябва да споменаваме събития като това.\r\nИ така набързо:\r\nНовата версия на популярния PHP framework Laravel с много нови подобрени и полезни благинки, като\r\n- Laravel Dusk \r\n- Laravel Mix, което е преименуван  Elixir\r\n- Blade Components and Slots нещо готино, което ще  е от голяма полза\r\n- Markdown Emails\r\n и да не забравим Automatic Facades.\r\n\r\n По долу ще направя  repost от Laravel News с малко по обширни обяснения на нещата по-горе.\r\n\r\nLaravel Dusk\r\n\r\nLaravel Dusk is an end-to-end browser testing tool for JavaScript enabled applications. It aims to provide the right way to do page interaction tests, so you can use Dusk for things like click buttons/links, forms, as well as drag and drop!\r\n\r\nDusk utilizes the ChromeDriver and the Facebook Php-webdriver for tests. It can work with any Selenium browser, but comes with ChromeDriver by default which will save you from installing a JDK or Selenium.\r\n\r\nDusk is very easy to use without setting up Selenium and starting the server every time.\r\n\r\nLaravel Mix\r\n\r\nLaravel Mix is the next generation of Elixir. It is built with webpack, instead of Gulp. It was renamed because of the significant changes.\r\n\r\nUnless you customized your Elixir setup, moving to Mix shouldn’t be a problem and Laracasts has a video covering this updated tool.\r\n\r\nBlade Components and Slots\r\n\r\nComponents and Slots are designed to give you even more flexibility in your Blade templates. \r\n\r\nMarkdown Emails\r\n\r\nLaravel 5.3 introduced two new features around email, Mailables and Notifications which allow you to send the same message through email, SMS, and other channels.\r\n\r\nBuilding on top of these improvements, Laravel 5.4 includes a brand new Markdown system for creating email templates.\r\n\r\nAutomatic Facades\r\n\r\nYou can now use any class as a Facade on the fly :)))\r\n\r\nПриятно ползване и дано информацията да е била полезна.', 1, 0, 0, 0, 0, 0, 'Laravel', 'uploads/zinnia/2017/01/28/laravel-54.jpg', 0, '', 0, '', 'zinnia/_entry_detail.html', 'entry_detail.html', '', 'Version 5.4 of Laravel is now officially released! This release has many new features, and improvements and here is quick video going over some of the highlights:', '2017-01-28 12:26:57.000000');

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_authors`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_authors_entry_id_15a74736_uniq` (`entry_id`,`author_id`),
  KEY `zinnia_entry_authors_author_id_c95ec445_fk_auth_user_id` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `zinnia_entry_authors`
--

INSERT INTO `zinnia_entry_authors` (`id`, `entry_id`, `author_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_categories`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_categories_entry_id_06e8a1ea_uniq` (`entry_id`,`category_id`),
  KEY `zinnia_entry_categori_category_id_1af4a3b8_fk_zinnia_category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `zinnia_entry_categories`
--

INSERT INTO `zinnia_entry_categories` (`id`, `entry_id`, `category_id`) VALUES
(5, 1, 1),
(6, 1, 4),
(8, 2, 4),
(9, 2, 5),
(7, 3, 4),
(10, 4, 6),
(11, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_related`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_related` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_entry_id` int(11) NOT NULL,
  `to_entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_related_from_entry_id_f5c132fc_uniq` (`from_entry_id`,`to_entry_id`),
  KEY `zinnia_entry_related_to_entry_id_f3ace6a2_fk_zinnia_entry_id` (`to_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_sites`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_sites_entry_id_f65c3bb6_uniq` (`entry_id`,`site_id`),
  KEY `zinnia_entry_sites_site_id_3b37fedc_fk_django_site_id` (`site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `zinnia_entry_sites`
--

INSERT INTO `zinnia_entry_sites` (`id`, `entry_id`, `site_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  ADD CONSTRAINT `registration_registrationprofil_user_id_5fcbf725_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
