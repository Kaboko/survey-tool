-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 01:39 PM
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
  `time_published` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(7, 'Latin', '', '2021-12-19 12:09:31');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
