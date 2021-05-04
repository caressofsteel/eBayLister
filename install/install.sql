/*
# ------------------------------------------------------
# eBayLister - An eBay Listing Creator
# Copyright © 2021 David Rodgers
# Released under the terms of the MIT License
# ------------------------------------------------------
*/

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2021 at 03:18 AM
-- Server version: 10.3.17-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apps_ebaylister`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `pricing` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `offers` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pricingTitle` varchar(27) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `offerTitle` varchar(27) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shippingTitle` varchar(27) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `pricing`, `offers`, `shipping`, `pricingTitle`, `offerTitle`, `shippingTitle`) VALUES
(1, 'Price too high? Make an offer! All reasonable offers will be accepted. My prices are always competitive based on condition, rarity, and demand. Rest assured that you\'re getting a good deal when purchasing from me.', '<p>I often extend special offers and discount opportunities to those watching an item, so be sure to watch any item you\'re interested in. If I decide to blow out an item or lower the price, watchers will be notified first.</p>', 'Your item will be properly packaged and shipped within one (1) business day. I keep a record of serial numbers on all items. Fraudulent returns will be documented, photographed, reported to eBay, and refused.', 'Competitive Pricing!', 'Exclusive Special Offers!', 'Fast Professional Shipping!');

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(4) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastModified` timestamp NOT NULL DEFAULT current_timestamp(),
  `itemTitle` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleColor` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `headImage` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `headImageHeight` int(8) DEFAULT NULL,
  `headerColor` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemHeading` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `addInfo` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemLocation` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listInfo1` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listInfo2` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listInfo3` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localPickup` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `date`, `lastModified`, `itemTitle`, `titleColor`, `headImage`, `headImageHeight`, `headerColor`, `itemHeading`, `itemDescription`, `addInfo`, `itemLocation`, `listInfo1`, `listInfo2`, `listInfo3`, `localPickup`) VALUES
(1, '2021-04-24 04:00:01', '2021-04-27 04:00:01', 'Fill Murray', 'DimGrey', 'https://www.fillmurray.com/g/355/400.jpg', NULL, 'DarkSeaGreen', '<p>The internet was missing the ability to provide custom-sized placeholder images of Bill Murray. Now it can.<br></p>', '<p>http://www.fillmurray.com/<br></p>', '<p>fillmurray.com by <a href=\\\\\\"https://twitter.com/davecowart\\\\\\" target=\\\\\\"_blank\\\\\\">@davecowart</a> | Check out my other sites\r\n        <a href=\\\\\\"https://www.placecage.com/\\\\\\" target=\\\\\\"_blank\\\\\\">PlaceCage (Nick Cage Filler Images)</a> |\r\n        <a href=\\\\\\"https://www.stevensegallery.com/\\\\\\" target=\\\\\\"_blank\\\\\\">Steven SeGALLERY (Steven Segal Filler Images)</a><br></p>', 'fillmurray.com', 'Calm: https://fillmurray.com/200/300', 'Gray: https://fillmurray.com/g/200/300', 'Disneyland. The worlds biggest people trap, built by a mouse.', 1);
INSERT INTO `listings` (`id`, `date`, `lastModified`, `itemTitle`, `titleColor`, `headImage`, `headImageHeight`, `headerColor`, `itemHeading`, `itemDescription`, `addInfo`, `itemLocation`, `listInfo1`, `listInfo2`, `listInfo3`, `localPickup`) VALUES
--
-- Indexes for dumped tables
--

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;