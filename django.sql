-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2016 at 10:14 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add fos user', 1, 'add_fosuser'),
(2, 'Can change fos user', 1, 'change_fosuser'),
(3, 'Can delete fos user', 1, 'delete_fosuser'),
(4, 'Can add order', 2, 'add_order'),
(5, 'Can change order', 2, 'change_order'),
(6, 'Can delete order', 2, 'delete_order'),
(7, 'Can view order', 2, 'view_order'),
(8, 'Can add size', 3, 'add_size'),
(9, 'Can change size', 3, 'change_size'),
(10, 'Can delete size', 3, 'delete_size'),
(11, 'Can add brand', 4, 'add_brand'),
(12, 'Can change brand', 4, 'change_brand'),
(13, 'Can delete brand', 4, 'delete_brand'),
(14, 'Can add productsize', 5, 'add_productsize'),
(15, 'Can change productsize', 5, 'change_productsize'),
(16, 'Can delete productsize', 5, 'delete_productsize'),
(17, 'Can add product', 6, 'add_product'),
(18, 'Can change product', 6, 'change_product'),
(19, 'Can delete product', 6, 'delete_product'),
(20, 'Can add log entry', 7, 'add_logentry'),
(21, 'Can change log entry', 7, 'change_logentry'),
(22, 'Can delete log entry', 7, 'delete_logentry'),
(23, 'Can add permission', 8, 'add_permission'),
(24, 'Can change permission', 8, 'change_permission'),
(25, 'Can delete permission', 8, 'delete_permission'),
(26, 'Can add user', 9, 'add_user'),
(27, 'Can change user', 9, 'change_user'),
(28, 'Can delete user', 9, 'delete_user'),
(29, 'Can add group', 10, 'add_group'),
(30, 'Can change group', 10, 'change_group'),
(31, 'Can delete group', 10, 'delete_group'),
(32, 'Can add content type', 11, 'add_contenttype'),
(33, 'Can change content type', 11, 'change_contenttype'),
(34, 'Can delete content type', 11, 'delete_contenttype'),
(35, 'Can add session', 12, 'add_session'),
(36, 'Can change session', 12, 'change_session'),
(37, 'Can delete session', 12, 'delete_session'),
(38, 'Can add registration profile', 13, 'add_registrationprofile'),
(39, 'Can change registration profile', 13, 'change_registrationprofile'),
(40, 'Can delete registration profile', 13, 'delete_registrationprofile');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$0ogIQaBfGAxD$e2yGO9gF/HgRgLiLKJM9pWBYz6Wd4dB4sxX9suPCS8w=', '2016-11-15 18:06:50.614245', 1, 'admin', 'Admin', 'admin', 'raylight75@gmail.com', 1, 1, '2016-09-29 15:28:24.019000'),
(2, 'pbkdf2_sha256$30000$t6XjNB5AixMd$DfyScV/hVbBq+Z3u28Xxt8d9CCaO0Rf1aVxoCRM3U7s=', '2016-10-27 20:25:53.068000', 0, 'ana', 'Ana', 'Blajeva', 'ana.blajeva@abv.bg', 1, 1, '2016-09-29 15:30:38.168000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 7);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-09-29 15:30:38.268000', '2', 'ana', 1, '[{"added": {}}]', 9, 1),
(2, '2016-09-29 15:31:04.395000', '2', 'ana', 2, '[{"changed": {"fields": ["first_name", "last_name", "email", "is_staff"]}}]', 9, 1),
(3, '2016-09-30 19:43:18.005000', '2', 'ana', 2, '[]', 9, 1),
(4, '2016-09-30 19:57:23.729000', '2', 'ana', 2, '[]', 9, 1),
(5, '2016-09-30 20:16:57.869000', '2', 'ana', 2, '[]', 9, 1),
(6, '2016-09-30 20:29:46.719000', '2', 'ana', 2, '[]', 9, 1),
(7, '2016-10-05 18:02:19.180000', '5', 'Ivan', 2, '[{"changed": {"fields": ["first_name", "last_name", "is_staff"]}}]', 9, 1),
(8, '2016-11-06 20:56:51.154000', '1', 'Slider object', 1, '[{"added": {}}]', 15, 1),
(9, '2016-11-06 21:07:08.081000', '1', 'Slider object', 2, '[{"changed": {"fields": ["img"]}}]', 15, 1),
(10, '2016-11-06 21:21:44.104000', '2', 'Slider object', 1, '[{"added": {}}]', 15, 1),
(11, '2016-11-07 10:59:55.152000', '2', 'cars', 1, '[{"added": {}}]', 16, 1),
(12, '2016-11-07 11:00:14.404000', '3', 'Interiors', 1, '[{"added": {}}]', 16, 1),
(13, '2016-11-07 11:00:53.861000', '4', 'Models', 1, '[{"added": {}}]', 16, 1),
(14, '2016-11-07 11:01:10.466000', '5', 'Various', 1, '[{"added": {}}]', 16, 1),
(15, '2016-11-07 11:01:28.666000', '6', 'Architectural', 1, '[{"added": {}}]', 16, 1),
(16, '2016-11-07 11:02:00.811000', '7', 'Sliders', 1, '[{"added": {}}]', 16, 1),
(17, '2016-11-07 11:11:44.951000', '1', 'Image object', 1, '[{"added": {}}]', 17, 1),
(18, '2016-11-07 11:12:28.191000', '2', 'Image object', 1, '[{"added": {}}]', 17, 1),
(19, '2016-11-09 11:39:15.650000', '1', 'The Contact', 1, '[{"added": {}}]', 19, 1),
(20, '2016-11-09 11:47:05.894000', '2', 'The Ideas', 1, '[{"added": {}}]', 19, 1),
(21, '2016-11-09 11:49:10.785000', '3', 'CREATION QUALITY', 1, '[{"added": {}}]', 19, 1),
(22, '2016-11-09 11:49:33.439000', '2', 'THE IDEAS', 2, '[{"changed": {"fields": ["name"]}}]', 19, 1),
(23, '2016-11-09 11:49:46.515000', '1', 'THE CONTACT', 2, '[{"changed": {"fields": ["name"]}}]', 19, 1),
(24, '2016-11-09 11:50:32.353000', '4', 'WORKFLOW', 1, '[{"added": {}}]', 19, 1),
(25, '2016-11-09 11:51:34.926000', '5', 'WORLD WIDE', 1, '[{"added": {}}]', 19, 1),
(26, '2016-11-09 11:52:06.811000', '6', 'SERVICE RANGE', 1, '[{"added": {}}]', 19, 1),
(27, '2016-11-09 11:52:24.784000', '3', 'CREATION QUALITY', 2, '[{"changed": {"fields": ["image"]}}]', 19, 1),
(28, '2016-11-09 13:51:48.812000', '8', 'Service Slider', 1, '[{"added": {}}]', 16, 1),
(29, '2016-11-09 13:55:52.641000', '3', 'Image object', 1, '[{"added": {}}]', 17, 1),
(30, '2016-11-10 07:40:12.710000', '9', 'Aboutme', 1, '[{"added": {}}]', 16, 1),
(31, '2016-11-10 08:13:41.587000', '4', 'Image object', 1, '[{"added": {}}]', 17, 1),
(32, '2016-11-10 08:37:56.900000', '3', 'Image object', 2, '[{"changed": {"fields": ["title"]}}]', 17, 1),
(33, '2016-11-10 10:07:59.442000', '10', 'about_top', 1, '[{"added": {}}]', 16, 1),
(34, '2016-11-10 10:17:33.564000', '5', 'Slider object', 1, '[{"added": {}}]', 20, 1),
(35, '2016-11-10 13:33:43.077000', '1', 'Image object', 1, '[{"added": {}}]', 17, 1),
(36, '2016-11-10 13:34:25.407000', '2', 'Image object', 1, '[{"added": {}}]', 17, 1),
(37, '2016-11-10 15:22:49.226000', '3', 'Image object', 1, '[{"added": {}}]', 17, 1),
(38, '2016-11-10 15:24:07.837000', '4', 'Image object', 1, '[{"added": {}}]', 17, 1),
(39, '2016-11-10 15:40:49.636000', '5', 'Image object', 1, '[{"added": {}}]', 17, 1),
(40, '2016-11-10 19:23:49.932000', '6', 'Slider object', 1, '[{"added": {}}]', 20, 1),
(41, '2016-11-10 19:45:29.082000', '6', 'Image object', 1, '[{"added": {}}]', 17, 1),
(42, '2016-11-10 19:46:03.510000', '7', 'Image object', 1, '[{"added": {}}]', 17, 1),
(43, '2016-11-10 19:46:42.433000', '8', 'Image object', 1, '[{"added": {}}]', 17, 1),
(44, '2016-11-10 19:49:34.937000', '9', 'Image object', 1, '[{"added": {}}]', 17, 1),
(45, '2016-11-10 19:50:30.067000', '10', 'Image object', 1, '[{"added": {}}]', 17, 1),
(46, '2016-11-10 19:51:21.996000', '11', 'Image object', 1, '[{"added": {}}]', 17, 1),
(47, '2016-11-10 19:52:46.694000', '12', 'Image object', 1, '[{"added": {}}]', 17, 1),
(48, '2016-11-10 19:57:12.410000', '13', 'Image object', 1, '[{"added": {}}]', 17, 1),
(49, '2016-11-10 19:57:38.734000', '14', 'Image object', 1, '[{"added": {}}]', 17, 1),
(50, '2016-11-10 19:59:48.265000', '15', 'Image object', 1, '[{"added": {}}]', 17, 1),
(51, '2016-11-10 20:00:27.808000', '16', 'Image object', 1, '[{"added": {}}]', 17, 1),
(52, '2016-11-10 20:01:49.915000', '17', 'Image object', 1, '[{"added": {}}]', 17, 1),
(53, '2016-11-10 20:03:18.929000', '18', 'Image object', 1, '[{"added": {}}]', 17, 1),
(54, '2016-11-10 20:05:01.420000', '19', 'Image object', 1, '[{"added": {}}]', 17, 1),
(55, '2016-11-10 20:05:50.149000', '20', 'Image object', 1, '[{"added": {}}]', 17, 1),
(56, '2016-11-10 20:07:06.764000', '21', 'Image object', 1, '[{"added": {}}]', 17, 1),
(57, '2016-11-10 20:08:50.835000', '22', 'Image object', 1, '[{"added": {}}]', 17, 1),
(58, '2016-11-10 20:09:21.652000', '23', 'Image object', 1, '[{"added": {}}]', 17, 1),
(59, '2016-11-10 20:10:55.562000', '24', 'Image object', 1, '[{"added": {}}]', 17, 1),
(60, '2016-11-10 20:14:23.348000', '21', 'Image object', 2, '[]', 17, 1),
(61, '2016-11-11 08:53:08.218000', '25', 'Image object', 1, '[{"added": {}}]', 17, 1),
(62, '2016-11-11 08:55:33.593000', '26', 'Image object', 1, '[{"added": {}}]', 17, 1),
(63, '2016-11-11 08:56:15.088000', '27', 'Image object', 1, '[{"added": {}}]', 17, 1),
(64, '2016-11-11 08:57:12.868000', '28', 'Image object', 1, '[{"added": {}}]', 17, 1),
(65, '2016-11-11 08:57:12.868000', '29', 'Image object', 1, '[{"added": {}}]', 17, 1),
(66, '2016-11-11 08:59:00.779000', '29', 'Image object', 2, '[{"changed": {"fields": ["title", "image"]}}]', 17, 1),
(67, '2016-11-11 09:22:47.448000', '30', 'Image object', 1, '[{"added": {}}]', 17, 1),
(68, '2016-11-11 09:24:27.066000', '31', 'Image object', 1, '[{"added": {}}]', 17, 1),
(69, '2016-11-11 09:25:06.868000', '32', 'Image object', 1, '[{"added": {}}]', 17, 1),
(70, '2016-11-11 09:28:35.577000', '33', 'Image object', 1, '[{"added": {}}]', 17, 1),
(71, '2016-11-11 10:46:46.245000', '34', 'Image object', 1, '[{"added": {}}]', 17, 1),
(72, '2016-11-11 11:18:07.532000', '35', 'Image object', 1, '[{"added": {}}]', 17, 1),
(73, '2016-11-11 12:13:24.556000', '36', 'Image object', 1, '[{"added": {}}]', 17, 1),
(74, '2016-11-11 12:14:55.184000', '37', 'Image object', 1, '[{"added": {}}]', 17, 1),
(75, '2016-11-11 12:16:50.271000', '38', 'Image object', 1, '[{"added": {}}]', 17, 1),
(76, '2016-11-11 12:17:29.574000', '38', 'Image object', 2, '[{"changed": {"fields": ["image"]}}]', 17, 1),
(77, '2016-11-11 12:18:19.879000', '39', 'Image object', 1, '[{"added": {}}]', 17, 1),
(78, '2016-11-11 12:18:19.942000', '40', 'Image object', 1, '[{"added": {}}]', 17, 1),
(79, '2016-11-11 12:18:50.761000', '41', 'Image object', 1, '[{"added": {}}]', 17, 1),
(80, '2016-11-11 12:19:45.498000', '42', 'Image object', 1, '[{"added": {}}]', 17, 1),
(81, '2016-11-11 12:21:26.902000', '40', 'Image object', 3, '', 17, 1),
(82, '2016-11-11 17:43:43.030400', '43', 'Image object', 1, '[{"added": {}}]', 17, 1),
(83, '2016-11-11 21:25:57.853887', '44', 'Image object', 1, '[{"added": {}}]', 17, 1),
(84, '2016-11-12 16:58:21.782106', '6', 'Goro', 1, '[{"added": {}}]', 9, 1),
(85, '2016-11-12 16:58:41.852891', '6', 'Goro', 2, '[{"changed": {"fields": ["is_staff", "is_superuser"]}}]', 9, 1),
(86, '2016-11-14 22:33:07.318930', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme", "contact_info"]}}]', 18, 1),
(87, '2016-11-14 22:33:48.078350', '1', 'raylight75@gmail.com', 2, '[]', 18, 1),
(88, '2016-11-14 22:34:40.408470', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(89, '2016-11-14 22:37:27.978537', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(90, '2016-11-14 22:38:09.160496', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(91, '2016-11-14 22:43:45.464167', '1', 'raylight75@gmail.com', 2, '[]', 18, 1),
(92, '2016-11-14 22:43:59.611552', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(93, '2016-11-14 22:46:03.877027', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(94, '2016-11-14 22:46:24.882463', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(95, '2016-11-14 22:47:04.449341', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(96, '2016-11-14 22:47:30.617707', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(97, '2016-11-14 22:47:42.503935', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(98, '2016-11-14 22:48:16.001636', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(99, '2016-11-14 22:51:39.537499', '1', 'raylight75@gmail.com', 2, '[]', 18, 1),
(100, '2016-11-14 22:56:12.811151', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["aboutme"]}}]', 18, 1),
(101, '2016-11-14 23:13:06.215522', '1', 'raylight75@gmail.com', 2, '[{"changed": {"fields": ["contact_info"]}}]', 18, 1),
(102, '2016-11-15 18:07:05.377750', '6', 'Goro', 3, '', 9, 1),
(103, '2016-11-15 18:07:05.380285', '5', 'Ivan', 3, '', 9, 1),
(104, '2016-11-15 18:10:13.465356', '45', 'Image object', 1, '[{"added": {}}]', 17, 1),
(105, '2016-11-15 18:11:26.595982', '46', 'Image object', 1, '[{"added": {}}]', 17, 1),
(106, '2016-11-15 18:13:06.492052', '47', 'Image object', 1, '[{"added": {}}]', 17, 1),
(107, '2016-11-15 18:15:17.169922', '48', 'Image object', 1, '[{"added": {}}]', 17, 1),
(108, '2016-11-15 18:15:43.411340', '49', 'Image object', 1, '[{"added": {}}]', 17, 1),
(109, '2016-11-15 18:20:01.582071', '50', 'Image object', 1, '[{"added": {}}]', 17, 1),
(110, '2016-11-15 18:21:35.309874', '50', 'Image object', 2, '[{"changed": {"fields": ["image"]}}]', 17, 1),
(111, '2016-11-15 18:22:46.604761', '47', 'Image object', 2, '[{"changed": {"fields": ["image"]}}]', 17, 1),
(112, '2016-11-15 18:24:12.734522', '51', 'Image object', 1, '[{"added": {}}]', 17, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(4, 'app', 'brand'),
(1, 'app', 'fosuser'),
(2, 'app', 'order'),
(6, 'app', 'product'),
(5, 'app', 'productsize'),
(3, 'app', 'size'),
(10, 'auth', 'group'),
(8, 'auth', 'permission'),
(9, 'auth', 'user'),
(17, 'backend', 'image'),
(16, 'backend', 'img_cat'),
(18, 'backend', 'info'),
(19, 'backend', 'service'),
(20, 'backend', 'slider'),
(11, 'contenttypes', 'contenttype'),
(15, 'frontend', 'slider'),
(14, 'product', 'product'),
(13, 'registration', 'registrationprofile'),
(12, 'sessions', 'session');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-09-29 15:24:35.061000'),
(2, 'auth', '0001_initial', '2016-09-29 15:24:44.583000'),
(3, 'admin', '0001_initial', '2016-09-29 15:24:46.580000'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-09-29 15:24:46.642000'),
(5, 'app', '0001_initial', '2016-09-29 15:24:52.820000'),
(6, 'contenttypes', '0002_remove_content_type_name', '2016-09-29 15:24:54.021000'),
(7, 'auth', '0002_alter_permission_name_max_length', '2016-09-29 15:24:55.456000'),
(8, 'auth', '0003_alter_user_email_max_length', '2016-09-29 15:24:56.985000'),
(9, 'auth', '0004_alter_user_username_opts', '2016-09-29 15:24:57.094000'),
(10, 'auth', '0005_alter_user_last_login_null', '2016-09-29 15:24:57.625000'),
(11, 'auth', '0006_require_contenttypes_0002', '2016-09-29 15:24:57.656000'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2016-09-29 15:24:57.703000'),
(13, 'auth', '0008_alter_user_username_max_length', '2016-09-29 15:24:58.498000'),
(14, 'sessions', '0001_initial', '2016-09-29 15:24:59.107000'),
(15, 'registration', '0001_initial', '2016-10-05 17:59:50.379000'),
(16, 'registration', '0002_registrationprofile_activated', '2016-10-05 17:59:50.937000'),
(17, 'registration', '0003_migrate_activatedstatus', '2016-10-05 17:59:50.999000');

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
('glco278pwno3jb63sye7yts448y0ihe1', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-23 08:16:10.226000'),
('ht34dr3yb04sy8tsjtxofqzaabuk90sj', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-20 21:19:36.423000'),
('kktzz2lqq0gradbxukqsilyb3n80dgkn', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-10-16 16:41:55.455000'),
('mkad6nh2pu7yucxk9u2mje446cwvvcjv', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-25 08:32:33.128000'),
('rwlajmj43to520268ot2bnjx211rft58', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-24 15:38:51.106000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

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
(51, 'McLaren', 2, 'images/corona_Mclaren.jpg');

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
  `aboutme` longtext NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `skype` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `contact_info` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `aboutme`, `email`, `phone`, `skype`, `address`, `contact_info`) VALUES
(1, '<p>\r\n     Hello, my name is Tihomir Blajev. I am a 3d Artist from the city of Plovdiv, Bulgaria. \r\nWelcome to my online portfolio website showcasing a range of 3D generated images created by me. This is the place where you can see a very small selection of the projects that I’ve been involved with over the years as a 3D Artist. \r\nI currently work full-time last 5 year as a 3d Artist at Designconnected  where my responsibilities include rendering, modeling, texturing, lighting and creating basic animation. I have been working also for 6 years as a freelance 3d artist. \r\n<q class=" alignleft">\r\nThe projects seen on my website are a result of 10 years work and experience. I must say that in some of them, become so pretty because our modelers in Designconnected did great work on 3d models.\r\n</q>\r\nI started my work early in 2004 using  Alias Maya and gradually made the transition to Autodesk 3D Max and other 3d packages. I am skilled in lighting, rendering, 3D modelling, texturing, unwraping and basic animation and also have a lot of experience working with Autodesk products. I find them all very exciting programs to use and create projects with.\r\n     I have won many awards and my work has been posted on the front pages of popular websites like Evermotion, CGTalk, CGArena ,  CGArchitect,  3D Total,  3DBG ,  Blender Guru,  Blender Artist .  Many of my renders were posted by online magazines and books like The art of Blender,  3d Artist ,  3D World  ,  CGArena ,  Ceiga .\r\n<q class=" alignright"> \r\n     My latest interest has become programming. I am especially interested  and very passionate in web orientated programming and Frameworks with PHP, Python and  Ruby. I am very passionate and devoted to my work and constantly trying to better my knowledge and learn new skills in this dinamic situation.\r\n</q>\r\n</p>', 'raylight75@gmail.com', '+359898735129', 'tiho1975', 'Skopie 45,Plovdiv,Bulgaria', 'For more aditional information like PDF, complete CV, feel free to contact me.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `cat_id`, `image`) VALUES
(1, 'Focal', 1, 'images/baner-bg-2-3_WOmcw5k.jpg'),
(2, 'Tadao Ando', 1, 'images/baner-bg-3-3_iUEXKaL.jpg'),
(3, 'service_bg', 2, 'images/contact-sep2.jpg'),
(4, 'Slide_aboutme', 3, 'images/dezeen_banner2.jpg'),
(5, 'About_top', 4, 'images/baner-bg-11.jpg'),
(6, 'Miura', 1, 'images/miura.jpg');

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
