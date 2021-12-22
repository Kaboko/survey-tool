-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 07:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `evaluations`
--

CREATE TABLE `evaluations` (
  `trial` int(11) NOT NULL,
  `newsId` int(11) NOT NULL,
  `grouped` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL,
  `link_news` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `initial_emotion` varchar(30) NOT NULL,
  `publisher` varchar(30) NOT NULL,
  `time_published` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `link_news`, `title`, `initial_emotion`, `publisher`, `time_published`) VALUES
(1, 'foxnews/food-drink/boston-market-nashville-hot-chicken-sandwich-menu-items', 'Boston Market debuts \'Nashville Hot\' chicken sandwich, other menu items in fast food war', 'negative', 'foxnews', 'January 2021'),
(2, 'foxnews/us/indianapolis-mass-murder-police-crime-family', 'Chilling details revealed in Indianapolis \'mass murder\' that left 6 dead: \'They killed my family\'', 'negative', 'foxnews', 'January 2021'),
(3, 'CNN/2021/01/14/economy/china-trade-surplus-intl-hnk/index.html', 'China is winning the trade war and its exports have never been higher', 'negative', 'CNN', 'January 2021'),
(4, 'foxnews/politics/dr-fauci-vaccine-availability-media-relationship-trump', 'Dr. Fauci pressed on vaccine availability, asked whether media focuses too much on relationship with Trump', 'negative', 'foxnews', 'January 2021'),
(5, 'foxnews/us/mobile-ministry-van-carjacking-attack-michigan', 'Good Samaritan whose van filled with food for needy was stolen has a message for perpetrators', 'negative', 'foxnews', 'January 2021'),
(6, 'CNN/2021/01/14/europe/belgium-protest-arrests-intl/index.html', 'More than 100 arrested after protests over a Black man\'s death in police custody', 'negative', 'CNN', 'January 2021'),
(7, 'foxnews/world/serial-killer-invited-to-get-covid-vaccine-before-elderly-ignites-outrage', 'Serial killer invited to get COVID vaccine before elderly ignites outrage', 'negative', 'foxnews', 'January 2021'),
(8, 'CNN/2021/01/23/asia/tse-chi-lop-arrest-intl-hnk/index.html', 'Tse Chi Lop, one of the world\'s biggest drug dealers, arrested in Amsterdam', 'negative', 'CNN', 'January 2021'),
(9, 'https://edition.cnn.com/2020/02/08/us/texas-high-school-boy-shot-bullying/index.html', 'A 16 year old boy broke up a bullying incident. Days later, police say he was fatally shot by one of the boys involved', 'negative', 'CNN', 'February 2020'),
(10, 'https://adage.com/article/btob/bad-news-newspapers/273495', 'Bad news for newspapers', 'negative', 'AdAge', 'January 2020'),
(11, 'https://www.reuters.com/article/us-philippines-volcano-mass/evacuees-pray-for-safety-at-sunday-mass-amid-philippine-volcano-threat-idUSKBN1ZI0BN', 'Evacuees pray for safety at Sunday mass amid Philippine volcano threat', 'negative', 'Reuters', 'February 2020'),
(12, 'https://www.sunnyskyz.com/blog/2984/Family-Writes-Emotional-Goodbye-To-Marine-MWD-Aura', 'Family Writes Emotional Goodbye To Marine MWD Aura', 'negative', 'sunnyskyz.com', 'February 2020'),
(13, 'https://www.forbes.com/sites/noahkirsch/2020/01/30/investors-are-cheering-warren-buffetts-newspaper-sale-thats-bad-news-for-the-papers/', 'Investors Are Cheering Warren Buffett?s Newspaper Sale. That?s Bad News For The Papers. ', 'negative', 'Forbes', 'January 2020'),
(14, 'https://www.bostonmagazine.com/news/2019/11/01/end - of - local - news/', 'No News Is Bad News', 'negative', 'Boston magazine', 'January 2020'),
(15, 'https://voxeu.org/article/how-bad-news-can-harm-economic-development', 'Terror and tourism: How bad news can harm economic development', 'negative', 'VOX??CEPR Policy Portal', 'February 2020'),
(16, 'CNN/2018/04/19/world/cnnheroes-brisa-de-angulo-a-breeze-of-hope-foundation/index.html', 'At 17, this sexual abuse survivor set out to fix a broken system', 'positive', 'CNN', 'January 2021'),
(17, 'CNN/travel/article/metro-cityring-copenhagen-denmark/index.html', 'Copenhagen\'s new Metro is a thing of beauty', 'positive', 'CNN', 'January 2021'),
(18, 'CNN/style/article/ancient-egypt-beauty-ritual-artsy/index.html', 'How ancient Egyptian cosmetics influenced our beauty rituals', 'positive', 'CNN', 'January 2021'),
(19, 'CNN/travel/article/kenyan-food-dishes/index.html', 'Kenya\'s best food is a kaleidoscope of flavors', 'positive', 'CNN', 'January 2021'),
(20, 'CNN/travel/article/luxury-bars-budapest/index.html', 'The best luxury bars in Budapest', 'positive', 'CNN', 'January 2021'),
(21, 'CNN/travel/article/qwow-finger-lakes-upstate-new-york-spc-intl/index.html', 'The place that helped inspire American democracy', 'positive', 'CNN', 'January 2021'),
(22, 'foxnews/sports/vanessa-bryant-anniversary-kobe-gianna-letter-friend', 'Vanessa Bryant honors anniversary of Kobe Bryant, daughter Gianna\'s deaths with letter from Gigi\'s best friend', 'positive', 'foxnews', 'January 2021'),
(23, 'http://financebloghome.site/composing-an-extraordinary-business-story-how-more-intelligent-money-from-europe-is-boosting-little-firms/', 'Composing an extraordinary business story: how more intelligent money from Europe is boosting little firms', 'positive', 'Morphis', 'January 2020'),
(24, 'https://www.goodnewsnetwork.org/ev-completes-uks-longest-autonomous-journey/', 'Electric Car Completes UK?s Longest and Most Complex Autonomous Journey', 'positive', 'www.goodnewsnetwork.org', 'January 2020'),
(25, 'https://www.goodnewsnetwork.org/crops-thrive-underneath-of-solar-panels/', 'Exciting New Study Says That Crops Thrive Underneath Solar Panels?and the Panels Produce More Energy', 'positive', 'good news network', 'February 2020'),
(26, 'https://www.msn.com/en-us/news/good-news/ninety-year-old-chef-of-the-poor-cooks-it-up-for-romes-homeless/ar-BBZImsm', 'Ninety-year-old \"chef of the poor\" cooks it up for Rome\'s homeless', 'positive', 'reuters', 'January 2020'),
(27, 'https://www.goodnewsnetwork.org/johns-hopkins-device-pulls-record-amounts-of-water-from-thin-air/', 'Researchers Develop Ultra-Absorbent Device That Can Pull Record Amounts of Water Out of Thin Air', 'positive', 'www.goodnewsnetwork.org', 'January 2020'),
(28, 'https://www.goodnewsnetwork.org/israeli-plastic-and-waste-recycling-method-kills-two-birds-with-one-stone/', 'Revolutionary New Recycling Method for Plastic and Waste is Killing Two Birds With One Stone', 'positive', 'www.goodnewsnetwork.org', 'January 2020'),
(29, 'https://www.msn.com/en-us/news/good-news/strangers-on-plane-throw-baby-shower-for-couple-flying-home-with-adopted-newborn/ar-BB102pNk', 'Strangers on plane throw baby shower for couple flying home with adopted newborn', 'positive', 'msn.com', 'February 2020'),
(30, 'https://www.msn.com/en-us/news/good-news/volunteer-visits-90-year-old-woman-and-friendship-grows/ar-BBZDVP3', 'Volunteer visits 90-year-old woman and friendship grows', 'positive', 'msn.com', 'January 2020');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nlanguage` varchar(150) NOT NULL,
  `email_address` varchar(150) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nlanguage`, `email_address`, `date_updated`) VALUES
(4, 'Latin', '', '2021-12-15 22:46:30'),
(5, 'Bulgarian', '', '2021-12-15 22:48:47'),
(6, 'Greek', '', '2021-12-15 22:51:04'),
(7, 'Latin', '', '2021-12-19 12:09:31'),
(8, 'Slovak', '', '2021-12-22 16:53:58'),
(9, 'Greek', '', '2021-12-22 17:08:04'),
(10, 'Greek', '', '2021-12-22 17:41:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_variants`
--

CREATE TABLE `user_variants` (
  `userId` int(11) NOT NULL,
  `variant` varchar(5) NOT NULL,
  `date_filled` date NOT NULL DEFAULT current_timestamp(),
  `trial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `variant_id` varchar(5) NOT NULL,
  `news1` int(11) NOT NULL,
  `news2` int(11) NOT NULL,
  `news3` int(11) NOT NULL,
  `news4` int(11) NOT NULL,
  `news5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`variant_id`, `news1`, `news2`, `news3`, `news4`, `news5`) VALUES
('V001', 3, 4, 16, 24, 25),
('V002', 6, 10, 8, 16, 26),
('V003', 18, 25, 13, 29, 1),
('V004', 4, 22, 10, 23, 29),
('V005', 21, 11, 30, 4, 1),
('V006', 6, 29, 15, 28, 14),
('V007', 1, 9, 10, 24, 30),
('V008', 1, 12, 16, 17, 26),
('V009', 23, 17, 8, 15, 21),
('V010', 2, 4, 14, 28, 29),
('V011', 1, 25, 13, 5, 17),
('V012', 14, 20, 22, 11, 6),
('V013', 23, 15, 13, 28, 10),
('V014', 19, 10, 26, 16, 8),
('V015', 2, 6, 19, 21, 22),
('V016', 13, 15, 28, 13, 27),
('V017', 15, 30, 24, 8, 19),
('V018', 4, 9, 10, 20, 29),
('V019', 5, 9, 14, 21, 22),
('V020', 19, 21, 6, 28, 4),
('V021', 18, 8, 5, 24, 7),
('V022', 6, 22, 23, 20, 1),
('V023', 27, 20, 5, 3, 28),
('V024', 4, 6, 8, 24, 30),
('V025', 7, 24, 22, 9, 23),
('V026', 22, 10, 7, 17, 9),
('V027', 18, 30, 12, 19, 3),
('V028', 14, 12, 23, 17, 25),
('V029', 5, 29, 28, 20, 11),
('V030', 15, 4, 24, 30, 7),
('V031', 19, 19, 14, 9, 7),
('V032', 4, 7, 9, 17, 26),
('V033', 4, 9, 23, 16, 21),
('V034', 11, 23, 1, 20, 5),
('V035', 8, 22, 18, 30, 11),
('V036', 6, 7, 8, 28, 29),
('V037', 4, 6, 28, 9, 27),
('V038', 29, 25, 24, 13, 2),
('V039', 6, 6, 30, 30, 3),
('V040', 27, 21, 4, 8, 12),
('V041', 5, 22, 27, 21, 1),
('V042', 9, 17, 9, 21, 1),
('V043', 23, 15, 26, 21, 5),
('V044', 14, 8, 28, 16, 28),
('V045', 13, 11, 27, 3, 17),
('V046', 28, 22, 3, 27, 6),
('V047', 9, 23, 29, 5, 1),
('V048', 8, 9, 17, 2, 19),
('V049', 28, 13, 2, 3, 30),
('V050', 28, 9, 21, 16, 13),
('V051', 5, 8, 10, 19, 25),
('V052', 7, 19, 23, 4, 26),
('V053', 8, 10, 18, 23, 30),
('V054', 1, 27, 12, 23, 13),
('V055', 20, 7, 30, 10, 2),
('V056', 8, 30, 6, 1, 26),
('V057', 23, 15, 16, 17, 6),
('V058', 18, 15, 25, 7, 11),
('V059', 21, 12, 1, 29, 10),
('V060', 24, 27, 16, 5, 5),
('V061', 12, 23, 13, 11, 9),
('V062', 5, 11, 13, 20, 28),
('V063', 21, 29, 1, 15, 22),
('V064', 15, 23, 17, 10, 9),
('V065', 2, 5, 16, 25, 28),
('V066', 1, 18, 25, 8, 29),
('V067', 20, 29, 2, 7, 1),
('V068', 6, 29, 5, 11, 30),
('V069', 22, 11, 7, 21, 8),
('V070', 25, 6, 7, 15, 21),
('V071', 8, 6, 25, 25, 29),
('V072', 26, 4, 26, 19, 11),
('V073', 18, 10, 28, 15, 12),
('V074', 10, 12, 17, 21, 28),
('V075', 27, 22, 3, 1, 5),
('V076', 28, 17, 6, 4, 27),
('V077', 5, 18, 8, 22, 19),
('V078', 11, 4, 6, 22, 29),
('V079', 11, 3, 24, 17, 22),
('V080', 5, 11, 28, 23, 28),
('V081', 12, 15, 16, 26, 21),
('V082', 12, 8, 16, 28, 30),
('V083', 11, 2, 17, 25, 22),
('V084', 4, 15, 18, 22, 28),
('V085', 12, 14, 20, 19, 25),
('V086', 12, 5, 27, 21, 22),
('V087', 11, 8, 27, 22, 29),
('V088', 8, 14, 9, 23, 22),
('V089', 11, 4, 5, 26, 24),
('V090', 3, 9, 8, 23, 27),
('V091', 14, 2, 3, 21, 17),
('V092', 10, 4, 2, 29, 29),
('V093', 6, 11, 10, 21, 22),
('V094', 6, 3, 12, 27, 20),
('V095', 12, 6, 13, 29, 18),
('V096', 12, 7, 6, 23, 24),
('V097', 6, 15, 28, 18, 23),
('V098', 15, 14, 24, 16, 23),
('V099', 7, 14, 17, 22, 25),
('V100', 6, 15, 29, 25, 21),
('V101', 2, 10, 17, 23, 29),
('V102', 12, 12, 30, 24, 18),
('V103', 14, 3, 23, 18, 19),
('V104', 3, 12, 16, 18, 26),
('V105', 14, 12, 6, 25, 16),
('V106', 4, 15, 12, 28, 27),
('V107', 15, 6, 6, 19, 28),
('V108', 7, 9, 1, 23, 29),
('V109', 6, 13, 6, 18, 25),
('V110', 13, 9, 10, 29, 26),
('V111', 10, 7, 8, 20, 16),
('V112', 2, 4, 3, 19, 25),
('V113', 3, 8, 5, 16, 29),
('V114', 13, 7, 6, 30, 23),
('V115', 9, 12, 16, 17, 29),
('V116', 7, 14, 30, 19, 22),
('V117', 2, 1, 23, 22, 18),
('V118', 7, 10, 22, 20, 26),
('V119', 8, 15, 24, 30, 28),
('V120', 8, 10, 17, 30, 18),
('V121', 1, 4, 22, 18, 17),
('V122', 13, 10, 18, 28, 21),
('V123', 12, 15, 29, 26, 17),
('V124', 15, 7, 24, 29, 27),
('V125', 1, 15, 2, 22, 26),
('V126', 8, 9, 13, 21, 24),
('V127', 8, 7, 9, 16, 30),
('V128', 12, 3, 4, 22, 26),
('V129', 13, 14, 3, 23, 17),
('V130', 6, 7, 13, 23, 19),
('V131', 12, 8, 10, 28, 30),
('V132', 9, 7, 8, 20, 16),
('V133', 7, 6, 8, 27, 30),
('V134', 2, 15, 1, 26, 18),
('V135', 5, 7, 25, 20, 21),
('V136', 11, 14, 30, 16, 30),
('V137', 8, 7, 21, 19, 25),
('V138', 10, 1, 28, 24, 29),
('V139', 13, 4, 16, 20, 17),
('V140', 12, 10, 29, 23, 16),
('V141', 7, 15, 28, 25, 27),
('V142', 3, 14, 21, 17, 23),
('V143', 11, 13, 25, 27, 23),
('V144', 3, 15, 5, 21, 29),
('V145', 3, 2, 6, 28, 30),
('V146', 14, 12, 1, 26, 16),
('V147', 9, 8, 10, 29, 21),
('V148', 6, 8, 9, 16, 29),
('V149', 4, 1, 2, 24, 18),
('V150', 7, 4, 12, 21, 19),
('V151', 1, 7, 5, 19, 24),
('V152', 6, 9, 14, 16, 27),
('V153', 8, 1, 27, 26, 23),
('V154', 7, 4, 17, 25, 23),
('V155', 4, 12, 30, 25, 21),
('V156', 15, 13, 21, 22, 28),
('V157', 3, 10, 25, 27, 26),
('V158', 12, 3, 23, 25, 18),
('V159', 3, 12, 19, 29, 18),
('V160', 13, 4, 5, 28, 25),
('V161', 8, 13, 14, 27, 28),
('V162', 3, 4, 8, 30, 20),
('V163', 6, 2, 15, 25, 20),
('V164', 1, 6, 12, 17, 27),
('V165', 14, 12, 15, 26, 23),
('V166', 13, 4, 25, 20, 29),
('V167', 5, 11, 30, 29, 24),
('V168', 5, 4, 25, 16, 29),
('V169', 6, 9, 22, 26, 25),
('V170', 9, 4, 27, 30, 16),
('V171', 9, 10, 12, 24, 24),
('V172', 7, 10, 12, 28, 25),
('V173', 10, 7, 4, 24, 29),
('V174', 3, 15, 2, 28, 18),
('V175', 3, 15, 1, 27, 29),
('V176', 11, 2, 8, 20, 30),
('V177', 3, 4, 2, 17, 29),
('V178', 4, 5, 10, 17, 18),
('V179', 5, 11, 7, 26, 20),
('V180', 5, 11, 17, 20, 18),
('V181', 11, 15, 16, 28, 20),
('V182', 2, 14, 20, 17, 18),
('V183', 15, 1, 25, 16, 19),
('V184', 5, 10, 16, 24, 25),
('V185', 15, 5, 26, 16, 26),
('V186', 11, 7, 28, 19, 28),
('V187', 12, 6, 22, 28, 17),
('V188', 11, 5, 10, 16, 26),
('V189', 7, 9, 4, 29, 21),
('V190', 14, 1, 11, 25, 27),
('V191', 5, 10, 6, 30, 21),
('V192', 10, 4, 11, 16, 21),
('V193', 3, 12, 13, 23, 24),
('V194', 7, 10, 14, 16, 28),
('V195', 10, 13, 15, 21, 18),
('V196', 8, 15, 13, 20, 22),
('V197', 14, 15, 24, 21, 23),
('V198', 9, 5, 17, 26, 23),
('V199', 1, 5, 29, 17, 27),
('V200', 4, 13, 16, 28, 29),
('V201', 3, 5, 25, 27, 23),
('V202', 15, 5, 21, 16, 30),
('V203', 6, 12, 20, 24, 16),
('V204', 10, 9, 2, 20, 22),
('V205', 5, 12, 8, 20, 21),
('V206', 3, 7, 15, 19, 23),
('V207', 9, 13, 2, 20, 24),
('V208', 7, 10, 3, 29, 16),
('V209', 2, 11, 3, 29, 25),
('V210', 7, 4, 15, 25, 17),
('V211', 6, 10, 7, 25, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`newsId`),
  ADD KEY `trial` (`trial`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD KEY `id` (`id`);

--
-- Indexes for table `user_variants`
--
ALTER TABLE `user_variants`
  ADD PRIMARY KEY (`variant`),
  ADD KEY `userId` (`userId`),
  ADD KEY `trial` (`trial`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`variant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_variants`
--
ALTER TABLE `user_variants`
  MODIFY `trial` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_ibfk_3` FOREIGN KEY (`newsId`) REFERENCES `news` (`newsId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `evaluations_ibfk_4` FOREIGN KEY (`trial`) REFERENCES `user_variants` (`trial`);

--
-- Constraints for table `user_variants`
--
ALTER TABLE `user_variants`
  ADD CONSTRAINT `user_variants_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_ibfk_1` FOREIGN KEY (`variant_id`) REFERENCES `user_variants` (`variant`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
