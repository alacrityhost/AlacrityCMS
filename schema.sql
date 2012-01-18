-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2012 at 09:59 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ci_sessions`
--


-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(40) COLLATE utf8_bin NOT NULL,
  `login` varchar(50) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `login_attempts`
--


-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`, `created`) VALUES
(1, 'Test 1', 'Test1', 'This is the first blog post. begin lorem:\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vulputate feugiat tempus. Donec eu hendrerit sapien. Fusce vitae lectus nisi, vel iaculis lacus. Mauris ultrices sapien vitae turpis laoreet porttitor. Nam lorem sem, sagittis eget feugiat id, varius vel velit. Vestibulum suscipit, metus non accumsan imperdiet, mauris quam aliquet diam, in dignissim enim quam sit amet metus. Nulla facilisi. Suspendisse nec libero elit. Donec vestibulum mi at felis congue dignissim.\r\n\r\nSuspendisse potenti. Proin enim metus, accumsan ut fringilla nec, luctus quis nibh. Cras accumsan commodo urna, non vulputate metus dictum sit amet. Suspendisse potenti. Nunc feugiat cursus enim, consectetur commodo erat luctus tincidunt. Nullam ullamcorper convallis velit sit amet sollicitudin. Integer rutrum tristique eros sit amet laoreet. Maecenas id lectus sem, nec auctor leo. Nam semper mollis tristique. Ut porttitor convallis sem eu aliquet. Duis tempor placerat risus a feugiat. Maecenas a velit eget nunc porttitor interdum. Vivamus rutrum massa at magna malesuada ut malesuada massa iaculis. Suspendisse feugiat malesuada nunc et rhoncus.\r\n\r\nSuspendisse eget rhoncus ipsum. Nullam ornare vestibulum mollis. Nulla velit odio, feugiat non consequat vitae, vestibulum sed arcu. Nullam et orci vitae elit malesuada vestibulum. Etiam venenatis tincidunt ipsum et fermentum. Vestibulum rhoncus neque quis tellus porta tempus. Mauris ac mauris non turpis hendrerit lobortis eget nec elit. Mauris tempus velit nec orci iaculis non condimentum metus dapibus. Mauris orci libero, dapibus non gravida quis, pellentesque sit amet augue. Nullam et mauris vitae arcu malesuada pulvinar quis vel nibh. Nam vitae congue eros. In aliquet nulla ac felis porttitor porttitor. Proin gravida, nunc id tempus volutpat, enim mauris consequat risus, vel gravida nisl metus in odio. Integer sit amet nibh non risus egestas aliquet a eu enim. Mauris tincidunt dolor id nisi bibendum vel tincidunt arcu gravida.\r\n\r\nDonec dui orci, mollis sit amet fringilla eget, consectetur nec elit. Ut accumsan bibendum orci quis imperdiet. Nulla nec risus ac risus mollis ornare quis adipiscing erat. Mauris porta, leo eu dictum porttitor, leo arcu eleifend libero, sed sodales urna leo vel augue. Curabitur nec porttitor ante. Mauris blandit suscipit erat non ultricies. Nunc iaculis, lacus a feugiat rhoncus, ante leo suscipit risus, at elementum erat nisl laoreet lectus. Sed condimentum lobortis magna, eget blandit eros cursus interdum. Donec eget adipiscing libero. Aliquam dapibus euismod nulla, ac faucibus nibh tempus nec. Quisque tristique scelerisque elit eleifend ultricies. Aenean elementum mi vel velit tincidunt vulputate. Sed fermentum, purus a sollicitudin feugiat, risus nisi luctus risus, at lobortis nulla dui eu nulla.\r\n\r\nAliquam risus lorem, suscipit eget accumsan quis, blandit lacinia nunc. Curabitur ac lacus orci. Integer quam elit, congue at facilisis eget, varius ut erat. Ut venenatis viverra quam luctus ultrices. Mauris aliquam erat non urna aliquam vestibulum. Mauris accumsan purus ut nibh dictum at vulputate mauris consequat. Phasellus pellentesque risus in mauris sollicitudin consequat.', '0000-00-00 00:00:00'),
(2, 'Test 2', 'Test2', 'Test 2:\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vulputate feugiat tempus. Donec eu hendrerit sapien. Fusce vitae lectus nisi, vel iaculis lacus. Mauris ultrices sapien vitae turpis laoreet porttitor. Nam lorem sem, sagittis eget feugiat id, varius vel velit. Vestibulum suscipit, metus non accumsan imperdiet, mauris quam aliquet diam, in dignissim enim quam sit amet metus. Nulla facilisi. Suspendisse nec libero elit. Donec vestibulum mi at felis congue dignissim.\r\n\r\nSuspendisse potenti. Proin enim metus, accumsan ut fringilla nec, luctus quis nibh. Cras accumsan commodo urna, non vulputate metus dictum sit amet. Suspendisse potenti. Nunc feugiat cursus enim, consectetur commodo erat luctus tincidunt. Nullam ullamcorper convallis velit sit amet sollicitudin. Integer rutrum tristique eros sit amet laoreet. Maecenas id lectus sem, nec auctor leo. Nam semper mollis tristique. Ut porttitor convallis sem eu aliquet. Duis tempor placerat risus a feugiat. Maecenas a velit eget nunc porttitor interdum. Vivamus rutrum massa at magna malesuada ut malesuada massa iaculis. Suspendisse feugiat malesuada nunc et rhoncus.\r\n\r\nSuspendisse eget rhoncus ipsum. Nullam ornare vestibulum mollis. Nulla velit odio, feugiat non consequat vitae, vestibulum sed arcu. Nullam et orci vitae elit malesuada vestibulum. Etiam venenatis tincidunt ipsum et fermentum. Vestibulum rhoncus neque quis tellus porta tempus. Mauris ac mauris non turpis hendrerit lobortis eget nec elit. Mauris tempus velit nec orci iaculis non condimentum metus dapibus. Mauris orci libero, dapibus non gravida quis, pellentesque sit amet augue. Nullam et mauris vitae arcu malesuada pulvinar quis vel nibh. Nam vitae congue eros. In aliquet nulla ac felis porttitor porttitor. Proin gravida, nunc id tempus volutpat, enim mauris consequat risus, vel gravida nisl metus in odio. Integer sit amet nibh non risus egestas aliquet a eu enim. Mauris tincidunt dolor id nisi bibendum vel tincidunt arcu gravida.\r\n\r\nDonec dui orci, mollis sit amet fringilla eget, consectetur nec elit. Ut accumsan bibendum orci quis imperdiet. Nulla nec risus ac risus mollis ornare quis adipiscing erat. Mauris porta, leo eu dictum porttitor, leo arcu eleifend libero, sed sodales urna leo vel augue. Curabitur nec porttitor ante. Mauris blandit suscipit erat non ultricies. Nunc iaculis, lacus a feugiat rhoncus, ante leo suscipit risus, at elementum erat nisl laoreet lectus. Sed condimentum lobortis magna, eget blandit eros cursus interdum. Donec eget adipiscing libero. Aliquam dapibus euismod nulla, ac faucibus nibh tempus nec. Quisque tristique scelerisque elit eleifend ultricies. Aenean elementum mi vel velit tincidunt vulputate. Sed fermentum, purus a sollicitudin feugiat, risus nisi luctus risus, at lobortis nulla dui eu nulla.\r\n\r\nAliquam risus lorem, suscipit eget accumsan quis, blandit lacinia nunc. Curabitur ac lacus orci. Integer quam elit, congue at facilisis eget, varius ut erat. Ut venenatis viverra quam luctus ultrices. Mauris aliquam erat non urna aliquam vestibulum. Mauris accumsan purus ut nibh dictum at vulputate mauris consequat. Phasellus pellentesque risus in mauris sollicitudin consequat.', '0000-00-00 00:00:00'),
(3, 'Test 3', 'Test3', 'This is the third blog post. begin lorem:\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vulputate feugiat tempus. Donec eu hendrerit sapien. Fusce vitae lectus nisi, vel iaculis lacus. Mauris ultrices sapien vitae turpis laoreet porttitor. Nam lorem sem, sagittis eget feugiat id, varius vel velit. Vestibulum suscipit, metus non accumsan imperdiet, mauris quam aliquet diam, in dignissim enim quam sit amet metus. Nulla facilisi. Suspendisse nec libero elit. Donec vestibulum mi at felis congue dignissim.\r\n\r\nSuspendisse potenti. Proin enim metus, accumsan ut fringilla nec, luctus quis nibh. Cras accumsan commodo urna, non vulputate metus dictum sit amet. Suspendisse potenti. Nunc feugiat cursus enim, consectetur commodo erat luctus tincidunt. Nullam ullamcorper convallis velit sit amet sollicitudin. Integer rutrum tristique eros sit amet laoreet. Maecenas id lectus sem, nec auctor leo. Nam semper mollis tristique. Ut porttitor convallis sem eu aliquet. Duis tempor placerat risus a feugiat. Maecenas a velit eget nunc porttitor interdum. Vivamus rutrum massa at magna malesuada ut malesuada massa iaculis. Suspendisse feugiat malesuada nunc et rhoncus.\r\n\r\nSuspendisse eget rhoncus ipsum. Nullam ornare vestibulum mollis. Nulla velit odio, feugiat non consequat vitae, vestibulum sed arcu. Nullam et orci vitae elit malesuada vestibulum. Etiam venenatis tincidunt ipsum et fermentum. Vestibulum rhoncus neque quis tellus porta tempus. Mauris ac mauris non turpis hendrerit lobortis eget nec elit. Mauris tempus velit nec orci iaculis non condimentum metus dapibus. Mauris orci libero, dapibus non gravida quis, pellentesque sit amet augue. Nullam et mauris vitae arcu malesuada pulvinar quis vel nibh. Nam vitae congue eros. In aliquet nulla ac felis porttitor porttitor. Proin gravida, nunc id tempus volutpat, enim mauris consequat risus, vel gravida nisl metus in odio. Integer sit amet nibh non risus egestas aliquet a eu enim. Mauris tincidunt dolor id nisi bibendum vel tincidunt arcu gravida.\r\n\r\nDonec dui orci, mollis sit amet fringilla eget, consectetur nec elit. Ut accumsan bibendum orci quis imperdiet. Nulla nec risus ac risus mollis ornare quis adipiscing erat. Mauris porta, leo eu dictum porttitor, leo arcu eleifend libero, sed sodales urna leo vel augue. Curabitur nec porttitor ante. Mauris blandit suscipit erat non ultricies. Nunc iaculis, lacus a feugiat rhoncus, ante leo suscipit risus, at elementum erat nisl laoreet lectus. Sed condimentum lobortis magna, eget blandit eros cursus interdum. Donec eget adipiscing libero. Aliquam dapibus euismod nulla, ac faucibus nibh tempus nec. Quisque tristique scelerisque elit eleifend ultricies. Aenean elementum mi vel velit tincidunt vulputate. Sed fermentum, purus a sollicitudin feugiat, risus nisi luctus risus, at lobortis nulla dui eu nulla.\r\n\r\nAliquam risus lorem, suscipit eget accumsan quis, blandit lacinia nunc. Curabitur ac lacus orci. Integer quam elit, congue at facilisis eget, varius ut erat. Ut venenatis viverra quam luctus ultrices. Mauris aliquam erat non urna aliquam vestibulum. Mauris accumsan purus ut nibh dictum at vulputate mauris consequat. Phasellus pellentesque risus in mauris sollicitudin consequat.', '0000-00-00 00:00:00'),
(4, 'Test 4', 'Test4', 'Test 4:\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vulputate feugiat tempus. Donec eu hendrerit sapien. Fusce vitae lectus nisi, vel iaculis lacus. Mauris ultrices sapien vitae turpis laoreet porttitor. Nam lorem sem, sagittis eget feugiat id, varius vel velit. Vestibulum suscipit, metus non accumsan imperdiet, mauris quam aliquet diam, in dignissim enim quam sit amet metus. Nulla facilisi. Suspendisse nec libero elit. Donec vestibulum mi at felis congue dignissim.\r\n\r\nSuspendisse potenti. Proin enim metus, accumsan ut fringilla nec, luctus quis nibh. Cras accumsan commodo urna, non vulputate metus dictum sit amet. Suspendisse potenti. Nunc feugiat cursus enim, consectetur commodo erat luctus tincidunt. Nullam ullamcorper convallis velit sit amet sollicitudin. Integer rutrum tristique eros sit amet laoreet. Maecenas id lectus sem, nec auctor leo. Nam semper mollis tristique. Ut porttitor convallis sem eu aliquet. Duis tempor placerat risus a feugiat. Maecenas a velit eget nunc porttitor interdum. Vivamus rutrum massa at magna malesuada ut malesuada massa iaculis. Suspendisse feugiat malesuada nunc et rhoncus.\r\n\r\nSuspendisse eget rhoncus ipsum. Nullam ornare vestibulum mollis. Nulla velit odio, feugiat non consequat vitae, vestibulum sed arcu. Nullam et orci vitae elit malesuada vestibulum. Etiam venenatis tincidunt ipsum et fermentum. Vestibulum rhoncus neque quis tellus porta tempus. Mauris ac mauris non turpis hendrerit lobortis eget nec elit. Mauris tempus velit nec orci iaculis non condimentum metus dapibus. Mauris orci libero, dapibus non gravida quis, pellentesque sit amet augue. Nullam et mauris vitae arcu malesuada pulvinar quis vel nibh. Nam vitae congue eros. In aliquet nulla ac felis porttitor porttitor. Proin gravida, nunc id tempus volutpat, enim mauris consequat risus, vel gravida nisl metus in odio. Integer sit amet nibh non risus egestas aliquet a eu enim. Mauris tincidunt dolor id nisi bibendum vel tincidunt arcu gravida.\r\n\r\nDonec dui orci, mollis sit amet fringilla eget, consectetur nec elit. Ut accumsan bibendum orci quis imperdiet. Nulla nec risus ac risus mollis ornare quis adipiscing erat. Mauris porta, leo eu dictum porttitor, leo arcu eleifend libero, sed sodales urna leo vel augue. Curabitur nec porttitor ante. Mauris blandit suscipit erat non ultricies. Nunc iaculis, lacus a feugiat rhoncus, ante leo suscipit risus, at elementum erat nisl laoreet lectus. Sed condimentum lobortis magna, eget blandit eros cursus interdum. Donec eget adipiscing libero. Aliquam dapibus euismod nulla, ac faucibus nibh tempus nec. Quisque tristique scelerisque elit eleifend ultricies. Aenean elementum mi vel velit tincidunt vulputate. Sed fermentum, purus a sollicitudin feugiat, risus nisi luctus risus, at lobortis nulla dui eu nulla.\r\n\r\nAliquam risus lorem, suscipit eget accumsan quis, blandit lacinia nunc. Curabitur ac lacus orci. Integer quam elit, congue at facilisis eget, varius ut erat. Ut venenatis viverra quam luctus ultrices. Mauris aliquam erat non urna aliquam vestibulum. Mauris accumsan purus ut nibh dictum at vulputate mauris consequat. Phasellus pellentesque risus in mauris sollicitudin consequat.', '0000-00-00 00:00:00'),
(5, 'Testing adding a new item', 'testing-adding-a-new-item', 'This is a test article yo', '2012-01-04 10:03:44'),
(6, 'Test article again', 'test-article-again', 'dfsfgdgdfghdh', '2012-01-04 10:12:36'),
(7, 'Test article again and', 'test-article-again-and', 'dfsfgdgdfghdh', '2012-01-04 10:12:41'),
(8, 'Test article again and again', 'test-article-again-and-again', 'dfsfgdgdfghdh', '2012-01-04 10:12:51'),
(9, 'Test article again and again and again', 'test-article-again-and-again-and-again', 'dfsfgdgdfghdh', '2012-01-04 10:12:59'),
(10, 'Test article again anand againd again and again', 'test-article-again-anand-againd-again-and-again', 'dfsfgdgdfghdh', '2012-01-04 10:13:03'),
(11, 'Test and againarticle again anand againd again and again', 'test-and-againarticle-again-anand-againd-again-and-again', 'dfsfgdgdfghdh', '2012-01-04 10:13:06'),
(12, 'Test and againartand againicle again anand againd again and again', 'test-and-againartand-againicle-again-anand-againd-again-and-again', 'dfsfgdgdfghdh', '2012-01-04 10:13:10'),
(13, 'Test', 'test', '<h1>\r\n	Title Mayng</h1>\r\n<p>\r\n	This is an awesome blog post with formatted text!</p>\r\n<p>\r\n	how about an image?</p>\r\n<p>\r\n	<img alt="Awesome WoW Guitar Man" src="http://ps4net.com/wp-content/uploads/2007/12/world-of-guitars.jpg" style="width: 400px; height: 352px; " /></p>\r\n', '2012-01-04 15:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_autologin`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_profiles`
--

