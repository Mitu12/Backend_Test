-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2019 at 04:43 AM
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
-- Database: `db_backend_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Mitu', 'Mitu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_counter` tinyint(4) DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `category_id`, `blog_title`, `blog_short_description`, `blog_long_description`, `blog_image`, `author_name`, `hit_counter`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 6, 'A Millionaire\'s Romance', '<p>PARKER MAYNE was going to Europe again on the morrow, and Europe always attracted him until he got there; but to-night he was bored. As he walked toward his mansion in Fifth Avenue he reflected, with a yawn, that he had been bored more or less ever since he remembered&mdash;ever since he realized that he could wish for nothing that was unobtainable. He had been bored, as a child, in his great, play-rooms, with their ranges of mimic mountains and their mechanical bears; he had been bored at Harvard, bored in society.</p>', '<p>PARKER MAYNE was going to Europe again on the morrow, and Europe always attracted him until he got there; but to-night he was bored. As he walked toward his mansion in Fifth Avenue he reflected, with a yawn, that he had been bored more or less ever since he remembered&mdash;ever since he realized that he could wish for nothing that was unobtainable. He had been bored, as a child, in his great, play-rooms, with their ranges of mimic mountains and their mechanical bears; he had been bored at Harvard, bored in society. If he had kept a diary, how seldom the words, &quot;I enjoyed myself to-day,&quot; would have figured in the chronicle of his life! The pleasures procurable by a multimillionaire were painfully few, thought Parker Mayne.</p>\r\n\r\n<p>&quot;Mr. Mayne, I want to speak to you!&quot;</p>\r\n\r\n<p>A young man had sprung in his way excitedly, a shabby young man with haggard eyes.</p>\r\n\r\n<p>&quot;I&#39;m not taking any,&quot; said Mayne.</p>\r\n\r\n<p>&quot;You&#39;re going to hear me out,&quot; exclaimed the young man&mdash;&quot;by heaven, you are! I&#39;m not accustomed to stop strangers in the street, but I&#39;ve done it now, and I&#39;m going through with it, and you&#39;re going to listen!&quot;</p>\r\n\r\n<p>&quot;There&#39;s a policeman spoiling for something to do at the corner of the block,&quot; remarked Mayne; &quot;if you don&#39;t make yourself scarce, I shall beckon to him.&quot;</p>\r\n\r\n<p>&quot;What can you charge me with?&quot;</p>\r\n\r\n<p>&quot;I shall charge you with annoying me.&quot;</p>\r\n\r\n<p>&quot;I have no wish to annoy you; I&#39;m trying to speak civilly.&quot;</p>\r\n\r\n<p>&quot;What do you want?&quot;</p>\r\n\r\n<p>&quot;Work.&quot;</p>\r\n\r\n<p>&quot;I think I shall have to give it to the policeman,&quot; said Mayne; &quot;it&#39;s the only work that I&#39;m able to offer.&quot; He hesitated, and then loosened his overcoat and proffered a dollar bill. &quot;Here, you can take this instead,&quot; he added, more suavely.</p>', 'public/post_image/165038templatemo_image_1.jpg', 'Mitu', 2, 1, '2019-04-27 16:50:38', NULL),
(5, 5, 'The Ashes of Old Wishes', '<p>ALL day long big flakes of soft, wet snow had flurried and scurried and melted about Darby O&#39;Gill&#39;s cottage, until, by twilight, the countryside was neither more nor less than a great white bog. Then, to make, matters worse, as the night came on that rapscallion of an east wind waked up, and came sweeping with a roar through the narrow lanes and over the desolate fields, gleefully buffeting and nipping every living thing in its way.</p>', '<p>ALL day long big flakes of soft, wet snow had flurried and scurried and melted about Darby O&#39;Gill&#39;s cottage, until, by twilight, the countryside was neither more nor less than a great white bog. Then, to make, matters worse, as the night came on that rapscallion of an east wind waked up, and came sweeping with a roar through the narrow lanes and over the desolate fields, gleefully buffeting and nipping every living thing in its way. It fairly tore the fur cap off Maurteen Cavanaugh&#39;s head, and gaily tossed that precious relic into the running ditch; it shrieked mockingly as it lifted poor old Mrs. Maloney&#39;s red-cloak and swirled that tattered robe over the good woman&#39;s bewildered head; then, after swooping madly around and around Darby O&#39;Gill&#39;s cottage, it leaped to the roof and perched itself on the very top of the chimney, where for three mortal hours it sat shouting down boisterous challenge to the discontented man who crouched moody and silent before his own smoky hearth.</p>\r\n\r\n<p>Darby heard the challenge well enough but wasted little heed. A shapeless worry darkened the lad&#39;s mind. Ever since supper, when Bridget and the children went to bed&mdash;the better to get an early start for midnight Christmas Mass &mdash; Darby and Malachi, the yellow cat, sat opposite each other in the glow of the smouldering turf.</p>\r\n\r\n<p>Lately Darby had taken great comfort in talking to Malachi. The cat proved to be a splendid listener&mdash;never contradicting any statement however bold, but receiving all his master&#39;s confidences with a blinking gravity which was as respectful as it was flattering.</p>', 'public/post_image/165304templatemo_image_3.jpg', 'Mitu', 2, 1, '2019-04-27 16:53:04', NULL),
(6, 4, 'Golden Hair (fairy tale)', '<p>According to the plot, the lovers safely run away from Poloz. The theme of the symbolical union between a mythical creature and a human is very popular in folklore tradition. From the Bashkirs&#39; point of view, such a marriage guarantees success in career, wealth and prosperity</p>', '<p>According to the plot, the lovers safely run away from Poloz. The theme of the symbolical union between a mythical creature and a human is very popular in folklore tradition. From the Bashkirs&#39; point of view, such a marriage guarantees success in career, wealth and prosperity.<sup><a href=\"https://en.wikipedia.org/wiki/Golden_Hair_(fairy_tale)#cite_note-nhthonicnature-12\">[12]</a></sup></p>\r\n\r\n<p>However the space under Itkul is viewed as the version of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pagan\" title=\"Pagan\">pagan</a>&nbsp;&quot;Otherworld&quot;, or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Realm_of_the_dead\" title=\"Realm of the dead\">realm of the dead</a>&nbsp;where people go after their physical death and remain there forever.<sup><a href=\"https://en.wikipedia.org/wiki/Golden_Hair_(fairy_tale)#cite_note-13\">[13]</a></sup><sup><a href=\"https://en.wikipedia.org/wiki/Golden_Hair_(fairy_tale)#cite_note-Slobozhaninova-14\">[14]</a></sup>&nbsp;Lidiya Slobozhaninova comments that it is no accident that Golden Hair leaves that place only occasionally, and that in the end the narrator confesses that he has never seen them after. Slobozhaninova summarizes that the price of love, freedom, and wealth is death, and the story is Bazhov&#39;s adaptation of the universal storyline of &quot;love which is stronger than death</p>', 'public/post_image/165411templatemo_image_2.jpg', 'Mitu', 1, 1, '2019-04-27 16:54:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(4, 'Children\'s short stories‎', '<p>Children&#39;s short stories are fiction stories, generally under 100 pages long, written for children.</p>', 1, NULL, NULL),
(5, 'Fantasy short stories‎', '<p>Stories following the genre of&nbsp;fantasy</p>', 1, NULL, NULL),
(6, 'Romantic short stories‎', '<p>The following 200 pages are in this category, out of 242 total.</p>', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comments_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_26_101811_create_admin_table', 1),
(5, '2019_04_26_105929_create_users_table', 2),
(6, '2019_04_27_023258_create_category_table', 3),
(7, '2019_04_27_031517_create_blog_table', 4),
(8, '2019_04_27_122922_create_comments_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar_image`, `dob`, `phone`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'abc', 'abc@gmail.com', NULL, '$2y$10$xLTQTV2vE7dRamn8s1CFWe2KZrl9yXuXi2DqY/iYSJfEgqAEp1Nby', '1', '2019-12-29', '01567778654', 'female', NULL, '2019-04-26 08:05:30', '2019-04-26 08:05:30'),
(5, 'hncg', 'nazninmetu@gmail.com', NULL, '$2y$10$6Z/BXKb/bzbZ8UUbJKDDGOpg/uy6F0s4Lye9pK99RNWpcFRcHa7z.', '1', '2019-12-30', '01714789456', 'female', NULL, '2019-04-27 10:28:08', '2019-04-27 10:28:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comments_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
