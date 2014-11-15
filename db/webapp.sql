-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2014 at 05:00 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webapp`
--
CREATE DATABASE IF NOT EXISTS `webapp` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webapp`;

-- --------------------------------------------------------

--
-- Table structure for table `authassignment`
--

CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('add_post', '0', 'return 3==$params[''value''];', 'N;'),
('add_post', '16813', 'return 3==$params[''value''];', 'N;'),
('add_post', '16816', 'return 3==$params[''value''];', 'N;'),
('admin', '0', '', 'N;'),
('admin', '1', NULL, 'N;'),
('admin', '118', NULL, 'N;'),
('admin', '16814', '', 'N;'),
('admin', '16819', NULL, 'N;'),
('admin', '2', NULL, 'N;'),
('admin', '92', NULL, 'N;'),
('guest', '100', NULL, 'N;'),
('guest', '115', NULL, 'N;'),
('guest', '140', NULL, 'N;'),
('guest', '58', NULL, 'N;'),
('guest', '71', NULL, 'N;'),
('guest', '72', NULL, 'N;'),
('guest', '79', NULL, 'N;'),
('guest', '84', NULL, 'N;'),
('guest', '90', NULL, 'N;'),
('manage_posts', '0', '', 'N;'),
('manage_posts', '16813', '', 'N;'),
('member', '16824', NULL, 'N;'),
('mod', '2', NULL, 'N;'),
('moderators', '0', '', 'N;'),
('moderators', '16813', '', 'N;'),
('moderators', '5', '', 'N;'),
('quest', '1', NULL, 'N;'),
('user', '0', '', 'N;'),
('user', '102', NULL, 'N;'),
('user', '105', NULL, 'N;'),
('user', '106', NULL, 'N;'),
('user', '108', NULL, 'N;'),
('user', '109', NULL, 'N;'),
('user', '113', NULL, 'N;'),
('user', '119', NULL, 'N;'),
('user', '120', NULL, 'N;'),
('user', '121', NULL, 'N;'),
('user', '122', NULL, 'N;'),
('user', '125', NULL, 'N;'),
('user', '128', NULL, 'N;'),
('user', '147', NULL, 'N;'),
('user', '148', NULL, 'N;'),
('user', '149', NULL, 'N;'),
('user', '15', NULL, 'N;'),
('User', '16', NULL, 'N;'),
('user', '16813', '', 'N;'),
('User', '17', NULL, 'N;'),
('user', '19', NULL, 'N;'),
('user', '2', NULL, 'N;'),
('user', '21', NULL, 'N;'),
('user', '22', NULL, 'N;'),
('user', '23', NULL, 'N;'),
('user', '24', NULL, 'N;'),
('user', '25', NULL, 'N;'),
('user', '26', NULL, 'N;'),
('user', '27', NULL, 'N;'),
('user', '28', NULL, 'N;'),
('User', '29', NULL, 'N;'),
('user', '3', NULL, 'N;'),
('user', '30', NULL, 'N;'),
('user', '31', NULL, 'N;'),
('user', '34', NULL, 'N;'),
('user', '35', NULL, 'N;'),
('user', '39', NULL, 'N;'),
('user', '4', NULL, 'N;'),
('user', '40', NULL, 'N;'),
('user', '41', NULL, 'N;'),
('user', '5', NULL, 'N;'),
('user', '57', NULL, 'N;'),
('user', '58', NULL, 'N;'),
('user', '59', NULL, 'N;'),
('user', '61', NULL, 'N;'),
('user', '65', NULL, 'N;'),
('user', '67', NULL, 'N;'),
('user', '68', NULL, 'N;'),
('user', '69', NULL, 'N;'),
('user', '7', NULL, 'N;'),
('user', '74', NULL, 'N;'),
('user', '8', NULL, 'N;'),
('user', '80', NULL, 'N;'),
('user', '81', NULL, 'N;'),
('user', '82', NULL, 'N;'),
('user', '85', NULL, 'N;'),
('user', '86', NULL, 'N;'),
('user', '87', NULL, 'N;'),
('user', '89', NULL, 'N;'),
('user', '91', NULL, 'N;'),
('user', '92', NULL, 'N;'),
('user', '94', NULL, 'N;'),
('user', '95', NULL, 'N;'),
('user', '97', NULL, 'N;'),
('user', '98', NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitem`
--

CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, 'System Administrator', '', 'N;'),
('editor', 2, 'Site Editor', '', 'N;'),
('guest', 2, 'Site Guest', '', 'N;'),
('member', 2, 'Site Member', 'return !Yii::app()->user->isGuest;', 'N;'),
('op_acp_access', 0, 'Admin: Enter The Admin Control Panel', '', 'N;'),
('op_blog_addcats', 0, 'Blog: Add Categories', '', 'N;'),
('op_blog_addposts', 0, 'Blog: Add Posts', '', 'N;'),
('op_blog_comments', 0, 'Blog: Manage Comments', '', 'N;'),
('op_blog_deletecats', 0, 'Blog: Delete Categories', '', 'N;'),
('op_blog_deletecomments', 0, 'Blog: Delete Comments', '', 'N;'),
('op_blog_deleteposts', 0, 'Blog: Delete Posts', '', 'N;'),
('op_blog_editcats', 0, 'Blog: Edit Categories', '', 'N;'),
('op_blog_editposts', 0, 'Blog: Edit Posts', '', 'N;'),
('op_blog_manage', 0, 'Blog: Manage Posts', '', 'N;'),
('op_blog_managecats', 0, 'Blog: Manage Categories', '', 'N;'),
('op_custompages_addpages', 0, 'Custom Pages: Add New Pages', '', 'N;'),
('op_custompages_deletepages', 0, 'Custom Pages: Delete Pages', '', 'N;'),
('op_custompages_editpages', 0, 'Custom Pages: Edit Pages', '', 'N;'),
('op_custompages_managepages', 0, 'Custom Pages: Manage Pages', '', 'N;'),
('op_doc_add_comments', 0, 'Documentations: Add Comments', '', 'N;'),
('op_doc_delete_comments', 0, 'Documentations: Delete Comments', '', 'N;'),
('op_doc_edit_docs', 0, 'Documentations: Edit Topics', '', 'N;'),
('op_doc_manage_comments', 0, 'Documentations: Manage Comments', '', 'N;'),
('op_extensions_addcats', 0, 'Extensions: Add Categories', '', 'N;'),
('op_extensions_addposts', 0, 'Extensions: Add Extensions', '', 'N;'),
('op_extensions_comments', 0, 'Extensions: Manage Comments', '', 'N;'),
('op_extensions_deletecats', 0, 'Extensions: Delete Categories', '', 'N;'),
('op_extensions_deletecomments', 0, 'Extensions: Delete Comments', '', 'N;'),
('op_extensions_deleteposts', 0, 'Extensions: Delete Extension', '', 'N;'),
('op_extensions_editcats', 0, 'Extensions: Edit Categories', '', 'N;'),
('op_extensions_editposts', 0, 'Extensions: Edit Extensions', '', 'N;'),
('op_extensions_manage', 0, 'Extensions: Manage Posts', '', 'N;'),
('op_extensions_managecats', 0, 'Extensions: Manage Categories', '', 'N;'),
('op_forum_posts', 0, 'Forum: Manage Forum Posts', '', 'N;'),
('op_forum_post_posts', 0, 'Forum: Post New Posts', '', 'N;'),
('op_forum_post_topics', 0, 'Forum: Post New Topics', '', 'N;'),
('op_forum_topics', 0, 'Forum: Manage Forum Topics', '', 'N;'),
('op_lang_copy_strings', 0, 'Languages: Copy Source Language Strings', '', 'N;'),
('op_lang_translate', 0, 'Languages: Translate Strings', '', 'N;'),
('op_roles_add_auth', 0, 'Roles: Add Auth Items', '', 'N;'),
('op_roles_add_authchild', 0, 'Roles: Add Auth Items Childs', '', 'N;'),
('op_roles_delete_auth', 0, 'Roles: Delete Auth Items', '', 'N;'),
('op_roles_edit_auth', 0, 'Roles: Edit Auth Items', '', 'N;'),
('op_settings_add_settings', 0, 'Settings: Add New Settings', '', 'N;'),
('op_settings_add_settings_groups', 0, 'Settings: Add Setting Groups', '', 'N;'),
('op_settings_delete_settings', 0, 'Settings: Delete Settings', '', 'N;'),
('op_settings_delete_settings_groups', 0, 'Settings: Delete Setting Groups', '', 'N;'),
('op_settings_edit_settings', 0, 'Settings: Edit Settings', '', 'N;'),
('op_settings_edit_settings_groups', 0, 'Settings: Edit Setting Groups', '', 'N;'),
('op_settings_revert_settings', 0, 'Settings: Revert Settings', '', 'N;'),
('op_settings_update_settings', 0, 'Settings: Update Settings', '', 'N;'),
('op_settings_view_settings', 0, 'Settings: View Settings', '', 'N;'),
('op_tutorials_addcats', 0, 'Tutorials: Add Categories', '', 'N;'),
('op_tutorials_addtutorials', 0, 'Tutorials: Add Tutorials', '', 'N;'),
('op_tutorials_comments', 0, 'Tutorials: Manage Comments', '', 'N;'),
('op_tutorials_deletecats', 0, 'Tutorials: Delete Categories', '', 'N;'),
('op_tutorials_deletecomments', 0, 'Tutorials: Delete Comments', '', 'N;'),
('op_tutorials_deletetutorials', 0, 'Tutorials: Delete Tutorials', '', 'N;'),
('op_tutorials_editcats', 0, 'Tutorials: Edit Categories', '', 'N;'),
('op_tutorials_edittutorials', 0, 'Tutorials: Edit Tutorials', '', 'N;'),
('op_tutorials_manage', 0, 'Tutorials: Manage Tutorials', '', 'N;'),
('op_tutorials_managecats', 0, 'Tutorials: Manage Categories', '', 'N;'),
('op_users_add_users', 0, 'Users: Add New Users', '', 'N;'),
('op_users_bulk_users', 0, 'Users: Perform Bulk Operations On Users', '', 'N;'),
('op_users_comment', 0, 'Users: Add Comments to profiles', '', 'N;'),
('op_users_delete_users', 0, 'Users: Delete Users', '', 'N;'),
('op_users_edit_users', 0, 'Users: Edit Users', '', 'N;'),
('op_users_manage_comments', 0, 'Users: Manage Comments', '', 'N;'),
('task_blog', 1, 'Task Manage Blog', '', 'N;'),
('task_custompages', 1, 'Task Manage Custom Pages', '', 'N;'),
('task_documentations', 1, 'Task Manage Documentations', '', 'N;'),
('task_extensions', 1, 'Task Manage Extensions', '', 'N;'),
('task_forum', 1, 'Task: Manage Forum', '', 'N;'),
('task_languages', 1, 'Task Manage System Languages', '', 'N;'),
('task_members', 1, 'Task Manage Users', '', 'N;'),
('task_roles', 1, 'Task Manage User Roles', '', 'N;'),
('task_settings', 1, 'Task Manage System Setting', '', 'N;'),
('task_tutorials', 1, 'Task Manage Tutorials', '', 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitemchild`
--

CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authitemchild`
--

INSERT INTO `authitemchild` (`parent`, `child`) VALUES
('manage_posts', 'add_post'),
('admin', 'editor'),
('admin', 'guest'),
('member', 'guest'),
('moderators', 'manage_posts'),
('admin', 'member'),
('editor', 'member'),
('admin', 'op_acp_access'),
('admin', 'op_blog_addcats'),
('task_blog', 'op_blog_addcats'),
('admin', 'op_blog_addposts'),
('member', 'op_blog_addposts'),
('task_blog', 'op_blog_addposts'),
('admin', 'op_blog_comments'),
('task_blog', 'op_blog_comments'),
('admin', 'op_blog_deletecats'),
('task_blog', 'op_blog_deletecats'),
('admin', 'op_blog_deletecomments'),
('task_blog', 'op_blog_deletecomments'),
('admin', 'op_blog_deleteposts'),
('task_blog', 'op_blog_deleteposts'),
('admin', 'op_blog_editcats'),
('task_blog', 'op_blog_editcats'),
('admin', 'op_blog_editposts'),
('task_blog', 'op_blog_editposts'),
('admin', 'op_blog_manage'),
('task_blog', 'op_blog_manage'),
('admin', 'op_blog_managecats'),
('task_blog', 'op_blog_managecats'),
('admin', 'op_custompages_addpages'),
('task_custompages', 'op_custompages_addpages'),
('admin', 'op_custompages_deletepages'),
('task_custompages', 'op_custompages_deletepages'),
('admin', 'op_custompages_editpages'),
('task_custompages', 'op_custompages_editpages'),
('admin', 'op_custompages_managepages'),
('task_custompages', 'op_custompages_managepages'),
('admin', 'op_doc_add_comments'),
('editor', 'op_doc_add_comments'),
('member', 'op_doc_add_comments'),
('task_documentations', 'op_doc_add_comments'),
('admin', 'op_doc_delete_comments'),
('task_documentations', 'op_doc_delete_comments'),
('admin', 'op_doc_edit_docs'),
('task_documentations', 'op_doc_edit_docs'),
('admin', 'op_doc_manage_comments'),
('editor', 'op_doc_manage_comments'),
('task_documentations', 'op_doc_manage_comments'),
('admin', 'op_extensions_addcats'),
('task_extensions', 'op_extensions_addcats'),
('admin', 'op_extensions_addposts'),
('member', 'op_extensions_addposts'),
('task_extensions', 'op_extensions_addposts'),
('admin', 'op_extensions_comments'),
('task_extensions', 'op_extensions_comments'),
('admin', 'op_extensions_deletecats'),
('task_extensions', 'op_extensions_deletecats'),
('admin', 'op_extensions_deletecomments'),
('task_extensions', 'op_extensions_deletecomments'),
('admin', 'op_extensions_deleteposts'),
('task_extensions', 'op_extensions_deleteposts'),
('admin', 'op_extensions_editcats'),
('task_extensions', 'op_extensions_editcats'),
('admin', 'op_extensions_editposts'),
('task_extensions', 'op_extensions_editposts'),
('admin', 'op_extensions_manage'),
('task_extensions', 'op_extensions_manage'),
('admin', 'op_extensions_managecats'),
('task_extensions', 'op_extensions_managecats'),
('admin', 'op_forum_posts'),
('task_forum', 'op_forum_posts'),
('admin', 'op_forum_post_posts'),
('member', 'op_forum_post_posts'),
('task_forum', 'op_forum_post_posts'),
('admin', 'op_forum_post_topics'),
('member', 'op_forum_post_topics'),
('task_forum', 'op_forum_post_topics'),
('admin', 'op_forum_topics'),
('task_forum', 'op_forum_topics'),
('admin', 'op_lang_copy_strings'),
('task_languages', 'op_lang_copy_strings'),
('admin', 'op_lang_translate'),
('task_languages', 'op_lang_translate'),
('admin', 'op_roles_add_auth'),
('task_roles', 'op_roles_add_auth'),
('admin', 'op_roles_add_authchild'),
('task_roles', 'op_roles_add_authchild'),
('admin', 'op_roles_delete_auth'),
('task_roles', 'op_roles_delete_auth'),
('admin', 'op_roles_edit_auth'),
('task_roles', 'op_roles_edit_auth'),
('admin', 'op_settings_add_settings'),
('task_settings', 'op_settings_add_settings'),
('admin', 'op_settings_add_settings_groups'),
('task_settings', 'op_settings_add_settings_groups'),
('admin', 'op_settings_delete_settings'),
('task_settings', 'op_settings_delete_settings'),
('admin', 'op_settings_delete_settings_groups'),
('task_settings', 'op_settings_delete_settings_groups'),
('admin', 'op_settings_edit_settings'),
('task_settings', 'op_settings_edit_settings'),
('admin', 'op_settings_edit_settings_groups'),
('task_settings', 'op_settings_edit_settings_groups'),
('admin', 'op_settings_revert_settings'),
('task_settings', 'op_settings_revert_settings'),
('admin', 'op_settings_update_settings'),
('task_settings', 'op_settings_update_settings'),
('admin', 'op_settings_view_settings'),
('task_settings', 'op_settings_view_settings'),
('admin', 'op_tutorials_addcats'),
('task_tutorials', 'op_tutorials_addcats'),
('admin', 'op_tutorials_addtutorials'),
('member', 'op_tutorials_addtutorials'),
('task_tutorials', 'op_tutorials_addtutorials'),
('admin', 'op_tutorials_comments'),
('task_tutorials', 'op_tutorials_comments'),
('admin', 'op_tutorials_deletecats'),
('task_tutorials', 'op_tutorials_deletecats'),
('admin', 'op_tutorials_deletecomments'),
('task_tutorials', 'op_tutorials_deletecomments'),
('admin', 'op_tutorials_deletetutorials'),
('task_tutorials', 'op_tutorials_deletetutorials'),
('admin', 'op_tutorials_editcats'),
('task_tutorials', 'op_tutorials_editcats'),
('admin', 'op_tutorials_edittutorials'),
('task_tutorials', 'op_tutorials_edittutorials'),
('admin', 'op_tutorials_manage'),
('task_tutorials', 'op_tutorials_manage'),
('admin', 'op_tutorials_managecats'),
('task_tutorials', 'op_tutorials_managecats'),
('admin', 'op_users_add_users'),
('task_members', 'op_users_add_users'),
('admin', 'op_users_bulk_users'),
('task_members', 'op_users_bulk_users'),
('admin', 'op_users_comment'),
('member', 'op_users_comment'),
('task_members', 'op_users_comment'),
('admin', 'op_users_delete_users'),
('task_members', 'op_users_delete_users'),
('admin', 'op_users_edit_users'),
('task_members', 'op_users_edit_users'),
('admin', 'op_users_manage_comments'),
('task_members', 'op_users_manage_comments'),
('admin', 'task_blog'),
('admin', 'task_custompages'),
('admin', 'task_documentations'),
('admin', 'task_extensions'),
('admin', 'task_forum'),
('admin', 'task_languages'),
('admin', 'task_members'),
('admin', 'task_roles'),
('admin', 'task_settings'),
('admin', 'task_tutorials');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(125) NOT NULL DEFAULT '',
  `description` text,
  `category` int(10) NOT NULL DEFAULT '0',
  `type` char(30) NOT NULL DEFAULT 'text',
  `settingkey` varchar(125) NOT NULL DEFAULT '',
  `default_value` text,
  `value` text,
  `extra` text,
  `php` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settingkey` (`settingkey`),
  KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
