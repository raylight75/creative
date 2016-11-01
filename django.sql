-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2016 at 08:03 PM
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
(1, 'pbkdf2_sha256$30000$0ogIQaBfGAxD$e2yGO9gF/HgRgLiLKJM9pWBYz6Wd4dB4sxX9suPCS8w=', '2016-10-05 18:01:23.146000', 1, 'admin', 'Admin', 'admin', 'raylight75@gmail.com', 1, 1, '2016-09-29 15:28:24.019000'),
(2, 'pbkdf2_sha256$30000$t6XjNB5AixMd$DfyScV/hVbBq+Z3u28Xxt8d9CCaO0Rf1aVxoCRM3U7s=', '2016-10-02 07:42:49.109000', 0, 'ana', 'Ana', 'Blajeva', 'ana.blajeva@abv.bg', 1, 1, '2016-09-29 15:30:38.168000'),
(5, 'pbkdf2_sha256$30000$b55ZL4KcdJ2C$mJkECpkCmOO0RO/dwRQf6vethF8fPRzVp6/3AmeRyXY=', '2016-10-05 18:02:31.316000', 0, 'Ivan', 'Ivan', 'Ivanov', 'Ivan@abv.bg', 1, 1, '2016-10-05 18:01:13.050000');

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
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
`id` int(11) NOT NULL,
  `brand` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`) VALUES
(1, 'Gucci'),
(2, 'Dior'),
(3, 'Moschino'),
(4, 'Pepe'),
(5, 'CK'),
(6, 'DKNY'),
(7, 'Fendi');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
(7, '2016-10-05 18:02:19.180000', '5', 'Ivan', 2, '[{"changed": {"fields": ["first_name", "last_name", "is_staff"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
(11, 'contenttypes', 'contenttype'),
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
('kktzz2lqq0gradbxukqsilyb3n80dgkn', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-10-16 16:41:55.455000');

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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

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
(56, 6, '2016-08-01 10:33:06', '', 22, 'XS', 'd52bb-pmtk005b.jpg', 'blue', 1, 21);

--
-- Triggers `order`
--
DELIMITER //
CREATE TRIGGER `quantity` AFTER INSERT ON `order`
 FOR EACH ROW BEGIN
UPDATE products SET products.quantity = products.quantity - NEW.quantity WHERE  products.product_id = NEW.product_id; 
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(11) NOT NULL,
  `slug` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` mediumtext NOT NULL,
  `a_img` varchar(45) NOT NULL,
  `b_img` varchar(45) NOT NULL,
  `c_img` varchar(45) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `slug`, `name`, `description`, `a_img`, `b_img`, `c_img`, `brand_id`, `cat_id`, `parent_id`, `quantity`, `price`) VALUES
(1, 'CK-Blue-Schoolboy-Blazer', 'CK Blue Schoolboy Blazer', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', '604e7-mtk009t.jpg', 'df7b4-mpd000t.jpg', '09a16-mpd000t_6.jpg', 5, 7, 1, 8, 25),
(2, 'Dior-Blue-Peacoat-Trench', 'Dior Blue Peacoat Trench', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '0c88d-mtk009a.jpg', '1d3f9-mtk009b.jpg', '604e7-mtk009t.jpg', 2, 3, 1, 5, 15),
(3, 'Fendi-Waxed-Blue-Jacket', 'Fendi Waxed Blue Jacket', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '51c1b-pmo000a.jpg', 'c10d9-pmo000b.jpg', 'bdb32-pmo000c.jpg', 7, 9, 1, 3, 80),
(4, 'Gucci-Red-Neck-Sweater', 'Gucci Red Neck Sweater', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>', '8d383-mtk006a.jpg', '07e30-mtk006b.jpg', '9cbb3-mtk006t.jpg', 1, 3, 1, 5, 12),
(5, 'Pepe-Jeans-Outwear-Jeans', 'Pepe Jeans Outwear Jeans', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Verdana, Geneva, sans-serif; font-size: 10px;">Nullam dictum felis eu pede mollis pretium.</span></p>', 'f0a95-mpd000a.jpg', '87131-mpd000b.jpg', '87131-mpd000b.jpg', 4, 8, 1, 23, 19),
(6, 'DKNY-Brown-Line-Jeans', 'DKNY Brown Line Jeans', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '94efc-mpd012a.jpg', '35a3f-mpd012b.jpg', 'aa423-mpd012t.jpg', 6, 6, 1, 45, 7),
(7, 'Moschino-Violet-Shirt ', 'Moschino Violet Shirt ', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'd4bfb-mtk000a.jpg', '0dfc6-mtk000b.jpg', '52d0c-mtk000t.jpg', 3, 5, 1, 67, 6),
(8, 'Pepe-Jeans-Blue-Retro', 'Pepe Jeans Blue Retro', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'e11b9-mpd006a.jpg', '01bc5-mpd006b.jpg', '', 4, 6, 1, 32, 37),
(9, 'Gucci-Brown-Jeans', 'Gucci Brown Jeans', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '9e254-mpd003a.jpg', '80540-mpd003b.jpg', 'c4a7d-mpd003t.jpg', 1, 6, 1, 31, 32),
(10, 'Dior-Brown-Mens-Shirt', 'Dior Brown Mens Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '543ea-mtk004a.jpg', '97d6f-mtk004t.jpg', '', 2, 5, 1, 78, 5),
(11, 'Fendi-White-Jacket', 'Fendi White Jacket', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'c6b37-pmtk001c.jpg', '04ec4-pmtk001t.jpg', '', 7, 9, 1, 1, 99),
(12, 'Dior-Black-Long-Blazer', 'Dior Black Long Blazer', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'dd8f7-pmo001a.jpg', 'd071b-pmo001b.jpg', 'd4450-pmo001t.jpg', 2, 7, 1, 3, 89),
(13, 'CK-Shell-Black-Blazer', 'CK Shell Black Blazer', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '3a815-pmo002a.jpg', '6cb7c-pmo002b.jpg', '3e659-pmo002t.jpg', 5, 7, 1, 4, 94),
(14, 'Fendi-Brown-Skinny-Jeans', 'Fendi Brown Skinny Jeans', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '56245-pmp002a.jpg', '1f543-pmp002b.jpg', '892a5-pmp002t.jpg', 7, 6, 1, 42, 54),
(15, 'DKNY-Black-Neck-Sweater', 'DKNY Black Neck Sweater', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '10551-pmtk006a.jpg', '594d8-pmtk006t.jpg', '', 6, 3, 1, 32, 23),
(16, 'Moschino-White-Hoodie', 'Moschino White Hoodie', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'ebd78-pmtk004a.jpg', '74d1c-pmtk004b.jpg', '405b7-pmtk004t.jpg', 3, 3, 1, 34, 12),
(17, 'Pepe-Jeans-Stripe-Shirt', 'Pepe Jeans Stripe Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '57e1d-pmtk001a.jpg', '41715-pmtk001b.jpg', '', 4, 5, 1, 73, 10),
(18, 'Fendi-Blue-Neck-Shirt', 'Fendi Blue Neck Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'be78d-pms004a.jpg', 'ee0c7-pms004b.jpg', 'e84e4-pms004t.jpg', 7, 8, 1, 18, 32),
(19, 'Gucci-White-Sleeve-Shirt', 'Gucci White Sleeve Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '04776-pms000a.jpg', 'ef015-pms000b.jpg', 'bd7a2-pms000t.jpg', 1, 5, 1, 3, 32),
(20, 'CK-White-Heisen-Sweater', 'CK White Heisen Sweater', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'b2890-pmtk000a.jpg', 'd513f-pmtk000t.jpg', '', 5, 3, 1, 32, 23),
(21, 'DKNY-Red-Neck-Shirt', 'DKNY Red Neck Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'ea72e-mpd006t.jpg', '02090-pms003a.jpg', '', 6, 5, 1, 72, 19),
(22, 'Fendi-Navy-Front-Jacket', 'Fendi Navy Front Jacket', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'd52bb-pmtk005b.jpg', '93d69-pmtk005t.jpg', '', 7, 9, 1, 66, 21),
(23, 'Moschino-Shell-Viol-Shirt', 'Moschino Shell Viol Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'ee72c-1.jpg', 'a35ee-1_2.jpg', '', 3, 8, 1, 28, 9),
(24, 'Pepe-Jeans-Blue-Shirt', 'Pepe Jeans Blue Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '1d60f-2.jpg', '43f35-2_2.jpg', '', 4, 8, 1, 68, 27),
(25, 'Moschino-White-Jacket', 'Moschino White Jacket', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '1ddb2-9.jpg', '88519-9_2.jpg', '', 3, 3, 1, 30, 23),
(26, 'Gucci-Fine-Sweaters', 'Gucci Fine Sweaters', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '6201a-8.jpg', '646e6-8_2.jpg', '', 1, 3, 1, 34, 16),
(27, 'Fendi-Black-Stripe-Shirt', 'Fendi Black Stripe Shirt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', '9fee1-7_2.jpg', '5a8ba-7.jpg', '', 7, 5, 1, 23, 19),
(28, 'CK-Blue-Nautical-Shirt', 'CK Blue Nautical Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '68d00-4.jpg', '093a2-4_2.jpg', '', 5, 6, 1, 67, 37),
(29, 'Dior-White-Shirt', 'Dior White Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '727db-5.jpg', '36cb0-5_2.jpg', '', 2, 8, 1, 21, 22),
(30, 'DKNY-Blue-Sleeve-Shirt ', 'DKNY Blue Sleeve Shirt ', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '2bf67-6.jpg', '97b6b-6_2.jpg', '', 6, 8, 1, 6, 27),
(31, 'CK-Jeans-Mid-Wash', 'CK Jeans Mid Wash', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'de5e1-image1.jpg', '277fa-image2.jpg', 'b9e23-image3.jpg', 5, 6, 1, 76, 35),
(32, 'DKNY-White-Lapell-Blazer', 'DKNY White Lapell Blazer', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '11f4f-image1xxl.jpg', 'ae5f0-image2xxl.jpg', '70794-image4xxl.jpg', 6, 7, 1, 41, 56),
(36, 'Moschino-Red-Jacket', 'Moschino Red Jacket', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.&gt;</p>\r\n', '481c6-m0.jpg', '5ca87-m1.jpg', 'd394f-m2.jpg', 3, 9, 1, 60, 31),
(37, 'CK-Violet-Jacket-Arc', 'CK Violet Jacket Arc', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '429a3-image1xxl-3-.jpg', '48fc8-image2xxl-3-.jpg', '', 5, 8, 1, 32, 101),
(38, 'Fendi-Blue-Jacket ', 'Fendi Blue Jacket ', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'edcd0-image1xxl-5-.jpg', '62db1-image2xxl-5-.jpg', '1a69c-image3xxl-4-.jpg', 7, 9, 1, 41, 38),
(39, 'Pepe-Jeans-Violet-Blazer', 'Pepe Jeans Violet Blazer', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'be3aa-image11.jpg', 'ba959-image4xxl-1-.jpg', 'ccb74-image2xxl-7-.jpg', 4, 7, 1, 2, 108),
(40, 'Pepe-Jeans-Vintage-1969', 'Pepe Jeans Vintage 1969', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '742e0-image1xxl-7-.jpg', 'a8337-image2xxl-8-.jpg', 'cf60e-image4xxl-2-.jpg', 4, 6, 1, 55, 34),
(41, 'Moschino-Blue-Sweater', 'Moschin Blue Sweater', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '086c2-a1.jpg', '929fb-a2.jpg', 'c5e8e-a3.jpg', 3, 3, 1, 11, 11),
(42, 'Fendi-Tuxedo-Blazer', 'Fendi Tuxedo Blazer', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '729d0-b1.jpg', 'dae7a-b3.jpg', 'cd9f8-b2.jpg', 7, 7, 1, 1, 103),
(43, 'CK-Violet-Blazer', 'CK Violet Blazer', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '0455e-c1.jpg', '94765-c3.jpg', 'c3d77-c2.jpg', 5, 7, 1, 5, 108),
(44, 'Dior-Black-Shirt-Stripe', 'Dior Black Shirt Stripe', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', '39915-v1.jpg', '9b7f8-v2.jpg', '1f9e4-v3.jpg', 2, 5, 1, 53, 6),
(45, 'Fendi-Red-T-Shirt', 'Fendi Red T-Shirt', '<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n', 'c2ae6-n1.jpg', 'c5a0d-n2.jpg', '08ec9-n3.jpg', 7, 5, 1, 64, 5),
(46, 'DKNY-Black-Jacket', 'DKNY Black Jacket', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.\r\n', '7039c-image1xxl-6-.jpg', 'c3329-image4xxl-3-.jpg', '', 6, 9, 1, 23, 85),
(47, 'Dior-Blue-Women-Wrap', 'Dior Blue Women Wrap', '<p>\r\n	Nice blue stylish wrap from famous brand Dior</p>\r\n', '3c47b-pwt001a_1.jpg', '5f9ad-pwt001b.jpg', 'd808a-pwt001t.jpg', 5, 10, 2, 11, 89),
(48, 'CK-Nice-Women-Blue-Wrap', 'CK Nice Women Blue Wrap', '<p>\r\n	K Nice Women Blue Wrap.&nbsp;Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper</p>\r\n', '53b38-wsd013a.jpg', '9d808-wsd013b.jpg', '6a8b5-wsd013t.jpg', 5, 10, 2, 5, 43),
(49, 'CK-Wrap-Women-Blue ', 'CK Wrap Women Blue ', '<p>\r\n	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper</p>\r\n', 'df290-wbk003a.jpg', '18b18-wbk003b.jpg', 'be567-wbk003t.jpg', 5, 10, 2, 6, 32),
(50, 'CK-Women-Wrap', 'CK Women Wrap', '<p>\r\n	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper</p>\r\n', '942b2-pwd000a.jpg', '31ccc-pwd000b.jpg', '840c9-pwd000t.jpg', 5, 10, 2, 23, 78),
(51, 'CL-Light-Blue-Wrap', 'CL Light Blue Wrap', '<p>\r\n	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper</p>\r\n', '0bc05-pwt000a.jpg', 'e4bc3-pwt000b.jpg', 'b9cf1-pwt000t.jpg', 5, 10, 2, 3, 39),
(52, 'CK-Wrap-Blue-Jeans', 'CK Wrap Blue Jeans', '<p>\r\n	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper</p>\r\n', 'e8086-wpd005a.jpg', 'c5317-wpd005b.jpg', '', 5, 10, 2, 45, 30),
(53, 'CK-Blue-Wrap-Shirt', 'CK Blue Wrap Shirt', '<p>\r\n	Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper</p>\r\n', '0c2d2-wbk012c-royal-blue.jpg', 'c6269-wbk012d-pink.jpg', '', 5, 10, 2, 21, 56),
(54, 'Dior-White-Mini', 'Dior White Mini', '<p style="box-sizing: border-box; margin: 0px 0px 20px; color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">\r\n	Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus quis, laoreet et, pretium ac, nisi. Aenean magna nisl, mollis quis, molestie eu, feugiat in, orci. In hac habitasse platea dictumst.</p>\r\n', '35f37-wsd008a.jpg', 'c45b2-wsd008b.jpg', '2282b-wsd008t.jpg', 2, 11, 2, 20, 34),
(55, 'DKNY-Black-Mini', 'DKNY Black Mini', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>\r\n', 'a88c7-pwd001a.jpg', 'd10c8-pwd001b.jpg', '78a4b-pwd001t.jpg', 6, 11, 2, 4, 67),
(56, 'Gucci-White-Mini', 'Gucci White Mini', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat.</span></p>\r\n', 'a1fe9-pwd002a.jpg', '7e425-pwd002b.jpg', '2defc-pwd002t.jpg', 1, 11, 2, 13, 22),
(57, 'Fendi-Brown-Mini', 'Fendi Brown Mini', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat.</span></p>\r\n', '27081-pwt004a.jpg', '01f42-pwt004b.jpg', '3f214-pwt004t.jpg', 7, 11, 2, 19, 14),
(58, 'Pepe-Jeans-Black-Mini', 'Pepe Jeans Black Mini', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat.</span></p>\r\n', 'e93d3-pwt003a.jpg', '9002f-pwt003t.jpg', '', 4, 11, 2, 34, 12),
(59, 'Moschino-Brown-Mini', 'Moschino Brown Mini', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat.</span></p>\r\n', '0122b-wsd000t.jpg', '9e31b-wsd000a.jpg', '64625-wsd000b.jpg', 3, 11, 2, 29, 21),
(62, 'CK-White-Pleated-Top', 'CK White Pleated Top', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 13px; line-height: 22px;">Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90&prime;s vice trust fund gastropub gentrify retro marfa viral. Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90&prime;s vice trust fund gastropub gentrify retro marfa viral.</span></p>\r\n', '53103-11000876_4923878_480.jpg', '6df9e-11000876_4923882_480.jpg', '25079-11000876_4923876_480.jpg', 5, 15, 2, 42, 23),
(63, 'Dior-Brown-Tops', 'Dior Brown Tops', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 13px; line-height: 22px;">Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90&prime;s vice trust fund gastropub gentrify retro marfa viral. Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90&prime;s vice trust fund gastropub gentrify retro marfa viral.</span></p>\r\n', '832bd-11087120_5289707_480.jpg', '554fe-11087120_5289711_480.jpg', 'd44ce-11087120_5289701_480.jpg', 2, 15, 2, 32, 45),
(64, 'Gucci-Black-Top', 'Gucci Black Top', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; font-size: 13px; line-height: 22px;">Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90&prime;s vice trust fund gastropub gentrify retro marfa viral. Gluten-free quinoa selfies carles, kogi gentrify retro marfa viral. Odd future photo booth flannel ethnic pug, occupy keffiyeh synth blue bottle tofu tonx iphone. Blue bottle 90&prime;s vice trust fund gastropub gentrify retro marfa viral</span></p>\r\n', '2b287-image2xxl-1-.jpg', '40749-image3xxl.jpg', '78689-image4xxl-1-.jpg', 1, 15, 2, 3, 27),
(65, 'Moschino-Red-Top', 'Moschino Red Top', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus quis, laoreet et, pretium ac, nisi. Aenean magna nisl, mollis quis, molestie eu, feugiat in, orci. In hac habitasse platea dictumst.</span></p>\r\n', 'bc43c-image1xxl.jpg', '967a0-image2xxl.jpg', '21951-image4xxl.jpg', 3, 15, 2, 6, 34),
(66, 'DKNY-Black-Crop-Top', 'DKNY Black Crop Top', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat. Cras mollis scelerisque nunc. Nullam arcu. Aliquam consequat. Curabitur augue lorem, dapibus quis, laoreet et, pretium ac, nisi. Aenean magna nisl, mollis quis, molestie eu, feugiat in, orci. In hac habitasse platea dictumst.</span></p>', 'ee456-image1xxl-1-.jpg', '294b5-image2xxl-2-.jpg', '4a8a8-image4xxl-2-.jpg', 6, 15, 2, 20, 20),
(67, 'Pepe-Jeans-Mini', 'Pepe Jeans Mini', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n', '6e71c-image1xxl-2-.jpg', '759f6-image2xxl-3-.jpg', '0a402-image4xxl-3-.jpg', 4, 11, 2, 8, 16),
(68, 'Fendi-Red-Top', 'Fendi Red Top', 'Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque. Aliquam faucibus, elit ut dictum aliquet, felis nisl adipiscing sapien, sed malesuada diam lacus eget erat.\r\n', '547c8-image1xxl-4-.jpg', 'd3fdb-image2xxl-4-.jpg', 'ec72c-image4xxl-5-.jpg', 7, 15, 2, 2, 12),
(69, 'CK-Graphic-Top', 'CK Graphic Top', '<p>\r\n	<span style="color: rgb(102, 102, 102); font-family: Roboto, sans-serif; line-height: 18px;">Curabitur pretium tincidunt lacus. Nulla gravida orci a odio. Nullam varius, turpis et commodo pharetra, est eros bibendum elit, nec luctus magna felis sollicitudin mauris. Integer in mauris eu nibh euismod gravida. Duis ac tellus et risus vulputate vehicula. Donec lobortis risus a elit. Etiam tempor. Ut ullamcorper, ligula eu tempor congue, eros est euismod turpis, id tincidunt sapien risus a quam. Maecenas fermentum consequat mi. Donec fermentum. Pellentesque malesuada nulla a mi. Duis sapien sem, aliquet nec, commodo eget, consequat quis, neque.</span></p>\r\n', '5ded8-image1xxl-5-.jpg', '372d5-image2xxl-5-.jpg', '74840-image4xxl-6-.jpg', 5, 15, 2, 8, 9),
(70, 'Pepe-Green-Shirt', 'Pepe Green Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tincidunt rhoncus malesuada. Cras consequat pharetra accumsan. Vivamus condimentum nibh sapien, eget lobortis libero feugiat ultricies. Curabitur ac libero tempus, congue magna sit amet, hendrerit tellus. Curabitur laoreet mattis maximus. In egestas ex in neque molestie, at lobortis odio luctus. Cras porta arcu vel mi commodo sodales. Mauris porttitor ante orci, id gravida lorem rhoncus nec. Praesent dapibus sapien a lacus egestas, vitae dapibus nibh dictum. Integer vel mauris diam. Mauris eleifend pulvinar augue. Mauris sollicitudin ligula id mattis condimentum. Duis ac tristique est. Integer facilisis, diam nec tempor congue, leo massa pulvinar purus, interdum laoreet nibh sem sed felis. Fusce tristique cursus urna a bibendum.', '2f92d-green.jpg', '', '', 4, 5, 1, 28, 7),
(79, 'Gucci-Black-Top', 'Gucci Black Top', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consequat faucibus sollicitudin. Sed nec fringilla nibh. Sed maximus finibus purus, eu volutpat arcu aliquet sit amet. Sed cursus ipsum sit amet elit sagittis, ac faucibus libero ultricies. In tempor velit vel dictum rhoncus. Morbi in ante commodo, condimentum felis in, lobortis ante. Praesent vitae magna ultricies, rutrum lorem et, iaculis nunc. Curabitur finibus neque neque, at consectetur tellus tristique ac. Praesent eu sollicitudin magna, in placerat nisi.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consequat faucibus sollicitudin. Sed nec fringilla nibh. Sed maximus finibus purus, eu volutpat arcu aliquet sit amet.', '6e71c-image1xxl-2-.jpg', '', '', 1, 15, 2, 8, 11),
(80, 'DKNY-Green-Shirt', 'DKNY Green Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum nibh nulla, eget gravida libero venenatis ac. Praesent sit amet metus cursus, ultricies ligula ut, sollicitudin libero. Phasellus sagittis posuere nisl sit amet eleifend. Ut nec metus feugiat, mollis ante vel, auctor orci. Phasellus sit amet vestibulum tortor. Praesent dignissim magna ut arcu ornare, a fringilla ipsum ultrices. Integer eros dolor, volutpat eget orci viverra, suscipit rhoncus arcu. Phasellus bibendum non turpis nec cursus. Pellentesque fringilla venenatis justo, ac pretium enim malesuada sit amet.\r\nNulla semper metus sit amet suscipit pellentesque. Maecenas ultrices tempor auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec feugiat sollicitudin nibh, vel sollicitudin nulla elementum quis.', '2bf67-6.jpg', '', '', 6, 5, 1, 20, 25);

-- --------------------------------------------------------

--
-- Table structure for table `productsize`
--

CREATE TABLE IF NOT EXISTS `productsize` (
`id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productsize`
--

INSERT INTO `productsize` (`id`, `product_id`, `size_id`) VALUES
(1, 2, 3),
(2, 2, 1),
(3, 1, 2),
(4, 1, 6),
(5, 1, 7),
(6, 3, 4),
(7, 3, 3),
(8, 3, 1),
(9, 4, 3),
(10, 4, 5),
(11, 2, 6),
(12, 5, 6),
(13, 5, 7),
(14, 6, 3),
(15, 6, 1),
(16, 6, 5),
(17, 7, 4),
(18, 7, 1),
(19, 7, 2),
(20, 8, 4),
(21, 8, 6),
(22, 8, 7),
(24, 10, 4),
(25, 10, 1),
(26, 10, 5),
(27, 11, 6),
(28, 12, 4),
(29, 12, 6),
(30, 13, 5),
(31, 13, 6),
(32, 15, 4),
(33, 15, 2),
(34, 16, 3),
(35, 16, 5),
(36, 16, 6),
(37, 17, 4),
(38, 18, 6),
(39, 18, 7),
(40, 19, 4),
(41, 19, 3),
(42, 19, 1),
(43, 20, 3),
(44, 20, 1),
(45, 20, 6),
(46, 21, 1),
(47, 21, 2),
(48, 22, 3),
(49, 22, 2),
(50, 22, 7),
(51, 23, 4),
(52, 23, 3),
(53, 23, 2),
(54, 24, 6),
(55, 25, 6),
(56, 26, 6),
(57, 26, 7),
(58, 27, 4),
(59, 27, 5),
(60, 27, 6),
(61, 28, 4),
(62, 29, 3),
(63, 29, 2),
(64, 30, 6),
(65, 30, 7),
(66, 31, 5),
(67, 31, 6),
(68, 32, 3),
(69, 32, 5),
(71, 36, 5),
(72, 36, 6),
(73, 36, 7),
(74, 37, 4),
(75, 37, 3),
(76, 38, 5),
(77, 38, 6),
(79, 39, 5),
(80, 40, 5),
(81, 41, 4),
(82, 41, 6),
(83, 42, 6),
(84, 43, 6),
(85, 44, 6),
(86, 44, 7),
(87, 45, 4),
(88, 45, 6),
(89, 46, 3),
(90, 46, 6),
(91, 47, 3),
(92, 47, 1),
(93, 47, 6),
(94, 48, 4),
(95, 48, 3),
(96, 48, 1),
(97, 49, 3),
(98, 49, 1),
(99, 50, 1),
(100, 51, 3),
(101, 52, 4),
(102, 52, 5),
(103, 53, 3),
(104, 54, 3),
(105, 54, 1),
(106, 54, 2),
(107, 55, 5),
(108, 56, 4),
(109, 56, 3),
(110, 56, 5),
(111, 57, 3),
(112, 57, 1),
(113, 57, 6),
(114, 58, 4),
(115, 58, 3),
(116, 58, 2),
(117, 58, 6),
(118, 59, 4),
(119, 59, 3),
(120, 59, 1),
(121, 62, 3),
(122, 62, 1),
(123, 62, 5),
(124, 63, 4),
(125, 63, 1),
(126, 63, 5),
(127, 64, 4),
(128, 64, 3),
(129, 64, 1),
(130, 64, 5),
(131, 65, 4),
(132, 65, 3),
(133, 65, 2),
(134, 66, 4),
(135, 66, 3),
(136, 66, 5),
(137, 67, 4),
(138, 67, 1),
(139, 67, 2),
(140, 68, 3),
(141, 68, 5),
(142, 68, 2),
(145, 70, 1),
(146, 70, 5),
(147, 70, 7),
(154, 69, 3),
(155, 69, 5),
(156, 69, 7),
(161, 9, 4),
(162, 9, 6),
(163, 9, 7),
(172, 79, 1),
(173, 79, 2),
(174, 80, 1),
(175, 80, 4),
(176, 80, 5);

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
-- Table structure for table `size`
--

CREATE TABLE IF NOT EXISTS `size` (
`id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `size` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `size_id`, `size`) VALUES
(1, 1, 'S'),
(2, 2, 'XS'),
(3, 3, 'M'),
(4, 4, 'L'),
(5, 5, 'XL'),
(6, 6, 'XXL'),
(7, 7, 'XXXL');

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
-- Indexes for table `brand`
--
ALTER TABLE `brand`
 ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_orders_customers_idx` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_products_brand_idx` (`brand_id`), ADD KEY `fk_products_categories_idx` (`cat_id`);

--
-- Indexes for table `productsize`
--
ALTER TABLE `productsize`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_productsize_size_idx` (`size_id`), ADD KEY `fk_productsize_products1_idx` (`product_id`);

--
-- Indexes for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
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
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `productsize`
--
ALTER TABLE `productsize`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
