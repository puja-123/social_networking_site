-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2019 at 12:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(9, 14, 7, 'hii', 'taranand_argaria_357077', '2019-06-02 09:26:10'),
(10, 14, 7, 'how are you??', 'taranand_argaria_357077', '2019-06-02 10:11:44'),
(11, 14, 7, 'plzz reply', 'taranand_argaria_357077', '2019-06-02 10:12:46'),
(12, 14, 7, 'hey', 'taranand_argaria_357077', '2019-06-02 10:18:06'),
(13, 14, 7, 'is everything ok?', 'taranand_argaria_357077', '2019-06-02 10:19:44'),
(14, 17, 8, 'hello... nothing much', 'puja_bhardwaj_453461', '2019-06-02 12:11:03'),
(15, 17, 8, 'how u doing?', 'puja_bhardwaj_453461', '2019-06-02 12:24:49'),
(16, 18, 9, '#masti#goa', 'mrinmay_argaria_837629', '2019-06-02 14:55:12'),
(17, 16, 8, 'awoesom', 'mrinmay_argaria_837629', '2019-06-02 14:57:47'),
(18, 18, 9, 'wow enjoy', 'puja_bhardwaj_453461', '2019-06-03 15:12:48'),
(19, 19, 7, 'hii', 'mrinmay_argaria_837629', '2019-06-04 10:46:25'),
(20, 20, 10, 'my pic', 'priyanka_kumari_780882', '2019-06-04 11:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(14, 7, 'hii guys....		   	    		   	    		   	', '', '2019-06-02 08:57:36'),
(16, 8, '#roadtrip#fun#masti#friends #freedom	   	    		   	    		   	', 'bg2.jpg.54', '2019-06-02 09:31:00'),
(17, 8, 'hola everyone.... whatsup??    		   	    		   	', '', '2019-06-02 11:18:24'),
(18, 9, '#summer break # 	    		   	    		   	    		   	', 'bg1.jpg.26', '2019-06-02 14:54:48'),
(20, 10, 'hii', 'bg4.jpg.88', '2019-06-04 11:04:35'),
(21, 7, 'jgdgfdhb	   	', '', '2019-06-26 09:14:08'),
(22, 7, 'No', 'signupbg.jpg.53', '2019-06-29 13:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(7, 'Puja', 'Bhardwaj', 'puja_bhardwaj_453461', 'Hello everyone this is my default status', 'Single', '6edb947be8c03d4884a002cbeef9c7b2', 'bhard.puja@gmail.com', 'India', 'Female', '1998-07-07', 'my_pic.jpg.94', 'default_cover.jpg', '2019-05-07 19:05:33', 'verified', 'yes', 'pihu'),
(8, 'Taranand', 'Argaria', 'taranand_argaria_357077', 'Hello everyone this is my default status', 'Married', 'e10adc3949ba59abbe56e057f20f883e', 'taranand@gmail.com', 'India', 'Male', '1957-08-03', 'bg4.jpg.31', 'default_cover.jpg', '2019-06-02 09:13:34', 'verified', 'yes', 'puja'),
(9, 'Mrinmay', 'Argaria', 'mrinmay_argaria_837629', 'I m kid', 'Single', '14e1b600b1fd579f47433b88e8d85291', 'argaria.mrinmay@gmail.com', 'India', 'Female', '1998-12-07', 'ss1.jpg.1', 'default_cover.jpg', '2019-06-02 14:49:12', 'verified', 'yes', 'puja'),
(10, 'Priyanka', 'Kumari', 'priyanka_kumari_780882', 'Hello everyone this is my default status', '...', '827ccb0eea8a706c4c34a16891f84e7b', 'abcd@gmail.com', 'India', 'Female', '1998-05-05', 'my_cover1.jpg.32', 'default_cover.jpg', '2019-06-04 11:03:15', 'verified', 'yes', 'iwanttoputadingintheuniverse.'),
(12, 'Paridhi', 'Argaria', 'paridhi_argaria_672188', 'Hello everyone this is my default status', '...', 'e10adc3949ba59abbe56e057f20f883e', 'argaria.paridhi@gmail.com', 'India', 'Female', '2016-06-04', 'head_sun_flower.png', 'default_cover.jpg', '2019-06-04 11:11:31', 'verified', 'no', 'iwanttoputadingintheuniverse.');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 5, 4, 'hello', '2019-05-01 20:14:42', 'no'),
(2, 5, 4, 'hii', '2019-05-01 20:54:55', 'no'),
(3, 4, 5, 'hii', '2019-05-01 20:57:49', 'no'),
(4, 4, 5, 'jjj\r\n', '2019-05-01 20:59:46', 'no'),
(5, 4, 5, 'hhhjjjj', '2019-05-01 21:02:13', 'no'),
(6, 4, 5, 'heee', '2019-05-01 21:02:20', 'no'),
(7, 4, 5, 'how r u??', '2019-05-01 21:02:34', 'no'),
(8, 4, 5, ' i m', '2019-05-01 21:02:41', 'no'),
(9, 4, 5, 'fine', '2019-05-01 21:02:49', 'no'),
(10, 4, 5, 'fine', '2019-05-01 21:03:03', 'no'),
(11, 4, 4, 'dddd', '2019-05-02 11:11:07', 'no'),
(12, 7, 10, 'hii\r\n', '2019-06-03 04:47:30', 'no'),
(13, 7, 10, 'how are you', '2019-06-03 04:47:47', 'no'),
(14, 7, 10, 'how are you', '2019-06-03 04:47:55', 'no'),
(15, 8, 7, 'hii\r\n', '2019-06-03 15:17:32', 'no'),
(16, 8, 7, 'hii\r\n', '2019-06-03 15:17:38', 'no'),
(17, 8, 9, 'hii', '2019-06-04 10:48:18', 'no'),
(18, 8, 9, 'hii', '2019-06-04 10:48:28', 'no'),
(19, 8, 7, 'hello', '2019-06-29 13:25:55', 'no'),
(20, 8, 7, 'hello', '2019-06-29 13:25:59', 'no');

--
-- Indexes for dumped tables
--



--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--


--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
