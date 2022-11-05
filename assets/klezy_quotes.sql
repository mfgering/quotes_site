-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2022 at 12:39 PM
-- Server version: 10.5.17-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klezy_quotes`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add user', 2, 'add_user'),
(5, 'Can change user', 2, 'change_user'),
(6, 'Can delete user', 2, 'delete_user'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add category', 7, 'add_category'),
(20, 'Can change category', 7, 'change_category'),
(21, 'Can delete category', 7, 'delete_category'),
(22, 'Can add quote', 8, 'add_quote'),
(23, 'Can change quote', 8, 'change_quote'),
(24, 'Can delete quote', 8, 'delete_quote'),
(25, 'Can view category', 7, 'view_category'),
(26, 'Can view quote', 8, 'view_quote'),
(27, 'Can view log entry', 1, 'view_logentry'),
(28, 'Can view permission', 3, 'view_permission'),
(29, 'Can view group', 4, 'view_group'),
(30, 'Can view user', 2, 'view_user'),
(31, 'Can view content type', 5, 'view_contenttype'),
(32, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$zHvfsSiudvNrtEapMXAbVd$kt6RrF6ZbAngJSkqE/Buj//DXTkd8goJ4FjEpXv8/Ts=', '2021-10-04 16:56:53.069535', 1, 'mgering', '', '', '', 1, 1, '2017-08-15 17:15:58.638513');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-06-20 19:18:53.199914', '261', 'Quote object', 3, '', 8, 1),
(2, '2018-06-20 19:18:53.202184', '259', 'Quote object', 3, '', 8, 1),
(3, '2018-06-20 19:18:53.203990', '257', 'Quote object', 3, '', 8, 1),
(4, '2018-06-20 19:18:53.205784', '255', 'Quote object', 3, '', 8, 1),
(5, '2018-06-20 19:19:07.263161', '24', 'Quote object', 3, '', 8, 1),
(6, '2018-09-18 11:04:27.544516', '264', 'Quote object', 3, '', 8, 1),
(7, '2019-01-17 13:41:47.926879', '117', 'Quote object', 3, '', 8, 1),
(8, '2021-10-04 18:00:39.619305', '373', 'Quote object (373)', 3, '', 8, 1),
(9, '2021-10-04 18:00:39.622549', '455', 'Quote object (455)', 3, '', 8, 1),
(10, '2021-10-04 18:00:39.624445', '539', 'Quote object (539)', 3, '', 8, 1),
(11, '2021-10-04 18:00:39.626773', '320', 'Quote object (320)', 3, '', 8, 1),
(12, '2021-10-04 18:00:39.628503', '548', 'Quote object (548)', 3, '', 8, 1),
(13, '2021-10-04 18:00:39.630245', '416', 'Quote object (416)', 3, '', 8, 1),
(14, '2021-10-04 18:02:02.084008', '411', 'Quote object (411)', 3, '', 8, 1),
(15, '2021-10-04 18:02:02.091099', '390', 'Quote object (390)', 3, '', 8, 1),
(16, '2021-10-04 18:02:02.094408', '134', 'Quote object (134)', 3, '', 8, 1),
(17, '2021-10-04 18:02:02.098063', '498', 'Quote object (498)', 3, '', 8, 1),
(18, '2021-10-04 18:02:02.101646', '300', 'Quote object (300)', 3, '', 8, 1),
(19, '2021-10-04 18:02:02.104902', '520', 'Quote object (520)', 3, '', 8, 1),
(20, '2021-10-04 18:02:02.109724', '252', 'Quote object (252)', 3, '', 8, 1),
(21, '2021-10-04 18:02:02.113453', '502', 'Quote object (502)', 3, '', 8, 1),
(22, '2021-10-04 18:02:02.116027', '392', 'Quote object (392)', 3, '', 8, 1),
(23, '2021-10-04 18:02:02.118677', '335', 'Quote object (335)', 3, '', 8, 1),
(24, '2021-10-04 18:02:02.121976', '46', 'Quote object (46)', 3, '', 8, 1),
(25, '2021-10-04 18:02:02.132641', '354', 'Quote object (354)', 3, '', 8, 1),
(26, '2021-10-04 18:02:02.136318', '476', 'Quote object (476)', 3, '', 8, 1),
(27, '2021-10-04 18:02:02.139203', '23', 'Quote object (23)', 3, '', 8, 1),
(28, '2021-10-04 18:02:02.141991', '341', 'Quote object (341)', 3, '', 8, 1),
(29, '2021-10-04 18:02:02.144802', '537', 'Quote object (537)', 3, '', 8, 1),
(30, '2021-10-04 18:02:02.147842', '379', 'Quote object (379)', 3, '', 8, 1),
(31, '2021-10-04 18:02:02.150148', '535', 'Quote object (535)', 3, '', 8, 1),
(32, '2021-10-04 18:02:02.153721', '469', 'Quote object (469)', 3, '', 8, 1),
(33, '2021-10-04 18:02:02.157313', '468', 'Quote object (468)', 3, '', 8, 1),
(34, '2021-10-04 18:02:02.167486', '419', 'Quote object (419)', 3, '', 8, 1),
(35, '2021-10-04 18:02:02.170789', '398', 'Quote object (398)', 3, '', 8, 1),
(36, '2021-10-04 18:02:02.180955', '391', 'Quote object (391)', 3, '', 8, 1),
(37, '2021-10-04 18:02:02.184768', '358', 'Quote object (358)', 3, '', 8, 1),
(38, '2021-10-04 18:02:02.187619', '136', 'Quote object (136)', 3, '', 8, 1),
(39, '2021-10-04 18:02:02.192096', '525', 'Quote object (525)', 3, '', 8, 1),
(40, '2021-10-04 18:02:02.194850', '472', 'Quote object (472)', 3, '', 8, 1),
(41, '2021-10-04 18:02:02.197804', '465', 'Quote object (465)', 3, '', 8, 1),
(42, '2021-10-04 18:02:02.200582', '396', 'Quote object (396)', 3, '', 8, 1),
(43, '2021-10-04 18:02:02.203402', '393', 'Quote object (393)', 3, '', 8, 1),
(44, '2021-10-04 18:02:02.232162', '285', 'Quote object (285)', 3, '', 8, 1),
(45, '2021-10-04 18:02:02.270284', '204', 'Quote object (204)', 3, '', 8, 1),
(46, '2021-10-04 18:02:02.283744', '528', 'Quote object (528)', 3, '', 8, 1),
(47, '2021-10-04 18:02:02.287475', '388', 'Quote object (388)', 3, '', 8, 1),
(48, '2021-10-04 18:02:02.290275', '328', 'Quote object (328)', 3, '', 8, 1),
(49, '2021-10-04 18:02:02.292673', '277', 'Quote object (277)', 3, '', 8, 1),
(50, '2021-10-04 18:02:02.318113', '463', 'Quote object (463)', 3, '', 8, 1),
(51, '2021-10-04 18:02:02.338537', '435', 'Quote object (435)', 3, '', 8, 1),
(52, '2021-10-04 18:02:02.343487', '527', 'Quote object (527)', 3, '', 8, 1),
(53, '2021-10-04 18:02:02.358280', '522', 'Quote object (522)', 3, '', 8, 1),
(54, '2021-10-04 18:02:02.361287', '437', 'Quote object (437)', 3, '', 8, 1),
(55, '2021-10-04 18:02:02.377940', '355', 'Quote object (355)', 3, '', 8, 1),
(56, '2021-10-04 18:02:02.380911', '292', 'Quote object (292)', 3, '', 8, 1),
(57, '2021-10-04 18:02:02.383524', '202', 'Quote object (202)', 3, '', 8, 1),
(58, '2021-10-04 18:02:02.386133', '475', 'Quote object (475)', 3, '', 8, 1),
(59, '2021-10-04 18:02:02.389268', '368', 'Quote object (368)', 3, '', 8, 1),
(60, '2021-10-04 18:02:02.397596', '349', 'Quote object (349)', 3, '', 8, 1),
(61, '2021-10-04 18:02:02.410313', '342', 'Quote object (342)', 3, '', 8, 1),
(62, '2021-10-04 18:02:02.413224', '318', 'Quote object (318)', 3, '', 8, 1),
(63, '2021-10-04 18:02:02.415824', '224', 'Quote object (224)', 3, '', 8, 1),
(64, '2021-10-04 18:02:02.418444', '61', 'Quote object (61)', 3, '', 8, 1),
(65, '2021-10-04 18:02:02.420898', '16', 'Quote object (16)', 3, '', 8, 1),
(66, '2021-10-04 18:02:02.423628', '433', 'Quote object (433)', 3, '', 8, 1),
(67, '2021-10-04 18:02:02.426268', '370', 'Quote object (370)', 3, '', 8, 1),
(68, '2021-10-04 18:02:02.431613', '317', 'Quote object (317)', 3, '', 8, 1),
(69, '2021-10-04 18:02:02.434306', '197', 'Quote object (197)', 3, '', 8, 1),
(70, '2021-10-04 18:02:02.436663', '375', 'Quote object (375)', 3, '', 8, 1),
(71, '2021-10-04 18:02:02.439648', '280', 'Quote object (280)', 3, '', 8, 1),
(72, '2021-10-04 18:02:02.442550', '92', 'Quote object (92)', 3, '', 8, 1),
(73, '2021-10-04 18:02:02.445222', '511', 'Quote object (511)', 3, '', 8, 1),
(74, '2021-10-04 18:02:02.447611', '321', 'Quote object (321)', 3, '', 8, 1),
(75, '2021-10-04 18:02:02.449975', '4', 'Quote object (4)', 3, '', 8, 1),
(76, '2021-10-04 18:02:02.452237', '529', 'Quote object (529)', 3, '', 8, 1),
(77, '2021-10-04 18:02:02.454541', '496', 'Quote object (496)', 3, '', 8, 1),
(78, '2021-10-04 18:02:02.456761', '144', 'Quote object (144)', 3, '', 8, 1),
(79, '2021-10-04 18:02:02.461222', '501', 'Quote object (501)', 3, '', 8, 1),
(80, '2021-10-04 18:02:02.464097', '486', 'Quote object (486)', 3, '', 8, 1),
(81, '2021-10-04 18:02:02.466675', '446', 'Quote object (446)', 3, '', 8, 1),
(82, '2021-10-04 18:02:02.469455', '372', 'Quote object (372)', 3, '', 8, 1),
(83, '2021-10-04 18:02:02.472037', '365', 'Quote object (365)', 3, '', 8, 1),
(84, '2021-10-04 18:02:02.474767', '356', 'Quote object (356)', 3, '', 8, 1),
(85, '2021-10-04 18:02:02.477042', '290', 'Quote object (290)', 3, '', 8, 1),
(86, '2021-10-04 18:02:02.479238', '554', 'Quote object (554)', 3, '', 8, 1),
(87, '2021-10-04 18:02:02.481488', '494', 'Quote object (494)', 3, '', 8, 1),
(88, '2021-10-04 18:02:02.483459', '403', 'Quote object (403)', 3, '', 8, 1),
(89, '2021-10-04 18:02:02.485744', '362', 'Quote object (362)', 3, '', 8, 1),
(90, '2021-10-04 18:02:02.488366', '324', 'Quote object (324)', 3, '', 8, 1),
(91, '2021-10-04 18:02:02.491503', '314', 'Quote object (314)', 3, '', 8, 1),
(92, '2021-10-04 18:02:02.494040', '278', 'Quote object (278)', 3, '', 8, 1),
(93, '2021-10-04 18:02:02.496246', '234', 'Quote object (234)', 3, '', 8, 1),
(94, '2021-10-04 18:02:02.500959', '129', 'Quote object (129)', 3, '', 8, 1),
(95, '2021-10-04 18:02:02.512709', '526', 'Quote object (526)', 3, '', 8, 1),
(96, '2021-10-04 18:02:02.518389', '428', 'Quote object (428)', 3, '', 8, 1),
(97, '2021-10-04 18:02:02.522469', '374', 'Quote object (374)', 3, '', 8, 1),
(98, '2021-10-04 18:02:02.525881', '286', 'Quote object (286)', 3, '', 8, 1),
(99, '2021-10-04 18:02:02.529128', '99', 'Quote object (99)', 3, '', 8, 1),
(100, '2021-10-04 18:02:02.532310', '378', 'Quote object (378)', 3, '', 8, 1),
(101, '2021-10-04 18:02:02.534994', '323', 'Quote object (323)', 3, '', 8, 1),
(102, '2021-10-04 18:02:02.537760', '297', 'Quote object (297)', 3, '', 8, 1),
(103, '2021-10-04 18:02:02.541019', '273', 'Quote object (273)', 3, '', 8, 1),
(104, '2021-10-04 18:02:02.543731', '231', 'Quote object (231)', 3, '', 8, 1),
(105, '2021-10-04 18:02:02.547669', '327', 'Quote object (327)', 3, '', 8, 1),
(106, '2021-10-04 18:02:02.550641', '15', 'Quote object (15)', 3, '', 8, 1),
(107, '2021-10-04 18:02:02.553349', '25', 'Quote object (25)', 3, '', 8, 1),
(108, '2021-10-04 18:02:02.555912', '543', 'Quote object (543)', 3, '', 8, 1),
(109, '2021-10-04 18:02:02.558270', '101', 'Quote object (101)', 3, '', 8, 1),
(110, '2021-10-04 18:02:02.560363', '51', 'Quote object (51)', 3, '', 8, 1),
(111, '2021-10-04 18:02:02.562411', '29', 'Quote object (29)', 3, '', 8, 1),
(112, '2021-10-04 18:02:02.564507', '513', 'Quote object (513)', 3, '', 8, 1),
(113, '2021-10-04 18:02:02.566551', '401', 'Quote object (401)', 3, '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(2, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'category'),
(8, 'main', 'quote'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-08-15 17:15:28.333726'),
(2, 'auth', '0001_initial', '2017-08-15 17:15:28.470312'),
(3, 'admin', '0001_initial', '2017-08-15 17:15:28.508119'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-08-15 17:15:28.520971'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-08-15 17:15:28.559132'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-08-15 17:15:28.573242'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-08-15 17:15:28.593583'),
(8, 'auth', '0004_alter_user_username_opts', '2017-08-15 17:15:28.605419'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-08-15 17:15:28.622288'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-08-15 17:15:28.623874'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-08-15 17:15:28.633675'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-08-15 17:15:28.652197'),
(13, 'main', '0001_initial', '2017-08-15 17:15:28.677033'),
(14, 'main', '0002_auto_20170623_1728', '2017-08-15 17:15:28.695294'),
(15, 'main', '0003_auto_20170726_1933', '2017-08-15 17:15:28.712555'),
(16, 'main', '0004_auto_20170727_1924', '2017-08-15 17:15:28.722073'),
(17, 'main', '0005_auto_20170806_0842', '2017-08-15 17:15:28.761187'),
(18, 'sessions', '0001_initial', '2017-08-15 17:15:28.772973'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-06 12:24:51.219785'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2019-04-06 12:24:51.262690'),
(21, 'auth', '0010_alter_group_name_max_length', '2019-04-06 12:24:51.280659'),
(22, 'auth', '0011_update_proxy_permissions', '2019-04-06 12:24:51.290046'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2021-10-04 13:40:12.992266');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('23tnztr4xourx2v3c71tkjcmibrare4i', 'OGJmN2ViZWUwODBmM2U3NjEyZWYyNTk1YWJjOGVhNTI1YzViM2RlNTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg0ZGE2ZTU0ODVhYmY2MTUwMTc1NzAzYTQ3Zjg0OWFjOTNjOTMwMjkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2019-01-31 13:41:17.351716'),
('8oyaps8qybkvenr5r4kghe8o4ekin95e', 'NGVhYTNhZGJmNjA4ZmE5YWFmNzQ2N2M1M2NmNmY4OThlMDE4NGIwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NGRhNmU1NDg1YWJmNjE1MDE3NTcwM2E0N2Y4NDlhYzkzYzkzMDI5In0=', '2018-08-07 11:01:31.164252'),
('dmytf14d65eutmk574ifca2eq52l143r', '.eJxVjDsOwjAQRO_iGll2nPWHkj5nsHb9wQFkS3FSIe5OIqWAYpp5b-bNPG5r8VtPi58juzLJLr8dYXimeoD4wHpvPLS6LjPxQ-En7XxqMb1up_t3ULCXfe2EkznvoVFkbURWElEarQkcSKeBFCRlYIBkKdhEOEAUMo4xB6Mssc8XzaM3qw:1mXRGn:uxlZwMS2vOQ_5R1x26uBzRKyvNsm4gbDlPXP93TBTUc', '2021-10-18 16:56:53.075025'),
('oya58bpfqc0zlqdzwb0b3uxei36d6nft', 'ZDdlY2I3NTczNzc2YWNlZjEzN2RkYTc0MzExYzE5MmM0MzY0NzdjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODRkYTZlNTQ4NWFiZjYxNTAxNzU3MDNhNDdmODQ5YWM5M2M5MzAyOSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-07-04 19:04:38.759064'),
('xo2cco8xltj4ovij85txdru7vxd117a3', 'NGVhYTNhZGJmNjA4ZmE5YWFmNzQ2N2M1M2NmNmY4OThlMDE4NGIwNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NGRhNmU1NDg1YWJmNjE1MDE3NTcwM2E0N2Y4NDlhYzkzYzkzMDI5In0=', '2018-10-02 11:03:15.705998');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`id`, `name`) VALUES
(2, 'Ferengi Rules of Acquisition'),
(1, 'Marcus Aurelius');

-- --------------------------------------------------------

--
-- Table structure for table `main_quote`
--

CREATE TABLE `main_quote` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `dislikes` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_quote`
--

INSERT INTO `main_quote` (`id`, `title`, `content`, `category_id`, `subtitle`, `dislikes`, `likes`, `views`) VALUES
(1, '', '<p>When you wake up in the morning, tell yourself: The people I deal with today will be meddling, ungrateful, arrogant, dishonest, jealous, and surly. They are like this because they can\'t tell good from evil.</p>', 1, NULL, 0, 5, 6),
(2, '', '<p>Say to yourself in the early morning: I shall meet today inquisitive, ungrateful, violent, treacherous, envious, uncharitable men. All these things have come upon them through ignorance of real good and ill.</p>', 1, NULL, 0, 8, 8),
(3, '', '<p>We are all made for mutual assistance, as the feet, the hands, and the eyelids, as the rows of the upper and under teeth, from whence it follows that clashing and opposition is perfectly unnatural.</p>', 1, NULL, 0, 5, 5),
(5, '', '<p>This that I am, whatever it be, is mere flesh and a little breathe and the ruling Reason</p>', 1, NULL, 0, 1, 2),
(6, '', '<p>This Being of mine, whatever it really is, consists of a little flesh, a little breath, and the part which governs.</p>', 1, NULL, 0, 8, 10),
(7, '', '<p>A little flesh, a little breath, and a Reason to rule all – that is myself.</p>', 1, NULL, 0, 1, 6),
(8, '', '<p>What is divine is full of Providence. Even chance is not divorced from nature, from the inweaving and enfolding of things governed by Providence. Everything proceeds from it.</p>', 1, NULL, 0, 0, 6),
(9, '', '<p>All that is from the gods is full of Providence.</p>', 1, NULL, 0, 0, 6),
(10, '', '<p>There is a limit to the time assigned you, and if you don\'t use it to free yourself it will be gone and never return.</p>', 1, NULL, 0, 2, 3),
(11, '', '<p>Yes, you can--if you do everything as if it were the last thing you were doing in your life, and stop being aimless, stop letting your emotions override what your mind tells you, stop being hypocritical, self-centered, irritable.</p>', 1, NULL, 0, 7, 10),
(12, '', '<p>You will find rest from vain fancies if you perform every act in life as though it were your last.</p>', 1, NULL, 0, 9, 9),
(13, '', '<p>You see how few things you have to do to live a satisfying and reverent life? If you can manage this, that\'s all even the gods can ask of you.</p>', 1, NULL, 0, 3, 3),
(14, '', '<p>Thou seest how few be the things, the which if a man has at his command his life flows gently on and is divine.</p>', 1, NULL, 0, 3, 4),
(17, '', '<p>Yet living and dying, honour and dishonour, pain and pleasure, riches and poverty, and so forth are equally the lot of good men and bad. Things like these neither elevate nor degrade; and therefore they are no more good than they are evil.</p>', 1, NULL, 0, 2, 4),
(18, '', '<p>The longest-lived and the shortest-lived man, when they come to die, lose one and the same thing.</p>', 1, NULL, 0, 9, 10),
(19, '', '<p>Remember that all is opinion.</p>', 1, NULL, 0, 0, 4),
(20, '', '<p>No state sorrier than that of the man who keeps up a continual round, and pries into \"the secrets of the nether world,\" as saith the poet, and is curious in conjecture of what is in his neighbour\'s heart.</p>', 1, NULL, 0, 6, 6),
(21, '', '<p>Though thou be destined to live three thousand years and as many myriads besides, yet remember that no man loseth other life than that which he liveth, nor liveth other than that which he loseth.</p>', 1, NULL, 0, 1, 2),
(22, '', '<p>For a man can lose neither the past nor the future; for how can one take from him that which is not his? So remember these two points: first, that each thing is of like form from everlasting and comes round again in its cycle, and that it signifies not whether a man shall look upon the same things for a hundred years or two hundred, or for an infinity of time; second, that the longest lived and the shortest lived man, when they come to die, lose one and the same thing.</p>', 1, NULL, 0, 3, 6),
(26, '', '<p>The lot assigned to every man is suited to him, and suits him to itself.</p>', 1, NULL, 1, 3, 14),
(27, '', '<p>Be not unwilling in what thou doest, neither selfish nor unadvised nor obstinate; let not over-refinement deck out thy thought; be not wordy nor a busybody.</p>', 1, NULL, 0, 3, 6),
(28, '', '<p>A man should <i>be</i> upright, not <i>kept</i> upright.</p>', 1, NULL, 0, 3, 3),
(30, '', '<p>Never esteem anything as of advantage to you that will make you break your word or lose your self-respect.</p>', 1, NULL, 0, 7, 7),
(31, '', '<p>Respect the faculty that forms thy judgments.</p>', 1, NULL, 0, 3, 5),
(32, '', '<p>Remember that man lives only in the present, in this fleeting instant; all the rest of his life is either past and gone, or not yet revealed. Short, therefore, is man\'s life, and narrow is the corner of the earth wherein he dwells.</p>', 1, NULL, 0, 4, 5),
(33, '', '<p>Nothing has such power to broaden the mind as the ability to investigate systematically and truly all that comes under thy observation in life.</p>', 1, NULL, 0, 2, 3),
(34, '', '<p>As surgeons keep their instruments and knives always at hand for cases requiring immediate treatment, so shouldst thou have thy thoughts ready to understand things divine and human, remembering in thy every act, even the smallest, how close is the bond that unites the two.</p>', 1, NULL, 0, 5, 5),
(35, '', '<p>The ruling power within, when it is in its natural state, is so related to outer circumstances that it easily changes to accord with what can be done and what is given it to do.</p>', 1, NULL, 0, 0, 2),
(36, '', '<p>Let no act be done at haphazard, nor otherwise than according to the finished rules that govern its kind.</p>', 1, NULL, 0, 3, 5),
(37, '', '<p>By a tranquil mind I mean nothing else than a mind well ordered.</p>', 1, NULL, 0, 7, 8),
(38, '', '<p>Men seek retreats for themselves, houses in the country, sea-shores, and mountains; and thou too art wont to desire such things very much. But this is altogether a mark of the most common sort of men, for it is in thy power whenever thou shalt choose to retire into thyself. For nowhere either with more quiet or more freedom from trouble does a man retire than into his own soul.</p>', 1, NULL, 0, 3, 5),
(39, '', '<p>Variant translation: Nowhere can man find a quieter or more untroubled retreat than in his own soul.</p>', 1, NULL, 0, 5, 7),
(40, '', '<p>The universe is change; our life is what our thoughts make it.</p>', 1, NULL, 0, 2, 2),
(41, '', '<p>The universe is flux, life is opinion.</p>', 1, NULL, 1, 1, 3),
(42, '', '<p>The universe is transformation: life is opinion.</p>', 1, NULL, 0, 7, 9),
(43, '', '<p>Think on this doctrine,—that reasoning beings were created for one another\'s sake; that to be patient is a branch of justice, and that men sin without intending it.</p>', 1, NULL, 0, 1, 5),
(44, '', '<p>Nothing can come out of nothing, any more than a thing can go back to nothing.</p>', 1, NULL, 1, 1, 5),
(45, '', '<p>If mind is common to us, then also the reason, whereby we are reasoning beings, is common. If this be so, then also the reason which enjoins what is to be done or left undone is common. If this be so, law also is common; if this be so, we are citizens; if this be so, we are partakers in one constitution; if this be so, the Universe is a kind of Commonwealth.</p>', 1, NULL, 0, 4, 9),
(47, '', '<p>That which makes the man no worse than he was makes his life no worse: it has no power to harm, without or within.</p>', 1, NULL, 0, 3, 4),
(48, '', '<p>Whatever happens at all happens as it should; you will find this true, if you watch narrowly.</p>', 1, NULL, 0, 7, 9),
(49, '', '<p>Death hangs over thee: whilst yet thou livest, whilst thou mayest, be good.</p>', 1, NULL, 0, 3, 4),
(50, '', '<p>Many the lumps of frankincense on the same altar; one falls there early and another late, but it makes no difference.</p>', 1, NULL, 0, 1, 1),
(52, '', '<p>Doth perfect beauty stand in need of praise at all? Nay; no more than law, no more than truth, no more than loving kindness, nor than modesty.</p>', 1, NULL, 0, 3, 6),
(53, '', '<p>Whatever is in any way beautiful hath its source of beauty in itself, and is complete in itself; praise forms no part of it. So it is none the worse nor the better for being praised.</p>', 1, NULL, 0, 3, 5),
(54, '', '<p>All that is harmony for you, my Universe, is in harmony with me as well. Nothing that comes at the right time for you is too early or too late for me. Everything is fruit to me that your seasons bring, Nature. All things come of you, have their being in you, and return to you.</p>', 1, NULL, 2, 0, 6),
(55, '', '<p>\"Let your occupations be few,\" says the sage, \"if you would lead a tranquil life.\"</p>', 1, NULL, 0, 0, 2),
(56, '', '<p>Love the little trade which thou hast learned, and be content therewith.</p>', 1, NULL, 0, 2, 5),
(57, '', '<p>Remember this— that there is a proper dignity and proportion to be observed in the performance of every act of life.</p>', 1, NULL, 0, 5, 7),
(58, '', '<p>All is ephemeral — fame and the famous as well.</p>', 1, NULL, 0, 4, 4),
(59, '', '<p>Observe always that everything is the result of a change, and get used to thinking that there is nothing Nature loves so well as to change existing forms and to make new ones like them.</p>', 1, NULL, 0, 2, 5),
(60, '', '<p>Search men\'s governing principles, and consider the wise, what they shun and what they cleave to.</p>', 1, NULL, 0, 0, 4),
(62, '', '<p>Thou art a little soul bearing about a corpse, as Epictetus used to say.</p>', 1, NULL, 0, 7, 8),
(63, '', '<p>Time is a sort of river of passing events, and strong is its current; no sooner is a thing brought to sight than it is swept by and another takes its place, and this too will be swept away.</p>', 1, NULL, 0, 1, 2),
(64, '', '<p>All that happens is as usual and familiar as the rose in spring and the crop in summer.</p>', 1, NULL, 0, 3, 6),
(65, '', '<p>That which comes after ever conforms to that which has gone before.</p>', 1, NULL, 0, 1, 4),
(66, '', '<p>Mark how fleeting and paltry is the estate of man - yesterday in embryo, tomorrow a mummy or ashes. So for the hairsbreadth of time assigned to thee, live rationally, and part with life cheerfully, as drops the ripe olive, extolling the season that bore it and the tree that matured it.</p>', 1, NULL, 0, 4, 4),
(67, '', '<p>Deem not life a thing of consequence. For look at the yawning void of the future, and at that other limitless space, the past.</p>', 1, NULL, 0, 0, 3),
(68, '', '<p>Always take the short cut; and that is the rational one. Therefore say and do everything according to soundest reason.</p>', 1, NULL, 0, 7, 9),
(69, '', '<p>At dawn, when you have trouble getting out of bed, tell yourself: ‘I have to go to work – as a human being. What do I have to complain of, if I’m going to do what I was born for – the things I was brought into the world to do? Or is this what I was created for? To huddle under the blankets and stay warm?’</p>', 1, NULL, 0, 3, 4),
(70, '', '<p>At dawn of day, when you dislike being called, have this thought ready: I am called to man\'s labour; why then do I make a difficulty if I am going out to do what I was born to do and what I was brought into the world for?(Farquharson translation)</p>', 1, NULL, 0, 3, 5),
(71, '', '<p>You don\'t love yourself enough. Or you\'d love your nature too, and what it demands of you. People who love what they do wear themselves down doing it, they even forget to wash or eat. Do you have less respect for your own nature than the engraver does for engraving, the dancer for the dance, the miser for money or the social climber for status? When they\'re really possessed by what they do, they\'d rather stop eating and sleeping than give up practicing their arts. Is helping others less valuable to you? Not worth your effort?</p>', 1, NULL, 0, 6, 8),
(72, '', '<p>How easy it is to repel and to wipe away every impression which is troublesome or unsuitable, and immediately to be in all tranquility.</p>', 1, NULL, 0, 6, 8),
(73, '', '<p>To shrug it all off and wipe it clean--every annoyance and distraction--and reach utter stillness. Child\'s play.</p>', 1, NULL, 0, 5, 11),
(74, '', '<p>Some people, when they do someone a favor, are always looking for a chance to call it in. And some aren\'t, but they\'re still aware of it--still regard it as a debt. But others don\'t even do that. They\'re like a vine that produces grapes without looking for anything in return.</p>', 1, NULL, 0, 2, 3),
(75, '', '<p>A man makes no noise over a good deed, but passes on to another as a vine to bear grapes again in season.</p>', 1, NULL, 0, 2, 4),
(76, '', '<p>A horse at the end of the race...A dog when the hunt is over...A bee with its honey stored...And a human being after helping others. They don\'t make a fuss about it. They just go on to something else, as the vine looks forward to bearing fruit again in season. We should be like that. Acting almost unconsciously.</p>', 1, NULL, 0, 5, 6),
(77, '', '<p>The other reason is that what happens to the individual is a cause of well-being in what directs the world--of its well-being, its fulfillment, or its very existence, even. Because the whole is damaged if you cut away anything--anything at all--from its continuity and its coherence. Not only its parts, but its purposes. And that\'s what you\'re doing when you complain: hacking and destroying.</p>', 1, NULL, 0, 2, 7),
(78, '', '<p>Not to feel exasperated, or defeated, or despondent because your days aren\'t packed with wise and moral actions. But to get back up when you fail, to celebrate behaving like a human--however imperfectly--and fully embrace the pursuit that you\'ve embarked on.</p>', 1, NULL, 0, 2, 4),
(79, '', '<p>Flinch not, neither give up nor despair, if the achieving of every act in accordance with right principle is not always continuous with thee.</p>', 1, NULL, 0, 3, 3),
(80, '', '<p>The things you think about determine the quality of your mind. Your soul takes on the color of your thoughts.</p>', 1, NULL, 0, 4, 5),
(81, '', '<p>The soul becomes dyed with the colour of its thoughts.</p>', 1, NULL, 0, 4, 6),
(82, '', '<p>It is crazy to want what is impossible. And impossible for the wicked not to do so.</p>', 1, NULL, 0, 3, 8),
(83, '', '<p>To seek what is impossible is madness: and it is impossible that the bad should not do something of this kind.</p>', 1, NULL, 0, 6, 7),
(84, '', '<p>Nothing happens to anyone that he can\'t endure.</p>', 1, NULL, 0, 8, 9),
(85, '', '<p>Nothing happens to anybody which he is not fitted by nature to bear.</p>', 1, NULL, 0, 4, 6),
(86, '', '<p>Things have no hold on the soul. They have no access to it, cannot move or direct it. It is moved and directed by itself alone. It takes the things before it and interprets them as it sees fit.</p>', 1, NULL, 0, 4, 6),
(87, '', '<p>In a sense, people are our proper occupation. Our job is to do them good and put up with them. But when they obstruct our proper tasks, they become irrelevant to us--like sun, wind, and animals. Our actions may be impeded by them, but there can be no impeding our intentions or our dispositions. Because we can accommodate and adapt. The mind adapts and converts to its own purposes the obstacle to our acting. The impediment to action advances action. What stands in the way becomes the way.</p>', 1, NULL, 0, 4, 5),
(88, '', '<p>Prize that which is best in the universe; and this is that which useth everything and ordereth everything.</p>', 1, NULL, 0, 5, 7),
(89, '', '<p>The mind is the ruler of the soul. It should remain unstirred by agitations of the flesh--gentle and violent ones alike. Not mingling with them, but fencing itself off and keeping those feelings in their place. When they make their way into our thoughts, through the sympathetic link between mind and body, don\'t try to resist the sensation. The sensation is natural. But don\'t let the mind start in with judgments, calling it \'good\' or \'bad.\'</p>', 1, NULL, 0, 4, 6),
(90, '', '<p>Live with the gods.</p>', 1, NULL, 1, 2, 5),
(91, '', '<p>Art thou angry with him whose arm-pits stink? art thou angry with him whose mouth smells foul? What good will this anger do thee?</p>', 1, NULL, 0, 5, 6),
(93, '', '<p>Look beneath the surface; let not the several quality of a thing nor its worth escape thee.</p>', 1, NULL, 0, 5, 7),
(94, '', '<p>The controlling Intelligence understands its own nature, and what it does, and whereon it works.</p>', 1, NULL, 0, 0, 5),
(95, '', '<p>The best revenge is not to be like your enemy.</p>', 1, NULL, 0, 1, 3),
(96, '', '<p>Do not think that what is hard for you to master is humanly impossible; but if a thing is humanly possible, consider it to be within your reach.</p>', 1, NULL, 0, 3, 4),
(97, '', '<p>If any man can convince me and bring home to me that I do not think or act aright, gladly will I change; for I search after truth, by which man never yet was harmed. But he is harmed who abideth on still in his deception and ignorance.</p>', 1, NULL, 0, 2, 5),
(98, '', '<p>Variant translation: If someone is able to show me that what I think or do is not right, I will happily change, for I seek the truth, by which no one ever was truly harmed. Harmed is the person who continues in his self-deception and ignorance.</p>', 1, NULL, 0, 4, 6),
(100, '', '<p>Take heed not to be transformed into a Caesar, not to be dipped in the purple dye, for it does happen. Keep yourself therefore, simple, good, pure, grave, unaffected, the friend of justice, religious, kind, affectionate, strong for your proper work. Wrestle to be the man philosophy wished to make you. Reverence the gods, save men. Life is brief; there is but one harvest of earthly existence, a holy disposition and neighborly acts.</p>', 1, NULL, 0, 5, 9),
(102, '', '<p>I consist of a little body and a soul.</p>', 1, NULL, 0, 3, 3),
(103, '', '<p>Adapt yourself to the environment in which your lot has been cast, and show true love to the fellow-mortals with whom destiny has surrounded you.</p>', 1, NULL, 0, 5, 6),
(104, '', '<p>But if we judge only those things which are in our power to be good or bad, there remains no reason either for finding fault with God or standing in a hostile attitude to man.</p>', 1, NULL, 0, 4, 5),
(105, '', '<p>What is not good for the swarm is not good for the bee.</p>', 1, NULL, 0, 5, 6),
(106, '', '<p>How many together with whom I came into the world are already gone out of it.</p>', 1, NULL, 0, 2, 3),
(107, '', '<p>Understand however that every man is worth just so much as the things are worth about which he busies himself.</p>', 1, NULL, 0, 3, 3),
(108, '', '<p>How many, once lauded in song, are given over to the forgotten; and how many who sung their praises are clean gone long ago!</p>', 1, NULL, 0, 4, 7),
(109, '', '<p>Never let the future disturb you. You will meet it, if you have to, with the same weapons of reason which today arm you against the present.</p>', 1, NULL, 0, 6, 7),
(110, '', '<p>All things are implicated with one another, and the bond is holy; and there is hardly anything unconnected with any other things. For things have been co-ordinated, and they combine to make up the same universe. For there is one universe made up of all things, and one god who pervades all things, and one substance, and one law, and one reason.</p>', 1, NULL, 0, 3, 4),
(111, '', '<p>To a rational being it is the same thing to act according to nature and according to reason.</p>', 1, NULL, 0, 1, 2),
(112, '', '<p>Be thou erect, or be made erect.</p>', 1, NULL, 0, 4, 7),
(113, '', '<p>Is any man afraid of change? Why what can take place without change?</p>', 1, NULL, 0, 5, 5),
(114, '', '<p>Soon you will have forgotten the world, and soon the world will have forgotten you.</p>', 1, NULL, 0, 4, 4),
(115, '', '<p>It is man\'s peculiar duty to love even those who wrong him.</p>', 1, NULL, 0, 2, 5),
(116, '', '<p>Nature which governs the whole will soon change all things which thou seest, and out of there substance will make other things, and again other things from the substance of them, in order that the world may ever be new.</p>', 1, NULL, 0, 8, 10),
(118, '', '<p>Think not so much of what thou hast not as of what thou hast: but of the things which thou hast, select the best, and then reflect how eagerly they would have been sought, if thou hadst them not. At the same time, however, take care that thou dost not, through being so pleased with them, accustom thyself to overvalue them, so as to be disturbed if ever thou shouldst not have them.</p>', 1, NULL, 0, 1, 6),
(119, '', '<p>Variant Translation: Let not thy mind run on what thou lackest as much as on what thou hast already.</p>', 1, NULL, 0, 3, 5),
(120, '', '<p>Retire into thyself. The rational principle which rules has this nature, that it is content with itself when it does what is just, and so secures tranquility.</p>', 1, NULL, 0, 1, 2),
(121, '', '<p>Wipe out the imagination. Stop pulling the strings. Confine thyself to the present. ...Divide and distribute every object into the causal [formal] and the material. ...Let the wrong which is done by a man stay there where the wrong was done.</p>', 1, NULL, 0, 4, 8),
(122, '', '<p>Direct thy attention to what is said. Let thy understanding enter into the things that are doing and the things which do them.</p>', 1, NULL, 0, 3, 4),
(123, '', '<p>Adorn thyself with simplicity and with indifference towards the things which lie between virtue and vice. Love mankind. Follow God. The poet says that Law rules all. And it is enough to remember that law rules all.</p>', 1, NULL, 0, 1, 4),
(124, '', '<p>About fame... Just as the sand-dunes, heaped one upon another, hide each the first, so in life the former deeds are quickly hidden by those that follow after.</p>', 1, NULL, 0, 8, 9),
(125, '', '<p>From Plato: the man who has an elevated mind and takes a view of all time and of all substance, dost thou suppose it possible for him to think that human life is anything great? It is not possible, he said. Such a man then will think that death also is no evil.</p>', 1, NULL, 0, 4, 5),
(126, '', '<p>From Antisthenes: It is royal to do good and be abused.</p>', 1, NULL, 1, 1, 5),
(127, '', '<p>It is a base thing for the countenance to be obedient and to regulate and compose itself as the mind commands, and for the mind not to be regulated and composed by itself.</p>', 1, NULL, 0, 2, 4),
(128, '', '<p>It is not right to vex ourselves at things, For they care not about it.</p>', 1, NULL, 0, 7, 11),
(130, '', '<p>For thus it is, men of Athens, in truth: wherever a man has placed himself thinking it is the best place for him, or has been placed by a commander, there in my opinion he ought to stay and to abide the hazard, taking nothing into the reckoning, either death or anything else, before the baseness [of deserting his post].</p>', 1, NULL, 0, 7, 7),
(131, '', '<p>Look round at the courses of the stars, as if thou wert going along with them; and constantly consider the changes of the elements into one another; for such thoughts purge away the filth of the terrene life.</p>', 1, NULL, 0, 1, 3),
(132, '', '<p>This is a fine saying of Plato: That he who is discoursing about men should look also at earthly things as if he viewed them from some higher place; should look at them... a mixture of all things and an orderly combination of contraries.</p>', 1, NULL, 0, 9, 9),
(133, '', '<p>Thou mayest foresee... the things which will be. For they will certainly be of like form, and it is not possible that they should deviate from the order of things now: accordingly to have contemplated human life for forty years is the same as to have contemplated it for ten thousand years.</p>', 1, NULL, 0, 2, 8),
(135, '', '<p>Another may be more expert in casting [throwing] his opponent; but he is not more social, nor more modest, nor better disciplined to meet all that happens, nor more considerate with respect to the faults of his neighbors.</p>', 1, NULL, 0, 3, 6),
(137, '', '<p>Everywhere and at all times it is in thy power piously to acquiesce in thy present condition, and to behave justly to those who are about thee, and to exert thy skill upon thy present thoughts, that nothing shall steal into them without being well examined.</p>', 1, NULL, 0, 4, 6),
(138, '', '<p>Every being ought to do that which is according to its constitution; and all other things have been constituted for the sake of the superior, but the rational for the sake of one another.</p>', 1, NULL, 0, 6, 7),
(139, '', '<p>Consider thyself to be dead, and to have completed thy life up to the present time; and live according to nature the remainder which is allowed thee.</p>', 1, NULL, 0, 10, 11),
(140, '', '<p>Love that only which happens to thee and is spun with the thread of thy destiny. For what is more suitable?</p>', 1, NULL, 0, 7, 8),
(141, '', '<p>Why then dost thou choose to act in the same way? and why dost thou not leave these agitations which are foreign to nature, to those who cause them and those who are moved by them? And why art thou not altogether intent upon the right way of making use of things which happen to thee? for then thou wilt use them well, and they will be material for thee. Only attend to thyself, and resolve to be a good man in every act which thou doest; and remember...</p>', 1, NULL, 0, 0, 5),
(142, '', '<p>Look within. Within is the fountain of the good, and it will ever bubble up, if thou wilt ever dig.</p>', 1, NULL, 0, 4, 7),
(143, '', '<p>The art of life is more like the wrestler\'s art than the dancer\'s, in respect of this, that it should stand ready and firm to meet onsets which are sudden and unexpected.</p>', 1, NULL, 0, 3, 3),
(145, '', '<p>In the case of most pains let this remark of Epicurus aid thee, that the pain is neither intolerable nor everlasting, if thou bear in mind that it has its limits, and if thou addest nothing to it in imagination...</p>', 1, NULL, 0, 8, 10),
(146, '', '<p>Very little is needed to make a happy life.</p>', 1, NULL, 0, 6, 8),
(147, '', '<p>To live each day as though one\'s last, never flustered, never apathetic, never attitudinizing – here is perfection of character.</p>', 1, NULL, 0, 4, 8),
(148, '', '<p>The nature of the All moved to make the universe.</p>', 1, NULL, 0, 5, 11),
(149, '', '<p>A wrongdoer is often a man who has left something undone, not always one who has done something.</p>', 1, NULL, 0, 6, 5),
(150, '', '<p>On the occasion of every act ask thyself, How is this with respect to me? Shall I repent of it? A little time and I am dead, and all is gone.</p>', 1, NULL, 0, 8, 8),
(151, '', '<p>You may break your heart, but men will still go on as before.</p>', 1, NULL, 0, 3, 3),
(152, '', '<p>Constantly and, if it be possible, on the occasion of every impression on the soul, apply to it the principles of Physic, of Ethic, and of Dialectic.</p>', 1, NULL, 0, 0, 2),
(153, '', '<p>To change your mind and to follow him who sets you right is to be nonetheless the free agent that you were before.</p>', 1, NULL, 0, 3, 4),
(154, '', '<p>Remember that to change thy opinion and to follow him who corrects thy error is as consistent with freedom as it is to persist in thy error.</p>', 1, NULL, 0, 3, 4),
(155, '', '<p>Nature has had regard in everything no less to the end than to the beginning and the continuance, just like a man who throws up a ball. What good is it then for the ball to be thrown up, or harm for it to come down... what good is it to the bubble while it holds together, or what harm when it is burst?</p>', 1, NULL, 0, 0, 3),
(156, '', '<p>Short-lived are both the praiser and the praised, and rememberer and the remembered: and all this in a nook of this part of the world; and not even here do all agree, no, not any one with himself: and the whole earth too is a point.</p>', 1, NULL, 0, 1, 4),
(157, '', '<p>Look to the essence of a thing, whether it be a point of doctrine, of practice, or of interpretation.</p>', 1, NULL, 0, 4, 5),
(158, '', '<p>Thou sufferest justly: for thou choosest rather to become good to-morrow than to be good to-day.</p>', 1, NULL, 0, 6, 9),
(159, '', '<p>Remember this, then, that this little compound, thyself, must either be dissolved, or they poor breath must be extinguished, or be removed and placed elsewhere.</p>', 1, NULL, 0, 0, 2),
(160, '', '<p>It is satisfaction to a man to do the proper works of a man.</p>', 1, NULL, 0, 1, 4),
(161, '', '<p>There are three relations [between thee and other things]: the one to the body which surrounds thee; the second to the divine cause from which all things come to all; and the third to those who live with thee.</p>', 1, NULL, 0, 4, 12),
(162, '', '<p>Suppose that thou hast detached thyself from the natural unity... yet here there is this beautiful provision, that it is in thy power again to unite thyself. God has allowed this to no other part, after it has been separated and cut asunder, to come together again. ...he has distinguished man, for he has put it in his power not to be separated at all from the universal ...he has allowed him to be returned and to be united and to resume his place as a part.</p>', 1, NULL, 0, 2, 6),
(163, '', '<p>As the nature of the universal has given to every rational being all the powers that it has, so we have received from it this power also. For as the universal nature converts and fixes in its predestined place everything which stands in the way and opposes it, and makes such things a part of itself, so also the rational animal is able to make every hindrance its own material, and to use it for such purpose as it may have designed.</p>', 1, NULL, 0, 1, 5),
(164, '', '<p>Remember that neither the future nor the past pains thee, but only the present. But this is reduced to a very little, if thou only circumscribest it, and chidest thy mind, if it is unable to hold out against even this.</p>', 1, NULL, 0, 5, 9),
(165, '', '<p>If thou canst see sharp, look and judge wisely, says the philosopher.</p>', 1, NULL, 0, 3, 4),
(166, '', '<p>In the constitution of that rational animal I see no virtue which is opposed to justice, but I see a virtue which is opposed to love of pleasure, and that is temperance.</p>', 1, NULL, 0, 2, 3),
(167, '', '<p>The things... which are proper to the understanding no other man is used to impede, for neither fire, nor iron, nor tyrant, nor abuse, touches it in any way. When it has been made a sphere, it continues a sphere.</p>', 1, NULL, 0, 0, 6),
(168, '', '<p>It is not fit that I should give myself pain, for I have never intentionally given pain even to another.</p>', 1, NULL, 0, 8, 8),
(169, '', '<p>If...it be a thing external that causes thy grief, know, that it is not that properly that doth cause it, but thine own conceit and opinion concerning the thing: which thou mayest rid thyself of, when thou wilt.</p>', 1, NULL, 0, 4, 5),
(170, '', '<p>The mind which is free from passions is a citadel, for man has nothing more secure to which he can fly for refuge and for the future be inexpugnable. He then who has not seen this is an ignorant man: but he who has seen it and does not fly to this refuge is unhappy.</p>', 1, NULL, 0, 5, 5),
(171, '', '<p>The universal nature has no external space; but the wondrous part of her art is that though she has circumscribed herself, everything which is within her which appears to decay and to grow old and to be useless she changes into herself, and again makes other new things from these very same, so that she requires neither substance from without nor wants a place into which she may cast that which decays. She is content then with her own space, and her own matter, and her own art.</p>', 1, NULL, 0, 3, 5),
(172, '', '<p>No carelessness in your actions. No confusion in your words. No imprecision in your thoughts.</p>', 1, NULL, 0, 4, 4),
(173, '', '<p>Be not careless in deeds, nor confused in words, nor rambling in thought.</p>', 1, NULL, 0, 6, 6),
(174, '', '<p>A man standing by a spring of clear, sweet water and cursing it. While the fresh water keeps on bubbling up. He can shovel mud into it, or dung, and the stream will carry it away, wash itself clean, remain unstained.</p>', 1, NULL, 0, 2, 3),
(175, '', '<p>Suppose that men kill thee, cut thee in pieces, curse thee. What then can these things do to prevent thy mind from remaining pure, wise, sober, just? For instance, if a man should stand by a limpid pure spring, and curse it, the spring never ceases sending up potable water; and if he should cast clay into it or filth, it will speedily disperse them and wash them out, and will not be at all polluted. How then shalt thou possess a perpetual fountain? By forming thyself hourly to freedom conjoined with contentment, simplicity and modesty.</p>', 1, NULL, 0, 3, 5),
(176, '', '<p>He who does not know what the world is, does not know where he is. And he who does not know for what purpose the world exists, does not know who he is, nor what the world is. But he who has failed in any one of these things could not even say for what purpose he exists himself. What then dost thou think of him who [avoids or] seeks the praise of those who applaud, of men who know not either where they are or who they are?</p>', 1, NULL, 1, 2, 9),
(177, '', '<p>He that knows not what the world is, knows not where he is himself. He that knows not for what he was made, knows not what he is nor what the world is.</p>', 1, NULL, 0, 2, 4),
(178, '', '<p>You want praise from people who kick themselves every fifteen minutes, the approval of people who despise themselves.</p>', 1, NULL, 0, 4, 5),
(179, '', '<p>No longer let thy breathing only act in concert with the air which surrounds thee, but let thy intelligence also now be in harmony with the intelligence which embraces all things. For the intelligent power is no less diffused in all parts and pervades all things for him who is willing to draw it to him than the aërial power for him who is able to respire it.</p>', 1, NULL, 0, 1, 3),
(180, '', '<p>He who fears death either fears to lose all sensation or fears new sensations. In reality, you will either feel nothing at all, and therefore nothing evil, or else, if you can feel any sensations, you will be a new creature, and so will not have ceased to have life.</p>', 1, NULL, 0, 3, 3),
(181, '', '<p>Men exist for the sake of one another. Teach them then or bear with them.</p>', 1, NULL, 0, 4, 4),
(182, '', '<p>All men are made one for another: either then teach them better, or bear with them. (trans. Meric Casaubon).</p>', 1, NULL, 0, 7, 8),
(183, '', '<p>An arrow has one motion and the mind another. Even when pausing, even when weighing conclusions, the mind is moving forward, toward its goal.</p>', 1, NULL, 0, 2, 5),
(184, '', '<p>The nature of the universe is the nature of things that are. Now, things that are have kinship with things that are from the beginning. Further, this nature is styled Truth; and it is the first cause of all that is true.</p>', 1, NULL, 0, 4, 7),
(185, '', '<p>He would be the finer gentleman that should leave the world without having tasted of lying or pretence of any sort, or of wantonness or conceit.</p>', 1, NULL, 1, 3, 5),
(186, '', '<p>Think not disdainfully of death, but look on it with favor; for even death is one of the things that Nature wills.</p>', 1, NULL, 0, 3, 4),
(187, '', '<p>A wrongdoer is often a man who has left something undone, not always one who has done something.</p>', 1, NULL, 0, 7, 6),
(188, '', '<p>Blot out vain pomp; check impulse; quench appetite; keep reason under its own control.</p>', 1, NULL, 0, 2, 4),
(189, '', '<p>Things that have a common quality ever quickly seek their kind.</p>', 1, NULL, 0, 0, 3),
(190, '', '<p>All things are the same,—familiar in enterprise, momentary in endurance, coarse in substance. All things now are as they were in the day of those whom we have buried.</p>', 1, NULL, 0, 3, 8),
(191, '', '<p>The happiness and unhappiness of the rational, social animal depends not on what he feels but on what he does; just as his virtue and vice consist not in feeling but in doing.</p>', 1, NULL, 0, 3, 4),
(192, '', '<p>All things are changing; and thou thyself art in continuous mutation and in a manner in continuous destruction and the whole universe to.</p>', 1, NULL, 0, 0, 7),
(193, '', '<p>Turn thy thoughts now to the consideration of thy life, thy life as a child, as a youth, thy manhood, thy old age, for in these also every change was a death. Is this anything to fear?</p>', 1, NULL, 0, 5, 6),
(194, '', '<p>Hasten [to examine] thy own ruling faculty and that of the universe and that of thy neighbor: thy own, that thy may make it just; and that of the universe, that thou mayst remember of what thou art a part; and that of thy neighbor, that thy mayst know whether he has acted ignorantly or with knowledge, and that thou mayst also consider that his ruling faculty is akin to thine.</p>', 1, NULL, 0, 2, 5),
(195, '', '<p>As thou thyself art a component part of a social system, so let every act of thine be a component part of social life. Whatever act of thine that has no reference, either immediately or remotely, to a social end, this tears asunder thy life, and does not allow it to be one, and it is of the nature of a mutiny, just as when in a popular assembly a man acting by himself stands apart from the general agreement.</p>', 1, NULL, 0, 3, 6),
(196, '', '<p>The universal intelligence puts itself in motion for every separate effect... or it puts itself in motion once, and everything else comes by way of a sequence in a manner; or individual elements are the origin of all things. In a word, if there is a god, all is well; and if chance rules, do not thou be governed by it.</p>', 1, NULL, 1, 1, 3),
(198, '', '<p>Do what nature now requires. Set thyself in motion, if it is in thy power, and do not look about thee to see if any one will observe it; nor yet expect Plato\'s Republic: but be content if the smallest thing goes on well, and consider such an event to be no small matter.</p>', 1, NULL, 0, 4, 4),
(199, '', '<p>Forward, as occasion offers. Never look round to see whether any shall note it…. Be satisfied with success in even the smallest matter, and think that even such a result is no trifle.</p>', 1, NULL, 0, 4, 6),
(200, '', '<p>Let there be freedom from perturbations with respect to the things which come from the external cause; and let there be justice in the things done by virtue of the internal cause, that is, let there be movement and action terminating in this, in social acts, for this is according to thy nature.</p>', 1, NULL, 0, 2, 4),
(201, '', '<p>He that dies in extreme old age will be reduced to the same state with him that is cut down untimely.</p>', 1, NULL, 0, 4, 6),
(203, '', '<p>Either all things proceed from one intelligent source and come together as in one body, and the part ought not to find fault with what is done for the benefit of the whole; or there are only atoms, and nothing else than a mixture and dispersion. Why, then, art thou disturbed? Say to this ruling faculty, Art thou dead, art thou corrupted, art thou playing the hypocrite, art thou become a beast, dost thou herd and feed with the rest?</p>', 1, NULL, 0, 2, 5),
(205, '', '<p>Is it not better to use what is in thy power like a free man than to desire in a slavish and abject way what is not in thy power?</p>', 1, NULL, 0, 3, 5),
(206, '', '<p>One man prays thus: How shall I be able to lie with that woman? Do thou pray thus: How shall I not desire to lie with her? Another prays: How shall I be released from this? Another prays: How shall I not desire to be released? Another thus: How shall I not lose my little son? Thou thus: How shall I not be afraid to lose him? In fine, turn thy prayers this way, and see what comes.</p>', 1, NULL, 0, 0, 3),
(207, '', '<p>Art thy not content that thou hast done something conformable to thy nature, and dost thou seek to be paid for it? Just as if the eye demanded recompense for seeing, or the feet for walking. For as these members are formed for a particular purpose... so also is man formed by nature to acts of benevolence.</p>', 1, NULL, 0, 3, 4),
(208, '', '<p>Wilt thou then, my soul, never be good and simple and one and naked, more manifest than the body which surrounds thee? Wilt thou never enjoy an affectionate and contented disposition? Wilt thou never be full and without a want of any kind, longing for nothing more, nor desiring anything, either animate of inanimate, for the enjoyment of pleasures? nor yet desiring time wherein thou shalt have longer enjoyment, or place, or pleasant climate, or society of men with whom thou mayst live in harmony? but wilt thou be satisfied with thy present condition, and pleased with all that is around thee, and wilt thou convince thyself that thou hast everything and that it comes from the gods, that everything is well for thee, and will be well whatever shall please them, and whatever they shall give for the conservation of the perfect living being, the good and just and beautiful, which generates and holds together all things, and contains and embraces all things which are dissolved for the production of other like things? Wilt thou never be such that thou shalt so dwell in community with gods and men as neither to find fault with them at all, nor to be condemned by them?</p>', 1, NULL, 0, 0, 8),
(209, '', '<p>Use these rules then, and trouble thyself about nothing else.</p>', 1, NULL, 1, 1, 2),
(210, '', '<p>If a man is mistaken, instruct him kindly and show him his error. But if thou art not able, blame thyself, or blame not even thyself.</p>', 1, NULL, 0, 5, 6),
(211, '', '<p>Whatever may happen to thee, it was prepared for thee from all eternity; and the implication of causes was from eternity spinning the thread of thy being, and of that which is incident to it.</p>', 1, NULL, 0, 1, 4),
(212, '', '<p>Alternate Translation: Whatever may befall you, it was preordained for you from everlasting.</p>', 1, NULL, 0, 1, 4),
(213, '', '<p>The whole contains nothing which is not or its advantage; and all natures indeed have this common principle, but the nature of the universe has this principle besides, that it cannot be compelled even by any external cause to generate anything harmful to itself.</p>', 1, NULL, 3, 0, 7),
(214, '', '<p>By remembering then that I am a part of such a whole, I shall be content with everything that happens. And inasmuch as I am in a manner intimately related to the parts which are of the same kind with myself, I shall do nothing unsocial, but I shall rather direct myself to the things which are of the same kind with myself, and I shall turn all my efforts to the common interest, and divert them from the contrary.</p>', 1, NULL, 0, 4, 6),
(215, '', '<p>Remember that the term Rational was intended to signify a discriminating attention to every several thing and freedom from negligence; and that Equanimity is the voluntary acceptance of things which are assigned to thee by the common nature; and the Magnanimity is the elevation of the intelligent part above the pleasurable or painful sensations of the flesh, and above that poor thing called fame, and death, and all such things. If then, thou maintainest thyself in the possession of these names, without desiring to be called by these names by others, thou wilt be another person and wilt enter into another life.</p>', 1, NULL, 0, 1, 7),
(216, '', '<p>Rememberest the gods, and that they wish not to be flattered, but wish all reasonable beings to be made like themselves; and... rememberest that what does the work of a fig-tree is a fig-tree, and that what does the work of a dog is a dog, and that what does the work of a bee is a bee, and that what does the work of a man is a man.</p>', 1, NULL, 0, 0, 5),
(217, '', '<p>Acquire the contemplative way of seeing how all things change into one another, and constantly attend to it, and exercise thyself about this part [of philosophy]. For nothing is so much adapted to produce magnanimity. ...But as to what any man shall say or think about him, or do against him, he never even thinks of it, being himself contented with these two things: with acting justly in what he now does, and being satisfied with what is now assigned to him; and he lays aside all distracting and busy pursuits, and desires nothing else than to accomplish the straight course through the law, and by accomplishing the straight course to follow God.</p>', 1, NULL, 0, 0, 6),
(218, '', '<p>What need is there of suspicious fear, since it is in thy power to inquire what ought to be done? And if thy seest clear, go by this way content, without turning back: but if thy dost not see clear, stop and take the best advisers. But if any other things oppose thee, go on according to thy powers with due consideration, keeping to that which appears to be just. For it is best to reach this object, and if thou dost fail, let thy failure be in attempting this. He who follows reason in all things is both tranquil and active at the same time, and also cheerful and collected.</p>', 1, NULL, 0, 6, 8),
(219, '', '<p>To her who gives and takes back all, to nature, the man who is instructed and modest says, Give what thou wilt; take back what thou wilt. And he says this not proudly, but obediently and well pleased with her.</p>', 1, NULL, 0, 4, 7),
(220, '', '<p>Live as on a mountain. ...Let men see, let them know a real man who lives according to nature. If they cannot endure him, let them kill him. For that is better than to live thus.</p>', 1, NULL, 0, 1, 3),
(221, '', '<p>Waste no more time arguing what a good man should be. Be one.</p>', 1, NULL, 0, 3, 7),
(222, '', '<p>Constantly contemplate the whole of time and the whole of substance, and consider that all individual things as to substance are a grain of a fig, and as to time the turning of a gimlet.</p>', 1, NULL, 0, 3, 5),
(223, '', '<p>Look at everything that exists, and observe that it is already in dissolution and change, and as it were putrefaction or dispersion, or that everything is so constituted in nature as to die.</p>', 1, NULL, 0, 3, 3),
(225, '', '<p>Let this always be plain to thee, that this piece of land is like any other; and that all things here are the same with all things on the top of a mountain, or on the sea-shore, or wherever thou chooses to be. For thou wilt find just what Plato says, Dwelling within the walls of the city as in a shepherd\'s fold on a mountain.</p>', 1, NULL, 0, 0, 1),
(226, '', '<p>What is my ruling faculty now to me? and of what nature am I now making it? and for what purpose am I now using it? is it void of understanding? is it loosed and rent asunder from social life? is it melted and mixed with the poor flesh so as to move together with it?</p>', 1, NULL, 0, 0, 4),
(227, '', '<p>He who flies from his master is a runaway; but the law is master, and he who breaks the law is a runaway. And he also who is grieved or angry or afraid, is dissatisfied because something has been or is or shall be of the things which are appointed by Him who rules all things, and He is Law, and assigns to every man what is fit. He then who fears or is grieved or is angry is a runaway.</p>', 1, NULL, 1, 0, 7),
(228, '', '<p>All those [events in history] were such dramas as we see now, only with different actors.</p>', 1, NULL, 0, 3, 8),
(229, '', '<p>Only to the rational animal is it given to follow voluntarily what happens; but simply to follow is a necessity imposed on all.</p>', 1, NULL, 0, 3, 5),
(230, '', '<p>When thou art offended at any man\'s fault, forthwith turn to thyself and reflect in what manner thou doest error thyself... For by attending to this thou wilt quickly forget thy anger, if this consideration is also added, that the man is compelled; for what else could he do? or, if thou art able, take away from him the compulsion.</p>', 1, NULL, 0, 4, 7),
(232, '', '<p>What matter and opportunity [for thy activity] art thou avoiding? For what else are all these things, except exercises for the reason, when it has viewed carefully and by examination into their nature the things which happen in life? Persevere then until thou shalt have made these things thy own, as the stomach which is strengthened makes all things its own, as the blazing fire makes flame and brightness out of everything that is thrown into it.</p>', 1, NULL, 0, 3, 5),
(233, '', '<p>Let it not be in any man\'s power to say truly of thee that thou art not simple or that thou art not good; but let him be a liar whoever shall think anything of this kind about thee; and this is altogether in thy power.</p>', 1, NULL, 0, 6, 10),
(235, '', '<p>In the case of all things which have a certain constitution, whatever harm may happen to any of them, that which is affected becomes consequently worse; but in like case, a man becomes both better... and more worthy of praise, by making the right use of these accidents.</p>', 1, NULL, 0, 4, 5),
(236, '', '<p>And finally remember that nothing harms him who is really a citizen, which does not harm the state; nor yet does anything harm the state which does not harm law [order]; and of these things which are called misfortunes not one harms law. What then does not harm law does not harm either state or citizen.</p>', 1, NULL, 0, 0, 3),
(237, '', '<p>\"Leaves, some the wind scatters on the ground—So is the race of man.\" Leaves, also, are thy children; and leaves, too, are they who cry out so if they are worthy of credit, or bestow their praise, or on the contrary curse, or secretly blame and sneer; and leaves, in like manner, are those who shall receive and transmit a man\'s fame to after-times. For all such things as these \"are produced in the season of spring,\" as the poet says; then the wind casts them down; then the forest produces other leaves in their places. But a brief existence is common to all things, and yet thou avoidest and pursuest all things as if they would be eternal.</p>', 1, NULL, 1, 2, 4),
(238, '', '<p>A little time, and thou shalt close thy eyes; and him who has attended thee to thy grave, another soon will lament.</p>', 1, NULL, 0, 5, 7);
INSERT INTO `main_quote` (`id`, `title`, `content`, `category_id`, `subtitle`, `dislikes`, `likes`, `views`) VALUES
(239, '', '<p>The healthy eye ought to see all visible things and not to say, I wish for green things; for this is the condition of the diseased eye. And the healthy hearing and smelling ought to be ready to perceive all that can be heard and smelled. And the healthy stomach ought to be with respect to all food just as the mill with respect to all things which it is formed to grind. And accordingly the healthy understanding ought to be prepared for everything which happens; but that which says, Let my dear children live, and let all men praise whatever I may do, is an eye which seeks for green things, or teeth which seek for soft things.</p>', 1, NULL, 0, 3, 5),
(240, '', '<p>There is no man so fortunate that there shall not be by him when he is dying some who are pleased with what is going to happen. Suppose that he was a good and a wise man, will there not be at least some one to say to himself, Let us at last breathe freely, being relieved from this schoolmaster? It is true that he was harsh to none of us, but I perceive that he tacitly condemns us.—This is what is said of a good man. But in our own case how many other things are there for which there are many who wish to get rid of us.</p>', 1, NULL, 0, 9, 9),
(241, '', '<p>Remember that what pulls the strings is the force hidden within; there lies the power to persuade, there the life,—there, if one must speak out, the real man.</p>', 1, NULL, 0, 6, 8),
(242, '', '<p>In contemplating thyself never include the vessel which surrounds thee, and these instruments which are attached about it. For they are like an ax, differing only in this, that they grow to the body. For indeed there is no more use in these parts without the cause which moves and checks them than in the weaver\'s shuttle, and the writer\'s pen, and the driver\'s whip.</p>', 1, NULL, 0, 2, 4),
(243, '', '<p>Have I done something for the general interest? Well then I have had my reward. Let this always be present to thy mind, and never stop doing such good.</p>', 1, NULL, 0, 10, 11),
(244, '', '<p>There is no nature which is inferior to art, the arts imitate the nature of things.</p>', 1, NULL, 0, 5, 7),
(245, '', '<p>The man who is honest and good ought to be exactly like a man who smells strong, so that the bystander as soon as he comes near him must smell whether he choose or not.</p>', 1, NULL, 0, 3, 6),
(246, '', '<p>Socrates used to call the opinions of the many by the name of Lamiae, bugbears to frighten children.</p>', 1, NULL, 0, 3, 4),
(247, '', '<p>And virtue they will curse, speaking harsh words.</p>', 1, NULL, 0, 5, 6),
(248, '', '<p>All those things at which thou wishest to arrive by a circuitous road, thou canst have now, if thou dost not refuse them to thyself.</p>', 1, NULL, 0, 2, 4),
(249, '', '<p>If it is not right, do not do it, if it is not true, do not say it. For let thy efforts be —</p>', 1, NULL, 0, 1, 5),
(250, '', '<p>Consider that everything is opinion, and opinion is in thy power.</p>', 1, NULL, 0, 0, 3),
(251, '', '<p>Know the joy of life by piling good deed on good deed until no rift or cranny appears between them.</p>', 1, NULL, 0, 1, 2),
(253, '', '<p>Depart then satisfied, for he also who releases thee is satisfied.</p>', 1, NULL, 0, 0, 3),
(254, '', '<p>Find time still to be learning somewhat good, and give up being desultory.</p>', 1, NULL, 0, 5, 8),
(256, '', '<p>Be not as one that hath ten thousand years to live; death is nigh at hand: while thou livest, while thou hast time, be good.</p>', 1, NULL, 0, 2, 5),
(258, '', '<p>In the morning, when thou art sluggish at rousing thee, let this thought be present; “I am rising to a man’s work.”</p>', 1, NULL, 0, 2, 3),
(260, '', '<p>No form of Nature is inferior to Art; for the arts merely imitate natural forms.</p>', 1, NULL, 0, 0, 1),
(262, '', '<p>Everything is in a state of metamorphosis. Thou thyself art in everlasting change and in corruption to correspond; so is the whole universe.</p>', 1, NULL, 0, 4, 9),
(263, '', '<p>He who lives in harmony with himself lives in harmony with the universe.</p>', 1, NULL, 0, 4, 4),
(265, '', '<p>Live a good life. If there are gods and they are just, then they will not care how devout you have been, but will welcome you based on the virtues you have lived by. If there are gods, but unjust, then you should not want to worship them. If there are no gods, then you will be gone, but will have lived a noble life that will live on in the memories of your loved ones.</p>', 1, NULL, 0, 5, 5),
(266, '', '<p>Everything we hear is an opinion, not a fact. Everything we see is a perspective, not the truth.</p>', 1, NULL, 0, 7, 7),
(267, '', '<p>The object in life is not to be on the side of the majority, but to escape finding oneself in the ranks of the insane.</p>', 1, NULL, 0, 5, 5),
(268, '', '<p>Once you have their money, never give it back.</p>', 2, NULL, 0, 0, 5),
(269, '', '<p>You can’t cheat an honest customer, but it never hurts to try.</p>', 2, NULL, 1, 1, 4),
(270, '', '<p>Never spend more for an acquisition than you have to.</p>', 2, NULL, 1, 1, 8),
(271, '', '<p>Sex and profit are the two things that never last long enough.</p>', 2, NULL, 0, 0, 4),
(272, '', '<p>If you can’t break a contract, bend it.</p>', 2, NULL, 1, 0, 1),
(274, '', '<p>Always keep you ears open.</p>', 2, NULL, 0, 2, 7),
(275, '', '<p>Keep count of your change.</p>', 2, NULL, 0, 4, 7),
(276, '', '<p>Instinct plus opportunity equals profit.</p>', 2, NULL, 0, 4, 7),
(279, '', '<p>Anything worth selling is worth selling twice.</p>', 2, NULL, 0, 0, 4),
(281, '', '<p>Anything stolen is pure profit.</p>', 2, NULL, 0, 0, 4),
(282, '', '<p>Acting stupid is often smart.</p>', 2, NULL, 0, 0, 4),
(283, '', '<p>A deal is a deal … until a better one comes along.</p>', 2, NULL, 0, 0, 4),
(284, '', '<p>A bargain usually isn’t.</p>', 2, NULL, 0, 0, 8),
(287, '', '<p>When the customer is sweating, turn up the heat.</p>', 2, NULL, 0, 1, 6),
(288, '', '<p>Never place friend ship before profit.</p>', 2, NULL, 1, 0, 2),
(289, '', '<p>Wise men can hear profit in the wind.</p>', 2, NULL, 0, 4, 8),
(291, '', '<p>Never ask when you can take.</p>', 2, NULL, 0, 4, 9),
(293, '', '<p>The vast majority of the rich in this galaxy did not inherit their wealth; they stole it.</p>', 2, NULL, 0, 1, 5),
(294, '', '<p>The most beautiful thing about a tree is what you do with it after you cut it down.</p>', 2, NULL, 0, 0, 3),
(295, '', '<p>Morality is always defined by those in power.</p>', 2, NULL, 1, 1, 3),
(296, '', '<p>When someone says “It’s not the money,” they’re lying.</p>', 2, NULL, 0, 3, 5),
(298, '', '<p>Never make fun of a Ferengi’s mother.</p>', 2, NULL, 0, 0, 5),
(299, '', '<p>Be careful what you sell. It may do exactly what the customer expects.</p>', 2, NULL, 0, 3, 11),
(301, '', '<p>War is good for business.</p>', 2, NULL, 0, 2, 7),
(302, '', '<p>Peace is good for business.</p>', 2, NULL, 0, 2, 2),
(303, '', '<p>Too many Ferengi can’t laugh at themselves anymore.</p>', 2, NULL, 1, 1, 5),
(304, '', '<p>You can always buy back a lost reputation.</p>', 2, NULL, 0, 0, 1),
(305, '', '<p>Free advertising is cheap.</p>', 2, NULL, 0, 2, 8),
(306, '', '<p>Praise is cheap. Heap it generously on all customers.</p>', 2, NULL, 1, 0, 4),
(307, '', '<p>If you see profit on a journey, take it.</p>', 2, NULL, 0, 1, 3),
(308, '', '<p>Money talks, but having a lots of it gets more attention.</p>', 2, NULL, 0, 0, 4),
(309, '', '<p>Only negotiate when you are certain to profit.</p>', 2, NULL, 0, 2, 3),
(310, '', '<p>Caressing an ear is often more forceful than pointing a weapon.</p>', 2, NULL, 1, 0, 4),
(311, '', '<p>Never argue with a loaded phaser.</p>', 2, NULL, 0, 4, 8),
(312, '', '<p>Profit has limits. Loss has none.</p>', 2, NULL, 0, 3, 6),
(313, '', '<p>Labor camps are full of people who trusted the wrong person.</p>', 2, NULL, 1, 1, 6),
(315, '', '<p>The bigger the smile, the sharper the knife.</p>', 2, NULL, 0, 0, 8),
(316, '', '<p>Old age and greed will always overcome youth and talent.</p>', 2, NULL, 0, 0, 5),
(319, '', '<p>Only Bugsy could have built Las Vegas.</p>', 2, NULL, 0, 3, 6),
(322, '', '<p>Always sell at the highest possible profit.</p>', 2, NULL, 0, 0, 2),
(325, '', '<p>Friendship is seldom cheap.</p>', 2, NULL, 0, 5, 8),
(326, '', '<p>Fee advice is never cheap.</p>', 2, NULL, 0, 3, 5),
(329, '', '<p>The riskier the road, the greater the profit.</p>', 2, NULL, 0, 4, 6),
(330, '', '<p>Power without profit is like a ship without an engine.</p>', 2, NULL, 0, 0, 2),
(331, '', '<p>Don’t talk shop; talk shopping.</p>', 2, NULL, 0, 0, 4),
(332, '', '<p>Don’t talk ship; talk shipping.</p>', 2, NULL, 0, 5, 5),
(333, '', '<p>Anyone serving in a fleet who is crazy can be relieved, if they ask for it.</p>', 2, NULL, 0, 4, 8),
(334, '', '<p>Enough is never enough.</p>', 2, NULL, 0, 3, 5),
(336, '', '<p>You could afford your ship without your government – if it weren’t for your government.</p>', 2, NULL, 0, 5, 9),
(337, '', '<p>Get the money first, then let the buyers worry about collecting the merchandise.</p>', 2, NULL, 1, 0, 2),
(338, '', '<p>Gamble and trade have two things in common: risk and Latinum.</p>', 2, NULL, 0, 2, 5),
(339, '', '<p>Never let the competition know, what you’re thinking.</p>', 2, NULL, 0, 2, 6),
(340, '', '<p>Never trust advice from a dying Ferengi; listen but don’t trust.</p>', 2, NULL, 0, 1, 2),
(343, '', '<p>Every once in a while, declare peace. It confuses the hell out of your enemies.</p>', 2, NULL, 0, 5, 9),
(344, '', '<p>Go where no Ferengi has gone before; where there is no reputation there is profit.</p>', 2, NULL, 0, 0, 5),
(345, '', '<p>Don’t discriminate. The most unlikely species can create the best customers.</p>', 2, NULL, 0, 0, 3),
(346, '', '<p>Benefit from the Vulcan greed for knowledge.</p>', 2, NULL, 0, 1, 4),
(347, '', '<p>If it works, sell it. If it works well, sell it for more. If it doesn’t work, quadruple the price and sell it as an antique.</p>', 2, NULL, 0, 0, 8),
(348, '', '<p>There’s nothing more dangerous than an honest businessman.</p>', 2, NULL, 0, 2, 4),
(350, '', '<p>Revenge is profitless.</p>', 2, NULL, 0, 1, 4),
(351, '', '<p>She can touch your ears but never your Latinum.</p>', 2, NULL, 0, 2, 6),
(352, '', '<p>Death takes no bribes.</p>', 2, NULL, 0, 2, 2),
(353, '', '<p>A wife is a luxury, a smart accountant a necessity.</p>', 2, NULL, 0, 1, 6),
(357, '', '<p>Mine is better than ours.</p>', 2, NULL, 0, 0, 2),
(359, '', '<p>Never confuse wisdom with luck.</p>', 2, NULL, 0, 2, 7),
(360, '', '<p>He’s a fool who makes his doctor his heir.</p>', 2, NULL, 0, 3, 5),
(361, '', '<p>Beware of small expenses: a small leak will kill a ship.</p>', 2, NULL, 0, 3, 3),
(363, '', '<p>Faith moves mountains – of inventory.</p>', 2, NULL, 0, 1, 5),
(364, '', '<p>If you would keep a secret from an enemy, don’t tell it to a friend.</p>', 2, NULL, 0, 1, 5),
(366, '', '<p>Never trust a wise man.</p>', 2, NULL, 0, 0, 7),
(367, '', '<p>Everything that has no owner, needs one.</p>', 2, NULL, 0, 2, 6),
(369, '', '<p>Nature decays, but Latinum lasts forever.</p>', 2, NULL, 0, 0, 5),
(371, '', '<p>Money is never made. It is merely won or lost.</p>', 2, NULL, 0, 0, 4),
(376, '', '<p>Dignity and an empty sack is worth the sack.</p>', 2, NULL, 0, 2, 4),
(377, '', '<p>Only a fool passes up a business opportunity.</p>', 2, NULL, 0, 0, 1),
(380, '', '<p>Never sleep with the boss’s sister.</p>', 2, NULL, 0, 0, 5),
(381, '', '<p>Small print leads to large risk.</p>', 2, NULL, 0, 6, 11),
(382, '', '<p>Greed is eternal.</p>', 2, NULL, 0, 1, 3),
(383, '', '<p>There’s always a way out.</p>', 2, NULL, 0, 2, 5),
(384, '', '<p>If the profit seems too good to be true, it usually is.</p>', 2, NULL, 0, 2, 6),
(385, '', '<p>Never cheat a honest man offering a decent price.</p>', 2, NULL, 0, 4, 7),
(386, '', '<p>Buy, sell, or get out of the way.</p>', 2, NULL, 0, 2, 8),
(387, '', '<p>Even a blind man can recognize the glow of Latinum.</p>', 2, NULL, 1, 0, 4),
(389, '', '<p>As the customers go, so goes the wise profiteer.</p>', 2, NULL, 0, 1, 5),
(394, '', '<p>Gratitude can bring on generosity.</p>', 2, NULL, 0, 0, 3),
(395, '', '<p>Ferengi are not responsible for the stupidity of other races.</p>', 2, NULL, 0, 4, 9),
(397, '', '<p>Never trust a beneficiary.</p>', 2, NULL, 1, 0, 3),
(399, '', '<p>The flimsier the produce, the higher the price.</p>', 2, NULL, 0, 2, 5),
(400, '', '<p>Never judge a customer by the size of his wallet … sometimes good things come in small packages.</p>', 2, NULL, 0, 2, 6),
(402, '', '<p>The only value of a collectible is what you can get somebody else to pay for it.</p>', 2, NULL, 0, 1, 8),
(404, '', '<p>Necessity is the mother of invention. Profit is the father.</p>', 2, NULL, 0, 4, 9),
(405, '', '<p>Law makes everyone equal, but justice goes to the highest bidder.</p>', 2, NULL, 0, 2, 3),
(406, '', '<p>Wives serve; brother inherit.</p>', 2, NULL, 1, 0, 6),
(407, '', '<p>The answer to quick and easy profit is: buy for less, sell for more.</p>', 2, NULL, 0, 2, 7),
(408, '', '<p>Competition and fair play are mutually exclusive. Fair play and financial loss go hand-in-hand.</p>', 2, NULL, 0, 0, 4),
(409, '', '<p>A Ferengi waits to bid until his opponents have exhausted themselves.</p>', 2, NULL, 0, 0, 1),
(410, '', '<p>The family of Fools is ancient.</p>', 2, NULL, 0, 4, 6),
(412, '', '<p>Always ask for the costs first.</p>', 2, NULL, 0, 0, 6),
(413, '', '<p>If possible sell neither the sizzle nor the steak, but the Elphasian wheat germ.</p>', 2, NULL, 0, 0, 7),
(414, '', '<p>New customers are like razor toothed gree worms. They can be succulent, but sometimes they bite back.</p>', 2, NULL, 0, 0, 3),
(415, '', '<p>Opportunity waits for no one.</p>', 2, NULL, 0, 5, 9),
(417, '', '<p>Make your shop easy to find.</p>', 2, NULL, 0, 3, 9),
(418, '', '<p>Sometimes, what you get free costs entirely too much.</p>', 2, NULL, 0, 5, 10),
(420, '', '<p>You can’t free a fish from water.</p>', 2, NULL, 1, 0, 5),
(421, '', '<p>The difference between manure and Latinum is commerece.</p>', 2, NULL, 0, 2, 7),
(422, '', '<p>What’s mine is mine, and what’s yours is mine too.</p>', 2, NULL, 1, 0, 5),
(423, '', '<p>Even in the worst of times someone turns a profit.</p>', 2, NULL, 0, 4, 10),
(424, '', '<p>You are surrounded by opportunities; you just have to know where to look.</p>', 2, NULL, 0, 2, 5),
(425, '', '<p>Don’t pay until you have the goods.</p>', 2, NULL, 0, 0, 4),
(426, '', '<p>The customer is always right … until you have their cash.</p>', 2, NULL, 1, 0, 3),
(427, '', '<p>Respect is good, Latinum is better.</p>', 2, NULL, 1, 0, 5),
(429, '', '<p>His money is only your’s when he can’t get it back.</p>', 2, NULL, 0, 5, 10),
(430, '', '<p>A thirsty customer is good for profit, a drunk one isn’t.</p>', 2, NULL, 0, 4, 7),
(431, '', '<p>Never spend your own money when you can spend someone elses.</p>', 2, NULL, 0, 4, 5),
(432, '', '<p>Never allow one’s culture’s law to get in the way of a universal goal: profit.</p>', 2, NULL, 0, 3, 7),
(434, '', '<p>If a deal is fairly and lawfully made, then seeking revenge especially unprofitable revenge, is illegal.</p>', 2, NULL, 0, 0, 3),
(436, '', '<p>If you’re going to have to endure, make yourself comfortable.</p>', 2, NULL, 0, 6, 9),
(438, '', '<p>Time is Latinum. The early Ferengi get the Latinum.</p>', 2, NULL, 0, 0, 8),
(439, '', '<p>If you can sell it, don’t hsitate to steal it.</p>', 2, NULL, 0, 0, 4),
(440, '', '<p>A piece of Latinum in the hand is worth two in a customer’s pocket.</p>', 2, NULL, 0, 0, 8),
(441, '', '<p>Share and perish.</p>', 2, NULL, 0, 0, 2),
(442, '', '<p>When everything fails – run.</p>', 2, NULL, 0, 3, 11),
(443, '', '<p>Ferengi’s don’t give promotional gifts!</p>', 2, NULL, 0, 3, 7),
(444, '', '<p>Know your enemies … but do business with them always.</p>', 2, NULL, 0, 1, 6),
(445, '', '<p>The world is a stage – don’t forget to demand admission.</p>', 2, NULL, 0, 0, 2),
(447, '', '<p>Never offer a confession when a bribe will do.</p>', 2, NULL, 0, 2, 6),
(448, '', '<p>Even dishonesty can’t tarnish the glow of Latinum.</p>', 2, NULL, 1, 0, 3),
(449, '', '<p>Whenever you’re being asked if you are god, the right answer is YES.</p>', 2, NULL, 0, 0, 5),
(450, '', '<p>Genius without opportunity is like Latinum in the mine.</p>', 2, NULL, 0, 1, 2),
(451, '', '<p>There are three things you must not talk to aliens: sex, religion and taxes.</p>', 2, NULL, 0, 3, 6),
(452, '', '<p>If you want to ruin yourself there are three known ways: Gambling is the fastest, women are the sweetest, and banks are the most reliable way.</p>', 2, NULL, 0, 0, 2),
(453, '', '<p>There are two things that will catch up with you for sure: death and taxes.</p>', 2, NULL, 0, 4, 10),
(454, '', '<p>If your dancing partner wants to lead at all costs, let her have her own way and ask another one to dance.</p>', 2, NULL, 0, 7, 13),
(456, '', '<p>Borrow on a handshake; lend in writing.</p>', 2, NULL, 0, 1, 8),
(457, '', '<p>Drive your business or it will drive you.</p>', 2, NULL, 0, 3, 5),
(458, '', '<p>Let other keep their reputation. You keep their money.</p>', 2, NULL, 1, 0, 3),
(459, '', '<p>If the flushing isn’t strong enough, use your brain and try the brush.</p>', 2, NULL, 0, 3, 8),
(460, '', '<p>Klingon women don’t dance tango.</p>', 2, NULL, 0, 0, 4),
(461, '', '<p>It’s always good business to know about new customers before they walk in your door.</p>', 2, NULL, 0, 1, 1),
(462, '', '<p>Wounds heal, but debt is forever.</p>', 2, NULL, 1, 0, 2),
(464, '', '<p>Never trust your customers, especially if they are your relatives.</p>', 2, NULL, 0, 0, 10),
(466, '', '<p>The secret of one person is another person’s opportunity.</p>', 2, NULL, 0, 2, 5),
(467, '', '<p>A madman with Latinum means profit without return.</p>', 2, NULL, 0, 5, 8),
(470, '', '<p>A Ferengi in need, will never do anything for free.</p>', 2, NULL, 0, 1, 7),
(471, '', '<p>When the Grand Nagus arrives to offer you a business opportunity, it’s time to leave town until he’s gone.</p>', 2, NULL, 0, 2, 11),
(473, '', '<p>Fighting with Klingons is like gambling with Cardassians – it’s good to have a friend around when you lose.</p>', 2, NULL, 0, 0, 4),
(474, '', '<p>Never trust a hardworking employee.</p>', 2, NULL, 1, 0, 5),
(477, '', '<p>A wife, who is able to clean, saves the cleaning lady.</p>', 2, NULL, 1, 0, 4),
(478, '', '<p>In business deals, a disruptor can be almost as important as a calculator.</p>', 2, NULL, 0, 4, 9),
(479, '', '<p>If they accept your first offer, you either asked too little or offered too much.</p>', 2, NULL, 0, 5, 10),
(480, '', '<p>Stay neutral in conflicts so that you can sell supplies to both sides.</p>', 2, NULL, 0, 1, 4),
(481, '', '<p>Never begin a business transaction on an empty stomach.</p>', 2, NULL, 0, 0, 3),
(482, '', '<p>Instinct without opportunity is useless.</p>', 2, NULL, 0, 0, 2),
(483, '', '<p>Never take hospitality from someone worse off than yourself.</p>', 2, NULL, 2, 0, 6),
(484, '', '<p>Only pay for it if you are confronted with loaded phaser.</p>', 2, NULL, 0, 0, 6),
(485, '', '<p>Always know what you’re buying.</p>', 2, NULL, 0, 4, 11),
(487, '', '<p>Profit is like a bed of roses – a few thorns are inevitable.</p>', 2, NULL, 0, 3, 9),
(488, '', '<p>Beware of any man who thinks with his lobes.</p>', 2, NULL, 0, 0, 5),
(489, '', '<p>Knowledge is Latinum.</p>', 2, NULL, 2, 2, 7),
(490, '', '<p>Rich men don’t come to buy; they come to take.</p>', 2, NULL, 1, 0, 4),
(491, '', '<p>Never throw anything away: It may be worht a lot of Latinum some Stardate.</p>', 2, NULL, 0, 1, 2),
(492, '', '<p>Pride comes before a loss.</p>', 2, NULL, 0, 1, 4),
(493, '', '<p>Don’t take your family for granted, only their Latinum.</p>', 2, NULL, 0, 1, 7),
(495, '', '<p>All things come to those who wait, even Latinum.</p>', 2, NULL, 0, 3, 8),
(497, '', '<p>Manipulation may be a Ferengi’s greatest tool, and liability.</p>', 2, NULL, 0, 3, 6),
(499, '', '<p>Life’s no fair (How else would you turn a profit?).</p>', 2, NULL, 0, 1, 1),
(500, '', '<p>Every dark cloud has a Latinum lining.</p>', 2, NULL, 0, 0, 7),
(503, '', '<p>You can’t buy fate.</p>', 2, NULL, 0, 8, 10),
(504, '', '<p>There’s a sucker born every minute. Be sure you’re the first to find each one.</p>', 2, NULL, 0, 1, 7),
(505, '', '<p>The truth will cost.</p>', 2, NULL, 0, 0, 5),
(506, '', '<p>Ambition knows no family.</p>', 2, NULL, 0, 2, 8),
(507, '', '<p>The higher you bid, the more customers you drive away.</p>', 2, NULL, 0, 0, 6),
(508, '', '<p>Never underestimate the inportance of the fist impression.</p>', 2, NULL, 0, 3, 7),
(509, '', '<p>More is good, all is better.</p>', 2, NULL, 0, 1, 6),
(510, '', '<p>If you got something nice to say, then SHOUT.</p>', 2, NULL, 0, 1, 5),
(512, '', '<p>A warranty is valid only if they can find you.</p>', 2, NULL, 0, 1, 6),
(514, '', '<p>Never question luck.</p>', 2, NULL, 0, 1, 5),
(515, '', '<p>Celebrate when you are paid, not, when you are promised.</p>', 2, NULL, 0, 1, 7),
(516, '', '<p>Respect other culture’s beliefs; they’ll be more likely to give you money.</p>', 2, NULL, 0, 2, 5),
(517, '', '<p>A dead vendor doesn’t demand money.</p>', 2, NULL, 1, 0, 2),
(518, '', '<p>Satisfaction is not guaranteed.</p>', 2, NULL, 0, 2, 3),
(519, '', '<p>Let the buyer beware.</p>', 2, NULL, 0, 1, 4),
(521, '', '<p>Anyone who can’t tell a fake doesn’t deserve the real thing.</p>', 2, NULL, 0, 2, 7),
(523, '', '<p>Synthehol is the lubricant of choice for a customer’s stuck purse.</p>', 2, NULL, 0, 0, 2),
(524, '', '<p>Only fools negotiate with their own money.</p>', 2, NULL, 0, 0, 4),
(530, '', '<p>Never let a female in clothes cloud your sense of profit.</p>', 2, NULL, 1, 0, 2),
(531, '', '<p>It’s not the size of your planet, but it’s income, that matters.</p>', 2, NULL, 1, 0, 1),
(532, '', '<p>The fear of loss may be your greatest enemy or your best friend – choose wisely.</p>', 2, NULL, 0, 7, 10),
(533, '', '<p>A pair of good ears will ring dry a hundred tongues.</p>', 2, NULL, 0, 0, 1),
(534, '', '<p>Wish not so much to live Long, as to live well.</p>', 2, NULL, 0, 2, 6),
(536, '', '<p>Never purchase anything that has been promised to be valuable or go up in value.</p>', 2, NULL, 0, 3, 4),
(538, '', '<p>There’s many witty men whose brains can’t line their pockets.</p>', 2, NULL, 0, 0, 3),
(540, '', '<p>Always count their Latinum before selling anything.</p>', 2, NULL, 0, 3, 3),
(541, '', '<p>There is no profit in love; however, a strong heart is worth a few bars of Latinum on the open market. Keep it on ice.</p>', 2, NULL, 2, 0, 8),
(542, '', '<p>Latinum can’t buy happiness, but you can sure have a blast renting it.</p>', 2, NULL, 0, 3, 10),
(544, '', '<p>Diamonds may be girl’s best friend, but you can only buy the girl with Latinum.</p>', 2, NULL, 1, 1, 5),
(545, '', '<p>It’s better to swallow your pride than to lose your profit.</p>', 2, NULL, 0, 3, 8),
(546, '', '<p>Never close a deal too soon after a female strokes your lobes.</p>', 2, NULL, 0, 0, 6),
(547, '', '<p>An empty bag can not stand upright.</p>', 2, NULL, 0, 0, 1),
(549, '', '<p>Business is like war; it’s important to recognize the winner.</p>', 2, NULL, 0, 5, 6),
(550, '', '<p>Rules are always subject to change.</p>', 2, NULL, 0, 2, 6),
(551, '', '<p>Rules are always subject to interpretation.</p>', 2, NULL, 0, 1, 8),
(552, '', '<p>No good deed ever goes unpunished.</p>', 2, NULL, 0, 3, 8),
(553, '', '<p>Hear all, trust nothing!</p>', 2, NULL, 0, 4, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_category_name_eb0f0831_uniq` (`name`);

--
-- Indexes for table `main_quote`
--
ALTER TABLE `main_quote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_quote_category_id_8c967c7c_fk_main_category_id` (`category_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_quote`
--
ALTER TABLE `main_quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_quote`
--
ALTER TABLE `main_quote`
  ADD CONSTRAINT `main_quote_category_id_8c967c7c_fk_main_category_id` FOREIGN KEY (`category_id`) REFERENCES `main_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
