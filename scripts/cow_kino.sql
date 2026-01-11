-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2026 at 08:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cow_kino`
--

-- --------------------------------------------------------

--
-- Table structure for table `cows`
--

CREATE TABLE `cows` (
  `name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `breed` varchar(20) NOT NULL,
  `age` float NOT NULL,
  `weight` int(5) NOT NULL,
  `photo_url` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cows`
--

INSERT INTO `cows` (`name`, `id`, `price`, `breed`, `age`, `weight`, `photo_url`, `description`) VALUES
('Bella', 3, 1250, 'Holstein', 3.5, 450, 'beef-cow_0.webp', 'High-yielding dairy cow, very gentle and accustomed to machine milking.'),
('Big Red', 4, 2800, 'Brahman', 4, 850, 'cow.webp', 'Premium Brahman bull, excellent muscle mass and disease resistance. Great for breeding.'),
('Daisy', 5, 950, 'Jersey', 2.5, 320, 'cow_demo_1.avif', 'Young Jersey cow produces milk with high butterfat content. Very friendly temperament.'),
('Rani', 6, 1100, 'Sahiwal', 3, 400, 'cow-9817881_1280.webp', 'Heat-tolerant Sahiwal, perfect for tropical climates. consistent milk producer.'),
('Lalu', 7, 850, 'Red Chittagong', 2, 280, 'cow-eating-grass-stockcake.webp', 'Local Red Chittagong variety. Low maintenance and disease resistant. Good for small farms.'),
('Maximus', 8, 3200, 'Angus', 5, 920, 'dairy-cow-royalty-free-image-1710959416.avif', 'Heavyweight Angus bull. Prime condition for meat production. Vet checked.'),
('Goldie', 9, 1400, 'Guernsey', 3.2, 410, 'istockphoto-139697605-612x612.jpg', 'Produces famous golden milk. Healthy, vaccinated, and ready for a new home.'),
('Spot', 10, 1300, 'Ayrshire', 3.8, 480, 'istockphoto-496397741-612x612.jpg', 'Hardy forager, does well in pasture-based systems. Reliable milk production.'),
('Rocky', 11, 2100, 'Charolais', 4.5, 880, 'istockphoto-1382389891-612x612.jpg', 'Large Charolais, excellent growth rate. Calm temperament and easy to handle.'),
('Gauri', 12, 1050, 'Gir', 2.8, 390, 'photo-1570042225831-d98fa7577f1e.jpg', 'Beautiful Gir cow with distinctive hump. highly adaptable and good milker.'),
('Pagla Goru', 14, 1400, 'RedChittagong', 1.5, 850, 'COW_695eb3141973b0.73742884.jpg', 'Pagla goru khabo, yeah ki moja');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `id`, `email`, `password`, `phone`) VALUES
('Zihan', 5, 'zihan@gmail.com', 'Zihan@123', 1799246459);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cows`
--
ALTER TABLE `cows`
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
-- AUTO_INCREMENT for table `cows`
--
ALTER TABLE `cows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
