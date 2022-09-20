-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'Ram', 'Deepak', 9, '2021-04-08 18:08:56'),
(3, 'Namami', 'Juhi', 100, '2021-04-08 14:55:43'),
(4, 'Ram', 'Tarun', 1, '2021-04-08 14:58:55'),
(5, 'Adil', 'Kamlesh', 5000, '2021-06-03 21:49:16'),
(6, 'Kamlesh', 'Adil', 5000, '2021-06-05 20:41:06'),
(7, 'Adil', 'Kamlesh', 5000, '2021-06-05 23:34:40'),
(8, 'Kamlesh', 'Adil', 5000, '2021-06-06 10:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'David', 'Davidroy@gmail.com', 20000),
(2, 'Kallogs', 'kallogs485@gmail.com', 70000),
(3, 'Suraj', 'surajjosh09@gmail.com', 34900),
(4, 'Naira', 'nairadeswalred2@gmail.com', 72000),
(5, 'shlokpal', 'shokpaljeet908@gmail.com', 12000),
(6, 'Tanmay', 'tnamaybhatt07@gmail.com', 32990),
(7, 'Ramraj', 'ramrajya@gmail.com', 54009),
(8, 'Jeloy', 'jellowodded445@gmail.com', 20100),
(9, 'Naina', 'nainawadhwa@gmail.com', 42000),
(10, 'Tarun', 'taunminglaniwin@gmail.com', 53001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
