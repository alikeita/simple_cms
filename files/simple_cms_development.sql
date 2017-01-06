-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2017 at 07:47 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_cms_development`
--
CREATE DATABASE IF NOT EXISTS `simple_cms_development` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `simple_cms_development`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(25) DEFAULT NULL,
  `hashed_password` varchar(40) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `first_name`, `last_name`, `email`, `username`, `hashed_password`, `created_at`, `updated_at`) VALUES
(1, 'Ali', 'Keita', '', 'alikeita', NULL, '2017-01-03 12:23:30', '2017-01-03 12:23:30'),
(2, 'Ali', 'Keita', '', 'alikeita', NULL, '2017-01-03 12:32:48', '2017-01-03 12:32:48'),
(3, 'Ali', 'Keita', '', 'alikeita', NULL, '2017-01-03 12:38:54', '2017-01-03 12:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_pages`
--

DROP TABLE IF EXISTS `admin_users_pages`;
CREATE TABLE `admin_users_pages` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-01-02 05:19:31', '2017-01-02 05:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `name`, `permalink`, `position`, `visible`, `created_at`, `updated_at`) VALUES
(1, 1, 'first Page', 'first', 1, 0, '2017-01-03 09:28:36', '2017-01-03 09:28:36'),
(2, 1, 'First Page', 'first', 1, 0, '2017-01-03 10:26:05', '2017-01-03 10:26:05'),
(3, NULL, 'Second Page', 'second', 2, 0, '2017-01-03 10:33:16', '2017-01-03 10:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170102031736'),
('20170102042431'),
('20170102061224'),
('20170102111337'),
('20170102111420'),
('20170102111427'),
('20170103112632'),
('20170104054828');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `content_type` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `page_id`, `name`, `position`, `visible`, `content_type`, `content`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Section One', 1, 0, NULL, NULL, '2017-01-04 06:16:00', '2017-01-04 06:16:00'),
(2, NULL, 'Section One', 1, 0, NULL, NULL, '2017-01-04 06:17:27', '2017-01-04 06:17:27'),
(3, NULL, 'Section One', 1, 0, NULL, NULL, '2017-01-04 06:17:35', '2017-01-04 06:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `section_edits`
--

DROP TABLE IF EXISTS `section_edits`;
CREATE TABLE `section_edits` (
  `id` int(11) NOT NULL,
  `admin_user_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_edits`
--

INSERT INTO `section_edits` (`id`, `admin_user_id`, `section_id`, `summary`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Test Edit', '2017-01-04 06:30:11', '2017-01-04 06:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `position`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Initial subject', 1, 1, '2017-01-02 13:37:25', '2017-01-03 04:00:59'),
(2, 'Next Subject', 2, 0, '2017-01-02 14:15:37', '2017-01-03 04:13:25'),
(4, 'Thrid Subject', 3, 0, '2017-01-03 06:19:48', '2017-01-03 06:19:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_admin_users_on_username` (`username`);

--
-- Indexes for table `admin_users_pages`
--
ALTER TABLE `admin_users_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_pages_on_subject_id` (`subject_id`),
  ADD KEY `index_pages_on_permalink` (`permalink`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_sections_on_page_id` (`page_id`);

--
-- Indexes for table `section_edits`
--
ALTER TABLE `section_edits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_section_edits_on_admin_user_id_and_section_id` (`admin_user_id`,`section_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_users_pages`
--
ALTER TABLE `admin_users_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `section_edits`
--
ALTER TABLE `section_edits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
