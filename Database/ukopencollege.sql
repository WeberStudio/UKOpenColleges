-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 08, 2013 at 10:47 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `ukopencollege`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `categories`
-- 

CREATE TABLE `categories` (
  `cat_id` int(50) NOT NULL auto_increment,
  `user_id` int(50) default NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_shortdesc` varchar(255) default NULL,
  `cat_longdesc` text,
  `cat_img` varchar(500) default NULL,
  `cat_status` enum('Publish','Unpublish') NOT NULL,
  `cat_created_by` int(11) NOT NULL,
  `cat_creator_id` int(11) NOT NULL,
  `cat_delete` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `categories`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `supplier`
-- 

CREATE TABLE `supplier` (
  `s_id` int(100) NOT NULL auto_increment,
  `s_email` varchar(255) NOT NULL,
  `s_login` varchar(255) NOT NULL,
  `s_pass` varchar(255) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_country` varchar(50) NOT NULL,
  `s_city` varchar(50) NOT NULL,
  `s_state` varchar(50) NOT NULL,
  `s_zipcode` varchar(50) NOT NULL,
  `s_number` varchar(50) NOT NULL,
  `s_status` varchar(50) default NULL,
  `s_join_date` datetime NOT NULL,
  `s_img` varchar(255) default NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `supplier`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `user_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_status` int(11) NOT NULL default '0',
  `user_roll` varchar(50) NOT NULL,
  `user_img` varchar(50) default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `users`
-- 

