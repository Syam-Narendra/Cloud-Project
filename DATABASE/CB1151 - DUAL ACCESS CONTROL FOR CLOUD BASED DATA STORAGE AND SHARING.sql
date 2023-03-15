-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 04, 2022 at 04:28 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cloud_control_project`
--
CREATE DATABASE IF NOT EXISTS `cloud_control_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cloud_control_project`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add owner model', 7, 'add_ownermodel'),
(26, 'Can change owner model', 7, 'change_ownermodel'),
(27, 'Can delete owner model', 7, 'delete_ownermodel'),
(28, 'Can view owner model', 7, 'view_ownermodel'),
(29, 'Can add user model', 8, 'add_usermodel'),
(30, 'Can change user model', 8, 'change_usermodel'),
(31, 'Can delete user model', 8, 'delete_usermodel'),
(32, 'Can view user model', 8, 'view_usermodel'),
(33, 'Can add file model', 9, 'add_filemodel'),
(34, 'Can change file model', 9, 'change_filemodel'),
(35, 'Can delete file model', 9, 'delete_filemodel'),
(36, 'Can view file model', 9, 'view_filemodel'),
(37, 'Can add request model', 10, 'add_requestmodel'),
(38, 'Can change request model', 10, 'change_requestmodel'),
(39, 'Can delete request model', 10, 'delete_requestmodel'),
(40, 'Can view request model', 10, 'view_requestmodel'),
(41, 'Can add otp model', 11, 'add_otpmodel'),
(42, 'Can change otp model', 11, 'change_otpmodel'),
(43, 'Can delete otp model', 11, 'delete_otpmodel'),
(44, 'Can view otp model', 11, 'view_otpmodel');

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
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'ownerapp', 'filemodel'),
(7, 'ownerapp', 'ownermodel'),
(6, 'sessions', 'session'),
(11, 'userapp', 'otpmodel'),
(10, 'userapp', 'requestmodel'),
(8, 'userapp', 'usermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-27 05:16:07.137622'),
(2, 'auth', '0001_initial', '2022-05-27 05:16:08.309806'),
(3, 'admin', '0001_initial', '2022-05-27 05:16:08.605354'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-27 05:16:08.625254'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-27 05:16:08.662927'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-27 05:16:08.911931'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-27 05:16:09.009648'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-27 05:16:09.118295'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-27 05:16:09.130666'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-27 05:16:09.232325'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-27 05:16:09.250498'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-27 05:16:09.274154'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-27 05:16:09.387698'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-27 05:16:09.497602'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-27 05:16:09.622676'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-27 05:16:09.649915'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-27 05:16:09.764600'),
(18, 'sessions', '0001_initial', '2022-05-27 05:16:09.876395'),
(19, 'ownerapp', '0001_initial', '2022-05-27 07:30:49.768693'),
(20, 'userapp', '0001_initial', '2022-05-27 07:30:59.167336'),
(21, 'ownerapp', '0002_filemodel', '2022-05-27 10:23:03.813921'),
(22, 'userapp', '0002_usermodel_status', '2022-05-27 10:29:37.269667'),
(23, 'userapp', '0003_requestmodel', '2022-05-28 04:19:07.875984'),
(24, 'userapp', '0004_alter_requestmodel_status', '2022-05-30 07:07:21.798707'),
(25, 'userapp', '0005_alter_requestmodel_status', '2022-05-30 08:43:27.450137'),
(26, 'userapp', '0006_requestmodel_enclave_status', '2022-05-30 16:01:39.783612'),
(27, 'userapp', '0007_rename_file_id_requestmodel_request_id', '2022-05-30 16:28:33.842368'),
(28, 'userapp', '0008_requestmodel_file_id', '2022-05-30 16:28:33.950729'),
(29, 'userapp', '0009_remove_requestmodel_enclave_status_and_more', '2022-05-30 16:49:14.546408'),
(30, 'userapp', '0010_remove_requestmodel_enclave_and_more', '2022-05-31 04:48:26.267383'),
(31, 'userapp', '0011_requestmodel_otp', '2022-05-31 09:30:30.715465'),
(32, 'userapp', '0012_otpmodel', '2022-05-31 10:01:27.588982'),
(33, 'userapp', '0013_remove_requestmodel_otp', '2022-05-31 10:14:11.788212'),
(34, 'userapp', '0014_requestmodel_send_key', '2022-06-01 05:33:26.080884'),
(35, 'userapp', '0015_rename_send_key_requestmodel_key_status', '2022-06-01 05:35:50.742798'),
(36, 'userapp', '0016_requestmodel_key', '2022-06-01 06:25:03.040711'),
(37, 'userapp', '0017_remove_requestmodel_key', '2022-06-01 07:03:42.731045'),
(38, 'userapp', '0018_requestmodel_otp', '2022-06-01 09:36:44.619562'),
(39, 'ownerapp', '0003_filemodel_file_data_filemodel_file_key', '2022-06-02 07:35:35.206061'),
(40, 'userapp', '0019_remove_requestmodel_otp', '2022-06-03 04:44:14.377309'),
(41, 'userapp', '0020_delete_otpmodel', '2022-06-03 04:45:05.876200'),
(42, 'userapp', '0021_usermodel_verification', '2022-06-03 05:26:13.387824'),
(43, 'ownerapp', '0004_filemodel_otp_alter_filemodel_file', '2022-06-03 06:31:21.712001'),
(44, 'ownerapp', '0005_remove_filemodel_otp_ownermodel_verification', '2022-06-03 06:35:19.319407'),
(45, 'ownerapp', '0006_alter_ownermodel_verification', '2022-06-03 06:46:13.954243'),
(46, 'userapp', '0022_requestmodel_edos_attack', '2022-06-03 10:31:28.249505');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jbsl1jap5e7cd1vhn12ie9m4f5y1bfqk', 'eyJ1c2VyX2lkIjoyLCJvd25lcl9pZCI6MX0:1nunMO:DFuxu1WXKFGw2EDTSGTJLZuPEqS0H-pfsss6zVRcQLE', '2022-06-11 03:43:28.097094'),
('qewe8qvcjatgpwn1kygba149jpn0ssw2', 'eyJ1c2VyX2lkIjoyLCJvd25lcl9pZCI6MX0:1nw2fP:aKy8hRgPwC1161pa4EgKq18z4e4RGix61fdf1Gk9Hyg', '2022-06-14 14:16:15.456786'),
('vz1gudgt91qpl3eaulu82y1mra3xlr2n', '.eJyrViotTi2Kz0xRsjLSUUrLzEmFsE10lPLL86AyhlCZvMTcVCUrJR9PZ1e_YFelWgBiERMz:1nx24N:phnb-ZycjIKI7KSAAkg7p5UvIWBvNfMgyQIuc6L873k', '2022-06-17 07:50:07.267240'),
('z3qexrlksxcznaq8id04ff61pnd80umg', '.eJyrViotTi2Kz0xRsjLSUcovz4NyDHWU0jJzUiESplBOXmJuqpKVUnJGYlGJXklFiVItAJStFNE:1nxLKg:6FTOV-TB652P3_xaKMModbkKrY0eoDARfpuCRGRMWsk', '2022-06-18 04:24:14.163285');

-- --------------------------------------------------------

--
-- Table structure for table `download_request_details`
--

CREATE TABLE IF NOT EXISTS `download_request_details` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_type` varchar(300) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `requested_date` date DEFAULT NULL,
  `file_id` int(11) DEFAULT NULL,
  `enclave_status` varchar(50) DEFAULT NULL,
  `key_status` varchar(50) DEFAULT NULL,
  `edos_attack` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `download_request_details`
--

INSERT INTO `download_request_details` (`request_id`, `owner_id`, `user_id`, `file`, `file_name`, `description`, `file_size`, `file_type`, `status`, `requested_date`, `file_id`, `enclave_status`, `key_status`, `edos_attack`) VALUES
(54, 1, 2, 'files/chanu.txt', 'chanu.txt', 'demo', 102, 'text/plain', 'Forwarded', '2022-06-02', 23, 'Accepted', 'Sended', 'Pending'),
(55, 1, 2, 'files/readme.txt', 'readme.txt', 'demo', 1526, 'text/plain', 'Forwarded', '2022-06-02', 24, 'Rejected', 'Pending', 'Pending'),
(56, 1, 2, 'files/LICENSE', 'LICENSE', 'my', 35500, 'application/octet-stream', 'Pending', '2022-06-03', 25, 'Pending', 'Pending', 'Pending'),
(57, 1, 2, 'files/chanu.txt', 'chanu.txt', 'demo', 102, 'text/plain', 'Pending', '2022-06-03', 23, 'Pending', 'Pending', 'Pending'),
(58, 1, 2, 'files/LICENSE', 'LICENSE', 'my', 35500, 'application/octet-stream', 'Pending', '2022-06-03', 25, 'Pending', 'Pending', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `file_details`
--

CREATE TABLE IF NOT EXISTS `file_details` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_type` varchar(300) NOT NULL,
  `search_rank` varchar(200) DEFAULT NULL,
  `download_rank` varchar(250) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `file_uploaded_date` date DEFAULT NULL,
  `file_data` longtext,
  `file_key` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `file_details`
--

INSERT INTO `file_details` (`file_id`, `owner_id`, `user_id`, `file`, `file_name`, `description`, `file_size`, `file_type`, `search_rank`, `download_rank`, `status`, `file_uploaded_date`, `file_data`, `file_key`) VALUES
(23, 1, 2, 'files/chanu.txt', 'chanu.txt', 'demo', 102, 'text/plain', '0', '0', 'Accepted', '2022-06-02', 'b''gAAAAABimLMgB0dKEKU1gOAn2g3w5AmqAHgiym36MpYnKaAhgcyjZbde7qqLnIcT5KJULvkiVJk5FgXhDhZa68txT9t1gO7gDcdNLaSdHYqPHBAp7pBqoOdB0ciR6aQrtIzbiqMhPq-FUDR6wEyQ6wIP0nFBbmH8Rz4bRh3qOD5YHjZSHBnl4G8qvhuUYSIH268gNguHkPqpqzZTq_HDjt3__SfsPEUsGg==''', 'qPwvBNwT8tm3A0lyo6ZCORMKOJe6CcxZl2Tqj0yJbRI=');
INSERT INTO `file_details` (`file_id`, `owner_id`, `user_id`, `file`, `file_name`, `description`, `file_size`, `file_type`, `search_rank`, `download_rank`, `status`, `file_uploaded_date`, `file_data`, `file_key`) VALUES
(25, 1, 2, 'files/LICENSE', 'LICENSE', 'my', 35500, 'application/octet-stream', '0', '0', 'Accepted', '2022-06-02', 'b''gAAAAABimNU0hPoCtRVi8KemLw1qfpGAuOH7KFn5Tr8Dfv4GMMdhTNq_NhRxDpeTAyBTCMJCTQ6TE68drS0dwNlVPWjUimwHYQwSoV1hJz6-jTJHlzDg19xVMJblDMk6hlOsYlTx0ZUhJq3ja3az1joaVUIsk2_px0NZF3ORYZI0HRviSboYTA2oKb1gurVN-rAGlAXLo55SqHVkN4J1PziVhb0ft8OjPqI8oI0CNWJnCawMfhYcox7lR9GlsuEaLM8dTEJsbTJDkFWOoiV6qe-rgKr7wuXmNATT4JU-ug1ibpi07nik5Xa5P39Njv_XS-D6iVdArMT3ckledmBTVc6HhPebyIx24o1Wm4-2H_pAgGgpBDVnrAz4O2QYAG5ntahBHuf0pWSk6rMO2HhbFiMdCBCkB06WFKYSH6dus4ArFm7E7kO8x0amZGLxdWDF4akPH6HMsCxePeiPpkgv2ynTuLtFEK_0WK86nbqhemDE1Z70dGV6raaDzRXIHGDRHX3knNVMd2z-B_sxy2u4NGqcxzfudC-6zwQ6W6Is2irUEvT_820ubx6ucX70y99kwSgXyrCuL6dnMkK4Qlmig59xU2IQkO5QzN0fYJ-FlkNiNC-vxKSxmWEzrttNYOo9esAg8ubBZC4cV6e8DRvrW_7u3Lq_GbWJmv8CAnV2ATOy4Y2QbXRjhHZqejILdHQKQDPbaRkb1GlF1yVGw_E0Y87wYQQdaAo9MxtC6iBqdG6UyJ23j63mjcj_nSKXbZSrcH4h0B0J7SkfG1Acl9EBlvhL06_25-GsU-NTtcvqbTnINxAWPOB4_oF773GmbgXpCwjqJ_9lgUaiy-Xp6r55h6RQ4mKjRoYhEXRbheZSIf820guF0rgoy9nxfuFKfix54BFs3wcpFh0ESWgyAj6jOKm6iEvuJSyCQAiQdrFJcR7sP5UdRv2-9QEE-jO_Zv2mNBOGsFfuOM-gu_bQ3XE3-zgHW435TpoILoQa7pRHyAA53QuyayxEQryQppf-USnMFQJxBodFUzS7ZKNp33mqAsIQIZ-jdpnkRpCy2JzUJEboY0RrMvDZHS6DgwPo1-y0yUn8vxpGw84OgY91r3G86bEEqLhULP2jaMm1-4w6FCtqUmghAgkZFczPvd1hW7RBpc5FqkGWrW0Tbp1UNiHst5WgcYu8--zVurOdw2COg-rd3I9bHRox14ztFdmvP-RMW6Vb_3n9O12ASmNjSBU_5dNNg_AZnZ4RkJReu2FQCFuIoyPv5fr_tbLknN7k1nvKUuJ_ynOBKjxGiftASJeH6DDImnhhbHVywT3Qw3pdWCVdH2mzfyPVataO7Ihz5dl_fc2iTG4D8eC7UWC95HDkWdabdLRZf6KYNAT4e72IC0OICnTBFE8Z_Ad39EkxsUyC9VrDmubE5Dj0qVkz9qbDntL6dpAZ9ci1CsXPGTVlWfEk9RcKkpAcn2hpz6pjkd6kgVDBQVJ0AGre-cAma_8sDnuevE1tdYlvoR6btrzJYIxiNe4SH9Mz-ExLxC3vMq76cHRrqEAh4tNC1V_tk7LvabSV8oNHi--9tJ0852CXvqYv9Bq6pEcyb-BphPiiDesYEXRaJ9qKJVov5zzeI53IQruQsb3s800m68JDkWr7GPnfL9CcVUVOScudKJmG3BskLAzbd17kN1Yvi72Wua_ifnHayFXylCSQ3f1LykSU54YERN3m78dC_wJVDyd4MZnRPf5ANCsm962RcbUetz6cXTqnGb31Fo8Te-QHE1Mp-mfonqRaTZU87uhnr9cUPklubGf1TLMq-_ZbQFi5A9MZQ18oHTthQ007JdvXrZ-LNp75kqV_aHApDFnJW8LQUeJUFIQZJRt_lfl1_gzrb5suef-Vmt6U2Jqib1QnhRWhWEXVAcfxQc8vt7hYSQgbToUZUJ5hOGCr1rAyVxccdn-eWQJcuZwvV6fjctx90bjrWqEOzXbIWRDgZnHdznbS2CUUpeDX6ywYYtpiKeav7mKlEZOW-m0PJxXj_esYFrVMWO-DDK0aSOITtEawKOWmw29yOpP-hGJYgaxdWRlc--lbDrMGzLJ2R2lhtTdCtW3aGBQ04ka0iDrFqnGm0-b2AEpoLoCnn1dG87CNAfVlWXzDlaeu8HQxm2HA3ds3g77xTLDm0P3vrWQ1tq2Ve4F_SQs2QOPlz3O3oUJKGdkgUUKqbc0dks7CEoKNJH7UEOiU-fCrSva5Z2wJ8LzzLKnAgoCE5mdsEJjIT-JGGW6CD1vBpfLQyAQusyCj232Sh7w8an3a-GBzUbfwDK6_uwuK5H6ymqPSKMgIJQxp04zoSYbpUBz0RGe4CcH-_OopJb2ZTt947qBC-dOlXSNHginViJebXPIZUtzM2ycm8WN6vrj0QlpzMvsCFLEk11LlhuaIDz2RHWGKpUo3olTgnDhuV8TcH7aPOk2jdyxibrhzEKX3LqITqH7zIBcNLg-fz99RQhSC15hRGOBDo_ToNaIeEd5IU1obgWRgwponOn7TPBJrKO8CrjBmfnlGiH9oGTbx9eyqlK7Cjl6l8L6Lm2-tHM08Cov7T3WblW_MetgPUFwjKnJVrlowlJTMTT-FlNIDwQAgfMIEG7zfj9boWBIDdgtx_YVPg6EjCjvtbQ4w20vVMci7LVpUrfyDDe_Y_36FGGMFOaVyWtX87c-h8DVT1OgKWwCZQEhAtbY1h9ww_6sfLb2Ym_Tbfp8TfqKmmwC26FNehYgi5y5WsYZ3IR46eIKoVRjwpd_owPmQH3HNW9soiSPtMCkFsE2MLh1niKmkvqvGlDbA7phKUWwhdfK0a_wmZU9Ge_tnPSgxduJISbnGI6c2yUkGuHwZaIVb9XxoKJKLsVMDJ1mN-RFJUrDB9XVfQlfdd2aKinj_jhPw4vRGgWs7yvjLvgm22yl40Q7_gfKbH4sBONV0dDWypo1RqLT5Brhcbz8ZIo72rFO4eOGFutj-9iLQEGe2jxEcYpL3bz-vlIBUv9aHZd4vutcZPc5zIdDpsD4oVO2jj2WEkhtS88_WDd6SzOlEPDmr4ncI-A6-n4DyVXQLdUJJoi9yPRJ8Wo5RcLI598P4Uwm4aWEMt6ACymQytd3H2JYo4R5cykzM73vR_HqlKo6FmiyNcOHlmSajhsR17DPX-RxYlgkrvYG4O3UJFfpiX7Byt4IMKD9WUcj_DrV_5a-GuikAvNvvIISn0_XXpzg9SfWfaKkJaM2CvK_1DpcwvqrbgA7Sy196Tg34CpQhfhPJ8edWhTfIkqJ7uXndx4O2MJcNpU3ZoKiHXOFHeqEnak8dJRDcsGglTBJ4LlFb0MquKkoze-s9kXGyX_MmN46xqBJQY-HcdSkrZrBExryX5iRrL0fs6gB5KS5lFxfFcnLNfG_NnWvglEQ4kGSYtCmVbSo61fUcqtgu-cbRPeKjiQbmDHpYXVVn33lblYZwTFnV22fMjw1CUfTm-Swb1lxPNrHEcmFOlLri6ffpMqePPii9R30kfB6egZm0ZgG-DV25j4lekPsRXXXqU68outs2BEA_uviqQhqKwyig-41E0HHDGyhsMUFqIP71lDEjAAsVuYwC1goxJPNBVk4H5ZwOfSI7_U4FcF0GZjOc74TKcD77AZBJAeFoCiSsyAGpxuilcR6-gF6QKF_T-DTQ6Rq9kWNZpMeUE9MGvBbgx88JnR5SP50LBXp-A0i-62OjrlN5IeBIfUKHjqWJc102mz2okob_xWOiE4y0Jt_q2ufUe8X5GvD-dGe6kzs4_08lfXQ518wDVXaKVbh2JLqgecIwvqE7ctMYJ4x6-JayOkiVjT84tSSHx0Lh0K84IvMuW4wQax837w4uHqyN_rIBpHscJx9gySt7zgAZWn83neRK7AzHbVurclwMlUb20MQ_ZkoAJowC87SI6x4LoiNLgpWPw5R-ZjuYvCI6t_mZrBxrHyGeK5vwizBKUls-8lhn-Jk-IvGLeSiFXgsVXqp4GCe0SpfG-i0UqDBqyW5q-r1je4Rsl0SyyCED-4Fi7xTXQwu1KxTpEz6DEksCYKaEfhboDzx0HZEz_6w8mj0c8NSIDj80iCOzEZQsKwFi_pAKHqU-l4WmsoAM0VQb8OkmBeO6SSgmOU8xaWKBWrsX91sB0D0eHofXg1WnpBsUZevBWsIJ8wLuBdHlwnJLXTuSQa0_sW7_imO0UxQfIax6dDaB_o2eNVCvUlu5KyroGODOkz5ST8YqYs-4iZSk9-uISEewKxAZljT7_segezAO7UUXpM5LsFpnn5LY24GKSIYoUdevIp5Xd5ZLSa1vop_TcJsjc7E8s6NhhhQ02BDa26gpwvUO6yBeMmdzKM0gb5J10XyHbQ976sB9Tk9cYlyx-VYD6N49U_9fUqlja3-8sL6-BFD_uMADEA2DhrcJPzr8aFm4YLmMOMHe-QobxqKYho3B0_1XLsIh8qI6ufRflYmbe36sNAcfDZiuQNI_WvWH66zzVE-YVajZSlGJqeOSFJvShgGqAItPc8Wh9WAdeVb0ifPrv7JbtCFUQmmQA13FWyK0sX735sKCL57em5TgKXaGGgBuSUtATAbpbl2twXdCNW6vlQCjeORl4LRGlYgxw85Jz5xrAjVuQ4YEd5R7Zf85KVOxG-VFrHsSkYaQTzNaHAhtrXUCQjESp6cZ6PCOYN1LXyfgBfW__oDxqpV0LGED47ImaTXsfpIYTGq4CwNEJvzYbNB89YZRqcDibw4Es1kiExb47PHVUw83nB5fNS_0jhGlLeNXAAMHq1fb6fO1-wBPclR8OxWraDqwD7a_xG_dbXowj-1Harx3kCL2eqyG2VLTK4MhfOe5pMhwM7dc26kkRG4b_QTuSMfkuH1gqmiF3UrN3Mqa3XZ0g1jjiL3kEe6z0pm1S-Yhfxf19RKgD8SksatkMi1w3HR94fl_eV8iaNG9im8InrBfCyVME_5a_XcVwvVi3ufa2VGEdf_Sk1C0D2ywE1-JuO3ckdkGJGOjqh0HLYeezoF2nUkbd05_3xuLSs2mMy3kzRa2DfLv-feBRt2tAPmvDTVjE0zxsIa2H-DQml8I6BNG7H5RkHCz3mDFlCi_S9RpxnkY4vq39hTLqn328rf2JhE69GMhSwlR2p4lYgOAuiYzf5E7X5jiRghn-z8ZT37TZZSXShbH7RxNzAX4fS1c4vRnHEvr3Irkucz4D_mX95R9E_CAH5cOKsALkYPRzm81lwd6WmRUgXfZuFRQb-66qnWrebL-LJ-bM0eGve5VC4TCCRwEyQiNSX05kFr9rlD9KWcmqAOonIOe4hEyYIIkxZepa-0GG2X8jbFOFXjWW6529kJodk8OMugReeNuUxI14wxrZjMn78Av3_4916Ax-4YtrDCrc439Lm-hQdpLqAp7QvoI7UJs12ZlcLs2XKAaLIuNo7FQ5fj5fVo2rZlrjCh_6E7CLRFspOJ4BUsnDqzH97_yM398H0tMzhfEyikHfL6LC9-IyeRR1IQaUlEKkq1aZbyrO2efuxwtpywlaVvK4zEf_VXMtnxM6xRnQAJtHi8mZV90I2YqhcHKxF3qsSmb3O7TZkmizCYuTYmC3ns3LG4S7Q-_58WWg5oG5gj_sP2cHH22EW6kju6vVcXTizCpXjdUFfGnkRTg7O6mFKkzejcoOJ1fPtIkhSBr4bte592_qUIH_Qpk_J8uz8CnhMj6SOCLjOHgqf6sL1n_oaKbIARbdrMKkDtEDosLzTywvkJ4piWA3lV_oxHy1dVuS8YHww_6rOrm4rBb9j5u8bAawByyoQGPAOUcedpGknxU4AdYeUqh0UodzG6LatSWtuQy9vRbvHKXWQRd1PzrC82uUr0bN-4Q5gMIFxzACUfv5tQUc2CXHAdaJ1y38TarB-Eeh-Zg94W34yu-SR6ggsQOjn3noO_JIyqxKfsjw1CX0cBUIVANMWsNXY6o_-gloYXmUzwcMj9c7FnQz9rFm9mCjFljpjDyA7GjGh9upHkrljc24s6mrYXKJPLugQDbp_FTQQfpalccJMrYJkGgSINpemnxGm1M_aZxzHq9LHTCrLejDlinPCSiZ-PbS5ARrfpMoyPALcXr-sUoFH9eST3YoA8UfWYofhEv9VCxXxNBgA1_Z7-5CiWzMksG4-V-EIjHI1iIece7iJhIlvS93C_YkYj6DjOdeu46MKZwizQbMT3k16jedHaAWDSP9z9-rgILwUJ2IA-Tyq-Ub_XJgzaFunNsvKlLja35wjadKzO71Izvnb9UDScy7n-lVP2cwPrJoMuU8ormnoNIVg1EIaUDhjAI4YQbd7LZR96NcqTc87fUWgtg9orF1mdXbpFgt-y9ri-ntJRTbZM4q7yUknnIyolVcxA6CQVPsjbhaNgh3jK0vkRdooxTOl0JdYGBgw3BEorayfk_sLLnJyPz-wfloaEaoNsgYN41u4JYcTAJrzhoJrX5h45Y6k0tRnDA0SdkLllqyboshrn0D9YOdyHVqsCBuWUNTRdwyyWZWPP8MQU59rQO77hXlFBAiwMpgAxLyDAeXHl_5fg9mB3gECoUKILGXGq_yCRmt0CNcEVAeA30xQ5X15qp-5BLZ0A8-RmSmc3mqTd8gT_XXLdiYOvX4bhN65tihvjSoqiZOOfMbUAxa5hqDA1DZbOXxEyRTHWpySWvFgZ6-WgjhhFOE5v2khTtG2GJcEGICua-zd8o-uG245JXtworY_Skfx6NgUwf3S0HNPB1TvfDrHujcgX5GtRJ5u2zu7eaxOxdTLnNrYOPAt0alaGl69NR7Ae_24w1Z9HFDdgbK9vwYSgkPJtlsWJINtj9Et5-YCSdbjkQCDiNbwp2vJNBS2Sds2hKN4CtkRZUVlxqVO1QgQCAgdXNi3MQrPG-O9NJO2q1UqpNGg7aJ1BjSZ2VT9SJoArGZtBEDjbaBhWRHIcTzp-K_T0zKgtELyEFBQA9vUFdSFaFEkcB_uRQDZpNGLA-dvZUCjQCPNxrPkn_5sroveWGm8iC-jYnm-iSzqp4u1cafJaH26MCjYli1XhnqA1WT2XtAzp8JY6dbSFakQ0SW6t2xWAa9MnOdy-ibtHlwE7Vs8hS52R2qymZPxC3TO6RDHpZvMN3SMdAZWdvzA4hQjLE5a6XRF03fAEuUHfSAVSvfnPfgxKoKu3u1oPYk3v71NjU7B8_Qr4HSFv7mtqvXfcqasOQiOFdZDqEKDjuSaxIdncl9G1oVPepWLxm4mYdU8k7G2H2XP1fA0Cxak_13eRc7jOD0AlecTQ56vgE3I2gsslJqejc5h8F1eXpcaseU_21EZXHlhYvlyNBEhpP4EFr1Q1ZLzu8PE4p_MHw8C9qc2o5izNE_l2C7u5Ghw-KEWSvQYOBmCygSwA2Ia8d5f31vhL2xfuoazX5BEuljgXjPAIHGumYbeIO2CaUFeZ7SX3EzGg19pK8tBf_4FTMY9Jd7zmM70hPLz3uGvQ2t90PyeszTwDeXj0G7KiW9TdoyXj3nWSeFmshpDpxpCLRdFkt9iJQg7TQeDp83ayFbh12ZUw6MeRfJxzmPItk8rzxX7p0GKGmNaMwzc09MpoQw0EAN4qSD_oeytVuYKSBfoOgixF5-nFMe697U7pflTIvITCBv_YNedjkGGfyjSGnUIeabCZysW6D39Y_-BWRFDhIJocbeh30PQ1awrVbLXAa5wKjak08ziuN7J1Dc0jdZf-QxXfZuUs0rCFFVKb3QZnWA7TKX3KLmE9MNM2Le3AsWg7cPM00TwR01sciaMb3EI2OMK21CizvppOj3aaWNmgT4d2ZDwUn-AN_3n0uTXE8dPEH90AcGHVBzncue35KEIC4wzMaQENqllTC7JMe_4Ygt94fJap6fWetmJGuMGvbTxB7toMq125fVLFQOixsDCPH0ysJg1aAxxWbCLnKAlXF1AydMjjX9zxyeqp_13mlbjzyRBtulbZMcIaHnrBzjO0R17D_Gj0yROmjymbnaNbG7OS3P0kBN3RztivHgBXROrAnTlwMEbDoi9fjJZqTsjnI6JPC8xCJH98qGo8Ot0fo8iqQUTwq5zQVfiiaM1suieFmpdyUlwgOQ8Eo74XhEXIZLPMnXF_zuak26fgE1gyPCS0A3lOGjcPl6X85rG7dnan8vTX6gVpCbTvjJ4FXW-GcbdY3fdNhV_tmGzT0FspZ4mxExhcGMZ9ula_8KqLqoUA9znppN8jXVP4j7qMMLT93WppDLXujeJMrIVx_A-5XxMIgjHwA4K109pn0VDF1F75By1h--XgqQXKyFkigXYMaYXlqtvYYuHE4CUPSRA8xuCIlDLYUcBfWg3fwsDUzMHVBC-B5Nu49qDUTj4IDQE7-5W_dwn59IFl_rMcXEFywMO9vOB_ABD6q99Ulf8qQ_imtj0jmw6lyv8EdiiE00Mf0Km7Npm0wGCJ5GZ-vOqW4EzlkZ_sRvOAJmZgWAjlNvh_2Ub2Rv3JkGahRk57NPObdaoWKTIsNX3Xrq7DWPmDnLxrNFG8fCghQjUV753NrWCaWpi-51nNZIRrIAYHlC5WJoeLZrR4br4WFgVuoP5bHOHlLHBMubs_lEdRLcBZoTX1q5I9dqUaELzpD6y1zJVWzZWIauT9aIJiGaZejdbHX0GyisTwVa-I4QGolbDnIrXbHTiGsuqhQGJbTnm8yd0B1lzLAXFZdDRFAKkti6WMqDYhdoTn1s9Sd7Rwd6FWyOHMQCoaWVqnvm5kbNfMPiuzC3C7bIFDM7g1KHybwJSl1Ap5IHyJGQWcKKMNLxwRGzrt041wcpiBJl7I-pyLkAx_RM2cVjjZk1Fu_4T9CqBheK0DwlkFC0JxoFUJYCXCQTXlOe3veG7HUaXWf2o57u3J2IyPHt6LB_Slrxu-xQyF1ymDZEg_3joH5qoXiNvi4LwNo6ENvd9A1_tDfxzydNiyozqWHM7vI_njqLP6SFEnqSgg-ThMEMPHqOMBDJDGWSA386OzoFfLcjUsPHbzd-qKQtINi1xsCaX78I30S66Jtp1RT9NfHtqfHvGNzN__fLCUrjGIwLAUl582o1bbNWXk9Ze1oHSO7DvAx_5FV82mjTNEcQiPEFWt3nzalji7wGAMzKKcnfcr_YcrUFoFTmNHJe4XXw66Iycs7Dfkm0HggIXPAWuEqZ0JS5Cp-6j24k3qZ6-EFYn9QNxSTjp-Ka-j61F3cUm6LMUchBX2uzGNcucG8CNXDZx5qfoIcCjVYn5jE24gMb9T4kNfBxBGRIY4onOwVge1MABj-jDKvz0n9aZ4SGhsymYCIGM7tKhMojLtJLzo33nN6EZUqqPuExVaMlp029DMrq8dCYg-SUwVu023ESl7Oi9Rgr7_kKvow9lqtbd_EGN-pHr8mIsJtsFdkaJgeY3249qEep_eGvF81UCV7p8HvCV4L94Fa5Pfihg96c7nIWXsZuen6vNUDfRjoRHzHKuTkH_HszQ0tOW8COvj_9rEoZjVmsl3HPEf_lC2ysnTvs1BnXetDCFhx3jhH-XbSagZyE6ZJSYLR6KI24Zm-I_pHo-oPlDsELDbivTtFA1nVwamdeuUoQ5CDHi9ks_Cb7i6XP-tGZkg7H3WEoCNXweUAsMbk_zaW1uVR0Jf4PRHZtswQDBJR_CDGxpgOnLAN_hSqZPQDFbyMjG-P2LeCAU9eWtvIYpExei-GPGfEOqSvs1FkyQ5T6vOZjCa-DdBz34hXd1bStI4a8UwAsYnHh7dpY2YnisKnYnWoMp_bCXm-9ED4ZuC1bTlrAm3Dd3X7okJbv5lqpnufS6WmAe4JRGT8-XL7pBsT3dNMozo5p60bL_XKZc6zQXHs_3Xs6H-eBL1eN4Vb3T8sh3lcqIbwESgw01QQ_kZKaNlcwlliGqMp37DG5QYogPvHTUSWuA6CIQcvs2AVjDqoUAfZJ13Bt6hda0qa5P_LzcPgyG9gGozf2SaW_sSIhXGlwYQuTmjUseW3nkWBAZSGgd_KoaioAfbB8dl-EmxvWLoOYu0rSJadnMSZ9N4s9gAAHU2r23Hy0HmVPUgPkmpbUbwtO_Ub-sg7zdQbIe6rMlh3F0-eWn5q2qtYbA5Ert8jWqQ_Lhfcl3I5jN6-Y-xCremGGy4n5s_1HLcncgdkxw5pgCoLo5r0aI7sAhn_pXFcx7DjBsQojt72u_uY1K7_NvhOTqw0XOLc3itWvQyzJE6CXpwu5XxWfy4N--ffFTd3qQJcND7_aCk-QcyjZ2BW61YCe896CP6acoGsRwNyqs5NyNQgT-s5aBCfRE8kemGvxHI2-yYm-quxI6onP95cZUiSqlc0bYT54b8IgCZK-khjTyV4G5bYeqXA-Tn7GykWM3a3GoF5KUSRRGHzZMKiOcFeH-hPPTZl66c02Z-oGSiOiqLlsrUcO7FvKAUnc2fwcfpDe3OKaTuF8M53G9W3paDwR723Q06UNlDaSGLTigSL7M2CCljc8Nn_4xpTkQu_0LcOw3L-gqYRSyFRaNtzSWo-CHMDBWy8XEgDa-m3EWzSpd8uYCkvfgQjC55m8zftwtAM6MTFYB2lsVNoDEh0hH_ljoWEEU1dt8ZfHb3uT0lfu30O-Bl19aoY3AJes66banP2yAYqWPCnlcy99IaQxidvBZY1oTlvu9xLvBXnqyDACToaIAEdw_9506x32_dS-F07vdprGdQT8WREQA-pEp9nIDAnBWiVumO1fsVYodHSWmx9tYZNnguzfaNcOxsjnzTqLlHkn1upejzcc3JWqYrLRrIYQ7Ywb2wUqjLveVLQ3RInH-CT2UZU-0r7TcEYSiggexgyDFxbgokeleOPZYHX1eSpjuHTp8corarpS0__NDBd1fTPs7YUDbm8mu2aOZ3nUDoMg7PWSSDZVmUR3v7EP54As9fRCaB507eRjwILeojLjJU3c6Q17xBFHdpCWLP3Bn_6Vf83q4A4kcIqS3a6oPcIqZhZG98jnpDT1ByYN8A01xGMUa_xVKWJzZRam4iUWUPRVXYLNxhM0uwfjvpMfFP-4OHV35S1lSKoOX5N8Iy2JrD3qUgVssYG69ubkrXOmNvjd8AFHMB7EJeOHKTClSVF1oelFcLuyZu4PSuQYZMEPKv3Cl15GCU8Z761n8-0-Oqk3MrBNoozWEnuFIn3AIj70UPin9qg5xPpv2dSWfKl0Myc7bRJS2KH8knAOsXK1wYd6BowPqc4b3MAVA6q0q5YzR9ULNwpbhJF95r1xudBwJVporvGk3Dd348ATQdwYNyQ703GW10Js202IBlmIXsvVAN3AZKV0NQPTgCAyzPSLVE4wIX9QQKCXFJbF8xNMghTbSYtvvUUewLGhbVmf-zBmbFI3NORyov-8n70MF-Ki7C_ku9g7i4NAsQhYNllbWMHil2VFLQUHzxB7ug3pVxqhRftIwy9_BqtxuloNbx1koRav-Lu21e5jKVKy8LQ5oXtkhAjn4usRG_Yvpsnu_0jDzbcxlkWuMeE3yBC1TledveqENB6Dmo13ULykFuk4sog9GyIfLhQQnMHIVMoetS85EPPnwldXFnCwUtzIyDTaqC1a7SZsp5dFz_DiJNRGLNlK5eKinyI63zmmAI2l0BJb7yAO2jmFYZmP3c3NBpmcpuBSGFiXy2mx5NkCeyLRY93dCaBDptYZ90W8HMG7L3ONGUEH2HcngyAkDTpEAtuVMh-Tj7JWbeY2TbtBKe7A_lf6tPYCDAc5jFRi5dd7_yj5BR-DONEinIqb5PrUtFZw1jmMvyGbv2q_p9x_5F6njEWSKK91GvT2rECRY0YqTxQxl_pf3A8XdPdhimnqXYSsz3Fy1cp5owhztXWZtdUixBgRtcvs2sSl4U5VNGl7guLmkQ7-2vYVmjpJSv_UL0QrczOXg8gYrQKUuhfEHiMOhomCpj_v0_dS_KYUnm1X0VmPNPZ-Z_gZzncNt6J6JTxAs6KeOds3Pnn_IifjAEs7pgsoswNbXQ-Xx3XoypxhVjPulff05_5uEJfajkBKF80XnZmMx7IHZAPA_SQjWJYFUFktYzI3Do-iX-wpPU54RdUv7RtquyxHYYi3buxeGKqnbHr3rn_Wfpo3_nymokq28sRoFsYPTG79UFDYGAJgOGfyUXEMaaHn46TWmhekjUpFQoLSpQ2qor0Heir2pzuWxoresHc9Gemh5qmWQ3gwqnz5R9LlidC8eAKPM4Nf0B-3PZzzKFbwvfRMzMnwmhuzmf8eaiy-XJMyFIhwo6fPL8f9J9vbitnShPVvOv8YAc7Vo_VUkDAkVD0OyebL7w1RXwTmBY9ZbqCYKXwo5Op1Q4w-A7dyEJRcJ14aHLMJRDNULSrip3ova8_NiBr6ox3NH3qxJiSmVbZUq4vzGcMCSQx2mtiADwDvUDRapRPvL6TQRKAeTWPbrrT1hkCNmW51ab0s7IgLbrlCWo2Wmu03KTfVlonxRFoRGuwICvbUqSptf2wAzSnDoBZk715S7JEj4AogQP9ZKch3ybLVSwCGo8jKZO8g9PqZqCYd5dhoedGszGFq83IQ8DLhaPa5jP2h1_lCGqy96F9usmkwGN2tsRRQznR_-XENfjQA8mvoNUm9mYOc-Q1aI0UKpOWqnLLir0saivp8yLrMbZUd58onvNRpyQml2_-glmKo94Yv0U5J-dHsk8g5-d42qsVAP4LL_jkWQtTovdZe9NQjMNRVYe4hvjC_T11UmYiBexzGzWw62mNKCZkMm_JjrzYHfnRowUTMTkPbrVp6epN9sUlnIt9s0b-bRVAk7lAOmprbF_G2QkDNPMByBUguoM2SmC-KdODMytaozmFLnl6lEeJW1OXHIUPQbsTdcaqCl3oB6SRAW7WAHp_y6CbKxA8omWhPKA8y0Q1r7N-9Xf5AuLIaHMVInCAy5em2H4toa2QQzg-DlyE7irWRH-sxFzdko0Q2BE2ldPdDP1EvvFdmnw0OsJeaIw8_4tIAph0K3_RMgqm5h5nkEjxLOYlXWOFRF0Mom3DOFySLBtL2tXf8YzyFvChmlF2070IxVlbHCcP6IekhEgg70JNEStX8951Smb8_El38_DhMTzplBK5WoE6m_3uvI56_HK8WAWHwaW8hFQxqSRomw6KrbRPuAe0l97GWf0WGFu7dFl3AIzaBSmcyvyUPeGuF8_M124sO9U31uGW7Kt8e7Ia9brEdbc8deM9aYRpEmO1ds2iLGM69p5nr5wNPoSa2AoVrjPkUgY2-6wIvf51Z7gKWTquu3wy-ghjc0Geidk61RXIF8ngiw523x71PNeQmmAZeWiVDuK71trPONjdQ4Gut4V1zz57TB9HN_TTONcUkIbseN1qE-iXN-SeX0oWaT2BtQG2q7rPmt1met4_zY2jnIttrkQ2rNMco5fd3UN4K3AldCX8mqYQ069F0Kec4hNHyrq0ztEbLUQCkxEFFL6d24LOPo1NgEy8J11WiF1vOBW4OQnVLUi8Cpv24DdIk-kccYhtrGt6w229X7gGGCBBHDOe9TLmVawgnnkft7P0Wf7eGeOUD-rmnFYYgRRhj-Lgr0W3zS-IcXe6cYtvZwceZNNiDVxZIblAgY29EK6yj-b_7MoSxyeMqe57SeCFHuDKfD5M097H0f7Wp-Zfsg-kj2FY9vvb_UVWW-FASWbA-Q19_OJjsGvjIqpQZpSLiuER8LXsFBx6R9a6EWpM_tqHXlY77TrnF_Hf-a-hxF4G7F11vsVc7TPHbMCcu8osZR__6lZrdu6trFF_b6Av7GAO5nP8h22a2JGE6nVVX-9yiIUEc4KdUG6M5SaRyYG85TLMcDyDe_UdlhSbuKWJMwA9JOGSOqjhI181SKMHpTPdb8NZyWz-3FRVB_gye-B_cb_WKxNrR_0-4Ae73RbBuhjPlk8DfzmHEFvx36sEek9RGriyL7LOuoswFhyWRPADzZZ0m_pGOUySIDcSMFdx3a9YYs9casZK8A8g8yxY_GYfWA8lOO2dKx9B9y5oPQu-TV5q4SUCYnJ6OJVj-loOZGkA-pdWZpGRpek6bW0iYimregTQ8cq8I_tPQ7RTBvqN0-dSzWwa_gCvfP2bnLhLRgMidCIL5qSu1Glret3pghaeoGT22SOQGxU8iuwAabeiALJ1l_VqK2TYZ4WdT7PgXHBHBpAe7BtCZuvsdw5xicBXitLeOmwJ6MwHgxA8F8l4NraIaFmocN3ZH4dNJ8V50LaW-LmCBbwxyL2VBXqV0kEUoDQL3ytHGlDH33QhYuJuWb-fXbnIvBzcc3YSCwg-n2CuyEgxEyzxyCCFZDZ2EYWyl1wJlChN7XavtglkJrFOyGajXBAFbwQvdm6Br1bbr6yiy9Tb1h0d8qnwiUPcDVtr-2PT0fo-MFxqHkMoI3CddA1X1_jqhtH1NyUSB-MqS48jjPNzl8KaMzVWeEm43ppUpbIo2xTeB70j-7GB4AbTCY6kC0i3hJ_lmiVcYitSBh8UjiAfrADLTW2IzMvmhkzH8Sk3jVsWZyLwiPBcaNAPHJWF0dxz8899Wkc--dmU0uLZ5t-SD_mzs1YmfBc7Xdd9o9JES9sK5tS3rU3Bu95DxsffipTSxvUGbPVO4940xs5phOSB65-O75zqzPQQY9f9FnxrIRP6x-U3SxSWJ-xGvHyYCJ137_Eytx8Dbo3JarLcRaaLOZVVVOZqiMiHzWPLcM89IDfyuPHGeny5OnZf-aqixJb4-u3QY6QGt2_gS2c5Qfw3OpY-D2m5uA_5mqUuHjcQuJi-XQ_kCqP_46BgP8yDDtgtINw9EplavS9EHGEyv2cjVPErQE3Ejo4LtwP8wUWGJawZIaL1dsmRM6I3cDPzetlHEF5fRt42-782_PEYPHjvK-18ta7Z-Ovz8rcQ868QtPjABUDbeFDwMx054PDFYhMvQ5YPosd1bVEzDd5n7x2328IYYIZkvDGQvRZgfW4V9MSR7upkXYH0SMYW7myXu0hO_G3TK1WUW-3YuzKNh7lhCNEdNwAqLdq8ELjCrma7TbrrNdlc3g9s_1mfu7OvCti_6FV48Cl29RdBy66LsXgssI2HYnTd_XtPZ343YbdWeJj05yZyfZzTQJbKuh-qw1UmSZ30zOysui-Ci0wRxRfj0qIU9dhrtw5xxZNQOku1h6VqH6PGUYAvJbl2DlQ2tcNLCmmUMi9PEviSc67tO2gaUbDUwjD4YpYrf0RHbGtZAUkEZ4iu5pSGvfx2dMYQzQfUiRGokYNkB7576f6Zh-X1Fd0nrdvNhMk1ZGFmJ_pEQUKQlVqf5rmQ3-HGnhxtOe1TJ-p5cE1pCIafApzvVupfM8zJTa9fWOjFRU8UfuZP_tNEEC-Qk2ftTyG-Ou5OBYiZ-2oBl_V9FdL3-saCK9LkJhfoPYt5NGHY4rcq9XnkKBSQPpPRbkv9PYqDddAFAV5jtp4gs6CgN6HUKIy3sw3sRgNv-Yx5w5HinyOCnsh1y4SPClGDfcc4AGM7T_GjHtgBSsxZevqVd_nsnnAN2RX5zoMOV3PuM-uXb5gKiKu_jGD9JNyUatd47SM_VY-Kfpic8s1N96P8dBGoEA8_KsOKV20tMbzBxGAQY3yRrDLcEt5SKpoVtu7mVG4z03azI7c5rQf6VtC4UoxT-xqmE5jc6hJ2_K41x-9vzT_4DnTbrt2EiEN4ekUQtwnfW9zp-NbqTJhBpFZkqcI-_ztxHWx1avdKfw5_j7JYy8KXhwVGwTlv52eZ5GIZgivccyhnEW6zQgUxHnkjEAoHlHE0d4tzkyHEWI85i2P4Eoa6K4WorMiTDYpmGp_Vl7_8ltc8yRFUHhlS3MANu3OMzPidx5zXNqvqIeYD2sAH4OXxHPNdLxM02H1VGCHohmms7yVyUc23D7Aslmz0dT441l98K0xgAY1dz1TMvHxI8Hm3dHXhM4CSlm5zD0G2gYz-_P6poOq7dkpjD9FKQkrSB6FLZN0rIqQW2LpiOpc5mQ-7nkpjwJefa2cz6ej_Pu2H-cdRfCt2Zz1iFRm3vIJiL4kB8zo2-4TE4gYOp8DFxYFVpCg4bZl40bRitxqbUUkokd9etCqOf8cBKaIko9gXOVDHNCdAMpzcpDhuLzqQSJ386m7VB0iVZQnQ7f3vXjI3f_S4djwiJ1UOW5Zi4HWceralnnUJ6FJwT8nLoy4AXQRMk-rqfNbY24_M3lAZwCuoygejUtKyS4uHGGE3cYwgjMkBrtVD7Zhv9A5YEIW7UA-4VVbogijJUGmT2avt8kgUxpG7Y2ry5Fn-L74keQiSK8GmZut-FHSFhsF4xlosBC13LHFr_jnszHmq9tjVxOLfHwe9GeQhGvCuYxhg6tHSPACies0J64MQLnLsYu4so73qBXkebrgXLYUyGw1w1Woe8fOB5ZQclDGF41x6k8V3svZvSs5wUky8IBljtCR50ztEmdziXqMmkz3CWmUw81sj24-D6gBX_n26bS-G_KiaxD_BwAoSwOJ183S2P9j9UAomPjv-l51D3EfVVFaTRXhUCj0XNWCdPnDhCTUNiA-ACzr9zzc0UM9-Uwgbp26kJzyT7vvatbWwAu-Rv9ZYv0tMQxTb7E1_VqSKjh0uu1_dNFPP9DV3hQwRhUzDbfICKcjt259EQ-CRfRQMD_ifbVOgUBbdjN5-HMH1cbBzOQlcBuF8c3VO9NNrjZ5pszjeG2wbdLw_VC-uaTIXq2Z0Gg9wdpoPPYwBfA5QRTsYxC_7ZwL7X-NvmmEqaCHh2LyM11FHM3nTpdOUh2_9CUZdf2P5eoizbjkFMjsRfys1n5uboHvw8yGVn3whOCkhAITBJzQ74LwpTwEZ4iXMSo4vm8L0hK0CLX2yOt1by1HGHGXEgP4DEUtrWoXW75Fzcu-ctHrzK6MCGPVDQoZTikyZ6bMlHLsOW7Yjewr8OZv1N_83Lizjfej4n34kOs485u8kaybI52-iVrjWcsYimAXG9bG1_jOb8Il7k3XgRhiNKjLXmOS2aXkGtCM6sJBdq7aXGB-RrwH6K511ZPhZRf98ahlHtkJppc_gBMwyKZdjVtNw8dHWEKMTMbVeO2RMdKlCa7OO_0no7Z-UNHzilTVzIfxSTMuT34bRE949BdgUN6rOT3vzInnvO7vtIk8S7U4D759yU47tsFKjiTq4SXgXViNLY0Zl0LC_Gl1-5DB7pc8Bz9MY5gFqxkMRc7-MNmKh912-5Duf-fFr1ZRPvGNTIUDG0sb1vwt2YqUk84yHwvxNVKfGlnnlbMsVkpK7oP-BY5OUxmG0NU0CFLsJLytZfpyn3d8u-VT3HnI8TERw_F7Xl8ul2_-5DAlxV0xUlt1wJWCnVI6rBieEBHxSvcqyajCoUhCI7Th7KeTmn6DlPUG69O2aVmdOQRy1b6aR_zOv4N9zGtH8rrVOJVpHVpDg-u7X91427DIT6bz_P4A0gTqGM9_zjFGSGoamHD-Pi9azgqTIQ18xuC4OGV-FBvT4dZq6qmdfTydnsxqTtIqgdCBeiMl59HLD4cxruPsFtbJch2GRw5TSSqKBbBbtIQivn5H-tHSw-kVqdfMtbxLdQcUvydhXsH-aw5coQC3YE5Sf7BvVhsf4NLuI1sP5PqFRnJtXmkxoSGadyrwsQytEgjy8XmnfkmMGozrMlGpjjz-mFu0Kmj3JbMbnksZcRgMWJ_LKui_kr3hI5oyftpgDyoVEDv7Re5dC27FPqL6Z-Y3jr-TRV_aBZvO2Jl5FW02VRI2ZKfvWpIkNjVQ1jzWcMrMSXbRyLwstmxT2UuxLE-iz3dN9MKlLh47RusanJvAlAhGUt2ytWFNWUUkLTPWNvjK6SF-lthIPyV9oGvC9PngwQ50JpoYfibPAxliats1nZarTioYI4PzyoiF-kEYMQgSNXkW95ZpxeUS25gDcEQfsWeSgt0CuwITiRM9P66lPH6JgNkM40rG9R8wcF9ctRjftEDzVKuDT4EcutefBA6FBdeBzULGhvJGQXku4rJdIQJ5v5fTU3tEKrQoTtz9gC1fOsIBiLLlatkOQ9FaylDgLUvnUs_v98HylR7QdVR8f5LaYv5Cid2j2VoT6-_7Hh6xtFxSz3wfk8xDu9ZZucDf2n6bG031KaF736bNxUde8cctGipHMHTbfbK9ieaUNA07bBrjXsaoye9p_isd9zYjMzMcpciXW2nqM3vX8FJuRFSOu3xjPj2KBHMMGq2DG5tuZwqwU1RtMep5-qDzkSXf6_G9WhVvUs3Oyo7fU4KpwmpZ2oLXxs9ekDkAvIoDvwTf0MpGSfShd5mPfXi1ReqNDfOdedjwPrPFd77JazyagtX_Agq_uSJtsVfkonDgmMiJRZQf71DLeF-vLdket9AKy38e9A_roPnnUMHUNFmGxQMklStEcb1VRyJCAtQpOxNAWJN70J5G21c0XUKjw6kI_M_rCm23y4LNU5KLw74nbwMfoWYfNUZWzYi3QBOReXrQkmfyt4gzlwSI7FMBXXQkjFhmIYhZH_JUxoDHJn4nYYmeHz6rB_dlktPDsdJO008qZdM8xlurciuSmVjxDeSQcSGgnieDOsR8J9Dg-vfqMBGU8mC-P33j-X9_tlLsbBOZ6kepwF8wOgyiK7-vGGTkNXbFIfPfuwb9PDBs77kTw_88CqS1wDCt2UQbSXL_IV7PGw6PS2gQ2WaCp6XpUzoiavLiOVsr4QeWAY0wSFpYLL8QzBQ7POHA4RaXbpVS5OHQY8P7B1cpbEFfHVuWSf2TJm7vhhCPl96d-ucdTS63t9fjthDdB3a2pLcQpLQYDAWcP5e8P1JK0ZznL7J-q9w94Tsm4yIs_7vs9ajac2HTauzfAixbWzUQF40lSyJnJ6O7rPjWSi8CveUd_SbqqN7WulBtsfhrKuGpDUaxyjLnvkfWPtrTfUhIPRUohBGrCFPx6aCeV4R5SU1WzzIYglMOKRHJ9NH-J5Qf-lDn2S8btt9m3F7k3kGv8maFNnDuEVxRWz1qkkemrisLhmmFZm-kzlB76Bc6dvlly0A726VwNNc9hDL5CGm_50D042QGQBY6tpLynEnmAWMjuwtdGKOCx0P5wWGVCXvdwv6UXms7cQZu0vBgue81viWMCl9DU5sKjGvyvaaby8QqcsAavBO7Nd7SVO-3Z8Cm_FFrkIBDpqpU9574QESDjcFQM1bz74SzofhH52lfzxEmp0zCzO-5PyhqEsWwfVNbaOJcyV6EzOVh-_wUBwxLIZHhN0nedTDCDNTXqlkDH7saEFvBqB_UodW4-IZA5AEAKd71NGsjFuxzTUuwjmi51B4AAZGJjZ9Aor-GN8b1cLqYoArAiY9-M2PGXzXv-gPFOlNAGHHUFlmIz4VvCh2H54mzRe3P5ygBYP68_Lq_NeGnCkbJaJ-FE8GL3IM6-gOKCcmpnOmyGaH8pOe4Cw2v0ri-Vj7GMTqsUZOhPpm_7L64Y2SyQFlloSnVIwLomFRmzY6rIL66ByynyvRpdNNAP5D3FQbqKXeYcN9SNT9btg-P5yD7RgJf5pRnl6PKSpho7OsTFEuaKrBeDyDaRcEkr79evIzeupj2T6pkmpvEoN1JNto2E4wDlOHS2ybOApGSqZEzTI68Fnn23VBCyW27soX-GGWAQUJqhwoR1eX0OV0HiqXJRuOtVCNlQ_OtX8aR06nyO8LQKxY3mzvxLr5XK7dIOV4Jh7DWlkHupz55jCKhPJFnT8MCUnYPfb1z3X8Qg9yJACMZn7UZEEvpUze0KCbT3fV2XF1sWR7jEbTrAbLE0I2OJUitFYkj_1VkTuPaE2o_HkMNYvOyOcaoWt_cMc4j2FQ_7LIFgaXl5EXTc8wRyovNriK1-jURQtqhPtPQ_xTfmvksIKLLhMXBt5RnuUNy8Ab4E6s3OfYmUkHOPGfoLaiB9Jlvf1PatVc76TmlFFp_CRWcjbW8e4DM_ou1_KypPQZm_39ZLQKnDgFWP585aneAT2zMzd14c245iOd4xk0AjmFQsyiUL1IPM8YEB7NUNgZgYK_rxJYbr-IdMCsGfwdT2yCQ_cj6GFa7TT6LnGtk0x4rb60BDqVmj5Pnp0UWEeNlnW4sf8i209CqCj3_x6EJJ5sGSMh0AniGx9o1MknWN5ioIgljALki7JZvovS0VFW8BPECvwpTnAZC6g0wski5fimVQu0UYcnFm6-1nMCmka_KRaYT6nfRPDgWetV-Ou6GVEgd3x-L5gw4J0ep2NEWBuujon72z3f1r-3DGkJjwPBFt3Jby8rbvhBlgKDlVS0KQiKii8FkgB93l0CPD0vSmwSmSlJAAZ63Tycozk2r37PM3Lz0mjW-4GGS6HwrEJ3hzkCWwxc7HQxF7pQQsFr7u9TqpxTiy-YbE6NidJxPfKeXV_kQQYeoq9wu6SDBW3Yg7nsE57J5V45RthyNgObuM-eYBIV81Dk9jFtjkWfKAtskdvEFbksRQTa8k1NpulKSZe0ssB4rvF7tmlgaMFzcClJJ-5NZtpTKFYXjYQ8muX3pK4ierAl2daLzz0FjVAIGYfnOZftkKVSPMMq-rWBYIYeVFCXbNsVHZ1sCLuID_q2EqT2i7xUq_wHWrIH22MrIrVwrhIsUlv-D_d6tJQXES9en6pFf8qhgXNmo_cjBHYYVAYB9RON_khjLIKHmSM56y40uD8H-CQrSv20sge38MvjOq8vVUK9Ki7Zq6IBPFZPmB4nsUtzkRxnkXxH3N1nGfdJGi7NdUviodLquQNXImg0JrxeYvdb-JJYUTEsOIqEsma4_EEkeU2RzTxQw3ew2ywrDnmw0flpl8ukcC-1QyZVcvLqSTbNHQfDrlsTgJIP2OsCywufQopZ-t-sXaKn1DdMSnVQH1FzsPLXkZ5OGHHzx2Vk1WB6C14pDeY6ostQ613Wfm0NBXIKp-IM__dt6hCBe61UjnqBKEc9AgbspsEwOuOhTGZv_U_9PLMg6_RCQeaQwscjisJeFq4SbSBqU4TkLU784rrkpgtnFSxoK4cwH6BptAIM27FcflPEbLU3OWbdtrrIskvefmKGFjf71j5XE9Vm5OGQzTllC521ilpX-LRJ9IlyEWaqYQTgt24O_w8nEcXJhmO33dS7j2qluLMO4dvwOp27A2KSdXT2N9BZWl0cA6wMmaxiQO2tj36qYsBDgNJIeFBaQLihyRb6YSekjLqCXiwwh6xz5NqudZRyRkatqC6aXP0BiusjJVJ29O5hOXE_9Al_uILGTghCXDd2pok8GPlHAezQk4LAlXBA8x5xKDdrGhhj2x1zcdquaqTixGtL22qIonQ4LLsecszajs-4hTMErzQ1QdjbfPVRVgwZEO3cAJ1mt__7rm4K5DG9CoOzwka-QhEl5tw9IPF1ZmPUXoYT6siLwKUpIZXZECsfub2NH3CuDTbewzSbwGDTrx-AwNgvVKVUtYnjyLeZL_oeVsyxOq0MSC4ZJSSCbeqMzIRfUMjmw_oASvjeyD_5289hHtbIXc3IJuEyKOIcMQy3SJ78SezLPfK6ke3_o--6b0zXC3tl40jYF3-hs3VcTs57g-diO4AUC0MEzebFr_7OErQOI6Ff9SqXlZau-vRkvL_JYasFiBvLdVUAwTrd5-xI01K1RWSlXJFJoQvNByW8JqB7SYZfdau30Ol306zXUkSXlUSmu5yFnZWReCqg6oY2RegQvFdMYu-gYDVe_z9-YKPsMquCy7YBmzwrHqubXT2RerEaXZRxlcRjUrDvUK9PEPDZZ2l09LOUiYVNBX-yDS0KFYHD8mB32IWMuhIFeeTHufRNFqdfTdTwiDW_Mnjldeax4YGtHDGdtVO4GH7u5-JzRT0A00Up9LlWt30qUcmB-1mw7ugFCpXngfIOeOxBx-UDfBFd_L345ht7YiC2bXgoWS55bNoiTGc2lz0lehIU60tKbu8t_dPGu0q_Frg5ujdc1SjmEHsbljrfzBHuvHHx5ej3w8t7QJ9AY1ErOBt61g55fJhW7ky0lVIeWf12HCLVNFmPJvKKuUsGHzbGvcj7JIvZcnifGokRZtM7RnPgFToVwutZGmHgnH76SPjJt0AFsRguUnCz7XbUo6luGts9cHzpl2I8D5loMBrBujTQ71lUAx_pxehqVFzYhBmQXz8m3j6YDTX-TIyYYcsE2rvAEPJqgG18WemAG6DSlca2iZHktrynN9po3ISrv3Bd-wPhh5C3MtINAz2VMWPFT49gsK95SGGidKiPsxNRLxH5ebYdZ1QR7jTAXVpeb792TZQhTHSjU4yQTrZUSeXabyyggWLvRTz9jPO8SBk40sy9aNrxrUbvNo480r_blq9yUtWvqeyYdJSp6S7-iUD4hsPKpRsi7EmpvJTK2ZocWq9ishVDvq5Y1Ir_XdnyKEelbHUBdS9EEptS2C_5Jtekab3z53JgeLCTI7dLChm9qkMhpBo_DknKk0bSukfkfDXoL9E-_BsOTO7qAU7hg8sLdx3UFrkSxbK4euO9Hobnj4D1XQ3hol9NgbGI3kYZiNVL8TzHLIOfKDWWOAELiTlZTFRJY5OXeuodS_-6CuhEuPcBybXylGPDuhVpyJ1gR6IYmuZMVSrckCb-n9ZmNxIyu2GZM5tuAZoKJr9GkrZO5UHUE5MO3XsyYhg21TWtB2xshJIT9vH7q0dBTarYgisOiLsraMf3YjRtFdiV6u28Ya0xnY_0bFdK6IpjaxeSk7jjaGwCpVTuv87QxByKJxXH4P3o_f-JpCrbCAhqszLwQFTw1FCimxTAlsGAmGAZANxl5jIzximesz8MvfgglBUO0NpR4N7kwFT49AQ1-i0M0f6PWDQkVDN6O8KP0-9SCWvx2mugYQr52Qyi3Jh4e_5ELRCU08MDCR_mdHSgiI8cdkmg9Fa40Z5FIMG36iZNtUKcDqZUciJkjFUfFWuKHrMWDnhEcvmUEsOEm2lyuLdY1PAGRvqREL1t4xT5vj6vyfC9JaDC6OPlYk1wZTsEyFmJSc2rh0etdNRlBAbT-8OTDyuSX8WL9vzAtBk0Ci5hAQ15s0tVQ34XjtTq_LCX19UK7EU6IhIYOziEBzOq0312A_W4YNUcJH4ki0wQ3vhxGYbDkLy3BGZ3XJwHXAhuk_exHjDhqLv11Fuma6wOeB-h8xeIFe2LoduZ_bDtCLQJ0-XYlYqCihuv_9rzu7rUFjqYYLHYH5cIyIa4bsTDSuskDxU4bCEa0as_ZvLZwWMjcX93fPk_x2zJli7xCmqSHUmAxbQ1mvC76-wyjTlqeC55Yrf9dxVg0Up8MBeVYbIKtEpFjkLfLL35UOescfR2c9TXtIOWo2yI-7srSBcR04Khp8PtviRo4jUxWSXfOv5QQUvqHF-yoVyqdeoPUxp2cTeNysv4faVQvVtFd-tZBT6uUpkk3Te_BBOjHrRxcGDr-ZTW8sf1Z5PVXdlJuhcwLeXdmhwtSOcmL543CIjoRT6bRKxNhyQphZ1Wj3XNvFqgXqjU734nNe_2_QH0w1awyWo9oIiudd5wT7SAwanEWmIBros1N-uFMk2S1f7YrB8rg7yMWtMPuL6Edos6jcN9it3akOoW7onNLbDSaPYb8AGcP5GJ2atG9cz_Ka3wMbCYZEsh_INR9jJaKVVCj4udpMWdTpPbMGLFi_Wfi0LWOQjpMxIDYRafZZBAZWU1D0S43pTW-gmjy-QhdLGmgyJkqcSioJC9rlTJCWAJBe5pF7Tp08kuvb20WEBbdBK61xGxnYa6xjvCLLKndQX71OZEW9a2QWUh1aWnsMjD3dVxDKY4kUSDlTQY2wLdcwQ5g3ZStV9Qoqqr3Epg1PRB1OKX8p3vu8MoO_ZmqNH00o7_LiZJKWu_1ZFWmAeJu7PMMAegtuVWOHk0auEPndoJK_-w73dyPXLt0jEmkliL1sJHkybpaKyxNVheAip0TFPM6GKGKUAFb252hY83f7KvySF2Re97c4Ekw7M2wObrAed74ckKByyz512sPoGd7YXaB7qx5q1EsO-fzCwrerF4btlCX8sHsEXYPToSH8DEhb8vyTNhrCs_aJSk_LIGCLiR0kEhsv-shswXqHjy-qP9GRcFZE8YYs75wetBUj4kcxzz0EFzQfxgNHTaaHjczh5j816tIBKQ38zG7EpPfGJ-wiaH6-OQllXTPUrGXpU3JNoOaVUG2n1ZsyT-NeIpp4Iqx9OajTgq9pKAd5ivnB_o0RMCSXV2l2AlosgUV5hNnrOH9cXL-eBtC5dWWI7U4gYQvno1wUyTzo_nQwH-Lyi1arxDS8uBvI_1A9VpWVrxOmBxhRURuuyvQyuTuzANp_Bc7xuVWBRW82MmXfgvWnrY8QOxNt8soLkqXO08wnyKInFM4Oh_lTfnQvFsc_PqQthiP7snN1TpX6Qzpb4ukXmHCcI4web923sGE5A05elg5ohGWdg7xIkzqF6H9sHI6KUGnIjGsj9S4MAryqkI7M4UUDImZKSBrNjRfVaV1hBdvqQQl4Ifj84RVln76u0j8lvaTxNZ_1ft0yUROtsscwXp63Op_VOWwpVVworRDEwV8aABn9iVUzdqDOt310bPtYdGzFad_sWTtSlB0Ab6Zp1RS-2d5Qs-e9fR6EsoNXVwySTyuxGZ_DSTmz68VEgCzQMHeUKlUuf7XcTkOW6iuXKG1qVvda2YKLZorxtO8qXInHLEkNXMFkkO6UshaAG3Q1dmvbnkVSQ1_2xxfCsmVj4mirlgLnIoDoUEcgNs_yIbNMX--XHYDMPpxntseAW5asQjrHTetkc7fBd0bgzxWKPrlGROFotVP6zacQGP0yHBO2Y2XERIR6BaO8zm6RU5QfDmL9pg4rHu8Mw07NjL_ebnDKg6VXJZxsYjn0g-fM8cDspXdRK_8IjShnrMv5v_aUgNxICOxCrm9YO6W_g4t0VM5Q3D-N6z-z6oyzfZBTFqzYvYc0yHcK7d4Exra2vpOxqFi4Rtm7cbTb26hA394CYQ5jcf-HWVhVJ1JbdPNGpesEiUwtKlBpD5KIXj72_83Jwt6XxJoKrCvW3jpga7GJAwfVeSl01RUYU2i9nv7R5clt8MudFgsJuzAnPo6VvDbEU2FzOdHDx-eTDycYNOwhiL56xPN52tgDzlbOrHD7cx_HtYB6avl4Pt8sUYeNM1VeSYEjzuMJObRI_FgsaCGwh0slMoA-TmdpLxsgZG56bjTkNP0hrbKfVT8jYlcxaEjdPIpwD9sxzFbRm8HDZlDL172UQeTjsFfbJDEIQzDpEfiI8iuCB7S9M7LCL5xfMWMgYYgzyLKfw24DkCBshjmowfzu1B7eXzuHuEJTXJY-SmA5X6ef2oK1eu2Qygy0ec1SFkShoSoVhcf3-IR9HLir06w0XZnTjv7DeM2zUdqqgUIZXTcQo9l_zoTBUIIAFvnlTFmvBHLbM3RquhGkNUtBt-arJvAodHJ0yj0tSI6ExPZrbyLLn047f4oP6WILXwomotDh5ECnVwlCR127bZb47wXWwm4rdBM1EX3Eimyn6OGERdlRcwlfbpMD_11w5HXU5TSolhrAWQr4Aoh-rHoBdXwvhE67hV4WihAfx75MleXaPxLA0RjLoFnRFmkaZQd_2RPmtjM8GPhe_fkdAiFNUWQRj8pr_vJ-030xCn3AFRFosynxKvjxwbty-mUn2lgmOoJPCqKfTbSGsDJoAj_HYJa-Awmg1hkYI-_40EtLJ-8CSmfdRsuYGzEKlMlZgNZtYWdJ9RF09U_fmNqgw3ADIMsfHjhJj8uG6vSvxGZEY6V0o6o3lCh9GZUZAOyPuhjR1_01dNWnuVCGT-hPcj_hZT1bWxNVb8GV2nrHui29icQ_tRjBVUI7V5ULnLd3QIsiqHny7iTzKuIiSFPjpC4lOd6gwHL3uyePfZZH5TPrE1SFT6MjSmU6X0qRZl5W8Qs7MTpCLKdeIBOauTpCwD_epnp7IiU1X5Z7wPgN9Itpvn0kVJqwn0b6vJjpIPWep1AduU6_o22UHVHMr7EQoFH63bGH526zWe4Wm5bKVCkbUDCQBxbcceIu1Zr5bA6aQPz0m_CknBtMfQKwlb6G360mi5ToNaRPoO9y6h29X470MhEnKfiCh7D6zX_1MzE_psHPv_mXSW-5x5HSJx7fcS11wRN7l54VErOLmzNE5xgbQq3DQKHkR6YpjqEDlO1GjT6zkdBOQBy6ye-SbaA_tE3dvHxD2IN1aaJwTEnzLDjna-g557f7wjmj0nYPh__8vYI_SdbVu9UTBNuwBzR5IijWMi1IK1Zj6ojkqlrSB4B5GbxLddEbS9uIpK7Jt-XVg8Dk5uPyr70Tm9loDAs-8iJrKTcemwezyQrSgt5F_EnYhRP4LiqLCOoY-nlMmlCODo51nco5KWzB1g6RV8QbLEmXNmjOfRC5Gsy7t9VeaHlUEV-11AbWkWcXYhg1jy1TyV7awZk0wTdSvvJ9eaP4Gcg3ESVhF7_cF7fo6b88V6t37XUcRZ8vtLHzVT9qHag7SQdmJuDas5fzzYgx8MUwVGMqfI_kHqV8gba6JNwQ1HcszVICdQUuyhIaZ_x461tDuDgpaY6oTrGANNstWq7z-tKHIEYrEJIQW9_0oW-VSQ0Oll4R9p-bob3sAiPZeWhO6ZNIT8y26X2o_Dm5d-FNQR_nNdB8Ob4PjBv1Q1vvoXq1u0BW4PpyjPJBBUPxOx6gfVioxbHdASkwq5ssjJsHp7h0gJcwor0ipkpZz2RzhnTlDBBBVVZYlQYwmROiztic_fITfKwrFqNNa7RKgPaPDCFY6qCH8LmY7gq7oztG4ceWYm8Tqs3OU6dl-z6t1u2MAo4dLm5GyQUToFgFAVDf2C1jIYnCWV6xSK63PqsMFzMwdb3w1ETWjEuH9d5B8oRZny8gqaBnLTzcs8euwBWHoVyK2vlTqSIaDC-UByC1wIiwbAxoPfaZuVjOtFDZKBWBWF13dFYPDW-uWPQU2gDskJVm7QDSKQUz8YSNF63p3_yJ7w48vAjl6GPW0xymbqB50XNItbDML-8YU77j-ONrEa0y_UpwVU6BF_E1iFNTWCFwYSsZF-ErfYj7UREWluPJnbX2Jukwj-LPbYKZxolZL_6j86ff-X6UwNy--oz89huhDHVG-6Ba_Vqd_cFtVvd4CHBBc1T52MT3dSgswUkX8VXxEnKmq6etqVdQLrpO1LAZ37wDHIzUt98Oo0SGOYijqpjxKG1fi6PQfFA4QsW0zbaTF9epDjdjdsXu0PX9iy6QnpnF2JCBiL3W5_zbUtbp0UzbZrXgBss6-cZ3xU8LxWynHdle-Y0ysSsera1Kqv3ORZD8aO7MkE3zmz9MmNjKA-u6djcxzXETx36rsvDHyN8bJg7tMI3N-AaBlMOwujVX8sKx0cfLNy5SmiIk_1DuLZIi6YZeYc6RtxEqQZN3vhbgXAFtinzgdDhpnlr4wqsb1D2QcTYIQ3JO1ln-XUyXb048KmpaOopWoozMOs1gW1z2ESOR4jMWxqvj-3XW2iWQ1PTVj8dWM9HxNksJoPrBCy0Oh12qNOZ1bkg9Ql5w9wCz2xlT0pIOc92BbWZ9EyZK-ljTMi9TMwVbAD1426LJLZec5LYr9PfKDaT2zPCqEfHps65-692jLCojxCzUKKn76Rh5pDH5gwup5dulU4j4JIBRNyhkcgrEmDfnRfBV1nUHP6aBVneIG7fcOKyJN1Gu1P7oJr5GoNEwMB7Y7yAKThi3UQGczF4waACLz9onikFWfpPZPZUvTm6aZN0-BlCMa336N0oJjskWvW5BcoVHmQjTtKtNtlKf4YVomDnafNMlmc0oE1X2iM_HexmnYX4QVnsyJXO9nPVQkms_pB_N-L2yv2n2mQOWsVKOzUxLPFLoJrGpq5v5jgd3bsEB2GHvaOXPrcShl_57BBzD1VFNTLhXdZgv0wIT8K5p70rFlg9RxiaEMnXUXn9wAcMiFNPj0e1VWuT4NaMENfu5Jf10vFPwyyvhWknM8WyRe9kKlDzWUDsScXIOKXRhJQqqUYKvLgIC0bbFUrI4mOqNq4B6rEO87aRTLy7LcozhJI-2HQH6mboevXQJHg1aVT9ZvCtRZPDFrhiQ8j4Gu9l4dBONHNpN83Cr3X7n49JaP6zTZrWHSEFZC9a5LRDwggIZGuFRtg70yMP9QLaLcxaaMNYTwqcydk7Q1fk2jGWPfBFVVdtMhcmhxjOWqE6Tv9RnvkX19YXqVD0oLH2MZPd1rkG5AAp0ecZJCEV8JVd0ZscEseq7rUKnFEmVA9KAzlET2s4QTcHfB2t-fzKPucSDe7jQSrpc3uAd1uGF-JjbEES7TQKDLJwGQG6iVcjDCTFlvExwHcOXmDN1SU3ULtKLcxJySmaAkouGa6OnnP7IwN6RGKh-LU_j9K1VsyMHG8RqzOaozmOJW6MmxNYWk-nuz_BvoZaeuvQE7ZfiM9WcuLLoShworzlIi3gztvOFAbxBAHILT_tPMZ9ptMzN76pSJS9hKSxWYqC7qNThc8zbivBBk3EGByMSqVMHbdXHxXGhXligeTIHLOsjAc_k3a3ZWraFIayeTuqUXxVjLjj32VgQmKTcMbc3jJzxXiBn37dCecK6f-QiielM9KMaYn7oEOfq9y2FxbD_wva6LXZV9_nuQ_mRvRFwV1vFf3KaS-s1sHglVDIdHu1cgBBfNStQ9XYfxxB-Ais2AwL6VgU31av-T2IZ-GBZYCYJv0N8of5rVhtzz6xNp4lYaasEI6bEar4lF3J_6eoOqoChxYxo6qw6fRN1VpDSVF92PutHZsdbrymO118UR3nNrW2FeeQBybFu1JeSbX-lJQqAx5zPGR8AjDIddQ08EVdMoA-HgrxdvJBEmXvI3yK5xTyfjpPG0zSMDRLb5fKYdSryCrUwVdd9GrWCyaC2gxZxKhGrt1LcGMJQBPymhfvMN2FdKrfaniF5_7joYNYr2mcx-ETL5jLHhZP0W0cWHdZfPXHb05ypoA9ndhcJOs1EUIC8kNH9uBvBYTrQ9fl2vb_XJ8LXMVDmsP9ZEQGEY8ZkRUpqkwV7xehp1jBNVBSb6L7HMXqD0BNydFq4Bx55c26HhGVn3YqROecZyqdzoCIKK7E4DA3Acg04PfdynAJ04ysIE0ycKcz-_PaHyxnAgBxPTE85VklDM8QjshfVI-4BbY15mCLiCcT80H3plh6YdtYPoM8prPaVQpTJj7c1rdKAoHjng88lUsmmhxICdqXmOAf3UxYToOZsvYnJnoG3SXdxGfmzgPBjC9o7umAaoIOrjMs5JbkqBxrCGCyzoP8F8fTBgIL9BrmIk2dlzBRXP-Ro57X_I-JjuZXhzH8K7ixvj8bByajVIQgEcjRYegP2nCzqB5er5b0CMrWHoM-MlQniHd4H4O9Jfc-NyfF7eXXMa83Gdc9gmqUJBrzHpCISbb_XVT-BekKzPfA3DyRNtnuyacIWvNdPZqTXUwRDjQDhj4eHUeYhL6lXWKJsY_P4rrehag9GNbWQoVFDlUZDcWi4EcSWC4lV0MySBDszUfamoSI3KNRtE8GhfcobewzzZxZw-h37CxSPjl9036GJSwMTkQWL_ZYBOJEPBpZegnyM14Umy3VdBl1TdpkJ_vA9-yZUYuk3gJzzjXcluvQmdKrYV2yjgw1hoA-4BaCGbUymYwQI1HptH-EOmgLooUYff3rQLRzwslMfoUZi6qnNnvC8E_ZIyEX9sFQBBN8xD_OEkBX81GExrskHrCCJt6_y_cEHAq5LytyUiUz0QIfibYh6Kto363eUm1obswqXE8ZqJPHl2vmxbwpvVk9vtzngELAqQW5EIO4wBXjW3xbf-XBcbHdDmLsvj1iPZJNCbBeNJur3T3kftsImk9OJLYStIQqkc7tAd0CN0PVqlhlkJmpc2fuxRiT0sM0KoldFSH78xCqGTtxgemAUvEiT7kWLnQwZ-1i7zYeZA6hJsov7Bk8a7u71BhTry6maoSTLN0gyWHDiJzKChkaQEet1aIXETOi0r3aqPmnIED6PIrlM6SH-Xlu__M5bUTW-03SCr6noBefwtVWi-IbtW6bKM1sZA6SobZrOoAVtN9hSfTkxG-1v9jJqNOsDiSiHHv17NrYbIqVbDBmYJTxI_jtNnXyS62188IP4xjzhCxjNpuE-1oL6Dsm35wcAQH2TAVueofXdBMsfhekjfzr25JWfUPNxRuZ3yUnq4mcuLecL8HRF1uCiWPCKS1R8oBfPFEIgoIPdNaeix8vGjnSADyCk1XfV-4M2tqJCOVpo-t7pzKkQjnPmNZNdkwFYApclmw13Ao3AksNxLfm-8TUOcNglbBer40rTL2Vz4E_8Ev0LkxiO6VggLbEbeZESGXGg21yi_K2m8sVgxLfBJ-gZ1Lmu-WHuFZuZaGqNmz-mw1pZN9RK6mfCS4_XPlsICW02BHIHyopM799eAWJBcRClNFZY2unWZbP4wAiIaiIMni2L2bMxrWm6vue9qw1hNkJPsZWRcsiJzfBRRDWUjwtBzOq2HxIByvQE_I3-qHJu4WgE03_AkfCUPp9BBxNFCZTv-Dc8QDkRLCafE8pP5pGhrihzGWshLSS6WNLzhtpr1ERvUPchj4Pqi-3HNJe0iKFNNHO4zQlQRWF2awYnKTIkPRw6v2XYiBDNBL_aMlvmFqeOmGyIkEXbXPN4spUgIKN94Bh4UH0cYrnLIYiOdh1fORaATbtIv5NH3bLaq4uQxUutYiTDlYpN0t2oAXOjAWDhHFVYPlj1UA2ixK93cLonCcrR6IX3Eqc6oLbjfK7EvmfmPZxfoZ9jKnCDl7IEaH1N-Vduyo7Apk96kc-Wkk071xc82GKdy1b0_FDe7ogcVrG6lNQYTnfknSUTo0mtmuW1GrJpXrQgESnB3m3K034jxrDK6QCWhL63_mz5qlgk6mXXsnzkgFNafHm5KyPkhT3fmCj2jjwEMrO1b7KGlcJOtkGPZEDyxxJ8kM5V4ng08kdbECyg8R3oufqJI2iGD5QhNBx_0voMJr4viDIAHxCBcI6GLXlmB9x5eoUGhf8G1PbulNduQ5gQLwWWveaWCEIt_6zcCqiV2rVMY0oYqEsja8mztgNp3mDlZClwn1w7pMumzvHToKJy50SweDg-fYx0ajq4g_07U3faf5rh9qXkxbCm9KdiM2FaQbN5We9h81yK7pxFuP1as05J9QlTJUay7Q-PTCsmsMgQBzbXA33kymbW3gnAhQ3gu6zSNMh52zZ0uODzeiRHQLS_P7--MThrZLBkhLfKXjoNBKsXJ_KlNkFvYLNK7x0rqRBkYM8Tc31WJkLqeAO2ep5NewojpaPSAYY6wwGdHgA5I5TcjwRK9JpXybFav_r5BbTGubKxDYDLJN6PGu4ugLhWSkLe9aa1945EnKyZYU21bymjsODQz-a1oSTg2hLa5PpwKVjwy7h7863lyxde6Mst1E-fQymWDJsM5hL6J20kwhXNuoclp1Jey61yiTZxe9X1ZLjw8t2t-xODeVQI2KzDKgnDEXCFnb_GjKkKrysXJLZvUCKlvv_JQvri6NYW5VRAd_fwPTYpYY73phCU6ZsKB0XYufTpUek0rXtp-hkqgf5aFGmPMmZYN7euk7LzkZhD6mUvafq0Il6NAChRxRfWkfVOMsNn_sgQBo_tngYwHpepor1OJjfSUj8YvaJDhYvshFTBuSwDrt8Fh8xStZE_gvNmTAznIZ0U73ypWcGhV9zmDmDlNq15BKrX_5xaR42Au41DNkCsZH2AGwVAL94KiPMxWS3xgPFjqYzHuHRQfR854QpDwkFEFyiYRhhKzCgiSYsFWbT2gnWiMLkXnWPwukRefFlEqT2YiTKFQLHChfNhCKQesFxfAxvWVKmQNzQlr7dP0QJ_c2Hfr53Ng4pc3Jf6_aQwRKKcf92JTURlV4YpLpB4ongWnIf8xNo4FQ8sK-rh2VnIGWa6WZTbdZDcmsaGnY37sdjFK1DYZb7b1f2DYmqHhS37DJ59HtwSpxx99rDZPCAtyRF_EcwBfgh40jOxs0pRvI4Plzi3tU8IImW_0hIIGzsOu2FHfMf2tTxy6Sa-2Fb4OsQNCjh8J8huqhS7cHi7KTzNkO2_5m4c7IFpDsl1HFgT6h8gbPdXHfApIJ7dHzbJJecOieRPhuRZOHIQt_NWQsJJIvk3Xxz0G_-jYgPKjHTcYfAZwbvG1LRMHDWer8BFZnnLFz1E6ez9WGaTIwJIux0B4VTGiqezci6SJvk1Upnddq-8WSs8IfCcuy3NjyCjH0Dlti3h-SBwEP2m6vllcGnHQf2UrpdSMLXOZutZNat-Da5W75M0kU8DmoxS4uFiQafYonIzT9QZNZlWrX8SQlfHcgWjBn6bfjgmGwPtg9G_9b20g5QShH32P61o9ce_CPkmjy123APna3Cvi5Y2PehOI_yhzIkfF0dTkJbe_7hX1K9Fb2ffVwSjk8JcYZiA_ll6crfx-U3op78gcMfcPRtGPurHg3UxFyms9F2lpk3H17p0JfaCk_vvDniu_nhfGtzGqfxahvOJyeNQl2zWR4cGQjLrjgctu4oSjbjy0lgrvlloXmFKAklDSFTiX4c_-QJgcZz-LvC9zfEyASnc-TMo_qh1Gg2revUBnY5FCCJHugvI5dh44ma6ecX162gjZqy24p8opTC85O_YyoL18I90ZD_IS-FFl71vXbjWOTAF6p2Q-DwTlTnSO2jCQeVN4H-0XBtmCh9g_zB1a-t_Gu64ROFKu05SfBmpb79EJoDk5Iffm6re_180E11rVQWXOfW5O5c1z4al-xXZu5jTbHP-8G3UTmC1EtgxkyfL2A7WYxQUGTuBNF6HrdsAV4DBWQ8toAOEcGV9KJ0GCRCsyVNtFS7_sSxkhJG_ruaMi04UlgXrmyX62MArHxyO1g8My7gH6gdsvgUl89oNJCJPLdzZFe0PRps6TNDi34V1-aMrl6OxBw4GYWiidkidRih-3toORTg9X_4X0RE9RGhU3_FhrJqP4g4n57Mf08OAJFKmd1fb66wKhip2NqrQFOt5-kWckdMClkmRv4CL8yjK_nuVcQrjajWKtz0o83twqiAoOR7yZ_7iBH_rTyFftu0H5u1QBZaYLhbifMM5M719XKNLiuNmyLWfV6PdJueY6DVNTtjeNZceSDjl6dIPKLxn7e8SE9dIQV43Kn1mmLe1rVM_fsSbBmiXL7pPrcEUshcjePsbeV3b4_WlD4iDUp9lhN5zhuuihJaTDOWuShvPiY_LZyFwcwZn_dB837iE80qcFbiN3EO-rYlroQpFmS4rKA7IPYkfiOqDQjqpADUdquys-CNLqV6uzOM4SukiMmIzK3jXuPVEWoBWWZ9PHKr5fb_JKJAJbCHtcpJ3Gzw-PtD5Jn69oIhzUiEqZbpHH4VdUYrA57E84R0-m-N1ATDlm_PJR7-1HUxh5cVJgWQJ70fZjpC8p06wB15S67OIV-ybboQiDLBtzHsLfxyNzg9PajtTMgZOyfXWmqATMp3-4oS2JhbODSfec-jbrVdwSCPKM6RbyCiyhGocwPR8QyA-ZRarxfmqXhWOLBMUXHom8kmDDMBFob_DghJTrB2kx3bgHuZs70LRKLCESdQ--n1K7uBTJhjQav8P0KdSal9TU16kjFneS4iAIKuJ6JYROcLFEWuVYXnDhnm3qsxXUlnzhnnYWSSDYgsnuJ0LeNodvxXbxYG3WWi7LnQRxQ-YTFez92lPbMNqIm-7uqHFKSj37AayaS3jjDZkwLzGdr1ok1bqSXLwzEH2Zyifs0gi8y6wb0KWteMl0P6r9BXfN7PZav0oQqGcyZl8tWSV7TUjDkZ7NBrK7SBZw_uoXuTEF12cQX6zlslEHP6Cmio5SdVMAEM6UvM234z08Qn-66-7Shp_s_etPuChTb2_93NItV-drx23epO5FffNuekBjclO_2YsrMNB4Km0FQMjC1u0RGALk9fgUyXZyH8drGzSSs-bKuJ6UGxus57WTCtfBqtPa-as-79v6r-lKYOwKqu2DA3WhyDVCO9rofGVk3VUixgcdvm6k3lGBn4IVr2xVLNzvK4xPF6TTV341-CUovX90CmZuzq5hWvEenYjP1ToS09HIFZp_yDhqLS6fzXSLeMGrll8PEVGQ-SKk71f58DnUNW2OWt_-2oeDw6KxH0H0Vb5wTZTELRHJA28V17dgdGh1blf4yv1xF43fLgEguQKunRpyx5l1NZZAsL60AmTKwxY9PsCcdVFJySvWCbTm9_j200hL3aDWuFePBoRuO8XcL0yIDKE3SXIGDnhWnMHAHJGxWHfSHLPITut2NXc6eIP_OCaRdyGrUQajWRnSBgkRwmrttNDK_97CdFYpvn7CVicK1zzRJ2wXTA72Y3OzEDs6FVmCMmBASJTU61eCIz4yb8aflVWYNpYNhzHab9nsYEb48Z1ftdYc17QFkUEl8ltNCbxOt0VKfztQltm-RTf5b1867GtpDtLqCR9-pt2r1cCA002d-Tp6cTq9lJvrlAktit8AKdd7nJiCh6T9AVNroLfY5A4YWSNwFvDUArlXbnPKAa7_MgaAFoVYlWK8ULeJapL0iJMGnb4OkD4-Vl_to72d7_BiyH8rtVTRj7jevGDHzZPUZfJufk3tXLRFOxDBGyuXASEiXDnCbKlionPBqa-WE14VBYOFggwczjhBzEWI5Tq6H3rFgJ2ojV23R51v-1WaDsoHbjqcQmP-CHv34Obz0GI9ZeBm-XCtlp1DVi6O1AiiJCXMR8Baqbvq56aNG7TAgs2SnefF7djZdXfdzZskm75F1KFe5vgMS9eqBVN_HOT_KrZEGE-M9A8B9u6UOkHqMpPBtrsbxyyN4KuXhQ5YCiExl9ea5JWC32IKTHC3zDJqeH_Yd1vmnnYT_aHpOIXz1C2tGbyyjkT8RCkZDyXs6Ji7xtsB-ncm-z-b4y33Q9jzV4-trL3dHks73sFSqW-30PSNBRBbcZRlk632v60XEv0_Ow7c-5xGf-0dDZoh33crRHgqHFrZNZohvSasslGDmFIwzvGn_dzMewcm0lyx-VV_ZjlCv-iOz1V7RizYI8_dSB8a4LyEZDX_tvIxH3mdzEsdMfca-a67o0HxTUMOSfXIfV2oyETLQJO8p2HFWlwQI16YO3dikeOCbDAIFNVJYiAwasD7pIKKJQntFbOkLfirxrMR0liQ-t17ku2Xx13GxuUOzANrLTvkBXRjz4R3du4IRjxNtusMMOdwaPYplYJ2fHEjNJLAnwNSfUFRXnRzXO1QRvSSwO6Q-grNnBtIMY1VvpT7SJEjm0cQdP2aMcMy6MdH9hyq16m99RhrXBlNW-j0LcHRzdpYlSNtlSN-kXvU2mzJ8z3W4Irzk5v2EZtROv7_ZaFiKElJ1TPR8DORV4kRPQmZizgxVftxpeHzAfMunCsqz68sMgmpnr8bpNw7iDVUxGx6D3Nz10xzLNX0oFXnGnAkQ0a_9jKM1EgxWmfsXuUo0w35vZUXkMHShJcI7-ECzNWwiF4AC6-muX9yaoCg-xhwJbz3PWb6M9ab92SKbYInAOuwg6Zn5qhJI-zlX4DvAACMGO1JZXxGdNITjKgGvCFGviSlzQj-oyGaCrv9qVXQfDYJGfEY_BML6eNDRmbIw7Ih9eoBa1rbti_8dI3AVe7nltA4Kme8LhB9Czb-A70LwE8AW9DYR9udtbsnx6q7089r1y3lWOKvJFsx7k97Vuxnd9vyT17aW3vB13ghLklt2AUjPN5qKl68XwQYzY0UPxPmXsBO187pAMxu4j0OaCVc2d6n7pTRYeAe0NuCIHI3F1NmD9C0zZT118gLGrtNYyMofuKFnuHcD0GoaWxsW1QKlvOr_0K7Fthk5J-IxtN_8bsaceqr-SDKMA5A4Xswt62Y6g_PP6crvG5tFMWLNrkGTorjNw2xz6zG9TjbZNXwGOLz19Fn6Ud1r1yQhNmIqDy98Z4TGHkEt8WMc4d_3uvWR43KW9Qd9uL_h8KQ-kl1jIWjm9jpkvF71eNHwBbkzZKd-X_jgjvK8e3wRWcw4tdYEDEd1PzGtyVTP_o7hpZ1uJs2y0uQ678MTKwhybdyAaAgWYAhjaa9EwrzjroPRWT8AFYlGMVOrY0egHHsw5UM7itxw0BvsgCJlN4dkWxNUIDlEIK1I2pqdL3JVuU476ctRMEzJAaY_7Wg2ZeVAEINqHGF7IrMM-B6Ku6wmfIQxyxKNlGGGk9Y4IOagJoV3FWGMtUoy2LB1qMXeEXma5mXP-r_k-1Wzjfy5Fk0W2FckYNRISohoweFm_uKE08X0njTq6px67GDFNwEl1V1ieqXcoCEpjC2e7jGqfPfMNX3DmKG2r4urtqFvIldn4cG3QT64D5xamK6hnRW5O5cAniyHH-UH4r7OzeL3NJajniDPDdihD8YDxPPTGylGNIkcFgz7k_06_NgK_L2U9B6mgV2HPKy8I8_e-Hm8NkDL4dvmtwXTiy5cRFAX1VmRa9TW-6zRN1wCpjUceCIRb6mqXpktx62Mu2ZqogxzYasUcFnb943H2Jjo2FI8uP_HyCg6z5hl7J0EdaSfvo3UkcNv-fITBEL6nSrLd3RiMTZhMMlV-fL1LWdPX0fThu2mbOrmCKZMZGxWDD18MonlhJkhsD_AFjc69Hndh1u-_p0qnf1nI14jWHo65nOe9D9ey35ilntB2ybAXhfcTH8l1dmLnosVet2l0Ahj0fAeKrQtUOdyBwlhfQJLloQ9peSOTeyJPTWPGyyyrfzDBZLJY5l_Kz_GpBZD886rhRWCWJym7Dw8qG7TWvAnMc6ef7J7WZaQXfuMvUiqxPZUs9Us9TuLKYm3UaAlCqUUbttMFV5gsz_0a4gpKG_THPmxzMX8JPZyPx7LI7htnoRTQYKrSIiQ_TZ7eXGe2xZqTMF_NvxB0j3cm6J_lzA4J9Qlev4aHHygqJPvOLkGX--JmfgP9OPOXYPZxL1UFIf2Es82EXlFFiauzfbl_qv5FfQ12ovvtYqQqgxuYfrpbeZc_6MiCf-h_pTxWBYa3VIc8T6OQnPprusW0ppLwVdVGChz9UiuMkFIx86117KF_FYahsMkCmRGsV-2kF786Z7yj7W-yvj6nQ8K9d5bM0n51YS0MFqZyJc2JrrVqwLhkIJ68yzSMlIGvVfGz7lrR7hRcqJMcAEbSrkIr6YbMWqmoWAO9uSQ2mTeQCujhMDEtZrvVEX2aFWe3tvtOdesJOn8x82lppHAZKFwHonmgJYEbDzE3S2fQPktM_VY7Q6DYDlkXnV7e0rC9gFQMOVaLbejt65V0yixyh_jWn92w_fVRKM70g2DQkPCuGEs_r-pBbVj2Z2RziMFzsuRyQZ71-OhokimTt-R31U7OPAVoKB-hG5aCczk0O50mgl4baIF-Okxm289Ye2GmcmNYHIYV8t569NkYWZ2-_qVzHU1-K0pqOZfGdAC4zr3r_BR4sNdC0aGo-qmMnXQ7EyYfox4IzVBaGGwULAtUnW023C8eAgtj8DfI-SGAnIsyLfINFTRGAOkvwmDjyUnTMhDv3-xsgr4L7jzTzq04nCs5jCsb3SOWGIw-fSU3Gv4W16hiinuHcg0CL-hlXYjAYiWEN6V50t88zLd9InGUq73guPBlV6-f1kWkHB2LZmkSrMAV8-R8bzW7ZAjua45DQB6S13TLuLJppn4_7lUKwbkuoDwVp0SeHqipLsce6ky6HGEwgeAwgdA_W_vZFMMJEtgZ3IkMmPifexYonBLUebcNe4lRyEB5ECBPAKSSwCZ2HsCZPVuVulCCo4--acK7cLwOJ1wOMrRY3R6Z4Ti_AYDAOmQFWg6-nZjdwh-4PzSU7SEf-TmHzgnjuU8MmYIa43rcDWdEgOm7mewgKL9w-QL09lyEz_yX4__K-3kISte0GqlHKT37VA8O8LH9XXJsa5n4s30Ck1-NEb1T3-n7EPeekr5LH-GDJzOwOkBenkYBbXM09TU7jvedNOfP1UW--7S0dysI1KgSj9QPfI7CVvA6qx8hx08oxHO4IaogTH8NzUy2k7ldl1Qj56amIOq-r6EUuYoTemkUzjwHKcnG4zHJ7eZSvKvg25RLAxcvjJP6h2tRYv4eawor_4ER2Kr7KvfF5vS216lzsTkyYe-cOvF_k6j9Uk3bmh-QF1D96wjkdOAwqZH6NfzQbwR-Bh6TWGPj7y7xu1emsACUQi_uhN2qgg4DKhXr4F-0_ooBBXRcIZsHAgQhJeBJ49uyZHEAo2NeCrBftP5OYhC73Icig8bk0McUBumcx7VQxoAY4Ah45GuEQhGD5fUYm1J7ogGDkPuS_mn3KwG63jC8Ee3TNVFohNyPjLLQpmxKglWviJ2QnXksdRtkQ9yRWDpEgA7nFK4jKk3hRlofecjB-yRQTEjGrdG_l0lnRplOwhQwU8bJaVdliFKrkDIgY3z5uULb29Pvl_C0JhFi-PjQo5xCG46pifHIVBE-2Vr9J9cAMTyLYL_n_JQGfsTABe7VFOwRme9aHYK_EK8MoLU6zgfXmtyg0yODh6W3IRjYRHpNoJdB5wJ0wSQ4f8hfNw67ZFZSeiHsxcGEgiVUI2WfnwXybSMkzvZ53yeoBjMYXsloBykA02_0gRLtEFxDXzU9dXeVWyHG5FEFlQGTPw2yNdXOy16Wtzl4EprYa5YkvqiaVFhGhgPwKXKgp-x2qTzaaazIo9Rkoy23nXAAb0ypUg-Q7Hi4CtzA4sBm1H_dhH4D-4s1PSszrbJCILSQ6fe7-PrI5TB-C7kQnQCKOCfxO6gUm6WhpG0V_afkXOLaMp6rYU2vkKgxXZPjnCsYbv6njE3qN0fdixFxWxKphZqOa9i1NYsEq1fvFTK88-2spnDiDvO0RzHIqes86hSo2YPU8GvGomqQgO0BXxZKrT0gHPf_Gypx4VnT6_GiHAltDpF9shrtvD_ZcGIrbtH4sQzIsLghw9o8tBMemGQoGof9qol6MpkMmlLahBu7g1XX3vZ5P1YdUubvLYCu270Dbg7sgEQrQzIx98pQ4V2eqve6Y1WtgBsU1ubCyDB2XohWsjmmV-QrTW4Zbljqhkh2khae5GXcyzGZ7ERKdvJhp522BZ2_rcSHrAEkpyPNQ_GxsNWcVjXVSNeGMbRX2e-8SB3CPoMgSkhKsQaxa0xtlJ2icgb2qRz1aMKgG85Iv7kyDBMSitN3CjPpZuX5GCENHaHsmAQdSSH7_fzaubJe6i0q-HH1GvoHNgyFFld8sPxMee4Sc6mXobz4_WTt_RqNxHHPm1knWk7yi34yxQ_znk_D8jlbieYHPN4WWBJDEMqPYLvUQYm2nBM9phuvO_9LztZ8uxnJKV5jIkATB2fyqxd-FDjKB0BnqaftOofH3gYN6o5p1jlFblfYoLmPEeq7LwRWi8uFtohXgK6lr7vaLlhEodAG1HBPjj0LC3O0lieWGqUUHTXlI7y_hFsb41duL4xKb1VAVfn7d6h4-YA20b56N4N_OO98YkZhobhMOjm28C66CG3zpt42XSIYC-073mg4pVrnndtDiSZ3vPWQevtoNXVzZXGhv7Qr6gKzRYAmeTHUik1Btht_tSOh6dk-N3uwhx039NMks8JncuFnezXbAw6y_AVrXDDhXIau2rCYRqSVLFy4fUSOre3bQ0zU3G1IDKTq6p9QfgsdW7ynZWRKY6kHqV5_dBBfAEkxSqkTAgUwnxvfW1C376bkTyfI4ml0PMurH8UbVbqgAom4F6-TFIDfBTiqcnuJgFPjJ52g-hYrpD4iVjzjXWCh74ypL-ah3N9moySbnw8FRy871k38Po4y0BhzzTQVeL9QCeDu1jQZeQcik19FJAAO_Ydy_acXLkM-3ycGRjynsPZJt9fTU4Lu-8Rjyv__R5hxhUMqmTu_NdVlAbNs2fy1YLPDnhSg1rN9nCKCTdU70MA2K1Xn8JaKOFjVc0k1zOe7t0cLDA_YEGpruTblsyrzxzsb-dMAycDFpNq-mkGo0FNb1QxYzXdSc-moyQpM6jEw3Nyqw1UFd_9s73Qkp6oMqByih1WRH3DCSoYIduY11wW7jBQITJTTlamB8sfMi_TFtSI9sMuMyiW94hzZVltPARVyZqDVGGz8nTftPLP8CAvIcdBD4gUN1e65U0M3bmvLdCBMwID10BXDU3pm6X0Bw0HvuAsmlp7ZxkpvnhzTbzybib1jHrd8h8FXwJgPn_g4F15BWAYKraOshf5XjkxFKZ_O_Jj0vKobfbwTNFX5AQOrv9ZDFwzkJj2FJmZ4OU1BdTF9nQ1ugpAyn3VHZ89_r4m144Uc3V5oKJzlp9D5GzsF4Fwa36pxTKBB0UP1Icua75fssCOQ7QYN_6HBVmvms1B-E66vGx2IXhNKbKrHUY5p5-HECjgo8F-7Q5czHsRf9jubBjszzbxJvMoUS2zezYidwNvglsC-fTK0A0UH7XXGAG6Cy-HntOe_BiNX2liKqOSBc60JYtVxucCycNCiLn_oTBol4lDe3wFGtDc89BwuO0eNNN4s_llqTE0U7vX_CkCouwKe4T2ik0jHntwEiM8SxnybjGnQP09TVbTdH-4IHHL0WGVztJEcVUQC4IndQttny7SCoph_AWjrWNTV5tntMhl4K9PoIbhScBy9CnJhPjXJPClupIaaA-0l88ppzSAmPXj9e4Lntjnmn_xL4fWHSBX3fNL3J-yUFKWhDHbFtXyPUvjZIN40gXtgfY7KSU9UtJ36eVBBJ4syL7dUR7zZSNmrpE5HMYoBhX9DBvB-wlICRTUcdZkIOCS9eJwG6DHO-MeA-kD4YtVTMlnh9cNZ8VuzSZ4iXF1UQPqjHd4yzD690_7XAmdjR5Hr8JdWG2ht1rGeCSE8fa6t6gJF5A2aw-XPpNpIjuTPkqnjr5QegGzEl9ABtMEwg2EQBw8bIgAyDDKZ4WMcfzfvaXCvfW1BlJ8Iv6S1kYBm7CKENttfSV9xsJ1mxh-YLSLNrFj0W5yoPYusLLOt8N-tgPdshCPrC-cSNWfraugiI0PhMs0cCFKxNUXo_wJiorRVIBLJVt8CWpVt_QHNMI2WIVAl7JETS9lIdapmaLr2Qv8SBpF2iAnofxkK3ABQRCChWm-DcEJN8NAMIzKd4ckVbWOY71EKuIxobX5wjg6xj0CClJe7_8nNPDisjF7VoVl9KqdPlCAdy0Be7PsZ4qHuEi7us6WFvhDkJuQNAiEHap-JDqppPuuEhiVM7ImYP1puUj0fejYaqiV9whJ6grgjAO4g55T8cpJscC5YeKkY80yOV7NUH1cFFr1J1_LWxS_szSM_lCH2g2anhJC8NU6RH-FCWx_-KYkM63odK6Yp1PUX7-e92BOAMdamWrZAQAZ_iYk-pXSGLvIusq5VUEsQDJrixPc9vO8dTZSHNZfgx_wpOp3Kn9MjPxCHBrtvFeJplX3M3GyjMIwzi0xaE2qwAo5yUbTuv0JJlJcSllKyi6AnvEW-4hid5i122Jw89nAbUhTl-gfk8cOuUn51WY5623cHOY3YOpVEZw94Oo3eF1UfrG-u7n6MDvepW6W46NIeXqV9hQTxX939o-EGEJb-Hf9VbFP2Ug-741oVmGk7_M7lANIH54k4sKtbNnSEssmy1jn-SPIP7Tannr_Of6O4vfCsxQieP9xf8XW-h-I4oTC8ojOwWR8yI-tdrDtod0Z0U4xonNkIK24S4hF2Jv-6ElcQI_R69McuQBpFKoVI8I-ib_8p6jKw5IkqdxR-WG0Wn9eOvbASIJQQI-cOz7OdqhsSgEo6IkMAgoOKqUFNeK5PA1bvjzhBbZz6lMxbL9KcNuxJYzM9aJBmgzC8EtWpU6dIfIO6kBBlSoePDJDQnMZlhj8bMD7VF7XCS_-ZCg74z34vWG8m3L5frHHonN9ypMsMJywYA74yCHGWaJcArrz7OY8UvYNX5rLR0HvapfsQoP5vOpz27YyLuQd0e1waRyXcLxuLZjNjN5Pz-zyG3NHvwv0XLeADbS_x3T54kpN9AuCkYeR2jZI1kQP9ZvCJFQc0fpIuVqHltx8CL3oUI61lAilu_gRtC6jQPGF2Iz8YdIXFMIQxVzL256rQHBSwl-FabtP-AWbZzRJa_Nkxe7elQop8rvMNI7a-OcIh1D99YDThOAnTqOYyIKs6eDiqhv--HW90j6QaWnNNaAu3REBt37sVpfsVxthyAoPeikQK7ZuXJ9KtIwEarJwj-3cgzyarMV7fw8UUCKk4LKRvp8KkG2WhnvyqKIR6Oy_63o-yz9ucdJxELJm0glfB9fFwK0pmyyFHrNXeHxHa8lVrTg6Plaf43UwRgEPgmdcM8JQnJMKVSCtNmt7jPkbed3CQ7Qem2j7bnk2S6Ros-4g6BrS3HartR4v3kLCN7kCgU3YRwVQCxlilTkeg912m598qZhGh-3kDEPUlqEaofRFKTROP6_sjhIpJARTQFXjDAXWMumQT_wirfJaKUtK_g48_x6lWYaQZQ6jVSnfhbXKUZ-4ivcTzbxE8DLKb2gBDCSUhgEKIychHpxiPLc7DxvW6PQUAxdP5JO_nD-biFz1UNd5xfPkAv972v5koEEOs1RwWHbSlyT-Q4bLexNFjphdjL2oQk-cgwVRWHKh9KFVUWovCW3p7un8rW6iYFbsNlSiRG0K-BymI2-B9B1lMjr2orrYLfnMN9_2pqd6w_C2JVkbH2CpNlxQb52hTbHlEuWp2p5HoIUPw36djt6K66AfxTUGHjvwsSfMmKenbgu-PSLwjPUX_9uKGNrZwZEiqQ8fjeZs_5zTROcQouxFw0wqiGUMGvbDpXVJ8bLyCvgzbBoxfW56RukaNfG48KIYgZJUdY4faCnPAqjTDk-f4I89RTcplAsAhPi9n9bqA4vGx7ls4a7jSvUIa14RnOgF9kdESERz1F21FcZWm_Ar0tM18oL5XgI0ERc0sWQBLFdYylR06RGRCzmqNSU8Cpia8jq1GgyoQbmKHHOIS9wi4cp1ddJzGhU-X0psizdNiWhYxn_kCtCdJQ_DAuxRLMvM2gNKzCKJtyHKuLhxp5tm3pkc267xaiww9MtSF8X1zocZmMVr-H2GKWdhG5FWV4yj2px86FkyNlw-nNSiJQWUVuDaUKrzOQUpbtcIATlo77k8Hm1l0uOW9Oy0xk6YCqVTiELtmNdaF86LYdKnhSj9zcJ2vmcAhX_wW5ZjJh8ZI3CK0P0yxv_Ffelsm0LcZJhUDRFlfrnDm_JFc84o4vktxYgVEeu7EqQ31JALc16l-mpDzqsCDPMHHSx-dB6lVuyAMnIyZaVf3fseefHLSLgNQkzonWvnjWfgORlY3oJjN_kw3bGwPRdETrX9ZZbJDpN87GbrWwdONlHAI4X2l-T1gC4d8ydQ6PaSIZhvwdKMadpf_FNY5zwUuBaMDhf2ye6iG1NCZ2q7ekYTi25MtpJxpoxL7HRzQgTts84-ywNQIOeTHtn8yAkbqqYSshuGV4sPJzkbedTABulbLu0r79y-bS5oT_hEPWc4CMBXMb6NRY0pGCOTwUs4DtXCZJV_AO86VKv3RqRy7G371ifBQ9tjqDJKJcfulBeFmbhiXDW1q-5C4uW68O1zM3ZQt2YvVm57x1p75nBDzfFfE1PB-EAKHbRHhezg1oboZujLfQtcq7DMoS_xdf0JkW2ztR5Gr50Y1chkn2qrGW5iZSb1-xL80Op8430Kwxfe8ZTX8kYcM0SkAKmNlVv50F5t6jXynjL_r5tJuWrW7pwjgLeXNoS0A_hKvW3o7m82brs3STkfpGH3Qa0TZpVnFi40t9wraGQNYRSUZVJSpnAbYswgWuG_TdaAipH2z5DneAtZWAkabiOEUxEIennB6esq54Fy83YMS5_myDigUYbBJngzFL_LqX6fQldrfq1WQakEzp4qIUWX8t-CQPMgK-krjGGqVUwrLQla8Do8qvy7MlG6v8muvsshcpMJpheHPz7-6kREzzlpks-1eZdypJnFssYPkHhmqz8YynGIRrY-0h1wFVaH478dWQ0kIemaIMJwmZdcAgGJr9_00BDpm88F8hKAeeHq4DjBB0uU0gk5MPT_8rRH6mKXoEBFv2eENbmkmHUNibne8P3kX16zj6VaHl4CnKo4hxljVFyj2A33MrVNLB9liNPgI05WgaZ_DO5F32bXooX6z8LxibolHEkGy_6BSsu3IFYXXhygZ9ls2p5QoDoTj7E8q33rW1wg-qhbDbxXs9zYfcixIHDP7KmCmO_k_ZnPMIzoI7I0o3MQBNGl6VgOFZwyEWeOHUNQOo1v1Hqu1GudKmQ51iapVfjPQnc01opf-dUrqP_8givZgOmbhpJ2h6OxYGHYbQ3iiljrJ6rEik13F9IPoIJXY9LpUs06dbOnDDcTj2d-6L_Lhp_ZQZEIQsZF2ZqhG-Rod-IH6xO30CxZpO5qCWZrchktqqNWU6FyASz8Pm7CQn1rAWYRY5AoF6KjnU7bwNLaGbiI9b2R7kLwcIx04jcxl1P94h0BtXbhK2j_HhBHKcv6zVVIoD1b_EMZ8GU05tfp63Xqo8NCktRIz23UOML_ORJ90HtnDwajAvAtYUiipXzv4tuX8pgMvwrL14I2CMRc8OmYSGPJWdyCvpdrQSKJmmhK1SQN-M3fdN3R_17q6D2Fv5WqaEPKET4zxMYpGqnrno4DRiLqtK7QgwFdhzDQCrG2Cb9rdJc3DNHh-_y_7gk3Ais0Y6kEUX9cG46uLcpmslvX8C2GpE9L0lIDCsc9kiLgliGYit_Npd0nil7YPqrep_y4e58rMaaWpw4G2ih0SqFU4DoIqLbk2i7aqRp5Zm-U6dvZFGcU9K5WOGSQSZqbri6fZbukFRGQcwWA6-z08D-Q3lKIL2wfbLgHvMYNHeqY8KGXe5nF3wzT4cLfJC5LEccBslrqjTeHJ6PMt8FN3FdvJH7TBTFG4nIwZRZPtdElT3d2JdQZf3N22xyYAWqa_l27xx1CuBI4L1XW60R3OWTB8FWnAQXqSIp75yq7vtdxlYY8e-vs2YV6dy8vtDbPYf4JeNypAx_VmxrxFvC8bmOGq3kTotzVn85cfzznnwItB3vy3_7xau5Po1kiZAMG13rfdkXPd97UFcHS2LVvfkRpaRNPvQSy-rVKOSGKtLvBwB005KoNzbB-m9FarE8ryjZRO-R9v-neUwlrIUrYjzreiwx75G5SIpPlSz2aX_FYqF116nm_YLMBkG7yPlgHwV_1drjTTjz5r8ojXdgEhZuSpZ9BTn1hUXYcXUk-6cG1MQXENp1loYdN4TZcHU6bIg4GZgdq1Qof4JZ_WrsnM48GbSSadlxV3gstVgetbx5r5yBEyg6MG8oBNnp2cR2V0CZ5HbTVPgskc98Mag8FM3H0RJP4B5feWNZFQYM2gkDYf0Q_GHyMZgVbIytszMJ17XAWX7H7N8mhFuvIcvaklEL3Jn90SQHGFqmIpTwLskiaWm_a7bo3KUX2UrditxkMGf0F2twgINIW1KudEDNCoHjLuyCThED8fyttK3uMxr5omfFbWj_IR-AB9Ej3vP0MfrTkQnk9GDhxd1CggyCu--JMdIQ2XXJLIWaFEOmQ_KlqAxl3jLYB_a8W9UcLCU321oIDFiKoE0KmIf-mgKYjK0YnJB8-ncaLPNExLvsFuwUiRH9SBeHZpcG08pBHoz0EOxJAsTqv62BObG1Z9R4yShx7O-oWdiyBqGHWU7b2g2GWGp3tnbXGuqs8NVK8qXVO4vElBZKJl0GYqEJaRLPK0GXw7AIFyPiJjy76ufvO-YlnQnHyxgRbNGcp9lBDDnKOrBWDnTN22w5EPcVAi1-5U5Wxmc55p5fh0Vq4cjQTmMbetwLuyJXwC6xyYkgOj1dK1TyNa7j41FWdZ1SoKX71wzAQxe5w1TjQnLw_IJ6CeTZLJXOPyKEsPz5Kb_qONbO6Kr9q0J4xr2v3VkcmhXolUl9q2PNtDW3tMU-zALYgiWXxdfk5Njwlpkt3cPzl755ohXLUknyEqLh1npTPSNyYeQbKLjKanqxjMxgqfJX7qQmnwONabE6i5DPF-lBUeqmD_MishvcpAw3Al4D667DRwkdllydWxH2NDy-l51kud5BqPdBKpys4uo9mjNk2mBNKt-zg6eQfIH2O86NkhGu1TK9ADMDY0J0z8j0McvRgjFJtUt_YjJLTSBfrDy3HzuAzyEzkGBCfqQjGY8yZh-fvfNmNwgaW4aGEKk2ZpTbDcdqjkJ5gpdLnZMBn8GDTzF-P2L4OdwcYCffJHdaGsi6mggfnoiznsqz4_UscpV10bJfxGtPDHMS4cTxf3OHcUzdIFW8oY_HDU5naCS2b3Qi3Zg6CVBAJMwoQa0cIjRhxbaGXiD5EE91o7CNmAgm8EKvl6tXLW4ejTCKgIU2Spsy6ffE_F7rSAJoVqEeGr19g_XkQ5OjAfH90ST3bU-mIGxvM9oQoj0I2p4VXMT0yJs8U2jMMEkGapDfy3rMPP8J7iaLPBmVdiUMdLXB-vUTndreIAcHdV4wG_-Nr6Hj6no4ilfgQUPpMZgHIq16aCcjxZlqSgyEuhWH-PxDsQM-n4hVrpFSA8m8_RHIZjDKvo87oFnXGdGb157Gov-aRyp4rDec8RHFhTj2IIkKkFdFrC4P5L0pe_fQmj4Jl8hULSLatBoktS49xCfAE4XXIHZazJ9hiXUgB-xCBObTaE5dyFWSeAXQmoOFYvkQTsphvX07ylFf0kcgilUQIwxqReCrYO3Bh-8UGesrhQieQFEcxm69HRlv3_vKJt4kpAeMXHT-3TT5NjopKWlN8N_-quaTKZ9VGQCvjfosWTZsMIPg1wGuch8WHcWwgjqPOGKX1sL4E4urwHCtWugMxZ9cH92-taswB_wM6wCv50pA2C-BAT9D4kGcRawAdYG2Ahwr9dz09W_oZGGv3BEIew3zbAd93aEvjTyBn-fQXFM9fJnbPVOvSW2J2Bss-Da-oLLF5mQB2Gal-VA16Z58O7LPAZooR24nt-COa_BgHI6BzADfvFuxd534T6XZCo0qdA1MYNv1-DUQk29YswiYcgw8F8rGxQQ9GsxWF7-geTFe-0Lfy0xKn16PbsDP-FFeoInrG3aF2jeuhJkdsCGK-tnPXMbS6Qs_b0rYHlZ0jdJnKSe5ctBV2boHdYnuFJqNu7E_vc0G_XGmEEsv5c3JU6T1rRi2Bz8a8YyGTo-aPcyQpsiCYiLyIODHnswH6QEvLEK74MC5Priy3oWyX2txx-cark0PG9FXHKyp-MmnDEgQhpQDjfr53KqCV2IQD1yP3s-ye5C_oJ7zZPR3gFYXAuKX44EkVwzwMM6CXmsm78sHtg7k1VpyR2nwsEOKsjzjzpe-tyXImq50tj8Rq40p_L9xfN3lAbgBSFwrqa1rnwzlCMIHae5tNTwNhvawX1E1PBX5Ghqfm3TR79fIinydX3cntLhoPUFwXjkZZPiuBQwAUjpDtO1y9ODo7Ezm1x-Xyb_GEAFEOcu4XPHp_XKu-Sn96xipt_DkdWYfyp5g4KzEpwUL9XNqxzBusQ8UP3T3GEN9Zmj3JmtlRfdZFe77GU7iz47EhNDZUjFlQvgJ-kf7JvCFUDWA1AMeHpXPQRHveOltragZwZgDzdvlv0H3p7yn69t7_19aGNERYTbKf2xwCsIWFW90mKouPpJpJiuEoJ2TrlibJXlHPLSwiuO6cs8HI3arfMtlIibmwEfw_kJOknvU-yiUqKwS1H3DSO4b9f-TYJxkHy3ofylTtconj_aGGyOGst432HJZmx3AClBIcDTaR_7XGok-rXSHWn47rZXM_uJnHrbqBU8zBGqRKLSYRvuWU1P5ZqawaZPWOmE5FQcHzsEkqFxqOryLZTPS4abZFlus-7EPo1jwNZIeeqO2Us6pFMYAi2mXRyBx187Ly0OB4A46T09z81RgeaO7L6QWqS2T_Im5M3lT0EEjJ5sazK4xlrhmjPyQy_YmxB90nTQmLmubWY1r8aroVDiDd1VfHuhrFHgfgMteWdhimWZ-GQfrOU6_6JvtVS2ZwuvTme3EpqPyV2jSFS6s4sKnMPV3_3jKgWPxxppRR7ezO8ZAAI82kdeUEsi757xVSBJOm8MXxAfxZmvX04tWori-jQMM2dAQdwlel9fJJBmz-XPWvC7OhZfkRzZwA-TL0sPVXjLwrfeT2m70LBAIJjF2eP-ZfCNz0btCHoJnfnNhy--1j1O62moj17rkbDCln8INSIEmcAUUYxDyiD65SGjgmnyDsEg8zqsv0i2WY0tNioApRA0nf1UbiLOBwAJAbuC_BGrGH8RP19P3oTTqdCmxKi-Zw14Oa-hryoaO_XqYQ899NCknbxpzyDpuKdMn5HncgQtKcJyixIpxJEi-RsWADm0pO8v4K_DoQUqB9oQ23WsB4iw8T2iFzgFx5R7vAxViyD3u5AkfWD7Vg18cqSltku63CFVn1vvU2FlpJW700k47OR8uMM9foOAD8Je9asXiZ9lsA3z2_8SNy74Z4U-ifJBm_481jOhC4ENIT-7R-ZMcnwkAcQsaTO-3PSGxNkMp2L1W1pkUqjlrF3BbhlS0TuLW7RddR6sD17iC8tZAgHBVuK2be7wnsAXrb3u1o8maNyX-NxS1viRaOCwNvjhwVthj8WNXLNDM7urHqRT7cLKSihTAklkuCdlqfn8Ur9ljh45xKFvxShSinFSnQGB5aTInf6tEMI0yxPi9s3jMzbRdjHFReJ_8CzhGAkW6d-447KT2MO1rJBRLotW1WryaMQtblaHPjOK_8rbIcP0BP6dShyIjfCPfgZP9pusvPUg8p6nhuVcQhJPLERH_G5QV9azlbyYEs_3W8UuumIVA0oV0a0ISiI822_32_5S_U88VQi4KepGA_1uW2uc8I8BOWn3Ec6VAaGnHEwf82SCdSRR3E2YoNBGrV3HGetneeXUKvc_EZoaKjsjfycugCk9J7RR_HgryaT7REsoVT9t-I844r4H8QfY3bWgExx00zkZ8j9w453cZk0cmCTWt6tEifGE2IdmrI1jDBoTVG87Kg1uuTZiTlk2aSi316liqy9jxj-YTBHEdX2Kx8qO0a5vBfFDjwDMKtGmKWcvofTYDkmfYuP4Utke31fg0c3-ajUocersqaDaCtE7_ebebBtOd39EcW7jM0dtBGJWQ-hoVJxlW2CCf3Ijd2b7K-DJA22HKe1HxwwMBYUjE7vx8jDkHahnWeT0jZ6qzy4p7cJqVHCFz-q836dajwbvz9NDnCrRu2l5-FgZj75Hwdvrs7kcYppEwK3yu_wQzrfMkcFhHQEiLeMpcFoeD9b1vL2ZZE0C0FaohJTtRgZwWTuCJFd-0gt7gbYQKW1x4AA9kGGyvPzvi2Oc56K_UTPSTZkw8286hQ_2EQ-Zx4bdmQV4Zx7OuAvR9E48FdWFzJ5viujP8f1Y3dQfAXVfQ2G6rEhqRwkaOaTn2lXR5GV05DRxWWiCO-FKxkyt4Y90fKCSxXpwKihg-ZgEh7QpXnOyvXq8KcPXyVIAD35eX7CexJiw2u5SUIEKQ7IxF0VyMcgOGZ5JdFQwYXE2AjKcqgx2QO2I0FM36608VQ-0nvogzX9qBV2u5gr9mQ2oF7Cs6nEwwKGRuRry-UzdVDTi5LYTkBKXLNZrVEjl8WHFlHUfMdyzHEzbNvrmN3bE0KMpN-NOsZQQqmkUVEpX4gB_3lNHnnYy2z6mpFJo7iXD4iPBfGbAaepRcDGGuhcNTeH4HkV7pbyqsED8fRqIILs07pkANoRSSh29uw0cIw2oQlKSTeNEN4FO5EEezXkUZyK_0ScOo6312aZhm2hHBxW7HH2n-_iquar6t8gAIoBj44LO1T4fBkgRQyLXbEJcBMMn2I1cBdliBvrbUjySINxc9kO4s-k1ua0psvNENuf07cqvBR-D3G3xlivgG8FXfBZVESAeUhzabtyejlZSy11zF8D7L42EpmhyhyKex6wyea9HcrKirAcI8qVJ9jGTaFzCi_Y0N8pMABFm2QnwGxoxTMkWLPWAFpOeHPk7feCOJEX-Bx5ODnXvVJpnzprkhKUsQUWHk_raP3qDqInk21A0cH6WU0UxFVHE21oaeWt3D9irahNj6qjo7jauTZmHhDtg7tEInEbmd1BVNFlVFHP3TqZa72lsQd5ExwaM-pYPRm9HvLekWKOmE8dVWvK4sr5i26u96WLBxPzx4XDNzq2hniUlZ0KKWjeC3guQEE3XYt_zDjmpeuKvrQFNgMIDRAmh7FDxkNJohLyChuxhJDxI0cLLfNOg1VcEYPrcndhwmr00qPO7xo0xUX3UrGNuBh9sM1JwMirJm3CBchMxFDLPtnq1S8hkazMfMGT-voNouYrMTaAQpFHddJnHi2alRzZ6s3TxqvbY8auyyVhsNTWjUsnoA86Nhksr0Sn7DVhYZ72f9ydeDP-ITp-Ja6zpwZb8n1_XrIa2EVTKfkgr5_Ycp-lM2LLTQl-Twsp18TZXd7QP5dPXvzm3O9zGI1pdh-330tEaShik7GXlndPBAsF7fZbIfRzzUpzQ_k-Hl4ZYTfwzyDNQNF6aWsk85rxAAq1iy-lD9UgFj_4qejiEAiK98FUPtHexTiS3WQGs-jQm3H533lTA3f2yQTNtD15YgLrh-sUG1BfOSYymwG8-3bR43NTRyML2YF5aEHGReM4iW8-Q-h1rCjFFg1Biw76QTAnGnXcAWl0HFlrbVN8Xw45qJz8oClox6G_UguYSZ4Rnoj2QBnZtjngzfvPHSyBy3s0SUvrQvifTygMU7MnPLLoGAYVjfg511K3MEcscYSdPkKM2q3IdJKSYM0C2f7NkEJfA8X-0Ipb8UyStsItugSeY-ZotdqMK8ZopTgJI43mXzx6x8J7mVXnzF4LpTmmWeJuSROhIUVrDItuf3C-LiMWCa-t10MMGT9Q41ujYJDV4_UpeWU5xD3Co1eBpYQBuGTx5XLVisY4KsIiVM2VYbJIh5t49GvskDi8nqA8OoIBvzn0CGgvR3qUi2SbwELIpJryy-0aYtWA_NIrKbH5e_BpjVYG1tjX-KnsFKz7n_N9Ghd15jcX85Q3khQEa2Tu1Ij4a2vtcdyjPBuVCC3ov89QpOO6n5ndqw_cVLnBevqtcGgDdXPE4GLPNhqlitTsZ6HeCirIfQJstEMFYNtmIKS0rp4-VVq2jvl3CJ_zmBSj7wZ7l9NJAK9vFyhnogAGOXSWqyNk5GAYS2Ne6uEB7m7P4jS8MD9A898hazPV8V9ryrVgWgnjgPzyEqDKgMhp0HiYL_LppHQ_1XsDBqEWYqZCx1vPw3_AKIVb4tKh43DCvw4oljiTBZ149ikuC--zM0jtnT1CrEDsV3WNcCYlAy2deo0bwQN_F0af5r7q4jmf_D7_i0h_SVzIi0FDZpiWHs15szi6iMLFN7_Gh45mz1iKdqF3QdMhd9Uk4q2VYSOR5vc1e47_MuPYg47BUCEGCELLjBMOVczZ8rcfNPsU7WWpeyEdrMJTDHKcnoltKhSRY9g4hR474dLYePlrqvupgw-xv2EYQFf35tFegl18Lun3Vwa-FVIC8qy1c9-oDALFbouEOQiYn4mAX7cWX2LegDZgv7eKtzJMJnxIb7dR9c-m_WaVNcGQJHO_dt_QLMi_2C0gS2bsVm53h21FURpNSp6Hls36qFQZxhnx4dvEhEFmghZjjRVwLrq0pP7XeeBFDDUWWE7sH6jq9GxaKZXE4ebZ-yqT_aUDqOn_JTojrXO3l9saw9ApwI_dNw1sJGwv2remdmq2On_bwoVe-q8TzGqRZCytM8iHRPUS2bo8-4G5CRcT6UNBwOnAZOKBhv-5D_n1pVQLtckpY3-Fqfe5VvOTo5xkb810uZ_0eahgjaA5U40odEPWioU_xubvcTCYTm_E0E_7r_8SC-pVtWXV18gPLlv4lWzp3uTQfTXsQdZ9ZMF8a1eYGXizPJM9tQPrA6r9q_w-V8bPNEs8hqlnazQd5uQxKNMhmAIbCZgxEd1ZPnlJYiC8FU3oaZbC-Y3QqsMBqP2b2X0Hc-chBtYJY8yhxpTpMI89OWHoY02CbDUZ9SXSHJ6fOcW9lt00N46KIL8F14omEvPVyocL6ITjBioo2F1zIwaS_bYQvjoBUmnLZD9k-_HKEZPXh6TBpta1187wSauaViSfGN0tIQDzR1dligWWNQIUeNQ3e2Z7UfQRZP18uxusa2odmBOJXUDr98AppX3JkR57lhbKX4r_Sj39Sa9Vkjp2AnkRlgcziIdEF4kuGLfYA775PRbTLCfeNKo8xGi22vvBbQvMdQinT-Tzbg8w25P2c2qUxxLPYXiqncRrXFoctXZyt1FqqVWk6G3APEXXSRi98kvFEOVbVg2bouOmtwtLwFnRxM8zyb0bbm7BXSAqHFxgAEF8Q3R833mvfjiMSdssbb1acQ4tobWW5n7U1mTIZiu2mQyQgeuNME7r6kHV_jynEzvIX3DQcMwdxJv13pXXlt4OEcxuF45GlA0nuaH2USIDlwgX4VJ4ajyMHKYM35UpzNrqm6epDO6fz6wA9AI6pC_b2sVIB-g9v1BM13Fm0YJN09ipqG3Fr5Jk-wYS7cAX1GP4VhG9TLkCOcozbAjxrjWGe9AUyTbiTRNMYaspbiI_A3NFCBwIfBA25K4Hw4yl-PEoHz_7gQ9mPkZmMZy4pMohwLokcPYgwNSrKwwTIQYYVk2O6haRZcKFn9_GJAvXX6ARLq-x1KsmnOdrXeK28K6p6m-AWGmUN85GgUjlDPwuUFRY8So7dDhQ0OTnLtdCAuVWO5Z-dsKuKTAf806YEy4oJDCD5I2Wo32pELrTl-kcKlNN3qZWiCZ_wdRHBxzEOMlC5O3caz8ak6ClsuuCZAxZemoqfZz9lPO8_TZZqGElxmwT8cvS2WQ5ea9j0JNmoucOBzTYa1-XSgVBHRmtNYlJKFRsl89ESnlI4XQ3lBpGtlrDhnpEW-bByKYmMw5uqPzBCcuekXtDERbngBmdUxriQtS5FylIoNDGE0nAl_wwosyUwAUSyuOW15yZyKR9Op5-JIUiVumfSEf7pfYe3vjH_8Xv5BHt2DPzafS47UMxpRvSN8vvu92okdPkq3_oLwpyB_0LT4p7-zi6eUD3uJqRHl0aM7K3YowyUKRBywSj9ISW2Yunvx4-5knCuA2G3fMkQVJn-dkpandn8XlLfwM2rxjCvqAkg3LL47FpOOUTZBnozy73Xe_LnsUZFeAGdxzmYwMNucWNkTRDwCwhpSOrzOFVnGvzj4dmtY6xkGNRCcxh4Shit96SkyZrKaCVc0smMslEz9MHQ9iEONF6WPek_Fy6M7IEGFs2H-YCYEfVKkzE6Ngvcd4w9dRbCvavha7242UWn794BvxTbZvLZOEPEvcJgmZDejtWhk8t_0cbns1dGPocD9VDPAgETeK6lqX5rKa-V2JEgKGtYNiahvy_JJ9Jp4dT6AD1n0SnFuqWSuAK4KHO4jt26jFoROBX1wfeRWy32BcJ2zvmeS8HrQNiDhH9V2wnYLw0Hw7t__n7Yd4GNhySebRCX1Dq4f08mBvnaTVr_6DD7v73rHNAZesKjeyjgEN73_-btwSz4hvNHfIuzdKbWI03uVdo6c9geZ1AFcd8VWzlus4M3gTeHNJR4bYWhnHr7FsxlJlPmwTG0R8E2pp7Q3-DNCohTsHb2eC14p2RDwGBLO1FqVHR8Jgdm7TF8mfvQfvOXT7Wui_k5FDeAbEBA78dNOYYom2KxSYW1x7Wv5C5bsxHqL75B2XCF7yGkyz3bSWRCc2FxOkc89i-dXgnt9BPif7nJEoJOH7uDMQPuv2tNd7em-c1VMp9_ibg7OziYFz7bnJTqStBEZlDVOqL80ZoecpOge59cy-VYci8sxVG2x5XUQRXXVhvbGWk5vg29qVOUJF40kq1WOm99S6ks7Dn9lPD7-PHXMjAXDzqYMlEv8AF6pm0i_S0aCdqzX8yTQV7dMot_9_VH0FyDwzOqys45zTXyT3zf9kj8au9dDOFKe0D4ZUjksEJg3BmMYwHQ4ra6o-gDErxZIEqKdOFlIGwzkYPHjVPiL57-gcMifKRUfsS3G1rH2kVGx9phpeSr5EUeCNZEyYiQ5q5TvritZAtXfSPOMO8KWFhwstSy812cTJ2uo5ReTFENXAk7YtcpaVbABLTTVl5JFS6RunEhyCbXDD2gc7ivXnYG-x269DrQlVBew5pW0LWcTPHwZAD7VK0DIgadzXfSE_Wb-YJ7pVgGGOTi8E7uEKgFPs8zpBKhIW-uzCWbFWlpWK72oAYdWB43RKIvHFOPdXkrbODwIknhU_PxRi9n8MT1BWxR4UcI3deEPPTUmkBnITmpch1Ke8S-FnwBo0OPWiQK_Pysmx9TsukxCyZLI4-Qq0NNPI_2-D4efVPIjHaqr41CdQsU37f09oBXzV6SYM9XanxDGWxaVQckZUlflNR0ceAz51OoVVNoBmGxrcIvaMmGtoLY4v-OjTD-G6FXgqndlG7qMKPonTcc52JmOz1RUHtwTwUsWEO4yMZR3Kx1u4-LfAMScqiMG7eaBdjod7dtNxpQQgcjjttb6P4ewjfOFBsh5u987i4zhoYlOIV-I9IGkXYW3agUInBfiFCe79K2089t13MLrr71Aa3hA_LWtgil287iWGbSJjWb2I5MUmmd3csvveZ3f8A9G5aM6SXePp2wBKyF0zkfFMxG38pcxs-zl0uqozEgm_DRu0xuIe27rmCQgQ2f-HboRthIK4T9EWUpWmZhSe6mvErBIJOYtVhdnXv4kPnZKP6H2yRZnTAx0eKw-I2xvrFvLN_ZVspRYA5HbXWqPaBEyeC9E12Lhx9vMY4jJPTkQwpYj5XPTH3hsY9CMYxfL2arK1tIBn14e2V_KKAJrmiKEwoVuVqeZ02u6YNzQw5daEKMlSgDHSfpkm13IbKBM1BBUtCM_qZlIaNF_5soqxySSuePsGH6hELa47cMqykPetYsRtMWuVRw4Wo16T0-ERyQpMAkwnKdTC8xKqYPb5Gtc1FgM0jSsAtB4GxI7RKQoPe-Y1WeMtoJPrrWC3y89DMqRdaaO6xQapvD4RtWuejihtrL1N3-xbYJI56hOX0T1_5-NuGYGp_nKn4vbLn0TS0AICHtySi5F_pCFdmcJhTITpjxX__DDBBZeTG8TXp-clcpUuat_OwIR9681-1MqLPZbLVN3OnFbrz_6K9xdrvuMYOHLMtwhobR0_yWs_gW6jFjMTmJ6v6m9T-5cL0KCoYLJCTUjOLd_1GlRESqOs6hE8DKjvBKZXYOaPvldnLT7_Jgp-WZR3Re_1mLtVfdUJ73PIy1r4mUWzD442dRFiys2BKqnivitPX2lHX7OnfEv46O2FpY-N6WmMunnTIw7dSBC1LdezFqbNzCKySdq3ssLV4EMqBuzWuDD15_6vHHAHl1Syi0ELU2ov6DpHGHvAUbIsv2i6tr1fwMLZhTCDs9AFTtiyuvoCYIiclymMCWxz6qd8fd1hu7VU0oUTw16zYHruErWpj1SnSYotsT_WgrwHx3gWZu7KxCmgO60Dp7XLafQqeH1COmeW4hx-_9PNfBy5YuCeeTVJPz7eSy_2a6iOGGQiWJHnF4re1-Yd7XmgxrCHdmZbMHZBApxSPQjFsmaqtTwwji5SapGa-lLxhybcpEbGWNb8NydKAY4w4Yzlc8XZ14oUc_HR3bP_e7wKMgieXlhGR9Woz_qotSZdxJ9gLllRhEARFAQKEBke6S-LgsxMEEv_aVwSuONzK-9G_yTJvDHnMufNLT3kMqZkh9xvSFbn2ZIcDKDutev52YhxIqUeUmYUGGiROYKjSNH9_MsOMfHHJPbNhVHi0zB94QkarilmODduVstZMKAUDYhAEzf_9hxvRLExgP9tbPnqesfxnylMImthwm4rg2Te3j41zpOvuqjzJklwENXWxun3b3gb2yhPZuy-2VZc4tHH-e-v7NnyNmPMIZJwHnlddaO3AoEObC_JQTKExbmEjRxGCNUT7nqKfM5-v0WxtzWVyWyGxO4U1BpOfUWbJvc8gxhUIcJ93syMLDdDW0uZ-SG8p4ksLqzNujK4j8w8BBT244f9ibQ-n1vCPf_TZSZpNrbgSLqiws8nGyBrgjfx3ir0s5CNJ8KDWTRubcZp5cuyvv4cBBmpvHHPuix2NPK__FGUSdwjlnzADh4Yva5_jHVrI9ZFUa60Tn6wwFu152PPJE-nEsAUt23O_9fCBqKrSXJEmXN9foCLhQ4zAWyy9TAd2Kdzhxdq5GUvj5VZbDzTVq6AiEGuKOd4ebZ4wcetGiNUoTJgcw99AFNZdDzW2tdNbafgZ2BsOGLNYAXmKy4cTWUfnsObduXXSht9kftumQAX2WYx_QzCEEEvU-Rq3J_ooVyl_7diPyA3Z3PjJy-ZwD6nihTHLCSlJVEwLByqw0eqsmKalOio91Pnr-0NlHuf5iKJ0DX8HG2pHsAib3UaCl_hYJmuhaVh40kKwbeIs1kPsg8VuabC4saVdcVQRUvpl7YZ_FSSYr335Y-6DyqSx4mo9m9L7UNh1XQ3Cq-da1ZD8i5_6ThJ0WhzBWqhvs1emam3soMwCZSdE8uHkXVWJBovr9L02qJUKHo3VHiCFcYw7SA6wcVhGZfdrhNNg7ryN96UxrVLHpMUAForFoPWVvlvalaUKGuwv_Bl_up8Ah8BclmNyjPp1io8bAPA7PkWf3mEoCPha479skR4shoe5TOjjNxO-_fD1l9DWvbvAaLMjjb7hy141NUxpxlGZVcowvk7Q1LolIeZuuiAj04uYEXltWlxndCCFUwjNahTp7AVBSzElGInMJ_sOoYD4baEze9hrd_beencgxyA83E1PH_1mLRYfH6Io_HdZSvssMprR5d4fk8uYNgcdiUoXtl1jAoqDqTcGCT_Ls4quu2ImB4mXJxgNtqDtZWPaHFYjo90PiPLKfndRnaxnmz-gykXg1v6PGADz5lpvPYJOQA5T62qDWt2j1i8sBZqXK0CvWPlFCu2W7zjeFpoiNab9LkYPEjuWv4NJ0IQadwysUgaOauikPhAR7g0fBoy0ARa1PmKmrv6OPj6s6ewP2pOOfcUSKKugDj9wf_GA73II18Q-6MeQU6is0sMvcYakdPExrRCxdFzE1Rue1MKrqIYyDYBZdX79hCuAPge9DPDyze2vg3jurfnuZvQ3eUZecN405Gw-PptGZbegx9ZBTykD8dKoPkOHAMFlTmeeDa7bQAVgG8lqyJ9tNq9ab3u7VIeIr10tnyBLKCB-Agq0PzO8f2Van1OueVfmON5ktbgWOLF2bR9qVFb-wepRATgTsT7YMzvZucyI4EE2zV2Ikes3pkoeve5Avr9Y8k6ANDuQt1jkFlYuQHvkNVoWW8iqFc_yzCeBITbhbqYjcoiagVGZaDJPQjqK037UFAg_aGIFWtjh7ow9UV24Bg4OIDXYslGBO9w8fo6pYq6BQWfOXOJ26Z_kdZNzwv4LTjd3Dd-xp_F9mQ-NBWjrCLJcMzTg3rMRoWkB-L9oGtQN79G3KNwcxtH1TKKNOrgOeaWuTKih2c_D5W_P8XmgTphFIaMXdiGbp4rMf6fObmflQEU-ZLeDJ75Ks6npstdgMrU-dDXNSsHPx6-_ft2FREGXKxB0iJyE3Do3SzVL_hcvlcsJieVYuLPPve6jmhEhmPu7ymApF_p-DQn2R40VWhxvviLZF2dBpfJ9sMmNhAbO0G8el717WSqJq-dunsV7dgOyR4RrV2fGDM7mB4nDpAp7cdCdLfi9wcxcunNCi65_uF2djLgbs-9do3b9bT3LkgHItFflnET-j63CEg-f5ZfUMhuwMENNb7aoiuZYzOAcntM6oGrLiBkff7UTVLyRmtYU-UnVZreIKFkoQawhqsugq4fPJXPfUVYwVs3omQU-ptt926TAyws-UKCAjwUnSbW2d3wF0s0HkdEEog5SYBNtjsYvoPmQycoj7cyDzMNfzs4dzspNQ5v_bC-N-sLr5oVYP4GWdG_BZZSIFYp0LeUZK56SoPFQlQU_qC8x20AYmMe5q67HIsOyFeWbhUaB_gbnCfjud1gWPjbLouEuFzR_pzx5S0G5xti1y8sEDE7UzlAbo2xD8X4uaEkFQp7ls6m_t6lU3JT0uOifFgyGSFQTF2UhN3lWp3FnpSgxANkt2KVLMkIHyKiRWNHMYo_MqEYvaRiqGdCgQbhlCDIpEju0sOx8gm6IgzJvwm4qbfeJQuCtj4liE1A2crHsN9THLvOrZ8Qz0EMKx-BwaDBdcCgGeBgCVpsYNiFHLHD8Xm6Z8ISz1AOxl09f5zNlvBCPwhXYGJhWNWhYN_IJjIhC35HnX3n3udTZTIDX6_VtY8n0-3ifk2GNXwJ7C1qcBrKAyuirL3LvUr6c7v7aOrsJKBSjfchMMyy_CWqMEOUiE-nhVToMYmqoBDifjuMJEp7tBoIdKbPkq7EKHYVAtOfiluGSWTfotBNPXN_XeA1Yq9o6xy-3g9HXeG7Dh66tMpnp19vtDnDNOpP4_fLB6iFyQiHMaNeO5v_qevkQ4y7TBM2q705Japlbwerheh8O2I_OpYrettwTzdnFE20_CSNXrgEA8XhywsZIPmJ8F5YXkys-2z-5c18BkNQSGOBhSlPFVDL-FQKQgdZudZdCIZZ7g49s0NPOe9qKVIEpyHOXd1QLs-0b4_XZl5cFCj78vFvL8ETExTzHE1jn-8yqiUGgVyK2XxYBXJUlAF2puZtG24Vk2rsb2ALgWuYV4VuuJT2js56N7bNlb8s2XkOJbIXugicafV7a5XCK83FeabWsD60dVaiK_JFt75nizN-fUBQf2AL8P4RsN9oKbnqmZWOpTfyoStAR8zXAeZhxOnHNaQrrcTuWHWXC9jRR9CYGVqVDdaF69ZNMcINFmX1ND29JFTx5k3s2-YV6EylPhMIWSnbkfuUCBTpwOx7lqus5MP9PVpk7gD1xW6fmYbbcqJprVCrfIUOh1Guf3UsyJ9kl4BJuWo5P47RCcDw91QSFdhyaBI0s90kbIakLKJ_fyMZ4jKHtXkV8o8tJ4e2f8htGA46_VFJUcJnwc19jwpVtcfcBGeDEMXrGzWncLdhGkD6hV5ThPdkytGHj7HTGAovAejxkUUzkjWoPMp8tQgJohuGjhZ0GIF_APKX5HdoefNqEzNSZP3KXORW5Fm8NIUBuW8ucYQzmro8AwHA2rStgQanrwgxRlSOb1KJkcF_ovGsodeoNPbjlCI1YQ_yfeUDANKngBED0QD8-ybUyWrp5BDHTI3a9f99eVB1IOke-upmWA7rYCgHnzqORD8cZGaRB4tes_hoRPbBTmKqXGnyhCv1Vxp1b7AQsmFb0nJzd92qqQGBfe-n9QB0Kf6KtyIdlGmbq7H2gfyewyaz3VjR2IIDI8IsDEK2sv36DQyDVn8JWM6JhwEGK2Ch_RXHnImVIrr4WnZ4Awwa7rk4xWoOqjmjWo9y4I9MefYVOSGpB7XrycvJ74DvyPllKwAxIinmZwFkenb_YpoVtF6k8P5WaR6k6N5w7b_8xE6_--G7DoTTy06hRF8RkYAbk_DtWv5De3G5o5nKxwGdTT1R7IvCmTnI1IiA7sgXBYgegWSdU4moyiUJolBx2aX8yd8I18a5z0cxo--IUintjUEOumjNCmf60JQaIvhJ_QpYbDfb48ARtXbSbhDPZ04mo2dy6qs-Co9OFpLjcPTaGQJf5q4NILI9DXDJjaxPnWZMXsc4tHoUxBsSkM-R3xSQJTuCspGPwKPRQVP8OWyKDzo5GkPllImA2IWmgm-aPd-laWRdjnyqtbKlJlaGlDfJGKAG0rfxRP5nYGjP4x194fuxKtPy63pi9KspppV246zbHv6ytxHvS0oC1gUEUCYAYXwbi_4dozh8qz63yyxKXT2N8xl_fUz-qjApOhlu81XAaUYaNWpTHz61iBhc2KHxliMuiXOBoVGA-aBQkHE0Y76jKkRxUTs14KdA2_unC8x5Pf35zUMBGelKREg8THTzcnOYq3DejucJq0ojcqMPluVYRRPiyFi9Zqb0GrPH4gM3gcV0UfYEVcZPpftIBktX0VRa21zEGScxWWMh-LzAaReFClstW5jxV4EALl-kvWz9DeLvmCuYge3lrvTBQtAUrFYSsjG5MCB_vyCcd-lqmQmLuHTEyTaWzo2XL2xmilb1qp9Q0BVYg_POlN0r-PlhyLa8rUTFM_YL4H2RHl2fMIMF4woZF8FC53HKb-EwPn5gkRUgzn4FCkDTr4cFDWr3gYSuBVPHWhak556t4Af8maJE5kue8eM65xAhHoezz-D1LzByBarcYsz6WzN26G-ZLGigXu5VKgXqTVTcv-tLyUtYyMEHE_3ICKHipco4nMq-oUO6fxyAcm-9DwawSI1OrTasEcXhmTExfiYc3qHNCTg-JTudjzQxtVQTWYO6ABJI3-VP9D8ztBqnV80J9SEtAf_EEEFPVj3pG9pUBLJ798HN8pIneCLYA-VtRf0vMCjw1Voz-ZoU5UXeX5UtrX6UeyTHJEDkehdwBP9qOfkUEzUt1gO0jFZ0Ce4kMP4wxhDufoARBfdXG-CwvUofQ0miMY-jsm77umIKfDvQvOa2-Sm_dwaNib4cSuxwvhM2s7Igfg7g_G4s3-2lZsxJ4bXDDRU5bVcnyAhVsTgXs6rAqOgLFKvRFtXcNr9EYDH5053mFpC2v4xF4-uyVju0PWKZ8NPPajaHxDX65lt2XBe9rVIP7PiMpgOibHl9DrTjtk5EdgqGzvTqoPx8XtFjIGLQYRrxhO7njZ0MpKH9Oy182wJCNh4MDwahOSCGbfR2Y_RniNZ5lDiHYb4EWfTByuX__9iMDz2IwWNu1ENjWThmQLdm39dTsDK6CCPo-TTKk6r1L-GAn2Cmj1WUjZQztouyA3ydVr4J3fQDPaPgqfuPrQLZIgZ7VDXgQUd1M4eFysZLj6ZnYcHdP_2GVfApUHJ4DLNkjcB4JOFpWgkETHcoftQNjG7AUYmRx_HTzqri1UeDJE-tqADIX7lco55UjGU1jxceX7W2X3G6tJ3mw593eLP1iESc_2RUUGQhtsBgyI614b3Wq6xVYrFxOv9bzGhrXQuMCqIy6iqEG1fAAiODHNhSMYN6_CagsWBcleE-L9O2aZ7bB-Q1gmxnhDfQyLEZ3u5CMP2k-U0xdhoU77TiAypx4MepIqBzMNyBQB2A31cxLgh24fPk6Xayy4F0loBZ5VY9-uQN-nqGs1eVWnWdMkqSgs9dBii9hhgXjtixLnnki6Cx-vI6FjDqWdm1BKl0gtRxeR3GXYJQnx7o8rJoXYyNf72AuezQ-m3dMKkwWuoIjWomKoz-fNARMpndxGubnAZaa-GkTFsbzNsvTLvznO5rdJlPn14XPABDDbqUQL7L1aN2ckhImUA2b8SPCzXdwriJvLaQYpRtXkq9CQ4XYYfphin_kkHcgAr_ZVbeLOETIyaEbXxs0niKJmDHGDqdNOVKpgVtWFzGgfFBJXVNhY0vDc1qs_kfWcNpC4keN9EGyQEVezkB49l5LD9v-Y2Hdd_Yuv_44DQOJ5u5v62T1PZeSgLP6MO6EZHQ2pq8Qy7TlpPEFI5YUpNZsSxCZeFpkcZ4PT5LKML8jvbeqyVoFcz-zereF6HnLVJDUUD5rl7e9uZpz2x992mToTukl5Dj0fUxH4UDFhFBEdOA2za7Hy2m3WvDdj-JwBvz-6yZ7VbWPh7ye4K0SgVFiQ38UyDhdqN08TnqC_Z9my6jScGbdya3gJTyMVLiwVHRLLyPghsWos6cxCkSeFbknw31ZPSCtsbAMvYjl5vDQufhZWzAsVv7T81q2iZw5EH1bi_vCX9zBHGp8iCBZhH2h7GfNtyJNVXwQThO29oaKD6qa5JOv27-QCf-eEn8NdMyLatjqq0kEsxRWBqoz-zWbfOjNJMPaftSokwdVKr9-EIH4Kg98Jy4XV6J6slj6DPPdUfPagGmrNgFtg2L29kz9XgeIh_Xfg47daRsbCeW-ASSGVyKOD8tyyC6SylyGKJd2BG9JB3_ioKlgc0Dktu1B3GG-WyqvUPRyy_B15GpW-5yrpkaIfJu-Xe1H4HyQonbahdMxi5t1oNHHYmy54-tkc8xhgOAB6cUCG6JmSHo2aRTq84bIK5uHKNaPXzyAAzo-uI7K6w0HYaqmqiS6EbDFctGRE061MGxRAwgna2zgBt_TeasbPwaIFFO-V4IQjj0CvQyULwnOXU1G8fmfIoygSm2Kyg2hyrI90qgTlHwZn-RyxlHhFfaeWWrHHtISlyRdVcpD0KuO-qfh91N12GUtj_5tokgc8dkZWRh08I2tu62adcam_BWHrhe0fHP9lMcmJ_gs_IdyUi-yrF8Z-8XZu6lqA_rXgP4Q6AgZVQ6v5cshY28UG1XidlaIVRBNC2pBiHNE2_A8b3s4Hbz8CC_5cPCzkWM7srCWq4fXXfx_-Tkf24Yezg_rTuKVI4gLEP0sMVRVUhPtDSzV1yU5HnIvph1_IrsGnQRSVb7PHHri6-jlsHVxcnsQKZYC-VbnMQO9vrLJaLMAJ3LpiPx6P1HyqqVcU6oi4maxYSqCh0RQjl2xA8ipP6Y04vnUYmcqnGckxTYIFdvuKwk5PV3HzECtPulsqRpVrwiTeVH3CazBDG3syzAygtWvyUXSvygDc9nWuZNKwl0o5rvq37tn7q-afNX8z4L_O05KEXoOWV3AZxNypDCugTF1oTasBaRSKkcMy2jP0qyqQue3EA89_Pt3YrITpHujm0Xi9E5roMOI1ienWm1vNL4D8wVjSe_QLG2Wnwa57RugcxlMIzckGr-TKO4YQu5AdoxUG_wfDcb_unee1ix_fwCB05Zxr0fEj_YaJthlbfS_eHpvtVdc9EunikxRDq0eMAnhUNIG-qQXeMLwYKc5V0RZ8BJOP3BFUj35vWH3NGU0tQ_3WeBgOFeI2Vvsaa-J3nzNHjsJxpdrUtqFUmCyV1fwxN_cS6bCUJ2xfbYeZ1OAv-uimkVDERLLCWnXRv8Kx8cru2IQX2MiTbCrV8Bx5DgOD2QS98ZHdTRDID4wy4xHIhzIKgi3EmwAraYZpolYm-f-TBNSK8yx54MdCwFLaPjRJ5bSdg2XqrmuYHIyBE05cRueniIW3B0O2xZqB3fH7IyVByC1hvLEgnbnWx98EW-GLuabvaCHYAXwwSCpJmJ9IM6q1HAADrYtYbZjHU-T3yQLYma5z0_dy77Z3yETH0SX8avSvue33eMrbbwsgerTPgOJycVcSi7xTcjKtV7mxp5z7vbAUUO4ZdXQIQ9LomAtpZ-AhRJn_E9WFVKnLu3dvyjIfvuL5pzp3Oou_Iw275WxJX1G9-vgwJU1bvkgNxrX66KDjVApdvjVx017iH7JJQek0iDtJe3NEbt4_Whc9iDAAbaTmgrZIaH5eIVh2Sn5AD8V2rRG87Ui0lvU2MGTUQ4HWIsGCv9EP6Op_lG-DI8Aez9NiHoh5YZco4mmOZMUJTSrFB-ZY8sjK2pPpn-2m8-YOwGsnLlUksneaAz1DTpVhF-98qttBGQv4jsjDlBYPULUkyDF7wpIYHEz3AQg6''', 'uUUCsLih3c_O8f-EPE6L2MgTDEzwSPhH0nXMWFBqj1s=');
INSERT INTO `file_details` (`file_id`, `owner_id`, `user_id`, `file`, `file_name`, `description`, `file_size`, `file_type`, `search_rank`, `download_rank`, `status`, `file_uploaded_date`, `file_data`, `file_key`) VALUES
(27, 5, 2, 'files/homelife.txt', 'homelife.txt', 'codebook', 39, 'text/plain', '0', '0', 'Pending', '2022-06-03', 'b''gAAAAABime1rFX1zM4nTFgvcNmCQv5Aej6H2ik88VYp4Ps-Sn4oknCmnK8QcR-mdvm85KmXSQD3uCeHAH4CKquOtMJOUJWG4pOkKZpKAZzAvavMZTUbXBJtZoQvRjOO6Uvc--ovfMJdEQzU9oGG_Ox5KD7i0lIh6QzPLvhIIs-77lFRzNPlpLDZPCScG9F_AyhOlaWQHyw3LcnPfkeXJjP287YSIf0Pz137vb8n6de3BwisWmDsAVdJq1MzZECElgV9l06qfj5wj''', 'dxHBA-kNKSSrMzAiaz4uhS26CfFAW_1NlO_7EFv8Rzc='),
(31, 1, 2, 'files/SCREEN_SHOTS1_codebook.docx', 'SCREEN SHOTS1 codebook.docx', 'ggfgff', 4526134, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '0', '0', 'Pending', '2022-06-04', NULL, '87peoLeBije51YMJ7zvXSC0LPQvoJqU_BbISSTf2_9c='),
(32, 1, 2, 'files/chart_WXEjWxv.txt', 'chart.txt', 'ggfgff', 18, 'text/plain', '0', '0', 'Pending', '2022-06-04', 'b''gAAAAABimt8ALB7ssegGOd8qWVmDGBiih0RfvXo0770QK3XIGaFnDwdmobfwTtlSrugr0MVFGAhLwezZ2ncvbGp_NOBrRuZ7VBDENNK-ECovY0yL9r3BAt9D-vLlcyQsocitFa6K_cjP3DpXI1RRG7CoZhwezU5ibxOQC9UWP3yRQt55lEp5Ezp7Hcs0pDBvui5w2DMns-Ojk13FTgF_XhhiMytjpe3h9_NG2bsIGW3DazDgPiTeneEWeglrt8B7aFh91afer5SX1VZZP_Drqmzs0OACerxYYLIJCJy4GGMqcyQ_8w-Wtmr5rfaMS15cMqGWOUGZ66Z6RslMHWcRqFHbQjjScvv_knBKNTzYewgXF6P1Sx6g-uRbFm16tJJJqwfTVQaE0A6A08FyLP7JYF-KrEjPmFSMJJAxuDWkWpm7NQioIe5_zkmQXCbS8MZdE_SF0VGj30ySC5K00Z9h4ArBi1J9-Tc5BlA-4auVVNXVR4_Nv0g_QX-oMA8VVjxqySQAIA78o3xysWVOqCoC6e26b4hBNeuACYQblz4ed4n0Uiha2e6tP93vzaS7LmP9kNnRyrShswxW7tL7jm1QkFxk6QgDsJYqttASTDsWcLs7rkUiujWjF33z-YXKlYIWaWApuGXHeSWKA-VKKj1V_CqQVipk_10RPN7zD9jDZXA6s_KvSwt0Xg_b77-FtEOnZg7RBU_CDPS7tJ499X5Rh5lLGzGbnbhc65qkavlhXsoJNXaUCdjsnTGSoCAPFRnOJSKCtrmyp6CfZbBIb7Lk2F78vKC-uOBdrehjYHLJEjOWJuuMgA8zwHRrarGRkZZQ8aUw90mfV77DqWaqpuopBwLLGeVw-Ob7rQbCaWgggG9LyyLsCQCeeI3G2HjD-a9gmFrNO149h9DkoUCStLxCLRDuEE9cu-tfk4GSbWsngBfQCc4x_QuRe7hkA43cI76onKSVkazGlnkhgnisCwy8gKiIhu4iuZm3broKUFeB3xwHbvGR0avawwzEZVXXPxZIZ99_zq9wehN4umG4bTYOuyrMl6uEwjpF5qoeSfjiMq5f6GGFpjz31Ps2qjgA9cAbYKsLbLcZdkKL4pWzSFqkmC0YoSMl4fbkXwYL_dwpZaGR5Ce9-8u2AwGKk8ihrKhLy3SfZrdg6JNKrhHEn-WnAkAqvVhTA5uzd9Ls17oMUb_O8nGw0RZ2EeicxaI6LljARtPs_QPAera-VOXrkLJ5tnGz5rEuC32EBH3vVkVY8tvyARkMj5uylz3ifMzgn-aze7i1lx3NrEOMU1CHMck8BFghPYk9XLy77wqP_BUQP1zhPL1axelXcFunR4R4mW9ZZl_tsHdSav3D_sRBPmLiH9JqxBsSSo7cMGqBvCQt6D_XZvv2hlK_ZXPmJtDuYWvkbAbldENo0Gb6AELmja8wpvyw-5TnGeshj24USHf3pEfmEc4W9EvIMqMY4ZpxGEF7PuQefuG_BBVgA2PFoKHq_6lZE97qI5vdLORfKdudjAwB9VKtJz8nZIMznxGrUL3t__KVZFpYgygQph7V7SMKz63TXaApONohRG0hXD4oNvw_MMDTd6bVfK2qkQJkKVKIdE_CmPiVQs6iv7vSGQCWQtxxmnvaFNHhe_JNnBaAuLSKveR5W7tDIwOwfADGAdhME9cNM31PCNn-XKR8w-LOCKOUn26Z80lvGC6O-0KegN7M5t-rB2P_EqKOxgBhzI4BwqE5ZCn5rmDCKISW6x5FzgxrMzAyll5sh1e27M-67dMMjHbQhpmipjpi6udehaeOLSWtJQcjxqqM1Cpw_tsQi2qPr7sMn7WvlEffviXofu_wRZWHbd1UHCeFZvVeTGT4zpYfH5oAqvQGfZKvpdknzt13-Jy6wm_FXA==''', 'ctGnd8dgA-8TsIqtmWeb1nQhgeQMF7v9a532mRN5Ld4=');

-- --------------------------------------------------------

--
-- Table structure for table `owner_details`
--

CREATE TABLE IF NOT EXISTS `owner_details` (
  `owner_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `owner_image` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `verification` varchar(50) NOT NULL,
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `owner_details`
--

INSERT INTO `owner_details` (`owner_id`, `owner_name`, `email`, `password`, `mobile`, `location`, `dob`, `owner_image`, `status`, `otp`, `reg_date`, `verification`) VALUES
(1, 'sravani', 'chanuchiramana1800@gmail.com', '1800', 9059501800, 'Nellore', '2022-05-27', 'owner_image/face23.jpg', 'Accepted', NULL, '2022-05-27', 'Verified'),
(2, 'Narendra', 'narendra@gmail.com', '1800', 7989464593, 'Nellore', '2022-05-27', 'owner_image/face16.jpg', 'Rejected', NULL, '2022-05-27', 'Verified'),
(3, 'Saddam', 'saddam@gmail.com', 'saddam', 1234567890, 'hyderabad', '2022-05-27', 'owner_image/face7.jpg', 'Accepted', NULL, '2022-05-27', 'Verified'),
(4, 'abhinav', 'abhistone98@gmail.com', '1800', 8686876108, 'Nellore', '2022-06-03', 'owner_image/face15.jpg', 'Pending', 3160, '2022-06-03', 'Verified'),
(5, 'john', 'chiramanasrinu1699@gmail.com', 'john', 6302798254, 'hyd', '2000-01-01', 'owner_image/face18.jpg', 'Accepted', 3798, '2022-06-03', 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `reg_date` date NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `verification` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `email`, `password`, `mobile`, `location`, `dob`, `user_image`, `otp`, `reg_date`, `status`, `verification`) VALUES
(1, 'saddam', 'saddam@gmail.com', 'saddam', 234567890, 'hyderabad', '2022-05-27', 'user_image/face7.jpg', NULL, '2022-05-27', 'Accepted', 'Verified'),
(2, 'chanu', 'chanuchiramana1800@gmail.com', '1800', 9059501800, 'Nellore', '2022-05-13', 'user_image/face23.jpg', NULL, '2022-05-27', 'Accepted', 'Verified'),
(3, 'Narendra Naidu', 'narendra@gmail.com', '1800', 9059501800, 'hyderabad', '2022-06-03', 'user_image/face1.jpg', 4174, '2022-06-03', 'Rejected', 'Verified'),
(4, 'chanu', 'chanu@gmail.com', '1800', 9059501800, 'Nellore', '2022-06-03', 'user_image/face23_ra7b8nv.jpg', 2330, '2022-06-03', 'Rejected', 'Verified'),
(5, 'ayesha', 'ayesha@gmail.com', '1800', 9059501800, 'Nellore', '2022-06-03', 'user_image/face26_geaEpSr.jpg', 2884, '2022-06-03', 'Pending', 'Verified'),
(6, 'sravani', 'sravaninaidu@gmail.com', '1800', 9059501800, 'Nellore', '2022-06-03', 'user_image/face23_gvWuwIF.jpg', 3996, '2022-06-03', 'Blocked', 'Verified'),
(7, 'bujji', 'bujji@gmail.com', '1800', 9059501800, 'hyderabad', '2022-06-04', 'user_image/sravani.jpeg', 3952, '2022-06-04', 'Pending', 'Pending'),
(8, 'bujji', 'bujji@gmail.com', '1800', 9059501800, 'hyderabad', '2022-06-04', 'user_image/sravani_tCvQy8J.jpeg', 3952, '2022-06-04', 'Pending', 'Pending');

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
