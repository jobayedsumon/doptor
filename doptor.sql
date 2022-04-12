-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2022 at 08:06 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doptor`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_settings`
--

CREATE TABLE `additional_settings` (
  `sno` int NOT NULL,
  `razorpay_key` varchar(200) DEFAULT NULL,
  `razorpay_secret` varchar(200) DEFAULT NULL,
  `per_sale_referral_commission` float NOT NULL,
  `free_subscr_duration` varchar(100) DEFAULT NULL,
  `free_subscr_item` int NOT NULL,
  `free_subscr_space` varchar(500) DEFAULT NULL,
  `free_subscr_type` varchar(100) DEFAULT NULL,
  `free_subscr_price` float NOT NULL,
  `site_google_recaptcha` int NOT NULL,
  `subscription_mode` int NOT NULL,
  `free_subscription` int NOT NULL,
  `payhere_mode` int NOT NULL,
  `payhere_merchant_id` varchar(200) DEFAULT NULL,
  `payumoney_mode` int NOT NULL,
  `payu_merchant_key` varchar(200) DEFAULT NULL,
  `payu_salt_key` varchar(200) DEFAULT NULL,
  `subscription_title` varchar(500) DEFAULT NULL,
  `subscription_desc` longtext,
  `site_footer_logo` varchar(200) DEFAULT NULL,
  `regular_license` varchar(200) DEFAULT NULL,
  `extended_license` varchar(200) DEFAULT NULL,
  `show_extended_license` int NOT NULL,
  `show_screenshots` int NOT NULL,
  `show_video` int NOT NULL,
  `show_moneyback` int NOT NULL,
  `show_demo_url` int NOT NULL,
  `show_free_download` int NOT NULL,
  `show_flash_sale` int NOT NULL,
  `show_tags` int NOT NULL,
  `show_feature_update` int NOT NULL,
  `show_item_support` int NOT NULL,
  `show_refund_term` int NOT NULL,
  `site_tawk_chat` text,
  `site_free_items_price` int NOT NULL DEFAULT '1',
  `iyzico_api_key` varchar(500) DEFAULT NULL,
  `iyzico_secret_key` varchar(500) DEFAULT NULL,
  `iyzico_mode` int NOT NULL,
  `flutterwave_public_key` varchar(500) DEFAULT NULL,
  `flutterwave_secret_key` varchar(500) DEFAULT NULL,
  `coingate_mode` int NOT NULL,
  `coingate_auth_token` varchar(500) DEFAULT NULL,
  `default_vat_price` float NOT NULL,
  `refund_mode` int NOT NULL,
  `image_quality` int NOT NULL,
  `subscr_download_items` mediumint NOT NULL,
  `upgrade_files` varchar(191) DEFAULT NULL,
  `ipay_mode` int NOT NULL,
  `ipay_vendor_id` varchar(191) DEFAULT NULL,
  `ipay_hash_key` varchar(191) DEFAULT NULL,
  `deposit_amount` varchar(191) DEFAULT NULL,
  `deposit_type` varchar(191) DEFAULT NULL,
  `verify_mode` varchar(191) DEFAULT NULL,
  `site_email_display` int NOT NULL,
  `site_phone_display` int NOT NULL,
  `site_address_display` int NOT NULL,
  `site_url_rewrite` int NOT NULL,
  `post_short_desc_limit` int NOT NULL,
  `author_name_limit` int NOT NULL,
  `item_name_limit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `additional_settings`
--

INSERT INTO `additional_settings` (`sno`, `razorpay_key`, `razorpay_secret`, `per_sale_referral_commission`, `free_subscr_duration`, `free_subscr_item`, `free_subscr_space`, `free_subscr_type`, `free_subscr_price`, `site_google_recaptcha`, `subscription_mode`, `free_subscription`, `payhere_mode`, `payhere_merchant_id`, `payumoney_mode`, `payu_merchant_key`, `payu_salt_key`, `subscription_title`, `subscription_desc`, `site_footer_logo`, `regular_license`, `extended_license`, `show_extended_license`, `show_screenshots`, `show_video`, `show_moneyback`, `show_demo_url`, `show_free_download`, `show_flash_sale`, `show_tags`, `show_feature_update`, `show_item_support`, `show_refund_term`, `site_tawk_chat`, `site_free_items_price`, `iyzico_api_key`, `iyzico_secret_key`, `iyzico_mode`, `flutterwave_public_key`, `flutterwave_secret_key`, `coingate_mode`, `coingate_auth_token`, `default_vat_price`, `refund_mode`, `image_quality`, `subscr_download_items`, `upgrade_files`, `ipay_mode`, `ipay_vendor_id`, `ipay_hash_key`, `deposit_amount`, `deposit_type`, `verify_mode`, `site_email_display`, `site_phone_display`, `site_address_display`, `site_url_rewrite`, `post_short_desc_limit`, `author_name_limit`, `item_name_limit`) VALUES
(1, 'iyiyiyiyiyiy', 'iyiutuyryyghj', 1, '15 days', 1, '2', 'Free', 0, 1, 0, 1, 0, '1216770VGGFRUJ', 0, 'fB7m8s', 'eRis5ChvGYUTYDTY', 'Lorem ipsum dolor sit amet', '&lt;p&gt;&lt;span style=&quot;font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/span&gt;&lt;/p&gt;', '164406643209.png', '6 Month', '1 Year', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '#', 1, 'sandbox-XzFhaxFfOV51Gj8tHK3uoELmUuU2p8B6786786jhgjJHFJHFHGDH', 'sandbox-DRsaEciB2qTgxPEDZUlrjqMBB686876FHFJHGJHZyhZJ0e', 0, 'FLWPUBK_TEST-6a23a89e3f2c63951237457e1acaad8f-XIUYIYIUUGDY', 'FLWSECK_TEGGIUTIUTUYST-7b84ca2b199aac5ec640ea94c04f1655-X', 0, 'SHiR5yVsyjTffS-x-zQ3wDYRLFkMGrbfBPT4sTY4iyiugjgJGJHDSRE', 10, 1, 100, 5, '16328086226152aeae998aa.zip', 0, 'demo', 'demoCHANGEDGJGTYF', '', '', '1', 1, 1, 1, 1, 300, 6, 20);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attr_id` int NOT NULL,
  `attr_category` int NOT NULL,
  `attr_label` varchar(500) DEFAULT NULL,
  `attr_field_type` varchar(100) DEFAULT NULL,
  `attr_field_value` text,
  `attr_field_order` int NOT NULL,
  `attr_field_status` int NOT NULL,
  `attr_drop_status` varchar(50) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attr_id`, `attr_category`, `attr_label`, `attr_field_type`, `attr_field_value`, `attr_field_order`, `attr_field_status`, `attr_drop_status`) VALUES
(17, 1, 'Compatible Browsers', 'multi-select', 'Internet Explorer,Firefox,Chrome,Safari,Opera', 1, 1, 'no'),
(18, 1, 'Package Includes', 'multi-select', 'JavaScript JS,JavaScript JSON,HTML,XML,CSS,PHP,SWF/FLV,SQL,LESS,Layered PSD,Layered PNG', 2, 1, 'no'),
(19, 2, 'Package Includes', 'multi-select', 'Layered PNG,Layered PSD,JPG Image,HTML Files,CSS Files,JS Files,PHP Files,Ecwid CSS Files,Muse File,HBS Files', 1, 1, 'no'),
(20, 2, 'Layout', 'single-select', 'Responsive,Fixed,Liquid,N/A', 2, 1, 'no'),
(21, 2, 'Columns', 'single-select', '1,2,3,4+,N/A', 3, 1, 'no'),
(22, 3, 'Compatible Browsers', 'multi-select', 'Internet Explorer,Firefox,Chrome,Safari,Opera', 1, 1, 'no'),
(23, 3, 'Package Includes', 'multi-select', 'JavaScript JS,JavaScript JSON,HTML,XML,CSS,PHP,SWF/FLV,SQL,LESS,Layered PSD,Layered PNG', 2, 1, 'no'),
(24, 4, 'Package Includes', 'multi-select', 'Photoshop PSD,Transparent PNG,Layered PNG,JPG Image,Vector EPS,InDesign INDD,Quark QXP,AI Illustrator,TIFF Image', 1, 1, 'no'),
(25, 4, 'Minimum Adobe CS Version', 'single-select', 'CS,CS2,CS3,CS4,CS5,CS6,CC,N/A', 2, 1, 'no'),
(26, 5, 'Package Includes', 'multi-select', 'Photoshop PSD,Transparent PNG,Layered PNG,JPG Image,Vector EPS,InDesign INDD,Quark QXP,AI Illustrator,TIFF Image', 1, 1, 'no'),
(27, 5, 'Minimum Adobe CS Version', 'single-select', 'CS,CS2,CS3,CS4,CS5,CS6,CC,N/A', 2, 1, 'no'),
(28, 6, 'Package Includes', 'multi-select', '.apk,.dex,.so,.dat,.db,.java,.xml,Layered PNG,Layered PSD,JavaScript JS,CSS,PHP,HTML', 1, 1, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `badge_id` int NOT NULL,
  `exclusive_author_icon` varchar(200) DEFAULT NULL,
  `author_sold_level_one` int NOT NULL DEFAULT '0',
  `author_sold_level_two` int NOT NULL DEFAULT '0',
  `author_sold_level_three` int NOT NULL DEFAULT '0',
  `author_sold_level_four` int NOT NULL DEFAULT '0',
  `author_sold_level_five` int NOT NULL DEFAULT '0',
  `author_sold_level_six` int NOT NULL DEFAULT '0',
  `author_sold_level_six_label` varchar(200) DEFAULT NULL,
  `author_sold_level_one_icon` varchar(200) DEFAULT NULL,
  `author_sold_level_two_icon` varchar(200) DEFAULT NULL,
  `author_sold_level_three_icon` varchar(200) DEFAULT NULL,
  `author_sold_level_four_icon` varchar(200) DEFAULT NULL,
  `author_sold_level_five_icon` varchar(200) NOT NULL,
  `author_sold_level_six_icon` varchar(200) NOT NULL,
  `author_collect_level_one` int NOT NULL DEFAULT '0',
  `author_collect_level_two` int NOT NULL DEFAULT '0',
  `author_collect_level_three` int NOT NULL DEFAULT '0',
  `author_collect_level_four` int NOT NULL DEFAULT '0',
  `author_collect_level_five` int NOT NULL DEFAULT '0',
  `author_collect_level_six` int NOT NULL DEFAULT '0',
  `author_collect_level_one_icon` varchar(200) DEFAULT NULL,
  `author_collect_level_two_icon` varchar(200) DEFAULT NULL,
  `author_collect_level_three_icon` varchar(200) DEFAULT NULL,
  `author_collect_level_four_icon` varchar(200) DEFAULT NULL,
  `author_collect_level_five_icon` varchar(200) DEFAULT NULL,
  `author_collect_level_six_icon` varchar(200) DEFAULT NULL,
  `author_referral_level_one` int NOT NULL DEFAULT '0',
  `author_referral_level_two` int NOT NULL DEFAULT '0',
  `author_referral_level_three` int NOT NULL DEFAULT '0',
  `author_referral_level_four` int NOT NULL DEFAULT '0',
  `author_referral_level_five` int NOT NULL DEFAULT '0',
  `author_referral_level_six` int NOT NULL DEFAULT '0',
  `author_referral_level_one_icon` varchar(200) DEFAULT NULL,
  `author_referral_level_two_icon` varchar(200) DEFAULT NULL,
  `author_referral_level_three_icon` varchar(200) DEFAULT NULL,
  `author_referral_level_four_icon` varchar(200) DEFAULT NULL,
  `author_referral_level_five_icon` varchar(200) DEFAULT NULL,
  `author_referral_level_six_icon` varchar(200) DEFAULT NULL,
  `trends_icon` varchar(200) DEFAULT NULL,
  `featured_item_icon` varchar(200) DEFAULT NULL,
  `power_elite_author_icon` varchar(200) DEFAULT NULL,
  `free_item_icon` varchar(200) DEFAULT NULL,
  `one_year_icon` varchar(200) DEFAULT NULL,
  `two_year_icon` varchar(200) DEFAULT NULL,
  `three_year_icon` varchar(200) DEFAULT NULL,
  `four_year_icon` varchar(200) DEFAULT NULL,
  `five_year_icon` varchar(200) DEFAULT NULL,
  `six_year_icon` varchar(200) DEFAULT NULL,
  `seven_year_icon` varchar(200) DEFAULT NULL,
  `eight_year_icon` varchar(200) DEFAULT NULL,
  `nine_year_icon` varchar(200) DEFAULT NULL,
  `ten_year_icon` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`badge_id`, `exclusive_author_icon`, `author_sold_level_one`, `author_sold_level_two`, `author_sold_level_three`, `author_sold_level_four`, `author_sold_level_five`, `author_sold_level_six`, `author_sold_level_six_label`, `author_sold_level_one_icon`, `author_sold_level_two_icon`, `author_sold_level_three_icon`, `author_sold_level_four_icon`, `author_sold_level_five_icon`, `author_sold_level_six_icon`, `author_collect_level_one`, `author_collect_level_two`, `author_collect_level_three`, `author_collect_level_four`, `author_collect_level_five`, `author_collect_level_six`, `author_collect_level_one_icon`, `author_collect_level_two_icon`, `author_collect_level_three_icon`, `author_collect_level_four_icon`, `author_collect_level_five_icon`, `author_collect_level_six_icon`, `author_referral_level_one`, `author_referral_level_two`, `author_referral_level_three`, `author_referral_level_four`, `author_referral_level_five`, `author_referral_level_six`, `author_referral_level_one_icon`, `author_referral_level_two_icon`, `author_referral_level_three_icon`, `author_referral_level_four_icon`, `author_referral_level_five_icon`, `author_referral_level_six_icon`, `trends_icon`, `featured_item_icon`, `power_elite_author_icon`, `free_item_icon`, `one_year_icon`, `two_year_icon`, `three_year_icon`, `four_year_icon`, `five_year_icon`, `six_year_icon`, `seven_year_icon`, `eight_year_icon`, `nine_year_icon`, `ten_year_icon`) VALUES
(1, '15734604171.png', 1, 100, 1000, 5000, 10000, 25000, 'Power Elite Author', '15734620552.png', '15734620553.png', '15734620554.png', '15734620555.png', '15734620566.png', '15734620567.png', 1, 10, 50, 100, 500, 1000, '15734620568.png', '15734620569.png', '157346205610.png', '157346205611.png', '157346205612.png', '157346205613.png', 1, 10, 50, 100, 500, 1000, '157346205614.png', '159291027315.png', '157354116416.png', '157346205617.png', '157346205618.png', '157346205619.png', '157346061520.png', '157346041721.png', '157346529122.png', '157346041723.png', '157346935524.png', '157346935525.png', '157346935526.png', '157346935527.png', '157346935528.png', '157346935529.png', '157346935530.png', '157346935531.png', '157346935532.png', '157346935533.png');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_cat_id` int NOT NULL,
  `blog_category_name` varchar(500) NOT NULL,
  `blog_category_slug` varchar(500) NOT NULL,
  `blog_category_status` int NOT NULL,
  `drop_status` varchar(20) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_cat_id`, `blog_category_name`, `blog_category_slug`, `blog_category_status`, `drop_status`) VALUES
(4, 'Scripts', 'Scripts', 1, 'no'),
(5, 'Themes', 'Themes', 1, 'no'),
(6, 'Plugins', 'Plugins', 1, 'no'),
(7, 'Print', 'Print', 1, 'no'),
(8, 'Graphics', 'Graphics', 1, 'no'),
(9, 'Mobile Apps', 'Mobile-Apps', 1, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_slug` varchar(200) NOT NULL,
  `category_status` int NOT NULL,
  `menu_order` int NOT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no',
  `category_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category_name`, `category_slug`, `category_status`, `menu_order`, `drop_status`, `category_type`) VALUES
(8, 'Scripts', 'Scripts', 1, 1, 'no', 'item'),
(9, 'Themes', 'Themes', 1, 2, 'no', 'item'),
(10, 'Plugins', 'Plugins', 1, 3, 'no', 'item'),
(11, 'Print', 'Print', 1, 5, 'no', 'item'),
(12, 'Graphics', 'Graphics', 1, 4, 'no', 'item'),
(13, 'Mobile Apps', 'Mobile-Apps', 1, 6, 'no', 'item'),
(14, 'Games', 'games', 1, 10, 'no', 'item'),
(15, 'Graphics & Design', 'graphics-design', 1, 1, 'no', 'service'),
(16, 'Digital Marketing', 'digital-marketing', 1, 2, 'no', 'service'),
(17, 'Writing & Translation', 'writing-translation', 1, 3, 'no', 'service'),
(18, 'Video & Animation', 'video-animation', 1, 4, 'no', 'service'),
(19, 'Programming & Tech', 'programming-tech', 1, 5, 'no', 'service'),
(20, 'Business', 'business', 1, 6, 'no', 'service'),
(21, 'Fun & Lifestyle', 'fun-lifestyle', 1, 7, 'no', 'service'),
(22, 'Music & Audio', 'music-audio', 1, 8, 'no', 'service'),
(23, 'Template & Theme', 'template-theme', 1, 9, 'no', 'service'),
(24, 'Mobile App', 'mobile-app', 1, 10, 'no', 'service');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int NOT NULL,
  `from_name` varchar(200) NOT NULL,
  `from_email` varchar(200) NOT NULL,
  `issue_type` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message_text` text NOT NULL,
  `contact_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `from_name`, `from_email`, `issue_type`, `subject`, `message_text`, `contact_date`) VALUES
(9, 'peter', 'peter@gmail.com', NULL, NULL, 'lorem ipsum lorem ipsum', '2020-12-17'),
(10, 'Harry Williams', 'harrywilliamwork3@gmail.com', NULL, NULL, 'Hey,\r\n\r\nYour website design is absolutely brilliant. The visuals really enhance your message and the content compels action. I\'ve forwarded it to a few of my contacts who I think could benefit from your services.\r\n\r\nWhen I was looking at your site, though, I noticed some mistakes that you\'ve made re: search engine optimization (SEO) which may be leading to a decline in your organic SEO results. Would you like to fix it so that you can get maximum exposure/presence on Google, Bing, Yahoo and web traffic to your website?\r\n\r\nIt\'s a relatively simple fix. If this is a priority, I can also get on a call.\r\n\r\nPlease share your “Mobile Number\" and a suitable time to talk, so I can help you in that.\r\n\r\nRegards\r\nHarry Williams\r\nDigital Marketing Expert', '2022-02-09'),
(11, 'Brianna Belton', 'briannabelton.mkt@gmail.com', NULL, NULL, 'Hey! Hope you are doing well & staying safe.\r\n\r\nAs I see you have a new launched website, not showing on top search engines like Google/Bing/Yahoo. If you are on page #1 you will get so many new customers every day. \r\n\r\nIf you want to avail this opportunity.\r\n\r\n10 plus years of Experience | Partnered with 20+ Digital Agencies | 60+ SEO, SMO - SEM Google Ads Certified Professionals, expert website designers & developers.\r\n\r\nPlease share your phone number (With Country Code) Or /skype and suitable time (Meeting) to talk to you, So we can explain our plan and strategy.\r\n\r\nThanks in advance,\r\nBrianna (SEO/Web Specialist)', '2022-02-11'),
(12, 'Thomas Kraynik', 'autoreply@ddmmarketing.hu', NULL, NULL, 'Üdvözlöm, \r\n \r\nVállalkozása online jelenlétének elemzése után azonosítottunk néhány kulcsfontosságú növekedési lehetőséget. \r\n \r\nAz Ön közreműködésével fejleszthetjük ezeket a pontokat, és rendelkezésre bocsátjuk adat - és piaci intelligencia - elemzésünket az Ön konkrét réséről. \r\n \r\nA legjobb az egészben, hogy minden szóban forgó informatikai és marketing megoldást mi kezelünk, ezáltal is megkönnyítve az Ön munkáját. \r\n \r\nAmennyiben, tehát többet szeretne megtudni arról, hogyan segíthetünk Önnek több ügyfelet szerezni és népszerűsíteni márkáját, jelezze számomra, hogy mikor lenne alkalmas ezzel kapcsolatban átbeszélnünk a részleteket. \r\n \r\nTisztelettel, \r\n \r\nThomas Kraynik | SVP DDM Marketing \r\n \r\nE-mail: thomas@ddmmarketing.hu \r\n \r\nhttps://ddmmarketing.hu', '2022-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `conversation`
--

CREATE TABLE `conversation` (
  `conver_id` int NOT NULL,
  `conver_user_id` int NOT NULL,
  `conver_seller_id` int NOT NULL,
  `conver_order_id` varchar(500) DEFAULT NULL,
  `logged_id` int NOT NULL,
  `message_read_type` varchar(100) NOT NULL DEFAULT 'unread',
  `conver_text` mediumtext NOT NULL,
  `conver_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `conversation`
--

INSERT INTO `conversation` (`conver_id`, `conver_user_id`, `conver_seller_id`, `conver_order_id`, `logged_id`, `message_read_type`, `conver_text`, `conver_date`) VALUES
(29, 39, 41, '4766', 39, 'read', 'hi', '2021-09-20 06:17:30'),
(30, 39, 41, '4766', 39, 'read', ':expressionless: :kissing: :no_mouth:', '2021-09-20 06:17:40'),
(31, 41, 39, '4766', 41, 'read', 'hi', '2021-09-20 06:18:22'),
(32, 48, 43, '5514', 48, 'read', 'vai apni koto din dhore kaz koren ai marketplace e?', '2022-02-09 12:55:00'),
(33, 43, 48, '5514', 43, 'unread', 'eita toh ekhono suru e hoy nai', '2022-02-19 14:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `country_name` varchar(500) NOT NULL,
  `vat_price` float NOT NULL,
  `country_badges` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `vat_price`, `country_badges`) VALUES
(7, 'Afghanistan', 12.5, '1549374193.png'),
(8, 'Albania', 0, '1549374204.png'),
(9, 'Algeria', 14.5, '1549374239.png'),
(10, 'Andorra', 0, '1549374295.png'),
(11, 'Angola', 0, '1549374310.png'),
(12, 'Antigua and Barbuda', 0, '1549374328.png'),
(13, 'Argentina', 0, '1549374340.png'),
(14, 'Armenia', 0, '1549374353.png'),
(15, 'Australia', 0, '1549374369.png'),
(16, 'Austria', 0, '1549374381.png'),
(17, 'Azerbaijan', 0, '1549374395.png'),
(18, 'Bahamas', 0, '1549374408.png'),
(19, 'Bahrain', 0, '1549374422.png'),
(20, 'Bangladesh', 0, '1549374438.png'),
(21, 'Barbados', 0, '1549374451.png'),
(22, 'Belarus', 0, '1549374465.png'),
(23, 'Belgium', 0, '1549374478.png'),
(24, 'Belize', 0, '1549374490.png'),
(25, 'Benin', 0, '1549374503.png'),
(26, 'Bhutan', 0, '1549374515.png'),
(27, 'Bolivia', 0, '1549374529.png'),
(28, 'Bosnia and Herzegovina', 0, '1549374542.png'),
(29, 'Botswana', 0, '1549374556.png'),
(30, 'Brazil', 0, '1549374569.png'),
(31, 'Brunei', 0, '1549374582.png'),
(32, 'Bulgaria', 0, '1549374595.png'),
(33, 'Burkina Faso', 0, '1549374612.png'),
(34, 'Burundi', 0, '1549375117.png'),
(35, 'Cabo Verde', 0, '1549433498.png'),
(36, 'Cambodia', 0, '1549433513.png'),
(37, 'Cameroon', 0, '1549433526.png'),
(38, 'Canada', 0, '1549433544.png'),
(39, 'Central African Republic', 0, '1549433559.png'),
(40, 'Chad', 0, '1549433594.png'),
(41, 'Chile', 0, '1549433608.png'),
(42, 'China', 0, '1549433620.png'),
(43, 'Colombia', 0, '1549433632.png'),
(44, 'Comoros', 0, '1549433644.png'),
(45, 'Democratic Republic of the Congo', 0, '1549433663.png'),
(46, 'Republic of the Congo', 0, '1549433677.png'),
(47, 'Costa Rica', 0, '1549433691.png'),
(48, 'Cote d\'Ivoire', 0, '1549433704.png'),
(49, 'Croatia', 0, '1549433718.png'),
(50, 'Cuba', 0, '1549433732.png'),
(51, 'Cyprus', 0, '1549433744.png'),
(52, 'Czech Republic', 0, '1549433757.png'),
(53, 'Denmark', 0, '1549433770.png'),
(54, 'Djibouti', 0, '1549433783.png'),
(55, 'Dominica', 0, '1549433795.png'),
(56, 'Dominican Republic', 0, '1549433807.png'),
(57, 'Ecuador', 0, '1549433821.png'),
(58, 'Egypt', 0, '1549433840.png'),
(59, 'El Salvador', 0, '1549433856.png'),
(60, 'Equatorial Guinea', 0, '1549433868.png'),
(61, 'Eritrea', 0, '1549433892.png'),
(62, 'Estonia', 0, '1549433907.png'),
(63, 'Eswatini (formerly Swaziland)', 0, '1549433923.png'),
(64, 'Ethiopia', 0, '1549433935.png'),
(65, 'Fiji', 0, '1549433948.png'),
(66, 'Finland', 0, '1549433961.png'),
(67, 'France', 0, '1549433981.png'),
(68, 'Gabon', 0, '1549433995.png'),
(69, 'Gambia', 0, '1549434007.png'),
(70, 'Georgia', 0, '1549434018.png'),
(71, 'Germany', 0, '1549434030.png'),
(72, 'Ghana', 0, '1549434043.png'),
(73, 'Greece', 0, '1549434056.png'),
(74, 'Grenada', 0, '1549434069.png'),
(75, 'Guatemala', 0, '1549434082.png'),
(76, 'Guinea', 0, '1549434100.png'),
(77, 'Guinea-Bissau', 0, '1549434113.png'),
(78, 'Guyana', 0, '1549434127.png'),
(79, 'Haiti', 0, '1549434140.png'),
(80, 'Honduras', 0, '1549434152.png'),
(81, 'Hungary', 0, '1549434164.png'),
(82, 'Iceland', 0, '1549434178.png'),
(83, 'India', 0, '1549434191.png'),
(84, 'Indonesia', 0, '1549434203.png'),
(85, 'Iran', 0, '1549434217.png'),
(86, 'Iraq', 0, '1549434230.png'),
(87, 'Ireland', 0, '1549434244.png'),
(88, 'Israel', 0, '1549434256.png'),
(89, 'Italy', 0, '1549434269.png'),
(90, 'Jamaica', 0, '1549434282.png'),
(91, 'Japan', 0, '1549434296.png'),
(92, 'Jordan', 0, '1549434309.png'),
(93, 'Kazakhstan', 0, '1549434323.png'),
(94, 'Kenya', 0, '1549434335.png'),
(95, 'Kiribati', 0, '1549434351.png'),
(96, 'Kosovo', 0, '1549434371.png'),
(97, 'Kuwait', 0, '1549434382.png'),
(98, 'Kyrgyzstan', 0, '1549434396.png'),
(99, 'Laos', 0, '1549434419.png'),
(100, 'Latvia', 0, '1549434431.png'),
(101, 'Lebanon', 0, '1549434461.png'),
(102, 'Lesotho', 0, '1549434474.png'),
(103, 'Liberia', 0, '1549434487.png'),
(104, 'Libya', 0, '1549434499.png'),
(105, 'Liechtenstein', 0, '1549434511.png'),
(106, 'Lithuania', 0, '1549434523.png'),
(107, 'Luxembourg', 0, '1549434536.png'),
(108, 'Macedonia (FYROM)', 0, '1549434557.png'),
(109, 'Madagascar', 0, '1549434569.png'),
(110, 'Malawi', 0, '1549434586.png'),
(111, 'Malaysia', 0, '1549434598.png'),
(112, 'Maldives', 0, '1549434612.png'),
(113, 'Mali', 0, '1549434625.png'),
(114, 'Malta', 0, '1549434637.png'),
(115, 'Marshall Islands', 0, '1549434650.png'),
(116, 'Mauritania', 0, '1549434664.png'),
(117, 'Mauritius', 0, '1549434676.png'),
(118, 'Mexico', 0, '1549434688.png'),
(119, 'Micronesia', 0, '1549434701.png'),
(120, 'Moldova', 0, '1549434729.png'),
(121, 'Monaco', 0, '1549434751.png'),
(122, 'Mongolia', 0, '1549434762.png'),
(123, 'Montenegro', 0, '1549434776.png'),
(124, 'Morocco', 0, '1549434788.png'),
(125, 'Mozambique', 0, '1549434801.png'),
(126, 'Myanmar (formerly Burma)', 0, '1549434818.png'),
(127, 'Namibia', 0, '1549434832.png'),
(128, 'Nauru', 0, '1549434845.png'),
(129, 'Nepal', 0, '1549434857.png'),
(130, 'Netherlands', 0, '1549434870.png'),
(131, 'New Zealand', 0, '1549434882.png'),
(132, 'Nicaragua', 0, '1549434895.png'),
(133, 'Niger', 0, '1549434907.png'),
(134, 'Nigeria', 0, '1549434922.png'),
(135, 'North Korea', 0, '1549434939.png'),
(136, 'Norway', 0, '1549434951.png'),
(137, 'Oman', 0, '1549434966.png'),
(138, 'Pakistan', 0, '1549434978.png'),
(139, 'Palau', 0, '1549434990.png'),
(140, 'Palestine', 0, '1549435002.png'),
(141, 'Panama', 0, '1549435016.png'),
(142, 'Papua New Guinea', 0, '1549435046.png'),
(143, 'Paraguay', 0, '1549435063.png'),
(144, 'Peru', 0, '1549435085.png'),
(145, 'Philippines', 0, '1549435101.png'),
(146, 'Poland', 0, '1549435113.png'),
(147, 'Portugal', 0, '1549435125.png'),
(148, 'Qatar', 0, '1549435138.png'),
(149, 'Romania', 0, '1549435151.png'),
(150, 'Russia', 0, '1549435163.png'),
(151, 'Rwanda', 0, '1549435175.png'),
(152, 'Saint Kitts and Nevis', 0, '1549435188.png'),
(153, 'Saint Lucia', 0, '1549435200.png'),
(154, 'Saint Vincent and the Grenadines', 0, '1549435213.png'),
(155, 'Samoa', 0, '1549435271.png'),
(156, 'San Marino', 0, '1549435299.png'),
(157, 'Sao Tome and Principe', 0, '1549435317.png'),
(158, 'Saudi Arabia', 0, '1549435331.png'),
(159, 'Senegal', 0, '1549435382.png'),
(160, 'Serbia', 0, '1549435395.png'),
(161, 'Seychelles', 0, '1549435408.png'),
(162, 'Sierra Leone', 0, '1549435419.png'),
(163, 'Singapore', 0, '1549435430.png'),
(164, 'Slovakia', 0, '1549435445.png'),
(165, 'Slovenia', 0, '1549435458.png'),
(166, 'Solomon Islands', 0, '1549435469.png'),
(167, 'Somalia', 0, '1549435480.png'),
(168, 'South Africa', 0, '1549435491.png'),
(169, 'South Korea', 0, '1549435501.png'),
(170, 'South Sudan', 0, '1549435513.png'),
(171, 'Spain', 0, '1549435530.png'),
(172, 'Sri Lanka', 0, '1549435541.png'),
(173, 'Sudan', 0, '1549435552.png'),
(174, 'Suriname', 0, '1549435564.png'),
(175, 'Sweden', 0, '1549435581.png'),
(176, 'Switzerland', 0, '1549435598.png'),
(177, 'Syria', 0, '1549435609.png'),
(178, 'Taiwan', 0, '1549435622.png'),
(179, 'Tajikistan', 0, '1549435634.png'),
(180, 'Tanzania', 0, '1549435647.png'),
(181, 'Thailand', 0, '1549435658.png'),
(182, 'Timor-Leste', 0, '1549435682.png'),
(183, 'Togo', 0, '1549435694.png'),
(184, 'Tonga', 0, '1549435706.png'),
(185, 'Trinidad and Tobago', 0, '1549435721.png'),
(186, 'Tunisia', 0, '1549435733.png'),
(187, 'Turkey', 0, '1549435746.png'),
(188, 'Turkmenistan', 0, '1549435758.png'),
(189, 'Tuvalu', 0, '1549435769.png'),
(190, 'Uganda', 0, '1549435782.png'),
(191, 'Ukraine', 0, '1549435794.png'),
(192, 'United Arab Emirates', 0, '1549435806.png'),
(193, 'United Kingdom', 10, '1549435818.png'),
(194, 'United States of America', 0, '1549435831.png'),
(195, 'Uruguay', 0, '1549435843.png'),
(196, 'Uzbekistan', 0, '1549435855.png'),
(197, 'Vanuatu', 0, '1549435869.png'),
(198, 'Vatican City (Holy See)', 0, '1549435881.png'),
(199, 'Venezuela', 0, '1549435893.png'),
(200, 'Vietnam', 0, '1549435904.png'),
(201, 'Yemen', 0, '1549435918.png'),
(202, 'Zambia', 0, '1549435930.png'),
(203, 'Zimbabwe', 0, '1549435943.png');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int NOT NULL,
  `user_id` int NOT NULL,
  `coupon_code` varchar(200) DEFAULT NULL,
  `discount_type` varchar(100) DEFAULT NULL,
  `coupon_value` float NOT NULL,
  `coupon_start_date` varchar(200) DEFAULT NULL,
  `coupon_end_date` varchar(200) DEFAULT NULL,
  `coupon_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `user_id`, `coupon_code`, `discount_type`, `coupon_value`, `coupon_start_date`, `coupon_end_date`, `coupon_status`) VALUES
(31, 39, 'FLAT10', 'fixed', 10, '2020-12-17', '2021-11-27', 1),
(32, 43, 'joindoptorr', 'percentage', 20, '2022-02-09', '2022-02-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `dep_id` int NOT NULL,
  `deposit_price` float NOT NULL,
  `deposit_bonus` float NOT NULL,
  `deposit_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`dep_id`, `deposit_price`, `deposit_bonus`, `deposit_status`) VALUES
(5, 5, 0, 1),
(6, 10, 0, 1),
(7, 15, 0, 1),
(8, 20, 0, 1),
(9, 25, 0, 1),
(10, 30, 1, 1),
(11, 40, 2, 1),
(12, 50, 3, 1),
(13, 60, 4, 1),
(14, 70, 5, 1),
(15, 80, 6, 1),
(16, 90, 7, 1),
(17, 100, 8, 1),
(18, 200, 20, 1),
(19, 500, 50, 1),
(20, 1000, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `et_id` int UNSIGNED NOT NULL,
  `et_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `et_subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `et_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `et_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`et_id`, `et_heading`, `et_subject`, `et_content`, `et_status`) VALUES
(1, 'Conversation Message', 'Conversation Message', '&lt;p&gt;Name : &lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_name}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;Email : &lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_email}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Message :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{conver_text}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Conversation Url :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;&lt;a href=&quot;{{conversation_url}}&quot;&gt;{{conversation_url}}&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;', 1),
(2, 'New Comment Received', 'New Comment Received', '&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Sender Name :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_name}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Sender Email :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_email}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Item Url :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;&lt;a href=&quot;{{item_url}}&quot;&gt;{{item_url}}&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Comment :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{comm_text}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1),
(3, 'Contact Us', 'Contact Us', '&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Name :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_name}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Email :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{from_email}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Message :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{message_text}}&lt;/span&gt;&lt;/p&gt;', 1),
(4, 'Forgot Password', 'Forgot Password', '&lt;p&gt;You are receiving this email because we received a password reset request for your account&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;{{forgot_url}}&quot;&gt;Reset Password&lt;/a&gt;&lt;/p&gt;', 1),
(5, 'Item Update Notifications', 'Item Update Notifications', '&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;&quot;&gt;Your product item&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;&quot;&gt;{{item_url}}&amp;nbsp;new updates are uploaded by vendor. please download your new updated item release.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;&quot;&gt;Item Url :&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;a href=&quot;{{item_url}}&quot;&gt;{{item_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(6, 'Newsletter Signup', 'Newsletter Signup', '&lt;p&gt;You are receiving this email newsletter subscription request&lt;/p&gt;\r\n&lt;p&gt;Please confirm to this link &lt;a href=&quot;{{activate_url}}&quot;&gt;{{activate_url}}&lt;/a&gt; to activate your email subscription.&lt;/p&gt;', 1),
(7, 'Item Rating & Reviews', 'Item Rating & Reviews', '&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;Rating : {{rating}} Stars&lt;/p&gt;\r\n&lt;p&gt;Rating Reason : {{rating_reason}}&lt;/p&gt;\r\n&lt;p&gt;Comment : {{rating_comment}}&lt;/p&gt;\r\n&lt;p&gt;Item Url : &lt;a href=&quot;{{item_url}}&quot;&gt;{{item_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(8, 'Refund Request Received', 'Refund Request Received', '&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;Refund Reason : {{ref_refund_reason}}&lt;/p&gt;\r\n&lt;p&gt;Comment : {{ref_refund_comment}}&lt;/p&gt;\r\n&lt;p&gt;Item Url : &lt;a href=&quot;{{item_url}}&quot;&gt;{{item_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(9, 'New Signup Email Verification', 'Verify Your Email Address', '&lt;p&gt;Your registered email-id is {{email}} , Please click on the below link to verify your email account&lt;/p&gt;\r\n&lt;p&gt;&lt;a href=&quot;{{register_url}}&quot;&gt;Verify Email&lt;/a&gt;&lt;/p&gt;', 1),
(10, 'Contact Support', 'Contact Support', '&lt;p&gt;Name : {{from_name}}&lt;/p&gt;\r\n&lt;p&gt;Email : {{from_email}}&lt;/p&gt;\r\n&lt;p&gt;Subject : {{support_subject}}&lt;/p&gt;\r\n&lt;p&gt;Message : {{support_msg}}&lt;/p&gt;\r\n&lt;p&gt;Item Url :&amp;nbsp;&lt;a href=&quot;{{item_url}}&quot;&gt;{{item_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(11, 'Payment Refund Declined', 'Payment Refund Declined', '&lt;p&gt;Your payment refund is declined. Please contact your vendor or administrator&lt;/p&gt;\r\n&lt;p&gt;your refund request amount is : {{total_price}} {{currency}}&lt;/p&gt;', 1),
(12, 'Payment Approval Cancelled', 'Payment Approval Cancelled', '&lt;p&gt;Your payment approval is cancelled and amount will be credit on your account. Please check your earning balance on your account&lt;/p&gt;\r\n&lt;p&gt;your payment is : {{total_price}} {{currency}}&lt;/p&gt;', 1),
(13, 'Payment Refund Accepted', 'Payment Refund Accepted', '&lt;p&gt;Your payment refund is accepted and amount will be credit on your account. Please check your earning balance on your account&lt;/p&gt;\r\n&lt;p&gt;your payment is : {{total_price}} {{currency}}&lt;/p&gt;', 1),
(14, 'Item Rejected Notifications', 'Item Rejected Notifications', '&lt;p&gt;Your product item &lt;strong&gt;{{item_name}}&lt;/strong&gt; has been rejected. Thanks for your submission. If any query contact administrator.&lt;/p&gt;', 1),
(15, 'Item Review Notifications', 'Item Review Notifications', '&lt;p&gt;Your product item {{item_url}} has been approved. Thanks for your submission&lt;/p&gt;\r\n&lt;p&gt;Item Url : &lt;a href=&quot;{{item_url}}&quot;&gt;{{item_url}}&lt;/a&gt;&lt;/p&gt;', 1),
(16, 'Newsletter Updates', 'Newsletter Updates', '&lt;p&gt;Newsletter updates received. Please visit our website&lt;/p&gt;\r\n&lt;p&gt;Subject : {{news_heading}}&lt;/p&gt;\r\n&lt;p&gt;Content : {{news_content}}&lt;/p&gt;', 1),
(17, 'Payment Withdrawal Request Accepted', 'Payment Withdrawal Request Accepted', '&lt;p&gt;Your payment withdrawal request is accepted and amount will be credit on your payment gateway or bank account&lt;/p&gt;\r\n&lt;p&gt;your payment is : {{wd_amount}} {{currency}}&lt;/p&gt;', 1),
(18, 'New Payment Approved For Vendor', 'New Payment Approved', '&lt;p&gt;New payment approved to released by admin. Please check your earning balance on your account&lt;/p&gt;\r\n&lt;p&gt;your payment is : {{vendor_amount}} {{currency}}&lt;/p&gt;', 1),
(19, 'New Deposit Details', 'New Deposit Details', '&lt;p&gt;&lt;strong&gt;Given below the deposit details&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Deposit Amount :&amp;nbsp;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{amount}}&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{currency}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff;&quot;&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;&quot;&gt;Payment Type :&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{payment_type}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff;&quot;&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;&quot;&gt;Payment ID :&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{payment_token}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;background-color: #ffffff;&quot;&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica Neue, Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;&quot;&gt;Payment Date :&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{payment_date}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1),
(20, 'Subscription Upgrade', 'Subscription Upgrade', '&lt;p&gt;&lt;strong&gt;Thanks for your subscription&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Subscription Name :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{user_subscr_type}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Duration :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{subscr_duration}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Price :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{currency}} &lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{subscr_price}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-transform: capitalize; background-color: #ffffff;&quot;&gt;Date :&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: #ffffff; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px;&quot;&gt;{{user_subscr_date}}&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `fid` int NOT NULL,
  `follower_user_id` int NOT NULL,
  `following_user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`fid`, `follower_user_id`, `following_user_id`) VALUES
(1, 44, 43);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_slug` varchar(500) NOT NULL,
  `item_desc` longtext NOT NULL,
  `item_shortdesc` text,
  `item_thumbnail` varchar(200) NOT NULL,
  `item_preview` varchar(200) DEFAULT NULL,
  `item_file` varchar(200) NOT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `item_file_link` text,
  `item_category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_category_parent` int NOT NULL DEFAULT '0',
  `item_category_type` varchar(50) NOT NULL,
  `item_type_cat_id` varchar(500) DEFAULT NULL,
  `item_type` varchar(50) NOT NULL,
  `item_type_id` varchar(191) DEFAULT NULL,
  `regular_price` float DEFAULT NULL,
  `extended_price` float DEFAULT NULL,
  `seller_refund_term` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `seller_money_back` int NOT NULL,
  `seller_money_back_days` int NOT NULL,
  `compatible_browsers` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `package_includes` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `package_includes_two` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `columns` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `layout` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `package_includes_three` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `layered` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cs_version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `print_dimensions` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pixel_dimensions` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `package_includes_four` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `demo_url` varchar(800) DEFAULT NULL,
  `video_preview_type` varchar(50) DEFAULT NULL,
  `video_file` varchar(200) DEFAULT NULL,
  `video_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `item_tags` text,
  `item_liked` int DEFAULT '0',
  `item_views` int NOT NULL,
  `free_download` int NOT NULL,
  `item_featured` varchar(50) NOT NULL DEFAULT 'no',
  `item_sold` int DEFAULT '0',
  `future_update` int NOT NULL DEFAULT '0',
  `item_support` int NOT NULL DEFAULT '0',
  `created_item` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_item` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `download_count` int NOT NULL,
  `item_flash` int NOT NULL DEFAULT '0',
  `item_flash_request` int NOT NULL DEFAULT '0',
  `item_allow_seo` int DEFAULT NULL,
  `item_seo_keyword` text,
  `item_seo_desc` text,
  `audio_file` text,
  `drop_status` varchar(50) DEFAULT 'no',
  `item_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `user_id`, `item_token`, `item_name`, `item_slug`, `item_desc`, `item_shortdesc`, `item_thumbnail`, `item_preview`, `item_file`, `file_type`, `item_file_link`, `item_category`, `item_category_parent`, `item_category_type`, `item_type_cat_id`, `item_type`, `item_type_id`, `regular_price`, `extended_price`, `seller_refund_term`, `seller_money_back`, `seller_money_back_days`, `compatible_browsers`, `package_includes`, `package_includes_two`, `columns`, `layout`, `package_includes_three`, `layered`, `cs_version`, `print_dimensions`, `pixel_dimensions`, `package_includes_four`, `demo_url`, `video_preview_type`, `video_file`, `video_url`, `item_tags`, `item_liked`, `item_views`, `free_download`, `item_featured`, `item_sold`, `future_update`, `item_support`, `updated_item`, `download_count`, `item_flash`, `item_flash_request`, `item_allow_seo`, `item_seo_keyword`, `item_seo_desc`, `audio_file`, `drop_status`, `item_status`) VALUES
(76, 39, '9R4OHZdojfFJkDEFIsPfaoZKK', 'Cididunt ut labore et', 'cididunt-ut-labore-et', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Wed-Aug-18-2021-943-AM65807.jpg', 'Wed-Aug-18-2021-943-AM65807.jpg', 'Thu-Jul-8-2021-1008-AM58703.zip', 'file', NULL, '2', 8, 'subcategory', 'subcategory_2', 'scripts', '1', 25, 175, 'test', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'php files,php script', 1, 95, 1, 'no', 23, 1, 0, '2022-02-09 11:15:37', 0, 0, 0, 0, '', '', '', 'no', 0),
(77, 39, 'kKdlCXQte5LnE85SBatqSlpTo', 'Sectetur adipiscing elit', 'sectetur-adipiscing-elit', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Wed-Aug-18-2021-942-AM97017.jpg', 'Wed-Aug-18-2021-942-AM97017.jpg', 'Thu-Jul-8-2021-1009-AM26656.zip', 'file', NULL, '8', 8, 'category', 'category_8', 'scripts', '1', 47, 450, 'test', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'youtube', '', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 'script,files,php script', 1, 67, 0, 'yes', 8, 0, 1, '2022-02-09 11:15:21', 0, 0, 1, 0, '', '', '', 'no', 0),
(78, 39, 'LJPEMB5p0VNFria7rMwvvt9St', 'Eiusmod tempor incididunt', 'eiusmod-tempor-incididunt', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Wed-Aug-18-2021-942-AM35583.jpg', 'Wed-Aug-18-2021-942-AM35583.jpg', 'Thu-Jul-8-2021-1010-AM84618.zip', 'file', NULL, '7', 9, 'subcategory', 'subcategory_7', 'themes', '2', 29, 219, 'test', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'mp4', '1608110697128.mp4', '', 'wordpress theme,wp themes,themes', 1, 115, 0, 'yes', 8, 1, 1, '2022-02-09 11:14:58', 0, 0, 1, 0, '', '', '', 'no', 0),
(79, 39, 'LilCB3uHFGeGxgCZgX2H8g2Ey', 'Ut labore et dolore magna', 'ut-labore-et-dolore-magna', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'Wed-Aug-18-2021-942-AM11296.jpg', 'Wed-Aug-18-2021-942-AM11296.jpg', 'Thu-Jul-8-2021-1010-AM60913.zip', 'file', NULL, '10', 10, 'category', 'category_10', 'plugins', '3', 54, 539, 'test', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://test.com', 'youtube', '', 'https://www.youtube.com/watch?v=xcJtL7QggTI', 'plugin,wp plugin,custom plugin', 0, 46, 1, 'yes', 5, 1, 0, '2022-02-09 11:14:43', 0, 0, 0, 0, '', '', '', 'no', 0),
(80, 39, 'qNOMwcQde97WrD3SLjoRVpVGD', 'Adipiscing elit consectetur', 'adipiscing-elit-consectetur', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Wed-Aug-18-2021-941-AM54221.jpg', 'Wed-Aug-18-2021-941-AM54221.jpg', 'Thu-Jul-8-2021-1011-AM65719.zip', 'file', NULL, '40', 12, 'subcategory', 'subcategory_40', 'print', '4', 147, 359, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://test.com', '', '', '', 'psd,photoshop,illustration', 0, 64, 0, 'yes', 4, 1, 1, '2022-02-09 11:14:29', 0, 0, 1, 0, '', '', '', 'no', 0),
(81, 39, 'qvNQNRGUiWP0UOR2NPg1cw4BH', 'Sed do eiusmod tempor', 'sed-do-eiusmod-tempor', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'Wed-Aug-18-2021-941-AM38402.jpg', 'Wed-Aug-18-2021-941-AM38402.jpg', 'Thu-Jul-8-2021-1011-AM18644.zip', 'file', NULL, '12', 12, 'category', 'category_12', 'graphics', '5', 26, 152, 'saa', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'illustration,graphics,psd', 0, 68, 1, 'yes', 1, 0, 0, '2022-02-09 11:14:12', 3, 0, 0, 0, '', '', '', 'no', 0),
(82, 39, '99eEe3cmGa8FRzyr9yvtdeuYQ', 'Lorem ipsum dolor', 'lorem-ipsum-dolor', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'Wed-Aug-18-2021-941-AM62827.jpg', 'Wed-Aug-18-2021-941-AM62827.jpg', 'Thu-Jul-8-2021-1012-AM39708.zip', 'file', NULL, '13', 13, 'category', 'category_13', 'mobile-apps', '6', 35, 299, 'test', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'mobile app,apk files,android,ios app', 1, 144, 1, 'yes', 7, 1, 0, '2022-02-09 11:13:52', 18, 0, 0, 0, '', '', '', 'no', 0),
(83, 39, 'qNJy3ujfiAeBLTQFS28Q3eqQM', 'Consectetur adipiscing', 'consectetur-adipiscing', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'Wed-Aug-18-2021-940-AM72792.jpg', 'Wed-Aug-18-2021-940-AM72792.jpg', 'Thu-Jul-8-2021-1014-AM24755.zip', 'file', NULL, '18', 10, 'subcategory', 'subcategory_18', 'plugins', '3', 18, 58, 'ee', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'magento,magento plugin', 0, 79, 0, 'yes', 6, 0, 0, '2022-02-09 11:13:33', 0, 0, 1, 0, '', '', '', 'no', 0),
(84, 39, 'O46UFkMbSeDuzZdOstVr5PvZo', 'Incididunt ut labore', 'incididunt-ut-labore', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'Wed-Aug-18-2021-940-AM83734.jpg', 'Wed-Aug-18-2021-940-AM83734.jpg', 'wed-nov-10-2021-12-15-pm99998.zip', 'file', NULL, '2', 8, 'subcategory', 'subcategory_2', 'themes', '2', 10, 150, '', 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://test.com', 'mp3', '1611917126128.mp4', 'https://www.youtube.com/watch?v=HmZKgaHa3Fg', 'joomla themes,themes,sample', 0, 149, 0, 'yes', 3, 0, 1, '2022-02-09 11:13:16', 49, 0, 0, 0, '', '', 'tue-nov-9-2021-12-49-pm46394.mp3', 'no', 0),
(85, 43, '4DUi7Mvrts6nSYfG2r4DxnADW', 'WordPress Development', 'wordpress-development', '&lt;p&gt;WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development&amp;nbsp;&lt;/p&gt;', 'WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development WordPress Development', 'wed-feb-9-2022-10-23-am30806.png', 'wed-feb-9-2022-10-19-am17457.jpg', 'wed-feb-9-2022-10-24-am52232.zip', 'file', NULL, '7', 9, 'subcategory', 'subcategory_7', 'Scripts', '1', 1000, 6000, 'No Refund', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://wordpress.net', '', '', '', 'wordpress theme, php, website', 1, 43, 0, 'yes', 1, 1, 1, '2022-02-09 10:29:40', 0, 1, 1, 1, 'wordpress theme, php, website', 'wordpress theme, php, website', '', 'no', 1),
(86, 43, 'szkU2xnwirkOvjlKYZtmDBHLy', 'Food Delivery System PHP Laravel', 'food-delivery-system-php-laravel', '&lt;p&gt;Food Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP Laravel&lt;/p&gt;', 'Food Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP LaravelFood Delivery System PHP Laravel', 'wed-feb-9-2022-11-17-am42222.jpg', 'wed-feb-9-2022-11-17-am11466.jpg', 'wed-feb-9-2022-11-18-am27058.zip', 'file', NULL, '8', 8, 'category', 'category_8', 'Scripts', '1', 5000, 10000, 'No Refund', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://thefooddelivery.xyz', '', '', '', 'Food Devlivery System', 0, 60, 0, 'yes', 5, 1, 1, '2022-02-19 06:56:25', 0, 1, 1, 1, 'Food Devlivery System', 'Food Devlivery System', '', 'no', 1),
(87, 48, 'UnxSQfnCZCNvsN7jYyMhEZK2t', 'Superman Landing Nice Animation Video', 'superman-landing-nice-animation-video', '&lt;p&gt;Superman Landing Nice Animation Video&lt;/p&gt;', 'Superman Landing Nice Animation Video', 'wed-feb-9-2022-1-33-pm49210.jpg', 'wed-feb-9-2022-1-14-pm99722.jpg', 'wed-feb-9-2022-1-20-pm30932.zip', 'file', NULL, '52', 12, 'subcategory', 'subcategory_52', 'graphics', '5', 30, 0, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'mp4', 'wed-feb-9-2022-1-39-pm24593.mp4', '', '', 0, 61, 0, 'yes', 0, 0, 1, '2022-02-19 06:57:40', 0, 1, 1, 1, 'superman\r\nlanding\r\nAnimation\r\nvideo\r\n3d\r\nobject\r\nmotion\r\ngraphics\r\nmoving\r\n2d\r\ncartoon\r\ndoodle\r\neffects\r\nelements\r\nTV\r\nCinema', 'superman\r\nlanding\r\nAnimation\r\nvideo\r\n3d\r\nobject\r\nmotion\r\ngraphics\r\nmoving\r\n2d\r\ncartoon\r\ndoodle\r\neffects\r\nelements\r\nTV\r\nCinema', '', 'no', 1),
(88, 43, 'wDQiHQ7W51GiRx0YoZU9e54fE', 'Student Management System Laravel', 'student-management-system-laravel', '&lt;p&gt;Student Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System Laravel&lt;/p&gt;', 'Student Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System LaravelStudent Management System Laravel', 'sat-feb-19-2022-6-47-am93751.png', 'sat-feb-19-2022-6-47-am83285.jpg', 'sat-feb-19-2022-6-48-am42584.zip', 'file', NULL, '2', 8, 'subcategory', 'subcategory_2', 'Scripts', '1', 2, 10000, 'No Refund', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://doptor.org', '', '', '', 'test test', 0, 45, 0, 'yes', 2, 1, 1, '2022-02-19 06:55:28', 0, 1, 1, 1, 'Student Management System Laravel', 'Student Management System Laravel', '', 'no', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items_attributes`
--

CREATE TABLE `items_attributes` (
  `item_attribute_id` int NOT NULL,
  `item_token` varchar(200) DEFAULT NULL,
  `attribute_id` int NOT NULL,
  `item_attribute_label` text,
  `item_attribute_values` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items_attributes`
--

INSERT INTO `items_attributes` (`item_attribute_id`, `item_token`, `attribute_id`, `item_attribute_label`, `item_attribute_values`) VALUES
(255, 'SaBOTAJHRvZVadMvijq70DQhV', 17, 'Compatible Browsers', 'Firefox,Safari'),
(256, 'SaBOTAJHRvZVadMvijq70DQhV', 18, 'Package Includes', 'JavaScript JS,HTML'),
(337, 'uaaxGyNc41Vh7FX7gmrpNFGRC', 17, 'Compatible Browsers', 'Firefox,Safari'),
(338, 'uaaxGyNc41Vh7FX7gmrpNFGRC', 18, 'Package Includes', 'JavaScript JS,JavaScript JSON'),
(354, 'Sijoo4NHFLMfZyKlZXcxT1WdA', 17, 'Compatible Browsers', 'Firefox'),
(355, 'Sijoo4NHFLMfZyKlZXcxT1WdA', 18, 'Package Includes', 'JavaScript JSON'),
(356, 'W68yoCZZRUGDpHMHmWUfauuiH', 17, 'Compatible Browsers', 'Firefox'),
(357, 'W68yoCZZRUGDpHMHmWUfauuiH', 18, 'Package Includes', 'HTML'),
(358, 'UJhLQAKBE8fmcRWWP0NRIKyGE', 17, 'Compatible Browsers', 'Chrome'),
(359, 'UJhLQAKBE8fmcRWWP0NRIKyGE', 18, 'Package Includes', 'JavaScript JSON'),
(360, 'vZ7DNRmdUfbzbgU8bEpuH1rSx', 17, 'Compatible Browsers', 'Chrome'),
(361, 'vZ7DNRmdUfbzbgU8bEpuH1rSx', 18, 'Package Includes', 'HTML'),
(362, 'PLwSyNtFbb8wbyA8jNZLFSzgR', 17, 'Compatible Browsers', 'Chrome'),
(363, 'PLwSyNtFbb8wbyA8jNZLFSzgR', 18, 'Package Includes', 'HTML'),
(366, '7VVCyDZL0ta6tTGjR9Ft5CvAZ', 17, 'Compatible Browsers', 'Chrome'),
(367, '7VVCyDZL0ta6tTGjR9Ft5CvAZ', 18, 'Package Includes', 'HTML'),
(370, 'oSaqjNRJm4DMk4NyfweGOAFjF', 17, 'Compatible Browsers', 'Chrome'),
(371, 'oSaqjNRJm4DMk4NyfweGOAFjF', 18, 'Package Includes', 'HTML'),
(381, 'lRztH9aXS1NWhIG6yAdGniOH3', 17, 'Compatible Browsers', 'Firefox'),
(382, 'lRztH9aXS1NWhIG6yAdGniOH3', 18, 'Package Includes', 'HTML'),
(383, 'fMNKRTgq6u3dwdajau7EqfLqp', 17, 'Compatible Browsers', 'Firefox'),
(384, 'fMNKRTgq6u3dwdajau7EqfLqp', 18, 'Package Includes', 'HTML'),
(397, '8YIjT3zSXptJAdJtGCvm5OwSI', 17, 'Compatible Browsers', 'Chrome'),
(398, '8YIjT3zSXptJAdJtGCvm5OwSI', 18, 'Package Includes', 'HTML'),
(431, 'kaKJe1C0bXgNaL2k0OVFZ8viv', 17, 'Compatible Browsers', 'Firefox'),
(432, 'kaKJe1C0bXgNaL2k0OVFZ8viv', 18, 'Package Includes', 'HTML'),
(433, 'BvzayOgDODzQRAM9L4oHzm2Xk', 17, 'Compatible Browsers', 'Chrome'),
(434, 'BvzayOgDODzQRAM9L4oHzm2Xk', 18, 'Package Includes', 'JavaScript JS'),
(435, 'FlE8tABpU0Nba2cgAE9Jei52m', 17, 'Compatible Browsers', 'Safari'),
(436, 'FlE8tABpU0Nba2cgAE9Jei52m', 18, 'Package Includes', 'JavaScript JSON'),
(441, '65LI41cKwGjobF7ZNaH1oIyLH', 17, 'Compatible Browsers', 'Firefox'),
(442, '65LI41cKwGjobF7ZNaH1oIyLH', 18, 'Package Includes', 'JavaScript JSON'),
(443, '0t39ogfMG065Zi3DGPerxgQN7', 17, 'Compatible Browsers', 'Chrome'),
(444, '0t39ogfMG065Zi3DGPerxgQN7', 18, 'Package Includes', 'HTML'),
(451, 'Krz9FigqahY1vixjC4CCPziWa', 17, 'Compatible Browsers', 'Chrome'),
(452, 'Krz9FigqahY1vixjC4CCPziWa', 18, 'Package Includes', 'Layered PSD'),
(471, 'u3hf5p1dwAenl1xIzyBoblTyT', 17, 'Compatible Browsers', 'Chrome'),
(472, 'u3hf5p1dwAenl1xIzyBoblTyT', 18, 'Package Includes', 'HTML'),
(479, 'nT3nqMfS90KDDqip7ydrg4UBW', 17, 'Compatible Browsers', 'Chrome'),
(480, 'nT3nqMfS90KDDqip7ydrg4UBW', 18, 'Package Includes', 'HTML'),
(487, 'mtctOFgjyhe3unibscdgMgrJY', 17, 'Compatible Browsers', 'Internet Explorer,Chrome'),
(488, 'mtctOFgjyhe3unibscdgMgrJY', 18, 'Package Includes', 'JavaScript JS,XML'),
(491, 'scNuJyWpYg0515mAucVudGh2i', 17, 'Compatible Browsers', 'Internet Explorer,Chrome'),
(492, 'scNuJyWpYg0515mAucVudGh2i', 18, 'Package Includes', 'HTML'),
(517, 'pNiCxCfgJdOQZjLg1LtoxNuj7', 17, 'Compatible Browsers', 'Chrome'),
(518, 'pNiCxCfgJdOQZjLg1LtoxNuj7', 18, 'Package Includes', 'XML'),
(519, 'ZlMgURnJtlRTPPKhyfZXMyBut', 17, 'Compatible Browsers', 'Internet Explorer,Chrome'),
(520, 'ZlMgURnJtlRTPPKhyfZXMyBut', 18, 'Package Includes', 'JavaScript JS'),
(600, '4yqgmGrkdW9Ir41BMDZr4N41j', 17, 'Compatible Browsers', 'Firefox'),
(601, '4yqgmGrkdW9Ir41BMDZr4N41j', 18, 'Package Includes', 'HTML'),
(605, 'lbya9UIV4Nc9PUj5RaLViCr23', 19, 'Package Includes', 'JPG Image'),
(606, 'lbya9UIV4Nc9PUj5RaLViCr23', 20, 'Layout', 'Fixed'),
(607, 'lbya9UIV4Nc9PUj5RaLViCr23', 21, 'Columns', '3'),
(614, 'fkfEJ65zZMMurphjRJoGM94uZ', 17, 'Compatible Browsers', 'Firefox,Safari'),
(615, 'fkfEJ65zZMMurphjRJoGM94uZ', 18, 'Package Includes', 'JavaScript JSON,XML,Layered PNG'),
(616, 'gzk1PvNt2bjhfSzoO3vuC4EbK', 17, 'Compatible Browsers', 'Firefox,Chrome,Opera'),
(617, 'gzk1PvNt2bjhfSzoO3vuC4EbK', 18, 'Package Includes', 'PHP,SWF/FLV,LESS'),
(618, 'YjMsBAjidIRpGcvxir3twhW6o', 17, 'Compatible Browsers', 'Firefox,Chrome,Opera'),
(619, 'YjMsBAjidIRpGcvxir3twhW6o', 18, 'Package Includes', 'JavaScript JS,HTML,CSS'),
(752, '0I3ENlP8neSWtp3UfZEBfOcAL', 17, 'Compatible Browsers', 'Firefox,Safari,Opera'),
(753, '0I3ENlP8neSWtp3UfZEBfOcAL', 18, 'Package Includes', 'JavaScript JS,HTML,PHP'),
(757, 'pkwXXOiLNhdg9EI7PXD4h2TIm', 19, 'Package Includes', 'Layered PNG,JPG Image'),
(758, 'pkwXXOiLNhdg9EI7PXD4h2TIm', 20, 'Layout', 'Fixed'),
(759, 'pkwXXOiLNhdg9EI7PXD4h2TIm', 21, 'Columns', '3'),
(764, 'osOEmeOgLHqVUGlARTbrbfIht', 17, 'Compatible Browsers', 'Internet Explorer,Chrome,Safari'),
(765, 'osOEmeOgLHqVUGlARTbrbfIht', 18, 'Package Includes', 'JavaScript JS,HTML'),
(792, 'OrL5v0cQlQ74iYQO9BMbeeY1o', 17, 'Compatible Browsers', 'Internet Explorer,Chrome,Safari'),
(793, 'OrL5v0cQlQ74iYQO9BMbeeY1o', 18, 'Package Includes', 'JavaScript JS,JavaScript JSON,XML,SWF/FLV,LESS'),
(804, 'YCaMygNFKDJNG1CZ00MIw397U', 17, 'Compatible Browsers', 'Firefox,Safari,Opera'),
(805, 'YCaMygNFKDJNG1CZ00MIw397U', 18, 'Package Includes', 'JavaScript JSON,XML'),
(808, '0eUMBTgcV0smA6sZJN8rx9jNz', 17, 'Compatible Browsers', 'Firefox,Safari'),
(809, '0eUMBTgcV0smA6sZJN8rx9jNz', 18, 'Package Includes', 'JavaScript JS,HTML'),
(878, 'l53RewmoPw9P8HLsip1WRzdyR', 17, 'Compatible Browsers', 'Firefox'),
(879, 'l53RewmoPw9P8HLsip1WRzdyR', 18, 'Package Includes', 'JavaScript JSON'),
(884, 'Xs8ogLf3imjkg5jbsNa1SG1Aa', 17, 'Compatible Browsers', 'Firefox'),
(885, 'Xs8ogLf3imjkg5jbsNa1SG1Aa', 18, 'Package Includes', 'JavaScript JSON'),
(950, 'GxuIHUj2KHHQARgbIdPnXKWAX', 17, 'Compatible Browsers', 'Internet Explorer,Chrome'),
(951, 'GxuIHUj2KHHQARgbIdPnXKWAX', 18, 'Package Includes', 'JavaScript JS,XML'),
(956, 'eZZhkD3WFHQyq2VMATLgZSgqd', 17, 'Compatible Browsers', 'Internet Explorer,Chrome,Safari'),
(957, 'eZZhkD3WFHQyq2VMATLgZSgqd', 18, 'Package Includes', 'JavaScript JS,HTML'),
(1002, 'ENlDnAtUqEk91uBpHCoKRFnqo', 17, 'Compatible Browsers', 'Firefox'),
(1003, 'ENlDnAtUqEk91uBpHCoKRFnqo', 18, 'Package Includes', 'LESS'),
(1011, 'oZTQwtaZ23wJmbJ16iZrlQ0i4', 19, 'Package Includes', 'Layered PSD'),
(1012, 'oZTQwtaZ23wJmbJ16iZrlQ0i4', 20, 'Layout', 'Fixed'),
(1013, 'oZTQwtaZ23wJmbJ16iZrlQ0i4', 21, 'Columns', '2'),
(1041, 'gJjyuKBF60grTFActJCljK2v8', 22, 'Compatible Browsers', 'Firefox,Safari'),
(1042, 'gJjyuKBF60grTFActJCljK2v8', 23, 'Package Includes', 'JavaScript JS'),
(1049, 'GTVzIQ4rPzH0YtgEWKSr3KkOm', 19, 'Package Includes', 'JPG Image'),
(1050, 'GTVzIQ4rPzH0YtgEWKSr3KkOm', 20, 'Layout', 'Responsive'),
(1051, 'GTVzIQ4rPzH0YtgEWKSr3KkOm', 21, 'Columns', '2'),
(1056, 'pyPXv6jXaOU9AOMlCVcAntygP', 17, 'Compatible Browsers', 'Firefox'),
(1057, 'pyPXv6jXaOU9AOMlCVcAntygP', 18, 'Package Includes', 'JavaScript JSON'),
(1066, 'T2UL1MuB1C65L8CVfjmbetxic', 17, 'Compatible Browsers', 'Safari'),
(1067, 'T2UL1MuB1C65L8CVfjmbetxic', 18, 'Package Includes', 'SQL'),
(1116, 'VqGMXlQRgJgulLS2Y9swrrdTM', 19, 'Package Includes', 'JPG Image'),
(1117, 'VqGMXlQRgJgulLS2Y9swrrdTM', 20, 'Layout', 'Fixed'),
(1118, 'VqGMXlQRgJgulLS2Y9swrrdTM', 21, 'Columns', '4+'),
(1146, 'Zo9hNX9OL9BW9DcF9XOGRl2sW', 17, 'Compatible Browsers', 'Firefox'),
(1147, 'Zo9hNX9OL9BW9DcF9XOGRl2sW', 18, 'Package Includes', 'JavaScript JS'),
(1156, 'wWvlMu2jqJkJTPuxY9oyuM612', 17, 'Compatible Browsers', 'Firefox,Safari'),
(1157, 'wWvlMu2jqJkJTPuxY9oyuM612', 18, 'Package Includes', 'JavaScript JS,HTML'),
(1176, '3puzvAFHHZU3kYIXYfLk4piBc', 17, 'Compatible Browsers', 'Internet Explorer,Chrome,Opera'),
(1177, '3puzvAFHHZU3kYIXYfLk4piBc', 18, 'Package Includes', 'JavaScript JS,HTML,XML'),
(1202, 'B7p9SPdukg7HifxbubY4flp1y', 17, 'Compatible Browsers', 'Chrome'),
(1203, 'B7p9SPdukg7HifxbubY4flp1y', 18, 'Package Includes', 'JavaScript JSON'),
(1206, 'nB1FDxPKmlbTCR11OBhoUoieE', 26, 'Package Includes', 'Transparent PNG'),
(1207, 'nB1FDxPKmlbTCR11OBhoUoieE', 27, 'Minimum Adobe CS Version', 'CS5'),
(1208, '1e8iX5QZuWeNzY3B3TZxXIFQk', 17, 'Compatible Browsers', 'Chrome'),
(1209, '1e8iX5QZuWeNzY3B3TZxXIFQk', 18, 'Package Includes', 'JavaScript JSON'),
(1210, 'L516n6smyj8Jcfxv8SfOGLSjl', 17, 'Compatible Browsers', 'Chrome'),
(1211, 'L516n6smyj8Jcfxv8SfOGLSjl', 18, 'Package Includes', 'JavaScript JS'),
(1212, 'kUHRB8DA9pRat7040sHDRRmX8', 17, 'Compatible Browsers', 'Firefox,Safari'),
(1213, 'kUHRB8DA9pRat7040sHDRRmX8', 18, 'Package Includes', 'JavaScript JSON'),
(1214, 'EwYCP0fiJhpFzkUHMHsfHGEHQ', 17, 'Compatible Browsers', 'Chrome'),
(1215, 'EwYCP0fiJhpFzkUHMHsfHGEHQ', 18, 'Package Includes', 'JavaScript JSON,PHP'),
(1216, '06vijfcx1xrZTx7AxIQKGSc5e', 17, 'Compatible Browsers', 'Chrome'),
(1217, '06vijfcx1xrZTx7AxIQKGSc5e', 18, 'Package Includes', 'JavaScript JSON'),
(1218, 'u5nUQhWXotRZayHtM1MRMMTaF', 17, 'Compatible Browsers', 'Chrome'),
(1219, 'u5nUQhWXotRZayHtM1MRMMTaF', 18, 'Package Includes', 'HTML'),
(1220, 'jMMk7JNy3kUckT29TnyapJhVj', 17, 'Compatible Browsers', 'Firefox,Safari'),
(1221, 'jMMk7JNy3kUckT29TnyapJhVj', 18, 'Package Includes', 'JavaScript JS'),
(1226, 'cuqSrv3WhQt8yt2PfbVVTKfn5', 17, 'Compatible Browsers', 'Chrome'),
(1227, 'cuqSrv3WhQt8yt2PfbVVTKfn5', 18, 'Package Includes', 'JavaScript JS'),
(1230, '4DUi7Mvrts6nSYfG2r4DxnADW', 17, 'Compatible Browsers', 'Internet Explorer,Firefox,Chrome,Safari,Opera'),
(1231, '4DUi7Mvrts6nSYfG2r4DxnADW', 18, 'Package Includes', 'JavaScript JS,JavaScript JSON,HTML,XML,CSS,PHP,SWF/FLV,SQL,LESS,Layered PSD,Layered PNG'),
(1232, 'O46UFkMbSeDuzZdOstVr5PvZo', 19, 'Package Includes', 'Layered PNG,Layered PSD,HTML Files,CSS Files'),
(1233, 'O46UFkMbSeDuzZdOstVr5PvZo', 20, 'Layout', 'Fixed'),
(1234, 'O46UFkMbSeDuzZdOstVr5PvZo', 21, 'Columns', '3'),
(1235, 'qNJy3ujfiAeBLTQFS28Q3eqQM', 22, 'Compatible Browsers', 'Internet Explorer,Firefox,Safari,Opera'),
(1236, 'qNJy3ujfiAeBLTQFS28Q3eqQM', 23, 'Package Includes', 'JavaScript JS,HTML,CSS'),
(1237, '99eEe3cmGa8FRzyr9yvtdeuYQ', 28, 'Package Includes', '.apk,.so,.db'),
(1238, 'qvNQNRGUiWP0UOR2NPg1cw4BH', 26, 'Package Includes', 'Photoshop PSD,Transparent PNG,Layered PNG,Quark QXP,AI Illustrator'),
(1239, 'qvNQNRGUiWP0UOR2NPg1cw4BH', 27, 'Minimum Adobe CS Version', 'CS5'),
(1240, 'qNOMwcQde97WrD3SLjoRVpVGD', 24, 'Package Includes', 'Photoshop PSD,Layered PNG,JPG Image'),
(1241, 'qNOMwcQde97WrD3SLjoRVpVGD', 25, 'Minimum Adobe CS Version', 'CS4'),
(1242, 'LilCB3uHFGeGxgCZgX2H8g2Ey', 22, 'Compatible Browsers', 'Internet Explorer,Chrome,Safari,Opera'),
(1243, 'LilCB3uHFGeGxgCZgX2H8g2Ey', 23, 'Package Includes', 'JavaScript JS,XML,CSS'),
(1244, 'LJPEMB5p0VNFria7rMwvvt9St', 19, 'Package Includes', 'Layered PNG,JPG Image,HTML Files'),
(1245, 'LJPEMB5p0VNFria7rMwvvt9St', 20, 'Layout', 'Responsive'),
(1246, 'LJPEMB5p0VNFria7rMwvvt9St', 21, 'Columns', '2'),
(1247, 'kKdlCXQte5LnE85SBatqSlpTo', 17, 'Compatible Browsers', 'Internet Explorer,Firefox,Safari,Opera'),
(1248, 'kKdlCXQte5LnE85SBatqSlpTo', 18, 'Package Includes', 'HTML'),
(1249, '9R4OHZdojfFJkDEFIsPfaoZKK', 17, 'Compatible Browsers', 'Internet Explorer,Chrome,Opera'),
(1250, '9R4OHZdojfFJkDEFIsPfaoZKK', 18, 'Package Includes', 'JavaScript JS,PHP,SQL'),
(1271, 'wDQiHQ7W51GiRx0YoZU9e54fE', 17, 'Compatible Browsers', 'Internet Explorer,Firefox,Chrome,Safari,Opera'),
(1272, 'wDQiHQ7W51GiRx0YoZU9e54fE', 18, 'Package Includes', 'JavaScript JS,JavaScript JSON,HTML,XML,CSS,PHP,SWF/FLV,SQL,LESS,Layered PSD,Layered PNG'),
(1273, 'szkU2xnwirkOvjlKYZtmDBHLy', 17, 'Compatible Browsers', 'Internet Explorer,Firefox,Chrome,Safari,Opera'),
(1274, 'szkU2xnwirkOvjlKYZtmDBHLy', 18, 'Package Includes', 'JavaScript JS,JavaScript JSON,HTML,XML,CSS,PHP,SWF/FLV,SQL'),
(1275, 'UnxSQfnCZCNvsN7jYyMhEZK2t', 26, 'Package Includes', 'JPG Image'),
(1276, 'UnxSQfnCZCNvsN7jYyMhEZK2t', 27, 'Minimum Adobe CS Version', 'CC');

-- --------------------------------------------------------

--
-- Table structure for table `items_data`
--

CREATE TABLE `items_data` (
  `itm_id` int NOT NULL,
  `original_file_name` varchar(500) DEFAULT NULL,
  `item_file_name` varchar(500) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `session_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items_data`
--

INSERT INTO `items_data` (`itm_id`, `original_file_name`, `item_file_name`, `user_id`, `session_id`) VALUES
(1, '9c42156e261a4d2282370c03fce43a0a.zip', 'tue-feb-8-2022-12-47-pm57886.zip', '43', 'ayKSSFyM8Q2OLiu3dxcQv7dRdFnaedPLjQPeBsFZ');

-- --------------------------------------------------------

--
-- Table structure for table `items_favorite`
--

CREATE TABLE `items_favorite` (
  `fav_id` int NOT NULL,
  `item_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `items_favorite`
--

INSERT INTO `items_favorite` (`fav_id`, `item_id`, `user_id`) VALUES
(10, 82, 38),
(11, 78, 38),
(12, 77, 38),
(13, 76, 38),
(14, 85, 44);

-- --------------------------------------------------------

--
-- Table structure for table `items_images`
--

CREATE TABLE `items_images` (
  `itm_id` int NOT NULL,
  `item_token` varchar(200) NOT NULL,
  `item_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `items_images`
--

INSERT INTO `items_images` (`itm_id`, `item_token`, `item_image`) VALUES
(97, 'kKdlCXQte5LnE85SBatqSlpTo', 'fhLv4-092202-U7J.jpg'),
(98, 'kKdlCXQte5LnE85SBatqSlpTo', '5aZRc-092202-R3O.jpg'),
(99, 'LilCB3uHFGeGxgCZgX2H8g2Ey', '2cGOg-092843-JzM.png'),
(100, 'LilCB3uHFGeGxgCZgX2H8g2Ey', '5vEJ5-092843-cjS.jpeg'),
(101, 'O46UFkMbSeDuzZdOstVr5PvZo', 'tOPnM-094119-zKy.jpg'),
(102, 'fkfEJ65zZMMurphjRJoGM94uZ', 'Mon-Jul-5-2021-1226-PM88978.jpg'),
(103, 'fkfEJ65zZMMurphjRJoGM94uZ', 'Mon-Jul-5-2021-1226-PM80861.jpg'),
(114, 'pkwXXOiLNhdg9EI7PXD4h2TIm', 'Tue-Jul-6-2021-128-PM33778.jpg'),
(115, 'pkwXXOiLNhdg9EI7PXD4h2TIm', 'Tue-Jul-6-2021-128-PM71869.jpg'),
(116, 'osOEmeOgLHqVUGlARTbrbfIht', 'Wed-Jul-7-2021-522-AM21161.jpg'),
(117, 'osOEmeOgLHqVUGlARTbrbfIht', 'Wed-Jul-7-2021-522-AM89707.jpg'),
(120, 'OrL5v0cQlQ74iYQO9BMbeeY1o', 'Wed-Jul-7-2021-101-PM34576.jpg'),
(121, 'YCaMygNFKDJNG1CZ00MIw397U', 'Thu-Jul-8-2021-656-AM47349.jpg'),
(122, 'YCaMygNFKDJNG1CZ00MIw397U', 'Thu-Jul-8-2021-656-AM57176.jpg'),
(123, '0eUMBTgcV0smA6sZJN8rx9jNz', 'Thu-Jul-8-2021-712-AM29467.jpg'),
(125, 'Xs8ogLf3imjkg5jbsNa1SG1Aa', 'Thu-Jul-8-2021-1142-AM40418.jpg'),
(126, 'Xs8ogLf3imjkg5jbsNa1SG1Aa', 'Thu-Jul-8-2021-1144-AM47812.jpg'),
(127, 'GxuIHUj2KHHQARgbIdPnXKWAX', 'Fri-Jul-9-2021-929-AM81700.jpg'),
(128, 'GxuIHUj2KHHQARgbIdPnXKWAX', 'Fri-Jul-9-2021-933-AM57557.jpg'),
(129, 'eZZhkD3WFHQyq2VMATLgZSgqd', 'Fri-Jul-9-2021-941-AM47208.jpg'),
(130, 'Zo9hNX9OL9BW9DcF9XOGRl2sW', 'tue-nov-9-2021-9-14-am61530.jpeg'),
(131, 'wWvlMu2jqJkJTPuxY9oyuM612', 'tue-nov-9-2021-11-04-am54844.jpeg'),
(132, '4DUi7Mvrts6nSYfG2r4DxnADW', 'wed-feb-9-2022-10-18-am22428.jpg'),
(133, '4DUi7Mvrts6nSYfG2r4DxnADW', 'wed-feb-9-2022-10-19-am17457.jpg'),
(134, '4DUi7Mvrts6nSYfG2r4DxnADW', 'wed-feb-9-2022-10-23-am30806.png'),
(135, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am83736.jpg'),
(136, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am84045.jpg'),
(137, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am52871.jpg'),
(138, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am13881.jpg'),
(139, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am45480.jpg'),
(140, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am90533.jpg'),
(141, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am41253.jpg'),
(142, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am78184.jpg'),
(143, 'szkU2xnwirkOvjlKYZtmDBHLy', 'wed-feb-9-2022-11-19-am59948.jpg'),
(144, 'wDQiHQ7W51GiRx0YoZU9e54fE', 'sat-feb-19-2022-6-47-am93751.png'),
(145, 'wDQiHQ7W51GiRx0YoZU9e54fE', 'sat-feb-19-2022-6-47-am83285.jpg'),
(146, 'wDQiHQ7W51GiRx0YoZU9e54fE', 'sat-feb-19-2022-6-47-am40708.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item_checkout`
--

CREATE TABLE `item_checkout` (
  `chout_id` int NOT NULL,
  `purchase_token` varchar(500) NOT NULL,
  `purchase_code` varchar(500) DEFAULT NULL,
  `order_ids` varchar(200) DEFAULT NULL,
  `item_prices` varchar(200) DEFAULT NULL,
  `item_user_id` varchar(200) DEFAULT NULL,
  `user_id` int NOT NULL,
  `total` int NOT NULL,
  `vendor_amount` float NOT NULL,
  `admin_amount` float NOT NULL,
  `processing_fee` float NOT NULL,
  `vat_price` float NOT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_token` varchar(300) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `order_firstname` varchar(200) DEFAULT NULL,
  `order_lastname` varchar(200) DEFAULT NULL,
  `order_company` varchar(200) DEFAULT NULL,
  `order_email` varchar(200) DEFAULT NULL,
  `order_country` varchar(200) DEFAULT NULL,
  `order_address` text,
  `order_city` varchar(200) DEFAULT NULL,
  `order_zipcode` varchar(200) DEFAULT NULL,
  `order_notes` text,
  `payment_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item_checkout`
--

INSERT INTO `item_checkout` (`chout_id`, `purchase_token`, `purchase_code`, `order_ids`, `item_prices`, `item_user_id`, `user_id`, `total`, `vendor_amount`, `admin_amount`, `processing_fee`, `vat_price`, `payment_type`, `payment_token`, `payment_date`, `order_firstname`, `order_lastname`, `order_company`, `order_email`, `order_country`, `order_address`, `order_city`, `order_zipcode`, `order_notes`, `payment_status`) VALUES
(398, '513824', NULL, '154', '29', '39', 38, 29, 26.1, 2.9, 5, 0, 'paypal', '00131595YN615693K', '2021-12-13', 'customer', NULL, NULL, 'customer@gmail.com', NULL, NULL, NULL, NULL, NULL, 'completed'),
(399, '463950', NULL, '155', '20', '39', 38, 20, 18, 2, 5, 0, 'paypal', '2SN64516DL3475949', '2022-01-21', 'customer', NULL, NULL, 'customer@gmail.com', NULL, NULL, NULL, NULL, NULL, 'completed'),
(400, '943609', NULL, '156', '10', '39', 44, 10, 8.5, 1.5, 2, 0, 'wallet', NULL, '2022-02-07', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'completed'),
(401, '665410', NULL, '157', '5000', '43', 44, 4000, 3200, 800, 2, 0, 'wallet', NULL, '2022-02-09', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'completed'),
(402, '977593', NULL, '158', '500', '43', 44, 500, 400, 100, 2, 0, 'wallet', NULL, '2022-02-09', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'completed'),
(403, '224014', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-13', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(404, '736351', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-14', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(405, '540772', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(406, '980132', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(407, '815460', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(408, '391572', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(409, '369514', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(410, '408862', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(411, '334357', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(412, '769108', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(413, '718228', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(414, '586462', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(415, '508119', NULL, '159', '30', '48', 44, 30, 18, 12, 2, 0, 'shurjopay', NULL, '2022-02-15', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(416, '623758', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-15', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(417, '937687', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-17', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(418, '358898', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-17', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(419, '307229', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-17', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(420, '601586', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-17', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(421, '771666', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-17', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(422, '483551', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-17', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(423, '930332', NULL, '161', '1', '43', 44, 1, 0.8, 0.2, 2, 0, 'paypal', NULL, '2022-02-19', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(424, '712958', NULL, '161', '1', '43', 44, 1, 0.8, 0.2, 2, 0, 'shurjopay', NULL, '2022-02-19', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(425, '353591', NULL, '161', '1', '43', 44, 1, 0.8, 0.2, 2, 0, 'paypal', NULL, '2022-02-19', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(426, '132904', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'paypal', NULL, '2022-02-19', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(427, '224193', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'paypal', NULL, '2022-02-19', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(428, '542706', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-19', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(429, '291811', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'paypal', NULL, '2022-02-19', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(430, '829093', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-19', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(431, '529688', NULL, '160', '30', '48', 50, 30, 18, 12, 2, 3, 'shurjopay', NULL, '2022-02-19', 'Rana', NULL, NULL, 'rana.bangladesh@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(432, '654057', NULL, '161', '1', '43', 44, 1, 0.8, 0.2, 0, 0, 'shurjopay', NULL, '2022-02-19', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(433, '467201', NULL, '161', '1', '43', 44, 1, 0.8, 0.2, 0, 0, 'shurjopay', NULL, '2022-02-20', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(434, '744105', NULL, '161', '1', '43', 44, 1, 0.48, 0.32, 0, 0, 'shurjopay', NULL, '2022-02-20', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(435, '823079', NULL, '161', '1', '43', 44, 1, 0.48, 0.32, 0, 0, 'shurjopay', NULL, '2022-02-20', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(436, '289941', NULL, '161', '1', '43', 44, 1, 0.48, 0.32, 0, 0, 'shurjopay', NULL, '2022-02-20', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(437, '802673', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-22', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(438, '979638', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-22', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(439, '203754', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-22', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(440, '530605', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-23', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(441, '484521', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-23', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(442, '416919', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-24', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(443, '416894', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-25', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(444, '342041', NULL, '161', '1', '43', 44, 1, 0.56, 0.24, 0, 0, 'shurjopay', NULL, '2022-02-27', 'Raisa', NULL, NULL, 'jonaki.global@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(445, '209848', NULL, '164', '1', '43', 39, 1, 0.7, 0.3, 0, 0, 'shurjopay', NULL, '2022-03-06', 'vendor', NULL, NULL, 'vendor@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(446, '401153', NULL, '164', '1', '43', 39, 1, 0.7, 0.3, 0, 0, 'shurjopay', NULL, '2022-03-06', 'vendor', NULL, NULL, 'vendor@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(447, '135329', NULL, '164', '1', '43', 39, 1, 0.7, 0.3, 0, 0, 'shurjopay', NULL, '2022-03-06', 'vendor', NULL, NULL, 'vendor@gmail.com', NULL, NULL, NULL, NULL, NULL, 'pending'),
(448, '527937', NULL, '164', '1', '43', 39, 1, 0.7, 0.3, 0, 0, 'shurjopay', 'sp62248bc05bed7', '2022-03-06', 'vendor', NULL, NULL, 'vendor@gmail.com', NULL, NULL, NULL, NULL, NULL, 'completed'),
(449, '731153', NULL, '165', '2500', '43', 39, 2500, 1750, 750, 0, 0, 'shurjopay', 'sp62248e9565ecf', '2022-03-06', 'vendor', NULL, NULL, 'vendor@gmail.com', NULL, NULL, NULL, NULL, NULL, 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `item_comments`
--

CREATE TABLE `item_comments` (
  `comm_id` int NOT NULL,
  `comm_user_id` int NOT NULL,
  `comm_item_user_id` int NOT NULL,
  `comm_item_id` int NOT NULL,
  `comm_text` text NOT NULL,
  `comm_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item_comments`
--

INSERT INTO `item_comments` (`comm_id`, `comm_user_id`, `comm_item_user_id`, `comm_item_id`, `comm_text`, `comm_date`) VALUES
(8, 38, 39, 83, 'do you provide free installation service?', '2021-02-11 06:36:02'),
(9, 38, 39, 78, 'Hi i need your help. please help me', '2021-04-16 09:40:58'),
(10, 44, 43, 86, 'Do you have Mobile apps for this food delivery services ? I am interested buy also.', '2022-02-09 18:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `item_comment_reply`
--

CREATE TABLE `item_comment_reply` (
  `comm_reply_id` int NOT NULL,
  `comm_user_id` int NOT NULL,
  `comm_item_user_id` int NOT NULL,
  `comm_item_id` int NOT NULL,
  `comm_id` int NOT NULL,
  `comm_text` text NOT NULL,
  `comm_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item_comment_reply`
--

INSERT INTO `item_comment_reply` (`comm_reply_id`, `comm_user_id`, `comm_item_user_id`, `comm_item_id`, `comm_id`, `comm_text`, `comm_date`) VALUES
(13, 39, 39, 78, 9, 'sure i will help you', '2021-04-16 09:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `item_order`
--

CREATE TABLE `item_order` (
  `ord_id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `item_user_id` int NOT NULL,
  `item_token` varchar(200) NOT NULL,
  `purchase_token` varchar(200) DEFAULT NULL,
  `purchase_code` varchar(500) DEFAULT NULL,
  `payment_token` varchar(200) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `license` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `coupon_key` varchar(200) DEFAULT NULL,
  `coupon_id` varchar(200) DEFAULT NULL,
  `coupon_code` varchar(200) DEFAULT NULL,
  `coupon_type` varchar(200) DEFAULT NULL,
  `coupon_value` varchar(200) DEFAULT NULL,
  `discount_price` float NOT NULL,
  `item_price` float NOT NULL,
  `vendor_amount` float NOT NULL DEFAULT '0',
  `admin_amount` float NOT NULL DEFAULT '0',
  `total_price` float NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `drop_status` varchar(100) DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item_order`
--

INSERT INTO `item_order` (`ord_id`, `user_id`, `item_id`, `item_name`, `item_user_id`, `item_token`, `purchase_token`, `purchase_code`, `payment_token`, `payment_type`, `license`, `start_date`, `end_date`, `coupon_key`, `coupon_id`, `coupon_code`, `coupon_type`, `coupon_value`, `discount_price`, `item_price`, `vendor_amount`, `admin_amount`, `total_price`, `order_status`, `drop_status`, `approval_status`) VALUES
(154, 38, 78, 'Eiusmod tempor incididunt', 39, 'LJPEMB5p0VNFria7rMwvvt9St', '513824', 'zb75oNsyN7X4EoMAGJv78Tno2ZVuDp6sRoi', '00131595YN615693K', 'paypal', 'regular', '2021-12-13', '2022-06-13', NULL, NULL, NULL, NULL, NULL, 0, 29, 26.1, 2.9, 29, 'completed', NULL, 'payment released to vendor'),
(155, 38, 86, 'TTT', 39, 'cuqSrv3WhQt8yt2PfbVVTKfn5', '463950', 'mwf2kkWSngSnYYps0s6pzAIZgQGkxvueDRn', '2SN64516DL3475949', 'paypal', 'regular', '2022-01-21', '2022-07-21', NULL, NULL, NULL, NULL, NULL, 0, 20, 18, 2, 20, 'completed', NULL, 'payment released to vendor'),
(156, 44, 84, 'Incididunt ut labore', 39, 'O46UFkMbSeDuzZdOstVr5PvZo', '943609', 'oRybisTytI9I1gfRT6nB5oLALupnpBjXUm7', NULL, 'wallet', 'regular', '2022-02-07', '2022-08-07', NULL, NULL, NULL, NULL, NULL, 0, 10, 8.5, 1.5, 10, 'completed', NULL, 'payment released to vendor'),
(157, 44, 86, 'Food Delivery System PHP Laravel', 43, 'szkU2xnwirkOvjlKYZtmDBHLy', '665410', '7Xrofhth9ECnQGy7xw8Tuf2wK7JyRnRztOd', NULL, 'wallet', 'regular', '2022-02-09', '2022-08-09', '6203b59e812bc', '32', 'joindoptorr', 'percentage', '20', 4000, 5000, 3200, 800, 4000, 'completed', NULL, 'payment released to vendor'),
(158, 44, 85, 'WordPress Development', 43, '4DUi7Mvrts6nSYfG2r4DxnADW', '977593', '1HSpWdshZDRQObCTDXJtNdhqI2HsEQykUCR', NULL, 'wallet', 'regular', '2022-02-09', '2022-08-09', NULL, NULL, NULL, NULL, NULL, 0, 500, 400, 100, 500, 'completed', NULL, 'payment released to vendor'),
(160, 50, 87, 'Superman Landing Nice Animation Video', 48, 'UnxSQfnCZCNvsN7jYyMhEZK2t', '529688', 'fmDetHf1MgDxlT9kyA1bxQuC91pm8f1e1Dd', NULL, 'shurjopay', 'regular', '2022-02-15', '2022-08-15', NULL, NULL, NULL, NULL, NULL, 0, 30, 18, 12, 30, 'pending', NULL, NULL),
(161, 44, 88, 'Student Management System Laravel', 43, 'wDQiHQ7W51GiRx0YoZU9e54fE', '342041', '5z3GYSlNLczLmIJxV1SVgi4pVHlsVWVGdZd', NULL, 'shurjopay', 'regular', '2022-02-27', '2022-08-27', '6211e8b573740', '32', 'joindoptorr', 'percentage', '20', 0.8, 1, 0.56, 0.24, 0.8, 'pending', NULL, NULL),
(162, 50, 88, 'Student Management System Laravel', 43, 'wDQiHQ7W51GiRx0YoZU9e54fE', NULL, NULL, NULL, NULL, 'regular', '2022-02-19', '2022-08-19', NULL, NULL, NULL, NULL, NULL, 0, 1, 0.8, 0.2, 1, 'pending', NULL, NULL),
(163, 43, 87, 'Superman Landing Nice Animation Video', 48, 'UnxSQfnCZCNvsN7jYyMhEZK2t', NULL, NULL, NULL, NULL, 'regular', '2022-02-19', '2022-08-19', NULL, NULL, NULL, NULL, NULL, 0, 15, 9, 6, 15, 'pending', NULL, NULL),
(164, 39, 88, 'Student Management System Laravel', 43, 'wDQiHQ7W51GiRx0YoZU9e54fE', '527937', 'U950xmjd58dS6pKRqIwXpUjKjzKfsBa1fM9', 'sp62248bc05bed7', 'shurjopay', 'regular', '2022-03-06', '2022-09-06', NULL, NULL, NULL, NULL, NULL, 0, 1, 0.7, 0.3, 1, 'completed', NULL, 'payment released to vendor'),
(165, 39, 86, 'Food Delivery System PHP Laravel', 43, 'szkU2xnwirkOvjlKYZtmDBHLy', '731153', 'IdSNzy7v5LMoJoaNue1YyeqE5OizxWsC18C', 'sp62248e9565ecf', 'shurjopay', 'regular', '2022-03-06', '2022-09-06', NULL, NULL, NULL, NULL, NULL, 0, 2500, 1750, 750, 2500, 'completed', NULL, 'payment released to vendor');

-- --------------------------------------------------------

--
-- Table structure for table `item_ratings`
--

CREATE TABLE `item_ratings` (
  `rating_id` int NOT NULL,
  `or_item_id` int NOT NULL,
  `order_id` int NOT NULL,
  `or_item_token` varchar(200) NOT NULL,
  `or_user_id` int NOT NULL,
  `or_item_user_id` int NOT NULL,
  `rating` int NOT NULL,
  `rating_reason` varchar(200) NOT NULL,
  `rating_comment` text NOT NULL,
  `rating_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item_ratings`
--

INSERT INTO `item_ratings` (`rating_id`, `or_item_id`, `order_id`, `or_item_token`, `or_user_id`, `or_item_user_id`, `rating`, `rating_reason`, `rating_comment`, `rating_date`) VALUES
(17, 77, 76, 'kKdlCXQte5LnE85SBatqSlpTo', 38, 39, 5, 'support', 'very good customer support :)', '2021-08-13 10:19:18'),
(18, 84, 77, 'O46UFkMbSeDuzZdOstVr5PvZo', 38, 39, 3, 'performance', 'some times it\'s slow but okay for me', '2020-12-16 10:01:05'),
(19, 83, 126, 'qNJy3ujfiAeBLTQFS28Q3eqQM', 38, 39, 5, 'performance', 'best performance. very nice', '2021-08-13 10:18:50'),
(20, 84, 156, 'O46UFkMbSeDuzZdOstVr5PvZo', 44, 39, 5, 'design', 'Very nice', '2022-02-07 14:27:22'),
(21, 85, 158, '4DUi7Mvrts6nSYfG2r4DxnADW', 44, 43, 5, 'design', 'Excellent product and service. Recommended.', '2022-02-09 17:57:18'),
(22, 86, 157, 'szkU2xnwirkOvjlKYZtmDBHLy', 44, 43, 5, 'design', 'Nice system and support are excellent. Appreciated.', '2022-02-09 17:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `item_refund`
--

CREATE TABLE `item_refund` (
  `refund_id` int NOT NULL,
  `ref_item_id` int NOT NULL,
  `ref_order_id` int NOT NULL,
  `ref_purchased_token` varchar(200) NOT NULL,
  `ref_item_token` varchar(200) NOT NULL,
  `ref_user_id` int NOT NULL,
  `ref_item_user_id` int NOT NULL,
  `ref_refund_reason` varchar(500) NOT NULL,
  `ref_refund_comment` text NOT NULL,
  `ref_refund_approval` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item_refund`
--

INSERT INTO `item_refund` (`refund_id`, `ref_item_id`, `ref_order_id`, `ref_purchased_token`, `ref_item_token`, `ref_user_id`, `ref_item_user_id`, `ref_refund_reason`, `ref_refund_comment`, `ref_refund_approval`) VALUES
(20, 79, 79, '919181', 'LilCB3uHFGeGxgCZgX2H8g2Ey', 38, 39, 'Item support is promised but not provided', 'i need my money', 'accepted'),
(21, 76, 102, '305299', '9R4OHZdojfFJkDEFIsPfaoZKK', 44, 39, 'Item has a security vulnerability', 'i need my money', 'accepted'),
(22, 79, 103, '892377', 'LilCB3uHFGeGxgCZgX2H8g2Ey', 44, 39, 'Item has a security vulnerability', 'hi', 'declined'),
(23, 79, 103, '892377', 'LilCB3uHFGeGxgCZgX2H8g2Ey', 44, 39, 'Item support is promised but not provided', 'hello', 'accepted'),
(24, 78, 127, '947742', 'LJPEMB5p0VNFria7rMwvvt9St', 38, 39, 'Item support extension not used', 'i need my money', 'declined'),
(25, 78, 127, '947742', 'LJPEMB5p0VNFria7rMwvvt9St', 38, 39, 'Items that have not been downloaded', 'i must refund my amount', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE `item_type` (
  `item_type_id` int NOT NULL,
  `item_type_name` varchar(200) DEFAULT NULL,
  `item_type_slug` varchar(200) DEFAULT NULL,
  `item_type_status` int NOT NULL DEFAULT '0',
  `item_type_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `item_type_name`, `item_type_slug`, `item_type_status`, `item_type_drop_status`) VALUES
(1, 'Scripts', 'Scripts', 1, 'no'),
(2, 'Themes', 'themes', 1, 'no'),
(3, 'Plugins', 'plugins', 1, 'no'),
(4, 'Print', 'print', 1, 'no'),
(5, 'Graphics', 'graphics', 1, 'no'),
(6, 'Mobile Apps', 'mobile-apps', 1, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `item_withdrawal`
--

CREATE TABLE `item_withdrawal` (
  `wd_id` int NOT NULL,
  `wd_user_id` int NOT NULL,
  `wd_date` date NOT NULL,
  `withdraw_type` varchar(100) NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `stripe_email` varchar(200) NOT NULL,
  `paystack_email` varchar(500) DEFAULT NULL,
  `bank_details` text,
  `wd_amount` float NOT NULL,
  `wd_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `item_withdrawal`
--

INSERT INTO `item_withdrawal` (`wd_id`, `wd_user_id`, `wd_date`, `withdraw_type`, `paypal_email`, `stripe_email`, `paystack_email`, `bank_details`, `wd_amount`, `wd_status`) VALUES
(14, 38, '2020-12-17', 'paypal', 'sample@gmail.com', '', '', '', 200, 'pending'),
(15, 38, '2020-12-17', 'paypal', 'demo@gmail.com', '', '', '', 129, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `keyword_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `keyword_token` varchar(200) DEFAULT NULL,
  `keyword_label` mediumtext,
  `keyword_text` mediumtext,
  `language_code` varchar(50) NOT NULL,
  `keyword_parent` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
('2860', 'bPP5t0GRBJH13EnlKShAxNRRN', '404 Not Found', '404 Not Found', 'en', '0'),
('2862', '8X6q52IbXVVl4EelEjOw6S4Gv', 'Home', 'Home', 'en', '0'),
('2863', 'o0XZzbWNeuIZ2h7oUMnel5fR6', '404', '404', 'en', '0'),
('2864', 'wUuMlLEPyZ1jr7XN30hNSaG90', 'Sorry, the page you are looking for could not be found.', 'Sorry, the page you are looking for could not be found.', 'en', '0'),
('2865', 'xBrEIgyzORyZc4Lb5ZASyHGKZ', 'Add Coupon', 'Add Coupon', 'en', '0'),
('2866', 'PVPmiejPz9ymAazTlMPtzxpMD', 'Coupon Code', 'Coupon Code', 'en', '0'),
('2867', 'E714fEAVUt5Isao1LQRjPjbD4', 'Value', 'Value', 'en', '0'),
('2868', 'mUkaQpX6Nk9mHq97zyOaoVDP5', 'Start Date', 'Start Date', 'en', '0'),
('2869', 'NOjgGZUX4VtvQ0CmeXcy0hBza', 'End Date', 'End Date', 'en', '0'),
('2870', 'qeqNP9vFIAwVzjRhzF51PmIe5', 'Discount Type', 'Discount Type', 'en', '0'),
('2871', 'EOsoIJ3fKW82dIo5mUdktBucq', 'Percentage', 'Percentage', 'en', '0'),
('2872', 'GpKuLvtFqtgF5iWfH5PBasYIn', 'Fixed', 'Fixed', 'en', '0'),
('2873', 'OojWPeJ5Dp2QLw0GjVr31zomm', 'Status', 'Status', 'en', '0'),
('2874', 'K2cxRK30ncsY7NZYz3ciZ6RLj', 'Active', 'Active', 'en', '0'),
('2875', 'zdPHIGsMfY77BQ1xtSZVuFsMW', 'InActive', 'InActive', 'en', '0'),
('2876', 'WV7Deg2NYEjNEL9NYnjjq3bKL', 'Submit', 'Submit', 'en', '0'),
('2877', 'ETGulAxtKGlGhvwWIfPs1tYvT', 'Blog', 'Blog', 'en', '0'),
('2878', 'RNKac3MtpVMbJvOKZDtaUYPhN', 'Read More', 'Read More', 'en', '0'),
('2879', 'pq5DsuU9n1liUYQlM9bENt3jM', 'Categories', 'Categories', 'en', '0'),
('2880', 'L6L5EzDchhn0E7PAjAHZEWmht', 'Popular Posts', 'Popular Posts', 'en', '0'),
('2881', 'PatuXrIkYdksif7Zbyy8MLRgQ', 'Latest Posts', 'Latest Posts', 'en', '0'),
('2882', '8KuGFr1KHaCyrwPNxe3bH3kS5', 'Cancel', 'Cancel', 'en', '0'),
('2883', 'dlZH7XfPaausoGq6641xTkgU6', 'Transaction Cancelled', 'Transaction Cancelled', 'en', '0'),
('2884', '4vAKxE2EbBrTm5RwbPfGmzMPn', 'Your payment transaction has been cancelled.', 'Your payment transaction has been cancelled.', 'en', '0'),
('2885', 'hox7fnWMrxvpL2FYz2FfW1xjo', 'My Cart', 'My Cart', 'en', '0'),
('2886', '2AqqQg79v7HEogomIjrIePEN0', 'Product Items', 'Product Items', 'en', '0'),
('2887', '5HgEfRJkV1l9m2kwVTDCMhz1p', 'License Support', 'License Support', 'en', '0'),
('2888', '0EO6PMMjQnov7V0YBJ2iizYhA', 'Price', 'Price', 'en', '0'),
('2889', 'DWlYkrB8KOoIpByTMb7MSXzBz', 'Remove', 'Remove', 'en', '0'),
('2890', 'MymL4iG5Qlf6X5kkykx5nsMtO', '6 months', '6 months', 'en', '0'),
('2891', '4Ls8v4EDYQflyAhgdFDBhyJjW', '12 months', '12 months', 'en', '0'),
('2892', 'VVVWWedp2ElUa60zE2SR3SDgL', 'Are you sure you want to delete?', 'Are you sure you want to delete?', 'en', '0'),
('2893', 'RFjxegDMB51jenSxvdZCqvkHo', 'Apply Coupon', 'Apply Coupon', 'en', '0'),
('2894', 'Z3Ctq3ZvPFFUQ4W57i97dd7SZ', 'Cart Subtotal', 'Cart Subtotal', 'en', '0'),
('2895', 'Ku5gtPDFNzcjhV5n8GgoRCxB5', 'Discount Price', 'Discount Price', 'en', '0'),
('2896', 'hgVmjtqTf3lR4GkQtIYEQ6q7L', 'Total', 'Total', 'en', '0'),
('2897', 'iGKffAgyB6dVj5LLkxFYz2jSi', 'Proceed To Checkout', 'Proceed To Checkout', 'en', '0'),
('2898', 'tVOJkONGctJBVkodNx0XGsyuT', 'Your cart is empty!', 'Your cart is empty!', 'en', '0'),
('2899', '9QDQr7ym4SQxVWPe7ktB50FEo', 'Checkout', 'Checkout', 'en', '0'),
('2900', 'NgvRkrjRERVwsjGcPQ9qwhQlo', 'Order Summary', 'Order Summary', 'en', '0'),
('2901', 'P5HMZqdwTwHnMZGNiiX4jDV64', 'Processing Fee', 'Processing Fee', 'en', '0'),
('2902', 'BgKoGYvTwsuXptbWn1XJufBSc', 'Select Payment Method', 'Select Payment Method', 'en', '0'),
('2903', '6reRPLOgWTMlVJq3RF7HSKkJ1', 'Credit or debit card', 'Credit or debit card', 'en', '0'),
('2904', 'zOYxzABRwbAtQPEJ8aBBGZTzn', 'Confirm Order', 'Confirm Order', 'en', '0'),
('2905', '6pqzcML8dd3it9nukllpaqj9w', 'New Comment Received', 'New Comment Received', 'en', '0'),
('2906', 'nt9t6WqDNYCkaSo7yfY5A3Y6r', 'Sender Name', 'Sender Name', 'en', '0'),
('2907', 'n5lJEsFbRVnfw10ZX8TZYlQkc', 'Sender Email', 'Sender Email', 'en', '0'),
('2908', 'EH0pEYQiE77d0ZzUZbpfwUdCa', 'Item Url', 'Item Url', 'en', '0'),
('2909', 't039QRrNu54E4eRr7Lqa5YJa9', 'Comment', 'Comment', 'en', '0'),
('2910', 'trsiwJz8E0IBIadDpySZsAzth', 'Contact', 'Contact', 'en', '0'),
('2911', 'GloXcCqIVR8poXb2per1LvhbF', 'How can We', 'How can We', 'en', '0'),
('2912', 'JxehSHquK5FHVR8bKGgkFknRk', 'Help?', 'Help?', 'en', '0'),
('2913', 'cD6SkT9YtbNMmvfkhQ0BRqZOt', 'Office Address', 'Office Address', 'en', '0'),
('2914', 'EcFwczdTF7nnDvs3v5TDXC30c', 'Phone Number', 'Phone Number', 'en', '0'),
('2915', 'xYH0ACvwhQ0KE3IuSyMCUEwxv', 'Email', 'Email', 'en', '0'),
('2916', 'UQY7WU4XiBU8oHHVAotqTyAEL', 'Leave Your Messages', 'Leave Your Messages', 'en', '0'),
('2917', 'xOe9d4jskuYM2Tn6CoJnFjMMu', 'Name', 'Name', 'en', '0'),
('2918', '2RvUvK9rfwWPaxoCqCmkgUsLU', 'Message', 'Message', 'en', '0'),
('2919', 'aJhMu7fLEW07YPtbBrnTcFswW', 'Coupon', 'Coupon', 'en', '0'),
('2920', 'LeDcbGs27KUH0fI0DnCTsGMsm', 'Sno', 'Sno', 'en', '0'),
('2921', 'ZRINybId13aMyU8G4hczBsvmC', 'Type', 'Type', 'en', '0'),
('2922', 'quOVq98X938k7fLuJ6CEXLxIY', 'Action', 'Action', 'en', '0'),
('2923', 'NLJPH2vcvqBnod90mgrteyLM3', 'Edit', 'Edit', 'en', '0'),
('2924', 'mDVDH8iRP3skibyubY7fGtotY', 'Delete', 'Delete', 'en', '0'),
('2925', 'qk27a1LFzdKp5pCjxBClWbFbf', 'Are you sure you want to remove this coupon?', 'Are you sure you want to remove this coupon?', 'en', '0'),
('2926', 'sCmK276Wdnrh8ClgsdfZ7lg07', 'Profile', 'Profile', 'en', '0'),
('2927', 'qzenjQT5DTDd00UEjBbKgWoKV', 'Setting', 'Setting', 'en', '0'),
('2928', 'BIvYjHm85IQaOy8sjedDn4s3O', 'Purchase', 'Purchase', 'en', '0'),
('2929', 'Yd6t4nBHiR9qNTnsvN6b32XnG', 'Favourite', 'Favourite', 'en', '0'),
('2930', 'hEeOJVLPKXgM95Nxq4rEJSUCU', 'Sales', 'Sales', 'en', '0'),
('2931', 'KLFgDTMWKWTVqQNdy1WCLZVdT', 'Upload Item', 'Upload Item', 'en', '0'),
('2932', 'RqpzkdKWYQMOIxJ5Adbc6SFQK', 'Manage Items', 'Manage Items', 'en', '0'),
('2933', 'ExyKj7HaT91RrdXVQpZhcihYS', 'Withdrawals', 'Withdrawals', 'en', '0'),
('2934', 'oEb92kh2DrKFwsSQ1SZUdorAB', 'Edit Coupon', 'Edit Coupon', 'en', '0'),
('2935', 'WTXXhXBgmPHSyOHJlli44wXUE', 'Edit Item', 'Edit Item', 'en', '0'),
('2936', 'ievkBGmN5kw2gTZMFj4IuGwnD', 'Name & Description', 'Name & Description', 'en', '0'),
('2937', 'XPsS1jpoOCWgnln8jQfIbHA8y', 'Item Type', 'Item Type', 'en', '0'),
('2938', 'Yqu1SSrp6g2jJ8QRTsoY3iDaU', 'Item Name', 'Item Name', 'en', '0'),
('2939', 'Z4CFXe1HPPJJAfioZSQG26QgK', 'Max 100 characters', 'Max 100 characters', 'en', '0'),
('2940', 'r516JlfyRimlFmOiJx0F9ohnB', 'Short Description', 'Short Description', 'en', '0'),
('2941', 'q618H6eM87PQEb2Ri2vLmdnh1', 'Description', 'Description', 'en', '0'),
('2942', 'KiCk3AaSR7kxsJQdSeUbbIpoK', 'Upload Files', 'Upload Files', 'en', '0'),
('2943', 'nxPQNojbz59ZOHCZDVKN7nJ9D', 'Upload Thumbnail', 'Upload Thumbnail', 'en', '0'),
('2944', 'v0uMyaQ3awF3QZUkYxCiJtJcQ', 'Please select file of type .jpg, .png or .jpeg', 'Please select file of type .jpg, .png or .jpeg', 'en', '0'),
('2945', 'lEOS0PqF4rsWUY2msr6MMMEhk', 'Upload Preview', 'Upload Preview', 'en', '0'),
('2946', 'jI2C22Je6apEXUh0VYzmLaT06', 'Size', 'Size', 'en', '0'),
('2947', 'ByQ66mic7KcM9e713ArmEvTxq', 'Upload Main File', 'Upload Main File', 'en', '0'),
('2948', 'tkcYxLUyx9WIrmtgA0RucwRrk', 'ZIP - All files', 'ZIP - All files', 'en', '0'),
('2949', 'Ra98r45DNTpqZBRrykl9RMXWY', 'Please select file of type .zip only', 'Please select file of type .zip only', 'en', '0'),
('2950', 'OzbANA2joy6c2J8xy2058kfNW', 'Upload Screenshots (multiple)', 'Upload Screenshots (multiple)', 'en', '0'),
('2951', 'JAW6TvcgZspGzbO6My71HgvXD', 'Category & Attributes', 'Category & Attributes', 'en', '0'),
('2952', 'sSUlcDqgOpPivSLEIDxQ4ZnlY', 'Select Category', 'Select Category', 'en', '0'),
('2953', 'Nry5rob90m0Y5eCDtXIVYpHsf', 'Compatible Browsers', 'Compatible Browsers', 'en', '0'),
('2954', 'BEcJP4eeySrx3CJCesYnmCBqn', 'Package Includes', 'Package Includes', 'en', '0'),
('2955', 'ok0ZhVs8sFxoM4D5eZN4Ff2UK', 'Columns', 'Columns', 'en', '0'),
('2956', 'bF43vm0BKlEnaY1UQoCRyHR1U', 'Choose Columns', 'Choose Columns', 'en', '0'),
('2957', 'vj8T3tlWlZs31QoGl4AGMrr9E', 'Layout', 'Layout', 'en', '0'),
('2958', 'vUKo45VGa0wAC6Y989iCMhqcU', 'Choose Layout', 'Choose Layout', 'en', '0'),
('2959', 'z7toprUBGWyaEJbMI83YMayW8', 'Layered?', 'Layered?', 'en', '0'),
('2960', 'Fv4p79cAAxN5IkozfIbQxvcMb', 'Choose', 'Choose', 'en', '0'),
('2961', 'DgTicYJKDHF9VICg209YwojPE', 'Minimum Adobe CS Version', 'Minimum Adobe CS Version', 'en', '0'),
('2962', '45Ty3J1XOHFTEUu9GuBhfno0m', 'Print Dimensions', 'Print Dimensions', 'en', '0'),
('2963', 'aGx2AIsf7uZwaWa7sVFRPGMiV', 'Print dimensions in Inches for printable items, width x height.', 'Print dimensions in Inches for printable items, width x height.', 'en', '0'),
('2964', 'wWfpDdNdBkHXGcjEtffZ0Cocb', 'Pixel Dimensions', 'Pixel Dimensions', 'en', '0'),
('2965', 'qKYLAq0zk126Y8iLbK5gqyKBo', 'Image dimensions in Pixels for screen-based items.', 'Image dimensions in Pixels for screen-based items.', 'en', '0'),
('2966', 'KJWXoqQrf1cx3SQRkBDr9R8Ao', 'Demo URL', 'Demo URL', 'en', '0'),
('2967', 'MM9eRd390A0Cn0IdD008wOt0a', 'Youtube Video URL', 'Youtube Video URL', 'en', '0'),
('2968', 'JUjn0Fzezfkp3ddoqG6nRLCso', 'example', 'example', 'en', '0'),
('2969', 'VPKfkVLvqWBbmz50VjxiQjyqZ', 'Apply For Free Download?', 'Apply For Free Download?', 'en', '0'),
('2970', '8yr52RSqeeJ2dYh6nDI8IFcLV', 'Yes', 'Yes', 'en', '0'),
('2971', 'iFrA4dZ1AnXp91HmheKL0PxDs', 'No', 'No', 'en', '0'),
('2972', 'KAXPH1jkklG2HOd0yFCOOAUEc', 'Apply for flash sale?', 'Apply for flash sale?', 'en', '0'),
('2973', 'i5pXY7W6g7vxylWC3VHZNixUz', 'If your item is selected, we will put it on sale for just one week for only 50% of it\'s original price.', 'If your item is selected, we will put it on sale for just one week for only 50% of it\'s original price.', 'en', '0'),
('2974', 'LC9xPObXBalI2Jzy0uZMpTu1d', 'Tags', 'Tags', 'en', '0'),
('2975', 'dhvMNiYwSqMM3rpXm5G0O63qX', 'Maximum of 15 keywords. Keywords should all be in lowercase and separated by commas. ex: shopping, blog, forum....ect', 'Maximum of 15 keywords. Keywords should all be in lowercase and separated by commas. ex: shopping, blog, forum....ect', 'en', '0'),
('2976', '7H9oEji6wCpb3xgP3r7Bt3J0s', 'Support & Updates', 'Support & Updates', 'en', '0'),
('2977', 'qOmO0iRzFSluNpP0ezZ6E9XTP', 'Feature Update', 'Feature Update', 'en', '0'),
('2978', 'TIcdAMJvez6AQz2ioJ6Mh00tL', 'Item Support', 'Item Support', 'en', '0'),
('2979', 'SH1S36enfedpTmGqZWMUO4jfN', 'Regular License (6 months support)', 'Regular License (6 months support)', 'en', '0'),
('2980', 'NrpOlRnlHudl0fAVgDJChkpfK', 'Extended License (12 months support)', 'Extended License (12 months support)', 'en', '0'),
('2981', 'UuiRwbOwKpNIJMBg1IuiPEeDx', 'Submit Review', 'Submit Review', 'en', '0'),
('2982', 'zmX0OJzfMQaVw6QpE4V60Rpip', 'Upload Rules', 'Upload Rules', 'en', '0'),
('2983', 'A2MDyBcYjFnWZCgQ6wG9z3kwT', 'Image Upload', 'Image Upload', 'en', '0'),
('2984', 'zRvGlYpQtRxqfn9Y5mkyx3qvX', 'upload only', 'upload only', 'en', '0'),
('2985', 'S7sViiT7bMmDuEWoLqX4MTOHO', 'File Upload', 'File Upload', 'en', '0'),
('2986', '509e47pz89eUxydS0VOfJRN78', 'Copyright Note', 'Copyright Note', 'en', '0'),
('2987', 'vQiAoZWYqdb4V4ngoIbP59jwp', 'You should include details of source files you have used in the Comments for the Reviewer section of the form.', 'You should include details of source files you have used in the Comments for the Reviewer section of the form.', 'en', '0'),
('2988', 'qYvihZ05s9pVBu0yWC0wCBrMm', 'If your file does not meet these copyright standards, it will be rejected.', 'If your file does not meet these copyright standards, it will be rejected.', 'en', '0'),
('2989', 'dJ6fE4Xso7OjuNuYJcD3hPATd', 'Favourites', 'Favourites', 'en', '0'),
('2990', '5dUUcGvT7QVlNkuVbBC7DTFvO', 'My Favourites', 'My Favourites', 'en', '0'),
('2991', 'sHlxw5aTAzT3QHfhry3HgShct', 'Are you sure you want to remove from favourites?', 'Are you sure you want to remove from favourites?', 'en', '0'),
('2992', 'c0PlsLPWhBhcnpKX9w8Vw4fO7', 'Free', 'Free', 'en', '0'),
('2993', 'c3DzbJg2DMKlis6CaLU71KQj0', 'Flash Sale', 'Flash Sale', 'en', '0'),
('2994', 'yyQgYRSOQgITsN2ZqrrRMyg9h', 'For only a short period of time you can grab these files with 50% discount', 'For only a short period of time you can grab these files with 50% discount', 'en', '0'),
('2995', 've1SIOTzaK3uMQm7vnb7WQODm', 'days', 'days', 'en', '0'),
('2996', '7tCNukNuMUZ6cDAuD77CBVJ7d', 'hours', 'hours', 'en', '0'),
('2997', 'LpjvTRbDY8ljswiBPn364cHkc', 'minutes', 'minutes', 'en', '0'),
('2998', '28WHVuanzGzScD0rQhKhxytid', 'seconds', 'seconds', 'en', '0'),
('2999', 'NC4SgsDF1zUs4uFZEPdYQ8XlO', 'More Info', 'More Info', 'en', '0'),
('3000', '03zO5dmN1KdiJ1oQzLaiyNBih', 'Live Demo', 'Live Demo', 'en', '0'),
('3001', 'hsBkYhESNpm6SOxEX8a1Ik1vu', 'MARKET FACTS', 'MARKET FACTS', 'en', '0'),
('3002', 'rQA9ws5LNvYcAjZCnjnbYmyel', 'Members', 'Members', 'en', '0'),
('3003', 'Iogc84zvdFVJRNOCrT7GgXtgT', 'Files', 'Files', 'en', '0'),
('3004', 'yjX5ACIecZnCKr8eXry7EmzNd', 'POPULAR CATEGORIES', 'POPULAR CATEGORIES', 'en', '0'),
('3005', 'K0mIGN2tuiPuafr7ELTqA4vex', 'NEWSLETTER', 'Newsletter', 'en', '0'),
('3006', 'GNixjjy3j4fGHqGOXwszkwXe0', 'Enter your email', 'Enter your email', 'en', '0'),
('3007', 'JOI83nNmY81EH4Fsfe0msbvln', 'Subscribe', 'Subscribe', 'en', '0'),
('3008', 'ImrD278R4BrMb1KXgzm5IbSX0', 'All rights reserved.', 'All rights reserved.', 'en', '0'),
('3009', 'TsfmuTA4y0rdFlMmreyo6Hfzm', 'Forgot Your Password', 'Forgot Your Password', 'en', '0'),
('3010', '1cmu2b3qVuAp4aHYnevPc3uCk', 'Please enter the email address for your account. A verification link will be sent to you.Once you have received the verification link, you will be able to create a new password for your account.', 'Please enter the email address for your account. A verification link will be sent to you.Once you have received the verification link, you will be able to create a new password for your account.', 'en', '0'),
('3011', 'IwbYvt5LOWXrueEkKGfBy02IK', 'Email Address', 'Email Address', 'en', '0'),
('3012', '9Gi0udwneVvNrfF6laN2FQJKE', 'Send Password Reset Link', 'Send Password Reset Link', 'en', '0'),
('3013', 'YMNtPQmkzTVqftHf9vsGd37Cw', 'Forgot Password', 'Forgot Password', 'en', '0'),
('3014', 'EOcdSDULu9oH9hOXuRLZyqqJo', 'You are receiving this email because we received a password reset request for your account', 'You are receiving this email because we received a password reset request for your account', 'en', '0'),
('3015', '8102JtUs4LEU4iA8HxtZhb6OQ', 'Reset Password', 'Reset Password', 'en', '0'),
('3016', 'KHgwztFA4ItTdfLvRgM2XUi8b', 'Free Items', 'Free Items', 'en', '0'),
('3017', 'CkTsYsX3Pk0vwH5T9ppNJewQ6', 'Download these files before they are gone', 'Download these files before they are gone', 'en', '0'),
('3018', 's5ScnN1sTGyFWY2eJKjNLkXxJ', 'Start Selling', 'Start Selling', 'en', '0'),
('3019', 'MG0WR0MOXN0N8vQPTUsVwAVyd', 'Create Account', 'Create Account', 'en', '0'),
('3020', 'IiZQAywlrLmzuvjkK9nkC8wdW', 'Sign In', 'Sign In', 'en', '0'),
('3021', '5yrSHb36CiXGZqMArisy738QL', 'View Cart', 'View Cart', 'en', '0'),
('3022', 'YGQfytQJdBdL8ltZdjH8FD5fm', 'Admin Panel', 'Admin Panel', 'en', '0'),
('3023', 'hzQfRCFNUayrZg9z03srfwGxv', 'Logout', 'Logout', 'en', '0'),
('3024', 'rbf8UtxW5oFg8Gct8K90XCszB', 'Purchases', 'Purchases', 'en', '0'),
('3025', 'XfLvsFg9wUjcZKj9GTFSYSkRY', 'All Items', 'All Items', 'en', '0'),
('3026', '4G18MdQI6JNarrH5jGgp3xPEy', 'Recent Items', 'Recent Items', 'en', '0'),
('3027', 'zmudlfSFxbDTM6bdKHwT8oGU2', 'Featured Items', 'Featured Items', 'en', '0'),
('3028', 'wruTMUEJ3tfOUQvj5NWIfugC4', 'Top Authors', 'Top Authors', 'en', '0'),
('3029', '8Yx1zQVawYe5XGnTmd6tZaWUN', 'Pages', 'Pages', 'en', '0'),
('3030', 'p45yjN7XFfsERfwvKR96KoB9s', 'Search your products...', 'Search your products...', 'en', '0'),
('3031', 'oSz4syUERRowGKr4fmorhVLXS', 'Search Now', 'Search Now', 'en', '0'),
('3032', 'GAC31H8baFepveOV4VWZPFS3w', 'View More Featured Items', 'View More Featured Items', 'en', '0'),
('3033', 'Qh3Xb6Dr2f0yVUL9ypEX0twan', 'Featured Files', 'Featured Files', 'en', '0'),
('3034', 'z8JOyoXmpPJUDi2pHffN5Cj3j', 'by', 'by', 'en', '0'),
('3035', 'uzGq2MKKuk44DMY7O8XHepXu5', 'Newest', 'Newest', 'en', '0'),
('3036', 'UcK67c6rCN22FZiPHwVbvAWdb', 'View More Newest Items', 'View More Newest Items', 'en', '0'),
('3037', 'uI6rpxog2kWtBTyoyVIHB5K2G', 'total earnings', 'total earnings', 'en', '0'),
('3038', 'q2Zd2vbVbyv9CvA3FZA3LAr3z', 'total files', 'total files', 'en', '0'),
('3039', 'IVXbfTDoGsDg03jnEf0UFrLjE', 'total sales', 'total sales', 'en', '0'),
('3040', 'R7pmePW1dcUOYdgB0ud0MALck', 'Free Files', 'Free Files', 'en', '0'),
('3041', 'GEbOILHnopWrkQyLBQdw5a97a', 'View More Free Items', 'View More Free Items', 'en', '0'),
('3042', '1LAhlYCvJ9EJifwpNemo5atAc', 'Buyer', 'Buyer', 'en', '0'),
('3043', 'mpDUoF8zQpMy3sVH1g0B4UFh8', 'Reviews', 'Reviews', 'en', '0'),
('3044', 'Xb0YXMGHae6rplMBsBo86wcuv', 'Our buyers top reviews', 'Our buyers top reviews', 'en', '0'),
('3045', 'h3BFnhBlyTGWYumYCjT9xTv1b', 'Our', 'Our', 'en', '0'),
('3046', 'lXH4yWC3CQUZy0ggZHkhuMtPl', 'our latest blog post', 'our latest blog post', 'en', '0'),
('3047', '8xYh6e1XCGPWVd5QpYo2nDbFx', 'Why Choose', 'Why Choose', 'en', '0'),
('3048', '7OwAXzfB2JbTv3aa9ZiV0kAtA', 'our site features', 'our site features', 'en', '0'),
('3049', '6fRh28YI9QT1AFVSm1nFdaMSw', 'Live Preview', 'Live Preview', 'en', '0'),
('3050', 'rNCfFeW2SmuenSTx1ZJt61hIj', 'Screenshots', 'Screenshots', 'en', '0'),
('3051', 'MTOX7MdLlfRabmXrEs9JtmMM9', 'Add To Favorites', 'Add To Favorites', 'en', '0'),
('3052', 'jgStHSk0TxvIGLqoRrakizUpM', 'Share this item', 'Share this item', 'en', '0'),
('3053', 'qNK7F8sWldNa2HDz1uMBl9eFO', 'Item Details', 'Item Details', 'en', '0'),
('3054', 'Kzgk8aCa8VEzCfe9byYVHAFuu', 'Comments', 'Questions', 'en', '0'),
('3055', 'FWOONZj2BUgL23N8rh773eu2N', 'Support', 'Support', 'en', '0'),
('3056', 'Pw0fvZAZDXGS7kKYRWULtpof9', 'Reply', 'Reply', 'en', '0'),
('3057', 'cZ8AnoOavk2gpXbQ5K1ClFBO0', 'Author', 'Author', 'en', '0'),
('3058', '26g2qk5sG2EQfrWLvCKQEmuU4', 'Post Comment', 'Post Question', 'en', '0'),
('3059', 'QUiv4N57Flm4hVzelTickDVnY', 'Write your comment...', 'Write your question...', 'en', '0'),
('3060', 'uYRHY4tjL5Pp0gvD7BKweJYLI', 'Contact the Author', 'Contact the Author', 'en', '0'),
('3061', '0220rjAhiZT4I8EAeXrhVvFt1', 'Please', 'Please', 'en', '0'),
('3062', 'ctZQc3bUz7AuK80ef5JPDQEfA', 'to contact this author.', 'to contact this author.', 'en', '0'),
('3063', 'Sk0LNceyyIZ6t8002mcQse9fy', 'Subject', 'Subject', 'en', '0'),
('3064', 'NR4ltMNI9VlLXInccXGytTYGl', 'Submit Now', 'Submit Now', 'en', '0'),
('3065', 'IPEmQPuCIaLPstwbuoXwxO3js', 'This item is one of the', 'This item is one of the', 'en', '0'),
('3066', 'KbkFczvkCYERh5ZCTrWqLGB96', 'You are able to download this item for free for a limited time. Updates and support are only available if you purchase this item.', 'You are able to download this item for free for a limited time. Updates and support are only available if you purchase this item.', 'en', '0'),
('3067', 'FJ1sSTrc2HDiHvcgcNX5A5JzN', 'Download this file for free', 'Download this file for free', 'en', '0'),
('3068', 'ApsARpYNPSUvBtuTxs7UHNCXq', 'Quality checked by', 'Quality checked by', 'en', '0'),
('3069', 'bJ0QvxFwDcxKB8E8UOLyRx3oY', 'Future updates', 'Future updates', 'en', '0'),
('3070', 'fVB1G3zakaUIdsj8ttysvI1Na', '6 months support from', '6 months support from', 'en', '0'),
('3071', 'j8Ax0pxDtvgy1s5mmi57LX9V9', '6 months not support from', '6 months not support from', 'en', '0'),
('3072', 'o5as7DiwypPUi0VDniEJcDqZQ', 'Regular License', 'Regular License', 'en', '0'),
('3073', 's0OyGlLRrgH0wjQdviGHCzyjx', 'Extended License', 'Extended License', 'en', '0'),
('3074', 'A9sYC8ZZx4BMWZy7bGfl6qmXO', 'Buy Now', 'Buy Now', 'en', '0'),
('3075', '5Zugtt8nW80dPSjZjXQmq7Grv', 'This item was featured on', 'This item was featured on', 'en', '0'),
('3076', '4rp3POuwSMBlphJTAEI575Dqb', 'Author Information', 'Author Information', 'en', '0'),
('3077', 'ZwHDwhJW15gFXZwEzeIaWqz7Z', 'Member since', 'Member since', 'en', '0'),
('3078', 'xcvERxxRGGNoD8xi0is3yBoZE', 'View Profile', 'View Profile', 'en', '0'),
('3079', 'Mv3ICiDpN4Z5PzvdFisNPHI73', 'Favorites', 'Favorites', 'en', '0'),
('3080', 'N6JzD29Vetz2ZjWJNto9I97WE', 'Ratings', 'Ratings', 'en', '0'),
('3081', 'tVJLdvsmDlA4mqUvTtOaUsQ47', 'Item Information', 'Item Information', 'en', '0'),
('3082', 'CnrqVlxJw820DcmJaLxPQHH9A', 'Released', 'Released', 'en', '0'),
('3083', 'MTsRnSUxqOUN5vdjKANSWKfqL', 'Updated', 'Updated', 'en', '0'),
('3084', 'YUsbKSPW220IOwXM6TewTeCHD', 'Category', 'Category', 'en', '0'),
('3085', 'MLiAUhB1JsxtEJMwB8SWrAfyQ', 'Layered', 'Layered', 'en', '0'),
('3086', 'qiqCtS31XNCMCQnnpDmGiIDkW', 'Adobe CS Version', 'Adobe CS Version', 'en', '0'),
('3087', 'WN6EBdEUckKNcDp3E60dx9qax', 'More Related Items', 'More Related Items', 'en', '0'),
('3088', 'Nw2IPy6dHI507HNlesvAZkSRb', 'Item Update Notifications', 'Item Update Notifications', 'en', '0'),
('3089', 'USNnZDREFbFPmHc0LHll8vWSx', 'Your product item', 'Your product item', 'en', '0'),
('3090', 'EgkElCTHtN6T1V01NfsX90ON8', 'new updates are uploaded by vendor. please download your new updated item release.', 'new updates are uploaded by vendor. please download your new updated item release.', 'en', '0'),
('3091', 'dzietEjDhNVwrTGF94OWK1X6n', 'Manage Item', 'Manage Item', 'en', '0'),
('3092', 'oOnsyUSRBQmcqKt28VMFiyzyr', 'UnApproved', 'UnApproved', 'en', '0'),
('3093', 'oTrHtCeJUwCbQRKhbf3657JeG', 'Thank You', 'Thank You', 'en', '0'),
('3094', 'tXFdHZu71JI32Nf3e2PoSz16i', 'You are receiving this email newsletter subscription request', 'You are receiving this email newsletter subscription request', 'en', '0'),
('3095', 'HfubKhA7IRFDBPAHKtNBajHBj', 'Please confirm to this link', 'Please confirm to this link', 'en', '0'),
('3096', '6iU5RRHuCxaJL8u88nxBpKTZJ', 'to activate your email subscription.', 'to activate your email subscription.', 'en', '0'),
('3097', '1MxkvKz5xF31apqUFXW6xGaaz', 'Order Details', 'Order Details', 'en', '0'),
('3098', 'DNY6wEgmjrigNVA2WLdQClUzh', 'Print', 'Print', 'en', '0'),
('3099', 'iRNDFgD3eTGlvuC3HjsMG6GRn', 'Order info', 'Order info', 'en', '0'),
('3100', 'jWLqLW7paJ1vFkdEYp6d1XjnE', 'Order', 'Order', 'en', '0'),
('3101', 'L5Qz7NLq8XcknEztN9l8iXy2t', 'Purchased Date', 'Purchased Date', 'en', '0'),
('3102', '7qidylV7yrKmsjt19KCf9YkZ6', 'Purchase Date', 'Purchase Date', 'en', '0'),
('3103', 'eMl5cMSHTkSxD6Lsht1eQkKSX', 'Expiry Date', 'Expiry Date', 'en', '0'),
('3104', 'JGlfYV0Pyf9abPQOzzXXi7s7s', 'Item', 'Item', 'en', '0'),
('3105', '3kisoofFBRkdiWV0qwD6yLJOv', 'License', 'License', 'en', '0'),
('3106', 'sqqGayeo0uGUvExsyWwwpMR5H', 'Earnings', 'Earnings', 'en', '0'),
('3107', 'qDpyRfAIHAYuXkgX3Aj8xoRKF', 'Sub Total', 'Sub Total', 'en', '0'),
('3108', 'gnvogngTCsfFBJ1pFTmgeJhnJ', 'Remove frame', 'Remove frame', 'en', '0'),
('3109', 'BLbRUspDu3paW2tZF2gEYUTBp', 'Profile Settings', 'Profile Settings', 'en', '0'),
('3110', 'IUium9ep9Qmnxhqth5ZNdhWni', 'Profile Information', 'Profile Information', 'en', '0'),
('3111', 'HdMCaDmrmTQjCbmX4EhfmodIh', 'Username', 'Username', 'en', '0'),
('3112', 'XFsCJ3pFArRzQtRE7K5jmcgUa', 'Your Marketplace URL', 'Your Marketplace URL', 'en', '0'),
('3113', '57TefZqd8c4oMaq6POmDtNbFC', 'Password', 'Password', 'en', '0'),
('3114', 'AQ2oi46uqUvi5i91YYrOqn486', 'Confirm Password', 'Confirm Password', 'en', '0'),
('3115', 'q38e8q3XwEufvWtJUa5yNO1ia', 'Website', 'Website', 'en', '0'),
('3116', 'BRYpOsLmIgxopIQaqeQcL8blR', 'Country', 'Country', 'en', '0'),
('3117', 'viKKW7bqr5sVcJDs0g05lj4xb', 'Available Freelance Work?', 'Available Freelance Work?', 'en', '0'),
('3118', '7JbhDhwZIOhzyMDHwGx9Lyjrm', 'Display Country Badge?', 'Display Country Badge?', 'en', '0'),
('3119', 'InCmjaPyzHJjCxOl3iUa8MNtB', 'Exclusive Author?', 'Exclusive Author?', 'en', '0'),
('3120', 'fHJHAnd3iYLpDe7HyD3XWFFNC', 'if selected', 'if selected', 'en', '0'),
('3121', 'YdkXj9wBbYsaH8mfDfNb53f0Z', 'you will get high earning', 'you will get high earning', 'en', '0'),
('3122', 'rB7FSwQMAM53QoxvIhA7XXqvO', 'Profile Heading', 'Profile Heading', 'en', '0'),
('3123', 'ELJrJhH3xuR3Cy2vpFd5lvdjT', 'Ex: Web Development Service', 'Ex: Web Development Service', 'en', '0'),
('3124', 'LIfCp1GLwGFs4YoFW0i1EeUsu', 'About', 'About', 'en', '0'),
('3125', 'rlzmvDbbfSrdpBJgOoKpJbwBv', 'Short brief about yourself or your account...', 'Short brief about yourself or your account...', 'en', '0'),
('3126', 'sswGcNQI83qsi9CzyNhz9eZAp', 'Profile Image & Cover Image', 'Profile Image & Cover Image', 'en', '0'),
('3127', '42aaDLoBcTlLQ2Vmesz2fPo9i', 'Profile Image', 'Profile Image', 'en', '0'),
('3128', '4rB2CLNNKlbuH2Tmj1R0iQrwD', 'Cover Image', 'Cover Image', 'en', '0'),
('3129', 'UJvzGHBIrXCgrbNPKh9YPfUTH', 'Social Profiles', 'Social Profiles', 'en', '0'),
('3130', 'kiScuJ9UUPQ6pGDX0hCZkVvhK', 'Email Settings', 'Email Settings', 'en', '0'),
('3131', 'G93fWX31GnJIyPxyNuxuc9oTs', 'Send an email when an item I\'ve purchased is updated', 'Send an email when an item I\'ve purchased is updated', 'en', '0'),
('3132', 'tKOMoGvznTvyOmGo8cyFta05C', 'Item Comment Notifications', 'Item Comment Notifications', 'en', '0'),
('3133', 'R5414EMjKs7gQZ2c1DHwX117Q', 'Send me an email when someone comments on one of my items', 'Send me an email when someone comments on one of my items', 'en', '0'),
('3134', 'AFYPmoIMiupnxfzTzXHBFl9W0', 'Item Review Notifications', 'Item Review Notifications', 'en', '0'),
('3135', 'D3JetymxWSlOk7Ex9peKNdsCY', 'Send me an email when my items are approved or rejected', 'Send me an email when my items are approved or rejected', 'en', '0'),
('3136', 'uuFtMPXf0IrAofrnSbU7zxUhF', 'Buyer Review Notifications', 'Buyer Review Notifications', 'en', '0'),
('3137', '3lS45FkXUxd1glQOu2idnJkjj', 'Send me an email when someone leaves a review with their rating', 'Send me an email when someone leaves a review with their rating', 'en', '0'),
('3138', 'FlGsrJpPymZZ2cpu2EEgODaqm', 'Update', 'Update', 'en', '0'),
('3139', 'mrQEUvkcN9N66Y3Tvj96lQfpE', 'Additional Info', 'Additional Info', 'en', '0'),
('3140', 'PVrjRvsZ0oZVLyxU2aurbBN4m', 'Download', 'Download', 'en', '0'),
('3141', 'IHA9ouSNSdg51krgQl4AKf9HF', 'Licence', 'Licence', 'en', '0'),
('3142', 'grQMKeOB1jEaFp2WM5YJot2e6', 'Vendor', 'Vendor', 'en', '0'),
('3143', 'r6B7Xh0dJiorpikpXIl39wovb', 'Refund Request', 'Refund Request', 'en', '0'),
('3144', 'uuHb9aXgQ9d4i0FihvmsaZS0t', 'Download Item', 'Download Item', 'en', '0'),
('3145', 'dsPfbZc08kwCygGOjBYalpBPC', 'Rate Now', 'Rate Now', 'en', '0'),
('3146', 'MOcXMXItaaJemfsH5OFEGhyTL', 'Refund Reason', 'Refund Reason', 'en', '0'),
('3147', 'cyAq0rfjLH1rGjvOf8sKTH8Yv', 'Item is not as described or the item does not work the way it should', 'Item is not as described or the item does not work the way it should', 'en', '0'),
('3148', 'lWNtsu7buIDI3y4LARW7iMslb', 'Item has a security vulnerability', 'Item has a security vulnerability', 'en', '0'),
('3149', '82hLG0ixCXoygCcsEvWO1QzHU', 'Item support is promised but not provided', 'Item support is promised but not provided', 'en', '0'),
('3150', 'opnWsu5gOISSSe1fNCnDsB7mO', 'Item support extension not used', 'Item support extension not used', 'en', '0'),
('3151', 'nhaHcYlvkKS9bIrosP3yk5QuH', 'Items that have not been downloaded', 'Items that have not been downloaded', 'en', '0'),
('3152', 'XOWExWnbxo4Hgsyg3p3Cb0x96', 'Submit Request', 'Submit Request', 'en', '0'),
('3153', 'hWt7W61zBFYc9pld1vlPf8Qg0', 'Rating this Item', 'Rating this Item', 'en', '0'),
('3154', 'ZcSF3qjl9HLXYRbYbpsXTGcpZ', 'Your Rating', 'Your Rating', 'en', '0'),
('3155', '5qjtsHAjOXEwnytJJYArlDXoq', 'Rating Reason', 'Rating Reason', 'en', '0'),
('3156', 'XbvSRvgbYjpPxu5ELsLI7arHx', 'Design Quality', 'Design Quality', 'en', '0'),
('3157', 'cLDLX7OcX8r5IYQ5MPIjj3UL4', 'Customization', 'Customization', 'en', '0'),
('3158', 'NVWX4Gg7ZMWzeShj5LIlTrqfz', 'Performance', 'Performance', 'en', '0'),
('3159', '5ib5g4wtZ7IhCV10VAGRFGgsz', 'Well Documented', 'Well Documented', 'en', '0'),
('3160', 'Pq7nfQpEOBLI3VKm9qbqcU5At', 'Your review will be ​publicly visible​ and the vendor may reply to your comments.', 'Your review will be ​publicly visible​ and the vendor may reply to your comments.', 'en', '0'),
('3161', 'vlWZLHWa8zFclA2OmIpASl2vR', 'Submit Rating', 'Submit Rating', 'en', '0'),
('3162', 'CoqgcUf8WbRsujgk6mIOPUxdP', 'Item Rating & Reviews', 'Item Rating & Reviews', 'en', '0'),
('3163', 'tN9bdYTzQffrEkjpa5MhsnkQ0', 'Rating', 'Rating', 'en', '0'),
('3164', 'tbVjMhoEzH4Ag6J9QXL7g5vgp', 'Refund Request Received', 'Refund Request Received', 'en', '0'),
('3165', 'TmlRcoj2yQIeE5jCB7e1TRfOj', 'Verify Your Email Address', 'Verify Your Email Address', 'en', '0'),
('3166', '0vf8OqId1dzfPv7OXV03ajmXM', 'Your registered email-id is', 'Your registered email-id is', 'en', '0'),
('3167', 'UqK0pbxOlFvQIuXOeupcej30j', 'Please click on the below link to verify your email account', 'Please click on the below link to verify your email account', 'en', '0'),
('3168', 'mg9IG5eZmqXf3rEgURPEARezd', 'Verify Email', 'Verify Email', 'en', '0'),
('3169', 'KSVj3gGzUVe1FRuOWamOnW22o', 'Total Purchases', 'Total Purchases', 'en', '0'),
('3170', 'etIDQPQv97ZNzuUsOIbIo5uWN', 'Total Credited', 'Total Credited', 'en', '0'),
('3171', 'phR0ykprlcMwQCZpDac9Blo72', 'Total Withdraw', 'Total Withdraw', 'en', '0'),
('3172', '6VznVxhOndSQIWxNDX7Xx5rxr', 'Date', 'Date', 'en', '0'),
('3173', 'KdHRCqkYkvfS308eZ7RCQMAEP', 'Order ID', 'Order ID', 'en', '0'),
('3174', 'K2C0tqPKqCYcPpuyNssuAYIR8', 'Payment ID', 'Payment ID', 'en', '0'),
('3175', 'h9tZE2ijWKF6A5VvP2cA6oSCU', 'Payment Type', 'Payment Type', 'en', '0'),
('3176', 'qYHQfBwhqCntinS4SeCqc9ZNq', 'Earning', 'Earning', 'en', '0'),
('3177', 'QBHnlSRAcbQ6BT4yavH9IZao5', 'view', 'view', 'en', '0'),
('3178', 'N4Ks9J6CEPVRx5SmfTXNUduGo', 'Shop', 'Shop', 'en', '0'),
('3179', '0odQ1n3yCkWufIYiSXca2HuHX', 'Price : Low to High', 'Price : Low to High', 'en', '0'),
('3180', 'iMEifFocGmjxvwsAcvUcTI1EC', 'Price : High to low', 'Price : High to low', 'en', '0'),
('3181', 'cLgnfwLT3gggnFQcdU1Y4Zwfj', 'Popular Items', 'Popular Items', 'en', '0'),
('3182', 'n5f7O3exPKoMQXKko0d1hu75x', 'New Items', 'New Items', 'en', '0'),
('3183', 'nJiC3zsQsvMTS1z1ObJOHothR', 'Filter Products', 'Filter Products', 'en', '0'),
('3184', 'iFFUJdDMcuplWzkmhoXaLFOxq', 'No results found', 'No results found', 'en', '0'),
('3185', 'Ng1paBbspAqQ2WkUUCD76tkRm', 'Leave A Reply', 'Leave A Reply', 'en', '0'),
('3186', 'D4ZBdUICnrCIV8OAHCa5RxARL', 'Your text here...', 'Your text here...', 'en', '0'),
('3187', 'IjuCtvdCceN7OGMnLhlshsiz9', 'Sign Up Now', 'Register Now', 'en', '0'),
('3188', 'QmDTQuA5YsMyRQqmlnISuWjEF', 'Success', 'Success', 'en', '0'),
('3189', 'T7rjg9sxaSk71iXg6qPwv2nkz', 'Your payment transaction was successful. Thank You!', 'Your payment transaction was successful. Thank You!', 'en', '0'),
('3190', 'n2DaTgesX1ImFtXzBC8vC41Mc', 'Transaction ID', 'Transaction ID', 'en', '0'),
('3191', '7bhMQRTEk7I9ileKqvB7yCutS', 'Contact Support', 'Contact Support', 'en', '0'),
('3192', 'zYRe3KWgdIdnPIqb9Qcgpjxk6', 'Contact Us', 'Contact Us', 'en', '0'),
('3193', 'OPOeftZmFMuWUloTRjvSrLca1', 'Message sent from', 'Message sent from', 'en', '0'),
('3194', 'X01D6xOnJbKkc7jEAU4Heu2zT', 'New message received', 'New message received', 'en', '0'),
('3195', 'wBhFVdIXYRfsfT1zXuryz09pj', 'Total Items', 'Total Items', 'en', '0'),
('3196', 'TXNVncUTLppQVcSssiNVW4Cd4', 'Total Ratings', 'Total Ratings', 'en', '0'),
('3197', 'tJgh3Us5zmR81p0UpYrINBaiK', 'Followers', 'Followers', 'en', '0'),
('3198', 'UwVAEXZMCwCb6JZdx3Cd2rfx8', 'Follower', 'Follower', 'en', '0'),
('3199', 'LEoEKUS8Fhm93hjbXGN7ADlaH', 'Location', 'Location', 'en', '0'),
('3200', 'rkamlARdOldBc0pGtk8g3kHb9', 'Following', 'Following', 'en', '0'),
('3201', 'Fy7Hf4iqZxXnDtUefmNWRyuf5', 'Followings', 'Followings', 'en', '0'),
('3202', '6YxDzv8hQauzM0PEPIlIUWS8Z', 'Follow', 'Follow', 'en', '0'),
('3203', 'Ky2IsHcriOwyciGOrslr6fRhh', 'UnFollow', 'UnFollow', 'en', '0'),
('3204', 'UyNyUGfgKzsuR8NCaJbrlaoQn', 'Affiliate Referral Url', 'Affiliate Referral Url', 'en', '0'),
('3205', 'LSIE6BO28SkHgy026cFY5oLwj', 'Copy Url', 'Copy Url', 'en', '0'),
('3206', 'J2YSwAK2cwhEMnUm0R4BdbLHn', 'Social Links', 'Social Links', 'en', '0'),
('3207', '0E2TXbz6AZfZkmnJTNlhdLUs5', 'Customer Reviews', 'Customer Reviews', 'en', '0'),
('3208', 'KkusKGdEHTacw7lOr96SXKuoR', 'Available for Freelance work', 'Available for Freelance work', 'en', '0'),
('3209', 'VIzQAtcZCcUA4wkJN7EOiUM1k', 'Your message...', 'Your message...', 'en', '0'),
('3210', 'oHdFllP2vJ35BxFEes2tbiKy1', 'send message', 'send message', 'en', '0'),
('3211', 'hCSQrSCE9n2HM2WkKsSy94Ro9', 'Withdrawal', 'Withdrawal', 'en', '0'),
('3212', 'OjjM6IbaKh6wyT51OZ05Q0I9k', 'Minimum withdrawal amount is', 'Minimum withdrawal amount is', 'en', '0'),
('3213', 'vUXbcbU0P9jBfSkEfy1GpNOM2', 'Withdrawal Options', 'Withdrawal Options', 'en', '0'),
('3214', '04WGRaQxDG7WMXl53XLdpWE2c', 'Paypal Email ID', 'Paypal Email ID', 'en', '0'),
('3215', 'wJzmU1jteXAwqFthrGE5WaKDO', 'Stripe Email ID', 'Stripe Email ID', 'en', '0'),
('3216', 'Tvyn6NB1AjmHNCz6Em0GPJhxJ', 'Withdraw Amount', 'Withdraw Amount', 'en', '0'),
('3217', 'OsWH5fSdmKCK6UGgKcvk0wOmT', 'How much amount would you like to Withdraw?', 'How much amount would you like to Withdraw?', 'en', '0'),
('3218', 'NKcdWSqm0hezEZ800zcCR8zSw', 'Available balance', 'Available balance', 'en', '0'),
('3219', 'BYO3vs6CLVsR5QVlHMP13BMTG', 'Submit Withdrawal', 'Submit Withdrawal', 'en', '0'),
('3220', '8iKUCAt3L1kXdEIZfHDu4OYWf', 'Withdrawal History', 'Withdrawal History', 'en', '0'),
('3221', 'kVx24asvxKMfwb7G0lIY94vAG', 'Withdrawal Option', 'Withdrawal Option', 'en', '0'),
('3222', 'vGTMjRTvnW7jNcvJ4FXriEJAR', 'Paypal Email', 'Paypal Email', 'en', '0'),
('3223', 'aWuqopc6Q1WizlcvIrbwVPjoV', 'Stripe Email', 'Stripe Email', 'en', '0'),
('3224', 'FhqWaqZSgWgOJttN8eb53O2LI', 'Amount', 'Amount', 'en', '0'),
('3225', 'I7CFVRh7288SXwe8nRPE59LPp', 'Login', 'Login', 'en', '0'),
('3226', 'B04B4YHU9jgtA0ZZ4BvZ2VrII', 'Welcome Back', 'Welcome Back', 'en', '0'),
('3227', 'oOgxsITJbkAmi7oatMR0IRk4c', 'You can sign in with your username', 'You can sign in with your username', 'en', '0'),
('3228', 'Ub0YzlPzfIUxg2Jbn7z2ZxGrX', 'E-Mail Address / Username', 'E-Mail Address / Username', 'en', '0'),
('3229', 'ZGHfTqdgkViodjLG9irivyJz1', 'Remember Me', 'Remember Me', 'en', '0'),
('3230', 'kAFT2hVQT4ZLppvC4tIagCqAV', 'Don\'t have an', 'Don\'t have an', 'en', '0'),
('3231', 'EZcGxHIUnbRaQG32FIblP9se7', 'account', 'account', 'en', '0'),
('3232', '312qZcljA662a8gN0B7I0OZZh', 'Login with your social media account', 'Login with your social media account', 'en', '0'),
('3233', 'yw6J14fAecxyzl0q3yC6p69Tv', 'Register', 'Register', 'en', '0'),
('3234', 'KSBAtIYvjaPfqLFE79sXxtyPf', 'Create Your Account', 'Create Your Account', 'en', '0'),
('3236', 'inTDBh00XkbSgkF4eabuIQWJC', 'Please fill the following fields with appropriate information to register a new Marketplace account.', 'Please fill the following fields with appropriate information to register a new Marketplace account.', 'en', '0'),
('3237', 'FlxDmg3D0DvzxUnBD33kfUBzg', 'Your Name', 'Your Name', 'en', '0'),
('3238', 'egWw1jweKEUotmP0JXjCyUsoI', 'Enter your name', 'Enter your name', 'en', '0'),
('3239', 'e5qxYdjEiLtFGttFKeyANdafv', 'Enter your username', 'Enter your username', 'en', '0'),
('3240', 'qbC5ilMo3YmCj92gJrjLcTKBE', 'E-Mail Address', 'E-Mail Address', 'en', '0'),
('3241', 'wOVP282kAtCxeE5PpHPWpZ1lt', 'Enter your email address', 'Enter your email address', 'en', '0'),
('3242', 'QVKMBQOdcUWtn7ssPNbsVLuQk', 'Enter your password', 'Enter your password', 'en', '0'),
('3243', 'wyoglbJHnmOh2EspT5nQgoggS', 'Enter your confirm password', 'Enter your confirm password', 'en', '0'),
('3244', '1ZJ5zaRqqr31tGrrOURY6pqAP', 'Captcha', 'Captcha', 'en', '0'),
('3245', 'p8Nh8byE6ZzLaZ61By0tBJ9mX', 'Already have an account?', 'Already have an account?', 'en', '0'),
('4014', 'bPP5t0GRBJH13EnlKShAxNRRN', '404 Not Found', '404 no encontrada', 'es', '2860'),
('4015', '8X6q52IbXVVl4EelEjOw6S4Gv', 'Home', 'Hogar', 'es', '2862'),
('4016', 'o0XZzbWNeuIZ2h7oUMnel5fR6', '404', '404', 'es', '2863'),
('4017', 'wUuMlLEPyZ1jr7XN30hNSaG90', 'Sorry, the page you are looking for could not be found.', 'Lo sentimos, la página que estás buscando no se pudo encontrar.', 'es', '2864'),
('4018', 'xBrEIgyzORyZc4Lb5ZASyHGKZ', 'Add Coupon', 'Añadir cupón', 'es', '2865'),
('4019', 'PVPmiejPz9ymAazTlMPtzxpMD', 'Coupon Code', 'Código promocional', 'es', '2866'),
('4020', 'E714fEAVUt5Isao1LQRjPjbD4', 'Value', 'Valor', 'es', '2867'),
('4021', 'mUkaQpX6Nk9mHq97zyOaoVDP5', 'Start Date', 'Fecha de inicio', 'es', '2868'),
('4022', 'NOjgGZUX4VtvQ0CmeXcy0hBza', 'End Date', 'Fecha final', 'es', '2869'),
('4023', 'qeqNP9vFIAwVzjRhzF51PmIe5', 'Discount Type', 'Tipo de descuento', 'es', '2870'),
('4024', 'EOsoIJ3fKW82dIo5mUdktBucq', 'Percentage', 'Porcentaje', 'es', '2871'),
('4025', 'GpKuLvtFqtgF5iWfH5PBasYIn', 'Fixed', 'Fija', 'es', '2872'),
('4026', 'OojWPeJ5Dp2QLw0GjVr31zomm', 'Status', 'Estado', 'es', '2873'),
('4027', 'K2cxRK30ncsY7NZYz3ciZ6RLj', 'Active', 'Activa', 'es', '2874'),
('4028', 'zdPHIGsMfY77BQ1xtSZVuFsMW', 'InActive', 'Inactiva', 'es', '2875'),
('4029', 'WV7Deg2NYEjNEL9NYnjjq3bKL', 'Submit', 'Enviar', 'es', '2876'),
('4030', 'ETGulAxtKGlGhvwWIfPs1tYvT', 'Blog', 'Blog', 'es', '2877'),
('4031', 'RNKac3MtpVMbJvOKZDtaUYPhN', 'Read More', 'Lee mas', 'es', '2878'),
('4032', 'pq5DsuU9n1liUYQlM9bENt3jM', 'Categories', 'Categorias', 'es', '2879'),
('4033', 'L6L5EzDchhn0E7PAjAHZEWmht', 'Popular Posts', 'entradas populares', 'es', '2880'),
('4034', 'PatuXrIkYdksif7Zbyy8MLRgQ', 'Latest Posts', 'últimas publicaciones', 'es', '2881'),
('4035', '8KuGFr1KHaCyrwPNxe3bH3kS5', 'Cancel', 'Cancelar', 'es', '2882'),
('4036', 'dlZH7XfPaausoGq6641xTkgU6', 'Transaction Cancelled', 'transacción cancelada', 'es', '2883'),
('4037', '4vAKxE2EbBrTm5RwbPfGmzMPn', 'Your payment transaction has been cancelled.', 'Su transacción de pago ha sido cancelada.', 'es', '2884'),
('4038', 'hox7fnWMrxvpL2FYz2FfW1xjo', 'My Cart', 'Mi carrito', 'es', '2885'),
('4039', '2AqqQg79v7HEogomIjrIePEN0', 'Product Items', 'Artículos del producto', 'es', '2886'),
('4040', '5HgEfRJkV1l9m2kwVTDCMhz1p', 'License Support', 'Soporte de licencia', 'es', '2887'),
('4041', '0EO6PMMjQnov7V0YBJ2iizYhA', 'Price', 'Precio', 'es', '2888'),
('4042', 'DWlYkrB8KOoIpByTMb7MSXzBz', 'Remove', 'Eliminar', 'es', '2889'),
('4043', 'MymL4iG5Qlf6X5kkykx5nsMtO', '6 months', '6 meses', 'es', '2890'),
('4044', '4Ls8v4EDYQflyAhgdFDBhyJjW', '12 months', '12 meses', 'es', '2891'),
('4045', 'VVVWWedp2ElUa60zE2SR3SDgL', 'Are you sure you want to delete?', '¿Estás segura de que quieres eliminar?', 'es', '2892'),
('4046', 'RFjxegDMB51jenSxvdZCqvkHo', 'Apply Coupon', 'Aplicar cupón', 'es', '2893'),
('4047', 'Z3Ctq3ZvPFFUQ4W57i97dd7SZ', 'Cart Subtotal', 'Subtotal del carrito', 'es', '2894'),
('4048', 'Ku5gtPDFNzcjhV5n8GgoRCxB5', 'Discount Price', 'Precio de descuento', 'es', '2895'),
('4049', 'hgVmjtqTf3lR4GkQtIYEQ6q7L', 'Total', 'Total', 'es', '2896'),
('4050', 'iGKffAgyB6dVj5LLkxFYz2jSi', 'Proceed To Checkout', 'Pasar por la caja', 'es', '2897'),
('4051', 'tVOJkONGctJBVkodNx0XGsyuT', 'Your cart is empty!', '¡Tu carrito esta vacío!', 'es', '2898'),
('4052', '9QDQr7ym4SQxVWPe7ktB50FEo', 'Checkout', 'Revisa', 'es', '2899'),
('4053', 'NgvRkrjRERVwsjGcPQ9qwhQlo', 'Order Summary', 'Resumen de pedido', 'es', '2900'),
('4054', 'P5HMZqdwTwHnMZGNiiX4jDV64', 'Processing Fee', 'Cuota de procesamiento', 'es', '2901'),
('4055', 'BgKoGYvTwsuXptbWn1XJufBSc', 'Select Payment Method', 'Seleccionar forma de pago', 'es', '2902'),
('4056', '6reRPLOgWTMlVJq3RF7HSKkJ1', 'Credit or debit card', 'Tarjeta de crédito o débito', 'es', '2903'),
('4057', 'zOYxzABRwbAtQPEJ8aBBGZTzn', 'Confirm Order', 'Confirmar pedido', 'es', '2904'),
('4058', '6pqzcML8dd3it9nukllpaqj9w', 'New Comment Received', 'Nuevo comentario recibido', 'es', '2905'),
('4059', 'nt9t6WqDNYCkaSo7yfY5A3Y6r', 'Sender Name', 'Nombre del remitente', 'es', '2906'),
('4060', 'n5lJEsFbRVnfw10ZX8TZYlQkc', 'Sender Email', 'Correo electrónico del remitente', 'es', '2907'),
('4061', 'EH0pEYQiE77d0ZzUZbpfwUdCa', 'Item Url', 'URL del artículo', 'es', '2908'),
('4062', 't039QRrNu54E4eRr7Lqa5YJa9', 'Comment', 'Comentario', 'es', '2909'),
('4063', 'trsiwJz8E0IBIadDpySZsAzth', 'Contact', 'Contacto', 'es', '2910'),
('4064', 'GloXcCqIVR8poXb2per1LvhbF', 'How can We', 'Como podemos', 'es', '2911'),
('4065', 'JxehSHquK5FHVR8bKGgkFknRk', 'Help?', '¿Ayuda?', 'es', '2912'),
('4066', 'cD6SkT9YtbNMmvfkhQ0BRqZOt', 'Office Address', 'Dirección de la oficina', 'es', '2913'),
('4067', 'EcFwczdTF7nnDvs3v5TDXC30c', 'Phone Number', 'Número de teléfono', 'es', '2914'),
('4068', 'xYH0ACvwhQ0KE3IuSyMCUEwxv', 'Email', 'Email', 'es', '2915'),
('4069', 'UQY7WU4XiBU8oHHVAotqTyAEL', 'Leave Your Messages', 'Deja tus mensajes', 'es', '2916'),
('4070', 'xOe9d4jskuYM2Tn6CoJnFjMMu', 'Name', 'Nombre', 'es', '2917'),
('4071', '2RvUvK9rfwWPaxoCqCmkgUsLU', 'Message', 'Mensaje', 'es', '2918'),
('4072', 'aJhMu7fLEW07YPtbBrnTcFswW', 'Coupon', 'Cupón', 'es', '2919'),
('4073', 'LeDcbGs27KUH0fI0DnCTsGMsm', 'Sno', 'Sno', 'es', '2920'),
('4074', 'ZRINybId13aMyU8G4hczBsvmC', 'Type', 'Tipo', 'es', '2921'),
('4075', 'quOVq98X938k7fLuJ6CEXLxIY', 'Action', 'Acción', 'es', '2922'),
('4076', 'NLJPH2vcvqBnod90mgrteyLM3', 'Edit', 'Editar', 'es', '2923'),
('4077', 'mDVDH8iRP3skibyubY7fGtotY', 'Delete', 'Eliminar', 'es', '2924'),
('4078', 'qk27a1LFzdKp5pCjxBClWbFbf', 'Are you sure you want to remove this coupon?', '¿Seguro que quieres eliminar este cupón?', 'es', '2925'),
('4079', 'sCmK276Wdnrh8ClgsdfZ7lg07', 'Profile', 'Perfil', 'es', '2926'),
('4080', 'qzenjQT5DTDd00UEjBbKgWoKV', 'Setting', 'Ajuste', 'es', '2927'),
('4081', 'BIvYjHm85IQaOy8sjedDn4s3O', 'Purchase', 'Compra', 'es', '2928'),
('4082', 'Yd6t4nBHiR9qNTnsvN6b32XnG', 'Favourite', 'Favorita', 'es', '2929'),
('4083', 'hEeOJVLPKXgM95Nxq4rEJSUCU', 'Sales', 'Ventas', 'es', '2930'),
('4084', 'KLFgDTMWKWTVqQNdy1WCLZVdT', 'Upload Item', 'Subir artículo', 'es', '2931'),
('4085', 'RqpzkdKWYQMOIxJ5Adbc6SFQK', 'Manage Items', 'Administrar artículos', 'es', '2932'),
('4086', 'ExyKj7HaT91RrdXVQpZhcihYS', 'Withdrawals', 'Retiros', 'es', '2933'),
('4087', 'oEb92kh2DrKFwsSQ1SZUdorAB', 'Edit Coupon', 'Editar cupón', 'es', '2934'),
('4088', 'WTXXhXBgmPHSyOHJlli44wXUE', 'Edit Item', 'Editar elemento', 'es', '2935'),
('4089', 'ievkBGmN5kw2gTZMFj4IuGwnD', 'Name & Description', 'Nombre y descripción', 'es', '2936'),
('4090', 'XPsS1jpoOCWgnln8jQfIbHA8y', 'Item Type', 'Tipo de artículo', 'es', '2937'),
('4091', 'Yqu1SSrp6g2jJ8QRTsoY3iDaU', 'Item Name', 'Nombre del árticulo', 'es', '2938'),
('4092', 'Z4CFXe1HPPJJAfioZSQG26QgK', 'Max 100 characters', 'Max 100 caracteres', 'es', '2939'),
('4093', 'r516JlfyRimlFmOiJx0F9ohnB', 'Short Description', 'Breve descripción', 'es', '2940'),
('4094', 'q618H6eM87PQEb2Ri2vLmdnh1', 'Description', 'Descripción', 'es', '2941'),
('4095', 'KiCk3AaSR7kxsJQdSeUbbIpoK', 'Upload Files', 'Subir archivos', 'es', '2942'),
('4096', 'nxPQNojbz59ZOHCZDVKN7nJ9D', 'Upload Thumbnail', 'Subir miniatura', 'es', '2943'),
('4097', 'v0uMyaQ3awF3QZUkYxCiJtJcQ', 'Please select file of type .jpg, .png or .jpeg', 'Seleccione un archivo de tipo .jpg, .png o .jpeg', 'es', '2944'),
('4098', 'lEOS0PqF4rsWUY2msr6MMMEhk', 'Upload Preview', 'Vista previa de carga', 'es', '2945'),
('4099', 'jI2C22Je6apEXUh0VYzmLaT06', 'Size', 'Talla', 'es', '2946'),
('4100', 'ByQ66mic7KcM9e713ArmEvTxq', 'Upload Main File', 'Subir archivo principal', 'es', '2947'),
('4101', 'tkcYxLUyx9WIrmtgA0RucwRrk', 'ZIP - All files', 'ZIP: todos los archivos', 'es', '2948'),
('4102', 'Ra98r45DNTpqZBRrykl9RMXWY', 'Please select file of type .zip only', 'Por favor seleccione un archivo de tipo .zip solamente', 'es', '2949'),
('4103', 'OzbANA2joy6c2J8xy2058kfNW', 'Upload Screenshots (multiple)', 'Subir capturas de pantalla (múltiples)', 'es', '2950'),
('4104', 'JAW6TvcgZspGzbO6My71HgvXD', 'Category & Attributes', 'Categoría y atributos', 'es', '2951'),
('4105', 'sSUlcDqgOpPivSLEIDxQ4ZnlY', 'Select Category', 'selecciona una categoría', 'es', '2952'),
('4106', 'Nry5rob90m0Y5eCDtXIVYpHsf', 'Compatible Browsers', 'Navegadoras compatibles', 'es', '2953'),
('4107', 'BEcJP4eeySrx3CJCesYnmCBqn', 'Package Includes', 'El paquete incluye', 'es', '2954'),
('4108', 'ok0ZhVs8sFxoM4D5eZN4Ff2UK', 'Columns', 'Columnas', 'es', '2955'),
('4109', 'bF43vm0BKlEnaY1UQoCRyHR1U', 'Choose Columns', 'Elegir columnas', 'es', '2956'),
('4110', 'vj8T3tlWlZs31QoGl4AGMrr9E', 'Layout', 'Diseño', 'es', '2957'),
('4111', 'vUKo45VGa0wAC6Y989iCMhqcU', 'Choose Layout', 'Elegir diseño', 'es', '2958'),
('4112', 'z7toprUBGWyaEJbMI83YMayW8', 'Layered?', 'En capas?', 'es', '2959'),
('4113', 'Fv4p79cAAxN5IkozfIbQxvcMb', 'Choose', 'Escoger', 'es', '2960'),
('4114', 'DgTicYJKDHF9VICg209YwojPE', 'Minimum Adobe CS Version', 'Versión mínima de Adobe CS', 'es', '2961'),
('4115', '45Ty3J1XOHFTEUu9GuBhfno0m', 'Print Dimensions', 'Dimensiones de impresión', 'es', '2962'),
('4116', 'aGx2AIsf7uZwaWa7sVFRPGMiV', 'Print dimensions in Inches for printable items, width x height.', 'Dimensiones de impresión en pulgadas para elementos imprimibles, ancho x alto.', 'es', '2963'),
('4117', 'wWfpDdNdBkHXGcjEtffZ0Cocb', 'Pixel Dimensions', 'Dimensiones de píxeles', 'es', '2964'),
('4118', 'qKYLAq0zk126Y8iLbK5gqyKBo', 'Image dimensions in Pixels for screen-based items.', 'Dimensiones de imagen en píxeles para elementos basados ​​en pantalla.', 'es', '2965'),
('4119', 'KJWXoqQrf1cx3SQRkBDr9R8Ao', 'Demo URL', 'URL de demostración', 'es', '2966'),
('4120', 'MM9eRd390A0Cn0IdD008wOt0a', 'Youtube Video URL', 'URL de video de Youtube', 'es', '2967'),
('4121', 'JUjn0Fzezfkp3ddoqG6nRLCso', 'example', 'ejemplo', 'es', '2968'),
('4122', 'VPKfkVLvqWBbmz50VjxiQjyqZ', 'Apply For Free Download?', 'Solicitar descarga gratuita?', 'es', '2969'),
('4123', '8yr52RSqeeJ2dYh6nDI8IFcLV', 'Yes', 'si', 'es', '2970'),
('4124', 'iFrA4dZ1AnXp91HmheKL0PxDs', 'No', 'No', 'es', '2971'),
('4125', 'KAXPH1jkklG2HOd0yFCOOAUEc', 'Apply for flash sale?', 'Solicitar venta flash?', 'es', '2972'),
('4126', 'i5pXY7W6g7vxylWC3VHZNixUz', 'If your item is selected, we will put it on sale for just one week for only 50% of it\'s original price.', 'Si selecciona su artículo, lo pondremos a la venta por solo una semana por solo el 50% de su precio original.', 'es', '2973'),
('4127', 'LC9xPObXBalI2Jzy0uZMpTu1d', 'Tags', 'Etiquetas', 'es', '2974'),
('4128', 'dhvMNiYwSqMM3rpXm5G0O63qX', 'Maximum of 15 keywords. Keywords should all be in lowercase and separated by commas. ex: shopping, blog, forum....ect', 'Máximo de 15 palabras clave. Todas las palabras clave deben estar en minúsculas y separadas por comas. Ej: compras, blog, foro ... ect', 'es', '2975'),
('4129', '7H9oEji6wCpb3xgP3r7Bt3J0s', 'Support & Updates', 'Soporte y actualizaciones', 'es', '2976'),
('4130', 'qOmO0iRzFSluNpP0ezZ6E9XTP', 'Feature Update', 'Actualización de funciones', 'es', '2977'),
('4131', 'TIcdAMJvez6AQz2ioJ6Mh00tL', 'Item Support', 'Artículo de apoyo', 'es', '2978'),
('4132', 'SH1S36enfedpTmGqZWMUO4jfN', 'Regular License (6 months support)', 'Licencia regular (6 meses de soporte)', 'es', '2979'),
('4133', 'NrpOlRnlHudl0fAVgDJChkpfK', 'Extended License (12 months support)', 'Licencia extendida (soporte de 12 meses)', 'es', '2980'),
('4134', 'UuiRwbOwKpNIJMBg1IuiPEeDx', 'Submit Review', 'Enviar opinión', 'es', '2981'),
('4135', 'zmX0OJzfMQaVw6QpE4V60Rpip', 'Upload Rules', 'Reglas de carga', 'es', '2982'),
('4136', 'A2MDyBcYjFnWZCgQ6wG9z3kwT', 'Image Upload', 'Carga de imagen', 'es', '2983'),
('4137', 'zRvGlYpQtRxqfn9Y5mkyx3qvX', 'upload only', 'subir solo', 'es', '2984'),
('4138', 'S7sViiT7bMmDuEWoLqX4MTOHO', 'File Upload', 'Subir archivo', 'es', '2985'),
('4139', '509e47pz89eUxydS0VOfJRN78', 'Copyright Note', 'Nota de Copyright', 'es', '2986'),
('4140', 'vQiAoZWYqdb4V4ngoIbP59jwp', 'You should include details of source files you have used in the Comments for the Reviewer section of the form.', 'Debe incluir detalles de los archivos fuente que ha utilizado en la sección Comentarios para el revisor del formulario.', 'es', '2987'),
('4141', 'qYvihZ05s9pVBu0yWC0wCBrMm', 'If your file does not meet these copyright standards, it will be rejected.', 'Si su archivo no cumple con estos estándares de derechos de autor, será rechazado.', 'es', '2988'),
('4142', 'dJ6fE4Xso7OjuNuYJcD3hPATd', 'Favourites', 'Favoritas', 'es', '2989'),
('4143', '5dUUcGvT7QVlNkuVbBC7DTFvO', 'My Favourites', 'Mis favoritas', 'es', '2990'),
('4144', 'sHlxw5aTAzT3QHfhry3HgShct', 'Are you sure you want to remove from favourites?', '¿Seguro que quieres eliminarlo de favoritos?', 'es', '2991'),
('4145', 'c0PlsLPWhBhcnpKX9w8Vw4fO7', 'Free', 'Gratis', 'es', '2992'),
('4146', 'c3DzbJg2DMKlis6CaLU71KQj0', 'Flash Sale', 'Venta express', 'es', '2993'),
('4147', 'yyQgYRSOQgITsN2ZqrrRMyg9h', 'For only a short period of time you can grab these files with 50% discount', 'Por solo un corto período de tiempo, puede tomar estos archivos con un 50% de descuento', 'es', '2994'),
('4148', 've1SIOTzaK3uMQm7vnb7WQODm', 'days', 'dias', 'es', '2995'),
('4149', '7tCNukNuMUZ6cDAuD77CBVJ7d', 'hours', 'horas', 'es', '2996'),
('4150', 'LpjvTRbDY8ljswiBPn364cHkc', 'minutes', 'minutos', 'es', '2997'),
('4151', '28WHVuanzGzScD0rQhKhxytid', 'seconds', 'segundos', 'es', '2998'),
('4152', 'NC4SgsDF1zUs4uFZEPdYQ8XlO', 'More Info', 'Más información', 'es', '2999'),
('4153', '03zO5dmN1KdiJ1oQzLaiyNBih', 'Live Demo', 'Demo en vivo', 'es', '3000'),
('4154', 'hsBkYhESNpm6SOxEX8a1Ik1vu', 'MARKET FACTS', 'HECHOS DEL MERCADO', 'es', '3001'),
('4155', 'rQA9ws5LNvYcAjZCnjnbYmyel', 'Members', 'Miembros', 'es', '3002'),
('4156', 'Iogc84zvdFVJRNOCrT7GgXtgT', 'Files', 'Archivos', 'es', '3003'),
('4157', 'yjX5ACIecZnCKr8eXry7EmzNd', 'POPULAR CATEGORIES', 'CATEGORÍAS POPULARES', 'es', '3004'),
('4158', 'K0mIGN2tuiPuafr7ELTqA4vex', 'NEWSLETTER', 'BOLETIN INFORMATIVO', 'es', '3005'),
('4159', 'GNixjjy3j4fGHqGOXwszkwXe0', 'Enter your email', 'Introduce tu correo electrónico', 'es', '3006'),
('4160', 'JOI83nNmY81EH4Fsfe0msbvln', 'Subscribe', 'Suscribir', 'es', '3007'),
('4161', 'ImrD278R4BrMb1KXgzm5IbSX0', 'All rights reserved.', 'Todos los derechos reservados.', 'es', '3008'),
('4162', 'TsfmuTA4y0rdFlMmreyo6Hfzm', 'Forgot Your Password', 'Olvidaste tu contraseña', 'es', '3009'),
('4163', '1cmu2b3qVuAp4aHYnevPc3uCk', 'Please enter the email address for your account. A verification link will be sent to you.Once you have received the verification link, you will be able to create a new password for your account.', 'Por favor, introduzca la dirección de correo electrónico para su cuenta. Se le enviará un enlace de verificación. Una vez que haya recibido el enlace de verificación, podrá crear una nueva contraseña para su cuenta.', 'es', '3010'),
('4164', 'IwbYvt5LOWXrueEkKGfBy02IK', 'Email Address', 'Dirección de correo electrónico', 'es', '3011');
INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
('4165', '9Gi0udwneVvNrfF6laN2FQJKE', 'Send Password Reset Link', 'Enviar enlace de restablecimiento de contraseña', 'es', '3012'),
('4166', 'YMNtPQmkzTVqftHf9vsGd37Cw', 'Forgot Password', 'Se te olvidó tu contraseña', 'es', '3013'),
('4167', 'EOcdSDULu9oH9hOXuRLZyqqJo', 'You are receiving this email because we received a password reset request for your account', 'Recibió este correo electrónico porque recibimos una solicitud de restablecimiento de contraseña para su cuenta', 'es', '3014'),
('4168', '8102JtUs4LEU4iA8HxtZhb6OQ', 'Reset Password', 'Restablecer la contraseña', 'es', '3015'),
('4169', 'KHgwztFA4ItTdfLvRgM2XUi8b', 'Free Items', 'Artículos gratis', 'es', '3016'),
('4170', 'CkTsYsX3Pk0vwH5T9ppNJewQ6', 'Download these files before they are gone', 'Descargue estos archivos antes de que se vayan', 'es', '3017'),
('4171', 's5ScnN1sTGyFWY2eJKjNLkXxJ', 'Start Selling', 'Empieza a vender', 'es', '3018'),
('4172', 'MG0WR0MOXN0N8vQPTUsVwAVyd', 'Create Account', 'Crear una cuenta', 'es', '3019'),
('4173', 'IiZQAywlrLmzuvjkK9nkC8wdW', 'Sign In', 'Registrarse', 'es', '3020'),
('4174', '5yrSHb36CiXGZqMArisy738QL', 'View Cart', 'Ver carrito', 'es', '3021'),
('4175', 'YGQfytQJdBdL8ltZdjH8FD5fm', 'Admin Panel', 'Panel de administrador', 'es', '3022'),
('4176', 'hzQfRCFNUayrZg9z03srfwGxv', 'Logout', 'Cerrar sesión', 'es', '3023'),
('4177', 'rbf8UtxW5oFg8Gct8K90XCszB', 'Purchases', 'Compras', 'es', '3024'),
('4178', 'XfLvsFg9wUjcZKj9GTFSYSkRY', 'All Items', 'Todos los artículos', 'es', '3025'),
('4179', '4G18MdQI6JNarrH5jGgp3xPEy', 'Recent Items', 'Artículos recientes', 'es', '3026'),
('4180', 'zmudlfSFxbDTM6bdKHwT8oGU2', 'Featured Items', 'Elementos destacados', 'es', '3027'),
('4181', 'wruTMUEJ3tfOUQvj5NWIfugC4', 'Top Authors', 'Autores principales', 'es', '3028'),
('4182', '8Yx1zQVawYe5XGnTmd6tZaWUN', 'Pages', 'Páginas', 'es', '3029'),
('4183', 'p45yjN7XFfsERfwvKR96KoB9s', 'Search your products...', 'Busca tus productos ...', 'es', '3030'),
('4184', 'oSz4syUERRowGKr4fmorhVLXS', 'Search Now', 'Buscar ahora', 'es', '3031'),
('4185', 'GAC31H8baFepveOV4VWZPFS3w', 'View More Featured Items', 'Ver más artículos destacados', 'es', '3032'),
('4186', 'Qh3Xb6Dr2f0yVUL9ypEX0twan', 'Featured Files', 'Archivos destacados', 'es', '3033'),
('4187', 'z8JOyoXmpPJUDi2pHffN5Cj3j', 'by', 'por', 'es', '3034'),
('4188', 'uzGq2MKKuk44DMY7O8XHepXu5', 'Newest', 'La mas nueva', 'es', '3035'),
('4189', 'UcK67c6rCN22FZiPHwVbvAWdb', 'View More Newest Items', 'Ver más artículos más nuevos', 'es', '3036'),
('4190', 'uI6rpxog2kWtBTyoyVIHB5K2G', 'total earnings', 'Ganancias Totales', 'es', '3037'),
('4191', 'q2Zd2vbVbyv9CvA3FZA3LAr3z', 'total files', 'archivos totales', 'es', '3038'),
('4192', 'IVXbfTDoGsDg03jnEf0UFrLjE', 'total sales', 'ventas totales', 'es', '3039'),
('4193', 'R7pmePW1dcUOYdgB0ud0MALck', 'Free Files', 'Archivos gratis', 'es', '3040'),
('4194', 'GEbOILHnopWrkQyLBQdw5a97a', 'View More Free Items', 'Ver más artículos gratis', 'es', '3041'),
('4195', '1LAhlYCvJ9EJifwpNemo5atAc', 'Buyer', 'Compradora', 'es', '3042'),
('4196', 'mpDUoF8zQpMy3sVH1g0B4UFh8', 'Reviews', 'Comentarios', 'es', '3043'),
('4197', 'Xb0YXMGHae6rplMBsBo86wcuv', 'Our buyers top reviews', 'Nuestras compradores mejores reseñas', 'es', '3044'),
('4198', 'h3BFnhBlyTGWYumYCjT9xTv1b', 'Our', 'Nuestra', 'es', '3045'),
('4199', 'lXH4yWC3CQUZy0ggZHkhuMtPl', 'our latest blog post', 'nuestra última publicación de blog', 'es', '3046'),
('4200', '8xYh6e1XCGPWVd5QpYo2nDbFx', 'Why Choose', 'Por qué elegir', 'es', '3047'),
('4201', '7OwAXzfB2JbTv3aa9ZiV0kAtA', 'our site features', 'nuestras características del sitio', 'es', '3048'),
('4202', '6fRh28YI9QT1AFVSm1nFdaMSw', 'Live Preview', 'Vista previa en vivo', 'es', '3049'),
('4203', 'rNCfFeW2SmuenSTx1ZJt61hIj', 'Screenshots', 'Capturas de pantalla', 'es', '3050'),
('4204', 'MTOX7MdLlfRabmXrEs9JtmMM9', 'Add To Favorites', 'Agregar a los favoritos', 'es', '3051'),
('4205', 'jgStHSk0TxvIGLqoRrakizUpM', 'Share this item', 'Comparte este objeto', 'es', '3052'),
('4206', 'qNK7F8sWldNa2HDz1uMBl9eFO', 'Item Details', 'detalles del artículo', 'es', '3053'),
('4207', 'Kzgk8aCa8VEzCfe9byYVHAFuu', 'Comments', 'Comentarios', 'es', '3054'),
('4208', 'FWOONZj2BUgL23N8rh773eu2N', 'Support', 'Apoyo', 'es', '3055'),
('4209', 'Pw0fvZAZDXGS7kKYRWULtpof9', 'Reply', 'Respuesta', 'es', '3056'),
('4210', 'cZ8AnoOavk2gpXbQ5K1ClFBO0', 'Author', 'Autora', 'es', '3057'),
('4211', '26g2qk5sG2EQfrWLvCKQEmuU4', 'Post Comment', 'publicar comentario', 'es', '3058'),
('4212', 'QUiv4N57Flm4hVzelTickDVnY', 'Write your comment...', 'Escribe tu comentario ...', 'es', '3059'),
('4213', 'uYRHY4tjL5Pp0gvD7BKweJYLI', 'Contact the Author', 'Contactar con la autora', 'es', '3060'),
('4214', '0220rjAhiZT4I8EAeXrhVvFt1', 'Please', 'Por favor', 'es', '3061'),
('4215', 'ctZQc3bUz7AuK80ef5JPDQEfA', 'to contact this author.', 'contactar a este autor.', 'es', '3062'),
('4216', 'Sk0LNceyyIZ6t8002mcQse9fy', 'Subject', 'Sujeta', 'es', '3063'),
('4217', 'NR4ltMNI9VlLXInccXGytTYGl', 'Submit Now', 'Aplique ahora', 'es', '3064'),
('4218', 'IPEmQPuCIaLPstwbuoXwxO3js', 'This item is one of the', 'Este artículo es uno de los', 'es', '3065'),
('4219', 'KbkFczvkCYERh5ZCTrWqLGB96', 'You are able to download this item for free for a limited time. Updates and support are only available if you purchase this item.', 'Puede descargar este artículo de forma gratuita por tiempo limitado. Las actualizaciones y el soporte solo están disponibles si compra este artículo.', 'es', '3066'),
('4220', 'FJ1sSTrc2HDiHvcgcNX5A5JzN', 'Download this file for free', 'Descarga este archivo gratis', 'es', '3067'),
('4221', 'ApsARpYNPSUvBtuTxs7UHNCXq', 'Quality checked by', 'Calidad comprobada por', 'es', '3068'),
('4222', 'bJ0QvxFwDcxKB8E8UOLyRx3oY', 'Future updates', 'Actualizaciones futuras', 'es', '3069'),
('4223', 'fVB1G3zakaUIdsj8ttysvI1Na', '6 months support from', '6 meses de soporte de', 'es', '3070'),
('4224', 'j8Ax0pxDtvgy1s5mmi57LX9V9', '6 months not support from', '6 meses sin soporte de', 'es', '3071'),
('4225', 'o5as7DiwypPUi0VDniEJcDqZQ', 'Regular License', 'Licencia regular', 'es', '3072'),
('4226', 's0OyGlLRrgH0wjQdviGHCzyjx', 'Extended License', 'Licencia Extendida', 'es', '3073'),
('4227', 'A9sYC8ZZx4BMWZy7bGfl6qmXO', 'Buy Now', 'Compra ahora', 'es', '3074'),
('4228', '5Zugtt8nW80dPSjZjXQmq7Grv', 'This item was featured on', 'Este artículo fue presentado en', 'es', '3075'),
('4229', '4rp3POuwSMBlphJTAEI575Dqb', 'Author Information', 'Información del autor', 'es', '3076'),
('4230', 'ZwHDwhJW15gFXZwEzeIaWqz7Z', 'Member since', 'Miembro desde', 'es', '3077'),
('4231', 'xcvERxxRGGNoD8xi0is3yBoZE', 'View Profile', 'Ver perfil', 'es', '3078'),
('4232', 'Mv3ICiDpN4Z5PzvdFisNPHI73', 'Favorites', 'Favoritas', 'es', '3079'),
('4233', 'N6JzD29Vetz2ZjWJNto9I97WE', 'Ratings', 'Calificaciones', 'es', '3080'),
('4234', 'tVJLdvsmDlA4mqUvTtOaUsQ47', 'Item Information', 'Información del artículo', 'es', '3081'),
('4235', 'CnrqVlxJw820DcmJaLxPQHH9A', 'Released', 'Liberada', 'es', '3082'),
('4236', 'MTsRnSUxqOUN5vdjKANSWKfqL', 'Updated', 'Actualizada', 'es', '3083'),
('4237', 'YUsbKSPW220IOwXM6TewTeCHD', 'Category', 'Categoría', 'es', '3084'),
('4238', 'MLiAUhB1JsxtEJMwB8SWrAfyQ', 'Layered', 'En capas', 'es', '3085'),
('4239', 'qiqCtS31XNCMCQnnpDmGiIDkW', 'Adobe CS Version', 'Adobe CS Version', 'es', '3086'),
('4240', 'WN6EBdEUckKNcDp3E60dx9qax', 'More Related Items', 'Más artículos relacionados', 'es', '3087'),
('4241', 'Nw2IPy6dHI507HNlesvAZkSRb', 'Item Update Notifications', 'Notificaciones de actualización de elementos', 'es', '3088'),
('4242', 'USNnZDREFbFPmHc0LHll8vWSx', 'Your product item', 'El artículo de su producto', 'es', '3089'),
('4243', 'EgkElCTHtN6T1V01NfsX90ON8', 'new updates are uploaded by vendor. please download your new updated item release.', 'El proveedor carga nuevas actualizaciones. descargue su nueva versión actualizada del artículo.', 'es', '3090'),
('4244', 'dzietEjDhNVwrTGF94OWK1X6n', 'Manage Item', 'Administrar artículo', 'es', '3091'),
('4245', 'oOnsyUSRBQmcqKt28VMFiyzyr', 'UnApproved', 'No aprobado', 'es', '3092'),
('4246', 'oTrHtCeJUwCbQRKhbf3657JeG', 'Thank You', 'Gracias', 'es', '3093'),
('4247', 'tXFdHZu71JI32Nf3e2PoSz16i', 'You are receiving this email newsletter subscription request', 'Está recibiendo esta solicitud de suscripción al boletín por correo electrónico.', 'es', '3094'),
('4248', 'HfubKhA7IRFDBPAHKtNBajHBj', 'Please confirm to this link', 'Por favor confirme a este enlace', 'es', '3095'),
('4249', '6iU5RRHuCxaJL8u88nxBpKTZJ', 'to activate your email subscription.', 'para activar su suscripción de correo electrónico.', 'es', '3096'),
('4250', '1MxkvKz5xF31apqUFXW6xGaaz', 'Order Details', 'Detalles del pedido', 'es', '3097'),
('4251', 'DNY6wEgmjrigNVA2WLdQClUzh', 'Print', 'Impresión', 'es', '3098'),
('4252', 'iRNDFgD3eTGlvuC3HjsMG6GRn', 'Order info', 'Información del pedido', 'es', '3099'),
('4253', 'jWLqLW7paJ1vFkdEYp6d1XjnE', 'Order', 'Orden', 'es', '3100'),
('4254', 'L5Qz7NLq8XcknEztN9l8iXy2t', 'Purchased Date', 'Fecha de compra', 'es', '3101'),
('4255', '7qidylV7yrKmsjt19KCf9YkZ6', 'Purchase Date', 'Fecha de compra', 'es', '3102'),
('4256', 'eMl5cMSHTkSxD6Lsht1eQkKSX', 'Expiry Date', 'Fecha de caducidad', 'es', '3103'),
('4257', 'JGlfYV0Pyf9abPQOzzXXi7s7s', 'Item', 'Articulo', 'es', '3104'),
('4258', '3kisoofFBRkdiWV0qwD6yLJOv', 'License', 'Licencia', 'es', '3105'),
('4259', 'sqqGayeo0uGUvExsyWwwpMR5H', 'Earnings', 'Ganancias', 'es', '3106'),
('4260', 'qDpyRfAIHAYuXkgX3Aj8xoRKF', 'Sub Total', 'Subtotal', 'es', '3107'),
('4261', 'gnvogngTCsfFBJ1pFTmgeJhnJ', 'Remove frame', 'Eliminar marco', 'es', '3108'),
('4262', 'BLbRUspDu3paW2tZF2gEYUTBp', 'Profile Settings', 'Configuración de perfil', 'es', '3109'),
('4263', 'IUium9ep9Qmnxhqth5ZNdhWni', 'Profile Information', 'información del perfil', 'es', '3110'),
('4264', 'HdMCaDmrmTQjCbmX4EhfmodIh', 'Username', 'Nombre de usuario', 'es', '3111'),
('4265', 'XFsCJ3pFArRzQtRE7K5jmcgUa', 'Your Marketplace URL', 'Tu URL de Marketplace', 'es', '3112'),
('4266', '57TefZqd8c4oMaq6POmDtNbFC', 'Password', 'Contraseña', 'es', '3113'),
('4267', 'AQ2oi46uqUvi5i91YYrOqn486', 'Confirm Password', 'Confirmar contraseña', 'es', '3114'),
('4268', 'q38e8q3XwEufvWtJUa5yNO1ia', 'Website', 'Sitio web', 'es', '3115'),
('4269', 'BRYpOsLmIgxopIQaqeQcL8blR', 'Country', 'País', 'es', '3116'),
('4270', 'viKKW7bqr5sVcJDs0g05lj4xb', 'Available Freelance Work?', '¿Trabajo independiente disponible?', 'es', '3117'),
('4271', '7JbhDhwZIOhzyMDHwGx9Lyjrm', 'Display Country Badge?', '¿Mostrar insignia de país?', 'es', '3118'),
('4272', 'InCmjaPyzHJjCxOl3iUa8MNtB', 'Exclusive Author?', 'Autor exclusivo?', 'es', '3119'),
('4273', 'fHJHAnd3iYLpDe7HyD3XWFFNC', 'if selected', 'si se selecciona', 'es', '3120'),
('4274', 'YdkXj9wBbYsaH8mfDfNb53f0Z', 'you will get high earning', 'obtendrá altos ingresos', 'es', '3121'),
('4275', 'rB7FSwQMAM53QoxvIhA7XXqvO', 'Profile Heading', 'Perfil del encabezado', 'es', '3122'),
('4276', 'ELJrJhH3xuR3Cy2vpFd5lvdjT', 'Ex: Web Development Service', 'Ej: Servicio de desarrollo web', 'es', '3123'),
('4277', 'LIfCp1GLwGFs4YoFW0i1EeUsu', 'About', 'Acerca de', 'es', '3124'),
('4278', 'rlzmvDbbfSrdpBJgOoKpJbwBv', 'Short brief about yourself or your account...', 'Breve breve sobre usted o su cuenta ...', 'es', '3125'),
('4279', 'sswGcNQI83qsi9CzyNhz9eZAp', 'Profile Image & Cover Image', 'Imagen de perfil e imagen de portada', 'es', '3126'),
('4280', '42aaDLoBcTlLQ2Vmesz2fPo9i', 'Profile Image', 'Imagen de perfil', 'es', '3127'),
('4281', '4rB2CLNNKlbuH2Tmj1R0iQrwD', 'Cover Image', 'Imagen de portada', 'es', '3128'),
('4282', 'UJvzGHBIrXCgrbNPKh9YPfUTH', 'Social Profiles', 'perfiles sociales', 'es', '3129'),
('4283', 'kiScuJ9UUPQ6pGDX0hCZkVvhK', 'Email Settings', 'Ajustes del correo electrónico', 'es', '3130'),
('4284', 'G93fWX31GnJIyPxyNuxuc9oTs', 'Send an email when an item I\'ve purchased is updated', 'Enviar un correo electrónico cuando se actualice un artículo que he comprado', 'es', '3131'),
('4285', 'tKOMoGvznTvyOmGo8cyFta05C', 'Item Comment Notifications', 'Artículo Comentario Notificaciones', 'es', '3132'),
('4286', 'R5414EMjKs7gQZ2c1DHwX117Q', 'Send me an email when someone comments on one of my items', 'Enviarme un correo electrónico cuando alguien comente uno de mis artículos', 'es', '3133'),
('4287', 'AFYPmoIMiupnxfzTzXHBFl9W0', 'Item Review Notifications', 'Notificaciones de revisión de artículos', 'es', '3134'),
('4288', 'D3JetymxWSlOk7Ex9peKNdsCY', 'Send me an email when my items are approved or rejected', 'Enviarme un correo electrónico cuando mis artículos sean aprobados o rechazados', 'es', '3135'),
('4289', 'uuFtMPXf0IrAofrnSbU7zxUhF', 'Buyer Review Notifications', 'Notificaciones de revisión del comprador', 'es', '3136'),
('4290', '3lS45FkXUxd1glQOu2idnJkjj', 'Send me an email when someone leaves a review with their rating', 'Enviarme un correo electrónico cuando alguien deje una reseña con su calificación', 'es', '3137'),
('4291', 'FlGsrJpPymZZ2cpu2EEgODaqm', 'Update', 'Actualizar', 'es', '3138'),
('4292', 'mrQEUvkcN9N66Y3Tvj96lQfpE', 'Additional Info', 'Información adicional', 'es', '3139'),
('4293', 'PVrjRvsZ0oZVLyxU2aurbBN4m', 'Download', 'Descargar', 'es', '3140'),
('4294', 'IHA9ouSNSdg51krgQl4AKf9HF', 'Licence', 'Licencia', 'es', '3141'),
('4295', 'grQMKeOB1jEaFp2WM5YJot2e6', 'Vendor', 'Vendedora', 'es', '3142'),
('4296', 'r6B7Xh0dJiorpikpXIl39wovb', 'Refund Request', 'Petición para reembolso', 'es', '3143'),
('4297', 'uuHb9aXgQ9d4i0FihvmsaZS0t', 'Download Item', 'Descargar artículo', 'es', '3144'),
('4298', 'dsPfbZc08kwCygGOjBYalpBPC', 'Rate Now', 'Califica ahora', 'es', '3145'),
('4299', 'MOcXMXItaaJemfsH5OFEGhyTL', 'Refund Reason', 'Motivo de reembolso', 'es', '3146'),
('4300', 'cyAq0rfjLH1rGjvOf8sKTH8Yv', 'Item is not as described or the item does not work the way it should', 'El artículo no es como se describe o el artículo no funciona como debería', 'es', '3147'),
('4301', 'lWNtsu7buIDI3y4LARW7iMslb', 'Item has a security vulnerability', 'El artículo tiene una vulnerabilidad de seguridad', 'es', '3148'),
('4302', '82hLG0ixCXoygCcsEvWO1QzHU', 'Item support is promised but not provided', 'Se promete el soporte del artículo pero no se proporciona', 'es', '3149'),
('4303', 'opnWsu5gOISSSe1fNCnDsB7mO', 'Item support extension not used', 'Extensión de soporte de artículo no utilizada', 'es', '3150'),
('4304', 'nhaHcYlvkKS9bIrosP3yk5QuH', 'Items that have not been downloaded', 'Elementos que no han sido descargados', 'es', '3151'),
('4305', 'XOWExWnbxo4Hgsyg3p3Cb0x96', 'Submit Request', 'Enviar peticion', 'es', '3152'),
('4306', 'hWt7W61zBFYc9pld1vlPf8Qg0', 'Rating this Item', 'Valoración de este artículo', 'es', '3153'),
('4307', 'ZcSF3qjl9HLXYRbYbpsXTGcpZ', 'Your Rating', 'Tu clasificación', 'es', '3154'),
('4308', '5qjtsHAjOXEwnytJJYArlDXoq', 'Rating Reason', 'Razón de calificación', 'es', '3155'),
('4309', 'XbvSRvgbYjpPxu5ELsLI7arHx', 'Design Quality', 'Calidad de diseño', 'es', '3156'),
('4310', 'cLDLX7OcX8r5IYQ5MPIjj3UL4', 'Customization', 'Personalización', 'es', '3157'),
('4311', 'NVWX4Gg7ZMWzeShj5LIlTrqfz', 'Performance', 'Actuación', 'es', '3158'),
('4312', '5ib5g4wtZ7IhCV10VAGRFGgsz', 'Well Documented', 'Bien documentada', 'es', '3159'),
('4313', 'Pq7nfQpEOBLI3VKm9qbqcU5At', 'Your review will be ​publicly visible​ and the vendor may reply to your comments.', 'Su opinión será públicamente visible y el proveedor podrá responder a sus comentarios.', 'es', '3160'),
('4314', 'vlWZLHWa8zFclA2OmIpASl2vR', 'Submit Rating', 'Enviar calificación', 'es', '3161'),
('4315', 'CoqgcUf8WbRsujgk6mIOPUxdP', 'Item Rating & Reviews', 'Clasificación y comentarios del artículo', 'es', '3162'),
('4316', 'tN9bdYTzQffrEkjpa5MhsnkQ0', 'Rating', 'Clasificación', 'es', '3163'),
('4317', 'tbVjMhoEzH4Ag6J9QXL7g5vgp', 'Refund Request Received', 'Solicitud de reembolso recibida', 'es', '3164'),
('4318', 'TmlRcoj2yQIeE5jCB7e1TRfOj', 'Verify Your Email Address', 'Verifique su dirección de correo electrónico', 'es', '3165'),
('4319', '0vf8OqId1dzfPv7OXV03ajmXM', 'Your registered email-id is', 'Su identificación de correo electrónico registrada es', 'es', '3166'),
('4320', 'UqK0pbxOlFvQIuXOeupcej30j', 'Please click on the below link to verify your email account', 'Haga clic en el siguiente enlace para verificar su cuenta de correo electrónico', 'es', '3167'),
('4321', 'mg9IG5eZmqXf3rEgURPEARezd', 'Verify Email', 'Verificar correo electrónico', 'es', '3168'),
('4322', 'KSVj3gGzUVe1FRuOWamOnW22o', 'Total Purchases', 'Compras totales', 'es', '3169'),
('4323', 'etIDQPQv97ZNzuUsOIbIo5uWN', 'Total Credited', 'Total acreditada', 'es', '3170'),
('4324', 'phR0ykprlcMwQCZpDac9Blo72', 'Total Withdraw', 'Retiro total', 'es', '3171'),
('4325', '6VznVxhOndSQIWxNDX7Xx5rxr', 'Date', 'Fecha', 'es', '3172'),
('4326', 'KdHRCqkYkvfS308eZ7RCQMAEP', 'Order ID', 'Solicitar ID', 'es', '3173'),
('4327', 'K2C0tqPKqCYcPpuyNssuAYIR8', 'Payment ID', 'ID de pago', 'es', '3174'),
('4328', 'h9tZE2ijWKF6A5VvP2cA6oSCU', 'Payment Type', 'Tipo de pago', 'es', '3175'),
('4329', 'qYHQfBwhqCntinS4SeCqc9ZNq', 'Earning', 'Ganadora', 'es', '3176'),
('4330', 'QBHnlSRAcbQ6BT4yavH9IZao5', 'view', 'ver', 'es', '3177'),
('4331', 'N4Ks9J6CEPVRx5SmfTXNUduGo', 'Shop', 'tienda', 'es', '3178'),
('4332', '0odQ1n3yCkWufIYiSXca2HuHX', 'Price : Low to High', 'Precio: Baja a Alta', 'es', '3179'),
('4333', 'iMEifFocGmjxvwsAcvUcTI1EC', 'Price : High to low', 'Precio: Alta a baja', 'es', '3180'),
('4334', 'cLgnfwLT3gggnFQcdU1Y4Zwfj', 'Popular Items', 'Artículos populares', 'es', '3181'),
('4335', 'n5f7O3exPKoMQXKko0d1hu75x', 'New Items', 'Nuevos objetos', 'es', '3182'),
('4336', 'nJiC3zsQsvMTS1z1ObJOHothR', 'Filter Products', 'Filtrar productos', 'es', '3183'),
('4337', 'iFFUJdDMcuplWzkmhoXaLFOxq', 'No results found', 'No se han encontrado resultados', 'es', '3184'),
('4338', 'Ng1paBbspAqQ2WkUUCD76tkRm', 'Leave A Reply', 'Deja una respuesta', 'es', '3185'),
('4339', 'D4ZBdUICnrCIV8OAHCa5RxARL', 'Your text here...', 'Tu texto aqui...', 'es', '3186'),
('4340', 'IjuCtvdCceN7OGMnLhlshsiz9', 'Sign Up Now', 'Regístrate ahora', 'es', '3187'),
('4341', 'QmDTQuA5YsMyRQqmlnISuWjEF', 'Success', 'Éxito', 'es', '3188'),
('4342', 'T7rjg9sxaSk71iXg6qPwv2nkz', 'Your payment transaction was successful. Thank You!', 'Su transacción de pago fue exitosa. ¡Gracias!', 'es', '3189'),
('4343', 'n2DaTgesX1ImFtXzBC8vC41Mc', 'Transaction ID', 'ID de transacción', 'es', '3190'),
('4344', '7bhMQRTEk7I9ileKqvB7yCutS', 'Contact Support', 'Soporte de contacto', 'es', '3191'),
('4345', 'zYRe3KWgdIdnPIqb9Qcgpjxk6', 'Contact Us', 'Contacta con nosotras', 'es', '3192'),
('4346', 'OPOeftZmFMuWUloTRjvSrLca1', 'Message sent from', 'Mensaje enviado desde', 'es', '3193'),
('4347', 'X01D6xOnJbKkc7jEAU4Heu2zT', 'New message received', 'Nuevo mensaje recibido', 'es', '3194'),
('4348', 'wBhFVdIXYRfsfT1zXuryz09pj', 'Total Items', 'Articulos totales', 'es', '3195'),
('4349', 'TXNVncUTLppQVcSssiNVW4Cd4', 'Total Ratings', 'Calificaciones totales', 'es', '3196'),
('4350', 'tJgh3Us5zmR81p0UpYrINBaiK', 'Followers', 'Seguidoras', 'es', '3197'),
('4351', 'UwVAEXZMCwCb6JZdx3Cd2rfx8', 'Follower', 'Seguidora', 'es', '3198'),
('4352', 'LEoEKUS8Fhm93hjbXGN7ADlaH', 'Location', 'Ubicación', 'es', '3199'),
('4353', 'rkamlARdOldBc0pGtk8g3kHb9', 'Following', 'Siguiendo', 'es', '3200'),
('4354', 'Fy7Hf4iqZxXnDtUefmNWRyuf5', 'Followings', 'Seguimientos', 'es', '3201'),
('4355', '6YxDzv8hQauzM0PEPIlIUWS8Z', 'Follow', 'Seguir', 'es', '3202'),
('4356', 'Ky2IsHcriOwyciGOrslr6fRhh', 'UnFollow', 'Dejar de seguir', 'es', '3203'),
('4357', 'UyNyUGfgKzsuR8NCaJbrlaoQn', 'Affiliate Referral Url', 'URL de referencia de afiliado', 'es', '3204'),
('4358', 'LSIE6BO28SkHgy026cFY5oLwj', 'Copy Url', 'Copiar URL', 'es', '3205'),
('4359', 'J2YSwAK2cwhEMnUm0R4BdbLHn', 'Social Links', 'vínculos sociales', 'es', '3206'),
('4360', '0E2TXbz6AZfZkmnJTNlhdLUs5', 'Customer Reviews', 'Opiniones de los usuarios', 'es', '3207'),
('4361', 'KkusKGdEHTacw7lOr96SXKuoR', 'Available for Freelance work', 'Disponible para trabajo independiente', 'es', '3208'),
('4362', 'VIzQAtcZCcUA4wkJN7EOiUM1k', 'Your message...', 'Tu mensaje...', 'es', '3209'),
('4363', 'oHdFllP2vJ35BxFEes2tbiKy1', 'send message', 'enviar mensaje', 'es', '3210'),
('4364', 'hCSQrSCE9n2HM2WkKsSy94Ro9', 'Withdrawal', 'Retirada', 'es', '3211'),
('4365', 'OjjM6IbaKh6wyT51OZ05Q0I9k', 'Minimum withdrawal amount is', 'El monto mínimo de retiro es', 'es', '3212'),
('4366', 'vUXbcbU0P9jBfSkEfy1GpNOM2', 'Withdrawal Options', 'Opciones de retiro', 'es', '3213'),
('4367', '04WGRaQxDG7WMXl53XLdpWE2c', 'Paypal Email ID', 'ID de correo electrónico de PayPal', 'es', '3214'),
('4368', 'wJzmU1jteXAwqFthrGE5WaKDO', 'Stripe Email ID', 'Stripe Email ID', 'es', '3215'),
('4369', 'Tvyn6NB1AjmHNCz6Em0GPJhxJ', 'Withdraw Amount', 'Retirar Monto', 'es', '3216'),
('4370', 'OsWH5fSdmKCK6UGgKcvk0wOmT', 'How much amount would you like to Withdraw?', '¿Cuánto le gustaría retirar?', 'es', '3217'),
('4371', 'NKcdWSqm0hezEZ800zcCR8zSw', 'Available balance', 'Saldo disponible', 'es', '3218'),
('4372', 'BYO3vs6CLVsR5QVlHMP13BMTG', 'Submit Withdrawal', 'Enviar retiro', 'es', '3219'),
('4373', '8iKUCAt3L1kXdEIZfHDu4OYWf', 'Withdrawal History', 'Historial de retiro', 'es', '3220'),
('4374', 'kVx24asvxKMfwb7G0lIY94vAG', 'Withdrawal Option', 'Opción de retiro', 'es', '3221'),
('4375', 'vGTMjRTvnW7jNcvJ4FXriEJAR', 'Paypal Email', 'e-mail de Paypal', 'es', '3222'),
('4376', 'aWuqopc6Q1WizlcvIrbwVPjoV', 'Stripe Email', 'Stripe Email', 'es', '3223'),
('4377', 'FhqWaqZSgWgOJttN8eb53O2LI', 'Amount', 'Cantidad', 'es', '3224'),
('4378', 'I7CFVRh7288SXwe8nRPE59LPp', 'Login', 'Iniciar sesión', 'es', '3225'),
('4379', 'B04B4YHU9jgtA0ZZ4BvZ2VrII', 'Welcome Back', 'Dar una buena acogida', 'es', '3226'),
('4380', 'oOgxsITJbkAmi7oatMR0IRk4c', 'You can sign in with your username', 'Puedes iniciar sesión con tu nombre de usuario', 'es', '3227'),
('4381', 'Ub0YzlPzfIUxg2Jbn7z2ZxGrX', 'E-Mail Address / Username', 'Dirección de correo electrónico / Nombre de usuario', 'es', '3228'),
('4382', 'ZGHfTqdgkViodjLG9irivyJz1', 'Remember Me', 'Recuérdame', 'es', '3229'),
('4383', 'kAFT2hVQT4ZLppvC4tIagCqAV', 'Don\'t have an', 'No tengo un', 'es', '3230'),
('4384', 'EZcGxHIUnbRaQG32FIblP9se7', 'account', 'cuenta', 'es', '3231'),
('4385', '312qZcljA662a8gN0B7I0OZZh', 'Login with your social media account', 'Inicie sesión con su cuenta de redes sociales', 'es', '3232'),
('4386', 'yw6J14fAecxyzl0q3yC6p69Tv', 'Register', 'Registrarse', 'es', '3233'),
('4387', 'KSBAtIYvjaPfqLFE79sXxtyPf', 'Create Your Account', 'Crea tu cuenta', 'es', '3234'),
('4388', 'inTDBh00XkbSgkF4eabuIQWJC', 'Please fill the following fields with appropriate information to register a new Marketplace account.', 'Complete los siguientes campos con la información adecuada para registrar una nueva cuenta de Marketplace.', 'es', '3236'),
('4389', 'FlxDmg3D0DvzxUnBD33kfUBzg', 'Your Name', 'Tu nombre', 'es', '3237'),
('4390', 'egWw1jweKEUotmP0JXjCyUsoI', 'Enter your name', 'Introduzca su nombre', 'es', '3238'),
('4391', 'e5qxYdjEiLtFGttFKeyANdafv', 'Enter your username', 'Ingrese su nombre de usuario', 'es', '3239'),
('4392', 'qbC5ilMo3YmCj92gJrjLcTKBE', 'E-Mail Address', 'Dirección de correo electrónico', 'es', '3240'),
('4393', 'wOVP282kAtCxeE5PpHPWpZ1lt', 'Enter your email address', 'Ingrese su dirección de correo electrónico', 'es', '3241'),
('4394', 'QVKMBQOdcUWtn7ssPNbsVLuQk', 'Enter your password', 'Ingresa tu contraseña', 'es', '3242'),
('4395', 'wyoglbJHnmOh2EspT5nQgoggS', 'Enter your confirm password', 'Ingrese su contraseña de confirmación', 'es', '3243'),
('4396', '1ZJ5zaRqqr31tGrrOURY6pqAP', 'Captcha', 'Captcha', 'es', '3244'),
('4397', 'p8Nh8byE6ZzLaZ61By0tBJ9mX', 'Already have an account?', '¿Ya tienes una cuenta?', 'es', '3245'),
('4398', 'bPP5t0GRBJH13EnlKShAxNRRN', '404 Not Found', '404 غير موجود', 'ar', '2860'),
('4399', '8X6q52IbXVVl4EelEjOw6S4Gv', 'Home', 'الصفحة الرئيسية', 'ar', '2862'),
('4400', 'o0XZzbWNeuIZ2h7oUMnel5fR6', '404', '404', 'ar', '2863'),
('4401', 'wUuMlLEPyZ1jr7XN30hNSaG90', 'Sorry, the page you are looking for could not be found.', 'عذرًا ، تعذر العثور على الصفحة التي تبحث عنها.', 'ar', '2864'),
('4402', 'xBrEIgyzORyZc4Lb5ZASyHGKZ', 'Add Coupon', 'أضف عرض', 'ar', '2865'),
('4403', 'PVPmiejPz9ymAazTlMPtzxpMD', 'Coupon Code', 'رمز الكوبون', 'ar', '2866'),
('4404', 'E714fEAVUt5Isao1LQRjPjbD4', 'Value', 'القيمة', 'ar', '2867'),
('4405', 'mUkaQpX6Nk9mHq97zyOaoVDP5', 'Start Date', 'تاريخ البدء', 'ar', '2868'),
('4406', 'NOjgGZUX4VtvQ0CmeXcy0hBza', 'End Date', 'تاريخ الانتهاء', 'ar', '2869'),
('4407', 'qeqNP9vFIAwVzjRhzF51PmIe5', 'Discount Type', 'نوع الخصم', 'ar', '2870'),
('4408', 'EOsoIJ3fKW82dIo5mUdktBucq', 'Percentage', 'النسبة المئوية', 'ar', '2871'),
('4409', 'GpKuLvtFqtgF5iWfH5PBasYIn', 'Fixed', 'ثابت', 'ar', '2872'),
('4410', 'OojWPeJ5Dp2QLw0GjVr31zomm', 'Status', 'الحالة', 'ar', '2873'),
('4411', 'K2cxRK30ncsY7NZYz3ciZ6RLj', 'Active', 'نشيط', 'ar', '2874'),
('4412', 'zdPHIGsMfY77BQ1xtSZVuFsMW', 'InActive', 'غير نشط', 'ar', '2875'),
('4413', 'WV7Deg2NYEjNEL9NYnjjq3bKL', 'Submit', 'إرسال', 'ar', '2876'),
('4414', 'ETGulAxtKGlGhvwWIfPs1tYvT', 'Blog', 'مدونة', 'ar', '2877'),
('4415', 'RNKac3MtpVMbJvOKZDtaUYPhN', 'Read More', 'اقرأ أكثر', 'ar', '2878'),
('4416', 'pq5DsuU9n1liUYQlM9bENt3jM', 'Categories', 'التصنيفات', 'ar', '2879'),
('4417', 'L6L5EzDchhn0E7PAjAHZEWmht', 'Popular Posts', 'منشورات شائعة', 'ar', '2880'),
('4418', 'PatuXrIkYdksif7Zbyy8MLRgQ', 'Latest Posts', 'آخر المشاركات', 'ar', '2881'),
('4419', '8KuGFr1KHaCyrwPNxe3bH3kS5', 'Cancel', 'إلغاء', 'ar', '2882'),
('4420', 'dlZH7XfPaausoGq6641xTkgU6', 'Transaction Cancelled', 'تم إلغاء المعاملة', 'ar', '2883'),
('4421', '4vAKxE2EbBrTm5RwbPfGmzMPn', 'Your payment transaction has been cancelled.', 'تم إلغاء معاملة الدفع الخاصة بك.', 'ar', '2884'),
('4422', 'hox7fnWMrxvpL2FYz2FfW1xjo', 'My Cart', 'سلة التسوق', 'ar', '2885'),
('4423', '2AqqQg79v7HEogomIjrIePEN0', 'Product Items', 'عناصر المنتج', 'ar', '2886'),
('4424', '5HgEfRJkV1l9m2kwVTDCMhz1p', 'License Support', 'دعم الترخيص', 'ar', '2887'),
('4425', '0EO6PMMjQnov7V0YBJ2iizYhA', 'Price', 'السعر', 'ar', '2888'),
('4426', 'DWlYkrB8KOoIpByTMb7MSXzBz', 'Remove', 'إزالة', 'ar', '2889'),
('4427', 'MymL4iG5Qlf6X5kkykx5nsMtO', '6 months', '6 اشهر', 'ar', '2890'),
('4428', '4Ls8v4EDYQflyAhgdFDBhyJjW', '12 months', '12 شهر', 'ar', '2891'),
('4429', 'VVVWWedp2ElUa60zE2SR3SDgL', 'Are you sure you want to delete?', 'هل أنت متأكد أنك تريد حذف؟', 'ar', '2892'),
('4430', 'RFjxegDMB51jenSxvdZCqvkHo', 'Apply Coupon', 'تطبيق القسيمة', 'ar', '2893'),
('4431', 'Z3Ctq3ZvPFFUQ4W57i97dd7SZ', 'Cart Subtotal', 'المجموع الفرعي لعربة التسوق', 'ar', '2894'),
('4432', 'Ku5gtPDFNzcjhV5n8GgoRCxB5', 'Discount Price', 'سعر الخصم', 'ar', '2895'),
('4433', 'hgVmjtqTf3lR4GkQtIYEQ6q7L', 'Total', 'مجموع', 'ar', '2896'),
('4434', 'iGKffAgyB6dVj5LLkxFYz2jSi', 'Proceed To Checkout', 'باشرالخروج من الفندق', 'ar', '2897'),
('4435', 'tVOJkONGctJBVkodNx0XGsyuT', 'Your cart is empty!', 'عربة التسوق فارغة!', 'ar', '2898'),
('4436', '9QDQr7ym4SQxVWPe7ktB50FEo', 'Checkout', 'الدفع', 'ar', '2899'),
('4437', 'NgvRkrjRERVwsjGcPQ9qwhQlo', 'Order Summary', 'ملخص الطلب', 'ar', '2900'),
('4438', 'P5HMZqdwTwHnMZGNiiX4jDV64', 'Processing Fee', 'كلفة المعالجة', 'ar', '2901'),
('4439', 'BgKoGYvTwsuXptbWn1XJufBSc', 'Select Payment Method', 'اختار طريقة الدفع', 'ar', '2902'),
('4440', '6reRPLOgWTMlVJq3RF7HSKkJ1', 'Credit or debit card', 'بطاقة الائتمان أو الخصم', 'ar', '2903'),
('4441', 'zOYxzABRwbAtQPEJ8aBBGZTzn', 'Confirm Order', 'أكد الطلب', 'ar', '2904'),
('4442', '6pqzcML8dd3it9nukllpaqj9w', 'New Comment Received', 'تم تلقي تعليق جديد', 'ar', '2905'),
('4443', 'nt9t6WqDNYCkaSo7yfY5A3Y6r', 'Sender Name', 'اسم المرسل', 'ar', '2906'),
('4444', 'n5lJEsFbRVnfw10ZX8TZYlQkc', 'Sender Email', 'البريد الإلكتروني المرسل', 'ar', '2907'),
('4445', 'EH0pEYQiE77d0ZzUZbpfwUdCa', 'Item Url', 'عنوان URL الخاص بالعنصر', 'ar', '2908'),
('4446', 't039QRrNu54E4eRr7Lqa5YJa9', 'Comment', 'تعليق', 'ar', '2909'),
('4447', 'trsiwJz8E0IBIadDpySZsAzth', 'Contact', 'اتصل', 'ar', '2910'),
('4448', 'GloXcCqIVR8poXb2per1LvhbF', 'How can We', 'كيف يمكننا', 'ar', '2911'),
('4449', 'JxehSHquK5FHVR8bKGgkFknRk', 'Help?', 'مساعدة؟', 'ar', '2912'),
('4450', 'cD6SkT9YtbNMmvfkhQ0BRqZOt', 'Office Address', 'عنوان المكتب', 'ar', '2913'),
('4451', 'EcFwczdTF7nnDvs3v5TDXC30c', 'Phone Number', 'رقم الهاتف', 'ar', '2914'),
('4452', 'xYH0ACvwhQ0KE3IuSyMCUEwxv', 'Email', 'البريد الإلكتروني', 'ar', '2915'),
('4453', 'UQY7WU4XiBU8oHHVAotqTyAEL', 'Leave Your Messages', 'اترك رسائلك', 'ar', '2916'),
('4454', 'xOe9d4jskuYM2Tn6CoJnFjMMu', 'Name', 'اسم', 'ar', '2917'),
('4455', '2RvUvK9rfwWPaxoCqCmkgUsLU', 'Message', 'رسالة', 'ar', '2918'),
('4456', 'aJhMu7fLEW07YPtbBrnTcFswW', 'Coupon', 'قسيمة', 'ar', '2919'),
('4457', 'LeDcbGs27KUH0fI0DnCTsGMsm', 'Sno', 'سنو', 'ar', '2920'),
('4458', 'ZRINybId13aMyU8G4hczBsvmC', 'Type', 'اكتب', 'ar', '2921'),
('4459', 'quOVq98X938k7fLuJ6CEXLxIY', 'Action', 'عمل', 'ar', '2922'),
('4460', 'NLJPH2vcvqBnod90mgrteyLM3', 'Edit', 'تعديل', 'ar', '2923'),
('4461', 'mDVDH8iRP3skibyubY7fGtotY', 'Delete', 'حذف', 'ar', '2924'),
('4462', 'qk27a1LFzdKp5pCjxBClWbFbf', 'Are you sure you want to remove this coupon?', 'هل أنت متأكد أنك تريد إزالة هذه القسيمة؟', 'ar', '2925'),
('4463', 'sCmK276Wdnrh8ClgsdfZ7lg07', 'Profile', 'الملف الشخصي', 'ar', '2926'),
('4464', 'qzenjQT5DTDd00UEjBbKgWoKV', 'Setting', 'ضبط', 'ar', '2927'),
('4465', 'BIvYjHm85IQaOy8sjedDn4s3O', 'Purchase', 'شراء', 'ar', '2928'),
('4466', 'Yd6t4nBHiR9qNTnsvN6b32XnG', 'Favourite', 'مفضل', 'ar', '2929'),
('4467', 'hEeOJVLPKXgM95Nxq4rEJSUCU', 'Sales', 'مبيعات', 'ar', '2930'),
('4468', 'KLFgDTMWKWTVqQNdy1WCLZVdT', 'Upload Item', 'تحميل عنصر', 'ar', '2931'),
('4469', 'RqpzkdKWYQMOIxJ5Adbc6SFQK', 'Manage Items', 'إدارة العناصر', 'ar', '2932'),
('4470', 'ExyKj7HaT91RrdXVQpZhcihYS', 'Withdrawals', 'الانسحابات', 'ar', '2933'),
('4471', 'oEb92kh2DrKFwsSQ1SZUdorAB', 'Edit Coupon', 'تحرير القسيمة', 'ar', '2934'),
('4472', 'WTXXhXBgmPHSyOHJlli44wXUE', 'Edit Item', 'تعديل عنصر', 'ar', '2935'),
('4473', 'ievkBGmN5kw2gTZMFj4IuGwnD', 'Name & Description', 'الاسم والوصف', 'ar', '2936'),
('4474', 'XPsS1jpoOCWgnln8jQfIbHA8y', 'Item Type', 'نوع العنصر', 'ar', '2937'),
('4475', 'Yqu1SSrp6g2jJ8QRTsoY3iDaU', 'Item Name', 'اسم العنصر', 'ar', '2938'),
('4476', 'Z4CFXe1HPPJJAfioZSQG26QgK', 'Max 100 characters', '100 حرف كحد أقصى', 'ar', '2939'),
('4477', 'r516JlfyRimlFmOiJx0F9ohnB', 'Short Description', 'وصف قصير', 'ar', '2940'),
('4478', 'q618H6eM87PQEb2Ri2vLmdnh1', 'Description', 'وصف', 'ar', '2941'),
('4479', 'KiCk3AaSR7kxsJQdSeUbbIpoK', 'Upload Files', 'تحميل الملفات', 'ar', '2942'),
('4480', 'nxPQNojbz59ZOHCZDVKN7nJ9D', 'Upload Thumbnail', 'تحميل الصورة المصغرة', 'ar', '2943'),
('4481', 'v0uMyaQ3awF3QZUkYxCiJtJcQ', 'Please select file of type .jpg, .png or .jpeg', 'يرجى تحديد ملف من نوع .jpg أو .png أو .jpeg', 'ar', '2944'),
('4482', 'lEOS0PqF4rsWUY2msr6MMMEhk', 'Upload Preview', 'تحميل المعاينة', 'ar', '2945'),
('4483', 'jI2C22Je6apEXUh0VYzmLaT06', 'Size', 'بحجم', 'ar', '2946'),
('4484', 'ByQ66mic7KcM9e713ArmEvTxq', 'Upload Main File', 'تحميل الملف الرئيسي', 'ar', '2947'),
('4485', 'tkcYxLUyx9WIrmtgA0RucwRrk', 'ZIP - All files', 'ZIP - جميع الملفات', 'ar', '2948'),
('4486', 'Ra98r45DNTpqZBRrykl9RMXWY', 'Please select file of type .zip only', 'يرجى تحديد ملف من نوع .zip فقط', 'ar', '2949'),
('4487', 'OzbANA2joy6c2J8xy2058kfNW', 'Upload Screenshots (multiple)', 'تحميل لقطات شاشة (متعددة)', 'ar', '2950'),
('4488', 'JAW6TvcgZspGzbO6My71HgvXD', 'Category & Attributes', 'الفئة والسمات', 'ar', '2951'),
('4489', 'sSUlcDqgOpPivSLEIDxQ4ZnlY', 'Select Category', 'اختر الفئة', 'ar', '2952'),
('4490', 'Nry5rob90m0Y5eCDtXIVYpHsf', 'Compatible Browsers', 'المتصفحات المتوافقة', 'ar', '2953'),
('4491', 'BEcJP4eeySrx3CJCesYnmCBqn', 'Package Includes', 'الشحنة تحتوي', 'ar', '2954'),
('4492', 'ok0ZhVs8sFxoM4D5eZN4Ff2UK', 'Columns', 'الأعمدة', 'ar', '2955'),
('4493', 'bF43vm0BKlEnaY1UQoCRyHR1U', 'Choose Columns', 'اختر الأعمدة', 'ar', '2956'),
('4494', 'vj8T3tlWlZs31QoGl4AGMrr9E', 'Layout', 'نسق', 'ar', '2957'),
('4495', 'vUKo45VGa0wAC6Y989iCMhqcU', 'Choose Layout', 'اختر تخطيط', 'ar', '2958'),
('4496', 'z7toprUBGWyaEJbMI83YMayW8', 'Layered?', 'الطبقات؟', 'ar', '2959'),
('4497', 'Fv4p79cAAxN5IkozfIbQxvcMb', 'Choose', 'أختر', 'ar', '2960'),
('4498', 'DgTicYJKDHF9VICg209YwojPE', 'Minimum Adobe CS Version', 'الحد الأدنى لإصدار Adobe CS', 'ar', '2961'),
('4499', '45Ty3J1XOHFTEUu9GuBhfno0m', 'Print Dimensions', 'أبعاد الطباعة', 'ar', '2962'),
('4500', 'aGx2AIsf7uZwaWa7sVFRPGMiV', 'Print dimensions in Inches for printable items, width x height.', 'أبعاد الطباعة بالبوصة للعناصر القابلة للطباعة ، العرض × الارتفاع.', 'ar', '2963'),
('4501', 'wWfpDdNdBkHXGcjEtffZ0Cocb', 'Pixel Dimensions', 'أبعاد البكسل', 'ar', '2964'),
('4502', 'qKYLAq0zk126Y8iLbK5gqyKBo', 'Image dimensions in Pixels for screen-based items.', 'أبعاد الصورة بالبكسل للعناصر المستندة إلى الشاشة.', 'ar', '2965'),
('4503', 'KJWXoqQrf1cx3SQRkBDr9R8Ao', 'Demo URL', 'عنوان URL التجريبي', 'ar', '2966'),
('4504', 'MM9eRd390A0Cn0IdD008wOt0a', 'Youtube Video URL', 'عنوان URL لفيديو Youtube', 'ar', '2967'),
('4505', 'JUjn0Fzezfkp3ddoqG6nRLCso', 'example', 'مثال', 'ar', '2968'),
('4506', 'VPKfkVLvqWBbmz50VjxiQjyqZ', 'Apply For Free Download?', 'تقدم بطلب للتنزيل المجاني؟', 'ar', '2969'),
('4507', '8yr52RSqeeJ2dYh6nDI8IFcLV', 'Yes', 'نعم', 'ar', '2970'),
('4508', 'iFrA4dZ1AnXp91HmheKL0PxDs', 'No', 'لا', 'ar', '2971'),
('4509', 'KAXPH1jkklG2HOd0yFCOOAUEc', 'Apply for flash sale?', 'تقدم بطلب لبيع فلاش؟', 'ar', '2972'),
('4510', 'i5pXY7W6g7vxylWC3VHZNixUz', 'If your item is selected, we will put it on sale for just one week for only 50% of it\'s original price.', 'إذا تم تحديد سلعتك ، فسوف نطرحها للبيع لمدة أسبوع واحد مقابل 50٪ فقط من سعرها الأصلي.', 'ar', '2973'),
('4511', 'LC9xPObXBalI2Jzy0uZMpTu1d', 'Tags', 'العلامات', 'ar', '2974'),
('4512', 'dhvMNiYwSqMM3rpXm5G0O63qX', 'Maximum of 15 keywords. Keywords should all be in lowercase and separated by commas. ex: shopping, blog, forum....ect', '15 كلمة رئيسية كحد أقصى. يجب أن تكون الكلمات الرئيسية كلها صغيرة وأن تكون مفصولة بفواصل. مثال: تسوق ، مدونة ، منتدى .... إلخ', 'ar', '2975'),
('4513', '7H9oEji6wCpb3xgP3r7Bt3J0s', 'Support & Updates', 'الدعم والتحديثات', 'ar', '2976'),
('4514', 'qOmO0iRzFSluNpP0ezZ6E9XTP', 'Feature Update', 'تحديث الميزة', 'ar', '2977'),
('4515', 'TIcdAMJvez6AQz2ioJ6Mh00tL', 'Item Support', 'دعم البند', 'ar', '2978'),
('4516', 'SH1S36enfedpTmGqZWMUO4jfN', 'Regular License (6 months support)', 'ترخيص عادي (دعم 6 شهور)', 'ar', '2979'),
('4517', 'NrpOlRnlHudl0fAVgDJChkpfK', 'Extended License (12 months support)', 'رخصة ممتدة (دعم 12 شهرًا)', 'ar', '2980'),
('4518', 'UuiRwbOwKpNIJMBg1IuiPEeDx', 'Submit Review', 'إرسال المراجعة', 'ar', '2981'),
('4519', 'zmX0OJzfMQaVw6QpE4V60Rpip', 'Upload Rules', 'قواعد التحميل', 'ar', '2982'),
('4520', 'A2MDyBcYjFnWZCgQ6wG9z3kwT', 'Image Upload', 'تحميل صورة', 'ar', '2983'),
('4521', 'zRvGlYpQtRxqfn9Y5mkyx3qvX', 'upload only', 'تحميل فقط', 'ar', '2984'),
('4522', 'S7sViiT7bMmDuEWoLqX4MTOHO', 'File Upload', 'تحميل الملف', 'ar', '2985'),
('4523', '509e47pz89eUxydS0VOfJRN78', 'Copyright Note', 'ملحوظة حقوق الملكية', 'ar', '2986'),
('4524', 'vQiAoZWYqdb4V4ngoIbP59jwp', 'You should include details of source files you have used in the Comments for the Reviewer section of the form.', 'يجب عليك تضمين تفاصيل ملفات المصدر التي استخدمتها في قسم التعليقات لقسم المراجع في النموذج.', 'ar', '2987'),
('4525', 'qYvihZ05s9pVBu0yWC0wCBrMm', 'If your file does not meet these copyright standards, it will be rejected.', 'إذا كان ملفك لا يفي بمعايير حقوق النشر هذه ، فسيتم رفضه.', 'ar', '2988'),
('4526', 'dJ6fE4Xso7OjuNuYJcD3hPATd', 'Favourites', 'المفضلة', 'ar', '2989'),
('4527', '5dUUcGvT7QVlNkuVbBC7DTFvO', 'My Favourites', 'المفضلة', 'ar', '2990'),
('4528', 'sHlxw5aTAzT3QHfhry3HgShct', 'Are you sure you want to remove from favourites?', 'هل أنت متأكد من أنك تريد الإزالة من المفضلة؟', 'ar', '2991'),
('4529', 'c0PlsLPWhBhcnpKX9w8Vw4fO7', 'Free', 'مجانا', 'ar', '2992'),
('4530', 'c3DzbJg2DMKlis6CaLU71KQj0', 'Flash Sale', 'بيع مفاجئ', 'ar', '2993'),
('4531', 'yyQgYRSOQgITsN2ZqrrRMyg9h', 'For only a short period of time you can grab these files with 50% discount', 'لفترة قصيرة فقط يمكنك الحصول على هذه الملفات بخصم 50٪', 'ar', '2994'),
('4532', 've1SIOTzaK3uMQm7vnb7WQODm', 'days', 'أيام', 'ar', '2995'),
('4533', '7tCNukNuMUZ6cDAuD77CBVJ7d', 'hours', 'ساعات', 'ar', '2996'),
('4534', 'LpjvTRbDY8ljswiBPn364cHkc', 'minutes', 'الدقائق', 'ar', '2997'),
('4535', '28WHVuanzGzScD0rQhKhxytid', 'seconds', 'ثواني', 'ar', '2998'),
('4536', 'NC4SgsDF1zUs4uFZEPdYQ8XlO', 'More Info', 'مزيد من المعلومات', 'ar', '2999'),
('4537', '03zO5dmN1KdiJ1oQzLaiyNBih', 'Live Demo', 'عرض حي', 'ar', '3000'),
('4538', 'hsBkYhESNpm6SOxEX8a1Ik1vu', 'MARKET FACTS', 'حقائق عن السوق', 'ar', '3001'),
('4539', 'rQA9ws5LNvYcAjZCnjnbYmyel', 'Members', 'أفراد', 'ar', '3002'),
('4540', 'Iogc84zvdFVJRNOCrT7GgXtgT', 'Files', 'الملفات', 'ar', '3003'),
('4541', 'yjX5ACIecZnCKr8eXry7EmzNd', 'POPULAR CATEGORIES', 'الفئات الشعبية', 'ar', '3004'),
('4542', 'K0mIGN2tuiPuafr7ELTqA4vex', 'NEWSLETTER', 'النشرة الإخبارية', 'ar', '3005'),
('4543', 'GNixjjy3j4fGHqGOXwszkwXe0', 'Enter your email', 'أدخل بريدك الإلكتروني', 'ar', '3006'),
('4544', 'JOI83nNmY81EH4Fsfe0msbvln', 'Subscribe', 'الإشتراك', 'ar', '3007'),
('4545', 'ImrD278R4BrMb1KXgzm5IbSX0', 'All rights reserved.', 'كل الحقوق محفوظة.', 'ar', '3008'),
('4546', 'TsfmuTA4y0rdFlMmreyo6Hfzm', 'Forgot Your Password', 'نسيت رقمك السري', 'ar', '3009'),
('4547', '1cmu2b3qVuAp4aHYnevPc3uCk', 'Please enter the email address for your account. A verification link will be sent to you.Once you have received the verification link, you will be able to create a new password for your account.', 'الرجاء إدخال عنوان البريد الإلكتروني لحسابك. سيتم إرسال رابط التحقق إليك ، بمجرد استلام رابط التحقق ، ستتمكن من إنشاء كلمة مرور جديدة لحسابك.', 'ar', '3010'),
('4548', 'IwbYvt5LOWXrueEkKGfBy02IK', 'Email Address', 'عنوان البريد الالكترونى', 'ar', '3011'),
('4549', '9Gi0udwneVvNrfF6laN2FQJKE', 'Send Password Reset Link', 'إرسال رابط إعادة تعيين كلمة السر', 'ar', '3012'),
('4550', 'YMNtPQmkzTVqftHf9vsGd37Cw', 'Forgot Password', 'هل نسيت كلمة المرور', 'ar', '3013'),
('4551', 'EOcdSDULu9oH9hOXuRLZyqqJo', 'You are receiving this email because we received a password reset request for your account', 'أنت تتلقى هذا البريد الإلكتروني لأننا تلقينا طلب إعادة تعيين كلمة المرور لحسابك', 'ar', '3014'),
('4552', '8102JtUs4LEU4iA8HxtZhb6OQ', 'Reset Password', 'إعادة تعيين كلمة المرور', 'ar', '3015'),
('4553', 'KHgwztFA4ItTdfLvRgM2XUi8b', 'Free Items', 'عناصر مجانية', 'ar', '3016'),
('4554', 'CkTsYsX3Pk0vwH5T9ppNJewQ6', 'Download these files before they are gone', 'قم بتنزيل هذه الملفات قبل أن تختفي', 'ar', '3017'),
('4555', 's5ScnN1sTGyFWY2eJKjNLkXxJ', 'Start Selling', 'ابدأ بالبيع', 'ar', '3018'),
('4556', 'MG0WR0MOXN0N8vQPTUsVwAVyd', 'Create Account', 'إنشاء حساب', 'ar', '3019'),
('4557', 'IiZQAywlrLmzuvjkK9nkC8wdW', 'Sign In', 'تسجيل الدخول', 'ar', '3020'),
('4558', '5yrSHb36CiXGZqMArisy738QL', 'View Cart', 'عرض السلة', 'ar', '3021'),
('4559', 'YGQfytQJdBdL8ltZdjH8FD5fm', 'Admin Panel', 'لوحة الادارة', 'ar', '3022'),
('4560', 'hzQfRCFNUayrZg9z03srfwGxv', 'Logout', 'تسجيل خروج', 'ar', '3023'),
('4561', 'rbf8UtxW5oFg8Gct8K90XCszB', 'Purchases', 'المشتريات', 'ar', '3024'),
('4562', 'XfLvsFg9wUjcZKj9GTFSYSkRY', 'All Items', 'جميع المواد', 'ar', '3025'),
('4563', '4G18MdQI6JNarrH5jGgp3xPEy', 'Recent Items', 'العناصر الأخيرة', 'ar', '3026'),
('4564', 'zmudlfSFxbDTM6bdKHwT8oGU2', 'Featured Items', 'السلع المعروضة', 'ar', '3027'),
('4565', 'wruTMUEJ3tfOUQvj5NWIfugC4', 'Top Authors', 'كبار المؤلفين', 'ar', '3028'),
('4566', '8Yx1zQVawYe5XGnTmd6tZaWUN', 'Pages', 'الصفحات', 'ar', '3029'),
('4567', 'p45yjN7XFfsERfwvKR96KoB9s', 'Search your products...', 'ابحث عن منتجاتك ...', 'ar', '3030'),
('4568', 'oSz4syUERRowGKr4fmorhVLXS', 'Search Now', 'ابحث الآن', 'ar', '3031'),
('4569', 'GAC31H8baFepveOV4VWZPFS3w', 'View More Featured Items', 'عرض المزيد من العناصر المميزة', 'ar', '3032'),
('4570', 'Qh3Xb6Dr2f0yVUL9ypEX0twan', 'Featured Files', 'ملفات مميزة', 'ar', '3033'),
('4571', 'z8JOyoXmpPJUDi2pHffN5Cj3j', 'by', 'بواسطة', 'ar', '3034'),
('4572', 'uzGq2MKKuk44DMY7O8XHepXu5', 'Newest', 'الأحدث', 'ar', '3035'),
('4573', 'UcK67c6rCN22FZiPHwVbvAWdb', 'View More Newest Items', 'عرض المزيد من العناصر الأحدث', 'ar', '3036'),
('4574', 'uI6rpxog2kWtBTyoyVIHB5K2G', 'total earnings', 'الأرباح الكلية', 'ar', '3037'),
('4575', 'q2Zd2vbVbyv9CvA3FZA3LAr3z', 'total files', 'إجمالي الملفات', 'ar', '3038'),
('4576', 'IVXbfTDoGsDg03jnEf0UFrLjE', 'total sales', 'إجمالي المبيعات', 'ar', '3039'),
('4577', 'R7pmePW1dcUOYdgB0ud0MALck', 'Free Files', 'ملفات مجانية', 'ar', '3040'),
('4578', 'GEbOILHnopWrkQyLBQdw5a97a', 'View More Free Items', 'عرض المزيد من العناصر المجانية', 'ar', '3041'),
('4579', '1LAhlYCvJ9EJifwpNemo5atAc', 'Buyer', 'مشتر', 'ar', '3042'),
('4580', 'mpDUoF8zQpMy3sVH1g0B4UFh8', 'Reviews', 'المراجعات', 'ar', '3043'),
('4581', 'Xb0YXMGHae6rplMBsBo86wcuv', 'Our buyers top reviews', 'أهم المشترين لدينا', 'ar', '3044'),
('4582', 'h3BFnhBlyTGWYumYCjT9xTv1b', 'Our', 'لنا', 'ar', '3045'),
('4583', 'lXH4yWC3CQUZy0ggZHkhuMtPl', 'our latest blog post', 'أحدث مشاركة لدينا بلوق', 'ar', '3046'),
('4584', '8xYh6e1XCGPWVd5QpYo2nDbFx', 'Why Choose', 'لماذا الاختيار', 'ar', '3047'),
('4585', '7OwAXzfB2JbTv3aa9ZiV0kAtA', 'our site features', 'ميزات موقعنا', 'ar', '3048'),
('4586', '6fRh28YI9QT1AFVSm1nFdaMSw', 'Live Preview', 'معاينة مباشرة', 'ar', '3049'),
('4587', 'rNCfFeW2SmuenSTx1ZJt61hIj', 'Screenshots', 'لقطات الشاشة', 'ar', '3050'),
('4588', 'MTOX7MdLlfRabmXrEs9JtmMM9', 'Add To Favorites', 'اضافة الى المفضلة', 'ar', '3051'),
('4589', 'jgStHSk0TxvIGLqoRrakizUpM', 'Share this item', 'مشاركة هذا البند', 'ar', '3052'),
('4590', 'qNK7F8sWldNa2HDz1uMBl9eFO', 'Item Details', 'تفاصيل العنصر', 'ar', '3053'),
('4591', 'Kzgk8aCa8VEzCfe9byYVHAFuu', 'Comments', 'تعليقات', 'ar', '3054'),
('4592', 'FWOONZj2BUgL23N8rh773eu2N', 'Support', 'الدعم', 'ar', '3055'),
('4593', 'Pw0fvZAZDXGS7kKYRWULtpof9', 'Reply', 'الرد', 'ar', '3056'),
('4594', 'cZ8AnoOavk2gpXbQ5K1ClFBO0', 'Author', 'مؤلف', 'ar', '3057'),
('4595', '26g2qk5sG2EQfrWLvCKQEmuU4', 'Post Comment', 'أضف تعليقا', 'ar', '3058'),
('4596', 'QUiv4N57Flm4hVzelTickDVnY', 'Write your comment...', 'اكتب تعليقك ...', 'ar', '3059'),
('4597', 'uYRHY4tjL5Pp0gvD7BKweJYLI', 'Contact the Author', 'تواصل مع المؤلف', 'ar', '3060'),
('4598', '0220rjAhiZT4I8EAeXrhVvFt1', 'Please', 'رجاء', 'ar', '3061'),
('4599', 'ctZQc3bUz7AuK80ef5JPDQEfA', 'to contact this author.', 'للاتصال بهذا المؤلف.', 'ar', '3062'),
('4600', 'Sk0LNceyyIZ6t8002mcQse9fy', 'Subject', 'موضوع', 'ar', '3063'),
('4601', 'NR4ltMNI9VlLXInccXGytTYGl', 'Submit Now', 'أرسل الآن', 'ar', '3064'),
('4602', 'IPEmQPuCIaLPstwbuoXwxO3js', 'This item is one of the', 'هذا البند هو واحد من', 'ar', '3065'),
('4603', 'KbkFczvkCYERh5ZCTrWqLGB96', 'You are able to download this item for free for a limited time. Updates and support are only available if you purchase this item.', 'يمكنك تنزيل هذا العنصر مجانًا لفترة محدودة. التحديثات والدعم متاحان فقط في حالة شراء هذا العنصر.', 'ar', '3066'),
('4604', 'FJ1sSTrc2HDiHvcgcNX5A5JzN', 'Download this file for free', 'قم بتنزيل هذا الملف مجانًا', 'ar', '3067'),
('4605', 'ApsARpYNPSUvBtuTxs7UHNCXq', 'Quality checked by', 'فحص الجودة من قبل', 'ar', '3068'),
('4606', 'bJ0QvxFwDcxKB8E8UOLyRx3oY', 'Future updates', 'التحديثات المستقبلية', 'ar', '3069'),
('4607', 'fVB1G3zakaUIdsj8ttysvI1Na', '6 months support from', 'دعم 6 شهور من', 'ar', '3070'),
('4608', 'j8Ax0pxDtvgy1s5mmi57LX9V9', '6 months not support from', '6 شهور لا يدعمها', 'ar', '3071'),
('4609', 'o5as7DiwypPUi0VDniEJcDqZQ', 'Regular License', 'الترخيص العادي', 'ar', '3072'),
('4610', 's0OyGlLRrgH0wjQdviGHCzyjx', 'Extended License', 'رخصة ممددة', 'ar', '3073'),
('4611', 'A9sYC8ZZx4BMWZy7bGfl6qmXO', 'Buy Now', 'اشتري الآن', 'ar', '3074'),
('4612', '5Zugtt8nW80dPSjZjXQmq7Grv', 'This item was featured on', 'تم عرض هذا العنصر في', 'ar', '3075'),
('4613', '4rp3POuwSMBlphJTAEI575Dqb', 'Author Information', 'معلومات الكاتب', 'ar', '3076'),
('4614', 'ZwHDwhJW15gFXZwEzeIaWqz7Z', 'Member since', 'عضو منذ', 'ar', '3077'),
('4615', 'xcvERxxRGGNoD8xi0is3yBoZE', 'View Profile', 'عرض الصفحة الشخصية', 'ar', '3078'),
('4616', 'Mv3ICiDpN4Z5PzvdFisNPHI73', 'Favorites', 'المفضلة', 'ar', '3079'),
('4617', 'N6JzD29Vetz2ZjWJNto9I97WE', 'Ratings', 'التقييمات', 'ar', '3080'),
('4618', 'tVJLdvsmDlA4mqUvTtOaUsQ47', 'Item Information', 'معلومات البند', 'ar', '3081'),
('4619', 'CnrqVlxJw820DcmJaLxPQHH9A', 'Released', 'صدر', 'ar', '3082'),
('4620', 'MTsRnSUxqOUN5vdjKANSWKfqL', 'Updated', 'محدث', 'ar', '3083'),
('4621', 'YUsbKSPW220IOwXM6TewTeCHD', 'Category', 'الفئة', 'ar', '3084'),
('4622', 'MLiAUhB1JsxtEJMwB8SWrAfyQ', 'Layered', 'الطبقات', 'ar', '3085'),
('4623', 'qiqCtS31XNCMCQnnpDmGiIDkW', 'Adobe CS Version', 'إصدار Adobe CS', 'ar', '3086'),
('4624', 'WN6EBdEUckKNcDp3E60dx9qax', 'More Related Items', 'المزيد من العناصر ذات الصلة', 'ar', '3087'),
('4625', 'Nw2IPy6dHI507HNlesvAZkSRb', 'Item Update Notifications', 'إعلامات تحديث العنصر', 'ar', '3088'),
('4626', 'USNnZDREFbFPmHc0LHll8vWSx', 'Your product item', 'عنصر المنتج الخاص بك', 'ar', '3089'),
('4627', 'EgkElCTHtN6T1V01NfsX90ON8', 'new updates are uploaded by vendor. please download your new updated item release.', 'يتم تحميل التحديثات الجديدة من قبل البائع. يرجى تنزيل إصدار العنصر المحدث الجديد.', 'ar', '3090'),
('4628', 'dzietEjDhNVwrTGF94OWK1X6n', 'Manage Item', 'إدارة العنصر', 'ar', '3091'),
('4629', 'oOnsyUSRBQmcqKt28VMFiyzyr', 'UnApproved', 'غير مقبول', 'ar', '3092'),
('4630', 'oTrHtCeJUwCbQRKhbf3657JeG', 'Thank You', 'شكرا جزيلا', 'ar', '3093'),
('4631', 'tXFdHZu71JI32Nf3e2PoSz16i', 'You are receiving this email newsletter subscription request', 'أنت تتلقى طلب الاشتراك في هذه الرسالة الإخبارية عبر البريد الإلكتروني', 'ar', '3094'),
('4632', 'HfubKhA7IRFDBPAHKtNBajHBj', 'Please confirm to this link', 'يرجى التأكيد على هذا الرابط', 'ar', '3095'),
('4633', '6iU5RRHuCxaJL8u88nxBpKTZJ', 'to activate your email subscription.', 'لتنشيط اشتراك البريد الإلكتروني الخاص بك.', 'ar', '3096'),
('4634', '1MxkvKz5xF31apqUFXW6xGaaz', 'Order Details', 'تفاصيل الطلب', 'ar', '3097'),
('4635', 'DNY6wEgmjrigNVA2WLdQClUzh', 'Print', 'طباعة', 'ar', '3098'),
('4636', 'iRNDFgD3eTGlvuC3HjsMG6GRn', 'Order info', 'معلومات الطلب', 'ar', '3099'),
('4637', 'jWLqLW7paJ1vFkdEYp6d1XjnE', 'Order', 'طلب', 'ar', '3100'),
('4638', 'L5Qz7NLq8XcknEztN9l8iXy2t', 'Purchased Date', 'تاريخ الشراء', 'ar', '3101'),
('4639', '7qidylV7yrKmsjt19KCf9YkZ6', 'Purchase Date', 'تاريخ الشراء', 'ar', '3102'),
('4640', 'eMl5cMSHTkSxD6Lsht1eQkKSX', 'Expiry Date', 'تاريخ انتهاء الصلاحية', 'ar', '3103'),
('4641', 'JGlfYV0Pyf9abPQOzzXXi7s7s', 'Item', 'بند', 'ar', '3104'),
('4642', '3kisoofFBRkdiWV0qwD6yLJOv', 'License', 'رخصة', 'ar', '3105'),
('4643', 'sqqGayeo0uGUvExsyWwwpMR5H', 'Earnings', 'أرباح', 'ar', '3106'),
('4644', 'qDpyRfAIHAYuXkgX3Aj8xoRKF', 'Sub Total', 'المجموع الفرعي', 'ar', '3107'),
('4645', 'gnvogngTCsfFBJ1pFTmgeJhnJ', 'Remove frame', 'إزالة الإطار', 'ar', '3108'),
('4646', 'BLbRUspDu3paW2tZF2gEYUTBp', 'Profile Settings', 'إعدادات الملف الشخصي', 'ar', '3109'),
('4647', 'IUium9ep9Qmnxhqth5ZNdhWni', 'Profile Information', 'معلومات الملف الشخصي', 'ar', '3110'),
('4648', 'HdMCaDmrmTQjCbmX4EhfmodIh', 'Username', 'اسم المستخدم', 'ar', '3111'),
('4649', 'XFsCJ3pFArRzQtRE7K5jmcgUa', 'Your Marketplace URL', 'عنوان URL الخاص بالسوق', 'ar', '3112'),
('4650', '57TefZqd8c4oMaq6POmDtNbFC', 'Password', 'كلمه السر', 'ar', '3113'),
('4651', 'AQ2oi46uqUvi5i91YYrOqn486', 'Confirm Password', 'تأكيد كلمة المرور', 'ar', '3114'),
('4652', 'q38e8q3XwEufvWtJUa5yNO1ia', 'Website', 'موقع الكتروني', 'ar', '3115'),
('4653', 'BRYpOsLmIgxopIQaqeQcL8blR', 'Country', 'بلد', 'ar', '3116'),
('4654', 'viKKW7bqr5sVcJDs0g05lj4xb', 'Available Freelance Work?', 'متاح عمل مستقل؟', 'ar', '3117'),
('4655', '7JbhDhwZIOhzyMDHwGx9Lyjrm', 'Display Country Badge?', 'عرض شارة البلد؟', 'ar', '3118'),
('4656', 'InCmjaPyzHJjCxOl3iUa8MNtB', 'Exclusive Author?', 'مؤلف حصري؟', 'ar', '3119'),
('4657', 'fHJHAnd3iYLpDe7HyD3XWFFNC', 'if selected', 'إذا تم تحديده', 'ar', '3120'),
('4658', 'YdkXj9wBbYsaH8mfDfNb53f0Z', 'you will get high earning', 'ستحصل على أرباح عالية', 'ar', '3121'),
('4659', 'rB7FSwQMAM53QoxvIhA7XXqvO', 'Profile Heading', 'عنوان الملف', 'ar', '3122'),
('4660', 'ELJrJhH3xuR3Cy2vpFd5lvdjT', 'Ex: Web Development Service', 'مثال: خدمة تطوير الويب', 'ar', '3123'),
('4661', 'LIfCp1GLwGFs4YoFW0i1EeUsu', 'About', 'حول', 'ar', '3124'),
('4662', 'rlzmvDbbfSrdpBJgOoKpJbwBv', 'Short brief about yourself or your account...', 'موجز قصير عن نفسك أو عن حسابك ...', 'ar', '3125'),
('4663', 'sswGcNQI83qsi9CzyNhz9eZAp', 'Profile Image & Cover Image', 'صورة الملف الشخصي وصورة الغلاف', 'ar', '3126'),
('4664', '42aaDLoBcTlLQ2Vmesz2fPo9i', 'Profile Image', 'صورة الملف الشخصي', 'ar', '3127'),
('4665', '4rB2CLNNKlbuH2Tmj1R0iQrwD', 'Cover Image', 'صورة الغلاف', 'ar', '3128'),
('4666', 'UJvzGHBIrXCgrbNPKh9YPfUTH', 'Social Profiles', 'لمحات اجتماعية', 'ar', '3129'),
('4667', 'kiScuJ9UUPQ6pGDX0hCZkVvhK', 'Email Settings', 'إعدادات البريد الإلكتروني', 'ar', '3130'),
('4668', 'G93fWX31GnJIyPxyNuxuc9oTs', 'Send an email when an item I\'ve purchased is updated', 'إرسال بريد إلكتروني عند تحديث عنصر اشتريته', 'ar', '3131'),
('4669', 'tKOMoGvznTvyOmGo8cyFta05C', 'Item Comment Notifications', 'إشعارات تعليق العنصر', 'ar', '3132'),
('4670', 'R5414EMjKs7gQZ2c1DHwX117Q', 'Send me an email when someone comments on one of my items', 'أرسل لي رسالة بريد إلكتروني عندما يعلق شخص ما على أحد عناصري', 'ar', '3133'),
('4671', 'AFYPmoIMiupnxfzTzXHBFl9W0', 'Item Review Notifications', 'إخطارات مراجعة البند', 'ar', '3134'),
('4672', 'D3JetymxWSlOk7Ex9peKNdsCY', 'Send me an email when my items are approved or rejected', 'أرسل لي رسالة بريد إلكتروني عند الموافقة على عناصري أو رفضها', 'ar', '3135'),
('4673', 'uuFtMPXf0IrAofrnSbU7zxUhF', 'Buyer Review Notifications', 'إخطارات مراجعة المشتري', 'ar', '3136'),
('4674', '3lS45FkXUxd1glQOu2idnJkjj', 'Send me an email when someone leaves a review with their rating', 'أرسل لي رسالة بريد إلكتروني عندما يترك شخص ما تقييمه', 'ar', '3137'),
('4675', 'FlGsrJpPymZZ2cpu2EEgODaqm', 'Update', 'تحديث', 'ar', '3138'),
('4676', 'mrQEUvkcN9N66Y3Tvj96lQfpE', 'Additional Info', 'معلومات إضافية', 'ar', '3139'),
('4677', 'PVrjRvsZ0oZVLyxU2aurbBN4m', 'Download', 'تحميل', 'ar', '3140'),
('4678', 'IHA9ouSNSdg51krgQl4AKf9HF', 'Licence', 'رخصة', 'ar', '3141'),
('4679', 'grQMKeOB1jEaFp2WM5YJot2e6', 'Vendor', 'بائع', 'ar', '3142'),
('4680', 'r6B7Xh0dJiorpikpXIl39wovb', 'Refund Request', 'طلب ارجاع', 'ar', '3143'),
('4681', 'uuHb9aXgQ9d4i0FihvmsaZS0t', 'Download Item', 'تنزيل العنصر', 'ar', '3144'),
('4682', 'dsPfbZc08kwCygGOjBYalpBPC', 'Rate Now', 'قيم الآن', 'ar', '3145'),
('4683', 'MOcXMXItaaJemfsH5OFEGhyTL', 'Refund Reason', 'سبب رد الأموال', 'ar', '3146');
INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
('4684', 'cyAq0rfjLH1rGjvOf8sKTH8Yv', 'Item is not as described or the item does not work the way it should', 'العنصر ليس كما هو موضح أو أن العنصر لا يعمل بالطريقة التي ينبغي أن يعمل بها', 'ar', '3147'),
('4685', 'lWNtsu7buIDI3y4LARW7iMslb', 'Item has a security vulnerability', 'العنصر له ثغرة أمنية', 'ar', '3148'),
('4686', '82hLG0ixCXoygCcsEvWO1QzHU', 'Item support is promised but not provided', 'وعد دعم العنصر ولكن لم يتم توفيره', 'ar', '3149'),
('4687', 'opnWsu5gOISSSe1fNCnDsB7mO', 'Item support extension not used', 'ملحق دعم العنصر غير مستخدم', 'ar', '3150'),
('4688', 'nhaHcYlvkKS9bIrosP3yk5QuH', 'Items that have not been downloaded', 'العناصر التي لم يتم تنزيلها', 'ar', '3151'),
('4689', 'XOWExWnbxo4Hgsyg3p3Cb0x96', 'Submit Request', 'تقديم الطلب', 'ar', '3152'),
('4690', 'hWt7W61zBFYc9pld1vlPf8Qg0', 'Rating this Item', 'تصنيف هذا البند', 'ar', '3153'),
('4691', 'ZcSF3qjl9HLXYRbYbpsXTGcpZ', 'Your Rating', 'تقييمك', 'ar', '3154'),
('4692', '5qjtsHAjOXEwnytJJYArlDXoq', 'Rating Reason', 'سبب التقييم', 'ar', '3155'),
('4693', 'XbvSRvgbYjpPxu5ELsLI7arHx', 'Design Quality', 'جودة التصميم', 'ar', '3156'),
('4694', 'cLDLX7OcX8r5IYQ5MPIjj3UL4', 'Customization', 'التخصيص', 'ar', '3157'),
('4695', 'NVWX4Gg7ZMWzeShj5LIlTrqfz', 'Performance', 'أداء', 'ar', '3158'),
('4696', '5ib5g4wtZ7IhCV10VAGRFGgsz', 'Well Documented', 'وثق بشكل جيد', 'ar', '3159'),
('4697', 'Pq7nfQpEOBLI3VKm9qbqcU5At', 'Your review will be ​publicly visible​ and the vendor may reply to your comments.', 'ستكون مراجعتك مرئية بشكل عام ويمكن للبائع الرد على تعليقاتك.', 'ar', '3160'),
('4698', 'vlWZLHWa8zFclA2OmIpASl2vR', 'Submit Rating', 'إرسال التقييم', 'ar', '3161'),
('4699', 'CoqgcUf8WbRsujgk6mIOPUxdP', 'Item Rating & Reviews', 'تصنيف السلعة والمراجعات', 'ar', '3162'),
('4700', 'tN9bdYTzQffrEkjpa5MhsnkQ0', 'Rating', 'تقييم', 'ar', '3163'),
('4701', 'tbVjMhoEzH4Ag6J9QXL7g5vgp', 'Refund Request Received', 'تم تلقي طلب رد الأموال', 'ar', '3164'),
('4702', 'TmlRcoj2yQIeE5jCB7e1TRfOj', 'Verify Your Email Address', 'تحقق من عنوان بريدك الإلكتروني', 'ar', '3165'),
('4703', '0vf8OqId1dzfPv7OXV03ajmXM', 'Your registered email-id is', 'معرف البريد الإلكتروني المسجل الخاص بك هو', 'ar', '3166'),
('4704', 'UqK0pbxOlFvQIuXOeupcej30j', 'Please click on the below link to verify your email account', 'يرجى النقر على الرابط أدناه للتحقق من حساب بريدك الإلكتروني', 'ar', '3167'),
('4705', 'mg9IG5eZmqXf3rEgURPEARezd', 'Verify Email', 'التحقق من البريد الإلكتروني', 'ar', '3168'),
('4706', 'KSVj3gGzUVe1FRuOWamOnW22o', 'Total Purchases', 'إجمالي المشتريات', 'ar', '3169'),
('4707', 'etIDQPQv97ZNzuUsOIbIo5uWN', 'Total Credited', 'إجمالي دائن', 'ar', '3170'),
('4708', 'phR0ykprlcMwQCZpDac9Blo72', 'Total Withdraw', 'إجمالي السحب', 'ar', '3171'),
('4709', '6VznVxhOndSQIWxNDX7Xx5rxr', 'Date', 'تاريخ', 'ar', '3172'),
('4710', 'KdHRCqkYkvfS308eZ7RCQMAEP', 'Order ID', 'رقم التعريف الخاص بالطلب', 'ar', '3173'),
('4711', 'K2C0tqPKqCYcPpuyNssuAYIR8', 'Payment ID', 'معرف الدفع', 'ar', '3174'),
('4712', 'h9tZE2ijWKF6A5VvP2cA6oSCU', 'Payment Type', 'نوع الدفع', 'ar', '3175'),
('4713', 'qYHQfBwhqCntinS4SeCqc9ZNq', 'Earning', 'كسب', 'ar', '3176'),
('4714', 'QBHnlSRAcbQ6BT4yavH9IZao5', 'view', 'رأي', 'ar', '3177'),
('4715', 'N4Ks9J6CEPVRx5SmfTXNUduGo', 'Shop', 'متجر', 'ar', '3178'),
('4716', '0odQ1n3yCkWufIYiSXca2HuHX', 'Price : Low to High', 'السعر من الارخص للاعلى', 'ar', '3179'),
('4717', 'iMEifFocGmjxvwsAcvUcTI1EC', 'Price : High to low', 'السعر الاعلى الى الادنى', 'ar', '3180'),
('4718', 'cLgnfwLT3gggnFQcdU1Y4Zwfj', 'Popular Items', 'العناصر الشعبية', 'ar', '3181'),
('4719', 'n5f7O3exPKoMQXKko0d1hu75x', 'New Items', 'عناصر جديدة', 'ar', '3182'),
('4720', 'nJiC3zsQsvMTS1z1ObJOHothR', 'Filter Products', 'تصفية المنتجات', 'ar', '3183'),
('4721', 'iFFUJdDMcuplWzkmhoXaLFOxq', 'No results found', 'لم يتم العثور على نتائج', 'ar', '3184'),
('4722', 'Ng1paBbspAqQ2WkUUCD76tkRm', 'Leave A Reply', 'اترك رد', 'ar', '3185'),
('4723', 'D4ZBdUICnrCIV8OAHCa5RxARL', 'Your text here...', 'نصك هنا...', 'ar', '3186'),
('4724', 'IjuCtvdCceN7OGMnLhlshsiz9', 'Sign Up Now', 'أفتح حساب الأن', 'ar', '3187'),
('4725', 'QmDTQuA5YsMyRQqmlnISuWjEF', 'Success', 'نجاح', 'ar', '3188'),
('4726', 'T7rjg9sxaSk71iXg6qPwv2nkz', 'Your payment transaction was successful. Thank You!', 'كانت معاملة الدفع الخاصة بك ناجحة. شكرا جزيلا!', 'ar', '3189'),
('4727', 'n2DaTgesX1ImFtXzBC8vC41Mc', 'Transaction ID', 'رقم المعاملة', 'ar', '3190'),
('4728', '7bhMQRTEk7I9ileKqvB7yCutS', 'Contact Support', 'اتصل بالدعم', 'ar', '3191'),
('4729', 'zYRe3KWgdIdnPIqb9Qcgpjxk6', 'Contact Us', 'اتصل بنا', 'ar', '3192'),
('4730', 'OPOeftZmFMuWUloTRjvSrLca1', 'Message sent from', 'تم إرسال الرسالة من', 'ar', '3193'),
('4731', 'X01D6xOnJbKkc7jEAU4Heu2zT', 'New message received', 'تم استلام رسالة جديدة', 'ar', '3194'),
('4732', 'wBhFVdIXYRfsfT1zXuryz09pj', 'Total Items', 'إجمالي العناصر', 'ar', '3195'),
('4733', 'TXNVncUTLppQVcSssiNVW4Cd4', 'Total Ratings', 'إجمالي التقييمات', 'ar', '3196'),
('4734', 'tJgh3Us5zmR81p0UpYrINBaiK', 'Followers', 'متابعون', 'ar', '3197'),
('4735', 'UwVAEXZMCwCb6JZdx3Cd2rfx8', 'Follower', 'تابع', 'ar', '3198'),
('4736', 'LEoEKUS8Fhm93hjbXGN7ADlaH', 'Location', 'موقعك', 'ar', '3199'),
('4737', 'rkamlARdOldBc0pGtk8g3kHb9', 'Following', 'التالية', 'ar', '3200'),
('4738', 'Fy7Hf4iqZxXnDtUefmNWRyuf5', 'Followings', 'المتابعات', 'ar', '3201'),
('4739', '6YxDzv8hQauzM0PEPIlIUWS8Z', 'Follow', 'إتبع', 'ar', '3202'),
('4740', 'Ky2IsHcriOwyciGOrslr6fRhh', 'UnFollow', 'الغاء المتابعة', 'ar', '3203'),
('4741', 'UyNyUGfgKzsuR8NCaJbrlaoQn', 'Affiliate Referral Url', 'الإحالة الإحالة التابعة لها', 'ar', '3204'),
('4742', 'LSIE6BO28SkHgy026cFY5oLwj', 'Copy Url', 'إنسخ الرابط', 'ar', '3205'),
('4743', 'J2YSwAK2cwhEMnUm0R4BdbLHn', 'Social Links', 'روابط اجتماعية', 'ar', '3206'),
('4744', '0E2TXbz6AZfZkmnJTNlhdLUs5', 'Customer Reviews', 'آراء المستهلكين', 'ar', '3207'),
('4745', 'KkusKGdEHTacw7lOr96SXKuoR', 'Available for Freelance work', 'متاح للعمل الحر', 'ar', '3208'),
('4746', 'VIzQAtcZCcUA4wkJN7EOiUM1k', 'Your message...', 'رسالتك...', 'ar', '3209'),
('4747', 'oHdFllP2vJ35BxFEes2tbiKy1', 'send message', 'إرسال رسالة', 'ar', '3210'),
('4748', 'hCSQrSCE9n2HM2WkKsSy94Ro9', 'Withdrawal', 'انسحاب', 'ar', '3211'),
('4749', 'OjjM6IbaKh6wyT51OZ05Q0I9k', 'Minimum withdrawal amount is', 'الحد الأدنى لمبلغ السحب هو', 'ar', '3212'),
('4750', 'vUXbcbU0P9jBfSkEfy1GpNOM2', 'Withdrawal Options', 'خيارات الانسحاب', 'ar', '3213'),
('4751', '04WGRaQxDG7WMXl53XLdpWE2c', 'Paypal Email ID', 'معرف البريد الإلكتروني باي بال', 'ar', '3214'),
('4752', 'wJzmU1jteXAwqFthrGE5WaKDO', 'Stripe Email ID', 'معرف شريط البريد الإلكتروني', 'ar', '3215'),
('4753', 'Tvyn6NB1AjmHNCz6Em0GPJhxJ', 'Withdraw Amount', 'سحب المبلغ', 'ar', '3216'),
('4754', 'OsWH5fSdmKCK6UGgKcvk0wOmT', 'How much amount would you like to Withdraw?', 'كم المبلغ الذي ترغب في سحبه؟', 'ar', '3217'),
('4755', 'NKcdWSqm0hezEZ800zcCR8zSw', 'Available balance', 'الرصيد المتوفر', 'ar', '3218'),
('4756', 'BYO3vs6CLVsR5QVlHMP13BMTG', 'Submit Withdrawal', 'تقديم الانسحاب', 'ar', '3219'),
('4757', '8iKUCAt3L1kXdEIZfHDu4OYWf', 'Withdrawal History', 'تاريخ السحب', 'ar', '3220'),
('4758', 'kVx24asvxKMfwb7G0lIY94vAG', 'Withdrawal Option', 'خيار الانسحاب', 'ar', '3221'),
('4759', 'vGTMjRTvnW7jNcvJ4FXriEJAR', 'Paypal Email', 'بريد باي بال', 'ar', '3222'),
('4760', 'aWuqopc6Q1WizlcvIrbwVPjoV', 'Stripe Email', 'شريط البريد الإلكتروني', 'ar', '3223'),
('4761', 'FhqWaqZSgWgOJttN8eb53O2LI', 'Amount', 'كمية', 'ar', '3224'),
('4762', 'I7CFVRh7288SXwe8nRPE59LPp', 'Login', 'تسجيل الدخول', 'ar', '3225'),
('4763', 'B04B4YHU9jgtA0ZZ4BvZ2VrII', 'Welcome Back', 'مرحبا بعودتك', 'ar', '3226'),
('4764', 'oOgxsITJbkAmi7oatMR0IRk4c', 'You can sign in with your username', 'يمكنك تسجيل الدخول باسم المستخدم الخاص بك', 'ar', '3227'),
('4765', 'Ub0YzlPzfIUxg2Jbn7z2ZxGrX', 'E-Mail Address / Username', 'عنوان البريد الإلكتروني / اسم المستخدم', 'ar', '3228'),
('4766', 'ZGHfTqdgkViodjLG9irivyJz1', 'Remember Me', 'تذكرنى', 'ar', '3229'),
('4767', 'kAFT2hVQT4ZLppvC4tIagCqAV', 'Don\'t have an', 'لا تملك', 'ar', '3230'),
('4768', 'EZcGxHIUnbRaQG32FIblP9se7', 'account', 'الحساب', 'ar', '3231'),
('4769', '312qZcljA662a8gN0B7I0OZZh', 'Login with your social media account', 'تسجيل الدخول باستخدام حساب وسائل التواصل الاجتماعي الخاص بك', 'ar', '3232'),
('4770', 'yw6J14fAecxyzl0q3yC6p69Tv', 'Register', 'تسجيل', 'ar', '3233'),
('4771', 'KSBAtIYvjaPfqLFE79sXxtyPf', 'Create Your Account', 'أنشئ حسابك', 'ar', '3234'),
('4772', 'inTDBh00XkbSgkF4eabuIQWJC', 'Please fill the following fields with appropriate information to register a new Marketplace account.', 'يرجى ملء الحقول التالية بالمعلومات المناسبة لتسجيل حساب جديد في Marketplace.', 'ar', '3236'),
('4773', 'FlxDmg3D0DvzxUnBD33kfUBzg', 'Your Name', 'اسمك', 'ar', '3237'),
('4774', 'egWw1jweKEUotmP0JXjCyUsoI', 'Enter your name', 'أدخل أسمك', 'ar', '3238'),
('4775', 'e5qxYdjEiLtFGttFKeyANdafv', 'Enter your username', 'أدخل اسم المستخدم الخاص بك', 'ar', '3239'),
('4776', 'qbC5ilMo3YmCj92gJrjLcTKBE', 'E-Mail Address', 'عنوان البريد الالكترونى', 'ar', '3240'),
('4777', 'wOVP282kAtCxeE5PpHPWpZ1lt', 'Enter your email address', 'أدخل عنوان بريدك الالكتروني', 'ar', '3241'),
('4778', 'QVKMBQOdcUWtn7ssPNbsVLuQk', 'Enter your password', 'ادخل رقمك السري', 'ar', '3242'),
('4779', 'wyoglbJHnmOh2EspT5nQgoggS', 'Enter your confirm password', 'أدخل كلمة المرور الخاصة بك', 'ar', '3243'),
('4780', '1ZJ5zaRqqr31tGrrOURY6pqAP', 'Captcha', 'كلمة التحقق', 'ar', '3244'),
('4781', 'p8Nh8byE6ZzLaZ61By0tBJ9mX', 'Already have an account?', 'هل لديك حساب؟', 'ar', '3245'),
('4782', 'WlZRazbHjISFeggtf3tVpw2Ry', 'Payment Confirmation', 'Payment Confirmation', 'en', '0'),
('4783', '1qUsjAmV5ocJTVGTilrp4IsFe', 'Total Price', 'Total Price', 'en', '0'),
('4784', 'u6SauAyF9zWN3vXkmkkXq6jFj', 'Credit Card Number', 'Credit Card Number', 'en', '0'),
('4785', 'WXdfnpqv1mfQBOnGUbrcB0vVS', 'Enter card number', 'Enter card number', 'en', '0'),
('4786', 'KWQcUN0W6q80UnFe4kDf3cfGD', 'Expiry Month', 'Expiry Month', 'en', '0'),
('4787', 'm0VVSNQ6kFyJmpTDXTQlNjSHu', 'Expiry Year', 'Expiry Year', 'en', '0'),
('4788', 'jtpZC1c3qDvf7mgWUgfjyrq4I', 'CVV', 'CVV', 'en', '0'),
('4789', '6Wm3Bi2rzjI0sce4BFzPngMsh', 'Pay Now', 'Pay Now', 'en', '0'),
('4790', 'nBHpWeZ0TjrUNFEHHG1qQLmZ6', 'MM', 'MM', 'en', '0'),
('4791', 'Ksje3dJY6O2IOkOsfvlTrkTMd', 'YYYY', 'YYYY', 'en', '0'),
('4792', 'WlZRazbHjISFeggtf3tVpw2Ry', 'Payment Confirmation', 'Confirmación de pago', 'es', '4782'),
('4793', 'WlZRazbHjISFeggtf3tVpw2Ry', 'Payment Confirmation', 'تأكيد الدفعة', 'ar', '4782'),
('4794', '1qUsjAmV5ocJTVGTilrp4IsFe', 'Total Price', 'Precio total', 'es', '4783'),
('4795', '1qUsjAmV5ocJTVGTilrp4IsFe', 'Total Price', 'السعر الكلي', 'ar', '4783'),
('4796', 'u6SauAyF9zWN3vXkmkkXq6jFj', 'Credit Card Number', 'Número de tarjeta de crédito', 'es', '4784'),
('4797', 'u6SauAyF9zWN3vXkmkkXq6jFj', 'Credit Card Number', 'رقم بطاقه الائتمان', 'ar', '4784'),
('4798', 'WXdfnpqv1mfQBOnGUbrcB0vVS', 'Enter card number', 'Ingrese el número de tarjeta', 'es', '4785'),
('4799', 'WXdfnpqv1mfQBOnGUbrcB0vVS', 'Enter card number', 'أدخل رقم البطاقة', 'ar', '4785'),
('4800', 'KWQcUN0W6q80UnFe4kDf3cfGD', 'Expiry Month', 'Meses de vencimiento', 'es', '4786'),
('4801', 'KWQcUN0W6q80UnFe4kDf3cfGD', 'Expiry Month', 'شهر انتهاء الصلاحية', 'ar', '4786'),
('4802', 'm0VVSNQ6kFyJmpTDXTQlNjSHu', 'Expiry Year', 'Año de caducidad', 'es', '4787'),
('4803', 'm0VVSNQ6kFyJmpTDXTQlNjSHu', 'Expiry Year', 'سنة انتهاء الصلاحية', 'ar', '4787'),
('4804', 'jtpZC1c3qDvf7mgWUgfjyrq4I', 'CVV', 'CVV', 'es', '4788'),
('4805', 'jtpZC1c3qDvf7mgWUgfjyrq4I', 'CVV', 'CVV', 'ar', '4788'),
('4806', '6Wm3Bi2rzjI0sce4BFzPngMsh', 'Pay Now', 'Pagar ahora', 'es', '4789'),
('4807', '6Wm3Bi2rzjI0sce4BFzPngMsh', 'Pay Now', 'ادفع الآن', 'ar', '4789'),
('4808', 'nBHpWeZ0TjrUNFEHHG1qQLmZ6', 'MM', 'MM', 'es', '4790'),
('4809', 'nBHpWeZ0TjrUNFEHHG1qQLmZ6', 'MM', 'مم', 'ar', '4790'),
('4810', 'Ksje3dJY6O2IOkOsfvlTrkTMd', 'YYYY', 'YYYY', 'es', '4791'),
('4811', 'Ksje3dJY6O2IOkOsfvlTrkTMd', 'YYYY', 'YYYY', 'ar', '4791'),
('4812', 'BeNPQialv9gbbPGNtpN4RC1tN', 'Waiting for payment approval', 'Waiting for payment approval', 'en', '0'),
('4813', 'rOcsdihFS35juMsw9YZZVH089', 'Your details has been sent. Once received payment will confirm your order', 'Your details has been sent. Once received payment will confirm your order', 'en', '0'),
('4814', 'IE0E5xAL60LnI52Rodlbx633O', 'Your Purchase id', 'Your Purchase id', 'en', '0'),
('4815', 'ftLmdRw2JXX5MdqsdzY1fiWHr', 'Below are you amount transaction details', 'Below are you amount transaction details', 'en', '0'),
('4816', 'S4gdbLTsr6vxgQ2Df2o6cwWYt', 'Bank Details', 'Bank Details', 'en', '0'),
('4817', 'BeNPQialv9gbbPGNtpN4RC1tN', 'Waiting for payment approval', 'Esperando la aprobación del pago', 'es', '4812'),
('4818', 'BeNPQialv9gbbPGNtpN4RC1tN', 'Waiting for payment approval', 'في انتظار الموافقة على الدفع', 'ar', '4812'),
('4819', 'rOcsdihFS35juMsw9YZZVH089', 'Your details has been sent. Once received payment will confirm your order', 'Se han enviado tus datos. Una vez recibido el pago confirmará su pedido', 'es', '4813'),
('4820', 'rOcsdihFS35juMsw9YZZVH089', 'Your details has been sent. Once received payment will confirm your order', 'تم إرسال التفاصيل الخاصة بك. بمجرد استلام الدفع سوف يؤكد طلبك', 'ar', '4813'),
('4821', 'IE0E5xAL60LnI52Rodlbx633O', 'Your Purchase id', 'Tu ID de compra', 'es', '4814'),
('4822', 'IE0E5xAL60LnI52Rodlbx633O', 'Your Purchase id', 'معرف الشراء الخاص بك', 'ar', '4814'),
('4823', 'ftLmdRw2JXX5MdqsdzY1fiWHr', 'Below are you amount transaction details', 'A continuación se muestran los detalles de la transacción del monto', 'es', '4815'),
('4824', 'ftLmdRw2JXX5MdqsdzY1fiWHr', 'Below are you amount transaction details', 'فيما يلي تفاصيل معاملة المبلغ', 'ar', '4815'),
('4825', 'S4gdbLTsr6vxgQ2Df2o6cwWYt', 'Bank Details', 'Detalles del banco', 'es', '4816'),
('4826', 'S4gdbLTsr6vxgQ2Df2o6cwWYt', 'Bank Details', 'التفاصيل المصرفية', 'ar', '4816'),
('4827', 'LixHbIOyoy3sW0RSoxNSYKU0P', 'User Type', 'User Type', 'en', '0'),
('4828', 'LixHbIOyoy3sW0RSoxNSYKU0P', 'User Type', 'Tipo de usuario', 'es', '4827'),
('4829', 'LixHbIOyoy3sW0RSoxNSYKU0P', 'User Type', 'نوع المستخدم', 'ar', '4827'),
('4830', 'Aik2UFRmVu3WfCbrFSoeDdNta', 'Customer', 'Customer', 'en', '0'),
('4831', 'Aik2UFRmVu3WfCbrFSoeDdNta', 'Customer', 'Cliente', 'es', '4830'),
('4832', 'Aik2UFRmVu3WfCbrFSoeDdNta', 'Customer', 'الزبون', 'ar', '4830'),
('4833', '2z6hL9d1UzNiAmtzV6fa9Ngbe', 'Become a vendor?', 'Become a vendor?', 'en', '0'),
('4834', '2z6hL9d1UzNiAmtzV6fa9Ngbe', 'Become a vendor?', 'Convertirse en proveedor?', 'es', '4833'),
('4835', '2z6hL9d1UzNiAmtzV6fa9Ngbe', 'Become a vendor?', 'افتح متجرك في سوق البلد؟', 'ar', '4833'),
('4836', 'WHEV5EOcUJRYUObJiNEfnlV0s', 'if checked you will change to vendor account', 'if checked you will change to vendor account', 'en', '0'),
('4837', 'WHEV5EOcUJRYUObJiNEfnlV0s', 'if checked you will change to vendor account', 'si está marcado, cambiará a una cuenta de proveedor', 'es', '4836'),
('4838', 'WHEV5EOcUJRYUObJiNEfnlV0s', 'if checked you will change to vendor account', 'إذا تم تحديده فسوف تتغير إلى حساب البائع', 'ar', '4836'),
('4839', 'Du9Xh0QvCpOdhLFEGyn7BEmON', 'Browse All Items', 'Browse All Items', 'en', '0'),
('4840', 'Du9Xh0QvCpOdhLFEGyn7BEmON', 'Browse All Items', 'Examinar todos los artículos', 'es', '4839'),
('4841', 'Du9Xh0QvCpOdhLFEGyn7BEmON', 'Browse All Items', 'تصفح كافة العناصر', 'ar', '4839'),
('4842', 'sMxRau89t2TExrb4EjI5msmeP', 'New Releases', 'New Releases', 'en', '0'),
('4843', 'sMxRau89t2TExrb4EjI5msmeP', 'New Releases', 'Nuevos lanzamientos', 'es', '4842'),
('4844', 'sMxRau89t2TExrb4EjI5msmeP', 'New Releases', 'الإصدارات الجديدة', 'ar', '4842'),
('4845', 'krmgiT2SwKg2RkyjoJIeibnch', 'Our Blog', 'Our Blog', 'en', '0'),
('4846', 'krmgiT2SwKg2RkyjoJIeibnch', 'Our Blog', 'Nuestro blog', 'es', '4845'),
('4847', 'krmgiT2SwKg2RkyjoJIeibnch', 'Our Blog', 'مدونتنا', 'ar', '4845'),
('4848', 'TI7QhGzPks4cGhgInJuDQowF4', 'Ream more posts', 'Read more posts', 'en', '0'),
('4849', 'TI7QhGzPks4cGhgInJuDQowF4', 'Ream more posts', 'Leer más publicaciones', 'es', '4848'),
('4850', 'TI7QhGzPks4cGhgInJuDQowF4', 'Ream more posts', 'اقرأ المزيد من المشاركات', 'ar', '4848'),
('4851', 'wL9MOrTywkaWnK3hVMhqCUtEA', 'Sort By', 'Sort By', 'en', '0'),
('4852', 'wL9MOrTywkaWnK3hVMhqCUtEA', 'Sort By', 'Ordenar por', 'es', '4851'),
('4853', 'wL9MOrTywkaWnK3hVMhqCUtEA', 'Sort By', 'ترتيب حسب', 'ar', '4851'),
('4854', 'F5AXGcAa2CT9FarFFvQ5mfp7D', 'Default', 'Default', 'en', '0'),
('4855', 'F5AXGcAa2CT9FarFFvQ5mfp7D', 'Default', 'Defecto', 'es', '4854'),
('4856', 'F5AXGcAa2CT9FarFFvQ5mfp7D', 'Default', 'إفتراضي', 'ar', '4854'),
('4857', '0c2lFwJLmuYdKjdyamtOdgjGa', 'Search', 'Search', 'en', '0'),
('4858', '0c2lFwJLmuYdKjdyamtOdgjGa', 'Search', 'Buscar', 'es', '4857'),
('4859', '0c2lFwJLmuYdKjdyamtOdgjGa', 'Search', 'بحث', 'ar', '4857'),
('4860', '5QiKLIi6mH3c1sjNTqZtFENmu', 'Video', 'Video', 'en', '0'),
('4861', '5QiKLIi6mH3c1sjNTqZtFENmu', 'Video', 'Vídeo', 'es', '4860'),
('4862', '5QiKLIi6mH3c1sjNTqZtFENmu', 'Video', 'فيديو', 'ar', '4860'),
('4863', 'yHKJYEuNqLSpBt1fCw4gSJGZj', '12 months support from', '12 months support from', 'en', '0'),
('4864', 'yHKJYEuNqLSpBt1fCw4gSJGZj', '12 months support from', '12 meses de soporte desde', 'es', '4863'),
('4865', 'yHKJYEuNqLSpBt1fCw4gSJGZj', '12 months support from', 'دعم لمدة 12 شهرًا من', 'ar', '4863'),
('4866', 'GgS6EIJGFUSUZlMB9o0uEVAZv', 'Show password', 'Show password', 'en', '0'),
('4867', 'GgS6EIJGFUSUZlMB9o0uEVAZv', 'Show password', 'Mostrar contraseña', 'es', '4866'),
('4868', 'GgS6EIJGFUSUZlMB9o0uEVAZv', 'Show password', 'عرض كلمة المرور', 'ar', '4866'),
('4869', 'MMLcT5HwDvsmtEK9U9aYwvHbP', 'With social account', 'With social account', 'en', '0'),
('4870', 'MMLcT5HwDvsmtEK9U9aYwvHbP', 'With social account', 'Con cuenta social', 'es', '4869'),
('4871', 'MMLcT5HwDvsmtEK9U9aYwvHbP', 'With social account', 'مع حساب التواصل الاجتماعي', 'ar', '4869'),
('4872', 'bmDHGpJYoaGXtlMHlXe3BrNos', 'Or using login form below', 'Or using login form below', 'en', '0'),
('4873', 'bmDHGpJYoaGXtlMHlXe3BrNos', 'Or using login form below', 'O usando el formulario de inicio de sesión a continuación', 'es', '4872'),
('4874', 'bmDHGpJYoaGXtlMHlXe3BrNos', 'Or using login form below', 'أو باستخدام نموذج تسجيل الدخول أدناه', 'ar', '4872'),
('4875', '1Gyv9ydfa4TsGPleVnUNM6l1P', 'Don\'t have an account?', 'Don\'t have an account?', 'en', '0'),
('4876', '1Gyv9ydfa4TsGPleVnUNM6l1P', 'Don\'t have an account?', '¿No tienes una cuenta?', 'es', '4875'),
('4877', '1Gyv9ydfa4TsGPleVnUNM6l1P', 'Don\'t have an account?', 'ليس لديك حساب؟', 'ar', '4875'),
('4878', 'lmXh48ptcLTMCTshNsVwKyWk0', 'Account menu', 'Account menu', 'en', '0'),
('4879', 'lmXh48ptcLTMCTshNsVwKyWk0', 'Account menu', 'Menú cuenta', 'es', '4878'),
('4880', 'lmXh48ptcLTMCTshNsVwKyWk0', 'Account menu', 'قائمة الحساب', 'ar', '4878'),
('4881', 'RrYTdGsgVGAtfbH1zyclAYPvT', 'View Product', 'View Product', 'en', '0'),
('4882', 'RrYTdGsgVGAtfbH1zyclAYPvT', 'View Product', 'Ver el producto', 'es', '4881'),
('4883', 'RrYTdGsgVGAtfbH1zyclAYPvT', 'View Product', 'عرض المنتج', 'ar', '4881'),
('4884', 'LVo2v2Li6rdaZGbbgq2fW7J4i', 'Back to shopping', 'Back to shopping', 'en', '0'),
('4885', 'LVo2v2Li6rdaZGbbgq2fW7J4i', 'Back to shopping', 'De vuelta a las compras', 'es', '4884'),
('4886', 'LVo2v2Li6rdaZGbbgq2fW7J4i', 'Back to shopping', 'العودة إلى التسوق', 'ar', '4884'),
('4887', 'tjXHqQ1oQmoUkIeQbxjk4Ujg7', 'You have', 'You have', 'en', '0'),
('4888', 'tjXHqQ1oQmoUkIeQbxjk4Ujg7', 'You have', 'Tienes', 'es', '4887'),
('4889', 'tjXHqQ1oQmoUkIeQbxjk4Ujg7', 'You have', 'عندك', 'ar', '4887'),
('4890', 'VmG9UvQ5VlrpCDBn7r27Ms9db', 'products in your cart', 'products in your cart', 'en', '0'),
('4891', 'VmG9UvQ5VlrpCDBn7r27Ms9db', 'products in your cart', 'productos en su carrito', 'es', '4890'),
('4892', 'VmG9UvQ5VlrpCDBn7r27Ms9db', 'products in your cart', 'المنتجات في عربة التسوق الخاصة بك', 'ar', '4890'),
('4893', 'OLsunQDjRYIvxnnzjQyfnIwn7', 'Clear cart', 'Clear cart', 'en', '0'),
('4894', 'OLsunQDjRYIvxnnzjQyfnIwn7', 'Clear cart', 'Vaciar carrito', 'es', '4893'),
('4895', 'OLsunQDjRYIvxnnzjQyfnIwn7', 'Clear cart', 'مسح العربة', 'ar', '4893'),
('4896', '7wwjzjSAw7LAAL01oUhDR6aNt', '100% money back guarantee', '100% money back guarantee', 'en', '0'),
('4897', '7wwjzjSAw7LAAL01oUhDR6aNt', '100% money back guarantee', 'Garantía de devolución del 100% del dinero', 'es', '4896'),
('4898', '7wwjzjSAw7LAAL01oUhDR6aNt', '100% money back guarantee', 'ضمان استرداد الأموال بنسبة 100٪', 'ar', '4896'),
('4899', '4XF6Hqtgljsb2to4KyJ50tSHn', 'Pay with', 'Pay with', 'en', '0'),
('4900', '4XF6Hqtgljsb2to4KyJ50tSHn', 'Pay with', 'Pagar con', 'es', '4899'),
('4901', '4XF6Hqtgljsb2to4KyJ50tSHn', 'Pay with', 'ادفع عن طريق', 'ar', '4899'),
('4902', 'FecHHB2ppj6iceUGg1A3uHDHj', '2Checkout', '2Checkout', 'en', '0'),
('4903', 'FecHHB2ppj6iceUGg1A3uHDHj', '2Checkout', '2 Caja', 'es', '4902'),
('4904', 'FecHHB2ppj6iceUGg1A3uHDHj', '2Checkout', '2 تسجيل الخروج', 'ar', '4902'),
('4905', 'lqQK1wwiqiW93ujeFnhtwHe79', 'the safer, easier way to pay', 'the safer, easier way to pay', 'en', '0'),
('4906', 'lqQK1wwiqiW93ujeFnhtwHe79', 'the safer, easier way to pay', 'La manera más segura y fácil de pagar', 'es', '4905'),
('4907', 'lqQK1wwiqiW93ujeFnhtwHe79', 'the safer, easier way to pay', 'الطريقة الامن والاسهل فى الدفع', 'ar', '4905'),
('4908', 'nUrnee83H2N4TaZROicO06rED', 'Checkout with PayPal', 'Checkout with PayPal', 'en', '0'),
('4909', 'nUrnee83H2N4TaZROicO06rED', 'Checkout with PayPal', 'Revisar con Paypal', 'es', '4908'),
('4910', 'nUrnee83H2N4TaZROicO06rED', 'Checkout with PayPal', 'الدفع عن طريق خدمة باي بال', 'ar', '4908'),
('4911', 'iI215IyD4UGqGgW2KGxK4hgeP', 'Checkout with Stripe', 'Checkout with Stripe', 'en', '0'),
('4912', 'iI215IyD4UGqGgW2KGxK4hgeP', 'Checkout with Stripe', 'Pagar con Stripe', 'es', '4911'),
('4913', 'iI215IyD4UGqGgW2KGxK4hgeP', 'Checkout with Stripe', 'الخروج مع Stripe', 'ar', '4911'),
('4914', 'TWp6jX74jxqCKF75j0efho4Ac', 'Checkout with Wallet', 'Checkout with Wallet', 'en', '0'),
('4915', 'TWp6jX74jxqCKF75j0efho4Ac', 'Checkout with Wallet', 'Pagar con Wallet', 'es', '4914'),
('4916', 'TWp6jX74jxqCKF75j0efho4Ac', 'Checkout with Wallet', 'الخروج مع Wallet', 'ar', '4914'),
('4917', 'eIqaPPlZ6Hroh7APfjPqFQPN3', 'Checkout with 2Checkout', 'Checkout with 2Checkout', 'en', '0'),
('4918', 'eIqaPPlZ6Hroh7APfjPqFQPN3', 'Checkout with 2Checkout', 'Pagar con 2Checkout', 'es', '4917'),
('4919', 'eIqaPPlZ6Hroh7APfjPqFQPN3', 'Checkout with 2Checkout', 'الخروج مع 2Checkout', 'ar', '4917'),
('4920', 'XQFRf8FG3kkDLgf4bF2ogOoQH', 'Checkout with PayStack', 'Checkout with PayStack', 'en', '0'),
('4921', 'XQFRf8FG3kkDLgf4bF2ogOoQH', 'Checkout with PayStack', 'Pagar con PayStack', 'es', '4920'),
('4922', 'XQFRf8FG3kkDLgf4bF2ogOoQH', 'Checkout with PayStack', 'الخروج مع PayStack', 'ar', '4920'),
('4923', 'apEJKo5bpWEM050vMH1gj9MNf', 'Checkout with Local Bank', 'Checkout with Local Bank', 'en', '0'),
('4924', 'apEJKo5bpWEM050vMH1gj9MNf', 'Checkout with Local Bank', 'Pagar con el banco local', 'es', '4923'),
('4925', 'apEJKo5bpWEM050vMH1gj9MNf', 'Checkout with Local Bank', 'الخروج مع البنك المحلي', 'ar', '4923'),
('4926', 'MImSAv5lutQlFbD4fHObjPGOf', 'Close', 'Close', 'en', '0'),
('4927', 'MImSAv5lutQlFbD4fHObjPGOf', 'Close', 'Cerrar', 'es', '4926'),
('4928', 'MImSAv5lutQlFbD4fHObjPGOf', 'Close', 'قريب', 'ar', '4926'),
('4929', 'ixIgNYg9RfBgPEeHo3kgxTShH', 'No Data Found!', 'No Data Found!', 'en', '0'),
('4930', 'ixIgNYg9RfBgPEeHo3kgxTShH', 'No Data Found!', '¡Datos no encontrados!', 'es', '4929'),
('4931', 'ixIgNYg9RfBgPEeHo3kgxTShH', 'No Data Found!', 'لاتوجد بيانات!', 'ar', '4929'),
('4932', 'yZDpwvnIEeP8RuGE2dsWNvcNZ', 'Update you profile details below', 'Update you profile details below', 'en', '0'),
('4933', 'yZDpwvnIEeP8RuGE2dsWNvcNZ', 'Update you profile details below', 'Actualice los detalles de su perfil a continuación', 'es', '4932'),
('4934', 'yZDpwvnIEeP8RuGE2dsWNvcNZ', 'Update you profile details below', 'تحديث تفاصيل ملفك الشخصي أدناه', 'ar', '4932'),
('4935', 'WnuLoEearUOCUt4P6E7P6loMy', 'Facebook Url', 'Facebook Url', 'en', '0'),
('4936', 'WnuLoEearUOCUt4P6E7P6loMy', 'Facebook Url', 'Facebook URL', 'es', '4935'),
('4937', 'WnuLoEearUOCUt4P6E7P6loMy', 'Facebook Url', 'URL الفيسبوك', 'ar', '4935'),
('4938', 'RZ72n0CUEqo4MSFPZ8Zwz81RD', 'Twitter Url', 'Twitter Url', 'en', '0'),
('4939', 'RZ72n0CUEqo4MSFPZ8Zwz81RD', 'Twitter Url', 'URL de Twitter', 'es', '4938'),
('4940', 'RZ72n0CUEqo4MSFPZ8Zwz81RD', 'Twitter Url', 'Twitter Url', 'ar', '4938'),
('4941', 'vt44vaWxXicahk30HrLQz78IT', 'GPlus Url', 'GPlus Url', 'en', '0'),
('4942', 'vt44vaWxXicahk30HrLQz78IT', 'GPlus Url', 'URL de GPlus', 'es', '4941'),
('4943', 'vt44vaWxXicahk30HrLQz78IT', 'GPlus Url', 'عنوان URL لـ GPlus', 'ar', '4941'),
('4944', 'lkxSW0Y5J6KwC6w7rZ4bzFCYR', 'Email / Bank Details', 'Email / Bank Details', 'en', '0'),
('4945', 'lkxSW0Y5J6KwC6w7rZ4bzFCYR', 'Email / Bank Details', 'Correo electrónico / datos bancarios', 'es', '4944'),
('4946', 'lkxSW0Y5J6KwC6w7rZ4bzFCYR', 'Email / Bank Details', 'البريد الإلكتروني / تفاصيل البنك', 'ar', '4944'),
('4947', 'bwin3wj3AHeSLTNcPlMs4khq9', 'Paystack Email ID', 'Paystack Email ID', 'en', '0'),
('4948', 'bwin3wj3AHeSLTNcPlMs4khq9', 'Paystack Email ID', 'ID de correo electrónico de Paystack', 'es', '4947'),
('4949', 'bwin3wj3AHeSLTNcPlMs4khq9', 'Paystack Email ID', 'معرف البريد الإلكتروني Paystack', 'ar', '4947'),
('4950', 'qV41xPEb4ZaKq81OJ2a443DIU', 'Badges', 'Badges', 'en', '0'),
('4951', 'qV41xPEb4ZaKq81OJ2a443DIU', 'Badges', 'Insignias', 'es', '4950'),
('4952', 'qV41xPEb4ZaKq81OJ2a443DIU', 'Badges', 'شارات', 'ar', '4950'),
('4953', 'VKrQ0N9sa840wSBNAXFCjkJ6Y', 'Add Sub Administrator', 'Add Sub Administrator', 'en', '0'),
('4954', 'VKrQ0N9sa840wSBNAXFCjkJ6Y', 'Add Sub Administrator', 'Agregar subadministrador', 'es', '4953'),
('4955', 'VKrQ0N9sa840wSBNAXFCjkJ6Y', 'Add Sub Administrator', 'إضافة مسؤول فرعي', 'ar', '4953'),
('4956', 'HdUErU3Lcc18W9gL4WUWA9Jps', 'Upload Photo', 'Upload Photo', 'en', '0'),
('4957', 'HdUErU3Lcc18W9gL4WUWA9Jps', 'Upload Photo', 'Subir foto', 'es', '4956'),
('4958', 'HdUErU3Lcc18W9gL4WUWA9Jps', 'Upload Photo', 'حمل الصورة', 'ar', '4956'),
('4959', 'VjzdSDKx1qqrnyJD8cWEemXVz', 'Permission', 'Permission', 'en', '0'),
('4960', 'VjzdSDKx1qqrnyJD8cWEemXVz', 'Permission', 'Permiso', 'es', '4959'),
('4961', 'VjzdSDKx1qqrnyJD8cWEemXVz', 'Permission', 'الإذن', 'ar', '4959'),
('4962', 'jLGTVekw8Em9YXknhJtIRD0qM', 'Reset', 'Reset', 'en', '0'),
('4963', 'jLGTVekw8Em9YXknhJtIRD0qM', 'Reset', 'Reiniciar', 'es', '4962'),
('4964', 'jLGTVekw8Em9YXknhJtIRD0qM', 'Reset', 'إعادة تعيين', 'ar', '4962'),
('4965', 'CJCEncSco5kl9XRdIG6lMFJcj', 'Add Attribute', 'Add Attribute', 'en', '0'),
('4966', 'CJCEncSco5kl9XRdIG6lMFJcj', 'Add Attribute', 'Agregar atributo', 'es', '4965'),
('4967', 'CJCEncSco5kl9XRdIG6lMFJcj', 'Add Attribute', 'اضف ميزة', 'ar', '4965'),
('4968', 'b3SN8al9tb4QQevG1Fe5hEjhL', 'Attribute Name', 'Attribute Name', 'en', '0'),
('4969', 'b3SN8al9tb4QQevG1Fe5hEjhL', 'Attribute Name', 'Nombre del Atributo', 'es', '4968'),
('4970', 'b3SN8al9tb4QQevG1Fe5hEjhL', 'Attribute Name', 'اسم السمة', 'ar', '4968'),
('4971', 'q8VwKo9INdY9TDx7i7dXR4Nz5', 'Display Order', 'Display Order', 'en', '0'),
('4972', 'q8VwKo9INdY9TDx7i7dXR4Nz5', 'Display Order', 'Orden de visualización', 'es', '4971'),
('4973', 'q8VwKo9INdY9TDx7i7dXR4Nz5', 'Display Order', 'ترتيب العرض', 'ar', '4971'),
('4974', '3tbMwCwchJSCVwyfWLmSaK1BC', 'Attribute Field Type', 'Attribute Field Type', 'en', '0'),
('4975', '3tbMwCwchJSCVwyfWLmSaK1BC', 'Attribute Field Type', 'Tipo de campo de atributo', 'es', '4974'),
('4976', '3tbMwCwchJSCVwyfWLmSaK1BC', 'Attribute Field Type', 'نوع حقل السمة', 'ar', '4974'),
('4977', 'O23muaHvPw8ooJmQfwj1PAFb8', 'Attribute Field Values', 'Attribute Field Values', 'en', '0'),
('4978', 'O23muaHvPw8ooJmQfwj1PAFb8', 'Attribute Field Values', 'Valores de campo de atributo', 'es', '4977'),
('4979', 'O23muaHvPw8ooJmQfwj1PAFb8', 'Attribute Field Values', 'قيم حقل السمة', 'ar', '4977'),
('4980', 'dyHpD1bGxlPw4KkEKcs68bXyP', 'Value separated by comma example: Firefox,Chrome,Safari', 'Value separated by comma example: Firefox,Chrome,Safari', 'en', '0'),
('4981', 'dyHpD1bGxlPw4KkEKcs68bXyP', 'Value separated by comma example: Firefox,Chrome,Safari', 'Ejemplo de valor separado por comas: Firefox, Chrome, Safari', 'es', '4980'),
('4982', 'dyHpD1bGxlPw4KkEKcs68bXyP', 'Value separated by comma example: Firefox,Chrome,Safari', 'القيمة مفصولة بفاصلة على سبيل المثال: Firefox و Chrome و Safari', 'ar', '4980'),
('4983', 'QyKyndsoBArr4pqVZui03RyU0', 'Add Blog Category', 'Add Blog Category', 'en', '0'),
('4984', 'QyKyndsoBArr4pqVZui03RyU0', 'Add Blog Category', 'Agregar categoría de blog', 'es', '4983'),
('4985', 'QyKyndsoBArr4pqVZui03RyU0', 'Add Blog Category', 'أضف فئة المدونة', 'ar', '4983'),
('4986', '3Yyz8HJ2dGh1t4uP50El176XT', 'Add Category', 'Add Category', 'en', '0'),
('4987', '3Yyz8HJ2dGh1t4uP50El176XT', 'Add Category', 'añadir categoría', 'es', '4986'),
('4988', '3Yyz8HJ2dGh1t4uP50El176XT', 'Add Category', 'إضافة فئة', 'ar', '4986'),
('4989', 'gyhi3smxXfejWQ1eOZ7suDRpR', 'Add Contact', 'Add Contact', 'en', '0'),
('4990', 'gyhi3smxXfejWQ1eOZ7suDRpR', 'Add Contact', 'Agregar contacto', 'es', '4989'),
('4991', 'gyhi3smxXfejWQ1eOZ7suDRpR', 'Add Contact', 'إضافة جهة اتصال', 'ar', '4989'),
('4992', '82DLgXiR8migv6Pm2nYBId1u9', 'Your Message', 'Your Message', 'en', '0'),
('4993', '82DLgXiR8migv6Pm2nYBId1u9', 'Your Message', 'Tu mensaje', 'es', '4992'),
('4994', '82DLgXiR8migv6Pm2nYBId1u9', 'Your Message', 'رسالتك', 'ar', '4992'),
('4995', 'YQyJagEcujVj2CjkIl5wftfxn', 'Add Country', 'Add Country', 'en', '0'),
('4996', 'YQyJagEcujVj2CjkIl5wftfxn', 'Add Country', 'Agregar país', 'es', '4995'),
('4997', 'YQyJagEcujVj2CjkIl5wftfxn', 'Add Country', 'أضف الدولة', 'ar', '4995'),
('4998', 'SvQBoX3gmHOXzubz6VqUBTTCD', 'Upload Flag', 'Upload Flag', 'en', '0'),
('4999', 'SvQBoX3gmHOXzubz6VqUBTTCD', 'Upload Flag', 'Cargar bandera', 'es', '4998'),
('5000', 'SvQBoX3gmHOXzubz6VqUBTTCD', 'Upload Flag', 'تحميل العلم', 'ar', '4998'),
('5001', 'mbDwEaKRg35y7OcrqAz7OaabO', 'Add Customer', 'Add Customer', 'en', '0'),
('5002', 'mbDwEaKRg35y7OcrqAz7OaabO', 'Add Customer', 'Agregar cliente', 'es', '5001'),
('5003', 'mbDwEaKRg35y7OcrqAz7OaabO', 'Add Customer', 'أضف العميل', 'ar', '5001'),
('5004', 'mrZSjGszOgBpeGvvubHLJ6PlW', 'Add Item Type', 'Add Item Type', 'en', '0'),
('5005', 'mrZSjGszOgBpeGvvubHLJ6PlW', 'Add Item Type', 'Agregar tipo de artículo', 'es', '5004'),
('5006', 'mrZSjGszOgBpeGvvubHLJ6PlW', 'Add Item Type', 'إضافة نوع العنصر', 'ar', '5004'),
('5007', 'izeHae7j88vM1Sz2AjM40QSUn', 'Add Keywords', 'Add Keywords', 'en', '0'),
('5008', 'izeHae7j88vM1Sz2AjM40QSUn', 'Add Keywords', 'Agregar palabras clave', 'es', '5007'),
('5009', 'izeHae7j88vM1Sz2AjM40QSUn', 'Add Keywords', 'أضف كلمات رئيسية', 'ar', '5007'),
('5010', '097ejJaLUEEkU2QwdtILzo7O9', 'Keyword', 'Keyword', 'en', '0'),
('5011', '097ejJaLUEEkU2QwdtILzo7O9', 'Keyword', 'Palabra clave', 'es', '5010'),
('5012', '097ejJaLUEEkU2QwdtILzo7O9', 'Keyword', 'الكلمة الرئيسية', 'ar', '5010'),
('5013', 'uy4GUlz0zYv5HZDsRSknyM4IS', 'Enable', 'Enable', 'en', '0'),
('5014', 'uy4GUlz0zYv5HZDsRSknyM4IS', 'Enable', 'Habilitar', 'es', '5013'),
('5015', 'uy4GUlz0zYv5HZDsRSknyM4IS', 'Enable', 'ممكن', 'ar', '5013'),
('5016', '0tDbZ7O8ppjmZ5bUh5dBWz7gA', 'Add Language', 'Add Language', 'en', '0'),
('5017', '0tDbZ7O8ppjmZ5bUh5dBWz7gA', 'Add Language', 'Agregar idioma', 'es', '5016'),
('5018', '0tDbZ7O8ppjmZ5bUh5dBWz7gA', 'Add Language', 'إضافة لغة', 'ar', '5016'),
('5019', 'F2XqDtYIQLmn5KK9keFEU6VPu', 'Code [ISO code]', 'Code [ISO code]', 'en', '0'),
('5020', 'F2XqDtYIQLmn5KK9keFEU6VPu', 'Code [ISO code]', 'Código [código ISO]', 'es', '5019'),
('5021', 'F2XqDtYIQLmn5KK9keFEU6VPu', 'Code [ISO code]', 'كود [كود ISO]', 'ar', '5019'),
('5022', 'L9M7JFfJhz4Fe94yPphTYsyRt', 'Add Page', 'Add Page', 'en', '0'),
('5023', 'L9M7JFfJhz4Fe94yPphTYsyRt', 'Add Page', 'Añadir página', 'es', '5022'),
('5024', 'L9M7JFfJhz4Fe94yPphTYsyRt', 'Add Page', 'إضافة صفحة', 'ar', '5022'),
('5025', 'hWpb5fBFi9R5UL0epmS5SoCLu', 'Title', 'Title', 'en', '0'),
('5026', 'hWpb5fBFi9R5UL0epmS5SoCLu', 'Title', 'Título', 'es', '5025'),
('5027', 'hWpb5fBFi9R5UL0epmS5SoCLu', 'Title', 'عنوان', 'ar', '5025'),
('5028', 'dpLsLKQqDKfuBDmljyrrJQ5fa', 'Display On Main Menu', 'Display On Main Menu', 'en', '0'),
('5029', 'dpLsLKQqDKfuBDmljyrrJQ5fa', 'Display On Main Menu', 'Mostrar en el menú principal', 'es', '5028'),
('5030', 'dpLsLKQqDKfuBDmljyrrJQ5fa', 'Display On Main Menu', 'العرض في القائمة الرئيسية', 'ar', '5028'),
('5031', 'WoinP67l0RSeGVz9h5fBmstyu', 'Display On Footer Menu', 'Display On Footer Menu', 'en', '0'),
('5032', 'WoinP67l0RSeGVz9h5fBmstyu', 'Display On Footer Menu', 'Mostrar menú en pie de página', 'es', '5031'),
('5033', 'WoinP67l0RSeGVz9h5fBmstyu', 'Display On Footer Menu', 'عرض في قائمة التذييل', 'ar', '5031'),
('5034', '5bnattVeo9aEPSrh9AeJMd6Ij', 'Menu Order', 'Menu Order', 'en', '0'),
('5035', '5bnattVeo9aEPSrh9AeJMd6Ij', 'Menu Order', 'Orden del menú', 'es', '5034'),
('5036', '5bnattVeo9aEPSrh9AeJMd6Ij', 'Menu Order', 'ترتيب القائمة', 'ar', '5034'),
('5037', 'marf04rkXvl3H8vUuDranZ1H2', 'Add Post', 'Add Post', 'en', '0'),
('5038', 'marf04rkXvl3H8vUuDranZ1H2', 'Add Post', 'Agregar publicación', 'es', '5037'),
('5039', 'marf04rkXvl3H8vUuDranZ1H2', 'Add Post', 'أضف منشورا', 'ar', '5037'),
('5040', 'M667soQ4vBagcjDPyXqrPN9zV', 'Image', 'Image', 'en', '0'),
('5041', 'M667soQ4vBagcjDPyXqrPN9zV', 'Image', 'Imagen', 'es', '5040'),
('5042', 'M667soQ4vBagcjDPyXqrPN9zV', 'Image', 'صورة', 'ar', '5040'),
('5043', 'm2zebKgah9IwowCBKCuerWm8Q', 'Tags separated by comma', 'Tags separated by comma', 'en', '0'),
('5044', 'm2zebKgah9IwowCBKCuerWm8Q', 'Tags separated by comma', 'Etiquetas separadas por comas', 'es', '5043'),
('5045', 'm2zebKgah9IwowCBKCuerWm8Q', 'Tags separated by comma', 'العلامات مفصولة بفاصلة', 'ar', '5043'),
('5046', 'VvOJnjXnowOSnn03yPCqdeRTh', 'post,blog,category', 'post,blog,category', 'en', '0'),
('5047', 'VvOJnjXnowOSnn03yPCqdeRTh', 'post,blog,category', 'publicación, blog, categoría', 'es', '5046'),
('5048', 'VvOJnjXnowOSnn03yPCqdeRTh', 'post,blog,category', 'نشر ، مدونة ، فئة', 'ar', '5046'),
('5049', 'UkGFpPNxlu9k9AdHHD3sTKy1K', 'Add Sub Category', 'Add Sub Category', 'en', '0'),
('5050', 'UkGFpPNxlu9k9AdHHD3sTKy1K', 'Add Sub Category', 'Agregar subcategoría', 'es', '5049'),
('5051', 'UkGFpPNxlu9k9AdHHD3sTKy1K', 'Add Sub Category', 'إضافة فئة فرعية', 'ar', '5049'),
('5052', 'rh00Wl7heAghk7pdICLY7lWTc', 'Sub Category', 'Sub Category', 'en', '0'),
('5053', 'rh00Wl7heAghk7pdICLY7lWTc', 'Sub Category', 'Subcategoría', 'es', '5052'),
('5054', 'rh00Wl7heAghk7pdICLY7lWTc', 'Sub Category', 'تصنيف فرعي', 'ar', '5052'),
('5055', 'nkSM56VPFBysNf78zqx1QWXQ5', 'Add Vendor', 'Add Vendor', 'en', '0'),
('5056', 'nkSM56VPFBysNf78zqx1QWXQ5', 'Add Vendor', 'Agregar vendedora', 'es', '5055'),
('5057', 'nkSM56VPFBysNf78zqx1QWXQ5', 'Add Vendor', 'أضف بائع', 'ar', '5055'),
('5058', '7igA2rURmYTC6XmwA2WAORiWX', 'Sub Administrators', 'Sub Administrators', 'en', '0'),
('5059', '7igA2rURmYTC6XmwA2WAORiWX', 'Sub Administrators', 'Subadministradores', 'es', '5058'),
('5060', '7igA2rURmYTC6XmwA2WAORiWX', 'Sub Administrators', 'المسؤولين الفرعيين', 'ar', '5058'),
('5061', '8mPDeXgYVeil3eWz2owI9eJo0', 'Photo', 'Photo', 'en', '0'),
('5062', '8mPDeXgYVeil3eWz2owI9eJo0', 'Photo', 'Foto', 'es', '5061'),
('5063', '8mPDeXgYVeil3eWz2owI9eJo0', 'Photo', 'صورة فوتوغرافية', 'ar', '5061'),
('5064', '7NoWjMhGv37tzGWblFsAm37Lu', 'Are you sure you want to delete', 'Are you sure you want to delete', 'en', '0'),
('5065', '7NoWjMhGv37tzGWblFsAm37Lu', 'Are you sure you want to delete', 'Estás segura de que quieres eliminar?', 'es', '5064'),
('5066', '7NoWjMhGv37tzGWblFsAm37Lu', 'Are you sure you want to delete', 'هل أنت متأكد أنك تريد حذف', 'ar', '5064'),
('5067', 'zZcVF3FUxFNMevuwfbvpseK6m', 'Attributes', 'Attributes', 'en', '0'),
('5068', 'zZcVF3FUxFNMevuwfbvpseK6m', 'Attributes', 'Atributos', 'es', '5067'),
('5069', 'zZcVF3FUxFNMevuwfbvpseK6m', 'Attributes', 'السمات', 'ar', '5067'),
('5070', 'J7NGCZUkneuKSLEUZySGjiUHF', 'Add Attributes', 'Add Attributes', 'en', '0'),
('5071', 'J7NGCZUkneuKSLEUZySGjiUHF', 'Add Attributes', 'Agregar atributos', 'es', '5070'),
('5072', 'J7NGCZUkneuKSLEUZySGjiUHF', 'Add Attributes', 'أضف السمات', 'ar', '5070'),
('5073', 'hRLWRy7aTgIdim3ZlpF5G3Q9c', 'Field Type', 'Field Type', 'en', '0'),
('5074', 'hRLWRy7aTgIdim3ZlpF5G3Q9c', 'Field Type', 'Tipo de campo', 'es', '5073'),
('5075', 'hRLWRy7aTgIdim3ZlpF5G3Q9c', 'Field Type', 'نوع الحقل', 'ar', '5073'),
('5076', 'dvCUBPiS10Yp4dalwavskeINK', 'Badges Settings', 'Badges Settings', 'en', '0'),
('5077', 'dvCUBPiS10Yp4dalwavskeINK', 'Badges Settings', 'Configuración de insignias', 'es', '5076'),
('5078', 'dvCUBPiS10Yp4dalwavskeINK', 'Badges Settings', 'إعدادات الشارات', 'ar', '5076'),
('5079', 'zVKe22a976Ky9tqHgRQkZVdDH', 'Exclusive Author Badge', 'Exclusive Author Badge', 'en', '0'),
('5080', 'zVKe22a976Ky9tqHgRQkZVdDH', 'Exclusive Author Badge', 'Insignia de autor exclusiva', 'es', '5079'),
('5081', 'zVKe22a976Ky9tqHgRQkZVdDH', 'Exclusive Author Badge', 'شارة المؤلف الحصرية', 'ar', '5079'),
('5082', 'lq6xixSv4wXFcpxpSb6VxIN52', 'Trends Badge', 'Trends Badge', 'en', '0'),
('5083', 'lq6xixSv4wXFcpxpSb6VxIN52', 'Trends Badge', 'Insignia de tendencias', 'es', '5082'),
('5084', 'lq6xixSv4wXFcpxpSb6VxIN52', 'Trends Badge', 'شارة الاتجاهات', 'ar', '5082'),
('5085', '8uK5dH3z31qlZAJwqYNO8cqOi', 'Featured Item Badge', 'Featured Item Badge', 'en', '0'),
('5086', '8uK5dH3z31qlZAJwqYNO8cqOi', 'Featured Item Badge', 'Insignia de artículo destacado', 'es', '5085'),
('5087', '8uK5dH3z31qlZAJwqYNO8cqOi', 'Featured Item Badge', 'شارة العنصر المميز', 'ar', '5085'),
('5088', 'yyvo5Pc0rv8OGy3FWFrZGQULz', 'Free Item Badge', 'Free Item Badge', 'en', '0'),
('5089', 'yyvo5Pc0rv8OGy3FWFrZGQULz', 'Free Item Badge', 'Insignia de artículo gratis', 'es', '5088'),
('5090', 'yyvo5Pc0rv8OGy3FWFrZGQULz', 'Free Item Badge', 'شارة عنصر مجاني', 'ar', '5088'),
('5091', 'gZpuNNYYRIfe05hti7ZFxxVIp', 'Year of Membership Badges', 'Year of Membership Badges', 'en', '0'),
('5092', 'gZpuNNYYRIfe05hti7ZFxxVIp', 'Year of Membership Badges', 'Insignias del año de membresía', 'es', '5091'),
('5093', 'gZpuNNYYRIfe05hti7ZFxxVIp', 'Year of Membership Badges', 'عام شارات العضوية', 'ar', '5091'),
('5094', 'LhpBFScHJRuZxBbrk3iWj9Dwu', 'Year Badge', 'Year Badge', 'en', '0'),
('5095', 'LhpBFScHJRuZxBbrk3iWj9Dwu', 'Year Badge', 'Insignia del año', 'es', '5094'),
('5096', 'LhpBFScHJRuZxBbrk3iWj9Dwu', 'Year Badge', 'شارة العام', 'ar', '5094'),
('5097', '7mijnrSP6v1u4P5rgDbqjk8Ei', 'Sold Author Level', 'Sold Author Level', 'en', '0'),
('5098', '7mijnrSP6v1u4P5rgDbqjk8Ei', 'Sold Author Level', 'Nivel de autor vendido', 'es', '5097'),
('5099', '7mijnrSP6v1u4P5rgDbqjk8Ei', 'Sold Author Level', 'بيع مستوى المؤلف', 'ar', '5097'),
('5100', 'SmSq7NC7UvOfrZDdVtmakPK2Y', 'Sold Level', 'Sold Level', 'en', '0'),
('5101', 'SmSq7NC7UvOfrZDdVtmakPK2Y', 'Sold Level', 'Nivel vendido', 'es', '5100'),
('5102', 'SmSq7NC7UvOfrZDdVtmakPK2Y', 'Sold Level', 'مستوى البيع', 'ar', '5100'),
('5103', 'XLJRxjwkalqxXJLkPbDk0Yo8T', 'Power Elite Author Label', 'Power Elite Author Label', 'en', '0'),
('5104', 'XLJRxjwkalqxXJLkPbDk0Yo8T', 'Power Elite Author Label', 'Etiqueta de autor de Power Elite', 'es', '5103'),
('5105', 'XLJRxjwkalqxXJLkPbDk0Yo8T', 'Power Elite Author Label', 'تسمية المؤلف Power Elite', 'ar', '5103'),
('5106', '4xsIjpOlNHACZkByFSYn4Bydg', 'Level', 'Level', 'en', '0'),
('5107', '4xsIjpOlNHACZkByFSYn4Bydg', 'Level', 'Nivel', 'es', '5106'),
('5108', '4xsIjpOlNHACZkByFSYn4Bydg', 'Level', 'مستوى', 'ar', '5106'),
('5109', 'ssXNwH5hTSHjMEseFo9bFq6kZ', 'Badge', 'Badge', 'en', '0'),
('5110', 'ssXNwH5hTSHjMEseFo9bFq6kZ', 'Badge', 'Insignia', 'es', '5109'),
('5111', 'ssXNwH5hTSHjMEseFo9bFq6kZ', 'Badge', 'شارة', 'ar', '5109'),
('5112', 'GI3nn5LCwaE7pIB6gp5xs74dr', 'Power Elite Author Badge', 'Power Elite Author Badge', 'en', '0'),
('5113', 'GI3nn5LCwaE7pIB6gp5xs74dr', 'Power Elite Author Badge', 'Insignia de autor de Power Elite', 'es', '5112'),
('5114', 'GI3nn5LCwaE7pIB6gp5xs74dr', 'Power Elite Author Badge', 'شارة المؤلف Power Elite', 'ar', '5112'),
('5115', '1McnMVKSCdIObZowtQKW57qHo', 'Collector Author Level', 'Collector Author Level', 'en', '0'),
('5116', '1McnMVKSCdIObZowtQKW57qHo', 'Collector Author Level', 'Nivel de autor del recopilador', 'es', '5115'),
('5117', '1McnMVKSCdIObZowtQKW57qHo', 'Collector Author Level', 'جامع مستوى المؤلف', 'ar', '5115'),
('5118', 'AQpm7tkITFugjEK4q7aq0MY60', 'Collected Level', 'Collected Level', 'en', '0'),
('5119', 'AQpm7tkITFugjEK4q7aq0MY60', 'Collected Level', 'Nivel recolectado', 'es', '5118'),
('5120', 'AQpm7tkITFugjEK4q7aq0MY60', 'Collected Level', 'المستوى المجمّع', 'ar', '5118'),
('5121', 'z05KxuboD2LpRwDNlviC5oDrg', 'Referral Author Level', 'Referral Author Level', 'en', '0'),
('5122', 'z05KxuboD2LpRwDNlviC5oDrg', 'Referral Author Level', 'Nivel de autor de referencia', 'es', '5121'),
('5123', 'z05KxuboD2LpRwDNlviC5oDrg', 'Referral Author Level', 'مستوى مؤلف الإحالة', 'ar', '5121'),
('5124', 'YLdtAKWVt5TJWRdb5nKG2KqQY', 'Referred Level', 'Referred Level', 'en', '0'),
('5125', 'YLdtAKWVt5TJWRdb5nKG2KqQY', 'Referred Level', 'Nivel referido', 'es', '5124'),
('5126', 'YLdtAKWVt5TJWRdb5nKG2KqQY', 'Referred Level', 'المستوى المشار إليه', 'ar', '5124'),
('5127', 'LzN9toNkv8w4TZVIvuJP13Hpb', 'Blog Category', 'Blog Category', 'en', '0'),
('5128', 'LzN9toNkv8w4TZVIvuJP13Hpb', 'Blog Category', 'Categoría del blog', 'es', '5127'),
('5129', 'LzN9toNkv8w4TZVIvuJP13Hpb', 'Blog Category', 'فئة المدونة', 'ar', '5127'),
('5130', 'Bu0xykKRCOwhBUGGLNA6iPcgX', 'Payment Refund Declined', 'Payment Refund Declined', 'en', '0'),
('5131', 'Bu0xykKRCOwhBUGGLNA6iPcgX', 'Payment Refund Declined', 'Reembolso de pago rechazado', 'es', '5130'),
('5132', 'Bu0xykKRCOwhBUGGLNA6iPcgX', 'Payment Refund Declined', 'تم رفض استرداد الدفع', 'ar', '5130'),
('5133', 'NIUJjg1MXWQJF720A7mHCclci', 'Your payment refund is declined. Please contact your vendor or administrator', 'Your payment refund is declined. Please contact your vendor or administrator', 'en', '0'),
('5134', 'NIUJjg1MXWQJF720A7mHCclci', 'Your payment refund is declined. Please contact your vendor or administrator', 'Se rechaza el reembolso de su pago. Comuníquese con su proveedor o administrador', 'es', '5133'),
('5135', 'NIUJjg1MXWQJF720A7mHCclci', 'Your payment refund is declined. Please contact your vendor or administrator', 'تم رفض استرداد مدفوعاتك. يرجى الاتصال بالبائع أو المسؤول', 'ar', '5133'),
('5136', 'Tgb9MIVsgodQbyPgv3GrgYjw2', 'your refund request amount is', 'your refund request amount is', 'en', '0'),
('5137', 'Tgb9MIVsgodQbyPgv3GrgYjw2', 'your refund request amount is', 'el monto de su solicitud de reembolso es', 'es', '5136'),
('5138', 'Tgb9MIVsgodQbyPgv3GrgYjw2', 'your refund request amount is', 'مبلغ طلب الاسترداد الخاص بك هو', 'ar', '5136'),
('5139', 'GjKzmTed3zbDENnmedTqmOtc4', 'Payment Approval Cancelled', 'Payment Approval Cancelled', 'en', '0'),
('5140', 'GjKzmTed3zbDENnmedTqmOtc4', 'Payment Approval Cancelled', 'Aprobación de pago cancelada', 'es', '5139'),
('5141', 'GjKzmTed3zbDENnmedTqmOtc4', 'Payment Approval Cancelled', 'تم إلغاء الموافقة على الدفع', 'ar', '5139'),
('5142', '0B8h0ZlKNm3r8Dextrj3wo88O', 'Your payment approval is cancelled and amount will be credit on your account. Please check your earning balance on your account', 'Your payment approval is cancelled and amount will be credit on your account. Please check your earning balance on your account', 'en', '0'),
('5143', '0B8h0ZlKNm3r8Dextrj3wo88O', 'Your payment approval is cancelled and amount will be credit on your account. Please check your earning balance on your account', 'Su aprobación de pago se cancela y la cantidad se acreditará en su cuenta. Verifique su saldo de ganancias en su cuenta', 'es', '5142'),
('5144', '0B8h0ZlKNm3r8Dextrj3wo88O', 'Your payment approval is cancelled and amount will be credit on your account. Please check your earning balance on your account', 'تم إلغاء الموافقة على الدفع وسيُضاف المبلغ إلى حسابك. يرجى التحقق من رصيد أرباحك في حسابك', 'ar', '5142'),
('5145', 'H7RIlTBsqOnyUMSa1O7L0QkrJ', 'your payment is', 'your payment is', 'en', '0'),
('5146', 'H7RIlTBsqOnyUMSa1O7L0QkrJ', 'your payment is', 'tu pago es', 'es', '5145'),
('5147', 'H7RIlTBsqOnyUMSa1O7L0QkrJ', 'your payment is', 'الدفع الخاص بك', 'ar', '5145'),
('5148', '8NIyidlfRxWgpj7gkENUEpoFw', 'Payment Refund Accepted', 'Payment Refund Accepted', 'en', '0'),
('5149', '8NIyidlfRxWgpj7gkENUEpoFw', 'Payment Refund Accepted', 'Reembolso de pago aceptado', 'es', '5148'),
('5150', '8NIyidlfRxWgpj7gkENUEpoFw', 'Payment Refund Accepted', 'قبول استرداد الدفع', 'ar', '5148'),
('5151', 'T6rfcDok2Llzs48cg8yKCRBUE', 'Your payment refund is accepted and amount will be credit on your account. Please check your earning balance on your account', 'Your payment refund is accepted and amount will be credit on your account. Please check your earning balance on your account', 'en', '0'),
('5152', 'T6rfcDok2Llzs48cg8yKCRBUE', 'Your payment refund is accepted and amount will be credit on your account. Please check your earning balance on your account', 'Se acepta el reembolso de su pago y la cantidad se acreditará en su cuenta. Verifique su saldo de ganancias en su cuenta', 'es', '5151'),
('5153', 'T6rfcDok2Llzs48cg8yKCRBUE', 'Your payment refund is accepted and amount will be credit on your account. Please check your earning balance on your account', 'تم قبول استرداد المبلغ المدفوع وسيتم إضافة المبلغ إلى حسابك يرجى التحقق من رصيد أرباحك في حسابك', 'ar', '5151'),
('5154', 'CZVBoR0IMv7T3Erti7Misc9f1', 'Color Settings', 'Color Settings', 'en', '0'),
('5155', 'CZVBoR0IMv7T3Erti7Misc9f1', 'Color Settings', 'Configuración de color', 'es', '5154'),
('5156', 'CZVBoR0IMv7T3Erti7Misc9f1', 'Color Settings', 'إعدادات الألوان', 'ar', '5154'),
('5157', 'KOdGd7CSkWikoqt6sRQhnUrFz', 'Site Theme Color', 'Site Theme Color', 'en', '0'),
('5158', 'KOdGd7CSkWikoqt6sRQhnUrFz', 'Site Theme Color', 'Color del tema del sitio', 'es', '5157'),
('5159', 'KOdGd7CSkWikoqt6sRQhnUrFz', 'Site Theme Color', 'لون مظهر الموقع', 'ar', '5157'),
('5160', 'yDOhhe4n4Kvy2LG03x3PtLlPW', 'Site Button Color', 'Site Button Color', 'en', '0'),
('5161', 'yDOhhe4n4Kvy2LG03x3PtLlPW', 'Site Button Color', 'Color del botón del sitio', 'es', '5160'),
('5162', 'yDOhhe4n4Kvy2LG03x3PtLlPW', 'Site Button Color', 'لون زر الموقع', 'ar', '5160'),
('5163', 'Ja4dMAte8S62ezAjbsNkzxavY', 'Header & Footer BgColor', 'Header & Footer BgColor', 'en', '0'),
('5164', 'Ja4dMAte8S62ezAjbsNkzxavY', 'Header & Footer BgColor', 'Encabezado y pie de página BgColor', 'es', '5163'),
('5165', 'Ja4dMAte8S62ezAjbsNkzxavY', 'Header & Footer BgColor', 'رأس وتذييل BgColor', 'ar', '5163'),
('5166', 'kBL9JL1SCcBI2VkcK98WNbZxy', 'Site Button Hover Color', 'Site Button Hover Color', 'en', '0'),
('5167', 'kBL9JL1SCcBI2VkcK98WNbZxy', 'Site Button Hover Color', 'Color de desplazamiento del botón del sitio', 'es', '5166'),
('5168', 'kBL9JL1SCcBI2VkcK98WNbZxy', 'Site Button Hover Color', 'لون المرور فوق زر الموقع', 'ar', '5166'),
('5169', 'tfy0NUhmfVTnfPX8oSER6dxQ5', 'Copyright BgColor', 'Copyright BgColor', 'en', '0'),
('5170', 'tfy0NUhmfVTnfPX8oSER6dxQ5', 'Copyright BgColor', 'Copyright BgColor', 'es', '5169'),
('5171', 'tfy0NUhmfVTnfPX8oSER6dxQ5', 'Copyright BgColor', 'حقوق الطبع والنشر BgColor', 'ar', '5169'),
('5172', 'aSZnIR4lqFtfNE5DNBNOgWaTn', 'example color code', 'example color code', 'en', '0'),
('5173', 'aSZnIR4lqFtfNE5DNBNOgWaTn', 'example color code', 'ejemplo de código de color', 'es', '5172'),
('5174', 'aSZnIR4lqFtfNE5DNBNOgWaTn', 'example color code', 'مثال رمز اللون', 'ar', '5172'),
('5175', 'nn89ZJUEqTqkyM9XbVwZZ3tEU', 'Back', 'Back', 'en', '0'),
('5176', 'nn89ZJUEqTqkyM9XbVwZZ3tEU', 'Back', 'atrás', 'es', '5175'),
('5177', 'nn89ZJUEqTqkyM9XbVwZZ3tEU', 'Back', 'عودة', 'ar', '5175'),
('5178', 'pOm9EF28PTWyfEjog89GtSqwI', 'Change Status', 'Change Status', 'en', '0'),
('5179', 'pOm9EF28PTWyfEjog89GtSqwI', 'Change Status', 'Cambiar Estado', 'es', '5178'),
('5180', 'pOm9EF28PTWyfEjog89GtSqwI', 'Change Status', 'تغيير الوضع', 'ar', '5178'),
('5181', 'A5XRAKETQYt8NQaMCXqTlUswh', 'Country Settings', 'Country Settings', 'en', '0'),
('5182', 'A5XRAKETQYt8NQaMCXqTlUswh', 'Country Settings', 'Configuración de país', 'es', '5181'),
('5183', 'A5XRAKETQYt8NQaMCXqTlUswh', 'Country Settings', 'إعدادات البلد', 'ar', '5181'),
('5184', 'WIeRqMKaZqTIsP3rduS62E7WL', 'Flag', 'Flag', 'en', '0'),
('5185', 'WIeRqMKaZqTIsP3rduS62E7WL', 'Flag', 'Bandera', 'es', '5184'),
('5186', 'WIeRqMKaZqTIsP3rduS62E7WL', 'Flag', 'علم', 'ar', '5184'),
('5187', 'DnaSqSygtenkPmbo2OpETL8Uz', 'Currency Settings', 'Currency Settings', 'en', '0'),
('5188', 'DnaSqSygtenkPmbo2OpETL8Uz', 'Currency Settings', 'Configuración de moneda', 'es', '5187'),
('5189', 'DnaSqSygtenkPmbo2OpETL8Uz', 'Currency Settings', 'إعدادات العملة', 'ar', '5187'),
('5190', 'bGPIMaqbsBcA2fCzXGlUJVm1q', 'Currency Code', 'Currency Code', 'en', '0'),
('5191', 'bGPIMaqbsBcA2fCzXGlUJVm1q', 'Currency Code', 'Código de moneda', 'es', '5190'),
('5192', 'bGPIMaqbsBcA2fCzXGlUJVm1q', 'Currency Code', 'رمز العملة', 'ar', '5190'),
('5193', 'WUdQ1zockQU5B14GidrtAjZC2', 'Currency Symbol', 'Currency Symbol', 'en', '0'),
('5194', 'WUdQ1zockQU5B14GidrtAjZC2', 'Currency Symbol', 'Símbolo de moneda', 'es', '5193'),
('5195', 'WUdQ1zockQU5B14GidrtAjZC2', 'Currency Symbol', 'رمز العملة', 'ar', '5193'),
('5196', 'SVNyNqHsRJDBs73vh5dVHvo6D', 'Customers', 'Customers', 'en', '0'),
('5197', 'SVNyNqHsRJDBs73vh5dVHvo6D', 'Customers', 'Clientes', 'es', '5196'),
('5198', 'SVNyNqHsRJDBs73vh5dVHvo6D', 'Customers', 'العملاء', 'ar', '5196'),
('5199', 'zEz5BA5RbY7uiWWiZvyPJCjNl', 'Email Verified', 'Email Verified', 'en', '0'),
('5200', 'zEz5BA5RbY7uiWWiZvyPJCjNl', 'Email Verified', 'Correo Electrónico Verificado', 'es', '5199'),
('5201', 'zEz5BA5RbY7uiWWiZvyPJCjNl', 'Email Verified', 'تم التحقق من البريد الإلكتروني', 'ar', '5199'),
('5202', '421c2pec9bqXIUiBeHvUbBlpy', 'verified', 'verified', 'en', '0'),
('5203', '421c2pec9bqXIUiBeHvUbBlpy', 'verified', 'verificada', 'es', '5202'),
('5204', '421c2pec9bqXIUiBeHvUbBlpy', 'verified', 'تم التحقق', 'ar', '5202'),
('5205', 'rcK7NYgW4ug5T2nXMQmQXaT1u', 'unverified', 'unverified', 'en', '0'),
('5206', 'rcK7NYgW4ug5T2nXMQmQXaT1u', 'unverified', 'inconfirmado', 'es', '5205'),
('5207', 'rcK7NYgW4ug5T2nXMQmQXaT1u', 'unverified', 'لم يتم التحقق منه', 'ar', '5205'),
('5208', 'JbbnTEi1PS13lKtFnFl5syOvA', 'This page is permission denied', 'This page is permission denied', 'en', '0'),
('5209', 'JbbnTEi1PS13lKtFnFl5syOvA', 'This page is permission denied', 'Esta página tiene permiso denegado', 'es', '5208');
INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
('5210', 'JbbnTEi1PS13lKtFnFl5syOvA', 'This page is permission denied', 'هذه الصفحة هي إذن مرفوض', 'ar', '5208'),
('5211', 'f6sB3d9WZ57ds0cJc1q7iMrBn', 'Edit Sub Administrator', 'Edit Sub Administrator', 'en', '0'),
('5212', 'f6sB3d9WZ57ds0cJc1q7iMrBn', 'Edit Sub Administrator', 'Editar subadministrador', 'es', '5211'),
('5213', 'f6sB3d9WZ57ds0cJc1q7iMrBn', 'Edit Sub Administrator', 'تحرير المسؤول الفرعي', 'ar', '5211'),
('5214', 'oWtbAFI3ZlQPaFgzLC59j0upq', 'Edit Attribute', 'Edit Attribute', 'en', '0'),
('5215', 'oWtbAFI3ZlQPaFgzLC59j0upq', 'Edit Attribute', 'Editar atributo', 'es', '5214'),
('5216', 'oWtbAFI3ZlQPaFgzLC59j0upq', 'Edit Attribute', 'تحرير السمة', 'ar', '5214'),
('5217', 'pBogtFrjlh7ZbCaJGvIpQUQr6', 'Edit Blog Category', 'Edit Blog Category', 'en', '0'),
('5218', 'pBogtFrjlh7ZbCaJGvIpQUQr6', 'Edit Blog Category', 'Editar categoría de blog', 'es', '5217'),
('5219', 'pBogtFrjlh7ZbCaJGvIpQUQr6', 'Edit Blog Category', 'تحرير فئة المدونة', 'ar', '5217'),
('5220', '1th0SVRGqLOILc5iq9HhHm7Wp', 'Edit Category', 'Edit Category', 'en', '0'),
('5221', '1th0SVRGqLOILc5iq9HhHm7Wp', 'Edit Category', 'Editar categoria', 'es', '5220'),
('5222', '1th0SVRGqLOILc5iq9HhHm7Wp', 'Edit Category', 'تحرير الفئة', 'ar', '5220'),
('5223', 'ZWuhJb8L4GIVgACGI72NMk3Kh', 'Edit Country', 'Edit Country', 'en', '0'),
('5224', 'ZWuhJb8L4GIVgACGI72NMk3Kh', 'Edit Country', 'Editar país', 'es', '5223'),
('5225', 'ZWuhJb8L4GIVgACGI72NMk3Kh', 'Edit Country', 'تحرير الدولة', 'ar', '5223'),
('5226', 'QMPcHoLDAVbrLvoX8hRzit99n', 'Edit Customer', 'Edit Customer', 'en', '0'),
('5227', 'QMPcHoLDAVbrLvoX8hRzit99n', 'Edit Customer', 'Editar cliente', 'es', '5226'),
('5228', 'QMPcHoLDAVbrLvoX8hRzit99n', 'Edit Customer', 'تحرير العميل', 'ar', '5226'),
('5229', 'YATkMVFzsOZfZBe9sonnRqD31', 'Video Preview Type (optional)', 'Video Preview Type (optional)', 'en', '0'),
('5230', 'YATkMVFzsOZfZBe9sonnRqD31', 'Video Preview Type (optional)', 'Tipo de vista previa de video (opcional)', 'es', '5229'),
('5231', 'YATkMVFzsOZfZBe9sonnRqD31', 'Video Preview Type (optional)', 'نوع معاينة الفيديو (اختياري)', 'ar', '5229'),
('5232', 'xdx54HVuPGRE9DP0lQpq02TIH', 'Approved', 'Approved', 'en', '0'),
('5233', 'xdx54HVuPGRE9DP0lQpq02TIH', 'Approved', 'Aprobada', 'es', '5232'),
('5234', 'xdx54HVuPGRE9DP0lQpq02TIH', 'Approved', 'وافق', 'ar', '5232'),
('5235', 'HLcTR2gMipfhWOvSPpXF368rE', 'Rejected', 'Rejected', 'en', '0'),
('5236', 'HLcTR2gMipfhWOvSPpXF368rE', 'Rejected', 'Rechazada', 'es', '5235'),
('5237', 'HLcTR2gMipfhWOvSPpXF368rE', 'Rejected', 'مرفوض', 'ar', '5235'),
('5238', 'fTzTpq3A1MtUPux9BRluFdmnk', 'Edit Item Type', 'Edit Item Type', 'en', '0'),
('5239', 'fTzTpq3A1MtUPux9BRluFdmnk', 'Edit Item Type', 'Editar tipo de artículo', 'es', '5238'),
('5240', 'fTzTpq3A1MtUPux9BRluFdmnk', 'Edit Item Type', 'تحرير نوع العنصر', 'ar', '5238'),
('5241', 'bJjXQAnwRReIjtksN43hQUDSf', 'Language', 'Language', 'en', '0'),
('5242', 'bJjXQAnwRReIjtksN43hQUDSf', 'Language', 'Idioma', 'es', '5241'),
('5243', 'bJjXQAnwRReIjtksN43hQUDSf', 'Language', 'لغة', 'ar', '5241'),
('5244', 'T5Xmdhw4cNYr59KzNVZGiR5eD', 'Edit Language', 'Edit Language', 'en', '0'),
('5245', 'T5Xmdhw4cNYr59KzNVZGiR5eD', 'Edit Language', 'Editar idioma', 'es', '5244'),
('5246', 'T5Xmdhw4cNYr59KzNVZGiR5eD', 'Edit Language', 'تحرير اللغة', 'ar', '5244'),
('5247', '9bIOJVy0pkKwdPUvql3cORUuD', 'Edit Page', 'Edit Page', 'en', '0'),
('5248', '9bIOJVy0pkKwdPUvql3cORUuD', 'Edit Page', 'Editar página', 'es', '5247'),
('5249', '9bIOJVy0pkKwdPUvql3cORUuD', 'Edit Page', 'تعديل الصفحة', 'ar', '5247'),
('5250', 'd5L9ASASM2RGV3gJ6EOfjLjkM', 'Edit Post', 'Edit Post', 'en', '0'),
('5251', 'd5L9ASASM2RGV3gJ6EOfjLjkM', 'Edit Post', 'Editar post', 'es', '5250'),
('5252', 'd5L9ASASM2RGV3gJ6EOfjLjkM', 'Edit Post', 'تعديل المنشور', 'ar', '5250'),
('5253', '7S1FcbRuyRNiqZhQoh8JvQFWv', 'Edit My Profile', 'Edit My Profile', 'en', '0'),
('5254', '7S1FcbRuyRNiqZhQoh8JvQFWv', 'Edit My Profile', 'Editar mi perfil', 'es', '5253'),
('5255', '7S1FcbRuyRNiqZhQoh8JvQFWv', 'Edit My Profile', 'تعديل ملفي الشخصي', 'ar', '5253'),
('5256', '9vd57hU7Z8gxohvM3olt2ONhM', 'Edit Sub Category', 'Edit Sub Category', 'en', '0'),
('5257', '9vd57hU7Z8gxohvM3olt2ONhM', 'Edit Sub Category', 'Editar subcategoría', 'es', '5256'),
('5258', '9vd57hU7Z8gxohvM3olt2ONhM', 'Edit Sub Category', 'تحرير فئة فرعية', 'ar', '5256'),
('5259', 'Gkr17clgwgx2Z3MoRapb9g7n0', 'Edit Vendor', 'Edit Vendor', 'en', '0'),
('5260', 'Gkr17clgwgx2Z3MoRapb9g7n0', 'Edit Vendor', 'Editar proveedor', 'es', '5259'),
('5261', 'Gkr17clgwgx2Z3MoRapb9g7n0', 'Edit Vendor', 'تحرير البائع', 'ar', '5259'),
('5262', 'hGXizYkeJ6xhWD3bp0Jk3ACGP', 'Mail Configuration', 'Mail Configuration', 'en', '0'),
('5263', 'hGXizYkeJ6xhWD3bp0Jk3ACGP', 'Mail Configuration', 'Configuración de correo', 'es', '5262'),
('5264', 'hGXizYkeJ6xhWD3bp0Jk3ACGP', 'Mail Configuration', 'تكوين البريد', 'ar', '5262'),
('5265', '06s7Ni5zzoaBcWKNXqaxeKgv0', 'Mail Driver', 'Mail Driver', 'en', '0'),
('5266', '06s7Ni5zzoaBcWKNXqaxeKgv0', 'Mail Driver', 'Conductora de correo', 'es', '5265'),
('5267', '06s7Ni5zzoaBcWKNXqaxeKgv0', 'Mail Driver', 'سائق البريد', 'ar', '5265'),
('5268', 'S3pw8ytkNoSE0CJQqQk8kkla5', 'Mail Port', 'Mail Port', 'en', '0'),
('5269', 'S3pw8ytkNoSE0CJQqQk8kkla5', 'Mail Port', 'Puerto de correo', 'es', '5268'),
('5270', 'S3pw8ytkNoSE0CJQqQk8kkla5', 'Mail Port', 'منفذ البريد', 'ar', '5268'),
('5271', 'sUM09KGTDRxM05twG0VQ11U7m', 'Mail Password', 'Mail Password', 'en', '0'),
('5272', 'sUM09KGTDRxM05twG0VQ11U7m', 'Mail Password', 'Contraseña de correo', 'es', '5271'),
('5273', 'sUM09KGTDRxM05twG0VQ11U7m', 'Mail Password', 'كلمة مرور البريد', 'ar', '5271'),
('5274', 'wokJKnAPzzNkZF0JoUkcNbfr2', 'Mail Host', 'Mail Host', 'en', '0'),
('5275', 'wokJKnAPzzNkZF0JoUkcNbfr2', 'Mail Host', 'Host de correo', 'es', '5274'),
('5276', 'wokJKnAPzzNkZF0JoUkcNbfr2', 'Mail Host', 'مضيف البريد', 'ar', '5274'),
('5277', 'bqYREzqaIcLGlC1ceTEROIhCq', 'Mail Username', 'Mail Username', 'en', '0'),
('5278', 'bqYREzqaIcLGlC1ceTEROIhCq', 'Mail Username', 'Nombre de usuario de correo', 'es', '5277'),
('5279', 'bqYREzqaIcLGlC1ceTEROIhCq', 'Mail Username', 'اسم مستخدم البريد', 'ar', '5277'),
('5280', 'y2C7MR2OFwNatYU9MwoqFqO7I', 'Mail Encryption', 'Mail Encryption', 'en', '0'),
('5281', 'y2C7MR2OFwNatYU9MwoqFqO7I', 'Mail Encryption', 'Cifrado de correo', 'es', '5280'),
('5282', 'y2C7MR2OFwNatYU9MwoqFqO7I', 'Mail Encryption', 'تشفير البريد', 'ar', '5280'),
('5283', 'QkIJksEVYWJyGonZvNXS5Yk7a', 'General Settings', 'General Settings', 'en', '0'),
('5284', 'QkIJksEVYWJyGonZvNXS5Yk7a', 'General Settings', 'Configuración general', 'es', '5283'),
('5285', 'QkIJksEVYWJyGonZvNXS5Yk7a', 'General Settings', 'الاعدادات العامة', 'ar', '5283'),
('5286', 'Rr6YGUqF2wtHRIoeftnK1Xa77', 'Site Title', 'Site Title', 'en', '0'),
('5287', 'Rr6YGUqF2wtHRIoeftnK1Xa77', 'Site Title', 'Título del sitio', 'es', '5286'),
('5288', 'Rr6YGUqF2wtHRIoeftnK1Xa77', 'Site Title', 'عنوان الموقع', 'ar', '5286'),
('5289', 'AUUzqhmqzb77VX7iz7ui0qOFd', 'Meta Description (max 160 chars)', 'Meta Description (max 160 chars)', 'en', '0'),
('5290', 'AUUzqhmqzb77VX7iz7ui0qOFd', 'Meta Description (max 160 chars)', 'Meta descripción (máximo 160 caracteres)', 'es', '5289'),
('5291', 'AUUzqhmqzb77VX7iz7ui0qOFd', 'Meta Description (max 160 chars)', 'الوصف التعريفي (160 حرفًا بحد أقصى)', 'ar', '5289'),
('5292', 'gSniIP4elHYsG7coS2iZK8Pk1', 'Meta Keywords (max 160 chars)', 'Meta Keywords (max 160 chars)', 'en', '0'),
('5293', 'gSniIP4elHYsG7coS2iZK8Pk1', 'Meta Keywords (max 160 chars)', 'Meta palabras clave (máximo 160 caracteres)', 'es', '5292'),
('5294', 'gSniIP4elHYsG7coS2iZK8Pk1', 'Meta Keywords (max 160 chars)', 'الكلمات الأساسية الوصفية (160 حرفًا بحد أقصى)', 'ar', '5292'),
('5295', 'Ze6a0jL3RmeY11mht7trvHto9', 'Item Auto Approval', 'Item Auto Approval', 'en', '0'),
('5296', 'Ze6a0jL3RmeY11mht7trvHto9', 'Item Auto Approval', 'Aprobación automática del artículo', 'es', '5295'),
('5297', 'Ze6a0jL3RmeY11mht7trvHto9', 'Item Auto Approval', 'الموافقة التلقائية على العنصر', 'ar', '5295'),
('5298', '66ifNbxj8L9v4m2NKHOYj0dr5', 'if \"Yes\" selected vendor item will published automatically', 'if \"Yes\" selected vendor item will published automatically', 'en', '0'),
('5299', '66ifNbxj8L9v4m2NKHOYj0dr5', 'if \"Yes\" selected vendor item will published automatically', 'si \"Sí\", el artículo del proveedor seleccionado se publicará automáticamente', 'es', '5298'),
('5300', '66ifNbxj8L9v4m2NKHOYj0dr5', 'if \"Yes\" selected vendor item will published automatically', 'إذا تم نشر عنصر المورد المحدد بـ \"نعم\" تلقائيًا', 'ar', '5298'),
('5301', 'Z8eStTa7ESjJMBBV6yrXLktpf', 'Site Email', 'Site Email', 'en', '0'),
('5302', 'Z8eStTa7ESjJMBBV6yrXLktpf', 'Site Email', 'Correo electrónico del sitio', 'es', '5301'),
('5303', 'Z8eStTa7ESjJMBBV6yrXLktpf', 'Site Email', 'البريد الإلكتروني للموقع', 'ar', '5301'),
('5304', 'ndPL2iayY94OgbalmFXddj8Cl', 'Site Phone Number', 'Site Phone Number', 'en', '0'),
('5305', 'ndPL2iayY94OgbalmFXddj8Cl', 'Site Phone Number', 'Número de teléfono del sitio', 'es', '5304'),
('5306', 'ndPL2iayY94OgbalmFXddj8Cl', 'Site Phone Number', 'رقم هاتف الموقع', 'ar', '5304'),
('5307', '2bBhgE3eKXTKz1ZnK9JfY1I0n', 'Address', 'Address', 'en', '0'),
('5308', '2bBhgE3eKXTKz1ZnK9JfY1I0n', 'Address', 'Habla a', 'es', '5307'),
('5309', '2bBhgE3eKXTKz1ZnK9JfY1I0n', 'Address', 'عنوان', 'ar', '5307'),
('5310', 'Nezex2W24A18O4GMQPcGC6zxS', 'Footer Newsletter Content', 'Footer Newsletter Content', 'en', '0'),
('5311', 'Nezex2W24A18O4GMQPcGC6zxS', 'Footer Newsletter Content', 'Contenido del boletín de pie de página', 'es', '5310'),
('5312', 'Nezex2W24A18O4GMQPcGC6zxS', 'Footer Newsletter Content', 'تذييل محتوى النشرة الإخبارية', 'ar', '5310'),
('5313', 'cxRYoe11yzM17qNzKsRRGadb8', 'Google Analytics', 'Google Analytics', 'en', '0'),
('5314', 'cxRYoe11yzM17qNzKsRRGadb8', 'Google Analytics', 'Google analitico', 'es', '5313'),
('5315', 'cxRYoe11yzM17qNzKsRRGadb8', 'Google Analytics', 'تحليلات كوكل', 'ar', '5313'),
('5316', 'M0iiCliAnoT4vnPoagN8xla5X', 'Multi Language', 'Multi Language', 'en', '0'),
('5317', 'M0iiCliAnoT4vnPoagN8xla5X', 'Multi Language', 'Multi lenguaje', 'es', '5316'),
('5318', 'M0iiCliAnoT4vnPoagN8xla5X', 'Multi Language', 'متعدد اللغات', 'ar', '5316'),
('5319', 'ES3gravnJTorPOpnx8xyCE5KD', 'New Registration For Email Verification', 'New Registration For Email Verification', 'en', '0'),
('5320', 'ES3gravnJTorPOpnx8xyCE5KD', 'New Registration For Email Verification', 'Nuevo registro para verificación por correo electrónico', 'es', '5319'),
('5321', 'ES3gravnJTorPOpnx8xyCE5KD', 'New Registration For Email Verification', 'تسجيل جديد للتحقق من البريد الإلكتروني', 'ar', '5319'),
('5322', 'glwSEvWppkUl6H48MIBGk2kCX', 'If selected \"OFF\" automatically verified customers / vendors', 'If selected \"OFF\" automatically verified customers / vendors', 'en', '0'),
('5323', 'glwSEvWppkUl6H48MIBGk2kCX', 'If selected \"OFF\" automatically verified customers / vendors', 'Si se selecciona \"APAGADO\", los clientes / proveedores verificados automáticamente', 'es', '5322'),
('5324', 'glwSEvWppkUl6H48MIBGk2kCX', 'If selected \"OFF\" automatically verified customers / vendors', 'في حالة تحديد \"إيقاف\" ، يتم التحقق تلقائيًا من العملاء / البائعين', 'ar', '5322'),
('5325', 'LvHvAEqBmelXFiNiiF5JeKbrG', 'ON', 'ON', 'en', '0'),
('5326', 'LvHvAEqBmelXFiNiiF5JeKbrG', 'ON', 'EN', 'es', '5325'),
('5327', 'LvHvAEqBmelXFiNiiF5JeKbrG', 'ON', 'على', 'ar', '5325'),
('5328', 'Ymdak7qFSbdlub7FFYJvGvCoM', 'OFF', 'OFF', 'en', '0'),
('5329', 'Ymdak7qFSbdlub7FFYJvGvCoM', 'OFF', 'APAGADA', 'es', '5328'),
('5330', 'Ymdak7qFSbdlub7FFYJvGvCoM', 'OFF', 'إيقاف', 'ar', '5328'),
('5331', 'ggYhrV2V7kz7dXiS8ofnzZDey', 'Manual Payment Verification', 'Manual Payment Verification', 'en', '0'),
('5332', 'ggYhrV2V7kz7dXiS8ofnzZDey', 'Manual Payment Verification', 'Verificación de pago manual', 'es', '5331'),
('5333', 'ggYhrV2V7kz7dXiS8ofnzZDey', 'Manual Payment Verification', 'التحقق من الدفع اليدوي', 'ar', '5331'),
('5334', 'BZAJpo9EfVNyndADFwR7Ujjn5', 'If selected \"OFF\" users can download file immediately after payment without approval', 'If selected \"OFF\" users can download file immediately after payment without approval', 'en', '0'),
('5335', 'BZAJpo9EfVNyndADFwR7Ujjn5', 'If selected \"OFF\" users can download file immediately after payment without approval', 'Si se selecciona \"APAGADO\", los usuarios pueden descargar el archivo inmediatamente después del pago sin aprobación.', 'es', '5334'),
('5336', 'BZAJpo9EfVNyndADFwR7Ujjn5', 'If selected \"OFF\" users can download file immediately after payment without approval', 'إذا تم تحديد \"إيقاف\" ، يمكن للمستخدمين تنزيل الملف فورًا بعد الدفع دون موافقة', 'ar', '5334'),
('5337', 'TnQ5aCR0u4N1FVgjw4MBdgmBb', 'Cookie Popup', 'Cookie Popup', 'en', '0'),
('5338', 'TnQ5aCR0u4N1FVgjw4MBdgmBb', 'Cookie Popup', 'Ventana emergente de cookies', 'es', '5337'),
('5339', 'TnQ5aCR0u4N1FVgjw4MBdgmBb', 'Cookie Popup', 'ملف تعريف الارتباط المنبثق', 'ar', '5337'),
('5340', 'eAgQyZsc6BTZ3Vy23nkYELxj6', 'Cookie Popup Text', 'Cookie Popup Text', 'en', '0'),
('5341', 'eAgQyZsc6BTZ3Vy23nkYELxj6', 'Cookie Popup Text', 'Texto emergente de cookie', 'es', '5340'),
('5342', 'eAgQyZsc6BTZ3Vy23nkYELxj6', 'Cookie Popup Text', 'نص ملف تعريف الارتباط المنبثق', 'ar', '5340'),
('5343', 'T8b6M8fUlVx93iB12M4IDVcFZ', 'Cookie Button Text', 'Cookie Button Text', 'en', '0'),
('5344', 'T8b6M8fUlVx93iB12M4IDVcFZ', 'Cookie Button Text', 'Texto del botón de cookie', 'es', '5343'),
('5345', 'T8b6M8fUlVx93iB12M4IDVcFZ', 'Cookie Button Text', 'نص زر ملف تعريف الارتباط', 'ar', '5343'),
('5346', '4izCyBqsWm163bQ6OVRGUQFXS', 'Banner Heading', 'Banner Heading', 'en', '0'),
('5347', '4izCyBqsWm163bQ6OVRGUQFXS', 'Banner Heading', 'Encabezado de banner', 'es', '5346'),
('5348', '4izCyBqsWm163bQ6OVRGUQFXS', 'Banner Heading', 'عنوان البانر', 'ar', '5346'),
('5349', 'DiByxq9rNaDqp9UKxWkmTdT7d', 'Banner Sub Heading', 'Banner Sub Heading', 'en', '0'),
('5350', 'DiByxq9rNaDqp9UKxWkmTdT7d', 'Banner Sub Heading', 'Subtítulo del banner', 'es', '5349'),
('5351', 'DiByxq9rNaDqp9UKxWkmTdT7d', 'Banner Sub Heading', 'العنوان الفرعي للراية', 'ar', '5349'),
('5352', 'XvgodjjkHMGeTSYdSDttWN5Ar', 'Favicon', 'Favicon', 'en', '0'),
('5353', 'XvgodjjkHMGeTSYdSDttWN5Ar', 'Favicon', 'Favicon', 'es', '5352'),
('5354', 'XvgodjjkHMGeTSYdSDttWN5Ar', 'Favicon', 'فافيكون', 'ar', '5352'),
('5355', 'JdDpclMode8SBWdbUJQ7vrk8F', 'max', 'max', 'en', '0'),
('5356', 'JdDpclMode8SBWdbUJQ7vrk8F', 'max', 'max', 'es', '5355'),
('5357', 'JdDpclMode8SBWdbUJQ7vrk8F', 'max', 'ماكس', 'ar', '5355'),
('5358', 'PQubD6aAFc37pXGhXVAA9Nta0', 'Logo', 'Logo', 'en', '0'),
('5359', 'PQubD6aAFc37pXGhXVAA9Nta0', 'Logo', 'Logo', 'es', '5358'),
('5360', 'PQubD6aAFc37pXGhXVAA9Nta0', 'Logo', 'شعار', 'ar', '5358'),
('5361', 'LlQORQmxguWWKqsFsatu0XGRX', 'Banner', 'Banner', 'en', '0'),
('5362', 'LlQORQmxguWWKqsFsatu0XGRX', 'Banner', 'Bandera', 'es', '5361'),
('5363', 'LlQORQmxguWWKqsFsatu0XGRX', 'Banner', 'لافتة', 'ar', '5361'),
('5364', 'qKcAkUQmkknXWQToajQoBjxEO', 'Watermark', 'Watermark', 'en', '0'),
('5365', 'qKcAkUQmkknXWQToajQoBjxEO', 'Watermark', 'Filigrana', 'es', '5364'),
('5366', 'qKcAkUQmkknXWQToajQoBjxEO', 'Watermark', 'علامة مائية', 'ar', '5364'),
('5367', 'XPgRo6OAMyoLkHIjnmARWcUMU', 'Watermark Image', 'Watermark Image', 'en', '0'),
('5368', 'XPgRo6OAMyoLkHIjnmARWcUMU', 'Watermark Image', 'Imagen de marca de agua', 'es', '5367'),
('5369', 'XPgRo6OAMyoLkHIjnmARWcUMU', 'Watermark Image', 'صورة العلامة المائية', 'ar', '5367'),
('5370', 'NimyHfk4OxXv1usSJ5Tim19Uf', 'Page Loader', 'Page Loader', 'en', '0'),
('5371', 'NimyHfk4OxXv1usSJ5Tim19Uf', 'Page Loader', 'Cargador de página', 'es', '5370'),
('5372', 'NimyHfk4OxXv1usSJ5Tim19Uf', 'Page Loader', 'محمل الصفحة', 'ar', '5370'),
('5373', '5KA33bluiFQCWjm2WhAH6qujX', 'Page Loader GIF', 'Page Loader GIF', 'en', '0'),
('5374', '5KA33bluiFQCWjm2WhAH6qujX', 'Page Loader GIF', 'Cargador de página GIF', 'es', '5373'),
('5375', '5KA33bluiFQCWjm2WhAH6qujX', 'Page Loader GIF', 'تحميل الصفحة GIF', 'ar', '5373'),
('5376', 'ZXVUryDXBHFFkgvy3F06Qhvu7', 'Please select file of type .gif', 'Please select file of type .gif', 'en', '0'),
('5377', 'ZXVUryDXBHFFkgvy3F06Qhvu7', 'Please select file of type .gif', 'Seleccione un archivo de tipo .gif', 'es', '5376'),
('5378', 'ZXVUryDXBHFFkgvy3F06Qhvu7', 'Please select file of type .gif', 'الرجاء تحديد ملف من النوع .gif', 'ar', '5376'),
('5379', 'ObBoJdWPKbyoGHYnWbgzA6XHK', 'Flash Sale End Date', 'Flash Sale End Date', 'en', '0'),
('5380', 'ObBoJdWPKbyoGHYnWbgzA6XHK', 'Flash Sale End Date', 'Fecha de finalización de la venta flash', 'es', '5379'),
('5381', 'ObBoJdWPKbyoGHYnWbgzA6XHK', 'Flash Sale End Date', 'تاريخ انتهاء البيع السريع', 'ar', '5379'),
('5382', 'bxxiYmRFCL6IWTgNj3gBu59eO', 'Free File End Date', 'Free File End Date', 'en', '0'),
('5383', 'bxxiYmRFCL6IWTgNj3gBu59eO', 'Free File End Date', 'Fecha de finalización del archivo gratuito', 'es', '5382'),
('5384', 'bxxiYmRFCL6IWTgNj3gBu59eO', 'Free File End Date', 'تاريخ انتهاء الملف المجاني', 'ar', '5382'),
('5385', 'FviT2vDiTwTz1Aet3HBw8KBAe', 'Maintenance Mode', 'Maintenance Mode', 'en', '0'),
('5386', 'FviT2vDiTwTz1Aet3HBw8KBAe', 'Maintenance Mode', 'Modo de mantenimiento', 'es', '5385'),
('5387', 'FviT2vDiTwTz1Aet3HBw8KBAe', 'Maintenance Mode', 'نمط الصيانة', 'ar', '5385'),
('5388', '77PJdX8rpjxGL20EgxabKiQbf', 'Maintenance Mode Title', 'Maintenance Mode Title', 'en', '0'),
('5389', '77PJdX8rpjxGL20EgxabKiQbf', 'Maintenance Mode Title', 'Título del modo de mantenimiento', 'es', '5388'),
('5390', '77PJdX8rpjxGL20EgxabKiQbf', 'Maintenance Mode Title', 'عنوان وضع الصيانة', 'ar', '5388'),
('5391', 'iDkehJvXtJiZWkD21xvCuCnOr', 'Maintenance Mode Content', 'Maintenance Mode Content', 'en', '0'),
('5392', 'iDkehJvXtJiZWkD21xvCuCnOr', 'Maintenance Mode Content', 'Contenido del modo de mantenimiento', 'es', '5391'),
('5393', 'iDkehJvXtJiZWkD21xvCuCnOr', 'Maintenance Mode Content', 'محتوى وضع الصيانة', 'ar', '5391'),
('5394', '2dHJaXsWWQ4AzhgcpFnzOSS2W', 'Homepage Blog Post Display', 'Homepage Blog Post Display', 'en', '0'),
('5395', '2dHJaXsWWQ4AzhgcpFnzOSS2W', 'Homepage Blog Post Display', 'Pantalla de publicación de blog de la página de inicio', 'es', '5394'),
('5396', '2dHJaXsWWQ4AzhgcpFnzOSS2W', 'Homepage Blog Post Display', 'الصفحة الرئيسية بلوق وظيفة العرض', 'ar', '5394'),
('5397', 'hMtEubWRuIB4dO1czQ5OGHbA7', 'Select Product License Details Page', 'Select Product License Details Page', 'en', '0'),
('5398', 'hMtEubWRuIB4dO1czQ5OGHbA7', 'Select Product License Details Page', 'Seleccione la página de detalles de la licencia del producto', 'es', '5397'),
('5399', 'hMtEubWRuIB4dO1czQ5OGHbA7', 'Select Product License Details Page', 'حدد صفحة تفاصيل ترخيص المنتج', 'ar', '5397'),
('5400', 'knlqgEbToNIpyxowiOrjjj2bZ', 'this page used on single product details page', 'this page used on single product details page', 'en', '0'),
('5401', 'knlqgEbToNIpyxowiOrjjj2bZ', 'this page used on single product details page', 'esta página utilizada en la página de detalles de un solo producto', 'es', '5400'),
('5402', 'knlqgEbToNIpyxowiOrjjj2bZ', 'this page used on single product details page', 'تستخدم هذه الصفحة في صفحة تفاصيل منتج واحد', 'ar', '5400'),
('5403', '0x8Wpf3vlHzk4VJdDbZscehyS', 'My Profile', 'My Profile', 'en', '0'),
('5404', '0x8Wpf3vlHzk4VJdDbZscehyS', 'My Profile', 'Mi perfil', 'es', '5403'),
('5405', '0x8Wpf3vlHzk4VJdDbZscehyS', 'My Profile', 'ملفي', 'ar', '5403'),
('5406', 'TfAze147kDhaEKOtQSF4CEumu', 'Settings', 'Settings', 'en', '0'),
('5407', 'TfAze147kDhaEKOtQSF4CEumu', 'Settings', 'Configuraciones', 'es', '5406'),
('5408', 'TfAze147kDhaEKOtQSF4CEumu', 'Settings', 'إعدادات', 'ar', '5406'),
('5409', 'No7cM04C2BoEDKME3LHtVNmB7', 'Features', 'Features', 'en', '0'),
('5410', 'No7cM04C2BoEDKME3LHtVNmB7', 'Features', 'Features', 'es', '5409'),
('5411', 'No7cM04C2BoEDKME3LHtVNmB7', 'Features', 'المميزات', 'ar', '5409'),
('5412', 'RkOrNDidS3oaJV4kehgD6YaTS', 'Font Awesome Icon', 'Font Awesome Icon', 'en', '0'),
('5413', 'RkOrNDidS3oaJV4kehgD6YaTS', 'Font Awesome Icon', 'Font Awesome Icon', 'es', '5412'),
('5414', 'RkOrNDidS3oaJV4kehgD6YaTS', 'Font Awesome Icon', 'رمز الخط رائع', 'ar', '5412'),
('5415', '7pUM5Q2XBl2HwpSFYQmtaAhAb', 'Heading', 'Heading', 'en', '0'),
('5416', '7pUM5Q2XBl2HwpSFYQmtaAhAb', 'Heading', 'Bóveda', 'es', '5415'),
('5417', '7pUM5Q2XBl2HwpSFYQmtaAhAb', 'Heading', 'عنوان', 'ar', '5415'),
('5418', 'ww7VgShrPhadhAVb56T1WXsn2', 'Sub Heading', 'Sub Heading', 'en', '0'),
('5419', 'ww7VgShrPhadhAVb56T1WXsn2', 'Sub Heading', 'Subtítulo', 'es', '5418'),
('5420', 'ww7VgShrPhadhAVb56T1WXsn2', 'Sub Heading', 'العنوان الفرعي', 'ar', '5418'),
('5421', 'rAspJEr18Mx7huV1cfREhmERI', 'Dashboard', 'Dashboard', 'en', '0'),
('5422', 'rAspJEr18Mx7huV1cfREhmERI', 'Dashboard', 'Tablero', 'es', '5421'),
('5423', 'rAspJEr18Mx7huV1cfREhmERI', 'Dashboard', 'لوحة القيادة', 'ar', '5421'),
('5424', 'hhneONhUm18F5OinthnbD8t89', 'Total Vendors', 'Total Vendors', 'en', '0'),
('5425', 'hhneONhUm18F5OinthnbD8t89', 'Total Vendors', 'Proveedores totales', 'es', '5424'),
('5426', 'hhneONhUm18F5OinthnbD8t89', 'Total Vendors', 'إجمالي الباعة', 'ar', '5424'),
('5427', '6emibyWxoUlUpji9WFqijnSNf', 'Total Pages', 'Total Pages', 'en', '0'),
('5428', '6emibyWxoUlUpji9WFqijnSNf', 'Total Pages', 'Paginas totales', 'es', '5427'),
('5429', '6emibyWxoUlUpji9WFqijnSNf', 'Total Pages', 'إجمالي الصفحات', 'ar', '5427'),
('5430', 'R1q9rPwsK63HBUNp9h1X1Yrvb', 'Total Orders', 'Total Orders', 'en', '0'),
('5431', 'R1q9rPwsK63HBUNp9h1X1Yrvb', 'Total Orders', 'Pedidos totales', 'es', '5430'),
('5432', 'R1q9rPwsK63HBUNp9h1X1Yrvb', 'Total Orders', 'إجمالي الطلبات', 'ar', '5430'),
('5433', 'vZqfijkOU1a15sTnA3w1pXQi1', 'Total Item Comments', 'Total Item Comments', 'en', '0'),
('5434', 'vZqfijkOU1a15sTnA3w1pXQi1', 'Total Item Comments', 'Total de comentarios de artículos', 'es', '5433'),
('5435', 'vZqfijkOU1a15sTnA3w1pXQi1', 'Total Item Comments', 'إجمالي تعليقات العنصر', 'ar', '5433'),
('5436', 'S7iXuJfg3Oumzdl0I8aov52TU', 'Total Post', 'Total Post', 'en', '0'),
('5437', 'S7iXuJfg3Oumzdl0I8aov52TU', 'Total Post', 'Publicación total', 'es', '5436'),
('5438', 'S7iXuJfg3Oumzdl0I8aov52TU', 'Total Post', 'إجمالي المنشور', 'ar', '5436'),
('5439', '6yL4WjHMOlTzofwJyb1ii28g5', 'Order Sales', 'Order Sales', 'en', '0'),
('5440', '6yL4WjHMOlTzofwJyb1ii28g5', 'Order Sales', 'Ventas de pedidos', 'es', '5439'),
('5441', '6yL4WjHMOlTzofwJyb1ii28g5', 'Order Sales', 'طلب المبيعات', 'ar', '5439'),
('5442', 'idLZuDcQZxal9gxpKeDbaJxSf', 'Items', 'Items', 'en', '0'),
('5443', 'idLZuDcQZxal9gxpKeDbaJxSf', 'Items', 'Artículos', 'es', '5442'),
('5444', 'idLZuDcQZxal9gxpKeDbaJxSf', 'Items', 'العناصر', 'ar', '5442'),
('5445', 'ksYcPqMHOBFJSJ4SyM2bGfaBf', 'Month', 'Month', 'en', '0'),
('5446', 'ksYcPqMHOBFJSJ4SyM2bGfaBf', 'Month', 'Mes', 'es', '5445'),
('5447', 'ksYcPqMHOBFJSJ4SyM2bGfaBf', 'Month', 'شهر', 'ar', '5445'),
('5448', 'WIG2fylieXIiXyvonTuH5X4eO', 'Item Rejected Notifications', 'Item Rejected Notifications', 'en', '0'),
('5449', 'WIG2fylieXIiXyvonTuH5X4eO', 'Item Rejected Notifications', 'Notificaciones de artículo rechazado', 'es', '5448'),
('5450', 'WIG2fylieXIiXyvonTuH5X4eO', 'Item Rejected Notifications', 'إخطارات رفض العنصر', 'ar', '5448'),
('5451', 'dltiFilQg4L4F7yejJWvMmgyJ', 'has been rejected. Thanks for your submission. If any query contact administrator', 'has been rejected. Thanks for your submission. If any query contact administrator', 'en', '0'),
('5452', 'dltiFilQg4L4F7yejJWvMmgyJ', 'has been rejected. Thanks for your submission. If any query contact administrator', 'Ha sido rechazado. Gracias por tu presentación. Si tiene alguna consulta póngase en contacto con el administrador', 'es', '5451'),
('5453', 'dltiFilQg4L4F7yejJWvMmgyJ', 'has been rejected. Thanks for your submission. If any query contact administrator', 'وقد رفض. شكرا لتقديمك. إذا كان هناك أي استفسار اتصل بالمسؤول', 'ar', '5451'),
('5454', 'rpxB61GIzqi6G91nw93M71eOo', 'has been approved. Thanks for your submission', 'has been approved. Thanks for your submission', 'en', '0'),
('5455', 'rpxB61GIzqi6G91nw93M71eOo', 'has been approved. Thanks for your submission', 'ha sido aprobado. Gracias por tu envío', 'es', '5454'),
('5456', 'rpxB61GIzqi6G91nw93M71eOo', 'has been approved. Thanks for your submission', 'تمت الموافقة. شكرا لتقديمك', 'ar', '5454'),
('5457', '4v0w84Btu5lLKtwmWphidqNie', 'Product Import / Export', 'Product Import / Export', 'en', '0'),
('5458', '4v0w84Btu5lLKtwmWphidqNie', 'Product Import / Export', 'Importación / Exportación de productos', 'es', '5457'),
('5459', '4v0w84Btu5lLKtwmWphidqNie', 'Product Import / Export', 'استيراد / تصدير المنتج', 'ar', '5457'),
('5460', 'mdn6du4nlYKFZt0vkarSiEeLp', 'Add Item', 'Add Item', 'en', '0'),
('5461', 'mdn6du4nlYKFZt0vkarSiEeLp', 'Add Item', 'Añadir artículo', 'es', '5460'),
('5462', 'mdn6du4nlYKFZt0vkarSiEeLp', 'Add Item', 'اضافة عنصر', 'ar', '5460'),
('5463', 'pdr727lyEKrJ7HkKO8DvwCmV9', 'Item Image', 'Item Image', 'en', '0'),
('5464', 'pdr727lyEKrJ7HkKO8DvwCmV9', 'Item Image', 'Imagen del artículo', 'es', '5463'),
('5465', 'pdr727lyEKrJ7HkKO8DvwCmV9', 'Item Image', 'صورة البند', 'ar', '5463'),
('5466', 'VbX7mmkYSrgZBaZWohpzRYiTa', 'Featured Item', 'Featured Item', 'en', '0'),
('5467', 'VbX7mmkYSrgZBaZWohpzRYiTa', 'Featured Item', 'Artículo destacado', 'es', '5466'),
('5468', 'VbX7mmkYSrgZBaZWohpzRYiTa', 'Featured Item', 'عنصر مميز', 'ar', '5466'),
('5469', 'CKYSTPQRYC5QtIRKFHNwxuQvr', 'Free Item', 'Free Item', 'en', '0'),
('5470', 'CKYSTPQRYC5QtIRKFHNwxuQvr', 'Free Item', 'Articulo libre', 'es', '5469'),
('5471', 'CKYSTPQRYC5QtIRKFHNwxuQvr', 'Free Item', 'بند مجاني', 'ar', '5469'),
('5472', 'sNqlzaZzraunS9mSKUWcnvZZX', 'Flash Request', 'Flash Request', 'en', '0'),
('5473', 'sNqlzaZzraunS9mSKUWcnvZZX', 'Flash Request', 'Solicitud de Flash', 'es', '5472'),
('5474', 'sNqlzaZzraunS9mSKUWcnvZZX', 'Flash Request', 'طلب فلاش', 'ar', '5472'),
('5475', 'fnCDqstc0NZ4CDX3IBrlv9WmW', 'Waiting for approval', 'Waiting for approval', 'en', '0'),
('5476', 'fnCDqstc0NZ4CDX3IBrlv9WmW', 'Waiting for approval', 'A la espera de la aprobación', 'es', '5475'),
('5477', 'fnCDqstc0NZ4CDX3IBrlv9WmW', 'Waiting for approval', 'بانتظار الموافقة', 'ar', '5475'),
('5478', 'ILTfN4SPsSdUJPmvGvfjGgWNT', 'Languages', 'Languages', 'en', '0'),
('5479', 'ILTfN4SPsSdUJPmvGvfjGgWNT', 'Languages', 'Idiomas', 'es', '5478'),
('5480', 'ILTfN4SPsSdUJPmvGvfjGgWNT', 'Languages', 'اللغات', 'ar', '5478'),
('5481', '81swrDiazZYcolvs3ySpbVwkU', 'Language Name', 'Language Name', 'en', '0'),
('5482', '81swrDiazZYcolvs3ySpbVwkU', 'Language Name', 'Nombre del lenguaje', 'es', '5481'),
('5483', '81swrDiazZYcolvs3ySpbVwkU', 'Language Name', 'اسم اللغة', 'ar', '5481'),
('5484', 'AoeyIUuk1gNMkSDxZ2feko0cf', 'Language Code', 'Language Code', 'en', '0'),
('5485', 'AoeyIUuk1gNMkSDxZ2feko0cf', 'Language Code', 'Código de lenguaje', 'es', '5484'),
('5486', 'AoeyIUuk1gNMkSDxZ2feko0cf', 'Language Code', 'رمز اللغة', 'ar', '5484'),
('5487', 'xS1rB92EK4nY2aWJ5N7tg5QDw', 'Default Language', 'Default Language', 'en', '0'),
('5488', 'xS1rB92EK4nY2aWJ5N7tg5QDw', 'Default Language', 'Idioma predeterminado', 'es', '5487'),
('5489', 'xS1rB92EK4nY2aWJ5N7tg5QDw', 'Default Language', 'اللغة الافتراضية', 'ar', '5487'),
('5490', 'RqxpiU3gcovLbLs8ps5PgxdPn', 'Edit Keywords', 'Edit Keywords', 'en', '0'),
('5491', 'RqxpiU3gcovLbLs8ps5PgxdPn', 'Edit Keywords', 'Editar palabras clave', 'es', '5490'),
('5492', 'RqxpiU3gcovLbLs8ps5PgxdPn', 'Edit Keywords', 'تحرير الكلمات الأساسية', 'ar', '5490'),
('5493', 'espeiZJzcpkiPbutNQvicBaOK', 'Limitation Settings', 'Limitation Settings', 'en', '0'),
('5494', 'espeiZJzcpkiPbutNQvicBaOK', 'Limitation Settings', 'Configuración de limitación', 'es', '5493'),
('5495', 'espeiZJzcpkiPbutNQvicBaOK', 'Limitation Settings', 'إعدادات التقييد', 'ar', '5493'),
('5496', 'a6lmPnbM4bmkH6lZnTknjARp8', 'Product per page', 'Product per page', 'en', '0'),
('5497', 'a6lmPnbM4bmkH6lZnTknjARp8', 'Product per page', 'Producto por página', 'es', '5496'),
('5498', 'a6lmPnbM4bmkH6lZnTknjARp8', 'Product per page', 'المنتج لكل صفحة', 'ar', '5496'),
('5499', 'lOzqZ6J6nqosAgRRgii3tFVTd', 'Comment per page', 'Comment per page', 'en', '0'),
('5500', 'lOzqZ6J6nqosAgRRgii3tFVTd', 'Comment per page', 'Comentario por página', 'es', '5499'),
('5501', 'lOzqZ6J6nqosAgRRgii3tFVTd', 'Comment per page', 'التعليق لكل صفحة', 'ar', '5499'),
('5502', 'ZywC0oEjmPtdtIPBu7tqR5wNF', 'Post per page', 'Post per page', 'en', '0'),
('5503', 'ZywC0oEjmPtdtIPBu7tqR5wNF', 'Post per page', 'Publicar por página', 'es', '5502'),
('5504', 'ZywC0oEjmPtdtIPBu7tqR5wNF', 'Post per page', 'مشاركة في الصفحة', 'ar', '5502'),
('5505', '66W4KDJcGuWUq7djXxTuDBqBi', 'Review per page', 'Review per page', 'en', '0'),
('5506', '66W4KDJcGuWUq7djXxTuDBqBi', 'Review per page', 'Revisión por página', 'es', '5505'),
('5507', '66W4KDJcGuWUq7djXxTuDBqBi', 'Review per page', 'مراجعة لكل صفحة', 'ar', '5505'),
('5508', 'wK9PB05Z3fiW8vv4Ei80xFb0h', 'Main Menu Category Limitation', 'Main Menu Category Limitation', 'en', '0'),
('5509', 'wK9PB05Z3fiW8vv4Ei80xFb0h', 'Main Menu Category Limitation', 'Limitación de la categoría del menú principal', 'es', '5508'),
('5510', 'wK9PB05Z3fiW8vv4Ei80xFb0h', 'Main Menu Category Limitation', 'تحديد فئة القائمة الرئيسية', 'ar', '5508'),
('5511', 'reIEaUb1Kz2WmmtjhTraGFOBV', 'How many categories display on main menu', 'How many categories display on main menu', 'en', '0'),
('5512', 'reIEaUb1Kz2WmmtjhTraGFOBV', 'How many categories display on main menu', 'Cuántas categorías se muestran en el menú principal', 'es', '5511'),
('5513', 'reIEaUb1Kz2WmmtjhTraGFOBV', 'How many categories display on main menu', 'كم عدد الفئات المعروضة في القائمة الرئيسية', 'ar', '5511'),
('5514', 'KtR9Fi6AOsVJYKekw5PMl0kal', 'Category display on order', 'Category display on order', 'en', '0'),
('5515', 'KtR9Fi6AOsVJYKekw5PMl0kal', 'Category display on order', 'Visualización de categoría en orden', 'es', '5514'),
('5516', 'KtR9Fi6AOsVJYKekw5PMl0kal', 'Category display on order', 'عرض الفئة عند الطلب', 'ar', '5514'),
('5517', 'zzQQWcvCKrETI7Il8xRc7PQDt', 'ASC', 'ASC', 'en', '0'),
('5518', 'zzQQWcvCKrETI7Il8xRc7PQDt', 'ASC', 'ASC', 'es', '5517'),
('5519', 'zzQQWcvCKrETI7Il8xRc7PQDt', 'ASC', 'ASC', 'ar', '5517'),
('5520', 'yNlIKMBjc8bRLMNbue02h2ZTx', 'DESC', 'DESC', 'en', '0'),
('5521', 'yNlIKMBjc8bRLMNbue02h2ZTx', 'DESC', 'DESC', 'es', '5520'),
('5522', 'yNlIKMBjc8bRLMNbue02h2ZTx', 'DESC', 'DESC', 'ar', '5520'),
('5523', 'hBV621wOOdvKc99qRMfT76mXp', 'ASC - ascending order', 'ASC - ascending order', 'en', '0'),
('5524', 'hBV621wOOdvKc99qRMfT76mXp', 'ASC - ascending order', 'ASC - orden ascendente', 'es', '5523'),
('5525', 'hBV621wOOdvKc99qRMfT76mXp', 'ASC - ascending order', 'ASC - ترتيب تصاعدي', 'ar', '5523'),
('5526', 'UuQfF2hf9FW8BmGY9u9ZZLPVi', 'DESC - descending order', 'DESC - descending order', 'en', '0'),
('5527', 'UuQfF2hf9FW8BmGY9u9ZZLPVi', 'DESC - descending order', 'DESC - orden descendente', 'es', '5526'),
('5528', 'UuQfF2hf9FW8BmGY9u9ZZLPVi', 'DESC - descending order', 'تنازلي - ترتيب تنازلي', 'ar', '5526'),
('5529', 'lsHAP3qwsy7Al9tV38qZ88urV', 'Footer Menu Category Limitation', 'Footer Menu Category Limitation', 'en', '0'),
('5530', 'lsHAP3qwsy7Al9tV38qZ88urV', 'Footer Menu Category Limitation', 'Limitación de la categoría del menú de pie de página', 'es', '5529'),
('5531', 'lsHAP3qwsy7Al9tV38qZ88urV', 'Footer Menu Category Limitation', 'تحديد فئة قائمة التذييل', 'ar', '5529'),
('5532', 'aHnNqAofonXnkQmg4mNcCLD4O', 'How many categories display on footer menu', 'How many categories display on footer menu', 'en', '0'),
('5533', 'aHnNqAofonXnkQmg4mNcCLD4O', 'How many categories display on footer menu', 'Cuántas categorías se muestran en el menú de pie de página', 'es', '5532'),
('5534', 'aHnNqAofonXnkQmg4mNcCLD4O', 'How many categories display on footer menu', 'كم عدد الفئات المعروضة في قائمة التذييل', 'ar', '5532'),
('5535', 'dPOHBjV9iYJRYcOq9OjeTwfhX', 'Home Page Item Limitation', 'Home Page Item Limitation', 'en', '0'),
('5536', 'dPOHBjV9iYJRYcOq9OjeTwfhX', 'Home Page Item Limitation', 'Limitación de elementos de la página de inicio', 'es', '5535'),
('5537', 'dPOHBjV9iYJRYcOq9OjeTwfhX', 'Home Page Item Limitation', 'تحديد عنصر الصفحة الرئيسية', 'ar', '5535'),
('5538', 'jdnJuRsh9bO3dKBplWEtw3gOX', 'How many featured items display', 'How many featured items display', 'en', '0'),
('5539', 'jdnJuRsh9bO3dKBplWEtw3gOX', 'How many featured items display', 'Cuántos elementos destacados se muestran', 'es', '5538'),
('5540', 'jdnJuRsh9bO3dKBplWEtw3gOX', 'How many featured items display', 'كم عدد العناصر المميزة المعروضة', 'ar', '5538'),
('5541', 'QrzbeMyoSY1oe7daVTu7sCJkr', 'How many flash items display', 'How many flash items display', 'en', '0'),
('5542', 'QrzbeMyoSY1oe7daVTu7sCJkr', 'How many flash items display', 'Cuántos elementos flash se muestran', 'es', '5541'),
('5543', 'QrzbeMyoSY1oe7daVTu7sCJkr', 'How many flash items display', 'كم عدد عناصر الفلاش المعروضة', 'ar', '5541'),
('5544', 'm3Qh0Vj0qEvhNPkUsjHlfzP8A', 'How many blog post display', 'How many blog post display', 'en', '0'),
('5545', 'm3Qh0Vj0qEvhNPkUsjHlfzP8A', 'How many blog post display', 'Cuántas publicaciones de blog se muestran', 'es', '5544'),
('5546', 'm3Qh0Vj0qEvhNPkUsjHlfzP8A', 'How many blog post display', 'كم عدد بلوق وظيفة العرض', 'ar', '5544'),
('5547', 'e6xfaxzpPg09huNYcPPyqZ9Hc', 'How many popular items display', 'How many popular items display', 'en', '0'),
('5548', 'e6xfaxzpPg09huNYcPPyqZ9Hc', 'How many popular items display', 'Cuántos elementos populares se muestran', 'es', '5547'),
('5549', 'e6xfaxzpPg09huNYcPPyqZ9Hc', 'How many popular items display', 'كم عدد العناصر الشعبية المعروضة', 'ar', '5547'),
('5550', 'vHa0F0IPC0mFLxcyohP8P0uYy', 'How many new items display', 'How many new items display', 'en', '0'),
('5551', 'vHa0F0IPC0mFLxcyohP8P0uYy', 'How many new items display', 'Cuántos elementos nuevos se muestran', 'es', '5550'),
('5552', 'vHa0F0IPC0mFLxcyohP8P0uYy', 'How many new items display', 'كم عدد العناصر الجديدة المعروضة', 'ar', '5550'),
('5553', 'GBWjP0AvDLrLJxAG4GTg46ZTd', 'How many free items display', 'How many free items display', 'en', '0'),
('5554', 'GBWjP0AvDLrLJxAG4GTg46ZTd', 'How many free items display', 'Cuántos elementos gratuitos se muestran', 'es', '5553'),
('5555', 'GBWjP0AvDLrLJxAG4GTg46ZTd', 'How many free items display', 'كم عدد العناصر المجانية المعروضة', 'ar', '5553'),
('5556', '7TcVcah2H2wg5mWEarHuezkdc', 'Shop Page Price Limitation', 'Shop Page Price Limitation', 'en', '0'),
('5557', '7TcVcah2H2wg5mWEarHuezkdc', 'Shop Page Price Limitation', 'Limitación de precio de la página de la tienda', 'es', '5556'),
('5558', '7TcVcah2H2wg5mWEarHuezkdc', 'Shop Page Price Limitation', 'حد سعر صفحة المتجر', 'ar', '5556'),
('5559', 'JUgqzffJrIT2Q5YLFMtqo920l', 'Price range min price', 'Price range min price', 'en', '0'),
('5560', 'JUgqzffJrIT2Q5YLFMtqo920l', 'Price range min price', 'Rango de precios precio mínimo', 'es', '5559'),
('5561', 'JUgqzffJrIT2Q5YLFMtqo920l', 'Price range min price', 'النطاق السعري السعر الأدنى', 'ar', '5559'),
('5562', '1Zdb7PHnMyCROiyDn2kOVEE7A', 'Price range max price', 'Price range max price', 'en', '0'),
('5563', '1Zdb7PHnMyCROiyDn2kOVEE7A', 'Price range max price', 'Rango de precio precio máximo', 'es', '5562'),
('5564', '1Zdb7PHnMyCROiyDn2kOVEE7A', 'Price range max price', 'النطاق السعري السعر الأقصى', 'ar', '5562'),
('5565', 'fVJgsK1sC5WRMvObID9k0qlv5', 'Media Settings', 'Media Settings', 'en', '0'),
('5566', 'fVJgsK1sC5WRMvObID9k0qlv5', 'Media Settings', 'Configuración de medios', 'es', '5565'),
('5567', 'fVJgsK1sC5WRMvObID9k0qlv5', 'Media Settings', 'إعدادات الوسائط', 'ar', '5565'),
('5568', 'OKVbEKkK9V2crhv80Swj6b85I', 'Maximum Upload Image Size (KB)', 'Maximum Upload Image Size (KB)', 'en', '0'),
('5569', 'OKVbEKkK9V2crhv80Swj6b85I', 'Maximum Upload Image Size (KB)', 'Tamaño máximo de la imagen de carga (KB)', 'es', '5568'),
('5570', 'OKVbEKkK9V2crhv80Swj6b85I', 'Maximum Upload Image Size (KB)', 'الحجم الأقصى لتحميل الصورة (كيلو بايت)', 'ar', '5568'),
('5571', 'PKbltCQMq07kFo5yxoXqYqof4', 'Maximum Upload File Size (KB)', 'Maximum Upload File Size (KB)', 'en', '0'),
('5572', 'PKbltCQMq07kFo5yxoXqYqof4', 'Maximum Upload File Size (KB)', 'Tamaño máximo de archivo de carga (KB)', 'es', '5571'),
('5573', 'PKbltCQMq07kFo5yxoXqYqof4', 'Maximum Upload File Size (KB)', 'حجم ملف التحميل الأقصى (كيلو بايت)', 'ar', '5571'),
('5574', '2RwmWBMC5RI4Y3ZAKE33VbVoc', 'Large File Storage', 'Large File Storage', 'en', '0'),
('5575', '2RwmWBMC5RI4Y3ZAKE33VbVoc', 'Large File Storage', 'Almacenamiento de archivos grandes', 'es', '5574'),
('5576', '2RwmWBMC5RI4Y3ZAKE33VbVoc', 'Large File Storage', 'تخزين ملفات كبير', 'ar', '5574'),
('5577', 'mafrRIw3cw6nmhm3nM19Akibh', 'My Server', 'My Server', 'en', '0'),
('5578', 'mafrRIw3cw6nmhm3nM19Akibh', 'My Server', 'Mi servidor', 'es', '5577'),
('5579', 'mafrRIw3cw6nmhm3nM19Akibh', 'My Server', 'الخادم الخاص بي', 'ar', '5577'),
('5580', 'G70Xv8n6lSCQD1jAmGNImlOz4', 'Amazon S3 Storage', 'Amazon S3 Storage', 'en', '0'),
('5581', 'G70Xv8n6lSCQD1jAmGNImlOz4', 'Amazon S3 Storage', 'Almacenamiento de Amazon S3', 'es', '5580'),
('5582', 'G70Xv8n6lSCQD1jAmGNImlOz4', 'Amazon S3 Storage', 'تخزين Amazon S3', 'ar', '5580'),
('5583', 'a7bFxP5DRYw9YBKlLhjl9cda5', 'S3 Storage Configuration (If amazon s3 storage selected)', 'S3 Storage Configuration (If amazon s3 storage selected)', 'en', '0'),
('5584', 'a7bFxP5DRYw9YBKlLhjl9cda5', 'S3 Storage Configuration (If amazon s3 storage selected)', 'Configuración de almacenamiento S3 (si se selecciona Amazon S3 Storage)', 'es', '5583'),
('5585', 'a7bFxP5DRYw9YBKlLhjl9cda5', 'S3 Storage Configuration (If amazon s3 storage selected)', 'تكوين التخزين S3 (في حالة تحديد مساحة تخزين أمازون s3)', 'ar', '5583'),
('5586', 'GtmKMvjwatRc6hChS5q68vhWi', 'AWS ACCESS KEY ID', 'AWS ACCESS KEY ID', 'en', '0'),
('5587', 'GtmKMvjwatRc6hChS5q68vhWi', 'AWS ACCESS KEY ID', 'ID DE CLAVE DE ACCESO DE AWS', 'es', '5586'),
('5588', 'GtmKMvjwatRc6hChS5q68vhWi', 'AWS ACCESS KEY ID', 'معرّف مفتاح AWS ACCESS', 'ar', '5586'),
('5589', 'Lod29uIoew0yxBIkkLK2IfsIx', 'AWS SECRET ACCESS KEY', 'AWS SECRET ACCESS KEY', 'en', '0'),
('5590', 'Lod29uIoew0yxBIkkLK2IfsIx', 'AWS SECRET ACCESS KEY', 'LLAVE DE ACCESO SECRETA DE AWS', 'es', '5589'),
('5591', 'Lod29uIoew0yxBIkkLK2IfsIx', 'AWS SECRET ACCESS KEY', 'مفتاح الوصول السري في AWS', 'ar', '5589'),
('5592', '2FCit77jy1c3nwwm5s2PSuNwQ', 'AWS DEFAULT REGION', 'AWS DEFAULT REGION', 'en', '0'),
('5593', '2FCit77jy1c3nwwm5s2PSuNwQ', 'AWS DEFAULT REGION', 'REGIÓN POR DEFECTO DE AWS', 'es', '5592'),
('5594', '2FCit77jy1c3nwwm5s2PSuNwQ', 'AWS DEFAULT REGION', 'منطقة AWS الافتراضية', 'ar', '5592'),
('5595', 'A20gfUo7rTL2HxMVLkcP7k6OY', 'AWS BUCKET', 'AWS BUCKET', 'en', '0'),
('5596', 'A20gfUo7rTL2HxMVLkcP7k6OY', 'AWS BUCKET', 'CUCHARÓN AWS', 'es', '5595'),
('5597', 'A20gfUo7rTL2HxMVLkcP7k6OY', 'AWS BUCKET', 'AWS BUCKET', 'ar', '5595'),
('5598', 'S1MJ3AD0SqxsaZBLFQlsKhaup', 'yourbucketname', 'yourbucketname', 'en', '0'),
('5599', 'S1MJ3AD0SqxsaZBLFQlsKhaup', 'yourbucketname', 'yourbucketname', 'es', '5598'),
('5600', 'S1MJ3AD0SqxsaZBLFQlsKhaup', 'yourbucketname', 'yourbucketname', 'ar', '5598'),
('5601', 't6ANIwVgjV8cN6J9PjMZHlBCw', 'Buyer More Information', 'Buyer More Information', 'en', '0'),
('5602', 't6ANIwVgjV8cN6J9PjMZHlBCw', 'Buyer More Information', 'Comprador Más información', 'es', '5601'),
('5603', 't6ANIwVgjV8cN6J9PjMZHlBCw', 'Buyer More Information', 'المزيد من المعلومات للمشتري', 'ar', '5601'),
('5604', '1FAqYByoYqVG6zkm98S7VPCKV', 'Payment Settings', 'Payment Settings', 'en', '0'),
('5605', '1FAqYByoYqVG6zkm98S7VPCKV', 'Payment Settings', 'Configuración de pago', 'es', '5604'),
('5606', '1FAqYByoYqVG6zkm98S7VPCKV', 'Payment Settings', 'إعدادات الدفع', 'ar', '5604'),
('5607', 'ZKr6Wv9vrfUIT8OvThwcTZ46J', 'Social Settings', 'Social Settings', 'en', '0'),
('5608', 'ZKr6Wv9vrfUIT8OvThwcTZ46J', 'Social Settings', 'Ajustes sociales', 'es', '5607'),
('5609', 'ZKr6Wv9vrfUIT8OvThwcTZ46J', 'Social Settings', 'الوضع الاجتماعي', 'ar', '5607'),
('5610', 'zPxC8WwX4QdokPBUWj0rJrL4m', 'Preferred Settings', 'Preferred Settings', 'en', '0'),
('5611', 'zPxC8WwX4QdokPBUWj0rJrL4m', 'Preferred Settings', 'Configuración preferida', 'es', '5610'),
('5612', 'zPxC8WwX4QdokPBUWj0rJrL4m', 'Preferred Settings', 'الإعدادات المفضلة', 'ar', '5610'),
('5613', 'E8TsXw90REuyNLxK0bE9cVMt8', 'User Roles', 'User Roles', 'en', '0'),
('5614', 'E8TsXw90REuyNLxK0bE9cVMt8', 'User Roles', 'Roles del usuario', 'es', '5613'),
('5615', 'E8TsXw90REuyNLxK0bE9cVMt8', 'User Roles', 'أدوار المستخدمين', 'ar', '5613'),
('5616', 'QEW5XabPapZE5rGTopcI8UPdu', 'Vendors', 'Vendors', 'en', '0'),
('5617', 'QEW5XabPapZE5rGTopcI8UPdu', 'Vendors', 'Vendedoras', 'es', '5616'),
('5618', 'QEW5XabPapZE5rGTopcI8UPdu', 'Vendors', 'الباعة', 'ar', '5616'),
('5619', 'IuiwL8z3UJvzdRUGZeIFBkrgp', 'Orders', 'Orders', 'en', '0'),
('5620', 'IuiwL8z3UJvzdRUGZeIFBkrgp', 'Orders', 'Pedidos', 'es', '5619'),
('5621', 'IuiwL8z3UJvzdRUGZeIFBkrgp', 'Orders', 'الطلب #٪ s', 'ar', '5619'),
('5622', 'msqwdA5RW7w1GDJDMkR1mGNmI', 'Rating & Reviews', 'Rating & Reviews', 'en', '0'),
('5623', 'msqwdA5RW7w1GDJDMkR1mGNmI', 'Rating & Reviews', 'Calificación y reseñas', 'es', '5622'),
('5624', 'msqwdA5RW7w1GDJDMkR1mGNmI', 'Rating & Reviews', 'التقييم والمراجعات', 'ar', '5622'),
('5625', 'Bc3Oqh0MtRfZQh74zGW6Vj76d', 'Withdrawal Request', 'Withdrawal Request', 'en', '0'),
('5626', 'Bc3Oqh0MtRfZQh74zGW6Vj76d', 'Withdrawal Request', 'Solicitud de Retiro', 'es', '5625'),
('5627', 'Bc3Oqh0MtRfZQh74zGW6Vj76d', 'Withdrawal Request', 'طلب سحب', 'ar', '5625'),
('5628', 'jKocUELo02MPhfxb63ztehd4Y', 'Post', 'Post', 'en', '0'),
('5629', 'jKocUELo02MPhfxb63ztehd4Y', 'Post', 'Enviar', 'es', '5628'),
('5630', 'jKocUELo02MPhfxb63ztehd4Y', 'Post', 'بريد', 'ar', '5628'),
('5631', 'LiWeoGjHFLbblIod95pVmcDdK', 'Send Updates', 'Send Updates', 'en', '0'),
('5632', 'LiWeoGjHFLbblIod95pVmcDdK', 'Send Updates', 'Enviar actualizaciones', 'es', '5631'),
('5633', 'LiWeoGjHFLbblIod95pVmcDdK', 'Send Updates', 'إرسال التحديثات', 'ar', '5631'),
('5634', 'FI6d0f0vVbKeGoBX1ldfkQQie', 'Token', 'Token', 'en', '0'),
('5635', 'FI6d0f0vVbKeGoBX1ldfkQQie', 'Token', 'Simbólica', 'es', '5634'),
('5636', 'FI6d0f0vVbKeGoBX1ldfkQQie', 'Token', 'رمز', 'ar', '5634'),
('5637', 'uG2kiExyYEEY3dl6iXdvpMa7R', 'Activated', 'Activated', 'en', '0'),
('5638', 'uG2kiExyYEEY3dl6iXdvpMa7R', 'Activated', 'Activada', 'es', '5637'),
('5639', 'uG2kiExyYEEY3dl6iXdvpMa7R', 'Activated', 'مفعل', 'ar', '5637'),
('5640', 'shMw2VTSyVcwQ7kSTGEZzYwXU', 'InActivated', 'InActivated', 'en', '0'),
('5641', 'shMw2VTSyVcwQ7kSTGEZzYwXU', 'InActivated', 'InActivated', 'es', '5640'),
('5642', 'shMw2VTSyVcwQ7kSTGEZzYwXU', 'InActivated', 'غير مفعل', 'ar', '5640'),
('5643', '6WHfZz2jE2a3r3kJs9g7W2gd4', 'Newsletter Updates', 'Newsletter Updates', 'en', '0'),
('5644', '6WHfZz2jE2a3r3kJs9g7W2gd4', 'Newsletter Updates', 'Actualizaciones del boletín', 'es', '5643'),
('5645', '6WHfZz2jE2a3r3kJs9g7W2gd4', 'Newsletter Updates', 'تحديثات النشرة الإخبارية', 'ar', '5643'),
('5646', 'dv8hwTyrXUqy52Plvh9VdQSma', 'Newsletter updates received. Please visit our website', 'Newsletter updates received. Please visit our website', 'en', '0'),
('5647', 'dv8hwTyrXUqy52Plvh9VdQSma', 'Newsletter updates received. Please visit our website', 'Se recibieron actualizaciones del boletín. Visite nuestro sitio web', 'es', '5646'),
('5648', 'dv8hwTyrXUqy52Plvh9VdQSma', 'Newsletter updates received. Please visit our website', 'تلقي تحديثات النشرة الإخبارية. يرجى زيارة موقعنا على شبكة الانترنت', 'ar', '5646'),
('5649', 'EMX7QJjlAtg9BwGPoyIT3aRvj', 'Content', 'Content', 'en', '0'),
('5650', 'EMX7QJjlAtg9BwGPoyIT3aRvj', 'Content', 'Contenido', 'es', '5649'),
('5651', 'EMX7QJjlAtg9BwGPoyIT3aRvj', 'Content', 'المحتوى', 'ar', '5649'),
('5652', 'G25LbODYJdX7nHASaiwQQACnR', 'Coupon Type', 'Coupon Type', 'en', '0'),
('5653', 'G25LbODYJdX7nHASaiwQQACnR', 'Coupon Type', 'Tipo de cupón', 'es', '5652'),
('5654', 'G25LbODYJdX7nHASaiwQQACnR', 'Coupon Type', 'نوع القسيمة', 'ar', '5652'),
('5655', 't2LZWl2zxcL6smGJ7DZqd1U2e', 'Discount Amount', 'Discount Amount', 'en', '0'),
('5656', 't2LZWl2zxcL6smGJ7DZqd1U2e', 'Discount Amount', 'Importe de descuento', 'es', '5655'),
('5657', 't2LZWl2zxcL6smGJ7DZqd1U2e', 'Discount Amount', 'مقدار الخصم', 'ar', '5655'),
('5658', 'QN1JgB89Okw0TZctEhrBpodfN', 'Vendor Amount', 'Vendor Amount', 'en', '0'),
('5659', 'QN1JgB89Okw0TZctEhrBpodfN', 'Vendor Amount', 'Monto del proveedor', 'es', '5658'),
('5660', 'QN1JgB89Okw0TZctEhrBpodfN', 'Vendor Amount', 'مبلغ البائع', 'ar', '5658'),
('5661', 'CFuEUAFJkVKvcDlGWvp4Oom5Q', 'Admin Amount', 'Admin Amount', 'en', '0'),
('5662', 'CFuEUAFJkVKvcDlGWvp4Oom5Q', 'Admin Amount', 'Importe administrativo', 'es', '5661'),
('5663', 'CFuEUAFJkVKvcDlGWvp4Oom5Q', 'Admin Amount', 'مبلغ المسؤول', 'ar', '5661'),
('5664', 'NEdNcCNZHly2vXSAKxMoQdTQA', 'Total Amount', 'Total Amount', 'en', '0'),
('5665', 'NEdNcCNZHly2vXSAKxMoQdTQA', 'Total Amount', 'Cantidad total', 'es', '5664'),
('5666', 'NEdNcCNZHly2vXSAKxMoQdTQA', 'Total Amount', 'المبلغ الإجمالي', 'ar', '5664'),
('5667', 'GEm7Rz4iBi1WuZHnDsobXc8NS', 'Payment Status', 'Payment Status', 'en', '0'),
('5668', 'GEm7Rz4iBi1WuZHnDsobXc8NS', 'Payment Status', 'Estado de pago', 'es', '5667'),
('5669', 'GEm7Rz4iBi1WuZHnDsobXc8NS', 'Payment Status', 'حالة السداد', 'ar', '5667'),
('5670', '4ZwyNYaSX5lZMkykJRLQiWI3c', 'Payment Approval', 'Payment Approval', 'en', '0'),
('5671', '4ZwyNYaSX5lZMkykJRLQiWI3c', 'Payment Approval', 'Aprobación de pago', 'es', '5670'),
('5672', '4ZwyNYaSX5lZMkykJRLQiWI3c', 'Payment Approval', 'الموافقة على الدفع', 'ar', '5670'),
('5673', 'ACM3zptWBunO0krTXRC3GCxcC', 'Completed', 'Completed', 'en', '0'),
('5674', 'ACM3zptWBunO0krTXRC3GCxcC', 'Completed', 'Terminada', 'es', '5673'),
('5675', 'ACM3zptWBunO0krTXRC3GCxcC', 'Completed', 'منجز', 'ar', '5673'),
('5676', '4BsYc6lFO5pUXmwmsuKRv952t', 'Pending', 'Pending', 'en', '0'),
('5677', '4BsYc6lFO5pUXmwmsuKRv952t', 'Pending', 'Pendiente', 'es', '5676'),
('5678', '4BsYc6lFO5pUXmwmsuKRv952t', 'Pending', 'قيد الانتظار', 'ar', '5676'),
('5679', '56dvqqp1pINwQ3o7xgs07LlBG', 'payment released to vendor', 'payment released to vendor', 'en', '0'),
('5680', '56dvqqp1pINwQ3o7xgs07LlBG', 'payment released to vendor', 'pago liberado al proveedor', 'es', '5679'),
('5681', '56dvqqp1pINwQ3o7xgs07LlBG', 'payment released to vendor', 'تم تحرير الدفعة للبائع', 'ar', '5679'),
('5682', 'tDKCZoOwcildeSbrGEsLB7yS8', 'Are you sure you will payment released to vendor', 'Are you sure you will payment released to vendor', 'en', '0'),
('5683', 'tDKCZoOwcildeSbrGEsLB7yS8', 'Are you sure you will payment released to vendor', '¿Está seguro de que el pago se entregará al proveedor?', 'es', '5682'),
('5684', 'tDKCZoOwcildeSbrGEsLB7yS8', 'Are you sure you will payment released to vendor', 'هل أنت متأكد أنك ستفرج عن الدفع للبائع', 'ar', '5682'),
('5685', 'D3Yt3faB906w2N6HuGW4D9l8Z', 'payment released to buyer', 'payment released to buyer', 'en', '0'),
('5686', 'D3Yt3faB906w2N6HuGW4D9l8Z', 'payment released to buyer', 'Pago liberado a la compradora', 'es', '5685'),
('5687', 'D3Yt3faB906w2N6HuGW4D9l8Z', 'payment released to buyer', 'صدر الدفع للمشتري', 'ar', '5685'),
('5688', 'irqmjGTUeBcCQvMys4jLzWsu8', 'Are you sure you will payment released to buyer', 'Are you sure you will payment released to buyer', 'en', '0'),
('5689', 'irqmjGTUeBcCQvMys4jLzWsu8', 'Are you sure you will payment released to buyer', '¿Estás seguro de que el pago se entregará al comprador?', 'es', '5688'),
('5690', 'irqmjGTUeBcCQvMys4jLzWsu8', 'Are you sure you will payment released to buyer', 'هل أنت متأكد أنك ستفرج عن الدفع للمشتري', 'ar', '5688'),
('5691', 'UwzUEosVRmEgV62WERBr27i4t', 'Cancel Approval', 'Cancel Approval', 'en', '0'),
('5692', 'UwzUEosVRmEgV62WERBr27i4t', 'Cancel Approval', 'Cancelar aprobación', 'es', '5691'),
('5693', 'UwzUEosVRmEgV62WERBr27i4t', 'Cancel Approval', 'إلغاء الموافقة', 'ar', '5691'),
('5694', 'neSH8WtmM3UdFLuCtELrFPegK', 'Complete Payment? (Localbank Only)', 'Complete Payment? (Localbank Only)', 'en', '0'),
('5695', 'neSH8WtmM3UdFLuCtELrFPegK', 'Complete Payment? (Localbank Only)', '¿El pago completo? (Solo banco local)', 'es', '5694'),
('5696', 'neSH8WtmM3UdFLuCtELrFPegK', 'Complete Payment? (Localbank Only)', 'دفع كامل؟ (البنك المحلي فقط)', 'ar', '5694'),
('5697', 'MOITshE2GZljcWImamLih1tjT', 'Are you sure click to complete payment', 'Are you sure click to complete payment', 'en', '0'),
('5698', 'MOITshE2GZljcWImamLih1tjT', 'Are you sure click to complete payment', '¿Estás seguro de hacer clic para completar el pago?', 'es', '5697'),
('5699', 'MOITshE2GZljcWImamLih1tjT', 'Are you sure click to complete payment', 'هل أنت متأكد من النقر لإكمال الدفع', 'ar', '5697'),
('5700', 'd1G84yrNuTuEzRIW9Oiq2p14S', 'Click to Complete Payment', 'Click to Complete Payment', 'en', '0'),
('5701', 'd1G84yrNuTuEzRIW9Oiq2p14S', 'Click to Complete Payment', 'Haga clic para completar el pago', 'es', '5700'),
('5702', 'd1G84yrNuTuEzRIW9Oiq2p14S', 'Click to Complete Payment', 'انقر لإكمال الدفع', 'ar', '5700'),
('5703', 'aQsDUFWlROiuSuxN9R1OOXBiq', 'View More', 'View More', 'en', '0'),
('5704', 'aQsDUFWlROiuSuxN9R1OOXBiq', 'View More', 'Ver más', 'es', '5703'),
('5705', 'aQsDUFWlROiuSuxN9R1OOXBiq', 'View More', 'عرض المزيد', 'ar', '5703'),
('5706', 'ZF1eUm1fHanmtZPBTYXXDAIVc', 'Exclusive Author Commission', 'Exclusive Author Commission', 'en', '0'),
('5707', 'ZF1eUm1fHanmtZPBTYXXDAIVc', 'Exclusive Author Commission', 'Comisión de autor exclusivo', 'es', '5706'),
('5708', 'ZF1eUm1fHanmtZPBTYXXDAIVc', 'Exclusive Author Commission', 'لجنة المؤلف الحصري', 'ar', '5706'),
('5709', 'QQ4PFe4p7digJbDCw9qkReZYg', 'if admin set 10% so vendor get 90% of earning amount', 'if admin set 10% so vendor get 90% of earning amount', 'en', '0'),
('5710', 'QQ4PFe4p7digJbDCw9qkReZYg', 'if admin set 10% so vendor get 90% of earning amount', 'si el administrador configuró el 10% para que el proveedor obtenga el 90% de la cantidad de ganancias', 'es', '5709'),
('5711', 'QQ4PFe4p7digJbDCw9qkReZYg', 'if admin set 10% so vendor get 90% of earning amount', 'إذا قام المسؤول بتعيين 10٪ ، فسيحصل البائع على 90٪ من مبلغ الربح', 'ar', '5709'),
('5712', 'AlMRWtdRbx2g10u63wBJ3SZJt', 'Non Exclusive Author Commission', 'Non Exclusive Author Commission', 'en', '0'),
('5713', 'AlMRWtdRbx2g10u63wBJ3SZJt', 'Non Exclusive Author Commission', 'Comisión de autor no exclusivo', 'es', '5712'),
('5714', 'AlMRWtdRbx2g10u63wBJ3SZJt', 'Non Exclusive Author Commission', 'عمولة المؤلف غير الحصري', 'ar', '5712'),
('5715', 'LoNOzCjt2TTgBv1UVtrTjJ6NI', 'Minium withdrawal amount', 'Minium withdrawal amount', 'en', '0'),
('5716', 'LoNOzCjt2TTgBv1UVtrTjJ6NI', 'Minium withdrawal amount', 'Monto mínimo de retiro', 'es', '5715');
INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
('5717', 'LoNOzCjt2TTgBv1UVtrTjJ6NI', 'Minium withdrawal amount', 'الحد الأدنى لمبلغ السحب', 'ar', '5715'),
('5718', 'MGUZu0vgiUmq9rp6ijMQCQalR', 'if you will set \"0\" processing fee is OFF', 'if you will set \"0\" processing fee is OFF', 'en', '0'),
('5719', 'MGUZu0vgiUmq9rp6ijMQCQalR', 'if you will set \"0\" processing fee is OFF', 'si establece \"0\", la tarifa de procesamiento está DESACTIVADA', 'es', '5718'),
('5720', 'MGUZu0vgiUmq9rp6ijMQCQalR', 'if you will set \"0\" processing fee is OFF', 'إذا قمت بتعيين \"0\" رسوم المعالجة متوقفة', 'ar', '5718'),
('5721', 'JT4fk7mNzjVnRkKFCH531r1TH', 'Referral Commission', 'Referral Commission', 'en', '0'),
('5722', 'JT4fk7mNzjVnRkKFCH531r1TH', 'Referral Commission', 'Comisión de remisión', 'es', '5721'),
('5723', 'JT4fk7mNzjVnRkKFCH531r1TH', 'Referral Commission', 'لجنة الإحالة', 'ar', '5721'),
('5724', 'pNRp7W6rhl0XUU9cytDIOqzsu', 'Payment Methods', 'Payment Methods', 'en', '0'),
('5725', 'pNRp7W6rhl0XUU9cytDIOqzsu', 'Payment Methods', 'Métodos de pago', 'es', '5724'),
('5726', 'pNRp7W6rhl0XUU9cytDIOqzsu', 'Payment Methods', 'طرق الدفع', 'ar', '5724'),
('5727', 'HeKT9Q1hp9xmf07n7V3RqBWDz', 'NGN - currency only support', 'NGN - currency only support', 'en', '0'),
('5728', 'HeKT9Q1hp9xmf07n7V3RqBWDz', 'NGN - currency only support', 'NGN: soporte solo para moneda', 'es', '5727'),
('5729', 'HeKT9Q1hp9xmf07n7V3RqBWDz', 'NGN - currency only support', 'NGN - دعم العملة فقط', 'ar', '5727'),
('5730', 'n9RnUXkw3Ch9wAQZuB7MMov7i', 'Withdraw Methods', 'Withdraw Methods', 'en', '0'),
('5731', 'n9RnUXkw3Ch9wAQZuB7MMov7i', 'Withdraw Methods', 'Métodos de retiro', 'es', '5730'),
('5732', 'n9RnUXkw3Ch9wAQZuB7MMov7i', 'Withdraw Methods', 'طرق السحب', 'ar', '5730'),
('5733', 'lRxMB5ss5cHkmMYmo5KmVHxRm', 'Paypal Settings', 'Paypal Settings', 'en', '0'),
('5734', 'lRxMB5ss5cHkmMYmo5KmVHxRm', 'Paypal Settings', 'Configuración de Paypal', 'es', '5733'),
('5735', 'lRxMB5ss5cHkmMYmo5KmVHxRm', 'Paypal Settings', 'إعدادات Paypal', 'ar', '5733'),
('5736', 'jJrzDF12wZWi8qzmNMo7ROqMy', 'Paypal Mode', 'Paypal Mode', 'en', '0'),
('5737', 'jJrzDF12wZWi8qzmNMo7ROqMy', 'Paypal Mode', 'Modo Paypal', 'es', '5736'),
('5738', 'jJrzDF12wZWi8qzmNMo7ROqMy', 'Paypal Mode', 'وضع Paypal', 'ar', '5736'),
('5739', 'XOn24Kixxwg00kLJvejSKnnIH', 'Live', 'Live', 'en', '0'),
('5740', 'XOn24Kixxwg00kLJvejSKnnIH', 'Live', 'En Vivo', 'es', '5739'),
('5741', 'XOn24Kixxwg00kLJvejSKnnIH', 'Live', 'حي', 'ar', '5739'),
('5742', 'od7knzL489WQk5KyojzK7nUGY', 'Demo', 'Demo', 'en', '0'),
('5743', 'od7knzL489WQk5KyojzK7nUGY', 'Demo', 'Manifestación', 'es', '5742'),
('5744', 'od7knzL489WQk5KyojzK7nUGY', 'Demo', 'تجريبي', 'ar', '5742'),
('5745', 'lXyPXeeasR0HGpl6qEv0WZL1A', 'Stripe Settings', 'Stripe Settings', 'en', '0'),
('5746', 'lXyPXeeasR0HGpl6qEv0WZL1A', 'Stripe Settings', 'Configuración de rayas', 'es', '5745'),
('5747', 'lXyPXeeasR0HGpl6qEv0WZL1A', 'Stripe Settings', 'إعدادات الشريط', 'ar', '5745'),
('5748', 'B0DpaDIkQSY1VbeOf0XoqiM6j', 'Stripe Mode', 'Stripe Mode', 'en', '0'),
('5749', 'B0DpaDIkQSY1VbeOf0XoqiM6j', 'Stripe Mode', 'Modo de banda', 'es', '5748'),
('5750', 'B0DpaDIkQSY1VbeOf0XoqiM6j', 'Stripe Mode', 'وضع الشريط', 'ar', '5748'),
('5751', 'TkxVqswxszq2SRnJ3SZsIjXND', 'Test Publishable Key', 'Test Publishable Key', 'en', '0'),
('5752', 'TkxVqswxszq2SRnJ3SZsIjXND', 'Test Publishable Key', 'Prueba de clave publicable', 'es', '5751'),
('5753', 'TkxVqswxszq2SRnJ3SZsIjXND', 'Test Publishable Key', 'اختبار المفتاح القابل للنشر', 'ar', '5751'),
('5754', 'lwe1nk5tbxZMOfllTFgMAEUpv', 'Live Publishable Key', 'Live Publishable Key', 'en', '0'),
('5755', 'lwe1nk5tbxZMOfllTFgMAEUpv', 'Live Publishable Key', 'Clave publicable en vivo', 'es', '5754'),
('5756', 'lwe1nk5tbxZMOfllTFgMAEUpv', 'Live Publishable Key', 'مفتاح مباشر قابل للنشر', 'ar', '5754'),
('5757', '2rqE9cxC04TJ9G60Q9jqQkUBj', 'Test Secret Key', 'Test Secret Key', 'en', '0'),
('5758', '2rqE9cxC04TJ9G60Q9jqQkUBj', 'Test Secret Key', 'Probar clave secreta', 'es', '5757'),
('5759', '2rqE9cxC04TJ9G60Q9jqQkUBj', 'Test Secret Key', 'اختبار المفتاح السري', 'ar', '5757'),
('5760', 'jddCpsYBkvpLpZMsaMQMxr8B5', 'Live Secret Key', 'Live Secret Key', 'en', '0'),
('5761', 'jddCpsYBkvpLpZMsaMQMxr8B5', 'Live Secret Key', 'Clave secreta en vivo', 'es', '5760'),
('5762', 'jddCpsYBkvpLpZMsaMQMxr8B5', 'Live Secret Key', 'مفتاح سري مباشر', 'ar', '5760'),
('5763', '80RtYLgqwxhD7IPE6kMRbGXaM', 'Paystack Settings', 'Paystack Settings', 'en', '0'),
('5764', '80RtYLgqwxhD7IPE6kMRbGXaM', 'Paystack Settings', 'Configuración de la pila de pagos', 'es', '5763'),
('5765', '80RtYLgqwxhD7IPE6kMRbGXaM', 'Paystack Settings', 'إعدادات Paystack', 'ar', '5763'),
('5766', 'zaRf6NQ6MvDzpeiFvSFUchwc7', 'Paystack Public Key', 'Paystack Public Key', 'en', '0'),
('5767', 'zaRf6NQ6MvDzpeiFvSFUchwc7', 'Paystack Public Key', 'Paystack Public Key', 'es', '5766'),
('5768', 'zaRf6NQ6MvDzpeiFvSFUchwc7', 'Paystack Public Key', 'المفتاح العمومي Paystack', 'ar', '5766'),
('5769', 'ugr5brdvdrzg74mtrV0ZKopPx', 'Paystack Secret Key', 'Paystack Secret Key', 'en', '0'),
('5770', 'ugr5brdvdrzg74mtrV0ZKopPx', 'Paystack Secret Key', 'Clave secreta de Paystack', 'es', '5769'),
('5771', 'ugr5brdvdrzg74mtrV0ZKopPx', 'Paystack Secret Key', 'المفتاح السري Paystack', 'ar', '5769'),
('5772', 'fyXTWixwLmOOdHZrJput05xgh', 'Paystack Merchant Email', 'Paystack Merchant Email', 'en', '0'),
('5773', 'fyXTWixwLmOOdHZrJput05xgh', 'Paystack Merchant Email', 'Correo electrónico del comerciante de Paystack', 'es', '5772'),
('5774', 'fyXTWixwLmOOdHZrJput05xgh', 'Paystack Merchant Email', 'البريد الإلكتروني لتاجر Paystack', 'ar', '5772'),
('5775', 'YolDehkRHP48SnsJhQyBTibjJ', 'Bank Settings', 'Bank Settings', 'en', '0'),
('5776', 'YolDehkRHP48SnsJhQyBTibjJ', 'Bank Settings', 'Configuración del banco', 'es', '5775'),
('5777', 'YolDehkRHP48SnsJhQyBTibjJ', 'Bank Settings', 'إعدادات البنك', 'ar', '5775'),
('5778', 'oXeqVKldRiGhIrUzJJFkGjnay', 'Local Bank Details', 'Local Bank Details', 'en', '0'),
('5779', 'oXeqVKldRiGhIrUzJJFkGjnay', 'Local Bank Details', 'Detalles del banco local', 'es', '5778'),
('5780', 'oXeqVKldRiGhIrUzJJFkGjnay', 'Local Bank Details', 'تفاصيل البنك المحلي', 'ar', '5778'),
('5781', 'vqlRSClxr4MXiVxcS5vfXk8sZ', 'Bank Name', 'Bank Name', 'en', '0'),
('5782', 'vqlRSClxr4MXiVxcS5vfXk8sZ', 'Bank Name', 'Nombre del banco', 'es', '5781'),
('5783', 'vqlRSClxr4MXiVxcS5vfXk8sZ', 'Bank Name', 'اسم البنك', 'ar', '5781'),
('5784', 'pplfrnolMtQlL4nMhQ7mIM0Jk', 'Branch Name', 'Branch Name', 'en', '0'),
('5785', 'pplfrnolMtQlL4nMhQ7mIM0Jk', 'Branch Name', 'Nombre de la sucursal', 'es', '5784'),
('5786', 'pplfrnolMtQlL4nMhQ7mIM0Jk', 'Branch Name', 'اسم الفرع', 'ar', '5784'),
('5787', 'I3TrctB7fyuNGCOt0CkxGEFUA', 'Branch Code', 'Branch Code', 'en', '0'),
('5788', 'I3TrctB7fyuNGCOt0CkxGEFUA', 'Branch Code', 'Código de sucursal', 'es', '5787'),
('5789', 'I3TrctB7fyuNGCOt0CkxGEFUA', 'Branch Code', 'رمز الفرع', 'ar', '5787'),
('5790', 'VPsrxEhALnfeTG4uhzBZlfBNk', 'IFSC Code', 'IFSC Code', 'en', '0'),
('5791', 'VPsrxEhALnfeTG4uhzBZlfBNk', 'IFSC Code', 'Código IFSC', 'es', '5790'),
('5792', 'VPsrxEhALnfeTG4uhzBZlfBNk', 'IFSC Code', 'كود IFSC', 'ar', '5790'),
('5793', 'TlYvMC0iZ10pQeZeJRlewQaYz', 'Posts', 'Posts', 'en', '0'),
('5794', 'TlYvMC0iZ10pQeZeJRlewQaYz', 'Posts', 'Publicaciones', 'es', '5793'),
('5795', 'TlYvMC0iZ10pQeZeJRlewQaYz', 'Posts', 'المشاركات', 'ar', '5793'),
('5796', 'WCCu49M7EQoyf6KIsFvCkcTh0', 'Products Import / Export', 'Products Import / Export', 'en', '0'),
('5797', 'WCCu49M7EQoyf6KIsFvCkcTh0', 'Products Import / Export', 'Importación / Exportación de Productos', 'es', '5796'),
('5798', 'WCCu49M7EQoyf6KIsFvCkcTh0', 'Products Import / Export', 'استيراد / تصدير المنتجات', 'ar', '5796'),
('5799', 'VN9VIJ2sw217xPooKKbGFySE5', 'Download Product XLSX', 'Download Product XLSX', 'en', '0'),
('5800', 'VN9VIJ2sw217xPooKKbGFySE5', 'Download Product XLSX', 'Descargar producto XLSX', 'es', '5799'),
('5801', 'VN9VIJ2sw217xPooKKbGFySE5', 'Download Product XLSX', 'تنزيل المنتج XLSX', 'ar', '5799'),
('5802', 'Peq2Uasfw1NDJ0eCiY6TDRFFi', 'Import XLSX', 'Import XLSX', 'en', '0'),
('5803', 'Peq2Uasfw1NDJ0eCiY6TDRFFi', 'Import XLSX', 'Importar XLSX', 'es', '5802'),
('5804', 'Peq2Uasfw1NDJ0eCiY6TDRFFi', 'Import XLSX', 'استيراد XLSX', 'ar', '5802'),
('5805', '2xeSCCEWZS4UpEq4nw4OqWRI9', 'Rating Comment', 'Rating Comment', 'en', '0'),
('5806', '2xeSCCEWZS4UpEq4nw4OqWRI9', 'Rating Comment', 'Comentario de calificación', 'es', '5805'),
('5807', '2xeSCCEWZS4UpEq4nw4OqWRI9', 'Rating Comment', 'تعليق التقييم', 'ar', '5805'),
('5808', 'sSZDVDoiAU9mDWomsD2WCBwA2', 'Stars', 'Stars', 'en', '0'),
('5809', 'sSZDVDoiAU9mDWomsD2WCBwA2', 'Stars', 'Estrellas', 'es', '5808'),
('5810', 'sSZDVDoiAU9mDWomsD2WCBwA2', 'Stars', 'النجوم', 'ar', '5808'),
('5811', 'rGt7cGtTMYbOoVLKfhipnxxO8', 'Refund Comment', 'Refund Comment', 'en', '0'),
('5812', 'rGt7cGtTMYbOoVLKfhipnxxO8', 'Refund Comment', 'Comentario de reembolso', 'es', '5811'),
('5813', 'rGt7cGtTMYbOoVLKfhipnxxO8', 'Refund Comment', 'رد التعليق', 'ar', '5811'),
('5814', '5udCvlqs31LhTiJsp0y4EA5l8', 'Refund Accept', 'Refund Accept', 'en', '0'),
('5815', '5udCvlqs31LhTiJsp0y4EA5l8', 'Refund Accept', 'Reembolso aceptar', 'es', '5814'),
('5816', '5udCvlqs31LhTiJsp0y4EA5l8', 'Refund Accept', 'قبول برد', 'ar', '5814'),
('5817', '0ihT8NgiK1YThdms5zMT9LQNG', 'Refund Declined', 'Refund Declined', 'en', '0'),
('5818', '0ihT8NgiK1YThdms5zMT9LQNG', 'Refund Declined', 'Reembolso rechazado', 'es', '5817'),
('5819', '0ihT8NgiK1YThdms5zMT9LQNG', 'Refund Declined', 'تم رفض رد الأموال', 'ar', '5817'),
('5820', 'V0nh9r2oaLtzGX1cyANpXQUWd', 'Declined', 'Declined', 'en', '0'),
('5821', 'V0nh9r2oaLtzGX1cyANpXQUWd', 'Declined', 'Rechazada', 'es', '5820'),
('5822', 'V0nh9r2oaLtzGX1cyANpXQUWd', 'Declined', 'رفض', 'ar', '5820'),
('5823', 'U6NaU0j5vcIkqwb1uNQYTnWmg', 'Accepted', 'Accepted', 'en', '0'),
('5824', 'U6NaU0j5vcIkqwb1uNQYTnWmg', 'Accepted', 'Aceptada', 'es', '5823'),
('5825', 'U6NaU0j5vcIkqwb1uNQYTnWmg', 'Accepted', 'وافقت', 'ar', '5823'),
('5826', 'Og1s9ykI7a5jB5kVb8cnqsFvr', 'Send Newsletter Updates', 'Send Newsletter Updates', 'en', '0'),
('5827', 'Og1s9ykI7a5jB5kVb8cnqsFvr', 'Send Newsletter Updates', 'Enviar actualizaciones del boletín', 'es', '5826'),
('5828', 'Og1s9ykI7a5jB5kVb8cnqsFvr', 'Send Newsletter Updates', 'إرسال تحديثات النشرة الإخبارية', 'ar', '5826'),
('5829', 'qMiGpS8mKH9CytTquTGxNRILi', 'Select all', 'Select all', 'en', '0'),
('5830', 'qMiGpS8mKH9CytTquTGxNRILi', 'Select all', 'Seleccionar todo', 'es', '5829'),
('5831', 'qMiGpS8mKH9CytTquTGxNRILi', 'Select all', 'اختر الكل', 'ar', '5829'),
('5832', 'TU5NldFYUlAtKwy3k0ro9l5BE', 'Pinterest Url', 'Pinterest Url', 'en', '0'),
('5833', 'TU5NldFYUlAtKwy3k0ro9l5BE', 'Pinterest Url', 'URL de Pinterest', 'es', '5832'),
('5834', 'TU5NldFYUlAtKwy3k0ro9l5BE', 'Pinterest Url', 'عنوان Pinterest Url', 'ar', '5832'),
('5835', 'fkRKkJyWAOvYbXkcPDeHVr3eS', 'Linkedin Url', 'Linkedin Url', 'en', '0'),
('5836', 'fkRKkJyWAOvYbXkcPDeHVr3eS', 'Linkedin Url', 'URL de Linkedin', 'es', '5835'),
('5837', 'fkRKkJyWAOvYbXkcPDeHVr3eS', 'Linkedin Url', 'رابط لينكد إن', 'ar', '5835'),
('5838', 'TTWfiuK6fRCsOkRGnw5Q93GCS', 'Instagram Url', 'Instagram Url', 'en', '0'),
('5839', 'TTWfiuK6fRCsOkRGnw5Q93GCS', 'Instagram Url', 'URL de Instagram', 'es', '5838'),
('5840', 'TTWfiuK6fRCsOkRGnw5Q93GCS', 'Instagram Url', 'رابط Instagram', 'ar', '5838'),
('5841', '3ncaFBRFB9Ua4dSU9bJ1OyJHK', 'Social Login', 'Social Login', 'en', '0'),
('5842', '3ncaFBRFB9Ua4dSU9bJ1OyJHK', 'Social Login', 'Inicio de sesión social', 'es', '5841'),
('5843', '3ncaFBRFB9Ua4dSU9bJ1OyJHK', 'Social Login', 'تسجيل الدخول الاجتماعي', 'ar', '5841'),
('5844', 'lMlgGTQCpRhGrRiLgA4SM2UxO', 'Facebook Client ID', 'Facebook Client ID', 'en', '0'),
('5845', 'lMlgGTQCpRhGrRiLgA4SM2UxO', 'Facebook Client ID', 'ID de cliente de Facebook', 'es', '5844'),
('5846', 'lMlgGTQCpRhGrRiLgA4SM2UxO', 'Facebook Client ID', 'معرف عميل Facebook', 'ar', '5844'),
('5847', '57yxmmryROHuvpyPZ0tBYnRNt', 'Facebook Client Secret', 'Facebook Client Secret', 'en', '0'),
('5848', '57yxmmryROHuvpyPZ0tBYnRNt', 'Facebook Client Secret', 'Secreto del cliente de Facebook', 'es', '5847'),
('5849', '57yxmmryROHuvpyPZ0tBYnRNt', 'Facebook Client Secret', 'سر عميل Facebook', 'ar', '5847'),
('5850', 'CPWiuB2iSbjyJapXmVJXvSBp3', 'Facebook Callback Url', 'Facebook Callback Url', 'en', '0'),
('5851', 'CPWiuB2iSbjyJapXmVJXvSBp3', 'Facebook Callback Url', 'URL de devolución de llamada de Facebook', 'es', '5850'),
('5852', 'CPWiuB2iSbjyJapXmVJXvSBp3', 'Facebook Callback Url', 'عنوان Url لرد الاتصال على Facebook', 'ar', '5850'),
('5853', 'fcLCEZS7UYMoo1M8Pyp3gH9wo', 'Google Client ID', 'Google Client ID', 'en', '0'),
('5854', 'fcLCEZS7UYMoo1M8Pyp3gH9wo', 'Google Client ID', 'ID de cliente de Google', 'es', '5853'),
('5855', 'fcLCEZS7UYMoo1M8Pyp3gH9wo', 'Google Client ID', 'معرف عميل Google', 'ar', '5853'),
('5856', '99R4FTr9G28mYARJgooIRpnxB', 'Google Client Secret', 'Google Client Secret', 'en', '0'),
('5857', '99R4FTr9G28mYARJgooIRpnxB', 'Google Client Secret', 'Secreto de cliente de Google', 'es', '5856'),
('5858', '99R4FTr9G28mYARJgooIRpnxB', 'Google Client Secret', 'سر عميل Google', 'ar', '5856'),
('5859', '7YNNs2yxf08fZmq1bIepgFMmZ', 'Google Callback Url', 'Google Callback Url', 'en', '0'),
('5860', '7YNNs2yxf08fZmq1bIepgFMmZ', 'Google Callback Url', 'URL de devolución de llamada de Google', 'es', '5859'),
('5861', '7YNNs2yxf08fZmq1bIepgFMmZ', 'Google Callback Url', 'عنوان Url لمعاودة الاتصال في Google', 'ar', '5859'),
('5862', 'kt1mvgsbjErOOuYJzpLIrQ2CH', 'Box', 'Box', 'en', '0'),
('5863', 'kt1mvgsbjErOOuYJzpLIrQ2CH', 'Box', 'Caja', 'es', '5862'),
('5864', 'kt1mvgsbjErOOuYJzpLIrQ2CH', 'Box', 'صندوق', 'ar', '5862'),
('5865', 'Z4DwXIQY4SoMGgoj4q1UM2AMS', 'Icon', 'Icon', 'en', '0'),
('5866', 'Z4DwXIQY4SoMGgoj4q1UM2AMS', 'Icon', 'Icono', 'es', '5865'),
('5867', 'Z4DwXIQY4SoMGgoj4q1UM2AMS', 'Icon', 'أيقونة', 'ar', '5865'),
('5868', 'iMoyqLns8GZONaUGSqFkPU6ar', 'Layout Look', 'Layout Look', 'en', '0'),
('5869', 'iMoyqLns8GZONaUGSqFkPU6ar', 'Layout Look', 'Diseño de aspecto', 'es', '5868'),
('5870', 'iMoyqLns8GZONaUGSqFkPU6ar', 'Layout Look', 'نظرة التخطيط', 'ar', '5868'),
('5871', 'kyYYDgqehEBRhhpO9seQB1Pvs', 'Three Box Title', 'Three Box Title', 'en', '0'),
('5872', 'kyYYDgqehEBRhhpO9seQB1Pvs', 'Three Box Title', 'Título de tres casillas', 'es', '5871'),
('5873', 'kyYYDgqehEBRhhpO9seQB1Pvs', 'Three Box Title', 'ثلاثة مربعات العنوان', 'ar', '5871'),
('5874', 'ZQ5B2qsMLWsVSXKnrO6vj6jrz', 'Button Title', 'Button Title', 'en', '0'),
('5875', 'ZQ5B2qsMLWsVSXKnrO6vj6jrz', 'Button Title', 'Título del botón', 'es', '5874'),
('5876', 'ZQ5B2qsMLWsVSXKnrO6vj6jrz', 'Button Title', 'عنوان الزر', 'ar', '5874'),
('5877', 'aBo3xy3tnR9a8DF94C1PAd49L', 'Payment Withdrawal Request Accepted', 'Payment Withdrawal Request Accepted', 'en', '0'),
('5878', 'aBo3xy3tnR9a8DF94C1PAd49L', 'Payment Withdrawal Request Accepted', 'Solicitud de retiro de pago aceptada', 'es', '5877'),
('5879', 'aBo3xy3tnR9a8DF94C1PAd49L', 'Payment Withdrawal Request Accepted', 'قبول طلب سحب المدفوعات', 'ar', '5877'),
('5880', 'pVzWoKaKzbf4fyeqAu86lqvwc', 'Your payment withdrawal request is accepted and amount will be credit on your payment gateway or bank account', 'Your payment withdrawal request is accepted and amount will be credit on your payment gateway or bank account', 'en', '0'),
('5881', 'pVzWoKaKzbf4fyeqAu86lqvwc', 'Your payment withdrawal request is accepted and amount will be credit on your payment gateway or bank account', 'Se acepta su solicitud de retiro de pago y el monto se acreditará en su pasarela de pago o cuenta bancaria', 'es', '5880'),
('5882', 'pVzWoKaKzbf4fyeqAu86lqvwc', 'Your payment withdrawal request is accepted and amount will be credit on your payment gateway or bank account', 'تم قبول طلب سحب الدفع الخاص بك وسيتم إضافة المبلغ إلى بوابة الدفع أو حسابك المصرفي', 'ar', '5880'),
('5883', 'MgXFhxPxC5g82WIKW6VhBk9GY', 'Exclusive User', 'Exclusive User', 'en', '0'),
('5884', 'MgXFhxPxC5g82WIKW6VhBk9GY', 'Exclusive User', 'Usuario exclusiva', 'es', '5883'),
('5885', 'MgXFhxPxC5g82WIKW6VhBk9GY', 'Exclusive User', 'مستخدم حصري', 'ar', '5883'),
('5886', 'jQ5A44jn7T7Pwvab4VStYf4lz', 'Non Exclusive User', 'Non Exclusive User', 'en', '0'),
('5887', 'jQ5A44jn7T7Pwvab4VStYf4lz', 'Non Exclusive User', 'Usuario no exclusiva', 'es', '5886'),
('5888', 'jQ5A44jn7T7Pwvab4VStYf4lz', 'Non Exclusive User', 'مستخدم غير حصري', 'ar', '5886'),
('5889', 'JWMkcKpu1Gw8bPvVUkUVtv78S', 'New Payment Approved', 'New Payment Approved', 'en', '0'),
('5890', 'JWMkcKpu1Gw8bPvVUkUVtv78S', 'New Payment Approved', 'Nuevo pago aprobado', 'es', '5889'),
('5891', 'JWMkcKpu1Gw8bPvVUkUVtv78S', 'New Payment Approved', 'تمت الموافقة على الدفع الجديد', 'ar', '5889'),
('5892', 'cnpqhSbnwlr7CJY2o8wuxvaBM', 'New payment approved to released by admin. Please check your earning balance on your account', 'New payment approved to released by admin. Please check your earning balance on your account', 'en', '0'),
('5893', 'cnpqhSbnwlr7CJY2o8wuxvaBM', 'New payment approved to released by admin. Please check your earning balance on your account', 'Nuevo pago aprobado por el administrador. Verifique su saldo de ganancias en su cuenta', 'es', '5892'),
('5894', 'cnpqhSbnwlr7CJY2o8wuxvaBM', 'New payment approved to released by admin. Please check your earning balance on your account', 'وافق المسؤول على إصدار دفعة جديدة. يرجى التحقق من رصيد أرباحك في حسابك', 'ar', '5892'),
('5895', '2V2nzzVQgK1D2YmKCVVtpLTS4', 'User Name', 'User Name', 'en', '0'),
('5896', '2V2nzzVQgK1D2YmKCVVtpLTS4', 'User Name', 'Nombre de usuario', 'es', '5895'),
('5897', '2V2nzzVQgK1D2YmKCVVtpLTS4', 'User Name', 'اسم المستخدم', 'ar', '5895'),
('5898', 'CnmHsiKoMrsMWgxKoWqhqtrjA', 'Withdrawal Type', 'Withdrawal Type', 'en', '0'),
('5899', 'CnmHsiKoMrsMWgxKoWqhqtrjA', 'Withdrawal Type', 'Tipo de retiro', 'es', '5898'),
('5900', 'CnmHsiKoMrsMWgxKoWqhqtrjA', 'Withdrawal Type', 'نوع الانسحاب', 'ar', '5898'),
('5901', '9BqI2A57rQ0xIbaUDinFNSy63', 'Paystack Email', 'Paystack Email', 'en', '0'),
('5902', '9BqI2A57rQ0xIbaUDinFNSy63', 'Paystack Email', 'Correo electrónico de Paystack', 'es', '5901'),
('5903', '9BqI2A57rQ0xIbaUDinFNSy63', 'Paystack Email', 'Paystack البريد الإلكتروني', 'ar', '5901'),
('5904', 'MDVgnJD87BOHUTNS8GBNhL22W', 'Are you sure you want to complete withdrawal request', 'Are you sure you want to complete withdrawal request', 'en', '0'),
('5905', 'MDVgnJD87BOHUTNS8GBNhL22W', 'Are you sure you want to complete withdrawal request', '¿Está seguro de que desea completar la solicitud de retiro?', 'es', '5904'),
('5906', 'MDVgnJD87BOHUTNS8GBNhL22W', 'Are you sure you want to complete withdrawal request', 'هل أنت متأكد أنك تريد إكمال طلب السحب', 'ar', '5904'),
('5907', 'foVIHXsvDFQIowbwEaNqnfmzV', 'Complete Withdrawal', 'Complete Withdrawal', 'en', '0'),
('5908', 'foVIHXsvDFQIowbwEaNqnfmzV', 'Complete Withdrawal', 'Retiro completo', 'es', '5907'),
('5909', 'foVIHXsvDFQIowbwEaNqnfmzV', 'Complete Withdrawal', 'انسحاب كامل', 'ar', '5907'),
('5910', 'U990ZYBzWbCoxcUdHXs2ivlwM', 'Upload MP4 Video', 'Upload MP4 Video', 'en', '0'),
('5911', 'U990ZYBzWbCoxcUdHXs2ivlwM', 'Upload MP4 Video', 'Subir video MP4', 'es', '5910'),
('5912', 'U990ZYBzWbCoxcUdHXs2ivlwM', 'Upload MP4 Video', 'تحميل فيديو MP4', 'ar', '5910'),
('5913', '8a6tzZtyFqdZpphO3kAas1G7G', 'MP4 - file only', 'MP4 - file only', 'en', '0'),
('5914', '8a6tzZtyFqdZpphO3kAas1G7G', 'MP4 - file only', 'MP4 - solo archivo', 'es', '5913'),
('5915', '8a6tzZtyFqdZpphO3kAas1G7G', 'MP4 - file only', 'MP4 - ملف فقط', 'ar', '5913'),
('5916', 'c1fBl5TAJoJRYVFZczUTmJfIv', 'Can you change', 'Can you change', 'en', '0'),
('5917', 'c1fBl5TAJoJRYVFZczUTmJfIv', 'Can you change', 'Puedes cambiar', 'es', '5916'),
('5918', 'c1fBl5TAJoJRYVFZczUTmJfIv', 'Can you change', 'هل يمكن أن تغير', 'ar', '5916'),
('5919', '8P14fxVJHL2FKLwXeyEQz2aaC', 'extra fee', 'extra fee', 'en', '0'),
('5920', '8P14fxVJHL2FKLwXeyEQz2aaC', 'extra fee', 'suplemento', 'es', '5919'),
('5921', '8P14fxVJHL2FKLwXeyEQz2aaC', 'extra fee', 'رسوم اضافية', 'ar', '5919'),
('5922', 'g5ZykDWeK3qbELPaqNcspaaJB', 'Disable', 'Disable', 'en', '0'),
('5923', 'g5ZykDWeK3qbELPaqNcspaaJB', 'Disable', 'Inhabilitar', 'es', '5922'),
('5924', 'g5ZykDWeK3qbELPaqNcspaaJB', 'Disable', 'تعطيل', 'ar', '5922'),
('5925', 'euOT5sH9wZymLsYSioQJMbZda', 'Youtube', 'Youtube', 'en', '0'),
('5926', 'euOT5sH9wZymLsYSioQJMbZda', 'Youtube', 'Youtube', 'es', '5925'),
('5927', 'euOT5sH9wZymLsYSioQJMbZda', 'Youtube', 'موقع يوتيوب', 'ar', '5925'),
('5928', 'Y9TWQ8FDoeuQgNxq6tRMIjxwm', 'MP4', 'MP4', 'en', '0'),
('5929', 'Y9TWQ8FDoeuQgNxq6tRMIjxwm', 'MP4', 'MP4', 'es', '5928'),
('5930', 'Y9TWQ8FDoeuQgNxq6tRMIjxwm', 'MP4', 'MP4', 'ar', '5928'),
('5931', '4UUDYiqBLou4ZFAPSF6t599QQ', 'Select', 'Select', 'en', '0'),
('5932', '4UUDYiqBLou4ZFAPSF6t599QQ', 'Select', 'Seleccione', 'es', '5931'),
('5933', '4UUDYiqBLou4ZFAPSF6t599QQ', 'Select', 'تحديد', 'ar', '5931'),
('5934', 'qmt7fKoEiUDeRAMmXoff3BYQU', 'Remove from Cart', 'Remove from Cart', 'en', '0'),
('5935', 'qmt7fKoEiUDeRAMmXoff3BYQU', 'Remove from Cart', 'Quitar del carrito', 'es', '5934'),
('5936', 'qmt7fKoEiUDeRAMmXoff3BYQU', 'Remove from Cart', 'إزالة من عربة التسوق', 'ar', '5934'),
('5937', '61uxFVedlQaS7tzXyjlBjSUjh', 'PayPal', 'PayPal', 'en', '0'),
('5938', '61uxFVedlQaS7tzXyjlBjSUjh', 'PayPal', 'PayPal', 'es', '5937'),
('5939', '61uxFVedlQaS7tzXyjlBjSUjh', 'PayPal', 'باي بال', 'ar', '5937'),
('5940', 'INGsGHCCFC4xC83LxMiSSWRwF', 'Stripe', 'Stripe', 'en', '0'),
('5941', 'INGsGHCCFC4xC83LxMiSSWRwF', 'Stripe', 'Raya', 'es', '5940'),
('5942', 'INGsGHCCFC4xC83LxMiSSWRwF', 'Stripe', 'شريط', 'ar', '5940'),
('5943', 'sl7HOTzJ7PtnFuaids2FAy8Ww', 'Wallet', 'Wallet', 'en', '0'),
('5944', 'sl7HOTzJ7PtnFuaids2FAy8Ww', 'Wallet', 'Billetera', 'es', '5943'),
('5945', 'sl7HOTzJ7PtnFuaids2FAy8Ww', 'Wallet', 'محفظة نقود', 'ar', '5943'),
('5946', 'xrSBJHABWevD6s9PdocVz7ve8', 'PayStack', 'PayStack', 'en', '0'),
('5947', 'xrSBJHABWevD6s9PdocVz7ve8', 'PayStack', 'PayStack', 'es', '5946'),
('5948', 'xrSBJHABWevD6s9PdocVz7ve8', 'PayStack', 'PayStack', 'ar', '5946'),
('5949', 'izJs3z882M8ISKNeCHmsxTznv', 'Local Bank', 'Local Bank', 'en', '0'),
('5950', 'izJs3z882M8ISKNeCHmsxTznv', 'Local Bank', 'Banco local', 'es', '5949'),
('5951', 'izJs3z882M8ISKNeCHmsxTznv', 'Local Bank', 'البنك المحلي', 'ar', '5949'),
('5952', 'RrGtOWvyfdhiqlqETlz9fuO15', 'Please fill in you full name', 'Please fill in you full name', 'en', '0'),
('5953', 'RrGtOWvyfdhiqlqETlz9fuO15', 'Please fill in you full name', 'Por favor ingrese su nombre completo', 'es', '5952'),
('5954', 'RrGtOWvyfdhiqlqETlz9fuO15', 'Please fill in you full name', 'يرجى ملء الاسم الكامل', 'ar', '5952'),
('5955', 'UtouD31TN9I63FEKkXRGoaIys', 'Please provide valid email address', 'Please provide valid email address', 'en', '0'),
('5956', 'UtouD31TN9I63FEKkXRGoaIys', 'Please provide valid email address', 'Proporcione una dirección de correo electrónico válida', 'es', '5955'),
('5957', 'UtouD31TN9I63FEKkXRGoaIys', 'Please provide valid email address', 'يرجى تقديم عنوان بريد إلكتروني صالح', 'ar', '5955'),
('5958', 'gRx8uhDqYIcahaVPjfjEyA8l6', 'Please write a message', 'Please write a message', 'en', '0'),
('5959', 'gRx8uhDqYIcahaVPjfjEyA8l6', 'Please write a message', 'Por favor escriba un mensaje', 'es', '5958'),
('5960', 'gRx8uhDqYIcahaVPjfjEyA8l6', 'Please write a message', 'الرجاء كتابة رسالة', 'ar', '5958'),
('5961', 'OQ9RvFajlTdXG7KPqu9RLIhiF', 'jpeg, jpg, png', 'jpeg, jpg, png', 'en', '0'),
('5962', 'OQ9RvFajlTdXG7KPqu9RLIhiF', 'jpeg, jpg, png', 'jpeg, jpg, png', 'es', '5961'),
('5963', 'OQ9RvFajlTdXG7KPqu9RLIhiF', 'jpeg, jpg, png', 'jpeg ، jpg ، png', 'ar', '5961'),
('5964', 'RtQ1UJVQvfcRsdqlHJWkyYESC', 'zip format', 'zip format', 'en', '0'),
('5965', 'RtQ1UJVQvfcRsdqlHJWkyYESC', 'zip format', 'formato zip', 'es', '5964'),
('5966', 'RtQ1UJVQvfcRsdqlHJWkyYESC', 'zip format', 'تنسيق مضغوط', 'ar', '5964'),
('5967', 'aP5m0Yd0zQmtJF56Au41sBCLl', 'Day', 'Day', 'en', '0'),
('5968', 'aP5m0Yd0zQmtJF56Au41sBCLl', 'Day', 'Día', 'es', '5967'),
('5969', 'aP5m0Yd0zQmtJF56Au41sBCLl', 'Day', 'يوم', 'ar', '5967'),
('5970', 's6VdVjkICkglJ6tzLHokkeutN', 'Success!', 'Success!', 'en', '0'),
('5971', 's6VdVjkICkglJ6tzLHokkeutN', 'Success!', '¡Éxito!', 'es', '5970'),
('5972', 's6VdVjkICkglJ6tzLHokkeutN', 'Success!', 'نجاح!', 'ar', '5970'),
('5973', 'hbERM9u876bLipfXraeseQjsX', 'Error!', 'Error!', 'en', '0'),
('5974', 'hbERM9u876bLipfXraeseQjsX', 'Error!', '¡Error!', 'es', '5973'),
('5975', 'hbERM9u876bLipfXraeseQjsX', 'Error!', 'خطأ!', 'ar', '5973'),
('5976', 'iEKL9nXXaWAqQHKmNKpWQwTmv', 'Top', 'Top', 'en', '0'),
('5977', 'iEKL9nXXaWAqQHKmNKpWQwTmv', 'Top', 'Parte superior', 'es', '5976'),
('5978', 'iEKL9nXXaWAqQHKmNKpWQwTmv', 'Top', 'أعلى', 'ar', '5976'),
('5979', 'qTZe2iFFzCcSvBtuH43LetBS7', 'Your browser does not support the video tag.', 'Your browser does not support the video tag.', 'en', '0'),
('5980', 'qTZe2iFFzCcSvBtuH43LetBS7', 'Your browser does not support the video tag.', 'Su navegador no soporta la etiqueta de vídeo.', 'es', '5979'),
('5981', 'qTZe2iFFzCcSvBtuH43LetBS7', 'Your browser does not support the video tag.', 'متصفحك الحالي لا يدعم تشغيل الفيديو.', 'ar', '5979'),
('5982', 'C1cWcJxrW1pUpiOZnxJfhHlZs', 'Sold more than', 'Sold more than', 'en', '0'),
('5983', 'C1cWcJxrW1pUpiOZnxJfhHlZs', 'Sold more than', 'Vendió más de', 'es', '5982'),
('5984', 'C1cWcJxrW1pUpiOZnxJfhHlZs', 'Sold more than', 'بيعت أكثر من', 'ar', '5982'),
('5985', 'Y6eVU4gpoqQtNaGJfU0lI8KO0', 'Located in', 'Located in', 'en', '0'),
('5986', 'Y6eVU4gpoqQtNaGJfU0lI8KO0', 'Located in', 'Situado en', 'es', '5985'),
('5987', 'Y6eVU4gpoqQtNaGJfU0lI8KO0', 'Located in', 'يقع في', 'ar', '5985'),
('5988', 'BcRUonv02RhNS3PBwnfI6xKod', 'Exclusive Author: Sells items exclusively on', 'Exclusive Author: Sells items exclusively on', 'en', '0'),
('5989', 'BcRUonv02RhNS3PBwnfI6xKod', 'Exclusive Author: Sells items exclusively on', 'Autora exclusiva: vende artículos exclusivamente en', 'es', '5988'),
('5990', 'BcRUonv02RhNS3PBwnfI6xKod', 'Exclusive Author: Sells items exclusively on', 'المؤلف الحصري: يبيع العناصر حصريًا على', 'ar', '5988'),
('5991', 'LfuqL3iRYPpPYGi5260e5l2Ii', 'Trendsetter: Had an item that was trending', 'Trendsetter: Had an item that was trending', 'en', '0'),
('5992', 'LfuqL3iRYPpPYGi5260e5l2Ii', 'Trendsetter: Had an item that was trending', 'Creador de tendencias: tenía un artículo que era tendencia', 'es', '5991'),
('5993', 'LfuqL3iRYPpPYGi5260e5l2Ii', 'Trendsetter: Had an item that was trending', 'Trendsetter: كان لديه عنصر كان رائجًا', 'ar', '5991'),
('5994', 'wZBibe0CwVj9trYjOQ4HuHVFO', 'Featured Item: Had an item featured on', 'Featured Item: Had an item featured on', 'en', '0'),
('5995', 'wZBibe0CwVj9trYjOQ4HuHVFO', 'Featured Item: Had an item featured on', 'Artículo destacado: tenía un artículo destacado en', 'es', '5994'),
('5996', 'wZBibe0CwVj9trYjOQ4HuHVFO', 'Featured Item: Had an item featured on', 'عنصر مميز: كان لديه عنصر مميز على', 'ar', '5994'),
('5997', 'slBRms9licTIqEtq5bcGbyvja', 'Free Item : Contributed a free file of this item', 'Free Item : Contributed a free file of this item', 'en', '0'),
('5998', 'slBRms9licTIqEtq5bcGbyvja', 'Free Item : Contributed a free file of this item', 'Artículo gratis: Contribuyó con un archivo gratis de este artículo', 'es', '5997'),
('5999', 'slBRms9licTIqEtq5bcGbyvja', 'Free Item : Contributed a free file of this item', 'عنصر مجاني: ساهم بملف مجاني لهذا العنصر', 'ar', '5997'),
('6000', '7S2RiqVWWxUCUA3xYU3fTKGki', 'Years of Membership: Has been part of the', 'Years of Membership: Has been part of the', 'en', '0'),
('6001', '7S2RiqVWWxUCUA3xYU3fTKGki', 'Years of Membership: Has been part of the', 'Años de membresía: Ha sido parte del', 'es', '6000'),
('6002', '7S2RiqVWWxUCUA3xYU3fTKGki', 'Years of Membership: Has been part of the', 'سنوات العضوية: كانت جزءًا من', 'ar', '6000'),
('6003', 'dOCXT1eIR55EJBXE3Q4XlLqaS', 'Community for over', 'Community for over', 'en', '0'),
('6004', 'dOCXT1eIR55EJBXE3Q4XlLqaS', 'Community for over', 'Comunidad para más', 'es', '6003'),
('6005', 'dOCXT1eIR55EJBXE3Q4XlLqaS', 'Community for over', 'المجتمع لأكثر من', 'ar', '6003'),
('6006', 'vND2g9uZ3BdjPEcqLglq753N0', 'years', 'years', 'en', '0'),
('6007', 'vND2g9uZ3BdjPEcqLglq753N0', 'years', 'años', 'es', '6006'),
('6008', 'vND2g9uZ3BdjPEcqLglq753N0', 'years', 'سنوات', 'ar', '6006'),
('6009', 'DkjPZdXhwfD2jlCk07azdJzRx', 'Author Level', 'Author Level', 'en', '0'),
('6010', 'DkjPZdXhwfD2jlCk07azdJzRx', 'Author Level', 'Nivel de autor', 'es', '6009'),
('6011', 'DkjPZdXhwfD2jlCk07azdJzRx', 'Author Level', 'مستوى المؤلف', 'ar', '6009'),
('6012', 'PM0V1pHHHV2W8XfcKn9Z8wkpo', 'Has sold', 'Has sold', 'en', '0'),
('6013', 'PM0V1pHHHV2W8XfcKn9Z8wkpo', 'Has sold', 'Ha vendido', 'es', '6012'),
('6014', 'PM0V1pHHHV2W8XfcKn9Z8wkpo', 'Has sold', 'باع', 'ar', '6012'),
('6015', 'IB1NwSMGpeoRH3t3YuRO9Wgf1', 'Collector Level', 'Collector Level', 'en', '0'),
('6016', 'IB1NwSMGpeoRH3t3YuRO9Wgf1', 'Collector Level', 'Nivel de coleccionista', 'es', '6015'),
('6017', 'IB1NwSMGpeoRH3t3YuRO9Wgf1', 'Collector Level', 'مستوى الجامع', 'ar', '6015'),
('6018', '1haZa4mqDDuzyqRA3hltzKitt', 'Has collected', 'Has collected', 'en', '0'),
('6019', '1haZa4mqDDuzyqRA3hltzKitt', 'Has collected', 'Ha recogido', 'es', '6018'),
('6020', '1haZa4mqDDuzyqRA3hltzKitt', 'Has collected', 'وقد جمعت', 'ar', '6018'),
('6021', 'vCh5qoua5jXdKpG1Xdn0r45QD', 'items on', 'items on', 'en', '0'),
('6022', 'vCh5qoua5jXdKpG1Xdn0r45QD', 'items on', 'artículos en', 'es', '6021'),
('6023', 'vCh5qoua5jXdKpG1Xdn0r45QD', 'items on', 'العناصر على', 'ar', '6021'),
('6024', 'Zn2mycWdGZTuYHPxVtSKFGurc', 'Affiliate Level', 'Affiliate Level', 'en', '0'),
('6025', 'Zn2mycWdGZTuYHPxVtSKFGurc', 'Affiliate Level', 'Nivel de afiliado', 'es', '6024'),
('6026', 'Zn2mycWdGZTuYHPxVtSKFGurc', 'Affiliate Level', 'مستوى الانتساب', 'ar', '6024'),
('6027', 'QHGwTSc4MT5Fk5erWU7AEr8gx', 'Has referred', 'Has referred', 'en', '0'),
('6028', 'QHGwTSc4MT5Fk5erWU7AEr8gx', 'Has referred', 'Ha referido', 'es', '6027'),
('6029', 'QHGwTSc4MT5Fk5erWU7AEr8gx', 'Has referred', 'أشار', 'ar', '6027'),
('6030', 'VlJZQeyhCPMaZRRGtFGR97mK1', 'Leave a comment', 'Leave a question', 'en', '0'),
('6031', 'VlJZQeyhCPMaZRRGtFGR97mK1', 'Leave a comment', 'Deja un comentario', 'es', '6030'),
('6032', 'VlJZQeyhCPMaZRRGtFGR97mK1', 'Leave a comment', 'اترك تعليقا', 'ar', '6030'),
('6033', '0jKGZYGn2hBEuifEqHCKAw6ew', 'Please write your comment', 'Please write your comment', 'en', '0'),
('6034', '0jKGZYGn2hBEuifEqHCKAw6ew', 'Please write your comment', 'Por favor escriba su comentario', 'es', '6033'),
('6035', '0jKGZYGn2hBEuifEqHCKAw6ew', 'Please write your comment', 'الرجاء كتابة تعليقك', 'ar', '6033'),
('6036', '4u6M7VKSl4hI9drRnALJ5PJW7', 'Remove from favourites', 'Remove from favourites', 'en', '0'),
('6037', '4u6M7VKSl4hI9drRnALJ5PJW7', 'Remove from favourites', 'Quitar de favoritos', 'es', '6036'),
('6038', '4u6M7VKSl4hI9drRnALJ5PJW7', 'Remove from favourites', 'إزالة من المفضلة', 'ar', '6036'),
('6039', 'b1NcoLj5KpyUoa9Movp7XMuF6', 'License Certificate', 'License Certificate', 'en', '0'),
('6040', 'b1NcoLj5KpyUoa9Movp7XMuF6', 'License Certificate', 'Certificado de licencia', 'es', '6039'),
('6041', 'b1NcoLj5KpyUoa9Movp7XMuF6', 'License Certificate', 'شهادة الترخيص', 'ar', '6039'),
('6042', 'Xpp0OJKNtjBT7gZBhFO3X1v8e', 'This document cerifies the purchase of the following license :', 'This document cerifies the purchase of the following license :', 'en', '0'),
('6043', 'Xpp0OJKNtjBT7gZBhFO3X1v8e', 'This document cerifies the purchase of the following license :', 'Este documento certifica la compra de la siguiente licencia:', 'es', '6042'),
('6044', 'Xpp0OJKNtjBT7gZBhFO3X1v8e', 'This document cerifies the purchase of the following license :', 'يصادق هذا المستند على شراء الترخيص التالي:', 'ar', '6042'),
('6045', 'Po0gyRvu2rajdD35kfIA6fnBW', 'Details of the license can be accessed from your purchase page', 'Details of the license can be accessed from your purchase page', 'en', '0'),
('6046', 'Po0gyRvu2rajdD35kfIA6fnBW', 'Details of the license can be accessed from your purchase page', 'Se puede acceder a los detalles de la licencia desde su página de compra', 'es', '6045'),
('6047', 'Po0gyRvu2rajdD35kfIA6fnBW', 'Details of the license can be accessed from your purchase page', 'يمكن الوصول إلى تفاصيل الترخيص من صفحة الشراء الخاصة بك', 'ar', '6045'),
('6048', 'wPyOgjpv8VPpqwmmqVqOmEg1x', 'Licensee', 'Licensee', 'en', '0'),
('6049', 'wPyOgjpv8VPpqwmmqVqOmEg1x', 'Licensee', 'Concesionario', 'es', '6048'),
('6050', 'wPyOgjpv8VPpqwmmqVqOmEg1x', 'Licensee', 'المرخص له', 'ar', '6048'),
('6051', 'ww6wvBhgzSyUpaytGBzHzqd3w', 'Purchase Id', 'Purchase Code', 'en', '0'),
('6052', 'ww6wvBhgzSyUpaytGBzHzqd3w', 'Purchase Id', 'ID de compra', 'es', '6051'),
('6053', 'ww6wvBhgzSyUpaytGBzHzqd3w', 'Purchase Id', 'معرف الشراء', 'ar', '6051'),
('6054', 'p1saSbOcVJVcTKd7tsTvTgDPh', 'Payment Token', 'Payment Token', 'en', '0'),
('6055', 'p1saSbOcVJVcTKd7tsTvTgDPh', 'Payment Token', 'Token de pago', 'es', '6054'),
('6056', 'p1saSbOcVJVcTKd7tsTvTgDPh', 'Payment Token', 'رمز الدفع', 'ar', '6054'),
('6057', 'nLORm8V2FRXks8ia3mJvVHQtR', 'For any query related to this document or license please contact support via', 'For any query related to this document or license please contact support via', 'en', '0'),
('6058', 'nLORm8V2FRXks8ia3mJvVHQtR', 'For any query related to this document or license please contact support via', 'Para cualquier consulta relacionada con este documento o licencia, comuníquese con el soporte a través de', 'es', '6057'),
('6059', 'nLORm8V2FRXks8ia3mJvVHQtR', 'For any query related to this document or license please contact support via', 'لأي استفسار يتعلق بهذا المستند أو الترخيص ، يرجى الاتصال بالدعم عبر', 'ar', '6057'),
('6060', 'pABgaFBYdSU9IkduFuDt4ZNoF', 'Rate this product', 'Rate this product', 'en', '0'),
('6061', 'pABgaFBYdSU9IkduFuDt4ZNoF', 'Rate this product', 'Califica este producto', 'es', '6060'),
('6062', 'pABgaFBYdSU9IkduFuDt4ZNoF', 'Rate this product', 'قيم هذا المنتج', 'ar', '6060'),
('6063', 'BME5YZ8NRtLILV3sdrfLtOoh4', 'Invoice', 'Invoice', 'en', '0'),
('6064', 'BME5YZ8NRtLILV3sdrfLtOoh4', 'Invoice', 'Factura', 'es', '6063'),
('6065', 'BME5YZ8NRtLILV3sdrfLtOoh4', 'Invoice', 'فاتورة', 'ar', '6063'),
('6066', 'S1MBxmnLwiP37Bv4gnPcIMMpb', 'Send Request', 'Send Request', 'en', '0'),
('6067', 'S1MBxmnLwiP37Bv4gnPcIMMpb', 'Send Request', 'Enviar petición', 'es', '6066'),
('6068', 'S1MBxmnLwiP37Bv4gnPcIMMpb', 'Send Request', 'ارسل طلب', 'ar', '6066'),
('6069', 'Mss50O2CWcY9HqDauz7MczqzA', 'Close sidebar', 'Close sidebar', 'en', '0'),
('6070', 'Mss50O2CWcY9HqDauz7MczqzA', 'Close sidebar', 'Cerrar barra lateral', 'es', '6069'),
('6071', 'Mss50O2CWcY9HqDauz7MczqzA', 'Close sidebar', 'إغلاق الشريط الجانبي', 'ar', '6069'),
('6072', 'Z20hn89lDTOSibys0GDkIjFgP', 'No product found', 'No product found', 'en', '0'),
('6073', 'Z20hn89lDTOSibys0GDkIjFgP', 'No product found', 'Ningún producto encontrado', 'es', '6072'),
('6074', 'Z20hn89lDTOSibys0GDkIjFgP', 'No product found', 'لم يتم العثور على منتج', 'ar', '6072'),
('6075', 'CTg52IjW9bWxRq4r3qEBIt2IE', 'Share post', 'Share post', 'en', '0'),
('6076', 'CTg52IjW9bWxRq4r3qEBIt2IE', 'Share post', 'Compartir post', 'es', '6075'),
('6077', 'CTg52IjW9bWxRq4r3qEBIt2IE', 'Share post', 'آخر حصة', 'ar', '6075'),
('6078', 'hUFB9bnCkEJ6sdnnrUiLtZig8', 'Prev post', 'Prev post', 'en', '0'),
('6079', 'hUFB9bnCkEJ6sdnnrUiLtZig8', 'Prev post', 'Publicación anterior', 'es', '6078'),
('6080', 'hUFB9bnCkEJ6sdnnrUiLtZig8', 'Prev post', 'المقال السابق', 'ar', '6078'),
('6081', 'qrWkvQvEw4l5hdpd8qCRAx1Ar', 'All posts', 'All posts', 'en', '0'),
('6082', 'qrWkvQvEw4l5hdpd8qCRAx1Ar', 'All posts', 'Todos los mensajes', 'es', '6081'),
('6083', 'qrWkvQvEw4l5hdpd8qCRAx1Ar', 'All posts', 'جميع المشاركات', 'ar', '6081'),
('6084', 'XFODAvYdMlGHO8o1mivwjKD9X', 'Next post', 'Next post', 'en', '0'),
('6085', 'XFODAvYdMlGHO8o1mivwjKD9X', 'Next post', 'Publicación siguiente', 'es', '6084'),
('6086', 'XFODAvYdMlGHO8o1mivwjKD9X', 'Next post', 'بعد القادم', 'ar', '6084'),
('6087', 'KLkYImUZg8Zti4fadPffcKa0i', 'You must be', 'You must be', 'en', '0'),
('6088', 'KLkYImUZg8Zti4fadPffcKa0i', 'You must be', 'Usted debe ser', 'es', '6087'),
('6089', 'KLkYImUZg8Zti4fadPffcKa0i', 'You must be', 'يجب ان تكون', 'ar', '6087'),
('6090', '25sHhKrrxF5SQgGaOoiuw4ZOM', 'logged', 'logged', 'en', '0'),
('6091', '25sHhKrrxF5SQgGaOoiuw4ZOM', 'logged', 'registrada', 'es', '6090'),
('6092', '25sHhKrrxF5SQgGaOoiuw4ZOM', 'logged', 'تسجيل', 'ar', '6090'),
('6093', '7GBZrMvz8pP80tnhQ0pgMTz3v', 'in to post a comment', 'in to post a comment', 'en', '0'),
('6094', '7GBZrMvz8pP80tnhQ0pgMTz3v', 'in to post a comment', 'en para publicar un comentario', 'es', '6093'),
('6095', '7GBZrMvz8pP80tnhQ0pgMTz3v', 'in to post a comment', 'في لنشر تعليق', 'ar', '6093'),
('6096', 'FIsiXxleQMg0NVDemX3Z4q30y', 'Send to', 'Send to', 'en', '0'),
('6097', 'FIsiXxleQMg0NVDemX3Z4q30y', 'Send to', 'Enviar a', 'es', '6096'),
('6098', 'FIsiXxleQMg0NVDemX3Z4q30y', 'Send to', 'ارسل إلى', 'ar', '6096'),
('6099', 'QSU3vyW9oRGlLTbkqdn3J3tCt', 'Login user only', 'Login user only', 'en', '0'),
('6100', 'QSU3vyW9oRGlLTbkqdn3J3tCt', 'Login user only', 'Solo usuario de inicio de sesión', 'es', '6099'),
('6101', 'QSU3vyW9oRGlLTbkqdn3J3tCt', 'Login user only', 'مستخدم تسجيل الدخول فقط', 'ar', '6099'),
('6102', 'RvEbVWpf7gtR7OGZuYh7uA6HR', 'Power Elite Author', 'Power Elite Author', 'en', '0'),
('6103', 'RvEbVWpf7gtR7OGZuYh7uA6HR', 'Power Elite Author', 'Autor de Power Elite', 'es', '6102'),
('6104', 'RvEbVWpf7gtR7OGZuYh7uA6HR', 'Power Elite Author', 'مؤلف النخبة القوية', 'ar', '6102'),
('6105', 'HALMxBJZHuyTk9dL0QwYhsvxq', 'Subscription', 'Subscription', 'en', '0'),
('6106', 'HALMxBJZHuyTk9dL0QwYhsvxq', 'Subscription', 'Suscripción', 'es', '6105'),
('6107', 'HALMxBJZHuyTk9dL0QwYhsvxq', 'Subscription', 'الاشتراك', 'ar', '6105'),
('6108', 'oKmEZunkju6FkqmGEgPEpedPc', 'Unlimited Items', 'Unlimited Items', 'en', '0'),
('6109', 'oKmEZunkju6FkqmGEgPEpedPc', 'Unlimited Items', 'Artículos ilimitados', 'es', '6108'),
('6110', 'oKmEZunkju6FkqmGEgPEpedPc', 'Unlimited Items', 'عناصر غير محدودة', 'ar', '6108'),
('6111', 'JxkePVw3sWtW4i4X73PzOtupk', 'Space Available', 'Space Available', 'en', '0'),
('6112', 'JxkePVw3sWtW4i4X73PzOtupk', 'Space Available', 'Espacio disponible', 'es', '6111'),
('6113', 'JxkePVw3sWtW4i4X73PzOtupk', 'Space Available', 'مساحة متاحة', 'ar', '6111'),
('6114', '4xPI1X2a8qY1bm7gipDHmBUdx', 'Unlimited Space Available', 'Unlimited Space Available', 'en', '0'),
('6115', '4xPI1X2a8qY1bm7gipDHmBUdx', 'Unlimited Space Available', 'Espacio ilimitado disponible', 'es', '6114'),
('6116', '4xPI1X2a8qY1bm7gipDHmBUdx', 'Unlimited Space Available', 'مساحة غير محدودة متوفرة', 'ar', '6114'),
('6117', 'I9qxkgXYPszQjF5TaYscMCp71', 'Email Support', 'Email Support', 'en', '0'),
('6118', 'I9qxkgXYPszQjF5TaYscMCp71', 'Email Support', 'Soporte de correo electrónico', 'es', '6117'),
('6119', 'I9qxkgXYPszQjF5TaYscMCp71', 'Email Support', 'دعم البريد الإلكتروني', 'ar', '6117'),
('6120', '1CCleHonNdVVzZWZSTPELZMfk', 'Direct Transfer Payment', 'Direct Transfer Payment', 'en', '0'),
('6121', '1CCleHonNdVVzZWZSTPELZMfk', 'Direct Transfer Payment', 'Pago por transferencia directa', 'es', '6120'),
('6122', '1CCleHonNdVVzZWZSTPELZMfk', 'Direct Transfer Payment', 'الدفع بالتحويل المباشر', 'ar', '6120'),
('6123', 'Ny8uVPCdFm0yoH4OXWIi1nzOL', 'Commission Based Payment', 'Commission Based Payment', 'en', '0'),
('6124', 'Ny8uVPCdFm0yoH4OXWIi1nzOL', 'Commission Based Payment', 'Pago basado en comisiones', 'es', '6123'),
('6125', 'Ny8uVPCdFm0yoH4OXWIi1nzOL', 'Commission Based Payment', 'الدفع على أساس العمولة', 'ar', '6123'),
('6126', 'lSXGcCttWQenb2BqmWwlA5Erc', 'Without Commission Payment', 'Without Commission Payment', 'en', '0'),
('6127', 'lSXGcCttWQenb2BqmWwlA5Erc', 'Without Commission Payment', 'Sin pago de comisiones', 'es', '6126'),
('6128', 'lSXGcCttWQenb2BqmWwlA5Erc', 'Without Commission Payment', 'بدون عمولة', 'ar', '6126'),
('6129', 'XyLOTWV0MzgesRuI5NxVfeTu9', 'Support 24 x 7', 'Support 24 x 7', 'en', '0'),
('6130', 'XyLOTWV0MzgesRuI5NxVfeTu9', 'Support 24 x 7', 'Soporte 24 x 7', 'es', '6129'),
('6131', 'XyLOTWV0MzgesRuI5NxVfeTu9', 'Support 24 x 7', 'دعم 24 × 7', 'ar', '6129'),
('6132', '0842yNQEgPPeIazBYSho4fJk9', 'Upgrade', 'Upgrade', 'en', '0'),
('6133', '0842yNQEgPPeIazBYSho4fJk9', 'Upgrade', 'Mejora', 'es', '6132'),
('6134', '0842yNQEgPPeIazBYSho4fJk9', 'Upgrade', 'تطوير', 'ar', '6132'),
('6135', 'JhVQq2ryTVi7Icy464QK40fjs', 'Subscription Upgrade', 'Subscription Upgrade', 'en', '0'),
('6136', 'JhVQq2ryTVi7Icy464QK40fjs', 'Subscription Upgrade', 'Actualización de suscripción', 'es', '6135'),
('6137', 'JhVQq2ryTVi7Icy464QK40fjs', 'Subscription Upgrade', 'ترقية الاشتراك', 'ar', '6135'),
('6138', 'v5LbPclhaxFzBI1vRGv7AAERl', 'Subscription Details', 'Subscription Details', 'en', '0'),
('6139', 'v5LbPclhaxFzBI1vRGv7AAERl', 'Subscription Details', 'Detalles de la suscripción', 'es', '6138'),
('6140', 'v5LbPclhaxFzBI1vRGv7AAERl', 'Subscription Details', 'تفاصيل الاشتراك', 'ar', '6138'),
('6141', 'CQqrffAUAmbaRoedqALsrU13o', 'Subscription Name', 'Subscription Name', 'en', '0'),
('6142', 'CQqrffAUAmbaRoedqALsrU13o', 'Subscription Name', 'Nombre de suscripción', 'es', '6141'),
('6143', 'CQqrffAUAmbaRoedqALsrU13o', 'Subscription Name', 'اسم الاشتراك', 'ar', '6141'),
('6144', 'r1eD1Oyv8cabNUFHiT8Jdxx9O', 'Duration', 'Duration', 'en', '0'),
('6145', 'r1eD1Oyv8cabNUFHiT8Jdxx9O', 'Duration', 'Duración', 'es', '6144'),
('6146', 'r1eD1Oyv8cabNUFHiT8Jdxx9O', 'Duration', 'مدة', 'ar', '6144'),
('6147', '1cLgZ0tTP14RbmnP9JRuguB8h', 'No of Items', 'No of Items', 'en', '0'),
('6148', '1cLgZ0tTP14RbmnP9JRuguB8h', 'No of Items', 'No de artículos', 'es', '6147'),
('6149', '1cLgZ0tTP14RbmnP9JRuguB8h', 'No of Items', 'عدد العناصر', 'ar', '6147'),
('614d4f7745243', 'NjE0ZDRmNzc0NTI0Mw==', 'Verify Purchase', 'Verify Purchase', 'en', '0'),
('614d548bb30d6', 'NjE0ZDRmNzc0NTI0Mw==', 'Verify Purchase', 'Verify Purchase', 'ar', '614d4f7745243'),
('614d5500c4ef0', 'NjE0ZDRmNzc0NTI0Mw==', 'Verify Purchase', 'Verify Purchase', 'es', '614d4f7745243'),
('614d589c73a20', 'Bog04jzSZNQVjQfkRrLxnzq9d', 'Enter Purchase Code', 'Enter Purchase Code', 'en', '0'),
('614d589c86f1e', 'Bog04jzSZNQVjQfkRrLxnzq9d', 'Enter Purchase Code', 'Enter Purchase Code', 'es', '614d589c73a20'),
('614d589c96eb4', 'Bog04jzSZNQVjQfkRrLxnzq9d', 'Enter Purchase Code', 'Enter Purchase Code', 'ar', '614d589c73a20'),
('614da53348009', 'bAJKiuFsCCu2ZbRkkn4BLrt6c', 'Supported Until', 'Supported Until', 'en', '0'),
('614da533564eb', 'bAJKiuFsCCu2ZbRkkn4BLrt6c', 'Supported Until', 'Supported Until', 'es', '614da53348009'),
('614da53363e5b', 'bAJKiuFsCCu2ZbRkkn4BLrt6c', 'Supported Until', 'Supported Until', 'ar', '614da53348009'),
('614da543a4824', 'pOnNkrGk2WQHLIISFwdTaiSvc', 'License Type', 'License Type', 'en', '0'),
('614da543b34a7', 'pOnNkrGk2WQHLIISFwdTaiSvc', 'License Type', 'License Type', 'es', '614da543a4824'),
('614da543cb9c0', 'pOnNkrGk2WQHLIISFwdTaiSvc', 'License Type', 'License Type', 'ar', '614da543a4824'),
('614da54e23863', 'uMrZx2pg3jCbpPuI0WRHYupDF', 'Buyer Name', 'Buyer Name', 'en', '0'),
('614da54e32c87', 'uMrZx2pg3jCbpPuI0WRHYupDF', 'Buyer Name', 'Buyer Name', 'es', '614da54e23863'),
('614da54e3f2e5', 'uMrZx2pg3jCbpPuI0WRHYupDF', 'Buyer Name', 'Buyer Name', 'ar', '614da54e23863'),
('614dc152e18b4', 'Q1RMbuu5aYu2LoI5S33umFOnF', 'Trash', 'Trash', 'en', '0'),
('614dc153003d0', 'Q1RMbuu5aYu2LoI5S33umFOnF', 'Trash', 'Trash', 'es', '614dc152e18b4'),
('614dc1530e8b2', 'Q1RMbuu5aYu2LoI5S33umFOnF', 'Trash', 'Trash', 'ar', '614dc152e18b4'),
('614dc17755d4a', '04ovfzIfg7KDUlx1dLUjpUwNY', 'Restore', 'Restore', 'en', '0'),
('614dc17765ce0', '04ovfzIfg7KDUlx1dLUjpUwNY', 'Restore', 'Restore', 'es', '614dc17755d4a'),
('614dc17781b32', '04ovfzIfg7KDUlx1dLUjpUwNY', 'Restore', 'Restore', 'ar', '614dc17755d4a'),
('614dc180e0971', 'ZJjSrkpORjKDCtHulf1RO03z3', 'Delete Permanently', 'Delete Permanently', 'en', '0'),
('614dc180f0166', 'ZJjSrkpORjKDCtHulf1RO03z3', 'Delete Permanently', 'Delete Permanently', 'es', '614dc180e0971'),
('614dc1810baeb', 'ZJjSrkpORjKDCtHulf1RO03z3', 'Delete Permanently', 'Delete Permanently', 'ar', '614dc180e0971'),
('614dc2391d535', 'joRhuZYwlIQUYxS5wsUHhAxai', 'Trash Items', 'Trash Items', 'en', '0'),
('614dc2392aad4', 'joRhuZYwlIQUYxS5wsUHhAxai', 'Trash Items', 'Trash Items', 'es', '614dc2391d535'),
('614dc23933bca', 'joRhuZYwlIQUYxS5wsUHhAxai', 'Trash Items', 'Trash Items', 'ar', '614dc2391d535'),
('614dc5af68305', 'aUf0Q8nBjNB899yg5Wd8aQiRL', 'Are you sure you want to remove', 'Are you sure you want to remove', 'en', '0'),
('614dc5af74963', 'aUf0Q8nBjNB899yg5Wd8aQiRL', 'Are you sure you want to remove', 'Are you sure you want to remove', 'es', '614dc5af68305'),
('614dc5af83d87', 'aUf0Q8nBjNB899yg5Wd8aQiRL', 'Are you sure you want to remove', 'Are you sure you want to remove', 'ar', '614dc5af68305'),
('614dcc1759a53', 'raBBuFqww1xdPZYVvsuiExTv7', 'Are you sure you want to permanently delete', 'Are you sure you want to permanently delete', 'en', '0'),
('614dcc17660b0', 'raBBuFqww1xdPZYVvsuiExTv7', 'Are you sure you want to permanently delete', 'Are you sure you want to permanently delete', 'es', '614dcc1759a53'),
('614dcc176dac2', 'raBBuFqww1xdPZYVvsuiExTv7', 'Are you sure you want to permanently delete', 'Are you sure you want to permanently delete', 'ar', '614dcc1759a53'),
('614ee2c3c306c', 'ZnjWbHoike5qsv3oXkyecnGbC', 'Coupons', 'Coupons', 'en', '0'),
('614ee2c3d2860', 'ZnjWbHoike5qsv3oXkyecnGbC', 'Coupons', 'Coupons', 'es', '614ee2c3c306c'),
('614ee2c3e27f6', 'ZnjWbHoike5qsv3oXkyecnGbC', 'Coupons', 'Coupons', 'ar', '614ee2c3c306c'),
('614ef338bd8af', 'uHfwvK9luqegyk0YUmNySoXoM', 'Email Template', 'Email Template', 'en', '0'),
('614ef338d37a2', 'uHfwvK9luqegyk0YUmNySoXoM', 'Email Template', 'Email Template', 'es', '614ef338bd8af'),
('614ef338df65f', 'uHfwvK9luqegyk0YUmNySoXoM', 'Email Template', 'Email Template', 'ar', '614ef338bd8af'),
('614ef9b134edc', '7tTk9QuuhVONG56NZkFmxH3DN', 'Edit Email Template', 'Edit Email Template', 'en', '0'),
('614ef9b143b5f', '7tTk9QuuhVONG56NZkFmxH3DN', 'Edit Email Template', 'Edit Email Template', 'es', '614ef9b134edc'),
('614ef9b14d7c6', '7tTk9QuuhVONG56NZkFmxH3DN', 'Edit Email Template', 'Edit Email Template', 'ar', '614ef9b134edc'),
('614ef9cc1ab3f', 'yNLZDYBnVKVQv0TmF4SMTtIvO', 'Short Code', 'Short Code', 'en', '0'),
('614ef9cc2b275', 'yNLZDYBnVKVQv0TmF4SMTtIvO', 'Short Code', 'Short Code', 'es', '614ef9cc1ab3f'),
('614ef9cc365c0', 'yNLZDYBnVKVQv0TmF4SMTtIvO', 'Short Code', 'Short Code', 'ar', '614ef9cc1ab3f'),
('6150', 'km30ly58CCfC7CQfTXgZA6Pn5', 'Available Space', 'Available Space', 'en', '0'),
('6151', 'km30ly58CCfC7CQfTXgZA6Pn5', 'Available Space', 'Espacio disponible', 'es', '6150'),
('6152', 'km30ly58CCfC7CQfTXgZA6Pn5', 'Available Space', 'مساحة متاحة', 'ar', '6150'),
('6153', '4T4y07icatJ1ClbD2eRjIlqh9', 'Terms', 'Terms', 'en', '0'),
('6154', '4T4y07icatJ1ClbD2eRjIlqh9', 'Terms', 'Condiciones', 'es', '6153'),
('6155', '4T4y07icatJ1ClbD2eRjIlqh9', 'Terms', 'شروط', 'ar', '6153'),
('6156', 'eL7z5fRirvlScSdtEbrvnZbAk', 'Membership', 'Membership', 'en', '0'),
('6157', 'eL7z5fRirvlScSdtEbrvnZbAk', 'Membership', 'Afiliación', 'es', '6156'),
('6158', 'eL7z5fRirvlScSdtEbrvnZbAk', 'Membership', 'عضوية', 'ar', '6156'),
('6159', 'RZsscXm2e1mqtdzfbR7v51cKR', 'Total Item Limit', 'Total Item Limit', 'en', '0'),
('6160', 'RZsscXm2e1mqtdzfbR7v51cKR', 'Total Item Limit', 'Límite total de artículos', 'es', '6159'),
('6161', 'RZsscXm2e1mqtdzfbR7v51cKR', 'Total Item Limit', 'إجمالي حد العنصر', 'ar', '6159'),
('6162', '4ynho7hdnGx6HHFn1pRBf8KHz', 'Total Storage Space', 'Total Storage Space', 'en', '0'),
('6163', '4ynho7hdnGx6HHFn1pRBf8KHz', 'Total Storage Space', 'Espacio total de almacenamiento', 'es', '6162'),
('6164', '4ynho7hdnGx6HHFn1pRBf8KHz', 'Total Storage Space', 'إجمالي مساحة التخزين', 'ar', '6162'),
('6165', 'ciJvF7EcKNcwYIWxzruTn6wT2', 'Unlimited', 'Unlimited', 'en', '0'),
('6166', 'ciJvF7EcKNcwYIWxzruTn6wT2', 'Unlimited', 'Ilimitada', 'es', '6165'),
('6167', 'ciJvF7EcKNcwYIWxzruTn6wT2', 'Unlimited', 'غير محدود', 'ar', '6165'),
('6168', 'oVgDr0w2LXyHrcV17wDtdhXb2', 'Expire On', 'Expire On', 'en', '0'),
('6169', 'oVgDr0w2LXyHrcV17wDtdhXb2', 'Expire On', 'Vence en', 'es', '6168'),
('6170', 'oVgDr0w2LXyHrcV17wDtdhXb2', 'Expire On', 'تنتهي في', 'ar', '6168'),
('6171', 'cKWN5knlcEzZ2Vv86EQMun28U', 'Used Storage Space', 'Used Storage Space', 'en', '0'),
('6172', 'cKWN5knlcEzZ2Vv86EQMun28U', 'Used Storage Space', 'Espacio de almacenamiento usado', 'es', '6171'),
('6173', 'cKWN5knlcEzZ2Vv86EQMun28U', 'Used Storage Space', 'مساحة التخزين المستخدمة', 'ar', '6171'),
('6174', 'uL28fcobYPUkcsgkT0vnkPclw', 'Uploaded Items', 'Uploaded Items', 'en', '0'),
('6175', 'uL28fcobYPUkcsgkT0vnkPclw', 'Uploaded Items', 'Elementos cargados', 'es', '6174'),
('6176', 'uL28fcobYPUkcsgkT0vnkPclw', 'Uploaded Items', 'العناصر التي تم تحميلها', 'ar', '6174'),
('6177', 'bvWVFjSyvPB16wgnGnofXgODS', 'Available Items Limit', 'Available Items Limit', 'en', '0'),
('6178', 'bvWVFjSyvPB16wgnGnofXgODS', 'Available Items Limit', 'Límite de artículos disponibles', 'es', '6177'),
('6179', 'bvWVFjSyvPB16wgnGnofXgODS', 'Available Items Limit', 'حد العناصر المتاحة', 'ar', '6177'),
('6180', '0wr5HEHyqaSlDFgmNCuQpaAcV', 'Razorpay Settings', 'Razorpay Settings', 'en', '0'),
('6181', '0wr5HEHyqaSlDFgmNCuQpaAcV', 'Razorpay Settings', 'Configuración de Razorpay', 'es', '6180'),
('6182', '0wr5HEHyqaSlDFgmNCuQpaAcV', 'Razorpay Settings', 'إعدادات Razorpay', 'ar', '6180'),
('6183', '8oVULaDOZI7t6nOBbL4bTu58s', 'Razorpay Key Id', 'Razorpay Key Id', 'en', '0'),
('6184', '8oVULaDOZI7t6nOBbL4bTu58s', 'Razorpay Key Id', 'ID de clave de Razorpay', 'es', '6183'),
('6185', '8oVULaDOZI7t6nOBbL4bTu58s', 'Razorpay Key Id', 'معرف مفتاح Razorpay', 'ar', '6183'),
('6186', 'azxrxTTGuUzoz36PwfL8ZzrHJ', 'Razorpay Secret Key', 'Razorpay Secret Key', 'en', '0'),
('6187', 'azxrxTTGuUzoz36PwfL8ZzrHJ', 'Razorpay Secret Key', 'Clave secreta de Razorpay', 'es', '6186'),
('6188', 'azxrxTTGuUzoz36PwfL8ZzrHJ', 'Razorpay Secret Key', 'مفتاح Razorpay السري', 'ar', '6186'),
('6188f9c6594e4', 'KX0DT3i0gpz4VSe8yecDZZXoZ', 'Preview Type (optional)', 'Preview Type (optional)', 'en', '0'),
('6188f9c66e0c5', 'KX0DT3i0gpz4VSe8yecDZZXoZ', 'Preview Type (optional)', 'Preview Type (optional)', 'es', '6188f9c6594e4'),
('6188f9c68a2e8', 'KX0DT3i0gpz4VSe8yecDZZXoZ', 'Preview Type (optional)', 'Preview Type (optional)', 'ar', '6188f9c6594e4'),
('6188fb1c98b9a', 'p1E8w85LFecBSYYpQVOFDNz2X', 'MP3', 'MP3', 'en', '0'),
('6188fb1cb0542', 'p1E8w85LFecBSYYpQVOFDNz2X', 'MP3', 'MP3', 'es', '6188fb1c98b9a'),
('6188fb1cc45b1', 'p1E8w85LFecBSYYpQVOFDNz2X', 'MP3', 'MP3', 'ar', '6188fb1c98b9a'),
('6188fbba9e728', 'ORSSBTWeSJ83stGH1MzL7Gb8u', 'Upload MP3', 'Upload MP3', 'en', '0');
INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
('6188fbbab8ac5', 'ORSSBTWeSJ83stGH1MzL7Gb8u', 'Upload MP3', 'Upload MP3', 'es', '6188fbba9e728'),
('6188fbbac4982', 'ORSSBTWeSJ83stGH1MzL7Gb8u', 'Upload MP3', 'Upload MP3', 'ar', '6188fbba9e728'),
('6189', 'u2JbrUTKLExYRmJRdLzjBlz05', 'Add Pack', 'Add Pack', 'en', '0'),
('6190', 'u2JbrUTKLExYRmJRdLzjBlz05', 'Add Pack', 'Agregar paquete', 'es', '6189'),
('6191', 'u2JbrUTKLExYRmJRdLzjBlz05', 'Add Pack', 'أضف حزمة', 'ar', '6189'),
('6192', 'IU1TTGBrQYdgECnZKn6ij5n9W', 'Free Subscription (Default Registration)', 'Free Subscription (Default Registration)', 'en', '0'),
('6193', 'IU1TTGBrQYdgECnZKn6ij5n9W', 'Free Subscription (Default Registration)', 'Suscripción gratuita (registro predeterminado)', 'es', '6192'),
('6194', 'IU1TTGBrQYdgECnZKn6ij5n9W', 'Free Subscription (Default Registration)', 'اشتراك مجاني (تسجيل افتراضي)', 'ar', '6192'),
('6195', 'ahys6eDvq1XqM7ohS6DfkBVIc', 'default registration vendor to assign free subscription package', 'default registration vendor to assign free subscription package', 'en', '0'),
('6196', 'ahys6eDvq1XqM7ohS6DfkBVIc', 'default registration vendor to assign free subscription package', 'proveedor de registro predeterminado para asignar un paquete de suscripción gratuito', 'es', '6195'),
('6197', 'ahys6eDvq1XqM7ohS6DfkBVIc', 'default registration vendor to assign free subscription package', 'بائع التسجيل الافتراضي لتعيين حزمة اشتراك مجانية', 'ar', '6195'),
('6198', 'umGHptaz4p9ZCYtEu5tyNPFHE', 'Limited No of Items', 'Limited No of Items', 'en', '0'),
('6199', 'umGHptaz4p9ZCYtEu5tyNPFHE', 'Limited No of Items', 'No limitado de artículos', 'es', '6198'),
('61b32a5049abd', 'cDAdQ6v46ntPJU4xTukQG0tNV', 'Deposit', 'Deposit', 'en', '0'),
('61b32a506b0cc', 'cDAdQ6v46ntPJU4xTukQG0tNV', 'Deposit', 'Deposit', 'es', '61b32a5049abd'),
('61b32a5096712', 'cDAdQ6v46ntPJU4xTukQG0tNV', 'Deposit', 'Deposit', 'ar', '61b32a5049abd'),
('61b32a701a39d', 'xIZW5mOFhPhH3TgJG9n9wlS9x', 'Bonus', 'Bonus', 'en', '0'),
('61b32a7039ef8', 'xIZW5mOFhPhH3TgJG9n9wlS9x', 'Bonus', 'Bonus', 'es', '61b32a701a39d'),
('61b32a7047868', 'xIZW5mOFhPhH3TgJG9n9wlS9x', 'Bonus', 'Bonus', 'ar', '61b32a701a39d'),
('61b32a78256e8', 'zTt2peYkP7ZeqG9qHu1SwJA6s', 'No Bonus', 'No Bonus', 'en', '0'),
('61b32a784b942', 'zTt2peYkP7ZeqG9qHu1SwJA6s', 'No Bonus', 'No Bonus', 'es', '61b32a78256e8'),
('61b32a785db2d', 'zTt2peYkP7ZeqG9qHu1SwJA6s', 'No Bonus', 'No Bonus', 'ar', '61b32a78256e8'),
('61b32cb9a6e49', 'HVHMSIB5QLKQeSFajr0GLcStK', 'Add Price', 'Add Price', 'en', '0'),
('61b32cb9bc59c', 'HVHMSIB5QLKQeSFajr0GLcStK', 'Add Price', 'Add Price', 'es', '61b32cb9a6e49'),
('61b32cb9c3fae', 'HVHMSIB5QLKQeSFajr0GLcStK', 'Add Price', 'Add Price', 'ar', '61b32cb9a6e49'),
('61b333bd8ddbe', 'sCj9krDkC9mQQIu0JVOfn0R1b', 'Edit Price', 'Edit Price', 'en', '0'),
('61b333bd9ec96', 'sCj9krDkC9mQQIu0JVOfn0R1b', 'Edit Price', 'Edit Price', 'es', '61b333bd8ddbe'),
('61b333bda62d8', 'sCj9krDkC9mQQIu0JVOfn0R1b', 'Edit Price', 'Edit Price', 'ar', '61b333bd8ddbe'),
('61dd092fc939a', '5Yjqcvb82oczfCa7vCcQ9bGtG', 'Header', 'Header', 'en', '0'),
('61dd092fdaa13', '5Yjqcvb82oczfCa7vCcQ9bGtG', 'Header', 'Header', 'es', '61dd092fc939a'),
('61dd092fecfcf', '5Yjqcvb82oczfCa7vCcQ9bGtG', 'Header', 'Header', 'ar', '61dd092fc939a'),
('61dd093be05a1', 'H1ZEonNeCIGPIyStuh9lp7yjo', 'Footer Logo', 'Footer Logo', 'en', '0'),
('61dd093bf32fd', 'H1ZEonNeCIGPIyStuh9lp7yjo', 'Footer Logo', 'Footer Logo', 'es', '61dd093be05a1'),
('61dd093c08d24', 'H1ZEonNeCIGPIyStuh9lp7yjo', 'Footer Logo', 'Footer Logo', 'ar', '61dd093be05a1'),
('61dd095d9f808', 'ZYOovMMV2aetmB5wXWHwdI11C', 'Google Recaptcha', 'Google Recaptcha', 'en', '0'),
('61dd095db56fc', 'ZYOovMMV2aetmB5wXWHwdI11C', 'Google Recaptcha', 'Google Recaptcha', 'es', '61dd095d9f808'),
('61dd095dbf363', 'ZYOovMMV2aetmB5wXWHwdI11C', 'Google Recaptcha', 'Google Recaptcha', 'ar', '61dd095d9f808'),
('61dd0addc4b20', 'NGdX6oyottHM8FGpYOJbeG5UT', 'site email address display on contact page', 'site email address display on contact page', 'en', '0'),
('61dd0adddc0f7', 'NGdX6oyottHM8FGpYOJbeG5UT', 'site email address display on contact page', 'site email address display on contact page', 'es', '61dd0addc4b20'),
('61dd0adde7071', 'NGdX6oyottHM8FGpYOJbeG5UT', 'site email address display on contact page', 'site email address display on contact page', 'ar', '61dd0addc4b20'),
('61dd0afde3368', 'zVodS06ENSElbttJNHREEiGyK', 'site phone number display on contact page', 'site phone number display on contact page', 'en', '0'),
('61dd0afe05b8d', 'zVodS06ENSElbttJNHREEiGyK', 'site phone number display on contact page', 'site phone number display on contact page', 'es', '61dd0afde3368'),
('61dd0afe0ec82', 'zVodS06ENSElbttJNHREEiGyK', 'site phone number display on contact page', 'site phone number display on contact page', 'ar', '61dd0afde3368'),
('61dd0b1c91326', 'ej0n4CabKJyMSd23eTUUnh63r', 'site address display on contact page', 'site address display on contact page', 'en', '0'),
('61dd0b1ca7d8c', 'ej0n4CabKJyMSd23eTUUnh63r', 'site address display on contact page', 'site address display on contact page', 'es', '61dd0b1c91326'),
('61dd0b1cb4b8a', 'ej0n4CabKJyMSd23eTUUnh63r', 'site address display on contact page', 'site address display on contact page', 'ar', '61dd0b1c91326'),
('61dd2e2588231', 'QQFtwgmbST5siFyE6Gust4N1f', 'URL Rewriting', 'URL Rewriting', 'en', '0'),
('61dd2e259b35e', 'QQFtwgmbST5siFyE6Gust4N1f', 'URL Rewriting', 'URL Rewriting', 'es', '61dd2e2588231'),
('61dd2e25a4fc5', 'QQFtwgmbST5siFyE6Gust4N1f', 'URL Rewriting', 'URL Rewriting', 'ar', '61dd2e2588231'),
('61dd3024981c6', 'OhvH7un35Dv4LM8MR64Kbkxbm', 'if \"ON\" search engine friendly', 'if \"ON\" search engine friendly', 'en', '0'),
('61dd3024aba95', 'OhvH7un35Dv4LM8MR64Kbkxbm', 'if \"ON\" search engine friendly', 'if \"ON\" search engine friendly', 'es', '61dd3024981c6'),
('61dd3024b56fc', 'OhvH7un35Dv4LM8MR64Kbkxbm', 'if \"ON\" search engine friendly', 'if \"ON\" search engine friendly', 'ar', '61dd3024981c6'),
('61e516b61908b', 'ivuQzjUVS2fzQ70g4f7CXqv8K', 'Text Limitation', 'Text Limitation', 'en', '0'),
('61e516b633428', 'ivuQzjUVS2fzQ70g4f7CXqv8K', 'Text Limitation', 'Text Limitation', 'es', '61e516b61908b'),
('61e516b63ccbf', 'ivuQzjUVS2fzQ70g4f7CXqv8K', 'Text Limitation', 'Text Limitation', 'ar', '61e516b61908b'),
('61e51a3a36990', 'SPZdKRHvcMgKAcl5dMwVcimBV', 'chars length', 'chars length', 'en', '0'),
('61e51a3a4c884', 'SPZdKRHvcMgKAcl5dMwVcimBV', 'chars length', 'chars length', 'es', '61e51a3a36990'),
('61e51a3a55d4a', 'SPZdKRHvcMgKAcl5dMwVcimBV', 'chars length', 'chars length', 'ar', '61e51a3a36990'),
('61e51a444247c', '3aqhZJSMPk4Zrwwyqiqyaqj60', 'Post Short Description', 'Post Short Description', 'en', '0'),
('61e51a445611b', '3aqhZJSMPk4Zrwwyqiqyaqj60', 'Post Short Description', 'Post Short Description', 'es', '61e51a444247c'),
('61e51a4461fd7', '3aqhZJSMPk4Zrwwyqiqyaqj60', 'Post Short Description', 'Post Short Description', 'ar', '61e51a444247c'),
('61e51a5c61c06', 'dSWntCYwGOcgrGNJQhQvEN6jl', 'Author Name', 'Author Name', 'en', '0'),
('61e51a5c77afa', 'dSWntCYwGOcgrGNJQhQvEN6jl', 'Author Name', 'Author Name', 'es', '61e51a5c61c06'),
('61e51a5c839b6', 'dSWntCYwGOcgrGNJQhQvEN6jl', 'Author Name', 'Author Name', 'ar', '61e51a5c61c06'),
('61e543db0a7d8', 'IHtS32kTb6oLQH4aBuVSAtRJh', 'if you will set \"0\" full text displaying', 'if you will set \"0\" full text displaying', 'en', '0'),
('61e543db20e6d', 'IHtS32kTb6oLQH4aBuVSAtRJh', 'if you will set \"0\" full text displaying', 'if you will set \"0\" full text displaying', 'es', '61e543db0a7d8'),
('61e543db2c959', 'IHtS32kTb6oLQH4aBuVSAtRJh', 'if you will set \"0\" full text displaying', 'if you will set \"0\" full text displaying', 'ar', '61e543db0a7d8'),
('61e663812887f', 'Uai3LKe0kpHopax9d4zKaXJSb', 'VAT', 'VAT', 'en', '0'),
('61e6638148b7b', 'Uai3LKe0kpHopax9d4zKaXJSb', 'VAT', 'VAT', 'es', '61e663812887f'),
('61e66381527e2', 'Uai3LKe0kpHopax9d4zKaXJSb', 'VAT', 'VAT', 'ar', '61e663812887f'),
('61e663ece3b09', '5a9BRhTF0Mf9Kg08FdHWyTTCn', 'Checkout with Razorpay', 'Checkout with Razorpay', 'en', '0'),
('61e663ed05b8d', '5a9BRhTF0Mf9Kg08FdHWyTTCn', 'Checkout with Razorpay', 'Checkout with Razorpay', 'es', '61e663ece3b09'),
('61e663ed112a8', '5a9BRhTF0Mf9Kg08FdHWyTTCn', 'Checkout with Razorpay', 'Checkout with Razorpay', 'ar', '61e663ece3b09'),
('61e663f988601', 'ltAqPsJPooKodjN108jPoEo99', 'Checkout with Payhere', 'Checkout with Payhere', 'en', '0'),
('61e663f99f808', 'ltAqPsJPooKodjN108jPoEo99', 'Checkout with Payhere', 'Checkout with Payhere', 'es', '61e663f988601'),
('61e663f9a983f', 'ltAqPsJPooKodjN108jPoEo99', 'Checkout with Payhere', 'Checkout with Payhere', 'ar', '61e663f988601'),
('61e66402e3368', 'm0gJ4IgDxwKKObs01KtsSOGnI', 'Checkout with Payumoney', 'Checkout with Payumoney', 'en', '0'),
('61e6640306ea0', 'm0gJ4IgDxwKKObs01KtsSOGnI', 'Checkout with Payumoney', 'Checkout with Payumoney', 'es', '61e66402e3368'),
('61e664031298b', 'm0gJ4IgDxwKKObs01KtsSOGnI', 'Checkout with Payumoney', 'Checkout with Payumoney', 'ar', '61e66402e3368'),
('61e6640b08583', 'IXc6vxvBQ1VKVFLNg8PZBg2yK', 'Checkout with Iyzico', 'Checkout with Iyzico', 'en', '0'),
('61e6640b1d164', 'IXc6vxvBQ1VKVFLNg8PZBg2yK', 'Checkout with Iyzico', 'Checkout with Iyzico', 'es', '61e6640b08583'),
('61e6640b28c50', 'IXc6vxvBQ1VKVFLNg8PZBg2yK', 'Checkout with Iyzico', 'Checkout with Iyzico', 'ar', '61e6640b08583'),
('61e6641460cc4', 'FZhNKr2kpcYVmgz2oBSdfQw2Q', 'Checkout with Flutterwave', 'Checkout with Flutterwave', 'en', '0'),
('61e664147e99a', 'FZhNKr2kpcYVmgz2oBSdfQw2Q', 'Checkout with Flutterwave', 'Checkout with Flutterwave', 'es', '61e6641460cc4'),
('61e664148c6db', 'FZhNKr2kpcYVmgz2oBSdfQw2Q', 'Checkout with Flutterwave', 'Checkout with Flutterwave', 'ar', '61e6641460cc4'),
('61e6641e704b8', '6v7YZD6HmFPQHrvVQpxwuj3YD', 'Checkout with Coingate', 'Checkout with Coingate', 'en', '0'),
('61e6641f2aea5', '6v7YZD6HmFPQHrvVQpxwuj3YD', 'Checkout with Coingate', 'Checkout with Coingate', 'es', '61e6641e704b8'),
('61e6641f3eb43', '6v7YZD6HmFPQHrvVQpxwuj3YD', 'Checkout with Coingate', 'Checkout with Coingate', 'ar', '61e6641e704b8'),
('61e66427b4b8a', 'kKHO6HbSn3xPQMYzwQdxIOQdv', 'Checkout with iPay', 'Checkout with iPay', 'en', '0'),
('61e66427cd474', 'kKHO6HbSn3xPQMYzwQdxIOQdv', 'Checkout with iPay', 'Checkout with iPay', 'es', '61e66427b4b8a'),
('61e66427d9330', 'kKHO6HbSn3xPQMYzwQdxIOQdv', 'Checkout with iPay', 'Checkout with iPay', 'ar', '61e66427b4b8a'),
('61e66cc55b136', 'QTWVccHOAXdDDhrByDFExSuAT', 'Upload Main File Type', 'Upload Main File Type', 'en', '0'),
('61e66cc574d33', 'QTWVccHOAXdDDhrByDFExSuAT', 'Upload Main File Type', 'Upload Main File Type', 'es', '61e66cc55b136'),
('61e66cc58081f', 'QTWVccHOAXdDDhrByDFExSuAT', 'Upload Main File Type', 'Upload Main File Type', 'ar', '61e66cc55b136'),
('61e66d264eeaa', 'kC45FeBRkYqn48ImpBIGef6f3', 'File', 'File', 'en', '0'),
('61e66d266acfc', 'kC45FeBRkYqn48ImpBIGef6f3', 'File', 'File', 'es', '61e66d264eeaa'),
('61e66d2676417', 'kC45FeBRkYqn48ImpBIGef6f3', 'File', 'File', 'ar', '61e66d264eeaa'),
('61e66d59bef92', '9QLrel1npOc6CsYVOVYw2g3vh', 'Link/URL', 'Link/URL', 'en', '0'),
('61e66d59dade4', '9QLrel1npOc6CsYVOVYw2g3vh', 'Link/URL', 'Link/URL', 'es', '61e66d59bef92'),
('61e66d59e51ec', '9QLrel1npOc6CsYVOVYw2g3vh', 'Link/URL', 'Link/URL', 'ar', '61e66d59bef92'),
('61e66d8cbef92', 'YwwteuNhkqWL8EpgvyDXyWqPS', 'Max Size', 'Max Size', 'en', '0'),
('61e66d8ccfe6a', 'YwwteuNhkqWL8EpgvyDXyWqPS', 'Max Size', 'Max Size', 'es', '61e66d8cbef92'),
('61e66d8cd9ea2', 'YwwteuNhkqWL8EpgvyDXyWqPS', 'Max Size', 'Max Size', 'ar', '61e66d8cbef92'),
('61e66dc96d321', '0hp1e6NTE32OrszvQyN9UQ7nn', 'Main File Link/URL', 'Main File Link/URL', 'en', '0'),
('61e66dc98b799', '0hp1e6NTE32OrszvQyN9UQ7nn', 'Main File Link/URL', 'Main File Link/URL', 'es', '61e66dc96d321'),
('61e66dc997655', '0hp1e6NTE32OrszvQyN9UQ7nn', 'Main File Link/URL', 'Main File Link/URL', 'ar', '61e66dc96d321'),
('61e66efb5c81a', 'quihHOwB97NNYCK2F854kpXQp', 'If item support \"YES\" selected Regular license price must be entered', 'If item support \"YES\" selected Regular license price must be entered', 'en', '0'),
('61e66efb872ee', 'quihHOwB97NNYCK2F854kpXQp', 'If item support \"YES\" selected Regular license price must be entered', 'If item support \"YES\" selected Regular license price must be entered', 'es', '61e66efb5c81a'),
('61e66efba4453', 'quihHOwB97NNYCK2F854kpXQp', 'If item support \"YES\" selected Regular license price must be entered', 'If item support \"YES\" selected Regular license price must be entered', 'ar', '61e66efb5c81a'),
('61e66f5c17d78', 'R0Ry1i954A9JgMkKT1BWED0sG', 'Seo', 'Seo', 'en', '0'),
('61e66f5c2e40d', 'R0Ry1i954A9JgMkKT1BWED0sG', 'Seo', 'Seo', 'es', '61e66f5c17d78'),
('61e66f5c38fb6', 'R0Ry1i954A9JgMkKT1BWED0sG', 'Seo', 'Seo', 'ar', '61e66f5c17d78'),
('61e6743e84157', 'zAb8fnI0NsMr20zkKmpbNDcBQ', 'Your subscription has been expired. Please renewal your', 'Your subscription has been expired. Please renewal your', 'en', '0'),
('61e6743e9c2a0', 'zAb8fnI0NsMr20zkKmpbNDcBQ', 'Your subscription has been expired. Please renewal your', 'Your subscription has been expired. Please renewal your', 'es', '61e6743e84157'),
('61e6743ea7d8c', 'zAb8fnI0NsMr20zkKmpbNDcBQ', 'Your subscription has been expired. Please renewal your', 'Your subscription has been expired. Please renewal your', 'ar', '61e6743e84157'),
('61e6773edfa2f', 'TbJOmRfdXnsxvg3fQSCbWeCyl', 'Total Referrals', 'Total Referrals', 'en', '0'),
('61e6773ef32fd', 'TbJOmRfdXnsxvg3fQSCbWeCyl', 'Total Referrals', 'Total Referrals', 'es', '61e6773edfa2f'),
('61e6773f0a7d8', 'TbJOmRfdXnsxvg3fQSCbWeCyl', 'Total Referrals', 'Total Referrals', 'ar', '61e6773edfa2f'),
('61e677dfca2dd', 'lM6hwLAU9HsP47S53iSjrSnMJ', 'Test Bank', 'Test Bank', 'en', '0'),
('61e677dfdd039', 'lM6hwLAU9HsP47S53iSjrSnMJ', 'Test Bank', 'Test Bank', 'es', '61e677dfca2dd'),
('61e677dfe6ca0', 'lM6hwLAU9HsP47S53iSjrSnMJ', 'Test Bank', 'Test Bank', 'ar', '61e677dfca2dd'),
('61e677e7660b0', 'L4Iemf9soSBmjo3kJUq32aJjc', 'Test Branch', 'Test Branch', 'en', '0'),
('61e677e77d2b7', 'L4Iemf9soSBmjo3kJUq32aJjc', 'Test Branch', 'Test Branch', 'es', '61e677e7660b0'),
('61e677e786f1e', 'L4Iemf9soSBmjo3kJUq32aJjc', 'Test Branch', 'Test Branch', 'ar', '61e677e7660b0'),
('61e679da7102a', 'Vb3BdfI1KL5Huhg3VZLFWIo24', 'Iyzico Settings', 'Iyzico Settings', 'en', '0'),
('61e679da85099', 'Vb3BdfI1KL5Huhg3VZLFWIo24', 'Iyzico Settings', 'Iyzico Settings', 'es', '61e679da7102a'),
('61e679da907b4', 'Vb3BdfI1KL5Huhg3VZLFWIo24', 'Iyzico Settings', 'Iyzico Settings', 'ar', '61e679da7102a'),
('61e67a09202fb', '9hA1aVjEDpQFoa6BRrMK6AGsw', 'Iyzico Mode', 'Iyzico Mode', 'en', '0'),
('61e67a0938444', '9hA1aVjEDpQFoa6BRrMK6AGsw', 'Iyzico Mode', 'Iyzico Mode', 'es', '61e67a09202fb'),
('61e67a0944300', '9hA1aVjEDpQFoa6BRrMK6AGsw', 'Iyzico Mode', 'Iyzico Mode', 'ar', '61e67a09202fb'),
('61e67a11da643', '9dVI3IL0YhKYNzL691NqEEaNX', 'Iyzico API Key', 'Iyzico API Key', 'en', '0'),
('61e67a1200f42', '9dVI3IL0YhKYNzL691NqEEaNX', 'Iyzico API Key', 'Iyzico API Key', 'es', '61e67a11da643'),
('61e67a120b71b', '9dVI3IL0YhKYNzL691NqEEaNX', 'Iyzico API Key', 'Iyzico API Key', 'ar', '61e67a11da643'),
('61e67a1ab0ab0', 'TNg4clxv41OW9gwzEM5M6dp00', 'Iyzico Secret Key', 'Iyzico Secret Key', 'en', '0'),
('61e67a1aca6ad', 'TNg4clxv41OW9gwzEM5M6dp00', 'Iyzico Secret Key', 'Iyzico Secret Key', 'es', '61e67a1ab0ab0'),
('61e67a1ad20bf', 'TNg4clxv41OW9gwzEM5M6dp00', 'Iyzico Secret Key', 'Iyzico Secret Key', 'ar', '61e67a1ab0ab0'),
('61e67a2384157', 'wdQH1QcYQSoO4vzFkzrqKDRr8', 'Flutterwave Settings', 'Flutterwave Settings', 'en', '0'),
('61e67a23994d9', 'wdQH1QcYQSoO4vzFkzrqKDRr8', 'Flutterwave Settings', 'Flutterwave Settings', 'es', '61e67a2384157'),
('61e67a23a12bc', 'wdQH1QcYQSoO4vzFkzrqKDRr8', 'Flutterwave Settings', 'Flutterwave Settings', 'ar', '61e67a2384157'),
('61e67a2bbb65a', 'S0bcAXWZwt1jaY0UVVpQJm0nY', 'Flutterwave Public Key', 'Flutterwave Public Key', 'en', '0'),
('61e67a2bd2860', 'S0bcAXWZwt1jaY0UVVpQJm0nY', 'Flutterwave Public Key', 'Flutterwave Public Key', 'es', '61e67a2bbb65a'),
('61e67a2be05a1', 'S0bcAXWZwt1jaY0UVVpQJm0nY', 'Flutterwave Public Key', 'Flutterwave Public Key', 'ar', '61e67a2bbb65a'),
('61e67a332625a', '5szlHTqpQkthYoUFT3dNgRBSx', 'Flutterwave Secret Key', 'Flutterwave Secret Key', 'en', '0'),
('61e67a333e3a2', '5szlHTqpQkthYoUFT3dNgRBSx', 'Flutterwave Secret Key', 'Flutterwave Secret Key', 'es', '61e67a332625a'),
('61e67a3347498', '5szlHTqpQkthYoUFT3dNgRBSx', 'Flutterwave Secret Key', 'Flutterwave Secret Key', 'ar', '61e67a332625a'),
('61e67a4006ea0', 'CaNCDF9DGjwpXPiAj0SMWBYxk', 'Coingate Settings', 'Coingate Settings', 'en', '0'),
('61e67a401c5f2', 'CaNCDF9DGjwpXPiAj0SMWBYxk', 'Coingate Settings', 'Coingate Settings', 'es', '61e67a4006ea0'),
('61e67a40247a6', 'CaNCDF9DGjwpXPiAj0SMWBYxk', 'Coingate Settings', 'Coingate Settings', 'ar', '61e67a4006ea0'),
('61e67a472bde7', 'AhsFBLx0V5nFUe3LP7GiZq5td', 'Coingate Mode', 'Coingate Mode', 'en', '0'),
('61e67a4746185', 'AhsFBLx0V5nFUe3LP7GiZq5td', 'Coingate Mode', 'Coingate Mode', 'es', '61e67a472bde7'),
('61e67a47510ff', 'AhsFBLx0V5nFUe3LP7GiZq5td', 'Coingate Mode', 'Coingate Mode', 'ar', '61e67a472bde7'),
('61e67a4fdb585', 'Bo6jnpWJQ6bcB2i4CBufMJl4G', 'Coingate Auth Token', 'Coingate Auth Token', 'en', '0'),
('61e67a4ff3e6f', 'Bo6jnpWJQ6bcB2i4CBufMJl4G', 'Coingate Auth Token', 'Coingate Auth Token', 'es', '61e67a4fdb585'),
('61e67a5007a12', 'Bo6jnpWJQ6bcB2i4CBufMJl4G', 'Coingate Auth Token', 'Coingate Auth Token', 'ar', '61e67a4fdb585'),
('61e67a5a0487a', 'bLVu8bxZ8IN2XgbCABioAh4zB', 'iPay Mode', 'iPay Mode', 'en', '0'),
('61e67a5a1a76e', 'bLVu8bxZ8IN2XgbCABioAh4zB', 'iPay Mode', 'iPay Mode', 'es', '61e67a5a0487a'),
('61e67a5a23c34', 'bLVu8bxZ8IN2XgbCABioAh4zB', 'iPay Mode', 'iPay Mode', 'ar', '61e67a5a0487a'),
('61e67a6339b28', 'JVT0ixOl0nyQCYeQvGdvitv4y', 'Vendor ID', 'Vendor ID', 'en', '0'),
('61e67a634ead9', 'JVT0ixOl0nyQCYeQvGdvitv4y', 'Vendor ID', 'Vendor ID', 'es', '61e67a6339b28'),
('61e67a63568bc', 'JVT0ixOl0nyQCYeQvGdvitv4y', 'Vendor ID', 'Vendor ID', 'ar', '61e67a6339b28'),
('61e67a6ad3001', '8g3zhocr2lTj9FJMfCezQvafq', 'iPay API / Hash Key', 'iPay API / Hash Key', 'en', '0'),
('61e67a6af1479', '8g3zhocr2lTj9FJMfCezQvafq', 'iPay API / Hash Key', 'iPay API / Hash Key', 'es', '61e67a6ad3001'),
('61e67a6b0d1ce', '8g3zhocr2lTj9FJMfCezQvafq', 'iPay API / Hash Key', 'iPay API / Hash Key', 'ar', '61e67a6ad3001'),
('61e67b7a3a699', 'Ha4x2Ptps6m6E0cp1x6yItx04', 'iPay Settings', 'iPay Settings', 'en', '0'),
('61e67b7a52bb3', 'Ha4x2Ptps6m6E0cp1x6yItx04', 'iPay Settings', 'iPay Settings', 'es', '61e67b7a3a699'),
('61e67b7a608f3', 'Ha4x2Ptps6m6E0cp1x6yItx04', 'iPay Settings', 'iPay Settings', 'ar', '61e67b7a3a699'),
('61e67d6519bfc', 'q28elZkWQY5LI52InMzPXxTU0', 'Your details has been sent. Once received payment will confirm your subscription', 'Your details has been sent. Once received payment will confirm your subscription', 'en', '0'),
('61e67d652f71f', 'q28elZkWQY5LI52InMzPXxTU0', 'Your details has been sent. Once received payment will confirm your subscription', 'Your details has been sent. Once received payment will confirm your subscription', 'es', '61e67d6519bfc'),
('61e67d6539757', 'q28elZkWQY5LI52InMzPXxTU0', 'Your details has been sent. Once received payment will confirm your subscription', 'Your details has been sent. Once received payment will confirm your subscription', 'ar', '61e67d6519bfc'),
('61e67da62123e', 'BSnxJD4lttuqPtEWDJi7n5oQW', 'Your Subscription Id', 'Your Subscription Id', 'en', '0'),
('61e67da63e773', 'BSnxJD4lttuqPtEWDJi7n5oQW', 'Your Subscription Id', 'Your Subscription Id', 'es', '61e67da62123e'),
('61e67da646555', 'BSnxJD4lttuqPtEWDJi7n5oQW', 'Your Subscription Id', 'Your Subscription Id', 'ar', '61e67da62123e'),
('61e9347a4190a', 'QTI9Kxbsa12WFYKE1PCR3eLgg', 'Wasabi Storage', 'Wasabi Storage', 'en', '0'),
('61e9347a58ee1', 'QTI9Kxbsa12WFYKE1PCR3eLgg', 'Wasabi Storage', 'Wasabi Storage', 'es', '61e9347a4190a'),
('61e9347a61836', 'QTI9Kxbsa12WFYKE1PCR3eLgg', 'Wasabi Storage', 'Wasabi Storage', 'ar', '61e9347a4190a'),
('61e93481d20bf', 'R6zypxi705d8C0ZirD5n39Bxf', 'Dropbox Storage', 'Dropbox Storage', 'en', '0'),
('61e93481e9a67', 'R6zypxi705d8C0ZirD5n39Bxf', 'Dropbox Storage', 'Dropbox Storage', 'es', '61e93481d20bf'),
('61e9348201e84', 'R6zypxi705d8C0ZirD5n39Bxf', 'Dropbox Storage', 'Dropbox Storage', 'ar', '61e93481d20bf'),
('61e9348976f88', 'cf5NzW83nRamtkX2MowPCZfou', 'Google Storage', 'Google Storage', 'en', '0'),
('61e934898e18f', 'cf5NzW83nRamtkX2MowPCZfou', 'Google Storage', 'Google Storage', 'es', '61e9348976f88'),
('61e934899e4f5', 'cf5NzW83nRamtkX2MowPCZfou', 'Google Storage', 'Google Storage', 'ar', '61e9348976f88'),
('61e9352785fdc', 'u550zwnjYVMKEXJ5j3rwJrmtH', 'Wasabi Storage Configuration (If wasabi storage selected)', 'Wasabi Storage Configuration (If wasabi storage selected)', 'en', '0'),
('61e935279d5b3', 'u550zwnjYVMKEXJ5j3rwJrmtH', 'Wasabi Storage Configuration (If wasabi storage selected)', 'Wasabi Storage Configuration (If wasabi storage selected)', 'es', '61e9352785fdc'),
('61e93527a909e', 'u550zwnjYVMKEXJ5j3rwJrmtH', 'Wasabi Storage Configuration (If wasabi storage selected)', 'Wasabi Storage Configuration (If wasabi storage selected)', 'ar', '61e9352785fdc'),
('61e9352fe1c84', 'F6WEZwnup0TguRNVEzsMbv6mn', 'WASABI ACCESS KEY ID', 'WASABI ACCESS KEY ID', 'en', '0'),
('61e935300487a', 'F6WEZwnup0TguRNVEzsMbv6mn', 'WASABI ACCESS KEY ID', 'WASABI ACCESS KEY ID', 'es', '61e9352fe1c84'),
('61e9353010b07', 'F6WEZwnup0TguRNVEzsMbv6mn', 'WASABI ACCESS KEY ID', 'WASABI ACCESS KEY ID', 'ar', '61e9352fe1c84'),
('61e93538514cf', 'DYoxA71zfAzLRyI19SeT5GkwL', 'WASABI SECRET ACCESS KEY', 'WASABI SECRET ACCESS KEY', 'en', '0'),
('61e935386e263', 'DYoxA71zfAzLRyI19SeT5GkwL', 'WASABI SECRET ACCESS KEY', 'WASABI SECRET ACCESS KEY', 'es', '61e93538514cf'),
('61e935388044e', 'DYoxA71zfAzLRyI19SeT5GkwL', 'WASABI SECRET ACCESS KEY', 'WASABI SECRET ACCESS KEY', 'ar', '61e93538514cf'),
('61e935431ff2b', 'P9CLarO79h7TkFt9jb71VyNBl', 'WASABI DEFAULT REGION', 'WASABI DEFAULT REGION', 'en', '0'),
('61e9354341169', 'P9CLarO79h7TkFt9jb71VyNBl', 'WASABI DEFAULT REGION', 'WASABI DEFAULT REGION', 'es', '61e935431ff2b'),
('61e9354348f4c', 'P9CLarO79h7TkFt9jb71VyNBl', 'WASABI DEFAULT REGION', 'WASABI DEFAULT REGION', 'ar', '61e935431ff2b'),
('61e9355410b07', 'IbVCYJ6znjRivVzN6dkiWIu0K', 'WASABI BUCKET', 'WASABI BUCKET', 'en', '0'),
('61e935542d0fa', 'IbVCYJ6znjRivVzN6dkiWIu0K', 'WASABI BUCKET', 'WASABI BUCKET', 'es', '61e9355410b07'),
('61e935543c51e', 'IbVCYJ6znjRivVzN6dkiWIu0K', 'WASABI BUCKET', 'WASABI BUCKET', 'ar', '61e9355410b07'),
('61e9356493d1c', 'wYl2jScaHhFtRBaY4hFkO6dze', 'Dropbox Storage Configuration (If dropbox storage selected)', 'Dropbox Storage Configuration (If dropbox storage selected)', 'en', '0'),
('61e93564db585', 'wYl2jScaHhFtRBaY4hFkO6dze', 'Dropbox Storage Configuration (If dropbox storage selected)', 'Dropbox Storage Configuration (If dropbox storage selected)', 'es', '61e9356493d1c'),
('61e93564ebcbc', 'wYl2jScaHhFtRBaY4hFkO6dze', 'Dropbox Storage Configuration (If dropbox storage selected)', 'Dropbox Storage Configuration (If dropbox storage selected)', 'ar', '61e9356493d1c'),
('61e9356c0f424', 'RTPn4y0qISFsMVTEg8PjZbIlT', 'DROPBOX API', 'DROPBOX API', 'en', '0'),
('61e9356c29020', 'RTPn4y0qISFsMVTEg8PjZbIlT', 'DROPBOX API', 'DROPBOX API', 'es', '61e9356c0f424'),
('61e9356c4931c', 'RTPn4y0qISFsMVTEg8PjZbIlT', 'DROPBOX API', 'DROPBOX API', 'ar', '61e9356c0f424'),
('61e935746a18a', 'rD3kf7TdzZsSznMdi72Uwpcbv', 'DROPBOX TOKEN', 'DROPBOX TOKEN', 'en', '0'),
('61e9357486b4d', 'rD3kf7TdzZsSznMdi72Uwpcbv', 'DROPBOX TOKEN', 'DROPBOX TOKEN', 'es', '61e935746a18a'),
('61e9357499109', 'rD3kf7TdzZsSznMdi72Uwpcbv', 'DROPBOX TOKEN', 'DROPBOX TOKEN', 'ar', '61e935746a18a'),
('61e936a53c51e', '7OkntE33BycArOKbiyLscQRvS', 'Google Drive Storage Configuration (If google drive storage selected)', 'Google Drive Storage Configuration (If google drive storage selected)', 'en', '0'),
('61e936a5518a0', '7OkntE33BycArOKbiyLscQRvS', 'Google Drive Storage Configuration (If google drive storage selected)', 'Google Drive Storage Configuration (If google drive storage selected)', 'es', '61e936a53c51e'),
('61e936a559e24', '7OkntE33BycArOKbiyLscQRvS', 'Google Drive Storage Configuration (If google drive storage selected)', 'Google Drive Storage Configuration (If google drive storage selected)', 'ar', '61e936a53c51e'),
('61e936baa5b36', 'l8Ojlt4XXrHigYNqTUOrFye4f', 'GOOGLE DRIVE CLIENT ID', 'GOOGLE DRIVE CLIENT ID', 'en', '0'),
('61e936bab9034', 'l8Ojlt4XXrHigYNqTUOrFye4f', 'GOOGLE DRIVE CLIENT ID', 'GOOGLE DRIVE CLIENT ID', 'es', '61e936baa5b36'),
('61e936bac0e17', 'l8Ojlt4XXrHigYNqTUOrFye4f', 'GOOGLE DRIVE CLIENT ID', 'GOOGLE DRIVE CLIENT ID', 'ar', '61e936baa5b36'),
('61e936c3d060b', 'HF4ZGtfnv0Gp6gSFuVPAPOwHv', 'GOOGLE DRIVE CLIENT SECRET', 'GOOGLE DRIVE CLIENT SECRET', 'en', '0'),
('61e936c3e9e37', 'HF4ZGtfnv0Gp6gSFuVPAPOwHv', 'GOOGLE DRIVE CLIENT SECRET', 'GOOGLE DRIVE CLIENT SECRET', 'es', '61e936c3d060b'),
('61e936c403567', 'HF4ZGtfnv0Gp6gSFuVPAPOwHv', 'GOOGLE DRIVE CLIENT SECRET', 'GOOGLE DRIVE CLIENT SECRET', 'ar', '61e936c3d060b'),
('61e936cf64d9d', 'a7Dq04myQ64Tf9f81AjJCuacT', 'GOOGLE DRIVE REFRESH TOKEN', 'GOOGLE DRIVE REFRESH TOKEN', 'en', '0'),
('61e936cf7f8dc', 'a7Dq04myQ64Tf9f81AjJCuacT', 'GOOGLE DRIVE REFRESH TOKEN', 'GOOGLE DRIVE REFRESH TOKEN', 'es', '61e936cf64d9d'),
('61e936cf8f872', 'a7Dq04myQ64Tf9f81AjJCuacT', 'GOOGLE DRIVE REFRESH TOKEN', 'GOOGLE DRIVE REFRESH TOKEN', 'ar', '61e936cf64d9d'),
('61e936d84fa1b', 'jo3ql2whWEIiKghF96KQ0DZzq', 'GOOGLE DRIVE FOLDER ID', 'GOOGLE DRIVE FOLDER ID', 'en', '0'),
('61e936d86d321', 'jo3ql2whWEIiKghF96KQ0DZzq', 'GOOGLE DRIVE FOLDER ID', 'GOOGLE DRIVE FOLDER ID', 'es', '61e936d84fa1b'),
('61e936d876f88', 'jo3ql2whWEIiKghF96KQ0DZzq', 'GOOGLE DRIVE FOLDER ID', 'GOOGLE DRIVE FOLDER ID', 'ar', '61e936d84fa1b'),
('6200', 'umGHptaz4p9ZCYtEu5tyNPFHE', 'Limited No of Items', 'عدد محدود من العناصر', 'ar', '6198'),
('6201', '4E7yaMkb2PLBGidlIQTklP69g', 'Storage Space', 'Storage Space', 'en', '0'),
('6202', '4E7yaMkb2PLBGidlIQTklP69g', 'Storage Space', 'Espacio de almacenamiento', 'es', '6201'),
('6203', '4E7yaMkb2PLBGidlIQTklP69g', 'Storage Space', 'مساحة التخزين', 'ar', '6201'),
('6204', 'nMZo2ZUkBmT8768Pa8dbrta4f', 'Pack Name', 'Pack Name', 'en', '0'),
('6205', 'nMZo2ZUkBmT8768Pa8dbrta4f', 'Pack Name', 'Nombre del paquete', 'es', '6204'),
('6206', 'nMZo2ZUkBmT8768Pa8dbrta4f', 'Pack Name', 'اسم الحزمة', 'ar', '6204'),
('6207', 'WixgEckFIQIUW4IDwMCIWfvtI', 'Item Upload / Sales Type', 'Item Upload / Sales Type', 'en', '0'),
('6208', 'WixgEckFIQIUW4IDwMCIWfvtI', 'Item Upload / Sales Type', 'Carga de artículo / Tipo de venta', 'es', '6207'),
('6209', 'WixgEckFIQIUW4IDwMCIWfvtI', 'Item Upload / Sales Type', 'تحميل البند / نوع المبيعات', 'ar', '6207'),
('6210', 'F048lSC1K0vp9TJN38ivBJRFD', 'Space Limit', 'Space Limit', 'en', '0'),
('6211', 'F048lSC1K0vp9TJN38ivBJRFD', 'Space Limit', 'Límite de espacio', 'es', '6210'),
('6212', 'F048lSC1K0vp9TJN38ivBJRFD', 'Space Limit', 'حد المساحة', 'ar', '6210'),
('6213', 'STFUvuWUlOWbA33IbnXDETJq8', 'Direct Payment Transfer', 'Direct Payment Transfer', 'en', '0'),
('6214', 'STFUvuWUlOWbA33IbnXDETJq8', 'Direct Payment Transfer', 'Transferencia de pago directo', 'es', '6213'),
('6215', 'STFUvuWUlOWbA33IbnXDETJq8', 'Direct Payment Transfer', 'تحويل الدفع المباشر', 'ar', '6213'),
('6216', 'lLk0msqCDhvGN7ugs5VTY1AKb', 'Edit Pack', 'Edit Pack', 'en', '0'),
('6217', 'lLk0msqCDhvGN7ugs5VTY1AKb', 'Edit Pack', 'Editar paquete', 'es', '6216'),
('6218', 'lLk0msqCDhvGN7ugs5VTY1AKb', 'Edit Pack', 'تحرير الحزمة', 'ar', '6216'),
('6219', 'dcKCLg47fsV6Zf2v4ZGTTzMsn', 'Subscription Id', 'Subscription Id', 'en', '0'),
('6220', 'dcKCLg47fsV6Zf2v4ZGTTzMsn', 'Subscription Id', 'ID de suscripción', 'es', '6219'),
('6221', 'dcKCLg47fsV6Zf2v4ZGTTzMsn', 'Subscription Id', 'معرف الإشتراك', 'ar', '6219'),
('6222', 'zJnxTGJ1VYpM1xJL7dbVGQW3L', 'localbank only', 'localbank only', 'en', '0'),
('6223', 'zJnxTGJ1VYpM1xJL7dbVGQW3L', 'localbank only', 'localbank solamente', 'es', '6222'),
('6224', 'zJnxTGJ1VYpM1xJL7dbVGQW3L', 'localbank only', 'localbank فقط', 'ar', '6222'),
('6225', '5xLswsRKZ1jcB4XNazsUMAnIf', 'expired', 'expired', 'en', '0'),
('6226', '5xLswsRKZ1jcB4XNazsUMAnIf', 'expired', 'caducada', 'es', '6225'),
('6227', '5xLswsRKZ1jcB4XNazsUMAnIf', 'expired', 'منتهية الصلاحية', 'ar', '6225'),
('6228', 'rAgjhYbo8XyooYK8lPegjPrhh', 'Are you sure you want to complete subscription payment', 'Are you sure you want to complete subscription payment', 'en', '0'),
('6229', 'rAgjhYbo8XyooYK8lPegjPrhh', 'Are you sure you want to complete subscription payment', '¿Está seguro de que desea completar el pago de la suscripción?', 'es', '6228'),
('6230', 'rAgjhYbo8XyooYK8lPegjPrhh', 'Are you sure you want to complete subscription payment', 'هل أنت متأكد أنك تريد إتمام دفع الاشتراك', 'ar', '6228'),
('6231', 'k48FWVri7KNKXhT6lHkqi7MMm', 'DAYS MONEY BACK GUARANTEE', 'DAYS MONEY BACK GUARANTEE', 'en', '0'),
('6232', 'k48FWVri7KNKXhT6lHkqi7MMm', 'DAYS MONEY BACK GUARANTEE', 'DÍAS DE GARANTÍA DE DEVOLUCIÓN DEL DINERO', 'es', '6231'),
('6233', 'k48FWVri7KNKXhT6lHkqi7MMm', 'DAYS MONEY BACK GUARANTEE', 'ضمان استرداد الأموال لمدة يوم', 'ar', '6231'),
('6234', 'IR5Vlz91tQNomYWUPNogwhcIb', 'THIS PRODUCT DO NOT OFFER MONEY BACK GUARANTEE', 'NO REFUND OR EXCHANGE ACCEPTED', 'en', '0'),
('6235', 'IR5Vlz91tQNomYWUPNogwhcIb', 'THIS PRODUCT DO NOT OFFER MONEY BACK GUARANTEE', 'ESTE PRODUCTO NO OFRECE GARANTÍA DE DEVOLUCIÓN DE DINERO', 'es', '6234'),
('6236', 'IR5Vlz91tQNomYWUPNogwhcIb', 'THIS PRODUCT DO NOT OFFER MONEY BACK GUARANTEE', 'لا يقدم هذا المنتج ضمان استرداد الأموال', 'ar', '6234'),
('6237', 'NbCW1z4vWGBNQmowBUZJlPNss', 'Refund Terms', 'Refund Terms', 'en', '0'),
('6238', 'NbCW1z4vWGBNQmowBUZJlPNss', 'Refund Terms', 'Condiciones de reembolso', 'es', '6237'),
('6239', 'NbCW1z4vWGBNQmowBUZJlPNss', 'Refund Terms', 'شروط الاسترداد', 'ar', '6237'),
('6240', 'zCODI9eQksy5EpeHqHwiO6pYn', 'Do you offer money back guarantee', 'Do you offer money back guarantee', 'en', '0'),
('6241', 'zCODI9eQksy5EpeHqHwiO6pYn', 'Do you offer money back guarantee', '¿Ofrecen garantía de devolución de dinero?', 'es', '6240'),
('6242', 'zCODI9eQksy5EpeHqHwiO6pYn', 'Do you offer money back guarantee', 'هل تقدم ضمان استعادة الأموال', 'ar', '6240'),
('6243', '7eFhR8RqNyEc0NucKhMdr7ZQw', 'How many days to money back', 'How many days to money back', 'en', '0'),
('6244', '7eFhR8RqNyEc0NucKhMdr7ZQw', 'How many days to money back', 'Cuántos días para devolver el dinero', 'es', '6243'),
('6245', '7eFhR8RqNyEc0NucKhMdr7ZQw', 'How many days to money back', 'كم يوما لاسترداد المال', 'ar', '6243'),
('6246', 'V0ORENdZ8IZFvpcrlK7goo2LQ', 'Extended License Display', 'Display Extended License', 'en', '0'),
('6247', 'V0ORENdZ8IZFvpcrlK7goo2LQ', 'Extended License Display', 'Pantalla de licencia extendida', 'es', '6246'),
('6248', 'V0ORENdZ8IZFvpcrlK7goo2LQ', 'Extended License Display', 'عرض الترخيص الممتد', 'ar', '6246'),
('6249', 'CSGDpfh9yFNMcyWQh2ci9BDFH', 'Regular License Duration', 'Regular License Duration', 'en', '0'),
('6250', 'CSGDpfh9yFNMcyWQh2ci9BDFH', 'Regular License Duration', 'Duración normal de la licencia', 'es', '6249'),
('6251', 'CSGDpfh9yFNMcyWQh2ci9BDFH', 'Regular License Duration', 'مدة الترخيص العادية', 'ar', '6249'),
('6252', 'JQg6PzDfk2J6AD9fj4XWqX7yQ', 'Extended License Duration', 'Extended License Duration', 'en', '0'),
('6253', 'JQg6PzDfk2J6AD9fj4XWqX7yQ', 'Extended License Duration', 'Duración extendida de la licencia', 'es', '6252'),
('6254', 'JQg6PzDfk2J6AD9fj4XWqX7yQ', 'Extended License Duration', 'مدة الترخيص الممتدة', 'ar', '6252'),
('6255', 'pztGCXLoNxac2p2FZaVZXnSvO', 'support from', 'support from', 'en', '0'),
('6256', 'pztGCXLoNxac2p2FZaVZXnSvO', 'support from', 'el apoyo de', 'es', '6255'),
('6257', 'pztGCXLoNxac2p2FZaVZXnSvO', 'support from', 'دعم من', 'ar', '6255'),
('6258', 'l8KKN0oEjot7yVJXEaz2iUQrz', 'not support from', 'not support from', 'en', '0'),
('6259', 'l8KKN0oEjot7yVJXEaz2iUQrz', 'not support from', 'no es el apoyo de', 'es', '6258'),
('6260', 'l8KKN0oEjot7yVJXEaz2iUQrz', 'not support from', 'لا يدعم من', 'ar', '6258'),
('6261', 'XrCPlTeyvL1yticHJ0WZqJbWK', 'not support', 'not support', 'en', '0'),
('6262', 'XrCPlTeyvL1yticHJ0WZqJbWK', 'not support', 'no apoyo', 'es', '6261'),
('6263', 'XrCPlTeyvL1yticHJ0WZqJbWK', 'not support', 'لا يدعم', 'ar', '6261'),
('6264', 'HyKzIV5Dmm5ey9P5wJ0psjFkQ', 'Purchased Item', 'Purchased Item', 'en', '0'),
('6265', 'HyKzIV5Dmm5ey9P5wJ0psjFkQ', 'Purchased Item', 'Artículo comprado', 'es', '6264'),
('6266', 'HyKzIV5Dmm5ey9P5wJ0psjFkQ', 'Purchased Item', 'البند المشتراة', 'ar', '6264'),
('6267', 'NGJ3AmtUQJPPUn4m3223RZkn4', 'Item Features', 'Item Features', 'en', '0'),
('6268', 'NGJ3AmtUQJPPUn4m3223RZkn4', 'Item Features', 'Características del artículo', 'es', '6267'),
('6269', 'NGJ3AmtUQJPPUn4m3223RZkn4', 'Item Features', 'ميزات العنصر', 'ar', '6267'),
('6270', '6hROCByITGZ8SllEjipuTjr1V', 'Display screenshots', 'Display Screenshots', 'en', '0'),
('6271', '6hROCByITGZ8SllEjipuTjr1V', 'Display screenshots', 'Mostrar capturas de pantalla', 'es', '6270'),
('6272', '6hROCByITGZ8SllEjipuTjr1V', 'Display screenshots', 'عرض لقطات', 'ar', '6270'),
('6273', '9i0ma3uKTVJK54QJMG93NVhOc', 'Display video', 'Display Video', 'en', '0'),
('6274', '9i0ma3uKTVJK54QJMG93NVhOc', 'Display video', 'Mostrar video', 'es', '6273'),
('6275', '9i0ma3uKTVJK54QJMG93NVhOc', 'Display video', 'عرض الفيديو', 'ar', '6273'),
('6276', 'U2MBow8sJgXlN0i20pAycARmk', 'Display moneyback', 'Display Money back', 'en', '0'),
('6277', 'U2MBow8sJgXlN0i20pAycARmk', 'Display moneyback', 'Mostrar devolución de dinero', 'es', '6276'),
('6278', 'U2MBow8sJgXlN0i20pAycARmk', 'Display moneyback', 'عرض استعادة النقود', 'ar', '6276'),
('6279', 'cV7tFtm7xgtgFNmtxvGM9j0KA', 'Display Demo Url', 'Display Demo Url', 'en', '0'),
('6280', 'cV7tFtm7xgtgFNmtxvGM9j0KA', 'Display Demo Url', 'Mostrar URL de demostración', 'es', '6279'),
('6281', 'cV7tFtm7xgtgFNmtxvGM9j0KA', 'Display Demo Url', 'عرض عنوان URL التجريبي', 'ar', '6279'),
('6282', 'WErEQcrTnbpAzO0VLGY8x713J', 'Display Free Download', 'Display Free Download', 'en', '0'),
('6283', 'WErEQcrTnbpAzO0VLGY8x713J', 'Display Free Download', 'Mostrar descarga gratuita', 'es', '6282'),
('6284', 'WErEQcrTnbpAzO0VLGY8x713J', 'Display Free Download', 'عرض تنزيل مجاني', 'ar', '6282'),
('6285', '5aqWdDabRQdJC5yDdF0Uw6rIJ', 'Display Flash Sale', 'Display Flash Sale', 'en', '0'),
('6286', '5aqWdDabRQdJC5yDdF0Uw6rIJ', 'Display Flash Sale', 'Venta Flash de Display', 'es', '6285'),
('6287', '5aqWdDabRQdJC5yDdF0Uw6rIJ', 'Display Flash Sale', 'عرض بيع فلاش', 'ar', '6285'),
('6288', 'LvAZwF1hHxMgQEJJko1wTmc1b', 'Display Tags', 'Display Tags', 'en', '0'),
('6289', 'LvAZwF1hHxMgQEJJko1wTmc1b', 'Display Tags', 'Etiquetas de visualización', 'es', '6288'),
('6290', 'LvAZwF1hHxMgQEJJko1wTmc1b', 'Display Tags', 'عرض العلامات', 'ar', '6288'),
('6291', 'NHaJSp2BqACbyzlJXA5lbPa77', 'Display Feature Update', 'Display Feature Update', 'en', '0'),
('6292', 'NHaJSp2BqACbyzlJXA5lbPa77', 'Display Feature Update', 'Actualización de funciones de pantalla', 'es', '6291'),
('6293', 'NHaJSp2BqACbyzlJXA5lbPa77', 'Display Feature Update', 'عرض تحديث الميزات', 'ar', '6291'),
('6294', 'aIToKnXn1Xpqdb9hoikFioW6J', 'Display Item Support', 'Display Item Support', 'en', '0'),
('6295', 'aIToKnXn1Xpqdb9hoikFioW6J', 'Display Item Support', 'Soporte de elementos de visualización', 'es', '6294'),
('6296', 'aIToKnXn1Xpqdb9hoikFioW6J', 'Display Item Support', 'عرض دعم العنصر', 'ar', '6294'),
('6297', '0dlAYjIV8tt3f52H5EqvbFAfO', 'Display Refund Terms', 'Display Refund Terms', 'en', '0'),
('6298', '0dlAYjIV8tt3f52H5EqvbFAfO', 'Display Refund Terms', 'Mostrar condiciones de reembolso', 'es', '6297'),
('6299', '0dlAYjIV8tt3f52H5EqvbFAfO', 'Display Refund Terms', 'عرض شروط استرداد الأموال', 'ar', '6297'),
('6300', 'wIfxHyYYxNomZJePqic4qOdD4', 'Conversation Message', 'Conversation Message', 'en', '0'),
('6301', 'wIfxHyYYxNomZJePqic4qOdD4', 'Conversation Message', 'Mensaje de conversación', 'es', '6300'),
('6302', 'wIfxHyYYxNomZJePqic4qOdD4', 'Conversation Message', 'رسالة محادثة', 'ar', '6300'),
('6303', 'CdlC78OEMIvMiDyJnpM9MtGwU', 'Conversation Url', 'Conversation Url', 'en', '0'),
('6304', 'CdlC78OEMIvMiDyJnpM9MtGwU', 'Conversation Url', 'URL de la conversación', 'es', '6303'),
('6305', 'CdlC78OEMIvMiDyJnpM9MtGwU', 'Conversation Url', 'عنوان Url للمحادثة', 'ar', '6303'),
('6306', 'I2lzmHhswyB5GryYfnfMZaWTB', 'Conversation', 'Conversation', 'en', '0'),
('6307', 'I2lzmHhswyB5GryYfnfMZaWTB', 'Conversation', 'Conversacion', 'es', '6306'),
('6308', 'I2lzmHhswyB5GryYfnfMZaWTB', 'Conversation', 'محادثة', 'ar', '6306'),
('6309', 'Ay81bHm7GRTDN8Os0Y2lgz4bS', 'Type your message', 'Type your message', 'en', '0'),
('6310', 'Ay81bHm7GRTDN8Os0Y2lgz4bS', 'Type your message', 'Escribe tu mensaje', 'es', '6309'),
('6311', 'Ay81bHm7GRTDN8Os0Y2lgz4bS', 'Type your message', 'اكتب رسالتك', 'ar', '6309'),
('6312', 'BDJ9N0gsDTo7PY5e767jAuBnq', 'Send', 'Send', 'en', '0'),
('6313', 'BDJ9N0gsDTo7PY5e767jAuBnq', 'Send', 'Enviar', 'es', '6312'),
('6314', 'BDJ9N0gsDTo7PY5e767jAuBnq', 'Send', 'إرسال', 'ar', '6312'),
('6315', '9tZwPEYCNYRfzIo3m7alVAH4K', 'Start Conversation', 'Start Conversation', 'en', '0'),
('6316', '9tZwPEYCNYRfzIo3m7alVAH4K', 'Start Conversation', 'Iniciar conversación', 'es', '6315'),
('6317', '9tZwPEYCNYRfzIo3m7alVAH4K', 'Start Conversation', 'ابدأ المحادثة', 'ar', '6315'),
('6318', 'EHw1299eQoB7cnAW1C8vz3G91', 'With', 'With', 'en', '0'),
('6319', 'EHw1299eQoB7cnAW1C8vz3G91', 'With', 'Con', 'es', '6318'),
('6320', 'EHw1299eQoB7cnAW1C8vz3G91', 'With', 'مع', 'ar', '6318'),
('6321', 'KJyKZxcl1zRWs7G13RGeeaU3q', 'To change your Name please contact our', 'To change your Name please contact our', 'en', '0'),
('6322', 'KJyKZxcl1zRWs7G13RGeeaU3q', 'To change your Name please contact our', 'Para cambiar su nombre, comuníquese con nuestro', 'es', '6321'),
('6323', 'KJyKZxcl1zRWs7G13RGeeaU3q', 'To change your Name please contact our', 'لتغيير اسمك يرجى الاتصال بنا', 'ar', '6321'),
('6324', 'LXEIiTtIgPEKwU6FsTxuFnAhw', 'To change your Username please contact our', 'To change your Username please contact our', 'en', '0'),
('6325', 'LXEIiTtIgPEKwU6FsTxuFnAhw', 'To change your Username please contact our', 'Para cambiar su nombre de usuario, comuníquese con nuestro', 'es', '6324'),
('6326', 'LXEIiTtIgPEKwU6FsTxuFnAhw', 'To change your Username please contact our', 'لتغيير اسم المستخدم الخاص بك يرجى الاتصال بنا', 'ar', '6324'),
('6327', 'UqIkAUmW4HCziOw1iqIjpLLwj', 'To change your E-mail address please contact our', 'To change your E-mail address please contact our', 'en', '0'),
('6328', 'UqIkAUmW4HCziOw1iqIjpLLwj', 'To change your E-mail address please contact our', 'Para cambiar su dirección de correo electrónico, comuníquese con nuestro', 'es', '6327'),
('6329', 'UqIkAUmW4HCziOw1iqIjpLLwj', 'To change your E-mail address please contact our', 'لتغيير عنوان البريد الإلكتروني الخاص بك ، يرجى الاتصال بنا', 'ar', '6327'),
('6330', '7jKpAwXdR7SNGIRp4l3QV3aGr', 'Message Settings', 'Message Settings', 'en', '0'),
('6331', '7jKpAwXdR7SNGIRp4l3QV3aGr', 'Message Settings', 'Configuración de mensajes', 'es', '6330'),
('6332', '7jKpAwXdR7SNGIRp4l3QV3aGr', 'Message Settings', 'إعدادات الرسالة', 'ar', '6330'),
('6333', 'YZpceoBJ1RUbhsQH8FTE57Mw6', 'Message Permission', 'Message Permission', 'en', '0'),
('6334', 'YZpceoBJ1RUbhsQH8FTE57Mw6', 'Message Permission', 'Permiso de mensaje', 'es', '6333'),
('6335', 'YZpceoBJ1RUbhsQH8FTE57Mw6', 'Message Permission', 'إذن الرسالة', 'ar', '6333'),
('6336', 'JtGsY06TS4b1yYgE8cc0MV31T', 'Send me messages for customer / vendor', 'Send me messages for customer / vendor', 'en', '0'),
('6337', 'JtGsY06TS4b1yYgE8cc0MV31T', 'Send me messages for customer / vendor', 'Envíeme mensajes para el cliente / proveedor', 'es', '6336'),
('6338', 'JtGsY06TS4b1yYgE8cc0MV31T', 'Send me messages for customer / vendor', 'أرسل لي رسائل للعملاء / البائعين', 'ar', '6336'),
('6339', '3mSNb65GWDDYJjV2XAiyjAkUE', '2checkout Settings', '2checkout Settings', 'en', '0'),
('6340', '3mSNb65GWDDYJjV2XAiyjAkUE', '2checkout Settings', 'Configuración de 2checkout', 'es', '6339'),
('6341', '3mSNb65GWDDYJjV2XAiyjAkUE', '2checkout Settings', '2 إعدادات الخروج', 'ar', '6339'),
('6342', 'OMYGor8JS6Be2Nw4pVQhyoADB', '2checkout Mode', '2checkout Mode', 'en', '0'),
('6343', 'OMYGor8JS6Be2Nw4pVQhyoADB', '2checkout Mode', '2modo de pago', 'es', '6342'),
('6344', 'OMYGor8JS6Be2Nw4pVQhyoADB', '2checkout Mode', '2 وضع الخروج', 'ar', '6342'),
('6345', '5uChsGiX52Ob7KjpmArJhufIC', '2Checkout Account Number', '2Checkout Account Number', 'en', '0'),
('6346', '5uChsGiX52Ob7KjpmArJhufIC', '2Checkout Account Number', '2Checkout Número de cuenta', 'es', '6345'),
('6347', '5uChsGiX52Ob7KjpmArJhufIC', '2Checkout Account Number', '2Checkout رقم الحساب', 'ar', '6345'),
('6348', 'GycU9C2a6KThIY0nZPm3YRIrr', '2Checkout Publishable Key', '2Checkout Publishable Key', 'en', '0'),
('6349', 'GycU9C2a6KThIY0nZPm3YRIrr', '2Checkout Publishable Key', '2Clave publicable de pago', 'es', '6348'),
('6350', 'GycU9C2a6KThIY0nZPm3YRIrr', '2Checkout Publishable Key', '2Checkout مفتاح قابل للنشر', 'ar', '6348'),
('6351', 'cdDdj1gE7uXvmZgJnu1zAy3Du', '2Checkout Private Key', '2Checkout Private Key', 'en', '0'),
('6352', 'cdDdj1gE7uXvmZgJnu1zAy3Du', '2Checkout Private Key', '2Realizar pedido de clave privada', 'es', '6351'),
('6353', 'cdDdj1gE7uXvmZgJnu1zAy3Du', '2Checkout Private Key', '2Checkout Private Key', 'ar', '6351'),
('6354', 'wFH5LJs83uV01NGHfpchGTPcN', 'Payhere Settings', 'Payhere Settings', 'en', '0'),
('6355', 'wFH5LJs83uV01NGHfpchGTPcN', 'Payhere Settings', 'Configuración de Payhere', 'es', '6354'),
('6356', 'wFH5LJs83uV01NGHfpchGTPcN', 'Payhere Settings', 'إعدادات Payhere', 'ar', '6354'),
('6357', '8dgNGdFHbZlpxvlqyadRzZMVN', 'Payhere Mode', 'Payhere Mode', 'en', '0'),
('6358', '8dgNGdFHbZlpxvlqyadRzZMVN', 'Payhere Mode', 'Modo Payhere', 'es', '6357'),
('6359', '8dgNGdFHbZlpxvlqyadRzZMVN', 'Payhere Mode', 'وضع Payhere', 'ar', '6357'),
('6360', 'B5JhD3p1B8dcSwpKMlkjVmsj8', 'Payhere Merchant Id', 'Payhere Merchant Id', 'en', '0'),
('6361', 'B5JhD3p1B8dcSwpKMlkjVmsj8', 'Payhere Merchant Id', 'ID de comerciante de Payhere', 'es', '6360'),
('6362', 'B5JhD3p1B8dcSwpKMlkjVmsj8', 'Payhere Merchant Id', 'معرف تاجر Payhere', 'ar', '6360'),
('6363', 'JvT6jNJrz1ixKfpSzRoLEpCS4', 'Payumoney Settings', 'Payumoney Settings', 'en', '0'),
('6364', 'JvT6jNJrz1ixKfpSzRoLEpCS4', 'Payumoney Settings', 'Configuración de Payumoney', 'es', '6363'),
('6365', 'JvT6jNJrz1ixKfpSzRoLEpCS4', 'Payumoney Settings', 'إعدادات Payumoney', 'ar', '6363'),
('6366', 'eZxcpp1eG7jECre3XW0PmL4Fx', 'Payumoney Mode', 'Payumoney Mode', 'en', '0'),
('6367', 'eZxcpp1eG7jECre3XW0PmL4Fx', 'Payumoney Mode', 'Modo Payumoney', 'es', '6366'),
('6368', 'eZxcpp1eG7jECre3XW0PmL4Fx', 'Payumoney Mode', 'وضع Payumoney', 'ar', '6366'),
('6369', 'caSzzrENIlyBsW1VgyGcpsLYH', 'Payumoney Merchant Key', 'Payumoney Merchant Key', 'en', '0'),
('6370', 'caSzzrENIlyBsW1VgyGcpsLYH', 'Payumoney Merchant Key', 'Clave de comerciante de Payumoney', 'es', '6369'),
('6371', 'caSzzrENIlyBsW1VgyGcpsLYH', 'Payumoney Merchant Key', 'مفتاح تاجر Payumoney', 'ar', '6369'),
('6372', 'cmCI3b7eoF6eiPAcqxqK8FzTa', 'Payumoney Salt Key', 'Payumoney Salt Key', 'en', '0'),
('6373', 'cmCI3b7eoF6eiPAcqxqK8FzTa', 'Payumoney Salt Key', 'Payumoney Salt Key', 'es', '6372'),
('6374', 'cmCI3b7eoF6eiPAcqxqK8FzTa', 'Payumoney Salt Key', 'مفتاح الملح Payumoney', 'ar', '6372'),
('6375', 'dduEJWyi4pXpmtCEcVzzfxTbe', 'View All Messages', 'View All Messages', 'en', '0'),
('6376', 'dduEJWyi4pXpmtCEcVzzfxTbe', 'View All Messages', 'Ver todos los mensajes', 'es', '6375'),
('6377', 'dduEJWyi4pXpmtCEcVzzfxTbe', 'View All Messages', 'عرض كل الرسائل', 'ar', '6375'),
('6378', 'OVPdmazdMLsMB1WYOcCTL3HSF', 'Messages', 'Messages', 'en', '0'),
('6379', 'OVPdmazdMLsMB1WYOcCTL3HSF', 'Messages', 'Mensajes', 'es', '6378'),
('6380', 'OVPdmazdMLsMB1WYOcCTL3HSF', 'Messages', 'رسائل', 'ar', '6378'),
('6381', 'ohyDmaKaCbnd3eUoLtUDYMYUl', 'Live Chat Code', 'Live Chat Code', 'en', '0'),
('6382', 'ohyDmaKaCbnd3eUoLtUDYMYUl', 'Live Chat Code', 'Código de chat en vivo', 'es', '6381'),
('6383', 'ohyDmaKaCbnd3eUoLtUDYMYUl', 'Live Chat Code', 'رمز الدردشة الحية', 'ar', '6381'),
('6384', 'fWXX4MH2GSoX8yYPSIKz2Bu4E', 'Allow Seo', 'Allow Seo', 'en', '0'),
('6385', 'fWXX4MH2GSoX8yYPSIKz2Bu4E', 'Allow Seo', 'Permitir SEO', 'es', '6384'),
('6386', 'fWXX4MH2GSoX8yYPSIKz2Bu4E', 'Allow Seo', 'السماح للسيو', 'ar', '6384'),
('6387', 'cgYzZX1nQLE2921WXQvoEs9bJ', 'SEO Meta Keywords', 'SEO Meta Keywords', 'en', '0'),
('6388', 'cgYzZX1nQLE2921WXQvoEs9bJ', 'SEO Meta Keywords', 'Meta palabras clave de SEO', 'es', '6387'),
('6389', 'cgYzZX1nQLE2921WXQvoEs9bJ', 'SEO Meta Keywords', 'الكلمات المفتاحية SEO Meta', 'ar', '6387'),
('6390', 'SeWXbX49eYhFl11SZczhnSmPG', 'max 160 chars', 'max 160 chars', 'en', '0'),
('6391', 'SeWXbX49eYhFl11SZczhnSmPG', 'max 160 chars', 'max 160 caracteres', 'es', '6390'),
('6392', 'SeWXbX49eYhFl11SZczhnSmPG', 'max 160 chars', '160 حرفًا بحد أقصى', 'ar', '6390'),
('6393', 'QzvlNjZI61M2LFeOptLnzB6fh', 'SEO Meta Description', 'SEO Meta Description', 'en', '0'),
('6394', 'QzvlNjZI61M2LFeOptLnzB6fh', 'SEO Meta Description', 'Meta descripción de SEO', 'es', '6393'),
('6395', 'QzvlNjZI61M2LFeOptLnzB6fh', 'SEO Meta Description', 'وصف التعريف SEO', 'ar', '6393'),
('6396', 'RpViIqFT91OykHJjFyJeIY8Ly', 'Admin Payment Methods', 'Admin Payment Methods', 'en', '0'),
('6397', 'RpViIqFT91OykHJjFyJeIY8Ly', 'Admin Payment Methods', 'Métodos de pago del administrador', 'es', '6396'),
('6398', 'RpViIqFT91OykHJjFyJeIY8Ly', 'Admin Payment Methods', 'طرق الدفع الادارية', 'ar', '6396'),
('6399', 'pWH72MhO7MixOfOtt3zAE7gPJ', 'Vendor Payment Methods', 'Vendor Payment Methods', 'en', '0'),
('6400', 'pWH72MhO7MixOfOtt3zAE7gPJ', 'Vendor Payment Methods', 'Métodos de pago del proveedor', 'es', '6399'),
('6401', 'pWH72MhO7MixOfOtt3zAE7gPJ', 'Vendor Payment Methods', 'طرق الدفع للبائع', 'ar', '6399'),
('6402', 'yPAVr4Sp3H7yhR70pPukqsxvY', '2checkout callback url', '2checkout callback url', 'en', '0'),
('6403', 'yPAVr4Sp3H7yhR70pPukqsxvY', '2checkout callback url', 'URL de devolución de llamada de 2checkout', 'es', '6402'),
('6404', 'yPAVr4Sp3H7yhR70pPukqsxvY', '2checkout callback url', '2checkout عنوان url', 'ar', '6402'),
('6405', 'CgoUzYiFXtoQzANQcsesHYo40', 'How to configure callback url', 'How to configure callback url', 'en', '0'),
('6406', 'CgoUzYiFXtoQzANQcsesHYo40', 'How to configure callback url', 'Cómo configurar la URL de devolución de llamada', 'es', '6405'),
('6407', 'CgoUzYiFXtoQzANQcsesHYo40', 'How to configure callback url', 'كيفية تكوين رابط رد الاتصال', 'ar', '6405'),
('6408', 'ftGxuGGfffzWIMM7l1c2BhuXk', 'Sign Up', 'Sign Up', 'en', '0'),
('6409', 'ftGxuGGfffzWIMM7l1c2BhuXk', 'Sign Up', 'Inscribirse', 'es', '6408'),
('6410', 'ftGxuGGfffzWIMM7l1c2BhuXk', 'Sign Up', 'اشتراك', 'ar', '6408'),
('6411', 'tLYJx8qIzOwPrHJ1XwLk9RNZD', 'Per Sale Referral Commission', 'Per Sale Referral Commission', 'en', '0'),
('6412', 'tLYJx8qIzOwPrHJ1XwLk9RNZD', 'Per Sale Referral Commission', 'Comisión de recomendación por venta', 'es', '6411'),
('6413', 'tLYJx8qIzOwPrHJ1XwLk9RNZD', 'Per Sale Referral Commission', 'عمولة الإحالة لكل عملية بيع', 'ar', '6411'),
('6414', 'NjQxNA==', 'Clear Cache', 'Clear Cache', 'en', '0'),
('6417', 'NjQxNA==', 'Clear Cache', 'Clear Cache', 'es', '6414'),
('6418', 'NjQxNA==', 'Clear Cache', 'Clear Cache', 'ar', '6414'),
('6419', 'nqdOvU4hlZKYnG50RheeS0yYi', 'Are you sure you want to clear cache', 'Are you sure you want to clear cache', 'en', '0'),
('6420', 'nqdOvU4hlZKYnG50RheeS0yYi', 'Are you sure you want to clear cache', 'Are you sure you want to clear cache', 'es', '6419'),
('6421', 'nqdOvU4hlZKYnG50RheeS0yYi', 'Are you sure you want to clear cache', 'Are you sure you want to clear cache', 'ar', '6419'),
('6422', 'cwploTTZQtj8LMGiDbEXPWd4c', 'Image Quality', 'Image Quality', 'en', '0'),
('6423', 'cwploTTZQtj8LMGiDbEXPWd4c', 'Image Quality', 'Image Quality', 'es', '6422'),
('6424', 'cwploTTZQtj8LMGiDbEXPWd4c', 'Image Quality', 'Image Quality', 'ar', '6422'),
('6425', '2xLJhgpDC8LBvgOXQRo9oqkz8', 'Upload', 'Upload', 'en', '0'),
('6426', '2xLJhgpDC8LBvgOXQRo9oqkz8', 'Upload', 'Upload', 'es', '6425'),
('6427', '2xLJhgpDC8LBvgOXQRo9oqkz8', 'Upload', 'Upload', 'ar', '6425'),
('6428', 'CZ4ZgoMjhTagP9A1YWipEmzay', 'Per Day', 'Per Day', 'en', '0'),
('6429', 'CZ4ZgoMjhTagP9A1YWipEmzay', 'Per Day', 'Per Day', 'es', '6428'),
('6430', 'CZ4ZgoMjhTagP9A1YWipEmzay', 'Per Day', 'Per Day', 'ar', '6428'),
('6431', 'HfC6Mgxg6cTp5ItkztBxoOxSo', 'Download items per day', 'Download items per day', 'en', '0'),
('6432', 'HfC6Mgxg6cTp5ItkztBxoOxSo', 'Download items per day', 'Download items per day', 'es', '6431'),
('6433', 'HfC6Mgxg6cTp5ItkztBxoOxSo', 'Download items per day', 'Download items per day', 'ar', '6431'),
('6434', 'QLpN2gqSXQKQKuzqA5yeXkB1R', 'Today download items limit', 'Today download items limit', 'en', '0'),
('6435', 'QLpN2gqSXQKQKuzqA5yeXkB1R', 'Today download items limit', 'Today download items limit', 'es', '6434'),
('6436', 'QLpN2gqSXQKQKuzqA5yeXkB1R', 'Today download items limit', 'Today download items limit', 'ar', '6434'),
('6437', 'DR1WuqNNM7ko5kTc1yqY5o1A2', 'Unlimited Upload Items', 'Unlimited Upload Items', 'en', '0'),
('6438', 'DR1WuqNNM7ko5kTc1yqY5o1A2', 'Unlimited Upload Items', 'Unlimited Upload Items', 'es', '6437'),
('6439', 'DR1WuqNNM7ko5kTc1yqY5o1A2', 'Unlimited Upload Items', 'Unlimited Upload Items', 'ar', '6437');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `language_id` int NOT NULL,
  `language_token` varchar(200) DEFAULT NULL,
  `language_name` varchar(200) DEFAULT NULL,
  `language_code` varchar(50) DEFAULT NULL,
  `language_order` int NOT NULL DEFAULT '0',
  `language_default` int NOT NULL DEFAULT '0',
  `language_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`language_id`, `language_token`, `language_name`, `language_code`, `language_order`, `language_default`, `language_status`) VALUES
(8, 'LUcpjXt3myVdhXFETlQa0cNW4', 'English', 'en', 1, 1, '1'),
(11, 'TFmBn3uMkcsDXyPJjjin00Rj0', 'Spanish', 'es', 2, 0, '1'),
(12, 'ZUM20fE1gN6t60OmoJmDwshSN', 'Arabic', 'ar', 3, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `news_id` int NOT NULL,
  `news_email` varchar(200) NOT NULL,
  `news_token` varchar(200) NOT NULL,
  `news_status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`news_id`, `news_email`, `news_token`, `news_status`) VALUES
(1, 'rana.bangladesh@gmail.com', 'P7DKBRpmOa6Xv4Jhjglt39rFO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int NOT NULL,
  `page_title` varchar(500) NOT NULL,
  `page_desc` mediumtext NOT NULL,
  `page_slug` varchar(200) NOT NULL,
  `page_allow_seo` int NOT NULL,
  `page_seo_keyword` text,
  `page_seo_desc` text,
  `main_menu` int NOT NULL DEFAULT '0',
  `footer_menu` int NOT NULL DEFAULT '0',
  `menu_order` int NOT NULL,
  `page_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `page_allow_seo`, `page_seo_keyword`, `page_seo_desc`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(7, 'About Us', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Doptor&amp;rsquo;s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online. When you create an account and accept these terms you become a&amp;nbsp;&lt;strong&gt;member&lt;/strong&gt;&amp;nbsp;of our community. You will have an&amp;nbsp;&lt;strong&gt;Doptor Market account&lt;/strong&gt;&amp;nbsp;that will allow you to buy and sell&amp;nbsp;&lt;strong&gt;items&lt;/strong&gt;&amp;nbsp;like the ones found on the Doptor Market sites and make other related transactions.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;The Doptor Market sites are platforms that allow members to buy and sell licenses to use digital items like website themes, production music, motion graphics project files, software code, vectors, images and much, much more. On Doptor Market, buyers and authors (sellers) transact with each other directly and we provide the platform to allow the transactions to happen. If you have an Doptor Market account, any transactions are logged on your member&amp;rsquo;s statement, which records the payments made by you to authors via Doptor Market (as a &lt;strong&gt;buyer&lt;/strong&gt;) and by buyers via Doptor Market to you (as an&amp;nbsp;&lt;strong&gt;author&lt;/strong&gt;).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;The items on Doptor Market are owned by the authors, not by us. The items on Doptor Market are uploaded at the direction of the author. We provide the platform services; we do not take ownership of the items.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;During your time with us you agree to follow the ground rules outlined in these terms so please read and understand them. If you don&amp;rsquo;t accept the terms then we&amp;rsquo;ll be sad, but you will need to leave because your presence on and use of the Doptor Market sites is conditional on your acceptance to be bound by these terms you become a member or not.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You can also access Doptor Websites via the Doptor Market sites. The products offered on Doptor Websites (which include hosted theme and hosted starter site subscriptions) are offered by Doptor Hosted and Doptor Sites and are subject to separate terms and conditions, which you can access here: &lt;/span&gt;&lt;u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #0084b4;&quot;&gt;Doptor Hosted Terms&lt;/span&gt;&lt;/u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;&amp;nbsp;and&amp;nbsp;&lt;/span&gt;&lt;u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #0084b4;&quot;&gt;Doptor Sites Terms&lt;/span&gt;&lt;/u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;. To avoid any doubt, the Doptor Market terms do not apply to the products offered via Doptor Websites.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;&lt;strong&gt;Preview Files&lt;/strong&gt;: If you stream or download a preview file from our Doptor Market sites, you agree that you will not remove any watermarking or other protective measures from the preview file. You agree that you will use the preview file solely for the purposes of evaluating a purchase from Doptor Market sites and not for any other purpose.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-size: 12.0pt; line-height: 115%; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;&quot;&gt;&lt;strong&gt;Browsing&lt;/strong&gt;: You need to be 16 years or over to browse the Doptor Market sites. We don&amp;rsquo;t knowingly collect any information from anyone aged 16 or under. When browsing the sites you agree to follow our guidelines or instructions and keep in mind that these terms apply to any use of our Doptor Market sites whether or not you&amp;rsquo;re a member.&lt;/span&gt;&lt;/p&gt;', 'about-us', 1, 'Doptor’s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online.', 'Doptor’s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online.', 1, 1, 0, 1);
INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `page_allow_seo`, `page_seo_keyword`, `page_seo_desc`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(8, 'Privacy Policy', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; line-height: normal; mso-outline-level: 1; background: white;&quot; align=&quot;center&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 24.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #131419; letter-spacing: -.3pt; mso-font-kerning: 18.0pt;&quot;&gt;Privacy Policy&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Welcome to Doptor&amp;rsquo;s Privacy Policy&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;1&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;Hi there, we&amp;rsquo;re&amp;nbsp;&lt;strong&gt;Doptor&lt;/strong&gt;&amp;nbsp;Ltd of 369/B, Khilgaon, Taltola, Dhaka-1219, Bangladesh (&amp;ldquo;Doptor&amp;rdquo;) and welcome to our privacy policy which also applies to our Affiliate Companies. This policy sets out how we handle your personal information if you&amp;rsquo;re an Doptor user or visitor to our Sites. It applies across Doptor Market Product, Doptor Market, Freelance Service (the &amp;ldquo;&lt;strong&gt;Sites&lt;/strong&gt;&amp;rdquo;).&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;When we say &amp;lsquo;we&amp;rsquo;, &amp;lsquo;us&amp;rsquo; or &amp;lsquo;Doptor&amp;rsquo; it&amp;rsquo;s because that&amp;rsquo;s who we are and we own and run the Sites.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;If we say &amp;lsquo;policy&amp;rsquo; we&amp;rsquo;re talking about this privacy policy. If we say &amp;lsquo;user terms&amp;rsquo; we&amp;rsquo;re talking about the rules for using each of the Sites. The rules vary by product and each product makes them separately available and seeks consent to them separately to this policy.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;The type of personal information we collect&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;4&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l13 level1 lfo2; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We collect certain personal information about visitors and users of our Sites.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l13 level1 lfo2; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;The most common types of information we collect include things like: user-names, member names, email addresses, IP addresses, other contact details, survey responses, blogs, photos, payment information such as payment agent details, transactional details, tax information, support queries, forum comments (if applicable), content you direct us to make available on our Sites (such as item descriptions), your actions on our Sites (including any selections or inputs into items) and web and email analytics data. We will also collect personal information from job applications (such as, your CV, the application form itself, cover letter and interview notes).&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How we collect personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;6&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We collect personal information directly when you provide it to us, automatically as you navigate through the Sites, or through other people when you use services associated with the Sites.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We collect your personal information when you provide it to us when you complete membership registration and buy or provide items or services on our Sites, subscribe to a newsletter, email list, submit feedback, enter a contest, fill out a survey, or send us a communication.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;As the operator of digital content marketplaces, we have a legitimate interest in verifying the identity of our authors. We believe that knowing who our authors are will strengthen the integrity of our marketplaces by reducing fraud, making authors more accountable for their content and giving Doptor and customers the ability to enforce contracts for authors who break the rules. Doptor also has certain legal obligations that require us to know who our authors are in certain circumstances. In light of this, if you are an author we will verify your identity, in particular, your name, full address and date of birth by asking you to show us a Photo ID document. The verification team will Verify. Doptor team will be ask to take a selfie which will then be compared against your Photo ID document using facial recognition technology. We will use your Photo ID document solely to carry out Doptor Team and delete it after the completion of this process.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Personal information we collect about you from others&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;9&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l8 level1 lfo4; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;Although we generally collect personal information directly from you, on occasion, we also collect certain categories of personal information about you from other sources. In particular:&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l8 level2 lfo4; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;financial and/or transaction details from payment providers located in the Bangladesh, and Malaysia in order to process a transaction;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l8 level2 lfo4; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: black; mso-themecolor: text1;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;third party service providers (like Google, Facebook) who are located in the US or UK, which may provide information &lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: black; mso-themecolor: text1;&quot;&gt;about you when you link, connect, or login to your account with the third party provider and they send us information such as your registration and profile from that service, this only occurs if you are using Doptor Studio. The information varies and is controlled by that service provider or as authorized by you via your privacy settings at that service provider; and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 6.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l8 level2 lfo4; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: black; mso-themecolor: text1;&quot;&gt;other third party sources/and or partners from Australia, US or UK, whereby we receive additional information about you (to the extent permitted by applicable law), such as demographic data or fraud detection information, and combine it with information we have about &lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;you. For example, fraud warnings from service providers like identity verification service. We also receive information about you and your activities on and off the Doptor platform through partnerships, or about your experiences and interactions from our partner ad networks. We also receive information about you as a rights holder from our third party authors. For example, information in the form of a model release when your image is used in an item made available on our Sites.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How we use personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;10&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We will use your personal information:&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level2 lfo5; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;To fulfil a contract, or take steps linked to a contract: in particular, in facilitating and processing transactions that take place on the Sites, like where you purchase an item from our marketplace.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level2 lfo5; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Where this is necessary for purposes which are in our, or third parties&amp;rsquo;, legitimate interests. These interests include:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;i.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;operating the Sites;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;ii.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;providing you with services described on the Sites;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp; &lt;/span&gt;iii.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;verifying your identity when you sign in to any of our Sites;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp; &lt;/span&gt;iv.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;responding to support tickets, and helping facilitate the resolution of any disputes;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;v.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;updating you with operational news and information about our Sites and services e.g. to notify you about changes to our Sites, website disruptions or security updates;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp; &lt;/span&gt;vi.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;carrying out technical analysis to determine how to improve the Sites and services we provide;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&lt;span style=&quot;mso-spacerun: yes;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;vii.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;monitoring activity on the Sites, e.g. to identify potential fraudulent activity and to ensure compliance with the user terms that apply to the Sites;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;viii.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;managing our relationship with you, e.g. by responding to your comments or queries submitted to us on the Sites or asking for your feedback or whether you want to participate in a survey;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp; &lt;/span&gt;ix.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;managing our legal and operational affairs (including, managing risks relating to content and fraud matters);&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;x.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;training Doptor staff about how to best serve our user community;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp; &lt;/span&gt;xi.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;improving our products and services;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&lt;span style=&quot;mso-spacerun: yes;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;xii.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;providing general administrative and performance functions and activities; and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;xiii.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;verifying your identity by comparing a selfie taken by you against your Photo ID document using facial recognition technology (as is necessary for the establishment, exercise or defense of legal claims); and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 6.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;xiv.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;processing your job application to Doptor.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level2 lfo5; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Where you give us consent:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;i.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;providing you with marketing information about products and services which we feel may interest you; and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 6.0pt; margin-left: .5in; text-align: justify; text-indent: -.5in; mso-text-indent-alt: -.25in; line-height: normal; mso-list: l2 level3 lfo5; tab-stops: list 1.5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;ii.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;customising our services and websites, like advertising that appears on the Site &amp;ndash; where this involves the use of cookies or similar technologies &amp;ndash; in order to provide a more personalised experience.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level2 lfo5; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;For purposes which are required by law.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 6.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level2 lfo5; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;e.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;For the purpose of responding to requests by government, a court of law, or law enforcement authorities conducting an investigation.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;&lt;br /&gt;When we disclose your personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;11&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l5 level1 lfo6; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We will disclose personal information to the following recipients:&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;companies that are in the Doptor group which are located in Bangladesh, Malaysia and the US;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: black; mso-themecolor: text1;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;if applicable, authors of any items or services made available to you, so they can facilitate support and license validation, who maybe located in any of the countries our products are available in;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: black; mso-themecolor: text1;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: black; mso-themecolor: text1;&quot;&gt;subcontractors and service providers who assist us in connection with the ways we use personal information (as set out above), in particular: website hosting providers which are located in Australia, US and UK; technical and customer support services which are located in Australia, Canada, Philippines, Poland, Mexico, Romania, UK and the US; recruitment agencies which are located in Australia, US and Mexico; marketing and analytics services which are located in the US; security and fraud prevention services which are located in the US; subscription management services which are located in the US; payment processing services which are located in the US, UK and Australia; identification verification services located in the UK; and operational tooling services which are located in the US. Noting that our subcontractors and services providers may also transfer and access such information from other countries in which they have operations;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: black; mso-themecolor: text1;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: black; mso-themecolor: text1;&quot;&gt;our professional advisers (lawyers, accountants, financial advisers etc.) which are located in Australia, Ireland, Mexico, UK and USA;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;e.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;regulators and government authorities in connection with our compliance procedures and obligations;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;f.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;a purchaser or prospective purchaser of all or part of our assets or our business, and their professional advisers, in connection with the purchase;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;g.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;a third party to respond to requests relating to a criminal investigation or alleged or suspected illegal activity;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;h.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;a third party, in order to enforce or defend our rights, or to address financial or reputational risks;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;i.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;a rights holder in relation to an allegation of intellectual property infringement or any other infringement; and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 6.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level2 lfo6; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;j.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;other recipients where we are authorised or required by law, or requests by government, a court of law, or law enforcement authorities, to do so.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Where we transfer and/or store your personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;12&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l14 level1 lfo7; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We are based in Bangladesh and Malaysia so your data will be processed in Bangladesh, Malaysia and the US. Some of the recipients we have described in section 10 above, and to whom we disclose your personal information, are based in places like Australia, Canada, Ireland, Mexico, Philippines, Poland, Romania, UK, the US, India and Columbia. We do this on the basis of this policy. In order to protect your information, we take care where possible to work with subcontractors and service providers who we believe maintain an acceptable standard of data security compliance.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How we keep your personal information secure&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;13&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l16 level1 lfo8; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We store personal information on secure servers that are managed by us and our service providers, and occasionally hard copy files that are kept in a secure location in Australia, Ireland, Mexico and the US. Personal information that we store or transmit is protected by security and access controls, including username and password authentication, two-factor authentication, and data encryption where appropriate.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How you can access your personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;14&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l10 level1 lfo9; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;You can access some of the personal information that we collect about you by logging in to your account. You also have the right to make a request to access other personal information we hold about you and to request corrections of any errors in that data. You can also close the account you have with us for any of our Sites at any time. To make an access or correction request, contact our privacy champion using the contact details at the end of this policy.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Marketing Choices regarding your personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;15&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l4 level1 lfo10; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;Where we have your consent to do so (e.g. if you have subscribed to one of our email lists or have indicated that you are interested in receiving offers or information from us), we send you marketing communications by email about products and services that we feel may be of interest to you. You can &amp;lsquo;opt-out&amp;rsquo; of such communications if you would prefer not to receive them in the future by using the &amp;ldquo;unsubscribe&amp;rdquo; facility provided in the communication itself.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l4 level1 lfo10; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;You also have choices about cookies, as described below. By modifying your browser preferences, you have the choice to accept all cookies, to be notified when a cookie is set, or to reject all cookies. If you choose to reject cookies some parts of our Sites may not work properly in your case.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Cookies (not the type you eat!) and web analytics&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;17&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l9 level1 lfo11; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;For more information about how we use cookies, web beacons and similar technologies and for more general information on cookies, see&amp;nbsp;&lt;a href=&quot;https://www.allaboutcookies.org/&quot;&gt;&lt;span style=&quot;text-decoration: none; text-underline: none;&quot;&gt;https://www.allaboutcookies.org&lt;/span&gt;&lt;/a&gt;.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l9 level1 lfo11; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;When you visit our Sites, there&amp;rsquo;s certain information that&amp;rsquo;s recorded which is generally anonymous information and does not reveal your identity. If you&amp;rsquo;re logged into your account some of this information could be associated with your account. We&amp;rsquo;re talking about the following kinds of details:&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;your IP address or proxy server IP address&amp;rsquo;;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the domain name you requested;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the name of your internet service provider is sometimes captured depending on the configuration of your ISP connection;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the date and time of your visit to the website;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;e.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the length of your session;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;f.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the pages which you have accessed;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;g.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the number of times you access our site within any month;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;h.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the file URL you look at and information relating to it;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;i.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the website which referred you to our Sites;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;j.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the operating system which your computer uses; and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 6.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l9 level2 lfo11; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;k.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;the technical capabilities of your web browser.&lt;/span&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;19&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l9 level1 lfo11; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;Occasionally, we will use third party advertising companies to serve ads based on prior visits to our Sites. For example, if you visit our Sites, you may later see an add for our products and services when you visit a different Site. &lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Information about children&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;20&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l18 level1 lfo12; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;Our Sites are not suitable for children under the age of 16 years, so if you are under 16 we ask that you do not use our Sites or give us your personal information (if you are a young tech wiz, please direct your nearest responsible adult to use the Sites for you!). If you are from 16 to 18 years, you can browse the Sites but you&amp;rsquo;ll need the supervision of a parent or guardian to become a registered user. It&amp;rsquo;s the responsibility of parents or guardians to monitor their children&amp;rsquo;s use of our Sites.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;Information you make public or give to others&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;21&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l12 level1 lfo13; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;If you make your personal information available to other people, we can&amp;rsquo;t control or accept responsibility for the way they will use or manage that data. There are lots of ways that you can find yourself providing information to other people, like when you post a public message on a forum thread, share information via social media, or make contact with another user (such as a third party Author) whether via our Sites or directly via email. Before making your information publicly available or giving your information to anyone else, think carefully. If giving information to another user via our Sites, ask them how they will handle your information. If you&amp;rsquo;re sharing information via another website, check the privacy policy for that site to understand its information management practices as this privacy policy will not apply.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How you can manage or delete your personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;22&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l3 level1 lfo14; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We retain your personal information for as long as is necessary to provide the services to you and others, and to comply with our legal obligations. If you no longer want us to use your personal information or to provide you with the Doptor services, you can request that we erase your personal information and close your Doptor account by:&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l3 level2 lfo14; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;contacting our privacy champion in writing at 369, Khilgaon, Taltola, Dhaka-1219, Bangladesh or&amp;nbsp;&lt;a href=&quot;mailto:info@doptorr.com&quot;&gt;info@doptorr.com&lt;/a&gt;, or&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 6.0pt; margin-left: .5in; text-indent: -.25in; line-height: normal; mso-list: l3 level2 lfo14; tab-stops: list 1.0in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: Century; mso-bidi-font-family: Century; color: #2b2b30;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;submitting a request form through our help centre for the relevant Doptor service located at https://www.doptorr.com/contact.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;&lt;br /&gt;&lt;/span&gt;&lt;/strong&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How long we keep your personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;23&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l17 level1 lfo15; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;Please note that if you request the erasure of your personal information we may retain information from deleted accounts as necessary for our legitimate business interests, to comply with the law, prevent fraud, collect fees, resolve disputes, troubleshoot problems, assist with investigations or requests by government, a court of law, or law enforcement authorities, enforce the terms of service and take other actions permitted by law. Any information we retain will be handled in accordance with this Privacy Policy.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;When we need to update this policy&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;24&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l15 level1 lfo16; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We will need to change this policy from time to time in order to make sure it stays up to date with the latest legal requirements and any changes to our privacy management practices.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l15 level1 lfo16; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;When we do change the policy, we&amp;rsquo;ll make sure to notify you about such changes, where required. A copy of the latest version of this policy will always be available on this page.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How you can contact us&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;26&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l11 level1 lfo17; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;If you have any questions about our privacy practices or the way in which we have been managing your personal information, please contact our privacy champion in writing at PO Box 16122 Collins Street West Victoria 8007 Australia or info@doptorr.com&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l11 level1 lfo17; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;We&amp;rsquo;re really glad you made it to the end of the privacy policy, because knowing this stuff is the best way to understand how your personal information is used and how to best manage it!&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;If you&amp;rsquo;re a user or visitor in the European Economic Area these rights also apply to you:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;1&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l7 level1 lfo18; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;For the purposes of applicable EU data protection law (including the General Data Protection Regulation 2016/679 (the &amp;ldquo;&lt;strong&gt;GDPR&lt;/strong&gt;&amp;rdquo;), we are a &amp;lsquo;data controller&amp;rsquo; of your personal information.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; text-align: justify; line-height: normal; mso-outline-level: 2; background: white;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30;&quot;&gt;How you can access your personal information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol start=&quot;2&quot; type=&quot;1&quot;&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l6 level1 lfo19; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;You are also entitled to ask us to port your personal information (i.e. to transfer in a structured, commonly used and machine-readable format, to you), to erase it, or restrict its processing. You also have rights to object to some processing that is based on our legitimate interests, such as profiling that we perform for the purposes of direct marketing, and, where we have asked for your consent to process your data, to withdraw this consent as more fully described below.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l6 level1 lfo19; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;These rights are limited in some situations &amp;ndash; for example, we can demonstrate that we have a legal requirement to process your personal information. In some instances, this means that we may retain some data even if you withdraw your consent.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-list: l6 level1 lfo19; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;Where we require your personal information to comply with legal or contractual obligations, then provision of such data is mandatory: if such data is not provided, then we will not be able to manage our contractual relationship with you, or to meet obligations placed on us. In all other cases, provision of requested personal information is optional.&lt;/span&gt;&lt;/li&gt;\r\n&lt;li class=&quot;MsoNormal&quot; style=&quot;color: #2b2b30; mso-margin-top-alt: auto; margin-bottom: 6.0pt; text-align: justify; line-height: normal; mso-list: l6 level1 lfo19; tab-stops: list .5in; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial;&quot;&gt;If you have unresolved concerns you also have the right to complain to data protection authorities. The relevant data protection authority will be the data protection authority of the country: (i) of your habitual residence; (ii) of your place of work; or (iii) in which you consider the alleged infringement has occurred.&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; background: white; margin: 12.0pt 0in .25in 0in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30; letter-spacing: -.3pt;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: .5in; text-align: right; text-indent: -.5in; line-height: normal; mso-outline-level: 2; background: white;&quot; align=&quot;right&quot;&gt;&lt;em style=&quot;mso-bidi-font-style: normal;&quot;&gt;&lt;span style=&quot;mso-bidi-font-size: 18.0pt; font-family: \'Century\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Arial; color: #2b2b30; mso-bidi-font-weight: bold;&quot;&gt;Doptor Privacy Policy v1, effective date 17 February 2022&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;', 'privacy-policy', 0, '', '', 1, 1, 3, 1);
INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `page_allow_seo`, `page_seo_keyword`, `page_seo_desc`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(9, 'Faq', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'faq', 0, '', '', 1, 1, 1, 0),
(11, 'Refund Policy', '&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: center; line-height: normal; mso-outline-level: 1;&quot; align=&quot;center&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 27.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1; mso-font-kerning: 18.0pt;&quot;&gt;Doptor Market Refund Rules&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: center; line-height: normal; mso-outline-level: 2;&quot; align=&quot;center&quot;&gt;&lt;span style=&quot;font-size: 15.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: black; mso-themecolor: text1;&quot;&gt;Information for Customers&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Hi, we\'re Doptor and welcome to the Doptor Market Refund Rules. Because we are a platform, these rules outline what you can expect from the authors of the items you buy. They apply to all authors and customers.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;The products that authors sell on the platform are digital goods and cannot be &quot;returned&quot;, so your entitlement to a refund is designed with this in mind. Of course, in addition to these rules, each country has its own laws surrounding refunds, and these local laws are not excluded if they apply to you.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Before you ask for a refund from an author: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If you have purchased an item from our &amp;ldquo;Web Themes and Templates&amp;rdquo; or &amp;ldquo;Script&amp;rdquo; category on Doptor Market and you are experiencing a&amp;nbsp;&lt;strong&gt;&lt;em&gt;technical issue&lt;/em&gt;&lt;/strong&gt;&amp;nbsp;with the item we recommend that you contact the author of that item and seek assistance. Often they&amp;rsquo;ll be able to help to troubleshoot your problem.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Asking for refunds from authors via the Doptor platform: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;We understand, however, that sometimes the author may not be able to solve your issue or there may be circumstances in which a refund is warranted. In this case, here are the circumstances in which we would expect an author to provide you with a refund:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\'; text-decoration: none; text-underline: none;&quot;&gt;Item is &quot;not as described&quot; or the item doesn&amp;rsquo;t work the way it should.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\'; text-decoration: none; text-underline: none;&quot;&gt;Item has a security vulnerability&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\'; text-decoration: none; text-underline: none;&quot;&gt;Item support is promised but not provided&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\'; text-decoration: none; text-underline: none;&quot;&gt;Item support extension not used&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\'; text-decoration: none; text-underline: none;&quot;&gt;Items that have not been downloaded&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\';&quot;&gt;&lt;span style=&quot;color: #595959; mso-themecolor: text1; mso-themetint: 166; mso-style-textfill-fill-color: #595959; mso-style-textfill-fill-themecolor: text1; mso-style-textfill-fill-alpha: 100.0%; mso-style-textfill-fill-colortransforms: \'lumm=65000 lumo=35000\'; text-decoration: none; text-underline: none;&quot;&gt;Resolving disputes - asking Doptor to help&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Item is &quot;not as described&quot; or the item doesn&amp;rsquo;t work the way it should: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If an item doesn&amp;rsquo;t work the way it should then the author is required to promptly fix the issue by updating the item. An item is &quot;not as described&quot; if it is materially different from the item description or preview. If the issue can&amp;rsquo;t be fixed or it turns out that the item is &amp;ldquo;not as described&amp;rdquo; then you would be entitled to a refund from the author.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Item has a security vulnerability: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If an item contains a security vulnerability and can\'t easily be fixed you would be entitled to a refund from the author. If the item can be fixed, then the author should do so promptly by updating the item. If the item contains a security vulnerability that is not patched in an appropriate timeframe then we would expect the author to provide a refund for the item.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Item support is promised but not provided: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If an author advertises their item as including item support, you have a current support entitlement, and you are not provided that support in accordance with the item support policy the author should provide you with a refund.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Item support extension not used: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If you purchase an item support extension and request a refund of that extension before your existing item support expires we would expect the author to provide you with a refund of that item support extension.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Items that have not been downloaded: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If you have not downloaded a purchased item within 3 months from the date of purchase, you may be eligible for a refund. You will be required to provide the author of that item your purchase code in order for the author to verify your claim that you have not downloaded an item. Although we think 3 months is a reasonable time, depending on where you are located, you might have a longer period to claim a refund if you have purchased for personal use and haven\'t downloaded the item.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Resolving disputes - asking Doptor to help: &lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If you and an author can\'t come to an agreement about a refund, you can raise a dispute and have Doptor investigate the matter. We may ask you to provide supporting documentation or evidence. Any refund issued by Doptor is entirely discretionary. We will make a decision based on all available information and you agree that our decision is final.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Neither Doptor nor authors are obliged to give policy refunds in any of the situations listed below.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You don\'t want it after you\'ve downloaded it&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;The item did not meet your expectations or you feel the item is of low quality&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You simply change your mind&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You bought an item by mistake&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You do not have sufficient expertise to use the item&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You claim that you are entitled to a refund but do not provide sufficient information as to why you are entitled to a refund&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;&amp;middot;&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You can no longer access the item because it has been removed or the author who previously provided the item is no longer active on our platform (we advise you to download items as soon as you have purchased them to avoid this situation).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: right; line-height: normal;&quot; align=&quot;right&quot;&gt;&lt;em style=&quot;mso-bidi-font-style: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Version 1 - Effective date: February 2022&lt;/span&gt;&lt;/em&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;', 'refund-policy', 0, '', '', 1, 1, 0, 1);
INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `page_allow_seo`, `page_seo_keyword`, `page_seo_desc`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(12, 'Terms of Use', '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Welcome to Doptor Market&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;1. Hi, we&amp;rsquo;re&amp;nbsp;&lt;/span&gt;&lt;u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #0084b4;&quot;&gt;&lt;a href=&quot;../../&quot;&gt;Doptor&amp;nbsp;&lt;/a&gt;&lt;/span&gt;&lt;/u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;and welcome! We&amp;rsquo;re happy to have you here and we hope you enjoy your stay. When we say &amp;lsquo;&lt;strong&gt;we&lt;/strong&gt;&amp;rsquo;, &amp;lsquo;&lt;strong&gt;us&lt;/strong&gt;&amp;rsquo; or &amp;lsquo;&lt;strong&gt;Doptor&lt;/strong&gt;&amp;rsquo; it&amp;rsquo;s because that&amp;rsquo;s who we are and we own and run the&amp;nbsp;&lt;strong&gt;Doptor Market&lt;/strong&gt;&amp;nbsp;sites.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;2. Doptor&amp;rsquo;s ecosystem of digital marketplaces helps millions of people around the world get creative and earn online. When you create an account and accept these terms you become a&amp;nbsp;&lt;strong&gt;member&lt;/strong&gt;&amp;nbsp;of our community. You will have an&amp;nbsp;&lt;strong&gt;Doptor Market account&lt;/strong&gt;&amp;nbsp;that will allow you to buy and sell&amp;nbsp;&lt;strong&gt;items&lt;/strong&gt;&amp;nbsp;like the ones found on the Doptor Market sites and make other related transactions.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;3. The Doptor Market sites are platforms that allow members to buy and sell licenses to use digital items like website themes, production music, motion graphics project files, software code, vectors, images and much, much more. On Doptor Market, buyers and authors (sellers) transact with each other directly and we provide the platform to allow the transactions to happen. If you have an Doptor Market account, any transactions are logged on your member&amp;rsquo;s statement, which records the payments made by you to authors via Doptor Market (as a&amp;nbsp;&lt;strong&gt;buyer&lt;/strong&gt;) and by buyers via Doptor Market to you (as an&amp;nbsp;&lt;strong&gt;author&lt;/strong&gt;).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;4. The items on Doptor Market are owned by the authors, not by us. The items on Doptor Market are uploaded at the direction of the author. We provide the platform services; we do not take ownership of the items.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;5. During your time with us you agree to follow the ground rules outlined in these terms so please read and understand them. If you don&amp;rsquo;t accept the terms then we&amp;rsquo;ll be sad, but you will need to leave because your presence on and use of the Doptor Market sites is conditional on your acceptance to be bound by these terms you become a member or not.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Doptor Websites&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;6. You can also access Doptor Websites via the Doptor Market sites. The products offered on Doptor Websites (which include hosted theme and hosted starter site subscriptions) are offered by Doptor Hosted and Doptor Sites and are subject to separate terms and conditions, which you can access here:&amp;nbsp;&lt;/span&gt;&lt;u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #0084b4;&quot;&gt;Doptor Hosted Terms&lt;/span&gt;&lt;/u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;&amp;nbsp;and&amp;nbsp;&lt;/span&gt;&lt;u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #0084b4;&quot;&gt;Doptor Sites Terms&lt;/span&gt;&lt;/u&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;. To avoid any doubt, the Doptor Market terms do not apply to the products offered via Doptor Websites.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;7.&amp;nbsp;&lt;strong&gt;Preview Files&lt;/strong&gt;: If you stream or download a preview file from our Doptor Market sites, you agree that you will not remove any watermarking or other protective measures from the preview file. You agree that you will use the preview file solely for the purposes of evaluating a purchase from Doptor Market sites and not for any other purpose.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;How browsing and membership works&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;8.&amp;nbsp;&lt;strong&gt;Browsing&lt;/strong&gt;: You need to be 16 years or over to browse the Doptor Market sites. We don&amp;rsquo;t knowingly collect any information from anyone aged 16 or under. When browsing the sites you agree to follow our guidelines or instructions and keep in mind that these terms apply to any use of our Doptor Market sites whether or not you&amp;rsquo;re a member.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 3;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Membership&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;9.&amp;nbsp;&lt;strong&gt;Age&lt;/strong&gt;: You need to be 18 years or over to become a member or to buy items. If you&amp;rsquo;re under 18 you will need to get a parent or guardian to buy items or use the account of a parent or legal guardian who is at least 18 years of age, with their permission, and this adult will be responsible for all your activities.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;10.&amp;nbsp;&lt;strong&gt;Doptor Account&lt;/strong&gt;: Membership is free. When you become a member you get an Doptor Market account that is accessible from any of our Doptor Market sites (and is also your Doptor account for other Doptor services). Your membership will allow you to &amp;lsquo;buy&amp;rsquo; (license) items from authors, participate in our online forums, and generally contribute to our ecosystem of Doptor Market sites that help people get creative. Membership also gives you the opportunity to become an author.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;11.&amp;nbsp;&lt;strong&gt;Your responsibility&lt;/strong&gt;: You promise that information you give us is true, accurate and complete and, if you sign up for an Doptor Market account, that you will keep your account information up-to-date (including a current email address). Your membership is not transferable, that means you cannot sell your account. You are responsible for any use of the Doptor Market sites including any activity that occurs in conjunction with your username and password, if you have an Doptor Market account, so keep your password secure and don&amp;rsquo;t let any other person use your username or password. If you realise there&amp;rsquo;s any unauthorized use of your password or any breach of security you need to let us know immediately. You must not use a virtual private network or VPN or any other means to avoid compliance with these terms and conditions, or for any fraudulent or illegal reasons.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;It is important that you understand your responsibilities as a member of our community so please take the time to review this section and the Doptor Market Terms carefully.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;12.&amp;nbsp;&lt;strong&gt;Referrals&lt;/strong&gt;: As a part of our Affiliate Program, if you refer a new member to any of our Doptor Market sites you may be eligible to receive affiliate income. You can find out more about the Affiliate Program and the terms applying to referrals.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; mso-bidi-font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;How buying items works&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;This section will help you understand what you are buying when you purchase an item and how that transaction takes place on Doptor Market&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;13.&amp;nbsp;&lt;strong&gt;What you\'re buying:&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l6 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;License&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;: When you&amp;nbsp;&lt;strong&gt;buy&lt;/strong&gt;&amp;nbsp;an item, you acquire the right to use that item; you\'re not actually acquiring the item itself. What you get includes a license directly from the author to use that item. Items are subject to specific terms of use, and these terms are the &amp;lsquo;license&amp;rsquo; that we set on Doptor Market. This license also applies to you if you download an item that someone else has bought for you (because anyone downloading an item needs to be an Doptor Market member). Different license types are available for you to choose when you have selected an item. You&amp;rsquo;ll need to think about the way you want to use the item so that you can pick the right license to allow that use. It&amp;rsquo;s your responsibility to choose the correct license.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l6 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Item support&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;: Authors can choose whether or not to support certain items. If an author chooses to support an item, this will be identified on the item page. &amp;nbsp;All supported items include a support period. You can buy support extensions on these items. Your right to access Item Support requires an Doptor Market account.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;To learn more about item support, like what items are covered, what authors provide, the support period and support extension options, see the&amp;nbsp;&lt;a href=&quot;https://themeforest.net/page/item_support_policy&quot;&gt;&lt;span style=&quot;color: #666666; text-decoration: none; text-underline: none;&quot;&gt;item support policy&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l6 level1 lfo1; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Buyer Services&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;: In addition to the use of the platform, when you &amp;lsquo;buy&amp;rsquo; an item you also receive buyer services from Doptor like 24/7 buyer support, fraud protection, item quality control and other related buyer services.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;You can read more about the awesome buyer services buyers get from us over at&amp;nbsp;&lt;a href=&quot;https://themeforest.net/buy&quot;&gt;&lt;span style=&quot;color: #666666; text-decoration: none; text-underline: none;&quot;&gt;Why Buy From Us&lt;/span&gt;&lt;/a&gt;&amp;nbsp;information page.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;14. The total price for an item on Doptor Market is made up of:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Item price&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;: The item price is made up of a license fee (for the license you choose for the item), and if relevant the item support fee (for supported items).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Buyer fee&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;: This is the fee for the buyer services you get from Doptor.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Handling fee&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;: In some transactions on Doptor Market the total checkout price may include a handling fee.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l5 level1 lfo2; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Taxes&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;: Some transactions on Doptor Market may be subject to tax that may be added to the price.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;The&amp;nbsp;list price&amp;nbsp;is made up of the item price and buyer fee, and is the price you see on an item page&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; line-height: normal; mso-outline-level: 3;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Transacting as a buyer:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;15. If you have an Doptor Market account, you can make payments by using the &amp;lsquo;Buy Now&amp;rsquo; function or by using any existing Doptor Credits in your Doptor Market account.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;16.&amp;nbsp;&lt;strong&gt;Doptor Credits&lt;/strong&gt;: Existing Doptor Credits can only be used to pay for Doptor Market transactions. We do not refund any monies originally placed into your Doptor Market account to buy Doptor Credits (but you may have rights under an applicable consumer law, which we don&amp;rsquo;t exclude).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;17. If you choose to buy using any existing Doptor Credits, the total price will be deducted from your Doptor Credits. If you haven&amp;rsquo;t used your Doptor Credits within 12 months they may expire from the date of purchase. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;18. When using&amp;nbsp;&lt;strong&gt;Buy Now&lt;/strong&gt;&amp;nbsp;you will be redirected to a&amp;nbsp;&lt;strong&gt;payment method&lt;/strong&gt;&amp;nbsp;provider.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;19.&amp;nbsp;&lt;strong&gt;Currency conversion costs&lt;/strong&gt;: You are responsible for all costs of currency conversion relating to a transaction on Doptor Market. Your financial institution does the currency conversion and may charge you additional fees (we don&amp;rsquo;t control either the conversion rates or your financial institution&amp;rsquo;s fees).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;This means that you may incur additional costs when purchasing from Doptor Market, which we have no control over&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;20.&amp;nbsp;&lt;strong&gt;Terms of buying&lt;/strong&gt;: When you buy an Doptor Market item you&amp;rsquo;re doing so on the following terms:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;you warrant to us and the author that you have carefully considered the suitability of your chosen license, and that you have chosen appropriately;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;you cannot cancel a completed purchase of an item;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;we and the authors do not promise that any particular item will continue to be available on Doptor Market so you should download and save the item as soon as you buy it;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;once you buy or download an item and the item has been paid for, you acquire a non-exclusive license to use the item under the terms set out in the license (non-exclusive means others might also license the same item);&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;e.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the author retains ownership of the item;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;f.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;your relevant details may be provided to the author of the item in order to facilitate the transaction, for example for invoicing and item support services; and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo3; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;g.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;we have the right to enforce against you the terms of the license that you have acquired from an author.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;It is important that you understand the terms on which you are making a purchase. Please take the time to review this section carefully. See our Help Center&amp;nbsp;&lt;a href=&quot;https://help.market.envato.com/hc/en-us/articles/207316243&quot;&gt;&lt;span style=&quot;color: #666666; text-decoration: none; text-underline: none;&quot;&gt;article&lt;/span&gt;&lt;/a&gt;&amp;nbsp;for information about account limits&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;21.&amp;nbsp;&lt;strong&gt;Warranties we make&lt;/strong&gt;:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l3 level1 lfo4; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;We warrant that the Doptor Market sites will be suitable for the purposes described on the sites, and that we will provide our platform services with reasonable skill and care.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l3 level1 lfo4; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;We otherwise do not make any express or implied warranties about the Doptor Market sites (or any items on the Doptor Market sites).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;22.&amp;nbsp;&lt;strong&gt;Warranties authors make&lt;/strong&gt;: The author of an item you buy warrants to you that:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the item is of acceptable quality and fit for the purpose for which it is \'sold\';&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the item matches the description given by the author on the item preview page, as well as any item preview;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;they will honour any express warranties given to you that are not contained in these terms;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;they have the rights necessary to license that item on the terms of applicable license;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;e.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;your use of that item in accordance with the terms of the applicable license does not infringe the intellectual property rights of someone else;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;f.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the item and its description are not false, inaccurate, misleading, fraudulent, unlawful or defamatory;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;g.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the item and its description do not violate any applicable law or regulation (including those governing export control, consumer protection, unfair competition, criminal law, pornography, anti-discrimination, trade practices or fair trading);&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;h.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the item does not contain viruses or other computer codes, files or programs which are designed to limit or destroy the functionality of other computer software or hardware;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;i.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;if the item is marked as \'supported\', they will provide you with the services as outlined in the&amp;nbsp;item support policy;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l2 level1 lfo5; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;j.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;they will process your data in accordance with applicable privacy law and data protection regulations.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; text-align: justify; text-indent: 24.0pt; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;This is what authors are promising you when you buy an item&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;23.&amp;nbsp;&lt;strong&gt;Taxes&lt;/strong&gt;:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Sales Tax.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;&amp;nbsp;Prices and fees made for supplies made to you (whether by Doptor or authors) in connection with these terms exclude consumption and sales taxes (Sales Tax). If a supply is made to you under or in connection with these terms on which Sales Tax is imposed, the fee you must pay for that supply is increased by the Sales Tax amount.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l4 level1 lfo6; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Other taxes.&lt;/span&gt;&lt;/strong&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;&amp;nbsp;You are responsible for paying all such taxes and imposts associated with your use of Doptor Market wherever levied. Your responsibility includes withholding tax if it applies, unless we already process that withholding tax. If a withholding is required by applicable law, you will remit the legally required amount to the applicable taxing authority; you must pay to Doptor (or authors) the gross amount on the invoice(s) such that the amount received by Doptor (or authors) after the withholding tax is applied is the full amount Doptor (or authors) would have received if no withholding or deduction had been made (and it is your responsibility to arrange the remittance of the gross invoice amount in accordance with Doptor&amp;rsquo;s standard processes).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;24.&amp;nbsp;&lt;strong&gt;Doptor Credits expire&lt;/strong&gt;: Doptor Credits expire if not used within 12 months from the date of purchase, and will be forfeited on the 12 month anniversary of the purchase date. We generally try to tell you beforehand when Doptor Credits are going to expire and be forfeited, but this is not always possible and don&amp;rsquo;t promise to warn you. Check your member&amp;rsquo;s statement regularly for details of expiry dates. If you have different rights under an applicable consumer law, we don&amp;rsquo;t exclude them.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; background: whitesmoke;&quot;&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #787878;&quot;&gt;If you haven&amp;rsquo;t used your Doptor Credits within 12 months they may expire.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;25.&amp;nbsp;&lt;strong&gt;Items with an incorrect price or incorrect information&lt;/strong&gt;: Despite our reasonable efforts, items may occasionally be listed at an incorrect price or with incorrect information. If this happens, we may cancel or reverse a transaction, even after it is completed and a payment has been processed. If we do this, we&amp;rsquo;ll promptly arrange for any payment to be credited or refunded and you must not use the item unless you re-purchase it at the correct price.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 3;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 15.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Refunds&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;26. Given the nature of digital content, a refund or credit on a purchase is not granted unless one of the warranties given by the author has been breached, or a refund is required under the&amp;nbsp;&lt;a href=&quot;https://www.doptorr.com/refund-policy&quot;&gt;&lt;span style=&quot;color: #0084b4;&quot;&gt;Doptor Market Refund Rules&lt;/span&gt;&lt;/a&gt;&amp;nbsp;or Bangladesh consumer law or other relevant consumer protection laws. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;27. We will assess refund or credit requests (if you have an Doptor Market account) on their merits, considering the digital nature of Doptor Market items and the type of item preview that was available before purchase. There is generally no obligation to provide a refund or credit in situations like the following:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo7; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;you have changed your mind about an item;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo7; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;you bought an item by mistake;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo7; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;you do not have sufficient expertise to use the item;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo7; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;you ask for goodwill; or&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo7; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;e.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;you can no longer access the item because it has been removed (we advise you to download items as soon as you buy them to avoid this situation).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;28. If the author or we decide to issue a refund or credit (if you have an Doptor Market account), this will generally be done using the same manner used to make the purchase. So if the item was purchased using Doptor Credits, you will be given credit in Doptor Credits; if the item was purchased using a particular payment method you will be refunded using the same payment method in reverse. Any payment made to you (not Doptor Credits) will be made in US Dollars, under the rules of the payment method.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;It is important that you understand how refunds work on Doptor Market.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;29.&amp;nbsp;&lt;strong&gt;Disputes lodged with payment agents&lt;/strong&gt;: If, as a buyer via your Doptor Market account, you lodge a dispute with a payment agent, this will result in a freezing of your Doptor Market account until the dispute raised with the payment agent has been cancelled. This makes it very complex to resolve any related issues, and means we cannot make payments or issue refunds out of your Doptor Market account, so we encourage buyers to contact us directly first to see if we can help resolve any concerns.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;30.&amp;nbsp;&lt;strong&gt;Fine print&lt;/strong&gt;: We are not a bank or licensed deposit taker in Bangladesh or elsewhere, your credits are not deposits under Bangladesh law about banks, and that means you don&amp;rsquo;t get the benefit of any deposit insurance or guarantee under those laws. We don&amp;rsquo;t act as a fiduciary or as a trustee for you, and we&amp;rsquo;re not a licensed financial service provider.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Becoming an author&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;31. If you want to get involved in our community as an author, you can sign up. Remember that if you become an author these terms will continue to apply, along with the Author Terms you&amp;rsquo;ll sign up to as an author.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Intellectual Property&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;32.&amp;nbsp;&lt;strong&gt;What we own&lt;/strong&gt;: We own all the&amp;nbsp;&lt;strong&gt;Doptor content&lt;/strong&gt;&amp;nbsp;that we have put on Doptor Market (unless otherwise stated and excluding content owned by others). This includes the design, compilation, and look and feel of the Doptor Market sites, and copyright, trademarks, designs and other intellectual property on Doptor Market. We own all the trademarks, logos, service marks and trade names on Doptor Market (unless otherwise stated and excluding these things owned by others). You will not copy, distribute, modify or make derivative works of any of our Doptor Content or use any of our intellectual property in any way not expressly stated in these terms.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;33.&amp;nbsp;&lt;strong&gt;What we don&amp;rsquo;t own&lt;/strong&gt;: We do not own the items on Doptor Market; our authors do. Items are uploaded at the direction of the author. So we cannot take responsibility for the quality, safety or legality of the items. We do not warrant that the items or any member content, code, data or materials available on or via the Doptor Market do not infringe the intellectual property rights of a third party. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;34.&amp;nbsp;&lt;strong&gt;Copyright, trademark and intellectual property claims&lt;/strong&gt;: We respect the intellectual property rights of others and we require that authors do the same. If you believe that an item or member content infringes an intellectual property right &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;35.&amp;nbsp;&lt;strong&gt;Model and property releases&lt;/strong&gt;: Items are available for commercial use (unless stated otherwise by the Author on an item page). Authors are responsible for obtaining and keeping a model or property release if one is needed; please ask the author directly if you need a copy of a release.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Our use of your information&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;36.&amp;nbsp;&lt;strong&gt;Privacy&lt;/strong&gt;: We respect your privacy and process your personal information in accordance with our&amp;nbsp;&lt;a href=&quot;https://www.doptorr.com/privacy-policy&quot;&gt;&lt;span style=&quot;color: #0084b4;&quot;&gt;Privacy Policy&lt;/span&gt;&lt;/a&gt;.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;37.&amp;nbsp;&lt;strong&gt;Confidential Information&lt;/strong&gt;: We value your information and take reasonable precautions to protect it. While using the Doptor Market, you may also become aware of confidential information about us or another member. You promise to not disclose any confidential information made available to you through the Doptor Market to any other person.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Playing fair&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;38.&amp;nbsp;&lt;strong&gt;Prohibited Conduct&lt;/strong&gt;: We strongly recommend that you don&amp;rsquo;t make your contact details public on the Doptor Market or in any public communications via the Doptor Market sites. Contact details include your email address, street address, Skype name and phone number (but not social network handles). If you do, it must not be for any reason prohibited under the&amp;nbsp;Acceptable Use Policy&amp;nbsp;and you do so at your risk!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;39.&amp;nbsp;&lt;strong&gt;Content removal&lt;/strong&gt;: We can look at or remove any of your content for any reason at our discretion. Reasons might include quality assurance, if we receive a valid copyright take-down notice or General IPR Notice, if we think that the content is unauthorised, misleading, incorrect, offensive, or in breach of anyone else&amp;rsquo;s rights, or if we think that your use of the Doptor Market and any content might result in liability to us or anyone else. &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;40.&amp;nbsp;&lt;strong&gt;Community participation&lt;/strong&gt;: We take great pride in our global and thriving community&amp;mdash;it&amp;rsquo;s part of what makes the Doptor Market great. We focus on transparency and mutual respect and invite you to participate, give feedback and have your say. Before participating on Doptor Market, please agree to follow them as part of these terms.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Linking; apps made by others&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;41.&amp;nbsp;&lt;strong&gt;Linking to the Doptor Market&lt;/strong&gt;: We&amp;rsquo;d be delighted if you decide to link to Doptor Market from other sites but you have to link to a full version of a page and not link directly to an image or file hosted on Doptor Market. That includes no &quot;in-line&quot; linking methods resulting in images hosted on Doptor Market being displayed on other sites. You must not &quot;frame&quot; any Doptor Market pages by surrounding those pages with someone else&amp;rsquo;s content, materials or branding. We reserve the right to insist that any link to the Doptor Market be discontinued, and to revoke your ability to link to the Doptor Market.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;42.&amp;nbsp;&lt;strong&gt;Links from the Doptor Market&lt;/strong&gt;: The Doptor Market sites may contain links to other non-Doptor sites. We have no control or responsibility over anything on those sites, and do not endorse or sponsor those sites, even if they are affiliated to us.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;43.&amp;nbsp;&lt;strong&gt;Third party developers&lt;/strong&gt;: We welcome the contribution of our members and broader community, who offer applications that work with Doptor Market. You will need to form your own view about these applications and their developers; we&amp;rsquo;re not able to warrant or endorse those applications and disclaim liability relating to these applications.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Legal Housekeeping&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;44.&amp;nbsp;&lt;strong&gt;Eligibility, suspension or termination&lt;/strong&gt;: Membership is not an automatic right, it is a benefit for community members who follow our terms and policies and treat other community members well. We hope that you will be with us for a long time. But we may, using reasonable discretion, decide whether or not your use of Doptor Market complies with these terms and our policies. We can suspend or terminate your Doptor Market account at any time for any reason (acting reasonably of course), including if you:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l7 level1 lfo8; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;a.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;breach these terms or any terms applicable to any of your other Doptor accounts;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l7 level1 lfo8; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;b.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;breach any of our policies (or policies of any other Doptor Company);&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l7 level1 lfo8; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;c.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;act in a way that does not align with the values of our community; or&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;mso-margin-top-alt: auto; margin-bottom: 12.0pt; margin-left: 24.0pt; text-align: justify; text-indent: -.25in; line-height: normal; mso-list: l7 level1 lfo8; tab-stops: list .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: Helvetica; mso-bidi-font-family: Helvetica; color: #666666;&quot;&gt;&lt;span style=&quot;mso-list: Ignore;&quot;&gt;d.&lt;span style=&quot;font: 7.0pt \'Times New Roman\';&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;act in a way that could cause us or members harm.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;If we do decide to permanently terminate your Doptor Market account you must not apply for a new account as unfortunately you will no longer be welcome in our community. This decision may also apply to all of your Doptor accounts you use on other Doptor sites.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;45.&amp;nbsp;&lt;strong&gt;Doptor Companies&lt;/strong&gt;: If an indemnity, limitation or disclaimer of liability, warranty or release (a \'&lt;strong&gt;benefit&lt;/strong&gt;\') is given in our favour in these terms, the Author Terms or Affiliate Terms, we hold that benefit on trust for the other Doptor Companies. We may enforce that benefit as trustee for and on behalf of the other Doptor Companies as beneficiaries under that trust.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;46. We may use the services of another Doptor Company to conduct payment or other activities with you, like collecting payments and paying author earnings. If you make a Buy Now payment, we receive your payment as a limited agent for the author and your obligation to pay the author is met when we (or another Doptor Company) receive the payment successfully.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Liability and indemnity - between us and you&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;47. We provide the Doptor Market sites and the platform services, not the items on the Doptor Market sites.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;48. You indemnify us against all losses, costs (including legal costs on a full indemnity basis), expenses, demands or liability that we incur arising out of, or in connection with, a third party claim against us relating to your use of Doptor Market and any content you post to Doptor Market (including, if you are an author, your items).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;49. If you are a buyer, you agree that we are not responsible for, and you release us from liability arising out of or in connection with&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;a. the items on Doptor Market;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;b. information provided by authors about their items (including on any item page); and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;c. your use of items from Doptor Market.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;50. Our liability to you in connection with Doptor Market or these terms, in contract, tort (including negligence) or otherwise, is limited as follows:&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;a. we exclude liability for any of these things incurred by you: loss of revenue, loss of profit, loss of goodwill, loss of customers, loss of capital, damage to reputation, loss in connection with any other contract, loss of data, or indirect, consequential or special loss, damage or expense; and;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;b. our total liability to you is limited to the greater of USD100 and the total buyer fees paid by you in the 12 months before liability accrued.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;We may, at our expense, assume the exclusive defense and control of any matter you indemnify us against, and if so you agree to cooperate with us.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Liability and indemnity - between authors and buyers&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;51. Each author grants to each buyer of the author&amp;rsquo;s items a limited indemnity on the following terms&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;a. if another person makes a claim against a buyer that the buyer\'s use of the item in accordance with the terms of the applicable license infringes the intellectual property or other rights of that third party; and&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;if that buyer promptly notifies the author of the claim and gives the author the option to control the defense of the claim (at the author\'s cost), then the author will indemnify the buyer against damages finally awarded by a court against the buyer or any settlement damages agreed to by the author regarding that claim.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;The liability of each author to their buyers is otherwise limited, for each item purchased, to the author\'s earnings from the payment for that item, except to the extent that the author\'s liability arises from wilful misrepresentations made about the item.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;53.&amp;nbsp;&lt;strong&gt;Availability&lt;/strong&gt;: We strive to have Doptor Market available to you 24 hours a day, seven days a week but you know how the internet works: occasionally you might not be able to access Doptor Market, and this might happen for any reason, at any time, with or without notice, or at our absolute discretion. We might also change aspects of how Doptor Market works. The Doptor Companies will not be liable to you for any loss you suffer as a result of these things.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;54.&amp;nbsp;&lt;strong&gt;Third Party&lt;/strong&gt;: If you\'re agreeing to these terms on behalf of someone else (like your employer), then you\'re promising to us that you have full legal authority to bind that third party.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;55.&amp;nbsp;&lt;strong&gt;Consumer laws&lt;/strong&gt;: In some places there may be non-excludable warranties, guarantees or other rights (\'&lt;strong&gt;non-excludable consumer guarantees&lt;/strong&gt;\'). We do not exclude, restrict or modify non-excludable consumer guarantees in these terms. Except for non-excludable consumer guarantees, we and authors are bound only by the express warranties made in these terms. Our and each author\'s liability for breach of a non-excludable consumer guarantee is limited, at our or the author\'s option, to replacing or paying the cost of replacing the relevant item or service, (unless the non-excludable consumer guarantee says otherwise).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;56.&amp;nbsp;&lt;strong&gt;Blocking a member, disabling an account or refusing to process a payment.&lt;/strong&gt;&amp;nbsp;We may block you, terminate any of your Doptor accounts or refuse to process a payment, including withholding your account balance indefinitely, if we reasonably believe there is a risk associated with you, your Doptor account, or that payment, including if it breaches a law or regulation. Examples of where we might do this include transactions where we suspect the payment is from or to a person or country sanctioned by an authority (like the United Nations, the United States government or the Australian government); or where we reasonably believe there is a legal or regulatory risk or a risk of loss being suffered by us or our members. You warrant that you are not located in a sanctioned country and are not on a sanctioned persons list. You also warrant that you will not purchase items on Doptor Market using funds sourced from a sanctioned country. We may also block members from a country if we can&amp;rsquo;t make payments to or from that country. You should check what payment methods are available in your country for making payments as a buyer or for withdrawing earnings as an author. We may take any of the actions stated in this section without notice and against all of your Doptor accounts you use on other Doptor sites. If required by law we may forfeit existing deposits or earnings.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;57.&amp;nbsp;&lt;strong&gt;US-specific controls.&lt;/strong&gt;&amp;nbsp;Doptor Market is not available to anyone located in any U.S. sanctioned countries or to anyone on the U.S Treasury Department\'s list of Specially Designated Nationals List (SDN list). You must not export or re-export Doptor Market items to a U.S. sanctioned country or to anyone on the SDN list.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;58.&amp;nbsp;&lt;strong&gt;Relationship between the parties:&lt;/strong&gt;&amp;nbsp;Nothing in these terms is to be construed as constituting a partnership, joint venture, employment or agency relationship between you and us, or between you and any other member. Neither you nor us can bind each other in any way. We are, however, an agent of the authors only for the limited purposes of collecting Buy Now payments. the authors\' providing warranties to buyers to limit authors\' liability to buyers, and the disclaimer of authors\' liability to buyers.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;59.&amp;nbsp;&lt;strong&gt;Notices:&lt;/strong&gt;&amp;nbsp;Any notice you send us must be submitted via a&amp;nbsp;help request. Any notice we send to you will be emailed to your Doptor Market account email address.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;60.&amp;nbsp;&lt;strong&gt;Changes to Doptor Market Terms:&lt;/strong&gt;&amp;nbsp;We may change these terms at any time and, if we make changes, we will take reasonable steps to let our community know about the changes. You can also keep track of whether changes have been made to our terms by referring to the version and effective date at the footer of the terms. You can close your Market Account and terminate your agreement with us at any time if you do not agree to the changes. However, if you continue to use Doptor Market sites after the changes are made, then you will be agreeing to the changes.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;61.&amp;nbsp;&lt;strong&gt;Interpretation:&lt;/strong&gt;&amp;nbsp;Words like \'include\' and \'including\' are not words of limitation and where anything is within our discretion we mean our sole discretion.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;62.&amp;nbsp;&lt;strong&gt;Applicable Laws:&lt;/strong&gt;&amp;nbsp;We control and operate Doptor Market from our offices in Australia. The laws of Victoria, Australia govern these terms, and you submit to the jurisdiction of the courts there for the resolution of any dispute between us.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal; mso-outline-level: 2;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 18.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Definitions&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Author:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;a member who makes items available for sale on Doptor Market.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Buy:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;includes downloading an item that is made available for free on Doptor Market or that is purchased for you by another member.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Buy Now:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;a way of purchasing an item using a payment provider (and not using existing Doptor Credits)&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Buyer:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;a person who &amp;lsquo;buys&amp;rsquo; items on Doptor Market.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Buyer fee:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the fee for the services buyers get from Doptor like 24/7 support, fraud protection, item quality control and other related buyers&amp;rsquo; services.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Doptor:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Doptor Ltd.&lt;br style=&quot;mso-special-character: line-break;&quot; /&gt;&lt;br style=&quot;mso-special-character: line-break;&quot; /&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Doptor Companies:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Doptor and any company that controls, is controlled by or is under common control with Doptor.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Doptor content:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;is all the content that we have put on Doptor Market and includes the design, compilation, and look and feel of the Doptor Market, and copyright, trademarks, designs and other intellectual property on the Doptor Market (unless otherwise stated and excluding content owned by others like author content).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Doptor Market:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;When we refer to the &amp;lsquo;Doptor Market&amp;rsquo; we&amp;rsquo;re talking about the Doptor digital marketplaces, which include these sites: &lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Doptor Market Product : &lt;a href=&quot;https://www.doptorr.com/&quot;&gt;https://www.doptorr.com&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Doptor Market account:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;what you receive when you become a Member which gives you access to any of the Doptor Market sites.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;EU Member State:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the countries listed here:&amp;nbsp;&lt;a href=&quot;https://europa.eu/about-eu/countries/index_en.htm&quot;&gt;&lt;span style=&quot;color: #0084b4;&quot;&gt;https://europa.eu/about-eu/countries/index_en.htm&lt;/span&gt;&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Handling fee:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the fee buyers may pay when using a payment method (other than existing Doptor credits).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Item price:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the price buyers pay for the license to use an item,.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Item support:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the support an author agrees to provide Doptor Market account holders for an item marked as &amp;lsquo;supported&amp;rsquo; as detailed on the&amp;nbsp;item support page.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Items:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;digital goods found on Doptor Market like WordPress themes, background music, After Effects project files, photography and much, much more.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;List price:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the price you see on an item page on Doptor Market, which is made up of the item price and buyer fee.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Member:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;a person who signs up by creating an account and accepting these terms.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Member&amp;rsquo;s statement:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the record of payments by you to Doptor (as a buyer) and by Doptor to you (as an author).&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Payment method:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;any payment agent or method we make available on the Doptor Market.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Total price:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;the price the buyer will pay in total, which consists of the item price, Doptor\'s buyer fee and handling fee (if applicable) and any taxes that may be added.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: justify; line-height: normal;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;&quot;&gt;Your content:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify; line-height: normal; margin: 0in 0in 12.0pt .5in;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;everything that you post on the Doptor Market, or send via the Doptor Market to other members and to us including items, files, communications and materials.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 12.0pt; text-align: right; line-height: normal;&quot; align=&quot;right&quot;&gt;&lt;em style=&quot;mso-bidi-font-style: normal;&quot;&gt;&lt;span style=&quot;font-size: 12.0pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #666666;&quot;&gt;Version 1 - Effective date: 17 February 2022.&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;\r\n&lt;p class=&quot;MsoNormal&quot;&gt;&amp;nbsp;&lt;/p&gt;', 'terms-of-use', 0, '', '', 1, 1, 4, 1);
INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `page_allow_seo`, `page_seo_keyword`, `page_seo_desc`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(13, 'Help', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'help', 0, '', '', 1, 0, 1, 0),
(14, 'What does support include?', '&lt;p&gt;&lt;strong&gt;Regular License&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Extended License&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', 'what-does-support-include-', 0, '', '', 0, 0, 0, 0),
(15, 'Support', '&lt;p&gt;Please write to us&lt;br /&gt;support@doptorr.com&lt;/p&gt;', 'support', 0, '', '', 0, 1, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vendor@gmail.com', '$2y$10$DudwNnzFgSRTp4JUAezRYOlyI97mHDUNrtGj9Lci3yCXTLASy3EbG', '2019-06-24 05:24:16'),
('admin@admin.com', '$2y$10$S2yqTfG9UXHCWZbIWp/fmOSAB4/abqAbhPXedsr58jDNIftOsrxlK', '2019-06-24 05:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int NOT NULL,
  `post_title` varchar(1000) NOT NULL,
  `post_slug` varchar(200) NOT NULL,
  `blog_cat_id` int NOT NULL,
  `post_short_desc` text NOT NULL,
  `post_image` varchar(200) NOT NULL,
  `post_desc` longtext NOT NULL,
  `post_date` date NOT NULL,
  `post_view` int NOT NULL DEFAULT '0',
  `post_tags` text,
  `post_allow_seo` int NOT NULL,
  `post_seo_keyword` text,
  `post_seo_desc` text,
  `post_status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_slug`, `blog_cat_id`, `post_short_desc`, `post_image`, `post_desc`, `post_date`, `post_view`, `post_tags`, `post_allow_seo`, `post_seo_keyword`, `post_seo_desc`, `post_status`) VALUES
(5, 'Watering nature to give you', 'Watering-nature-to-give-you', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1629280126.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', '2021-08-18', 26, 'plugin,blog,post,marketplace', 0, '', '', 1),
(6, 'How to create good inspired ideas', 'How-to-create-good-inspired-ideas', 5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1629280111.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', '2021-08-18', 75, 'category,works,blog,wordpress', 0, '', '', 1),
(7, 'Man Running and Jumping from a Wall', 'Man-Running-and-Jumping-from-a-Wall', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1629280096.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', '2021-08-18', 21, 'mobile,app,android,blog,post', 0, '', '', 1),
(8, 'A young man plays guitar melodies', 'A-young-man-plays-guitar-melodies', 8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1629280082.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', '2021-08-18', 33, 'graphics,app,blog,post,forum', 0, '', '', 1),
(9, 'Bored Child Study', 'Bored-Child-Study', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '1629280068.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', '2021-08-18', 50, 'mobile,android,app,blog,forum', 1, 'Lorem ipsum, dolor sit amet, dolore magna, adipiscing elit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

CREATE TABLE `post_comment` (
  `comment_id` int NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `post_comment`
--

INSERT INTO `post_comment` (`comment_id`, `post_id`, `user_id`, `comment_content`, `comment_date`, `comment_status`) VALUES
(6, 9, 38, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2020-12-16', 1),
(7, 9, 39, 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2020-12-16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `subcategory_id` bigint NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_fixed_price` tinyint DEFAULT '1',
  `service_price` float DEFAULT NULL,
  `service_revision` int DEFAULT NULL,
  `delivery_time` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `requirements` text COLLATE utf8mb4_general_ci,
  `video` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `audio` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `slug`, `category_id`, `subcategory_id`, `tags`, `is_fixed_price`, `service_price`, `service_revision`, `delivery_time`, `description`, `requirements`, `video`, `images`, `audio`, `created_at`, `updated_at`) VALUES
(1, 0, '', '', 16, 71, 'sjgf,sjfh,askfhas', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 11:36:41', '2022-03-12 11:36:41'),
(2, 0, 'test the web', 'test-the-web', 15, 68, 'website, php, laravel', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 11:39:04', '2022-03-12 11:39:04'),
(3, 39, 'asfaas', 'asfaas', 24, 148, 'asf', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 11:40:07', '2022-03-12 11:40:07'),
(4, 39, 'test the phone', 'test-the-phone', 18, 96, 'website, php, laravel', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 11:43:07', '2022-03-12 11:43:07'),
(5, 39, 'hello test', 'hello-test', 15, 69, 'sjgf,sjfh,askfhas', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 11:57:19', '2022-03-12 11:57:19'),
(6, 39, 'this is a test service', 'this-is-a-test-service', 15, 67, 'test', 1, 100, -1, 15, NULL, NULL, NULL, NULL, NULL, '2022-03-12 15:20:06', '2022-03-12 15:22:18'),
(7, 39, 'klfaskljg', 'klfaskljg', 17, 92, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 15:39:22', '2022-03-12 15:39:22'),
(8, 39, 'kljasgjksaj', 'kljasgjksaj', 17, 86, 'sfga', 1, 500, 4, 12, 'this is dummy description', 'this is dummy requirements', NULL, NULL, NULL, '2022-03-12 15:41:23', '2022-03-12 15:51:26'),
(9, 39, 'create website for you', 'create-website-for-you', 17, 84, 'website, php, laravel', 1, 500, 4, 10, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum', '2022-03-12 16:26:20WhatsApp Video 2022-01-16 at 12.55.05 AM.mp4', '2022-03-12 16:34:00206369822_3534626459974257_965575398814200567_n.png.jpg|2022-03-12 16:34:00MicrosoftTeams-image (1).png|2022-03-12 16:34:00MicrosoftTeams-image.png', '2022-03-12 16:29:45sample-15s.mp3', '2022-03-12 16:20:37', '2022-03-12 16:34:00'),
(10, 39, 'I will develope a website for you', 'i-will-develope-a-website-for-you', 19, 103, 'website,php,laravel', 1, 100, 4, 7, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\r\nquia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\r\nquia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos', '2022-03-12 16:58:00WhatsApp Video 2022-01-16 at 12.55.05 AM.mp4', '2022-03-12 16:58:00NewsPortal.drawio (4).png|2022-03-12 16:58:00NewsPortal.drawio (3).png|2022-03-12 16:58:00NewsPortal.drawio (2).png', '2022-03-12 16:58:00sample-15s.mp3', '2022-03-12 16:55:12', '2022-03-12 16:58:00'),
(11, 39, 'I will make website', 'i-will-make-website', 22, 142, 'website,php,laravel', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-12 16:59:08', '2022-03-12 16:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `service_packages`
--

CREATE TABLE `service_packages` (
  `id` bigint NOT NULL,
  `service_id` bigint NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_time` int NOT NULL,
  `revisions` int NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sid` int NOT NULL,
  `site_title` varchar(500) NOT NULL,
  `site_desc` mediumtext NOT NULL,
  `site_keywords` mediumtext NOT NULL,
  `site_currency_symbol` varchar(50) NOT NULL,
  `site_currency` varchar(50) NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_email` varchar(200) NOT NULL,
  `office_address` text NOT NULL,
  `office_email` varchar(200) NOT NULL,
  `office_phone` varchar(200) NOT NULL,
  `site_theme_color` varchar(50) NOT NULL,
  `site_header_color` varchar(50) NOT NULL,
  `site_button_color` varchar(50) NOT NULL,
  `site_button_hover` varchar(50) DEFAULT NULL,
  `site_footer_color` varchar(50) DEFAULT NULL,
  `site_menu_category` int NOT NULL,
  `site_banner` varchar(200) NOT NULL,
  `site_banner_heading` varchar(1000) NOT NULL,
  `site_banner_subheading` varchar(1000) NOT NULL,
  `service_banner_heading` varchar(255) DEFAULT NULL,
  `service_banner_subheading` varchar(255) DEFAULT NULL,
  `site_item_per_page` int NOT NULL,
  `site_post_per_page` int NOT NULL,
  `item_approval` int NOT NULL,
  `site_range_min_price` int NOT NULL,
  `site_range_max_price` int NOT NULL,
  `site_admin_commission` float NOT NULL,
  `site_exclusive_commission` float NOT NULL,
  `site_non_exclusive_commission` float NOT NULL,
  `site_extra_fee` float NOT NULL,
  `payment_option` varchar(500) NOT NULL,
  `withdraw_option` varchar(500) NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `paypal_mode` varchar(100) NOT NULL,
  `stripe_mode` varchar(50) NOT NULL,
  `test_publish_key` varchar(200) NOT NULL,
  `test_secret_key` varchar(200) NOT NULL,
  `live_publish_key` varchar(200) NOT NULL,
  `live_secret_key` varchar(200) NOT NULL,
  `site_minimum_withdrawal` int NOT NULL,
  `facebook_url` varchar(300) NOT NULL,
  `twitter_url` varchar(300) NOT NULL,
  `gplus_url` varchar(300) NOT NULL,
  `pinterest_url` varchar(300) NOT NULL,
  `linkedin_url` varchar(300) NOT NULL,
  `instagram_url` varchar(200) DEFAULT NULL,
  `site_count_bg` varchar(200) NOT NULL,
  `site_icon1` varchar(200) NOT NULL,
  `site_icon2` varchar(200) NOT NULL,
  `site_icon3` varchar(200) NOT NULL,
  `site_icon4` varchar(200) NOT NULL,
  `site_text1` varchar(200) NOT NULL,
  `site_text2` varchar(200) NOT NULL,
  `site_text3` varchar(200) NOT NULL,
  `site_text4` varchar(200) NOT NULL,
  `site_sub_text1` varchar(500) DEFAULT NULL,
  `site_sub_text2` varchar(500) DEFAULT NULL,
  `site_sub_text3` varchar(500) DEFAULT NULL,
  `site_sub_text4` varchar(500) DEFAULT NULL,
  `site_newest_files` int NOT NULL,
  `site_category_newest_files` int NOT NULL,
  `site_layout` varchar(50) DEFAULT NULL,
  `site_flash_end_date` date NOT NULL,
  `site_free_end_date` date NOT NULL,
  `site_newsletter` varchar(500) DEFAULT NULL,
  `site_watermark` varchar(200) DEFAULT NULL,
  `site_max_image_size` int NOT NULL DEFAULT '0',
  `site_max_file_size` int NOT NULL DEFAULT '0',
  `site_referral_commission` float NOT NULL DEFAULT '0',
  `site_s3_storage` int NOT NULL DEFAULT '0',
  `aws_access_key_id` varchar(200) DEFAULT NULL,
  `aws_secret_access_key` varchar(200) DEFAULT NULL,
  `aws_default_region` varchar(200) DEFAULT NULL,
  `aws_bucket` varchar(200) DEFAULT NULL,
  `wasabi_access_key_id` varchar(200) DEFAULT NULL,
  `wasabi_secret_access_key` varchar(200) DEFAULT NULL,
  `wasabi_default_region` varchar(50) DEFAULT NULL,
  `wasabi_bucket` varchar(50) DEFAULT NULL,
  `dropbox_api` varchar(191) DEFAULT NULL,
  `dropbox_token` varchar(191) DEFAULT NULL,
  `google_drive_api` varchar(191) DEFAULT NULL,
  `google_drive_client_id` varchar(191) DEFAULT NULL,
  `google_drive_client_secret` varchar(191) DEFAULT NULL,
  `google_drive_refresh_token` varchar(191) DEFAULT NULL,
  `google_drive_folder_id` varchar(191) DEFAULT NULL,
  `watermark_option` int NOT NULL DEFAULT '0',
  `google_analytics` varchar(200) DEFAULT NULL,
  `multi_language` int NOT NULL,
  `two_checkout_mode` varchar(50) DEFAULT NULL,
  `two_checkout_account` varchar(200) DEFAULT NULL,
  `two_checkout_publishable` varchar(200) DEFAULT NULL,
  `two_checkout_private` varchar(200) DEFAULT NULL,
  `paystack_public_key` varchar(500) DEFAULT NULL,
  `paystack_secret_key` varchar(500) DEFAULT NULL,
  `paystack_merchant_email` varchar(200) DEFAULT NULL,
  `local_bank_details` text,
  `display_social_login` int NOT NULL,
  `facebook_client_id` varchar(200) DEFAULT NULL,
  `facebook_client_secret` varchar(200) DEFAULT NULL,
  `facebook_callback_url` varchar(200) DEFAULT NULL,
  `google_client_id` varchar(200) DEFAULT NULL,
  `google_client_secret` varchar(200) DEFAULT NULL,
  `google_callback_url` varchar(200) DEFAULT NULL,
  `mail_driver` varchar(200) DEFAULT NULL,
  `mail_port` varchar(200) DEFAULT NULL,
  `mail_password` varchar(200) DEFAULT NULL,
  `mail_host` varchar(200) DEFAULT NULL,
  `mail_username` varchar(200) DEFAULT NULL,
  `mail_encryption` varchar(200) DEFAULT NULL,
  `email_verification` int NOT NULL,
  `payment_verification` int NOT NULL,
  `site_blog_display` int NOT NULL,
  `home_blog_display` int NOT NULL,
  `maintenance_mode` int NOT NULL,
  `m_mode_title` varchar(200) DEFAULT NULL,
  `m_mode_content` varchar(500) DEFAULT NULL,
  `site_header_top_bar` int NOT NULL,
  `cookie_popup` int NOT NULL,
  `cookie_popup_text` text,
  `cookie_popup_button` varchar(200) DEFAULT NULL,
  `site_comment_per_page` int NOT NULL,
  `site_review_per_page` int NOT NULL,
  `site_loader_display` int NOT NULL,
  `menu_categories_order` varchar(50) DEFAULT NULL,
  `footer_menu_display_categories` varchar(50) DEFAULT NULL,
  `footer_menu_categories_order` varchar(50) DEFAULT NULL,
  `home_featured_items` int NOT NULL,
  `home_flash_items` int NOT NULL,
  `home_blog_post` int NOT NULL,
  `home_popular_items` int NOT NULL,
  `home_free_items` int NOT NULL,
  `site_loader_image` varchar(100) DEFAULT NULL,
  `item_support_link` varchar(200) DEFAULT NULL,
  `site_newsletter_display` int NOT NULL,
  `site_features_display` int NOT NULL,
  `site_selling_display` int NOT NULL,
  `vendor_payment_option` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sid`, `site_title`, `site_desc`, `site_keywords`, `site_currency_symbol`, `site_currency`, `site_favicon`, `site_logo`, `sender_name`, `sender_email`, `office_address`, `office_email`, `office_phone`, `site_theme_color`, `site_header_color`, `site_button_color`, `site_button_hover`, `site_footer_color`, `site_menu_category`, `site_banner`, `site_banner_heading`, `site_banner_subheading`, `service_banner_heading`, `service_banner_subheading`, `site_item_per_page`, `site_post_per_page`, `item_approval`, `site_range_min_price`, `site_range_max_price`, `site_admin_commission`, `site_exclusive_commission`, `site_non_exclusive_commission`, `site_extra_fee`, `payment_option`, `withdraw_option`, `paypal_email`, `paypal_mode`, `stripe_mode`, `test_publish_key`, `test_secret_key`, `live_publish_key`, `live_secret_key`, `site_minimum_withdrawal`, `facebook_url`, `twitter_url`, `gplus_url`, `pinterest_url`, `linkedin_url`, `instagram_url`, `site_count_bg`, `site_icon1`, `site_icon2`, `site_icon3`, `site_icon4`, `site_text1`, `site_text2`, `site_text3`, `site_text4`, `site_sub_text1`, `site_sub_text2`, `site_sub_text3`, `site_sub_text4`, `site_newest_files`, `site_category_newest_files`, `site_layout`, `site_flash_end_date`, `site_free_end_date`, `site_newsletter`, `site_watermark`, `site_max_image_size`, `site_max_file_size`, `site_referral_commission`, `site_s3_storage`, `aws_access_key_id`, `aws_secret_access_key`, `aws_default_region`, `aws_bucket`, `wasabi_access_key_id`, `wasabi_secret_access_key`, `wasabi_default_region`, `wasabi_bucket`, `dropbox_api`, `dropbox_token`, `google_drive_api`, `google_drive_client_id`, `google_drive_client_secret`, `google_drive_refresh_token`, `google_drive_folder_id`, `watermark_option`, `google_analytics`, `multi_language`, `two_checkout_mode`, `two_checkout_account`, `two_checkout_publishable`, `two_checkout_private`, `paystack_public_key`, `paystack_secret_key`, `paystack_merchant_email`, `local_bank_details`, `display_social_login`, `facebook_client_id`, `facebook_client_secret`, `facebook_callback_url`, `google_client_id`, `google_client_secret`, `google_callback_url`, `mail_driver`, `mail_port`, `mail_password`, `mail_host`, `mail_username`, `mail_encryption`, `email_verification`, `payment_verification`, `site_blog_display`, `home_blog_display`, `maintenance_mode`, `m_mode_title`, `m_mode_content`, `site_header_top_bar`, `cookie_popup`, `cookie_popup_text`, `cookie_popup_button`, `site_comment_per_page`, `site_review_per_page`, `site_loader_display`, `menu_categories_order`, `footer_menu_display_categories`, `footer_menu_categories_order`, `home_featured_items`, `home_flash_items`, `home_blog_post`, `home_popular_items`, `home_free_items`, `site_loader_image`, `item_support_link`, `site_newsletter_display`, `site_features_display`, `site_selling_display`, `vendor_payment_option`) VALUES
(1, 'Doptor Market | Download Application, Mobile Apps, Android, iOS, Theme, Template, Plugin. Get Quality Services from Best Developers.', 'Doptor Market | Download your Application, Mobile Apps, Android, iOS, Theme, Template, Plugin, Software Development, IT product, Digital Product, download free.', 'Doptor Market | Download your Application, Mobile Apps, Android, iOS, Theme, Template, Plugin, Software Development, IT product, Digital Product, download free.', '$', 'USD', '1644067891.png', '164406643211.png', 'Doptor Market Product', 'no_reply@doptorr.com', '369/B, Khilgaon, Taltola, Dhaka-1219, Bangladesh.\r\n\r\nTIN : 494842953149', 'info@doptorr.com', '+8801648050363', '#F13E44', '#232F3E', '#FF5A5F', '#F13E44', '#131A22', 10, '160517454011.jpg', 'Download million of digital product.', 'Web Application, Mobile Apps, Theme, Templates & Plugin.', 'DO YOUR DREAM', 'Freelance Services. On Demand.', 20, 15, 0, 1, 1000, 0, 30, 40, 0, 'paypal,wallet,shurjopay', 'paypal', 'paypal@doptor.org', '1', '0', 'pk_test_2fR28XACHzyFUmp44ah5KKP[pyoituyddFUIUOI000BvS2sjXk', 'sk_test_qkIX025z7NxZAJ0dkgjguytdRSTSTRSRSqoLwGg00Wbh6fQBU', 'fdsfsewwrYTRREYTSFDJ', '324324fdsfsaYOIUOIY', 100, 'https://www.facebook.com/DoptorMarket/', 'https://twitter.com', '', 'https://pinterest.com', 'https://www.linkedin.com', 'https://www.instagram.com', '1563358778009.jpg', 'fa fa-magic', 'fa fa-phone', 'fa fa-code', 'fa fa-lock', 'Quality Products & Services', 'Customer Support', 'Free Updates and Revisions', 'Secure Payments', 'Quality checked by our team and services from best developers', 'Friendly 24/7 customer support', 'Free Updates of products and revisions of services', '100% Secure Payments', 12, 8, '', '2022-04-30', '2021-06-30', 'Want more script,themes & templates? Subscribe to our mailing list to receive an update when new items arrive!', '1608035494141.png', 3000, 5000000, 2, 0, 'fdsfalfsafsafkfdsafdsafds', 'fdsafdsafdsafsafsafsafsafdsffdsafdsafds', 'us-east-2', 'fickrr', 'dfsafdsafdsafsafsafsafsdfdsa', 'fdsafdsafdsafsafsafsafsafdsffdsafdsafds', 'us-east-2', 'fickrr', 'fdsafdsafdsafsafsafsafsafdsffdsafdsafds', 'fdsafdsafdsafsafsafsafsafdsffdsafdsafds', NULL, 'fdsafdsafdsafsafsafsafsafdsffdsafdsafds', 'fdsafdsafdsafsafsafsafsafdsffdsafdsafds', 'fdsafdsafdsafsafsafsafsafdsffdsafdsafdsfdsafsa', 'fdsafdsafdsafsafsafsafsafdsffdsafdsafds', 0, 'G-FPJ9HLW35Q', 1, 'false', '250917538793', '0D6B22A2-355D-42B1-8C6A-4DF6D214438B', '82B82A69-14BE-44BB-BEEB-45FA2C11D423', 'pk_test_2a5a6d36733a2e562f75d25831db9737c3423380', 'sk_test_72f75924ee11551c998a5aadf594497c99e1e45d', 'demowork@gmail.com', 'Bank Name : Test Bank\r\nBranch Name : Test Branch\r\nBranch Code : 00000\r\nIFSC Code : 63632EFWX', 1, '460189768984337', '410366fbc7d1b2b35930306493c4f7c7', 'https://doptorr.com/login/facebook/callback', '187236550402-40esk55o5u3qlduvuiqf83q73q68dh1i.apps.googleusercontent.com', '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', 'https://doptorr.com/login/google/callback', 'sendmail', '465', 'Qomy;D@]t6n(', 'kerabu.mschosting.com', 'no_reply@doptorr.com', 'tls', 1, 0, 0, 0, 0, 'Be right back', 'MAINTENANCE MODE', 1, 1, 'Do you like cookies? We use cookies to ensure you get the best experience on our website.', 'Allow Cookies', 10, 10, 1, 'asc', '6', 'asc', 20, 8, 8, 12, 8, '16052586106713.gif', 'about-us', 1, 1, 1, 'paypal');

-- --------------------------------------------------------

--
-- Table structure for table `start_selling`
--

CREATE TABLE `start_selling` (
  `st_id` int NOT NULL,
  `box1_icon` varchar(200) DEFAULT NULL,
  `box1_title` varchar(200) DEFAULT NULL,
  `box1_text` text,
  `box2_icon` varchar(200) DEFAULT NULL,
  `box2_title` varchar(200) DEFAULT NULL,
  `box2_text` text,
  `box3_icon` varchar(200) DEFAULT NULL,
  `box3_title` varchar(200) DEFAULT NULL,
  `box3_text` text,
  `box4_icon` varchar(200) DEFAULT NULL,
  `box4_title` varchar(200) DEFAULT NULL,
  `box4_text` text,
  `three_box_heading` varchar(200) DEFAULT NULL,
  `box5_icon` varchar(200) DEFAULT NULL,
  `box5_title` varchar(200) DEFAULT NULL,
  `box5_text` text,
  `box6_icon` varchar(200) DEFAULT NULL,
  `box6_title` varchar(200) DEFAULT NULL,
  `box6_text` text,
  `box7_icon` varchar(200) DEFAULT NULL,
  `box7_title` varchar(200) DEFAULT NULL,
  `box7_text` text,
  `content_title_one` varchar(500) DEFAULT NULL,
  `content_text_one` text,
  `content_title_two` varchar(500) DEFAULT NULL,
  `content_text_two` text,
  `content_title_three` varchar(500) DEFAULT NULL,
  `content_text_three` text,
  `button_title` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `start_selling`
--

INSERT INTO `start_selling` (`st_id`, `box1_icon`, `box1_title`, `box1_text`, `box2_icon`, `box2_title`, `box2_text`, `box3_icon`, `box3_title`, `box3_text`, `box4_icon`, `box4_title`, `box4_text`, `three_box_heading`, `box5_icon`, `box5_title`, `box5_text`, `box6_icon`, `box6_title`, `box6_text`, `box7_icon`, `box7_title`, `box7_text`, `content_title_one`, `content_text_one`, `content_title_two`, `content_text_two`, `content_title_three`, `content_text_three`, `button_title`) VALUES
(1, '16073383961.png', 'Earn 60% On Each Sale', 'Earn 60% from each sales from Doptor Market - Product. We are happy to partnering with you.', '16073383962.png', 'Instant Delivery', 'Doptor Market - Product offering you instantly delivery your dream item.', '16073383963.png', 'No Exclusivity Lock-In', 'No Exclusivity lock-in. all you are enjoy it.', '16073383964.png', 'Set Your Own Prices', 'Developer are able to set your own price for all over the world customer.', 'All the tools you’ll need to manage your shop', '16073385165.png', 'Track stats', 'Coming Soon', '16073385166.png', 'Keep up with customers', 'Coming Soon', '16073385167.png', 'Manage support', 'We are ready to our Developer & Customer team support.', 'The basics of being an author', '<p>Coming Soon.</p>', 'How does it work?', '<p>Coming Soon</p>', 'The rules', '<p>Coming Soon.</p>', 'Sound good? Join our community of authors today!');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcat_id` int NOT NULL,
  `cat_id` int NOT NULL,
  `subcategory_name` varchar(200) NOT NULL,
  `subcategory_slug` varchar(200) NOT NULL,
  `subcategory_order` int NOT NULL,
  `subcategory_status` int NOT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no',
  `subcategory_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `cat_id`, `subcategory_name`, `subcategory_slug`, `subcategory_order`, `subcategory_status`, `drop_status`, `subcategory_type`) VALUES
(1, 8, 'JavaScript', 'JavaScript', 51, 1, 'no', 'item'),
(2, 8, 'PHP Scripts', 'PHP-Scripts', 50, 1, 'no', 'item'),
(3, 8, 'CSS', 'CSS', 49, 1, 'no', 'item'),
(4, 8, 'HTML5', 'HTML5', 48, 1, 'no', 'item'),
(5, 8, '.NET', '-NET', 47, 1, 'no', 'item'),
(6, 8, 'Skins', 'Skins', 46, 1, 'no', 'item'),
(7, 9, 'WordPress', 'WordPress', 45, 1, 'no', 'item'),
(8, 9, 'HTML/CSS', 'HTML-CSS', 44, 1, 'no', 'item'),
(9, 9, 'Bootstrap', 'Bootstrap', 43, 1, 'no', 'item'),
(10, 9, 'Muse', 'Muse', 42, 1, 'no', 'item'),
(11, 9, 'Joomla', 'Joomla', 41, 1, 'no', 'item'),
(12, 9, 'Magento', 'Magento', 40, 1, 'no', 'item'),
(13, 9, 'Drupal', 'Drupal', 39, 1, 'no', 'item'),
(14, 9, 'OpenCart', 'OpenCart', 38, 1, 'no', 'item'),
(15, 9, 'PrestaShop', 'PrestaShop', 37, 1, 'no', 'item'),
(16, 9, 'Tumblr', 'Tumblr', 36, 1, 'no', 'item'),
(17, 10, 'WordPress Plugins', 'WordPress-Plugins', 35, 1, 'no', 'item'),
(18, 10, 'Magento Extensions', 'Magento-Extensions', 34, 1, 'no', 'item'),
(19, 10, 'Joomla', 'Joomla', 33, 1, 'no', 'item'),
(20, 10, 'Drupal', 'Drupal', 32, 1, 'no', 'item'),
(21, 10, 'OpenCart', 'OpenCart', 31, 1, 'no', 'item'),
(22, 10, 'ExpressionEngine', 'ExpressionEngine', 30, 1, 'no', 'item'),
(23, 10, 'osCommerce', 'osCommerce', 29, 1, 'no', 'item'),
(24, 10, 'Prestashop', 'Prestashop', 28, 1, 'no', 'item'),
(25, 10, 'Concrete5', 'Concrete5', 27, 1, 'no', 'item'),
(26, 10, 'VirtueMart', 'VirtueMart', 26, 1, 'no', 'item'),
(27, 10, 'Zen Cart', 'Zen-Cart', 25, 1, 'no', 'item'),
(28, 10, 'Ubercart', 'Ubercart', 24, 1, 'no', 'item'),
(29, 11, 'Business Cards', 'Business-Cards', 23, 1, 'no', 'item'),
(30, 11, 'Brochures', 'Brochures', 22, 1, 'no', 'item'),
(31, 11, 'Flyers', 'Flyers', 21, 1, 'no', 'item'),
(32, 11, 'Resumes', 'Resumes', 20, 1, 'no', 'item'),
(33, 11, 'Logos', 'Logos', 19, 1, 'no', 'item'),
(34, 11, 'Magazines', 'Magazines', 18, 1, 'no', 'item'),
(35, 11, 'Stationery', 'Stationery', 17, 1, 'no', 'item'),
(36, 11, 'Newsletters', 'Newsletters', 16, 1, 'no', 'item'),
(37, 11, 'Cards & Invites', 'Cards-Invites', 15, 1, 'no', 'item'),
(38, 11, 'Other', 'Other', 14, 1, 'no', 'item'),
(39, 12, 'Icons', 'Icons', 13, 1, 'no', 'item'),
(40, 12, 'Illustrations', 'Illustrations', 12, 1, 'no', 'item'),
(41, 12, 'Objects', 'Objects', 11, 1, 'no', 'item'),
(42, 12, 'Patterns', 'Patterns', 10, 1, 'no', 'item'),
(43, 12, 'Product Mock-Ups', 'Product-Mock-Ups', 9, 1, 'no', 'item'),
(44, 12, 'Textures', 'Textures', 8, 1, 'no', 'item'),
(45, 12, 'Web Elements', 'Web-Elements', 7, 1, 'no', 'item'),
(46, 13, 'Android', 'Android', 6, 1, 'no', 'item'),
(47, 13, 'iOS', 'iOS', 5, 1, 'no', 'item'),
(48, 13, 'Native Web', 'Native-Web', 4, 1, 'no', 'item'),
(49, 13, 'Unity', 'Unity', 3, 1, 'no', 'item'),
(50, 13, 'Corona', 'Corona', 2, 1, 'no', 'item'),
(51, 13, 'Titanium', 'Titanium', 1, 1, 'no', 'item'),
(52, 12, 'Animation', 'animation', 0, 1, 'no', 'item'),
(53, 12, 'Motion Graphics', 'motion-graphics', 1, 1, 'no', 'item'),
(54, 14, 'Unity', 'unity', 0, 1, 'no', 'item'),
(55, 15, 'Logo Design', 'logo-design', 1, 1, 'no', 'service'),
(56, 15, 'Business Cards & Stationery', 'business-cards-stationery', 2, 1, 'no', 'service'),
(57, 15, 'Illustration', 'illustration', 3, 1, 'no', 'service'),
(58, 15, 'Cartoons Caricatures', 'cartoons-caricatures', 4, 1, 'no', 'service'),
(59, 15, 'Flyers Posters', 'flyers-posters', 5, 1, 'no', 'service'),
(60, 15, 'Book Covers & Packaging', 'book-covers-packaging', 6, 1, 'no', 'service'),
(61, 15, 'Web & Mobile Design', 'web-mobile-design', 7, 1, 'no', 'service'),
(62, 15, 'Social Media Design', 'social-media-design', 8, 1, 'no', 'service'),
(63, 15, 'Banner Ads', 'banner-ads', 9, 1, 'no', 'service'),
(64, 15, 'Photoshop Editing', 'photoshop-editing', 10, 1, 'no', 'service'),
(65, 15, '3D & 2D Models', '3d-2d-models', 11, 1, 'no', 'service'),
(66, 15, 'T-Shirts', 't-shirts', 12, 1, 'no', 'service'),
(67, 15, 'Presentation Design', 'presentation-design', 13, 1, 'no', 'service'),
(68, 15, '3D Design', '3d-design', 14, 1, 'no', 'service'),
(69, 15, 'Other', 'other', 15, 1, 'no', 'service'),
(70, 16, 'Social Media Marketing', 'social-media-marketing', 1, 1, 'no', 'service'),
(71, 16, 'SEO', 'seo', 2, 1, 'no', 'service'),
(72, 16, 'Web Traffic', 'web-traffic', 3, 1, 'no', 'service'),
(73, 16, 'Content Marketing', 'content-marketing', 4, 1, 'no', 'service'),
(74, 16, 'Video Marketing', 'video-marketing', 5, 1, 'no', 'service'),
(75, 16, 'Email Marketing', 'email-marketing', 6, 1, 'no', 'service'),
(76, 16, 'Search & Display Marketing', 'search-display-marketing', 7, 1, 'no', 'service'),
(77, 16, 'Marketing Strategy', 'marketing-strategy', 8, 1, 'no', 'service'),
(78, 16, 'Web Analytics', 'web-analytics', 9, 1, 'no', 'service'),
(79, 16, 'Influencer Marketing', 'influencer-marketing', 9, 1, 'no', 'service'),
(80, 16, 'Local Listings', 'local-listings', 11, 1, 'no', 'service'),
(81, 16, 'Domain Research', 'domain-research', 12, 1, 'no', 'service'),
(82, 16, 'E-Commerce Marketing', 'e-commerce-marketing', 13, 1, 'no', 'service'),
(83, 16, 'Mobile Advertising', 'mobile-advertising', 14, 1, 'no', 'service'),
(84, 17, 'Resumes & Cover Letters', 'resumes-cover-letters', 1, 1, 'no', 'service'),
(85, 17, 'Proofreading & Editing', 'proofreading-editing', 1, 1, 'no', 'service'),
(86, 17, 'Translation', 'translation', 1, 1, 'no', 'service'),
(87, 17, 'Creative Writing', 'creative-writing', 1, 1, 'no', 'service'),
(88, 17, 'Business Copywriting', 'business-copywriting', 1, 1, 'no', 'service'),
(89, 17, 'Research & Summaries', 'research-summaries', 1, 1, 'no', 'service'),
(90, 17, 'Articles & Blog Posts', 'articles-blog-posts', 1, 1, 'no', 'service'),
(91, 17, 'Press Releases', 'press-releases', 1, 1, 'no', 'service'),
(92, 17, 'Transcription', 'transcription', 1, 1, 'no', 'service'),
(93, 17, 'Legal Writing', 'legal-writing', 1, 1, 'no', 'service'),
(94, 17, 'Other', 'other', 1, 1, 'no', 'service'),
(95, 18, 'Whiteboard & Explainer Videos', 'whiteboard-explainer-videos', 1, 1, 'no', 'service'),
(96, 18, 'Intros & Animated Logos', 'intros-animated-logos', 1, 1, 'no', 'service'),
(97, 18, 'Promotional & Brand Videos', 'promotional-brand-videos', 1, 1, 'no', 'service'),
(98, 18, 'Editing & Post Production', 'editing-post-production', 1, 1, 'no', 'service'),
(99, 18, 'Lyric & Music Videos', 'lyric-music-videos', 1, 1, 'no', 'service'),
(100, 18, 'Spokespersons & Testimonials', 'spokespersons-testimonials', 1, 1, 'no', 'service'),
(101, 18, 'Other', 'other', 1, 1, 'no', 'service'),
(102, 19, 'WordPress', 'wordpress', 1, 1, 'no', 'service'),
(103, 19, 'Web Programming', 'web-programming', 1, 1, 'no', 'service'),
(104, 19, 'Website Builders & CMS', 'website-builders-cms', 1, 1, 'no', 'service'),
(105, 19, 'Ecommerce', 'ecommerce', 1, 1, 'no', 'service'),
(106, 19, 'Mobile Apps & Web', 'mobile-apps-web', 1, 1, 'no', 'service'),
(107, 19, 'Desktop applications', 'desktop-applications', 1, 1, 'no', 'service'),
(108, 19, 'Support & IT', 'support-it', 1, 1, 'no', 'service'),
(109, 19, 'Chatbots', 'chatbots', 1, 1, 'no', 'service'),
(110, 19, 'Data Analysis & Reports', 'data-analysis-reports', 1, 1, 'no', 'service'),
(111, 19, 'Convert Files', 'convert-files', 1, 1, 'no', 'service'),
(112, 19, 'Databases', 'databases', 1, 1, 'no', 'service'),
(113, 19, 'User Testing', 'user-testing', 1, 1, 'no', 'service'),
(114, 19, 'Joomla', 'joomla', 1, 1, 'no', 'service'),
(115, 19, 'Other', 'other', 1, 1, 'no', 'service'),
(116, 20, 'Virtual Assistant', 'virtual-assistant', 1, 1, 'no', 'service'),
(117, 20, 'Market Research', 'market-research', 1, 1, 'no', 'service'),
(118, 20, 'Business Plans', 'business-plans', 1, 1, 'no', 'service'),
(119, 20, 'Branding Services', 'branding-services', 1, 1, 'no', 'service'),
(120, 20, 'Legal Consulting', 'legal-consulting', 1, 1, 'no', 'service'),
(121, 20, 'Financial Consulting', 'financial-consulting', 1, 1, 'no', 'service'),
(122, 20, 'Business Tips', 'business-tips', 1, 1, 'no', 'service'),
(123, 20, 'Presentations', 'presentations', 1, 1, 'no', 'service'),
(124, 20, 'Career Advice', 'career-advice', 1, 1, 'no', 'service'),
(125, 20, 'Flyer Distribution', 'flyer-distribution', 1, 1, 'no', 'service'),
(126, 20, 'Typing Job', 'typing-job', 1, 1, 'no', 'service'),
(127, 20, 'Other', 'other', 1, 1, 'no', 'service'),
(128, 21, 'Online Lessons', 'online-lessons', 1, 1, 'no', 'service'),
(129, 21, 'Arts & Crafts', 'arts-crafts', 1, 1, 'no', 'service'),
(130, 21, 'Relationship Advice', 'relationship-advice', 1, 1, 'no', 'service'),
(131, 21, 'Health, Nutrition & Fitness', 'health-nutrition-fitness', 1, 1, 'no', 'service'),
(132, 21, 'Astrology & Readings', 'astrology-readings', 1, 1, 'no', 'service'),
(133, 21, 'Spiritual & Healing', 'spiritual-healing', 1, 1, 'no', 'service'),
(134, 21, 'Family & Genealogy', 'family-genealogy', 1, 1, 'no', 'service'),
(135, 21, 'Collectibles', 'collectibles', 1, 1, 'no', 'service'),
(136, 21, 'Greeting Cards & Videos', 'greeting-cards-videos', 1, 1, 'no', 'service'),
(137, 21, 'Viral Videos', 'viral-videos', 1, 1, 'no', 'service'),
(138, 21, 'Pranks & Stunts', 'pranks-stunts', 1, 1, 'no', 'service'),
(139, 21, 'Celebrity Impersonators', 'celebrity-impersonators', 1, 1, 'no', 'service'),
(140, 21, 'Other', 'other', 1, 1, 'no', 'service'),
(141, 22, 'Voice Over', 'voice-over', 1, 1, 'no', 'service'),
(142, 22, 'Mixing & Mastering', 'mixing-mastering', 1, 1, 'no', 'service'),
(143, 22, 'Producers & Composers', 'producers-composers', 1, 1, 'no', 'service'),
(144, 22, 'Singer-Songwriters', 'singer-songwriters', 1, 1, 'no', 'service'),
(145, 22, 'Session Musicians & Singers', 'session-musicians-singers', 1, 1, 'no', 'service'),
(146, 22, 'Jingles & Drops', 'jingles-drops', 1, 1, 'no', 'service'),
(147, 22, 'Sound Effects', 'sound-effects', 1, 1, 'no', 'service'),
(148, 24, 'Flutter', 'flutter', 1, 1, 'no', 'service');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `subscr_id` int NOT NULL,
  `subscr_name` varchar(200) NOT NULL,
  `subscr_slug` varchar(200) NOT NULL,
  `subscr_price` float NOT NULL,
  `subscr_duration` varchar(50) NOT NULL,
  `subscr_item_level` varchar(100) DEFAULT NULL,
  `subscr_item` int NOT NULL,
  `subscr_download_item` mediumint NOT NULL,
  `subscr_space_level` varchar(100) DEFAULT NULL,
  `subscr_space` int NOT NULL,
  `subscr_space_type` varchar(100) DEFAULT NULL,
  `subscr_order` int NOT NULL,
  `subscr_email_support` int NOT NULL,
  `subscr_payment_mode` int NOT NULL,
  `subscr_status` int NOT NULL,
  `subscr_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscr_id`, `subscr_name`, `subscr_slug`, `subscr_price`, `subscr_duration`, `subscr_item_level`, `subscr_item`, `subscr_download_item`, `subscr_space_level`, `subscr_space`, `subscr_space_type`, `subscr_order`, `subscr_email_support`, `subscr_payment_mode`, `subscr_status`, `subscr_drop_status`) VALUES
(1, 'Deluxe', 'Deluxe', 150, '3 Month', 'limited', 50, 100, 'limited', 10, 'GB', 1, 1, 0, 1, 'no'),
(3, 'Ultimate', 'Ultimate', 250, '6 Month', 'limited', 100, 200, 'limited', 50, 'GB', 2, 1, 1, 1, 'no'),
(4, 'Popular', 'Popular', 450, '1 Year', 'unlimited', 0, 500, 'unlimited', 0, '', 3, 1, 1, 1, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `provider` varchar(500) DEFAULT NULL,
  `provider_id` varchar(500) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `user_photo` varchar(100) DEFAULT NULL,
  `user_banner` varchar(200) DEFAULT NULL,
  `user_token` varchar(500) NOT NULL,
  `password` varchar(191) NOT NULL,
  `user_auth_token` varchar(200) DEFAULT NULL,
  `earnings` float NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `profile_heading` varchar(1000) DEFAULT NULL,
  `about` text,
  `facebook_url` varchar(200) DEFAULT NULL,
  `twitter_url` varchar(200) DEFAULT NULL,
  `gplus_url` varchar(200) DEFAULT NULL,
  `instagram_url` varchar(191) DEFAULT NULL,
  `linkedin_url` varchar(191) DEFAULT NULL,
  `pinterest_url` varchar(191) DEFAULT NULL,
  `verified` int NOT NULL DEFAULT '0',
  `user_document_verified` int NOT NULL,
  `user_permission` varchar(200) DEFAULT NULL,
  `user_subscr_id` int NOT NULL,
  `user_subscr_type` varchar(100) DEFAULT NULL,
  `user_subscr_price` float NOT NULL,
  `user_subscr_date` date NOT NULL,
  `user_subscr_item_level` varchar(50) DEFAULT NULL,
  `user_subscr_item` int NOT NULL,
  `user_subscr_download_item` mediumint NOT NULL,
  `user_today_download_limit` mediumint NOT NULL,
  `user_today_download_date` date NOT NULL,
  `user_subscr_space_level` varchar(50) DEFAULT NULL,
  `user_subscr_space` int NOT NULL,
  `user_subscr_space_type` varchar(100) DEFAULT NULL,
  `user_purchase_token` varchar(200) DEFAULT NULL,
  `user_payment_option` varchar(200) DEFAULT NULL,
  `user_paypal_email` varchar(200) DEFAULT NULL,
  `user_paypal_mode` varchar(200) DEFAULT NULL,
  `user_stripe_mode` varchar(50) DEFAULT NULL,
  `user_test_publish_key` varchar(200) DEFAULT NULL,
  `user_test_secret_key` varchar(200) DEFAULT NULL,
  `user_live_publish_key` varchar(200) DEFAULT NULL,
  `user_live_secret_key` varchar(200) DEFAULT NULL,
  `user_paystack_public_key` varchar(200) DEFAULT NULL,
  `user_paystack_secret_key` varchar(200) DEFAULT NULL,
  `user_paystack_merchant_email` varchar(200) DEFAULT NULL,
  `user_razorpay_key` varchar(200) DEFAULT NULL,
  `user_razorpay_secret` varchar(200) DEFAULT NULL,
  `user_payhere_mode` int NOT NULL,
  `user_payhere_merchant_id` varchar(200) DEFAULT NULL,
  `user_payumoney_mode` int NOT NULL,
  `user_payu_merchant_key` varchar(200) DEFAULT NULL,
  `user_payu_salt_key` varchar(200) DEFAULT NULL,
  `user_two_checkout_mode` varchar(50) DEFAULT NULL,
  `user_two_checkout_account` varchar(500) DEFAULT NULL,
  `user_two_checkout_publishable` varchar(500) DEFAULT NULL,
  `user_two_checkout_private` varchar(500) DEFAULT NULL,
  `user_iyzico_api_key` varchar(500) DEFAULT NULL,
  `user_iyzico_secret_key` varchar(500) DEFAULT NULL,
  `user_iyzico_mode` int NOT NULL,
  `user_flutterwave_public_key` varchar(500) DEFAULT NULL,
  `user_flutterwave_secret_key` varchar(500) DEFAULT NULL,
  `user_coingate_mode` int NOT NULL,
  `user_coingate_auth_token` varchar(500) DEFAULT NULL,
  `user_message_permission` int NOT NULL DEFAULT '1',
  `item_update_email` int NOT NULL DEFAULT '0',
  `item_comment_email` int NOT NULL DEFAULT '0',
  `item_review_email` int NOT NULL DEFAULT '0',
  `buyer_review_email` int NOT NULL DEFAULT '0',
  `user_freelance` int NOT NULL DEFAULT '0',
  `country_badge` int NOT NULL DEFAULT '0',
  `exclusive_author` int NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `referral_by` int DEFAULT NULL,
  `referral_payout` varchar(191) DEFAULT NULL,
  `referral_amount` float NOT NULL,
  `referral_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no',
  `user_ipay_mode` int NOT NULL,
  `user_ipay_vendor_id` varchar(191) DEFAULT NULL,
  `user_ipay_hash_key` varchar(191) DEFAULT NULL,
  `register_url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider`, `provider_id`, `name`, `username`, `email`, `email_verified_at`, `user_type`, `user_photo`, `user_banner`, `user_token`, `password`, `user_auth_token`, `earnings`, `website`, `country`, `profile_heading`, `about`, `facebook_url`, `twitter_url`, `gplus_url`, `instagram_url`, `linkedin_url`, `pinterest_url`, `verified`, `user_document_verified`, `user_permission`, `user_subscr_id`, `user_subscr_type`, `user_subscr_price`, `user_subscr_date`, `user_subscr_item_level`, `user_subscr_item`, `user_subscr_download_item`, `user_today_download_limit`, `user_today_download_date`, `user_subscr_space_level`, `user_subscr_space`, `user_subscr_space_type`, `user_purchase_token`, `user_payment_option`, `user_paypal_email`, `user_paypal_mode`, `user_stripe_mode`, `user_test_publish_key`, `user_test_secret_key`, `user_live_publish_key`, `user_live_secret_key`, `user_paystack_public_key`, `user_paystack_secret_key`, `user_paystack_merchant_email`, `user_razorpay_key`, `user_razorpay_secret`, `user_payhere_mode`, `user_payhere_merchant_id`, `user_payumoney_mode`, `user_payu_merchant_key`, `user_payu_salt_key`, `user_two_checkout_mode`, `user_two_checkout_account`, `user_two_checkout_publishable`, `user_two_checkout_private`, `user_iyzico_api_key`, `user_iyzico_secret_key`, `user_iyzico_mode`, `user_flutterwave_public_key`, `user_flutterwave_secret_key`, `user_coingate_mode`, `user_coingate_auth_token`, `user_message_permission`, `item_update_email`, `item_comment_email`, `item_review_email`, `buyer_review_email`, `user_freelance`, `country_badge`, `exclusive_author`, `remember_token`, `referral_by`, `referral_payout`, `referral_amount`, `referral_count`, `created_at`, `updated_at`, `drop_status`, `user_ipay_mode`, `user_ipay_vendor_id`, `user_ipay_hash_key`, `register_url`) VALUES
(1, NULL, NULL, 'admin', 'admin', 'admin@doptorr.com', NULL, 'admin', '1607941980.png', '1561461056456.jpg', 'wY8wGc5rFLhA57SpAzw7ZP37m', '$2y$10$N6AFvXq6.DPaiuM7UaLnce5ZIxjiJk4Z3.5aPIAWbwKS0BnOUUAmy', NULL, 4146.8, 'http://google.com', '17', 'Hello welcome', 'i am a web designer.', 'http://facebook.com', 'http://twitter.com', 'http://google.com', NULL, NULL, NULL, 1, 0, 'dashboard,settings,items,refund,rating,withdrawal,blog,pages,features,subscription,selling,contact,newsletter,languages', 0, NULL, 0, '0000-00-00', NULL, 0, 0, 0, '2022-03-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 1, 1, 1, 1, 0, 0, 0, NULL, NULL, NULL, 0, 0, '2019-06-17 05:25:51', '2022-02-28 07:26:06', 'no', 0, NULL, NULL, NULL),
(38, NULL, NULL, 'customer', 'customer', 'customer@gmail.com', NULL, 'customer', '1607946917.png', '', 'mqG76mvh03pPE8DZCXcSHbDt9', '$2y$10$9jZFv.w3V0wh1lCflM8wOO9FuNyxO8d/QrsTsSDPNwfwIF.hwDZJy', 'MTIzNDU2', 240, '', '14', 'test', 'tess', '', '', '', NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 200, 3, '2022-01-21', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 39, NULL, 0, 0, '2020-12-14 06:25:17', '2021-07-09 06:54:21', 'no', 0, NULL, NULL, NULL),
(39, NULL, NULL, 'vendor', 'vendor', 'vendor@gmail.com', NULL, 'vendor', '1607946988.png', '', 'wpCGMiF6cqKY5FaT2miS6FZHc', '$2y$10$N6AFvXq6.DPaiuM7UaLnce5ZIxjiJk4Z3.5aPIAWbwKS0BnOUUAmy', 'MTIzNDU2', 212.6, '', '12', 'Web Development Services', 'Lorem ipsum lorem ipsum...', 'https://www.facebook.com', 'https://www.twitter.com', '', 'https://www.instagram.com', 'https://www.linkedin.com', 'https://www.pinterest.com', 1, 1, NULL, 1, 'Deluxe', 150, '2022-02-10', 'limited', 50, 100, 0, '2022-03-12', 'limited', 10, 'GB', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 1, 1, 1, 1, 0, 1, 1, NULL, NULL, NULL, 570, 2, '2019-08-29 06:26:28', '2022-01-21 04:13:40', 'no', 0, NULL, NULL, NULL),
(40, NULL, NULL, 'subadmin', 'subadmin', 'subadmin@gmail.com', NULL, 'admin', '1608110004.png', NULL, 'ZayO5nOBOMjlFmuL6dxzyq63G', '$2y$10$/CtFw/U3jTziEVvyh0XC4.TVbi8EGDUFnFND9R6ZPttElkc0oy0z6', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '', 0, NULL, 0, '0000-00-00', NULL, 0, 0, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, '2020-12-15 00:28:45', '2022-02-26 10:42:31', 'no', 0, NULL, NULL, NULL),
(41, NULL, NULL, 'sample', 'sample', 'sample@gmail.com', NULL, 'customer', '', '', 'zRsr7evhcRFnyjP12gGWytuOY', '$2y$10$hRF5c8lE7BHd4h2X59GQDuD4DRnUMQOAUjq0wNcx1Q.3uFxkEswxa', 'MTIzNDU2', 0, '', NULL, '', '', '', '', '', NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 0, 0, '2021-09-20', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 0, '2021-05-21 01:17:21', '2021-07-10 01:03:50', 'no', 0, NULL, NULL, NULL),
(43, NULL, NULL, 'Rafid Ryan', 'rafid', 'rafidryan@gmail.com', NULL, 'vendor', '', '', 'K56qs2gE2tqbqbgLaA9ZQNoXf', '$2y$10$Bij8OMvXADDO2afssdgW2.4O34oYLbq9qvqVnWxhkv0nFW2tIUdPC', 'cmFuYS5iZDEyMw==', 10751.4, '', '20', 'Web Development Services, Mobile Apps Development.', 'Web Development Services, Mobile Apps Development.', '', '', '', '', '', '', 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '2022-02-26', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 0, '', 0, 0, '2022-02-07 14:00:06', '2022-02-22 08:18:01', 'no', 0, NULL, NULL, 'https://doptorr.com/user-verify/K56qs2gE2tqbqbgLaA9ZQNoXf'),
(44, NULL, NULL, 'Raisa', 'raisa', 'jonaki.global@gmail.com', NULL, 'customer', '', '', 'Q7TY8125v81qjzMfEIZA0lfEs', '$2y$10$wDP2yZYXlligeV5KMVVK5uBUochpup6NpkExuzaUqp8zaqKzJnZkK', 'cmFuYS5iZDEyMw==', 45496, '', '20', '', '', '', '', '', '', '', '', 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '2022-02-27', NULL, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 1, 1, NULL, 0, '', 0, 0, '2022-02-07 14:02:14', '2022-02-19 08:26:25', 'no', 0, NULL, NULL, 'https://doptorr.com/user-verify/Q7TY8125v81qjzMfEIZA0lfEs'),
(45, NULL, NULL, 'codecanor', 'codecanor', 'codecanor@gmail.com', NULL, 'vendor', '', NULL, 'G8d80AfJesloXZzIjCeb89yu0', '$2y$10$CprQkithh67qEUca.RWUuOO1CZK6IL8HvbtIIwwSgGZWYcyv5KZNO', 'MTIzNDU2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-08 07:40:24', '2022-02-08 08:44:16', 'no', 0, NULL, NULL, 'http://doptorr.com/user-verify/G8d80AfJesloXZzIjCeb89yu0'),
(46, NULL, NULL, 'IMCS', 'Dk', 'imcsdk@gmail.com', NULL, 'vendor', NULL, NULL, 'ICUwLJFXnUo3IISuMMxVodOx1', '$2y$10$UbgWrv7C6Vj5glB/aCgKhOU9riMXxnvznt6y.7e4LL0bGPxANb01a', 'cmFuYS5iZDEyMw==', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-08 12:14:36', '2022-02-08 12:14:36', 'no', 0, NULL, NULL, 'https://doptorr.com/user-verify/ICUwLJFXnUo3IISuMMxVodOx1'),
(47, NULL, NULL, 'Md Zahidul Islam', 'zahidulislam', 'mdzahid.pro@gmail.com', NULL, 'vendor', '', NULL, '2OinVo3XzE4bbM8x7Pw7fMIkb', '$2y$10$y9PvV5d/tYVi0oVr/3BfVeyOTu7TKibdKQJFmiIlJqsJWqTue8qkG', 'MDE0MDAxMjcxNzcjemFoaWQ=', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-09 11:59:28', '2022-02-09 12:11:46', 'no', 0, NULL, NULL, 'https://www.doptorr.com/user-verify/2OinVo3XzE4bbM8x7Pw7fMIkb'),
(48, NULL, NULL, 'Kazi Aftabur Rahman', 'aftab267', 'aftab267@gmail.com', NULL, 'vendor', '', NULL, 'vH2xSh5EVIaNI88XKYCbPAFDU', '$2y$10$J95aQfdn3YCPVjSZhvXu2.GSz5NNh65SvqCN1kYip1QmbwuJkMujC', 'QWZ0YWIxMjM0NTY/Pw==', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '2022-02-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-09 12:44:29', '2022-02-09 12:47:22', 'no', 0, NULL, NULL, 'https://doptorr.com/user-verify/vH2xSh5EVIaNI88XKYCbPAFDU'),
(49, NULL, NULL, 'Test', 'dgrg', 'mahamuda12smukhi@gmail.com', NULL, 'customer', '', NULL, '2OF8HGAZseQIoafKMVZyjoXoy', '$2y$10$8FZaC2s/qCTMoeL.p80tsemAjPyOlN4QGb9Z7GUou94zVO.9RLdzC', 'RDJzR3RSd0Z4cGM4VnFB', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-14 10:07:12', '2022-02-23 12:49:38', 'no', 0, NULL, NULL, 'http://www.doptorr.com/user-verify/2OF8HGAZseQIoafKMVZyjoXoy'),
(50, NULL, NULL, 'Rana', 'ranabd', 'rana.bangladesh@gmail.com', NULL, 'customer', '', NULL, 'f8qBwvfNvr8VceHE4YBctH2Vy', '$2y$10$Xfc.UajqfWbogHYIxlOVCOL1Pfl8zVzbuomRvcAKlKk7mXLM8BiR2', 'cmFuYS5iZDEyMw==', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '2022-02-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-15 17:36:15', '2022-02-15 17:37:17', 'no', 0, NULL, NULL, 'http://doptorr.com/user-verify/f8qBwvfNvr8VceHE4YBctH2Vy'),
(51, NULL, NULL, 'test Test', 'test', 'chaity@gmail.com', NULL, 'customer', '', NULL, 'W0puYJw0aD1k9ewsWs38w9KKE', '$2y$10$RjRNI8jE7tNq00cM5v/aS.5ku.h2fqky3DHG3gVKrOonh/LZK3S2G', 'RDJzR3RSd0Z4cGM4VnFB', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-22 09:33:31', '2022-02-22 12:47:34', 'no', 0, NULL, NULL, 'http://www.doptorr.com/user-verify/W0puYJw0aD1k9ewsWs38w9KKE'),
(52, NULL, NULL, 'rana', 'rana', 'imcsdk+121@gmail.com', NULL, 'customer', NULL, NULL, 'WUWPbtUUtM43aFKs75KEycbu0', '$2y$10$zAmk/w9XmaFb6fBrtVSF/.c4o4Rxw1WXz0Yk8gNw9rDSv7/l.wwza', 'cmFuYS5iZDEyMw==', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-25 15:32:07', '2022-02-25 15:32:07', 'no', 0, NULL, NULL, 'http://doptorr.com/user-verify/WUWPbtUUtM43aFKs75KEycbu0'),
(53, NULL, NULL, 'rana', 'rana1', 'imcsdk+124@gmail.com', NULL, 'customer', NULL, NULL, 'freyzMT4IcV7yYAkgaiEK0Y7C', '$2y$10$3MlT2ztYvK8T9StdmSR/AOL88h7TolWQ95oeCwaEPsIKM.pHfE1Tu', 'cmFuYS5iZDEyMw==', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-25 15:45:36', '2022-02-25 15:45:36', 'no', 0, NULL, NULL, 'http://doptorr.com/user-verify/freyzMT4IcV7yYAkgaiEK0Y7C'),
(54, NULL, NULL, 'rana', 'rana2', 'imcsdk+125@gmail.com', NULL, 'customer', NULL, NULL, '6LhoqvepVvAI1z5wfw565y4ai', '$2y$10$HxPMQvOTiD/Iwqn.KCm8euKxN3vrp0rkGj.dC5y2wIDmYfhc8ujCK', 'cmFuYS5iZDEyMw==', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-25 15:47:45', '2022-02-25 15:47:45', 'no', 0, NULL, NULL, 'http://doptorr.com/user-verify/6LhoqvepVvAI1z5wfw565y4ai'),
(55, NULL, NULL, 'rana', 'rana4', 'imcsdk+126@gmail.com', NULL, 'customer', NULL, NULL, '1jeOq857T5P0yoJgPOmPjhPgy', '$2y$10$6XjeQiBvW9..ipXgnvdLTOzP79HCaIcm2LTW4tiOWR.nZFJbjBvp.', 'cmFuYS5iZDEyMw==', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-25 15:52:50', '2022-02-25 15:52:50', 'no', 0, NULL, NULL, 'http://doptorr.com/user-verify/1jeOq857T5P0yoJgPOmPjhPgy'),
(56, NULL, NULL, 'rana', 'rana33', 'memyrana@gmail.com', NULL, 'customer', NULL, NULL, '46SI7E5yuoj9brjNI4FV6mlQv', '$2y$10$ugTUIuGwymS8m15chao8DOUeHdZVDjOZgERTmrienzK0oHfyaTmEq', 'MTIzNDU2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-26 09:23:18', '2022-02-26 09:23:18', 'yes', 0, NULL, NULL, 'http://www.doptorr.com/user-verify/46SI7E5yuoj9brjNI4FV6mlQv'),
(57, NULL, NULL, 'rana', 'rana99', 'memyrana@gmail.com', NULL, 'vendor', NULL, NULL, 'gGPAk2XRKUErjYUTUmTfhSUNK', '$2y$10$zXECl64o2ZdJ/ePAvgi0lOdHLAwtxnyWf2EQ0U.t9Ca3na2g.38UO', 'MTIzNDU2', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, 0, '0000-00-00', NULL, 0, 1000, 0, '0000-00-00', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '', 0, 0, '2022-02-26 09:26:41', '2022-02-26 09:26:41', 'no', 0, NULL, NULL, 'http://www.doptorr.com/user-verify/gGPAk2XRKUErjYUTUmTfhSUNK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_settings`
--
ALTER TABLE `additional_settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attr_id`);

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`badge_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_cat_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`conver_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`et_id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items_attributes`
--
ALTER TABLE `items_attributes`
  ADD PRIMARY KEY (`item_attribute_id`);

--
-- Indexes for table `items_data`
--
ALTER TABLE `items_data`
  ADD PRIMARY KEY (`itm_id`);

--
-- Indexes for table `items_favorite`
--
ALTER TABLE `items_favorite`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `items_images`
--
ALTER TABLE `items_images`
  ADD PRIMARY KEY (`itm_id`);

--
-- Indexes for table `item_checkout`
--
ALTER TABLE `item_checkout`
  ADD PRIMARY KEY (`chout_id`);

--
-- Indexes for table `item_comments`
--
ALTER TABLE `item_comments`
  ADD PRIMARY KEY (`comm_id`);

--
-- Indexes for table `item_comment_reply`
--
ALTER TABLE `item_comment_reply`
  ADD PRIMARY KEY (`comm_reply_id`);

--
-- Indexes for table `item_order`
--
ALTER TABLE `item_order`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `item_ratings`
--
ALTER TABLE `item_ratings`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `item_refund`
--
ALTER TABLE `item_refund`
  ADD PRIMARY KEY (`refund_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `item_withdrawal`
--
ALTER TABLE `item_withdrawal`
  ADD PRIMARY KEY (`wd_id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`keyword_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_packages`
--
ALTER TABLE `service_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `start_selling`
--
ALTER TABLE `start_selling`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`subscr_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_settings`
--
ALTER TABLE `additional_settings`
  MODIFY `sno` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `badge_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conversation`
--
ALTER TABLE `conversation`
  MODIFY `conver_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `dep_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `et_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `fid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `items_attributes`
--
ALTER TABLE `items_attributes`
  MODIFY `item_attribute_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1277;

--
-- AUTO_INCREMENT for table `items_data`
--
ALTER TABLE `items_data`
  MODIFY `itm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items_favorite`
--
ALTER TABLE `items_favorite`
  MODIFY `fav_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `items_images`
--
ALTER TABLE `items_images`
  MODIFY `itm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `item_checkout`
--
ALTER TABLE `item_checkout`
  MODIFY `chout_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `item_comments`
--
ALTER TABLE `item_comments`
  MODIFY `comm_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `item_comment_reply`
--
ALTER TABLE `item_comment_reply`
  MODIFY `comm_reply_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item_order`
--
ALTER TABLE `item_order`
  MODIFY `ord_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `item_ratings`
--
ALTER TABLE `item_ratings`
  MODIFY `rating_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `item_refund`
--
ALTER TABLE `item_refund`
  MODIFY `refund_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `item_withdrawal`
--
ALTER TABLE `item_withdrawal`
  MODIFY `wd_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `news_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `service_packages`
--
ALTER TABLE `service_packages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `start_selling`
--
ALTER TABLE `start_selling`
  MODIFY `st_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `subscr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
