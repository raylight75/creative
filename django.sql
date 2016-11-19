-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2016 at 10:26 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$GC7IFpgUvOgl$q2wMVsquhf7ZONzSptEJ+OyghvuCpDHcb1NLyX+tEPg=', '2016-11-19 21:11:34.206000', 1, 'admin', '', '', 'raylight75@gmail.com', 1, 1, '2016-11-19 20:41:23.706000');

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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

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
-- Table structure for table `django_comments`
--

CREATE TABLE IF NOT EXISTS `django_comments` (
`id` int(11) NOT NULL,
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
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_comment_flags`
--

CREATE TABLE IF NOT EXISTS `django_comment_flags` (
`id` int(11) NOT NULL,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(10, 'auth', 'group'),
(12, 'auth', 'permission'),
(11, 'auth', 'user'),
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
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('glco278pwno3jb63sye7yts448y0ihe1', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-23 08:16:10.226000'),
('ht34dr3yb04sy8tsjtxofqzaabuk90sj', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-20 21:19:36.423000'),
('kktzz2lqq0gradbxukqsilyb3n80dgkn', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-10-16 16:41:55.455000'),
('mkad6nh2pu7yucxk9u2mje446cwvvcjv', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-25 08:32:33.128000'),
('pzujppkl4d0su2dgwbpk0ynn6er90izx', 'NTU0NzhhMzhlMjFmMTMyZDExNzZiOWQ1NzdhZWE1NGJiYmE0OGRiMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQyZDEyYzZlODQyZGRlYjVkMWRkMTY0MDA5N2Q4MjJhZmY4YmQ1NzEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-12-03 21:11:34.326000'),
('rwlajmj43to520268ot2bnjx211rft58', 'MzljZjFhMzAwMTJjOGY4ODcyNTExMTA5MDgxYTliMDczZmJkNjA0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImJhOWJiYzAyOWQ0MzE3ZDIyOWZhYWI0MGM4ZWE4MDg0ODlhNWE3MjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-11-24 15:38:51.106000');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
`id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
`id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

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
`id` int(11) NOT NULL,
  `cat` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
(1, '<p>\r\n     Hello, my name is Tihomir Blajev. I am a 3d Artist from the city of Plovdiv, Bulgaria. \r\nWelcome to my online portfolio website showcasing a range of 3D generated images created by me. This is the place where you can see a very small selection of the projects that I’ve been involved with over the years as a 3D Artist. \r\nI currently work full-time last 5 year as a 3d Artist at Designconnected  where my responsibilities include rendering, modeling, texturing, lighting and creating basic animation. I have been working also for 6 years as a freelance 3d artist. \r\n<q class=" alignleft">\r\nThe projects seen on my website are a result of 10 years work and experience. I must say that in some of them, become so pretty because our modelers in Designconnected did great work on 3d models.\r\n</q>\r\nI started my work early in 2004 using  Alias Maya and gradually made the transition to Autodesk 3D Max and other 3d packages. I am skilled in lighting, rendering, 3D modelling, texturing, unwraping and basic animation and also have a lot of experience working with Autodesk products. I find them all very exciting programs to use and create projects with.\r\n     I have won many awards and my work has been posted on the front pages of popular websites like Evermotion, CGTalk, CGArena ,  CGArchitect,  3D Total,  3DBG ,  Blender Guru,  Blender Artist .  Many of my renders were posted by online magazines and books like The art of Blender,  3d Artist ,  3D World  ,  CGArena ,  Ceiga .\r\n<q class=" alignright"> \r\n     My latest interest has become programming. I am especially interested  and very passionate in web orientated programming and Frameworks with PHP, Python and  Ruby. I am very passionate and devoted to my work and constantly trying to better my knowledge and learn new skills in this dinamic situation.\r\n</q>\r\n</p>', 'raylight75@gmail.com', '+359898735129', 'tiho1975', 'Skopie 45,Plovdiv,Bulgaria', 'For more aditional information like PDF, complete CV, feel free to contact me.');

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
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
`id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `name` varchar(32) NOT NULL,
  `image` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
`id` int(11) NOT NULL,
  `cat` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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
`id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `image` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag`
--

CREATE TABLE IF NOT EXISTS `tagging_tag` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tagging_taggeditem`
--

CREATE TABLE IF NOT EXISTS `tagging_taggeditem` (
`id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_category`
--

CREATE TABLE IF NOT EXISTS `zinnia_category` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
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
  `image` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `password` varchar(50) NOT NULL,
  `content_template` varchar(250) NOT NULL,
  `detail_template` varchar(250) NOT NULL,
  `image_caption` longtext NOT NULL,
  `lead` longtext NOT NULL,
  `publication_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_authors`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_authors` (
`id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_categories`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_categories` (
`id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_related`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_related` (
`id` int(11) NOT NULL,
  `from_entry_id` int(11) NOT NULL,
  `to_entry_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zinnia_entry_sites`
--

CREATE TABLE IF NOT EXISTS `zinnia_entry_sites` (
`id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `django_comments`
--
ALTER TABLE `django_comments`
 ADD PRIMARY KEY (`id`), ADD KEY `django_commen_content_type_id_c4afe962_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`), ADD KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`), ADD KEY `django_comments_submit_date_514ed2d9_uniq` (`submit_date`);

--
-- Indexes for table `django_comment_flags`
--
ALTER TABLE `django_comment_flags`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_comment_flags_user_id_537f77a7_uniq` (`user_id`,`comment_id`,`flag`), ADD KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`), ADD KEY `django_comment_flags_327a6c43` (`flag`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

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
-- Indexes for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sld_cat`
--
ALTER TABLE `sld_cat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagging_tag`
--
ALTER TABLE `tagging_tag`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tagging_taggeditem`
--
ALTER TABLE `tagging_taggeditem`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `tagging_taggeditem_tag_id_3d53f09d_uniq` (`tag_id`,`content_type_id`,`object_id`), ADD KEY `tagging_taggeditem_af31437c` (`object_id`), ADD KEY `tagging_tagge_content_type_id_ede1c265_fk_django_content_type_id` (`content_type_id`);

--
-- Indexes for table `zinnia_category`
--
ALTER TABLE `zinnia_category`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `zinnia_category_caf7cc51` (`lft`), ADD KEY `zinnia_category_3cfbd988` (`rght`), ADD KEY `zinnia_category_656442a0` (`tree_id`), ADD KEY `zinnia_category_c9e9a848` (`level`), ADD KEY `zinnia_category_6be37982` (`parent_id`);

--
-- Indexes for table `zinnia_entry`
--
ALTER TABLE `zinnia_entry`
 ADD PRIMARY KEY (`id`), ADD KEY `zinnia_entry_2dbcba41` (`slug`), ADD KEY `zinnia_entry_9acb4454` (`status`), ADD KEY `zinnia_entry_6dc6f11d` (`start_publication`), ADD KEY `zinnia_entry_b803a79a` (`end_publication`), ADD KEY `zinnia_entry_slug_8de07f28_idx` (`slug`,`publication_date`), ADD KEY `zinnia_entry_status_b9d97cbc_idx` (`status`,`publication_date`,`start_publication`,`end_publication`), ADD KEY `zinnia_entry_93b83098` (`publication_date`);

--
-- Indexes for table `zinnia_entry_authors`
--
ALTER TABLE `zinnia_entry_authors`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `zinnia_entry_authors_entry_id_15a74736_uniq` (`entry_id`,`author_id`), ADD KEY `zinnia_entry_authors_author_id_c95ec445_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `zinnia_entry_categories`
--
ALTER TABLE `zinnia_entry_categories`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `zinnia_entry_categories_entry_id_06e8a1ea_uniq` (`entry_id`,`category_id`), ADD KEY `zinnia_entry_categori_category_id_1af4a3b8_fk_zinnia_category_id` (`category_id`);

--
-- Indexes for table `zinnia_entry_related`
--
ALTER TABLE `zinnia_entry_related`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `zinnia_entry_related_from_entry_id_f5c132fc_uniq` (`from_entry_id`,`to_entry_id`), ADD KEY `zinnia_entry_related_to_entry_id_f3ace6a2_fk_zinnia_entry_id` (`to_entry_id`);

--
-- Indexes for table `zinnia_entry_sites`
--
ALTER TABLE `zinnia_entry_sites`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `zinnia_entry_sites_entry_id_f65c3bb6_uniq` (`entry_id`,`site_id`), ADD KEY `zinnia_entry_sites_site_id_3b37fedc_fk_django_site_id` (`site_id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `django_comments`
--
ALTER TABLE `django_comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_comment_flags`
--
ALTER TABLE `django_comment_flags`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `img_cat`
--
ALTER TABLE `img_cat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sld_cat`
--
ALTER TABLE `sld_cat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tagging_tag`
--
ALTER TABLE `tagging_tag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tagging_taggeditem`
--
ALTER TABLE `tagging_taggeditem`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zinnia_category`
--
ALTER TABLE `zinnia_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zinnia_entry`
--
ALTER TABLE `zinnia_entry`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zinnia_entry_authors`
--
ALTER TABLE `zinnia_entry_authors`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zinnia_entry_categories`
--
ALTER TABLE `zinnia_entry_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zinnia_entry_related`
--
ALTER TABLE `zinnia_entry_related`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `zinnia_entry_sites`
--
ALTER TABLE `zinnia_entry_sites`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `django_comments`
--
ALTER TABLE `django_comments`
ADD CONSTRAINT `django_commen_content_type_id_c4afe962_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
ADD CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_comment_flags`
--
ALTER TABLE `django_comment_flags`
ADD CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
ADD CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tagging_taggeditem`
--
ALTER TABLE `tagging_taggeditem`
ADD CONSTRAINT `tagging_tagge_content_type_id_ede1c265_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `tagging_taggeditem_tag_id_f008ca79_fk_tagging_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tagging_tag` (`id`);

--
-- Constraints for table `zinnia_category`
--
ALTER TABLE `zinnia_category`
ADD CONSTRAINT `zinnia_category_parent_id_9957d607_fk_zinnia_category_id` FOREIGN KEY (`parent_id`) REFERENCES `zinnia_category` (`id`);

--
-- Constraints for table `zinnia_entry_authors`
--
ALTER TABLE `zinnia_entry_authors`
ADD CONSTRAINT `zinnia_entry_authors_author_id_c95ec445_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `zinnia_entry_authors_entry_id_7e8cdb2d_fk_zinnia_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `zinnia_entry` (`id`);

--
-- Constraints for table `zinnia_entry_categories`
--
ALTER TABLE `zinnia_entry_categories`
ADD CONSTRAINT `zinnia_entry_categori_category_id_1af4a3b8_fk_zinnia_category_id` FOREIGN KEY (`category_id`) REFERENCES `zinnia_category` (`id`),
ADD CONSTRAINT `zinnia_entry_categories_entry_id_2245c94e_fk_zinnia_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `zinnia_entry` (`id`);

--
-- Constraints for table `zinnia_entry_related`
--
ALTER TABLE `zinnia_entry_related`
ADD CONSTRAINT `zinnia_entry_related_from_entry_id_ef0e020e_fk_zinnia_entry_id` FOREIGN KEY (`from_entry_id`) REFERENCES `zinnia_entry` (`id`),
ADD CONSTRAINT `zinnia_entry_related_to_entry_id_f3ace6a2_fk_zinnia_entry_id` FOREIGN KEY (`to_entry_id`) REFERENCES `zinnia_entry` (`id`);

--
-- Constraints for table `zinnia_entry_sites`
--
ALTER TABLE `zinnia_entry_sites`
ADD CONSTRAINT `zinnia_entry_sites_entry_id_b62220dc_fk_zinnia_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `zinnia_entry` (`id`),
ADD CONSTRAINT `zinnia_entry_sites_site_id_3b37fedc_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
