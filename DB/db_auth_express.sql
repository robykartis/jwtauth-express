-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 09:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_auth_express`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(4, 'a', 'a@a.com', '$2b$10$YBRy95iP2DN/rXGwWx14RuXkx9715FXy/3XwK4srXDtJ2VmZqqDPa', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwibmFtZSI6ImEiLCJlbWFpbCI6ImFAYS5jb20iLCJpYXQiOjE2Mzg1NDkwNTAsImV4cCI6MTYzODYzNTQ1MH0._h4FkrXprQR7iF79WLRso7wGEVi8uO7NeHNlp21z1TQ', '2021-12-02 20:33:17', '2021-12-03 16:30:50'),
(5, 'b', 'b@b.com', '$2b$10$.xe9PaWThi2wJfbw8rax4eVDsSG8VkWhlN2qrv6HiUEyxhNq9cMxe', NULL, '2021-12-03 16:31:26', '2021-12-03 19:00:49'),
(6, 'bob', 'bob@gmail.com', '$2b$10$Gg7MsW.pPLMA7DNrNz648uoMwdqFATMAEAX8sHq6M2No5H6cOKob.', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwibmFtZSI6ImJvYiIsImVtYWlsIjoiYm9iQGdtYWlsLmNvbSIsImlhdCI6MTYzODY0OTIyNSwiZXhwIjoxNjM4NzM1NjI1fQ.-ii0f9nZJP7Gaum-7wIBsQmXKNjNXlk1Fh0McGLdI6o', '2021-12-04 18:55:53', '2021-12-04 20:20:25');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
