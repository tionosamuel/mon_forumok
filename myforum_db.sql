-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2023 at 04:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myforum_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admini`
--

CREATE TABLE `admini` (
  `id` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admini`
--

INSERT INTO `admini` (`id`, `nom`, `email`, `mot_de_passe`) VALUES
(1, 'tiono', 'tionosamuel@4gmail.com', 'azerty');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `post` text NOT NULL,
  `date` datetime NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `comments` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post`, `date`, `parent_id`, `comments`) VALUES
(1, 1, 'This is my first post', '2023-02-06 16:30:16', 0, 0),
(2, 1, 'this is my second post', '2023-02-06 16:49:15', 0, 0),
(3, 1, 'this is my third post', '2023-02-06 16:50:19', 0, 0),
(4, 1, 'this is my fourth post', '2023-02-06 17:07:56', 0, 1),
(5, 1, 'post number 5', '2023-02-06 17:17:48', 0, 0),
(6, 4, 'a post by mary and some other guy', '2023-02-10 16:31:06', 0, 0),
(10, 4, 'a comment by mary', '2023-02-10 20:59:06', 0, 0),
(11, 4, 'another post by mary', '2023-02-10 20:59:51', 0, 5),
(13, 4, 'a real comment by mary', '2023-02-10 21:11:26', 11, 0),
(14, 4, 'a second comment by mary', '2023-02-10 21:11:48', 11, 0),
(15, 4, 'a third comment', '2023-02-10 21:13:08', 11, 0),
(16, 4, 'a comment on eathornes post', '2023-02-10 21:14:25', 4, 0),
(17, 1, 'a comment by eathorne', '2023-02-10 21:18:13', 11, 0),
(18, 5, 'Hi, this is my first post as john doe', '2023-02-10 23:20:02', 0, 2),
(19, 5, 'a comment by john does on his own post', '2023-02-10 23:20:17', 18, 0),
(20, 5, 'hey there guys', '2023-02-10 23:20:30', 11, 0),
(23, 6, 'dgfhgfuygiuhyoiuoi', '2023-06-27 15:04:16', 18, 0),
(24, 6, 'le ramandant est trop cool', '2023-06-28 12:32:17', 0, 1),
(26, 6, 'commrnt tu vas', '2023-06-28 15:42:56', 0, 0),
(27, 6, 'xdfcgvhjkiol', '2023-06-29 09:06:53', 0, 1),
(28, 6, 'sedrftgyhuijnh', '2023-06-29 09:07:09', 27, 0),
(29, 6, 'comment le groupe', '2023-06-29 16:53:36', 0, 0),
(30, 7, 'qu\'est-ce que le dev-web?', '2023-06-30 11:30:04', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `bio` text,
  `fb` varchar(100) DEFAULT NULL,
  `tw` varchar(100) DEFAULT NULL,
  `yt` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `date`, `image`, `bio`, `fb`, `tw`, `yt`) VALUES
(1, 'Eathorne', 'email@email.com', '$2y$10$RFbYu7mI0HO9wdw9DOmUzOnJ.WQ5BXKdCQ1zBwvcn2p0jk/vuOX0W', '2023-02-06', 'uploads/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg', '', '', '', ''),
(4, 'Mary', 'mary@email.com', '$2y$10$KTT/.zlqv7IOGSWWulVfyO5p54aIUCOZGeB/z.GPnmb7APBUEoRQG', '2023-02-06', 'uploads/3a81e77938749a87147a1aac240fad33.jpg', 'this is my bio info', '', '', 'https://youtube.com'),
(5, 'John Doe', 'john@email.com', '$2y$10$BIrG/UguHw4cPGKygtNj9.quHe7XcT1Wr0YfrO3lfTeBLLmSRngjK', '2023-02-10', 'uploads/vllkyt7dg1hrovc8i.jpg', '', '', '', ''),
(6, 'tiono', 'tionosamuel@4gmail.com', '$2y$10$9V3chBdt8lyLucOcTyb9BuejFTGYUoTljnG2T5iXw0TGAYrCnQ2K2', '2023-06-26', 'uploads/IMG_20200805_112704_371.jpg', '', '', '', ''),
(7, 'BA ALI', 'ba@gmail.com', '$2y$10$5vfTKPHax3fmytveF/BOz.Jj8hewSBtOt8tqUWvLuwWzxFgDmsMQK', '2023-06-30', NULL, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admini`
--
ALTER TABLE `admini`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `comments` (`comments`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admini`
--
ALTER TABLE `admini`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
