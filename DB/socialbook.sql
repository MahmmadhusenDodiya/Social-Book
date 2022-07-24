-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 08:02 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `friendship`
--

CREATE TABLE `friendship` (
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `Time stamp` datetime NOT NULL DEFAULT current_timestamp(),
  `friendship_status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friendship`
--

INSERT INTO `friendship` (`user1_id`, `user2_id`, `sender_id`, `Time stamp`, `friendship_status`) VALUES
(1, 2, 1, '2022-06-11 11:24:14', 1),
(1, 3, 1, '2022-06-12 20:03:25', 1),
(1, 4, 1, '2022-06-11 11:23:55', 1),
(1, 5, 1, '2022-06-11 11:24:05', 1),
(2, 1, 1, '2022-06-11 11:24:14', 1),
(2, 3, 3, '2022-06-11 11:26:48', 1),
(2, 5, 2, '2022-06-12 16:07:41', 1),
(3, 1, 1, '2022-06-12 20:03:25', 1),
(3, 2, 3, '2022-06-11 11:26:48', 1),
(3, 4, 3, '2022-06-11 11:26:46', 1),
(3, 5, 3, '2022-06-11 11:26:40', 1),
(4, 1, 1, '2022-06-11 11:23:55', 1),
(4, 3, 3, '2022-06-11 11:26:46', 1),
(4, 5, 5, '2022-06-12 16:15:27', 1),
(5, 1, 1, '2022-06-11 11:24:05', 1),
(5, 2, 2, '2022-06-12 16:07:41', 1),
(5, 3, 3, '2022-06-11 11:26:40', 1),
(5, 4, 5, '2022-06-12 16:15:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`post_id`, `user_id`) VALUES
(1, 1),
(1, 3),
(1, 6),
(2, 1),
(2, 3),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 6),
(4, 1),
(4, 2),
(4, 6),
(5, 1),
(5, 2),
(5, 6),
(6, 1),
(6, 2),
(6, 3),
(6, 6),
(7, 1),
(7, 2),
(7, 3),
(7, 6),
(8, 1),
(8, 2),
(8, 6),
(9, 1),
(9, 2),
(9, 6),
(10, 1),
(10, 2),
(10, 6),
(11, 1),
(11, 2),
(11, 3),
(11, 6),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(13, 6),
(14, 1),
(14, 3),
(14, 6),
(15, 1),
(15, 2),
(15, 6),
(16, 2),
(16, 6),
(17, 1),
(17, 2),
(17, 6),
(18, 1),
(18, 2),
(18, 6),
(19, 1),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 2),
(22, 3),
(23, 1),
(23, 3),
(23, 6),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 6),
(25, 1),
(25, 2),
(25, 3),
(25, 6),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(29, 1),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(31, 3),
(32, 1),
(32, 3),
(33, 3),
(34, 1),
(34, 3),
(35, 6),
(36, 3),
(36, 6),
(37, 1),
(37, 6),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(39, 3),
(40, 1),
(40, 3),
(41, 3),
(42, 1),
(42, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_caption` text NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `post_public` char(1) NOT NULL,
  `post_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_caption`, `post_time`, `post_public`, `post_by`) VALUES
(1, 'Owl Fighting', '2022-05-29 12:30:31', 'Y', 1),
(2, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-05-29 12:30:35', 'Y', 1),
(3, 'Cows', '2022-05-29 12:16:34', 'Y', 2),
(4, 'Nest', '2022-05-29 12:16:54', 'Y', 2),
(5, 'Wise Mans but not actuaaly', '2022-05-29 14:39:57', 'Y', 3),
(6, 'Tanmay Patel has changed his profile picture.', '2022-05-29 12:30:39', 'Y', 3),
(7, 'PDPU IS GREAT Collage', '2022-05-29 12:27:41', 'Y', 3),
(8, 'THis is my new Home', '2022-05-30 09:16:44', 'Y', 4),
(9, 'N has changed his profile picture.', '2022-06-04 10:50:17', 'Y', 4),
(10, 'Sun', '2022-05-30 13:41:30', 'Y', 3),
(11, 'This is Public post From PDPU', '2022-05-30 17:45:40', 'Y', 3),
(12, 'Happy Ramzan', '2022-05-30 17:52:30', 'Y', 5),
(13, 'Teena Dodiya has changed his profile picture.', '2022-06-03 17:45:58', 'Y', 5),
(14, 'a b c d e f g h', '2022-05-31 05:20:03', 'Y', 3),
(15, 'QWERT', '2022-06-02 07:15:51', 'Y', 3),
(16, 'Nice', '2022-06-02 07:16:18', 'Y', 3),
(17, 'Really Great sunset from sea', '2022-06-04 14:19:45', 'Y', 3),
(18, 'Mr BR', '2022-06-04 14:24:08', 'Y', 8),
(19, 'efwd dfsdf has changed his profile picture.', '2022-06-05 04:10:52', 'Y', 8),
(20, 'Royal homes', '2022-06-05 05:39:19', 'Y', 1),
(21, 'FFF', '2022-06-05 05:39:40', 'Y', 1),
(22, 'ERT', '2022-06-05 05:39:53', 'Y', 1),
(23, 'Arfa Aziz has changed his profile picture.', '2022-06-05 09:12:29', 'Y', 3),
(24, 'Arfa Aziz has changed his profile picture.', '2022-06-05 09:12:32', 'Y', 3),
(25, 'Arfa Aziz has changed his profile picture.', '2022-06-05 09:12:35', 'Y', 3),
(26, 'Arfa Aziz has changed his profile picture.', '2022-06-05 07:18:55', 'N', 3),
(27, 'Arfa Aziz has changed his profile picture.', '2022-06-05 07:20:43', 'N', 3),
(28, 'i have seen this in my childhood', '2022-06-06 09:13:15', 'Y', 1),
(29, 'i Love farming', '2022-06-06 17:42:01', 'Y', 1),
(30, 'Hello', '2022-06-07 11:25:21', 'Y', 1),
(31, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-09 12:32:40', 'N', 1),
(32, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-09 12:32:55', 'N', 1),
(33, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-09 12:33:09', 'N', 1),
(34, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-09 12:33:59', 'N', 1),
(35, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-09 12:34:11', 'N', 1),
(36, 'First Post', '2022-06-09 12:37:13', 'Y', 6),
(37, 'Khan Abdul has changed his profile picture.', '2022-06-09 12:37:30', 'N', 6),
(38, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-10 05:51:47', 'N', 1),
(39, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-10 05:52:00', 'N', 1),
(40, 'Ullu', '2022-06-10 05:53:05', 'Y', 1),
(41, 'I like to see This owl(Ullu)', '2022-06-10 05:55:00', 'Y', 1),
(42, 'Mahmmadhusen Dodiya has changed his profile picture.', '2022-06-10 10:06:36', 'N', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qimages`
--

CREATE TABLE `qimages` (
  `user_id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `img` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `user_nickname` varchar(20) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_gender` char(1) NOT NULL,
  `user_birthdate` date NOT NULL,
  `user_status` char(1) DEFAULT NULL,
  `user_about` text DEFAULT NULL,
  `user_hometown` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_nickname`, `user_password`, `user_email`, `user_gender`, `user_birthdate`, `user_status`, `user_about`, `user_hometown`) VALUES
(1, 'Mahmmadhusen', 'Dodiya', 'Raju', 'e10adc3949ba59abbe56e057f20f883e', 'FF@gmail.com', 'M', '2000-08-19', 'S', 'Lorem ipmus dummy text', 'Gujarat'),
(2, 'Usha', 'Patel', 'Nothing', 'e10adc3949ba59abbe56e057f20f883e', 'NN@gmail.com', 'F', '1999-01-18', 'S', '1+1=2', 'Gujarat'),
(3, 'Arfa', 'Aziz', 'TT', 'e10adc3949ba59abbe56e057f20f883e', 'TT@gmail.com', 'F', '2002-02-15', 'E', 'I AM FROM PDPU', 'Mehsana'),
(4, 'Nikunj', 'N', 'Nikunj', 'e10adc3949ba59abbe56e057f20f883e', 'SS@gmail.com', 'M', '2000-01-18', 'S', 'nothing', 'Rajasthan'),
(5, 'Teena', 'Dodiya', 'Teena', 'e10adc3949ba59abbe56e057f20f883e', 'Teena@gmail.com', 'F', '1996-01-01', 'M', 'Always Happy', 'Amreli'),
(6, 'Khan', 'Abdul', 'Gafar', 'e10adc3949ba59abbe56e057f20f883e', 'Khan@gmail.com', 'M', '0000-00-00', 'S', 'This is my project', 'Dubai'),
(7, 'iqra', 'kanwal', 'iqra', 'e10adc3949ba59abbe56e057f20f883e', 'xg@gmail.com', 'F', '2022-06-22', 'E', 'Hello I am from PDPU ICT Branch', 'Rajkot'),
(8, 'Codeforces', 'Expert', 'Candidate master', 'e10adc3949ba59abbe56e057f20f883e', 'QQ@gmail.com', 'M', '2022-06-08', 'S', 'PDPU is great collage', 'junagadh');

-- --------------------------------------------------------

--
-- Table structure for table `user_phone`
--

CREATE TABLE `user_phone` (
  `user_id` int(11) DEFAULT NULL,
  `user_phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_phone`
--

INSERT INTO `user_phone` (`user_id`, `user_phone`) VALUES
(1, 2147483647),
(3, 2147483647),
(1, 123456789);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friendship`
--
ALTER TABLE `friendship`
  ADD PRIMARY KEY (`user1_id`,`user2_id`),
  ADD KEY `user2_id` (`user2_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`post_id`,`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_by` (`post_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_phone`
--
ALTER TABLE `user_phone`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friendship`
--
ALTER TABLE `friendship`
  ADD CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_phone`
--
ALTER TABLE `user_phone`
  ADD CONSTRAINT `user_phone_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
