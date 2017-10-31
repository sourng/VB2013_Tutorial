-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2017 at 05:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vb_training`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_cookies`
--

CREATE TABLE `ci_cookies` (
  `id` int(11) NOT NULL,
  `cookie_id` varchar(255) DEFAULT NULL,
  `netid` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `orig_page_requested` varchar(120) DEFAULT NULL,
  `php_session_id` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('d0b3d36ee094234355ab4e14783c2639', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', 1506844712, '');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `iso` char(2) NOT NULL DEFAULT '',
  `printable_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `iso`, `printable_name`, `iso3`, `numcode`) VALUES
(1, 'PA', 'Panama', 'PAN', 591),
(2, 'PG', 'Papua New Guinea', 'PNG', 598),
(3, 'PY', 'Paraguay', 'PRY', 600),
(4, 'PE', 'Peru', 'PER', 604),
(5, 'PH', 'Philippines', 'PHL', 608),
(6, 'KH', 'Cambodia', 'C', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL,
  `cus_fname` varchar(250) DEFAULT NULL,
  `cus_lname` varchar(250) DEFAULT NULL,
  `cus_gender` varchar(250) DEFAULT NULL,
  `cus_address` varchar(250) DEFAULT NULL,
  `cus_country` varchar(250) DEFAULT NULL,
  `cus_email` varchar(250) DEFAULT NULL,
  `cus_pass` varchar(250) DEFAULT NULL,
  `cus_picutre` varchar(250) DEFAULT NULL,
  `cus_note` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `cus_fname`, `cus_lname`, `cus_gender`, `cus_address`, `cus_country`, `cus_email`, `cus_pass`, `cus_picutre`, `cus_note`) VALUES
(1, 'Long', 'Dara', 'Male', 'Siem Reap', 'Cambodia', 'longdara@gmail.com', '123456', 'longdara.jpg', 'Top Guest'),
(2, 'Meas', 'Channa', 'F', 'Siem Reap', 'Cambodia', 'measchanna@gmail.com', '123456', 'measchanna.jpg', 'Top Guest');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `dest_id` bigint(20) NOT NULL,
  `destinations` varchar(250) DEFAULT NULL,
  `dest_landmark` varchar(250) DEFAULT NULL,
  `dest_description` varchar(250) DEFAULT NULL,
  `dest_interest` mediumtext,
  `thing_todo` mediumtext,
  `country` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`dest_id`, `destinations`, `dest_landmark`, `dest_description`, `dest_interest`, `thing_todo`, `country`) VALUES
(1, 'Ho Chi Minh City', 'Ho Chi Minh City.jpg', 'history, culture, markets', 'history, culture, markets', 'history, culture, markets', 'Vietnam '),
(2, 'Hanoi', 'Hanoi.jpg', 'history, culture, markets', 'history, culture, markets', 'history, culture, markets', 'Vietnam '),
(3, 'Siem Reap', 'Siem Reap.jpg', 'Prices in Siem Reap for your dates are the lowest we''ve seen in 40 days! ', 'temples, history, culture', 'history, culture, markets', 'Cambodia'),
(4, 'Phnom Penh', 'Phnom Penh.jpg', 'Prices in Siem Reap for your dates are the lowest we''ve seen in 40 days! ', 'history, culture, markets', 'history, culture, markets', 'Cambodia'),
(5, 'Bank Kok', 'Bank Kok.jpg', 'Prices in Siem Reap for your dates are the lowest we''ve seen in 40 days! ', 'beaches, sandy beaches, relaxation', 'beaches, sandy beaches, relaxation', 'Thailand'),
(6, 'Cheang Mai', 'Cheang Mai.jpg', 'Prices in Siem Reap for your dates are the lowest we''ve seen in 40 days! ', 'temples, history, culture', 'temples, history, culture', 'Thailand'),
(7, 'Koshkong', 'Cheang Mai(1).jpg', 'Prices in Siem Reap for your dates are the lowest we''ve seen in 40 days!', 'temples, history, culture', 'temples, history, culture', 'Cambodia');

-- --------------------------------------------------------

--
-- Table structure for table `destinations2`
--

CREATE TABLE `destinations2` (
  `dest_id` int(11) NOT NULL,
  `dest_name` varchar(250) DEFAULT '0',
  `dest_logo` varchar(250) DEFAULT '0',
  `dest_desc` text,
  `dest_meta_desc` varchar(250) DEFAULT '0',
  `dest_meta_key` varchar(250) DEFAULT '0',
  `dest_feature_image` varchar(250) DEFAULT '0',
  `country_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `facil_id` int(11) NOT NULL,
  `facil_name` varchar(250) DEFAULT NULL,
  `facil_image` varchar(250) DEFAULT NULL,
  `facil_icon` varchar(250) DEFAULT NULL,
  `facil_hot` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`facil_id`, `facil_name`, `facil_image`, `facil_icon`, `facil_hot`) VALUES
(1, 'Wi-Fi Internet', NULL, '<li><i class="im im-wi-fi"></i><span class="booking-item-feature-title">Wi-Fi Internet</span> </li>', 'Y'),
(2, 'Parking', NULL, ' <li><i class="im im-parking"></i><span class="booking-item-feature-title">Parking</span>   </li>', 'Y'),
(3, 'Airport Transport', NULL, '  <li><i class="im im-plane"></i><span class="booking-item-feature-title">Airport Transport</span> </li>', 'Y'),
(4, 'Shuttle Bus Service', NULL, ' <li><i class="im im-bus"></i><span class="booking-item-feature-title">Shuttle Bus Service</span> </li>', 'Y'),
(5, 'Pool', NULL, '<li><i class="im im-pool"></i><span class="booking-item-feature-title">Pool</span> </li>', 'Y'),
(6, 'Restaurant', NULL, ' <li><i class="im im-restaurant"></i><span class="booking-item-feature-title">Restaurant</span></li>', 'Y'),
(7, 'Spa', NULL, '<li><i class="im im-spa"></i><span class="booking-item-feature-title">SPA</span></li>', 'Y'),
(8, 'Fitness Center', NULL, '<li><i class="im im-fitness"></i><span class="booking-item-feature-title">Fitness Center</span> </li>', 'Y'),
(9, 'Wheelchair Access', NULL, '<li><i class="im im-wheel-chair"></i><span class="booking-item-feature-title">Wheelchair Access</span></li>', 'Y'),
(10, 'Business Center', NULL, '<li><i class="im im-business-person"></i><span class="booking-item-feature-title">Business Center</span></li>', 'Y'),
(11, 'Children Activites', NULL, '<li><i class="im im-children"></i><span class="booking-item-feature-title">Children Activites</span></li>', 'Y'),
(12, 'Casino &amp; Gambling', NULL, '<li><i class="im im-casino"></i><span class="booking-item-feature-title">Casino & Gambling</span></li>', 'Y'),
(13, 'Bar/Lounge', NULL, '<li><i class="im im-bar"></i><span class="booking-item-feature-title">Bar/Lounge</span></li>', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `facilities_hotels`
--

CREATE TABLE `facilities_hotels` (
  `facil_hotel_id` bigint(20) NOT NULL,
  `hotel_id` int(11) NOT NULL DEFAULT '0',
  `facil_id` int(11) NOT NULL DEFAULT '0',
  `notes` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facilities_hotels`
--

INSERT INTO `facilities_hotels` (`facil_hotel_id`, `hotel_id`, `facil_id`, `notes`) VALUES
(1, 1, 1, '0'),
(2, 1, 2, NULL),
(3, 1, 3, NULL),
(4, 1, 4, NULL),
(5, 1, 5, NULL),
(6, 1, 6, NULL),
(7, 2, 1, NULL),
(8, 2, 2, NULL),
(9, 2, 4, NULL),
(10, 2, 5, NULL),
(11, 2, 7, NULL),
(12, 3, 2, NULL),
(13, 3, 4, NULL),
(14, 4, 1, NULL),
(15, 5, 2, NULL),
(16, 6, 2, NULL),
(17, 7, 1, NULL),
(18, 8, 4, NULL),
(19, 9, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` bigint(30) NOT NULL,
  `h_name` varchar(250) DEFAULT NULL,
  `h_slug` varchar(250) DEFAULT NULL,
  `h_feature_image` varchar(250) DEFAULT NULL,
  `h_description` text,
  `h_meta_key` text,
  `h_deatail` longtext,
  `h_facilities` longtext,
  `h_address` varchar(250) DEFAULT NULL,
  `h_create` timestamp NULL DEFAULT NULL,
  `dest_id` bigint(20) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `whylike` longtext,
  `lang_spoken` longtext,
  `map` longtext,
  `what_todo` longtext,
  `h_id_cod` varchar(250) DEFAULT NULL COMMENT 'code login',
  `h_email` varchar(250) DEFAULT NULL COMMENT 'email login',
  `h_contact_name` varchar(250) DEFAULT NULL COMMENT 'Name Contact',
  `h_pass` varchar(250) DEFAULT NULL COMMENT 'Pass Login',
  `h_contact_phone` varchar(250) DEFAULT NULL COMMENT 'who controll web',
  `h_site` varchar(250) DEFAULT NULL,
  `contact_fax` varchar(250) DEFAULT NULL COMMENT 'Hotel Fax',
  `star_rating` varchar(250) DEFAULT NULL COMMENT '5 Stars',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date Register',
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When Some one update',
  `h_online_status` enum('Y','N') DEFAULT NULL COMMENT 'Y for You online(Login)',
  `hotel_blocked` enum('Y','N') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `h_name`, `h_slug`, `h_feature_image`, `h_description`, `h_meta_key`, `h_deatail`, `h_facilities`, `h_address`, `h_create`, `dest_id`, `province`, `whylike`, `lang_spoken`, `map`, `what_todo`, `h_id_cod`, `h_email`, `h_contact_name`, `h_pass`, `h_contact_phone`, `h_site`, `contact_fax`, `star_rating`, `create_date`, `update_date`, `h_online_status`, `hotel_blocked`) VALUES
(1, 'Borie Angkor Hotel', 'Borie-Angkor-Hotel', 'hotel_0003.jpg', 'Ree Hotel siem Reap Angkor', 'Ree Hotel,Hotel Siem Reap', 'Detail Ree Hotels', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,\r\n\r\n', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia ', '2017-06-13 12:18:46', 3, 'Siem Reap', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '  <p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', NULL, 'youremail@gmail.com', NULL, NULL, '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '2', '2017-10-20 20:56:31', '2017-10-20 20:56:31', 'N', 'N'),
(2, 'Tanei Boutique Villa agoda 2', 'Tanei-Boutique-Villa-agoda-2', 'hotel_0004.jpg', 'Ree Hotel siem Reap Angkor', 'Ree Hotel,Hotel Siem Reap', 'Detail Ree Hotels Detail Ree HotelsDetail Ree Hotels', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia', '2017-06-13 12:18:46', 3, 'Siem Reap', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<i<x>frame src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '<p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', 'CODE092', 'youreamil@gmail.com', 'Seng Sourng', '123456', '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '3', '2017-10-26 13:32:44', '2017-10-26 13:32:44', 'N', 'N'),
(3, 'Laresiden Angkor', 'Laresiden-Angkor', 'hotel_0005.jpg', 'Featuring an outdoor pool, Popular Residence offers elegant and comfortable accommodation with free WiFi access in its public areas. It operates a 24-hour front desk and provides free bike rentals.\r\n\r\nThe property is within 2 km from Angkor Trade Centre and the famous Pub Street. The UNESCO World Heritage Site of Angkor Wat Temples are 8 km away, while Siem Reap International Airport is accessible with a 10 km drive. The property offers complimentary airport transfers and one-way shuttle services to the city centre.', 'Ree Hotel,Hotel Siem Reap', '\r\n\r\nFitted with parquet flooring, air-conditioned rooms and suites include a balcony, in-room safe, a flat-screen cable TV and seating area. Electric kettle, a fridge, minibar and ironing facilities are also provided. Offering shower facility, the en suite bathroom also has bathtub, free toiletries and bathrobes.\r\n\r\nAt Popular Residence, guests may utilise the sauna facility and enjoy a relaxing massage at the spa. The friendly staff is happy to assist with laundry services, tour arrangements and business facilities. Airport transfer and shuttle service is available at a surcharge. The property offers free use of bicycles for guests who wish to explore the surrounding area.\r\n\r\nThe in-house restaurant serves a variety of local and international dishes. Barbecue facilities are provided while drinks are offered at the bar.\r\n\r\nCouples in particular like the location – they rated it 8 for a two-person trip.\r\n\r\nThis property is also rated for the best value in Siem Reap! Guests are getting more for their money when compared to other properties in this city.\r\n\r\nWe speak your language!\r\n\r\nPopular Residence Hotel has been welcoming Booking.com guests since Oct 20, 2014', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,\r\n\r\n', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia ', '2017-06-13 12:18:46', 5, 'Bank Kok', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '  <p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', NULL, 'myemail@gmail.com', NULL, NULL, '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '2', '2017-10-20 20:57:18', '2017-10-20 20:57:18', 'N', 'N'),
(4, 'Soka Angkor Hotel', 'Soka-Angkor-Hotel', 'hotel_0007.jpg', 'Located only 7 km from the stunning Angkor Wat ruins, Le Tigre Hotel is a statuesque colonial-style villa in the heart of Siem Reap. It has an in-house restaurant and features a tropical garden and a saltwater pool. Free Wi-Fi is available.\r\n\r\nRooms feature tiled floors and blends traditional woodwork panelling with contempory furnishing. Its air-conditioned rooms offer 24-inch flat-screen TVs. There is also a well-stocked minibar and a safe box in each room.', 'Ree Hotel,Hotel Siem Reap', '\r\n\r\nLe Tigre Hotel is located in the heart of Siem Reap on Sok San Road, a lively area abundant with restaurants and locally-owned shops. It is a 3-minute ride to the Old Market, Pub Street and the Night Market. Angkor Wat is approximately 20 minutes away.\r\n\r\nGuests can enjoy many dining options at the hotel''s in-house restaurant and bar nestled within the gardens.\r\n\r\nLe Tigre offers free scheduled tuk tuk rides to Pub Street and Old Market. Staff at the reception desk can provide bicycle and car rentals.\r\n\r\nThis is our guests'' favorite part of Siem Reap, according to independent reviews.\r\n\r\nCouples in particular like the location – they rated it 9 for a two-person trip.\r\n\r\nThis property is also rated for the best value in Siem Reap! Guests are getting more for their money when compared to other properties in this city.\r\n\r\nWe speak your language!\r\n\r\nLe Tigre Hotel has been welcoming Booking.com guests since Jul 28, 2011', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,\r\n\r\n', 'Sok San Road, Steung tmay villa Siem Reap, Cambodia, Siem Reap, Cambodia ', '2017-06-13 12:18:46', 3, 'Siem Reap', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '  <p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', NULL, 'myemail@gmail.com', NULL, NULL, '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '4', '2017-10-20 20:57:19', '2017-10-20 20:57:19', 'N', 'N'),
(5, 'Green Botique Hotel', 'Green-Botique-Hotel', 'hotel_0003.jpg', 'Ree Hotel siem Reap Angkor', 'Ree Hotel,Hotel Siem Reap', 'Detail Ree Hotels', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,\r\n\r\n', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia ', '2017-06-13 12:18:46', 2, 'Siem Reap', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '  <p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', NULL, 'myemail@gmail.com', NULL, NULL, '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '2', '2017-10-20 20:57:19', '2017-10-20 20:57:19', 'N', 'N'),
(6, 'Laresidan Bugique Hotel', 'Laresidan-Bugique-Hotel', 'hotel_0003.jpg', 'Ree Hotel siem Reap Angkor', 'Ree Hotel,Hotel Siem Reap', 'In a striking building of Bangkok''s skyline, Amari Boulevard is in Sukhumvit 5, only a quarter mile from Nana BTS Skytrain Station. It features a roof-top pool and modern rooms with floor-to-ceiling windows and free WiFI access in all areas.', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,\r\n\r\n', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia ', '2017-06-13 12:18:46', 1, 'Siem Reap', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '  <p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', NULL, 'myemail@gmail.com', NULL, NULL, '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '0', '2017-10-20 20:57:20', '2017-10-20 20:57:20', 'N', 'N'),
(7, 'Phnom Penh Hotel', 'Phnom-Penh-Hotel', 'hotel_0003.jpg', 'Ree Hotel siem Reap Angkor', 'Ree Hotel,Hotel Siem Reap', 'In a striking building of Bangkok''s skyline, Amari Boulevard is in Sukhumvit 5, only a quarter mile from Nana BTS Skytrain Station. It features a roof-top pool and modern rooms with floor-to-ceiling windows and free WiFI access in all areas.', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia', '2017-06-13 12:18:46', 4, 'Siem Reap', '<!-- Custom link field -->\r\n<div class="customer-like">\r\n<h2>Nearest transport</h2>\r\n\r\n<ul>\r\n	<li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n</ul>\r\n</div>\r\n<!-- End Custom link field --><!-- Custom link field -->\r\n\r\n<div class="customer-like">\r\n<h4>Distance to airport</h4>\r\n\r\n<ul>\r\n	<li>London Heathrow Airport (17.0 Km)</li>\r\n	<li>London City Airport (18.3 Km)</li>\r\n</ul>\r\n</div>\r\n<!-- End Custom link field --><!-- Custom link field -->\r\n\r\n<div class="customer-like">Nearest transportCustomer comments\r\n<ul>\r\n	<li>Comfortable and clean, Friendly staff, Value for money</li>\r\n</ul>\r\n</div>\r\n<!-- End Custom link field --><!-- Custom link field -->\r\n\r\n<div class="customer-like">\r\n<h1>Top attractions in the area</h1>\r\n\r\n<ul>\r\n	<li>Westfield London (0.9 Km / 11 min walk)</li>\r\n	<li>Natural History Museum (2.6 Km)</li>\r\n	<li>Victoria and Albert Museum (2.9 Km)</li>\r\n	<li>Hyde Park (3.0 Km)</li>\r\n</ul>\r\n</div>\r\n<!-- End Custom link field -->', 'Khmer, English', '<i<x>frame src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '<p><strong>Shop.</strong> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).</p>\r\n\r\n<p><strong>Thai Done Right.</strong> Eat like a spice-loving local at Gallery Caf&eacute; &mdash; we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).</p>\r\n\r\n<p><strong>Stop and Smell.</strong> The fragrant <a href="#">Pak Klong Talaad</a>, is the country&rsquo;s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.</p>', NULL, 'sengsourng@gmail.com', 'Seng Sourng', '123456789', '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '4', '2017-10-20 20:57:21', '2017-10-20 20:57:21', 'N', 'N'),
(8, 'Ree Hotel', 'Ree-Hotel', 'paris.jpg', 'Ree Hotel siem Reap Angkor', 'Ree Hotel,Hotel Siem Reap', 'In a striking building of Bangkok''s skyline, Amari Boulevard is in Sukhumvit 5, only a quarter mile from Nana BTS Skytrain Station. It features a roof-top pool and modern rooms with floor-to-ceiling windows and free WiFI access in all areas.', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia', '2017-06-13 12:18:46', 1, 'Siem Reap', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<i<x>frame src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '<p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', NULL, 'sengsourng@gmail.com', NULL, NULL, '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '2', '2017-10-20 20:57:21', '2017-10-20 17:00:00', 'N', 'N'),
(9, 'Kemara Hotel', 'Kemara-Hotel', 'Phnom Kullen 06.jpg', 'Ree Hotel siem Reap Angkor', 'Ree Hotel,Hotel Siem Reap', 'In a striking building of Bangkok''s skyline, Amari Boulevard is in Sukhumvit 5, only a quarter mile from Nana BTS Skytrain Station. It features a roof-top pool and modern rooms with floor-to-ceiling windows and free WiFI access in all areas.', '<i class="fa fa-wifi fa-2x"></i>,\r\n<i class="fa fa-coffee fa-2x" aria-hidden="true"></i>,\r\n<i class="fa fa-taxi fa-2x" aria-hidden="true"></i>,', 'Sala Lodge Rd, Sala Kamroeuk Village, Siem Reap, Cambodia', '2017-06-13 12:18:46', 1, 'Siem Reap', '<!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Shepherd''s Bush (Central) Tube Station (0.5 Km / 6 min walk)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Distance to airport\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li> London Heathrow Airport (17.0 Km)</li>\r\n                                        <li>London City Airport (18.3 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Nearest transportCustomer comments\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Comfortable and clean, Friendly staff, Value for money</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->\r\n\r\n                                <!-- Custom link field -->\r\n                                <div class="customer-like">\r\n                                    <span class="cs-like-label">\r\n                                        Top attractions in the area\r\n                                    </span>\r\n                                    <ul>\r\n                                        <li>Westfield London (0.9 Km / 11 min walk)</li>\r\n                                        <li>Natural History Museum (2.6 Km)</li>\r\n                                        <li>Victoria and Albert Museum (2.9 Km)</li>\r\n                                        <li>Hyde Park (3.0 Km)</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <!-- End Custom link field -->', 'Khmer, English', '<i<x>frame src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3881.8118580552687!2d103.86732571398757!3d13.361971909809283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3110179e476ef0d7%3A0x6ae2692e799bdcfb!2sRPITSSR!5e0!3m2!1sen!2skh!4v1500999271143" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '<p>\r\n                                        <b>Shop.</b> At the quirky Thai Home Industries, troll for stainless steel flatware inspired by upcountry farm tools that are part of the MoMA design collection (35 Oriental Avenue; 662-234-1736).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Thai Done Right.</b> Eat like a spice-loving local at Gallery Café — we love the crispy prawn cakes, <a href="#">Thai tuna salad</a> tossed with slivers of powerful chilies, and succulent chicken wrapped in pandanus leaves (86-100 Soi Captain Bush; 662-639-5580).\r\n                                    </p>\r\n                                    <p>\r\n                                        <b>Stop and Smell.</b> The fragrant <a href="#">Pak Klong Talaad</a>, is the country’s most important wholesale flower market. The buying and selling frenzy starts around 2 a.m., when boats begin to dock near Memorial Bridge with a cornucopia of fresh flowers including orchids, marigolds, zinnias, jasmine and, of course, roses.\r\n                                    </p>', NULL, 'sengsourng@gmail.com', NULL, NULL, '(855)92771244', 'http://www.yoursite.com', '(855)92771244', '4', '2017-10-20 20:57:22', '2017-10-20 17:00:00', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `hotels_gallery`
--

CREATE TABLE `hotels_gallery` (
  `hg_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_id` bigint(20) NOT NULL,
  `images` varchar(250) DEFAULT NULL,
  `image_for` enum('H','G') DEFAULT 'H'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels_gallery`
--

INSERT INTO `hotels_gallery` (`hg_id`, `hotel_id`, `room_id`, `images`, `image_for`) VALUES
(1, 1, 1, NULL, 'H');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_booking`
--

CREATE TABLE `hotel_booking` (
  `booking_id` bigint(20) NOT NULL,
  `hroom_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `room_type` varchar(250) NOT NULL,
  `max_adult` int(11) DEFAULT NULL,
  `max_child` int(11) DEFAULT NULL,
  `cus_email` varchar(250) DEFAULT NULL,
  `cus_passport` varchar(250) DEFAULT NULL,
  `cus_pickup` varchar(250) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `max_day_stay` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `booking_status` int(11) DEFAULT NULL COMMENT '0 Cancel, 1 Confirmed , 2 Pending',
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_booking`
--

INSERT INTO `hotel_booking` (`booking_id`, `hroom_id`, `customer_id`, `hotel_id`, `room_type`, `max_adult`, `max_child`, `cus_email`, `cus_passport`, `cus_pickup`, `check_in`, `check_out`, `max_day_stay`, `total_amount`, `booking_status`, `notes`) VALUES
(1, 1, 1, 1, '2', 3, 1, 'sengsourng@gmail.com', 'N098833', 'Yes', '2017-10-21 01:55:52', '2017-10-23 01:55:56', 2, '500.00', 2, 'No Smoking Room');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facilities`
--

CREATE TABLE `hotel_facilities` (
  `hfacility_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `hf_name` varchar(250) DEFAULT NULL,
  `hf_image` varchar(250) DEFAULT NULL,
  `hf_icons` varchar(250) DEFAULT NULL,
  `status` enum('Y','N') DEFAULT NULL,
  `hot_facilities` enum('Y','N') DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_facilities`
--

INSERT INTO `hotel_facilities` (`hfacility_id`, `hotel_id`, `hf_name`, `hf_image`, `hf_icons`, `status`, `hot_facilities`) VALUES
(1, 1, 'Wi-Fi Internet', 'wifi.png', '<i class="im im-wi-fi"></i>', 'Y', 'Y'),
(2, 1, 'Parking', 'Free breakfast.png', '<i class="im im-parking"></i>', 'N', 'Y'),
(3, 1, 'Airport Transport', 'Spa service.png', '<i class="im im-plane"></i>', 'Y', 'Y'),
(4, 1, 'Shuttle Bus Service', 'Restaurant.png', '<i class="im im-bus"></i>', 'N', 'Y'),
(5, 1, 'Fitness Center', 'Sauna service.png', '<i class="im im-fitness"></i>', 'Y', 'N'),
(6, 1, 'Pool', 'Swimming pool.png', '<i class="im im-pool"></i>', 'N', 'Y'),
(7, 1, 'SPA', 'Smoking area.png', '<i class="im im-spa"></i>', 'Y', 'N'),
(8, 1, 'Restaurant', 'Hair dryer.png', '<i class="im im-restaurant"></i>', 'Y', 'Y'),
(9, 1, 'Wheelchair Access', 'Restaurant.png', '<i class="im im-wheel-chair"></i>', 'Y', 'N'),
(10, 1, 'Business Center', 'Airport transfer.png', '<i class="im im-business-person"></i>', 'Y', 'Y'),
(11, 1, 'Children Activites', 'Laundry service.png', '<i class="im im-children"></i>', 'Y', 'N'),
(12, 1, 'Casino & Gambling', '24-hour front desk.png', '<i class="im im-casino"></i>', 'Y', 'N'),
(13, 1, 'Bar/Lounge', 'Casino.png', '<i class="im im-bar"></i>', 'Y', 'N'),
(15, 2, ' Airport transfer', 'Airport transfer.png', '<i class="im im-plane"></i>', 'Y', 'Y'),
(16, 2, '24-hour front desk', '24-hour front desk.png', NULL, 'Y', 'N'),
(17, 3, '24-hour front desk', '24-hour front desk.png', NULL, 'Y', 'N'),
(18, 2, 'Spa service', 'Spa service.png', NULL, 'Y', 'Y'),
(19, 3, '24-hour front desk', 'Casino.png', NULL, 'Y', 'Y'),
(20, 4, 'Business center', 'Laundry service.png', NULL, 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_gallery`
--

CREATE TABLE `hotel_gallery` (
  `hgallery_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `hg_img1` varchar(250) DEFAULT NULL,
  `hg_img2` varchar(250) DEFAULT NULL,
  `hg_img3` varchar(250) DEFAULT NULL,
  `hg_img4` varchar(250) DEFAULT NULL,
  `hg_img5` varchar(250) DEFAULT NULL,
  `hg_img6` varchar(250) DEFAULT NULL,
  `hg_img7` varchar(250) DEFAULT NULL,
  `hg_img8` varchar(250) DEFAULT NULL,
  `hg_img9` varchar(250) DEFAULT NULL,
  `hg_img10` varchar(250) DEFAULT NULL,
  `hg_img11` varchar(250) DEFAULT NULL,
  `hg_img12` varchar(250) DEFAULT NULL,
  `hg_img13` varchar(250) DEFAULT NULL,
  `hg_img14` varchar(250) DEFAULT NULL,
  `hg_img15` varchar(250) DEFAULT NULL,
  `hg_img16` varchar(250) DEFAULT NULL,
  `hg_img17` varchar(250) DEFAULT NULL,
  `hg_img18` varchar(250) DEFAULT NULL,
  `hg_img19` varchar(250) DEFAULT NULL,
  `hg_img20` varchar(250) DEFAULT NULL,
  `hg_img21` varchar(250) DEFAULT NULL,
  `hg_img22` varchar(250) DEFAULT NULL,
  `hg_img23` varchar(250) DEFAULT NULL,
  `hg_img24` varchar(250) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_gallery`
--

INSERT INTO `hotel_gallery` (`hgallery_id`, `hotel_id`, `hg_img1`, `hg_img2`, `hg_img3`, `hg_img4`, `hg_img5`, `hg_img6`, `hg_img7`, `hg_img8`, `hg_img9`, `hg_img10`, `hg_img11`, `hg_img12`, `hg_img13`, `hg_img14`, `hg_img15`, `hg_img16`, `hg_img17`, `hg_img18`, `hg_img19`, `hg_img20`, `hg_img21`, `hg_img22`, `hg_img23`, `hg_img24`, `last_update`) VALUES
(1, 1, 'angkor-attic-villa-1.jpg', 'angkor-attic-villa-4.jpg', 'angkor-attic-villa-3.jpg', 'angkor-attic-villa-4.jpg', 'angkor-attic-villa-5.jpg', 'angkor-attic-villa-6.jpg', 'angkor-attic-villa-7.jpg', 'angkor-attic-villa-8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-31 20:06:32'),
(2, 2, 'angkor-attic-villa-1.jpg', 'angkor-attic-villa-2.jpg', 'angkor-attic-villa-3.jpg', 'angkor-attic-villa-4.jpg', 'angkor-attic-villa-5.jpg', 'angkor-attic-villa-6.jpg', 'angkor-attic-villa-7.jpg', 'angkor-attic-villa-8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-31 19:34:03'),
(3, 3, 'angkor-attic-villa-1.jpg', 'angkor-attic-villa-2.jpg', 'angkor-attic-villa-3.jpg', 'angkor-attic-villa-4.jpg', 'angkor-attic-villa-5.jpg', 'angkor-attic-villa-6.jpg', 'angkor-attic-villa-7.jpg', 'angkor-attic-villa-8.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-31 19:34:04');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_policy`
--

CREATE TABLE `hotel_policy` (
  `hotel_policy_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `policy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_policy`
--

INSERT INTO `hotel_policy` (`hotel_policy_id`, `hotel_id`, `policy_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1),
(5, 4, 2),
(6, 5, 2),
(7, 6, 3),
(8, 7, 3),
(9, 8, 2),
(10, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `hroom_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `rt_id` bigint(20) NOT NULL COMMENT 'Room Type',
  `hr_name` varchar(250) DEFAULT NULL,
  `hr_image` varchar(250) DEFAULT NULL,
  `hr_description` mediumtext,
  `amenities` mediumtext COMMENT 'What is there in this room',
  `hr_max` int(11) DEFAULT NULL COMMENT 'How many rooms?',
  `hr_base_rate` decimal(10,2) DEFAULT NULL COMMENT 'Base Rate For Sell',
  `hr_status` enum('Y','N') DEFAULT NULL COMMENT 'Y for Sell, N not Sell'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`hroom_id`, `hotel_id`, `rt_id`, `hr_name`, `hr_image`, `hr_description`, `amenities`, `hr_max`, `hr_base_rate`, `hr_status`) VALUES
(1, 1, 1, 'Deluxe Room', '1 (1).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 2, '200.00', 'N'),
(2, 1, 2, 'Twin Room', '1 (2).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 3, '220.00', 'Y'),
(3, 1, 3, 'Twin Room', '1 (3).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 3, '220.00', 'Y'),
(4, 2, 1, 'Twin Room', '1 (4).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 3, '220.00', 'Y'),
(5, 2, 2, 'Twin Room', '1 (5).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 3, '220.00', 'Y'),
(6, 2, 3, 'Twin Room', '1 (6).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 3, '220.00', 'Y'),
(7, 3, 1, 'Twin Room', '1 (1).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 3, '220.00', 'Y'),
(8, 3, 2, 'Twin Room', '1 (1).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water', 3, '220.00', 'Y'),
(9, 3, 3, 'Twin Room', '1 (1).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water,Room Service', 3, '220.00', 'Y'),
(10, 4, 1, 'Twin Room', '1 (3).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water,Room Service', 3, '220.00', 'Y'),
(11, 4, 2, 'Twin Room', '1 (3).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water,Room Service', 3, '220.00', 'Y'),
(12, 5, 3, 'Twin Room', '1 (3).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water,Room Service', 3, '220.00', 'Y'),
(13, 5, 1, 'Twin Room', '1 (6).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water,Room Service', 3, '220.00', 'Y'),
(14, 6, 2, 'Twin Room', '1 (6).jpg', 'adfsdfasdfsd', 'WiFi,TV, Hot Water,Room Service', 3, '220.00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room_gallery`
--

CREATE TABLE `hotel_room_gallery` (
  `hrgallery_id` bigint(20) NOT NULL,
  `hroom_id` bigint(20) NOT NULL,
  `hrg_image1` varchar(250) DEFAULT NULL,
  `hrg_image2` varchar(250) DEFAULT NULL,
  `hrg_image3` varchar(250) DEFAULT NULL,
  `hrg_image4` varchar(250) DEFAULT NULL,
  `hrg_image5` varchar(250) DEFAULT NULL,
  `hrg_image6` varchar(250) DEFAULT NULL,
  `hrg_image7` varchar(250) DEFAULT NULL,
  `hrg_image8` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `policy_id` int(11) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `policy_code` varchar(150) DEFAULT NULL,
  `policy_name` varchar(250) DEFAULT NULL,
  `policy_detail` longtext,
  `policy_note` longtext,
  `policy_for` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`policy_id`, `hotel_id`, `policy_code`, `policy_name`, `policy_detail`, `policy_note`, `policy_for`) VALUES
(1, 1, '1DNS', 'One Day no show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Hotel'),
(2, 2, '2DNS', 'Two Day no show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Hotel'),
(3, 3, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(4, 4, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(5, 5, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(6, 5, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(7, 6, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(8, 7, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(9, 8, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(10, 9, '3DNS', 'Three Day no Show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Car'),
(11, 1, '2DNS', 'Two Day no show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Hotel'),
(12, 1, '2DNS', 'Two Day no show', 'You asked, Font Awesome delivers with 41 shiny new icons in version 4.7. Want to request new icons? Here''s how. Need vectors or want to use on the desktop?', NULL, 'Hotel');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `rt_id` int(11) NOT NULL,
  `rt_name` varchar(250) DEFAULT NULL,
  `rt_image` varchar(250) DEFAULT NULL,
  `rt_note` varchar(250) DEFAULT NULL,
  `rt_status` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`rt_id`, `rt_name`, `rt_image`, `rt_note`, `rt_status`) VALUES
(1, 'Room Type 1', 'bed1.png', NULL, 'Y'),
(2, 'Room Type 2', 'bed2.png', NULL, 'Y'),
(3, 'Room Type 3', 'bed3.png', NULL, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `selling_rooms`
--

CREATE TABLE `selling_rooms` (
  `sell_room_id` bigint(20) NOT NULL,
  `hroom_id` bigint(20) NOT NULL,
  `hotel_id` bigint(20) NOT NULL,
  `rt_id` bigint(20) NOT NULL COMMENT 'Room Type ID',
  `sell_date` datetime DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `month` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `base_rate` decimal(10,2) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `room_sell` int(11) DEFAULT NULL COMMENT 'Room For Sell',
  `room_sold` enum('Y','N') DEFAULT NULL COMMENT 'Room Already Sell',
  `room_closed` enum('Y','N') DEFAULT NULL,
  `room_status` enum('Y','N') DEFAULT NULL COMMENT 'Room Avalable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `selling_rooms`
--

INSERT INTO `selling_rooms` (`sell_room_id`, `hroom_id`, `hotel_id`, `rt_id`, `sell_date`, `day`, `month`, `year`, `max_people`, `base_rate`, `discount`, `room_sell`, `room_sold`, `room_closed`, `room_status`) VALUES
(1, 1, 1, 1, '2017-10-21 20:47:10', '21', '10', '2017', 3, '300.00', 30, 270, 'Y', 'Y', 'Y'),
(2, 2, 1, 2, '2017-10-21 20:47:10', '21', '10', '2017', 2, '200.00', 30, 170, 'N', 'N', 'Y'),
(3, 3, 1, 3, '2017-10-21 20:47:10', '21', '10', '2017', 1, '100.00', 30, 70, 'N', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) DEFAULT NULL,
  `service_desc` varchar(250) DEFAULT NULL,
  `service_icon` varchar(250) DEFAULT NULL,
  `service_image` varchar(250) DEFAULT NULL,
  `service_link` varchar(250) DEFAULT '#',
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `service_desc`, `service_icon`, `service_image`, `service_link`, `status`) VALUES
(1, 'Best Price Guarantee', 'ហ៊ាន​ធានានូវ​តម្លៃ​ Habitant pulvinar nostra himenaeos pulvinar facilisi dui tincidunt luctus condimentum', 'fa fa-dollar', NULL, '#', 1),
(2, 'Combine & Save', 'Hendrerit pretium magna ultricies massa dignissim mi praesent et justo sed platea est cras penatibus fermentum neque', 'fa fa-briefcase', NULL, '#', 1),
(3, 'Best Destinations', 'Morbi vel nec sed imperdiet accumsan ultricies aliquet suspendisse placerat feugiat tellus platea fermentum eros in commodo', 'fa fa-send', NULL, '#', 1),
(4, 'Best Travel Agent', 'Quisque porta dolor scelerisque gravida commodo in accumsan ullamcorper laoreet nam litora senectus diam sapien hac turpis', 'fa fa-thumbs-o-up', NULL, '#', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `site_name` varchar(250) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `fax` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `gplus` varchar(250) DEFAULT NULL,
  `youtube` varchar(250) DEFAULT NULL,
  `linkin` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `site_name`, `logo`, `phone`, `fax`, `email`, `address`, `note`, `facebook`, `twitter`, `gplus`, `youtube`, `linkin`) VALUES
(1, 'Bravobookus', 'bravobookus smal Logo(1).PNG', '+855 70 87 77 27', '+855 78 87 77 27', 'info@i1booking.com', 'Vihear Chin, Svay Dang Kom Commune, Siem Reap City, Cambodia.', 'We''re  small indepensent company based out of Siem Reap, Cambodia. We provide an easy and convenient booking service for land transportation, guided tours and accomodation, all of which are accessible in English.', '#', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Table structure for table `test_add`
--

CREATE TABLE `test_add` (
  `id` int(11) NOT NULL,
  `field1` varchar(250) DEFAULT NULL,
  `field2` text,
  `field3` text,
  `field4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_add`
--

INSERT INTO `test_add` (`id`, `field1`, `field2`, `field3`, `field4`) VALUES
(15, 'AK', '<i class="im im-wi-fi">WiFi</i>\r\n<i class="fa fa-coffee" aria-hidden="true"> Coffe</i>\r\n<i class="fa fa-taxi " aria-hidden="true"></i><i class="fa fa-taxi " aria-hidden="true"> Taxi</i><i class="fa fa-taxi " aria-hidden="true"></i>', 'AK', NULL),
(16, 'AK', '<i class="im im-plane"></i>, <i class="im im-bus"></i>, <i class="im im-spa"></i>, <i class="im im-fitness"></i>', 'AK', NULL),
(17, 'AK', '<li><i class="im im-wi-fi"></i><span class="booking-item-feature-title">Wi-Fi Internet</span> </li>\r\n <li><i class="im im-parking"></i><span class="booking-item-feature-title">Parking</span>   </li>\r\n  <li><i class="im im-plane"></i><span class="booking-item-feature-title">Airport Transport</span> </li>\r\n <li><i class="im im-bus"></i><span class="booking-item-feature-title">Shuttle Bus Service</span> </li>\r\n                        <li><i class="im im-fitness"></i><span class="booking-item-feature-title">Fitness Center</span>\r\n                        </li>\r\n                        <li><i class="im im-pool"></i><span class="booking-item-feature-title">Pool</span>\r\n                        </li>\r\n                        <li><i class="im im-spa"></i><span class="booking-item-feature-title">SPA</span>\r\n                        </li>\r\n                        <li><i class="im im-restaurant"></i><span class="booking-item-feature-title">Restaurant</span>\r\n                        </li>\r\n                        <li><i class="im im-wheel-chair"></i><span class="booking-item-feature-title">Wheelchair Access</span>\r\n                        </li>\r\n                        <li><i class="im im-business-person"></i><span class="booking-item-feature-title">Business Center</span>\r\n                        </li>\r\n                        <li><i class="im im-children"></i><span class="booking-item-feature-title">Children Activites</span>\r\n                        </li>\r\n                        <li><i class="im im-casino"></i><span class="booking-item-feature-title">Casino & Gambling</span>\r\n                        </li>\r\n                        <li><i class="im im-bar"></i><span class="booking-item-feature-title">Bar/Lounge</span>\r\n                        </li>', 'AK', NULL),
(18, 'AK', '<li><i class="im im-wi-fi"></i><span class="booking-item-feature-title">Wi-Fi Internet</span> </li>\r\n <li><i class="im im-plane"></i><span class="booking-item-feature-title">Airport Transport</span> </li> <li><i class="im im-bus"></i><span class="booking-item-feature-title">Shuttle Bus Service</span> </li>', 'AK', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` bigint(20) NOT NULL,
  `gro_id` int(11) DEFAULT NULL,
  `unique_id` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `encrypted_password` varchar(250) DEFAULT NULL,
  `salt` varchar(250) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `note` text,
  `user_create` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_update` varchar(50) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `image` varchar(150) DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `gro_id`, `unique_id`, `name`, `email`, `user_name`, `encrypted_password`, `salt`, `status`, `note`, `user_create`, `created_date`, `user_update`, `updated_date`, `image`) VALUES
(8, 3, '15150909161614739471431473947143', 'anhsheth', 'anhsheth@gmail.com', 'anhsheth', 'e10adc3949ba59abbe56e057f20f883e', NULL, b'1', NULL, 3, '2017-10-02 16:38:52', NULL, NULL, 'default.jpg'),
(11, 3, '15150909161614739481911473948191', 'SENG Sourng', 'sourng@gmail.com', 'sourng', 'e10adc3949ba59abbe56e057f20f883e', NULL, b'1', NULL, 3, '2017-10-02 16:38:56', NULL, NULL, 'default.jpg'),
(12, 3, '19190909161614742620121474262012', 'anhsheth', 'anhsheth@yahoo.com', 'anhsheth', 'e10adc3949ba59abbe56e057f20f883e', NULL, b'1', NULL, 3, '2017-10-02 16:39:05', NULL, NULL, 'default.jpg'),
(15, 3, '02021010171715069693961506969396', 'Long Dara', 'longdara@gmail.com', 'longdara', 'e10adc3949ba59abbe56e057f20f883e', '02021010171715069693961506969396', b'1', 'Register Online', 3, '2017-10-02 18:48:44', '3', '2017-10-03 01:36:36', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id_group` smallint(4) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL,
  `group_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `description` tinytext COLLATE utf8_unicode_ci,
  `controller_id` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='0.9.7';

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id_group`, `level`, `group_name`, `status`, `description`, `controller_id`) VALUES
(1, 1, 'Admin', b'1', 'Who Register Admin User', '1'),
(3, 3, 'Guest', b'1', 'Who Register Online', '3'),
(4, 2, 'Teacher', b'1', 'Who Register Admin User', '2'),
(5, 4, 'Student', b'1', 'Who Register Online', '4');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_last_minute_deals`
--
CREATE TABLE `v_last_minute_deals` (
`dest_id` bigint(20)
,`destinations` varchar(250)
,`dest_landmark` varchar(250)
,`country` varchar(250)
,`hotel_id` bigint(30)
,`h_name` varchar(250)
,`h_slug` varchar(250)
,`h_feature_image` varchar(250)
,`h_description` text
,`h_address` varchar(250)
,`star_rating` varchar(250)
,`hroom_id` bigint(20)
,`hr_name` varchar(250)
,`hr_image` varchar(250)
,`hr_max` int(11)
,`min(hr.hr_base_rate)` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_list_hotels`
--
CREATE TABLE `v_list_hotels` (
`hotel_id` bigint(30)
,`h_name` varchar(250)
,`h_slug` varchar(250)
,`h_feature_image` varchar(250)
,`h_description` text
,`h_meta_key` text
,`h_deatail` longtext
,`h_facilities` longtext
,`h_address` varchar(250)
,`h_create` timestamp
,`dest_id` bigint(20)
,`province` varchar(250)
,`whylike` longtext
,`lang_spoken` longtext
,`map` longtext
,`what_todo` longtext
,`h_id_cod` varchar(250)
,`h_email` varchar(250)
,`h_contact_name` varchar(250)
,`h_pass` varchar(250)
,`h_contact_phone` varchar(250)
,`h_site` varchar(250)
,`contact_fax` varchar(250)
,`star_rating` varchar(250)
,`create_date` timestamp
,`update_date` timestamp
,`h_online_status` enum('Y','N')
,`hotel_blocked` enum('Y','N')
,`destinations` varchar(250)
,`amenities` mediumtext
,`rate` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Structure for view `v_last_minute_deals`
--
DROP TABLE IF EXISTS `v_last_minute_deals`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_last_minute_deals`  AS  select distinct `d`.`dest_id` AS `dest_id`,`d`.`destinations` AS `destinations`,`d`.`dest_landmark` AS `dest_landmark`,`d`.`country` AS `country`,`h`.`hotel_id` AS `hotel_id`,`h`.`h_name` AS `h_name`,`h`.`h_slug` AS `h_slug`,`h`.`h_feature_image` AS `h_feature_image`,`h`.`h_description` AS `h_description`,`h`.`h_address` AS `h_address`,`h`.`star_rating` AS `star_rating`,`hr`.`hroom_id` AS `hroom_id`,`hr`.`hr_name` AS `hr_name`,`hr`.`hr_image` AS `hr_image`,`hr`.`hr_max` AS `hr_max`,min(`hr`.`hr_base_rate`) AS `min(hr.hr_base_rate)` from ((`destinations` `d` left join `hotels` `h` on((`h`.`dest_id` = `d`.`dest_id`))) join `hotel_rooms` `hr` on((`h`.`hotel_id` = `hr`.`hotel_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_list_hotels`
--
DROP TABLE IF EXISTS `v_list_hotels`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_list_hotels`  AS  select `h`.`hotel_id` AS `hotel_id`,`h`.`h_name` AS `h_name`,`h`.`h_slug` AS `h_slug`,`h`.`h_feature_image` AS `h_feature_image`,`h`.`h_description` AS `h_description`,`h`.`h_meta_key` AS `h_meta_key`,`h`.`h_deatail` AS `h_deatail`,`h`.`h_facilities` AS `h_facilities`,`h`.`h_address` AS `h_address`,`h`.`h_create` AS `h_create`,`h`.`dest_id` AS `dest_id`,`h`.`province` AS `province`,`h`.`whylike` AS `whylike`,`h`.`lang_spoken` AS `lang_spoken`,`h`.`map` AS `map`,`h`.`what_todo` AS `what_todo`,`h`.`h_id_cod` AS `h_id_cod`,`h`.`h_email` AS `h_email`,`h`.`h_contact_name` AS `h_contact_name`,`h`.`h_pass` AS `h_pass`,`h`.`h_contact_phone` AS `h_contact_phone`,`h`.`h_site` AS `h_site`,`h`.`contact_fax` AS `contact_fax`,`h`.`star_rating` AS `star_rating`,`h`.`create_date` AS `create_date`,`h`.`update_date` AS `update_date`,`h`.`h_online_status` AS `h_online_status`,`h`.`hotel_blocked` AS `hotel_blocked`,`dest`.`destinations` AS `destinations`,`hr`.`amenities` AS `amenities`,`hr`.`hr_base_rate` AS `rate` from ((`hotels` `h` join `destinations` `dest` on((`dest`.`dest_id` = `h`.`dest_id`))) join `hotel_rooms` `hr` on((`h`.`hotel_id` = `hr`.`hotel_id`))) where (`h`.`hotel_blocked` = 'N') group by `h`.`hotel_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`iso`),
  ADD KEY `id` (`country_id`),
  ADD KEY `id_2` (`country_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`dest_id`);

--
-- Indexes for table `destinations2`
--
ALTER TABLE `destinations2`
  ADD PRIMARY KEY (`dest_id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`facil_id`);

--
-- Indexes for table `facilities_hotels`
--
ALTER TABLE `facilities_hotels`
  ADD PRIMARY KEY (`facil_hotel_id`,`hotel_id`,`facil_id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `hotels_gallery`
--
ALTER TABLE `hotels_gallery`
  ADD PRIMARY KEY (`hg_id`,`hotel_id`,`room_id`);

--
-- Indexes for table `hotel_booking`
--
ALTER TABLE `hotel_booking`
  ADD PRIMARY KEY (`booking_id`,`hroom_id`,`customer_id`);

--
-- Indexes for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD PRIMARY KEY (`hfacility_id`,`hotel_id`);

--
-- Indexes for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  ADD PRIMARY KEY (`hgallery_id`,`hotel_id`);

--
-- Indexes for table `hotel_policy`
--
ALTER TABLE `hotel_policy`
  ADD PRIMARY KEY (`hotel_policy_id`,`hotel_id`,`policy_id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`hroom_id`,`hotel_id`,`rt_id`);

--
-- Indexes for table `hotel_room_gallery`
--
ALTER TABLE `hotel_room_gallery`
  ADD PRIMARY KEY (`hrgallery_id`,`hroom_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `selling_rooms`
--
ALTER TABLE `selling_rooms`
  ADD PRIMARY KEY (`sell_room_id`,`hroom_id`,`hotel_id`,`rt_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `test_add`
--
ALTER TABLE `test_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `dest_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `destinations2`
--
ALTER TABLE `destinations2`
  MODIFY `dest_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `facil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `facilities_hotels`
--
ALTER TABLE `facilities_hotels`
  MODIFY `facil_hotel_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `hotels_gallery`
--
ALTER TABLE `hotels_gallery`
  MODIFY `hg_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hotel_booking`
--
ALTER TABLE `hotel_booking`
  MODIFY `booking_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  MODIFY `hfacility_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `hotel_gallery`
--
ALTER TABLE `hotel_gallery`
  MODIFY `hgallery_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hotel_policy`
--
ALTER TABLE `hotel_policy`
  MODIFY `hotel_policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `hroom_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `hotel_room_gallery`
--
ALTER TABLE `hotel_room_gallery`
  MODIFY `hrgallery_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `policy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `selling_rooms`
--
ALTER TABLE `selling_rooms`
  MODIFY `sell_room_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `test_add`
--
ALTER TABLE `test_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id_group` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
