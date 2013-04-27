-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Apr 27, 2013 at 09:28 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `ukopencollege`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_admin`
-- 

CREATE TABLE `oc_admin` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `firstname` varchar(32) default NULL,
  `lastname` varchar(32) default NULL,
  `email` varchar(128) NOT NULL,
  `access` varchar(11) NOT NULL,
  `password` varchar(40) NOT NULL,
  `company` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` enum('1','0') NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `oc_admin`
-- 

INSERT INTO `oc_admin` VALUES (1, 'junaid', 'khalil', 'khalil.junaid@gmail.com', 'Admin', 'ffb9b0421a6c914d620933c885b7f1d155ff8692', 'Junaidkhalil', 'thumb_1.jpg', 'www.facebook.com', '034555555555', '1');
INSERT INTO `oc_admin` VALUES (2, 'junaid', 'khalil', 'khalil.junaid123@gmail.com', 'Admin', '6c75f2a70c892301254da6a2d83cc0b37bf5a5d7', 'junaidkhalil', '', '', 'khalil.junaid123@gmail.com', '1');
INSERT INTO `oc_admin` VALUES (3, 'junaid', 'khalil', 'khalil.junaid01@gmail.com', 'Admin', 'b1285d4b43914cc9980ff65d3f54031d0f908e72', 'junaidkhalil', '', '', '0326599999', '1');
INSERT INTO `oc_admin` VALUES (4, 'junaid', 'khalil', 'khalil.junaid121@gmail.com', 'Admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'junaidkhalil', '', '', '1212121212121', '1');
INSERT INTO `oc_admin` VALUES (5, 'junaid', 'khalil', 'khalil.junaid1212@gmail.com', 'Admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'junaidkhalil', '', '', '1212121212121', '1');
INSERT INTO `oc_admin` VALUES (6, 'junaid', 'khalil', 'khalil.junaiad@gmail.com', 'Admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'junaidkhalil', '', '', '111111', '1');
INSERT INTO `oc_admin` VALUES (7, 'junaid', 'khalil', 'khalil.junaid@gmail.comq', 'Admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'junaidkhalil', '', '', '22323232', '1');
INSERT INTO `oc_admin` VALUES (8, 'junaid', 'khalil', 'khalil.junaidqqq@gmail.com', 'Admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'junaidkhalil', '', '', '232323232', '1');
INSERT INTO `oc_admin` VALUES (9, 'junaid', 'khalil', 'khalil.junaid22@gmail.com', 'Admin', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 'junaidkhalil', '', '', 'khalil.junaid@gmail.com', '1');
INSERT INTO `oc_admin` VALUES (10, 'junaid', 'khalil', 'khalil.junaid2q2@gmail.com', 'Admin', '48058e0c99bf7d689ce71c360699a14ce2f99774', 'junaidkhalil', '', '', 'khalil.junaid@gmail.com', '1');
INSERT INTO `oc_admin` VALUES (11, 'junaid', 'khalil', 'khalil.junaid2q2w@gmail.com', 'Admin', '48058e0c99bf7d689ce71c360699a14ce2f99774', 'junaidkhalil', '', '', 'khalil.junaid@gmail.com', '1');
INSERT INTO `oc_admin` VALUES (12, 'junaid', 'khalil', 'khalil.junaid0101@gmail.com', 'Admin', '7c222fb2927d828af22f592134e8932480637c0d', 'junaidkhalil', '', '', '235696969', '1');
INSERT INTO `oc_admin` VALUES (13, 'jooojo', 'Rahat', 'r@r.com', 'Admin', 'ffb9b0421a6c914d620933c885b7f1d155ff8692', 'Jhon', '', '', '25252525', '1');
INSERT INTO `oc_admin` VALUES (14, 'Weber', 'Pro', 'weber@gmail.com', 'Superadmin', '7ce0359f12857f2a90c7de465f40a95f01cb5da9', 'WeberPro', 'thumb_14.jpg', 'http://www.weber.com', '445555555555', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_banners`
-- 

CREATE TABLE `oc_banners` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(128) NOT NULL default '',
  `enable_on` date NOT NULL default '0000-00-00',
  `disable_on` date NOT NULL default '0000-00-00',
  `image` varchar(64) NOT NULL,
  `link` varchar(128) default NULL,
  `new_window` tinyint(1) NOT NULL default '0',
  `sequence` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_banners`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_boxes`
-- 

CREATE TABLE `oc_boxes` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(128) NOT NULL default '',
  `enable_on` date NOT NULL default '0000-00-00',
  `disable_on` date NOT NULL default '0000-00-00',
  `image` varchar(64) NOT NULL,
  `link` varchar(128) default NULL,
  `new_window` tinyint(1) NOT NULL default '0',
  `sequence` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_boxes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_canned_messages`
-- 

CREATE TABLE `oc_canned_messages` (
  `id` int(11) NOT NULL auto_increment,
  `deletable` tinyint(1) NOT NULL default '1',
  `type` enum('internal','order') default NULL,
  `name` varchar(50) default NULL,
  `subject` varchar(100) default NULL,
  `content` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `oc_canned_messages`
-- 

INSERT INTO `oc_canned_messages` VALUES (1, 0, 'internal', 'Gift Card Email Notification', 'You have received a gift card from {from} to {site_name}!', '<p>Congrats on your new {site_name} gift card!<br><br>Card Code: {code}<br>Gift Amount: {amount}<br>From: {from}<br>Redeemable at: {site_name} {url}</p><p>Personal Message from Sender:<br>{personal_message}</p><p>Be sure to save this email in a safe place. Your gift card code is as good as cash.</p>');
INSERT INTO `oc_canned_messages` VALUES (3, 0, 'order', 'Order Shipped Notification', 'Your order has shipped (order: {order_number})!', '<p>Dear {customer_name},</p>\n<p>Thank you for your purchase at {site_name}!</p>\n<p>This message is to inform you that your order ({order_number}) has been shipped.</p>\n<p>Enjoy your purchase!</p>');
INSERT INTO `oc_canned_messages` VALUES (6, 0, 'internal', 'Registration Confirmation', 'Thank you for registring at {site_name}!', '<p>Dear {customer_name},</p>\n<p>Thanks for registering at {site_name}. Your participation is appreciated. After registering, you should have been logged in automatically. You may access your account by using the email address this notice was sent to, and the password you signed up with. If you forget your password, on the login page, click the "forgot password" link and you can get a new password generated and sent to you.<br /><br />Thanks,<br />{site_name}</p>');
INSERT INTO `oc_canned_messages` VALUES (7, 0, 'internal', 'Order Submitted Confirmation', 'Thank you for your order with {site_name}!', '<p>Dear {customer_name},</p>\n<p>Thank you for your order with {site_name}!</p>\n<p>{order_summary}</p>');
INSERT INTO `oc_canned_messages` VALUES (8, 0, 'order', 'Digital Download Notification', 'Digital Download Notification', '<p style="text-align: center;"><strong>{download_link}</strong></p>');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_categories`
-- 

CREATE TABLE `oc_categories` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `admin_id` int(10) NOT NULL,
  `publish_by_admin` enum('1','0') NOT NULL,
  `publish_by_super` enum('0','1') NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `slug` varchar(64) NOT NULL,
  `route_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `excerpt` text NOT NULL,
  `sequence` int(10) unsigned NOT NULL,
  `image` varchar(255) default NULL,
  `seo_title` text NOT NULL,
  `meta` text NOT NULL,
  `publish_date` datetime NOT NULL,
  `delete` enum('0','1') NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `oc_categories`
-- 

INSERT INTO `oc_categories` VALUES (1, 1, '1', '0', 0, 'Information Technology', 'information-technology', 1, '<p>sfasfasfsafqqeqweqew</p>', '', 0, NULL, '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `oc_categories` VALUES (2, 1, '1', '0', 0, 'Human Resource123', 'human-resource', 3, '<img src="http://localhost/UKOpenColleges/uploads/wysiwyg/junaidkhalil/frr.jpg" alt="frr.jpg">ssfsdfsdfdsfdsfsdfsdfdsfdsfsdf', '', 0, NULL, 'dedecaif', '<meta name="description" content="We sell products that help you" />', '2013-03-28 01:01:40', '1');
INSERT INTO `oc_categories` VALUES (3, 1, '', '', 1, 'Me Child', 'me-child', 4, 'adasdasdasdadad', '', 0, NULL, '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `oc_categories` VALUES (4, 0, '1', '0', 0, 'Testing', 'gobottest', 14, '<p>afaasdadasd</p>', 'adadadadadad', 0, NULL, '', '', '0000-00-00 00:00:00', '0');
INSERT INTO `oc_categories` VALUES (5, 1, '1', '0', 0, 'SuperFunWord', 'superfun', 15, '<p>this is testing</p>', '', 0, NULL, '', '', '2013-03-28 01:01:42', '0');
INSERT INTO `oc_categories` VALUES (7, 1, '1', '0', 0, 'Newcat', 'newcat1', 18, '<p>this is testing for new fields</p>', '', 0, NULL, '', '', '2013-03-28 01:01:40', '0');
INSERT INTO `oc_categories` VALUES (8, 13, '1', '0', 0, 'ArTAr', 'rut', 19, '<p>this is admin 7 and his category</p>', 'hjhkhkjhkhjhkj', 1, NULL, 'sdfsdf', '', '2013-03-28 01:01:54', '0');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_category_products`
-- 

CREATE TABLE `oc_category_products` (
  `product_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `sequence` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_category_products`
-- 

INSERT INTO `oc_category_products` VALUES (6, 1, 5);
INSERT INTO `oc_category_products` VALUES (2, 1, 4);
INSERT INTO `oc_category_products` VALUES (3, 1, 3);
INSERT INTO `oc_category_products` VALUES (5, 1, 2);
INSERT INTO `oc_category_products` VALUES (1, 1, 1);
INSERT INTO `oc_category_products` VALUES (2, 5, 0);
INSERT INTO `oc_category_products` VALUES (5, 3, 0);
INSERT INTO `oc_category_products` VALUES (5, 2, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_countries`
-- 

CREATE TABLE `oc_countries` (
  `id` int(11) NOT NULL auto_increment,
  `sequence` int(11) NOT NULL default '0',
  `name` varchar(128) collate utf8_bin NOT NULL,
  `iso_code_2` varchar(2) collate utf8_bin NOT NULL default '',
  `iso_code_3` varchar(3) collate utf8_bin NOT NULL default '',
  `address_format` text character set utf8 NOT NULL,
  `postcode_required` int(1) NOT NULL default '0',
  `status` int(1) NOT NULL default '1',
  `tax` float(10,5) NOT NULL default '0.00000',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=240 ;

-- 
-- Dumping data for table `oc_countries`
-- 

INSERT INTO `oc_countries` VALUES (1, 3, 0x41666768616e697374616e, 0x4146, 0x414647, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (2, 4, 0x416c62616e6961, 0x414c, 0x414c42, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (3, 5, 0x416c6765726961, 0x445a, 0x445a41, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (4, 6, 0x416d65726963616e2053616d6f61, 0x4153, 0x41534d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (5, 8, 0x416e646f727261, 0x4144, 0x414e44, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (6, 7, 0x416e676f6c61, 0x414f, 0x41474f, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (7, 9, 0x416e6775696c6c61, 0x4149, 0x414941, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (8, 10, 0x416e7461726374696361, 0x4151, 0x415441, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (9, 11, 0x416e746967756120616e642042617262756461, 0x4147, 0x415447, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (10, 12, 0x417267656e74696e61, 0x4152, 0x415247, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (11, 13, 0x41726d656e6961, 0x414d, 0x41524d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (12, 14, 0x4172756261, 0x4157, 0x414257, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (13, 15, 0x4175737472616c6961, 0x4155, 0x415553, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (14, 16, 0x41757374726961, 0x4154, 0x415554, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (15, 17, 0x417a65726261696a616e, 0x415a, 0x415a45, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (16, 18, 0x426168616d6173, 0x4253, 0x424853, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (17, 19, 0x4261687261696e, 0x4248, 0x424852, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (18, 20, 0x42616e676c6164657368, 0x4244, 0x424744, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (19, 21, 0x4261726261646f73, 0x4242, 0x425242, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (20, 22, 0x42656c61727573, 0x4259, 0x424c52, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (21, 23, 0x42656c6769756d, 0x4245, 0x42454c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (22, 24, 0x42656c697a65, 0x425a, 0x424c5a, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (23, 25, 0x42656e696e, 0x424a, 0x42454e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (24, 26, 0x4265726d756461, 0x424d, 0x424d55, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (25, 27, 0x42687574616e, 0x4254, 0x42544e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (26, 28, 0x426f6c69766961, 0x424f, 0x424f4c, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (27, 29, 0x426f736e696120616e64204865727a65676f77696e61, 0x4241, 0x424948, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (28, 30, 0x426f747377616e61, 0x4257, 0x425741, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (29, 31, 0x426f757665742049736c616e64, 0x4256, 0x425654, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (30, 32, 0x4272617a696c, 0x4252, 0x425241, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (31, 33, 0x4272697469736820496e6469616e204f6365616e205465727269746f7279, 0x494f, 0x494f54, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (32, 34, 0x4272756e656920446172757373616c616d, 0x424e, 0x42524e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (33, 35, 0x42756c6761726961, 0x4247, 0x424752, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (34, 36, 0x4275726b696e61204661736f, 0x4246, 0x424641, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (35, 37, 0x427572756e6469, 0x4249, 0x424449, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (36, 38, 0x43616d626f646961, 0x4b48, 0x4b484d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (37, 39, 0x43616d65726f6f6e, 0x434d, 0x434d52, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (38, 1, 0x43616e616461, 0x4341, 0x43414e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (39, 40, 0x43617065205665726465, 0x4356, 0x435056, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (40, 41, 0x4361796d616e2049736c616e6473, 0x4b59, 0x43594d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (41, 42, 0x43656e7472616c204166726963616e2052657075626c6963, 0x4346, 0x434146, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (42, 43, 0x43686164, 0x5444, 0x544344, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (43, 44, 0x4368696c65, 0x434c, 0x43484c, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (44, 45, 0x4368696e61, 0x434e, 0x43484e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (45, 46, 0x4368726973746d61732049736c616e64, 0x4358, 0x435852, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (46, 47, 0x436f636f7320284b65656c696e67292049736c616e6473, 0x4343, 0x43434b, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (47, 48, 0x436f6c6f6d626961, 0x434f, 0x434f4c, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (48, 49, 0x436f6d6f726f73, 0x4b4d, 0x434f4d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (49, 50, 0x436f6e676f, 0x4347, 0x434f47, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (50, 51, 0x436f6f6b2049736c616e6473, 0x434b, 0x434f4b, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (51, 52, 0x436f7374612052696361, 0x4352, 0x435249, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (52, 53, 0x436f746520442749766f697265, 0x4349, 0x434956, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (53, 54, 0x43726f61746961, 0x4852, 0x485256, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (54, 55, 0x43756261, 0x4355, 0x435542, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (55, 56, 0x437970727573, 0x4359, 0x435950, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (56, 57, 0x437a6563682052657075626c6963, 0x435a, 0x435a45, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (57, 58, 0x44656e6d61726b, 0x444b, 0x444e4b, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (58, 59, 0x446a69626f757469, 0x444a, 0x444a49, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (59, 60, 0x446f6d696e696361, 0x444d, 0x444d41, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (60, 61, 0x446f6d696e6963616e2052657075626c6963, 0x444f, 0x444f4d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (61, 62, 0x456173742054696d6f72, 0x5450, 0x544d50, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (62, 63, 0x45637561646f72, 0x4543, 0x454355, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (63, 64, 0x4567797074, 0x4547, 0x454759, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (64, 65, 0x456c2053616c7661646f72, 0x5356, 0x534c56, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (65, 66, 0x45717561746f7269616c204775696e6561, 0x4751, 0x474e51, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (66, 67, 0x45726974726561, 0x4552, 0x455249, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (67, 68, 0x4573746f6e6961, 0x4545, 0x455354, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (68, 69, 0x457468696f706961, 0x4554, 0x455448, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (69, 70, 0x46616c6b6c616e642049736c616e647320284d616c76696e617329, 0x464b, 0x464c4b, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (70, 71, 0x4661726f652049736c616e6473, 0x464f, 0x46524f, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (71, 72, 0x46696a69, 0x464a, 0x464a49, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (72, 73, 0x46696e6c616e64, 0x4649, 0x46494e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (73, 74, 0x4672616e6365, 0x4652, 0x465241, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (74, 75, 0x4672616e63652c204d6574726f706f6c6974616e, 0x4658, 0x465858, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (75, 76, 0x4672656e636820477569616e61, 0x4746, 0x475546, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (76, 77, 0x4672656e636820506f6c796e65736961, 0x5046, 0x505946, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (77, 78, 0x4672656e636820536f75746865726e205465727269746f72696573, 0x5446, 0x415446, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (78, 79, 0x4761626f6e, 0x4741, 0x474142, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (79, 80, 0x47616d626961, 0x474d, 0x474d42, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (80, 81, 0x47656f72676961, 0x4745, 0x47454f, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (81, 82, 0x4765726d616e79, 0x4445, 0x444555, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (82, 83, 0x4768616e61, 0x4748, 0x474841, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (83, 84, 0x47696272616c746172, 0x4749, 0x474942, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (84, 85, 0x477265656365, 0x4752, 0x475243, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (85, 86, 0x477265656e6c616e64, 0x474c, 0x47524c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (86, 87, 0x4772656e616461, 0x4744, 0x475244, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (87, 88, 0x47756164656c6f757065, 0x4750, 0x474c50, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (88, 89, 0x4775616d, 0x4755, 0x47554d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (89, 90, 0x47756174656d616c61, 0x4754, 0x47544d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (90, 91, 0x4775696e6561, 0x474e, 0x47494e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (91, 92, 0x4775696e65612d626973736175, 0x4757, 0x474e42, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (92, 93, 0x477579616e61, 0x4759, 0x475559, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (93, 94, 0x4861697469, 0x4854, 0x485449, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (94, 95, 0x486561726420616e64204d6320446f6e616c642049736c616e6473, 0x484d, 0x484d44, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (95, 96, 0x486f6e6475726173, 0x484e, 0x484e44, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (96, 97, 0x486f6e67204b6f6e67, 0x484b, 0x484b47, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (97, 98, 0x48756e67617279, 0x4855, 0x48554e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (98, 99, 0x4963656c616e64, 0x4953, 0x49534c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (99, 100, 0x496e646961, 0x494e, 0x494e44, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (100, 101, 0x496e646f6e65736961, 0x4944, 0x49444e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (101, 102, 0x4972616e202849736c616d69632052657075626c6963206f6629, 0x4952, 0x49524e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (102, 103, 0x49726171, 0x4951, 0x495251, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (103, 104, 0x4972656c616e64, 0x4945, 0x49524c, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (104, 105, 0x49737261656c, 0x494c, 0x495352, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (105, 106, 0x4974616c79, 0x4954, 0x495441, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (106, 107, 0x4a616d61696361, 0x4a4d, 0x4a414d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (107, 108, 0x4a6170616e, 0x4a50, 0x4a504e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (108, 109, 0x4a6f7264616e, 0x4a4f, 0x4a4f52, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (109, 110, 0x4b617a616b687374616e, 0x4b5a, 0x4b415a, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (110, 111, 0x4b656e7961, 0x4b45, 0x4b454e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (111, 112, 0x4b69726962617469, 0x4b49, 0x4b4952, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (112, 113, 0x4e6f727468204b6f726561, 0x4b50, 0x50524b, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (113, 114, 0x4b6f7265612c2052657075626c6963206f66, 0x4b52, 0x4b4f52, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (114, 115, 0x4b7577616974, 0x4b57, 0x4b5754, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (115, 116, 0x4b797267797a7374616e, 0x4b47, 0x4b475a, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (116, 117, 0x4c616f2050656f706c6527732044656d6f6372617469632052657075626c6963, 0x4c41, 0x4c414f, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (117, 118, 0x4c6174766961, 0x4c56, 0x4c5641, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (118, 119, 0x4c6562616e6f6e, 0x4c42, 0x4c424e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (119, 120, 0x4c65736f74686f, 0x4c53, 0x4c534f, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (120, 121, 0x4c696265726961, 0x4c52, 0x4c4252, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (121, 122, 0x4c696279616e2041726162204a616d61686972697961, 0x4c59, 0x4c4259, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (122, 123, 0x4c6965636874656e737465696e, 0x4c49, 0x4c4945, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (123, 124, 0x4c69746875616e6961, 0x4c54, 0x4c5455, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (124, 125, 0x4c7578656d626f757267, 0x4c55, 0x4c5558, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (125, 126, 0x4d61636175, 0x4d4f, 0x4d4143, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (126, 127, 0x4d616365646f6e6961, 0x4d4b, 0x4d4b44, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (127, 128, 0x4d616461676173636172, 0x4d47, 0x4d4447, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (128, 129, 0x4d616c617769, 0x4d57, 0x4d5749, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (129, 130, 0x4d616c6179736961, 0x4d59, 0x4d5953, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (130, 131, 0x4d616c6469766573, 0x4d56, 0x4d4456, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (131, 132, 0x4d616c69, 0x4d4c, 0x4d4c49, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (132, 133, 0x4d616c7461, 0x4d54, 0x4d4c54, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (133, 134, 0x4d61727368616c6c2049736c616e6473, 0x4d48, 0x4d484c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (134, 135, 0x4d617274696e69717565, 0x4d51, 0x4d5451, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (135, 136, 0x4d6175726974616e6961, 0x4d52, 0x4d5254, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (136, 137, 0x4d6175726974697573, 0x4d55, 0x4d5553, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (137, 138, 0x4d61796f747465, 0x5954, 0x4d5954, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (138, 139, 0x4d657869636f, 0x4d58, 0x4d4558, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (139, 140, 0x4d6963726f6e657369612c2046656465726174656420537461746573206f66, 0x464d, 0x46534d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (140, 141, 0x4d6f6c646f76612c2052657075626c6963206f66, 0x4d44, 0x4d4441, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (141, 142, 0x4d6f6e61636f, 0x4d43, 0x4d434f, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (142, 143, 0x4d6f6e676f6c6961, 0x4d4e, 0x4d4e47, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (143, 144, 0x4d6f6e74736572726174, 0x4d53, 0x4d5352, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (144, 145, 0x4d6f726f63636f, 0x4d41, 0x4d4152, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (145, 146, 0x4d6f7a616d6269717565, 0x4d5a, 0x4d4f5a, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (146, 147, 0x4d79616e6d6172, 0x4d4d, 0x4d4d52, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (147, 148, 0x4e616d69626961, 0x4e41, 0x4e414d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (148, 149, 0x4e61757275, 0x4e52, 0x4e5255, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (149, 150, 0x4e6570616c, 0x4e50, 0x4e504c, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (150, 151, 0x4e65746865726c616e6473, 0x4e4c, 0x4e4c44, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (151, 152, 0x4e65746865726c616e647320416e74696c6c6573, 0x414e, 0x414e54, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (152, 153, 0x4e65772043616c65646f6e6961, 0x4e43, 0x4e434c, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (153, 154, 0x4e6577205a65616c616e64, 0x4e5a, 0x4e5a4c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (154, 155, 0x4e6963617261677561, 0x4e49, 0x4e4943, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (155, 156, 0x4e69676572, 0x4e45, 0x4e4552, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (156, 157, 0x4e696765726961, 0x4e47, 0x4e4741, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (157, 158, 0x4e697565, 0x4e55, 0x4e4955, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (158, 159, 0x4e6f72666f6c6b2049736c616e64, 0x4e46, 0x4e464b, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (159, 160, 0x4e6f72746865726e204d617269616e612049736c616e6473, 0x4d50, 0x4d4e50, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (160, 161, 0x4e6f72776179, 0x4e4f, 0x4e4f52, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (161, 162, 0x4f6d616e, 0x4f4d, 0x4f4d4e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (162, 163, 0x50616b697374616e, 0x504b, 0x50414b, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (163, 164, 0x50616c6175, 0x5057, 0x504c57, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (164, 165, 0x50616e616d61, 0x5041, 0x50414e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (165, 166, 0x5061707561204e6577204775696e6561, 0x5047, 0x504e47, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (166, 167, 0x5061726167756179, 0x5059, 0x505259, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (167, 168, 0x50657275, 0x5045, 0x504552, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (168, 169, 0x5068696c697070696e6573, 0x5048, 0x50484c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (169, 170, 0x506974636169726e, 0x504e, 0x50434e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (170, 171, 0x506f6c616e64, 0x504c, 0x504f4c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (171, 172, 0x506f72747567616c, 0x5054, 0x505254, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (172, 173, 0x50756572746f205269636f, 0x5052, 0x505249, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (173, 174, 0x5161746172, 0x5141, 0x514154, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (174, 175, 0x5265756e696f6e, 0x5245, 0x524555, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (175, 176, 0x526f6d616e6961, 0x524f, 0x524f4d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (176, 177, 0x5275737369616e2046656465726174696f6e, 0x5255, 0x525553, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (177, 178, 0x5277616e6461, 0x5257, 0x525741, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (178, 179, 0x5361696e74204b6974747320616e64204e65766973, 0x4b4e, 0x4b4e41, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (179, 180, 0x5361696e74204c75636961, 0x4c43, 0x4c4341, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (180, 181, 0x5361696e742056696e63656e7420616e6420746865204772656e6164696e6573, 0x5643, 0x564354, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (181, 182, 0x53616d6f61, 0x5753, 0x57534d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (182, 183, 0x53616e204d6172696e6f, 0x534d, 0x534d52, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (183, 184, 0x53616f20546f6d6520616e64205072696e63697065, 0x5354, 0x535450, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (184, 185, 0x536175646920417261626961, 0x5341, 0x534155, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (185, 186, 0x53656e6567616c, 0x534e, 0x53454e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (186, 187, 0x5365796368656c6c6573, 0x5343, 0x535943, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (187, 188, 0x536965727261204c656f6e65, 0x534c, 0x534c45, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (188, 189, 0x53696e6761706f7265, 0x5347, 0x534750, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (189, 190, 0x536c6f76616b2052657075626c6963, 0x534b, 0x53564b, '{firstname} {lastname}\r\n{company}\r\n{address_1}\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (190, 191, 0x536c6f76656e6961, 0x5349, 0x53564e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (191, 192, 0x536f6c6f6d6f6e2049736c616e6473, 0x5342, 0x534c42, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (192, 193, 0x536f6d616c6961, 0x534f, 0x534f4d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (193, 194, 0x536f75746820416672696361, 0x5a41, 0x5a4146, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (194, 195, 0x536f7574682047656f726769612026616d703b20536f7574682053616e64776963682049736c616e6473, 0x4753, 0x534753, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (195, 196, 0x537061696e, 0x4553, 0x455350, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (196, 197, 0x537269204c616e6b61, 0x4c4b, 0x4c4b41, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (197, 198, 0x53742e2048656c656e61, 0x5348, 0x53484e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (198, 199, 0x53742e2050696572726520616e64204d697175656c6f6e, 0x504d, 0x53504d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (199, 200, 0x537564616e, 0x5344, 0x53444e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (200, 201, 0x537572696e616d65, 0x5352, 0x535552, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (201, 202, 0x5376616c6261726420616e64204a616e204d6179656e2049736c616e6473, 0x534a, 0x534a4d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (202, 203, 0x5377617a696c616e64, 0x535a, 0x53575a, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (203, 204, 0x53776564656e, 0x5345, 0x535745, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (204, 205, 0x537769747a65726c616e64, 0x4348, 0x434845, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (205, 206, 0x53797269616e20417261622052657075626c6963, 0x5359, 0x535952, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (206, 207, 0x54616977616e, 0x5457, 0x54574e, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (207, 208, 0x54616a696b697374616e, 0x544a, 0x544a4b, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (208, 209, 0x54616e7a616e69612c20556e697465642052657075626c6963206f66, 0x545a, 0x545a41, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (209, 210, 0x546861696c616e64, 0x5448, 0x544841, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (210, 211, 0x546f676f, 0x5447, 0x54474f, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (211, 212, 0x546f6b656c6175, 0x544b, 0x544b4c, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (212, 213, 0x546f6e6761, 0x544f, 0x544f4e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (213, 214, 0x5472696e6964616420616e6420546f6261676f, 0x5454, 0x54544f, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (214, 215, 0x54756e69736961, 0x544e, 0x54554e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (215, 216, 0x5475726b6579, 0x5452, 0x545552, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (216, 217, 0x5475726b6d656e697374616e, 0x544d, 0x544b4d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (217, 218, 0x5475726b7320616e6420436169636f732049736c616e6473, 0x5443, 0x544341, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (218, 219, 0x547576616c75, 0x5456, 0x545556, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (219, 220, 0x5567616e6461, 0x5547, 0x554741, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (220, 221, 0x556b7261696e65, 0x5541, 0x554b52, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (221, 222, 0x556e69746564204172616220456d697261746573, 0x4145, 0x415245, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (222, 2, 0x556e69746564204b696e67646f6d, 0x4742, 0x474252, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (223, 0, 0x556e6974656420537461746573, 0x5553, 0x555341, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city}, {zone} {postcode}\n{country}', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (224, 223, 0x556e6974656420537461746573204d696e6f72204f75746c79696e672049736c616e6473, 0x554d, 0x554d49, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (225, 224, 0x55727567756179, 0x5559, 0x555259, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (226, 225, 0x557a62656b697374616e, 0x555a, 0x555a42, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (227, 226, 0x56616e75617475, 0x5655, 0x565554, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (228, 227, 0x5661746963616e20436974792053746174652028486f6c792053656529, 0x5641, 0x564154, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (229, 228, 0x56656e657a75656c61, 0x5645, 0x56454e, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (230, 229, 0x56696574204e616d, 0x564e, 0x564e4d, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (231, 230, 0x56697267696e2049736c616e647320284272697469736829, 0x5647, 0x564742, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (232, 231, 0x56697267696e2049736c616e64732028552e532e29, 0x5649, 0x564952, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (233, 232, 0x57616c6c697320616e6420467574756e612049736c616e6473, 0x5746, 0x574c46, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (234, 233, 0x5765737465726e20536168617261, 0x4548, 0x455348, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (235, 234, 0x59656d656e, 0x5945, 0x59454d, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (236, 235, 0x5975676f736c61766961, 0x5955, 0x595547, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (237, 236, 0x44656d6f6372617469632052657075626c6963206f6620436f6e676f, 0x4344, 0x434f44, '', 1, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (238, 237, 0x5a616d626961, 0x5a4d, 0x5a4d42, '', 0, 1, 0.00000);
INSERT INTO `oc_countries` VALUES (239, 238, 0x5a696d6261627765, 0x5a57, 0x5a5745, '', 0, 1, 0.00000);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_country_zones`
-- 

CREATE TABLE `oc_country_zones` (
  `id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `code` varchar(32) collate utf8_bin NOT NULL default '',
  `name` varchar(128) collate utf8_bin NOT NULL,
  `status` int(1) NOT NULL default '1',
  `tax` float(10,5) NOT NULL default '0.00000',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3957 ;

-- 
-- Dumping data for table `oc_country_zones`
-- 

INSERT INTO `oc_country_zones` VALUES (1, 1, 0x424453, 0x426164616b687368616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2, 1, 0x424447, 0x42616467686973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3, 1, 0x42474c, 0x426167686c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (4, 1, 0x42414c, 0x42616c6b68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (5, 1, 0x42414d, 0x42616d69616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (6, 1, 0x465241, 0x4661726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (7, 1, 0x465942, 0x466172796162, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (8, 1, 0x474841, 0x4768617a6e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (9, 1, 0x47484f, 0x47686f7772, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (10, 1, 0x48454c, 0x48656c6d616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (11, 1, 0x484552, 0x4865726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (12, 1, 0x4a4f57, 0x4a6f777a6a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (13, 1, 0x4b4142, 0x4b6162756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (14, 1, 0x4b414e, 0x4b616e6461686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (15, 1, 0x4b4150, 0x4b6170697361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (16, 1, 0x4b484f, 0x4b686f7374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (17, 1, 0x4b4e52, 0x4b6f6e6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (18, 1, 0x4b445a, 0x4b6f6e646f7a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (19, 1, 0x4c4147, 0x4c6167686d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (20, 1, 0x4c4f57, 0x4c6f77676172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (21, 1, 0x4e414e, 0x4e616e677261686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (22, 1, 0x4e494d, 0x4e696d72757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (23, 1, 0x4e5552, 0x4e7572657374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (24, 1, 0x4f5255, 0x4f72757a67616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (25, 1, 0x504941, 0x50616b746961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (26, 1, 0x504b41, 0x50616b74696b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (27, 1, 0x504152, 0x50617277616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (28, 1, 0x53414d, 0x53616d616e67616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (29, 1, 0x534152, 0x5361722d6520506f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (30, 1, 0x54414b, 0x54616b686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (31, 1, 0x574152, 0x57617264616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (32, 1, 0x5a4142, 0x5a61626f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (33, 2, 0x4252, 0x4265726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (34, 2, 0x4255, 0x42756c71697a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (35, 2, 0x444c, 0x44656c76696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (36, 2, 0x4456, 0x4465766f6c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (37, 2, 0x4449, 0x4469626572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (38, 2, 0x4452, 0x447572726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (39, 2, 0x454c, 0x456c626173616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (40, 2, 0x4552, 0x4b6f6c6f6e6a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (41, 2, 0x4652, 0x46696572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (42, 2, 0x474a, 0x476a69726f6b6173746572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (43, 2, 0x4752, 0x4772616d7368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (44, 2, 0x4841, 0x486173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (45, 2, 0x4b41, 0x4b6176616a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (46, 2, 0x4b42, 0x4b757262696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (47, 2, 0x4b43, 0x4b75636f7665, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (48, 2, 0x4b4f, 0x4b6f726365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (49, 2, 0x4b52, 0x4b72756a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (50, 2, 0x4b55, 0x4b756b6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (51, 2, 0x4c42, 0x4c696272617a6864, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (52, 2, 0x4c45, 0x4c657a6865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (53, 2, 0x4c55, 0x4c7573686e6a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (54, 2, 0x4d4d, 0x4d616c6573692065204d61646865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (55, 2, 0x4d4b, 0x4d616c6c616b6173746572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (56, 2, 0x4d54, 0x4d6174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (57, 2, 0x4d52, 0x4d697264697465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (58, 2, 0x5051, 0x506571696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (59, 2, 0x5052, 0x5065726d6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (60, 2, 0x5047, 0x506f677261646563, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (61, 2, 0x5055, 0x50756b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (62, 2, 0x5348, 0x53686b6f646572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (63, 2, 0x534b, 0x536b7261706172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (64, 2, 0x5352, 0x536172616e6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (65, 2, 0x5445, 0x546570656c656e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (66, 2, 0x5450, 0x54726f706f6a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (67, 2, 0x5452, 0x546972616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (68, 2, 0x564c, 0x566c6f7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (69, 3, 0x414452, 0x4164726172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (70, 3, 0x414445, 0x41696e204465666c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (71, 3, 0x415445, 0x41696e2054656d6f756368656e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (72, 3, 0x414c47, 0x416c676572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (73, 3, 0x414e4e, 0x416e6e616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (74, 3, 0x424154, 0x4261746e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (75, 3, 0x424543, 0x426563686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (76, 3, 0x42454a, 0x42656a616961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (77, 3, 0x424953, 0x4269736b7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (78, 3, 0x424c49, 0x426c696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (79, 3, 0x424241, 0x426f72646a20426f7520417272657269646a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (80, 3, 0x424f41, 0x426f75697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (81, 3, 0x424d44, 0x426f756d6572646573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (82, 3, 0x43484c, 0x43686c6566, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (83, 3, 0x434f4e, 0x436f6e7374616e74696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (84, 3, 0x444a45, 0x446a656c6661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (85, 3, 0x454241, 0x456c20426179616468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (86, 3, 0x454f55, 0x456c204f756564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (87, 3, 0x455441, 0x456c2054617266, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (88, 3, 0x474841, 0x4768617264616961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (89, 3, 0x475545, 0x4775656c6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (90, 3, 0x494c4c, 0x496c6c697a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (91, 3, 0x4a494a, 0x4a696a656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (92, 3, 0x4b4845, 0x4b68656e6368656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (93, 3, 0x4c4147, 0x4c6167686f756174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (94, 3, 0x4d5541, 0x4d7561736b6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (95, 3, 0x4d4544, 0x4d65646561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (96, 3, 0x4d494c, 0x4d696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (97, 3, 0x4d4f53, 0x4d6f73746167616e656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (98, 3, 0x4d5349, 0x4d2753696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (99, 3, 0x4e4141, 0x4e61616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (100, 3, 0x4f5241, 0x4f72616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (101, 3, 0x4f5541, 0x4f756172676c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (102, 3, 0x4f4542, 0x4f756d20656c2d426f7561676869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (103, 3, 0x52454c, 0x52656c697a616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (104, 3, 0x534149, 0x5361696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (105, 3, 0x534554, 0x5365746966, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (106, 3, 0x534241, 0x536964692042656c204162626573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (107, 3, 0x534b49, 0x536b696b6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (108, 3, 0x534148, 0x536f756b204168726173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (109, 3, 0x54414d, 0x54616d616e67686173736574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (110, 3, 0x544542, 0x54656265737361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (111, 3, 0x544941, 0x546961726574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (112, 3, 0x54494e, 0x54696e646f7566, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (113, 3, 0x544950, 0x546970617a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (114, 3, 0x544953, 0x54697373656d73696c74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (115, 3, 0x544f55, 0x54697a69204f757a6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (116, 3, 0x544c45, 0x546c656d63656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (117, 4, 0x45, 0x4561737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (118, 4, 0x4d, 0x4d616e752761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (119, 4, 0x52, 0x526f73652049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (120, 4, 0x53, 0x537761696e732049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (121, 4, 0x57, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (122, 5, 0x414c56, 0x416e646f727261206c612056656c6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (123, 5, 0x43414e, 0x43616e696c6c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (124, 5, 0x454e43, 0x456e63616d70, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (125, 5, 0x455345, 0x457363616c6465732d456e676f7264616e79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (126, 5, 0x4c4d41, 0x4c61204d617373616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (127, 5, 0x4f5244, 0x4f7264696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (128, 5, 0x534a4c, 0x53616e74204a756c6961206465204c6f726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (129, 6, 0x42474f, 0x42656e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (130, 6, 0x424755, 0x42656e6775656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (131, 6, 0x424945, 0x426965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (132, 6, 0x434142, 0x436162696e6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (133, 6, 0x434355, 0x4375616e646f2d437562616e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (134, 6, 0x434e4f, 0x4375616e7a61204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (135, 6, 0x435553, 0x4375616e7a612053756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (136, 6, 0x434e4e, 0x43756e656e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (137, 6, 0x485541, 0x4875616d626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (138, 6, 0x485549, 0x4875696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (139, 6, 0x4c5541, 0x4c75616e6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (140, 6, 0x4c4e4f, 0x4c756e6461204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (141, 6, 0x4c5355, 0x4c756e64612053756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (142, 6, 0x4d414c, 0x4d616c616e6765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (143, 6, 0x4d4f58, 0x4d6f7869636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (144, 6, 0x4e414d, 0x4e616d696265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (145, 6, 0x554947, 0x55696765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (146, 6, 0x5a4149, 0x5a61697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (147, 9, 0x415347, 0x5361696e742047656f726765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (148, 9, 0x41534a, 0x5361696e74204a6f686e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (149, 9, 0x41534d, 0x5361696e74204d617279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (150, 9, 0x41534c, 0x5361696e74205061756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (151, 9, 0x415352, 0x5361696e74205065746572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (152, 9, 0x415348, 0x5361696e74205068696c6970, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (153, 9, 0x424152, 0x42617262756461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (154, 9, 0x524544, 0x5265646f6e6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (155, 10, 0x414e, 0x416e7461727469646120652049736c61732064656c2041746c616e7469636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (156, 10, 0x4241, 0x4275656e6f73204169726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (157, 10, 0x4341, 0x436174616d61726361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (158, 10, 0x4348, 0x436861636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (159, 10, 0x4355, 0x436875627574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (160, 10, 0x434f, 0x436f72646f6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (161, 10, 0x4352, 0x436f727269656e746573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (162, 10, 0x4446, 0x446973747269746f204665646572616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (163, 10, 0x4552, 0x456e7472652052696f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (164, 10, 0x464f, 0x466f726d6f7361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (165, 10, 0x4a55, 0x4a756a7579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (166, 10, 0x4c50, 0x4c612050616d7061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (167, 10, 0x4c52, 0x4c612052696f6a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (168, 10, 0x4d45, 0x4d656e646f7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (169, 10, 0x4d49, 0x4d6973696f6e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (170, 10, 0x4e45, 0x4e65757175656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (171, 10, 0x524e, 0x52696f204e6567726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (172, 10, 0x5341, 0x53616c7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (173, 10, 0x534a, 0x53616e204a75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (174, 10, 0x534c, 0x53616e204c756973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (175, 10, 0x5343, 0x53616e7461204372757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (176, 10, 0x5346, 0x53616e7461204665, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (177, 10, 0x5344, 0x53616e746961676f2064656c2045737465726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (178, 10, 0x5446, 0x5469657272612064656c20467565676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (179, 10, 0x5455, 0x547563756d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (180, 11, 0x414754, 0x417261676174736f746e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (181, 11, 0x415252, 0x417261726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (182, 11, 0x41524d, 0x41726d61766972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (183, 11, 0x474547, 0x4765676861726b27756e696b27, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (184, 11, 0x4b4f54, 0x4b6f7461796b27, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (185, 11, 0x4c4f52, 0x4c6f727269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (186, 11, 0x534849, 0x53686972616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (187, 11, 0x535955, 0x5379756e696b27, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (188, 11, 0x544156, 0x546176757368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (189, 11, 0x564159, 0x5661796f74732720447a6f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (190, 11, 0x594552, 0x5965726576616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (191, 13, 0x414354, 0x4175737472616c69616e204361706974616c205465727269746f7279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (192, 13, 0x4e5357, 0x4e657720536f7574682057616c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (193, 13, 0x4e54, 0x4e6f72746865726e205465727269746f7279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (194, 13, 0x514c44, 0x517565656e736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (195, 13, 0x5341, 0x536f757468204175737472616c6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (196, 13, 0x544153, 0x5461736d616e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (197, 13, 0x564943, 0x566963746f726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (198, 13, 0x5741, 0x5765737465726e204175737472616c6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (199, 14, 0x425552, 0x42757267656e6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (200, 14, 0x4b4152, 0x4be2889ac2a7726e74656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (201, 14, 0x4e4f53, 0x4e6965646572266f756d6c3b737465727265696368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (202, 14, 0x4f4f53, 0x4f626572266f756d6c3b737465727265696368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (203, 14, 0x53414c, 0x53616c7a62757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (204, 14, 0x535445, 0x5374656965726d61726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (205, 14, 0x544952, 0x5469726f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (206, 14, 0x564f52, 0x566f7261726c62657267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (207, 14, 0x574945, 0x5769656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (208, 15, 0x4142, 0x416c692042617972616d6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (209, 15, 0x414253, 0x41627365726f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (210, 15, 0x414743, 0x4167636162416469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (211, 15, 0x41474d, 0x416764616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (212, 15, 0x414753, 0x4167646173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (213, 15, 0x414741, 0x41677374616661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (214, 15, 0x414755, 0x41677375, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (215, 15, 0x415354, 0x417374617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (216, 15, 0x4241, 0x42616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (217, 15, 0x424142, 0x426162416b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (218, 15, 0x42414c, 0x42616c616b416e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (219, 15, 0x424152, 0x4241726441, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (220, 15, 0x424559, 0x4265796c6171616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (221, 15, 0x42494c, 0x42696c617375766172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (222, 15, 0x434142, 0x436162726179696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (223, 15, 0x43414c, 0x43616c696c61626162, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (224, 15, 0x43554c, 0x43756c6661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (225, 15, 0x444153, 0x4461736b6173616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (226, 15, 0x444156, 0x446176616369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (227, 15, 0x46555a, 0x46757a756c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (228, 15, 0x4741, 0x47616e6361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (229, 15, 0x474144, 0x47616461626179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (230, 15, 0x474f52, 0x476f72616e626f79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (231, 15, 0x474f59, 0x476f79636179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (232, 15, 0x484143, 0x48616369716162756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (233, 15, 0x494d49, 0x496d69736c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (234, 15, 0x49534d, 0x49736d6179696c6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (235, 15, 0x4b414c, 0x4b616c6261636172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (236, 15, 0x4b5552, 0x4b757264616d6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (237, 15, 0x4c41, 0x4c616e6b6172616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (238, 15, 0x4c4143, 0x4c6163696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (239, 15, 0x4c414e, 0x4c616e6b6172616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (240, 15, 0x4c4552, 0x4c6572696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (241, 15, 0x4d4153, 0x4d6173616c6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (242, 15, 0x4d49, 0x4d696e67616365766972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (243, 15, 0x4e41, 0x4e616674616c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (244, 15, 0x4e4546, 0x4e65667463616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (245, 15, 0x4f4755, 0x4f67757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (246, 15, 0x4f5244, 0x4f726475626164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (247, 15, 0x514142, 0x516162616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (248, 15, 0x514158, 0x516178, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (249, 15, 0x51415a, 0x51617a6178, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (250, 15, 0x514f42, 0x516f62757374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (251, 15, 0x514241, 0x51756261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (252, 15, 0x514249, 0x51756261646c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (253, 15, 0x515553, 0x5175736172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (254, 15, 0x5341, 0x53616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (255, 15, 0x534154, 0x536161746c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (256, 15, 0x534142, 0x536162697261626164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (257, 15, 0x534144, 0x5361646172616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (258, 15, 0x534148, 0x53616862757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (259, 15, 0x53414b, 0x53616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (260, 15, 0x53414c, 0x53616c79616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (261, 15, 0x534d, 0x53756d7161796974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (262, 15, 0x534d49, 0x53616d617869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (263, 15, 0x534b52, 0x53616d6b6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (264, 15, 0x534d58, 0x53616d7578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (265, 15, 0x534152, 0x5361727572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (266, 15, 0x534959, 0x536979617a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (267, 15, 0x5353, 0x53757361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (268, 15, 0x535553, 0x53757361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (269, 15, 0x544152, 0x546172746172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (270, 15, 0x544f56, 0x546f76757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (271, 15, 0x554341, 0x55636172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (272, 15, 0x5841, 0x58616e6b616e6469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (273, 15, 0x584143, 0x5861636d617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (274, 15, 0x58414e, 0x58616e6c6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (275, 15, 0x58495a, 0x58697a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (276, 15, 0x584349, 0x586f63616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (277, 15, 0x585644, 0x586f636176616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (278, 15, 0x594152, 0x59617264696d6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (279, 15, 0x594556, 0x5965766c6178, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (280, 15, 0x5a414e, 0x5a616e67696c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (281, 15, 0x5a4151, 0x5a61716174616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (282, 15, 0x5a4152, 0x5a6172646162, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (283, 15, 0x4e58, 0x4e6178636976616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (284, 16, 0x41434b, 0x41636b6c696e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (285, 16, 0x424552, 0x42657272792049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (286, 16, 0x42494d, 0x42696d696e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (287, 16, 0x424c4b, 0x426c61636b20506f696e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (288, 16, 0x434154, 0x4361742049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (289, 16, 0x434142, 0x43656e7472616c20416261636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (290, 16, 0x43414e, 0x43656e7472616c20416e64726f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (291, 16, 0x43454c, 0x43656e7472616c20456c65757468657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (292, 16, 0x465245, 0x43697479206f662046726565706f7274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (293, 16, 0x43524f, 0x43726f6f6b65642049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (294, 16, 0x454742, 0x45617374204772616e6420426168616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (295, 16, 0x455855, 0x4578756d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (296, 16, 0x475244, 0x4772616e6420436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (297, 16, 0x484152, 0x486172626f75722049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (298, 16, 0x484f50, 0x486f706520546f776e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (299, 16, 0x494e41, 0x496e61677561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (300, 16, 0x4c4e47, 0x4c6f6e672049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (301, 16, 0x4d414e, 0x4d616e67726f766520436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (302, 16, 0x4d4159, 0x4d6179616775616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (303, 16, 0x4d4f4f, 0x4d6f6f726527732049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (304, 16, 0x4e4142, 0x4e6f72746820416261636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (305, 16, 0x4e414e, 0x4e6f72746820416e64726f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (306, 16, 0x4e454c, 0x4e6f72746820456c65757468657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (307, 16, 0x524147, 0x5261676765642049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (308, 16, 0x52554d, 0x52756d20436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (309, 16, 0x53414c, 0x53616e2053616c7661646f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (310, 16, 0x534142, 0x536f75746820416261636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (311, 16, 0x53414e, 0x536f75746820416e64726f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (312, 16, 0x53454c, 0x536f75746820456c65757468657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (313, 16, 0x535745, 0x5370616e6973682057656c6c73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (314, 16, 0x574742, 0x57657374204772616e6420426168616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (315, 17, 0x434150, 0x4361706974616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (316, 17, 0x43454e, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (317, 17, 0x4d5548, 0x4d75686172726171, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (318, 17, 0x4e4f52, 0x4e6f72746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (319, 17, 0x534f55, 0x536f75746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (320, 18, 0x424152, 0x4261726973616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (321, 18, 0x434849, 0x436869747461676f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (322, 18, 0x444841, 0x4468616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (323, 18, 0x4b4855, 0x4b68756c6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (324, 18, 0x52414a, 0x52616a7368616869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (325, 18, 0x53594c, 0x53796c686574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (326, 19, 0x4343, 0x43687269737420436875726368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (327, 19, 0x414e44, 0x5361696e7420416e64726577, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (328, 19, 0x47454f, 0x5361696e742047656f726765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (329, 19, 0x4a414d, 0x5361696e74204a616d6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (330, 19, 0x4a4f48, 0x5361696e74204a6f686e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (331, 19, 0x4a4f53, 0x5361696e74204a6f73657068, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (332, 19, 0x4c5543, 0x5361696e74204c756379, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (333, 19, 0x4d4943, 0x5361696e74204d69636861656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (334, 19, 0x504554, 0x5361696e74205065746572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (335, 19, 0x504849, 0x5361696e74205068696c6970, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (336, 19, 0x54484f, 0x5361696e742054686f6d6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (337, 20, 0x4252, 0x4272657374736b6179612028427265737429, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (338, 20, 0x484f, 0x486f6d79656c27736b6179612028486f6d79656c2729, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (339, 20, 0x484d, 0x486f726164204d696e736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (340, 20, 0x4852, 0x48726f647a79656e736b617961202848726f646e6129, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (341, 20, 0x4d41, 0x4d6168696c796f77736b61796120284d6168696c796f7729, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (342, 20, 0x4d49, 0x4d696e736b617961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (343, 20, 0x5649, 0x56697473796562736b617961202856697473796562736b29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (344, 21, 0x56414e, 0x416e7477657270656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (345, 21, 0x574252, 0x42726162616e742057616c6c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (346, 21, 0x574854, 0x4861696e617574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (347, 21, 0x574c47, 0x4c69656765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (348, 21, 0x564c49, 0x4c696d62757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (349, 21, 0x574c58, 0x4c7578656d626f757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (350, 21, 0x574e41, 0x4e616d7572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (351, 21, 0x564f56, 0x4f6f73742d566c61616e646572656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (352, 21, 0x564252, 0x566c61616d732042726162616e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (353, 21, 0x565756, 0x576573742d566c61616e646572656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (354, 22, 0x425a, 0x42656c697a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (355, 22, 0x4359, 0x4361796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (356, 22, 0x4352, 0x436f726f7a616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (357, 22, 0x4f57, 0x4f72616e67652057616c6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (358, 22, 0x5343, 0x5374616e6e20437265656b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (359, 22, 0x544f, 0x546f6c65646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (360, 23, 0x414c, 0x416c69626f7269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (361, 23, 0x414b, 0x4174616b6f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (362, 23, 0x4151, 0x41746c616e7469717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (363, 23, 0x424f, 0x426f72676f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (364, 23, 0x434f, 0x436f6c6c696e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (365, 23, 0x444f, 0x446f6e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (366, 23, 0x4b4f, 0x4b6f7566666f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (367, 23, 0x4c49, 0x4c6974746f72616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (368, 23, 0x4d4f, 0x4d6f6e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (369, 23, 0x4f55, 0x4f75656d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (370, 23, 0x504c, 0x506c6174656175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (371, 23, 0x5a4f, 0x5a6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (372, 24, 0x4453, 0x4465766f6e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (373, 24, 0x4843, 0x48616d696c746f6e2043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (374, 24, 0x4841, 0x48616d696c746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (375, 24, 0x5047, 0x5061676574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (376, 24, 0x5042, 0x50656d62726f6b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (377, 24, 0x4743, 0x5361696e742047656f7267652043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (378, 24, 0x5347, 0x5361696e742047656f7267652773, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (379, 24, 0x5341, 0x53616e647973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (380, 24, 0x534d, 0x536d6974682773, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (381, 24, 0x5348, 0x536f757468616d70746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (382, 24, 0x5741, 0x5761727769636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (383, 25, 0x42554d, 0x42756d7468616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (384, 25, 0x434855, 0x4368756b6861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (385, 25, 0x444147, 0x446167616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (386, 25, 0x474153, 0x47617361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (387, 25, 0x484141, 0x486161, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (388, 25, 0x4c4855, 0x4c68756e747365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (389, 25, 0x4d4f4e, 0x4d6f6e676172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (390, 25, 0x504152, 0x5061726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (391, 25, 0x50454d, 0x50656d616761747368656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (392, 25, 0x50554e, 0x50756e616b6861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (393, 25, 0x534a4f, 0x53616d64727570204a6f6e676b686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (394, 25, 0x534154, 0x53616d747365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (395, 25, 0x534152, 0x53617270616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (396, 25, 0x544849, 0x5468696d706875, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (397, 25, 0x545247, 0x54726173686967616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (398, 25, 0x545259, 0x54726173686979616e67737465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (399, 25, 0x54524f, 0x54726f6e677361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (400, 25, 0x545349, 0x54736972616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (401, 25, 0x575048, 0x57616e676475652050686f6472616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (402, 25, 0x5a4845, 0x5a68656d67616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (403, 26, 0x42454e, 0x42656e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (404, 26, 0x434855, 0x43687571756973616361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (405, 26, 0x434f43, 0x436f63686162616d6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (406, 26, 0x4c505a, 0x4c612050617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (407, 26, 0x4f5255, 0x4f7275726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (408, 26, 0x50414e, 0x50616e646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (409, 26, 0x504f54, 0x506f746f7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (410, 26, 0x53435a, 0x53616e7461204372757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (411, 26, 0x544152, 0x546172696a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (412, 27, 0x42524f, 0x4272636b6f206469737472696374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (413, 27, 0x465553, 0x556e736b6f2d53616e736b69204b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (414, 27, 0x46504f, 0x506f736176736b69204b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (415, 27, 0x465455, 0x54757a6c616e736b69204b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (416, 27, 0x465a45, 0x5a656e69636b6f2d446f626f6a736b69204b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (417, 27, 0x464250, 0x426f73616e736b6f706f6472696e6a736b69204b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (418, 27, 0x465342, 0x537265646e6a65626f73616e736b69204b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (419, 27, 0x46484e, 0x4865726365676f7661636b6f2d6e6572657476616e736b69204b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (420, 27, 0x465a48, 0x5a617061646e6f6865726365676f7661636b61205a7570616e696a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (421, 27, 0x465341, 0x4b616e746f6e20536172616a65766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (422, 27, 0x465a41, 0x5a617061646e6f626f73616e736b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (423, 27, 0x53424c, 0x42616e6a61204c756b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (424, 27, 0x53444f, 0x446f626f6a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (425, 27, 0x534249, 0x42696a656c6a696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (426, 27, 0x53564c, 0x566c6173656e696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (427, 27, 0x535352, 0x536172616a65766f2d526f6d616e696a61206f7220536f6b6f6c6163, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (428, 27, 0x53464f, 0x466f6361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (429, 27, 0x535452, 0x54726562696e6a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (430, 28, 0x4345, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (431, 28, 0x4748, 0x4768616e7a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (432, 28, 0x4b44, 0x4b67616c6167616469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (433, 28, 0x4b54, 0x4b6761746c656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (434, 28, 0x4b57, 0x4b77656e656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (435, 28, 0x4e47, 0x4e67616d696c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (436, 28, 0x4e45, 0x4e6f7274682045617374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (437, 28, 0x4e57, 0x4e6f7274682057657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (438, 28, 0x5345, 0x536f7574682045617374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (439, 28, 0x534f, 0x536f75746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (440, 30, 0x4143, 0x41637265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (441, 30, 0x414c, 0x416c61676f6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (442, 30, 0x4150, 0x416d617061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (443, 30, 0x414d, 0x416d617a6f6e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (444, 30, 0x4241, 0x4261686961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (445, 30, 0x4345, 0x4365617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (446, 30, 0x4446, 0x446973747269746f204665646572616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (447, 30, 0x4553, 0x457370697269746f2053616e746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (448, 30, 0x474f, 0x476f696173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (449, 30, 0x4d41, 0x4d6172616e68616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (450, 30, 0x4d54, 0x4d61746f2047726f73736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (451, 30, 0x4d53, 0x4d61746f2047726f73736f20646f2053756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (452, 30, 0x4d47, 0x4d696e617320476572616973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (453, 30, 0x5041, 0x50617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (454, 30, 0x5042, 0x50617261696261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (455, 30, 0x5052, 0x506172616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (456, 30, 0x5045, 0x5065726e616d6275636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (457, 30, 0x5049, 0x5069617569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (458, 30, 0x524a, 0x52696f206465204a616e6569726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (459, 30, 0x524e, 0x52696f204772616e646520646f204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (460, 30, 0x5253, 0x52696f204772616e646520646f2053756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (461, 30, 0x524f, 0x526f6e646f6e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (462, 30, 0x5252, 0x526f7261696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (463, 30, 0x5343, 0x53616e7461204361746172696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (464, 30, 0x5350, 0x53616f205061756c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (465, 30, 0x5345, 0x53657267697065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (466, 30, 0x544f, 0x546f63616e74696e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (467, 31, 0x5042, 0x5065726f732042616e686f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (468, 31, 0x5349, 0x53616c6f6d6f6e2049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (469, 31, 0x4e49, 0x4e656c736f6e732049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (470, 31, 0x5442, 0x54687265652042726f7468657273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (471, 31, 0x4541, 0x4561676c652049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (472, 31, 0x4449, 0x44616e6765722049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (473, 31, 0x4547, 0x45676d6f6e742049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (474, 31, 0x4447, 0x446965676f20476172636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (475, 32, 0x42454c, 0x42656c616974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (476, 32, 0x42524d, 0x4272756e656920616e64204d75617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (477, 32, 0x54454d, 0x54656d6275726f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (478, 32, 0x545554, 0x5475746f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (479, 33, '', 0x426c61676f657667726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (480, 33, '', 0x427572676173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (481, 33, '', 0x446f6272696368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (482, 33, '', 0x476162726f766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (483, 33, '', 0x4861736b6f766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (484, 33, '', 0x4b6172646a616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (485, 33, '', 0x4b79757374656e64696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (486, 33, '', 0x4c6f76656368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (487, 33, '', 0x4d6f6e74616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (488, 33, '', 0x50617a6172646a696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (489, 33, '', 0x5065726e696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (490, 33, '', 0x506c6576656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (491, 33, '', 0x506c6f76646976, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (492, 33, '', 0x52617a67726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (493, 33, '', 0x5368756d656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (494, 33, '', 0x53696c6973747261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (495, 33, '', 0x536c6976656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (496, 33, '', 0x536d6f6c79616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (497, 33, '', 0x536f666961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (498, 33, '', 0x536f666961202d20746f776e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (499, 33, '', 0x5374617261205a61676f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (500, 33, '', 0x546172676f766973687465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (501, 33, '', 0x5661726e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (502, 33, '', 0x56656c696b6f205461726e6f766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (503, 33, '', 0x566964696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (504, 33, '', 0x567261747a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (505, 33, '', 0x59616d626f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (506, 34, 0x42414c, 0x42616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (507, 34, 0x42414d, 0x42616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (508, 34, 0x42414e, 0x42616e7761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (509, 34, 0x42415a, 0x42617a656761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (510, 34, 0x424f52, 0x426f75676f7572696261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (511, 34, 0x424c47, 0x426f756c676f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (512, 34, 0x424f4b, 0x426f756c6b69656d6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (513, 34, 0x434f4d, 0x436f6d6f65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (514, 34, 0x47414e, 0x47616e7a6f7572676f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (515, 34, 0x474e41, 0x476e61676e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (516, 34, 0x474f55, 0x476f75726d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (517, 34, 0x484f55, 0x486f756574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (518, 34, 0x494f41, 0x496f6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (519, 34, 0x4b4144, 0x4b6164696f676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (520, 34, 0x4b454e, 0x4b656e65646f75676f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (521, 34, 0x4b4f44, 0x4b6f6d6f6e646a617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (522, 34, 0x4b4f50, 0x4b6f6d7069656e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (523, 34, 0x4b4f53, 0x4b6f737369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (524, 34, 0x4b4f4c, 0x4b6f756c70656c6f676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (525, 34, 0x4b4f54, 0x4b6f75726974656e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (526, 34, 0x4b4f57, 0x4b6f757277656f676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (527, 34, 0x4c4552, 0x4c6572616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (528, 34, 0x4c4f52, 0x4c6f726f756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (529, 34, 0x4d4f55, 0x4d6f75686f756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (530, 34, 0x4e4148, 0x4e61686f757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (531, 34, 0x4e414d, 0x4e616d656e74656e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (532, 34, 0x4e4159, 0x4e6179616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (533, 34, 0x4e4f55, 0x4e6f756d6269656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (534, 34, 0x4f5542, 0x4f7562726974656e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (535, 34, 0x4f5544, 0x4f7564616c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (536, 34, 0x504153, 0x506173736f7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (537, 34, 0x504f4e, 0x506f6e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (538, 34, 0x534147, 0x53616e67756965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (539, 34, 0x53414d, 0x53616e6d6174656e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (540, 34, 0x53454e, 0x53656e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (541, 34, 0x534953, 0x53697373696c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (542, 34, 0x534f4d, 0x536f756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (543, 34, 0x534f52, 0x536f75726f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (544, 34, 0x544150, 0x5461706f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (545, 34, 0x545559, 0x547579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (546, 34, 0x594147, 0x5961676861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (547, 34, 0x594154, 0x596174656e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (548, 34, 0x5a4952, 0x5a69726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (549, 34, 0x5a4f44, 0x5a6f6e646f6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (550, 34, 0x5a4f57, 0x5a6f756e6477656f676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (551, 35, 0x4242, 0x427562616e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (552, 35, 0x424a, 0x42756a756d62757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (553, 35, 0x4252, 0x427572757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (554, 35, 0x4341, 0x43616e6b757a6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (555, 35, 0x4349, 0x43696269746f6b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (556, 35, 0x4749, 0x476974656761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (557, 35, 0x4b52, 0x4b6172757a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (558, 35, 0x4b59, 0x4b6179616e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (559, 35, 0x4b49, 0x4b6972756e646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (560, 35, 0x4d41, 0x4d616b616d6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (561, 35, 0x4d55, 0x4d7572616d767961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (562, 35, 0x4d59, 0x4d7579696e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (563, 35, 0x4d57, 0x4d7761726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (564, 35, 0x4e47, 0x4e676f7a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (565, 35, 0x5254, 0x527574616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (566, 35, 0x5259, 0x527579696769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (567, 36, 0x5050, 0x50686e6f6d2050656e68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (568, 36, 0x5053, 0x50726561682053656968616e7520284b6f6d706f6e6720536f6d206f7220536968616e6f756b76696c6c6529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (569, 36, 0x5041, 0x5061696c696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (570, 36, 0x4b42, 0x4b6562, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (571, 36, 0x424d, 0x42616e74656179204d65616e63686579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (572, 36, 0x4241, 0x42617474616d62616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (573, 36, 0x4b4d, 0x4b616d706f6e67204368616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (574, 36, 0x4b4e, 0x4b616d706f6e67204368686e616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (575, 36, 0x4b55, 0x4b616d706f6e672053706575, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (576, 36, 0x4b4f, 0x4b616d706f6e6720536f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (577, 36, 0x4b54, 0x4b616d706f6e672054686f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (578, 36, 0x4b50, 0x4b616d706f74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (579, 36, 0x4b4c, 0x4b616e64616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (580, 36, 0x4b4b, 0x4b616f68204b6f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (581, 36, 0x4b52, 0x4b7261746965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (582, 36, 0x4d4b, 0x4d6f6e64756c204b697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (583, 36, 0x4f4d, 0x4f64646172204d65616e6368656179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (584, 36, 0x5055, 0x507572736174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (585, 36, 0x5052, 0x507265616820566968656172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (586, 36, 0x5047, 0x507265792056656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (587, 36, 0x524b, 0x526174616e616b204b697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (588, 36, 0x5349, 0x5369656d72656170, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (589, 36, 0x5354, 0x5374756e67205472656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (590, 36, 0x5352, 0x53766179205269656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (591, 36, 0x544b, 0x54616b656f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (592, 37, 0x414441, 0x4164616d61776120284164616d616f756129, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (593, 37, 0x43454e, 0x43656e747265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (594, 37, 0x455354, 0x45617374202845737429, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (595, 37, 0x45584e, 0x45787472656d65204e6f727468202845787472656d652d4e6f726429, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (596, 37, 0x4c4954, 0x4c6974746f72616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (597, 37, 0x4e4f52, 0x4e6f72746820284e6f726429, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (598, 37, 0x4e4f54, 0x4e6f7274687765737420284e6f72642d4f7565737429, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (599, 37, 0x4f5545, 0x5765737420284f7565737429, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (600, 37, 0x535544, 0x536f757468202853756429, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (601, 37, 0x534f55, 0x536f7574687765737420285375642d4f75657374292e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (602, 38, 0x4142, 0x416c6265727461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (603, 38, 0x4243, 0x4272697469736820436f6c756d626961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (604, 38, 0x4d42, 0x4d616e69746f6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (605, 38, 0x4e42, 0x4e6577204272756e737769636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (606, 38, 0x4e4c, 0x4e6577666f756e646c616e6420616e64204c61627261646f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (607, 38, 0x4e54, 0x4e6f72746877657374205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (608, 38, 0x4e53, 0x4e6f76612053636f746961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (609, 38, 0x4e55, 0x4e756e61767574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (610, 38, 0x4f4e, 0x4f6e746172696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (611, 38, 0x5045, 0x5072696e6365204564776172642049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (612, 38, 0x5143, 0x5175266561637574653b626563, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (613, 38, 0x534b, 0x5361736b617463686577616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (614, 38, 0x5954, 0x59756b6f6e205465727269746f7279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (615, 39, 0x4256, 0x426f61205669737461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (616, 39, 0x4252, 0x4272617661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (617, 39, 0x4353, 0x43616c686574612064652053616f204d696775656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (618, 39, 0x4d41, 0x4d61696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (619, 39, 0x4d4f, 0x4d6f73746569726f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (620, 39, 0x5041, 0x5061756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (621, 39, 0x504e, 0x506f72746f204e6f766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (622, 39, 0x5052, 0x5072616961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (623, 39, 0x5247, 0x52696265697261204772616e6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (624, 39, 0x534c, 0x53616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (625, 39, 0x4341, 0x53616e7461204361746172696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (626, 39, 0x4352, 0x53616e7461204372757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (627, 39, 0x5344, 0x53616f20446f6d696e676f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (628, 39, 0x5346, 0x53616f2046696c697065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (629, 39, 0x534e, 0x53616f204e69636f6c6175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (630, 39, 0x5356, 0x53616f20566963656e7465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (631, 39, 0x5441, 0x546172726166616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (632, 40, 0x4352, 0x437265656b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (633, 40, 0x4541, 0x4561737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (634, 40, 0x4d4c, 0x4d69646c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (635, 40, 0x5354, 0x536f75746820546f776e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (636, 40, 0x5350, 0x53706f7420426179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (637, 40, 0x534b, 0x5374616b6520426179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (638, 40, 0x5744, 0x5765737420456e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (639, 40, 0x574e, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (640, 41, 0x424241, 0x42616d696e6775692d42616e676f72616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (641, 41, 0x424b4f, 0x42617373652d4b6f74746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (642, 41, 0x484b4f, 0x48617574652d4b6f74746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (643, 41, 0x484d42, 0x486175742d4d626f6d6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (644, 41, 0x4b454d, 0x4b656d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (645, 41, 0x4c4f42, 0x4c6f62617965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (646, 41, 0x4d4b44, 0x4d616d626572652d4b616465e2889ac3ae, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (647, 41, 0x4d424f, 0x4d626f6d6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (648, 41, 0x4e4d4d, 0x4e616e612d4d616d62657265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (649, 41, 0x4f4d50, 0x4f6d62656c6c612d4d27506f6b6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (650, 41, 0x4f554b, 0x4f75616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (651, 41, 0x4f5548, 0x4f7568616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (652, 41, 0x4f5045, 0x4f7568616d2d50656e6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (653, 41, 0x56414b, 0x56616b616761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (654, 41, 0x4e4752, 0x4e616e612d47726562697a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (655, 41, 0x534d42, 0x53616e6768612d4d6261657265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (656, 41, 0x42414e, 0x42616e677569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (657, 42, 0x4241, 0x4261746861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (658, 42, 0x4249, 0x42696c74696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (659, 42, 0x4245, 0x426f726b6f752d456e6e6564692d54696265737469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (660, 42, 0x4342, 0x43686172692d4261677569726d69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (661, 42, 0x4755, 0x4775657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (662, 42, 0x4b41, 0x4b616e656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (663, 42, 0x4c41, 0x4c6163, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (664, 42, 0x4c43, 0x4c6f676f6e65204f63636964656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (665, 42, 0x4c52, 0x4c6f676f6e65204f7269656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (666, 42, 0x4d4b, 0x4d61796f2d4b65626269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (667, 42, 0x4d43, 0x4d6f79656e2d4368617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (668, 42, 0x4f55, 0x4f756164646169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (669, 42, 0x5341, 0x53616c616d6174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (670, 42, 0x5441, 0x54616e646a696c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (671, 43, 0x4149, 0x416973656e2064656c2047656e6572616c204361726c6f73204962616e657a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (672, 43, 0x414e, 0x416e746f66616761737461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (673, 43, 0x4152, 0x4172617563616e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (674, 43, 0x4154, 0x41746163616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (675, 43, 0x4249, 0x42696f2d42696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (676, 43, 0x434f, 0x436f7175696d626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (677, 43, 0x4c49, 0x4c696265727461646f722047656e6572616c204265726e6172646f204f274869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (678, 43, 0x4c4c, 0x4c6f73204c61676f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (679, 43, 0x4d41, 0x4d6167616c6c616e65732079206465206c6120416e7461727469636120436869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (680, 43, 0x4d4c, 0x4d61756c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (681, 43, 0x524d, 0x526567696f6e204d6574726f706f6c6974616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (682, 43, 0x5441, 0x5461726170616361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (683, 43, 0x5653, 0x56616c7061726169736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (684, 44, 0x414e, 0x416e687569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (685, 44, 0x4245, 0x4265696a696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (686, 44, 0x4348, 0x43686f6e6771696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (687, 44, 0x4655, 0x46756a69616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (688, 44, 0x4741, 0x47616e7375, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (689, 44, 0x4755, 0x4775616e67646f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (690, 44, 0x4758, 0x4775616e677869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (691, 44, 0x475a, 0x4775697a686f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (692, 44, 0x4841, 0x4861696e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (693, 44, 0x4842, 0x4865626569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (694, 44, 0x484c, 0x4865696c6f6e676a69616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (695, 44, 0x4845, 0x48656e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (696, 44, 0x484b, 0x486f6e67204b6f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (697, 44, 0x4855, 0x4875626569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (698, 44, 0x484e, 0x48756e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (699, 44, 0x494d, 0x496e6e6572204d6f6e676f6c6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (700, 44, 0x4a49, 0x4a69616e677375, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (701, 44, 0x4a58, 0x4a69616e677869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (702, 44, 0x4a4c, 0x4a696c696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (703, 44, 0x4c49, 0x4c69616f6e696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (704, 44, 0x4d41, 0x4d61636175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (705, 44, 0x4e49, 0x4e696e67786961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (706, 44, 0x5348, 0x536861616e7869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (707, 44, 0x5341, 0x5368616e646f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (708, 44, 0x5347, 0x5368616e67686169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (709, 44, 0x5358, 0x5368616e7869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (710, 44, 0x5349, 0x5369636875616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (711, 44, 0x5449, 0x5469616e6a696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (712, 44, 0x5849, 0x58696e6a69616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (713, 44, 0x5955, 0x59756e6e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (714, 44, 0x5a48, 0x5a68656a69616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (715, 46, 0x44, 0x446972656374696f6e2049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (716, 46, 0x48, 0x486f6d652049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (717, 46, 0x4f, 0x486f727362757267682049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (718, 46, 0x53, 0x536f7574682049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (719, 46, 0x57, 0x576573742049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (720, 47, 0x414d5a, 0x416d617a6f6e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (721, 47, 0x414e54, 0x416e74696f71756961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (722, 47, 0x415241, 0x417261756361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (723, 47, 0x41544c, 0x41746c616e7469636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (724, 47, 0x424443, 0x426f676f746120442e432e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (725, 47, 0x424f4c, 0x426f6c69766172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (726, 47, 0x424f59, 0x426f79616361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (727, 47, 0x43414c, 0x43616c646173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (728, 47, 0x434151, 0x43617175657461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (729, 47, 0x434153, 0x436173616e617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (730, 47, 0x434155, 0x4361756361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (731, 47, 0x434553, 0x4365736172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (732, 47, 0x43484f, 0x43686f636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (733, 47, 0x434f52, 0x436f72646f6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (734, 47, 0x43414d, 0x43756e64696e616d61726361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (735, 47, 0x474e41, 0x477561696e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (736, 47, 0x474a52, 0x4775616a697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (737, 47, 0x475652, 0x4775617669617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (738, 47, 0x485549, 0x4875696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (739, 47, 0x4d4147, 0x4d616764616c656e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (740, 47, 0x4d4554, 0x4d657461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (741, 47, 0x4e4152, 0x4e6172696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (742, 47, 0x4e4453, 0x4e6f7274652064652053616e74616e646572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (743, 47, 0x505554, 0x507574756d61796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (744, 47, 0x515549, 0x5175696e64696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (745, 47, 0x524953, 0x5269736172616c6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (746, 47, 0x534150, 0x53616e20416e6472657320792050726f766964656e636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (747, 47, 0x53414e, 0x53616e74616e646572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (748, 47, 0x535543, 0x5375637265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (749, 47, 0x544f4c, 0x546f6c696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (750, 47, 0x564443, 0x56616c6c652064656c204361756361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (751, 47, 0x564155, 0x566175706573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (752, 47, 0x564943, 0x56696368616461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (753, 48, 0x47, 0x4772616e646520436f6d6f7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (754, 48, 0x41, 0x416e6a6f75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (755, 48, 0x4d, 0x4d6f68656c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (756, 49, 0x424f, 0x426f75656e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (757, 49, 0x4252, 0x4272617a7a6176696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (758, 49, 0x4355, 0x43757665747465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (759, 49, 0x434f, 0x437576657474652d4f75657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (760, 49, 0x4b4f, 0x4b6f75696c6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (761, 49, 0x4c45, 0x4c656b6f756d6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (762, 49, 0x4c49, 0x4c696b6f75616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (763, 49, 0x4e49, 0x4e69617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (764, 49, 0x504c, 0x506c617465617578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (765, 49, 0x504f, 0x506f6f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (766, 49, 0x5341, 0x53616e676861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (767, 50, 0x5055, 0x50756b6170756b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (768, 50, 0x524b, 0x52616b6168616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (769, 50, 0x4d4b, 0x4d616e6968696b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (770, 50, 0x5045, 0x50656e7268796e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (771, 50, 0x4e49, 0x4e61737361752049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (772, 50, 0x5355, 0x537572776172726f77, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (773, 50, 0x5041, 0x50616c6d657273746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (774, 50, 0x4149, 0x4169747574616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (775, 50, 0x4d41, 0x4d616e756165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (776, 50, 0x5441, 0x54616b75746561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (777, 50, 0x4d54, 0x4d69746961726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (778, 50, 0x4154, 0x41746975, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (779, 50, 0x4d55, 0x4d61756b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (780, 50, 0x5252, 0x5261726f746f6e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (781, 50, 0x4d47, 0x4d616e67616961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (782, 51, 0x414c, 0x416c616a75656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (783, 51, 0x4341, 0x4361727461676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (784, 51, 0x4755, 0x4775616e616361737465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (785, 51, 0x4845, 0x48657265646961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (786, 51, 0x4c49, 0x4c696d6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (787, 51, 0x5055, 0x50756e746172656e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (788, 51, 0x534a, 0x53616e204a6f7365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (789, 52, 0x414245, 0x4162656e676f75726f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (790, 52, 0x414249, 0x416269646a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (791, 52, 0x41424f, 0x41626f6973736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (792, 52, 0x414449, 0x416469616b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (793, 52, 0x41445a, 0x41647a6f7065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (794, 52, 0x414742, 0x4167626f76696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (795, 52, 0x41474e, 0x41676e6962696c656b726f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (796, 52, 0x414c45, 0x416c657065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (797, 52, 0x424f43, 0x426f63616e6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (798, 52, 0x42414e, 0x42616e676f6c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (799, 52, 0x42454f, 0x42656f756d69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (800, 52, 0x424941, 0x4269616e6b6f756d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (801, 52, 0x42444b, 0x426f6e646f756b6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (802, 52, 0x42474e, 0x426f6e676f75616e6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (803, 52, 0x42464c, 0x426f7561666c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (804, 52, 0x424b45, 0x426f75616b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (805, 52, 0x424e41, 0x426f756e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (806, 52, 0x42444c, 0x426f756e6469616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (807, 52, 0x444b4c, 0x446162616b616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (808, 52, 0x444255, 0x4461626f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (809, 52, 0x44414c, 0x44616c6f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (810, 52, 0x44414e, 0x44616e616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (811, 52, 0x44414f, 0x44616f756b726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (812, 52, 0x44494d, 0x44696d626f6b726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (813, 52, 0x444956, 0x4469766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (814, 52, 0x445545, 0x4475656b6f7565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (815, 52, 0x464552, 0x4665726b65737365646f75676f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (816, 52, 0x474147, 0x4761676e6f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (817, 52, 0x474241, 0x4772616e642d42617373616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (818, 52, 0x474c41, 0x4772616e642d4c61686f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (819, 52, 0x475549, 0x477569676c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (820, 52, 0x495353, 0x4973736961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (821, 52, 0x4a4143, 0x4a616371756576696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (822, 52, 0x4b4154, 0x4b6174696f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (823, 52, 0x4b4f52, 0x4b6f72686f676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (824, 52, 0x4c414b, 0x4c616b6f7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (825, 52, 0x4d414e, 0x4d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (826, 52, 0x4d4b4e, 0x4d616e6b6f6e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (827, 52, 0x4d4241, 0x4d62616869616b726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (828, 52, 0x4f4449, 0x4f6469656e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (829, 52, 0x4f554d, 0x4f756d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (830, 52, 0x53414b, 0x53616b6173736f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (831, 52, 0x535045, 0x53616e2d506564726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (832, 52, 0x534153, 0x53617373616e647261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (833, 52, 0x534547, 0x53656775656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (834, 52, 0x53494e, 0x53696e667261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (835, 52, 0x534f55, 0x536f75627265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (836, 52, 0x544142, 0x5461626f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (837, 52, 0x54414e, 0x54616e6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (838, 52, 0x544945, 0x546965626973736f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (839, 52, 0x54494e, 0x54696e6772656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (840, 52, 0x544941, 0x5469617373616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (841, 52, 0x544241, 0x546f756261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (842, 52, 0x544c50, 0x546f756c65706c6575, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (843, 52, 0x544d44, 0x546f756d6f6469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (844, 52, 0x564156, 0x5661766f7561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (845, 52, 0x59414d, 0x59616d6f7573736f756b726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (846, 52, 0x5a5545, 0x5a75656e6f756c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (847, 53, 0x4242, 0x426a656c6f7661722d42696c6f676f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (848, 53, 0x435a, 0x43697479206f66205a6167726562, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (849, 53, 0x444e, 0x447562726f766e696b2d4e657265747661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (850, 53, 0x4953, 0x4973747261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (851, 53, 0x4b41, 0x4b61726c6f766163, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (852, 53, 0x4b4b, 0x4b6f707269766e6963612d4b72697a65766369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (853, 53, 0x4b5a, 0x4b726170696e612d5a61676f726a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (854, 53, 0x4c53, 0x4c696b612d53656e6a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (855, 53, 0x4d45, 0x4d6564696d75726a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (856, 53, 0x4f42, 0x4f73696a656b2d426172616e6a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (857, 53, 0x5053, 0x506f7a6567612d536c61766f6e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (858, 53, 0x5047, 0x5072696d6f726a652d476f72736b69204b6f746172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (859, 53, 0x5349, 0x536962656e696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (860, 53, 0x534d, 0x536973616b2d4d6f736c6176696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (861, 53, 0x5342, 0x536c61766f6e736b692042726f642d506f736176696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (862, 53, 0x5344, 0x53706c69742d44616c6d61746961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (863, 53, 0x5641, 0x566172617a64696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (864, 53, 0x5650, 0x5669726f7669746963612d506f64726176696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (865, 53, 0x5653, 0x56756b6f7661722d5372696a656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (866, 53, 0x5a4b, 0x5a616461722d4b6e696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (867, 53, 0x5a41, 0x5a6167726562, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (868, 54, 0x4341, 0x43616d6167756579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (869, 54, 0x4344, 0x436965676f206465204176696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (870, 54, 0x4349, 0x4369656e667565676f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (871, 54, 0x4348, 0x436975646164206465204c6120486162616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (872, 54, 0x4752, 0x4772616e6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (873, 54, 0x4755, 0x4775616e74616e616d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (874, 54, 0x484f, 0x486f6c6775696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (875, 54, 0x494a, 0x49736c61206465206c61204a7576656e747564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (876, 54, 0x4c48, 0x4c6120486162616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (877, 54, 0x4c54, 0x4c61732054756e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (878, 54, 0x4d41, 0x4d6174616e7a6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (879, 54, 0x5052, 0x50696e61722064656c2052696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (880, 54, 0x5353, 0x53616e637469205370697269747573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (881, 54, 0x5343, 0x53616e746961676f2064652043756261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (882, 54, 0x5643, 0x56696c6c6120436c617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (883, 55, 0x46, 0x46616d616775737461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (884, 55, 0x4b, 0x4b7972656e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (885, 55, 0x41, 0x4c61726e616361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (886, 55, 0x49, 0x4c696d6173736f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (887, 55, 0x4e, 0x4e69636f736961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (888, 55, 0x50, 0x506170686f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (889, 56, 0x55, 0x55737465636b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (890, 56, 0x43, 0x4a69686f6365736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (891, 56, 0x42, 0x4a69686f6d6f726176736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (892, 56, 0x4b, 0x4b61726c6f766172736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (893, 56, 0x48, 0x4b72616c6f76656872616465636b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (894, 56, 0x4c, 0x4c6962657265636b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (895, 56, 0x54, 0x4d6f726176736b6f736c657a736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (896, 56, 0x4d, 0x4f6c6f6d6f75636b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (897, 56, 0x45, 0x50617264756269636b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (898, 56, 0x50, 0x506c7a656e736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (899, 56, 0x41, 0x5072616861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (900, 56, 0x53, 0x53747265646f6365736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (901, 56, 0x4a, 0x5679736f63696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (902, 56, 0x5a, 0x5a6c696e736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (903, 57, 0x4152, 0x4172687573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (904, 57, 0x4248, 0x426f726e686f6c6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (905, 57, 0x434f, 0x436f70656e686167656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (906, 57, 0x464f, 0x4661726f652049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (907, 57, 0x4652, 0x467265646572696b73626f7267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (908, 57, 0x4659, 0x46796e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (909, 57, 0x4b4f, 0x4b6f62656e6861766e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (910, 57, 0x4e4f, 0x4e6f72646a796c6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (911, 57, 0x5249, 0x52696265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (912, 57, 0x524b, 0x52696e676b6f62696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (913, 57, 0x524f, 0x526f736b696c6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (914, 57, 0x534f, 0x536f6e6465726a796c6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (915, 57, 0x5354, 0x53746f727374726f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (916, 57, 0x564b, 0x56656a6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (917, 57, 0x564a, 0x566573746a2661656c69673b6c6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (918, 57, 0x5642, 0x5669626f7267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (919, 58, 0x53, 0x27416c69205361626968, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (920, 58, 0x4b, 0x44696b68696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (921, 58, 0x4a, 0x446a69626f757469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (922, 58, 0x4f, 0x4f626f636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (923, 58, 0x54, 0x5461646a6f757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (924, 59, 0x414e44, 0x5361696e7420416e6472657720506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (925, 59, 0x444156, 0x5361696e7420446176696420506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (926, 59, 0x47454f, 0x5361696e742047656f72676520506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (927, 59, 0x4a4f48, 0x5361696e74204a6f686e20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (928, 59, 0x4a4f53, 0x5361696e74204a6f7365706820506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (929, 59, 0x4c554b, 0x5361696e74204c756b6520506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (930, 59, 0x4d4152, 0x5361696e74204d61726b20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (931, 59, 0x504154, 0x5361696e74205061747269636b20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (932, 59, 0x504155, 0x5361696e74205061756c20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (933, 59, 0x504554, 0x5361696e7420506574657220506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (934, 60, 0x444e, 0x446973747269746f204e6163696f6e616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (935, 60, 0x415a, 0x417a7561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (936, 60, 0x4243, 0x42616f7275636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (937, 60, 0x4248, 0x42617261686f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (938, 60, 0x444a, 0x44616a61626f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (939, 60, 0x4455, 0x447561727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (940, 60, 0x454c, 0x456c6961732050696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (941, 60, 0x5359, 0x456c20536579626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (942, 60, 0x4554, 0x45737061696c6c6174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (943, 60, 0x484d, 0x4861746f204d61796f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (944, 60, 0x494e, 0x496e646570656e64656e636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (945, 60, 0x414c, 0x4c6120416c7461677261636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (946, 60, 0x524f, 0x4c6120526f6d616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (947, 60, 0x5645, 0x4c612056656761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (948, 60, 0x4d54, 0x4d61726961205472696e696461642053616e6368657a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (949, 60, 0x4d4e, 0x4d6f6e73656e6f72204e6f75656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (950, 60, 0x4d43, 0x4d6f6e746520437269737469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (951, 60, 0x4d50, 0x4d6f6e746520506c617461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (952, 60, 0x5044, 0x50656465726e616c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (953, 60, 0x5052, 0x50657261766961202842616e6929, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (954, 60, 0x5050, 0x50756572746f20506c617461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (955, 60, 0x534c, 0x53616c6365646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (956, 60, 0x534d, 0x53616d616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (957, 60, 0x5348, 0x53616e6368657a2052616d6972657a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (958, 60, 0x5343, 0x53616e2043726973746f62616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (959, 60, 0x4a4f, 0x53616e204a6f7365206465204f636f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (960, 60, 0x534a, 0x53616e204a75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (961, 60, 0x504d, 0x53616e20506564726f206465204d61636f726973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (962, 60, 0x5341, 0x53616e746961676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (963, 60, 0x5354, 0x53616e746961676f20526f6472696775657a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (964, 60, 0x5344, 0x53616e746f20446f6d696e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (965, 60, 0x5641, 0x56616c7665726465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (966, 61, 0x414c, 0x41696c6575, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (967, 61, 0x414e, 0x41696e61726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (968, 61, 0x4241, 0x426175636175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (969, 61, 0x424f, 0x426f626f6e61726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (970, 61, 0x434f, 0x436f7661204c696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (971, 61, 0x4449, 0x44696c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (972, 61, 0x4552, 0x45726d657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (973, 61, 0x4c41, 0x4c617574656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (974, 61, 0x4c49, 0x4c697175696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (975, 61, 0x4d54, 0x4d616e617475746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (976, 61, 0x4d46, 0x4d616e7566616869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (977, 61, 0x4f45, 0x4f656375737369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (978, 61, 0x5649, 0x5669717565717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (979, 62, 0x415a55, 0x417a756179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (980, 62, 0x424f4c, 0x426f6c69766172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (981, 62, 0x43414e, 0x4361266e74696c64653b6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (982, 62, 0x434152, 0x436172636869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (983, 62, 0x434849, 0x4368696d626f72617a6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (984, 62, 0x434f54, 0x436f746f70617869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (985, 62, 0x454f52, 0x456c204f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (986, 62, 0x45534d, 0x45736d6572616c646173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (987, 62, 0x475053, 0x47616c266161637574653b7061676f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (988, 62, 0x475541, 0x477561796173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (989, 62, 0x494d42, 0x496d626162757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (990, 62, 0x4c4f4a, 0x4c6f6a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (991, 62, 0x4c524f, 0x4c6f732052696f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (992, 62, 0x4d414e, 0x4d616e6162266961637574653b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (993, 62, 0x4d5341, 0x4d6f726f6e612053616e746961676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (994, 62, 0x4e4150, 0x4e61706f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (995, 62, 0x4f5245, 0x4f72656c6c616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (996, 62, 0x504153, 0x50617374617a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (997, 62, 0x504943, 0x50696368696e636861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (998, 62, 0x535543, 0x537563756d62266961637574653b6f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (999, 62, 0x54554e, 0x54756e67757261687561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1000, 62, 0x5a4348, 0x5a616d6f7261204368696e6368697065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1001, 63, 0x444859, 0x41642044617161686c69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1002, 63, 0x42414d, 0x416c204261687220616c2041686d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1003, 63, 0x424859, 0x416c204275686179726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1004, 63, 0x46594d, 0x416c2046617979756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1005, 63, 0x474259, 0x416c20476861726269796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1006, 63, 0x494452, 0x416c2049736b616e64617269796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1007, 63, 0x494d4c, 0x416c2049736d6127696c69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1008, 63, 0x4a5a48, 0x416c204a697a6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1009, 63, 0x4d4659, 0x416c204d696e756669796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1010, 63, 0x4d4e59, 0x416c204d696e7961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1011, 63, 0x514852, 0x416c2051616869726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1012, 63, 0x514c59, 0x416c2051616c79756269796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1013, 63, 0x574a44, 0x416c205761646920616c204a61646964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1014, 63, 0x534851, 0x41736820536861727169796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1015, 63, 0x535759, 0x417320537577617973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1016, 63, 0x415357, 0x417377616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1017, 63, 0x415359, 0x4173797574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1018, 63, 0x425357, 0x42616e6920537577617966, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1019, 63, 0x425344, 0x427572205361276964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1020, 63, 0x444d59, 0x44756d796174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1021, 63, 0x4a4e53, 0x4a616e75622053696e6127, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1022, 63, 0x4b5348, 0x4b6166722061736820536861796b68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1023, 63, 0x4d4154, 0x4d6174727568, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1024, 63, 0x51494e, 0x51696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1025, 63, 0x534853, 0x5368616d616c2053696e6127, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1026, 63, 0x535548, 0x537568616a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1027, 64, 0x4148, 0x4168756163686170616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1028, 64, 0x4341, 0x436162616e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1029, 64, 0x4348, 0x4368616c6174656e616e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1030, 64, 0x4355, 0x4375736361746c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1031, 64, 0x4c42, 0x4c61204c69626572746164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1032, 64, 0x505a, 0x4c612050617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1033, 64, 0x554e, 0x4c6120556e696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1034, 64, 0x4d4f, 0x4d6f72617a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1035, 64, 0x534d, 0x53616e204d696775656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1036, 64, 0x5353, 0x53616e2053616c7661646f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1037, 64, 0x5356, 0x53616e20566963656e7465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1038, 64, 0x5341, 0x53616e746120416e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1039, 64, 0x534f, 0x536f6e736f6e617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1040, 64, 0x5553, 0x5573756c7574616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1041, 65, 0x414e, 0x50726f76696e63696120416e6e6f626f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1042, 65, 0x424e, 0x50726f76696e6369612042696f6b6f204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1043, 65, 0x4253, 0x50726f76696e6369612042696f6b6f20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1044, 65, 0x4353, 0x50726f76696e6369612043656e74726f20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1045, 65, 0x4b4e, 0x50726f76696e636961204b69652d4e74656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1046, 65, 0x4c49, 0x50726f76696e636961204c69746f72616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1047, 65, 0x574e, 0x50726f76696e6369612057656c652d4e7a6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1048, 66, 0x4d41, 0x43656e7472616c20284d61656b656c29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1049, 66, 0x4b45, 0x416e7365626120284b6572656e29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1050, 66, 0x444b, 0x536f75746865726e2052656420536561202844656275622d4b6569682d426168726929, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1051, 66, 0x534b, 0x4e6f72746865726e2052656420536561202853656d69656e2d4b6569682d426168726929, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1052, 66, 0x4445, 0x536f75746865726e2028446562756229, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1053, 66, 0x4252, 0x476173682d4261726b612028426172656e747529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1054, 67, 0x4841, 0x4861726a756d6161202854616c6c696e6e29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1055, 67, 0x4849, 0x486969756d616120284b6172646c6129, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1056, 67, 0x4956, 0x4964612d566972756d616120284a6f68766929, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1057, 67, 0x4a41, 0x4a617276616d61612028506169646529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1058, 67, 0x4a4f, 0x4a6f676576616d616120284a6f6765766129, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1059, 67, 0x4c56, 0x4c61616e652d566972756d6161202852616b7665726529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1060, 67, 0x4c41, 0x4c61616e656d616120284861617073616c7529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1061, 67, 0x5041, 0x5061726e756d616120285061726e7529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1062, 67, 0x504f, 0x506f6c76616d61612028506f6c766129, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1063, 67, 0x5241, 0x5261706c616d616120285261706c6129, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1064, 67, 0x5341, 0x53616172656d616120284b756573736161726529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1065, 67, 0x5441, 0x54617274756d61612028546172747529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1066, 67, 0x5641, 0x56616c67616d6161202856616c676129, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1067, 67, 0x5649, 0x56696c6a616e64696d6161202856696c6a616e646929, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1068, 67, 0x564f, 0x566f72756d61612028566f727529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1069, 68, 0x4146, 0x41666172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1070, 68, 0x4148, 0x416d68617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1071, 68, 0x4247, 0x42656e697368616e67756c2d47756d617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1072, 68, 0x4742, 0x47616d62656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1073, 68, 0x4852, 0x486172696169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1074, 68, 0x4f52, 0x4f726f6d6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1075, 68, 0x534d, 0x536f6d616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1076, 68, 0x534e, 0x536f75746865726e204e6174696f6e73202d204e6174696f6e616c697469657320616e642050656f706c657320526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1077, 68, 0x5447, 0x546967726179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1078, 68, 0x4141, 0x4164646973204162616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1079, 68, 0x4444, 0x446972652044617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1080, 71, 0x43, 0x43656e7472616c204469766973696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1081, 71, 0x4e, 0x4e6f72746865726e204469766973696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1082, 71, 0x45, 0x4561737465726e204469766973696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1083, 71, 0x57, 0x5765737465726e204469766973696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1084, 71, 0x52, 0x526f74756d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1085, 72, 0x414c, 0x416876656e616e6d61616e204c61616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1086, 72, 0x4553, 0x4574656c612d53756f6d656e204c61616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1087, 72, 0x4953, 0x4974612d53756f6d656e204c61616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1088, 72, 0x4c53, 0x4c616e73692d53756f6d656e204c61616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1089, 72, 0x4c41, 0x4c6170696e204c616e616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1090, 72, 0x4f55, 0x4f756c756e204c61616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1091, 73, 0x414c, 0x416c73616365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1092, 73, 0x4151, 0x417175697461696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1093, 73, 0x4155, 0x4175766572676e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1094, 73, 0x4252, 0x4272697474616e79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1095, 73, 0x4255, 0x42757267756e6479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1096, 73, 0x4345, 0x43656e746572204c6f6972652056616c6c6579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1097, 73, 0x4348, 0x4368616d7061676e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1098, 73, 0x434f, 0x436f727365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1099, 73, 0x4652, 0x4672616e636520436f6d7465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1100, 73, 0x4c41, 0x4c616e677565646f6320526f757373696c6c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1101, 73, 0x4c49, 0x4c696d6f7573696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1102, 73, 0x4c4f, 0x4c6f727261696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1103, 73, 0x4d49, 0x4d69646920507972656e656573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1104, 73, 0x4e4f, 0x4e6f7264205061732064652043616c616973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1105, 73, 0x4e52, 0x4e6f726d616e6479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1106, 73, 0x5041, 0x5061726973202f20496c6c206465204672616e6365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1107, 73, 0x5049, 0x5069636172646965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1108, 73, 0x504f, 0x506f69746f752043686172656e7465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1109, 73, 0x5052, 0x50726f76656e6365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1110, 73, 0x5248, 0x52686f6e6520416c7073, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1111, 73, 0x5249, 0x52697669657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1112, 73, 0x5745, 0x5765737465726e204c6f6972652056616c6c6579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1113, 74, 0x4574, 0x457472616e676572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1114, 74, 0x3031, 0x41696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1115, 74, 0x3032, 0x4169736e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1116, 74, 0x3033, 0x416c6c696572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1117, 74, 0x3034, 0x416c7065732064652048617574652050726f76656e6365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1118, 74, 0x3035, 0x4861757465732d416c706573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1119, 74, 0x3036, 0x416c706573204d61726974696d6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1120, 74, 0x3037, 0x417264266567726176653b636865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1121, 74, 0x3038, 0x417264656e6e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1122, 74, 0x3039, 0x417269266567726176653b6765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1123, 74, 0x3130, 0x41756265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1124, 74, 0x3131, 0x41756465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1125, 74, 0x3132, 0x41766579726f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1126, 74, 0x3133, 0x426f7563686573206475205268266f636972633b6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1127, 74, 0x3134, 0x43616c7661646f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1128, 74, 0x3135, 0x43616e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1129, 74, 0x3136, 0x43686172656e7465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1130, 74, 0x3137, 0x43686172656e7465204d61726974696d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1131, 74, 0x3138, 0x43686572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1132, 74, 0x3139, 0x436f7272266567726176653b7a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1133, 74, 0x3241, 0x436f72736520647520537564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1134, 74, 0x3242, 0x486175746520436f727365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1135, 74, 0x3231, 0x43266f636972633b7465206426233033393b6f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1136, 74, 0x3232, 0x43266f636972633b746573206426233033393b41726d6f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1137, 74, 0x3233, 0x437265757365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1138, 74, 0x3234, 0x446f72646f676e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1139, 74, 0x3235, 0x446f756273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1140, 74, 0x3236, 0x4472266f636972633b6d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1141, 74, 0x3237, 0x45757265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1142, 74, 0x3238, 0x45757265206574204c6f6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1143, 74, 0x3239, 0x46696e697374266567726176653b7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1144, 74, 0x3330, 0x47617264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1145, 74, 0x3331, 0x4861757465204761726f6e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1146, 74, 0x3332, 0x47657273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1147, 74, 0x3333, 0x4769726f6e6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1148, 74, 0x3334, 0x48266561637574653b7261756c74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1149, 74, 0x3335, 0x496c6c652065742056696c61696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1150, 74, 0x3336, 0x496e647265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1151, 74, 0x3337, 0x496e647265206574204c6f697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1152, 74, 0x3338, 0x4973266561637574653b7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1153, 74, 0x3339, 0x4a757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1154, 74, 0x3430, 0x4c616e646573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1155, 74, 0x3431, 0x4c6f69722065742043686572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1156, 74, 0x3432, 0x4c6f697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1157, 74, 0x3433, 0x4861757465204c6f697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1158, 74, 0x3434, 0x4c6f6972652041746c616e7469717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1159, 74, 0x3435, 0x4c6f69726574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1160, 74, 0x3436, 0x4c6f74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1161, 74, 0x3437, 0x4c6f74206574204761726f6e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1162, 74, 0x3438, 0x4c6f7a266567726176653b7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1163, 74, 0x3439, 0x4d61696e65206574204c6f697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1164, 74, 0x3530, 0x4d616e636865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1165, 74, 0x3531, 0x4d61726e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1166, 74, 0x3532, 0x4861757465204d61726e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1167, 74, 0x3533, 0x4d6179656e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1168, 74, 0x3534, 0x4d657572746865206574204d6f73656c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1169, 74, 0x3535, 0x4d65757365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1170, 74, 0x3536, 0x4d6f72626968616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1171, 74, 0x3537, 0x4d6f73656c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1172, 74, 0x3538, 0x4e69266567726176653b767265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1173, 74, 0x3539, 0x4e6f7264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1174, 74, 0x3630, 0x4f697365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1175, 74, 0x3631, 0x4f726e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1176, 74, 0x3632, 0x5061732064652043616c616973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1177, 74, 0x3633, 0x5075792064652044266f636972633b6d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1178, 74, 0x3634, 0x507972266561637574653b6e266561637574653b65732041746c616e746971756573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1179, 74, 0x3635, 0x48617574657320507972266561637574653b6e266561637574653b6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1180, 74, 0x3636, 0x507972266561637574653b6e266561637574653b6573204f7269656e74616c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1181, 74, 0x3637, 0x426173205268696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1182, 74, 0x3638, 0x48617574205268696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1183, 74, 0x3639, 0x5268266f636972633b6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1184, 74, 0x3730, 0x4861757465205361266f636972633b6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1185, 74, 0x3731, 0x5361266f636972633b6e65206574204c6f697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1186, 74, 0x3732, 0x536172746865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1187, 74, 0x3733, 0x5361766f6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1188, 74, 0x3734, 0x4861757465205361766f6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1189, 74, 0x3735, 0x5061726973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1190, 74, 0x3736, 0x5365696e65204d61726974696d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1191, 74, 0x3737, 0x5365696e65206574204d61726e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1192, 74, 0x3738, 0x5976656c696e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1193, 74, 0x3739, 0x446575782053266567726176653b76726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1194, 74, 0x3830, 0x536f6d6d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1195, 74, 0x3831, 0x5461726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1196, 74, 0x3832, 0x5461726e206574204761726f6e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1197, 74, 0x3833, 0x566172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1198, 74, 0x3834, 0x566175636c757365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1199, 74, 0x3835, 0x56656e64266561637574653b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1200, 74, 0x3836, 0x5669656e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1201, 74, 0x3837, 0x4861757465205669656e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1202, 74, 0x3838, 0x566f73676573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1203, 74, 0x3839, 0x596f6e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1204, 74, 0x3930, 0x5465727269746f6972652064652042656c666f7274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1205, 74, 0x3931, 0x4573736f6e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1206, 74, 0x3932, 0x4861757473206465205365696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1207, 74, 0x3933, 0x5365696e652053742d44656e6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1208, 74, 0x3934, 0x56616c206465204d61726e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1209, 74, 0x3935, 0x56616c2064274f697365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1210, 76, 0x4d, 0x417263686970656c20646573204d6172717569736573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1211, 76, 0x54, 0x417263686970656c20646573205475616d6f7475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1212, 76, 0x49, 0x417263686970656c2064657320547562756169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1213, 76, 0x56, 0x496c65732064752056656e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1214, 76, 0x53, 0x496c657320536f75732d6c652d56656e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1215, 77, 0x43, 0x496c65732043726f7a6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1216, 77, 0x4b, 0x496c6573204b65726775656c656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1217, 77, 0x41, 0x496c6520416d7374657264616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1218, 77, 0x50, 0x496c65205361696e742d5061756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1219, 77, 0x44, 0x4164656c6965204c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1220, 78, 0x4553, 0x4573747561697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1221, 78, 0x484f, 0x486175742d4f676f6f7565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1222, 78, 0x4d4f, 0x4d6f79656e2d4f676f6f7565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1223, 78, 0x4e47, 0x4e676f756e6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1224, 78, 0x4e59, 0x4e79616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1225, 78, 0x4f49, 0x4f676f6f75652d4976696e646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1226, 78, 0x4f4c, 0x4f676f6f75652d4c6f6c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1227, 78, 0x4f4d, 0x4f676f6f75652d4d61726974696d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1228, 78, 0x574e, 0x576f6c65752d4e74656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1229, 79, 0x424a, 0x42616e6a756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1230, 79, 0x4253, 0x4261737365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1231, 79, 0x4252, 0x4272696b616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1232, 79, 0x4a41, 0x4a616e6a616e6762757265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1233, 79, 0x4b41, 0x4b616e6966656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1234, 79, 0x4b45, 0x4b65726577616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1235, 79, 0x4b55, 0x4b756e74617572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1236, 79, 0x4d41, 0x4d616e73616b6f6e6b6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1237, 79, 0x4c52, 0x4c6f776572205269766572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1238, 79, 0x4352, 0x43656e7472616c205269766572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1239, 79, 0x4e42, 0x4e6f7274682042616e6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1240, 79, 0x5552, 0x5570706572205269766572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1241, 79, 0x5745, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1242, 80, 0x4142, 0x41626b68617a6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1243, 80, 0x414a, 0x416a61726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1244, 80, 0x5442, 0x5462696c697369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1245, 80, 0x4755, 0x4775726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1246, 80, 0x494d, 0x496d6572657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1247, 80, 0x4b41, 0x4b616b68657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1248, 80, 0x4b4b, 0x4b76656d6f204b6172746c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1249, 80, 0x4d4d, 0x4d74736b686574612d4d7469616e657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1250, 80, 0x524c, 0x5261636861204c6563686b68756d6920616e64204b76656d6f205376616e6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1251, 80, 0x535a, 0x53616d656772656c6f2d5a656d6f205376616e657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1252, 80, 0x534a, 0x53616d74736b68652d4a6176616b68657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1253, 80, 0x534b, 0x5368696461204b6172746c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1254, 81, 0x424157, 0x426164656e2d572675756d6c3b727474656d62657267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1255, 81, 0x424159, 0x42617965726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1256, 81, 0x424552, 0x4265726c696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1257, 81, 0x425247, 0x4272616e64656e62757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1258, 81, 0x425245, 0x4272656d656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1259, 81, 0x48414d, 0x48616d62757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1260, 81, 0x484553, 0x48657373656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1261, 81, 0x4d4543, 0x4d65636b6c656e627572672d566f72706f6d6d65726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1262, 81, 0x4e4453, 0x4e69656465727361636873656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1263, 81, 0x4e5257, 0x4e6f7264726865696e2d5765737466616c656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1264, 81, 0x524845, 0x526865696e6c616e642d5066616c7a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1265, 81, 0x534152, 0x536161726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1266, 81, 0x534153, 0x5361636873656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1267, 81, 0x534143, 0x5361636873656e2d416e68616c74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1268, 81, 0x53434e, 0x5363686c65737769672d486f6c737465696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1269, 81, 0x544845, 0x54682675756d6c3b72696e67656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1270, 82, 0x4153, 0x417368616e746920526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1271, 82, 0x4241, 0x42726f6e672d416861666f20526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1272, 82, 0x4345, 0x43656e7472616c20526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1273, 82, 0x4541, 0x4561737465726e20526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1274, 82, 0x4741, 0x4772656174657220416363726120526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1275, 82, 0x4e4f, 0x4e6f72746865726e20526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1276, 82, 0x5545, 0x5570706572204561737420526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1277, 82, 0x5557, 0x5570706572205765737420526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1278, 82, 0x564f, 0x566f6c746120526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1279, 82, 0x5745, 0x5765737465726e20526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1280, 84, 0x4154, 0x417474696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1281, 84, 0x434e, 0x43656e7472616c20477265656365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1282, 84, 0x434d, 0x43656e7472616c204d616365646f6e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1283, 84, 0x4352, 0x4372657465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1284, 84, 0x454d, 0x45617374204d616365646f6e696120616e6420546872616365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1285, 84, 0x4550, 0x457069727573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1286, 84, 0x4949, 0x496f6e69616e2049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1287, 84, 0x4e41, 0x4e6f7274682041656765616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1288, 84, 0x5050, 0x50656c6f706f6e6e65736f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1289, 84, 0x5341, 0x536f7574682041656765616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1290, 84, 0x5448, 0x5468657373616c79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1291, 84, 0x5747, 0x5765737420477265656365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1292, 84, 0x574d, 0x57657374204d616365646f6e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1293, 85, 0x41, 0x4176616e6e6161, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1294, 85, 0x54, 0x54756e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1295, 85, 0x4b, 0x4b69746161, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1296, 86, 0x41, 0x5361696e7420416e64726577, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1297, 86, 0x44, 0x5361696e74204461766964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1298, 86, 0x47, 0x5361696e742047656f726765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1299, 86, 0x4a, 0x5361696e74204a6f686e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1300, 86, 0x4d, 0x5361696e74204d61726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1301, 86, 0x50, 0x5361696e74205061747269636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1302, 86, 0x43, 0x436172726961636f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1303, 86, 0x51, 0x5065746974204d617274696e69717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1304, 89, 0x4156, 0x416c7461205665726170617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1305, 89, 0x4256, 0x42616a61205665726170617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1306, 89, 0x434d, 0x4368696d616c74656e616e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1307, 89, 0x4351, 0x4368697175696d756c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1308, 89, 0x5045, 0x456c20506574656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1309, 89, 0x5052, 0x456c2050726f677265736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1310, 89, 0x5143, 0x456c20517569636865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1311, 89, 0x4553, 0x45736375696e746c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1312, 89, 0x4755, 0x47756174656d616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1313, 89, 0x4855, 0x48756568756574656e616e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1314, 89, 0x495a, 0x497a6162616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1315, 89, 0x4a41, 0x4a616c617061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1316, 89, 0x4a55, 0x4a757469617061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1317, 89, 0x515a, 0x517565747a616c74656e616e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1318, 89, 0x5245, 0x526574616c68756c6575, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1319, 89, 0x5354, 0x53616361746570657175657a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1320, 89, 0x534d, 0x53616e204d6172636f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1321, 89, 0x5352, 0x53616e746120526f7361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1322, 89, 0x534f, 0x536f6c6f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1323, 89, 0x5355, 0x5375636869746570657175657a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1324, 89, 0x544f, 0x546f746f6e69636170616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1325, 89, 0x5a41, 0x5a6163617061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1326, 90, 0x434e4b, 0x436f6e616b7279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1327, 90, 0x42594c, 0x4265796c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1328, 90, 0x424641, 0x426f666661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1329, 90, 0x424f4b, 0x426f6b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1330, 90, 0x434f59, 0x436f796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1331, 90, 0x44424c, 0x4461626f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1332, 90, 0x444c42, 0x44616c616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1333, 90, 0x444752, 0x44696e67756972617965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1334, 90, 0x444252, 0x44756272656b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1335, 90, 0x46524e, 0x466172616e6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1336, 90, 0x465243, 0x466f7265636172696168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1337, 90, 0x465249, 0x46726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1338, 90, 0x47414f, 0x47616f75616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1339, 90, 0x474344, 0x477565636b65646f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1340, 90, 0x4b4e4b, 0x4b616e6b616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1341, 90, 0x4b524e, 0x4b65726f75616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1342, 90, 0x4b4e44, 0x4b696e646961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1343, 90, 0x4b5344, 0x4b69737369646f75676f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1344, 90, 0x4b4241, 0x4b6f75626961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1345, 90, 0x4b4441, 0x4b6f756e64617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1346, 90, 0x4b5241, 0x4b6f75726f75737361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1347, 90, 0x4c4142, 0x4c616265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1348, 90, 0x4c4c4d, 0x4c656c6f756d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1349, 90, 0x4c4f4c, 0x4c6f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1350, 90, 0x4d4354, 0x4d6163656e7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1351, 90, 0x4d414c, 0x4d616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1352, 90, 0x4d414d, 0x4d616d6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1353, 90, 0x4d414e, 0x4d616e6469616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1354, 90, 0x4e5a52, 0x4e7a6572656b6f7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1355, 90, 0x504954, 0x50697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1356, 90, 0x534947, 0x53696775697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1357, 90, 0x544c4d, 0x54656c696d656c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1358, 90, 0x544f47, 0x546f75677565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1359, 90, 0x594f4d, 0x596f6d6f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1360, 91, 0x4246, 0x42616661746120526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1361, 91, 0x4242, 0x42696f6d626f20526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1362, 91, 0x4253, 0x42697373617520526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1363, 91, 0x424c, 0x426f6c616d6120526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1364, 91, 0x4341, 0x43616368657520526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1365, 91, 0x4741, 0x4761627520526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1366, 91, 0x4f49, 0x4f696f20526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1367, 91, 0x5155, 0x5175696e61726120526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1368, 91, 0x544f, 0x546f6d62616c6920526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1369, 92, 0x4257, 0x426172696d612d5761696e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1370, 92, 0x434d, 0x437579756e692d4d617a6172756e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1371, 92, 0x444d, 0x44656d65726172612d4d616861696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1372, 92, 0x4543, 0x4561737420426572626963652d436f72656e74796e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1373, 92, 0x4557, 0x45737365717569626f2049736c616e64732d576573742044656d6572617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1374, 92, 0x4d42, 0x4d6168616963612d42657262696365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1375, 92, 0x504d, 0x506f6d65726f6f6e2d537570656e61616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1376, 92, 0x5049, 0x506f7461726f2d5369706172756e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1377, 92, 0x5544, 0x55707065722044656d65726172612d42657262696365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1378, 92, 0x5554, 0x55707065722054616b7574752d55707065722045737365717569626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1379, 93, 0x4152, 0x41727469626f6e697465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1380, 93, 0x4345, 0x43656e747265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1381, 93, 0x4741, 0x4772616e6427416e7365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1382, 93, 0x4e44, 0x4e6f7264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1383, 93, 0x4e45, 0x4e6f72642d457374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1384, 93, 0x4e4f, 0x4e6f72642d4f75657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1385, 93, 0x4f55, 0x4f75657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1386, 93, 0x5344, 0x537564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1387, 93, 0x5345, 0x5375642d457374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1388, 94, 0x46, 0x466c61742049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1389, 94, 0x4d, 0x4d63446f6e616c642049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1390, 94, 0x53, 0x536861672049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1391, 94, 0x48, 0x48656172642049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1392, 95, 0x4154, 0x41746c616e74696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1393, 95, 0x4348, 0x43686f6c7574656361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1394, 95, 0x434c, 0x436f6c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1395, 95, 0x434d, 0x436f6d617961677561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1396, 95, 0x4350, 0x436f70616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1397, 95, 0x4352, 0x436f72746573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1398, 95, 0x5041, 0x456c205061726169736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1399, 95, 0x464d, 0x4672616e636973636f204d6f72617a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1400, 95, 0x4744, 0x4772616369617320612044696f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1401, 95, 0x494e, 0x496e746962756361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1402, 95, 0x4942, 0x49736c6173206465206c6120426168696120284261792049736c616e647329, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1403, 95, 0x505a, 0x4c612050617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1404, 95, 0x4c45, 0x4c656d70697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1405, 95, 0x4f43, 0x4f636f74657065717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1406, 95, 0x4f4c, 0x4f6c616e63686f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1407, 95, 0x5342, 0x53616e74612042617262617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1408, 95, 0x5641, 0x56616c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1409, 95, 0x594f, 0x596f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1410, 96, 0x484357, 0x43656e7472616c20616e64205765737465726e20486f6e67204b6f6e672049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1411, 96, 0x484541, 0x4561737465726e20486f6e67204b6f6e672049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1412, 96, 0x48534f, 0x536f75746865726e20486f6e67204b6f6e672049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1413, 96, 0x485743, 0x57616e204368616920486f6e67204b6f6e672049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1414, 96, 0x4b4b43, 0x4b6f776c6f6f6e2043697479204b6f776c6f6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1415, 96, 0x4b4b54, 0x4b77756e20546f6e67204b6f776c6f6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1416, 96, 0x4b5353, 0x5368616d205368756920506f204b6f776c6f6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1417, 96, 0x4b5754, 0x576f6e67205461692053696e204b6f776c6f6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1418, 96, 0x4b5954, 0x596175205473696d204d6f6e67204b6f776c6f6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1419, 96, 0x4e4953, 0x49736c616e6473204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1420, 96, 0x4e4b54, 0x4b776169205473696e67204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1421, 96, 0x4e4e4f, 0x4e6f727468204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1422, 96, 0x4e534b, 0x536169204b756e67204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1423, 96, 0x4e5354, 0x5368612054696e204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1424, 96, 0x4e5450, 0x54616920506f204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1425, 96, 0x4e5457, 0x547375656e2057616e204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1426, 96, 0x4e544d, 0x5475656e204d756e204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1427, 96, 0x4e594c, 0x5975656e204c6f6e67204e6577205465727269746f72696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1428, 97, 0x424b, 0x426163732d4b69736b756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1429, 97, 0x4241, 0x426172616e7961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1430, 97, 0x4245, 0x42656b6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1431, 97, 0x4253, 0x42656b65736373616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1432, 97, 0x425a, 0x426f72736f642d416261756a2d5a656d706c656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1433, 97, 0x4255, 0x4275646170657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1434, 97, 0x4353, 0x43736f6e67726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1435, 97, 0x4445, 0x446562726563656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1436, 97, 0x4455, 0x44756e61756a7661726f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1437, 97, 0x4547, 0x45676572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1438, 97, 0x4645, 0x46656a6572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1439, 97, 0x4759, 0x47796f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1440, 97, 0x474d, 0x47796f722d4d6f736f6e2d536f70726f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1441, 97, 0x4842, 0x48616a64752d4269686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1442, 97, 0x4845, 0x4865766573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1443, 97, 0x484f, 0x486f646d657a6f766173617268656c79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1444, 97, 0x4a4e, 0x4a61737a2d4e6167796b756e2d537a6f6c6e6f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1445, 97, 0x4b41, 0x4b61706f73766172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1446, 97, 0x4b45, 0x4b6563736b656d6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1447, 97, 0x4b4f, 0x4b6f6d61726f6d2d45737a746572676f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1448, 97, 0x4d49, 0x4d69736b6f6c63, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1449, 97, 0x4e41, 0x4e6167796b616e697a7361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1450, 97, 0x4e4f, 0x4e6f67726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1451, 97, 0x4e59, 0x4e79697265677968617a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1452, 97, 0x5045, 0x50656373, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1453, 97, 0x5053, 0x50657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1454, 97, 0x534f, 0x536f6d6f6779, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1455, 97, 0x5350, 0x536f70726f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1456, 97, 0x5353, 0x537a61626f6c63732d537a61746d61722d4265726567, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1457, 97, 0x535a, 0x537a65676564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1458, 97, 0x5345, 0x537a656b65736665686572766172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1459, 97, 0x534c, 0x537a6f6c6e6f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1460, 97, 0x534d, 0x537a6f6d62617468656c79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1461, 97, 0x5441, 0x5461746162616e7961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1462, 97, 0x544f, 0x546f6c6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1463, 97, 0x5641, 0x566173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1464, 97, 0x5645, 0x5665737a7072656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1465, 97, 0x5a41, 0x5a616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1466, 97, 0x5a5a, 0x5a616c6165676572737a6567, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1467, 98, 0x414c, 0x4175737475726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1468, 98, 0x4846, 0x486f66756f626f72676172737661656f69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1469, 98, 0x4e45, 0x4e6f726f75726c616e6420657973747261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1470, 98, 0x4e56, 0x4e6f726f75726c616e6420766573747261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1471, 98, 0x534c, 0x53756f75726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1472, 98, 0x534e, 0x53756f75726e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1473, 98, 0x5646, 0x566573746669726f6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1474, 98, 0x564c, 0x5665737475726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1475, 99, 0x414e, 0x416e64616d616e20616e64204e69636f6261722049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1476, 99, 0x4150, 0x416e646872612050726164657368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1477, 99, 0x4152, 0x4172756e616368616c2050726164657368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1478, 99, 0x4153, 0x417373616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1479, 99, 0x4249, 0x4269686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1480, 99, 0x4348, 0x4368616e646967617268, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1481, 99, 0x4441, 0x446164726120616e64204e6167617220486176656c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1482, 99, 0x444d, 0x44616d616e20616e6420446975, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1483, 99, 0x4445, 0x44656c6869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1484, 99, 0x474f, 0x476f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1485, 99, 0x4755, 0x47756a61726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1486, 99, 0x4841, 0x48617279616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1487, 99, 0x4850, 0x48696d616368616c2050726164657368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1488, 99, 0x4a41, 0x4a616d6d7520616e64204b6173686d6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1489, 99, 0x4b41, 0x4b61726e6174616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1490, 99, 0x4b45, 0x4b6572616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1491, 99, 0x4c49, 0x4c616b73686164776565702049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1492, 99, 0x4d50, 0x4d61646879612050726164657368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1493, 99, 0x4d41, 0x4d61686172617368747261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1494, 99, 0x4d4e, 0x4d616e69707572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1495, 99, 0x4d45, 0x4d656768616c617961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1496, 99, 0x4d49, 0x4d697a6f72616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1497, 99, 0x4e41, 0x4e6167616c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1498, 99, 0x4f52, 0x4f7269737361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1499, 99, 0x504f, 0x506f6e6469636865727279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1500, 99, 0x5055, 0x50756e6a6162, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1501, 99, 0x5241, 0x52616a61737468616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1502, 99, 0x5349, 0x53696b6b696d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1503, 99, 0x544e, 0x54616d696c204e616475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1504, 99, 0x5452, 0x54726970757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1505, 99, 0x5550, 0x55747461722050726164657368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1506, 99, 0x5742, 0x576573742042656e67616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1507, 100, 0x4143, 0x41636568, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1508, 100, 0x4241, 0x42616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1509, 100, 0x4254, 0x42616e74656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1510, 100, 0x4245, 0x42656e676b756c75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1511, 100, 0x4244, 0x426f4465546142656b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1512, 100, 0x474f, 0x476f726f6e74616c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1513, 100, 0x4a4b, 0x4a616b617274612052617961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1514, 100, 0x4a41, 0x4a616d6269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1515, 100, 0x4a42, 0x4a617761204261726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1516, 100, 0x4a54, 0x4a6177612054656e676168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1517, 100, 0x4a49, 0x4a6177612054696d7572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1518, 100, 0x4b42, 0x4b616c696d616e74616e204261726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1519, 100, 0x4b53, 0x4b616c696d616e74616e2053656c6174616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1520, 100, 0x4b54, 0x4b616c696d616e74616e2054656e676168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1521, 100, 0x4b49, 0x4b616c696d616e74616e2054696d7572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1522, 100, 0x4242, 0x4b6570756c6175616e2042616e676b612042656c6974756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1523, 100, 0x4c41, 0x4c616d70756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1524, 100, 0x4d41, 0x4d616c756b75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1525, 100, 0x4d55, 0x4d616c756b75205574617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1526, 100, 0x4e42, 0x4e7573612054656e6767617261204261726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1527, 100, 0x4e54, 0x4e7573612054656e67676172612054696d7572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1528, 100, 0x5041, 0x5061707561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1529, 100, 0x5249, 0x52696175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1530, 100, 0x534e, 0x53756c61776573692053656c6174616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1531, 100, 0x5354, 0x53756c61776573692054656e676168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1532, 100, 0x5347, 0x53756c61776573692054656e6767617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1533, 100, 0x5341, 0x53756c6177657369205574617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1534, 100, 0x5342, 0x53756d6174657261204261726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1535, 100, 0x5353, 0x53756d61746572612053656c6174616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1536, 100, 0x5355, 0x53756d6174657261205574617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1537, 100, 0x594f, 0x596f6779616b61727461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1538, 101, 0x544548, 0x54656872616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1539, 101, 0x514f4d, 0x516f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1540, 101, 0x4d4b5a, 0x4d61726b617a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1541, 101, 0x51415a, 0x51617a76696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1542, 101, 0x47494c, 0x47696c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1543, 101, 0x415244, 0x4172646162696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1544, 101, 0x5a414e, 0x5a616e6a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1545, 101, 0x45415a, 0x4561737420417a61726261696a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1546, 101, 0x57455a, 0x5765737420417a61726261696a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1547, 101, 0x4b5244, 0x4b757264697374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1548, 101, 0x484d44, 0x48616d6164616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1549, 101, 0x4b524d, 0x4b65726d616e73686168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1550, 101, 0x494c4d, 0x496c616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1551, 101, 0x4c5253, 0x4c6f72657374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1552, 101, 0x4b5a54, 0x4b68757a657374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1553, 101, 0x434d42, 0x436861686172204d616861616c20616e642042616b687469617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1554, 101, 0x4b4241, 0x4b6f686b696c7579656820616e642042757965722041686d6164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1555, 101, 0x425348, 0x42757368656872, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1556, 101, 0x464152, 0x46617273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1557, 101, 0x48524d, 0x486f726d6f7a67616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1558, 101, 0x53424c, 0x53697374616e20616e642042616c756368697374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1559, 101, 0x4b5242, 0x4b65726d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1560, 101, 0x595a44, 0x59617a64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1561, 101, 0x454648, 0x4573666168616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1562, 101, 0x534d4e, 0x53656d6e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1563, 101, 0x4d5a44, 0x4d617a616e646172616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1564, 101, 0x474c53, 0x476f6c657374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1565, 101, 0x4e4b48, 0x4e6f727468204b686f726173616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1566, 101, 0x524b48, 0x52617a617669204b686f726173616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1567, 101, 0x534b48, 0x536f757468204b686f726173616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1568, 102, 0x4244, 0x42616768646164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1569, 102, 0x5344, 0x53616c61682061642044696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1570, 102, 0x4459, 0x446979616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1571, 102, 0x5753, 0x5761736974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1572, 102, 0x4d59, 0x4d617973616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1573, 102, 0x4241, 0x416c20426173726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1574, 102, 0x4451, 0x44686920516172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1575, 102, 0x4d55, 0x416c204d757468616e6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1576, 102, 0x5141, 0x416c205161646973796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1577, 102, 0x4242, 0x426162696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1578, 102, 0x4b42, 0x416c204b617262616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1579, 102, 0x4e4a, 0x416e204e616a6166, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1580, 102, 0x4142, 0x416c20416e626172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1581, 102, 0x4e4e, 0x4e696e617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1582, 102, 0x4448, 0x446168756b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1583, 102, 0x414c, 0x417262696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1584, 102, 0x544d, 0x4174205461276d696d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1585, 102, 0x534c, 0x41732053756c61796d616e69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1586, 103, 0x4341, 0x4361726c6f77, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1587, 103, 0x4356, 0x436176616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1588, 103, 0x434c, 0x436c617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1589, 103, 0x434f, 0x436f726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1590, 103, 0x444f, 0x446f6e6567616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1591, 103, 0x4455, 0x4475626c696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1592, 103, 0x4741, 0x47616c776179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1593, 103, 0x4b45, 0x4b65727279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1594, 103, 0x4b49, 0x4b696c64617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1595, 103, 0x4b4c, 0x4b696c6b656e6e79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1596, 103, 0x4c41, 0x4c616f6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1597, 103, 0x4c45, 0x4c65697472696d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1598, 103, 0x4c49, 0x4c696d657269636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1599, 103, 0x4c4f, 0x4c6f6e67666f7264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1600, 103, 0x4c55, 0x4c6f757468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1601, 103, 0x4d41, 0x4d61796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1602, 103, 0x4d45, 0x4d65617468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1603, 103, 0x4d4f, 0x4d6f6e616768616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1604, 103, 0x4f46, 0x4f6666616c79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1605, 103, 0x524f, 0x526f73636f6d6d6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1606, 103, 0x534c, 0x536c69676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1607, 103, 0x5449, 0x546970706572617279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1608, 103, 0x5741, 0x5761746572666f7264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1609, 103, 0x5745, 0x576573746d65617468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1610, 103, 0x5758, 0x576578666f7264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1611, 103, 0x5749, 0x5769636b6c6f77, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1612, 104, 0x4253, 0x4265276572205368657661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1613, 104, 0x4248, 0x42696b6127617420486179617264656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1614, 104, 0x4541, 0x45696c617420616e64204172617661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1615, 104, 0x4741, 0x47616c696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1616, 104, 0x4841, 0x4861696661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1617, 104, 0x4a4d, 0x4a6568756461204d6f756e7461696e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1618, 104, 0x4a45, 0x4a65727573616c656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1619, 104, 0x4e45, 0x4e65676576, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1620, 104, 0x5345, 0x53656d61726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1621, 104, 0x5348, 0x536861726f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1622, 104, 0x5441, 0x54656c20417669762028476f73682044616e29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3860, 105, 0x434c, 0x43616c74616e69737365747461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3842, 105, 0x4147, 0x4167726967656e746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3843, 105, 0x414c, 0x416c657373616e64726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3844, 105, 0x414e, 0x416e636f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3845, 105, 0x414f, 0x416f737461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3846, 105, 0x4152, 0x4172657a7a6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3847, 105, 0x4150, 0x4173636f6c6920506963656e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3848, 105, 0x4154, 0x41737469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3849, 105, 0x4156, 0x4176656c6c696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3850, 105, 0x4241, 0x42617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3851, 105, 0x424c, 0x42656c6c756e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3852, 105, 0x424e, 0x42656e6576656e746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3853, 105, 0x4247, 0x42657267616d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3854, 105, 0x4249, 0x4269656c6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3855, 105, 0x424f, 0x426f6c6f676e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3856, 105, 0x425a, 0x426f6c7a616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3857, 105, 0x4253, 0x42726573636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3858, 105, 0x4252, 0x4272696e64697369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3859, 105, 0x4341, 0x4361676c69617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1643, 106, 0x434c41, 0x436c6172656e646f6e20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1644, 106, 0x48414e, 0x48616e6f76657220506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1645, 106, 0x4b494e, 0x4b696e6773746f6e20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1646, 106, 0x4d414e, 0x4d616e6368657374657220506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1647, 106, 0x504f52, 0x506f72746c616e6420506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1648, 106, 0x414e44, 0x5361696e7420416e6472657720506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1649, 106, 0x414e4e, 0x5361696e7420416e6e20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1650, 106, 0x434154, 0x5361696e7420436174686572696e6520506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1651, 106, 0x454c49, 0x5361696e7420456c697a616265746820506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1652, 106, 0x4a414d, 0x5361696e74204a616d657320506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1653, 106, 0x4d4152, 0x5361696e74204d61727920506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1654, 106, 0x54484f, 0x5361696e742054686f6d617320506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1655, 106, 0x54524c, 0x5472656c61776e7920506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1656, 106, 0x574d4c, 0x576573746d6f72656c616e6420506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1657, 107, 0x4149, 0x4169636869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1658, 107, 0x414b, 0x416b697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1659, 107, 0x414f, 0x416f6d6f7269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1660, 107, 0x4348, 0x4368696261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1661, 107, 0x4548, 0x4568696d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1662, 107, 0x464b, 0x46756b7569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1663, 107, 0x4655, 0x46756b756f6b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1664, 107, 0x4653, 0x46756b757368696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1665, 107, 0x4749, 0x47696675, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1666, 107, 0x4755, 0x47756d6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1667, 107, 0x4849, 0x4869726f7368696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1668, 107, 0x484f, 0x486f6b6b6169646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1669, 107, 0x4859, 0x48796f676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1670, 107, 0x4942, 0x49626172616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1671, 107, 0x4953, 0x497368696b617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1672, 107, 0x4957, 0x4977617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1673, 107, 0x4b41, 0x4b6167617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1674, 107, 0x4b47, 0x4b61676f7368696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1675, 107, 0x4b4e, 0x4b616e6167617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1676, 107, 0x4b4f, 0x4b6f636869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1677, 107, 0x4b55, 0x4b756d616d6f746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1678, 107, 0x4b59, 0x4b796f746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1679, 107, 0x4d49, 0x4d6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1680, 107, 0x4d59, 0x4d6979616769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1681, 107, 0x4d5a, 0x4d6979617a616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1682, 107, 0x4e41, 0x4e6167616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1683, 107, 0x4e47, 0x4e61676173616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1684, 107, 0x4e52, 0x4e617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1685, 107, 0x4e49, 0x4e696967617461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1686, 107, 0x4f49, 0x4f697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1687, 107, 0x4f4b, 0x4f6b6179616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1688, 107, 0x4f4e, 0x4f6b696e617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1689, 107, 0x4f53, 0x4f73616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1690, 107, 0x5341, 0x53616761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1691, 107, 0x5349, 0x53616974616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1692, 107, 0x5348, 0x5368696761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1693, 107, 0x534d, 0x5368696d616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1694, 107, 0x535a, 0x5368697a756f6b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1695, 107, 0x544f, 0x546f6368696769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1696, 107, 0x5453, 0x546f6b757368696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1697, 107, 0x544b, 0x546f6b796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1698, 107, 0x5454, 0x546f74746f7269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1699, 107, 0x5459, 0x546f79616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1700, 107, 0x5741, 0x57616b6179616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1701, 107, 0x5941, 0x59616d6167617461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1702, 107, 0x594d, 0x59616d616775636869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1703, 107, 0x594e, 0x59616d616e61736869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1704, 108, 0x414d, 0x27416d6d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1705, 108, 0x414a, 0x416a6c756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1706, 108, 0x4141, 0x416c2027417161626168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1707, 108, 0x4142, 0x416c2042616c716127, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1708, 108, 0x414b, 0x416c204b6172616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1709, 108, 0x414c, 0x416c204d6166726171, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1710, 108, 0x4154, 0x417420546166696c6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1711, 108, 0x415a, 0x417a205a6172716127, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1712, 108, 0x4952, 0x4972626964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1713, 108, 0x4a41, 0x4a6172617368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1714, 108, 0x4d41, 0x4d6127616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1715, 108, 0x4d44, 0x4d6164616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1716, 109, 0x414c, 0x416c6d617479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1717, 109, 0x4143, 0x416c6d6174792043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1718, 109, 0x414d, 0x41716d6f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1719, 109, 0x4151, 0x4171746f6265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1720, 109, 0x4153, 0x417374616e612043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1721, 109, 0x4154, 0x417479726175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1722, 109, 0x4241, 0x42617479732051617a61717374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1723, 109, 0x4259, 0x426179716f6e6779722043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1724, 109, 0x4d41, 0x4d616e6767687973746175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1725, 109, 0x4f4e, 0x4f6e6774757374696b2051617a61717374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1726, 109, 0x5041, 0x5061766c6f646172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1727, 109, 0x5141, 0x516172616768616e6479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1728, 109, 0x514f, 0x516f7374616e6179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1729, 109, 0x5159, 0x51797a796c6f726461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1730, 109, 0x5348, 0x536879676879732051617a61717374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1731, 109, 0x534f, 0x536f6c74757374696b2051617a61717374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1732, 109, 0x5a48, 0x5a68616d62796c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1733, 110, 0x4345, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1734, 110, 0x434f, 0x436f617374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1735, 110, 0x4541, 0x4561737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1736, 110, 0x4e41, 0x4e6169726f62692041726561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1737, 110, 0x4e45, 0x4e6f727468204561737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1738, 110, 0x4e59, 0x4e79616e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1739, 110, 0x5256, 0x526966742056616c6c6579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1740, 110, 0x5745, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1741, 111, 0x4147, 0x41626169616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1742, 111, 0x414d, 0x4162656d616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1743, 111, 0x414b, 0x4172616e756b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1744, 111, 0x414f, 0x41726f726165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1745, 111, 0x4241, 0x42616e616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1746, 111, 0x4245, 0x42657275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1747, 111, 0x6254, 0x42757461726974617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1748, 111, 0x4b41, 0x4b616e746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1749, 111, 0x4b52, 0x4b69726974696d617469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1750, 111, 0x4b55, 0x4b75726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1751, 111, 0x4d49, 0x4d6169616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1752, 111, 0x4d4e, 0x4d616b696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1753, 111, 0x4d45, 0x4d6172616b6569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1754, 111, 0x4e49, 0x4e696b756e6175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1755, 111, 0x4e4f, 0x4e6f6e6f757469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1756, 111, 0x4f4e, 0x4f6e6f746f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1757, 111, 0x5454, 0x546162697465756561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1758, 111, 0x5452, 0x54616275616572616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1759, 111, 0x544d, 0x54616d616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1760, 111, 0x5457, 0x546172617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1761, 111, 0x5445, 0x54657261696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1762, 112, 0x434841, 0x43686167616e672d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1763, 112, 0x484142, 0x48616d67796f6e672d62756b746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1764, 112, 0x48414e, 0x48616d67796f6e672d6e616d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1765, 112, 0x485742, 0x4877616e676861652d62756b746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1766, 112, 0x48574e, 0x4877616e676861652d6e616d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1767, 112, 0x4b414e, 0x4b616e67776f6e2d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1768, 112, 0x505942, 0x5027796f6e67616e2d62756b746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1769, 112, 0x50594e, 0x5027796f6e67616e2d6e616d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1770, 112, 0x59414e, 0x5279616e6767616e672d646f202859616e6767616e672d646f29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1771, 112, 0x4e414a, 0x5261736f6e204469726563746c7920476f7665726e65642043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1772, 112, 0x50594f, 0x5027796f6e6779616e67205370656369616c2043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1773, 113, 0x434f, 0x436827756e676368276f6e672d62756b746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1774, 113, 0x4348, 0x436827756e676368276f6e672d6e616d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1775, 113, 0x4344, 0x4368656a752d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1776, 113, 0x4342, 0x43686f6c6c612d62756b746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1777, 113, 0x434e, 0x43686f6c6c612d6e616d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1778, 113, 0x4947, 0x496e6368276f6e2d6777616e67796f6b7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1779, 113, 0x4b41, 0x4b616e67776f6e2d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1780, 113, 0x4b47, 0x4b77616e676a752d6777616e67796f6b7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1781, 113, 0x4b44, 0x4b796f6e6767692d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1782, 113, 0x4b42, 0x4b796f6e6773616e672d62756b746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1783, 113, 0x4b4e, 0x4b796f6e6773616e672d6e616d646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1784, 113, 0x5047, 0x507573616e2d6777616e67796f6b7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1785, 113, 0x534f, 0x536f756c2d7427756b70796f6c7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1786, 113, 0x5441, 0x54616567752d6777616e67796f6b7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1787, 113, 0x5447, 0x5461656a6f6e2d6777616e67796f6b7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1788, 114, 0x414c, 0x416c20274173696d6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1789, 114, 0x4141, 0x416c2041686d616469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1790, 114, 0x4146, 0x416c2046617277616e69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1791, 114, 0x414a, 0x416c204a6168726127, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1792, 114, 0x4841, 0x486177616c6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1793, 115, 0x4742, 0x426973686b656b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1794, 115, 0x42, 0x4261746b656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1795, 115, 0x43, 0x436875, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1796, 115, 0x4a, 0x4a616c616c2d41626164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1797, 115, 0x4e, 0x4e6172796e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1798, 115, 0x4f, 0x4f7368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1799, 115, 0x54, 0x54616c6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1800, 115, 0x59, 0x5973796b2d4b6f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1801, 116, 0x5654, 0x5669656e7469616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1802, 116, 0x4154, 0x417474617075, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1803, 116, 0x424b, 0x426f6b656f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1804, 116, 0x424c, 0x426f6c696b68616d786169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1805, 116, 0x4348, 0x4368616d706173616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1806, 116, 0x484f, 0x486f75617068616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1807, 116, 0x4b48, 0x4b68616d6d6f75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1808, 116, 0x4c4d, 0x4c6f75616e67204e616d746861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1809, 116, 0x4c50, 0x4c6f75616e6770686162616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1810, 116, 0x4f55, 0x4f75646f6d786169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1811, 116, 0x5048, 0x50686f6e6773616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1812, 116, 0x534c, 0x53616c6176616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1813, 116, 0x5356, 0x536176616e6e616b686574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1814, 116, 0x5649, 0x5669656e7469616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1815, 116, 0x5841, 0x586169676e61626f756c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1816, 116, 0x5845, 0x58656b6f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1817, 116, 0x5849, 0x5869616e676b686f616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1818, 116, 0x584e, 0x586169736f6d626f756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1819, 117, 0x41495a, 0x41697a6b7261756b6c65732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1820, 117, 0x414c55, 0x416c756b736e65732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1821, 117, 0x42414c, 0x42616c76752052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1822, 117, 0x424155, 0x426175736b61732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1823, 117, 0x434553, 0x436573752052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1824, 117, 0x444752, 0x44617567617670696c732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1825, 117, 0x444f42, 0x446f62656c65732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1826, 117, 0x47554c, 0x47756c62656e65732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1827, 117, 0x4a454b, 0x4a656b616270696c732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1828, 117, 0x4a4752, 0x4a656c67617661732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1829, 117, 0x4b5241, 0x4b7261736c617661732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1830, 117, 0x4b554c, 0x4b756c64696761732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1831, 117, 0x4c5052, 0x4c696570616a61732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1832, 117, 0x4c494d, 0x4c696d62617a752052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1833, 117, 0x4c5544, 0x4c75647a61732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1834, 117, 0x4d4144, 0x4d61646f6e61732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1835, 117, 0x4f4752, 0x4f677265732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1836, 117, 0x505245, 0x507265696c752052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1837, 117, 0x525a52, 0x52657a656b6e65732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1838, 117, 0x524752, 0x52696761732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1839, 117, 0x53414c, 0x53616c6475732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1840, 117, 0x54414c, 0x54616c73752052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1841, 117, 0x54554b, 0x54756b756d612052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1842, 117, 0x564c4b, 0x56616c6b61732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1843, 117, 0x564c4d, 0x56616c6d69657261732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1844, 117, 0x565352, 0x56656e747370696c732052616a6f6e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1845, 117, 0x444756, 0x44617567617670696c73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1846, 117, 0x4a4756, 0x4a656c67617661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1847, 117, 0x4a5552, 0x4a75726d616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1848, 117, 0x4c504b, 0x4c696570616a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1849, 117, 0x525a4b, 0x52657a656b6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1850, 117, 0x524741, 0x52696761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1851, 117, 0x56534c, 0x56656e747370696c73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1852, 119, 0x4245, 0x4265726561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1853, 119, 0x4242, 0x42757468612d4275746865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1854, 119, 0x4c45, 0x4c6572696265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1855, 119, 0x4d46, 0x4d61666574656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1856, 119, 0x4d53, 0x4d6173657275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1857, 119, 0x4d48, 0x4d6f68616c65277320486f656b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1858, 119, 0x4d4b, 0x4d6f6b686f746c6f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1859, 119, 0x514e, 0x51616368612773204e656b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1860, 119, 0x5154, 0x51757468696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1861, 119, 0x5454, 0x54686162612d5473656b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1862, 120, 0x4249, 0x426f6d69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1863, 120, 0x4247, 0x426f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1864, 120, 0x4742, 0x4772616e64204261737361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1865, 120, 0x434d, 0x4772616e642043617065204d6f756e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1866, 120, 0x4747, 0x4772616e64204765646568, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1867, 120, 0x474b, 0x4772616e64204b7275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1868, 120, 0x4c4f, 0x4c6f6661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1869, 120, 0x4d47, 0x4d617267696269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1870, 120, 0x4d4c, 0x4d6172796c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1871, 120, 0x4d53, 0x4d6f6e747365727261646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1872, 120, 0x4e42, 0x4e696d6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1873, 120, 0x5243, 0x52697665722043657373, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1874, 120, 0x534e, 0x53696e6f65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1875, 121, 0x414a, 0x416a646162697961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1876, 121, 0x415a, 0x416c2027417a697a69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1877, 121, 0x4641, 0x416c204661746968, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1878, 121, 0x4a41, 0x416c204a6162616c20616c20416b68646172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1879, 121, 0x4a55, 0x416c204a7566726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1880, 121, 0x4b48, 0x416c204b68756d73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1881, 121, 0x4b55, 0x416c204b7566726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1882, 121, 0x4e4b, 0x416e204e7571617420616c204b68616d73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1883, 121, 0x4153, 0x41736820536861746927, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1884, 121, 0x4157, 0x417762617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1885, 121, 0x5a41, 0x417a205a617769796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1886, 121, 0x4241, 0x42616e6768617a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1887, 121, 0x4441, 0x4461726e6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1888, 121, 0x4744, 0x47686164616d6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1889, 121, 0x4759, 0x4768617279616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1890, 121, 0x4d49, 0x4d69737261746168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1891, 121, 0x4d5a, 0x4d75727a7571, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1892, 121, 0x5342, 0x5361626861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1893, 121, 0x5357, 0x53617766616a6a696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1894, 121, 0x5355, 0x53757274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1895, 121, 0x544c, 0x5461726162756c75732028547269706f6c6929, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1896, 121, 0x5448, 0x54617268756e6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1897, 121, 0x5455, 0x547562727571, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1898, 121, 0x5941, 0x59616672616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1899, 121, 0x5a4c, 0x5a6c6974616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1900, 122, 0x56, 0x566164757a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1901, 122, 0x41, 0x53636861616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1902, 122, 0x42, 0x42616c7a657273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1903, 122, 0x4e, 0x5472696573656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1904, 122, 0x45, 0x45736368656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1905, 122, 0x4d, 0x4d617572656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1906, 122, 0x54, 0x5472696573656e62657267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1907, 122, 0x52, 0x52756767656c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1908, 122, 0x47, 0x47616d7072696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1909, 122, 0x4c, 0x536368656c6c656e62657267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1910, 122, 0x50, 0x506c616e6b656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1911, 123, 0x414c, 0x416c79747573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1912, 123, 0x4b41, 0x4b61756e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1913, 123, 0x4b4c, 0x4b6c616970656461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1914, 123, 0x4d41, 0x4d6172696a616d706f6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1915, 123, 0x5041, 0x50616e6576657a7973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1916, 123, 0x5349, 0x536961756c696169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1917, 123, 0x5441, 0x54617572616765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1918, 123, 0x5445, 0x54656c73696169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1919, 123, 0x5554, 0x5574656e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1920, 123, 0x5649, 0x56696c6e697573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1921, 124, 0x4444, 0x4469656b69726368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1922, 124, 0x4443, 0x436c657276617578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1923, 124, 0x4452, 0x526564616e6765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1924, 124, 0x4456, 0x5669616e64656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1925, 124, 0x4457, 0x57696c747a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1926, 124, 0x4747, 0x47726576656e6d6163686572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1927, 124, 0x4745, 0x4563687465726e616368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1928, 124, 0x4752, 0x52656d696368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1929, 124, 0x4c4c, 0x4c7578656d626f757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1930, 124, 0x4c43, 0x436170656c6c656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1931, 124, 0x4c45, 0x457363682d7375722d416c7a65747465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1932, 124, 0x4c4d, 0x4d6572736368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1933, 125, 0x4f4c46, 0x4f7572204c61647920466174696d6120506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1934, 125, 0x414e54, 0x53742e20416e74686f6e7920506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1935, 125, 0x4c415a, 0x53742e204c617a6172757320506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1936, 125, 0x434154, 0x43617468656472616c20506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1937, 125, 0x4c4157, 0x53742e204c617772656e636520506172697368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1938, 127, 0x414e, 0x416e74616e616e617269766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1939, 127, 0x4153, 0x416e74736972616e616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1940, 127, 0x464e, 0x4669616e6172616e74736f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1941, 127, 0x4d4a, 0x4d6168616a616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1942, 127, 0x544d, 0x546f616d6173696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1943, 127, 0x544c, 0x546f6c69617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1944, 128, 0x424c4b, 0x42616c616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1945, 128, 0x424c54, 0x426c616e74797265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1946, 128, 0x434b57, 0x4368696b77617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1947, 128, 0x435244, 0x4368697261647a756c75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1948, 128, 0x435450, 0x43686974697061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1949, 128, 0x44445a, 0x4465647a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1950, 128, 0x445741, 0x446f7761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1951, 128, 0x4b5247, 0x4b61726f6e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1952, 128, 0x4b5347, 0x4b6173756e6775, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1953, 128, 0x4c4b4d, 0x4c696b6f6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1954, 128, 0x4c4c47, 0x4c696c6f6e677765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1955, 128, 0x4d4347, 0x4d616368696e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1956, 128, 0x4d4743, 0x4d616e676f636869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1957, 128, 0x4d4348, 0x4d6368696e6a69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1958, 128, 0x4d4c4a, 0x4d756c616e6a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1959, 128, 0x4d575a, 0x4d77616e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1960, 128, 0x4d5a4d, 0x4d7a696d6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1961, 128, 0x4e5455, 0x4e7463686575, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1962, 128, 0x4e4b42, 0x4e6b6861746120426179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1963, 128, 0x4e4b48, 0x4e6b686f74616b6f7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1964, 128, 0x4e534a, 0x4e73616e6a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1965, 128, 0x4e5449, 0x4e746368697369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1966, 128, 0x50484c, 0x5068616c6f6d6265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1967, 128, 0x524d50, 0x52756d706869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1968, 128, 0x534c4d, 0x53616c696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1969, 128, 0x544859, 0x5468796f6c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1970, 128, 0x5a4241, 0x5a6f6d6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1971, 129, 0x4a4f, 0x4a6f686f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1972, 129, 0x4b45, 0x4b65646168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1973, 129, 0x4b4c, 0x4b656c616e74616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1974, 129, 0x4c41, 0x4c616275616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1975, 129, 0x4d45, 0x4d656c616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1976, 129, 0x4e53, 0x4e65676572692053656d62696c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1977, 129, 0x5041, 0x506168616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1978, 129, 0x5045, 0x506572616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1979, 129, 0x5052, 0x5065726c6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1980, 129, 0x5050, 0x50756c61752050696e616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1981, 129, 0x5341, 0x5361626168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1982, 129, 0x5352, 0x5361726177616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1983, 129, 0x5345, 0x53656c616e676f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1984, 129, 0x5445, 0x546572656e6767616e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1985, 129, 0x5750, 0x57696c617961682050657273656b757475616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1986, 130, 0x544855, 0x5468696c616468756e6d6174686920557468757275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1987, 130, 0x544844, 0x5468696c616468756e6d61746869204468656b756e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1988, 130, 0x4d4c55, 0x4d696c616468756e6d6164756c7520557468757275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1989, 130, 0x4d4c44, 0x4d696c616468756e6d6164756c75204468656b756e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1990, 130, 0x4d4155, 0x4d61616c686f736d6164756c7520557468757275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1991, 130, 0x4d4144, 0x4d61616c686f736d6164756c75204468656b756e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1992, 130, 0x464141, 0x46616164686970706f6c6875, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1993, 130, 0x4d4141, 0x4d616c652041746f6c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1994, 130, 0x414155, 0x4172692041746f6c6c20557468757275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1995, 130, 0x414144, 0x4172692041746f6c6c204468656b6e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1996, 130, 0x464541, 0x46656c696468652041746f6c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1997, 130, 0x4d5541, 0x4d756c616b752041746f6c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1998, 130, 0x4e4155, 0x4e696c616e6468652041746f6c6c20557468757275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (1999, 130, 0x4e4144, 0x4e696c616e6468652041746f6c6c204468656b756e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2000, 130, 0x4b4c48, 0x4b6f6c68756d6164756c75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2001, 130, 0x484448, 0x486164686468756e6d61746869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2002, 130, 0x484155, 0x487576616468752041746f6c6c20557468757275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2003, 130, 0x484144, 0x487576616468752041746f6c6c204468656b756e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2004, 130, 0x464d55, 0x467561204d756c616b75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2005, 130, 0x414444, 0x41646475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2006, 131, 0x4741, 0x47616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2007, 131, 0x4b59, 0x4b61796573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2008, 131, 0x4b44, 0x4b6964616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2009, 131, 0x4b4c, 0x4b6f756c696b6f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2010, 131, 0x4d50, 0x4d6f707469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2011, 131, 0x5347, 0x5365676f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2012, 131, 0x534b, 0x53696b6173736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2013, 131, 0x5442, 0x546f6d626f7563746f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2014, 131, 0x4344, 0x42616d616b6f204361706974616c204469737472696374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2015, 132, 0x415454, 0x417474617264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2016, 132, 0x42414c, 0x42616c7a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2017, 132, 0x424755, 0x4269726775, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2018, 132, 0x424b4b, 0x4269726b69726b617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2019, 132, 0x42525a, 0x4269727a656262756761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2020, 132, 0x424f52, 0x426f726d6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2021, 132, 0x44494e, 0x44696e676c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2022, 132, 0x464755, 0x4667757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2023, 132, 0x464c4f, 0x466c6f7269616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2024, 132, 0x47444a, 0x4775646a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2025, 132, 0x475a52, 0x477a697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2026, 132, 0x475247, 0x476172677572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2027, 132, 0x475851, 0x4761786171, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2028, 132, 0x484d52, 0x48616d72756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2029, 132, 0x494b4c, 0x496b6c696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2030, 132, 0x49534c, 0x49736c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2031, 132, 0x4b4c4b, 0x4b616c6b617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2032, 132, 0x4b524b, 0x4b69726b6f70, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2033, 132, 0x4c494a, 0x4c696a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2034, 132, 0x4c5551, 0x4c757161, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2035, 132, 0x4d5253, 0x4d61727361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2036, 132, 0x4d4b4c, 0x4d61727361736b616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2037, 132, 0x4d584c, 0x4d61727361786c6f6b6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2038, 132, 0x4d444e, 0x4d64696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2039, 132, 0x4d454c, 0x4d656c6c696561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2040, 132, 0x4d4752, 0x4d67617272, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2041, 132, 0x4d5354, 0x4d6f737461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2042, 132, 0x4d5141, 0x4d7161626261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2043, 132, 0x4d5349, 0x4d73696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2044, 132, 0x4d5446, 0x4d7461726661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2045, 132, 0x4e4158, 0x4e6178786172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2046, 132, 0x50414f, 0x50616f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2047, 132, 0x50454d, 0x50656d62726f6b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2048, 132, 0x504945, 0x5069657461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2049, 132, 0x514f52, 0x516f726d69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2050, 132, 0x515245, 0x5172656e6469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2051, 132, 0x524142, 0x5261626174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2052, 132, 0x534146, 0x53616669, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2053, 132, 0x534749, 0x53616e2047696c6a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2054, 132, 0x534c55, 0x53616e7461204c7563696a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2055, 132, 0x535042, 0x53616e205061776c20696c2d4261686172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2056, 132, 0x534757, 0x53616e204777616e6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2057, 132, 0x535645, 0x53616e74612056656e657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2058, 132, 0x534947, 0x5369676769657769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2059, 132, 0x534c4d, 0x536c69656d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2060, 132, 0x535751, 0x537769657169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2061, 132, 0x545842, 0x5461205862696578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2062, 132, 0x545258, 0x5461727869656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2063, 132, 0x564c54, 0x56616c6c65747461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2064, 132, 0x58474a, 0x5867616a7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2065, 132, 0x5a4252, 0x5a6162626172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2066, 132, 0x5a4247, 0x5a6562627567, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2067, 132, 0x5a4a54, 0x5a656a74756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2068, 132, 0x5a5251, 0x5a757272696571, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2069, 132, 0x464e54, 0x466f6e74616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2070, 132, 0x47484a, 0x4768616a6e7369656c656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2071, 132, 0x474852, 0x4768617262, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2072, 132, 0x474853, 0x476861737269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2073, 132, 0x4b5243, 0x4b657263656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2074, 132, 0x4d554e, 0x4d756e786172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2075, 132, 0x4e4144, 0x4e61647572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2076, 132, 0x51414c, 0x51616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2077, 132, 0x564943, 0x566963746f726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2078, 132, 0x534c41, 0x53616e204c617772656e7a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2079, 132, 0x534e54, 0x53616e6e6174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2080, 132, 0x5a4147, 0x5861677261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2081, 132, 0x584557, 0x5865776b696a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2082, 132, 0x5a4542, 0x5a6562627567, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2083, 133, 0x414c47, 0x41696c696e67696e6165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2084, 133, 0x414c4c, 0x41696c696e676c61706c6170, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2085, 133, 0x414c4b, 0x41696c756b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2086, 133, 0x41524e, 0x41726e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2087, 133, 0x415552, 0x417572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2088, 133, 0x424b52, 0x42696b6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2089, 133, 0x424b4e, 0x42696b696e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2090, 133, 0x424b4b, 0x426f6b616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2091, 133, 0x45424e, 0x45626f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2092, 133, 0x454e54, 0x456e65776574616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2093, 133, 0x454b42, 0x4572696b7562, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2094, 133, 0x4a4254, 0x4a61626174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2095, 133, 0x4a4c54, 0x4a616c756974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2096, 133, 0x4a454d, 0x4a656d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2097, 133, 0x4b494c, 0x4b696c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2098, 133, 0x4b574a, 0x4b77616a616c65696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2099, 133, 0x4c4145, 0x4c6165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2100, 133, 0x4c4942, 0x4c6962, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2101, 133, 0x4c4b50, 0x4c696b696570, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2102, 133, 0x4d4a52, 0x4d616a75726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2103, 133, 0x4d4c50, 0x4d616c6f656c6170, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2104, 133, 0x4d4a54, 0x4d656a6974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2105, 133, 0x4d494c, 0x4d696c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2106, 133, 0x4e4d4b, 0x4e616d6f72696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2107, 133, 0x4e414d, 0x4e616d75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2108, 133, 0x52474c, 0x526f6e67656c6170, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2109, 133, 0x52474b, 0x526f6e6772696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2110, 133, 0x544f4b, 0x546f6b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2111, 133, 0x554a41, 0x556a6165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2112, 133, 0x554a4c, 0x556a656c616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2113, 133, 0x55544b, 0x55746972696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2114, 133, 0x575448, 0x576f74686f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2115, 133, 0x57544a, 0x576f746a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2116, 135, 0x4144, 0x4164726172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2117, 135, 0x4153, 0x417373616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2118, 135, 0x4252, 0x4272616b6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2119, 135, 0x444e, 0x44616b686c6574204e6f7561646869626f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2120, 135, 0x474f, 0x476f72676f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2121, 135, 0x474d, 0x47756964696d616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2122, 135, 0x4843, 0x486f6468204563682043686172677569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2123, 135, 0x4847, 0x486f646820456c20476861726269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2124, 135, 0x494e, 0x496e6368697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2125, 135, 0x5441, 0x546167616e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2126, 135, 0x545a, 0x5469726973205a656d6d6f7572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2127, 135, 0x5452, 0x547261727a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2128, 135, 0x4e4f, 0x4e6f75616b63686f7474, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2129, 136, 0x4252, 0x426561752042617373696e2d526f73652048696c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2130, 136, 0x4355, 0x4375726570697065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2131, 136, 0x5055, 0x506f7274204c6f756973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2132, 136, 0x5142, 0x51756174726520426f726e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2133, 136, 0x5650, 0x5661636f61732d50686f656e6978, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2134, 136, 0x4147, 0x4167616c6567612049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2135, 136, 0x4343, 0x4361726761646f7320436172616a6f732053686f616c7320285361696e74204272616e646f6e2049736c616e647329, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2136, 136, 0x524f, 0x526f64726967756573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2137, 136, 0x424c, 0x426c61636b205269766572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2138, 136, 0x464c, 0x466c616371, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2139, 136, 0x4750, 0x4772616e6420506f7274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2140, 136, 0x4d4f, 0x4d6f6b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2141, 136, 0x5041, 0x50616d706c656d6f7573736573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2142, 136, 0x5057, 0x506c61696e65732057696c68656d73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2143, 136, 0x504c, 0x506f7274204c6f756973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2144, 136, 0x5252, 0x526976696572652064752052656d70617274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2145, 136, 0x5341, 0x536176616e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2146, 138, 0x424e, 0x42616a612043616c69666f726e6961204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2147, 138, 0x4253, 0x42616a612043616c69666f726e696120537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2148, 138, 0x4341, 0x43616d7065636865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2149, 138, 0x4349, 0x43686961706173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2150, 138, 0x4348, 0x436869687561687561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2151, 138, 0x435a, 0x436f616875696c61206465205a617261676f7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2152, 138, 0x434c, 0x436f6c696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2153, 138, 0x4446, 0x446973747269746f204665646572616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2154, 138, 0x4455, 0x447572616e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2155, 138, 0x4741, 0x4775616e616a7561746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2156, 138, 0x4745, 0x477565727265726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2157, 138, 0x4849, 0x486964616c676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2158, 138, 0x4a41, 0x4a616c6973636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2159, 138, 0x4d45, 0x4d657869636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2160, 138, 0x4d49, 0x4d6963686f6163616e206465204f63616d706f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2161, 138, 0x4d4f, 0x4d6f72656c6f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2162, 138, 0x4e41, 0x4e617961726974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2163, 138, 0x4e4c, 0x4e7565766f204c656f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2164, 138, 0x4f41, 0x4f6178616361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2165, 138, 0x5055, 0x507565626c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2166, 138, 0x5141, 0x51756572657461726f2064652041727465616761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2167, 138, 0x5152, 0x5175696e74616e6120526f6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2168, 138, 0x5341, 0x53616e204c75697320506f746f7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2169, 138, 0x5349, 0x53696e616c6f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2170, 138, 0x534f, 0x536f6e6f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2171, 138, 0x5442, 0x5461626173636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2172, 138, 0x544d, 0x54616d61756c69706173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2173, 138, 0x544c, 0x546c617863616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2174, 138, 0x5645, 0x566572616372757a2d4c6c617665, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2175, 138, 0x5955, 0x5975636174616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2176, 138, 0x5a41, 0x5a6163617465636173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2177, 139, 0x43, 0x436875756b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2178, 139, 0x4b, 0x4b6f73726165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2179, 139, 0x50, 0x506f686e706569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2180, 139, 0x59, 0x596170, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2181, 140, 0x4741, 0x47616761757a6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2182, 140, 0x4355, 0x43686973696e6175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2183, 140, 0x4241, 0x42616c7469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2184, 140, 0x4341, 0x436168756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2185, 140, 0x4544, 0x4564696e6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2186, 140, 0x4c41, 0x4c617075736e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2187, 140, 0x4f52, 0x4f72686569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2188, 140, 0x534f, 0x536f726f6361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2189, 140, 0x5449, 0x54696768696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2190, 140, 0x554e, 0x556e6768656e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2191, 140, 0x534e, 0x5374e2809ac384c3b66e6761204e69737472756c7569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2192, 141, 0x4656, 0x466f6e74766965696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2193, 141, 0x4c43, 0x4c6120436f6e64616d696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2194, 141, 0x4d56, 0x4d6f6e61636f2d56696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2195, 141, 0x4d43, 0x4d6f6e74652d4361726c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2196, 142, 0x31, 0x556c616e626161746172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2197, 142, 0x303335, 0x4f72686f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2198, 142, 0x303337, 0x44617268616e2075756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2199, 142, 0x303339, 0x48656e746979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2200, 142, 0x303431, 0x486f7673676f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2201, 142, 0x303433, 0x486f7664, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2202, 142, 0x303436, 0x557673, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2203, 142, 0x303437, 0x546f76, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2204, 142, 0x303439, 0x53656c656e6765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2205, 142, 0x303531, 0x537568626161746172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2206, 142, 0x303533, 0x4f6d6e6f676f7669, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2207, 142, 0x303535, 0x4f766f7268616e676179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2208, 142, 0x303537, 0x447a617668616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2209, 142, 0x303539, 0x44756e64676f764c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2210, 142, 0x303631, 0x446f726e6f64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2211, 142, 0x303633, 0x446f726e6f676f76, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2212, 142, 0x303634, 0x476f76692d53756d626572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2213, 142, 0x303635, 0x476f76692d416c746179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2214, 142, 0x303637, 0x42756c67616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2215, 142, 0x303639, 0x426179616e686f6e676f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2216, 142, 0x303731, 0x426179616e2d4f6c676979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2217, 142, 0x303733, 0x417268616e676179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2218, 143, 0x41, 0x5361696e7420416e74686f6e79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2219, 143, 0x47, 0x5361696e742047656f72676573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2220, 143, 0x50, 0x5361696e74205065746572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2221, 144, 0x414744, 0x416761646972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2222, 144, 0x484f43, 0x416c20486f6365696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2223, 144, 0x415a49, 0x417a696c616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2224, 144, 0x424d45, 0x42656e69204d656c6c616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2225, 144, 0x42534c, 0x42656e20536c696d616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2226, 144, 0x424c4d, 0x426f756c656d616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2227, 144, 0x43424c, 0x43617361626c616e6361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2228, 144, 0x434841, 0x4368616f75656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2229, 144, 0x454a41, 0x456c204a6164696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2230, 144, 0x454b53, 0x456c204b656c6161206465732053726167686e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2231, 144, 0x455241, 0x4572205261636869646961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2232, 144, 0x455353, 0x457373616f75697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2233, 144, 0x464553, 0x466573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2234, 144, 0x464947, 0x466967756967, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2235, 144, 0x474c4d, 0x4775656c6d696d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2236, 144, 0x494652, 0x496672616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2237, 144, 0x4b454e, 0x4b656e69747261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2238, 144, 0x4b484d, 0x4b68656d6973736574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2239, 144, 0x4b484e, 0x4b68656e69667261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2240, 144, 0x4b484f, 0x4b686f757269626761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2241, 144, 0x4c594e, 0x4c6161796f756e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2242, 144, 0x4c4152, 0x4c617261636865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2243, 144, 0x4d524b, 0x4d617272616b656368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2244, 144, 0x4d4b4e, 0x4d656b6e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2245, 144, 0x4e4144, 0x4e61646f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2246, 144, 0x4f525a, 0x4f7561727a617a617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2247, 144, 0x4f554a, 0x4f756a6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2248, 144, 0x525341, 0x52616261742d53616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2249, 144, 0x534146, 0x53616669, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2250, 144, 0x534554, 0x536574746174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2251, 144, 0x534b41, 0x53696469204b6163656d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2252, 144, 0x544752, 0x54616e67696572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2253, 144, 0x54414e, 0x54616e2d54616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2254, 144, 0x54414f, 0x54616f756e617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2255, 144, 0x545244, 0x5461726f7564616e6e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2256, 144, 0x544154, 0x54617461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2257, 144, 0x54415a, 0x54617a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2258, 144, 0x544554, 0x5465746f75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2259, 144, 0x54495a, 0x54697a6e6974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2260, 144, 0x41444b, 0x41642044616b686c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2261, 144, 0x424a44, 0x426f756a646f7572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2262, 144, 0x45534d, 0x457320536d617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2263, 145, 0x4344, 0x4361626f2044656c6761646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2264, 145, 0x475a, 0x47617a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2265, 145, 0x494e, 0x496e68616d62616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2266, 145, 0x4d4e, 0x4d616e696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2267, 145, 0x4d43, 0x4d617075746f20286369747929, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2268, 145, 0x4d50, 0x4d617075746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2269, 145, 0x4e41, 0x4e616d70756c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2270, 145, 0x4e49, 0x4e6961737361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2271, 145, 0x534f, 0x536f66616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2272, 145, 0x5445, 0x54657465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2273, 145, 0x5a41, 0x5a616d62657a6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2274, 146, 0x4159, 0x41796579617277616479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2275, 146, 0x4247, 0x4261676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2276, 146, 0x4d47, 0x4d6167776179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2277, 146, 0x4d44, 0x4d616e64616c6179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2278, 146, 0x5347, 0x53616761696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2279, 146, 0x544e, 0x54616e696e746861727969, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2280, 146, 0x5947, 0x59616e676f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2281, 146, 0x4348, 0x4368696e205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2282, 146, 0x4b43, 0x4b616368696e205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2283, 146, 0x4b48, 0x4b61796168205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2284, 146, 0x4b4e, 0x4b6179696e205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2285, 146, 0x4d4e, 0x4d6f6e205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2286, 146, 0x524b, 0x52616b68696e65205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2287, 146, 0x5348, 0x5368616e205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2288, 147, 0x4341, 0x43617072697669, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2289, 147, 0x4552, 0x45726f6e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2290, 147, 0x4841, 0x486172646170, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2291, 147, 0x4b52, 0x4b61726173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2292, 147, 0x4b56, 0x4b6176616e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2293, 147, 0x4b48, 0x4b686f6d6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2294, 147, 0x4b55, 0x4b756e656e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2295, 147, 0x4f57, 0x4f68616e6777656e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2296, 147, 0x4f4b, 0x4f6d6168656b65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2297, 147, 0x4f54, 0x4f6d7573617469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2298, 147, 0x4f4e, 0x4f7368616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2299, 147, 0x4f4f, 0x4f7368696b6f746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2300, 147, 0x4f4a, 0x4f746a6f7a6f6e646a757061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2301, 148, 0x414f, 0x4169776f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2302, 148, 0x4141, 0x416e61626172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2303, 148, 0x4154, 0x416e6574616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2304, 148, 0x4149, 0x416e6962617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2305, 148, 0x4241, 0x4261697469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2306, 148, 0x424f, 0x426f65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2307, 148, 0x4255, 0x4275616461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2308, 148, 0x4445, 0x44656e69676f6d6f6475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2309, 148, 0x4557, 0x457761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2310, 148, 0x494a, 0x496a7577, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2311, 148, 0x4d45, 0x4d656e656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2312, 148, 0x4e49, 0x4e69626f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2313, 148, 0x5541, 0x5561626f65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2314, 148, 0x5941, 0x596172656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2315, 149, 0x4241, 0x4261676d617469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2316, 149, 0x4248, 0x4268657269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2317, 149, 0x4448, 0x44686177616c6167697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2318, 149, 0x4741, 0x47616e64616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2319, 149, 0x4a41, 0x4a616e616b707572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2320, 149, 0x4b41, 0x4b61726e616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2321, 149, 0x4b4f, 0x4b6f7369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2322, 149, 0x4c55, 0x4c756d62696e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2323, 149, 0x4d41, 0x4d6168616b616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2324, 149, 0x4d45, 0x4d65636869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2325, 149, 0x4e41, 0x4e61726179616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2326, 149, 0x5241, 0x5261707469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2327, 149, 0x5341, 0x53616761726d61746861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2328, 149, 0x5345, 0x53657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2329, 150, 0x4452, 0x4472656e746865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2330, 150, 0x464c, 0x466c65766f6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2331, 150, 0x4652, 0x46726965736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2332, 150, 0x4745, 0x47656c6465726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2333, 150, 0x4752, 0x47726f6e696e67656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2334, 150, 0x4c49, 0x4c696d62757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2335, 150, 0x4e42, 0x4e6f6f72642042726162616e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2336, 150, 0x4e48, 0x4e6f6f726420486f6c6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2337, 150, 0x4f56, 0x4f766572696a7373656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2338, 150, 0x5554, 0x55747265636874, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2339, 150, 0x5a45, 0x5a65656c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2340, 150, 0x5a48, 0x5a75696420486f6c6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2341, 152, 0x4c, 0x496c6573204c6f7961757465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2342, 152, 0x4e, 0x4e6f7264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2343, 152, 0x53, 0x537564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2344, 153, 0x41554b, 0x4175636b6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2345, 153, 0x424f50, 0x426179206f6620506c656e7479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2346, 153, 0x43414e, 0x43616e74657262757279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2347, 153, 0x434f52, 0x436f726f6d616e64656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2348, 153, 0x474953, 0x476973626f726e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2349, 153, 0x46494f, 0x46696f72646c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2350, 153, 0x484b42, 0x4861776b65277320426179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2351, 153, 0x4d4248, 0x4d61726c626f726f756768, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2352, 153, 0x4d5754, 0x4d616e61776174752d57616e67616e7569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2353, 153, 0x4d434d, 0x4d7420436f6f6b2d4d61636b656e7a6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2354, 153, 0x4e534e, 0x4e656c736f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2355, 153, 0x4e544c, 0x4e6f7274686c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2356, 153, 0x4f5441, 0x4f7461676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2357, 153, 0x53544c, 0x536f7574686c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2358, 153, 0x544b49, 0x546172616e616b69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2359, 153, 0x57474e, 0x57656c6c696e67746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2360, 153, 0x574b4f, 0x5761696b61746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2361, 153, 0x574149, 0x5761697270726172617061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2362, 153, 0x575443, 0x5765737420436f617374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2363, 154, 0x414e, 0x41746c616e7469636f204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2364, 154, 0x4153, 0x41746c616e7469636f20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2365, 154, 0x424f, 0x426f61636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2366, 154, 0x4341, 0x436172617a6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2367, 154, 0x4349, 0x4368696e616e64656761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2368, 154, 0x434f, 0x43686f6e74616c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2369, 154, 0x4553, 0x457374656c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2370, 154, 0x4752, 0x4772616e616461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2371, 154, 0x4a49, 0x4a696e6f74656761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2372, 154, 0x4c45, 0x4c656f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2373, 154, 0x4d44, 0x4d616472697a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2374, 154, 0x4d4e, 0x4d616e61677561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2375, 154, 0x4d53, 0x4d6173617961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2376, 154, 0x4d54, 0x4d61746167616c7061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2377, 154, 0x4e53, 0x4e7565766f205365676f766961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2378, 154, 0x5253, 0x52696f2053616e204a75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2379, 154, 0x5249, 0x5269766173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2380, 155, 0x4147, 0x41676164657a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2381, 155, 0x4446, 0x4469666661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2382, 155, 0x4453, 0x446f73736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2383, 155, 0x4d41, 0x4d6172616469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2384, 155, 0x4e4d, 0x4e69616d6579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2385, 155, 0x5448, 0x5461686f7561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2386, 155, 0x544c, 0x54696c6c6162657269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2387, 155, 0x5a44, 0x5a696e646572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2388, 156, 0x4142, 0x41626961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2389, 156, 0x4354, 0x4162756a61204665646572616c204361706974616c205465727269746f7279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2390, 156, 0x4144, 0x4164616d617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2391, 156, 0x414b, 0x416b77612049626f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2392, 156, 0x414e, 0x416e616d627261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2393, 156, 0x4243, 0x426175636869, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2394, 156, 0x4259, 0x426179656c7361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2395, 156, 0x424e, 0x42656e7565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2396, 156, 0x424f, 0x426f726e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2397, 156, 0x4352, 0x43726f7373205269766572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2398, 156, 0x4445, 0x44656c7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2399, 156, 0x4542, 0x45626f6e7969, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2400, 156, 0x4544, 0x45646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2401, 156, 0x454b, 0x456b697469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2402, 156, 0x454e, 0x456e756775, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2403, 156, 0x474f, 0x476f6d6265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2404, 156, 0x494d, 0x496d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2405, 156, 0x4a49, 0x4a6967617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2406, 156, 0x4b44, 0x4b6164756e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2407, 156, 0x4b4e, 0x4b616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2408, 156, 0x4b54, 0x4b617473696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2409, 156, 0x4b45, 0x4b65626269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2410, 156, 0x4b4f, 0x4b6f6769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2411, 156, 0x4b57, 0x4b77617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2412, 156, 0x4c41, 0x4c61676f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2413, 156, 0x4e41, 0x4e6173736172617761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2414, 156, 0x4e49, 0x4e69676572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2415, 156, 0x4f47, 0x4f67756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2416, 156, 0x4f4e47, 0x4f6e646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2417, 156, 0x4f53, 0x4f73756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2418, 156, 0x4f59, 0x4f796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2419, 156, 0x504c, 0x506c6174656175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2420, 156, 0x5249, 0x526976657273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2421, 156, 0x534f, 0x536f6b6f746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2422, 156, 0x5441, 0x546172616261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2423, 156, 0x594f, 0x596f6265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2424, 156, 0x5a41, 0x5a616d66617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2425, 159, 0x4e, 0x4e6f72746865726e2049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2426, 159, 0x52, 0x526f7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2427, 159, 0x53, 0x53616970616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2428, 159, 0x54, 0x54696e69616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2429, 160, 0x414b, 0x416b657273687573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2430, 160, 0x4141, 0x417573742d4167646572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2431, 160, 0x4255, 0x4275736b65727564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2432, 160, 0x464d, 0x46696e6e6d61726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2433, 160, 0x484d, 0x4865646d61726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2434, 160, 0x484c, 0x486f7264616c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2435, 160, 0x4d52, 0x4d6f7265206f6720526f6d64616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2436, 160, 0x4e54, 0x4e6f72642d54726f6e64656c6167, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2437, 160, 0x4e4c, 0x4e6f72646c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2438, 160, 0x4f46, 0x4f7374666f6c64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2439, 160, 0x4f50, 0x4f70706c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2440, 160, 0x4f4c, 0x4f736c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2441, 160, 0x524c, 0x526f67616c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2442, 160, 0x5354, 0x536f722d54726f6e64656c6167, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2443, 160, 0x534a, 0x536f676e206f6720466a6f7264616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2444, 160, 0x5356, 0x5376616c62617264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2445, 160, 0x544d, 0x54656c656d61726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2446, 160, 0x5452, 0x54726f6d73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2447, 160, 0x5641, 0x566573742d4167646572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2448, 160, 0x5646, 0x56657374666f6c64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2449, 161, 0x4441, 0x41642044616b68696c69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2450, 161, 0x4241, 0x416c20426174696e6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2451, 161, 0x5755, 0x416c205775737461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2452, 161, 0x5348, 0x41736820536861727169796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2453, 161, 0x5a41, 0x417a205a616869726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2454, 161, 0x4d41, 0x4d6173716174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2455, 161, 0x4d55, 0x4d7573616e64616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2456, 161, 0x5a55, 0x5a75666172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2457, 162, 0x42, 0x42616c6f6368697374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2458, 162, 0x54, 0x4665646572616c6c792041646d696e697374657265642054726962616c204172656173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2459, 162, 0x49, 0x49736c616d61626164204361706974616c205465727269746f7279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2460, 162, 0x4e, 0x4e6f7274682d576573742046726f6e74696572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2461, 162, 0x50, 0x50756e6a6162, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2462, 162, 0x53, 0x53696e6468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2463, 163, 0x414d, 0x41696d656c69696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2464, 163, 0x4152, 0x4169726169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2465, 163, 0x414e, 0x416e67617572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2466, 163, 0x4841, 0x4861746f686f626569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2467, 163, 0x4b41, 0x4b6179616e67656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2468, 163, 0x4b4f, 0x4b6f726f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2469, 163, 0x4d45, 0x4d656c656b656f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2470, 163, 0x4e41, 0x4e67617261617264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2471, 163, 0x4e47, 0x4e6761726368656c6f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2472, 163, 0x4e44, 0x4e676172646d6175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2473, 163, 0x4e54, 0x4e67617470616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2474, 163, 0x4e43, 0x4e67636865736172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2475, 163, 0x4e52, 0x4e676572656d6c656e677569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2476, 163, 0x4e57, 0x4e676977616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2477, 163, 0x5045, 0x50656c656c6975, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2478, 163, 0x534f, 0x536f6e736f726f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2479, 164, 0x4254, 0x426f6361732064656c20546f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2480, 164, 0x4348, 0x4368697269717569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2481, 164, 0x4343, 0x436f636c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2482, 164, 0x434c, 0x436f6c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2483, 164, 0x4441, 0x44617269656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2484, 164, 0x4845, 0x48657272657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2485, 164, 0x4c53, 0x4c6f732053616e746f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2486, 164, 0x5041, 0x50616e616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2487, 164, 0x5342, 0x53616e20426c6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2488, 164, 0x5647, 0x5665726167756173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2489, 165, 0x4256, 0x426f756761696e76696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2490, 165, 0x4345, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2491, 165, 0x4348, 0x4368696d6275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2492, 165, 0x4548, 0x4561737465726e20486967686c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2493, 165, 0x4542, 0x45617374204e6577204272697461696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2494, 165, 0x4553, 0x4561737420536570696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2495, 165, 0x454e, 0x456e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2496, 165, 0x4755, 0x47756c66, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2497, 165, 0x4d44, 0x4d6164616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2498, 165, 0x4d4e, 0x4d616e7573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2499, 165, 0x4d42, 0x4d696c6e6520426179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2500, 165, 0x4d52, 0x4d6f726f6265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2501, 165, 0x4e43, 0x4e6174696f6e616c204361706974616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2502, 165, 0x4e49, 0x4e6577204972656c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2503, 165, 0x4e4f, 0x4e6f72746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2504, 165, 0x5341, 0x53616e6461756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2505, 165, 0x5348, 0x536f75746865726e20486967686c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2506, 165, 0x5745, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2507, 165, 0x5748, 0x5765737465726e20486967686c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2508, 165, 0x5742, 0x57657374204e6577204272697461696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2509, 166, 0x4147, 0x416c746f205061726167756179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2510, 166, 0x414e, 0x416c746f20506172616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2511, 166, 0x414d, 0x416d616d626179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2512, 166, 0x4153, 0x4173756e63696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2513, 166, 0x424f, 0x426f717565726f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2514, 166, 0x4347, 0x4361616775617a75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2515, 166, 0x435a, 0x4361617a617061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2516, 166, 0x434e, 0x43616e696e64657975, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2517, 166, 0x4345, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2518, 166, 0x4343, 0x436f6e63657063696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2519, 166, 0x4344, 0x436f7264696c6c657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2520, 166, 0x4755, 0x477561697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2521, 166, 0x4954, 0x497461707561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2522, 166, 0x4d49, 0x4d6973696f6e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2523, 166, 0x4e45, 0x4e65656d62756375, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2524, 166, 0x5041, 0x506172616775617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2525, 166, 0x5048, 0x507265736964656e7465204861796573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2526, 166, 0x5350, 0x53616e20506564726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2527, 167, 0x414d, 0x416d617a6f6e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2528, 167, 0x414e, 0x416e63617368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2529, 167, 0x4150, 0x41707572696d6163, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2530, 167, 0x4152, 0x4172657175697061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2531, 167, 0x4159, 0x417961637563686f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2532, 167, 0x434a, 0x43616a616d61726361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2533, 167, 0x434c, 0x43616c6c616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2534, 167, 0x4355, 0x437573636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2535, 167, 0x4856, 0x4875616e636176656c696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2536, 167, 0x484f, 0x4875616e75636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2537, 167, 0x4943, 0x496361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2538, 167, 0x4a55, 0x4a756e696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2539, 167, 0x4c44, 0x4c61204c69626572746164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2540, 167, 0x4c59, 0x4c616d62617965717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2541, 167, 0x4c49, 0x4c696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2542, 167, 0x4c4f, 0x4c6f7265746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2543, 167, 0x4d44, 0x4d616472652064652044696f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2544, 167, 0x4d4f, 0x4d6f717565677561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2545, 167, 0x5041, 0x506173636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2546, 167, 0x5049, 0x5069757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2547, 167, 0x5055, 0x50756e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2548, 167, 0x534d, 0x53616e204d617274696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2549, 167, 0x5441, 0x5461636e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2550, 167, 0x5455, 0x54756d626573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2551, 167, 0x5543, 0x55636179616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2552, 168, 0x414252, 0x41627261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2553, 168, 0x414e4f, 0x41677573616e2064656c204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2554, 168, 0x415355, 0x41677573616e2064656c20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2555, 168, 0x414b4c, 0x416b6c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2556, 168, 0x414c42, 0x416c626179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2557, 168, 0x414e54, 0x416e7469717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2558, 168, 0x415059, 0x41706179616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2559, 168, 0x415552, 0x4175726f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2560, 168, 0x424153, 0x426173696c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2561, 168, 0x425441, 0x42617461616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2562, 168, 0x425445, 0x426174616e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2563, 168, 0x425447, 0x426174616e676173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2564, 168, 0x424c52, 0x42696c6972616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2565, 168, 0x42454e, 0x42656e67756574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2566, 168, 0x424f4c, 0x426f686f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2567, 168, 0x42554b, 0x42756b69646e6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2568, 168, 0x42554c, 0x42756c6163616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2569, 168, 0x434147, 0x4361676179616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2570, 168, 0x434e4f, 0x43616d6172696e6573204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2571, 168, 0x435355, 0x43616d6172696e657320537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2572, 168, 0x43414d, 0x43616d696775696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2573, 168, 0x434150, 0x436170697a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2574, 168, 0x434154, 0x436174616e6475616e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2575, 168, 0x434156, 0x436176697465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2576, 168, 0x434542, 0x43656275, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2577, 168, 0x434d50, 0x436f6d706f7374656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2578, 168, 0x444e4f, 0x446176616f2064656c204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2579, 168, 0x445355, 0x446176616f2064656c20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2580, 168, 0x444f52, 0x446176616f204f7269656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2581, 168, 0x455341, 0x4561737465726e2053616d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2582, 168, 0x475549, 0x4775696d61726173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2583, 168, 0x494655, 0x49667567616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2584, 168, 0x494e4f, 0x496c6f636f73204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2585, 168, 0x495355, 0x496c6f636f7320537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2586, 168, 0x494c4f, 0x496c6f696c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2587, 168, 0x495341, 0x49736162656c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2588, 168, 0x4b414c, 0x4b616c696e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2589, 168, 0x4c4147, 0x4c6167756e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2590, 168, 0x4c4e4f, 0x4c616e616f2064656c204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2591, 168, 0x4c5355, 0x4c616e616f2064656c20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2592, 168, 0x554e49, 0x4c6120556e696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2593, 168, 0x4c4559, 0x4c65797465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2594, 168, 0x4d4147, 0x4d616775696e64616e616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2595, 168, 0x4d524e, 0x4d6172696e6475717565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2596, 168, 0x4d5342, 0x4d617362617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2597, 168, 0x4d4943, 0x4d696e646f726f204f63636964656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2598, 168, 0x4d4952, 0x4d696e646f726f204f7269656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2599, 168, 0x4d5343, 0x4d6973616d6973204f63636964656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2600, 168, 0x4d4f52, 0x4d6973616d6973204f7269656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2601, 168, 0x4d4f50, 0x4d6f756e7461696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2602, 168, 0x4e4f43, 0x4e6567726f73204f63636964656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2603, 168, 0x4e4f52, 0x4e6567726f73204f7269656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2604, 168, 0x4e4354, 0x4e6f72746820436f74616261746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2605, 168, 0x4e534d, 0x4e6f72746865726e2053616d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2606, 168, 0x4e4543, 0x4e75657661204563696a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2607, 168, 0x4e565a, 0x4e756576612056697a63617961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2608, 168, 0x504c57, 0x50616c6177616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2609, 168, 0x504d50, 0x50616d70616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2610, 168, 0x504e47, 0x50616e676173696e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2611, 168, 0x515a4e, 0x5175657a6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2612, 168, 0x51524e, 0x51756972696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2613, 168, 0x52495a, 0x52697a616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2614, 168, 0x524f4d, 0x526f6d626c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2615, 168, 0x534d52, 0x53616d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2616, 168, 0x535247, 0x536172616e67616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2617, 168, 0x53514a, 0x53697175696a6f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2618, 168, 0x535253, 0x536f72736f676f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2619, 168, 0x53434f, 0x536f75746820436f74616261746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2620, 168, 0x534c45, 0x536f75746865726e204c65797465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2621, 168, 0x534b55, 0x53756c74616e204b756461726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2622, 168, 0x534c55, 0x53756c75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2623, 168, 0x534e4f, 0x5375726967616f2064656c204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2624, 168, 0x535355, 0x5375726967616f2064656c20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2625, 168, 0x544152, 0x5461726c6163, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2626, 168, 0x544157, 0x546177692d54617769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2627, 168, 0x5a424c, 0x5a616d62616c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2628, 168, 0x5a4e4f, 0x5a616d626f616e67612064656c204e6f727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2629, 168, 0x5a5355, 0x5a616d626f616e67612064656c20537572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2630, 168, 0x5a5349, 0x5a616d626f616e67612053696275676179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2631, 170, 0x444f, 0x446f6c6e6f736c61736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2632, 170, 0x4b50, 0x4b756a6177736b6f2d506f6d6f72736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2633, 170, 0x4c4f, 0x4c6f647a6b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2634, 170, 0x4c4c, 0x4c7562656c736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2635, 170, 0x4c55, 0x4c756275736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2636, 170, 0x4d4c, 0x4d616c6f706f6c736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2637, 170, 0x4d5a, 0x4d617a6f776965636b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2638, 170, 0x4f50, 0x4f706f6c736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2639, 170, 0x5050, 0x506f646b61727061636b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2640, 170, 0x504c, 0x506f646c61736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2641, 170, 0x504d, 0x506f6d6f72736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2642, 170, 0x534c, 0x536c61736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2643, 170, 0x5357, 0x53776965746f6b727a79736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2644, 170, 0x574d, 0x5761726d696e736b6f2d4d617a7572736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2645, 170, 0x5750, 0x5769656c6b6f706f6c736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2646, 170, 0x5a41, 0x5a6163686f646e696f706f6d6f72736b6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2647, 198, 0x50, 0x5361696e7420506965727265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2648, 198, 0x4d, 0x4d697175656c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2649, 171, 0x4143, 0x412663636564696c3b6f726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2650, 171, 0x4156, 0x41766569726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2651, 171, 0x4245, 0x42656a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2652, 171, 0x4252, 0x4272616761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2653, 171, 0x4241, 0x42726167616e2663636564696c3b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2654, 171, 0x4342, 0x43617374656c6f204272616e636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2655, 171, 0x434f, 0x436f696d627261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2656, 171, 0x4556, 0x264561637574653b766f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2657, 171, 0x4641, 0x4661726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2658, 171, 0x4755, 0x477561726461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2659, 171, 0x4c45, 0x4c6569726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2660, 171, 0x4c49, 0x4c6973626f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2661, 171, 0x4d45, 0x4d616465697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2662, 171, 0x504f, 0x506f7274616c65677265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2663, 171, 0x5052, 0x506f72746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2664, 171, 0x5341, 0x53616e746172266561637574653b6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2665, 171, 0x5345, 0x536574267561637574653b62616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2666, 171, 0x5643, 0x5669616e6120646f2043617374656c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2667, 171, 0x5652, 0x56696c61205265616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2668, 171, 0x5649, 0x5669736575, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2669, 173, 0x4457, 0x416420446177686168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2670, 173, 0x4757, 0x416c204768757761797269796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2671, 173, 0x4a4d, 0x416c204a756d61796c69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2672, 173, 0x4b52, 0x416c204b68617772, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2673, 173, 0x574b, 0x416c2057616b726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2674, 173, 0x524e, 0x41722052617979616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2675, 173, 0x4a42, 0x4a61726179616e20616c20426174696e6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2676, 173, 0x4d53, 0x4d6164696e617420617368205368616d616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2677, 173, 0x5544, 0x556d6d205361276964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2678, 173, 0x554c, 0x556d6d2053616c616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2679, 175, 0x4142, 0x416c6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2680, 175, 0x4152, 0x41726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2681, 175, 0x4147, 0x4172676573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2682, 175, 0x4243, 0x4261636175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2683, 175, 0x4248, 0x4269686f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2684, 175, 0x424e, 0x42697374726974612d4e6173617564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2685, 175, 0x4254, 0x426f746f73616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2686, 175, 0x4256, 0x427261736f76, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2687, 175, 0x4252, 0x427261696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2688, 175, 0x42, 0x427563757265737469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2689, 175, 0x425a, 0x42757a6175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2690, 175, 0x4353, 0x43617261732d5365766572696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2691, 175, 0x434c, 0x43616c6172617369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2692, 175, 0x434a, 0x436c756a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2693, 175, 0x4354, 0x436f6e7374616e7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2694, 175, 0x4356, 0x436f7661736e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2695, 175, 0x4442, 0x44696d626f76697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2696, 175, 0x444a, 0x446f6c6a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2697, 175, 0x474c, 0x47616c617469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2698, 175, 0x4752, 0x47697572676975, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2699, 175, 0x474a, 0x476f726a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2700, 175, 0x4852, 0x4861726768697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2701, 175, 0x4844, 0x48756e65646f617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2702, 175, 0x494c, 0x49616c6f6d697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2703, 175, 0x4953, 0x49617369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2704, 175, 0x4946, 0x496c666f76, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2705, 175, 0x4d4d, 0x4d6172616d75726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2706, 175, 0x4d48, 0x4d65686564696e7469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2707, 175, 0x4d53, 0x4d75726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2708, 175, 0x4e54, 0x4e65616d74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2709, 175, 0x4f54, 0x4f6c74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2710, 175, 0x5048, 0x507261686f7661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2711, 175, 0x534d, 0x536174752d4d617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2712, 175, 0x534a, 0x53616c616a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2713, 175, 0x5342, 0x5369626975, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2714, 175, 0x5356, 0x53756365617661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2715, 175, 0x5452, 0x54656c656f726d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2716, 175, 0x544d, 0x54696d6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2717, 175, 0x544c, 0x54756c636561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2718, 175, 0x5653, 0x5661736c7569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2719, 175, 0x564c, 0x56616c636561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2720, 175, 0x564e, 0x5672616e636561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2721, 176, 0x4142, 0x4162616b616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2722, 176, 0x4147, 0x4167696e736b6f7965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2723, 176, 0x414e, 0x416e61647972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2724, 176, 0x4152, 0x41726b6168616e67656c736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2725, 176, 0x4153, 0x41737472616b68616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2726, 176, 0x4241, 0x4261726e61756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2727, 176, 0x4245, 0x42656c676f726f64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2728, 176, 0x4249, 0x4269726f6269647a68616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2729, 176, 0x424c, 0x426c61676f766573686368656e736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2730, 176, 0x4252, 0x427279616e736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2731, 176, 0x4348, 0x436865626f6b73617279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2732, 176, 0x434c, 0x4368656c796162696e736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2733, 176, 0x4352, 0x436865726b6573736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2734, 176, 0x4349, 0x4368697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2735, 176, 0x4455, 0x447564696e6b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2736, 176, 0x454c, 0x456c69737461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2737, 176, 0x474f, 0x476f6d6f2d416c746179736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2738, 176, 0x4741, 0x476f726e6f2d416c746179736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2739, 176, 0x4752, 0x47726f7a6e7979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2740, 176, 0x4952, 0x49726b7574736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2741, 176, 0x4956, 0x4976616e6f766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2742, 176, 0x495a, 0x497a686576736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2743, 176, 0x4b41, 0x4b616c696e6967726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2744, 176, 0x4b4c, 0x4b616c756761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2745, 176, 0x4b53, 0x4b61736e6f646172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2746, 176, 0x4b5a, 0x4b617a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2747, 176, 0x4b45, 0x4b656d65726f766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2748, 176, 0x4b48, 0x4b68616261726f76736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2749, 176, 0x4b4d, 0x4b68616e74792d4d616e736979736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2750, 176, 0x4b4f, 0x4b6f7374726f6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2751, 176, 0x4b52, 0x4b7261736e6f646172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2752, 176, 0x4b4e, 0x4b7261736e6f796172736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2753, 176, 0x4b55, 0x4b7564796d6b6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2754, 176, 0x4b47, 0x4b757267616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2755, 176, 0x4b4b, 0x4b7572736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2756, 176, 0x4b59, 0x4b797a796c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2757, 176, 0x4c49, 0x4c69706574736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2758, 176, 0x4d41, 0x4d61676164616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2759, 176, 0x4d4b, 0x4d616b686163686b616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2760, 176, 0x4d59, 0x4d61796b6f70, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2761, 176, 0x4d4f, 0x4d6f73636f77, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2762, 176, 0x4d55, 0x4d75726d616e736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2763, 176, 0x4e41, 0x4e616c6368696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2764, 176, 0x4e52, 0x4e617279616e204d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2765, 176, 0x4e5a, 0x4e617a72616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2766, 176, 0x4e49, 0x4e697a686e6979204e6f76676f726f64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2767, 176, 0x4e4f, 0x4e6f76676f726f64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2768, 176, 0x4e56, 0x4e6f766f7369626972736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2769, 176, 0x4f4d, 0x4f6d736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2770, 176, 0x4f52, 0x4f72656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2771, 176, 0x4f45, 0x4f72656e62757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2772, 176, 0x5041, 0x50616c616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2773, 176, 0x5045, 0x50656e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2774, 176, 0x5052, 0x5065726d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2775, 176, 0x504b, 0x506574726f7061766c6f76736b2d4b616d63686174736b6979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2776, 176, 0x5054, 0x506574726f7a61766f64736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2777, 176, 0x5053, 0x50736b6f76, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2778, 176, 0x524f, 0x526f73746f762d6e612d446f6e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2779, 176, 0x5259, 0x5279617a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2780, 176, 0x534c, 0x53616c656b68617264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2781, 176, 0x5341, 0x53616d617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2782, 176, 0x5352, 0x536172616e736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2783, 176, 0x5356, 0x53617261746f76, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2784, 176, 0x534d, 0x536d6f6c656e736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2785, 176, 0x5350, 0x53742e2050657465727362757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2786, 176, 0x5354, 0x53746176726f706f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2787, 176, 0x5359, 0x53796b7479766b6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2788, 176, 0x5441, 0x54616d626f76, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2789, 176, 0x544f, 0x546f6d736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2790, 176, 0x5455, 0x54756c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2791, 176, 0x5452, 0x54757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2792, 176, 0x5456, 0x54766572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2793, 176, 0x5459, 0x5479756d656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2794, 176, 0x5546, 0x556661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2795, 176, 0x554c, 0x556c2779616e6f76736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2796, 176, 0x5555, 0x556c616e2d556465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2797, 176, 0x5553, 0x557374272d4f7264796e736b6979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2798, 176, 0x564c, 0x566c6164696b61766b617a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2799, 176, 0x5641, 0x566c6164696d6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2800, 176, 0x5656, 0x566c616469766f73746f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2801, 176, 0x5647, 0x566f6c676f67726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2802, 176, 0x5644, 0x566f6c6f676461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2803, 176, 0x564f, 0x566f726f6e657a68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2804, 176, 0x5659, 0x567961746b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2805, 176, 0x5941, 0x59616b7574736b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2806, 176, 0x5952, 0x5961726f736c61766c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2807, 176, 0x5945, 0x59656b61746572696e62757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2808, 176, 0x594f, 0x596f73686b61722d4f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2809, 177, 0x4255, 0x427574617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2810, 177, 0x4259, 0x4279756d6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2811, 177, 0x4359, 0x4379616e67756775, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2812, 177, 0x474b, 0x47696b6f6e676f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2813, 177, 0x4753, 0x476973656e7969, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2814, 177, 0x4754, 0x4769746172616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2815, 177, 0x4b47, 0x4b6962756e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2816, 177, 0x4b59, 0x4b6962757965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2817, 177, 0x4b52, 0x4b6967616c6920527572616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2818, 177, 0x4b56, 0x4b6967616c692d76696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2819, 177, 0x5255, 0x527568656e67657269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2820, 177, 0x554d, 0x556d7574617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2821, 178, 0x43434e, 0x43687269737420436875726368204e6963686f6c6120546f776e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2822, 178, 0x534153, 0x5361696e7420416e6e652053616e647920506f696e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2823, 178, 0x534742, 0x5361696e742047656f7267652042617373657465727265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2824, 178, 0x534747, 0x5361696e742047656f7267652047696e6765726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2825, 178, 0x534a57, 0x5361696e74204a616d65732057696e6477617264, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2826, 178, 0x534a43, 0x5361696e74204a6f686e2043617065737465727265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2827, 178, 0x534a46, 0x5361696e74204a6f686e2046696774726565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2828, 178, 0x534d43, 0x5361696e74204d617279204361796f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2829, 178, 0x434150, 0x5361696e74205061756c2043617065737465727265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2830, 178, 0x434841, 0x5361696e74205061756c20436861726c6573746f776e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2831, 178, 0x535042, 0x5361696e742050657465722042617373657465727265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2832, 178, 0x53544c, 0x5361696e742054686f6d6173204c6f776c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2833, 178, 0x53544d, 0x5361696e742054686f6d6173204d6964646c652049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2834, 178, 0x545050, 0x5472696e6974792050616c6d6574746f20506f696e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2835, 179, 0x4152, 0x416e73652d6c612d52617965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2836, 179, 0x4341, 0x4361737472696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2837, 179, 0x4348, 0x43686f697365756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2838, 179, 0x4441, 0x4461757068696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2839, 179, 0x4445, 0x44656e6e657279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2840, 179, 0x4749, 0x47726f732d49736c6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2841, 179, 0x4c41, 0x4c61626f726965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2842, 179, 0x4d49, 0x4d69636f7564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2843, 179, 0x5052, 0x507261736c696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2844, 179, 0x534f, 0x536f75667269657265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2845, 179, 0x5646, 0x56696575782d466f7274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2846, 180, 0x43, 0x436861726c6f747465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2847, 180, 0x52, 0x4772656e6164696e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2848, 180, 0x41, 0x5361696e7420416e64726577, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2849, 180, 0x44, 0x5361696e74204461766964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2850, 180, 0x47, 0x5361696e742047656f726765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2851, 180, 0x50, 0x5361696e74205061747269636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2852, 181, 0x414e, 0x4127616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2853, 181, 0x4149, 0x416967612d692d6c652d546169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2854, 181, 0x4154, 0x41747561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2855, 181, 0x4641, 0x4661276173616c656c65616761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2856, 181, 0x4745, 0x4761676127656d61756761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2857, 181, 0x4746, 0x4761676169666f6d61756761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2858, 181, 0x5041, 0x50616c61756c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2859, 181, 0x5341, 0x5361747570612769746561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2860, 181, 0x5455, 0x5475616d6173616761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2861, 181, 0x5646, 0x566127612d6f2d466f6e6f7469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2862, 181, 0x5653, 0x566169736967616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2863, 182, 0x4143, 0x416371756176697661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2864, 182, 0x424d, 0x426f72676f204d616767696f7265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2865, 182, 0x4348, 0x4368696573616e756f7661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2866, 182, 0x444f, 0x446f6d61676e616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2867, 182, 0x4641, 0x46616574616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2868, 182, 0x4649, 0x46696f72656e74696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2869, 182, 0x4d4f, 0x4d6f6e74656769617264696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2870, 182, 0x534d, 0x43697474612064692053616e204d6172696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2871, 182, 0x5345, 0x536572726176616c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2872, 183, 0x53, 0x53616f20546f6d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2873, 183, 0x50, 0x5072696e63697065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2874, 184, 0x4248, 0x416c204261686168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2875, 184, 0x4853, 0x416c20487564756420617368205368616d616c69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2876, 184, 0x4a46, 0x416c204a617766, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2877, 184, 0x4d44, 0x416c204d6164696e6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2878, 184, 0x5153, 0x416c20516173696d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2879, 184, 0x5244, 0x4172205269796164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2880, 184, 0x4151, 0x4173682053686172716979616820284561737465726e29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2881, 184, 0x4153, 0x2741736972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2882, 184, 0x484c, 0x486127696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2883, 184, 0x4a5a, 0x4a697a616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2884, 184, 0x4d4c, 0x4d616b6b6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2885, 184, 0x4e52, 0x4e616a72616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2886, 184, 0x5442, 0x546162756b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2887, 185, 0x4441, 0x44616b6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2888, 185, 0x4449, 0x44696f757262656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2889, 185, 0x4641, 0x46617469636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2890, 185, 0x4b41, 0x4b616f6c61636b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2891, 185, 0x4b4f, 0x4b6f6c6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2892, 185, 0x4c4f, 0x4c6f756761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2893, 185, 0x4d41, 0x4d6174616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2894, 185, 0x534c, 0x5361696e742d4c6f756973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2895, 185, 0x5441, 0x54616d6261636f756e6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2896, 185, 0x5448, 0x5468696573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2897, 185, 0x5a49, 0x5a696775696e63686f72, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2898, 186, 0x4150, 0x416e7365206175782050696e73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2899, 186, 0x4142, 0x416e736520426f696c656175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2900, 186, 0x4145, 0x416e73652045746f696c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2901, 186, 0x414c, 0x416e7365204c6f756973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2902, 186, 0x4152, 0x416e736520526f79616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2903, 186, 0x424c, 0x42616965204c617a617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2904, 186, 0x4253, 0x42616965205361696e746520416e6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2905, 186, 0x4256, 0x426561752056616c6c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2906, 186, 0x4241, 0x42656c20416972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2907, 186, 0x424f, 0x42656c204f6d627265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2908, 186, 0x4341, 0x43617363616465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2909, 186, 0x474c, 0x476c61636973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2910, 186, 0x474d, 0x4772616e642720416e736520286f6e204d61686529, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2911, 186, 0x4750, 0x4772616e642720416e736520286f6e20507261736c696e29, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2912, 186, 0x4447, 0x4c61204469677565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2913, 186, 0x5241, 0x4c61205269766965726520416e676c61697365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2914, 186, 0x4d42, 0x4d6f6e7420427578746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2915, 186, 0x4d46, 0x4d6f6e7420466c65757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2916, 186, 0x504c, 0x506c616973616e6365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2917, 186, 0x5052, 0x506f696e7465204c6120527565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2918, 186, 0x5047, 0x506f727420476c617564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2919, 186, 0x534c, 0x5361696e74204c6f756973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2920, 186, 0x5441, 0x54616b616d616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2921, 187, 0x45, 0x4561737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2922, 187, 0x4e, 0x4e6f72746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2923, 187, 0x53, 0x536f75746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2924, 187, 0x57, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2925, 189, 0x4241, 0x42616e736b6f627973747269636be2889acea9, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2926, 189, 0x4252, 0x4272617469736c6176736be2889acea9, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2927, 189, 0x4b4f, 0x4b6fe28988c2b069636be2889acea9, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2928, 189, 0x4e49, 0x4e69747269616e736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2929, 189, 0x5052, 0x507265e28988c2b06f76736be2889acea9, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2930, 189, 0x5443, 0x5472656ec692c3a769616e736b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2931, 189, 0x5456, 0x54726e6176736be2889acea9, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2932, 189, 0x5a49, 0xe28988cea9696c696e736be2889acea9, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2933, 191, 0x4345, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2934, 191, 0x4348, 0x43686f697365756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2935, 191, 0x4743, 0x47756164616c63616e616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2936, 191, 0x484f, 0x486f6e69617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2937, 191, 0x4953, 0x49736162656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2938, 191, 0x4d4b, 0x4d616b697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2939, 191, 0x4d4c, 0x4d616c61697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2940, 191, 0x5242, 0x52656e6e656c6c20616e642042656c6c6f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2941, 191, 0x544d, 0x54656d6f7475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2942, 191, 0x5745, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2943, 192, 0x4157, 0x417764616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2944, 192, 0x424b, 0x42616b6f6f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2945, 192, 0x424e, 0x42616e6161646972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2946, 192, 0x4252, 0x42617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2947, 192, 0x4259, 0x426179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2948, 192, 0x4741, 0x47616c677564757564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2949, 192, 0x4745, 0x4765646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2950, 192, 0x4849, 0x4869697261616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2951, 192, 0x4a44, 0x4a756262616461204468657865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2952, 192, 0x4a48, 0x4a75626261646120486f6f7365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2953, 192, 0x4d55, 0x4d75647567, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2954, 192, 0x4e55, 0x4e756761616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2955, 192, 0x5341, 0x53616e616167, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2956, 192, 0x5344, 0x5368616265656c6c616861204468657865, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2957, 192, 0x5348, 0x5368616265656c6c61686120486f6f7365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2958, 192, 0x534c, 0x536f6f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2959, 192, 0x544f, 0x546f676468656572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2960, 192, 0x5747, 0x576f716f6f79692047616c62656564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2961, 193, 0x4543, 0x4561737465726e2043617065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2962, 193, 0x4653, 0x46726565205374617465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2963, 193, 0x4754, 0x47617574656e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2964, 193, 0x4b4e, 0x4b77615a756c752d4e6174616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2965, 193, 0x4c50, 0x4c696d706f706f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2966, 193, 0x4d50, 0x4d70756d616c616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2967, 193, 0x4e57, 0x4e6f7274682057657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2968, 193, 0x4e43, 0x4e6f72746865726e2043617065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2969, 193, 0x5743, 0x5765737465726e2043617065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2970, 195, 0x4341, 0x4c6120436f7275266e74696c64653b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2971, 195, 0x414c, 0x264161637574653b6c617661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2972, 195, 0x4142, 0x416c626163657465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2973, 195, 0x4143, 0x416c6963616e7465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2974, 195, 0x414d, 0x416c6d65726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2975, 195, 0x4153, 0x4173747572696173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2976, 195, 0x4156, 0x264161637574653b76696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2977, 195, 0x424a, 0x426164616a6f7a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2978, 195, 0x4942, 0x42616c6561726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2979, 195, 0x4241, 0x42617263656c6f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2980, 195, 0x4255, 0x427572676f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2981, 195, 0x4343, 0x43266161637574653b6365726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2982, 195, 0x435a, 0x43266161637574653b64697a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2983, 195, 0x4354, 0x43616e746162726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2984, 195, 0x434c, 0x43617374656c6c266f61637574653b6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2985, 195, 0x4345, 0x4365757461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2986, 195, 0x4352, 0x436975646164205265616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2987, 195, 0x4344, 0x43266f61637574653b72646f6261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2988, 195, 0x4355, 0x4375656e6361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2989, 195, 0x4749, 0x4769726f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2990, 195, 0x4744, 0x4772616e616461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2991, 195, 0x474a, 0x47756164616c616a617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2992, 195, 0x4750, 0x47756970267561637574653b7a636f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2993, 195, 0x484c, 0x4875656c7661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2994, 195, 0x4853, 0x487565736361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2995, 195, 0x4a4e, 0x4a61266561637574653b6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2996, 195, 0x524a, 0x4c612052696f6a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2997, 195, 0x504d, 0x4c61732050616c6d6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2998, 195, 0x4c45, 0x4c656f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (2999, 195, 0x4c4c, 0x4c6c65696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3000, 195, 0x4c47, 0x4c75676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3001, 195, 0x4d44, 0x4d6164726964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3002, 195, 0x4d41, 0x4d616c616761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3003, 195, 0x4d4c, 0x4d656c696c6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3004, 195, 0x4d55, 0x4d7572636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3005, 195, 0x4e56, 0x4e617661727261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3006, 195, 0x4f55, 0x4f7572656e7365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3007, 195, 0x504c, 0x50616c656e636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3008, 195, 0x504f, 0x506f6e74657665647261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3009, 195, 0x534c, 0x53616c616d616e6361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3010, 195, 0x5343, 0x53616e7461204372757a2064652054656e6572696665, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3011, 195, 0x5347, 0x5365676f766961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3012, 195, 0x5356, 0x536576696c6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3013, 195, 0x534f, 0x536f726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3014, 195, 0x5441, 0x5461727261676f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3015, 195, 0x5445, 0x54657275656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3016, 195, 0x544f, 0x546f6c65646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3017, 195, 0x5643, 0x56616c656e636961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3018, 195, 0x5644, 0x56616c6c61646f6c6964, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3019, 195, 0x565a, 0x56697a63617961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3020, 195, 0x5a4d, 0x5a616d6f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3021, 195, 0x5a52, 0x5a617261676f7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3022, 196, 0x4345, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3023, 196, 0x4541, 0x4561737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3024, 196, 0x4e43, 0x4e6f7274682043656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3025, 196, 0x4e4f, 0x4e6f72746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3026, 196, 0x4e57, 0x4e6f727468205765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3027, 196, 0x5341, 0x53616261726167616d757761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3028, 196, 0x534f, 0x536f75746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3029, 196, 0x5556, 0x557661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3030, 196, 0x5745, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3031, 197, 0x41, 0x417363656e73696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3032, 197, 0x53, 0x5361696e742048656c656e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3033, 197, 0x54, 0x5472697374616e2064612043756e6861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3034, 199, 0x414e4c, 0x4127616c6920616e204e696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3035, 199, 0x42414d, 0x416c204261687220616c2041686d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3036, 199, 0x425254, 0x416c204275686179726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3037, 199, 0x4a5a52, 0x416c204a617a69726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3038, 199, 0x4b5254, 0x416c204b68617274756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3039, 199, 0x514452, 0x416c2051616461726966, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3040, 199, 0x574448, 0x416c20576168646168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3041, 199, 0x414e42, 0x416e204e696c20616c204162796164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3042, 199, 0x414e5a, 0x416e204e696c20616c20417a726171, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3043, 199, 0x415348, 0x417368205368616d616c69796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3044, 199, 0x424a41, 0x4261687220616c204a6162616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3045, 199, 0x474953, 0x476861726220616c204973746977612769796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3046, 199, 0x474247, 0x4768617262204261687220616c204768617a616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3047, 199, 0x474441, 0x476861726220446172667572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3048, 199, 0x474b55, 0x4768617262204b7572647566616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3049, 199, 0x4a4441, 0x4a616e756220446172667572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3050, 199, 0x4a4b55, 0x4a616e7562204b7572647566616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3051, 199, 0x4a514c, 0x4a756e71616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3052, 199, 0x4b534c, 0x4b617373616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3053, 199, 0x4e4e4c, 0x4e61687220616e204e696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3054, 199, 0x534247, 0x5368616d616c204261687220616c204768617a616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3055, 199, 0x534441, 0x5368616d616c20446172667572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3056, 199, 0x534b55, 0x5368616d616c204b7572647566616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3057, 199, 0x534953, 0x536861727120616c204973746977612769796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3058, 199, 0x534e52, 0x53696e6e6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3059, 199, 0x575242, 0x5761726162, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3060, 200, 0x4252, 0x42726f6b6f706f6e646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3061, 200, 0x434d, 0x436f6d6d6577696a6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3062, 200, 0x4352, 0x436f726f6e6965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3063, 200, 0x4d41, 0x4d61726f77696a6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3064, 200, 0x4e49, 0x4e69636b65726965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3065, 200, 0x5041, 0x50617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3066, 200, 0x504d, 0x506172616d617269626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3067, 200, 0x5341, 0x536172616d61636361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3068, 200, 0x5349, 0x536970616c6977696e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3069, 200, 0x5741, 0x57616e696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3070, 202, 0x48, 0x48686f68686f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3071, 202, 0x4c, 0x4c75626f6d626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3072, 202, 0x4d, 0x4d616e7a696e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3073, 202, 0x53, 0x5368697368656c77656e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3074, 203, 0x4b, 0x426c656b696e6765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3075, 203, 0x57, 0x44616c616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3076, 203, 0x58, 0x472661756d6c3b766c65626f7267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3077, 203, 0x49, 0x476f746c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3078, 203, 0x4e, 0x48616c6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3079, 203, 0x5a, 0x4a2661756d6c3b6d746c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3080, 203, 0x46, 0x4a266f756d6c3b6e6b266f756d6c3b70696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3081, 203, 0x48, 0x4b616c6d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3082, 203, 0x47, 0x4b726f6e6f62657267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3083, 203, 0x4244, 0x4e6f7272626f7474656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3084, 203, 0x54, 0x264f756d6c3b726562726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3085, 203, 0x45, 0x264f756d6c3b7374657267266f756d6c3b746c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3086, 203, 0x4d, 0x536b266172696e673b6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3087, 203, 0x44, 0x53266f756d6c3b6465726d616e6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3088, 203, 0x4142, 0x53746f636b686f6c6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3089, 203, 0x43, 0x55707073616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3090, 203, 0x53, 0x562661756d6c3b726d6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3091, 203, 0x4143, 0x562661756d6c3b73746572626f7474656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3092, 203, 0x59, 0x562661756d6c3b737465726e6f72726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3093, 203, 0x55, 0x562661756d6c3b73746d616e6c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3094, 203, 0x4f, 0x562661756d6c3b737472612047266f756d6c3b74616c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3095, 204, 0x4147, 0x416172676175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3096, 204, 0x4152, 0x417070656e7a656c6c2041757373657272686f64656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3097, 204, 0x4149, 0x417070656e7a656c6c20496e6e657272686f64656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3098, 204, 0x4253, 0x426173656c2d5374616474, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3099, 204, 0x424c, 0x426173656c2d4c616e64736368616674, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3100, 204, 0x4245, 0x4265726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3101, 204, 0x4652, 0x467269626f757267, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3102, 204, 0x4745, 0x47656e266567726176653b7665, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3103, 204, 0x474c, 0x476c61727573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3104, 204, 0x4752, 0x47726175622675756d6c3b6e64656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3105, 204, 0x4a55, 0x4a757261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3106, 204, 0x4c55, 0x4c757a65726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3107, 204, 0x4e45, 0x4e657563682661636972633b74656c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3108, 204, 0x4e57, 0x4e696477616c64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3109, 204, 0x4f57, 0x4f6277616c64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3110, 204, 0x5347, 0x53742e2047616c6c656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3111, 204, 0x5348, 0x53636861666668617573656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3112, 204, 0x535a, 0x53636877797a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3113, 204, 0x534f, 0x536f6c6f746875726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3114, 204, 0x5447, 0x54687572676175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3115, 204, 0x5449, 0x546963696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3116, 204, 0x5552, 0x557269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3117, 204, 0x5653, 0x56616c616973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3118, 204, 0x5644, 0x56617564, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3119, 204, 0x5a47, 0x5a7567, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3120, 204, 0x5a48, 0x5a2675756d6c3b72696368, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3121, 205, 0x4841, 0x416c20486173616b6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3122, 205, 0x4c41, 0x416c204c616468697169796168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3123, 205, 0x5155, 0x416c2051756e61797469726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3124, 205, 0x5251, 0x417220526171716168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3125, 205, 0x5355, 0x41732053757761796461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3126, 205, 0x4441, 0x44617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3127, 205, 0x445a, 0x4461797220617a205a617772, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3128, 205, 0x4449, 0x44696d61736871, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3129, 205, 0x484c, 0x48616c6162, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3130, 205, 0x484d, 0x48616d6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3131, 205, 0x4849, 0x48696d73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3132, 205, 0x4944, 0x49646c6962, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3133, 205, 0x5244, 0x5269662044696d61736871, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3134, 205, 0x5441, 0x546172747573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3135, 206, 0x4348, 0x4368616e672d687561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3136, 206, 0x4349, 0x436869612d69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3137, 206, 0x4853, 0x4873696e2d636875, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3138, 206, 0x484c, 0x4875612d6c69656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3139, 206, 0x494c, 0x492d6c616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3140, 206, 0x4b48, 0x4b616f2d687369756e6720636f756e7479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3141, 206, 0x4b4d, 0x4b696e2d6d656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3142, 206, 0x4c43, 0x4c69656e2d636869616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3143, 206, 0x4d4c, 0x4d69616f2d6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3144, 206, 0x4e54, 0x4e616e2d74276f75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3145, 206, 0x5048, 0x5027656e672d6875, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3146, 206, 0x5054, 0x5027696e672d74756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3147, 206, 0x5447, 0x542761692d6368756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3148, 206, 0x5441, 0x542761692d6e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3149, 206, 0x5450, 0x542761692d70656920636f756e7479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3150, 206, 0x5454, 0x542761692d74756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3151, 206, 0x5459, 0x5427616f2d7975616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3152, 206, 0x594c, 0x59756e2d6c696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3153, 206, 0x4343, 0x436869612d692063697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3154, 206, 0x434c, 0x4368692d6c756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3155, 206, 0x4843, 0x4873696e2d636875, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3156, 206, 0x5448, 0x542761692d6368756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3157, 206, 0x544e, 0x542761692d6e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3158, 206, 0x4b43, 0x4b616f2d687369756e672063697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3159, 206, 0x5443, 0x542761692d7065692063697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3160, 207, 0x4742, 0x476f726e6f2d426164616b687374616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3161, 207, 0x4b54, 0x4b6861746c6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3162, 207, 0x5355, 0x5375676864, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3163, 208, 0x4152, 0x417275736861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3164, 208, 0x4453, 0x4461722065732053616c61616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3165, 208, 0x444f, 0x446f646f6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3166, 208, 0x4952, 0x4972696e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3167, 208, 0x4b41, 0x4b6167657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3168, 208, 0x4b49, 0x4b69676f6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3169, 208, 0x4b4a, 0x4b696c696d616e6a61726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3170, 208, 0x4c4e, 0x4c696e6469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3171, 208, 0x4d59, 0x4d616e79617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3172, 208, 0x4d52, 0x4d617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3173, 208, 0x4d42, 0x4d62657961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3174, 208, 0x4d4f, 0x4d6f726f676f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3175, 208, 0x4d54, 0x4d7477617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3176, 208, 0x4d57, 0x4d77616e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3177, 208, 0x504e, 0x50656d6261204e6f727468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3178, 208, 0x5053, 0x50656d626120536f757468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3179, 208, 0x5057, 0x5077616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3180, 208, 0x524b, 0x52756b7761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3181, 208, 0x5256, 0x527576756d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3182, 208, 0x5348, 0x5368696e79616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3183, 208, 0x5349, 0x53696e67696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3184, 208, 0x5442, 0x5461626f7261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3185, 208, 0x544e, 0x54616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3186, 208, 0x5a43, 0x5a616e7a696261722043656e7472616c2f536f757468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3187, 208, 0x5a4e, 0x5a616e7a69626172204e6f727468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3188, 208, 0x5a55, 0x5a616e7a6962617220557262616e2f57657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3189, 209, 0x416d6e617420436861726f656e, 0x416d6e617420436861726f656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3190, 209, 0x416e672054686f6e67, 0x416e672054686f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3191, 209, 0x417975747468617961, 0x417975747468617961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3192, 209, 0x42616e676b6f6b, 0x42616e676b6f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3193, 209, 0x4275726972616d, 0x4275726972616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3194, 209, 0x43686163686f656e6773616f, 0x43686163686f656e6773616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3195, 209, 0x43686169204e6174, 0x43686169204e6174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3196, 209, 0x4368616979617068756d, 0x4368616979617068756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3197, 209, 0x4368616e74686162757269, 0x4368616e74686162757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3198, 209, 0x436869616e67204d6169, 0x436869616e67204d6169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3199, 209, 0x436869616e6720526169, 0x436869616e6720526169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3200, 209, 0x43686f6e2042757269, 0x43686f6e2042757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3201, 209, 0x4368756d70686f6e, 0x4368756d70686f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3202, 209, 0x4b616c6173696e, 0x4b616c6173696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3203, 209, 0x4b616d706861656e672050686574, 0x4b616d706861656e672050686574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3204, 209, 0x4b616e6368616e6162757269, 0x4b616e6368616e6162757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3205, 209, 0x4b686f6e204b61656e, 0x4b686f6e204b61656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3206, 209, 0x4b72616269, 0x4b72616269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3207, 209, 0x4c616d70616e67, 0x4c616d70616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3208, 209, 0x4c616d7068756e, 0x4c616d7068756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3209, 209, 0x4c6f6569, 0x4c6f6569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3210, 209, 0x4c6f702042757269, 0x4c6f702042757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3211, 209, 0x4d616520486f6e6720536f6e, 0x4d616520486f6e6720536f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3212, 209, 0x4d61686120536172616b68616d, 0x4d61686120536172616b68616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3213, 209, 0x4d756b646168616e, 0x4d756b646168616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3214, 209, 0x4e616b686f6e204e61796f6b, 0x4e616b686f6e204e61796f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3215, 209, 0x4e616b686f6e20506174686f6d, 0x4e616b686f6e20506174686f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3216, 209, 0x4e616b686f6e205068616e6f6d, 0x4e616b686f6e205068616e6f6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3217, 209, 0x4e616b686f6e2052617463686173696d61, 0x4e616b686f6e2052617463686173696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3218, 209, 0x4e616b686f6e20536177616e, 0x4e616b686f6e20536177616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3219, 209, 0x4e616b686f6e205369205468616d6d61726174, 0x4e616b686f6e205369205468616d6d61726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3220, 209, 0x4e616e, 0x4e616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3221, 209, 0x4e617261746869776174, 0x4e617261746869776174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3222, 209, 0x4e6f6e6720427561204c616d706875, 0x4e6f6e6720427561204c616d706875, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3223, 209, 0x4e6f6e67204b686169, 0x4e6f6e67204b686169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3224, 209, 0x4e6f6e74686162757269, 0x4e6f6e74686162757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3225, 209, 0x50617468756d205468616e69, 0x50617468756d205468616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3226, 209, 0x50617474616e69, 0x50617474616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3227, 209, 0x5068616e676e6761, 0x5068616e676e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3228, 209, 0x506861747468616c756e67, 0x506861747468616c756e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3229, 209, 0x50686179616f, 0x50686179616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3230, 209, 0x5068657463686162756e, 0x5068657463686162756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3231, 209, 0x5068657463686162757269, 0x5068657463686162757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3232, 209, 0x50686963686974, 0x50686963686974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3233, 209, 0x5068697473616e756c6f6b, 0x5068697473616e756c6f6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3234, 209, 0x5068726165, 0x5068726165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3235, 209, 0x5068756b6574, 0x5068756b6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3236, 209, 0x5072616368696e2042757269, 0x5072616368696e2042757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3237, 209, 0x5072616368756170204b68697269204b68616e, 0x5072616368756170204b68697269204b68616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3238, 209, 0x52616e6f6e67, 0x52616e6f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3239, 209, 0x52617463686162757269, 0x52617463686162757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3240, 209, 0x5261796f6e67, 0x5261796f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3241, 209, 0x526f69204574, 0x526f69204574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3242, 209, 0x5361204b61656f, 0x5361204b61656f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3243, 209, 0x53616b6f6e204e616b686f6e, 0x53616b6f6e204e616b686f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3244, 209, 0x53616d7574205072616b616e, 0x53616d7574205072616b616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3245, 209, 0x53616d75742053616b686f6e, 0x53616d75742053616b686f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3246, 209, 0x53616d757420536f6e676b6872616d, 0x53616d757420536f6e676b6872616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3247, 209, 0x536172612042757269, 0x536172612042757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3248, 209, 0x536174756e, 0x536174756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3249, 209, 0x53696e672042757269, 0x53696e672042757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3250, 209, 0x536973616b6574, 0x536973616b6574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3251, 209, 0x536f6e676b686c61, 0x536f6e676b686c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3252, 209, 0x53756b686f74686169, 0x53756b686f74686169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3253, 209, 0x53757068616e2042757269, 0x53757068616e2042757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3254, 209, 0x5375726174205468616e69, 0x5375726174205468616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3255, 209, 0x537572696e, 0x537572696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3256, 209, 0x54616b, 0x54616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3257, 209, 0x5472616e67, 0x5472616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3258, 209, 0x54726174, 0x54726174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3259, 209, 0x55626f6e205261746368617468616e69, 0x55626f6e205261746368617468616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3260, 209, 0x55646f6e205468616e69, 0x55646f6e205468616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3261, 209, 0x5574686169205468616e69, 0x5574686169205468616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3262, 209, 0x557474617261646974, 0x557474617261646974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3263, 209, 0x59616c61, 0x59616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3264, 209, 0x5961736f74686f6e, 0x5961736f74686f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3265, 210, 0x4b, 0x4b617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3266, 210, 0x50, 0x506c617465617578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3267, 210, 0x53, 0x536176616e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3268, 210, 0x43, 0x43656e7472616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3269, 210, 0x4d, 0x4d61726974696d65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3270, 211, 0x41, 0x4174616675, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3271, 211, 0x46, 0x46616b616f666f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3272, 211, 0x4e, 0x4e756b756e6f6e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3273, 212, 0x48, 0x48612761706169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3274, 212, 0x54, 0x546f6e676174617075, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3275, 212, 0x56, 0x566176612775, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3276, 213, 0x4354, 0x436f7576612f5461626171756974652f54616c7061726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3277, 213, 0x444d, 0x446965676f204d617274696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3278, 213, 0x4d52, 0x4d617961726f2f52696f20436c61726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3279, 213, 0x5044, 0x50656e616c2f44656265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3280, 213, 0x5054, 0x5072696e63657320546f776e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3281, 213, 0x5347, 0x53616e677265204772616e6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3282, 213, 0x534c, 0x53616e204a75616e2f4c6176656e74696c6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3283, 213, 0x5349, 0x53697061726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3284, 213, 0x5450, 0x54756e6170756e612f50696172636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3285, 213, 0x5053, 0x506f7274206f6620537061696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3286, 213, 0x5346, 0x53616e204665726e616e646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3287, 213, 0x4152, 0x4172696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3288, 213, 0x5046, 0x506f696e7420466f7274696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3289, 213, 0x4348, 0x4368616775616e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3290, 213, 0x544f, 0x546f6261676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3291, 214, 0x4152, 0x417269616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3292, 214, 0x424a, 0x42656a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3293, 214, 0x4241, 0x42656e2041726f7573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3294, 214, 0x4249, 0x42697a65727465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3295, 214, 0x4742, 0x4761626573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3296, 214, 0x4746, 0x4761667361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3297, 214, 0x4a45, 0x4a656e646f756261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3298, 214, 0x4b52, 0x4b6169726f75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3299, 214, 0x4b53, 0x4b6173736572696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3300, 214, 0x4b42, 0x4b6562696c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3301, 214, 0x4b46, 0x4b6566, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3302, 214, 0x4d48, 0x4d6168646961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3303, 214, 0x4d4e, 0x4d616e6f756261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3304, 214, 0x4d45, 0x4d6564656e696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3305, 214, 0x4d4f, 0x4d6f6e6173746972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3306, 214, 0x4e41, 0x4e616265756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3307, 214, 0x5346, 0x53666178, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3308, 214, 0x5344, 0x53696469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3309, 214, 0x534c, 0x53696c69616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3310, 214, 0x534f, 0x536f75737365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3311, 214, 0x5441, 0x546174616f75696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3312, 214, 0x544f, 0x546f7a657572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3313, 214, 0x5455, 0x54756e6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3314, 214, 0x5a41, 0x5a6167686f75616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3315, 215, 0x414441, 0x4164616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3316, 215, 0x414449, 0x41646979616d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3317, 215, 0x414659, 0x4166796f6e6b6172616869736172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3318, 215, 0x414752, 0x41677269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3319, 215, 0x414b53, 0x416b7361726179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3320, 215, 0x414d41, 0x416d61737961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3321, 215, 0x414e4b, 0x416e6b617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3322, 215, 0x414e54, 0x416e74616c7961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3323, 215, 0x415244, 0x4172646168616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3324, 215, 0x415254, 0x41727476696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3325, 215, 0x415949, 0x417964696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3326, 215, 0x42414c, 0x42616c696b65736972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3327, 215, 0x424152, 0x42617274696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3328, 215, 0x424154, 0x4261746d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3329, 215, 0x424159, 0x42617962757274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3330, 215, 0x42494c, 0x42696c6563696b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3331, 215, 0x42494e, 0x42696e676f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3332, 215, 0x424954, 0x4269746c6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3333, 215, 0x424f4c, 0x426f6c75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3334, 215, 0x425244, 0x427572647572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3335, 215, 0x425253, 0x4275727361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3336, 215, 0x434b4c, 0x43616e616b6b616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3337, 215, 0x434b52, 0x43616e6b697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3338, 215, 0x434f52, 0x436f72756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3339, 215, 0x44454e, 0x44656e697a6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3340, 215, 0x444959, 0x446979617262616b6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3341, 215, 0x44555a, 0x44757a6365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3342, 215, 0x454449, 0x456469726e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3343, 215, 0x454c41, 0x456c617a6967, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3344, 215, 0x455a43, 0x45727a696e63616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3345, 215, 0x455a52, 0x45727a7572756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3346, 215, 0x45534b, 0x45736b697365686972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3347, 215, 0x47415a, 0x47617a69616e746570, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3348, 215, 0x474952, 0x4769726573756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3349, 215, 0x474d53, 0x47756d757368616e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3350, 215, 0x484b52, 0x48616b6b617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3351, 215, 0x485459, 0x4861746179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3352, 215, 0x494744, 0x4967646972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3353, 215, 0x495350, 0x49737061727461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3354, 215, 0x495354, 0x497374616e62756c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3355, 215, 0x495a4d, 0x497a6d6972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3356, 215, 0x4b4148, 0x4b616872616d616e6d61726173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3357, 215, 0x4b5242, 0x4b61726162756b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3358, 215, 0x4b524d, 0x4b6172616d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3359, 215, 0x4b5253, 0x4b617273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3360, 215, 0x4b4153, 0x4b617374616d6f6e75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3361, 215, 0x4b4159, 0x4b617973657269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3362, 215, 0x4b4c53, 0x4b696c6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3363, 215, 0x4b524b, 0x4b6972696b6b616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3364, 215, 0x4b4c52, 0x4b69726b6c6172656c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3365, 215, 0x4b5248, 0x4b69727365686972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3366, 215, 0x4b4f43, 0x4b6f6361656c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3367, 215, 0x4b4f4e, 0x4b6f6e7961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3368, 215, 0x4b5554, 0x4b757461687961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3369, 215, 0x4d414c, 0x4d616c61747961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3370, 215, 0x4d414e, 0x4d616e697361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3371, 215, 0x4d4152, 0x4d617264696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3372, 215, 0x4d4552, 0x4d657273696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3373, 215, 0x4d5547, 0x4d75676c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3374, 215, 0x4d5553, 0x4d7573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3375, 215, 0x4e4556, 0x4e65767365686972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3376, 215, 0x4e4947, 0x4e69676465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3377, 215, 0x4f5244, 0x4f726475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3378, 215, 0x4f534d, 0x4f736d616e697965, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3379, 215, 0x52495a, 0x52697a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3380, 215, 0x53414b, 0x53616b61727961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3381, 215, 0x53414d, 0x53616d73756e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3382, 215, 0x53414e, 0x53616e6c6975726661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3383, 215, 0x534949, 0x5369697274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3384, 215, 0x53494e, 0x53696e6f70, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3385, 215, 0x534952, 0x5369726e616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3386, 215, 0x534956, 0x5369766173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3387, 215, 0x54454c, 0x54656b6972646167, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3388, 215, 0x544f4b, 0x546f6b6174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3389, 215, 0x545241, 0x547261627a6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3390, 215, 0x54554e, 0x54756e63656c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3391, 215, 0x55534b, 0x5573616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3392, 215, 0x56414e, 0x56616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3393, 215, 0x59414c, 0x59616c6f7661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3394, 215, 0x594f5a, 0x596f7a676174, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3395, 215, 0x5a4f4e, 0x5a6f6e67756c64616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3396, 216, 0x41, 0x4168616c2057656c6179617479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3397, 216, 0x42, 0x42616c6b616e2057656c6179617479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3398, 216, 0x44, 0x44617368686f77757a2057656c6179617479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3399, 216, 0x4c, 0x4c656261702057656c6179617479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3400, 216, 0x4d, 0x4d6172792057656c6179617479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3401, 217, 0x4143, 0x416d626572677269732043617973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3402, 217, 0x4443, 0x44656c6c697320436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3403, 217, 0x4643, 0x4672656e636820436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3404, 217, 0x4c57, 0x4c6974746c6520576174657220436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3405, 217, 0x5243, 0x506172726f7420436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3406, 217, 0x504e, 0x50696e6520436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3407, 217, 0x534c, 0x53616c7420436179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3408, 217, 0x4754, 0x4772616e64205475726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3409, 217, 0x5343, 0x536f75746820436169636f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3410, 217, 0x4543, 0x4561737420436169636f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3411, 217, 0x4d43, 0x4d6964646c6520436169636f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3412, 217, 0x4e43, 0x4e6f72746820436169636f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3413, 217, 0x5052, 0x50726f766964656e6369616c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3414, 217, 0x5743, 0x5765737420436169636f73, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3415, 218, 0x4e4d47, 0x4e616e756d616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3416, 218, 0x4e4c4b, 0x4e69756c616b697461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3417, 218, 0x4e544f, 0x4e697574616f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3418, 218, 0x46554e, 0x46756e6166757469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3419, 218, 0x4e4d45, 0x4e616e756d6561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3420, 218, 0x4e5549, 0x4e7569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3421, 218, 0x4e4654, 0x4e756b756665746175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3422, 218, 0x4e4c4c, 0x4e756b756c61656c6165, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3423, 218, 0x564149, 0x56616974757075, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3424, 219, 0x4b414c, 0x4b616c616e67616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3425, 219, 0x4b4d50, 0x4b616d70616c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3426, 219, 0x4b4159, 0x4b6179756e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3427, 219, 0x4b4942, 0x4b69626f6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3428, 219, 0x4c5557, 0x4c757765726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3429, 219, 0x4d4153, 0x4d6173616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3430, 219, 0x4d5049, 0x4d70696769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3431, 219, 0x4d5542, 0x4d7562656e6465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3432, 219, 0x4d554b, 0x4d756b6f6e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3433, 219, 0x4e4b53, 0x4e616b61736f6e676f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3434, 219, 0x52414b, 0x52616b6169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3435, 219, 0x53454d, 0x53656d626162756c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3436, 219, 0x57414b, 0x57616b69736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3437, 219, 0x425547, 0x427567697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3438, 219, 0x425553, 0x4275736961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3439, 219, 0x494741, 0x4967616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3440, 219, 0x4a494e, 0x4a696e6a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3441, 219, 0x4b4142, 0x4b61626572616d6169646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3442, 219, 0x4b4d4c, 0x4b616d756c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3443, 219, 0x4b5043, 0x4b617063686f727761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3444, 219, 0x4b544b, 0x4b6174616b7769, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3445, 219, 0x4b554d, 0x4b756d69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3446, 219, 0x4d4159, 0x4d6179756765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3447, 219, 0x4d4241, 0x4d62616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3448, 219, 0x50414c, 0x50616c6c697361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3449, 219, 0x534952, 0x5369726f6e6b6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3450, 219, 0x534f52, 0x536f726f7469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3451, 219, 0x544f52, 0x546f726f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3452, 219, 0x41444a, 0x41646a756d616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3453, 219, 0x415043, 0x41706163, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3454, 219, 0x415255, 0x41727561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3455, 219, 0x47554c, 0x47756c75, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3456, 219, 0x4b4954, 0x4b697467756d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3457, 219, 0x4b4f54, 0x4b6f7469646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3458, 219, 0x4c4952, 0x4c697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3459, 219, 0x4d5254, 0x4d6f726f746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3460, 219, 0x4d4f59, 0x4d6f796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3461, 219, 0x4e414b, 0x4e616b61706972697069726974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3462, 219, 0x4e4542, 0x4e65626269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3463, 219, 0x504144, 0x5061646572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3464, 219, 0x59554d, 0x59756d6265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3465, 219, 0x42554e, 0x42756e6469627567796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3466, 219, 0x425348, 0x42757368656e7969, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3467, 219, 0x484f49, 0x486f696d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3468, 219, 0x4b424c, 0x4b6162616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3469, 219, 0x4b4152, 0x4b616261726f6c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3470, 219, 0x4b414d, 0x4b616d77656e6765, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3471, 219, 0x4b414e, 0x4b616e756e6775, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3472, 219, 0x4b4153, 0x4b6173657365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3473, 219, 0x4b4241, 0x4b696261616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3474, 219, 0x4b4953, 0x4b69736f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3475, 219, 0x4b5945, 0x4b79656e6a6f6a6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3476, 219, 0x4d534e, 0x4d6173696e6469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3477, 219, 0x4d4252, 0x4d626172617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3478, 219, 0x4e5455, 0x4e74756e67616d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3479, 219, 0x52554b, 0x52756b756e67697269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3480, 220, 0x434b, 0x436865726b617379, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3481, 220, 0x4348, 0x436865726e69686976, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3482, 220, 0x4356, 0x436865726e6976747369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3483, 220, 0x4352, 0x4372696d6561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3484, 220, 0x444e, 0x446e6970726f706574726f7673276b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3485, 220, 0x444f, 0x446f6e657473276b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3486, 220, 0x4956, 0x4976616e6f2d4672616e6b697673276b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3487, 220, 0x4b4c, 0x4b6861726b6976204b686572736f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3488, 220, 0x4b4d, 0x4b686d656c276e797473276b7979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3489, 220, 0x4b52, 0x4b69726f766f68726164, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3490, 220, 0x4b56, 0x4b696576, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3491, 220, 0x4b59, 0x4b79796976, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3492, 220, 0x4c55, 0x4c7568616e73276b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3493, 220, 0x4c56, 0x4c27766976, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3494, 220, 0x4d59, 0x4d796b6f6c61796976, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3495, 220, 0x4f44, 0x4f64657361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3496, 220, 0x504f, 0x506f6c74617661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3497, 220, 0x5249, 0x5269766e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3498, 220, 0x5345, 0x5365766173746f706f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3499, 220, 0x5355, 0x53756d79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3500, 220, 0x5445, 0x5465726e6f70696c27, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3501, 220, 0x5649, 0x56696e6e7974737961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3502, 220, 0x564f, 0x566f6c796e27, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3503, 220, 0x5a4b, 0x5a616b6172706174747961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3504, 220, 0x5a41, 0x5a61706f72697a687a687961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3505, 220, 0x5a48, 0x5a6879746f6d7972, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3506, 221, 0x415a, 0x416275205a616279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3507, 221, 0x414a, 0x27416a6d616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3508, 221, 0x4655, 0x416c2046756a6179726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3509, 221, 0x5348, 0x417368205368617269716168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3510, 221, 0x4455, 0x447562617979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3511, 221, 0x524b, 0x5227617320616c204b6861796d6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3512, 221, 0x5551, 0x556d6d20616c205161797761796e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3513, 222, 0x41424e, 0x416265726465656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3514, 222, 0x41424e53, 0x416265726465656e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3515, 222, 0x414e47, 0x416e676c65736579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3516, 222, 0x414753, 0x416e677573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3517, 222, 0x415259, 0x417267796c6c20616e642042757465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3518, 222, 0x42454453, 0x426564666f72647368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3519, 222, 0x4245524b53, 0x4265726b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3520, 222, 0x424c41, 0x426c61656e6175204777656e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3521, 222, 0x425249, 0x4272696467656e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3522, 222, 0x4253544c, 0x42726973746f6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3523, 222, 0x4255434b53, 0x4275636b696e6768616d7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3524, 222, 0x434145, 0x436165727068696c6c79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3525, 222, 0x43414d4253, 0x43616d6272696467657368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3526, 222, 0x434446, 0x43617264696666, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3527, 222, 0x4341524d, 0x4361726d61727468656e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3528, 222, 0x4344474e, 0x43657265646967696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3529, 222, 0x43484553, 0x4368657368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3530, 222, 0x434c41434b, 0x436c61636b6d616e6e616e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3531, 222, 0x434f4e, 0x436f6e7779, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3532, 222, 0x434f524e, 0x436f726e77616c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3533, 222, 0x444e4247, 0x44656e626967687368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3534, 222, 0x4445524259, 0x44657262797368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3535, 222, 0x44564e, 0x4465766f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3536, 222, 0x444f52, 0x446f72736574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3537, 222, 0x44474c, 0x44756d667269657320616e642047616c6c6f776179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3538, 222, 0x44554e44, 0x44756e646565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3539, 222, 0x44484d, 0x44757268616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3540, 222, 0x41525945, 0x45617374204179727368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3541, 222, 0x44554e4245, 0x456173742044756e626172746f6e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3542, 222, 0x4c4f5445, 0x45617374204c6f746869616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3543, 222, 0x52454e45, 0x456173742052656e667265777368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3544, 222, 0x45525953, 0x4561737420526964696e67206f6620596f726b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3545, 222, 0x535845, 0x4561737420537573736578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3546, 222, 0x4544494e, 0x4564696e6275726768, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3547, 222, 0x455358, 0x4573736578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3548, 222, 0x46414c4b, 0x46616c6b69726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3549, 222, 0x464645, 0x46696665, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3550, 222, 0x464c494e54, 0x466c696e747368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3551, 222, 0x474c4153, 0x476c6173676f77, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3552, 222, 0x474c4f53, 0x476c6f756365737465727368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3553, 222, 0x4c444e, 0x47726561746572204c6f6e646f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3554, 222, 0x4d4348, 0x47726561746572204d616e63686573746572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3555, 222, 0x474444, 0x4777796e656464, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3556, 222, 0x48414e5453, 0x48616d707368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3557, 222, 0x485752, 0x48657265666f72647368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3558, 222, 0x4845525453, 0x48657274666f72647368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3559, 222, 0x484c44, 0x486967686c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3560, 222, 0x49564552, 0x496e766572636c796465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3561, 222, 0x494f57, 0x49736c65206f66205769676874, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3562, 222, 0x4b4e54, 0x4b656e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3563, 222, 0x4c414e4353, 0x4c616e63617368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3564, 222, 0x4c45494353, 0x4c65696365737465727368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3565, 222, 0x4c494e4353, 0x4c696e636f6c6e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3566, 222, 0x4d5359, 0x4d657273657973696465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3567, 222, 0x4d455254, 0x4d6572746879722054796466696c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3568, 222, 0x4d4c4f54, 0x4d69646c6f746869616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3569, 222, 0x4d4d4f555448, 0x4d6f6e6d6f7574687368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3570, 222, 0x4d4f524159, 0x4d6f726179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3571, 222, 0x4e505254414c, 0x4e6561746820506f72742054616c626f74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3572, 222, 0x4e45575054, 0x4e6577706f7274, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3573, 222, 0x4e4f52, 0x4e6f72666f6c6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3574, 222, 0x4152594e, 0x4e6f727468204179727368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3575, 222, 0x4c414e4e, 0x4e6f727468204c616e61726b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3576, 222, 0x59534e, 0x4e6f72746820596f726b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3577, 222, 0x4e484d, 0x4e6f727468616d70746f6e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3578, 222, 0x4e4c44, 0x4e6f727468756d6265726c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3579, 222, 0x4e4f54, 0x4e6f7474696e6768616d7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3580, 222, 0x4f524b, 0x4f726b6e65792049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3581, 222, 0x4f4645, 0x4f78666f72647368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3582, 222, 0x50454d, 0x50656d62726f6b657368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3583, 222, 0x5045525448, 0x506572746820616e64204b696e726f7373, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3584, 222, 0x505753, 0x506f777973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3585, 222, 0x52454e, 0x52656e667265777368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3586, 222, 0x52484f4e, 0x52686f6e6464612043796e6f6e2054616666, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3587, 222, 0x525554, 0x5275746c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3588, 222, 0x424f52, 0x53636f747469736820426f7264657273, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3589, 222, 0x53484554, 0x536865746c616e642049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3590, 222, 0x535045, 0x5368726f707368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3591, 222, 0x534f4d, 0x536f6d6572736574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3592, 222, 0x41525953, 0x536f757468204179727368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3593, 222, 0x4c414e53, 0x536f757468204c616e61726b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3594, 222, 0x595353, 0x536f75746820596f726b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3595, 222, 0x534644, 0x53746166666f72647368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3596, 222, 0x53544952, 0x537469726c696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3597, 222, 0x53464b, 0x537566666f6c6b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3598, 222, 0x535259, 0x537572726579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3599, 222, 0x5357414e, 0x5377616e736561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3600, 222, 0x544f5246, 0x546f726661656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3601, 222, 0x545752, 0x54796e6520616e642057656172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3602, 222, 0x56474c414d, 0x56616c65206f6620476c616d6f7267616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3603, 222, 0x5741524b53, 0x5761727769636b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3604, 222, 0x5744554e, 0x576573742044756e626172746f6e7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3605, 222, 0x574c4f54, 0x57657374204c6f746869616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3606, 222, 0x574d44, 0x57657374204d69646c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3607, 222, 0x535857, 0x5765737420537573736578, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3608, 222, 0x595357, 0x5765737420596f726b7368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3609, 222, 0x57494c, 0x5765737465726e2049736c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3610, 222, 0x574c54, 0x57696c747368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3611, 222, 0x574f524353, 0x576f726365737465727368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3612, 222, 0x575258, 0x5772657868616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3613, 223, 0x414c, 0x416c6162616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3614, 223, 0x414b, 0x416c61736b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3615, 223, 0x4153, 0x416d65726963616e2053616d6f61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3616, 223, 0x415a, 0x4172697a6f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3617, 223, 0x4152, 0x41726b616e736173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3618, 223, 0x4146, 0x41726d656420466f7263657320416672696361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3619, 223, 0x4141, 0x41726d656420466f7263657320416d657269636173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3620, 223, 0x4143, 0x41726d656420466f726365732043616e616461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3621, 223, 0x4145, 0x41726d656420466f72636573204575726f7065, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3622, 223, 0x414d, 0x41726d656420466f72636573204d6964646c652045617374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3623, 223, 0x4150, 0x41726d656420466f726365732050616369666963, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3624, 223, 0x4341, 0x43616c69666f726e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3625, 223, 0x434f, 0x436f6c6f7261646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3626, 223, 0x4354, 0x436f6e6e65637469637574, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3627, 223, 0x4445, 0x44656c6177617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3628, 223, 0x4443, 0x4469737472696374206f6620436f6c756d626961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3629, 223, 0x464d, 0x46656465726174656420537461746573204f66204d6963726f6e65736961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3630, 223, 0x464c, 0x466c6f72696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3631, 223, 0x4741, 0x47656f72676961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3632, 223, 0x4755, 0x4775616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3633, 223, 0x4849, 0x486177616969, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3634, 223, 0x4944, 0x496461686f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3635, 223, 0x494c, 0x496c6c696e6f6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3636, 223, 0x494e, 0x496e6469616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3637, 223, 0x4941, 0x496f7761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3638, 223, 0x4b53, 0x4b616e736173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3639, 223, 0x4b59, 0x4b656e7475636b79, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3640, 223, 0x4c41, 0x4c6f75697369616e61, 1, 4.00000);
INSERT INTO `oc_country_zones` VALUES (3641, 223, 0x4d45, 0x4d61696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3642, 223, 0x4d48, 0x4d61727368616c6c2049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3643, 223, 0x4d44, 0x4d6172796c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3644, 223, 0x4d41, 0x4d617373616368757365747473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3645, 223, 0x4d49, 0x4d6963686967616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3646, 223, 0x4d4e, 0x4d696e6e65736f7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3647, 223, 0x4d53, 0x4d69737369737369707069, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3648, 223, 0x4d4f, 0x4d6973736f757269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3649, 223, 0x4d54, 0x4d6f6e74616e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3650, 223, 0x4e45, 0x4e65627261736b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3651, 223, 0x4e56, 0x4e6576616461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3652, 223, 0x4e48, 0x4e65772048616d707368697265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3653, 223, 0x4e4a, 0x4e6577204a6572736579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3654, 223, 0x4e4d, 0x4e6577204d657869636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3655, 223, 0x4e59, 0x4e657720596f726b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3656, 223, 0x4e43, 0x4e6f727468204361726f6c696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3657, 223, 0x4e44, 0x4e6f7274682044616b6f7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3658, 223, 0x4d50, 0x4e6f72746865726e204d617269616e612049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3659, 223, 0x4f48, 0x4f68696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3660, 223, 0x4f4b, 0x4f6b6c61686f6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3661, 223, 0x4f52, 0x4f7265676f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3662, 223, 0x5057, 0x50616c6175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3663, 223, 0x5041, 0x50656e6e73796c76616e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3664, 223, 0x5052, 0x50756572746f205269636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3665, 223, 0x5249, 0x52686f64652049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3666, 223, 0x5343, 0x536f757468204361726f6c696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3667, 223, 0x5344, 0x536f7574682044616b6f7461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3668, 223, 0x544e, 0x54656e6e6573736565, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3669, 223, 0x5458, 0x5465786173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3670, 223, 0x5554, 0x55746168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3671, 223, 0x5654, 0x5665726d6f6e74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3672, 223, 0x5649, 0x56697267696e2049736c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3673, 223, 0x5641, 0x56697267696e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3674, 223, 0x5741, 0x57617368696e67746f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3675, 223, 0x5756, 0x576573742056697267696e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3676, 223, 0x5749, 0x576973636f6e73696e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3677, 223, 0x5759, 0x57796f6d696e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3678, 224, 0x4249, 0x42616b65722049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3679, 224, 0x4849, 0x486f776c616e642049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3680, 224, 0x4a49, 0x4a61727669732049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3681, 224, 0x4a41, 0x4a6f686e73746f6e2041746f6c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3682, 224, 0x4b52, 0x4b696e676d616e2052656566, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3683, 224, 0x4d41, 0x4d69647761792041746f6c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3684, 224, 0x4e49, 0x4e6176617373612049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3685, 224, 0x5041, 0x50616c6d7972612041746f6c6c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3686, 224, 0x5749, 0x57616b652049736c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3687, 225, 0x4152, 0x41727469676173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3688, 225, 0x4341, 0x43616e656c6f6e6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3689, 225, 0x434c, 0x436572726f204c6172676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3690, 225, 0x434f, 0x436f6c6f6e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3691, 225, 0x4455, 0x447572617a6e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3692, 225, 0x4653, 0x466c6f726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3693, 225, 0x4641, 0x466c6f72696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3694, 225, 0x4c41, 0x4c6176616c6c656a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3695, 225, 0x4d41, 0x4d616c646f6e61646f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3696, 225, 0x4d4f, 0x4d6f6e7465766964656f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3697, 225, 0x5041, 0x50617973616e6475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3698, 225, 0x524e, 0x52696f204e6567726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3699, 225, 0x5256, 0x526976657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3700, 225, 0x524f, 0x526f636861, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3701, 225, 0x534c, 0x53616c746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3702, 225, 0x534a, 0x53616e204a6f7365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3703, 225, 0x534f, 0x536f7269616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3704, 225, 0x5441, 0x546163756172656d626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3705, 225, 0x5454, 0x547265696e746120792054726573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3706, 226, 0x414e, 0x416e64696a6f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3707, 226, 0x4255, 0x4275786f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3708, 226, 0x4641, 0x46617267276f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3709, 226, 0x4a49, 0x4a697a7a6178, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3710, 226, 0x4e47, 0x4e616d616e67616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3711, 226, 0x4e57, 0x4e61766f6979, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3712, 226, 0x5141, 0x516173687161646172796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3713, 226, 0x5152, 0x516f726171616c706f67276973746f6e2052657075626c696b617369, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3714, 226, 0x5341, 0x53616d617271616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3715, 226, 0x5349, 0x536972646172796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3716, 226, 0x5355, 0x537572786f6e646172796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3717, 226, 0x544b, 0x546f73686b656e742043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3718, 226, 0x544f, 0x546f73686b656e7420526567696f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3719, 226, 0x584f, 0x586f72617a6d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3720, 227, 0x4d41, 0x4d616c616d7061, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3721, 227, 0x5045, 0x50656e616d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3722, 227, 0x5341, 0x53616e6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3723, 227, 0x5348, 0x5368656661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3724, 227, 0x5441, 0x5461666561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3725, 227, 0x544f, 0x546f726261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3726, 229, 0x414d, 0x416d617a6f6e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3727, 229, 0x414e, 0x416e7a6f617465677569, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3728, 229, 0x4150, 0x4170757265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3729, 229, 0x4152, 0x417261677561, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3730, 229, 0x4241, 0x426172696e6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3731, 229, 0x424f, 0x426f6c69766172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3732, 229, 0x4341, 0x43617261626f626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3733, 229, 0x434f, 0x436f6a65646573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3734, 229, 0x4441, 0x44656c746120416d616375726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3735, 229, 0x4446, 0x446570656e64656e63696173204665646572616c6573, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3736, 229, 0x4449, 0x446973747269746f204665646572616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3737, 229, 0x4641, 0x46616c636f6e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3738, 229, 0x4755, 0x4775617269636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3739, 229, 0x4c41, 0x4c617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3740, 229, 0x4d45, 0x4d6572696461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3741, 229, 0x4d49, 0x4d6972616e6461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3742, 229, 0x4d4f, 0x4d6f6e61676173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3743, 229, 0x4e45, 0x4e756576612045737061727461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3744, 229, 0x504f, 0x506f7274756775657361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3745, 229, 0x5355, 0x5375637265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3746, 229, 0x5441, 0x54616368697261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3747, 229, 0x5452, 0x5472756a696c6c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3748, 229, 0x5641, 0x566172676173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3749, 229, 0x5941, 0x59617261637579, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3750, 229, 0x5a55, 0x5a756c6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3751, 230, 0x4147, 0x416e204769616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3752, 230, 0x4247, 0x426163204769616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3753, 230, 0x424b, 0x426163204b616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3754, 230, 0x424c, 0x426163204c696575, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3755, 230, 0x4243, 0x426163204e696e68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3756, 230, 0x4252, 0x4261205269612d56756e6720546175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3757, 230, 0x424e, 0x42656e20547265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3758, 230, 0x4248, 0x42696e682044696e68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3759, 230, 0x4255, 0x42696e682044756f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3760, 230, 0x4250, 0x42696e68205068756f63, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3761, 230, 0x4254, 0x42696e6820546875616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3762, 230, 0x434d, 0x4361204d6175, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3763, 230, 0x4354, 0x43616e2054686f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3764, 230, 0x4342, 0x43616f2042616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3765, 230, 0x444c, 0x44616b204c616b, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3766, 230, 0x4447, 0x44616b204e6f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3767, 230, 0x444e, 0x4461204e616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3768, 230, 0x4442, 0x4469656e204269656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3769, 230, 0x4449, 0x446f6e67204e6169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3770, 230, 0x4454, 0x446f6e672054686170, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3771, 230, 0x474c, 0x476961204c6169, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3772, 230, 0x4847, 0x4861204769616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3773, 230, 0x4844, 0x4861692044756f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3774, 230, 0x4850, 0x4861692050686f6e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3775, 230, 0x484d, 0x4861204e616d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3776, 230, 0x4849, 0x4861204e6f69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3777, 230, 0x4854, 0x486120546179, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3778, 230, 0x4848, 0x48612054696e68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3779, 230, 0x4842, 0x486f612042696e68, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3780, 230, 0x4843, 0x486f20436869204d696e682043697479, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3781, 230, 0x4855, 0x486175204769616e67, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3782, 230, 0x4859, 0x48756e672059656e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3783, 232, 0x43, 0x5361696e742043726f6978, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3784, 232, 0x4a, 0x5361696e74204a6f686e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3785, 232, 0x54, 0x5361696e742054686f6d6173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3786, 233, 0x41, 0x416c6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3787, 233, 0x53, 0x536967617665, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3788, 233, 0x57, 0x57616c6c6973, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3789, 235, 0x4142, 0x416279616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3790, 235, 0x4144, 0x4164616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3791, 235, 0x414d, 0x416d72616e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3792, 235, 0x4241, 0x416c204261796461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3793, 235, 0x4441, 0x41642044616c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3794, 235, 0x4448, 0x4468616d6172, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3795, 235, 0x4844, 0x48616472616d617774, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3796, 235, 0x484a, 0x48616a6a6168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3797, 235, 0x4855, 0x416c204875646179646168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3798, 235, 0x4942, 0x496262, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3799, 235, 0x4a41, 0x416c204a617766, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3800, 235, 0x4c41, 0x4c6168696a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3801, 235, 0x4d41, 0x4d6127726962, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3802, 235, 0x4d52, 0x416c204d6168726168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3803, 235, 0x4d57, 0x416c204d6168776974, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3804, 235, 0x5344, 0x536127646168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3805, 235, 0x534e, 0x53616e2761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3806, 235, 0x5348, 0x53686162776168, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3807, 235, 0x5441, 0x546127697a7a, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3808, 236, 0x4b4f53, 0x4b6f736f766f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3809, 236, 0x4d4f4e, 0x4d6f6e74656e6567726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3810, 236, 0x534552, 0x536572626961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3811, 236, 0x564f4a, 0x566f6a766f64696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3812, 237, 0x4243, 0x4261732d436f6e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3813, 237, 0x424e, 0x42616e64756e6475, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3814, 237, 0x4551, 0x4571756174657572, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3815, 237, 0x4b41, 0x4b6174616e6761, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3816, 237, 0x4b45, 0x4b617361692d4f7269656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3817, 237, 0x4b4e, 0x4b696e7368617361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3818, 237, 0x4b57, 0x4b617361692d4f63636964656e74616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3819, 237, 0x4d41, 0x4d616e69656d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3820, 237, 0x4e4b, 0x4e6f72642d4b697675, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3821, 237, 0x4f52, 0x4f7269656e74616c65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3822, 237, 0x534b, 0x5375642d4b697675, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3823, 238, 0x4345, 0x43656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3824, 238, 0x4342, 0x436f7070657262656c74, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3825, 238, 0x4541, 0x4561737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3826, 238, 0x4c50, 0x4c756170756c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3827, 238, 0x4c4b, 0x4c7573616b61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3828, 238, 0x4e4f, 0x4e6f72746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3829, 238, 0x4e57, 0x4e6f7274682d5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3830, 238, 0x534f, 0x536f75746865726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3831, 238, 0x5745, 0x5765737465726e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3832, 239, 0x4255, 0x42756c617761796f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3833, 239, 0x4841, 0x486172617265, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3834, 239, 0x4d4c, 0x4d616e6963616c616e64, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3835, 239, 0x4d43, 0x4d6173686f6e616c616e642043656e7472616c, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3836, 239, 0x4d45, 0x4d6173686f6e616c616e642045617374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3837, 239, 0x4d57, 0x4d6173686f6e616c616e642057657374, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3838, 239, 0x4d56, 0x4d617376696e676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3839, 239, 0x4d4e, 0x4d61746162656c656c616e64204e6f727468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3840, 239, 0x4d53, 0x4d61746162656c656c616e6420536f757468, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3841, 239, 0x4d44, 0x4d69646c616e6473, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3861, 105, 0x4342, 0x43616d706f626173736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3862, 105, 0x4349, 0x436172626f6e69612d49676c6573696173, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3863, 105, 0x4345, 0x43617365727461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3864, 105, 0x4354, 0x436174616e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3865, 105, 0x435a, 0x436174616e7a61726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3866, 105, 0x4348, 0x436869657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3867, 105, 0x434f, 0x436f6d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3868, 105, 0x4353, 0x436f73656e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3869, 105, 0x4352, 0x4372656d6f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3870, 105, 0x4b52, 0x43726f746f6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3871, 105, 0x434e, 0x43756e656f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3872, 105, 0x454e, 0x456e6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3873, 105, 0x4645, 0x46657272617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3874, 105, 0x4649, 0x466972656e7a65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3875, 105, 0x4647, 0x466f67676961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3876, 105, 0x4643, 0x466f726c692d436573656e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3877, 105, 0x4652, 0x46726f73696e6f6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3878, 105, 0x4745, 0x47656e6f7661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3879, 105, 0x474f, 0x476f72697a6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3880, 105, 0x4752, 0x47726f737365746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3881, 105, 0x494d, 0x496d7065726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3882, 105, 0x4953, 0x497365726e6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3883, 105, 0x4151, 0x4c262333393b417175696c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3884, 105, 0x5350, 0x4c61205370657a6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3885, 105, 0x4c54, 0x4c6174696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3886, 105, 0x4c45, 0x4c65636365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3887, 105, 0x4c43, 0x4c6563636f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3888, 105, 0x4c49, 0x4c69766f726e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3889, 105, 0x4c4f, 0x4c6f6469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3890, 105, 0x4c55, 0x4c75636361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3891, 105, 0x4d43, 0x4d61636572617461, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3892, 105, 0x4d4e, 0x4d616e746f7661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3893, 105, 0x4d53, 0x4d617373612d43617272617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3894, 105, 0x4d54, 0x4d6174657261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3895, 105, 0x5653, 0x4d6564696f2043616d706964616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3896, 105, 0x4d45, 0x4d657373696e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3897, 105, 0x4d49, 0x4d696c616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3898, 105, 0x4d4f, 0x4d6f64656e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3899, 105, 0x4e41, 0x4e61706f6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3900, 105, 0x4e4f, 0x4e6f76617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3901, 105, 0x4e55, 0x4e756f726f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3902, 105, 0x4f47, 0x4f676c696173747261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3903, 105, 0x4f54, 0x4f6c6269612d54656d70696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3904, 105, 0x4f52, 0x4f72697374616e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3905, 105, 0x5044, 0x5061646f7661, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3906, 105, 0x5041, 0x50616c65726d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3907, 105, 0x5052, 0x5061726d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3908, 105, 0x5056, 0x5061766961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3909, 105, 0x5047, 0x50657275676961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3910, 105, 0x5055, 0x50657361726f206520557262696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3911, 105, 0x5045, 0x50657363617261, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3912, 105, 0x5043, 0x50696163656e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3913, 105, 0x5049, 0x50697361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3914, 105, 0x5054, 0x506973746f6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3915, 105, 0x504e, 0x506f7264656e6f6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3916, 105, 0x505a, 0x506f74656e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3917, 105, 0x504f, 0x507261746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3918, 105, 0x5247, 0x526167757361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3919, 105, 0x5241, 0x526176656e6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3920, 105, 0x5243, 0x52656767696f2043616c6162726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3921, 105, 0x5245, 0x52656767696f20456d696c6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3922, 105, 0x5249, 0x5269657469, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3923, 105, 0x524e, 0x52696d696e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3924, 105, 0x524d, 0x526f6d61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3925, 105, 0x524f, 0x526f7669676f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3926, 105, 0x5341, 0x53616c65726e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3927, 105, 0x5353, 0x53617373617269, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3928, 105, 0x5356, 0x5361766f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3929, 105, 0x5349, 0x5369656e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3930, 105, 0x5352, 0x5369726163757361, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3931, 105, 0x534f, 0x536f6e6472696f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3932, 105, 0x5441, 0x546172616e746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3933, 105, 0x5445, 0x546572616d6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3934, 105, 0x5452, 0x5465726e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3935, 105, 0x544f, 0x546f72696e6f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3936, 105, 0x5450, 0x54726170616e69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3937, 105, 0x544e, 0x5472656e746f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3938, 105, 0x5456, 0x5472657669736f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3939, 105, 0x5453, 0x54726965737465, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3940, 105, 0x5544, 0x5564696e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3941, 105, 0x5641, 0x566172657365, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3942, 105, 0x5645, 0x56656e657a6961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3943, 105, 0x5642, 0x56657262616e6f2d437573696f2d4f73736f6c61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3944, 105, 0x5643, 0x56657263656c6c69, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3945, 105, 0x5652, 0x5665726f6e61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3946, 105, 0x5656, 0x5669626f2056616c656e746961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3947, 105, 0x5649, 0x566963656e7a61, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3948, 105, 0x5654, 0x5669746572626f, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3949, 222, 0x414e54, 0x436f756e747920416e7472696d, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3950, 222, 0x41524d, 0x436f756e74792041726d616768, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3951, 222, 0x444f57, 0x436f756e747920446f776e, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3952, 222, 0x464552, 0x436f756e7479204665726d616e616768, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3953, 222, 0x4c4459, 0x436f756e7479204c6f6e646f6e6465727279, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3954, 222, 0x545952, 0x436f756e7479205479726f6e65, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3955, 222, 0x434d41, 0x43756d62726961, 1, 0.00000);
INSERT INTO `oc_country_zones` VALUES (3956, 138, 0x4147, 0x416775617363616c69656e746573, 1, 0.00000);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_country_zone_areas`
-- 

CREATE TABLE `oc_country_zone_areas` (
  `id` int(11) NOT NULL auto_increment,
  `zone_id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `tax` float(10,5) NOT NULL default '0.00000',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_country_zone_areas`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_coupons`
-- 

CREATE TABLE `oc_coupons` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `code` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `whole_order_coupon` tinyint(1) NOT NULL,
  `max_product_instances` mediumint(8) unsigned NOT NULL default '0',
  `max_uses` mediumint(8) unsigned NOT NULL,
  `num_uses` mediumint(8) unsigned NOT NULL,
  `reduction_target` varchar(8) NOT NULL,
  `reduction_type` varchar(10) NOT NULL,
  `reduction_amount` float NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_coupons`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_coupons_products`
-- 

CREATE TABLE `oc_coupons_products` (
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  KEY `promotion_id` (`coupon_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_coupons_products`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customers`
-- 

CREATE TABLE `oc_customers` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `email_subscribe` tinyint(1) default NULL,
  `phone` varchar(32) NOT NULL,
  `company` varchar(128) NOT NULL,
  `default_billing_address` int(11) default NULL,
  `default_shipping_address` int(11) default NULL,
  `ship_to_bill_address` enum('false','true') NOT NULL default 'true',
  `password` varchar(40) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `group_id` int(11) NOT NULL default '1',
  `confirmed` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_customers`
-- 

INSERT INTO `oc_customers` VALUES (1, 'junaid', 'khalil', 'khalil.junaid@gmail.com', 0, '923454318345', 'junaidkhalil', NULL, NULL, 'true', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customers_address_bank`
-- 

CREATE TABLE `oc_customers_address_bank` (
  `id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) default NULL,
  `entry_name` varchar(20) default NULL,
  `field_data` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `oc_customers_address_bank`
-- 

INSERT INTO `oc_customers_address_bank` VALUES (1, 1, NULL, 'a:14:{s:7:"company";s:12:"junaidkhalil";s:9:"firstname";s:6:"junaid";s:8:"lastname";s:6:"khalil";s:5:"email";s:23:"khalil.junaid@gmail.com";s:5:"phone";s:12:"923454318345";s:8:"address1";s:6:"lahore";s:8:"address2";s:6:"lahore";s:4:"city";s:6:"lahore";s:3:"zip";s:5:"54000";s:7:"zone_id";s:4:"2457";s:10:"country_id";s:3:"162";s:4:"zone";s:1:"B";s:7:"country";s:8:"Pakistan";s:12:"country_code";s:2:"PK";}');
INSERT INTO `oc_customers_address_bank` VALUES (2, 1, NULL, 'a:14:{s:7:"company";s:6:"adsasd";s:9:"firstname";s:4:"dasd";s:8:"lastname";s:6:"asdasd";s:5:"email";s:25:"khalil.junaid22@gmail.com";s:5:"phone";s:12:"923454318345";s:8:"address1";s:6:"lahore";s:8:"address2";s:6:"lahore";s:4:"city";s:6:"lahore";s:3:"zip";s:5:"54000";s:7:"zone_id";s:4:"2372";s:10:"country_id";s:3:"154";s:4:"zone";s:2:"LE";s:7:"country";s:9:"Nicaragua";s:12:"country_code";s:2:"NI";}');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_customer_groups`
-- 

CREATE TABLE `oc_customer_groups` (
  `id` int(11) NOT NULL auto_increment,
  `discount` float default NULL,
  `name` varchar(50) default NULL,
  `discount_type` enum('fixed','percent') default 'percent',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `oc_customer_groups`
-- 

INSERT INTO `oc_customer_groups` VALUES (1, 0, 'Shoppers', 'fixed');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_digital_products`
-- 

CREATE TABLE `oc_digital_products` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(100) NOT NULL,
  `max_downloads` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `version` varchar(150) NOT NULL,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_digital_products`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_download_packages`
-- 

CREATE TABLE `oc_download_packages` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` varchar(60) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_download_packages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_download_package_files`
-- 

CREATE TABLE `oc_download_package_files` (
  `package_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `downloads` int(11) NOT NULL,
  `link` varchar(32) NOT NULL,
  KEY `package_id` (`package_id`),
  KEY `package_id_2` (`package_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_download_package_files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_gift_cards`
-- 

CREATE TABLE `oc_gift_cards` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_number` varchar(60) NOT NULL,
  `code` varchar(16) NOT NULL,
  `expiry_date` date NOT NULL,
  `beginning_amount` float NOT NULL,
  `amount_used` float NOT NULL,
  `to_name` varchar(70) default NULL,
  `to_email` varchar(75) NOT NULL,
  `from` varchar(70) default NULL,
  `personal_message` mediumtext,
  `activated` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_gift_cards`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoices`
-- 

CREATE TABLE `oc_invoices` (
  `invoice_id` int(11) NOT NULL auto_increment,
  `admin_id` int(11) NOT NULL,
  `invoice_group_id` int(11) NOT NULL,
  `invoice_date_created` datetime NOT NULL,
  `invoice_date_modified` datetime NOT NULL,
  `invoice_date_due` datetime NOT NULL,
  `invoice_number` varchar(20) NOT NULL,
  `invoice_terms` longtext NOT NULL,
  PRIMARY KEY  (`invoice_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

-- 
-- Dumping data for table `oc_invoices`
-- 

INSERT INTO `oc_invoices` VALUES (1, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '<p>asdasdas</p>');
INSERT INTO `oc_invoices` VALUES (2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '<p>hkjhk</p>');
INSERT INTO `oc_invoices` VALUES (3, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1970-01-01 00:00:00', '', '<p>asdada</p>');
INSERT INTO `oc_invoices` VALUES (4, 3, 2, '1970-01-01 00:00:00', '0000-00-00 00:00:00', '1970-01-01 00:00:00', '', '<p>asdsadasdas</p>');
INSERT INTO `oc_invoices` VALUES (5, 3, 2, '1970-01-01 00:00:00', '0000-00-00 00:00:00', '1970-01-01 00:00:00', '', '<p>asdasd</p>');
INSERT INTO `oc_invoices` VALUES (6, 3, 2, '1970-01-01 00:00:00', '0000-00-00 00:00:00', '1970-01-01 00:00:00', '', '<p>asdasd</p>');
INSERT INTO `oc_invoices` VALUES (7, 3, 1, '2013-04-23 00:00:00', '0000-00-00 00:00:00', '2013-04-23 00:00:00', '', '<p>dZC</p>');
INSERT INTO `oc_invoices` VALUES (8, 7, 2, '2013-04-23 00:00:00', '0000-00-00 00:00:00', '2013-04-23 00:00:00', '', '<p>Sssss</p>\r\n');
INSERT INTO `oc_invoices` VALUES (9, 2, 2, '2013-04-23 00:00:00', '0000-00-00 00:00:00', '2013-04-23 00:00:00', '', '<p>asdadaasda</p>');
INSERT INTO `oc_invoices` VALUES (10, 3, 2, '2013-04-24 00:00:00', '0000-00-00 00:00:00', '2013-04-24 00:00:00', '', '<p>adasdasd</p>');
INSERT INTO `oc_invoices` VALUES (11, 5, 1, '2013-04-24 00:00:00', '0000-00-00 00:00:00', '2013-04-24 00:00:00', '', '<p>asdadasda</p>');
INSERT INTO `oc_invoices` VALUES (12, 5, 1, '2013-04-24 00:00:00', '0000-00-00 00:00:00', '2013-04-24 00:00:00', '', '<p>asdadasda</p>');
INSERT INTO `oc_invoices` VALUES (13, 4, 2, '2013-04-25 00:00:00', '0000-00-00 00:00:00', '2013-04-25 00:00:00', '', '<p>asdad</p>');
INSERT INTO `oc_invoices` VALUES (14, 4, 2, '2013-04-25 00:00:00', '0000-00-00 00:00:00', '2013-04-25 00:00:00', '', '<p>asdasdasasdasd</p>');
INSERT INTO `oc_invoices` VALUES (15, 6, 2, '2013-04-25 00:00:00', '0000-00-00 00:00:00', '2013-04-25 00:00:00', '', '<p>zczczxcz</p>');
INSERT INTO `oc_invoices` VALUES (16, 3, 2, '2013-04-26 00:00:00', '0000-00-00 00:00:00', '2013-04-26 00:00:00', '', '<p>asdasd</p>');
INSERT INTO `oc_invoices` VALUES (17, 5, 1, '2013-04-26 00:00:00', '0000-00-00 00:00:00', '2013-04-26 00:00:00', '', '<p>asdsadasdasd</p>');
INSERT INTO `oc_invoices` VALUES (18, 3, 1, '2013-04-26 00:00:00', '0000-00-00 00:00:00', '2013-04-26 00:00:00', '', '<p>asfsdfsf</p>');
INSERT INTO `oc_invoices` VALUES (19, 5, 1, '2013-04-26 00:00:00', '0000-00-00 00:00:00', '2013-04-26 00:00:00', '', '<p>asdas</p>');
INSERT INTO `oc_invoices` VALUES (20, 2, 2, '2013-04-26 00:00:00', '0000-00-00 00:00:00', '2013-04-26 00:00:00', '', '<p>dasdasd</p>');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoices_recurring`
-- 

CREATE TABLE `oc_invoices_recurring` (
  `invoice_recurring_id` int(11) NOT NULL auto_increment,
  `invoice_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `recur_start_date` date NOT NULL,
  `recur_end_date` date NOT NULL,
  `recur_frequency` char(2) NOT NULL,
  `recur_next_date` date NOT NULL,
  `recur_access` varchar(50) NOT NULL,
  PRIMARY KEY  (`invoice_recurring_id`),
  KEY `invoice_id` (`invoice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_invoices_recurring`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoice_amounts`
-- 

CREATE TABLE `oc_invoice_amounts` (
  `invoice_amount_id` int(11) default NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_item_subtotal` decimal(10,2) NOT NULL,
  `invoice_item_tax_total` decimal(10,2) NOT NULL,
  `invoice_tax_total` decimal(10,2) NOT NULL,
  `invoice_total` decimal(10,2) NOT NULL,
  `invoice_paid` decimal(10,2) NOT NULL,
  `invoice_balance` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_invoice_amounts`
-- 

INSERT INTO `oc_invoice_amounts` VALUES (NULL, 19, 95.00, 6.10, 0.00, 101.10, 0.00, 0.00);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoice_groups`
-- 

CREATE TABLE `oc_invoice_groups` (
  `invoice_group_id` int(11) NOT NULL auto_increment,
  `admin_id` varchar(50) NOT NULL,
  `invoice_group_name` varchar(50) NOT NULL default '',
  `invoice_group_prefix` varchar(10) NOT NULL default '',
  `invoice_group_next_id` int(11) NOT NULL,
  `invoice_group_left_pad` int(11) NOT NULL,
  `invoice_group_prefix_year` int(11) NOT NULL default '0',
  `invoice_group_prefix_month` int(11) NOT NULL default '0',
  PRIMARY KEY  (`invoice_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `oc_invoice_groups`
-- 

INSERT INTO `oc_invoice_groups` VALUES (1, 'Superadmin', 'asdas', 'sds', 25, 22, 0, 1);
INSERT INTO `oc_invoice_groups` VALUES (2, 'Superadmin', 'Invoice Default', 'Monthly In', 2, 22, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoice_items`
-- 

CREATE TABLE `oc_invoice_items` (
  `item_id` int(11) NOT NULL auto_increment,
  `invoice_id` int(11) NOT NULL,
  `item_tax_rate_id` int(11) NOT NULL,
  `item_date_added` date NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_description` longtext NOT NULL,
  `item_quantity` decimal(10,2) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  `item_order` int(2) NOT NULL,
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

-- 
-- Dumping data for table `oc_invoice_items`
-- 

INSERT INTO `oc_invoice_items` VALUES (1, 14, 4, '0000-00-00', 'item1', 'asdad', 2.00, 5.00, 0);
INSERT INTO `oc_invoice_items` VALUES (2, 14, 1, '0000-00-00', 'item2', 'sdfsdfs', 3.00, 8.00, 0);
INSERT INTO `oc_invoice_items` VALUES (3, 14, 1, '0000-00-00', 'item3', 'adads', 2.00, 3.00, 0);
INSERT INTO `oc_invoice_items` VALUES (41, 18, 4, '0000-00-00', 'B1', 'dadad', 3.00, 4.00, 0);
INSERT INTO `oc_invoice_items` VALUES (40, 17, 2, '0000-00-00', 'B1', 'asdasdas', 2.00, 5.00, 0);
INSERT INTO `oc_invoice_items` VALUES (39, 16, 4, '0000-00-00', 'B1', 'asdasd', 3.00, 3.00, 0);
INSERT INTO `oc_invoice_items` VALUES (38, 15, 1, '0000-00-00', 'B4', 'd6', 10.00, 12.00, 0);
INSERT INTO `oc_invoice_items` VALUES (37, 15, 1, '0000-00-00', 'B2', 'd3', 6.00, 16.00, 0);
INSERT INTO `oc_invoice_items` VALUES (36, 15, 1, '0000-00-00', 'B3', 'd3', 6.00, 16.00, 0);
INSERT INTO `oc_invoice_items` VALUES (74, 19, 4, '0000-00-00', 'item2', 'llll', 5.00, 9.00, 0);
INSERT INTO `oc_invoice_items` VALUES (73, 19, 1, '0000-00-00', 'item1', 'asdasdasd', 25.00, 2.00, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoice_item_amounts`
-- 

CREATE TABLE `oc_invoice_item_amounts` (
  `item_amount_id` int(11) NOT NULL auto_increment,
  `item_id` int(11) NOT NULL,
  `item_subtotal` decimal(10,2) NOT NULL,
  `item_tax_total` decimal(10,2) NOT NULL,
  `item_total` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`item_amount_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

-- 
-- Dumping data for table `oc_invoice_item_amounts`
-- 

INSERT INTO `oc_invoice_item_amounts` VALUES (1, 1, 10.00, 0.80, 10.80);
INSERT INTO `oc_invoice_item_amounts` VALUES (2, 2, 24.00, 1.20, 25.20);
INSERT INTO `oc_invoice_item_amounts` VALUES (3, 3, 6.00, 0.30, 6.30);
INSERT INTO `oc_invoice_item_amounts` VALUES (41, 41, 12.00, 0.96, 12.96);
INSERT INTO `oc_invoice_item_amounts` VALUES (40, 40, 10.00, 0.80, 10.80);
INSERT INTO `oc_invoice_item_amounts` VALUES (39, 39, 9.00, 0.72, 9.72);
INSERT INTO `oc_invoice_item_amounts` VALUES (38, 38, 120.00, 6.00, 126.00);
INSERT INTO `oc_invoice_item_amounts` VALUES (37, 37, 96.00, 4.80, 100.80);
INSERT INTO `oc_invoice_item_amounts` VALUES (36, 36, 96.00, 4.80, 100.80);
INSERT INTO `oc_invoice_item_amounts` VALUES (73, 74, 45.00, 3.60, 48.60);
INSERT INTO `oc_invoice_item_amounts` VALUES (72, 73, 50.00, 2.50, 52.50);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoice_tax_rates`
-- 

CREATE TABLE `oc_invoice_tax_rates` (
  `invoice_tax_rate_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `include_item_tax` int(11) NOT NULL default '0',
  `invoice_tax_rate_amount` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_invoice_tax_rates`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_invoice_templates`
-- 

CREATE TABLE `oc_invoice_templates` (
  `invoice_template_id` int(11) NOT NULL auto_increment,
  `admin_id` varchar(50) NOT NULL,
  `invoice_template_title` varchar(255) NOT NULL,
  `invoice_template_header` varchar(255) NOT NULL,
  `invoice_template_footer` varchar(255) NOT NULL,
  `invoice_template_level` varchar(255) NOT NULL,
  `invoice_template_body` longtext NOT NULL,
  `invoice_template_logo` varchar(255) default NULL,
  PRIMARY KEY  (`invoice_template_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `oc_invoice_templates`
-- 

INSERT INTO `oc_invoice_templates` VALUES (25, 'Superadmin', 'Rmain on the top', '<p>sadasd</p>', '<p>asdasdad</p>', 'Universal', '', '0');
INSERT INTO `oc_invoice_templates` VALUES (19, 'Superadmin', 'ffffffffffffffffffffffffffff', '<p>asdasd</p>', '<p>adasd</p>', 'Universal', '', '0');
INSERT INTO `oc_invoice_templates` VALUES (20, 'Superadmin', 'adasd', '<p>asdasd</p>', '<p>asdsd</p>', 'Universal', '', '0');
INSERT INTO `oc_invoice_templates` VALUES (21, 'Superadmin', 'asdasd', '<p>asdasd</p>', '<p>asdasda</p>', 'Normal', '', '0');
INSERT INTO `oc_invoice_templates` VALUES (24, 'Superadmin', 'Testing Template', '<p>sdfsfs</p>', '<p>sdfsfsfsf</p>', 'Universal', '', '0');
INSERT INTO `oc_invoice_templates` VALUES (23, 'Superadmin', 'Invoice temp', '<p><p>&lt;html&gt;</p><p>&lt;head&gt;</p><p>&lt;title&gt;Wildlife Project&lt;/title&gt;</p><p>&lt;meta http-equiv=\\"Content-Type\\" content=\\"text/html; charset=iso-8859-1\\"&gt;</p><p>&lt;!-- ImageReady Preload Script (index.psd) --&gt;</p><p>&lt;script ty', '<p><p>&lt;tr&gt;</p><p>&lt;td&gt;</p><p>&lt;img src=\\"images/spacer.gif\\" width=\\"31\\" height=\\"1\\" alt=\\"\\"&gt;&lt;/td&gt;</p><p>&lt;td&gt;</p><p>&lt;img src=\\"images/spacer.gif\\" width=\\"220\\" height=\\"1\\" alt=\\"\\"&gt;&lt;/td&gt;</p><p>&lt;td&gt;</p><p>', 'Universal', '', '0');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_migrations`
-- 

CREATE TABLE `oc_migrations` (
  `version` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_migrations`
-- 

INSERT INTO `oc_migrations` VALUES (1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_options`
-- 

CREATE TABLE `oc_options` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `sequence` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(24) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `oc_options`
-- 

INSERT INTO `oc_options` VALUES (1, 1, 1, 'Color', 'checklist', 0);
INSERT INTO `oc_options` VALUES (2, 4, 1, 'Color', 'checklist', 0);
INSERT INTO `oc_options` VALUES (13, 5, 2, 'Gender', 'radiolist', 0);
INSERT INTO `oc_options` VALUES (12, 5, 1, 'Color', 'checklist', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_option_values`
-- 

CREATE TABLE `oc_option_values` (
  `option_value_id` int(10) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `value` varchar(255) NOT NULL,
  `option_id` int(10) NOT NULL,
  `sequence` varchar(255) default NULL,
  `weight` varchar(255) default NULL,
  `price` varchar(255) default NULL,
  PRIMARY KEY  (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- 
-- Dumping data for table `oc_option_values`
-- 

INSERT INTO `oc_option_values` VALUES (12, 'Green', 'green', 13, '1', NULL, NULL);
INSERT INTO `oc_option_values` VALUES (9, 'Black', 'black', 12, '0', NULL, NULL);
INSERT INTO `oc_option_values` VALUES (10, 'Brown', 'brown', 12, '1', NULL, NULL);
INSERT INTO `oc_option_values` VALUES (11, 'White', 'white', 13, '0', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_orders`
-- 

CREATE TABLE `oc_orders` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_number` varchar(60) NOT NULL,
  `customer_id` int(10) unsigned default NULL,
  `status` varchar(255) NOT NULL,
  `ordered_on` datetime NOT NULL,
  `shipped_on` datetime default NULL,
  `tax` float(10,2) NOT NULL,
  `total` float(10,2) NOT NULL,
  `subtotal` float(10,2) NOT NULL,
  `gift_card_discount` float(10,2) NOT NULL,
  `coupon_discount` float(10,2) NOT NULL,
  `shipping` float(10,2) NOT NULL,
  `shipping_notes` text NOT NULL,
  `shipping_method` tinytext NOT NULL,
  `notes` text,
  `payment_info` text NOT NULL,
  `referral` text NOT NULL,
  `company` varchar(255) default NULL,
  `firstname` varchar(255) default NULL,
  `lastname` varchar(255) default NULL,
  `phone` varchar(40) default NULL,
  `email` varchar(255) default NULL,
  `ship_company` varchar(255) default NULL,
  `ship_firstname` varchar(255) default NULL,
  `ship_lastname` varchar(255) default NULL,
  `ship_email` varchar(255) default NULL,
  `ship_phone` varchar(40) default NULL,
  `ship_address1` varchar(255) default NULL,
  `ship_address2` varchar(255) default NULL,
  `ship_city` varchar(255) default NULL,
  `ship_zip` varchar(11) default NULL,
  `ship_zone` varchar(255) default NULL,
  `ship_zone_id` int(11) default NULL,
  `ship_country` varchar(255) default NULL,
  `ship_country_code` varchar(10) default NULL,
  `ship_country_id` int(11) default NULL,
  `bill_company` varchar(255) default NULL,
  `bill_firstname` varchar(255) default NULL,
  `bill_lastname` varchar(255) default NULL,
  `bill_email` varchar(255) default NULL,
  `bill_phone` varchar(40) default NULL,
  `bill_address1` varchar(255) default NULL,
  `bill_address2` varchar(255) default NULL,
  `bill_city` varchar(255) default NULL,
  `bill_zip` varchar(11) default NULL,
  `bill_zone` varchar(255) default NULL,
  `bill_zone_id` int(11) default NULL,
  `bill_country` varchar(255) default NULL,
  `bill_country_code` varchar(10) default NULL,
  `bill_country_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_orders`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_order_items`
-- 

CREATE TABLE `oc_order_items` (
  `id` bigint(20) NOT NULL auto_increment,
  `order_id` int(11) default NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `contents` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_order_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_pages`
-- 

CREATE TABLE `oc_pages` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `menu_title` varchar(128) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `route_id` int(128) NOT NULL,
  `content` longtext NOT NULL,
  `sequence` int(11) NOT NULL default '0',
  `seo_title` text NOT NULL,
  `meta` text NOT NULL,
  `url` varchar(255) default NULL,
  `new_window` tinyint(1) default '0',
  PRIMARY KEY  (`id`),
  FULLTEXT KEY `title` (`title`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_pages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_products`
-- 

CREATE TABLE `oc_products` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `admin_id` int(10) NOT NULL,
  `sku` varchar(30) default NULL,
  `name` varchar(128) default NULL,
  `slug` varchar(128) default NULL,
  `route_id` int(11) NOT NULL,
  `description` text,
  `excerpt` text,
  `price` float(10,2) NOT NULL default '0.00',
  `saleprice` float(10,2) NOT NULL default '0.00',
  `publish_by_admin` enum('1','0') default NULL,
  `publish_by_super` enum('1','0') default NULL,
  `free_shipping` tinyint(1) NOT NULL default '0',
  `shippable` tinyint(1) NOT NULL default '1',
  `taxable` tinyint(1) NOT NULL default '1',
  `fixed_quantity` tinyint(1) NOT NULL default '0',
  `weight` varchar(10) NOT NULL default '0',
  `track_stock` tinyint(1) NOT NULL default '0',
  `quantity` int(11) NOT NULL,
  `related_products` text,
  `images` text,
  `seo_title` text,
  `meta` text,
  `enabled` tinyint(1) NOT NULL default '1',
  `delete` enum('0','1') NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `oc_products`
-- 

INSERT INTO `oc_products` VALUES (1, 13, NULL, 'Top ID', 'junaid-khalil2', 7, 'asdasdasd', 'asdasdasd', 10.00, 12.00, '1', NULL, 0, 1, 1, 0, '0', 0, 0, NULL, NULL, '', '', 1, '0');
INSERT INTO `oc_products` VALUES (2, 13, '0', 'Simple Course', 'simple-course', 8, 'dasdadadadad', 'adadadada', 52.00, 0.00, '1', '0', 0, 0, 0, 0, '0', 0, 0, '', 'false', '', '', 1, '0');
INSERT INTO `oc_products` VALUES (3, 1, NULL, 'Proudct Admin Id', 'proudct-admin-id', 9, 'asdaadad', 'asdasdasdada', 10.00, 12.00, '1', NULL, 0, 1, 1, 0, '0', 0, 0, NULL, NULL, '', '', 1, '0');
INSERT INTO `oc_products` VALUES (5, 1, '0', 'junaidkhalil', 'junaid-khalil3', 11, '<p><img src="http://localhost/UKOpenColleges/uploads/wysiwyg/phpdev.jpg" alt="phpdev.jpg" style=""><img src="http://localhost/UKOpenColleges/uploads/wysiwyg/phpdev.jpg" alt="phpdev.jpg">asdasdasdaasdasd</p>', 'asdasdasdasdasdasd', 10.00, 0.00, '1', NULL, 0, 0, 0, 0, '0', 0, 0, '', 'false', 'sdfsfsdfsd', 'asdadasd', 0, '0');
INSERT INTO `oc_products` VALUES (6, 1, '0', 'March22', 'march-221', 13, '', '', 44.00, 0.00, '1', '1', 0, 0, 0, 0, '0', 0, 0, '', '68374ae064bcf5035f24c4f3206f69cd.png', 'mhhh', 'adsasd', 1, '0');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_products_files`
-- 

CREATE TABLE `oc_products_files` (
  `product_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_products_files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_routes`
-- 

CREATE TABLE `oc_routes` (
  `id` int(11) NOT NULL auto_increment,
  `slug` varchar(255) NOT NULL,
  `route` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- Dumping data for table `oc_routes`
-- 

INSERT INTO `oc_routes` VALUES (1, 'information-technology', 'cart/category/1');
INSERT INTO `oc_routes` VALUES (2, 'oop', 'cart/product/1');
INSERT INTO `oc_routes` VALUES (3, 'human-resource', 'cart/category/2');
INSERT INTO `oc_routes` VALUES (4, 'me-child', 'cart/category/3');
INSERT INTO `oc_routes` VALUES (5, 'junaid-khalil', NULL);
INSERT INTO `oc_routes` VALUES (6, 'junaid-khalil1', NULL);
INSERT INTO `oc_routes` VALUES (7, 'junaid-khalil2', 'cart/product/1');
INSERT INTO `oc_routes` VALUES (8, 'simple-course', 'cart/product/2');
INSERT INTO `oc_routes` VALUES (9, 'proudct-admin-id', 'cart/product/3');
INSERT INTO `oc_routes` VALUES (10, 'junaid-khalil11', 'cart/product/4');
INSERT INTO `oc_routes` VALUES (11, 'junaid-khalil3', 'cart/product/5');
INSERT INTO `oc_routes` VALUES (12, 'march-22', NULL);
INSERT INTO `oc_routes` VALUES (13, 'march-221', 'cart/product/6');
INSERT INTO `oc_routes` VALUES (14, 'gobottest', 'cart/category/4');
INSERT INTO `oc_routes` VALUES (15, 'superfun', 'cart/category/5');
INSERT INTO `oc_routes` VALUES (17, 'newcat', NULL);
INSERT INTO `oc_routes` VALUES (18, 'newcat1', 'cart/category/7');
INSERT INTO `oc_routes` VALUES (19, 'rut', 'cart/category/8');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_search`
-- 

CREATE TABLE `oc_search` (
  `code` varchar(40) NOT NULL,
  `term` varchar(255) NOT NULL,
  PRIMARY KEY  (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_search`
-- 

INSERT INTO `oc_search` VALUES ('756545da3ece02989ac250063828a4f8', '{"category_id":"1","term":"","submit":"search"}');
INSERT INTO `oc_search` VALUES ('ebad85626e6945dbff4df7bbfd43c45e', '{"category_id":"1","term":"oo","submit":"search"}');
INSERT INTO `oc_search` VALUES ('465bb54bc96a7ea9acaed792ae339c11', '{"term":"junaid","category_id":"","submit":"search"}');
INSERT INTO `oc_search` VALUES ('7365c572cfc3fca34e92282e83e24a43', '{"term":"","category_id":"3","submit":"search"}');
INSERT INTO `oc_search` VALUES ('9ab70cf45e61c4b0857860957d5cc64f', '{"term":"","category_id":"2","submit":"search"}');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_sessions`
-- 

CREATE TABLE `oc_sessions` (
  `session_id` varchar(40) NOT NULL default '0',
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(120) default NULL,
  `last_activity` int(10) unsigned NOT NULL default '0',
  `user_data` text NOT NULL,
  PRIMARY KEY  (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `oc_sessions`
-- 

INSERT INTO `oc_sessions` VALUES ('0a13af12d25ba073a87587bd7d3e6b99', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040050, '');
INSERT INTO `oc_sessions` VALUES ('de88efc67af7f4cfb71d6bf1ecae993e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040050, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363040789;}}');
INSERT INTO `oc_sessions` VALUES ('034bb3f010b1e582f750d36f34277708', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040491, '');
INSERT INTO `oc_sessions` VALUES ('74eddc137c716c02ed89e114b811616f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040491, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363041256;}}');
INSERT INTO `oc_sessions` VALUES ('1e13515528c8231d8d88362836815a22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040800, '');
INSERT INTO `oc_sessions` VALUES ('bcde6dfcf6501fc34557e3c0045ff1e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040800, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";b:0;}}');
INSERT INTO `oc_sessions` VALUES ('5a7805873164905aed86abe3bc1e8880', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040888, '');
INSERT INTO `oc_sessions` VALUES ('f34e76d0029f21d2bc7509c04b5e9c84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363040889, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/settings";}');
INSERT INTO `oc_sessions` VALUES ('0f218a0ed9e3678d64deb968fcf0515e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363097525, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('d8b25860f343ffc326aed2a8916adf56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363097525, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363098128;}}');
INSERT INTO `oc_sessions` VALUES ('824cd0bd3506b25b58b0c4bfc5e9f872', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363111977, 'a:2:{s:9:"user_data";s:0:"";s:13:"cart_contents";a:26:{s:21:"order_insurable_value";d:12;s:12:"order_weight";d:20;s:14:"group_discount";i:0;s:15:"coupon_discount";i:0;s:23:"taxable_coupon_discount";i:0;s:17:"gift_card_balance";i:0;s:18:"gift_card_discount";i:0;s:9:"downloads";a:0:{}s:13:"cart_subtotal";d:12;s:22:"cp_discounted_subtotal";d:12;s:13:"taxable_total";d:12;s:10:"cart_total";d:12;s:11:"total_items";i:1;s:14:"shipping_total";i:0;s:3:"tax";s:4:"0.00";s:5:"items";a:1:{s:32:"e1c7af7285c596e6b72291a8b3fb8bc4";a:26:{s:2:"id";s:1:"1";s:3:"sku";s:3:"123";s:4:"name";s:3:"OOP";s:4:"slug";s:3:"oop";s:8:"route_id";s:1:"2";s:11:"description";s:20:"<p>sfsfsdfsdfsdf</p>";s:7:"excerpt";s:16:"sdfsdfsdfsdfsfsd";s:5:"price";s:5:"12.00";s:9:"saleprice";s:5:"12.00";s:13:"free_shipping";s:1:"0";s:9:"shippable";s:1:"1";s:7:"taxable";s:1:"1";s:14:"fixed_quantity";s:1:"1";s:6:"weight";s:2:"20";s:11:"track_stock";s:1:"1";s:16:"related_products";s:0:"";s:6:"images";s:125:"{"994c15015716e904d346858eb065e223":{"filename":"994c15015716e904d346858eb065e223.jpg","alt":"","caption":"","primary":true}}";s:9:"seo_title";s:0:"";s:4:"meta";s:0:"";s:7:"enabled";s:1:"1";s:10:"base_price";s:5:"10.00";s:9:"file_list";a:0:{}s:12:"post_options";b:0;s:5:"is_gc";b:0;s:8:"quantity";d:1;s:8:"subtotal";d:12;}}s:8:"customer";b:0;s:14:"custom_charges";a:0:{}s:8:"shipping";a:3:{s:6:"method";b:0;s:5:"price";b:0;s:4:"code";b:0;}s:7:"gc_list";a:0:{}s:11:"coupon_list";a:0:{}s:15:"applied_coupons";a:0:{}s:21:"whole_order_discounts";a:0:{}s:20:"free_shipping_coupon";b:0;s:17:"requires_shipping";b:1;s:7:"payment";b:0;}}');
INSERT INTO `oc_sessions` VALUES ('94815260c998ffeab6effc21ddd167cb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363111977, '');
INSERT INTO `oc_sessions` VALUES ('5edce261ab8718b5761e291fd16d368c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363115948, '');
INSERT INTO `oc_sessions` VALUES ('17ad49308378ed2458d1c5bd77d3aed4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363115948, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363116549;}}');
INSERT INTO `oc_sessions` VALUES ('2bb7ba394bc2984f5ca1bbf3d6c18e24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363120471, '');
INSERT INTO `oc_sessions` VALUES ('bfbfdf0c80d0de88fe0bbc51397f5593', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363120471, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363121090;}}');
INSERT INTO `oc_sessions` VALUES ('eb1f83564651a07e26bb3b43877074b5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363168563, '');
INSERT INTO `oc_sessions` VALUES ('5358e5ae9c03111c906121b3139d3ec3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363168563, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363169182;}}');
INSERT INTO `oc_sessions` VALUES ('2ddb4dcdd44277aff5637c40a137a122', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363201915, '');
INSERT INTO `oc_sessions` VALUES ('6cdd2db9884d22a90adbf249e4cbcfd7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363201915, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363202537;}}');
INSERT INTO `oc_sessions` VALUES ('043a82791422aa2bbb52d86b4ce6759c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363202541, '');
INSERT INTO `oc_sessions` VALUES ('1854e0456dcf4c8b5e5dfed0bdd300d6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363202541, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:22:"/admin/products/form/1";}');
INSERT INTO `oc_sessions` VALUES ('8fceb21020ef3c9cf2c34fb5f64d28fd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363202902, '');
INSERT INTO `oc_sessions` VALUES ('518cc7452b12efb1ba261d7b3614dfbe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363202902, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363203567;}}');
INSERT INTO `oc_sessions` VALUES ('698222476514524e196178ecd036d33f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363203430, '');
INSERT INTO `oc_sessions` VALUES ('23abe77a9b351ac27debba265e2fe21e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363203430, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";b:0;}}');
INSERT INTO `oc_sessions` VALUES ('35cb5b5d25cebff5ca6b12cf162bde1f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363204097, '');
INSERT INTO `oc_sessions` VALUES ('8ee97fe50d50c0a11b5cb2dc3cb10bb2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.152 Safari/537.22', 1363204097, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:22:"/admin/products/form/1";}');
INSERT INTO `oc_sessions` VALUES ('85cb1043102c5571215633f2378dbec6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363204444, '');
INSERT INTO `oc_sessions` VALUES ('450a99dffc003dfc5c7b19965b4001eb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363204444, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";b:0;}}');
INSERT INTO `oc_sessions` VALUES ('88d47e0eda17d0183b8a0663f7f49686', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363435730, '');
INSERT INTO `oc_sessions` VALUES ('67a29c0cf0b64fa4cdd72bfc2672e8b7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363435730, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363436404;}}');
INSERT INTO `oc_sessions` VALUES ('a05615c8e9fa01aedd320060d6d7e8ad', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363439239, '');
INSERT INTO `oc_sessions` VALUES ('7c5e65611258ffce4f26ed44e817ee90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363439240, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363439981;}}');
INSERT INTO `oc_sessions` VALUES ('3a67850fafea8d45723439ecb673ca5b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363538266, '');
INSERT INTO `oc_sessions` VALUES ('2f2ffe43f74511c495fc4ff1b5a968d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363538276, '');
INSERT INTO `oc_sessions` VALUES ('5c46e1cdfe9bd44380b42a80db596b92', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363538617, '');
INSERT INTO `oc_sessions` VALUES ('4826974a3d0bdf1ccbcd6c25f5942b49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363538617, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:7:"/admin/";}');
INSERT INTO `oc_sessions` VALUES ('ea765e7edefda6b2dfdb1ca6c488ad25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363538654, '');
INSERT INTO `oc_sessions` VALUES ('d88ca3f9d6d25147ebe733c8c1e52b9a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363538654, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";b:0;}}');
INSERT INTO `oc_sessions` VALUES ('92335efb4aa894a638e8b8001d318a9c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363608708, '');
INSERT INTO `oc_sessions` VALUES ('326abea6715a018a0d2e57e8a7c1f4d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363608708, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363615908;}}');
INSERT INTO `oc_sessions` VALUES ('323e2b16b391172c700d9978c68f5f28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363639261, '');
INSERT INTO `oc_sessions` VALUES ('d5eb8cce913a449af7d50647fe415702', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363639261, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363640146;}}');
INSERT INTO `oc_sessions` VALUES ('c131492924b1661ebeaf25672f18b45d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('c61a7a5b08993351fe4e1d7e00855586', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363647575;}}');
INSERT INTO `oc_sessions` VALUES ('86b5ee5c778289e452906e4d2311b81a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('d2230b292393caf4f76a752d54199ede', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('f2c684cdec3674309c2024227f8abd90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/js/plugins/enquire.min.js";}');
INSERT INTO `oc_sessions` VALUES ('508dbea2070572b94b960cf8b1704f8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:52:"/admin/products/js/plugins/modernizr.custom.32549.js";}');
INSERT INTO `oc_sessions` VALUES ('11bacb897b60cc16b05be52c65d804a6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640373, '');
INSERT INTO `oc_sessions` VALUES ('231bacebd89408d8fc31652bea07d7e2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, '');
INSERT INTO `oc_sessions` VALUES ('0ff256381f331bc37e74014ae0c9f8b7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:28:"/admin/products/css/base.css";}');
INSERT INTO `oc_sessions` VALUES ('446321db41df1db202a919f99bc7147a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:47:"/admin/products/js/plugins/excanvas.compiled.js";}');
INSERT INTO `oc_sessions` VALUES ('134d60afa9c03bb44a7dbb4a0f50814e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('33a19a69e582beb0527d9148d9721ffc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:50:"/admin/products/js/plugins/jquery.sparkline.min.js";}');
INSERT INTO `oc_sessions` VALUES ('2eb77fd34efc109500f730a39ef19a85', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('b2083db2cfd9587c4229deac46df7a9f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, '');
INSERT INTO `oc_sessions` VALUES ('ab188769f684618036bf9f060afd3526', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:40:"/admin/products/js/bootstrap-dropdown.js";}');
INSERT INTO `oc_sessions` VALUES ('d63b07ead656122f1cd5bc8291d526c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:37:"/admin/products/js/bootstrap-modal.js";}');
INSERT INTO `oc_sessions` VALUES ('febcde44b9ab7f601c9c6d6386ec2b09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('b84bcb23caa6edc35b0623862017e917', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:42:"/admin/products/js/bootstrap-transition.js";}');
INSERT INTO `oc_sessions` VALUES ('75a9b1578a125b5b615e0d1a3b9b821f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('4be61ad0275afbbc83acdbf4f92ce5ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('5f90953d17206d81779ccd0dd25f061d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:37:"/admin/products/js/bootstrap-alert.js";}');
INSERT INTO `oc_sessions` VALUES ('80cf7653e94cd5161ee8e9bf810ca695', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/js/bootstrap-scrollspy.js";}');
INSERT INTO `oc_sessions` VALUES ('7eeb7a221d652e2be5a36a2973c11372', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, '');
INSERT INTO `oc_sessions` VALUES ('74ce7ad54cfaee8d767a64afb3f9c913', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:35:"/admin/products/js/bootstrap-tab.js";}');
INSERT INTO `oc_sessions` VALUES ('191f8100c82f336125e7f5562c9f5920', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('e671d5fcdddd01bbf825d954271afe9e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:39:"/admin/products/js/bootstrap-tooltip.js";}');
INSERT INTO `oc_sessions` VALUES ('b187a24eee0e54c4ce9c11f58f662ac9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('e5f5c355ef58cf049341cdc2cef527e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:39:"/admin/products/js/bootstrap-popover.js";}');
INSERT INTO `oc_sessions` VALUES ('7fe42ec8be81699d998c540fddca17c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('bac0452b38689ed7fddc9648941bd044', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:38:"/admin/products/js/bootstrap-button.js";}');
INSERT INTO `oc_sessions` VALUES ('53b444899dc416a2f5034981dfc803b3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, '');
INSERT INTO `oc_sessions` VALUES ('6425e9a7919503b139f308d807ddf9da', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('03a8f9a88cf1a7c2ae0592691a023553', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640372, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:40:"/admin/products/js/bootstrap-collapse.js";}');
INSERT INTO `oc_sessions` VALUES ('fa1da65d7623aa7ad45f6c837c9ffc37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/js/bootstrap-typeahead.js";}');
INSERT INTO `oc_sessions` VALUES ('0f4fe13927afd4b317d4ab47477a73e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('58ef049ddf07ee23058e7eaeade99e08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:40:"/admin/products/js/bootstrap-carousel.js";}');
INSERT INTO `oc_sessions` VALUES ('47bcc5ace70fa2b6acb1d3411d16da56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('41b8a4276df018ef5638d49acf4c3888', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('0f8faef71fa45d12543e159ffafab166', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:37:"/admin/products/js/bootstrap-affix.js";}');
INSERT INTO `oc_sessions` VALUES ('7ef843c11761a9d6a3c36a23cc505717', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:38:"/admin/products/js/fileinput.jquery.js";}');
INSERT INTO `oc_sessions` VALUES ('04527edc3ce23f1b28f8ba71995e485a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('d7d9d46a30d981fd6c57a521425ab48d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:48:"/admin/products/js/plugins/jquery.uniform.min.js";}');
INSERT INTO `oc_sessions` VALUES ('bd6d68f499377fa4d1c57dfa9d757ca3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('bbbee2171a03430e087847df3b4c2d35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:38:"/admin/products/js/jquery.touchdown.js";}');
INSERT INTO `oc_sessions` VALUES ('3fe51d0f34a35e7e7c2823229939e05e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('49ef9da9415f985ecc4b3b090c65f48a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('dd0b6f45be2c9947a30e0f72baf5c1c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:49:"/admin/products/js/jquery-ui-1.8.23.custom.min.js";}');
INSERT INTO `oc_sessions` VALUES ('1681c5536746cba80d62acdf1354eabb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:54:"/admin/products/js/plugins/jquery.tinyscrollbar.min.js";}');
INSERT INTO `oc_sessions` VALUES ('7c8e5f7f88cd375bc337eb06e9967c06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('0b5698299cef4a88c3d04fb797614255', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('6e600b5b14f0627269e0a49ca5eef8cd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:42:"/admin/products/js/jnavigate.jquery.min.js";}');
INSERT INTO `oc_sessions` VALUES ('303cc24be34ce8aea4d701c9fbfa405c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/products/js/jquery.touchSwipe.min.js";}');
INSERT INTO `oc_sessions` VALUES ('51de78a13729f56ff2d83e7b84ca418b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('5cce60f021da912c5810f4e07eb71bde', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:46:"/admin/products/js/plugins/jquery.peity.min.js";}');
INSERT INTO `oc_sessions` VALUES ('b0912204d71eabcaa226f9c8087fc081', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('622320398f85b1e871d4fc0026379a9e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:49:"/admin/products/js/plugins/wysihtml5-0.3.0.min.js";}');
INSERT INTO `oc_sessions` VALUES ('db8d9e62cf48d2833629e42dc6327b98', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640373, '');
INSERT INTO `oc_sessions` VALUES ('11ecf585cebb6a806d476889c41cef7f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640373, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:47:"/admin/products/js/plugins/textarea-autogrow.js";}');
INSERT INTO `oc_sessions` VALUES ('f938890b74d47cca964cd955d9c6f64e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('8caa9a3c29ef96a1bdd97f1a09d9c09a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640373, '');
INSERT INTO `oc_sessions` VALUES ('d322a5099cb3f050620d6aa87bb9a3c4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('a393aa6cc6668d2771a16f170d3af971', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('77feebc481f89c7a37bd854077a22b3d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:61:"/admin/products/js/plugins/chosen/chosen/chosen.jquery.min.js";}');
INSERT INTO `oc_sessions` VALUES ('c3384c422f74998eb744013fef219edf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640373, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:45:"/admin/products/js/plugins/character-limit.js";}');
INSERT INTO `oc_sessions` VALUES ('bdffec65eaa011598a13184ec98a27f7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:52:"/admin/products/js/plugins/jquery.maskedinput-1.3.js";}');
INSERT INTO `oc_sessions` VALUES ('bd161ad7e4c77d6566d66e5a699bdc63', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:49:"/admin/products/js/plugins/bootstrap-wysihtml5.js";}');
INSERT INTO `oc_sessions` VALUES ('b2ce8bffc218839fc7b1d56fef0e5b2e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('3ed455ba81e449073b6a657d83c8b4d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('e55deea7b5895a700bc41b825299f333', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:50:"/admin/products/js/plugins/bootstrap-datepicker.js";}');
INSERT INTO `oc_sessions` VALUES ('678d8651f1b39a7d49b30db42338111b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:29:"/admin/products/js/scripts.js";}');
INSERT INTO `oc_sessions` VALUES ('8d43aa19a3c9e9a159ca4a95fbe73b49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('f67f2b98900b84e8880635de419f7901', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:51:"/admin/products/js/plugins/bootstrap-colorpicker.js";}');
INSERT INTO `oc_sessions` VALUES ('21fb4ebfe0e3681fccf456ca9d14fdbc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('e19b9ab1fb177893c0ec72a7edf2d6e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('702312a7104c1186a4ba1f13f0629269', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('969f83d6cc39a384168725c15ce6ea47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('39cc8834a2822d0c73782459242cec06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('7327fe75483568cb91952b70d1e63874', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640374, '');
INSERT INTO `oc_sessions` VALUES ('0e6543a6199c4090efa4071176162030', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('a8f8286147494a3fb32a900794393788', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('dc3b41620a2d51e223217fd20792c079', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('82c6dc1f94c5e0601130ffa085974a26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('d49b3d742a35f0f7b79f34b1b82a6a67', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('44ccb7955f1933b935d1c22bb85b8c08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('6d4f8669c9c68d5b12eab05faf193e8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:35:"/admin/products/img/ajax-loader.gif";}');
INSERT INTO `oc_sessions` VALUES ('0424204729c60d79ddb08298586d501b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:40:"/admin/products/img/menu_icons/forms.png";}');
INSERT INTO `oc_sessions` VALUES ('44ff116cf2f4bdc4290dedf9e4d4ec8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('3470b68a79423e63523945c69e8e968b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:42:"/admin/products/img/menu_icons/widgets.png";}');
INSERT INTO `oc_sessions` VALUES ('b286475eb31c279b40470d0b85ee29ef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, '');
INSERT INTO `oc_sessions` VALUES ('8e007d2957a37ada5f22633b552c351e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640375, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:44:"/admin/products/img/menu_icons/dashboard.png";}');
INSERT INTO `oc_sessions` VALUES ('e3f21e1294b4f8dc5baea937ad8844d6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640376, '');
INSERT INTO `oc_sessions` VALUES ('a242fa7e07a5cd7632f748fe7eaa6675', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640376, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:43:"/admin/products/img/menu_icons/calendar.png";}');
INSERT INTO `oc_sessions` VALUES ('a40c51ba52c4f2e074d53a3ca72ae2cc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('1d3b190ca90bf4777c9af3692c22a6d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('5e3fc0f9788fc5fb2b04ef9fa41cd59a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640376, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:40:"/admin/products/img/thumbnail_george.jpg";}');
INSERT INTO `oc_sessions` VALUES ('810fdb187e3b9c6cc8ac7fcfbe60c559', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('ba9c49138047d09c7c3e20c816ba75b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640376, '');
INSERT INTO `oc_sessions` VALUES ('20235260bcd2bc00c5b9271d5c27aeaf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640376, '');
INSERT INTO `oc_sessions` VALUES ('2c753c201c86cee968f25b9f12274fda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/products/img/menu_icons/statistics.png";}');
INSERT INTO `oc_sessions` VALUES ('43e73c2a14afa25d3caa4b5a03a5feb9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640376, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:41:"/admin/products/img/menu_icons/tables.png";}');
INSERT INTO `oc_sessions` VALUES ('88d5b0357ad14199dfbc9615b23b3b2c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('f5e1ff8ca6bde516c5d461a6e7179920', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640376, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:42:"/admin/products/img/menu_icons/gallery.png";}');
INSERT INTO `oc_sessions` VALUES ('f71a5c07f02326b58249bcf475a8c30d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:39:"/admin/products/img/menu_icons/grid.png";}');
INSERT INTO `oc_sessions` VALUES ('40b94ad65b4870f78f16c853720be990', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('11908b63624fc002b5f888fdd69fc412', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('33ca9d14e5b8f29d5a4eb4f394bd93a7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/products/img/menu_icons/explorer.png";}');
INSERT INTO `oc_sessions` VALUES ('0cbae02104044e4d404245043fb65f6b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/img/menu_icons/others.png";}');
INSERT INTO `oc_sessions` VALUES ('97901f971c123c2fabbfb4b62eb9e1ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, '');
INSERT INTO `oc_sessions` VALUES ('92daa5dd217ba0affba747dac94ba93d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('9d11cc0fa80fd253dfc92938f51033e2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('d6c4d18e1c82e5c040789f0d327fe762', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('390b553a87cba82a69791f51ceb678a0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('6a5788e7bdf4a2a68e1669ba4634e489', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640377, '');
INSERT INTO `oc_sessions` VALUES ('ef07a92c676a647032a673f977207604', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363647627;}}');
INSERT INTO `oc_sessions` VALUES ('37c1d5a851dae70c832bbef406ac0ffb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, '');
INSERT INTO `oc_sessions` VALUES ('cff7f080d57b0ee1b57f4c4228692fab', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, '');
INSERT INTO `oc_sessions` VALUES ('a48bcc0a8e8b0f92d947aab29d8cb69a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:28:"/admin/products/js/jquery.js";}');
INSERT INTO `oc_sessions` VALUES ('e5fffaa537d2433458d7a0148fb0afb2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:52:"/admin/products/js/plugins/modernizr.custom.32549.js";}');
INSERT INTO `oc_sessions` VALUES ('9780ba1a1068fd92ca152ed6e7cffd8b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, '');
INSERT INTO `oc_sessions` VALUES ('209dfd75d39c02d83a919c0796d978bf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/js/plugins/enquire.min.js";}');
INSERT INTO `oc_sessions` VALUES ('33417a7e835526d5ccc6b5e2ed67032a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, '');
INSERT INTO `oc_sessions` VALUES ('44666c247118b4e6121052a169d6ec2b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, '');
INSERT INTO `oc_sessions` VALUES ('f36a9edbac3c33a6d14e90e52779fe17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, '');
INSERT INTO `oc_sessions` VALUES ('17133a5acc5e605ea41bd3e659a9f65d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:47:"/admin/products/js/plugins/excanvas.compiled.js";}');
INSERT INTO `oc_sessions` VALUES ('237ef32b52a6e629a2f76b22b0e0e521', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:50:"/admin/products/js/plugins/jquery.sparkline.min.js";}');
INSERT INTO `oc_sessions` VALUES ('a73e6e747ac2eebec9cf2280f3a4936c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, '');
INSERT INTO `oc_sessions` VALUES ('337c6ca852720d4ba403896ebdcf030d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:37:"/admin/products/js/bootstrap-alert.js";}');
INSERT INTO `oc_sessions` VALUES ('ba4fe85bb6e404c49823a870b8ae0591', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:42:"/admin/products/js/bootstrap-transition.js";}');
INSERT INTO `oc_sessions` VALUES ('732227116d31593e2ac186fb886741c6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('fcf8eeefb2aa7e6ccff855ef8f4c392e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:37:"/admin/products/js/bootstrap-modal.js";}');
INSERT INTO `oc_sessions` VALUES ('7bb9c8693250dac5f37e09ac30428f75', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('693f1351baed580dbee60cb22d223b39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:40:"/admin/products/js/bootstrap-dropdown.js";}');
INSERT INTO `oc_sessions` VALUES ('6483ebf36acd530cd77ffba28084005b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('1def1ea9f2e84cbbc2d4e07856d88b15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('055c4c08c92d21757877ccaf69ee243f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, '');
INSERT INTO `oc_sessions` VALUES ('b0f9ce3bde0bc8203324a0ce0e59b11a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/js/bootstrap-scrollspy.js";}');
INSERT INTO `oc_sessions` VALUES ('36970de7afea223cde58f3010552a776', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640427, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:39:"/admin/products/js/bootstrap-tooltip.js";}');
INSERT INTO `oc_sessions` VALUES ('02a1100900ce94cec4689745fc012294', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('3ff6bc15e32b21010a2cd02d4a40bdbd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:35:"/admin/products/js/bootstrap-tab.js";}');
INSERT INTO `oc_sessions` VALUES ('d3d3af66b6684c9ea407db9f3a6e5df9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:39:"/admin/products/js/bootstrap-popover.js";}');
INSERT INTO `oc_sessions` VALUES ('30352a4008e18e7f4b40b87ce0225e30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('2e0b25fabb2cf32d28c07e96369cf22b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:38:"/admin/products/js/bootstrap-button.js";}');
INSERT INTO `oc_sessions` VALUES ('0b449b470b824ffb4e04652c72eb11bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('9b9f99cc02d3b03721c174ad5aaa9afe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:40:"/admin/products/js/bootstrap-carousel.js";}');
INSERT INTO `oc_sessions` VALUES ('16afff9f8f43b897f2b5ad6db7d065e8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('0ee9fcc38bd04668be74c21aaad80dea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:37:"/admin/products/js/bootstrap-affix.js";}');
INSERT INTO `oc_sessions` VALUES ('e3d6e01c4032832d1d29c5b050026479', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('7de4996940dd3e57b3ab46620abfa403', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/js/bootstrap-typeahead.js";}');
INSERT INTO `oc_sessions` VALUES ('2e838a4d3b395ad7814a3eef2e221f70', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('a71318e5498a8a8008fc4bec8f6f6a33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:40:"/admin/products/js/bootstrap-collapse.js";}');
INSERT INTO `oc_sessions` VALUES ('9c9b595012bf582e14212e91df594d5e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('364b4bb65f30fe347267248c4d52ae8f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('22640c028cfdf53a2f56f66fc1ae3dc0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:49:"/admin/products/js/jquery-ui-1.8.23.custom.min.js";}');
INSERT INTO `oc_sessions` VALUES ('747973999f463c159177b2bb70b308b8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:38:"/admin/products/js/fileinput.jquery.js";}');
INSERT INTO `oc_sessions` VALUES ('179cf0e1e6053b2ee8aa7f0f80d69f49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, '');
INSERT INTO `oc_sessions` VALUES ('5b424b561bfec305d499bcaa38e9ee8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:38:"/admin/products/js/jquery.touchdown.js";}');
INSERT INTO `oc_sessions` VALUES ('1d3826bb81e808f3268ed133fd955ec7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, '');
INSERT INTO `oc_sessions` VALUES ('3d42b1fe6c25757eaecf37ba56152225', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('19b09e954521f82b8c75eb1d2c7d6efd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640431, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:48:"/admin/products/js/plugins/jquery.uniform.min.js";}');
INSERT INTO `oc_sessions` VALUES ('a4ab84d20821ce233d05fb4852ff264c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:54:"/admin/products/js/plugins/jquery.tinyscrollbar.min.js";}');
INSERT INTO `oc_sessions` VALUES ('2f989ee3284b08b0284b86af0cf47613', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('7ec7050077782158e9a5a1f2eb89bc6b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, '');
INSERT INTO `oc_sessions` VALUES ('5363f0549a987ed70b8ecb1c6bc2b765', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/products/js/jquery.touchSwipe.min.js";}');
INSERT INTO `oc_sessions` VALUES ('5b8cf016091426df0d2d9461e4818094', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('92c6080c6580bacacfeb20b9cd2e3adc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:42:"/admin/products/js/jnavigate.jquery.min.js";}');
INSERT INTO `oc_sessions` VALUES ('d0ca9684d551458a7592572784cb07e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:46:"/admin/products/js/plugins/jquery.peity.min.js";}');
INSERT INTO `oc_sessions` VALUES ('3efe5df09d83665b48d9d6ccbed928b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, '');
INSERT INTO `oc_sessions` VALUES ('0ab1f5fed7e51c4e1fc6535fdcc327d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('eea245d825fc069072625e41e0335324', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:49:"/admin/products/js/plugins/wysihtml5-0.3.0.min.js";}');
INSERT INTO `oc_sessions` VALUES ('67a672159305d0b2a04ed73c337a22ff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:49:"/admin/products/js/plugins/bootstrap-wysihtml5.js";}');
INSERT INTO `oc_sessions` VALUES ('cb01e425d3e2826acc9f9a74f0949979', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('f908fd32ab91307d53dc1f01f104070a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:47:"/admin/products/js/plugins/textarea-autogrow.js";}');
INSERT INTO `oc_sessions` VALUES ('aeb06eca48632e75bb4176351d08911e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, '');
INSERT INTO `oc_sessions` VALUES ('98edf7ac349d117237995b628e5ff92d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('2521823302bf33cca14efa174851bf4b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640428, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:52:"/admin/products/js/plugins/jquery.maskedinput-1.3.js";}');
INSERT INTO `oc_sessions` VALUES ('96f59015ee283ed6eea1733622154001', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:50:"/admin/products/js/plugins/bootstrap-datepicker.js";}');
INSERT INTO `oc_sessions` VALUES ('e6bcd7bd05c064633d5374838abb32d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('489d97b6acd8de185aba93bf24587f70', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('fe8e9fc8be5c32597cf048b8e17351a0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:61:"/admin/products/js/plugins/chosen/chosen/chosen.jquery.min.js";}');
INSERT INTO `oc_sessions` VALUES ('92ea7888cadc49b6869f2e858c2487ff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/products/js/plugins/character-limit.js";}');
INSERT INTO `oc_sessions` VALUES ('48fa203c576048f57b2e986a74c8b5d6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('1e3d3fca1e8af9df96afdfc87c68b98e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:51:"/admin/products/js/plugins/bootstrap-colorpicker.js";}');
INSERT INTO `oc_sessions` VALUES ('deeb6c229698d9e617abee7eb8b950a3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('02f0a0249b4bf061c7a691cbf0f55919', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('a20a020ac7e82de79f48d443df7c62d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:29:"/admin/products/js/scripts.js";}');
INSERT INTO `oc_sessions` VALUES ('ff90c6e05d16493bd4f02758075294da', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:44:"/admin/products/img/menu_icons/dashboard.png";}');
INSERT INTO `oc_sessions` VALUES ('10c294897065cfee5d4d2b38a1bfc9fc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('ecccb2ef48727912c5168ad5a571e99e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:40:"/admin/products/img/menu_icons/forms.png";}');
INSERT INTO `oc_sessions` VALUES ('c10bec8a2b44543bc630eb72c75326d7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('bd73f504702df2a8615a78f91be5aaee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:42:"/admin/products/img/menu_icons/widgets.png";}');
INSERT INTO `oc_sessions` VALUES ('660c8ae88755225a4f66062b74a83294', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('fff8e4918ed2f20177be45eb3c2a19e3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('02acc4b5a805df37cc55bcbc20680e47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/products/img/menu_icons/calendar.png";}');
INSERT INTO `oc_sessions` VALUES ('eda01e31dae1e5140b85934fad6af466', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/img/menu_icons/tables.png";}');
INSERT INTO `oc_sessions` VALUES ('ee12ffd1ae3a8e9f39c73591543a35d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, '');
INSERT INTO `oc_sessions` VALUES ('3733f108da003be454d1f67ee9ad7f7a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:39:"/admin/products/img/menu_icons/maps.png";}');
INSERT INTO `oc_sessions` VALUES ('777351f17f71b75fc87d0b401d3d0724', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, '');
INSERT INTO `oc_sessions` VALUES ('378dbcc135dd1ef82483f6f6aae0ee96', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640429, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:45:"/admin/products/img/menu_icons/statistics.png";}');
INSERT INTO `oc_sessions` VALUES ('ce9a8940fe5a2c7c14e04645f5ed2b09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('f623d3a23aee2bf91be3af4ab0df280e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:39:"/admin/products/img/menu_icons/grid.png";}');
INSERT INTO `oc_sessions` VALUES ('f97f9676692c36140d4b75205bac4a41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('6e56ff076648c0f95395992ec807306e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/products/img/menu_icons/explorer.png";}');
INSERT INTO `oc_sessions` VALUES ('4dbfda9bf78469d72eda230ade2ecc56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640435, '');
INSERT INTO `oc_sessions` VALUES ('c55db6da02a00e1c768e016fb0ac50e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640435, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:42:"/admin/products/img/menu_icons/gallery.png";}');
INSERT INTO `oc_sessions` VALUES ('7d31c485b4b3fd235697f5d4e7ce5db6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640435, '');
INSERT INTO `oc_sessions` VALUES ('6849e8f7e453dfd2998acb7959538dd0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363642504, '');
INSERT INTO `oc_sessions` VALUES ('73f51facebdca781bc41fdaf56f50107', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640435, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:41:"/admin/products/img/menu_icons/others.png";}');
INSERT INTO `oc_sessions` VALUES ('4fd5b0e164821414aa0e8a58e632f707', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363642504, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363649704;}}');
INSERT INTO `oc_sessions` VALUES ('a6e85e2f2f963083effc5db4593223f4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('ed4cd9e103d8a05876fd53ef105ce800', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('97d7578e4a1e5e03d046157789ace0dc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('98555a157004dc4e6ab46873a596aaa1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('c89b7cbb318a489f82f6bd9b9ef45c2b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('b9fec32ce0479da86ff98cbb0b23aa03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640430, '');
INSERT INTO `oc_sessions` VALUES ('d22b8efd7d4929d2e6aed7fbfaa16cd9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('c89d0d389b337815e135987f259d6f9d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('a49d918b30540d7e3ae80edb349647de', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('771c263011fcf2e42f640833c57142cf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('b4c31f9216d6bed507e30349a8fbdb90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('838f42412f6b6669b997722b4d42d1ca', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640432, '');
INSERT INTO `oc_sessions` VALUES ('f89112b24c77a918d2eae3f7d12bd6f2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('e17f11118ba27f116bd0303572e6f390', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640433, '');
INSERT INTO `oc_sessions` VALUES ('5bc350d6253e01728d63df4d82770a88', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('016a2629bcb9dd23247a412b002a4e5a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('73064b7342c315b4b222937148c11072', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('a15f48ba9233ad8686767b47aa384843', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363640434, '');
INSERT INTO `oc_sessions` VALUES ('1d42f821a1710792a93a8ef2e6e1412f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363683807, '');
INSERT INTO `oc_sessions` VALUES ('940f132695c2330b3fe4e0adae3fb700', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363683807, '');
INSERT INTO `oc_sessions` VALUES ('829cc2439bf21e8243fdb9df24d32598', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363685255, '');
INSERT INTO `oc_sessions` VALUES ('55eba4c074a54762099cdacc196daf51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363685255, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('8e2d9adbfc85d21a000469fc30b6afc2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363685259, '');
INSERT INTO `oc_sessions` VALUES ('9e5cd1ea2e3260e89fd0a4483a400ad0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363685259, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363686026;}}');
INSERT INTO `oc_sessions` VALUES ('93be7abb5e6ebb8276859e5e36d99414', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363714005, '');
INSERT INTO `oc_sessions` VALUES ('afb500a226cdffe883f05d6d968d20d2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363714005, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('ef5ba8b71f09a270db44f36bc4b5c9fb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, '');
INSERT INTO `oc_sessions` VALUES ('9de2bad3d94de5a73ade489b9d97fa05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363723006;}}');
INSERT INTO `oc_sessions` VALUES ('df7a31cd02b0b29f78b2362fa818460f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, '');
INSERT INTO `oc_sessions` VALUES ('21d075c9e8947fa72656b88755ad744e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, '');
INSERT INTO `oc_sessions` VALUES ('7fe5f1b3ca03d7d86a691fb2278dc498', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:20:"/admin/products/form";}');
INSERT INTO `oc_sessions` VALUES ('0581a4eed298e2510fc553157e373c03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:20:"/admin/products/form";}');
INSERT INTO `oc_sessions` VALUES ('8581affc468139b7dfb2ee67897a8c7b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, '');
INSERT INTO `oc_sessions` VALUES ('59833f24d844316dc09e5b03a3d98e8c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363715806, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:20:"/admin/products/form";}');
INSERT INTO `oc_sessions` VALUES ('ea954f792236afea59c8cd44a7c9d02d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363721597, '');
INSERT INTO `oc_sessions` VALUES ('1a933ac87480e4621b7445bfaeba0da4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363721597, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363728797;}}');
INSERT INTO `oc_sessions` VALUES ('0a80c1b8ad79d6cd4d7c8543d62c4245', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363716461, '');
INSERT INTO `oc_sessions` VALUES ('9bc92153c16cbe03e76fe7ed3aa9c6c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363716461, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363717062;}}');
INSERT INTO `oc_sessions` VALUES ('94bf16363b3ac96bb729eeeb54444b8b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363722067, '');
INSERT INTO `oc_sessions` VALUES ('3b6c1d60a9f07ccd8dfd4995a6bd209e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363722067, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363729267;}}');
INSERT INTO `oc_sessions` VALUES ('d1913577f77cfa6b6adccc4464a9e215', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363722101, '');
INSERT INTO `oc_sessions` VALUES ('c41faaf75b582d0cfd6fcc8fa830f44f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363722101, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363722873;}}');
INSERT INTO `oc_sessions` VALUES ('ec85b9822f42dbaf664af353c3ee5c6a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363734425, '');
INSERT INTO `oc_sessions` VALUES ('ad63e73e91d2952ff7db00ebbe7843f7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363734425, '');
INSERT INTO `oc_sessions` VALUES ('b6baa5edcd199de41f60078e2b8c8d62', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363796157, '');
INSERT INTO `oc_sessions` VALUES ('376db7ea89f6fd9d2a91add01ea46652', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363722733, '');
INSERT INTO `oc_sessions` VALUES ('685a5a507c7d50aa7914b85cacbd82f1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363722733, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363723363;}}');
INSERT INTO `oc_sessions` VALUES ('584f63b9099e29d6dd9f0adbd4121c34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363796157, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363803357;}}');
INSERT INTO `oc_sessions` VALUES ('9d39b22d3f37c5445bab32c5c3c96768', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363801774, '');
INSERT INTO `oc_sessions` VALUES ('2855f1afb353f3a7788060feccd6b94d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363801774, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";b:0;}}');
INSERT INTO `oc_sessions` VALUES ('ccaccd2b962d263ffdfa211290da2516', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363801978, '');
INSERT INTO `oc_sessions` VALUES ('0ccfacbf62b4b3b74df30a76a303c861', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363801978, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('3dd7ab9497f17c5af4dd1d5945033098', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363802042, '');
INSERT INTO `oc_sessions` VALUES ('fb923be8914a7303358d51907b40cffe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363802042, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363802678;}}');
INSERT INTO `oc_sessions` VALUES ('aafe840ea7cb8689758cc5f6b6959b96', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363812831, '');
INSERT INTO `oc_sessions` VALUES ('10744115c1872ebeb07c9082f0f40f5c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363812831, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363820031;}}');
INSERT INTO `oc_sessions` VALUES ('507493019b815f161bd0c010903206e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363809982, '');
INSERT INTO `oc_sessions` VALUES ('a4aa1072dd73bcc016f22bfa080fcf8d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363809982, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363810798;}}');
INSERT INTO `oc_sessions` VALUES ('fe4a3eb04687a846245fd318317e8a7e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363810533, '');
INSERT INTO `oc_sessions` VALUES ('1fdc5cb92e8b8976e1d28407fb6acb7b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363810533, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:20:"/admin/products/form";}');
INSERT INTO `oc_sessions` VALUES ('f89965278b21ee04190ba194e2a56975', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363813170, '');
INSERT INTO `oc_sessions` VALUES ('5fd9fd4cb46541a6ea251f68b567fed6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363813170, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363820370;}}');
INSERT INTO `oc_sessions` VALUES ('2f88269e795486a15e37c39a9757c73b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363846726, '');
INSERT INTO `oc_sessions` VALUES ('6c66262bee81ae602da7610da88d9a77', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363812831, '');
INSERT INTO `oc_sessions` VALUES ('f5d9587cf818eea06bb47772b99772b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363812831, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:20:"/admin/products/form";}');
INSERT INTO `oc_sessions` VALUES ('d00e087954076f212628ba2cf408ec43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363846726, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363853926;}}');
INSERT INTO `oc_sessions` VALUES ('e170f379a1d48ccf1925fc0349922a84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363871678, '');
INSERT INTO `oc_sessions` VALUES ('f34ca69bd454eb6529a494d9fff25859', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363871678, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363865229;}}');
INSERT INTO `oc_sessions` VALUES ('947b287e8923b67559825b93c35ac343', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363847521, '');
INSERT INTO `oc_sessions` VALUES ('4d933cfec124306533e8f17c5a8c3321', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1363847521, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363854722;}}');
INSERT INTO `oc_sessions` VALUES ('1a917fd4d0b7de04d59d429d6dbb9188', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363850409, '');
INSERT INTO `oc_sessions` VALUES ('1991643d93d7715f002c18d4a42c2dd0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363850409, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363857609;}}');
INSERT INTO `oc_sessions` VALUES ('9966ea83ec386e26ea2b183785c00414', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363853043, '');
INSERT INTO `oc_sessions` VALUES ('fdfbb45bf2709b6b3acde03ee339f814', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1363853044, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363853907;}}');
INSERT INTO `oc_sessions` VALUES ('21a5fb3636fc4346bed885898c50521f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363886685, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('087f71549f5296712049a64d9ec27603', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363888552, '');
INSERT INTO `oc_sessions` VALUES ('a7a8df91cd45205cc76f963692b97016', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363886796, '');
INSERT INTO `oc_sessions` VALUES ('966e5b62c7f30a779c31f07017cedba9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363890566, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363897766;}}');
INSERT INTO `oc_sessions` VALUES ('1f1615ee98239d2eea62a1d2b702abdd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363890566, '');
INSERT INTO `oc_sessions` VALUES ('95d5a6936cd2ff0c5a68025878206f6d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363899245, '');
INSERT INTO `oc_sessions` VALUES ('efddcb5c7785c44d3102576e0423c7ec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363899245, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363906445;}}');
INSERT INTO `oc_sessions` VALUES ('a268734fa77546be591ad00c63324472', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363902309, '');
INSERT INTO `oc_sessions` VALUES ('4ad95f6c73600883794e8eaa8ad00799', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904903, 'a:1:{s:17:"flash:old:message";s:27:"The product has been saved.";}');
INSERT INTO `oc_sessions` VALUES ('4851def1bc9dbab415389fc16dc0e14b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363902317, '');
INSERT INTO `oc_sessions` VALUES ('ae2d44e3a3959a321d5dd13361669631', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363902308, '');
INSERT INTO `oc_sessions` VALUES ('ede964484ce1af0e88b829879ded7b48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363902310, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:20:"/admin/products/form";}');
INSERT INTO `oc_sessions` VALUES ('a4b74aceb2409efe9e27a20381cbca5f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363902318, '');
INSERT INTO `oc_sessions` VALUES ('a74874df30ac013806f143ef966af722', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904903, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363912103;}}');
INSERT INTO `oc_sessions` VALUES ('a841b2b04118b78382ad48a555238962', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904973, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('94dced4041644fb67d1207caeab955c0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363904973, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363905788;}}');
INSERT INTO `oc_sessions` VALUES ('a686e249f2a2220c984e1f4e6d430bb0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363926881, '');
INSERT INTO `oc_sessions` VALUES ('6f5bbcca57ef6c9dbe002c6b4abad9e0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363926881, 'a:1:{s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363934081;}}');
INSERT INTO `oc_sessions` VALUES ('d1afc452628af281e1581aac51aa7886', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363926924, '');
INSERT INTO `oc_sessions` VALUES ('3491fd09f6d3b6a1e6bc33e37163dde6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363926924, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363927538;}}');
INSERT INTO `oc_sessions` VALUES ('e180e206b3ba124c9a006988c6b3a262', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363926946, '');
INSERT INTO `oc_sessions` VALUES ('1ffe537a3a35267acb6685e9fa3ebde0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363926946, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('64174f0fc3416b19de646f0649f6f19f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363928007, '');
INSERT INTO `oc_sessions` VALUES ('8021123a50c28b2c67b30f30ed69759c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363928007, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363928607;}}');
INSERT INTO `oc_sessions` VALUES ('1486fb06fc23776e82a4fcc2a4e65471', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363931769, '');
INSERT INTO `oc_sessions` VALUES ('20c8c3daf76b5515a9de1dc401fc4a0d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363951342, '');
INSERT INTO `oc_sessions` VALUES ('5d051c5f17b5a643b87f360050b296d5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363931770, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('24a4ecd234714aa4e28a5ae0affee695', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363954104, '');
INSERT INTO `oc_sessions` VALUES ('df4f7a959ddcf8047f10cbe38b1ba083', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363951342, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363958542;}}');
INSERT INTO `oc_sessions` VALUES ('cd3d36f0d93d5dfc3ef166158eb4767b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363954104, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363954778;}}');
INSERT INTO `oc_sessions` VALUES ('10e7291a72874f10f1a7b54421dcd3f1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363955015, '');
INSERT INTO `oc_sessions` VALUES ('31df08d6cc46498fc67f5465df681054', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363955015, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363962215;}}');
INSERT INTO `oc_sessions` VALUES ('0f5f9bf35c4d3642168ce1999594f9db', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363956505, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('5313239711a02aba1c65aa172425ae82', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363956505, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363957107;}}');
INSERT INTO `oc_sessions` VALUES ('53b57feddd2d5125a5bbb07ba8b33a4e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363982394, '');
INSERT INTO `oc_sessions` VALUES ('7d3ce868c0f76cb6b3b3064e65a0246e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363982394, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1363989594;}}');
INSERT INTO `oc_sessions` VALUES ('62a5210a07752ee449f56efa2618541b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363982394, '');
INSERT INTO `oc_sessions` VALUES ('f4d823b5748b0c2812e8c1824eb1aec9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1363982394, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:22:"/admin/products/form/5";}');
INSERT INTO `oc_sessions` VALUES ('77ebcaa691942de61247611bff2bb34a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028346, '');
INSERT INTO `oc_sessions` VALUES ('3e51b8ecc528237e3d053ae43462d8d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028346, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364035522;}}');
INSERT INTO `oc_sessions` VALUES ('c640b85a597ab66443c812f90d2baea2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028378, '');
INSERT INTO `oc_sessions` VALUES ('07c7ba4b99eabb143859f287bfd7f9ae', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028378, '');
INSERT INTO `oc_sessions` VALUES ('3b870cea40744648377e1203cf3fa18c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028408, '');
INSERT INTO `oc_sessions` VALUES ('af53b3c3106ce87c4ae960aab3275d56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028409, '');
INSERT INTO `oc_sessions` VALUES ('80dce51df068613cc3872e0d4a2900fd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028418, '');
INSERT INTO `oc_sessions` VALUES ('907acd4626c23dd37118a1324d092182', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028418, '');
INSERT INTO `oc_sessions` VALUES ('caa7ad93bf2cb491cb5b5533357012ae', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028769, '');
INSERT INTO `oc_sessions` VALUES ('1d41a1510a661158f5655bcb8f03d7a5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028769, 'a:1:{s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364035969;}}');
INSERT INTO `oc_sessions` VALUES ('d4054f75c4c11295bd17b19ab5c5c631', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028789, '');
INSERT INTO `oc_sessions` VALUES ('1b88cd7f968e07620fb98c8a7dc6baa1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364028789, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364029517;}}');
INSERT INTO `oc_sessions` VALUES ('3f0fd9d18107d4c9a87798c03c023939', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364028943, '');
INSERT INTO `oc_sessions` VALUES ('c936fd90df78c3e8a53b61ec153a210c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364028943, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364029558;}}');
INSERT INTO `oc_sessions` VALUES ('cd31ecd9e291b8033a6534e27e41eaf8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112310, '');
INSERT INTO `oc_sessions` VALUES ('18e249d469ed73ec4307dde7329a2a6a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112310, '');
INSERT INTO `oc_sessions` VALUES ('47d12910cbac947d08742e5170804460', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112310, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:16:"/admin/dashboard";}');
INSERT INTO `oc_sessions` VALUES ('fd8ccd62ee3c938b2792a1c82cfa9178', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364113186, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('c202934f2b4e3c810bf3a21081350596', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364113187, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('18ec85f2f418e81acafd1129cb112ce3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112310, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:16:"/admin/dashboard";}');
INSERT INTO `oc_sessions` VALUES ('0177d07486de971d82d9f6b7ba3c4f40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112310, '');
INSERT INTO `oc_sessions` VALUES ('5e170ef500a478ce54b89bb5fea2e54a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112310, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:16:"/admin/dashboard";}');
INSERT INTO `oc_sessions` VALUES ('3aed9eab4ff102fb271c0f634bfe39c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112791, '');
INSERT INTO `oc_sessions` VALUES ('27d394b5e5466afcba8cfb6870861d83', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364112791, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('68587431e895f4fc0fa1324ad3024daf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364192836, '');
INSERT INTO `oc_sessions` VALUES ('9b77f3f6113b87aedc9685192a400ffe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364155077, '');
INSERT INTO `oc_sessions` VALUES ('5e07d241380cfc6cb306190e057a5585', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364199235, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364199835;}}');
INSERT INTO `oc_sessions` VALUES ('32d45cf0e0618f783169a1937b2b0a16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364199235, '');
INSERT INTO `oc_sessions` VALUES ('e4c550cb9e190108ba61aab970557fc1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364192836, '');
INSERT INTO `oc_sessions` VALUES ('c6245fc7d5d9c6eaf72d1d27e5f89539', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364154839, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364155510;}}');
INSERT INTO `oc_sessions` VALUES ('413ae7e3b1be0fd5620e4c88ddff66be', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364199657, 'a:1:{s:17:"flash:old:message";s:25:"You have been logged out.";}');
INSERT INTO `oc_sessions` VALUES ('1f9ddd5ce2b7d2d0088f92320f823f67', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364199657, '');
INSERT INTO `oc_sessions` VALUES ('4e42e361f4d7a3ee1b54a21806819f76', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364200833, '');
INSERT INTO `oc_sessions` VALUES ('dd8fee9d5a14fce0f69648de9c843c4e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364200833, '');
INSERT INTO `oc_sessions` VALUES ('2bf891cf3f64d3d1eddb2db85f97bb8b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364200848, '');
INSERT INTO `oc_sessions` VALUES ('734ac440c6f1d9b4088951ed3c9cd87a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364200848, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('e2c20c5330048a8fa15c04f75ff2591d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364203221, '');
INSERT INTO `oc_sessions` VALUES ('58fec697a40fc88c113e92635aee6413', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364203221, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364210421;}}');
INSERT INTO `oc_sessions` VALUES ('37da9936c458b302f2523d949091e53e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364207905, '');
INSERT INTO `oc_sessions` VALUES ('1b466181be8ba9db3a276fd24332526d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364207905, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('a5e97111ed3fec5a00fe71182df8ebeb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364212714, '');
INSERT INTO `oc_sessions` VALUES ('1826c1c6cb469ec1e58709c7e5f9dfee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364212715, '');
INSERT INTO `oc_sessions` VALUES ('0df42fc61c90d8bed382bb395af85055', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364213127, '');
INSERT INTO `oc_sessions` VALUES ('ec9ef3317403406dd19f80c239effcf0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364213127, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364220327;}}');
INSERT INTO `oc_sessions` VALUES ('8be03a6fcd03de139c5b6f813a09d0bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364242731, '');
INSERT INTO `oc_sessions` VALUES ('1442b918c26d7b731e0a3933a277c9fa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364242871, '');
INSERT INTO `oc_sessions` VALUES ('115fcf38017841d9875cf435d333add3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364242731, '');
INSERT INTO `oc_sessions` VALUES ('b03d8037ff0b7b44de7f174b942f63cf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364242871, '');
INSERT INTO `oc_sessions` VALUES ('66be426e5a462a0fa5240897204aab0a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364242931, '');
INSERT INTO `oc_sessions` VALUES ('e8f8e40ec0c3e6a28ab68db8befd9f8a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364242932, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('d2f6c9f01789a7a6359627754495022a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364245726, 'a:1:{s:17:"flash:old:message";s:29:"You have Signup Successfully.";}');
INSERT INTO `oc_sessions` VALUES ('b2d1887ebf8968fdfd52e53f38ac05f5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364245726, '');
INSERT INTO `oc_sessions` VALUES ('08ddb91c35d07b9fb4d838bf90afc84c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364275697, '');
INSERT INTO `oc_sessions` VALUES ('f57c7c341c7c12d30aeab58d10d42296', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364275697, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:7:"/admin/";}');
INSERT INTO `oc_sessions` VALUES ('37e577d7f00a9af87f9c5d02a687b8c4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364276397, '');
INSERT INTO `oc_sessions` VALUES ('ffd1de2c505b21a429eb4a662a39bc88', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364276397, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364283597;}}');
INSERT INTO `oc_sessions` VALUES ('770f65732b18c581773f82bf8549127e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364275926, '');
INSERT INTO `oc_sessions` VALUES ('14da64425aaf0ce9a0107e046726b4ee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364275926, '');
INSERT INTO `oc_sessions` VALUES ('07dc7953031b0f1737400c493146ee06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364276039, '');
INSERT INTO `oc_sessions` VALUES ('84ca368b18c542264982503694e1feba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364276039, '');
INSERT INTO `oc_sessions` VALUES ('b978a2564ee1172683083dc14a99c26c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364276621, '');
INSERT INTO `oc_sessions` VALUES ('e6ca37edf8457e7b0904c37364bd6d00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364276621, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('9677809a0ce826ca426044d1222d218e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364292579, '');
INSERT INTO `oc_sessions` VALUES ('d83f123d38b1bfdf8e9c8b60774275c7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364292466, '');
INSERT INTO `oc_sessions` VALUES ('a633874700db3d029c95c4c78e5d77a0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364292579, 'a:1:{s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364299779;}}');
INSERT INTO `oc_sessions` VALUES ('ea01d2c70148f319f7058db073b855c8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364292466, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:17:"/admin/categories";}');
INSERT INTO `oc_sessions` VALUES ('6ee3bd886e459e4017e01fd5f4919fc0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299300, '');
INSERT INTO `oc_sessions` VALUES ('8559826c1362b9626cad3c90cbe9d3d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299301, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364299951;}}');
INSERT INTO `oc_sessions` VALUES ('28aaf91d0b21f21a0965a8fb17a9de76', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299573, '');
INSERT INTO `oc_sessions` VALUES ('c73719214dcf8965c2a5c907ebe940cf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299573, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364306773;}}');
INSERT INTO `oc_sessions` VALUES ('17b85933a0e2072311d081c98cfc0b23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299594, '');
INSERT INTO `oc_sessions` VALUES ('d45e82926ae72428f17bf9415f1317e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299594, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:23:"/admin/customers/form/1";}');
INSERT INTO `oc_sessions` VALUES ('6240a596d74e329d41602834c8ed9b57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299605, '');
INSERT INTO `oc_sessions` VALUES ('623fbc5d66945c89f89d930d38868c70', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299605, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:31:"/admin/customers/address_form/1";}');
INSERT INTO `oc_sessions` VALUES ('b4932c1eaed25b9aa8e569dbf9d44ee4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299609, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('0b4283772cc24719188e6a5c1a53adf2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364299609, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364300362;}}');
INSERT INTO `oc_sessions` VALUES ('628aca6426c9b7412a896b0526dcfb8d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364307026, '');
INSERT INTO `oc_sessions` VALUES ('9981027c6215360106f49fbf1110aa00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364307949, '');
INSERT INTO `oc_sessions` VALUES ('2ff9fb561ed01516ba92375b3a6acc1c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364307026, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364314226;}}');
INSERT INTO `oc_sessions` VALUES ('292d130edc8ae853fd5ab7af1cbc21f4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364307949, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";N;s:8:"lastname";N;s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364315149;}}');
INSERT INTO `oc_sessions` VALUES ('4de93b97b81e280ddd112017f4943c59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364309684, '');
INSERT INTO `oc_sessions` VALUES ('a01ee80a0a2d903786466234a9a84814', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364309684, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364310480;}}');
INSERT INTO `oc_sessions` VALUES ('7f5f32b62a24948810ea1225e4a3b144', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364311859, 'a:1:{s:17:"flash:old:message";s:25:"You have been logged out.";}');
INSERT INTO `oc_sessions` VALUES ('3eef571fd3cd3f53d73d8bebb32d4d71', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364311859, '');
INSERT INTO `oc_sessions` VALUES ('695bc75dd2a0fc57040486440eabffd5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364311897, '');
INSERT INTO `oc_sessions` VALUES ('e5fe0d4c4a1d597876206da48c62c346', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364311897, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364312587;}}');
INSERT INTO `oc_sessions` VALUES ('7d9c4899720d7bb07fd0192264a4ce37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364313322, '');
INSERT INTO `oc_sessions` VALUES ('7400d2da2442f57f703792948e0f62bc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364313322, '');
INSERT INTO `oc_sessions` VALUES ('279556461d240fb708e0d6da9cab500f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364313520, '');
INSERT INTO `oc_sessions` VALUES ('c82aca62a68848a1f52a9691fe521165', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364313520, '');
INSERT INTO `oc_sessions` VALUES ('03d4531b19e093eeed225e99155d1d9c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364327557, '');
INSERT INTO `oc_sessions` VALUES ('68de8cfff54dcb1cadd5f52066a3ee3e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364322002, '');
INSERT INTO `oc_sessions` VALUES ('b20cb1c574dc442cb5b4f06cd7085cb0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364327557, 'a:1:{s:18:"flash:old:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('6985f941bda864479115f3fd01630a30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364322002, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('2a5b7134c3fe197f71036a353a00ecce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364327568, '');
INSERT INTO `oc_sessions` VALUES ('49b07849dcc95c0bcb5ea44f638c8482', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364327568, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364328221;}}');
INSERT INTO `oc_sessions` VALUES ('28f56fb9196f0d2a6e33f0ac0389e8d3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364399562, '');
INSERT INTO `oc_sessions` VALUES ('b3e2ef23dcbe636cfe2f11e40f130de1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364399562, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364406762;}}');
INSERT INTO `oc_sessions` VALUES ('c50890679af0c9b80590ad39bbf42e3c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364365553, '');
INSERT INTO `oc_sessions` VALUES ('1238d26cdd0b8714c526d6de2bae1a36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364365553, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364366172;}}');
INSERT INTO `oc_sessions` VALUES ('7b72395c3fe8db3eb4d2a16a57c695f8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364368714, '');
INSERT INTO `oc_sessions` VALUES ('662f0e2aad7525fbbedcf2920c1714d8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364368714, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364375914;}}');
INSERT INTO `oc_sessions` VALUES ('1df4cfb44a130cce81b9aaec539cffcf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364369072, '');
INSERT INTO `oc_sessions` VALUES ('2056a25be6c65ed6e752682a4db81f3c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364369072, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364376273;}}');
INSERT INTO `oc_sessions` VALUES ('43c5f003135c7c7f0d1b65f857ac3fe0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364369212, '');
INSERT INTO `oc_sessions` VALUES ('090e6909a4e25f79b64f49f8355cfbb9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364369212, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364376412;}}');
INSERT INTO `oc_sessions` VALUES ('bfe796e334deced41a59ecf809095a88', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364369213, '');
INSERT INTO `oc_sessions` VALUES ('e605e584aeebc7f87810e924cbcfa66f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364369213, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:15:"/admin/products";}');
INSERT INTO `oc_sessions` VALUES ('271415c2d586f710c56681f9fb213b2c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364370802, '');
INSERT INTO `oc_sessions` VALUES ('ac8dcac0eae77179ebe2f071a1a57019', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0 FirePHP/0.7.1', 1364370802, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364378002;}}');
INSERT INTO `oc_sessions` VALUES ('9ef989593f8fc10352bb26fb7f2d6e0e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364399601, '');
INSERT INTO `oc_sessions` VALUES ('c695f299dbc07ffc8f967c1f99416ac1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364399601, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364400236;}}');
INSERT INTO `oc_sessions` VALUES ('49315751ae8db76ef4082cb6e4f8f674', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364550359, '');
INSERT INTO `oc_sessions` VALUES ('4912cb757737c89d642faebe3da6d49e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364406650, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364413851;}}');
INSERT INTO `oc_sessions` VALUES ('330ae7b18d33063dead72a302887e62e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364568718, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364575918;}}');
INSERT INTO `oc_sessions` VALUES ('5c83b15614ba6d2cac8101506e34c094', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364586033, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364593233;}}');
INSERT INTO `oc_sessions` VALUES ('edd9fd1e16ffdc7872c76f517e35cce4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364568718, '');
INSERT INTO `oc_sessions` VALUES ('c4c71f79c2cad3e44ceb7b72b0618227', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.22 (KHTML, like Gecko) Chrome/25.0.1364.172 Safari/537.22', 1364550359, '');
INSERT INTO `oc_sessions` VALUES ('a79d8dfced075468c97627a7a66cad90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364586033, '');
INSERT INTO `oc_sessions` VALUES ('8083472e9a0249ad7bec79891e97cbcc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364584517, '');
INSERT INTO `oc_sessions` VALUES ('9efff2f0c946ada0b40b088133e893f8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364584517, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364591717;}}');
INSERT INTO `oc_sessions` VALUES ('9f0566a792a8f655bc4a7875ed7c389c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364569035, '');
INSERT INTO `oc_sessions` VALUES ('f880951c31153faf5d9007db27d3f279', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:19.0) Gecko/20100101 Firefox/19.0', 1364569035, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:6:"expire";i:1364576235;}}');
INSERT INTO `oc_sessions` VALUES ('a18dd64122e6202977815178d9018a4e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364620084, '');
INSERT INTO `oc_sessions` VALUES ('33cbfc4a88fac574d3057ed478030096', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364620046, '');
INSERT INTO `oc_sessions` VALUES ('6a9fa0acfdb4fb38735461cd6b3e1c12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364620046, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364627246;}}');
INSERT INTO `oc_sessions` VALUES ('e278dfa30b2e2111ab9acb1b82445e84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364620084, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:5:"super";s:8:"lastname";s:5:"super";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364627284;}}');
INSERT INTO `oc_sessions` VALUES ('1dc5ea9816afef068b667c2d85fc9273', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364728611, '');
INSERT INTO `oc_sessions` VALUES ('93e848dab8e75caefc5c240e20b95801', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364728611, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:6:"junaid";s:8:"lastname";s:6:"khalil";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364735811;}}');
INSERT INTO `oc_sessions` VALUES ('81a929bf1c75790e31fea4c823b54496', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364720559, '');
INSERT INTO `oc_sessions` VALUES ('8a898f6e970adcf22d6d2a55b69a9721', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364720559, '');
INSERT INTO `oc_sessions` VALUES ('5f6ec16f3e29ea501114105dc7bb6afb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364720559, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:33:"/admin/invoices/invoice_recursion";}');
INSERT INTO `oc_sessions` VALUES ('0e5a5eab94787dccafd3020cc7a60186', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364720559, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:15:"/admin/invoices";}');
INSERT INTO `oc_sessions` VALUES ('387517b1d83f981b101ee6da24022964', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364751161, '');
INSERT INTO `oc_sessions` VALUES ('df1669ee7bbddf3df410f5d50154c213', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364754121, '');
INSERT INTO `oc_sessions` VALUES ('f010f7931813d923cf9edb57399f9749', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364754121, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:6:"expire";i:1364761321;}}');
INSERT INTO `oc_sessions` VALUES ('b6848de43ca1777815bea3e1acebf822', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364754960, '');
INSERT INTO `oc_sessions` VALUES ('0dd8710b180b084bb4b9216e7d94fab2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364754960, '');
INSERT INTO `oc_sessions` VALUES ('21c3bb2622bfdf999da05898e0775309', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364796175, '');
INSERT INTO `oc_sessions` VALUES ('6e39394fe7b3c6eed5b773b0831fbe62', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364796175, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:6:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:6:"junaid";s:8:"lastname";s:6:"khalil";s:5:"email";s:23:"khalil.junaid@gmail.com";s:6:"expire";i:1364803375;}}');
INSERT INTO `oc_sessions` VALUES ('edd1f72816e58ebd1a11af2d022c830f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364797646, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('92fcd1c85e1975a50519bca153719555', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364797924, '');
INSERT INTO `oc_sessions` VALUES ('ccd9c856a7ae72dffd0fade9ba1631d0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364797646, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:6:"junaid";s:8:"lastname";s:6:"khalil";s:5:"email";s:23:"khalil.junaid@gmail.com";s:5:"image";s:11:"thumb_1.jpg";s:6:"expire";i:1364804846;}}');
INSERT INTO `oc_sessions` VALUES ('1a4ae6fa99d2303b23555ca9557b49c7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364797924, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:6:"junaid";s:8:"lastname";s:6:"khalil";s:5:"email";s:23:"khalil.junaid@gmail.com";s:5:"image";s:11:"thumb_1.jpg";s:6:"expire";i:1364805124;}}');
INSERT INTO `oc_sessions` VALUES ('b18733f13e866f8e75ced21eed08da89', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364798878, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('bfcb004f805a26e851fd0527879c4e2f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364798878, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:1:"1";s:6:"access";s:5:"Admin";s:9:"firstname";s:6:"junaid";s:8:"lastname";s:6:"khalil";s:5:"email";s:23:"khalil.junaid@gmail.com";s:5:"image";s:11:"thumb_1.jpg";s:6:"expire";i:1364806078;}}');
INSERT INTO `oc_sessions` VALUES ('3819d0af1b2a576eb91136bdc97c27c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364799138, '');
INSERT INTO `oc_sessions` VALUES ('2bfeb97e83f69cffa0165b14c42b1f57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.43 Safari/537.31', 1364799138, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:0:"";s:6:"expire";i:1364806338;}}');
INSERT INTO `oc_sessions` VALUES ('5297cacf331ff11d57fc3dd504dca8c9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366104555, 'a:1:{s:9:"user_data";s:0:"";}');
INSERT INTO `oc_sessions` VALUES ('eb8f232fe23f8bfffe9a71ccf4543628', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366104555, 'a:1:{s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366111755;}}');
INSERT INTO `oc_sessions` VALUES ('44c2a87fb23116203893bae8142bcdf3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366104687, '');
INSERT INTO `oc_sessions` VALUES ('a74074178e283926f6701643883cc96a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366104687, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366111887;}}');
INSERT INTO `oc_sessions` VALUES ('dd3df9aef78ad4f123f1244b319240f6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:20.0) Gecko/20100101 Firefox/20.0', 1366957224, '');
INSERT INTO `oc_sessions` VALUES ('aac4303832eb2ed58afb7becbf2de311', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:20.0) Gecko/20100101 Firefox/20.0', 1366957224, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366964424;}}');
INSERT INTO `oc_sessions` VALUES ('a491decfd506eb0a97475fce6a9383a4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, 'a:1:{s:15:"flash:old:error";b:0;}');
INSERT INTO `oc_sessions` VALUES ('231ce23b7d6bb7cc72199df3e0f3171c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268130, '');
INSERT INTO `oc_sessions` VALUES ('bb8de35fc9aa3ffacc59d9481464142e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366275331;}}');
INSERT INTO `oc_sessions` VALUES ('c6b5d1b317ce3810020e6843e91a36ff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268130, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:44:"/admin/invoice_templates/form/css/styles.css";}');
INSERT INTO `oc_sessions` VALUES ('b5f6d29cd3a506f8fcc4de06ec9577a2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, '');
INSERT INTO `oc_sessions` VALUES ('3d5192c0555fc7706fb414c95f94bfb3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/invoice_templates/form/images/m2.jpg";}');
INSERT INTO `oc_sessions` VALUES ('3e5cc03fffc4e630a852b822991e8520', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, '');
INSERT INTO `oc_sessions` VALUES ('c4061b32fb7bece3c23869c05a42f9a5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:53:"/admin/invoice_templates/form/images/our-projects.jpg";}');
INSERT INTO `oc_sessions` VALUES ('bb86bc99ac6adf582755820f7029fd0d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('236f569a2ff495200e3bca365b712fa3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, '');
INSERT INTO `oc_sessions` VALUES ('42257376cfa2f6be4e5f9e3edf33625a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:51:"/admin/invoice_templates/form/images/who-we-are.jpg";}');
INSERT INTO `oc_sessions` VALUES ('dfdc3ae8d25df5c6b2f988be7bb9914e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, '');
INSERT INTO `oc_sessions` VALUES ('2af84cc7ec2d301b8f14a1df43b851f3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('4391c22af3746fe513cc125615fca789', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:new:redirect";s:45:"/admin/invoice_templates/form/images/home.jpg";}');
INSERT INTO `oc_sessions` VALUES ('bc60294b3b445537e0692ed80b2cec54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268131, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:49:"/admin/invoice_templates/form/images/contacts.jpg";}');
INSERT INTO `oc_sessions` VALUES ('48093a931e1786a24c296ba0261a87f9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:54:"/admin/invoice_templates/form/images/image-gallery.jpg";}');
INSERT INTO `oc_sessions` VALUES ('fb043d8780510a3102b8268d6abeed23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('47ae13835c0ebe4c2bcc8a28fae8afb6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/wel1.jpg";}');
INSERT INTO `oc_sessions` VALUES ('c68e7afc30c07ff09c9c117f51eb4186', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('331e1d82cf2c576592069b15dbd84464', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/wel2.jpg";}');
INSERT INTO `oc_sessions` VALUES ('e1397c3beccb6c53ac1bd11bed97414c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('88062c87e066e3eccea4431dd45094fd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/wel3.jpg";}');
INSERT INTO `oc_sessions` VALUES ('385503dfb2533cecd3797b82d9904b96', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('03ead0db3534c3917471e628bf42430d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('b00b90b23b01d09954135ef29b0bd276', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/pro1.jpg";}');
INSERT INTO `oc_sessions` VALUES ('079b444fb87349390b20ce02b67b262a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/pro2.jpg";}');
INSERT INTO `oc_sessions` VALUES ('42d0f172aa40996d7dedfcdaf4c4a6e3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('b2f89b2f4972963d51aec6262f36055d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('d58de39202d271d5f2d53f63c188b3fe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:44:"/admin/invoice_templates/form/images/dn2.jpg";}');
INSERT INTO `oc_sessions` VALUES ('4e945c27e300103bc20b19cfb4e6a85d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:47:"/admin/invoice_templates/form/images/spacer.gif";}');
INSERT INTO `oc_sessions` VALUES ('978d2be48c4fca83e0b4950ca539abc2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268133, '');
INSERT INTO `oc_sessions` VALUES ('2a7e05acb8dcf86658ba97f97fc2f419', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268133, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/invoice_templates/form/images/m3.jpg";}');
INSERT INTO `oc_sessions` VALUES ('96b7c614f1d2a314518dc17b0b701ad0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268133, '');
INSERT INTO `oc_sessions` VALUES ('2c2f3eefb233f3c24c86549a84269e83', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268133, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:44:"/admin/invoice_templates/form/images/dn1.jpg";}');
INSERT INTO `oc_sessions` VALUES ('fa55f1a7ae12c1d671fd6ccde8faffc3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268143, '');
INSERT INTO `oc_sessions` VALUES ('c3c6c0bddf6b31c1a11418aeb4cf311a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268143, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:44:"/admin/invoice_templates/form/css/styles.css";}');
INSERT INTO `oc_sessions` VALUES ('5ddaeda9babc51db6da431d0c1b4a327', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, '');
INSERT INTO `oc_sessions` VALUES ('7423dd48cb6b9eafe13a13d38c97930c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268132, '');
INSERT INTO `oc_sessions` VALUES ('c8386475504274724fca161b670aadbf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/invoice_templates/form/images/m1.jpg";}');
INSERT INTO `oc_sessions` VALUES ('1d94935b09b5cf7b9b9d9907bf1c04ae', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, '');
INSERT INTO `oc_sessions` VALUES ('97370c1e0118bb1d1c5b9be80d106f69', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/invoice_templates/form/images/m2.jpg";}');
INSERT INTO `oc_sessions` VALUES ('29bddee3bb7296f2ba5dcbc89ab69e43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, '');
INSERT INTO `oc_sessions` VALUES ('624e7741f215b621d4035bdc59fd8c77', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:53:"/admin/invoice_templates/form/images/our-projects.jpg";}');
INSERT INTO `oc_sessions` VALUES ('6998259b02c23dc9833dd0c5c9dabd45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, '');
INSERT INTO `oc_sessions` VALUES ('c3a4e752e0f90e2192507a17b5a00ba8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, '');
INSERT INTO `oc_sessions` VALUES ('833f29bfcd3c8b50fd031cf22548cec8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/home.jpg";}');
INSERT INTO `oc_sessions` VALUES ('676603f14028558b64ced0151e8d7125', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:54:"/admin/invoice_templates/form/images/image-gallery.jpg";}');
INSERT INTO `oc_sessions` VALUES ('39d5e689cb0a577621df083cf230111d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, '');
INSERT INTO `oc_sessions` VALUES ('c034c2bf7dad9775a8ddb0c6da8d4c73', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268144, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:51:"/admin/invoice_templates/form/images/who-we-are.jpg";}');
INSERT INTO `oc_sessions` VALUES ('6309659af60060730fad5548308ac99c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('9c1e0da1413a21c7aa1a90014e6187a2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('019839cbb20c50439981642e507e01ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:49:"/admin/invoice_templates/form/images/contacts.jpg";}');
INSERT INTO `oc_sessions` VALUES ('c094cc737b4f4f90348e9f4daec444af', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/wel1.jpg";}');
INSERT INTO `oc_sessions` VALUES ('9f1330c19f5bd86443689b1bcf23873e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('9d22b64ff19ee4a5aadb1943ae2426fe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/wel2.jpg";}');
INSERT INTO `oc_sessions` VALUES ('a5e4bd4f3397ad6891d566f3f9480248', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('8f15b0ba7ff3532020806aa4c5bd9a6f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('c3e9e42c4204dc2d651a939476aca090', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('b9a8af34ec8844533696a1b5e97ffe34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/pro1.jpg";}');
INSERT INTO `oc_sessions` VALUES ('bacb855cc6393eabb09492a875025316', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:43:"/admin/invoice_templates/form/images/m3.jpg";}');
INSERT INTO `oc_sessions` VALUES ('22431aae99c76d1c772594c7e2e4ddc3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:44:"/admin/invoice_templates/form/images/dn1.jpg";}');
INSERT INTO `oc_sessions` VALUES ('08180f2aeeff3209acf657f6064a7a91', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('17552248eebb136beaa80c4beb8e24ac', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/pro2.jpg";}');
INSERT INTO `oc_sessions` VALUES ('c6b3878a1cfe6f199a26139eafeedc4e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('6906edc28b57d44f5d2284b14568693c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:45:"/admin/invoice_templates/form/images/wel3.jpg";}');
INSERT INTO `oc_sessions` VALUES ('03956320fc0a57daffff3da2f1ccd009', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('cb258315073975296704e49bf218ef8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, '');
INSERT INTO `oc_sessions` VALUES ('6c58cbb29e61a613afc14d42e560d869', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:47:"/admin/invoice_templates/form/images/spacer.gif";}');
INSERT INTO `oc_sessions` VALUES ('dc30028cc3c1e447cad09a6827b96370', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366268145, 'a:2:{s:9:"user_data";s:0:"";s:18:"flash:old:redirect";s:46:"/admin/invoice_templates/form/images/b_obj.jpg";}');
INSERT INTO `oc_sessions` VALUES ('5d9273f21c2740f34637e7885e618179', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366289914, '');
INSERT INTO `oc_sessions` VALUES ('8cf4cbba9eea2ffe06389d00eddfbd2b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366289914, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366297114;}}');
INSERT INTO `oc_sessions` VALUES ('dbe5de6dc676b1cee61f03402158a28f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366358330, '');
INSERT INTO `oc_sessions` VALUES ('234a5d6eacc9e50ca0a445ef2e1f6c5c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366358330, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366365531;}}');
INSERT INTO `oc_sessions` VALUES ('56c188de9d2e85f9f8c110101c35f101', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366699844, '');
INSERT INTO `oc_sessions` VALUES ('e82eed32a907d85edf99a635183a70e8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366699844, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366707044;}}');
INSERT INTO `oc_sessions` VALUES ('ea0c3c70eeb5dadc5fa4af6ccc8e9d8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366715156, '');
INSERT INTO `oc_sessions` VALUES ('506b1568e2573cd1fee333fc0cb9e91c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366715156, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366722356;}}');
INSERT INTO `oc_sessions` VALUES ('0c583186810785ec7c37f1ba94bcab6c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367036694, '');
INSERT INTO `oc_sessions` VALUES ('cc0f20a5c6821e3f30ab1821593fe82c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367036694, 'a:2:{s:9:"user_data";s:0:"";s:5:"admin";a:7:{s:2:"id";s:2:"14";s:6:"access";s:10:"Superadmin";s:9:"firstname";s:5:"Weber";s:8:"lastname";s:3:"Pro";s:5:"email";s:15:"weber@gmail.com";s:5:"image";s:12:"thumb_14.jpg";s:6:"expire";i:1366988792;}}');
INSERT INTO `oc_sessions` VALUES ('289b9630ee5ee5251234c814973ba6ed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954671, '');
INSERT INTO `oc_sessions` VALUES ('f8249273ea7105b387b56fc64b274647', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954671, '');
INSERT INTO `oc_sessions` VALUES ('bdef6c31928a665c68d4329367e35ab8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954703, '');
INSERT INTO `oc_sessions` VALUES ('f3f3c130114a19595c66c0b279309010', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954703, '');
INSERT INTO `oc_sessions` VALUES ('347c78562777aa921d0e8826609e0b09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954706, '');
INSERT INTO `oc_sessions` VALUES ('3352bd1a9256584e3d675da32f6c1ae9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954706, '');
INSERT INTO `oc_sessions` VALUES ('2ca08902bac32faf7e563f42a152e461', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954710, '');
INSERT INTO `oc_sessions` VALUES ('e31c4a676e20aaf49a13e206e9e689a0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954710, '');
INSERT INTO `oc_sessions` VALUES ('705cf3d4ea2d46ffda708a762532d5b9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954714, '');
INSERT INTO `oc_sessions` VALUES ('17a6bb154c2c15e262553eb6773553c4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366954714, '');
INSERT INTO `oc_sessions` VALUES ('dc5fd210f0584a430817f81ab0ac54ea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366955173, '');
INSERT INTO `oc_sessions` VALUES ('88c2712b0fa15e39108d5a848fbfb3fe', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366955173, '');
INSERT INTO `oc_sessions` VALUES ('170df187701addb8662690602234361a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('f32bcce31979e2a252c7980ebd51e750', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('06c749c266f5e34ce7c32027140a74e6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('c671c061eb0baf8e6182446aa1a82a26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('7ae96ba7f1f1b253f3a4e709a8b82cc1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('7ea417e249f0f0110caf0adfe013b3cf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('625c1e00c48087d5bc391051124c12ea', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('1c9dd3da4e4c08010b8bcf0f8ac5904d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956330, '');
INSERT INTO `oc_sessions` VALUES ('696156ed78ca1c8b770dc13ad9a894c6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956333, '');
INSERT INTO `oc_sessions` VALUES ('f928e46fadef624071dad41d504ba09c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956333, '');
INSERT INTO `oc_sessions` VALUES ('24dcd14f3768986dd7fdfd2472a48114', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('972ed6afdfc0c023a25844f5e7441b27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('f1ebbe25eb01c9161cc38c20f3bca448', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('c17990706ff581c998070c7b59fea698', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('5194eaf20506a2cc4224f79f8f4d1f49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('f3f6169345283705b69a24ba246d4534', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('f16b73d289b6fa3e1488d60c5b4d54b0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('ae1ce7c18fde172fdaeb6e3705559ebb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956370, '');
INSERT INTO `oc_sessions` VALUES ('708b2c168b700ecfb46d9f6dcd01bd95', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('5f37771a21a1273806ca261fcc155241', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('b2c0b2a60f9274c42986067e47fcad7b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('9e32d35c84ffa54a2769083633f726ed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('fe2de9484327fd6f5661c7cadfd77a2b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('8521615540311a9dcd57db15344fa353', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('b395b6b4508dccf4e81ea7d134e394ab', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('4b769e42c91d161cad453f33b3e96f06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1366956454, '');
INSERT INTO `oc_sessions` VALUES ('2ed8d58f9d6c0fcec6cce962aaf2874d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367036695, '');
INSERT INTO `oc_sessions` VALUES ('5dc904b610dea748183184f67ff8e1b6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.64 Safari/537.31', 1367036695, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `oc_settings`
-- 

CREATE TABLE `oc_settings` (
  `id` int(11) NOT NULL auto_increment,
  `code` varchar(255) NOT NULL,
  `setting_key` varchar(255) NOT NULL,
  `setting` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `oc_settings`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `oc_tax_rates`
-- 

CREATE TABLE `oc_tax_rates` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `admin_id` int(50) NOT NULL,
  `tax_rate_name` varchar(25) NOT NULL,
  `tax_rate_percent` decimal(5,2) NOT NULL,
  `tax_level` varchar(50) NOT NULL,
  PRIMARY KEY  (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `oc_tax_rates`
-- 

INSERT INTO `oc_tax_rates` VALUES (1, 0, 'Rule', 5.00, '0');
INSERT INTO `oc_tax_rates` VALUES (2, 0, 'Rule2', 8.00, 'Normal');
INSERT INTO `oc_tax_rates` VALUES (4, 0, 'Tax Number', 8.00, 'Universal');
