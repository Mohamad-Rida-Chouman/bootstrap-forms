-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 07:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `pass`) VALUES
(2, 'judai', 'yuki', 'judai@gmail.com', '$2y$10$qxTrBZ4bPhQ5Bz0NEBoIhubLMAJgobTATFfXGOpWMHXThA/k6cCd6'),
(3, 'judai', 'yuki', 'jdaai@gmail.com', '$2y$10$rZM8F83x0DXsikBUWt8QaOPaVyj.Zzcm1cLqqkX9HH/ztBy9BlB2q'),
(4, 'judai', 'yuki', 'jfaegai@gmail.com', '$2y$10$0VXMeGjCsJaWtR0SkXRKJO8ixbn7E05cKlTjaFgHi6ZV3oQ.6Q8gW'),
(5, 'judai', 'yuki', 'ljkohai@gmail.com', '$2y$10$aeQ58kIp9BFHP9Q6.KZOpefHUrgObXDIST3TDxBP6G44nwRiwbGbS'),
(6, 'judai', 'yuki', 'lbrteghai@gmail.com', '$2y$10$2TF8zvYDoeJS6k6rDn0RQeAeFs2wbOXLOyl.6ouSH.LUvOGpDXEUm'),
(7, 'judai', 'yuki', 'lbrckmvbkai@gmail.com', '$2y$10$a.z8rhHQUvgYaNheJZnK4uK3ORReR3C5fRZpXEW8cigcBCC7QlmGS'),
(8, 'jaden', 'yuki', 'jj@gmail.com', '$2y$10$gwPy6EP6FAEVAXc07AO9h.WRPcdcyuNaAs84rIqrIwgEUQvA9svlq'),
(9, 'qwe', 'qwe', 'qwe@qwe.qwe', 'qwe'),
(10, 'zxc', 'zxc', 'zxc@zxc.zxc', '$2y$10$GpflX3vG5N50SV.rImXcGOGIYtamkWIouaLCfDYOCWz.RKcyjrc/O'),
(11, 'qwer', 'qwer', 'qwer@qwer.qwer', '$2y$10$W7l4DhtLVb3Qkb83qHjbeur9GPB/06dq8N6KT4P9/ckhZme3.KcFa'),
(12, 'aaa', 'aaa', 'aaa@aaa.aaa', 'aaa'),
(13, 'sss', 'sss', 'sss@sss.sss', 'sss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
