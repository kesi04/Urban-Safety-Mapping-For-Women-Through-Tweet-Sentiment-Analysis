-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2019 at 01:27 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `women`
--
CREATE DATABASE IF NOT EXISTS `women` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `women`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add userregister_ model', 7, 'add_userregister_model'),
(20, 'Can change userregister_ model', 7, 'change_userregister_model'),
(21, 'Can delete userregister_ model', 7, 'delete_userregister_model'),
(22, 'Can add tweet model', 8, 'add_tweetmodel'),
(23, 'Can change tweet model', 8, 'change_tweetmodel'),
(24, 'Can delete tweet model', 8, 'delete_tweetmodel'),
(25, 'Can add feedback_ model', 9, 'add_feedback_model'),
(26, 'Can change feedback_ model', 9, 'change_feedback_model'),
(27, 'Can delete feedback_ model', 9, 'delete_feedback_model');

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
  `first_name` varchar(30) NOT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_feedback_model`
--

CREATE TABLE IF NOT EXISTS `client_feedback_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mobilenumber` varchar(100) NOT NULL,
  `feedback` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `client_tweetmodel`
--

CREATE TABLE IF NOT EXISTS `client_tweetmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet` varchar(500) NOT NULL,
  `topics` varchar(300) NOT NULL,
  `sentiment` varchar(300) NOT NULL,
  `images` varchar(100) NOT NULL,
  `userId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Client_tweetmodel_userId_id_cee682c4_fk_Client_us` (`userId_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `client_tweetmodel`
--

INSERT INTO `client_tweetmodel` (`id`, `tweet`, `topics`, `sentiment`, `images`, `userId_id`) VALUES
(101, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by “The Economist” ranked Mumbai 16th in the “Most Unsafe Cities of the World” list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'nutral', 'sp.png', 1),
(102, '#Delhi There is no doubt that Delhi isn’t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'negative', 'low.jpg', 1),
(103, '#Chennai is more safe i have ever seen before', 'Chennai', 'positive', '', 1),
(104, '#chennai is some good to safe', 'chennai', 'positive', '', 1),
(105, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(106, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(107, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(108, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(109, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'negative', 'low.jpg', 1),
(110, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(111, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(112, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(113, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(114, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'negative', 'low.jpg', 1),
(115, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(116, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(117, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(118, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(119, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(120, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(121, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(122, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(123, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(124, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'negative', 'low.jpg', 1),
(125, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(126, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(127, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(128, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'negative', 'sp.png', 1),
(129, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(130, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(131, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(132, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(133, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(134, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'negative', 'low.jpg', 1),
(135, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(136, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(137, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(138, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(139, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(140, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(141, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(142, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(143, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(144, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(145, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(146, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(147, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(148, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'negative', 'sp.png', 1),
(149, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(150, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(151, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(152, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(153, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(154, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(155, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(156, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(157, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(158, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(159, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(160, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(161, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(162, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(163, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(164, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(165, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(166, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(167, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(168, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(169, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'negative', 'low.jpg', 1),
(170, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(171, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(172, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(173, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(174, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(175, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(176, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(177, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(178, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(179, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(180, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(181, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(182, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(183, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(184, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(185, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(186, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(187, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(188, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(189, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'negative', 'low.jpg', 1),
(190, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(191, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'negative', 'unknown.png', 1),
(192, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(193, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(194, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(195, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'positive', 'light.png', 1),
(196, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(197, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'positive', 'care.png', 1),
(198, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(199, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(200, '#Chennai is safest city for women nice to work and much better safe', 'Chennai', 'negative', 'light.png', 1),
(201, '#Pune is also safe city for more women and children , totally some kind of abuse is here', 'Pune', 'positive', 'unknown.png', 1),
(202, '#kolkata, ofcourse Kolkata is highly safer than other cities of india for women little bit less . ... "As per published data by the National Crimes Records Bureau, Kolkata is a safe city for women, well behind in recorded crimes compared to Delhi, Mumbai, Bengaluru and Ahmedabad,', 'Kolkata', 'negative', 'care.png', 1),
(203, '#Mumbai Mumbai has always been regarded as the safest city for Women. However, a recent survey conducted by ?The Economist? ranked Mumbai 16th in the ?Most Unsafe Cities of the World? list. More shocking is the fact that Delhi is two places behind Mumbai, meaning it is regarded as safer for women', 'Mumbai', 'positive', 'sp.png', 1),
(204, '#Delhi There is no doubt that Delhi isn?t safe for girls. Unsafe, harresment, Almost every girl who has been in this city has faced tough situations and I had heard a lot from my friends and foes.', 'Delhi', 'positive', 'low.jpg', 1),
(205, '#Chennai Safeest city for womnes', 'Chennai', 'nutral', 'Chrysanthemum.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client_userregister_model`
--

CREATE TABLE IF NOT EXISTS `client_userregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `client_userregister_model`
--

INSERT INTO `client_userregister_model` (`id`, `name`, `email`, `password`, `phoneno`, `address`, `dob`, `country`, `state`, `city`) VALUES
(1, 'fathima', 'fathima@gmail.com', 'fathima', '9878665677', 'chennai', '1995-09-17', 'India', 'Tamil Nadu', 'Chennai'),
(2, 'noorul', 'noorul@gmail.com', 'hello12341', '8765884898', 'chennai', '1998-09-08', 'India', 'Tamil Nadu', 'Chennai');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'Client', 'feedback_model'),
(8, 'Client', 'tweetmodel'),
(7, 'Client', 'userregister_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Client', '0001_initial', '2019-05-23 07:18:59.556617'),
(2, 'contenttypes', '0001_initial', '2019-05-23 07:19:01.295875'),
(3, 'auth', '0001_initial', '2019-05-23 07:19:14.842750'),
(4, 'admin', '0001_initial', '2019-05-23 07:19:18.517554'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-05-23 07:19:18.560523'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-05-23 07:19:20.108375'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-05-23 07:19:20.851539'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-05-23 07:19:21.415992'),
(9, 'auth', '0004_alter_user_username_opts', '2019-05-23 07:19:21.457984'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-05-23 07:19:21.957007'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-05-23 07:19:21.976539'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-05-23 07:19:22.011695'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-05-23 07:19:22.618140'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-05-23 07:19:23.451148'),
(15, 'sessions', '0001_initial', '2019-05-23 07:19:24.499976'),
(16, 'Client', '0002_tweetmodel', '2019-05-24 09:40:48.552734'),
(17, 'Client', '0003_feedback_model', '2019-05-25 06:00:12.566695');

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
('tqt3cfld11jc4826qhusf65iox8ioj3k', 'NjA1MzBmMTI1ZTliNjY1NDUyNGY4ZDQ3YmM4ZjU3NzkzYzUwNjA0MTp7Im5hbWUiOjF9', '2019-06-08 13:22:01.638671');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `client_tweetmodel`
--
ALTER TABLE `client_tweetmodel`
  ADD CONSTRAINT `Client_tweetmodel_userId_id_cee682c4_fk_Client_us` FOREIGN KEY (`userId_id`) REFERENCES `client_userregister_model` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
