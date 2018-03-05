-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2018 at 07:40 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hse`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('/*', '15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, NULL, NULL),
('/admin/*', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/default/*', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/default/index', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/menu/*', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/menu/create', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/menu/index', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/menu/update', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/menu/view', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/permission/*', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/permission/create', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/permission/index', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/permission/update', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/permission/view', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/admin/role/*', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/role/assign', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/role/create', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/role/delete', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/role/index', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/role/remove', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/role/update', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/role/view', 2, NULL, NULL, NULL, 1520277661, 1520277661),
('/admin/route/*', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/route/assign', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/route/create', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/route/index', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/route/remove', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/rule/*', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/rule/create', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/rule/index', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/rule/update', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/rule/view', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/user/*', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/activate', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/delete', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/index', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/admin/user/login', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/logout', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/signup', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/admin/user/view', 2, NULL, NULL, NULL, 1520277662, 1520277662),
('/debug/*', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/default/*', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/default/index', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/default/view', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/user/*', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/gii/*', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/gii/default/*', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/gii/default/action', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/gii/default/diff', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/gii/default/index', 2, NULL, NULL, NULL, 1520277663, 1520277663),
('/gii/default/preview', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/gii/default/view', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/*', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/about', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/authenticate', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/captcha', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/contact', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/error', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/index', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/login', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/logout', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/reset-password', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/site/signup', 2, NULL, NULL, NULL, 1520277664, 1520277664),
('/user/*', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/user/admin/*', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/admin/block', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/admin/create', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/admin/delete', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/admin/index', 2, NULL, NULL, NULL, 1520277657, 1520277657),
('/user/admin/info', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/admin/switch', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/admin/update', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1520277658, 1520277658),
('/user/profile/*', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/profile/index', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/profile/show', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/recovery/*', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/recovery/request', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/registration/*', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/registration/connect', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/registration/register', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/registration/resend', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/security/*', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/security/auth', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/security/login', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/security/logout', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('/user/settings/*', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/user/settings/account', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/user/settings/delete', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/user/settings/networks', 2, NULL, NULL, NULL, 1520277660, 1520277660),
('/user/settings/profile', 2, NULL, NULL, NULL, 1520277659, 1520277659),
('super_admin', 1, NULL, NULL, NULL, 1520277702, 1520277702);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('/*', '/*'),
('super_admin', '/admin/permission/view'),
('super_admin', '/admin/role/*'),
('super_admin', '/admin/role/assign'),
('super_admin', '/admin/role/create'),
('super_admin', '/admin/role/delete'),
('super_admin', '/admin/role/index'),
('super_admin', '/admin/role/remove'),
('super_admin', '/admin/role/update'),
('super_admin', '/admin/role/view'),
('super_admin', '/admin/route/*'),
('super_admin', '/admin/route/assign');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `image_path` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `prod_id`, `image_path`) VALUES
(6, 4, 'bg_green-1.jpg'),
(7, 4, 'bg_green-2.jpg'),
(8, 1, '8czrG7LEi.png'),
(9, 2, '46-1024x800.jpg'),
(10, 3, '25.jpg'),
(13, 6, '12.gif'),
(16, 5, 'women.jpg'),
(17, 5, 'women1-min.png'),
(19, 7, '6d09b140568a427c67a8753f491d1aaa.jpg'),
(20, 7, 'bluetech.png'),
(21, 7, 'Capture.JPG'),
(22, 7, 'DWVkE-dWsAUpCnm.jpg large.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1519206052),
('m130524_201442_init', 1519209606),
('m140209_132017_init', 1520190480),
('m140403_174025_create_account_table', 1520190483),
('m140504_113157_update_tables', 1520190491),
('m140504_130429_create_token_table', 1520190493),
('m140830_171933_fix_ip_field', 1520190495),
('m140830_172703_change_account_table_name', 1520190495),
('m141222_110026_update_ip_field', 1520190496),
('m141222_135246_alter_username_length', 1520190497),
('m150614_103145_update_social_account_table', 1520190502),
('m150623_212711_fix_username_notnull', 1520190502),
('m151218_234654_add_timezone_to_profile', 1520190503),
('m160929_103127_add_last_login_at_to_user_table', 1520190504);

-- --------------------------------------------------------

--
-- Table structure for table `prod_tbl`
--

CREATE TABLE `prod_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod_tbl`
--

INSERT INTO `prod_tbl` (`id`, `name`, `price`) VALUES
(1, 'coke', 9876),
(2, 'food', 34),
(3, 'pepsi', 67),
(4, 'coke', 654),
(5, 'rajwa', 456789),
(6, 'this', 789),
(7, 'lays', 678);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`, `status`) VALUES
(15, 'sajid', 'rajwabarocho@gmail.com', '$2y$12$PR83cs3GS209jfHk6jk8Uedi5lcjg9RGOZXC/yrJBAruSPJu7IdW6', 'ZSQ7Mc3DNxzUU8zhw9xJbHbRpNQlpi3M', 1520195748, NULL, NULL, '::1', 1520195709, 1520195709, 0, 1520276601, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `prod_id_2` (`prod_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `prod_tbl`
--
ALTER TABLE `prod_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `prod_tbl`
--
ALTER TABLE `prod_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `fk_prod_id` FOREIGN KEY (`prod_id`) REFERENCES `prod_tbl` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
