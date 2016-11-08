-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2016 at 04:30 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

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
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$0ogIQaBfGAxD$e2yGO9gF/HgRgLiLKJM9pWBYz6Wd4dB4sxX9suPCS8w=', '2016-11-08 11:53:36.845000', 1, 'admin', 'Admin', 'admin', 'raylight75@gmail.com', 1, 1, '2016-09-29 15:28:24.019000'),
(2, 'pbkdf2_sha256$30000$t6XjNB5AixMd$DfyScV/hVbBq+Z3u28Xxt8d9CCaO0Rf1aVxoCRM3U7s=', '2016-10-27 20:25:53.068000', 0, 'ana', 'Ana', 'Blajeva', 'ana.blajeva@abv.bg', 1, 1, '2016-09-29 15:30:38.168000'),
(5, 'pbkdf2_sha256$30000$b55ZL4KcdJ2C$mJkECpkCmOO0RO/dwRQf6vethF8fPRzVp6/3AmeRyXY=', '2016-10-06 19:15:29.156000', 0, 'Ivan', 'Ivan', 'Ivanov', 'Ivan@abv.bg', 1, 1, '2016-10-05 18:01:13.050000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 7),
(2, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(18, '2016-11-07 11:12:28.191000', '2', 'Image object', 1, '[{"added": {}}]', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9f82mmjau95hskx2pjkw085oi4ufd6sj', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-21 10:59:17.380000'),
('ht34dr3yb04sy8tsjtxofqzaabuk90sj', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-20 21:19:36.423000'),
('kktzz2lqq0gradbxukqsilyb3n80dgkn', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-10-16 16:41:55.455000');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
`id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `title`, `cat_id`, `image`) VALUES
(1, 'Focal', 7, 'images/baner-bg-2-3_WOmcw5k.jpg'),
(2, 'Willisau', 7, 'images/baner-bg-3-3_iUEXKaL.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `img_cat`
--

CREATE TABLE IF NOT EXISTS `img_cat` (
`id` int(11) NOT NULL,
  `cat` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `img_cat`
--

INSERT INTO `img_cat` (`id`, `cat`) VALUES
(2, 'Cars'),
(3, 'Interiors'),
(4, 'Models'),
(5, 'Various'),
(6, 'Architectural'),
(7, 'Sliders');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
`id` int(11) NOT NULL,
  `aboutme` longtext NOT NULL,
  `email` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `skype` varchar(32) NOT NULL,
  `address` varchar(32) NOT NULL,
  `contact_info` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `aboutme`, `email`, `phone`, `skype`, `address`, `contact_info`) VALUES
(1, 'Hi my name is Tihomir Blajev, a 3d Artist from Bulgaria,Plovdiv welcome to my online portfolio site\r\n                    showcasing a range of 3D images.\r\n                    Here is the place where you can find a small selection of some of the things I’ve been involved with\r\n                    over the years as a 3D Artist and freelancer. I started early in 2004 with Alias Maya and gradually\r\n                    made the transition to 3DS Max and other 3d packages and I find it a very exciting programs to use.\r\n                    I have many awards and front pages on popular sites like, Evermotion, CGTalk, CGArena, CGArchitect,\r\n                    3D Total, 3Dbg, Blender Guru, Blender Artist, renders as well in many online magazines and books\r\n                    such, The art of Blender, 3d Artist, 3D World , CGArena, Ceiga.\r\n                    I am skilled in, lighting, rendering, 3D modelling, texturing, uwunwraping and basic animation.\r\n                    I currently work full-time as a 3d Artist at Designconnected my responsibilities include rendering,\r\n                    modeling, texturing, lighting and basic animation.I worked 6 year like freelance artist and from\r\n                    2010 at designconnected as 3D Artist.I have experience with Autodesk products and around 7 years\r\n                    with 3DS Max.', 'raylight75@gmail.com', '+359898735129', 'tiho1975', 'Skopie 45,Plovdiv,Bulgaria', 'For more aditional information like PDF, complete CV, feel free to contact me.');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(32) NOT NULL,
  `img` varchar(64) NOT NULL,
  `color` varchar(32) NOT NULL,
  `quantity` int(64) NOT NULL,
  `amount` int(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `order_date`, `status`, `product_id`, `size`, `img`, `color`, `quantity`, `amount`) VALUES
(1, 2, '2015-08-16 20:31:23', '6', 4, 'XL', '8d383-mtk006a.jpg', 'red', 2, 24),
(2, 2, '2015-08-16 20:32:59', '7', 4, 'XL', '8d383-mtk006a.jpg', 'red', 1, 12),
(3, 2, '2015-08-16 20:40:55', '2', 16, 'XXL', 'ebd78-pmtk004a.jpg', 'white', 3, 36),
(4, 2, '2015-08-16 20:52:50', '2', 16, 'XL', 'ebd78-pmtk004a.jpg', 'white', 2, 24),
(5, 1, '2015-08-16 20:52:50', '2', 15, 'M', '10551-pmtk006a.jpg', 'black', 1, 23),
(6, 4, '2015-08-16 21:11:05', '2', 4, 'XXL', '8d383-mtk006a.jpg', 'red', 1, 12),
(7, 1, '2015-08-16 21:11:05', '7', 15, 'L', '10551-pmtk006a.jpg', 'black', 1, 23),
(8, 1, '2015-08-16 21:23:58', '6', 10, 'M', '543ea-mtk004a.jpg', 'brown', 2, 10),
(9, 4, '2015-08-16 21:23:58', '5', 32, 'S', '11f4f-image1xxl.jpg', 'white', 1, 56),
(10, 4, '2015-08-16 22:06:38', '5', 19, 'M', '04776-pms000a.jpg', 'white', 2, 68),
(11, 4, '2015-08-16 23:27:35', '1', 40, 'XL', '742e0-image1xxl-7-.jpg', 'blue', 1, 34),
(12, 2, '2015-08-18 08:16:18', '4', 12, ' XXL', 'dd8f7-pmo001a.jpg', 'black', 3, 267),
(13, 2, '2015-08-18 08:20:05', '6', 12, ' XXL', 'dd8f7-pmo001a.jpg', 'black', 1, 89),
(14, 2, '2015-08-18 08:26:15', '1', 28, 'L', '68d00-4.jpg', 'violet', 2, 74),
(15, 1, '2015-08-18 08:59:21', '2', 21, 'S', 'ea72e-mpd006t.jpg', 'green', 1, 19),
(16, 1, '2015-08-18 08:59:21', '7', 17, 'L', '57e1d-pmtk001a.jpg', 'white', 2, 20),
(17, 2, '2015-08-20 11:30:21', '5', 8, ' XXXL', 'e11b9-mpd006a.jpg', 'blue', 1, 37),
(18, 1, '2015-09-03 18:00:52', '7', 17, 'L', '57e1d-pmtk001a.jpg', 'black', 2, 20),
(19, 4, '2015-09-03 18:00:52', '1', 1, ' XXL', 'ed60e-mpd000c.jpg', 'blue', 1, 25),
(20, 4, '2015-09-03 18:48:24', '5', 32, 'M', '11f4f-image1xxl.jpg', 'white', 2, 112),
(21, 4, '2015-09-03 18:56:32', '4', 44, 'L', '39915-v1.jpg', 'black', 1, 6),
(22, 1, '2015-09-14 20:18:30', '2', 39, ' XL', 'be3aa-image11.jpg', 'violet', 1, 108),
(23, 4, '2015-09-21 18:44:22', '5', 6, 'M', '94efc-mpd012a.jpg', 'brown', 3, 21),
(24, 1, '2015-09-21 18:44:22', '7', 47, ' XXL', '3c47b-pwt001a_1.jpg', 'blue', 3, 267),
(25, 1, '2015-10-26 13:13:10', '5', 1, 'XXL', 'ed60e-mpd000c.jpg', 'blue', 2, 50),
(26, 2, '2015-12-27 17:13:32', '2', 45, 'L', 'c2ae6-n1.jpg', 'red', 3, 15),
(27, 4, '2015-12-27 17:13:32', '2', 42, 'XXL', '729d0-b1.jpg', 'blue', 1, 103),
(28, 4, '2016-05-07 05:12:49', '3', 31, 'XL', 'de5e1-image1.jpg', 'blue', 2, 70),
(29, 4, '2016-05-07 05:33:00', '5', 68, 'M', '547c8-image1xxl-4-.jpg', 'red', 2, 24),
(30, 4, '2016-05-07 05:33:00', '6', 44, 'XXL', '39915-v1.jpg', 'black', 3, 18),
(31, 2, '2016-05-07 06:12:19', '3', 15, 'XS', '10551-pmtk006a.jpg', 'black', 2, 46),
(32, 2, '2016-05-07 06:12:19', '3', 40, 'XL', '742e0-image1xxl-7-.jpg', 'blue', 1, 34),
(33, 2, '2016-05-07 06:15:11', '4', 42, 'XXL', '729d0-b1.jpg', 'black', 1, 103),
(34, 2, '2016-05-07 06:50:23', '5', 39, 'XL', 'be3aa-image11.jpg', 'black', 1, 108),
(35, 2, '2016-05-07 06:50:24', '6', 32, 'M', '11f4f-image1xxl.jpg', 'white', 2, 112),
(36, 2, '2016-05-07 06:50:24', '2', 66, 'L', 'ee456-image1xxl-1-.jpg', 'black', 2, 40),
(37, 4, '2016-05-07 07:13:23', '4', 56, 'L', 'a1fe9-pwd002a.jpg', 'white', 2, 44),
(38, 4, '2016-05-07 07:13:24', '5', 55, 'XL', 'a88c7-pwd001a.jpg', 'black', 1, 54),
(39, 4, '2016-05-07 12:23:57', '4', 47, 'S', '3c47b-pwt001a_1.jpg', 'blue', 1, 89),
(40, 4, '2016-05-07 17:11:59', '', 17, 'L', '57e1d-pmtk001a.jpg', 'black', 1, 10),
(41, 4, '2016-05-07 17:11:59', '', 67, 'XS', '6e71c-image1xxl-2-.jpg', 'black', 2, 32),
(42, 4, '2016-05-07 17:38:20', '', 21, 'S', 'ea72e-mpd006t.jpg', 'red', 2, 38),
(43, 2, '2016-05-07 17:45:12', '', 11, 'XXL', 'c6b37-pmtk001c.jpg', 'white', 1, 99),
(44, 2, '2016-05-08 15:42:13', '', 32, 'M', '11f4f-image1xxl.jpg', 'white', 2, 112),
(45, 4, '2016-05-08 17:27:37', '', 53, 'M', '0c2d2-wbk012c-royal-blue.jpg', 'blue', 2, 90),
(46, 4, '2016-05-08 17:27:37', '', 9, 'L', '9e254-mpd003a.jpg', 'brown', 3, 96),
(47, 4, '2016-05-14 10:24:13', '', 21, 'S', 'ea72e-mpd006t.jpg', 'red', 2, 38),
(48, 4, '2016-05-14 10:24:13', '', 65, 'XS', 'bc43c-image1xxl.jpg', 'red', 3, 82),
(49, 2, '2016-05-14 12:43:47', '', 11, 'XXL', 'c6b37-pmtk001c.jpg', 'white', 1, 79),
(50, 4, '2016-05-14 15:50:56', '', 59, 'S', '0122b-wsd000t.jpg', 'black', 3, 63),
(51, 2, '2016-05-14 18:11:44', '', 23, 'M', 'ee72c-1.jpg', 'violet', 3, 22),
(52, 5, '2016-08-01 07:08:36', '', 17, 'L', '57e1d-pmtk001a.jpg', 'white', 2, 20),
(53, 5, '2016-08-01 07:08:36', '', 18, 'XXL', 'be78d-pms004a.jpg', 'blue', 3, 96),
(54, 5, '2016-08-01 07:08:36', '', 62, 'S', '53103-11000876_4923878_480.jpg', 'white', 3, 55),
(55, 6, '2016-08-01 10:33:06', '', 24, 'XXL', '1d60f-2.jpg', 'blue', 2, 81),
(56, 6, '2016-08-01 10:33:06', '', 22, 'XS', 'd52bb-pmtk005b.jpg', 'blue', 1, 21),
(69, 1, '2016-10-22 19:47:13', '2', 23, 'XXL', '', 'red', 11, 34);

--
-- Triggers `order`
--
DELIMITER //
CREATE TRIGGER `quantity` AFTER INSERT ON `order`
 FOR EACH ROW BEGIN
UPDATE product SET product.quantity = product.quantity - NEW.quantity WHERE  product.id = NEW.id; 
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `registration_registrationprofile`
--

CREATE TABLE IF NOT EXISTS `registration_registrationprofile` (
`id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
`id` int(11) NOT NULL,
  `img` varchar(32) CHARACTER SET utf8 NOT NULL,
  `title` varchar(32) CHARACTER SET utf8 NOT NULL,
  `category` varchar(32) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `img`, `title`, `category`) VALUES
(1, 'images/baner-bg-2-3.jpg', 'Focal', 'Models'),
(2, 'images/baner-bg-3-3.jpg', 'Willisau', 'Interior');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_cat`
--
ALTER TABLE `img_cat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_orders_customers_idx` (`user_id`);

--
-- Indexes for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `img_cat`
--
ALTER TABLE `img_cat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
