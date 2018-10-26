-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 26, 2018 at 06:00 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `zeta`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-02 13:39:45', '2018-10-02 13:39:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:3157/zeta', 'yes'),
(2, 'home', 'http://localhost:3157/zeta', 'yes'),
(3, 'blogname', 'Human Rights Arts &amp; Film Festival', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zkha0002@student.monash.edu', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '100', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/%category%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:19:\"404page/404page.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:38:\"post-duplicator/m4c-postduplicator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:60:\"/Users/zeeshan/htdocs/zeta/wp-content/themes/hraff/style.css\";i:1;s:61:\"/Users/zeeshan/htdocs/zeta/wp-content/themes/hraff/header.php\";i:2;s:60:\"/Users/zeeshan/htdocs/zeta/wp-content/themes/hraff/index.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'hraff', 'yes'),
(41, 'stylesheet', 'hraff', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '37', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_AU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1540535985;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1540556737;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540561185;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1540561229;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538553363;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_AU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1540526839;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1540526842;s:7:\"checked\";a:4:{s:5:\"hraff\";s:5:\"0.0.1\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(164, 'theme_mods_hraff', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:12:\"footer-links\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538554285;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:40;}', 'yes'),
(165, 'current_theme', 'HRAFF Concept', 'yes'),
(166, 'theme_switched', '', 'yes'),
(173, 'mtphr_post_duplicator_settings', '', 'yes'),
(175, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1538554332;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(176, '_transient_twentyfifteen_categories', '1', 'yes'),
(178, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(187, 'cptui_new_install', 'false', 'yes'),
(190, 'acf_version', '5.7.7', 'yes'),
(200, 'cptui_post_types', 'a:1:{s:5:\"event\";a:29:{s:4:\"name\";s:5:\"event\";s:5:\"label\";s:6:\"Events\";s:14:\"singular_label\";s:5:\"Event\";s:11:\"description\";s:21:\"Create a HRAFF Event.\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:2:\"20\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:19:\"dashicons-lightbulb\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(212, 'category_children', 'a:0:{}', 'yes'),
(213, 'cptui_taxonomies', 'a:2:{s:4:\"city\";a:24:{s:4:\"name\";s:4:\"city\";s:5:\"label\";s:6:\"Cities\";s:14:\"singular_label\";s:4:\"City\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}s:14:\"classification\";a:24:{s:4:\"name\";s:14:\"classification\";s:5:\"label\";s:15:\"Classifications\";s:14:\"singular_label\";s:14:\"Classification\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}}', 'yes'),
(246, 'city_children', 'a:0:{}', 'yes'),
(328, 'pp-404page-admin-notice-2-start', '1542186159', 'yes'),
(364, 'date_children', 'a:0:{}', 'yes'),
(388, 'new_admin_email', 'zkha0002@student.monash.edu', 'yes'),
(395, '404page_page_id', '129', 'yes'),
(396, '404page_hide', '', 'yes'),
(397, '404page_method', 'STD', 'yes'),
(398, '404page_fire_error', '1', 'yes'),
(399, '404page_force_error', '', 'yes'),
(400, '404page_no_url_guessing', '', 'yes'),
(401, '404page_http410_if_trashed', '', 'yes'),
(407, '_site_transient_timeout_browser_fa9163078450116b33aea27d7429a9e8', '1540986290', 'no'),
(408, '_site_transient_browser_fa9163078450116b33aea27d7429a9e8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(420, '_transient_timeout_plugin_slugs', '1540618004', 'no'),
(421, '_transient_plugin_slugs', 'a:7:{i:0;s:19:\"404page/404page.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:9:\"hello.php\";i:6;s:38:\"post-duplicator/m4c-postduplicator.php\";}', 'no'),
(430, '_site_transient_timeout_browser_501bb4b2c18849aa236255e5b6d224a2', '1541050788', 'no'),
(431, '_site_transient_browser_501bb4b2c18849aa236255e5b6d224a2', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"62.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(453, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1540574801', 'no'),
(454, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:32:\"Parramatta WordPress Meetup: TBA\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Sydney/events/253537724/\";s:6:\"meetup\";s:16:\"WordPress Sydney\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Sydney/\";s:4:\"date\";s:19:\"2018-11-05 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Parramatta, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-33.80823;s:9:\"longitude\";d:151.00407;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:55:\"Setting up WordPress on your PC using Local by Flywheel\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Sydney/events/254403329/\";s:6:\"meetup\";s:16:\"WordPress Sydney\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Sydney/\";s:4:\"date\";s:19:\"2018-11-26 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Sydney, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-33.87266;s:9:\"longitude\";d:151.20447;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:32:\"Parramatta WordPress Meetup: TBA\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Sydney/events/254367914/\";s:6:\"meetup\";s:16:\"WordPress Sydney\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Sydney/\";s:4:\"date\";s:19:\"2018-12-03 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Parramatta, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-33.808231;s:9:\"longitude\";d:151.004074;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:32:\"Parramatta WordPress Meetup: TBA\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Sydney/events/254367916/\";s:6:\"meetup\";s:16:\"WordPress Sydney\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Sydney/\";s:4:\"date\";s:19:\"2019-01-07 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Parramatta, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-33.808231;s:9:\"longitude\";d:151.004074;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:32:\"Parramatta WordPress Meetup: TBA\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-Sydney/events/jdnwcqyzdbgb/\";s:6:\"meetup\";s:16:\"WordPress Sydney\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Sydney/\";s:4:\"date\";s:19:\"2019-02-04 18:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Parramatta, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-33.80823;s:9:\"longitude\";d:151.00407;}}}}', 'no'),
(455, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1540568165', 'no'),
(456, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1540568165', 'no'),
(457, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1540524965', 'no'),
(458, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1540568167', 'no'),
(459, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540568167', 'no'),
(460, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540524967', 'no'),
(461, '_transient_timeout_dash_v2_fe2922e4dab38d163882ac0453e47f7b', '1540568167', 'no'),
(462, '_transient_dash_v2_fe2922e4dab38d163882ac0453e47f7b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/10/wordpress-5-0-beta-1/\'>WordPress 5.0 Beta 1</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpweekly-episode-335-introduction-to-bigcommerce-with-topher-derosia\'>WPTavern: WPWeekly Episode 335 – Introduction to BigCommerce with Topher DeRosia</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpcampus-is-pursuing-an-independent-accessibility-audit-of-gutenberg\'>WPTavern: WPCampus is Pursuing an Independent Accessibility Audit of Gutenberg</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordpress-5-0-beta-1-now-available-for-testing\'>WPTavern: WordPress 5.0 Beta 1 Now Available for Testing</a></li></ul></div>', 'no'),
(468, 'classification_children', 'a:0:{}', 'yes'),
(469, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1540537591', 'no'),
(470, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4513;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3085;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2596;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2454;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1887;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1687;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1677;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1461;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1409;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1405;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1405;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1337;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1285;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1254;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1118;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1079;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1053;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1042;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:941;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:897;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:836;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:819;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:811;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:740;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:711;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:700;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:690;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:686;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:670;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:668;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:661;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:646;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:624;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:622;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:617;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:608;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:602;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:601;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:574;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:556;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:548;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:545;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:534;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:526;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:526;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:518;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:516;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:514;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:510;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:500;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:493;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:490;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:485;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:482;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:463;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:462;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:457;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:452;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:445;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:437;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:430;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:424;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:422;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:421;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:418;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:411;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:392;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:389;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:383;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:375;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:372;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:370;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:370;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:367;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:363;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:355;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:354;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:351;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:350;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:345;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:342;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:340;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:338;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:332;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:315;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:312;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:306;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:305;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:303;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:301;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:299;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}}', 'no'),
(472, '_site_transient_timeout_theme_roots', '1540528641', 'no'),
(473, '_site_transient_theme_roots', 'a:4:{s:5:\"hraff\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(474, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1540531603;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:19:\"404page/404page.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/404page\";s:4:\"slug\";s:7:\"404page\";s:6:\"plugin\";s:19:\"404page/404page.php\";s:11:\"new_version\";s:1:\"7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/404page/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/404page.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/404page/assets/icon-256x256.png?rev=1855871\";s:2:\"1x\";s:52:\"https://ps.w.org/404page/assets/icon.svg?rev=1855871\";s:3:\"svg\";s:52:\"https://ps.w.org/404page/assets/icon.svg?rev=1855871\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/404page/assets/banner-1544x500.png?rev=1961085\";s:2:\"1x\";s:62:\"https://ps.w.org/404page/assets/banner-772x250.png?rev=1961085\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/beautiful-taxonomy-filters\";s:4:\"slug\";s:26:\"beautiful-taxonomy-filters\";s:6:\"plugin\";s:57:\"beautiful-taxonomy-filters/beautiful-taxonomy-filters.php\";s:11:\"new_version\";s:5:\"2.4.3\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/beautiful-taxonomy-filters/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/beautiful-taxonomy-filters.2.4.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/beautiful-taxonomy-filters/assets/icon-256x256.png?rev=1654967\";s:2:\"1x\";s:79:\"https://ps.w.org/beautiful-taxonomy-filters/assets/icon-128x128.png?rev=1654967\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/beautiful-taxonomy-filters/assets/banner-1544x500.jpg?rev=1020041\";s:2:\"1x\";s:81:\"https://ps.w.org/beautiful-taxonomy-filters/assets/banner-772x250.jpg?rev=1020041\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:38:\"post-duplicator/m4c-postduplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/post-duplicator\";s:4:\"slug\";s:15:\"post-duplicator\";s:6:\"plugin\";s:38:\"post-duplicator/m4c-postduplicator.php\";s:11:\"new_version\";s:4:\"2.20\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/post-duplicator/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/post-duplicator.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588\";s:2:\"1x\";s:70:\"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(477, 'widget_beautiful-taxonomy-filters-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(478, 'widget_beautiful-taxonomy-filters-info-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(479, 'beautiful_taxonomy_filters_version', '2.4.3', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(480, 'rewrite_rules', 'a:134:{s:71:\"event(?:/city/([^/]+))?(?:/classification/([^/]+))?/page/([0-9]{1,})/?$\";s:87:\"index.php?post_type=event&city=$matches[1]&classification=$matches[2]&paged=$matches[3]\";s:54:\"event(?:/city/([^/]+))?(?:/classification/([^/]+))?/?$\";s:69:\"index.php?post_type=event&city=$matches[1]&classification=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"city/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:40:\"city/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:21:\"city/([^/]+)/embed/?$\";s:37:\"index.php?city=$matches[1]&embed=true\";s:33:\"city/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?city=$matches[1]&paged=$matches[2]\";s:15:\"city/([^/]+)/?$\";s:26:\"index.php?city=$matches[1]\";s:55:\"classification/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?classification=$matches[1]&feed=$matches[2]\";s:50:\"classification/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?classification=$matches[1]&feed=$matches[2]\";s:31:\"classification/([^/]+)/embed/?$\";s:47:\"index.php?classification=$matches[1]&embed=true\";s:43:\"classification/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?classification=$matches[1]&paged=$matches[2]\";s:25:\"classification/([^/]+)/?$\";s:36:\"index.php?classification=$matches[1]\";s:31:\"event/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"event/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"event/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"event/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"event/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"event/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"event/(.+?)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:24:\"event/(.+?)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:44:\"event/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:39:\"event/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:32:\"event/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:39:\"event/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:28:\"event/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\"[^/]+/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"[^/]+/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"[^/]+/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"[^/]+/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"[^/]+/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"([^/]+)/(.+?)/embed/?$\";s:63:\"index.php?name=$matches[1]&category_name=$matches[2]&embed=true\";s:26:\"([^/]+)/(.+?)/trackback/?$\";s:57:\"index.php?name=$matches[1]&category_name=$matches[2]&tb=1\";s:46:\"([^/]+)/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:41:\"([^/]+)/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:34:\"([^/]+)/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:41:\"([^/]+)/(.+?)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?name=$matches[1]&category_name=$matches[2]&cpage=$matches[3]\";s:30:\"([^/]+)/(.+?)(?:/([0-9]+))?/?$\";s:69:\"index.php?name=$matches[1]&category_name=$matches[2]&page=$matches[3]\";s:20:\"[^/]+/.+?/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"[^/]+/.+?/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"[^/]+/.+?/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"[^/]+/.+?/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"[^/]+/.+?/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(481, 'beautiful_taxonomy_filters_post_types', 'a:1:{i:0;s:5:\"event\";}', 'yes'),
(482, 'beautiful_taxonomy_filters_taxonomies', '', 'yes'),
(483, 'beautiful_taxonomy_filters_automagic', 'a:1:{i:0;s:5:\"above\";}', 'yes'),
(484, 'beautiful_taxonomy_filters_styles', 'simple', 'yes'),
(485, 'beautiful_taxonomy_filters_custom_css', '', 'yes'),
(490, 'beautiful_taxonomy_filters_disable_select2', '', 'yes'),
(491, 'beautiful_taxonomy_filters_clear_all', '1', 'yes'),
(492, 'beautiful_taxonomy_filters_show_count', '1', 'yes'),
(493, 'beautiful_taxonomy_filters_show_description', '', 'yes'),
(494, 'beautiful_taxonomy_filters_hide_empty', '', 'yes'),
(495, 'beautiful_taxonomy_filters_disable_heading', '', 'yes'),
(496, 'beautiful_taxonomy_filters_disable_postcount', '', 'yes'),
(497, 'beautiful_taxonomy_filters_dropdown_behaviour', 'show_all_option', 'yes'),
(498, 'beautiful_taxonomy_filters_settings', '', 'yes'),
(528, '_site_transient_timeout_available_translations', '1540542456', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(529, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-22 00:11:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-13 19:50:59\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-26 07:51:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 13:08:41\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-08 18:04:52\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 08:22:12\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-15 10:39:52\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-15 10:41:04\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-08 10:19:50\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-19 05:41:30\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 22:06:02\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-19 05:39:09\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 22:06:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 13:34:08\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 16:09:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 15:16:30\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-28 16:07:01\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-18 11:45:31\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-10 17:20:09\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-04 08:05:41\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 07:24:22\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 19:03:27\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-02 11:16:28\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-20 00:15:02\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 09:43:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-08 11:53:09\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 06:05:40\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-24 04:57:34\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-25 00:05:58\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 16:42:45\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.6\";s:7:\"updated\";s:19:\"2018-05-24 09:42:27\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-17 11:02:30\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 11:11:49\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 10:13:23\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 10:11:08\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 11:10:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 05:15:17\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-26 15:06:48\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 11:50:07\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 06:33:48\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-30 20:13:53\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-26 12:03:12\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 07:46:08\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 08:13:44\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-08 19:05:26\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 07:42:01\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-06 08:37:04\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 06:46:15\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 13:50:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost:3157/zeta/'),
(11, 5, '_menu_item_orphaned', '1538554704'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(20, 6, '_menu_item_orphaned', '1538554704'),
(39, 1, '_edit_lock', '1538573291:1'),
(42, 10, '_wp_trash_meta_status', 'publish'),
(43, 10, '_wp_trash_meta_time', '1538569018'),
(44, 11, '_edit_lock', '1538569134:1'),
(45, 11, '_wp_trash_meta_status', 'publish'),
(46, 11, '_wp_trash_meta_time', '1538569136'),
(47, 13, '_edit_last', '1'),
(48, 13, '_edit_lock', '1540450343:1'),
(49, 24, '_edit_last', '1'),
(50, 24, '_edit_lock', '1540525509:1'),
(51, 24, 'subtitle', 'Orban Wallace / UK / 84 Mins / English / Documentary'),
(52, 24, '_subtitle', 'field_5bb4b8b2aadef'),
(53, 24, 'classification', 'M'),
(54, 24, '_classification', 'field_5bb4b9dba1f93'),
(55, 24, 'when', '2018-06-20 18:00:00'),
(56, 24, '_when', 'field_5bb4bb11a1f94'),
(57, 24, 'where', 'Palace Kino Cinemas'),
(58, 24, '_where', 'field_5bb4bb7da1f95'),
(59, 24, 'city', 'Melbourne'),
(60, 24, '_city', 'field_5bb89e8060476'),
(61, 24, 'summary', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.'),
(62, 24, '_summary', 'field_5bb4bcbc98e8f'),
(63, 26, '_wp_attached_file', '2018/10/f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200.jpg'),
(64, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:56:\"2018/10/f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 24, '_thumbnail_id', '26'),
(66, 24, 'youtube_video_id', '_N2nZAThjcw'),
(67, 24, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(71, 3, '_edit_lock', '1538576528:1'),
(72, 3, '_edit_last', '1'),
(73, 2, '_wp_trash_meta_status', 'publish'),
(74, 2, '_wp_trash_meta_time', '1538576546'),
(75, 2, '_wp_desired_post_slug', 'sample-page'),
(76, 30, '_edit_last', '1'),
(77, 30, '_edit_lock', '1538826097:1'),
(78, 32, '_edit_last', '1'),
(79, 32, '_edit_lock', '1538576546:1'),
(80, 34, '_menu_item_type', 'post_type'),
(81, 34, '_menu_item_menu_item_parent', '0'),
(82, 34, '_menu_item_object_id', '32'),
(83, 34, '_menu_item_object', 'page'),
(84, 34, '_menu_item_target', ''),
(85, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 34, '_menu_item_xfn', ''),
(87, 34, '_menu_item_url', ''),
(89, 35, '_menu_item_type', 'post_type'),
(90, 35, '_menu_item_menu_item_parent', '0'),
(91, 35, '_menu_item_object_id', '30'),
(92, 35, '_menu_item_object', 'page'),
(93, 35, '_menu_item_target', ''),
(94, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 35, '_menu_item_xfn', ''),
(96, 35, '_menu_item_url', ''),
(100, 37, '_wp_attached_file', '2018/10/cropped-logo.png'),
(101, 37, '_wp_attachment_context', 'site-icon'),
(102, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/10/cropped-logo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 38, '_wp_trash_meta_status', 'publish'),
(104, 38, '_wp_trash_meta_time', '1538810575'),
(111, 40, '_wp_attached_file', '2018/10/cropped-logo-1.png'),
(112, 40, '_wp_attachment_context', 'custom-logo'),
(113, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:632;s:6:\"height\";i:632;s:4:\"file\";s:26:\"2018/10/cropped-logo-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 41, '_wp_trash_meta_status', 'publish'),
(115, 41, '_wp_trash_meta_time', '1538812619'),
(116, 1, '_wp_trash_meta_status', 'publish'),
(117, 1, '_wp_trash_meta_time', '1538816831'),
(118, 1, '_wp_desired_post_slug', 'hello-world'),
(119, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(120, 45, '_edit_last', '1'),
(121, 45, '_edit_lock', '1540525918:1'),
(122, 46, '_wp_attached_file', '2018/10/04_the_cleaners____gebrueder_beetz_filmproduktion-480x200.jpg'),
(123, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:69:\"2018/10/04_the_cleaners____gebrueder_beetz_filmproduktion-480x200.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:69:\"04_the_cleaners____gebrueder_beetz_filmproduktion-480x200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:69:\"04_the_cleaners____gebrueder_beetz_filmproduktion-480x200-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 45, '_thumbnail_id', '46'),
(125, 45, 'subtitle', 'HANS BLOCK & MORITZ RIESWIECK / 2018 / GERMANY, BRAZIL, NETHERLANDS, ITALY, & USA / 88 MINS / ENGLISH AND TAGALOG WITH ENGLISH SUBTITLES / DOCUMENTARY'),
(126, 45, '_subtitle', 'field_5bb4b8b2aadef'),
(127, 45, 'classification', 'M'),
(128, 45, '_classification', 'field_5bb4b9dba1f93'),
(129, 45, 'when', '2018-10-18 18:15:00'),
(130, 45, '_when', 'field_5bb4bb11a1f94'),
(131, 45, 'where', 'Australian Centre for the Moving Image (ACMI)'),
(132, 45, '_where', 'field_5bb4bb7da1f95'),
(133, 45, 'city', 'Melbourne'),
(134, 45, '_city', 'field_5bb89e8060476'),
(135, 45, 'summary', 'In an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged…'),
(136, 45, '_summary', 'field_5bb4bcbc98e8f'),
(137, 45, 'youtube_video_id', 'ngYphW8YdOFjGEaE'),
(138, 45, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(139, 47, '_edit_last', '1'),
(140, 47, '_edit_lock', '1540525786:1'),
(141, 48, '_wp_attached_file', '2018/10/bio-photo-480x200.jpg'),
(142, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:29:\"2018/10/bio-photo-480x200.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bio-photo-480x200-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"bio-photo-480x200-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 47, '_thumbnail_id', '48'),
(144, 47, 'subtitle', ''),
(145, 47, '_subtitle', 'field_5bb4b8b2aadef'),
(146, 47, 'classification', ''),
(147, 47, '_classification', 'field_5bb4b9dba1f93'),
(148, 47, 'when', '2018-10-26 10:00:00'),
(149, 47, '_when', 'field_5bb4bb11a1f94'),
(150, 47, 'where', 'Alexandra Club'),
(151, 47, '_where', 'field_5bb4bb7da1f95'),
(152, 47, 'city', 'Melbourne'),
(153, 47, '_city', 'field_5bb89e8060476'),
(154, 47, 'summary', 'Join us at our annual Morning Tea!'),
(155, 47, '_summary', 'field_5bb4bcbc98e8f'),
(156, 47, 'youtube_video_id', ''),
(157, 47, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(158, 49, '_edit_last', '1'),
(159, 49, '_edit_lock', '1538831516:1'),
(160, 49, 'subtitle', 'Orban Wallace / UK / 84 Mins / English / Documentary'),
(161, 49, '_subtitle', 'field_5bb4b8b2aadef'),
(162, 49, 'classification', 'M'),
(163, 49, '_classification', 'field_5bb4b9dba1f93'),
(164, 49, 'when', '2018-06-20 18:00:00'),
(165, 49, '_when', 'field_5bb4bb11a1f94'),
(166, 49, 'where', 'Palace Kino Cinemas'),
(167, 49, '_where', 'field_5bb4bb7da1f95'),
(168, 49, 'city', 'Melbourne'),
(169, 49, '_city', 'field_5bb89e8060476'),
(170, 49, 'summary', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.'),
(171, 49, '_summary', 'field_5bb4bcbc98e8f'),
(172, 49, '_thumbnail_id', '26'),
(173, 49, 'youtube_video_id', '_N2nZAThjcw'),
(174, 49, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(175, 50, '_edit_last', '1'),
(176, 50, '_edit_lock', '1538832022:1'),
(177, 50, '_thumbnail_id', '48'),
(178, 50, 'subtitle', ''),
(179, 50, '_subtitle', 'field_5bb4b8b2aadef'),
(180, 50, 'classification', ''),
(181, 50, '_classification', 'field_5bb4b9dba1f93'),
(182, 50, 'when', '2018-10-26 10:00:00'),
(183, 50, '_when', 'field_5bb4bb11a1f94'),
(184, 50, 'where', 'Alexandra Club'),
(185, 50, '_where', 'field_5bb4bb7da1f95'),
(186, 50, 'city', 'Melbourne'),
(187, 50, '_city', 'field_5bb89e8060476'),
(188, 50, 'summary', 'Join us at our annual Morning Tea!'),
(189, 50, '_summary', 'field_5bb4bcbc98e8f'),
(190, 50, 'youtube_video_id', ''),
(191, 50, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(192, 51, '_edit_last', '1'),
(193, 51, '_edit_lock', '1538831415:1'),
(194, 51, '_thumbnail_id', '46'),
(195, 51, 'subtitle', 'HANS BLOCK & MORITZ RIESWIECK / 2018 / GERMANY, BRAZIL, NETHERLANDS, ITALY, & USA / 88 MINS / ENGLISH AND TAGALOG WITH ENGLISH SUBTITLES / DOCUMENTARY'),
(196, 51, '_subtitle', 'field_5bb4b8b2aadef'),
(197, 51, 'classification', 'M'),
(198, 51, '_classification', 'field_5bb4b9dba1f93'),
(199, 51, 'when', '2018-10-18 18:15:00'),
(200, 51, '_when', 'field_5bb4bb11a1f94'),
(201, 51, 'where', 'Australian Centre for the Moving Image (ACMI)'),
(202, 51, '_where', 'field_5bb4bb7da1f95'),
(203, 51, 'city', 'Melbourne'),
(204, 51, '_city', 'field_5bb89e8060476'),
(205, 51, 'summary', 'In an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged…'),
(206, 51, '_summary', 'field_5bb4bcbc98e8f'),
(207, 51, 'youtube_video_id', 'ngYphW8YdOFjGEaE'),
(208, 51, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(209, 53, '_menu_item_type', 'post_type_archive'),
(210, 53, '_menu_item_menu_item_parent', '0'),
(211, 53, '_menu_item_object_id', '-15'),
(212, 53, '_menu_item_object', 'event'),
(213, 53, '_menu_item_target', ''),
(214, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 53, '_menu_item_xfn', ''),
(216, 53, '_menu_item_url', ''),
(218, 54, '_edit_last', '1'),
(219, 54, '_edit_lock', '1539433697:1'),
(220, 56, '_menu_item_type', 'post_type'),
(221, 56, '_menu_item_menu_item_parent', '0'),
(222, 56, '_menu_item_object_id', '54'),
(223, 56, '_menu_item_object', 'page'),
(224, 56, '_menu_item_target', ''),
(225, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 56, '_menu_item_xfn', ''),
(227, 56, '_menu_item_url', ''),
(229, 57, '_edit_last', '1'),
(230, 57, '_edit_lock', '1540531980:1'),
(231, 59, '_edit_last', '1'),
(232, 59, '_edit_lock', '1539433572:1'),
(233, 61, '_edit_last', '1'),
(234, 61, '_edit_lock', '1539433653:1'),
(235, 64, '_edit_last', '1'),
(236, 64, '_edit_lock', '1539433914:1'),
(237, 66, '_edit_last', '1'),
(238, 66, '_edit_lock', '1539434008:1'),
(239, 68, '_menu_item_type', 'post_type'),
(240, 68, '_menu_item_menu_item_parent', '0'),
(241, 68, '_menu_item_object_id', '66'),
(242, 68, '_menu_item_object', 'page'),
(243, 68, '_menu_item_target', ''),
(244, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(245, 68, '_menu_item_xfn', ''),
(246, 68, '_menu_item_url', ''),
(248, 69, '_menu_item_type', 'post_type'),
(249, 69, '_menu_item_menu_item_parent', '0'),
(250, 69, '_menu_item_object_id', '64'),
(251, 69, '_menu_item_object', 'page'),
(252, 69, '_menu_item_target', ''),
(253, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(254, 69, '_menu_item_xfn', ''),
(255, 69, '_menu_item_url', ''),
(257, 70, '_menu_item_type', 'post_type'),
(258, 70, '_menu_item_menu_item_parent', '0'),
(259, 70, '_menu_item_object_id', '61'),
(260, 70, '_menu_item_object', 'page'),
(261, 70, '_menu_item_target', ''),
(262, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(263, 70, '_menu_item_xfn', ''),
(264, 70, '_menu_item_url', ''),
(266, 71, '_menu_item_type', 'post_type'),
(267, 71, '_menu_item_menu_item_parent', '0'),
(268, 71, '_menu_item_object_id', '59'),
(269, 71, '_menu_item_object', 'page'),
(270, 71, '_menu_item_target', ''),
(271, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(272, 71, '_menu_item_xfn', ''),
(273, 71, '_menu_item_url', ''),
(275, 72, '_menu_item_type', 'post_type'),
(276, 72, '_menu_item_menu_item_parent', '0'),
(277, 72, '_menu_item_object_id', '57'),
(278, 72, '_menu_item_object', 'page'),
(279, 72, '_menu_item_target', ''),
(280, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(281, 72, '_menu_item_xfn', ''),
(282, 72, '_menu_item_url', ''),
(283, 49, '_wp_trash_meta_status', 'publish'),
(284, 49, '_wp_trash_meta_time', '1539589979'),
(285, 49, '_wp_desired_post_slug', 'another-news-storya-refugee-week-exclusive-screening-copy'),
(286, 50, '_wp_trash_meta_status', 'publish'),
(287, 50, '_wp_trash_meta_time', '1539589986'),
(288, 50, '_wp_desired_post_slug', 'morning-tea-with-van-badham-copy'),
(289, 51, '_wp_trash_meta_status', 'publish'),
(290, 51, '_wp_trash_meta_time', '1539589992'),
(291, 51, '_wp_desired_post_slug', 'the-cleaners-a-hraff-fundraider-copy'),
(292, 74, '_edit_last', '1'),
(293, 74, '_edit_lock', '1540525477:1'),
(294, 74, 'subtitle', 'USA / 2017 / 85 MINS/ ENGLISH / DOCUMENTARY'),
(295, 74, '_subtitle', 'field_5bb4b8b2aadef'),
(296, 74, 'classification', ''),
(297, 74, '_classification', 'field_5bb4b9dba1f93'),
(298, 74, 'when', '2018-05-11 20:15:00'),
(299, 74, '_when', 'field_5bb4bb11a1f94'),
(300, 74, 'where', 'ACMI Cinemas'),
(301, 74, '_where', 'field_5bb4bb7da1f95'),
(302, 74, 'city', 'Melbourne'),
(303, 74, '_city', 'field_5bb89e8060476'),
(304, 74, 'summary', '“A Better Man takes on the issue of violence against women from an angle we have never seen before...'),
(305, 74, '_summary', 'field_5bb4bcbc98e8f'),
(306, 74, 'youtube_video_id', ''),
(307, 74, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(308, 74, 'cover_photo', ''),
(309, 74, '_cover_photo', 'field_5bc445d801b5e'),
(310, 45, 'cover_photo', ''),
(311, 45, '_cover_photo', 'field_5bc445d801b5e'),
(312, 76, '_wp_attached_file', '2018/10/1.png'),
(313, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:13:\"2018/10/1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 74, '_thumbnail_id', '76'),
(315, 78, 'subtitle', 'USA / 2017 / 85 MINS/ ENGLISH / DOCUMENTARY'),
(316, 78, '_subtitle', 'field_5bb4b8b2aadef'),
(317, 78, 'classification', ''),
(318, 78, '_classification', 'field_5bb4b9dba1f93'),
(319, 78, 'when', '2018-05-11 20:15:00'),
(320, 78, '_when', 'field_5bb4bb11a1f94'),
(321, 78, 'where', 'ACMI Cinemas'),
(322, 78, '_where', 'field_5bb4bb7da1f95'),
(323, 78, 'city', 'Melbourne'),
(324, 78, '_city', 'field_5bb89e8060476'),
(325, 78, 'summary', 'A Better Man takes on the issue of violence against women from an angle we have never seen before...'),
(326, 78, '_summary', 'field_5bb4bcbc98e8f'),
(327, 78, 'youtube_video_id', 'watch?v=SDm2-4e69H0'),
(328, 78, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(329, 78, 'cover_photo', ''),
(330, 78, '_cover_photo', 'field_5bc445d801b5e'),
(331, 79, '_edit_last', '1'),
(332, 79, '_edit_lock', '1540525707:1'),
(333, 80, '_wp_attached_file', '2018/10/2.png'),
(334, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:388;s:6:\"height\";i:287;s:4:\"file\";s:13:\"2018/10/2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 79, '_thumbnail_id', '80'),
(336, 79, 'subtitle', ''),
(337, 79, '_subtitle', 'field_5bb4b8b2aadef'),
(338, 79, 'classification', ''),
(339, 79, '_classification', 'field_5bb4b9dba1f93'),
(340, 79, 'when', '2018-05-12 06:00:00'),
(341, 79, '_when', 'field_5bb4bb11a1f94'),
(342, 79, 'where', 'Footscray Community Arts Centre '),
(343, 79, '_where', 'field_5bb4bb7da1f95'),
(344, 79, 'city', 'Melbourne'),
(345, 79, '_city', 'field_5bb89e8060476'),
(346, 79, 'summary', 'Emerging Female Filmmakers Networking Event & Special Screening of The Song Keepers'),
(347, 79, '_summary', 'field_5bb4bcbc98e8f'),
(348, 79, 'youtube_video_id', ''),
(349, 79, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(350, 79, 'cover_photo', ''),
(351, 79, '_cover_photo', 'field_5bc445d801b5e'),
(352, 81, '_edit_last', '1'),
(353, 81, '_edit_lock', '1540525812:1'),
(354, 82, '_wp_attached_file', '2018/10/3.png'),
(355, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:13:\"2018/10/3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 81, '_thumbnail_id', '82'),
(357, 81, 'subtitle', ''),
(358, 81, '_subtitle', 'field_5bb4b8b2aadef'),
(359, 81, 'classification', ''),
(360, 81, '_classification', 'field_5bb4b9dba1f93'),
(361, 81, 'when', '2018-05-02 18:30:00'),
(362, 81, '_when', 'field_5bb4bb11a1f94'),
(363, 81, 'where', 'Sun Theatre'),
(364, 81, '_where', 'field_5bb4bb7da1f95'),
(365, 81, 'city', 'Melbourne'),
(366, 81, '_city', 'field_5bb89e8060476'),
(367, 81, 'summary', 'A Film Showcase and Conversation with Local Filmmakers of African Heritage'),
(368, 81, '_summary', 'field_5bb4bcbc98e8f'),
(369, 81, 'youtube_video_id', ''),
(370, 81, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(371, 81, 'cover_photo', ''),
(372, 81, '_cover_photo', 'field_5bc445d801b5e'),
(373, 83, '_edit_last', '1'),
(374, 83, '_edit_lock', '1540525709:1'),
(375, 84, '_wp_attached_file', '2018/10/4.png'),
(376, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:388;s:6:\"height\";i:279;s:4:\"file\";s:13:\"2018/10/4.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x216.png\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(377, 83, '_thumbnail_id', '84'),
(378, 83, 'subtitle', ''),
(379, 83, '_subtitle', 'field_5bb4b8b2aadef'),
(380, 83, 'classification', ''),
(381, 83, '_classification', 'field_5bb4b9dba1f93'),
(382, 83, 'when', '2018-05-05 13:00:00'),
(383, 83, '_when', 'field_5bb4bb11a1f94'),
(384, 83, 'where', 'Studio 1, ACMI'),
(385, 83, '_where', 'field_5bb4bb7da1f95'),
(386, 83, 'city', 'Melbourne'),
(387, 83, '_city', 'field_5bb89e8060476'),
(388, 83, 'summary', 'HRAFF is proud to present our discussion forum series HRAFF Talks at ACMI...'),
(389, 83, '_summary', 'field_5bb4bcbc98e8f'),
(390, 83, 'youtube_video_id', ''),
(391, 83, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(392, 83, 'cover_photo', ''),
(393, 83, '_cover_photo', 'field_5bc445d801b5e'),
(394, 85, '_edit_last', '1'),
(395, 85, '_edit_lock', '1540525717:1'),
(396, 85, '_thumbnail_id', '84'),
(397, 85, 'subtitle', ''),
(398, 85, '_subtitle', 'field_5bb4b8b2aadef'),
(399, 85, 'classification', ''),
(400, 85, '_classification', 'field_5bb4b9dba1f93'),
(401, 85, 'when', '2018-05-06 13:00:00'),
(402, 85, '_when', 'field_5bb4bb11a1f94'),
(403, 85, 'where', 'Studio 1, ACMI'),
(404, 85, '_where', 'field_5bb4bb7da1f95'),
(405, 85, 'city', 'Melbourne'),
(406, 85, '_city', 'field_5bb89e8060476'),
(407, 85, 'summary', 'HRAFF is proud to present our discussion forum series HRAFF Talks at ACMI...'),
(408, 85, '_summary', 'field_5bb4bcbc98e8f'),
(409, 85, 'youtube_video_id', ''),
(410, 85, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(411, 85, 'cover_photo', ''),
(412, 85, '_cover_photo', 'field_5bc445d801b5e'),
(413, 86, '_edit_last', '1'),
(414, 86, '_edit_lock', '1540525711:1'),
(415, 86, 'subtitle', ''),
(416, 86, '_subtitle', 'field_5bb4b8b2aadef'),
(417, 86, 'classification', ''),
(418, 86, '_classification', 'field_5bb4b9dba1f93'),
(419, 86, 'when', '2018-05-12 13:00:00'),
(420, 86, '_when', 'field_5bb4bb11a1f94'),
(421, 86, 'where', 'Studio 1, ACMI'),
(422, 86, '_where', 'field_5bb4bb7da1f95'),
(423, 86, 'city', 'Melbourne'),
(424, 86, '_city', 'field_5bb89e8060476'),
(425, 86, 'summary', 'HRAFF is proud to present our discussion forum series HRAFF Talks at ACMI...'),
(426, 86, '_summary', 'field_5bb4bcbc98e8f'),
(427, 86, 'youtube_video_id', ''),
(428, 86, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(429, 86, 'cover_photo', ''),
(430, 86, '_cover_photo', 'field_5bc445d801b5e'),
(431, 87, '_edit_last', '1'),
(432, 87, '_edit_lock', '1540525714:1'),
(433, 87, '_thumbnail_id', '84'),
(434, 87, 'subtitle', ''),
(435, 87, '_subtitle', 'field_5bb4b8b2aadef'),
(436, 87, 'classification', ''),
(437, 87, '_classification', 'field_5bb4b9dba1f93'),
(438, 87, 'when', '2018-05-13 13:00:00'),
(439, 87, '_when', 'field_5bb4bb11a1f94'),
(440, 87, 'where', 'Studio 1, ACMI'),
(441, 87, '_where', 'field_5bb4bb7da1f95'),
(442, 87, 'city', 'Melbourne'),
(443, 87, '_city', 'field_5bb89e8060476'),
(444, 87, 'summary', 'HRAFF is proud to present our discussion forum series HRAFF Talks at ACMI...'),
(445, 87, '_summary', 'field_5bb4bcbc98e8f'),
(446, 87, 'youtube_video_id', ''),
(447, 87, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(448, 87, 'cover_photo', ''),
(449, 87, '_cover_photo', 'field_5bc445d801b5e'),
(450, 88, '_edit_last', '1'),
(451, 88, '_edit_lock', '1540525467:1'),
(452, 89, '_wp_attached_file', '2018/10/5.png'),
(453, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:13:\"2018/10/5.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(454, 88, '_thumbnail_id', '89'),
(455, 88, 'subtitle', ''),
(456, 88, '_subtitle', 'field_5bb4b8b2aadef'),
(457, 88, 'classification', ''),
(458, 88, '_classification', 'field_5bb4b9dba1f93'),
(459, 88, 'when', '2018-05-31 19:00:00'),
(460, 88, '_when', 'field_5bb4bb11a1f94'),
(461, 88, 'where', 'Red Scooter'),
(462, 88, '_where', 'field_5bb4bb7da1f95'),
(463, 88, 'city', 'Melbourne'),
(464, 88, '_city', 'field_5bb89e8060476'),
(465, 88, 'summary', 'Our flagship event, the 2018 HRAFF Gala will be held at Red Scooter from 7pm on Thursday 31 May for what promises to be a wonderful night of cocktails, canapés and entertainment...'),
(466, 88, '_summary', 'field_5bb4bcbc98e8f'),
(467, 88, 'youtube_video_id', ''),
(468, 88, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(469, 88, 'cover_photo', ''),
(470, 88, '_cover_photo', 'field_5bc445d801b5e'),
(471, 90, '_edit_last', '1'),
(472, 90, '_edit_lock', '1540525916:1'),
(473, 91, '_wp_attached_file', '2018/10/6.png'),
(474, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:388;s:6:\"height\";i:285;s:4:\"file\";s:13:\"2018/10/6.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(475, 90, '_thumbnail_id', '91'),
(476, 90, 'subtitle', 'Australia / 84 minutes / English, Western Arrarnta and Pitjantjatjara with English subtitles / Documentary'),
(477, 90, '_subtitle', 'field_5bb4b8b2aadef'),
(478, 90, 'classification', ''),
(479, 90, '_classification', 'field_5bb4b9dba1f93'),
(480, 90, 'when', '2018-05-10 20:00:00'),
(481, 90, '_when', 'field_5bb4bb11a1f94'),
(482, 90, 'where', 'ACMI Cinemas'),
(483, 90, '_where', 'field_5bb4bb7da1f95'),
(484, 90, 'city', 'Melbourne'),
(485, 90, '_city', 'field_5bb89e8060476'),
(486, 90, 'summary', '“Central Australia’s answer to The Buena Vista Social Club.” MELBOURNE INTERNATIONAL FILM FESTIVAL'),
(487, 90, '_summary', 'field_5bb4bcbc98e8f'),
(488, 90, 'youtube_video_id', ''),
(489, 90, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(490, 90, 'cover_photo', ''),
(491, 90, '_cover_photo', 'field_5bc445d801b5e'),
(492, 86, '_thumbnail_id', '84'),
(493, 92, '_edit_last', '1'),
(494, 92, '_edit_lock', '1540525745:1'),
(495, 93, '_wp_attached_file', '2018/10/7.png'),
(496, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:287;s:4:\"file\";s:13:\"2018/10/7.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(497, 92, '_thumbnail_id', '93'),
(498, 92, 'subtitle', ''),
(499, 92, '_subtitle', 'field_5bb4b8b2aadef'),
(500, 92, 'classification', 'M'),
(501, 92, '_classification', 'field_5bb4b9dba1f93'),
(502, 92, 'when', '2018-05-17 19:00:00'),
(503, 92, '_when', 'field_5bb4bb11a1f94'),
(504, 92, 'where', 'ACMI Cinemas'),
(505, 92, '_where', 'field_5bb4bb7da1f95'),
(506, 92, 'city', 'Melbourne'),
(507, 92, '_city', 'field_5bb89e8060476'),
(508, 92, 'summary', '“What is horrifying and sad is punctuated only by the heroism of its subjects and of the filmmakers themselves.”'),
(509, 92, '_summary', 'field_5bb4bcbc98e8f'),
(510, 92, 'youtube_video_id', ''),
(511, 92, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(512, 92, 'cover_photo', ''),
(513, 92, '_cover_photo', 'field_5bc445d801b5e'),
(514, 94, '_edit_last', '1'),
(515, 94, '_edit_lock', '1540525672:1'),
(516, 94, 'subtitle', ''),
(517, 94, '_subtitle', 'field_5bb4b8b2aadef'),
(518, 94, 'classification', 'M'),
(519, 94, '_classification', 'field_5bb4b9dba1f93'),
(520, 94, 'when', '2018-05-11 18:00:00'),
(521, 94, '_when', 'field_5bb4bb11a1f94'),
(522, 94, 'where', 'ACMI Cinemas'),
(523, 94, '_where', 'field_5bb4bb7da1f95'),
(524, 94, 'city', 'Melbourne'),
(525, 94, '_city', 'field_5bb89e8060476'),
(526, 94, 'summary', '“Her Sound, Her Story is a vibrant and powerful perspective on the turbulent music industry.” BEAT MAGAZINE'),
(527, 94, '_summary', 'field_5bb4bcbc98e8f'),
(528, 94, 'youtube_video_id', ''),
(529, 94, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(530, 94, 'cover_photo', ''),
(531, 94, '_cover_photo', 'field_5bc445d801b5e'),
(532, 95, '_wp_attached_file', '2018/10/8.png'),
(533, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:388;s:6:\"height\";i:288;s:4:\"file\";s:13:\"2018/10/8.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x223.png\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(534, 94, '_thumbnail_id', '95'),
(535, 96, '_edit_last', '1'),
(536, 96, '_edit_lock', '1540525919:1'),
(537, 97, '_wp_attached_file', '2018/10/9.png'),
(538, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:287;s:4:\"file\";s:13:\"2018/10/9.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(539, 96, '_thumbnail_id', '97'),
(540, 96, 'subtitle', ''),
(541, 96, '_subtitle', 'field_5bb4b8b2aadef'),
(542, 96, 'classification', ''),
(543, 96, '_classification', 'field_5bb4b9dba1f93'),
(544, 96, 'when', '2018-05-04 11:00:00'),
(545, 96, '_when', 'field_5bb4bb11a1f94'),
(546, 96, 'where', 'Palace Electric'),
(547, 96, '_where', 'field_5bb4bb7da1f95'),
(548, 96, 'city', 'Canberra'),
(549, 96, '_city', 'field_5bb89e8060476'),
(550, 96, 'summary', '“This is a highly pertinent story told in an entertaining way.” THE NEW YORK TIMES'),
(551, 96, '_summary', 'field_5bb4bcbc98e8f'),
(552, 96, 'youtube_video_id', ''),
(553, 96, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(554, 96, 'cover_photo', ''),
(555, 96, '_cover_photo', 'field_5bc445d801b5e'),
(556, 98, '_edit_last', '1'),
(557, 98, '_edit_lock', '1540525720:1'),
(558, 98, 'subtitle', ''),
(559, 98, '_subtitle', 'field_5bb4b8b2aadef'),
(560, 98, 'classification', ''),
(561, 98, '_classification', 'field_5bb4b9dba1f93'),
(562, 98, 'when', '2018-05-13 00:00:00'),
(563, 98, '_when', 'field_5bb4bb11a1f94'),
(564, 98, 'where', 'ACMI Cinemas'),
(565, 98, '_where', 'field_5bb4bb7da1f95'),
(566, 98, 'city', 'Melbourne'),
(567, 98, '_city', 'field_5bb89e8060476'),
(568, 98, 'summary', '“There’s so much to draw from Jackson. Maisie Crow has crafted a truly challenging and thought provoking film...'),
(569, 98, '_summary', 'field_5bb4bcbc98e8f'),
(570, 98, 'youtube_video_id', ''),
(571, 98, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(572, 98, 'cover_photo', ''),
(573, 98, '_cover_photo', 'field_5bc445d801b5e'),
(574, 99, '_wp_attached_file', '2018/10/10.png'),
(575, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:14:\"2018/10/10.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"10-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(576, 98, '_thumbnail_id', '99'),
(577, 100, '_edit_last', '1'),
(578, 100, '_edit_lock', '1540525722:1'),
(579, 101, '_wp_attached_file', '2018/10/11.png'),
(580, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:14:\"2018/10/11.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"11-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(581, 100, '_thumbnail_id', '101'),
(582, 100, 'subtitle', ''),
(583, 100, '_subtitle', 'field_5bb4b8b2aadef'),
(584, 100, 'classification', ''),
(585, 100, '_classification', 'field_5bb4b9dba1f93'),
(586, 100, 'when', '2018-05-13 20:15:00'),
(587, 100, '_when', 'field_5bb4bb11a1f94'),
(588, 100, 'where', 'ACMI Cinemas'),
(589, 100, '_where', 'field_5bb4bb7da1f95'),
(590, 100, 'city', 'Melbourne'),
(591, 100, '_city', 'field_5bb89e8060476'),
(592, 100, 'summary', '“Jaha’s Promise cuts straight through such confusion to hammer home the core inhumanities. It clarifies and simplifies. Most importantly, it confirms that...'),
(593, 100, '_summary', 'field_5bb4bcbc98e8f'),
(594, 100, 'youtube_video_id', ''),
(595, 100, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(596, 100, 'cover_photo', ''),
(597, 100, '_cover_photo', 'field_5bc445d801b5e'),
(598, 102, '_edit_last', '1'),
(599, 102, '_edit_lock', '1540525752:1'),
(600, 103, '_wp_attached_file', '2018/10/12.png'),
(601, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:287;s:4:\"file\";s:14:\"2018/10/12.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"12-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"12-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(602, 102, '_thumbnail_id', '103'),
(603, 102, 'subtitle', ''),
(604, 102, '_subtitle', 'field_5bb4b8b2aadef'),
(605, 102, 'classification', ''),
(606, 102, '_classification', 'field_5bb4b9dba1f93'),
(607, 102, 'when', '2018-05-16 18:00:00'),
(608, 102, '_when', 'field_5bb4bb11a1f94'),
(609, 102, 'where', 'ACMI Cinemas'),
(610, 102, '_where', 'field_5bb4bb7da1f95'),
(611, 102, 'city', 'Melbourne'),
(612, 102, '_city', 'field_5bb89e8060476'),
(613, 102, 'summary', '“Mesmerizing and unflinching ‘Leitis in Waiting’ is a true gift to the world.” NETWORK FOR THE PROMOTION OF ASIAN PACIFIC CINEMA'),
(614, 102, '_summary', 'field_5bb4bcbc98e8f'),
(615, 102, 'youtube_video_id', ''),
(616, 102, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(617, 102, 'cover_photo', ''),
(618, 102, '_cover_photo', 'field_5bc445d801b5e'),
(619, 104, '_edit_last', '1'),
(620, 104, '_edit_lock', '1540525609:1'),
(621, 105, '_wp_attached_file', '2018/10/13.png'),
(622, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:14:\"2018/10/13.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"13-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"13-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(623, 104, '_thumbnail_id', '105'),
(624, 104, 'subtitle', ''),
(625, 104, '_subtitle', 'field_5bb4b8b2aadef'),
(626, 104, 'classification', ''),
(627, 104, '_classification', 'field_5bb4b9dba1f93'),
(628, 104, 'when', '2018-05-12 18:00:00'),
(629, 104, '_when', 'field_5bb4bb11a1f94'),
(630, 104, 'where', 'ACMI Cinemas'),
(631, 104, '_where', 'field_5bb4bb7da1f95'),
(632, 104, 'city', 'Melbourne'),
(633, 104, '_city', 'field_5bb89e8060476'),
(634, 104, 'summary', '“So powerful. Moving and irrefutable evidence of the place we have journeyed to. How will future generations judge us all?\"'),
(635, 104, '_summary', 'field_5bb4bcbc98e8f'),
(636, 104, 'youtube_video_id', ''),
(637, 104, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(638, 104, 'cover_photo', ''),
(639, 104, '_cover_photo', 'field_5bc445d801b5e'),
(640, 106, '_edit_last', '1'),
(641, 106, '_edit_lock', '1540525915:1'),
(642, 107, '_wp_attached_file', '2018/10/14.png'),
(643, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:289;s:4:\"file\";s:14:\"2018/10/14.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"14-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"14-300x223.png\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(644, 106, '_thumbnail_id', '107'),
(645, 106, 'subtitle', ''),
(646, 106, '_subtitle', 'field_5bb4b8b2aadef'),
(647, 106, 'classification', 'M'),
(648, 106, '_classification', 'field_5bb4b9dba1f93'),
(649, 106, 'when', '2018-05-04 18:00:00'),
(650, 106, '_when', 'field_5bb4bb11a1f94'),
(651, 106, 'where', 'ACMI Cinemas'),
(652, 106, '_where', 'field_5bb4bb7da1f95'),
(653, 106, 'city', 'Melbourne'),
(654, 106, '_city', 'field_5bb89e8060476'),
(655, 106, 'summary', '“It’s not every day that a documentary shakes the ground as surely as the average blockbuster, or keeps us...'),
(656, 106, '_summary', 'field_5bb4bcbc98e8f'),
(657, 106, 'youtube_video_id', ''),
(658, 106, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(659, 106, 'cover_photo', ''),
(660, 106, '_cover_photo', 'field_5bc445d801b5e'),
(661, 108, '_edit_last', '1'),
(662, 108, '_edit_lock', '1540525529:1'),
(663, 109, '_wp_attached_file', '2018/10/15.png'),
(664, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:286;s:4:\"file\";s:14:\"2018/10/15.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"15-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"15-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 108, '_thumbnail_id', '109'),
(666, 108, 'subtitle', ''),
(667, 108, '_subtitle', 'field_5bb4b8b2aadef'),
(668, 108, 'classification', 'M'),
(669, 108, '_classification', 'field_5bb4b9dba1f93'),
(670, 108, 'when', '2018-05-12 20:30:00'),
(671, 108, '_when', 'field_5bb4bb11a1f94'),
(672, 108, 'where', 'ACMI Cinemas'),
(673, 108, '_where', 'field_5bb4bb7da1f95'),
(674, 108, 'city', 'Melbourne'),
(675, 108, '_city', 'field_5bb89e8060476'),
(676, 108, 'summary', '“A magnificent and epic documentary of historic proportions.” '),
(677, 108, '_summary', 'field_5bb4bcbc98e8f'),
(678, 108, 'youtube_video_id', ''),
(679, 108, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(680, 108, 'cover_photo', ''),
(681, 108, '_cover_photo', 'field_5bc445d801b5e'),
(682, 110, '_edit_last', '1'),
(683, 110, '_edit_lock', '1540525637:1'),
(684, 111, '_wp_attached_file', '2018/10/16.png'),
(685, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:287;s:4:\"file\";s:14:\"2018/10/16.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"16-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"16-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(686, 110, '_thumbnail_id', '111'),
(687, 110, 'subtitle', ''),
(688, 110, '_subtitle', 'field_5bb4b8b2aadef'),
(689, 110, 'classification', ''),
(690, 110, '_classification', 'field_5bb4b9dba1f93'),
(691, 110, 'when', '2018-05-04 20:15:00'),
(692, 110, '_when', 'field_5bb4bb11a1f94'),
(693, 110, 'where', 'ACMI Cinemas'),
(694, 110, '_where', 'field_5bb4bb7da1f95'),
(695, 110, 'city', 'Melbourne'),
(696, 110, '_city', 'field_5bb89e8060476'),
(697, 110, 'summary', '“Proof that wild young men can change.”'),
(698, 110, '_summary', 'field_5bb4bcbc98e8f'),
(699, 110, 'youtube_video_id', ''),
(700, 110, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(701, 110, 'cover_photo', ''),
(702, 110, '_cover_photo', 'field_5bc445d801b5e'),
(703, 112, '_edit_last', '1'),
(704, 112, '_edit_lock', '1540525726:1'),
(705, 113, '_wp_attached_file', '2018/10/17.png'),
(706, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:285;s:4:\"file\";s:14:\"2018/10/17.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"17-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"17-300x220.png\";s:5:\"width\";i:300;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(707, 112, '_thumbnail_id', '113'),
(708, 112, 'subtitle', ''),
(709, 112, '_subtitle', 'field_5bb4b8b2aadef'),
(710, 112, 'classification', ''),
(711, 112, '_classification', 'field_5bb4b9dba1f93'),
(712, 112, 'when', '2018-05-10 18:00:00'),
(713, 112, '_when', 'field_5bb4bb11a1f94'),
(714, 112, 'where', 'ACMI Cinemas'),
(715, 112, '_where', 'field_5bb4bb7da1f95'),
(716, 112, 'city', 'Melbourne'),
(717, 112, '_city', 'field_5bb89e8060476'),
(718, 112, 'summary', '“Filled with humanistic grace notes, the thoughtful Land of the Free encourages empathy without a trace of pity.”'),
(719, 112, '_summary', 'field_5bb4bcbc98e8f'),
(720, 112, 'youtube_video_id', ''),
(721, 112, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(722, 112, 'cover_photo', ''),
(723, 112, '_cover_photo', 'field_5bc445d801b5e'),
(724, 114, '_edit_last', '1'),
(725, 114, '_edit_lock', '1540525653:1'),
(726, 115, '_wp_attached_file', '2018/10/18.png'),
(727, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:287;s:4:\"file\";s:14:\"2018/10/18.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"18-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"18-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(728, 114, '_thumbnail_id', '115'),
(729, 114, 'subtitle', ''),
(730, 114, '_subtitle', 'field_5bb4b8b2aadef'),
(731, 114, 'classification', ''),
(732, 114, '_classification', 'field_5bb4b9dba1f93'),
(733, 114, 'when', '2018-05-10 20:30:00'),
(734, 114, '_when', 'field_5bb4bb11a1f94'),
(735, 114, 'where', 'ACMI Cinemas'),
(736, 114, '_where', 'field_5bb4bb7da1f95'),
(737, 114, 'city', 'Melbourne'),
(738, 114, '_city', 'field_5bb89e8060476'),
(739, 114, 'summary', '“A powerful Australian feature about the unstoppable Founder and CEO of OzHarvest, Ronni Kahn...'),
(740, 114, '_summary', 'field_5bb4bcbc98e8f'),
(741, 114, 'youtube_video_id', ''),
(742, 114, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(743, 114, 'cover_photo', ''),
(744, 114, '_cover_photo', 'field_5bc445d801b5e'),
(745, 116, '_edit_last', '1'),
(746, 116, '_edit_lock', '1540525811:1'),
(747, 117, '_wp_attached_file', '2018/10/19.png'),
(748, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:14:\"2018/10/19.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"19-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"19-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(749, 116, '_thumbnail_id', '117'),
(750, 116, 'subtitle', 'BRAZIL / 81 mins / PORTUGUESE WITH ENGLISH SUBTITLE / DOCUMENTARY'),
(751, 116, '_subtitle', 'field_5bb4b8b2aadef'),
(752, 116, 'classification', ''),
(753, 116, '_classification', 'field_5bb4b9dba1f93'),
(754, 116, 'when', '2018-05-15 20:00:00');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(755, 116, '_when', 'field_5bb4bb11a1f94'),
(756, 116, 'where', 'ACMI Cinemas'),
(757, 116, '_where', 'field_5bb4bb7da1f95'),
(758, 116, 'city', 'Melbourne'),
(759, 116, '_city', 'field_5bb89e8060476'),
(760, 116, 'summary', '“With this poignant, exceptional story, the filmmakers tackle a broad series of issues that should be high up on the international human rights agenda...'),
(761, 116, '_summary', 'field_5bb4bcbc98e8f'),
(762, 116, 'youtube_video_id', ''),
(763, 116, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(764, 116, 'cover_photo', ''),
(765, 116, '_cover_photo', 'field_5bc445d801b5e'),
(766, 118, '_edit_last', '1'),
(767, 118, '_edit_lock', '1540525920:1'),
(768, 119, '_wp_attached_file', '2018/10/20.png'),
(769, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:388;s:6:\"height\";i:288;s:4:\"file\";s:14:\"2018/10/20.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"20-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"20-300x223.png\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(770, 118, '_thumbnail_id', '119'),
(771, 118, 'subtitle', 'CANADA / 80 MINS / ENGLISH / DOCUMENTARY'),
(772, 118, '_subtitle', 'field_5bb4b8b2aadef'),
(773, 118, 'classification', 'PG'),
(774, 118, '_classification', 'field_5bb4b9dba1f93'),
(775, 118, 'when', '2018-05-15 18:00:00'),
(776, 118, '_when', 'field_5bb4bb11a1f94'),
(777, 118, 'where', 'ACMI Cinemas'),
(778, 118, '_where', 'field_5bb4bb7da1f95'),
(779, 118, 'city', 'Melbourne'),
(780, 118, '_city', 'field_5bb89e8060476'),
(781, 118, 'summary', '“A beautifully rendered portrait of an activist striving to change the world.”'),
(782, 118, '_summary', 'field_5bb4bcbc98e8f'),
(783, 118, 'youtube_video_id', ''),
(784, 118, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(785, 118, 'cover_photo', ''),
(786, 118, '_cover_photo', 'field_5bc445d801b5e'),
(787, 120, '_edit_last', '1'),
(788, 120, '_edit_lock', '1540525914:1'),
(789, 121, '_wp_attached_file', '2018/10/21.png'),
(790, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:14:\"2018/10/21.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"21-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(791, 120, '_thumbnail_id', '121'),
(792, 120, 'subtitle', 'AUSTRALIA / 58 MINS / ENGLISH / DOCUMENTARY'),
(793, 120, '_subtitle', 'field_5bb4b8b2aadef'),
(794, 120, 'classification', 'M'),
(795, 120, '_classification', 'field_5bb4b9dba1f93'),
(796, 120, 'when', '2018-05-06 19:00:00'),
(797, 120, '_when', 'field_5bb4bb11a1f94'),
(798, 120, 'where', 'ACMI Cinemas'),
(799, 120, '_where', 'field_5bb4bb7da1f95'),
(800, 120, 'city', 'Melbourne'),
(801, 120, '_city', 'field_5bb89e8060476'),
(802, 120, 'summary', '“A show that combines political critique with arts journalism.” '),
(803, 120, '_summary', 'field_5bb4bcbc98e8f'),
(804, 120, 'youtube_video_id', ''),
(805, 120, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(806, 120, 'cover_photo', ''),
(807, 120, '_cover_photo', 'field_5bc445d801b5e'),
(808, 122, '_edit_last', '1'),
(809, 122, '_edit_lock', '1540525619:1'),
(810, 123, '_wp_attached_file', '2018/10/22.png'),
(811, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:288;s:4:\"file\";s:14:\"2018/10/22.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"22-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"22-300x222.png\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(812, 122, '_thumbnail_id', '123'),
(813, 122, 'subtitle', 'DENMARK / 80 MINS / ENGLISH / DOCUMENTARY'),
(814, 122, '_subtitle', 'field_5bb4b8b2aadef'),
(815, 122, 'classification', ''),
(816, 122, '_classification', 'field_5bb4b9dba1f93'),
(817, 122, 'when', '2018-05-06 17:00:00'),
(818, 122, '_when', 'field_5bb4bb11a1f94'),
(819, 122, 'where', 'ACMI Cinemas'),
(820, 122, '_where', 'field_5bb4bb7da1f95'),
(821, 122, 'city', 'Melbourne'),
(822, 122, '_city', 'field_5bb89e8060476'),
(823, 122, 'summary', '“Real people are much more compelling and their uninhibited conversations allow Timothy George to hold up a mirror to Britain...'),
(824, 122, '_summary', 'field_5bb4bcbc98e8f'),
(825, 122, 'youtube_video_id', ''),
(826, 122, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(827, 122, 'cover_photo', ''),
(828, 122, '_cover_photo', 'field_5bc445d801b5e'),
(829, 124, '_edit_last', '1'),
(830, 124, '_edit_lock', '1539743043:1'),
(831, 125, '_wp_attached_file', '2018/10/23.png'),
(832, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:389;s:6:\"height\";i:287;s:4:\"file\";s:14:\"2018/10/23.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"23-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"23-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(833, 124, '_thumbnail_id', '125'),
(834, 124, 'subtitle', 'GERMANY / 89 MINS / ENGLISH / DOCUMENTARY'),
(835, 124, '_subtitle', 'field_5bb4b8b2aadef'),
(836, 124, 'classification', ''),
(837, 124, '_classification', 'field_5bb4b9dba1f93'),
(838, 124, 'when', '2018-05-08 20:00:00'),
(839, 124, '_when', 'field_5bb4bb11a1f94'),
(840, 124, 'where', 'ACMI Cinemas'),
(841, 124, '_where', 'field_5bb4bb7da1f95'),
(842, 124, 'city', 'Melbourne'),
(843, 124, '_city', 'field_5bb89e8060476'),
(844, 124, 'summary', '“Indispensable documentation of the current tumult around the world, thoroughly researched, convincing and surprisingly enlightening.”'),
(845, 124, '_summary', 'field_5bb4bcbc98e8f'),
(846, 124, 'youtube_video_id', ''),
(847, 124, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(848, 124, 'cover_photo', ''),
(849, 124, '_cover_photo', 'field_5bc445d801b5e'),
(850, 126, '_edit_last', '1'),
(851, 126, '_edit_lock', '1540525917:1'),
(852, 127, '_wp_attached_file', '2018/10/24.png'),
(853, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:390;s:6:\"height\";i:287;s:4:\"file\";s:14:\"2018/10/24.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"24-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"24-300x221.png\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(854, 126, '_thumbnail_id', '127'),
(855, 126, 'subtitle', 'CHILE / 82 MINS / SPANISH WITH ENGLISH SUBTITLE / DOCUMENTARY'),
(856, 126, '_subtitle', 'field_5bb4b8b2aadef'),
(857, 126, 'classification', 'PG'),
(858, 126, '_classification', 'field_5bb4b9dba1f93'),
(859, 126, 'when', '2018-05-05 06:00:00'),
(860, 126, '_when', 'field_5bb4bb11a1f94'),
(861, 126, 'where', 'ACMI Cinemas'),
(862, 126, '_where', 'field_5bb4bb7da1f95'),
(863, 126, 'city', 'Melbourne'),
(864, 126, '_city', 'field_5bb89e8060476'),
(865, 126, 'summary', '“Maite Alberdi’s sensitive, good-humored study of Down syndrome adults expresses anger against the system with a light touch.”'),
(866, 126, '_summary', 'field_5bb4bcbc98e8f'),
(867, 126, 'youtube_video_id', ''),
(868, 126, '_youtube_video_id', 'field_5bb4bf26d6e21'),
(869, 126, 'cover_photo', ''),
(870, 126, '_cover_photo', 'field_5bc445d801b5e'),
(871, 129, '_edit_last', '1'),
(872, 129, '_edit_lock', '1540382685:1'),
(873, 132, '_wp_attached_file', '2018/10/b2eaaf72-8f21-4390-b113-b5b6fc98261c.jpg'),
(874, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:899;s:6:\"height\";i:382;s:4:\"file\";s:48:\"2018/10/b2eaaf72-8f21-4390-b113-b5b6fc98261c.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"b2eaaf72-8f21-4390-b113-b5b6fc98261c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"b2eaaf72-8f21-4390-b113-b5b6fc98261c-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"b2eaaf72-8f21-4390-b113-b5b6fc98261c-768x326.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(875, 129, '_thumbnail_id', '132'),
(876, 24, 'cover_photo', ''),
(877, 24, '_cover_photo', 'field_5bc445d801b5e'),
(878, 47, 'cover_photo', ''),
(879, 47, '_cover_photo', 'field_5bc445d801b5e');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-02 13:39:45', '2018-10-02 13:39:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-10-06 09:07:11', '2018-10-06 09:07:11', '', 0, 'http://localhost:3157/zeta/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-02 13:39:45', '2018-10-02 13:39:45', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a miner by day, aspiring actor by night, and this is my website. I live in Kalgoorlie, have a great dog named Red, and I like yabbies. (And gettin\' a tan.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:3157/zeta/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-10-03 14:22:26', '2018-10-03 14:22:26', '', 0, 'http://localhost:3157/zeta/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-02 13:39:45', '2018-10-02 13:39:45', '<h2>Who we are</h2>\r\nOur website address is: http://localhost:3157/zeta.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-03 14:22:19', '2018-10-03 14:22:19', '', 0, 'http://localhost:3157/zeta/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-10-03 08:18:24', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-03 08:18:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2018-10-03 08:18:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-03 08:18:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?p=6', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-10-03 12:16:58', '2018-10-03 12:16:58', '{\n    \"hraff::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-03 12:16:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ab3d8dd-6be1-4e59-8bed-857af32dae17', '', '', '2018-10-03 12:16:58', '2018-10-03 12:16:58', '', 0, 'http://localhost:3157/zeta/uncategorised/2ab3d8dd-6be1-4e59-8bed-857af32dae17/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-10-03 12:18:56', '2018-10-03 12:18:56', '{\n    \"hraff::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-03 12:17:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4d9bb2f-f734-4166-837a-01fda7442e77', '', '', '2018-10-03 12:18:56', '2018-10-03 12:18:56', '', 0, 'http://localhost:3157/zeta/?p=11', 0, 'customize_changeset', '', 0),
(13, 1, '2018-10-03 12:43:49', '2018-10-03 12:43:49', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event Details', 'event-details', 'publish', 'closed', 'closed', '', 'group_5bb4b89b97baf', '', '', '2018-10-15 07:49:54', '2018-10-15 07:49:54', '', 0, 'http://localhost:3157/zeta/?post_type=acf-field-group&#038;p=13', 0, 'acf-field-group', '', 0),
(15, 1, '2018-10-03 12:43:49', '2018-10-03 12:43:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:123:\"A subtitle for the event. This can include the length of the event, any important personnel, languages, type of event, etc.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:52:\"ORBAN WALLACE / UK / 84 MINS / ENGLISH / DOCUMENTARY\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5bb4b8b2aadef', '', '', '2018-10-06 13:19:50', '2018-10-06 13:19:50', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=15', 0, 'acf-field', '', 0),
(16, 1, '2018-10-03 12:54:39', '2018-10-03 12:54:39', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:10:{s:1:\"E\";s:1:\"E\";s:1:\"C\";s:1:\"C\";s:1:\"P\";s:1:\"P\";s:1:\"G\";s:1:\"G\";s:2:\"PG\";s:2:\"PG\";s:1:\"M\";s:1:\"M\";s:2:\"MA\";s:2:\"MA\";s:2:\"AV\";s:2:\"AV\";s:1:\"R\";s:1:\"R\";s:1:\"X\";s:1:\"X\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Classification', 'classification', 'publish', 'closed', 'closed', '', 'field_5bb4b9dba1f93', '', '', '2018-10-06 11:36:17', '2018-10-06 11:36:17', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=16', 1, 'acf-field', '', 0),
(17, 1, '2018-10-03 12:54:39', '2018-10-03 12:54:39', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:56:\"Date and time for when the event is expected to be held.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:12:\"F j, Y g:i a\";s:13:\"return_format\";s:12:\"F j, Y g:i a\";s:9:\"first_day\";i:1;}', 'When', 'when', 'publish', 'closed', 'closed', '', 'field_5bb4bb11a1f94', '', '', '2018-10-03 12:54:39', '2018-10-03 12:54:39', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&p=17', 2, 'acf-field', '', 0),
(18, 1, '2018-10-03 12:54:39', '2018-10-03 12:54:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:93:\"The address or venue where the event is to be held. Please do not include the city name here.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Where', 'where', 'publish', 'closed', 'closed', '', 'field_5bb4bb7da1f95', '', '', '2018-10-03 12:54:39', '2018-10-03 12:54:39', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&p=18', 3, 'acf-field', '', 0),
(21, 1, '2018-10-03 12:58:13', '2018-10-03 12:58:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:146:\"A short summary of the event limited to 25 words. Exceeding the 25 words limit will mean the summary of events will not be displayed in the theme.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Summary', 'summary', 'publish', 'closed', 'closed', '', 'field_5bb4bcbc98e8f', '', '', '2018-10-06 11:38:06', '2018-10-06 11:38:06', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=21', 5, 'acf-field', '', 0),
(24, 1, '2018-10-03 13:14:24', '2018-10-03 13:14:24', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.\r\n\r\n\"<em>A magnificent and epic documentary of historic proportions.</em>\" ROBERT TEMPLE\r\n\r\nHow does the media manufacture the news of the refugee crisis in the Mediterranean? Another News Story takes a unique perspective to present the chaotic event by turning the camera to the journalists covering the humanitarian tragedy. As the refugees move from the Greek island of Lesbos to cross Europe, they are faced with all sorts of obstacles and uncertainties. Along the way they are followed by fellow travellers – journalists, producers and cameramen who are pursuing breaking news. The juxtaposition of suffering refugee experience and the meditated news story questions news making ethics and our standpoint as an audience.\r\n\r\n<em>About the guest speaker Joseph Youhana, Programs Manager – Settlement, Youth and Families, Brotherhood of St Laurence:</em>\r\n\r\nJoseph will join us in cinema to share his inspiring personal story of fleeing his home in Iraq and creating a new life in Australia. He will also speak about his work in the Brotherhood’s Multicultural Communities Team where he manages a variety of youth, family and employment programs that support refugees and asylum seekers to settle in Australia.\r\n\r\n<strong>$30 ticket includes:</strong>\r\n<ul>\r\n 	<li>Pre-film drinks and nibbles</li>\r\n 	<li>The exclusive screening of Another News Story</li>\r\n 	<li>Guest speaker, Joseph Youhana</li>\r\n</ul>', 'Another news story: a refugee week exclusive screening', '', 'publish', 'closed', 'closed', '', 'another-news-storya-refugee-week-exclusive-screening', '', '', '2018-10-26 03:47:29', '2018-10-26 03:47:29', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=24', 0, 'event', '', 0),
(25, 1, '2018-10-03 13:10:32', '2018-10-03 13:10:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:108:\"The Youtube video id that is usually found in the youtube video\'s url after the final slash (\'/\') character.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:11:\"_N2nZAThjcw\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Youtube Video ID', 'youtube_video_id', 'publish', 'closed', 'closed', '', 'field_5bb4bf26d6e21', '', '', '2018-10-06 11:38:06', '2018-10-06 11:38:06', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&#038;p=25', 6, 'acf-field', '', 0),
(26, 1, '2018-10-03 13:14:07', '2018-10-03 13:14:07', '', 'f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200', '', 'inherit', 'open', 'closed', '', 'f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200', '', '', '2018-10-03 13:14:07', '2018-10-03 13:14:07', '', 24, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/f17f06e8-a21d-4d97-996e-25eaae60ca23-480x200.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-10-03 14:22:03', '2018-10-03 14:22:03', '<h2>Who we are</h2><p>Our website address is: http://localhost:3157/zeta.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-03 14:22:03', '2018-10-03 14:22:03', '', 3, 'http://localhost:3157/zeta/uncategorised/3-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-10-03 14:22:19', '2018-10-03 14:22:19', '<h2>Who we are</h2>\r\nOur website address is: http://localhost:3157/zeta.\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<h3>Comments</h3>\r\nWhen visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.\r\n\r\nAn anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.\r\n<h3>Media</h3>\r\nIf you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.\r\n<h3>Contact forms</h3>\r\n<h3>Cookies</h3>\r\nIf you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.\r\n\r\nIf you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.\r\n\r\nWhen you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.\r\n\r\nIf you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.\r\n<h3>Embedded content from other websites</h3>\r\nArticles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.\r\n\r\nThese websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.\r\n<h3>Analytics</h3>\r\n<h2>Who we share your data with</h2>\r\n<h2>How long we retain your data</h2>\r\nIf you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.\r\n\r\nFor users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.\r\n<h2>What rights you have over your data</h2>\r\nIf you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.\r\n<h2>Where we send your data</h2>\r\nVisitor comments may be checked through an automated spam detection service.\r\n<h2>Your contact information</h2>\r\n<h2>Additional information</h2>\r\n<h3>How we protect your data</h3>\r\n<h3>What data breach procedures we have in place</h3>\r\n<h3>What third parties we receive data from</h3>\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-03 14:22:19', '2018-10-03 14:22:19', '', 3, 'http://localhost:3157/zeta/uncategorised/3-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-10-03 14:22:26', '2018-10-03 14:22:26', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a miner by day, aspiring actor by night, and this is my website. I live in Kalgoorlie, have a great dog named Red, and I like yabbies. (And gettin\' a tan.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:3157/zeta/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-10-03 14:22:26', '2018-10-03 14:22:26', '', 2, 'http://localhost:3157/zeta/uncategorised/2-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-10-03 14:23:38', '2018-10-03 14:23:38', 'AGREEMENT BETWEEN USER AND Human Rights Arts &amp; Film Festival\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is comprised of various Web pages operated by Human Rights Arts &amp; Film Festival.\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is offered to you conditioned on your acceptance without modification of the terms, conditions, and notices contained herein. Your use of the Human Rights Arts &amp; Film Festival Web Site constitutes your agreement to all such terms, conditions, and notices.\r\n\r\nMODIFICATION OF THESE TERMS OF USE\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right to change the terms, conditions, and notices under which the Human Rights Arts &amp; Film Festival Web Site is offered, including but not limited to the charges associated with the use of the Human Rights Arts &amp; Film Festival Web Site.\r\n\r\nLINKS TO THIRD PARTY SITES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain links to other Web Sites (“Linked Sites”). The Linked Sites are not under the control of Human Rights Arts &amp; Film Festival and Human Rights Arts &amp; Film Festival is not responsible for the contents of any Linked Site, including without limitation any link contained in a Linked Site, or any changes or updates to a Linked Site. Human Rights Arts &amp; Film Festival is not responsible for webcasting or any other form of transmission received from any Linked Site. Human Rights Arts &amp; Film Festival is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by Human Rights Arts &amp; Film Festival of the site or any association with its operators.\r\n\r\nNO UNLAWFUL OR PROHIBITED USE\r\n\r\nAs a condition of your use of the Human Rights Arts &amp; Film Festival Web Site, you warrant to Human Rights Arts &amp; Film Festival that you will not use the Human Rights Arts &amp; Film Festival Web Site for any purpose that is unlawful or prohibited by these terms, conditions, and notices. You may not use the Human Rights Arts &amp; Film Festival Web Site in any manner which could damage, disable, overburden, or impair the Human Rights Arts &amp; Film Festival Web Site or interfere with any other party’s use and enjoyment of the Human Rights Arts &amp; Film Festival Web Site. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available or provided for through the Human Rights Arts &amp; Film Festival Web Sites.\r\n\r\nUSE OF COMMUNICATION SERVICES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain bulletin board services, chat areas, news groups, forums, communities, personal web pages, calendars, and/or other message or communication facilities designed to enable you to communicate with the public at large or with a group (collectively, “Communication Services”), you agree to use the Communication Services only to post, send and receive messages and material that are proper and related to the particular Communication Service. By way of example, and not as a limitation, you agree that when using a Communication Service, you will not:\r\n<ul>\r\n 	<li>Defame, abuse, harass, stalk, threaten or otherwise violate the legal rights (such as rights of privacy and publicity) of others.</li>\r\n 	<li>Publish, post, upload, distribute or disseminate any inappropriate, profane, defamatory, infringing, obscene, indecent or unlawful topic, name, material or information.</li>\r\n 	<li>Upload files that contain software or other material protected by intellectual property laws (or by rights of privacy of publicity) unless you own or control the rights thereto or have received all necessary consents.</li>\r\n 	<li>Upload files that contain viruses, corrupted files, or any other similar software or programs that may damage the operation of another’s computer.</li>\r\n 	<li>Advertise or offer to sell or buy any goods or services for any business purpose, unless such Communication Service specifically allows such messages.</li>\r\n 	<li>Conduct or forward surveys, contests, pyramid schemes or chain letters.</li>\r\n 	<li>Download any file posted by another user of a Communication Service that you know, or reasonably should know, cannot be legally distributed in such manner.</li>\r\n 	<li>Falsify or delete any author attributions, legal or other proper notices or proprietary designations or labels of the origin or source of software or other material contained in a file that is uploaded.</li>\r\n 	<li>Restrict or inhibit any other user from using and enjoying the Communication Services.</li>\r\n 	<li>Violate any code of conduct or other guidelines which may be applicable for any particular Communication Service.</li>\r\n 	<li>Harvest or otherwise collect information about others, including e-mail addresses, without their consent.</li>\r\n 	<li>Violate any applicable laws or regulations.</li>\r\n</ul>\r\nHuman Rights Arts &amp; Film Festival has no obligation to monitor the Communication Services. However, Human Rights Arts &amp; Film Festival reserves the right to review materials posted to a Communication Service and to remove any materials in its sole discretion. Human Rights Arts &amp; Film Festival reserves the right to terminate your access to any or all of the Communication Services at any time without notice for any reason whatsoever.\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right at all times to disclose any information as necessary to satisfy any applicable law, regulation, legal process or governmental request, or to edit, refuse to post or to remove any information or materials, in whole or in part, in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nAlways use caution when giving out any personally identifying information about yourself or your children in any Communication Service. Human Rights Arts &amp; Film Festival does not control or endorse the content, messages or information found in any Communication Service and, therefore, Human Rights Arts &amp; Film Festival specifically disclaims any liability with regard to the Communication Services and any actions resulting from your participation in any Communication Service. Managers and hosts are not authorized Human Rights Arts &amp; Film Festival spokespersons, and their views do not necessarily reflect those of Human Rights Arts &amp; Film Festival.\r\n\r\nMaterials uploaded to a Communication Service may be subject to posted limitations on usage, reproduction and/or dissemination. You are responsible for adhering to such limitations if you download the materials.\r\n\r\nMATERIALS PROVIDED TO Human Rights Arts &amp; Film Festival OR POSTED AT ANY Human Rights Arts &amp; Film Festival WEB SITE\r\n\r\nHuman Rights Arts &amp; Film Festival does not claim ownership of the materials you provide to Human Rights Arts &amp; Film Festival (including feedback and suggestions) or post, upload, input or submit to any Human Rights Arts &amp; Film Festival Web Site or its associated services (collectively “Submissions”). However, by posting, uploading, inputting, providing or submitting your Submission you are granting Human Rights Arts &amp; Film Festival, its affiliated companies and necessary sublicensees permission to use your Submission in connection with the operation of their Internet businesses including, without limitation, the rights to: copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your Submission; and to publish your name in connection with your Submission.\r\n\r\nNo compensation will be paid with respect to the use of your Submission, as provided herein. Human Rights Arts &amp; Film Festival is under no obligation to post or use any Submission you may provide and may remove any Submission at any time in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nBy posting, uploading, inputting, providing or submitting your Submission you warrant and represent that you own or otherwise control all of the rights to your Submission as described in this section including, without limitation, all the rights necessary for you to provide, post, upload, input or submit the Submissions.\r\n\r\nLIABILITY DISCLAIMER\r\n\r\nTHE INFORMATION, SOFTWARE, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS. CHANGES ARE PERIODICALLY ADDED TO THE INFORMATION HEREIN. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE Human Rights Arts &amp; Film Festival WEB SITE AT ANY TIME. ADVICE RECEIVED VIA THE Human Rights Arts &amp; Film Festival WEB SITE SHOULD NOT BE RELIED UPON FOR PERSONAL, MEDICAL, LEGAL OR FINANCIAL DECISIONS AND YOU SHOULD CONSULT AN APPROPRIATE PROFESSIONAL FOR SPECIFIC ADVICE TAILORED TO YOUR SITUATION.\r\n\r\nHuman Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAKE NO REPRESENTATIONS ABOUT THE SUITABILITY, RELIABILITY, AVAILABILITY, TIMELINESS, AND ACCURACY OF THE INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS CONTAINED ON THE Human Rights Arts &amp; Film Festival WEB SITE FOR ANY PURPOSE. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ALL SUCH INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS ARE PROVIDED “AS IS” WITHOUT WARRANTY OR CONDITION OF ANY KIND. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH REGARD TO THIS INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS, INCLUDING ALL IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT.\r\n\r\nTO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INCIDENTAL, SPECIAL, CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WITH THE DELAY OR INABILITY TO USE THE Human Rights Arts &amp; Film Festival WEB SITE OR RELATED SERVICES, THE PROVISION OF OR FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS OBTAINED THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE, OR OTHERWISE ARISING OUT OF THE USE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, EVEN IF Human Rights Arts &amp; Film Festival OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE Human Rights Arts &amp; Film Festival WEB SITE, OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE Human Rights Arts &amp; Film Festival WEB SITE.\r\n\r\nSERVICE CONTACT : <a href=\"https://mailto:info@hraff.org.au/\" target=\"_blank\" rel=\"noopener\">info@hraff.org.au</a>\r\n\r\nTERMINATION/ACCESS RESTRICTION\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right, in its sole discretion, to terminate your access to the Human Rights Arts &amp; Film Festival Web Site and the related services or any portion thereof at any time, without notice. GENERAL To the maximum extent permitted by law, this agreement is governed by the laws of the State of Washington, U.S.A. and you hereby consent to the exclusive jurisdiction and venue of courts in King County, Washington, U.S.A. in all disputes arising out of or relating to the use of the Human Rights Arts &amp; Film Festival Web Site. Use of the Human Rights Arts &amp; Film Festival Web Site is unauthorized in any jurisdiction that does not give effect to all provisions of these terms and conditions, including without limitation this paragraph. You agree that no joint venture, partnership, employment, or agency relationship exists between you and Human Rights Arts &amp; Film Festival as a result of this agreement or use of the Human Rights Arts &amp; Film Festival Web Site. Human Rights Arts &amp; Film Festival’s performance of this agreement is subject to existing laws and legal process, and nothing contained in this agreement is in derogation of Human Rights Arts &amp; Film Festival’s right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Human Rights Arts &amp; Film Festival Web Site or information provided to or gathered by Human Rights Arts &amp; Film Festival with respect to such use. If any part of this agreement is determined to be invalid or unenforceable pursuant to applicable law including, but not limited to, the warranty disclaimers and liability limitations set forth above, then the invalid or unenforceable provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of the agreement shall continue in effect. Unless otherwise specified herein, this agreement constitutes the entire agreement between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site and it supersedes all prior or contemporaneous communications and proposals, whether electronic, oral or written, between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site. A printed version of this agreement and of any notice given in electronic form shall be admissible in judicial or administrative proceedings based upon or relating to this agreement to the same extent an d subject to the same conditions as other business documents and records originally generated and maintained in printed form. It is the express wish to the parties that this agreement and all related documents be drawn up in English.\r\n\r\nCOPYRIGHT AND TRADEMARK NOTICES:\r\n\r\nAll contents of the Human Rights Arts &amp; Film Festival Web Site are: Copyright 2010 Human Rights Arts &amp; Film Festival and/or its suppliers. All rights reserved.\r\n\r\nTRADEMARKS\r\n\r\nThe names of actual companies and products mentioned herein may be the trademarks of their respective owners.\r\n\r\nThe example companies, organizations, products, people and events depicted herein are fictitious. No association with any real company, organization, product, person, or event is intended or should be inferred.\r\n\r\nAny rights not expressly granted herein are reserved.\r\n\r\nNOTICES AND PROCEDURE FOR MAKING CLAIMS OF COPYRIGHT INFRINGEMENT\r\n\r\nPursuant to Title 17, United States Code, Section 512(c)(2), notifications of claimed copyright infringement under United States copyright law should be sent to Service Provider’s Designated Agent. ALL INQUIRIES NOT RELEVANT TO THE FOLLOWING PROCEDURE WILL RECEIVE NO RESPONSE. See Notice and Procedure for Making Claims of Copyright Infringement.', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2018-10-03 14:23:38', '2018-10-03 14:23:38', '', 0, 'http://localhost:3157/zeta/?page_id=30', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(31, 1, '2018-10-03 14:23:38', '2018-10-03 14:23:38', 'AGREEMENT BETWEEN USER AND Human Rights Arts &amp; Film Festival\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is comprised of various Web pages operated by Human Rights Arts &amp; Film Festival.\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site is offered to you conditioned on your acceptance without modification of the terms, conditions, and notices contained herein. Your use of the Human Rights Arts &amp; Film Festival Web Site constitutes your agreement to all such terms, conditions, and notices.\r\n\r\nMODIFICATION OF THESE TERMS OF USE\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right to change the terms, conditions, and notices under which the Human Rights Arts &amp; Film Festival Web Site is offered, including but not limited to the charges associated with the use of the Human Rights Arts &amp; Film Festival Web Site.\r\n\r\nLINKS TO THIRD PARTY SITES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain links to other Web Sites (“Linked Sites”). The Linked Sites are not under the control of Human Rights Arts &amp; Film Festival and Human Rights Arts &amp; Film Festival is not responsible for the contents of any Linked Site, including without limitation any link contained in a Linked Site, or any changes or updates to a Linked Site. Human Rights Arts &amp; Film Festival is not responsible for webcasting or any other form of transmission received from any Linked Site. Human Rights Arts &amp; Film Festival is providing these links to you only as a convenience, and the inclusion of any link does not imply endorsement by Human Rights Arts &amp; Film Festival of the site or any association with its operators.\r\n\r\nNO UNLAWFUL OR PROHIBITED USE\r\n\r\nAs a condition of your use of the Human Rights Arts &amp; Film Festival Web Site, you warrant to Human Rights Arts &amp; Film Festival that you will not use the Human Rights Arts &amp; Film Festival Web Site for any purpose that is unlawful or prohibited by these terms, conditions, and notices. You may not use the Human Rights Arts &amp; Film Festival Web Site in any manner which could damage, disable, overburden, or impair the Human Rights Arts &amp; Film Festival Web Site or interfere with any other party’s use and enjoyment of the Human Rights Arts &amp; Film Festival Web Site. You may not obtain or attempt to obtain any materials or information through any means not intentionally made available or provided for through the Human Rights Arts &amp; Film Festival Web Sites.\r\n\r\nUSE OF COMMUNICATION SERVICES\r\n\r\nThe Human Rights Arts &amp; Film Festival Web Site may contain bulletin board services, chat areas, news groups, forums, communities, personal web pages, calendars, and/or other message or communication facilities designed to enable you to communicate with the public at large or with a group (collectively, “Communication Services”), you agree to use the Communication Services only to post, send and receive messages and material that are proper and related to the particular Communication Service. By way of example, and not as a limitation, you agree that when using a Communication Service, you will not:\r\n<ul>\r\n 	<li>Defame, abuse, harass, stalk, threaten or otherwise violate the legal rights (such as rights of privacy and publicity) of others.</li>\r\n 	<li>Publish, post, upload, distribute or disseminate any inappropriate, profane, defamatory, infringing, obscene, indecent or unlawful topic, name, material or information.</li>\r\n 	<li>Upload files that contain software or other material protected by intellectual property laws (or by rights of privacy of publicity) unless you own or control the rights thereto or have received all necessary consents.</li>\r\n 	<li>Upload files that contain viruses, corrupted files, or any other similar software or programs that may damage the operation of another’s computer.</li>\r\n 	<li>Advertise or offer to sell or buy any goods or services for any business purpose, unless such Communication Service specifically allows such messages.</li>\r\n 	<li>Conduct or forward surveys, contests, pyramid schemes or chain letters.</li>\r\n 	<li>Download any file posted by another user of a Communication Service that you know, or reasonably should know, cannot be legally distributed in such manner.</li>\r\n 	<li>Falsify or delete any author attributions, legal or other proper notices or proprietary designations or labels of the origin or source of software or other material contained in a file that is uploaded.</li>\r\n 	<li>Restrict or inhibit any other user from using and enjoying the Communication Services.</li>\r\n 	<li>Violate any code of conduct or other guidelines which may be applicable for any particular Communication Service.</li>\r\n 	<li>Harvest or otherwise collect information about others, including e-mail addresses, without their consent.</li>\r\n 	<li>Violate any applicable laws or regulations.</li>\r\n</ul>\r\nHuman Rights Arts &amp; Film Festival has no obligation to monitor the Communication Services. However, Human Rights Arts &amp; Film Festival reserves the right to review materials posted to a Communication Service and to remove any materials in its sole discretion. Human Rights Arts &amp; Film Festival reserves the right to terminate your access to any or all of the Communication Services at any time without notice for any reason whatsoever.\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right at all times to disclose any information as necessary to satisfy any applicable law, regulation, legal process or governmental request, or to edit, refuse to post or to remove any information or materials, in whole or in part, in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nAlways use caution when giving out any personally identifying information about yourself or your children in any Communication Service. Human Rights Arts &amp; Film Festival does not control or endorse the content, messages or information found in any Communication Service and, therefore, Human Rights Arts &amp; Film Festival specifically disclaims any liability with regard to the Communication Services and any actions resulting from your participation in any Communication Service. Managers and hosts are not authorized Human Rights Arts &amp; Film Festival spokespersons, and their views do not necessarily reflect those of Human Rights Arts &amp; Film Festival.\r\n\r\nMaterials uploaded to a Communication Service may be subject to posted limitations on usage, reproduction and/or dissemination. You are responsible for adhering to such limitations if you download the materials.\r\n\r\nMATERIALS PROVIDED TO Human Rights Arts &amp; Film Festival OR POSTED AT ANY Human Rights Arts &amp; Film Festival WEB SITE\r\n\r\nHuman Rights Arts &amp; Film Festival does not claim ownership of the materials you provide to Human Rights Arts &amp; Film Festival (including feedback and suggestions) or post, upload, input or submit to any Human Rights Arts &amp; Film Festival Web Site or its associated services (collectively “Submissions”). However, by posting, uploading, inputting, providing or submitting your Submission you are granting Human Rights Arts &amp; Film Festival, its affiliated companies and necessary sublicensees permission to use your Submission in connection with the operation of their Internet businesses including, without limitation, the rights to: copy, distribute, transmit, publicly display, publicly perform, reproduce, edit, translate and reformat your Submission; and to publish your name in connection with your Submission.\r\n\r\nNo compensation will be paid with respect to the use of your Submission, as provided herein. Human Rights Arts &amp; Film Festival is under no obligation to post or use any Submission you may provide and may remove any Submission at any time in Human Rights Arts &amp; Film Festival’s sole discretion.\r\n\r\nBy posting, uploading, inputting, providing or submitting your Submission you warrant and represent that you own or otherwise control all of the rights to your Submission as described in this section including, without limitation, all the rights necessary for you to provide, post, upload, input or submit the Submissions.\r\n\r\nLIABILITY DISCLAIMER\r\n\r\nTHE INFORMATION, SOFTWARE, PRODUCTS, AND SERVICES INCLUDED IN OR AVAILABLE THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE MAY INCLUDE INACCURACIES OR TYPOGRAPHICAL ERRORS. CHANGES ARE PERIODICALLY ADDED TO THE INFORMATION HEREIN. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAY MAKE IMPROVEMENTS AND/OR CHANGES IN THE Human Rights Arts &amp; Film Festival WEB SITE AT ANY TIME. ADVICE RECEIVED VIA THE Human Rights Arts &amp; Film Festival WEB SITE SHOULD NOT BE RELIED UPON FOR PERSONAL, MEDICAL, LEGAL OR FINANCIAL DECISIONS AND YOU SHOULD CONSULT AN APPROPRIATE PROFESSIONAL FOR SPECIFIC ADVICE TAILORED TO YOUR SITUATION.\r\n\r\nHuman Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS MAKE NO REPRESENTATIONS ABOUT THE SUITABILITY, RELIABILITY, AVAILABILITY, TIMELINESS, AND ACCURACY OF THE INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS CONTAINED ON THE Human Rights Arts &amp; Film Festival WEB SITE FOR ANY PURPOSE. TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ALL SUCH INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS ARE PROVIDED “AS IS” WITHOUT WARRANTY OR CONDITION OF ANY KIND. Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS HEREBY DISCLAIM ALL WARRANTIES AND CONDITIONS WITH REGARD TO THIS INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS, INCLUDING ALL IMPLIED WARRANTIES OR CONDITIONS OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT.\r\n\r\nTO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, IN NO EVENT SHALL Human Rights Arts &amp; Film Festival AND/OR ITS SUPPLIERS BE LIABLE FOR ANY DIRECT, INDIRECT, PUNITIVE, INCIDENTAL, SPECIAL, CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF USE, DATA OR PROFITS, ARISING OUT OF OR IN ANY WAY CONNECTED WITH THE USE OR PERFORMANCE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WITH THE DELAY OR INABILITY TO USE THE Human Rights Arts &amp; Film Festival WEB SITE OR RELATED SERVICES, THE PROVISION OF OR FAILURE TO PROVIDE SERVICES, OR FOR ANY INFORMATION, SOFTWARE, PRODUCTS, SERVICES AND RELATED GRAPHICS OBTAINED THROUGH THE Human Rights Arts &amp; Film Festival WEB SITE, OR OTHERWISE ARISING OUT OF THE USE OF THE Human Rights Arts &amp; Film Festival WEB SITE, WHETHER BASED ON CONTRACT, TORT, NEGLIGENCE, STRICT LIABILITY OR OTHERWISE, EVEN IF Human Rights Arts &amp; Film Festival OR ANY OF ITS SUPPLIERS HAS BEEN ADVISED OF THE POSSIBILITY OF DAMAGES. BECAUSE SOME STATES/JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATION MAY NOT APPLY TO YOU. IF YOU ARE DISSATISFIED WITH ANY PORTION OF THE Human Rights Arts &amp; Film Festival WEB SITE, OR WITH ANY OF THESE TERMS OF USE, YOUR SOLE AND EXCLUSIVE REMEDY IS TO DISCONTINUE USING THE Human Rights Arts &amp; Film Festival WEB SITE.\r\n\r\nSERVICE CONTACT : <a href=\"https://mailto:info@hraff.org.au/\" target=\"_blank\" rel=\"noopener\">info@hraff.org.au</a>\r\n\r\nTERMINATION/ACCESS RESTRICTION\r\n\r\nHuman Rights Arts &amp; Film Festival reserves the right, in its sole discretion, to terminate your access to the Human Rights Arts &amp; Film Festival Web Site and the related services or any portion thereof at any time, without notice. GENERAL To the maximum extent permitted by law, this agreement is governed by the laws of the State of Washington, U.S.A. and you hereby consent to the exclusive jurisdiction and venue of courts in King County, Washington, U.S.A. in all disputes arising out of or relating to the use of the Human Rights Arts &amp; Film Festival Web Site. Use of the Human Rights Arts &amp; Film Festival Web Site is unauthorized in any jurisdiction that does not give effect to all provisions of these terms and conditions, including without limitation this paragraph. You agree that no joint venture, partnership, employment, or agency relationship exists between you and Human Rights Arts &amp; Film Festival as a result of this agreement or use of the Human Rights Arts &amp; Film Festival Web Site. Human Rights Arts &amp; Film Festival’s performance of this agreement is subject to existing laws and legal process, and nothing contained in this agreement is in derogation of Human Rights Arts &amp; Film Festival’s right to comply with governmental, court and law enforcement requests or requirements relating to your use of the Human Rights Arts &amp; Film Festival Web Site or information provided to or gathered by Human Rights Arts &amp; Film Festival with respect to such use. If any part of this agreement is determined to be invalid or unenforceable pursuant to applicable law including, but not limited to, the warranty disclaimers and liability limitations set forth above, then the invalid or unenforceable provision will be deemed superseded by a valid, enforceable provision that most closely matches the intent of the original provision and the remainder of the agreement shall continue in effect. Unless otherwise specified herein, this agreement constitutes the entire agreement between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site and it supersedes all prior or contemporaneous communications and proposals, whether electronic, oral or written, between the user and Human Rights Arts &amp; Film Festival with respect to the Human Rights Arts &amp; Film Festival Web Site. A printed version of this agreement and of any notice given in electronic form shall be admissible in judicial or administrative proceedings based upon or relating to this agreement to the same extent an d subject to the same conditions as other business documents and records originally generated and maintained in printed form. It is the express wish to the parties that this agreement and all related documents be drawn up in English.\r\n\r\nCOPYRIGHT AND TRADEMARK NOTICES:\r\n\r\nAll contents of the Human Rights Arts &amp; Film Festival Web Site are: Copyright 2010 Human Rights Arts &amp; Film Festival and/or its suppliers. All rights reserved.\r\n\r\nTRADEMARKS\r\n\r\nThe names of actual companies and products mentioned herein may be the trademarks of their respective owners.\r\n\r\nThe example companies, organizations, products, people and events depicted herein are fictitious. No association with any real company, organization, product, person, or event is intended or should be inferred.\r\n\r\nAny rights not expressly granted herein are reserved.\r\n\r\nNOTICES AND PROCEDURE FOR MAKING CLAIMS OF COPYRIGHT INFRINGEMENT\r\n\r\nPursuant to Title 17, United States Code, Section 512(c)(2), notifications of claimed copyright infringement under United States copyright law should be sent to Service Provider’s Designated Agent. ALL INQUIRIES NOT RELEVANT TO THE FOLLOWING PROCEDURE WILL RECEIVE NO RESPONSE. See Notice and Procedure for Making Claims of Copyright Infringement.', 'Terms and Conditions', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-10-03 14:23:38', '2018-10-03 14:23:38', '', 30, 'http://localhost:3157/zeta/uncategorised/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-10-03 14:24:45', '2018-10-03 14:24:45', '<h5><strong>Privacy Policy</strong></h5>\r\nThis Application collects some Personal Data from its Users.\r\n\r\n<strong>Data Controller and Owner</strong>\r\n\r\nHuman Rights Arts and Film Festival Inc\r\n\r\nABN: 41 028 224 880\r\n\r\n(03) 9629 9944\r\n\r\nGPO Box 4490, Melbourne, 3001\r\n\r\n<strong>Types of Data collected</strong>\r\n\r\nAmong the types of Personal Data that this Application collects, by itself or through third parties, there are: Cookie, Usage data, Email address and Payment Information.\r\n\r\nOther Personal Data collected may be described in other sections of this privacy policy or by dedicated explanation text contextually with the Data collection.\r\n\r\nThe Personal Data may be freely provided by the User, or collected automatically when using this Application.\r\n\r\nAny use of Cookies – or of other tracking tools – by this Application or by the owners of third party services used by this Application, unless stated otherwise, serves to identify Users and remember their preferences, for the sole purpose of providing the service required by the User.\r\n\r\nFailure to provide certain Personal Data may make it impossible for this Application to provide its services.\r\n\r\nUsers are responsible for any Personal Data of third parties obtained, published or shared through this Application and confirm that they have the third party’s consent to provide the Data to the Owner.\r\n\r\n<strong>Mode and place of processing the Data</strong>\r\n\r\n<strong>Methods of processing</strong>\r\n\r\nHRAFF processes the Data of Users in a proper manner and shall take appropriate security measures to prevent unauthorized access, disclosure, modification, or unauthorized destruction of the Data.\r\n\r\nThe Data processing is carried out using computers and/or IT enabled tools, following organizational procedures and modes strictly related to the purposes indicated. In addition to HRAFF, in some cases, the Data may be accessible to certain types of persons in charge, involved with the operation of the site (administration, sales, marketing, legal, system administration) or external parties (such as third party technical service providers, mail carriers, hosting providers, IT companies, communications agencies) appointed, if necessary, as Data Processors by the Owner. The updated list of these parties may be requested from HRAFF at any time.\r\n\r\n<strong>Place</strong>\r\n\r\nThe Data is processed at HRAFF’s operating offices and in any other places where the parties involved with the processing are located. For further information, please contact HRAFF.\r\n\r\n<strong>Retention time</strong>\r\n\r\nThe Data is kept for the time necessary to provide the service requested by the User, or stated by the purposes outlined in this document, and the User can always request that HRAFF suspend or remove the data.\r\n\r\n<strong>The use of the collected Data</strong>\r\n\r\nThe Data concerning the User is collected to allow the Owner to provide its services, as well as for the following purposes: Analytics and Managing contacts and sending messages.\r\n\r\nThe Personal Data used for each purpose is outlined in the specific sections of this document.\r\n\r\n<strong>Detailed information on the processing of Personal Data</strong>\r\n\r\nPersonal Data is collected for the following purposes and using the following services:\r\n\r\n<strong>Ferve Tickets (Vallez Pty Ltd)</strong>\r\n\r\nVallez Pty Ltd trading as Ferve Tickets (ABN 86 078 001 073) (Ferve Tickets) provides ticketing services for this Application. Ferve Tickets’ Security and Privacy Policy can be located at <a href=\"http://tix.hraff.org.au/securityPolicy.asp?lang=1\">http://tix.hraff.org.au/securityPolicy.asp?lang=1</a>. Please ensure that you are familiar with the terms contained therein.\r\n\r\n<strong>Google Analytics (Google)</strong>\r\n\r\nGoogle Analytics is a web analysis service provided by Google Inc. (“Google”). Google utilizes the Data collected to track and examine the use of this Application, to prepare reports on its activities and share them with other Google services.\r\n\r\nGoogle may use the Data collected to contextualize and personalize the ads of its own advertising network.\r\n\r\nThe services contained in this section enable the Owner to monitor and analyse web traffic and can be used to keep track of User behaviour.\r\n\r\nPersonal Data collected: Cookie and Usage data.\r\n\r\nGoogle’s Privacy Policy: <a href=\"http://www.google.com/intl/en/policies/privacy/\">http://www.google.com/intl/en/policies/privacy/</a>\r\n\r\n<strong>Mailchimp Newsletters (Mailchimp)</strong>\r\n\r\nMailchimp is an email address management and message sending service provided by Mailchimp Inc.\r\n\r\nThese services make it possible to manage a database of email contacts, phone contacts or any other contact information to communicate with the User.\r\n\r\nThese services may also collect data concerning the date and time when the message was viewed by the User, as well as when the User interacted with it, such as by clicking on links included in the message.\r\n\r\nMailChimp’s Privacy Policy: <a href=\"http://mailchimp.com/legal/privacy/\">http://mailchimp.com/legal/privacy/</a>\r\n\r\n<strong>Paypal Donations (Paypal)</strong>\r\n\r\nSome of our financial transactions are handled through our payment services provider, Paypal. You should only provide your personal information to Paypal after reviewing the Paypal privacy policy (available at www.paypal.com).  We will share information with Paypal only to the extent necessary for the purposes of processing payments you make via our website. We do not store your financial or credit card details.\r\n\r\nPaypal’s Privacy Policy: <a href=\"https://www.paypal.com/au/webapps/mpp/ua/privacy-full\">https://www.paypal.com/au/webapps/mpp/ua/privacy-full</a>\r\n\r\n<strong>Additional information about Data collection and processing</strong>\r\n\r\n<strong>Legal action</strong>\r\n\r\nThe User’s Personal Data may be used for legal purposes by HRAFF, in Court or in the stages leading to possible legal action arising from improper use of this Application or the related services.\r\n\r\nThe User declares to be aware that HRAFF may be required to reveal personal data upon request of public authorities.\r\n\r\n<strong>Additional information about User’s Personal Data</strong>\r\n\r\nIn addition to the information contained in this privacy policy, this Application may provide the User with additional and contextual information concerning particular services or the collection and processing of Personal Data upon request.\r\n\r\n<strong>System Logs and Maintenance</strong>\r\n\r\nFor operation and maintenance purposes, this Application and any third party services may collect files that record interaction with this Application (System Logs) or use for this purpose other Personal Data (such as IP Address).\r\n\r\n<strong>The rights of Users</strong>\r\n\r\nUsers have the right, at any time, to know whether their Personal Data has been stored and can consult HRAFF to learn about their contents and origin, to verify their accuracy or to ask for them to be supplemented, cancelled, updated or corrected, or for their transformation into anonymous format or to block any data held in violation of the law, as well as to oppose their treatment for any and all legitimate reasons. Requests should be sent to HRAFF at the contact information set out above.\r\n\r\nThis Application does not support “Do Not Track” requests.\r\nTo determine whether any of the third party services it uses honour the “Do Not Track” requests, please read their privacy policies.\r\n\r\n<strong>Changes to this privacy policy</strong>\r\n\r\nHRAFF reserves the right to make changes to this privacy policy at any time by giving notice to its Users on this page. It is strongly recommended to check this page often, referring to the date of the last modification listed at the bottom. If a User objects to any of the changes to the Policy, the User must cease using this Application and can request that HRAFF removes the Personal Data. Unless stated otherwise, the then-current privacy policy applies to all Personal Data HRAFF has about Users.\r\n\r\n<strong>Information about this privacy policy</strong>\r\n\r\nHRAFF is responsible for this privacy policy. More details concerning the collection or processing of Personal Data may be requested from HRAFF at any time. Please see the contact information at the beginning of this document.\r\n\r\n<strong>Definitions and legal references</strong>\r\n\r\n<strong>Personal Data (or Data)</strong>\r\n\r\nAny information regarding a natural person, a legal person, an institution or an association, which is, or can be, identified, even indirectly, by reference to any other information, including a personal identification number.\r\n\r\n<strong>Usage Data</strong>\r\n\r\nInformation collected automatically from this Application (or third party services employed in this Application ), which can include: the IP addresses or domain names of the computers utilized by the Users who use this Application, the URI addresses (Uniform Resource Identifier), the time of the request, the method utilized to submit the request to the server, the size of the file received in response, the numerical code indicating the status of the server’s answer (successful outcome, error, etc.), the country of origin, the features of the browser and the operating system utilized by the User, the various time details per visit (e.g., the time spent on each page within the Application) and the details about the path followed within the Application with special reference to the sequence of pages visited, and other parameters about the device operating system and/or the User’s IT environment.\r\n\r\n<strong>User</strong>\r\n\r\nThe individual using this Application, which must coincide with or be authorized by the Data Subject, to whom the Personal Data refer.\r\n\r\n<strong>Data Subject</strong>\r\n\r\nThe legal or natural person to whom the Personal Data refers.\r\n\r\n<strong>Data Processor (or Data Supervisor)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization authorized by HRAFF to process the Personal Data in compliance with this privacy policy.\r\n\r\n<strong>Data Controller (or Owner)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization with the right, also jointly with another Data Controller, to make decisions regarding the purposes, and the methods of processing of Personal Data and the means used, including the security measures concerning the operation and use of this Application.\r\n\r\n<strong>This Application</strong>\r\n\r\nThe hardware or software tool by which the Personal Data of the User is collected.\r\n\r\n<strong>Cookie</strong>\r\n\r\nSmall piece of data stored in the User’s device.', 'Privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2018-10-03 14:24:45', '2018-10-03 14:24:45', '', 0, 'http://localhost:3157/zeta/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-10-03 14:24:45', '2018-10-03 14:24:45', '<h5><strong>Privacy Policy</strong></h5>\r\nThis Application collects some Personal Data from its Users.\r\n\r\n<strong>Data Controller and Owner</strong>\r\n\r\nHuman Rights Arts and Film Festival Inc\r\n\r\nABN: 41 028 224 880\r\n\r\n(03) 9629 9944\r\n\r\nGPO Box 4490, Melbourne, 3001\r\n\r\n<strong>Types of Data collected</strong>\r\n\r\nAmong the types of Personal Data that this Application collects, by itself or through third parties, there are: Cookie, Usage data, Email address and Payment Information.\r\n\r\nOther Personal Data collected may be described in other sections of this privacy policy or by dedicated explanation text contextually with the Data collection.\r\n\r\nThe Personal Data may be freely provided by the User, or collected automatically when using this Application.\r\n\r\nAny use of Cookies – or of other tracking tools – by this Application or by the owners of third party services used by this Application, unless stated otherwise, serves to identify Users and remember their preferences, for the sole purpose of providing the service required by the User.\r\n\r\nFailure to provide certain Personal Data may make it impossible for this Application to provide its services.\r\n\r\nUsers are responsible for any Personal Data of third parties obtained, published or shared through this Application and confirm that they have the third party’s consent to provide the Data to the Owner.\r\n\r\n<strong>Mode and place of processing the Data</strong>\r\n\r\n<strong>Methods of processing</strong>\r\n\r\nHRAFF processes the Data of Users in a proper manner and shall take appropriate security measures to prevent unauthorized access, disclosure, modification, or unauthorized destruction of the Data.\r\n\r\nThe Data processing is carried out using computers and/or IT enabled tools, following organizational procedures and modes strictly related to the purposes indicated. In addition to HRAFF, in some cases, the Data may be accessible to certain types of persons in charge, involved with the operation of the site (administration, sales, marketing, legal, system administration) or external parties (such as third party technical service providers, mail carriers, hosting providers, IT companies, communications agencies) appointed, if necessary, as Data Processors by the Owner. The updated list of these parties may be requested from HRAFF at any time.\r\n\r\n<strong>Place</strong>\r\n\r\nThe Data is processed at HRAFF’s operating offices and in any other places where the parties involved with the processing are located. For further information, please contact HRAFF.\r\n\r\n<strong>Retention time</strong>\r\n\r\nThe Data is kept for the time necessary to provide the service requested by the User, or stated by the purposes outlined in this document, and the User can always request that HRAFF suspend or remove the data.\r\n\r\n<strong>The use of the collected Data</strong>\r\n\r\nThe Data concerning the User is collected to allow the Owner to provide its services, as well as for the following purposes: Analytics and Managing contacts and sending messages.\r\n\r\nThe Personal Data used for each purpose is outlined in the specific sections of this document.\r\n\r\n<strong>Detailed information on the processing of Personal Data</strong>\r\n\r\nPersonal Data is collected for the following purposes and using the following services:\r\n\r\n<strong>Ferve Tickets (Vallez Pty Ltd)</strong>\r\n\r\nVallez Pty Ltd trading as Ferve Tickets (ABN 86 078 001 073) (Ferve Tickets) provides ticketing services for this Application. Ferve Tickets’ Security and Privacy Policy can be located at <a href=\"http://tix.hraff.org.au/securityPolicy.asp?lang=1\">http://tix.hraff.org.au/securityPolicy.asp?lang=1</a>. Please ensure that you are familiar with the terms contained therein.\r\n\r\n<strong>Google Analytics (Google)</strong>\r\n\r\nGoogle Analytics is a web analysis service provided by Google Inc. (“Google”). Google utilizes the Data collected to track and examine the use of this Application, to prepare reports on its activities and share them with other Google services.\r\n\r\nGoogle may use the Data collected to contextualize and personalize the ads of its own advertising network.\r\n\r\nThe services contained in this section enable the Owner to monitor and analyse web traffic and can be used to keep track of User behaviour.\r\n\r\nPersonal Data collected: Cookie and Usage data.\r\n\r\nGoogle’s Privacy Policy: <a href=\"http://www.google.com/intl/en/policies/privacy/\">http://www.google.com/intl/en/policies/privacy/</a>\r\n\r\n<strong>Mailchimp Newsletters (Mailchimp)</strong>\r\n\r\nMailchimp is an email address management and message sending service provided by Mailchimp Inc.\r\n\r\nThese services make it possible to manage a database of email contacts, phone contacts or any other contact information to communicate with the User.\r\n\r\nThese services may also collect data concerning the date and time when the message was viewed by the User, as well as when the User interacted with it, such as by clicking on links included in the message.\r\n\r\nMailChimp’s Privacy Policy: <a href=\"http://mailchimp.com/legal/privacy/\">http://mailchimp.com/legal/privacy/</a>\r\n\r\n<strong>Paypal Donations (Paypal)</strong>\r\n\r\nSome of our financial transactions are handled through our payment services provider, Paypal. You should only provide your personal information to Paypal after reviewing the Paypal privacy policy (available at www.paypal.com).  We will share information with Paypal only to the extent necessary for the purposes of processing payments you make via our website. We do not store your financial or credit card details.\r\n\r\nPaypal’s Privacy Policy: <a href=\"https://www.paypal.com/au/webapps/mpp/ua/privacy-full\">https://www.paypal.com/au/webapps/mpp/ua/privacy-full</a>\r\n\r\n<strong>Additional information about Data collection and processing</strong>\r\n\r\n<strong>Legal action</strong>\r\n\r\nThe User’s Personal Data may be used for legal purposes by HRAFF, in Court or in the stages leading to possible legal action arising from improper use of this Application or the related services.\r\n\r\nThe User declares to be aware that HRAFF may be required to reveal personal data upon request of public authorities.\r\n\r\n<strong>Additional information about User’s Personal Data</strong>\r\n\r\nIn addition to the information contained in this privacy policy, this Application may provide the User with additional and contextual information concerning particular services or the collection and processing of Personal Data upon request.\r\n\r\n<strong>System Logs and Maintenance</strong>\r\n\r\nFor operation and maintenance purposes, this Application and any third party services may collect files that record interaction with this Application (System Logs) or use for this purpose other Personal Data (such as IP Address).\r\n\r\n<strong>The rights of Users</strong>\r\n\r\nUsers have the right, at any time, to know whether their Personal Data has been stored and can consult HRAFF to learn about their contents and origin, to verify their accuracy or to ask for them to be supplemented, cancelled, updated or corrected, or for their transformation into anonymous format or to block any data held in violation of the law, as well as to oppose their treatment for any and all legitimate reasons. Requests should be sent to HRAFF at the contact information set out above.\r\n\r\nThis Application does not support “Do Not Track” requests.\r\nTo determine whether any of the third party services it uses honour the “Do Not Track” requests, please read their privacy policies.\r\n\r\n<strong>Changes to this privacy policy</strong>\r\n\r\nHRAFF reserves the right to make changes to this privacy policy at any time by giving notice to its Users on this page. It is strongly recommended to check this page often, referring to the date of the last modification listed at the bottom. If a User objects to any of the changes to the Policy, the User must cease using this Application and can request that HRAFF removes the Personal Data. Unless stated otherwise, the then-current privacy policy applies to all Personal Data HRAFF has about Users.\r\n\r\n<strong>Information about this privacy policy</strong>\r\n\r\nHRAFF is responsible for this privacy policy. More details concerning the collection or processing of Personal Data may be requested from HRAFF at any time. Please see the contact information at the beginning of this document.\r\n\r\n<strong>Definitions and legal references</strong>\r\n\r\n<strong>Personal Data (or Data)</strong>\r\n\r\nAny information regarding a natural person, a legal person, an institution or an association, which is, or can be, identified, even indirectly, by reference to any other information, including a personal identification number.\r\n\r\n<strong>Usage Data</strong>\r\n\r\nInformation collected automatically from this Application (or third party services employed in this Application ), which can include: the IP addresses or domain names of the computers utilized by the Users who use this Application, the URI addresses (Uniform Resource Identifier), the time of the request, the method utilized to submit the request to the server, the size of the file received in response, the numerical code indicating the status of the server’s answer (successful outcome, error, etc.), the country of origin, the features of the browser and the operating system utilized by the User, the various time details per visit (e.g., the time spent on each page within the Application) and the details about the path followed within the Application with special reference to the sequence of pages visited, and other parameters about the device operating system and/or the User’s IT environment.\r\n\r\n<strong>User</strong>\r\n\r\nThe individual using this Application, which must coincide with or be authorized by the Data Subject, to whom the Personal Data refer.\r\n\r\n<strong>Data Subject</strong>\r\n\r\nThe legal or natural person to whom the Personal Data refers.\r\n\r\n<strong>Data Processor (or Data Supervisor)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization authorized by HRAFF to process the Personal Data in compliance with this privacy policy.\r\n\r\n<strong>Data Controller (or Owner)</strong>\r\n\r\nThe natural person, legal person, public administration or any other body, association or organization with the right, also jointly with another Data Controller, to make decisions regarding the purposes, and the methods of processing of Personal Data and the means used, including the security measures concerning the operation and use of this Application.\r\n\r\n<strong>This Application</strong>\r\n\r\nThe hardware or software tool by which the Personal Data of the User is collected.\r\n\r\n<strong>Cookie</strong>\r\n\r\nSmall piece of data stored in the User’s device.', 'Privacy', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-10-03 14:24:45', '2018-10-03 14:24:45', '', 32, 'http://localhost:3157/zeta/uncategorised/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-10-03 14:25:26', '2018-10-03 14:25:26', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-10-03 14:25:26', '2018-10-03 14:25:26', '', 0, 'http://localhost:3157/zeta/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2018-10-03 14:25:26', '2018-10-03 14:25:26', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-10-03 14:25:26', '2018-10-03 14:25:26', '', 0, 'http://localhost:3157/zeta/?p=35', 2, 'nav_menu_item', '', 0),
(37, 1, '2018-10-06 07:22:37', '2018-10-06 07:22:37', 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2018-10-06 07:22:37', '2018-10-06 07:22:37', '', 0, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2018-10-06 07:22:55', '2018-10-06 07:22:55', '{\n    \"site_icon\": {\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-06 07:22:55\"\n    },\n    \"hraff::custom_logo\": {\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-06 07:22:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee5e61d0-5a2b-445c-9e7e-5bb8a3545873', '', '', '2018-10-06 07:22:55', '2018-10-06 07:22:55', '', 0, 'http://localhost:3157/zeta/uncategorised/ee5e61d0-5a2b-445c-9e7e-5bb8a3545873/', 0, 'customize_changeset', '', 0),
(40, 1, '2018-10-06 07:56:53', '2018-10-06 07:56:53', 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2018-10-06 07:56:53', '2018-10-06 07:56:53', '', 0, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-10-06 07:56:59', '2018-10-06 07:56:59', '{\n    \"hraff::custom_logo\": {\n        \"value\": 40,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-06 07:56:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9434dfff-ae7b-48ee-a157-9eb6015b44ec', '', '', '2018-10-06 07:56:59', '2018-10-06 07:56:59', '', 0, 'http://localhost:3157/zeta/uncategorised/9434dfff-ae7b-48ee-a157-9eb6015b44ec/', 0, 'customize_changeset', '', 0),
(42, 1, '2018-10-06 09:07:11', '2018-10-06 09:07:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-10-06 09:07:11', '2018-10-06 09:07:11', '', 1, 'http://localhost:3157/zeta/uncategorised/1-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-10-06 11:38:06', '2018-10-06 11:38:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:31:\"City where the event is located\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'City', 'city', 'publish', 'closed', 'closed', '', 'field_5bb89e8060476', '', '', '2018-10-06 11:38:06', '2018-10-06 11:38:06', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&p=43', 4, 'acf-field', '', 0),
(45, 1, '2018-10-06 13:12:08', '2018-10-06 13:12:08', '<strong>“<em>Smart, stylish doc exposes must-discuss issues regarding the companies who dominate the Internet.</em>”</strong> JOHN DEFORE, THE HOLLYWOOD REPORTER\r\n\r\nCome and join us at ACMI for HRAFF’s Spring Film Fundraiser – we have an amazing advanced screening of one of the year’s most important Human Rights Films – THE CLEANERS – which explores the evolution of employment rights in the age of social media. 100% of the profits from this event will go towards supporting HRAFF, and help us fund next year’s festival!\r\nIn an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged. They are online moderators and their job is to scour through all of our personal online content and decide whether to skip over it or delete it from view. However, beyond this invasion of our not-so-private lives, these workers must also trawl through all of the most disturbing content hidden in the darkest corners of the internet.Bravely and anonymously, these “cleaners” speak out about their jobs, the industry and the impact moderating this content has on their psychological well-being. And at the other end of the line, the tech companies outsourcing the moderating of this content are called into question. What are their commercial imperatives? And who is moderating the moderators?\r\n\r\nHans Block and Moritz Riesewieck’s documentary offers a complex and well-rounded view of censorship going well beyond knee-jerk reactions and in doing so paints a picture of the social media landscape with the darkest of hues.', 'The Cleaners – A HRAFF Fundraider', '', 'publish', 'closed', 'closed', '', 'the-cleaners-a-hraff-fundraider', '', '', '2018-10-26 03:53:14', '2018-10-26 03:53:14', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=45', 0, 'event', '', 0),
(46, 1, '2018-10-06 13:11:49', '2018-10-06 13:11:49', '', '04_the_cleaners____gebrueder_beetz_filmproduktion-480x200', '', 'inherit', 'open', 'closed', '', '04_the_cleaners____gebrueder_beetz_filmproduktion-480x200', '', '', '2018-10-06 13:11:49', '2018-10-06 13:11:49', '', 45, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/04_the_cleaners____gebrueder_beetz_filmproduktion-480x200.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-10-06 13:20:10', '2018-10-06 13:20:10', 'We are delighted to confirm Van Badham as the speaker at 2018’s returning Morning Tea &amp; Talk at the Alexandra Club. Van’s role as an influential human rights columnist for the Guardian makes her a perfect fit for this year’s address.\r\n\r\nVan Badham is a Melbourne-based theatremaker, journalist, critic, academic, activist, novelist and occasional broadcaster. She is currently employed by the Guardian Australia as a weekly political columnist and culture critic, while as a theatremaker she’s had more than 100 international productions of her work.\r\n\r\nAs a commentator, Van has been a guest of Radio National, Tonightly, Sunrise and The Project and in 2014, 2015, 2016 and 2018 was a panellist on ABCTV’s Q&amp;A programme. She has been a featured speaker at the Wheeler Centre, Festival of Dangerous Ideas, All About Women festival, Melbourne Writers’ Festival and Australian Council of Trade Unions National Congress. As of 2018, Badham appears as a regular contributor to The Drum on ABC Television and Politics HQ on Sky News Australia.\r\n\r\nHelp support HRAFF! Buy a raffle ticket to win one of these fantastic prizes. You don’t need to be at the event to buy a ticket, raffle numbers will be assigned to pre-purchased tickets on the day.\r\n\r\n1st Prize: An interior design voucher to the value of $2500 with Steding Interiors and Joinery. Look at their amazing work <a href=\"http://www.steding.com.au/\">here</a>.\r\n\r\n2nd Prize: A landscape gardening voucher to the value of $1500 with Lisa Ellis Gardens (within the Melbourne area). You can see her amazing work <a href=\"https://www.lisaellisgardens.com.au/\">here</a>.', 'Morning Tea with Van Badham', '', 'publish', 'closed', 'closed', '', 'morning-tea-with-van-badham', '', '', '2018-10-26 03:52:07', '2018-10-26 03:52:07', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=47', 0, 'event', '', 0),
(48, 1, '2018-10-06 13:19:00', '2018-10-06 13:19:00', '', 'bio-photo-480x200', '', 'inherit', 'open', 'closed', '', 'bio-photo-480x200', '', '', '2018-10-06 13:19:00', '2018-10-06 13:19:00', '', 47, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/bio-photo-480x200.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-10-06 13:23:27', '2018-10-06 13:23:27', 'To mark Refugee Week 2018, The Brotherhood of St Laurence is holding a one-off screening of the celebrated film, Another News Story.\r\n\r\n\"<em>A magnificent and epic documentary of historic proportions.</em>\" ROBERT TEMPLE\r\n\r\nHow does the media manufacture the news of the refugee crisis in the Mediterranean? Another News Story takes a unique perspective to present the chaotic event by turning the camera to the journalists covering the humanitarian tragedy. As the refugees move from the Greek island of Lesbos to cross Europe, they are faced with all sorts of obstacles and uncertainties. Along the way they are followed by fellow travellers – journalists, producers and cameramen who are pursuing breaking news. The juxtaposition of suffering refugee experience and the meditated news story questions news making ethics and our standpoint as an audience.\r\n\r\n<em>About the guest speaker Joseph Youhana, Programs Manager – Settlement, Youth and Families, Brotherhood of St Laurence:</em>\r\n\r\nJoseph will join us in cinema to share his inspiring personal story of fleeing his home in Iraq and creating a new life in Australia. He will also speak about his work in the Brotherhood’s Multicultural Communities Team where he manages a variety of youth, family and employment programs that support refugees and asylum seekers to settle in Australia.\r\n\r\n<strong>$30 ticket includes:</strong>\r\n<ul>\r\n 	<li>Pre-film drinks and nibbles</li>\r\n 	<li>The exclusive screening of Another News Story</li>\r\n 	<li>Guest speaker, Joseph Youhana</li>\r\n</ul>', 'Another news story: a refugee week exclusive screening  Copy', '', 'trash', 'closed', 'closed', '', 'another-news-storya-refugee-week-exclusive-screening-copy__trashed', '', '', '2018-10-15 07:52:59', '2018-10-15 07:52:59', '', 0, 'http://localhost:3157/zeta/event/another-news-storya-refugee-week-exclusive-screening-copy/', 0, 'event', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(50, 1, '2018-10-06 13:23:30', '2018-10-06 13:23:30', 'We are delighted to confirm Van Badham as the speaker at 2018’s returning Morning Tea &amp; Talk at the Alexandra Club. Van’s role as an influential human rights columnist for the Guardian makes her a perfect fit for this year’s address.\r\n\r\nVan Badham is a Melbourne-based theatremaker, journalist, critic, academic, activist, novelist and occasional broadcaster. She is currently employed by the Guardian Australia as a weekly political columnist and culture critic, while as a theatremaker she’s had more than 100 international productions of her work.\r\n\r\nAs a commentator, Van has been a guest of Radio National, Tonightly, Sunrise and The Project and in 2014, 2015, 2016 and 2018 was a panellist on ABCTV’s Q&amp;A programme. She has been a featured speaker at the Wheeler Centre, Festival of Dangerous Ideas, All About Women festival, Melbourne Writers’ Festival and Australian Council of Trade Unions National Congress. As of 2018, Badham appears as a regular contributor to The Drum on ABC Television and Politics HQ on Sky News Australia.\r\n\r\nHelp support HRAFF! Buy a raffle ticket to win one of these fantastic prizes. You don’t need to be at the event to buy a ticket, raffle numbers will be assigned to pre-purchased tickets on the day.\r\n\r\n1st Prize: An interior design voucher to the value of $2500 with Steding Interiors and Joinery. Look at their amazing work <a href=\"http://www.steding.com.au/\">here</a>.\r\n\r\n2nd Prize: A landscape gardening voucher to the value of $1500 with Lisa Ellis Gardens (within the Melbourne area). You can see her amazing work <a href=\"https://www.lisaellisgardens.com.au/\">here</a>.', 'Morning Tea with Van Badham  Copy', '', 'trash', 'closed', 'closed', '', 'morning-tea-with-van-badham-copy__trashed', '', '', '2018-10-15 07:53:06', '2018-10-15 07:53:06', '', 0, 'http://localhost:3157/zeta/event/morning-tea-with-van-badham-copy/', 0, 'event', '', 0),
(51, 1, '2018-10-06 13:23:33', '2018-10-06 13:23:33', '<strong>“<em>Smart, stylish doc exposes must-discuss issues regarding the companies who dominate the Internet.</em>”</strong> JOHN DEFORE, THE HOLLYWOOD REPORTER\r\n\r\nCome and join us at ACMI for HRAFF’s Spring Film Fundraiser – we have an amazing advanced screening of one of the year’s most important Human Rights Films – THE CLEANERS – which explores the evolution of employment rights in the age of social media. 100% of the profits from this event will go towards supporting HRAFF, and help us fund next year’s festival!\r\nIn an unmarked office building in Manila, just about as far away from Silicon Valley as you can get, a hidden industry has emerged. They are online moderators and their job is to scour through all of our personal online content and decide whether to skip over it or delete it from view. However, beyond this invasion of our not-so-private lives, these workers must also trawl through all of the most disturbing content hidden in the darkest corners of the internet.Bravely and anonymously, these “cleaners” speak out about their jobs, the industry and the impact moderating this content has on their psychological well-being. And at the other end of the line, the tech companies outsourcing the moderating of this content are called into question. What are their commercial imperatives? And who is moderating the moderators?\r\n\r\nHans Block and Moritz Riesewieck’s documentary offers a complex and well-rounded view of censorship going well beyond knee-jerk reactions and in doing so paints a picture of the social media landscape with the darkest of hues.', 'The Cleaners– A HRAFF Fundraider  Copy', '', 'trash', 'closed', 'closed', '', 'the-cleaners-a-hraff-fundraider-copy__trashed', '', '', '2018-10-15 07:53:12', '2018-10-15 07:53:12', '', 0, 'http://localhost:3157/zeta/event/the-cleaners-a-hraff-fundraider-copy/', 0, 'event', '', 0),
(53, 1, '2018-10-13 11:53:35', '2018-10-13 11:53:35', 'Create a HRAFF Event.', 'Program', '', 'publish', 'closed', 'closed', '', 'program', '', '', '2018-10-13 12:36:23', '2018-10-13 12:36:23', '', 0, 'http://localhost:3157/zeta/?p=53', 2, 'nav_menu_item', '', 0),
(54, 1, '2018-10-13 12:22:45', '2018-10-13 12:22:45', 'The Human Rights Arts &amp; Film Festival (HRAFF) is a not-for-profit arts organisation that explores diverse and inspiring human stories through the mediums of film, art, music and forums. HRAFF inspires and engages audiences with social justice and human rights issues via an annual festival and year-round through our CineSeeds program, our online networks and partners. HRAFF is an independent organisation which is not aligned or affiliated with any political party or religious group.\r\n\r\n<em><strong>\"Film and the arts have so much power to influence the way we see the world, to heighten our awareness of the plight of those in our community and in the world community.\"</strong></em>\r\n- Margaret Pomeranz AM, HRAFF Patron\r\n<h2>OUR MISSION</h2>\r\nArtists and creatives have always been at the vanguard of social change – we rely on them to hold a mirror to the uneasy truths of our times and reflect our stories. Sometimes those stories are uncomfortable, sometimes they’re challenging, sometimes inspiring, sometimes hopeful - but they are always on HRAFF’s radar to showcase.\r\n\r\nThat critical intersect of creative cultural expression and the bold and brave storytelling of the artists, film-makers, musicians is the heart and soul of what the Human Rights Arts &amp; Film Festival is all about. It’s why we exist – engaging and inspiring audiences on human rights issues through art, film, music and conversation, which flows through to the partnerships and relationships that we nurture.\r\n<h2>THE FESTIVAL</h2>\r\nHeading into our 11th year, HRAFF continues to provide a platform whereby creatives, organisations and the Australian public are brought together by their common desire to contribute to social change.\r\n\r\nHRAFF will be touring nationally from May to June 2018. Click through to view the full 2018 program. Information about ticketing here.\r\n\r\nHRAFF is committed to improving the accessibility of the festival for all festival-goers. Click here for access information for 2018.\r\n\r\nWe acknowledge the traditional owners of the land on which the Human Rights Arts &amp; Film Festival is located - the Wurundjeri People of the Kulin Nation. We pay our respect to them and their cultures, and to their elders both past and present.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-10-13 12:30:13', '2018-10-13 12:30:13', '', 0, 'http://localhost:3157/zeta/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-10-13 12:22:45', '2018-10-13 12:22:45', 'The Human Rights Arts &amp; Film Festival (HRAFF) is a not-for-profit arts organisation that explores diverse and inspiring human stories through the mediums of film, art, music and forums. HRAFF inspires and engages audiences with social justice and human rights issues via an annual festival and year-round through our CineSeeds program, our online networks and partners. HRAFF is an independent organisation which is not aligned or affiliated with any political party or religious group.\r\n\r\n<strong>\"Film and the arts have so much power to influence the way we see the world, to heighten our awareness of the plight of those in our community and in the world community.\"</strong>\r\n- Margaret Pomeranz AM, HRAFF Patron\r\n<h2>OUR MISSION</h2>\r\nArtists and creatives have always been at the vanguard of social change – we rely on them to hold a mirror to the uneasy truths of our times and reflect our stories. Sometimes those stories are uncomfortable, sometimes they’re challenging, sometimes inspiring, sometimes hopeful - but they are always on HRAFF’s radar to showcase.\r\n\r\nThat critical intersect of creative cultural expression and the bold and brave storytelling of the artists, film-makers, musicians is the heart and soul of what the Human Rights Arts &amp; Film Festival is all about. It’s why we exist – engaging and inspiring audiences on human rights issues through art, film, music and conversation, which flows through to the partnerships and relationships that we nurture.\r\n<h2>THE FESTIVAL</h2>\r\nHeading into our 11th year, HRAFF continues to provide a platform whereby creatives, organisations and the Australian public are brought together by their common desire to contribute to social change.\r\n\r\nHRAFF will be touring nationally from May to June 2018. Click through to view the full 2018 program. Information about ticketing here.\r\n\r\nHRAFF is committed to improving the accessibility of the festival for all festival-goers. Click here for access information for 2018.\r\n\r\nWe acknowledge the traditional owners of the land on which the Human Rights Arts &amp; Film Festival is located - the Wurundjeri People of the Kulin Nation. We pay our respect to them and their cultures, and to their elders both past and present.', 'About', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-10-13 12:22:45', '2018-10-13 12:22:45', '', 54, 'http://localhost:3157/zeta/uncategorised/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-10-13 12:22:57', '2018-10-13 12:22:57', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-10-13 12:36:23', '2018-10-13 12:36:23', '', 0, 'http://localhost:3157/zeta/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2018-10-13 12:27:35', '2018-10-13 12:27:35', 'Since 2013, the Human Rights Arts &amp; Film Festival has devoted a section to children and young people, CineSeeds: A program of film, speakers and the arts for youth, exploring human rights in an age appropriate way. Now in its 6th year, HRAFF’s CineSeeds program engages young audiences aged 7–18 with human rights issues through film and live performances. The <a href=\"http://2018.hraff.org.au/get-involved/cineseeds-ambassadors/\">CineSeeds Youth Ambassador program</a> is the youth leadership platform of HRAFF which runs alongside the Festival event.\r\n\r\n<hr />\r\n\r\n<h2>2018 CINESEEDS FESTIVAL PROGRAM</h2>\r\nThe 2018 films explore the topic of identity and the right to equality, respect and safety. We are delighted that this year our <strong>guest speaker is Laura Pintur</strong>, Victorian Young Achiever of the Year 2017 and co-founder of <a href=\"https://www.whatsnormal.co/\">What’s Normal? </a>All proceeds go to supporting the CineSeeds youth leadership activities.\r\n<h3>JUNIOR film: ‘wonder’</h3>\r\n<em><strong>“ </strong></em><strong>WONDER is that rare thing, a family picture that moves and amuses while </strong><strong>never overly pandering.</strong><strong><i>” </i></strong><i>THE NEW YORK TIMES</i>\r\n\r\n<a href=\"https://youtu.be/7fbaTl604KA\"><img class=\"alignleft wp-image-9164 size-wide\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/gallery-5-640x360.jpg\" alt=\"\" width=\"640\" height=\"360\" /></a>\r\n\r\n<strong>SESSION TIME: </strong>\r\n\r\nSunday 6 May, 2:30pm, ACMI Cinemas\r\n<h4><a href=\"https://2018.hraff.org.au/events/wonder/\"><strong>BOOK TICKETS </strong></a></h4>\r\nTicket includes a Q&amp;A with a guest speaker.\r\n\r\n<img class=\"alignnone wp-image-9161\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-300x107.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-300x107.jpg 300w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-400x142.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-600x214.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-768x273.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-12x5.jpg 12w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1.jpg 1000w\" alt=\"\" width=\"150\" height=\"53\" />\r\n\r\n<em>This film has been rated PG, and parental guidance is recommended for children. </em>\r\n\r\n&nbsp;\r\n\r\nBased on the New York Times bestseller, WONDER tells the inspiring and heartwarming story of August Pullman. Born with facial differences that, up until now, have prevented him from going to a mainstream school, Auggie becomes the most unlikely of heroes when he enters the local fifth grade. As his family, his new classmates, and the larger community all struggle to find their compassion and acceptance, Auggie’s extraordinary journey will unite them all and prove you can’t blend in when you were born to stand out.\r\n\r\n<hr />\r\n\r\n<h3>SENIOR film: ‘freak show’</h3>\r\n<strong>“Bitterly funny, Tackles High School Bulling With Style and Smarts”  </strong><em>THE VILLAGE TIMES</em><strong><em> </em></strong>\r\n\r\n<a href=\"https://youtu.be/drg74wOy8z8\"><img class=\"alignleft wp-image-9165 size-wide\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-640x360.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-640x360.jpg 640w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-400x225.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-600x338.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-768x432.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-1200x675.jpg 1200w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-267x150.jpg 267w\" alt=\"\" width=\"640\" height=\"360\" /></a>\r\n\r\n<strong>SESSION TIME: </strong>\r\n\r\nSunday 6 May, 2:45pm, ACMI Cinemas\r\n<h4><a href=\"https://2018.hraff.org.au/events/freak-show/\"><strong>BOOK TICKETS </strong></a></h4>\r\nTicket includes a Q&amp;A with a guest speaker.\r\n\r\n<img class=\"alignleft wp-image-9163\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message.jpg 200w, https://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message-12x5.jpg 12w\" alt=\"\" width=\"150\" height=\"75\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<em>Unclassified. Restricted to 15+ unless accompanied by an adult Common Sense Media recommends 13+.</em>\r\n\r\nBased on the award-winning cult novel by James St James and in the vein of CLUELESS and NAPOLEON DYNAMITE, FREAK SHOW tells the moving, heartbreaking and hilarious story of Billy Bloom, a boldly confident and eccentric teenager who faces intolerance and persecution at his ultra conservative high school, and decides to fight back on behalf of all the misunderstood freaks of the world.\r\n\r\n<hr />\r\n\r\n<strong>CineSeeds Committee</strong>\r\n\r\n<em>Madeline O’Connor – Committee Chair, Jill Catchy, Sarah George, Sarah Gorman, Khai-Yin Lim, Eleanor Nicolay, Kate O’Brien, Lida Rahdon</em>\r\nFor further information about CineSeeds, please email <a href=\"mailto:cineseeds@hraff.org.au\">cineseeds@hraff.org.au</a>.\r\n\r\n<strong>THANK YOU TO OUR YOUTH AMBASSADORS, CINESEEDS COMMITTEE AND OUR VALUED PARTNERS:</strong>\r\n\r\nThyne Reid Foundation, Australian Communities Foundation (The Hartline Fund), University of Melbourne (Chancellory Engagement Melbourne Social Equity Institute &amp; Faculty of Arts)\r\n\r\n<img class=\"size-logo wp-image-9499 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-300x113.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-300x113.jpg 300w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-400x150.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-600x225.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-768x288.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-12x5.jpg 12w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview.jpg 1008w\" alt=\"\" width=\"300\" height=\"113\" /><img class=\"size-logo wp-image-9501 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-300x126.png\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-300x126.png 300w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-400x168.png 400w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-600x252.png 600w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-768x323.png 768w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-1200x504.png 1200w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-480x200.png 480w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-12x5.png 12w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid.png 1281w\" alt=\"\" width=\"300\" height=\"126\" />  <img class=\"size-logo wp-image-10090 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-150x150.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-150x150.jpg 150w, https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-400x400.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo.jpg 512w\" alt=\"\" width=\"150\" height=\"150\" />', 'Cineseeds', '', 'publish', 'closed', 'closed', '', 'cineseeds', '', '', '2018-10-26 05:32:59', '2018-10-26 05:32:59', '', 0, 'http://localhost:3157/zeta/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-10-13 12:27:35', '2018-10-13 12:27:35', '', 'Cineseeds', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-10-13 12:27:35', '2018-10-13 12:27:35', '', 57, 'http://localhost:3157/zeta/uncategorised/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-10-13 12:27:43', '2018-10-13 12:27:43', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-10-13 12:27:43', '2018-10-13 12:27:43', '', 0, 'http://localhost:3157/zeta/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-10-13 12:27:43', '2018-10-13 12:27:43', '', 'News', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-10-13 12:27:43', '2018-10-13 12:27:43', '', 59, 'http://localhost:3157/zeta/uncategorised/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-10-13 12:29:54', '2018-10-13 12:29:54', '<em><strong>\"If you like to be enthralled, enraged, enlightened and meet truly inspiring people there’s no better film festival than HRAFF\"</strong> </em>\r\n- Bentley Dean, Director\r\n\r\nAs one of the leading human rights events in Australia, we strive to bring more awareness to this area. Heading into our 11th year, we continue to ensure that the public are well informed about issues at home and around the world.\r\n\r\n<em><strong>\"HRAFF was the perfect festival to launch \'Chasing Asylum\' in Australia. We had full houses and incredible audiences. It was an honour to open the festival in my hometown Melbourne and then have the opportunity to tour the country with the festival.\"</strong></em>\r\n- Eva Orner, Director &amp; Producer', 'Our Impact', '', 'publish', 'closed', 'closed', '', 'our-impact', '', '', '2018-10-13 12:29:54', '2018-10-13 12:29:54', '', 0, 'http://localhost:3157/zeta/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-10-13 12:29:54', '2018-10-13 12:29:54', '<em><strong>\"If you like to be enthralled, enraged, enlightened and meet truly inspiring people there’s no better film festival than HRAFF\"</strong> </em>\r\n- Bentley Dean, Director\r\n\r\nAs one of the leading human rights events in Australia, we strive to bring more awareness to this area. Heading into our 11th year, we continue to ensure that the public are well informed about issues at home and around the world.\r\n\r\n<em><strong>\"HRAFF was the perfect festival to launch \'Chasing Asylum\' in Australia. We had full houses and incredible audiences. It was an honour to open the festival in my hometown Melbourne and then have the opportunity to tour the country with the festival.\"</strong></em>\r\n- Eva Orner, Director &amp; Producer', 'Our Impact', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-10-13 12:29:54', '2018-10-13 12:29:54', '', 61, 'http://localhost:3157/zeta/uncategorised/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-10-13 12:30:13', '2018-10-13 12:30:13', 'The Human Rights Arts &amp; Film Festival (HRAFF) is a not-for-profit arts organisation that explores diverse and inspiring human stories through the mediums of film, art, music and forums. HRAFF inspires and engages audiences with social justice and human rights issues via an annual festival and year-round through our CineSeeds program, our online networks and partners. HRAFF is an independent organisation which is not aligned or affiliated with any political party or religious group.\r\n\r\n<em><strong>\"Film and the arts have so much power to influence the way we see the world, to heighten our awareness of the plight of those in our community and in the world community.\"</strong></em>\r\n- Margaret Pomeranz AM, HRAFF Patron\r\n<h2>OUR MISSION</h2>\r\nArtists and creatives have always been at the vanguard of social change – we rely on them to hold a mirror to the uneasy truths of our times and reflect our stories. Sometimes those stories are uncomfortable, sometimes they’re challenging, sometimes inspiring, sometimes hopeful - but they are always on HRAFF’s radar to showcase.\r\n\r\nThat critical intersect of creative cultural expression and the bold and brave storytelling of the artists, film-makers, musicians is the heart and soul of what the Human Rights Arts &amp; Film Festival is all about. It’s why we exist – engaging and inspiring audiences on human rights issues through art, film, music and conversation, which flows through to the partnerships and relationships that we nurture.\r\n<h2>THE FESTIVAL</h2>\r\nHeading into our 11th year, HRAFF continues to provide a platform whereby creatives, organisations and the Australian public are brought together by their common desire to contribute to social change.\r\n\r\nHRAFF will be touring nationally from May to June 2018. Click through to view the full 2018 program. Information about ticketing here.\r\n\r\nHRAFF is committed to improving the accessibility of the festival for all festival-goers. Click here for access information for 2018.\r\n\r\nWe acknowledge the traditional owners of the land on which the Human Rights Arts &amp; Film Festival is located - the Wurundjeri People of the Kulin Nation. We pay our respect to them and their cultures, and to their elders both past and present.', 'About', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-10-13 12:30:13', '2018-10-13 12:30:13', '', 54, 'http://localhost:3157/zeta/uncategorised/54-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-10-13 12:33:45', '2018-10-13 12:33:45', '<h2>SUBMISSIONS ARE NOW OPEN FOR HRAFF 2019</h2>\r\nThe annual Human Rights Art &amp; Film Festival is devoted to the exploration of human rights issues through a high-calibre creative program, that will challenge, touch, and inspire audiences from all walks of life. We envision a diverse and vibrant cultural community that is engaged with human rights.\r\n\r\nSubmit your film for the opportunity to move and inspire HRAFF audiences, and be a part of the premier human rights art and film festival in Australia.\r\n<h2>KEY DATES</h2>\r\nSubmissions Open: 20th August 2018\r\nEarly Bird Closes: 8th October 2018\r\nFeatures Closes: 22nd October 2018\r\nShorts Closes: 5th November 2018\r\n<h2>FEES</h2>\r\n<h4>Early Bird</h4>\r\nFeatures (Standard / WAB Discount) $40.00 / $35.00\r\nShorts (Standard / WAB Discount) $25.00 / $20.00\r\nStudent Shorts (Standard / WAB Discount) $20.00 / $15.00\r\n<h4>Standard</h4>\r\nFeatures (Standard / WAB Discount) $50.00 / $45.00\r\nShorts (Standard / WAB Discount) $30.00 / $25.00\r\nStudent Shorts (Standard / WAB Discount) $25.00 / $20.00\r\n<h2>FAQ</h2>\r\nWhat is a human rights film? Click here to read some handy tips for filmmakers.\r\n\r\nUnder 18? Download the parental consent form and have a parent or guardian submit on your behalf. Click here to download the consent form and send it to submissions@hraff.org.au.\r\n\r\nIf you have any access requirements in relation to the submission process, please contact the office on +61 3 9629 9944 or email submissions@hraff.org.au with your access enquiry.\r\n<h2>TERMS &amp; CONDITIONS</h2>\r\nPrior to submitting please read our Terms &amp; Conditions by clicking here.\r\n<h2>CONTACT DETAILS</h2>\r\nIf you have any questions about the film submission process, please email submissions@hraff.org.au. For general festival enquiries, please visit the contact us page.\r\n\r\nWithoutabox logos are trademarks of Withoutabox, a DBA of IMDb.com Inc or its affiliates.', 'Get Involved', '', 'publish', 'closed', 'closed', '', 'get-involved', '', '', '2018-10-13 12:33:45', '2018-10-13 12:33:45', '', 0, 'http://localhost:3157/zeta/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-10-13 12:33:45', '2018-10-13 12:33:45', '<h2>SUBMISSIONS ARE NOW OPEN FOR HRAFF 2019</h2>\r\nThe annual Human Rights Art &amp; Film Festival is devoted to the exploration of human rights issues through a high-calibre creative program, that will challenge, touch, and inspire audiences from all walks of life. We envision a diverse and vibrant cultural community that is engaged with human rights.\r\n\r\nSubmit your film for the opportunity to move and inspire HRAFF audiences, and be a part of the premier human rights art and film festival in Australia.\r\n<h2>KEY DATES</h2>\r\nSubmissions Open: 20th August 2018\r\nEarly Bird Closes: 8th October 2018\r\nFeatures Closes: 22nd October 2018\r\nShorts Closes: 5th November 2018\r\n<h2>FEES</h2>\r\n<h4>Early Bird</h4>\r\nFeatures (Standard / WAB Discount) $40.00 / $35.00\r\nShorts (Standard / WAB Discount) $25.00 / $20.00\r\nStudent Shorts (Standard / WAB Discount) $20.00 / $15.00\r\n<h4>Standard</h4>\r\nFeatures (Standard / WAB Discount) $50.00 / $45.00\r\nShorts (Standard / WAB Discount) $30.00 / $25.00\r\nStudent Shorts (Standard / WAB Discount) $25.00 / $20.00\r\n<h2>FAQ</h2>\r\nWhat is a human rights film? Click here to read some handy tips for filmmakers.\r\n\r\nUnder 18? Download the parental consent form and have a parent or guardian submit on your behalf. Click here to download the consent form and send it to submissions@hraff.org.au.\r\n\r\nIf you have any access requirements in relation to the submission process, please contact the office on +61 3 9629 9944 or email submissions@hraff.org.au with your access enquiry.\r\n<h2>TERMS &amp; CONDITIONS</h2>\r\nPrior to submitting please read our Terms &amp; Conditions by clicking here.\r\n<h2>CONTACT DETAILS</h2>\r\nIf you have any questions about the film submission process, please email submissions@hraff.org.au. For general festival enquiries, please visit the contact us page.\r\n\r\nWithoutabox logos are trademarks of Withoutabox, a DBA of IMDb.com Inc or its affiliates.', 'Get Involved', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-10-13 12:33:45', '2018-10-13 12:33:45', '', 64, 'http://localhost:3157/zeta/uncategorised/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-10-13 12:35:49', '2018-10-13 12:35:49', '<h2>PHONE</h2>\r\nCall Us Between 10am–3pm Monday To Friday On 0409 157 705 (Aleta)\r\n<h2>EMAIL</h2>\r\n<strong>General Enquiries</strong>\r\ninfo@hraff.org.au\r\n\r\n<strong>Media Enquiries</strong>\r\nAleta Moriarty\r\naleta@hraff.org.au\r\n\r\n<strong>Marketing Enquires</strong>\r\nmarketing@hraff.org.au\r\n\r\n<strong>Social Media</strong>\r\nAvanthi Raju\r\navanthi@hraff.org.au\r\n\r\n<strong>Volunteering Enquires</strong>\r\nhr@hraff.org.au\r\n\r\n<strong>Access Enquiries</strong>\r\nJacob Taylor\r\njacob@hraff.org.au\r\n\r\n<strong>Ticketing Enquiries</strong>\r\nticketing@hraff.org.au\r\n\r\n<strong>CineSeeds Program Information</strong>\r\ncineseeds@hraff.org.au\r\n<h2>FILM SUBMISSION ENQUIRIES</h2>\r\nPlease Email Submissions@Hraff.Org.Au (Now Closed For HRAFF 2018)\r\n<h2>ADDRESS</h2>\r\nHRAFF Office\r\nGround Floor\r\n673 Bourke St (Donkey Wheel House)\r\nMelbourne, 3000\r\n<h2>Postal Address</h2>\r\nHuman Rights Arts &amp; Film Festival\r\nGPO Box 4490\r\nMelbourne, 3001', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-10-13 12:35:49', '2018-10-13 12:35:49', '', 0, 'http://localhost:3157/zeta/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-10-13 12:35:49', '2018-10-13 12:35:49', '<h2>PHONE</h2>\r\nCall Us Between 10am–3pm Monday To Friday On 0409 157 705 (Aleta)\r\n<h2>EMAIL</h2>\r\n<strong>General Enquiries</strong>\r\ninfo@hraff.org.au\r\n\r\n<strong>Media Enquiries</strong>\r\nAleta Moriarty\r\naleta@hraff.org.au\r\n\r\n<strong>Marketing Enquires</strong>\r\nmarketing@hraff.org.au\r\n\r\n<strong>Social Media</strong>\r\nAvanthi Raju\r\navanthi@hraff.org.au\r\n\r\n<strong>Volunteering Enquires</strong>\r\nhr@hraff.org.au\r\n\r\n<strong>Access Enquiries</strong>\r\nJacob Taylor\r\njacob@hraff.org.au\r\n\r\n<strong>Ticketing Enquiries</strong>\r\nticketing@hraff.org.au\r\n\r\n<strong>CineSeeds Program Information</strong>\r\ncineseeds@hraff.org.au\r\n<h2>FILM SUBMISSION ENQUIRIES</h2>\r\nPlease Email Submissions@Hraff.Org.Au (Now Closed For HRAFF 2018)\r\n<h2>ADDRESS</h2>\r\nHRAFF Office\r\nGround Floor\r\n673 Bourke St (Donkey Wheel House)\r\nMelbourne, 3000\r\n<h2>Postal Address</h2>\r\nHuman Rights Arts &amp; Film Festival\r\nGPO Box 4490\r\nMelbourne, 3001', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-10-13 12:35:49', '2018-10-13 12:35:49', '', 66, 'http://localhost:3157/zeta/uncategorised/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-10-13 12:36:23', '2018-10-13 12:36:23', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2018-10-13 12:36:23', '2018-10-13 12:36:23', '', 0, 'http://localhost:3157/zeta/?p=68', 7, 'nav_menu_item', '', 0),
(69, 1, '2018-10-13 12:36:23', '2018-10-13 12:36:23', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-10-13 12:36:23', '2018-10-13 12:36:23', '', 0, 'http://localhost:3157/zeta/?p=69', 6, 'nav_menu_item', '', 0),
(70, 1, '2018-10-13 12:36:23', '2018-10-13 12:36:23', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-10-13 12:36:23', '2018-10-13 12:36:23', '', 0, 'http://localhost:3157/zeta/?p=70', 5, 'nav_menu_item', '', 0),
(71, 1, '2018-10-13 12:36:23', '2018-10-13 12:36:23', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-10-13 12:36:23', '2018-10-13 12:36:23', '', 0, 'http://localhost:3157/zeta/?p=71', 4, 'nav_menu_item', '', 0),
(72, 1, '2018-10-13 12:36:23', '2018-10-13 12:36:23', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-10-13 12:36:23', '2018-10-13 12:36:23', '', 0, 'http://localhost:3157/zeta/?p=72', 3, 'nav_menu_item', '', 0),
(73, 1, '2018-10-15 07:49:54', '2018-10-15 07:49:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"Cover photo of event\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Cover Photo', 'cover_photo', 'publish', 'closed', 'closed', '', 'field_5bc445d801b5e', '', '', '2018-10-15 07:49:54', '2018-10-15 07:49:54', '', 13, 'http://localhost:3157/zeta/?post_type=acf-field&p=73', 7, 'acf-field', '', 0),
(74, 1, '2018-10-15 08:05:01', '2018-10-15 08:05:01', '<strong>“A Better Man takes on the issue of violence against women from an angle we have never seen before. It is fierce, compassionate, searingly honest and beautiful.”</strong> SARAH POLLEY\r\n\r\nWhen Attiya Khan was a teenager she lived with her boyfriend Steve for two years, during which time he abused her on a daily basis. 20 years later, Attiya and Steve arrange to meet and record their intimate conversations. Will Steve take responsibility for the abuse?\r\n\r\nWhen the film had its world premiere at Hot Docs, therapists were available for consultation in the lobby after the screening – a statement to how powerful this film is. A Better Man, is truly remarkable documentary making. It’s a privilege that Attiya has allowed an audience to bear witnesses to her restorative justice.', 'A Better Man', '', 'publish', 'closed', 'closed', '', 'a-better-man', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=74', 0, 'event', '', 0),
(76, 1, '2018-10-15 08:15:37', '2018-10-15 08:15:37', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-10-15 08:15:37', '2018-10-15 08:15:37', '', 74, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/1.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-10-15 08:17:18', '2018-10-15 08:17:18', '“A Better Man takes on the issue of violence against women from an angle we have never seen before. It is fierce, compassionate, searingly honest and beautiful.” SARAH POLLEY\r\n\r\nWhen Attiya Khan was a teenager she lived with her boyfriend Steve for two years, during which time he abused her on a daily basis. 20 years later, Attiya and Steve arrange to meet and record their intimate conversations. Will Steve take responsibility for the abuse?\r\n\r\nWhen the film had its world premiere at Hot Docs, therapists were available for consultation in the lobby after the screening – a statement to how powerful this film is. A Better Man, is truly remarkable documentary making. It’s a privilege that Attiya has allowed an audience to bear witnesses to her restorative justice.', 'A Better Man', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2018-10-15 08:17:18', '2018-10-15 08:17:18', '', 74, 'http://localhost:3157/zeta/uncategorised/74-autosave-v1/', 0, 'revision', '', 0),
(79, 1, '2018-10-15 08:24:26', '2018-10-15 08:24:26', 'The Human Rights Arts and Film Festival will be hosting an afternoon tea networking event for emerging filmmakers interested in creating movies that matter. Join us for a cup of tea and a chat with fellow filmmakers to share ideas, pitch projects and hopefully form some interesting collaborations! We will be joined by experts in the field and established filmmakers Amie Batalibasi, Nora Niasari and Santilla Chingaipe for some words of wisdom and a film screening of their latest short films.\r\n\r\nThis will be followed by a screening of Naina Sen’s beautiful and heart-warming film The Song Keepers', 'HRAFF Goes West', '', 'publish', 'closed', 'closed', '', 'hraff-goes-west', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=79', 0, 'event', '', 0),
(80, 1, '2018-10-15 08:21:58', '2018-10-15 08:21:58', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-10-15 08:21:58', '2018-10-15 08:21:58', '', 79, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/2.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2018-10-15 08:28:16', '2018-10-15 08:28:16', 'This screening will feature brand new works by Melbournebased filmmakers Ez Eldin Deng and Noray Mohammed Neberay. Deng’s films have explored the African diaspora and the complexities of the refugee experience, while Neberay’s work has focused on political activism and refugee rights. Come and see these emerging directors’ alternative visions of Australian life and stay afterwards for an in-depth panel discussion featuring both artists. Hosted by Dorcas Utkovic of OzAfrica TV, the panel will explore independent filmmaking, the challenges of telling human rights stories and the creative barriers encountered in Australia.', 'Picture This', '', 'publish', 'closed', 'closed', '', 'picture-this', '', '', '2018-10-26 03:52:23', '2018-10-26 03:52:23', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=81', 0, 'event', '', 0),
(82, 1, '2018-10-15 08:26:35', '2018-10-15 08:26:35', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-10-15 08:26:35', '2018-10-15 08:26:35', '', 81, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/3.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2018-10-15 08:34:47', '2018-10-15 08:34:47', 'This year marks the 10th anniversary of Kevin Rudd’s national apology to members of the Stolen Generations. However, removal of Indigenous children from their families as well as the overrepresentation of Indigenous adult and youth incarceration in Australia have continued to increase since 2008. This panel will discuss how processes of reparative and abolitionist justice are being imagined in visual culture, film, and art for the ongoing struggle toward self-determination and liberation.\r\n\r\n<strong>FEATURING</strong>: Charlotte Allingham, Richard Frankland, Mark McMillan', 'HRAFF Talks - After The Apology...', '', 'publish', 'closed', 'closed', '', 'hraff-talks-after-the-apology', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=83', 0, 'event', '', 0),
(84, 1, '2018-10-15 08:33:38', '2018-10-15 08:33:38', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-10-15 08:33:38', '2018-10-15 08:33:38', '', 83, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/4.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2018-10-15 08:37:26', '2018-10-15 08:37:26', 'In the wake of the #MeToo social media campaign and revived discussions on feminism, where does this leave gender equality in Australia today? How do we now strategically mobilise beyond online discussions to build sustainable movements and alternative institutions? This panel will discuss the intersections of violence enacted on feminine and femme bodies and how women can locate and embed agency in community, in work, and in love.\r\n\r\n<strong>FEATURING</strong>: TextaQueen, Dawn Iris Dangkomen, Torika Bolatagici, Roj Amedi', 'HRAFF Talks - Where To From #MeToo?', '', 'publish', 'closed', 'closed', '', 'hraff-talks-where-to-from-metoo', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=85', 0, 'event', '', 0),
(86, 1, '2018-10-15 08:40:00', '2018-10-15 08:40:00', 'Climate change is one of the most pressing concerns of our times for nations and communities globally. For many Indigenous communities around the world, climate change is a condition and continuation of colonisation. Throughout the Asia Pacific, people have been mobilising against the effects of climate change by tackling ecological issues such as rising sea levels, food security and extreme weather changes. In this panel, speakers will consider the successes and failures of recent grassroots movements, and how Indigenous knowledges shape the decolonial responses and actions taken in preserving the land on which we live.\r\n\r\n<strong>FEATURING</strong>: Tony Birch, 350 Pacific, Latai Taumoepeau, Karrina Nolan', 'HRAFF Talks - Resistance On The Ground, Resilience In The Earth', '', 'publish', 'closed', 'closed', '', 'resistance-on-the-ground-resilience-in-the-earth', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=86', 0, 'event', '', 0),
(87, 1, '2018-10-15 08:41:26', '2018-10-15 08:41:26', 'Since the 2017 protests against the Australian Government’s policies on detention in Manus and Nauru, the refugee plight has swelled in visibility through modes of prominent media dissemination and cultural production. These images come with an increase of art, film, and writing on refugee experiences. This panel will discuss who is doing the representing, who benefits, and whose resistance is made invisible.\r\n\r\n<strong>FEATURING</strong>: Roj Amedi, Charandev Singh, Aseel Tayah, Fadak Alfayadh', 'HRAFF Talks - Thresholds Of Visibility', '', 'publish', 'closed', 'closed', '', 'thresholds-of-visibility', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=87', 0, 'event', '', 0),
(88, 1, '2018-10-15 08:47:15', '2018-10-15 08:47:15', 'Our flagship event, the 2018 HRAFF Gala will be held at Red Scooter from 7pm on Thursday 31 May for what promises to be a wonderful night of cocktails, canapés and entertainment. The event will feature a curated selection of our favourite shorts from this year’s program, as well as amazing prizes at a live auction and an art sale that will include works by some of Australia’s premier artists.\r\n\r\nOur MC for the evening will be the wonderful Wendy Tuohy. Wendy is a respected journalist for the Herald Sun, ABC and feature writer across other television and print media. She is also a prominent and passionate supporter of human rights across Australia.', '2018 HRAFF GALA', '', 'publish', 'closed', 'closed', '', '2018-hraff-gala', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=88', 0, 'event', '', 0),
(89, 1, '2018-10-15 08:47:06', '2018-10-15 08:47:06', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-10-15 08:47:06', '2018-10-15 08:47:06', '', 88, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/5.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2018-10-15 08:51:30', '2018-10-15 08:51:30', '<strong>“Central Australia’s answer to The Buena Vista Social Club.”</strong> MELBOURNE INTERNATIONAL FILM FESTIVAL\r\n\r\nFour generations of song women that make up The Central Australian Aboriginal Women’s Choir, go on a historic journey to take back the hymns that were given to their ancestors by the German missionaries but in their own ancient Aboriginal languages and on their own terms. Come on an adventure as the unlikeliest band on earth goes on tour... to the other side of the world!', 'The Song Keepers', '', 'publish', 'closed', 'closed', '', 'the-song-keepers', '', '', '2018-10-26 03:53:39', '2018-10-26 03:53:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=90', 0, 'event', '', 0),
(91, 1, '2018-10-15 08:51:21', '2018-10-15 08:51:21', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-10-15 08:51:21', '2018-10-15 08:51:21', '', 90, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/6.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2018-10-17 01:17:35', '2018-10-17 01:17:35', '<strong>“What is horrifying and sad is punctuated </strong><strong>only by the heroism of its subjects and of </strong><strong>the filmmakers themselves.” </strong>COMMON SENSE MEDIA\r\n\r\nAfter five years of war in Syria, the remaining citizens of Aleppo are getting ready for a siege. Through the volunteers from the White Helmets we experience the daily life, death and struggle in the streets, where they are fighting for sanity in a city where war has become the norm. Khalid, Subhi and Mahmoud are among the first to enter the destroyed buildings, scouring through the rubble in search of bodies and signs of life. They are now living more or less under constant bombing together with the remaining 350,000 civilians in Aleppo. They all struggle with the same dilemma: should they flee and bring their families to safety, or should they stay and fight for their city?', 'Last Men in Aleppo', '', 'publish', 'closed', 'closed', '', 'last-men-in-aleppo', '', '', '2018-10-26 03:51:27', '2018-10-26 03:51:27', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=92', 0, 'event', '', 0),
(93, 1, '2018-10-17 01:16:46', '2018-10-17 01:16:46', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-10-17 01:16:46', '2018-10-17 01:16:46', '', 92, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/7.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2018-10-17 01:19:34', '2018-10-17 01:19:34', '<strong>“Her Sound, Her Story is a vibrant and powerful perspective on the turbulent music industry.”</strong> BEAT MAGAZINE\r\n\r\nHer Sound, Her Story is a bold, unflinching take on the issues at the heart of the Australian music industry. Hot on the heels of a successful photographic exhibition hosted in Melbourne last year, the film provides amplification for the bold voices of the female musicians making waves here and abroad. This film is particularly salient in the current cultural moment, in which major award ceremonies flat out disregard the crucial contribution of female artists, despite their indelible impact. Beloved artists including Tina Arena, Jen Cloher and Mojo Juju discuss their personal journeys and look for solutions to ensuring a more inclusive, diverse future.', 'Her Sound Her Story', '', 'publish', 'closed', 'closed', '', 'her-sound-her-story', '', '', '2018-10-26 03:50:13', '2018-10-26 03:50:13', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=94', 0, 'event', '', 0),
(95, 1, '2018-10-17 01:20:09', '2018-10-17 01:20:09', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-10-17 01:20:09', '2018-10-17 01:20:09', '', 94, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/8.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2018-10-17 01:23:18', '2018-10-17 01:23:18', '<strong>“This is a highly pertinent story told in an entertaining way.”</strong> THE NEW YORK TIMES\r\n\r\nA story of true life challenge and triumph, a group of\r\nyoung women take the stage with a fierceness – with each\r\nmove it seems that they are putting everything on the line,\r\nbecause they are. They are teenagers on the verge of\r\nwomanhood, by turns graceful, goofy, joyous, determined,\r\nelegant, insecure, hopeful but always passionate. These\r\nare the Lethal Ladies of The Baltimore Leadership School\r\nfor Young Women (BLSYW), and they are not only a\r\ncompetitive step team headed for a multi-state showdown\r\nbut are also aiming to break barriers as the first graduates\r\nof their school, whose missi', 'Step', '', 'publish', 'closed', 'closed', '', 'step', '', '', '2018-10-26 03:53:08', '2018-10-26 03:53:08', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=96', 0, 'event', '', 0),
(97, 1, '2018-10-17 01:23:12', '2018-10-17 01:23:12', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2018-10-17 01:23:12', '2018-10-17 01:23:12', '', 96, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/9.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2018-10-17 01:26:02', '2018-10-17 01:26:02', '<strong>“There’s so much to draw from Jackson. </strong><strong>Maisie Crow has crafted a truly challenging </strong><strong>and thought provoking film about the </strong><strong>complexities surrounding the abortion argument.” </strong>GEORGIA ENTERTAINMENT NEWS\r\n\r\n45% of all pregnancies in the US are unplanned, and one in three women will have an abortion in her lifetime. And yet, the battle for woman’s access to reproductive healthcare is far from over. Inside the last remaining abortion clinic in Mississippi, Jackson is an intimate, first-of-its-kind look at the issues, through the voices of women in the Deep South who stand on both sides of the debate.', 'Jackson', '', 'publish', 'closed', 'closed', '', 'jackson', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=98', 0, 'event', '', 0),
(99, 1, '2018-10-17 01:27:04', '2018-10-17 01:27:04', '', '10', '', 'inherit', 'open', 'closed', '', '10', '', '', '2018-10-17 01:27:04', '2018-10-17 01:27:04', '', 98, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/10.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-10-17 01:30:17', '2018-10-17 01:30:17', '<strong>“Jaha’s Promise cuts straight through such confusion to hammer home the core inhumanities. It clarifies and simplifies. Most importantly, it confirms that campaigning can make a real difference. Worth heeding.”</strong> DONALD CLARKE, IRISH TIMES\r\n\r\nWith a mission to change a culture and end a brutal tradition, Jaha Dukureh vows, ‘My daughter will not go through this. It stops with me’. Jaha’s Promise, follows the life of Jaha Dukureh. A staggering 200 million women worldwide live with the effects of female genital mutilation (FGM). On average over 6,000 girls are mutilated every day worldwide. A survivor of FGM herself, we watch as Jaha returns to her home country to lead a campaign against FGM. Through her relentless struggle and irrepressible spirit comes a stunning victory. Inspiring all those who hear her story that one woman can really change the world.', 'Jaha\'s Promise', '', 'publish', 'closed', 'closed', '', 'jahas-promise', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=100', 0, 'event', '', 0),
(101, 1, '2018-10-17 01:30:11', '2018-10-17 01:30:11', '', '11', '', 'inherit', 'open', 'closed', '', '11', '', '', '2018-10-17 01:30:11', '2018-10-17 01:30:11', '', 100, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/11.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(102, 1, '2018-10-17 01:33:13', '2018-10-17 01:33:13', '<strong>“Mesmerizing and unflinching ‘Leitis in Waiting’ is a true gift to the world.”</strong> NETWORK FOR THE PROMOTION OF ASIAN PACIFIC CINEMA\r\n\r\nLeitis in Waiting is the story of Joey Mataele and the Tonga Leitis, an intrepid group of Indigenous transgender women fighting a rising tide of religious fundamentalism in their South Pacific Kingdom. With unexpected humour and extraordinary access to the royal family, the film follows Joey as she organises an exuberant beauty pageant, presided over by a princess, shelters a young contestant rejected by her family, and spars with evangelicals threatening to resurrect British colonial laws that would criminalise the Leitis’ lives. This is an inside story, created by a transgender Polynesian woman who once competed in Joey’s beauty pageant.', 'Leitis In Waiting', '', 'publish', 'closed', 'closed', '', 'leitis-in-waiting', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=102', 0, 'event', '', 0),
(103, 1, '2018-10-17 01:32:53', '2018-10-17 01:32:53', '', '12', '', 'inherit', 'open', 'closed', '', '12', '', '', '2018-10-17 01:32:53', '2018-10-17 01:32:53', '', 102, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/12.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2018-10-17 01:36:53', '2018-10-17 01:36:53', '<strong>“So powerful. Moving and irrefutable evidence of the place we have journeyed to. How will future generations judge us all?”</strong> LAW SOCIETY ENGLAND AND WALES\r\n\r\nBorder Politics follows human rights barrister Julian Burnside as he traverses the globe examining the harsh treatment of refugees metered out by most Western democracies.\r\n\r\nSeventy years after the world constructed international conventions to ensure the horrors of World War II wouldn’t be repeated, Burnside finds it terrifying to see both Australian and other western political leaders exploiting fears around border protection to extend political power. He questions whether the West has lost its moral compass, adopting ideas that reject humanity and undermine democracy. He concludes, this erosion of human rights poses a threat to the very democratic values that define Western society.', 'Border Politics', '', 'publish', 'closed', 'closed', '', 'border-politics', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=104', 0, 'event', '', 0),
(105, 1, '2018-10-17 01:36:42', '2018-10-17 01:36:42', '', '13', '', 'inherit', 'open', 'closed', '', '13', '', '', '2018-10-17 01:36:42', '2018-10-17 01:36:42', '', 104, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/13.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2018-10-17 01:40:49', '2018-10-17 01:40:49', '<strong>“It’s not every day that a documentary shakes </strong><strong>the ground as surely as the average blockbuster, </strong><strong>or keeps us on the edge of our seat like a </strong><strong>good thriller.” </strong>ANDY CRUMP, THE PLAYLIST\r\n\r\nThis is Congo presents viewers a visceral look at the African conflict; we see the effects of the ongoing war through the eyes of the generals that lead it and the civilians who are caught in the cross-fire. Focusing on characters rather than analysis, McCabe is able to capture both sides of the war and their reasoning behind it. As large human rights issues tend to eclipse the problems of Africa, it’s important to remember how countries such as the Congo have lived in turmoil for so long. This is the war that consumes its heroes and the civilians that live among it, this is a land that deals with large political conflict that is sometimes forgotten, this is Congo.', 'This Is Congo', '', 'publish', 'closed', 'closed', '', 'this-is-congo', '', '', '2018-10-26 03:53:58', '2018-10-26 03:53:58', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=106', 0, 'event', '', 0),
(107, 1, '2018-10-17 01:40:40', '2018-10-17 01:40:40', '', '14', '', 'inherit', 'open', 'closed', '', '14', '', '', '2018-10-17 01:40:40', '2018-10-17 01:40:40', '', 106, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/14.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2018-10-17 01:57:48', '2018-10-17 01:57:48', '<strong>“A magnificent and epic documentary of historic proportions.”</strong> ROBERT TEMPLE\r\n\r\nHow does the media manufacture the news of the refugee crisis in the Mediterranean? Another News Story takes a unique perspective to present the chaotic event by turning the camera to the journalists covering the humanitarian tragedy. As the refugees move from the Greek island of Lesbos to cross Europe, they are faced with all sorts of obstacles and uncertainties. Along the way they are followed by fellow travellers – journalists, producers and cameramen who are pursuing breaking news. The juxtaposition of suffering refugee experience and the meditated news story questions news making ethics and our standpoint as an audience.', 'Another News Story', '', 'publish', 'closed', 'closed', '', 'another-news-story', '', '', '2018-10-26 03:47:49', '2018-10-26 03:47:49', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=108', 0, 'event', '', 0),
(109, 1, '2018-10-17 01:57:19', '2018-10-17 01:57:19', '', '15', '', 'inherit', 'open', 'closed', '', '15', '', '', '2018-10-17 01:57:19', '2018-10-17 01:57:19', '', 108, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/15.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2018-10-17 01:59:39', '2018-10-17 01:59:39', '<strong>“Proof that wild young men can change.”</strong> BEN QUILTY\r\nThis is the story of the execution of Myuran Sukumaran,\r\nthe Australian ‘Bali Nine’ drug smuggler who became an\r\naccomplished artist on death row under the tutorship of\r\nBen Quilty. Dramatic and archival material takes us into\r\nthe last 72-hours of Myuran’s life and the creation of his\r\nfinal paintings before his death by Indonesian firing\r\nsquad on Nusakambangan Island, April 2015', 'Guilty', '', 'publish', 'closed', 'closed', '', 'guilty', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=110', 0, 'event', '', 0),
(111, 1, '2018-10-17 01:59:29', '2018-10-17 01:59:29', '', '16', '', 'inherit', 'open', 'closed', '', '16', '', '', '2018-10-17 01:59:29', '2018-10-17 01:59:29', '', 110, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/16.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2018-10-17 02:02:17', '2018-10-17 02:02:17', '<strong>“Filled with humanistic grace notes, the thoughtful </strong><strong>Land of the Free encourages empathy without a </strong><strong>trace of pity.”</strong> FILM JOURNAL INTERNATIONAL\r\n\r\nThis film portrays Brian, Juan and Gianni from South Central, Los Angeles. The obstacles are plenty when you are a child growing up between gang members or a teenager with an addiction and a newborn or a middleaged man, just released into a new and changed world after 24 years in prison.\r\n\r\nFilmmaker, Camilla Magid has followed their lives for over two years and the film shows with precision the psychological impact of a prison system that focuses on punishment rather than prevention and rehabilitation. The three characters merge into one life story in this intimate portrait of people living in a society where help is scarce and you have to rely on your own resources to get by.', 'Land Of The Free', '', 'publish', 'closed', 'closed', '', 'land-of-the-free', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=112', 0, 'event', '', 0),
(113, 1, '2018-10-17 02:02:08', '2018-10-17 02:02:08', '', '17', '', 'inherit', 'open', 'closed', '', '17', '', '', '2018-10-17 02:02:08', '2018-10-17 02:02:08', '', 112, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/17.png', 0, 'attachment', 'image/png', 0),
(114, 1, '2018-10-17 02:04:28', '2018-10-17 02:04:28', '<strong>“A powerful Australian feature about the </strong><strong>unstoppable Founder and CEO of OzHarvest, </strong><strong>Ronni Kahn, and her epic battle to end food </strong><strong>waste in Australia” </strong>ARTS REVIEW\r\n\r\nFilmed over two years and across four continents, Food Fighter follows Ronni Kahn, the founder and CEO of the food rescue charity OzHarvest, as she exposes the inconvenient social, economic and environmental truths about food waste.\r\n\r\nWe watch on as she partners with the United Nations in Thailand and South Africa, rubs shoulders with British royalty and Jamie Oliver’s juggernaut in London, and holds government to account in Australia, Food Fighter is the inspirational story of one woman’s crusade to save perfectly edible food and give it to the hungry and homeless.\r\n\r\nIn the end, it reveals what sort of individual it takes to effect such profound change globally', 'Food Fighter', '', 'publish', 'closed', 'closed', '', 'food-fighter', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=114', 0, 'event', '', 0),
(115, 1, '2018-10-17 02:04:03', '2018-10-17 02:04:03', '', '18', '', 'inherit', 'open', 'closed', '', '18', '', '', '2018-10-17 02:04:03', '2018-10-17 02:04:03', '', 114, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/18.png', 0, 'attachment', 'image/png', 0),
(116, 1, '2018-10-17 02:10:26', '2018-10-17 02:10:26', '<strong>“With this poignant, exceptional story, the </strong><strong>filmmakers tackle a broad series of issues </strong><strong>that should be high up on the international </strong><strong>human rights agenda. The filmic quality of this </strong><strong>documentary left us no choice but to award the </strong><strong>Amsterdam Human Rights Award to ‘Piripkura.” </strong>IDFA JURY STATEMENT\r\n\r\nThis award-winning modern-day ethnographic documentary takes its audience on the search for Pakyî and Tamandua, two remaining nomadic Indians of the Piripkura people who survive surrounded by farms and loggers encroaching on a protected area in the middle of the Amazon Forest. Jair Candor, a National Indian Foundation (FUNAI) public servant has been following the two since 1989 in a mission to keep record of their existence so the land may retain its protected status. Helmed in the spirit of conservation, this documentary highlights the fraught nature of defending Indigenous territory from the interests of big business.', 'Piripkura', '', 'publish', 'closed', 'closed', '', 'piripkura', '', '', '2018-10-26 03:52:33', '2018-10-26 03:52:33', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=116', 0, 'event', '', 0),
(117, 1, '2018-10-17 02:09:35', '2018-10-17 02:09:35', '', '19', '', 'inherit', 'open', 'closed', '', '19', '', '', '2018-10-17 02:09:35', '2018-10-17 02:09:35', '', 116, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/19.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2018-10-17 02:16:43', '2018-10-17 02:16:43', '<strong>“A beautifully rendered portrait of an activist striving to change the world.”</strong> POV MAGAZINE\r\n\r\nLiberian activist, Silas Siakor is a tireless crusader, fighting to crush corruption and environmental destruction in the country he loves.\r\n\r\nThrough the focus on one country, Silas is a global tale that warns of the power of politics and celebrates the power of individuals to fight back. One man’s battle gains momentum and emboldens communities to raise their fists and smartphones, seize control of their lands and protect their environment. It is a new generation of resistance.', 'Silas', '', 'publish', 'closed', 'closed', '', 'silas', '', '', '2018-10-26 03:52:49', '2018-10-26 03:52:49', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=118', 0, 'event', '', 0),
(119, 1, '2018-10-17 02:16:35', '2018-10-17 02:16:35', '', '20', '', 'inherit', 'open', 'closed', '', '20', '', '', '2018-10-17 02:16:35', '2018-10-17 02:16:35', '', 118, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/20.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2018-10-17 02:21:54', '2018-10-17 02:21:54', '<strong>“A show that combines political critique </strong><strong>with arts journalism.” </strong>THE GUARDIAN\r\n\r\nThe Australian Muslim community has been demonised and castrated of their religious identity in the wake of bigotry and racism that has echoed throughout Australian culture. Seven rising Australian-Muslim artists Abdul Abdullah, Cigdem Aydemir, Safdar Ahmed, Aamer Rahman, Abdul-Raman Abdullah, Sara Mansour and Zohab Zee Khan produce their own art which doesn’t shy away from these hidden truths as they express themselves as proud Australian-Muslims within their art forms. Your religion nor skin colour does not make you less Australian and these artists hope to fight back against bigotry through their artwork not by chewing it slowly but by tackling it as large as they can bite.', 'You See Monsters', '', 'publish', 'closed', 'closed', '', 'you-see-monsters', '', '', '2018-10-26 03:54:17', '2018-10-26 03:54:17', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=120', 0, 'event', '', 0),
(121, 1, '2018-10-17 02:21:45', '2018-10-17 02:21:45', '', '21', '', 'inherit', 'open', 'closed', '', '21', '', '', '2018-10-17 02:21:45', '2018-10-17 02:21:45', '', 120, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/21.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2018-10-17 02:24:21', '2018-10-17 02:24:21', '<strong>“Real people are much more compelling and their uninhibited conversations allow Timothy George to hold up a mirror to Britain and reflect back society with all its warts on display.”</strong> ALLAN HUNTER, SCREEN HUNTER\r\n\r\nIt was the biggest question in the United Kingdom in 2016, arguably the biggest question in modern British political history. Leave or remain?\r\n\r\nBrexitannia explores the sentiment right after the historic Brexit vote of 2016. Director Timothy Geroge Kelly gives the floor to the citizens, without any judgement, travelling around the UK speaking to both sides of the divide, shot through a stunningly cinematic lens.\r\n\r\nWhat we get is a potent mosaic, sometimes funny sometimes alarming – a compelling portrait of modern Britain and its emotional landscape laid bare. Democracy in all its divided, complex, perplexing glory.', 'Brexitania', '', 'publish', 'closed', 'closed', '', 'brexitania', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=122', 0, 'event', '', 0),
(123, 1, '2018-10-17 02:24:14', '2018-10-17 02:24:14', '', '22', '', 'inherit', 'open', 'closed', '', '22', '', '', '2018-10-17 02:24:14', '2018-10-17 02:24:14', '', 122, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/22.png', 0, 'attachment', 'image/png', 0),
(124, 1, '2018-10-17 02:26:20', '2018-10-17 02:26:20', '<strong>“Indispensable documentation of the current </strong><strong>tumult around the world, thoroughly researched, </strong><strong>convincing and surprisingly enlightening.” </strong>CINEUROPA\r\n\r\nThis film covers enormous social, geographical and political ground illustrating the dangerous rise of ‘Illiberal Democracy’.\r\n\r\nFrom a student uprising in Hong Kong, to comedians in Bollywood, to a rapper in post-revolutionary Tunisia, across the globe people are pushing against elected leaders who are slowly eroding their citizen’s freedoms and fundamental human rights. Director Rupert Russell presents a considered analysis of what has led to the destruction of the principles of freedom in modern democracies, ultimately providing context for Trump’s election. As Philosopher Isaiah Berlin warned, “freedom for the wolves has often meant death for the sheep”.', 'Freedom For The Wolf', '', 'publish', 'closed', 'closed', '', 'freedom-for-the-wolf', '', '', '2018-10-26 03:46:39', '2018-10-26 03:46:39', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=124', 0, 'event', '', 0),
(125, 1, '2018-10-17 02:25:35', '2018-10-17 02:25:35', '', '23', '', 'inherit', 'open', 'closed', '', '23', '', '', '2018-10-17 02:25:35', '2018-10-17 02:25:35', '', 124, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/23.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2018-10-17 02:28:30', '2018-10-17 02:28:30', '<strong>“Maite Alberdi’s sensitive, good-humored study of </strong><strong>Down syndrome adults expresses anger against </strong><strong>the system with a light touch.”</strong> VARIETY\r\n\r\nA group of friends with Down syndrome have attended to the same school for over 40 years, and they don’t want to continue complying with school obligations. Most of their parents are dead, and none of them thought their kids would outlive them. They always believed that when their parents died, they would be able to do those things they weren’t allowed to do before, like living on their own, having sex, being parents, getting married and having a real job. But things are not changing for them, and they have to deal with the frustration of living as if they were still ten-year-olds, although they are almost fifty.', 'The Grown-Ups', '', 'publish', 'closed', 'closed', '', 'the-grown-ups', '', '', '2018-10-26 03:53:31', '2018-10-26 03:53:31', '', 0, 'http://localhost:3157/zeta/?post_type=event&#038;p=126', 0, 'event', '', 0),
(127, 1, '2018-10-17 02:28:01', '2018-10-17 02:28:01', '', '24', '', 'inherit', 'open', 'closed', '', '24', '', '', '2018-10-17 02:28:01', '2018-10-17 02:28:01', '', 126, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/24.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2018-10-21 10:59:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-21 10:59:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/zeta/?p=128', 0, 'post', '', 0),
(129, 1, '2018-10-21 11:12:36', '2018-10-21 11:12:36', '<h2>Sorry! We can\'t seem to find the page you\'re looking for.</h2>', 'Something went wrong...', '', 'publish', 'closed', 'closed', '', 'something-went-wrong', '', '', '2018-10-24 12:07:05', '2018-10-24 12:07:05', '', 0, 'http://localhost:3157/zeta/?page_id=129', 0, 'page', '', 0),
(130, 1, '2018-10-21 11:12:36', '2018-10-21 11:12:36', '<h1>Sorry! We can\'t seem to find the page you\'re looking for.</h1>\r\nHere is some helpful links instead:\r\n\r\n<a href=\"http://localhost:3157/zeta/\">Home</a>\r\n\r\n<a href=\"http://localhost:3157/zeta/event\">Event</a>\r\n\r\n&nbsp;', 'Something went wrong...', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-10-21 11:12:36', '2018-10-21 11:12:36', '', 129, 'http://localhost:3157/zeta/129-revision-v1/uncategorised/', 0, 'revision', '', 0),
(131, 1, '2018-10-21 11:20:02', '2018-10-21 11:20:02', '<h2>Sorry! We can\'t seem to find the page you\'re looking for.</h2>\nHere is some helpful links instead:\n\n<a href=\"http://localhost:3157/zeta/\">Home</a>\n\n<a href=\"http://localhost:3157/zeta/event\">Event</a>\n\n<a href=\"http://localhost:3157/zeta/about/\">About</a>\n\n&nbsp;', 'Something went wrong...', '', 'inherit', 'closed', 'closed', '', '129-autosave-v1', '', '', '2018-10-21 11:20:02', '2018-10-21 11:20:02', '', 129, 'http://localhost:3157/zeta/129-autosave-v1/uncategorised/', 0, 'revision', '', 0),
(132, 1, '2018-10-21 11:18:38', '2018-10-21 11:18:38', '', 'b2eaaf72-8f21-4390-b113-b5b6fc98261c', '', 'inherit', 'open', 'closed', '', 'b2eaaf72-8f21-4390-b113-b5b6fc98261c', '', '', '2018-10-21 11:18:38', '2018-10-21 11:18:38', '', 129, 'http://localhost:3157/zeta/wp-content/uploads/2018/10/b2eaaf72-8f21-4390-b113-b5b6fc98261c.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-10-21 11:18:43', '2018-10-21 11:18:43', '<h1>Sorry! We can\'t seem to find the page you\'re looking for.</h1>\r\nHere is some helpful links instead:\r\n\r\n<a href=\"http://localhost:3157/zeta/\">Home</a>\r\n\r\n<a href=\"http://localhost:3157/zeta/event\">Event</a>\r\n\r\n<a href=\"http://localhost:3157/zeta/about/\">About</a>\r\n\r\n&nbsp;', 'Something went wrong...', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-10-21 11:18:43', '2018-10-21 11:18:43', '', 129, 'http://localhost:3157/zeta/129-revision-v1/uncategorised/', 0, 'revision', '', 0),
(134, 1, '2018-10-21 11:20:21', '2018-10-21 11:20:21', '<h2>Sorry! We can\'t seem to find the page you\'re looking for.</h2>\r\nHere is some helpful links instead:\r\n\r\n<a href=\"http://localhost:3157/zeta/\">Home</a>\r\n\r\n<a href=\"http://localhost:3157/zeta/event\">Event</a>\r\n\r\n<a href=\"http://localhost:3157/zeta/about/\">About</a>\r\n\r\n&nbsp;', 'Something went wrong...', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-10-21 11:20:21', '2018-10-21 11:20:21', '', 129, 'http://localhost:3157/zeta/129-revision-v1/uncategorised/', 0, 'revision', '', 0),
(135, 1, '2018-10-24 12:06:39', '2018-10-24 12:06:39', '<h2>Sorry! We can\'t seem to find the page you\'re looking for.</h2>', 'Something went wrong...', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2018-10-24 12:06:39', '2018-10-24 12:06:39', '', 129, 'http://localhost:3157/zeta/129-revision-v1/uncategorised/', 0, 'revision', '', 0),
(136, 1, '2018-10-26 05:31:55', '2018-10-26 05:31:55', 'Since 2013, the Human Rights Arts &amp; Film Festival has devoted a section to children and young people, CineSeeds: A program of film, speakers and the arts for youth, exploring human rights in an age appropriate way. Now in its 6th year, HRAFF’s CineSeeds program engages young audiences aged 7–18 with human rights issues through film and live performances. The <a href=\"http://2018.hraff.org.au/get-involved/cineseeds-ambassadors/\">CineSeeds Youth Ambassador program</a> is the youth leadership platform of HRAFF which runs alongside the Festival event.\r\n\r\n<hr />\r\n\r\n<h2>2018 CINESEEDS FESTIVAL PROGRAM</h2>\r\nThe 2018 films explore the topic of identity and the right to equality, respect and safety. We are delighted that this year our <strong>guest speaker is Laura Pintur</strong>, Victorian Young Achiever of the Year 2017 and co-founder of <a href=\"https://www.whatsnormal.co/\">What’s Normal? </a>All proceeds go to supporting the CineSeeds youth leadership activities.\r\n<h3>JUNIOR film: ‘wonder’</h3>\r\n<em><strong>“ </strong></em><strong>WONDER is that rare thing, a family picture that moves and amuses while </strong><strong>never overly pandering.</strong><strong><i>” </i></strong><i>THE NEW YORK TIMES</i>\r\n\r\n<a href=\"https://youtu.be/7fbaTl604KA\"><img class=\"alignleft wp-image-9164 size-wide\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/gallery-5-640x360.jpg\" alt=\"\" width=\"640\" height=\"360\" /></a>\r\n\r\n<strong>SESSION TIME: </strong>\r\n\r\nSunday 6 May, 2:30pm, ACMI Cinemas\r\n<h4><a href=\"https://2018.hraff.org.au/events/wonder/\"><strong>BOOK TICKETS </strong></a></h4>\r\nTicket includes a Q&amp;A with a guest speaker.\r\n\r\n<img class=\"alignnone wp-image-9161\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-300x107.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-300x107.jpg 300w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-400x142.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-600x214.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-768x273.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-12x5.jpg 12w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1.jpg 1000w\" alt=\"\" width=\"150\" height=\"53\" />\r\n\r\n<em>This film has been rated PG, and parental guidance is recommended for children. </em>\r\n\r\n&nbsp;\r\n\r\nBased on the New York Times bestseller, WONDER tells the inspiring and heartwarming story of August Pullman. Born with facial differences that, up until now, have prevented him from going to a mainstream school, Auggie becomes the most unlikely of heroes when he enters the local fifth grade. As his family, his new classmates, and the larger community all struggle to find their compassion and acceptance, Auggie’s extraordinary journey will unite them all and prove you can’t blend in when you were born to stand out.\r\n\r\n<hr />\r\n\r\n<h3>SENIOR film: ‘freak show’</h3>\r\n<strong>“Bitterly funny, Tackles High School Bulling With Style and Smarts”  </strong><em>THE VILLAGE TIMES</em><strong><em> </em></strong>\r\n\r\n<a href=\"https://youtu.be/drg74wOy8z8\"><img class=\"alignleft wp-image-9165 size-wide\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-640x360.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-640x360.jpg 640w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-400x225.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-600x338.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-768x432.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-1200x675.jpg 1200w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-267x150.jpg 267w\" alt=\"\" width=\"640\" height=\"360\" /></a>\r\n\r\n<strong>SESSION TIME: </strong>\r\n\r\nSunday 6 May, 2:45pm, ACMI Cinemas\r\n<h4><a href=\"https://2018.hraff.org.au/events/freak-show/\"><strong>BOOK TICKETS </strong></a></h4>\r\nTicket includes a Q&amp;A with a guest speaker.\r\n\r\n<img class=\"alignleft wp-image-9163\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message.jpg 200w, https://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message-12x5.jpg 12w\" alt=\"\" width=\"150\" height=\"75\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<em>Unclassified. Restricted to 15+ unless accompanied by an adult Common Sense Media recommends 13+.</em>\r\n\r\nBased on the award-winning cult novel by James St James and in the vein of CLUELESS and NAPOLEON DYNAMITE, FREAK SHOW tells the moving, heartbreaking and hilarious story of Billy Bloom, a boldly confident and eccentric teenager who faces intolerance and persecution at his ultra conservative high school, and decides to fight back on behalf of all the misunderstood freaks of the world.\r\n\r\n<hr />\r\n\r\n<strong>CineSeeds Committee</strong>\r\n\r\n<em>Madeline O’Connor – Committee Chair, Jill Catchy, Sarah George, Sarah Gorman, Khai-Yin Lim, Eleanor Nicolay, Kate O’Brien, Lida Rahdon</em>\r\nFor further information about CineSeeds, please email <a href=\"mailto:cineseeds@hraff.org.au\">cineseeds@hraff.org.au</a>.\r\n\r\n<strong>THANK YOU TO OUR YOUTH AMBASSADORS, CINESEEDS COMMITTEE AND OUR VALUED PARTNERS:</strong>\r\n\r\nThyne Reid Foundation, Australian Communities Foundation (The Hartline Fund), University of Melbourne (Chancellory Engagement Melbourne Social Equity Institute &amp; Faculty of Arts)\r\n\r\n<img class=\"size-logo wp-image-9499 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-300x113.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-300x113.jpg 300w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-400x150.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-600x225.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-768x288.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-12x5.jpg 12w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview.jpg 1008w\" alt=\"\" width=\"300\" height=\"113\" /><img class=\"size-logo wp-image-9501 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-300x126.png\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-300x126.png 300w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-400x168.png 400w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-600x252.png 600w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-768x323.png 768w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-1200x504.png 1200w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-480x200.png 480w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-12x5.png 12w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid.png 1281w\" alt=\"\" width=\"300\" height=\"126\" />  <img class=\"size-logo wp-image-10090 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-150x150.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-150x150.jpg 150w, https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-400x400.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo.jpg 512w\" alt=\"\" width=\"150\" height=\"150\" />', 'Cineseeds', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2018-10-26 05:31:55', '2018-10-26 05:31:55', '', 57, 'http://localhost:3157/zeta/57-autosave-v1/uncategorised/', 0, 'revision', '', 0),
(137, 1, '2018-10-26 05:32:59', '2018-10-26 05:32:59', 'Since 2013, the Human Rights Arts &amp; Film Festival has devoted a section to children and young people, CineSeeds: A program of film, speakers and the arts for youth, exploring human rights in an age appropriate way. Now in its 6th year, HRAFF’s CineSeeds program engages young audiences aged 7–18 with human rights issues through film and live performances. The <a href=\"http://2018.hraff.org.au/get-involved/cineseeds-ambassadors/\">CineSeeds Youth Ambassador program</a> is the youth leadership platform of HRAFF which runs alongside the Festival event.\r\n\r\n<hr />\r\n\r\n<h2>2018 CINESEEDS FESTIVAL PROGRAM</h2>\r\nThe 2018 films explore the topic of identity and the right to equality, respect and safety. We are delighted that this year our <strong>guest speaker is Laura Pintur</strong>, Victorian Young Achiever of the Year 2017 and co-founder of <a href=\"https://www.whatsnormal.co/\">What’s Normal? </a>All proceeds go to supporting the CineSeeds youth leadership activities.\r\n<h3>JUNIOR film: ‘wonder’</h3>\r\n<em><strong>“ </strong></em><strong>WONDER is that rare thing, a family picture that moves and amuses while </strong><strong>never overly pandering.</strong><strong><i>” </i></strong><i>THE NEW YORK TIMES</i>\r\n\r\n<a href=\"https://youtu.be/7fbaTl604KA\"><img class=\"alignleft wp-image-9164 size-wide\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/gallery-5-640x360.jpg\" alt=\"\" width=\"640\" height=\"360\" /></a>\r\n\r\n<strong>SESSION TIME: </strong>\r\n\r\nSunday 6 May, 2:30pm, ACMI Cinemas\r\n<h4><a href=\"https://2018.hraff.org.au/events/wonder/\"><strong>BOOK TICKETS </strong></a></h4>\r\nTicket includes a Q&amp;A with a guest speaker.\r\n\r\n<img class=\"alignnone wp-image-9161\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-300x107.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-300x107.jpg 300w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-400x142.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-600x214.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-768x273.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1-12x5.jpg 12w, https://2018.hraff.org.au/wp-content/uploads/2018/02/wonder_pg-1.jpg 1000w\" alt=\"\" width=\"150\" height=\"53\" />\r\n\r\n<em>This film has been rated PG, and parental guidance is recommended for children. </em>\r\n\r\n&nbsp;\r\n\r\nBased on the New York Times bestseller, WONDER tells the inspiring and heartwarming story of August Pullman. Born with facial differences that, up until now, have prevented him from going to a mainstream school, Auggie becomes the most unlikely of heroes when he enters the local fifth grade. As his family, his new classmates, and the larger community all struggle to find their compassion and acceptance, Auggie’s extraordinary journey will unite them all and prove you can’t blend in when you were born to stand out.\r\n\r\n<hr />\r\n\r\n<h3>SENIOR film: ‘freak show’</h3>\r\n<strong>“Bitterly funny, Tackles High School Bulling With Style and Smarts”  </strong><em>THE VILLAGE TIMES</em><strong><em> </em></strong>\r\n\r\n<a href=\"https://youtu.be/drg74wOy8z8\"><img class=\"alignleft wp-image-9165 size-wide\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-640x360.jpg\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-640x360.jpg 640w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-400x225.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-600x338.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-768x432.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-1200x675.jpg 1200w, https://2018.hraff.org.au/wp-content/uploads/2018/02/photo-by-andrew-cooper-fs-267x150.jpg 267w\" alt=\"\" width=\"640\" height=\"360\" /></a>\r\n\r\n<strong>SESSION TIME: </strong>\r\n\r\nSunday 6 May, 2:45pm, ACMI Cinemas\r\n<h4><a href=\"https://2018.hraff.org.au/events/freak-show/\"><strong>BOOK TICKETS </strong></a></h4>\r\nTicket includes a Q&amp;A with a guest speaker.\r\n\r\n<img class=\"alignleft wp-image-9163\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message.jpg 200w, https://2018.hraff.org.au/wp-content/uploads/2018/02/esp-color-long-advertising-message-12x5.jpg 12w\" alt=\"\" width=\"150\" height=\"75\" />\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<em>Unclassified. Restricted to 15+ unless accompanied by an adult Common Sense Media recommends 13+.</em>\r\n\r\nBased on the award-winning cult novel by James St James and in the vein of CLUELESS and NAPOLEON DYNAMITE, FREAK SHOW tells the moving, heartbreaking and hilarious story of Billy Bloom, a boldly confident and eccentric teenager who faces intolerance and persecution at his ultra conservative high school, and decides to fight back on behalf of all the misunderstood freaks of the world.\r\n\r\n<hr />\r\n\r\n<strong>CineSeeds Committee</strong>\r\n\r\n<em>Madeline O’Connor – Committee Chair, Jill Catchy, Sarah George, Sarah Gorman, Khai-Yin Lim, Eleanor Nicolay, Kate O’Brien, Lida Rahdon</em>\r\nFor further information about CineSeeds, please email <a href=\"mailto:cineseeds@hraff.org.au\">cineseeds@hraff.org.au</a>.\r\n\r\n<strong>THANK YOU TO OUR YOUTH AMBASSADORS, CINESEEDS COMMITTEE AND OUR VALUED PARTNERS:</strong>\r\n\r\nThyne Reid Foundation, Australian Communities Foundation (The Hartline Fund), University of Melbourne (Chancellory Engagement Melbourne Social Equity Institute &amp; Faculty of Arts)\r\n\r\n<img class=\"size-logo wp-image-9499 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-300x113.jpg\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-300x113.jpg 300w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-400x150.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-600x225.jpg 600w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-768x288.jpg 768w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview-12x5.jpg 12w, https://2018.hraff.org.au/wp-content/uploads/2017/03/acf-logo-2015-high-res-jpeg-black-and-white_preview.jpg 1008w\" alt=\"\" width=\"300\" height=\"113\" /><img class=\"size-logo wp-image-9501 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-300x126.png\" sizes=\"(max-width: 300px) 100vw, 300px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-300x126.png 300w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-400x168.png 400w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-600x252.png 600w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-768x323.png 768w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-1200x504.png 1200w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-480x200.png 480w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid-12x5.png 12w, https://2018.hraff.org.au/wp-content/uploads/2017/03/thyne-reid.png 1281w\" alt=\"\" width=\"300\" height=\"126\" />  <img class=\"size-logo wp-image-10090 alignleft\" src=\"http://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-150x150.jpg\" sizes=\"(max-width: 150px) 100vw, 150px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-150x150.jpg 150w, https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo-400x400.jpg 400w, https://2018.hraff.org.au/wp-content/uploads/2018/02/uom-logo.jpg 512w\" alt=\"\" width=\"150\" height=\"150\" />', 'Cineseeds', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-10-26 05:32:59', '2018-10-26 05:32:59', '', 57, 'http://localhost:3157/zeta/57-revision-v1/uncategorised/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Links', 'footer-links', 0),
(4, 'Adelaide', 'adelaide', 0),
(5, 'Melbourne', 'melbourne', 0),
(6, 'Brisbane', 'brisbane', 0),
(7, 'Darwin', 'darwin', 0),
(8, 'Alice Springs', 'alice-springs', 0),
(9, 'Sydney', 'sydney', 0),
(10, 'Canberra', 'canberra', 0),
(11, 'Launceston', 'launceston', 0),
(12, 'Perth', 'perth', 0),
(13, 'Hobart', 'hobart', 0),
(14, '3 May 2018', '03-05-2018', 0),
(15, '4 May 2018', '04-05-2018', 0),
(16, '5 May 2018', '05-05-2018', 0),
(17, '6 May 2018', '06-05-2018', 0),
(18, '7 May 2018', '07-05-2018', 0),
(19, '8 May 2018', '08-05-2018', 0),
(20, '9 May 2018', '09-05-2018', 0),
(21, '10 May 2018', '10-05-2018', 0),
(22, '11 May 2018', '11-05-2018', 0),
(23, '12 May 2018', '12-05-2018', 0),
(24, '13 May 2018', '13-05-2018', 0),
(25, '14 May 2018', '14-05-2018', 0),
(26, '15 May 2018', '15-05-2018', 0),
(27, '16 May 2018', '16-05-2018', 0),
(28, '17 May 2018', '17-05-2018', 0),
(29, '31 May 2018', '31-05-2018', 0),
(30, '2 May 2018', '02-05-2018', 0),
(31, 'E', 'e', 0),
(32, 'C', 'c', 0),
(33, 'P', 'p', 0),
(34, 'G', 'g', 0),
(35, 'PG', 'pg', 0),
(36, 'M', 'm', 0),
(37, 'MA', 'ma', 0),
(38, 'AV', 'av', 0),
(39, 'R', 'r', 0),
(40, 'X', 'x', 0),
(41, 'Unclassified', 'unclassified', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(24, 5, 0),
(24, 36, 0),
(34, 3, 0),
(35, 3, 0),
(45, 5, 0),
(45, 36, 0),
(47, 5, 0),
(47, 41, 0),
(49, 5, 0),
(50, 5, 0),
(51, 5, 0),
(53, 2, 0),
(56, 2, 0),
(68, 2, 0),
(69, 2, 0),
(70, 2, 0),
(71, 2, 0),
(72, 2, 0),
(74, 5, 0),
(74, 22, 0),
(74, 41, 0),
(79, 5, 0),
(79, 23, 0),
(79, 41, 0),
(81, 5, 0),
(81, 30, 0),
(81, 41, 0),
(83, 5, 0),
(83, 16, 0),
(83, 41, 0),
(85, 5, 0),
(85, 17, 0),
(85, 41, 0),
(86, 5, 0),
(86, 23, 0),
(86, 41, 0),
(87, 5, 0),
(87, 24, 0),
(87, 41, 0),
(88, 5, 0),
(88, 29, 0),
(88, 41, 0),
(90, 5, 0),
(90, 21, 0),
(90, 41, 0),
(92, 5, 0),
(92, 28, 0),
(92, 36, 0),
(94, 22, 0),
(94, 36, 0),
(96, 5, 0),
(96, 10, 0),
(96, 15, 0),
(96, 16, 0),
(96, 41, 0),
(98, 5, 0),
(98, 24, 0),
(98, 41, 0),
(100, 5, 0),
(100, 24, 0),
(100, 41, 0),
(102, 5, 0),
(102, 27, 0),
(102, 41, 0),
(104, 5, 0),
(104, 23, 0),
(104, 41, 0),
(106, 5, 0),
(106, 15, 0),
(106, 36, 0),
(108, 5, 0),
(108, 23, 0),
(108, 36, 0),
(110, 5, 0),
(110, 15, 0),
(110, 41, 0),
(112, 5, 0),
(112, 21, 0),
(112, 41, 0),
(114, 5, 0),
(114, 21, 0),
(114, 41, 0),
(116, 5, 0),
(116, 26, 0),
(116, 41, 0),
(118, 5, 0),
(118, 26, 0),
(118, 35, 0),
(120, 5, 0),
(120, 17, 0),
(120, 36, 0),
(122, 5, 0),
(122, 17, 0),
(122, 41, 0),
(124, 5, 0),
(124, 19, 0),
(124, 41, 0),
(126, 5, 0),
(126, 16, 0),
(126, 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'city', '', 0, 0),
(5, 5, 'city', '', 0, 29),
(6, 6, 'city', '', 0, 0),
(7, 7, 'city', '', 0, 0),
(8, 8, 'city', '', 0, 0),
(9, 9, 'city', '', 0, 0),
(10, 10, 'city', '', 0, 1),
(11, 11, 'city', '', 0, 0),
(12, 12, 'city', '', 0, 0),
(13, 13, 'city', '', 0, 0),
(14, 14, 'date', '', 0, 0),
(15, 15, 'date', '', 0, 3),
(16, 16, 'date', '', 0, 3),
(17, 17, 'date', '', 0, 3),
(18, 18, 'date', '', 0, 0),
(19, 19, 'date', '', 0, 1),
(20, 20, 'date', '', 0, 0),
(21, 21, 'date', '', 0, 3),
(22, 22, 'date', '', 0, 2),
(23, 23, 'date', '', 0, 4),
(24, 24, 'date', '', 0, 3),
(25, 25, 'date', '', 0, 0),
(26, 26, 'date', '', 0, 2),
(27, 27, 'date', '', 0, 1),
(28, 28, 'date', '', 0, 1),
(29, 29, 'date', '', 0, 1),
(30, 30, 'date', '', 0, 1),
(31, 31, 'classification', '', 0, 0),
(32, 32, 'classification', '', 0, 0),
(33, 33, 'classification', '', 0, 0),
(34, 34, 'classification', '', 0, 0),
(35, 35, 'classification', '', 0, 2),
(36, 36, 'classification', '', 0, 7),
(37, 37, 'classification', '', 0, 0),
(38, 38, 'classification', '', 0, 0),
(39, 39, 'classification', '', 0, 0),
(40, 40, 'classification', '', 0, 0),
(41, 41, 'classification', '', 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '128'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&classification_tab=pop&advImgDetails=show'),
(22, 1, 'wp_user-settings-time', '1540531975'),
(23, 1, 'meta-box-order_event', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:48:\"submitdiv,postimagediv,citydiv,classificationdiv\";s:6:\"normal\";s:31:\"acf-group_5bb4b89b97baf,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_event', '2'),
(25, 1, 'closedpostboxes_event', 'a:0:{}'),
(26, 1, 'metaboxhidden_event', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(27, 1, 'session_tokens', 'a:3:{s:64:\"4b081a5dc07ad65a949d0317c03ae8c1f1ead0466066118a17fd1f1bbecd49cd\";a:4:{s:10:\"expiration\";i:1540798445;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1539588845;}s:64:\"abd254163265e2c0765704bbc621ba6440ba452ecfb201b37a1c75f28a560820\";a:4:{s:10:\"expiration\";i:1540554289;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1540381489;}s:64:\"e24af4060169bd8b28a562a97fc8d2ec274488b24e61a7914fdd9d4d463b5770\";a:4:{s:10:\"expiration\";i:1540697761;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1540524961;}}'),
(28, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(29, 1, 'pp-404page-admin-notice-1', 'dismissed');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bg6RX1xBIQHaYTg.nfDelxTSiaUYB./', 'admin', 'zkha0002@student.monash.edu', '', '2018-10-02 13:39:45', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
