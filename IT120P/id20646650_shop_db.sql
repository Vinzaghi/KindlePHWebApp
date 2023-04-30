-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2023 at 05:50 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20646650_shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `adl1` varchar(255) DEFAULT NULL,
  `adl2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`adl1`, `adl2`, `city`, `state`, `country`) VALUES
('123', 'Falcon', 'Dasma', 'California', 'Uganda'),
('321', 'Bacoor', 'Cavite', 'Florida', 'USA'),
('321', 'Bacoor', 'Cavite', 'Florida', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'adminthesecond', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(4, 'shopper@email.com', '48cb979c27b4d89decba12f91f9765805fbb8184'),
(5, 'shop@email.com', '363c96d73c83586eb4b75931553685330f1972f4');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(16, 7, 7, 'Kindle Scented Soy Wax Melts (Vanilla)', 48, 1, 'Kindle Scented Soy Wax Melts Vanilla.jpg'),
(17, 5, 2, 'Kindle Scented Soy Wax Melts (Lavender)', 48, 1, 'Kindle Scented Soy Wax Melts Lavender.png'),
(18, 5, 7, 'Kindle Scented Soy Wax Melts (Vanilla)', 48, 1, 'Kindle Scented Soy Wax Melts Vanilla.jpg'),
(19, 5, 8, 'Kindle Scented Soy Wax Melts (Strawberry)', 48, 1, 'Kindle Scented Soy Wax Melts Strawberry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 5, 'Drew Villasor', 'villasor.drew@gmail.com', '123', 'Hello'),
(2, 10, 'q', 'q@gmail.cim', '123123', 'qweruiousad'),
(3, 5, 'Darew', 'villasor.drew@gmail.com', '9234417771', 'The products are great and the delivery service is fast.'),
(4, 12, 'Darew', 'villasor.drew@gmail.com', '9234234523', 'Thanks for the product!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(5, 5, 'Darew', '9234431041', 'villasor.drew@gmail.com', 'cash on delivery', 'flat no. L17 B6 Greenwoods Phase 4 Executive Village, Diamond ST. Pinagbuhatan, Pasig CIty, 1602, Pasig City, Metro Manila, Philippines - 1602', 'Kindle Scented Soy Wax Melts (Lavender) (48 x 1) - Kindle Scented Soy Wax Melts (Vanilla) (48 x 1) - Kindle Scented Soy Wax Melts (Strawberry) (48 x 1) - ', 144, '2023-04-29', 'completed'),
(6, 5, 'Darew', '9234431041', 'villasor.drew@gmail.com', 'cash on delivery', 'flat no. L17 B6 Greenwoods Phase 4 Executive Village, Diamond ST. Pinagbuhatan, Pasig CIty, 1602, Pasig City, Metro Manila, Philippines - 1602', 'Kindle Scented Soy Wax Melts (Lavender) (48 x 5) - Kindle Scented Soy Wax Melts (Vanilla) (48 x 2) - Kindle Scented Soy Wax Melts (Strawberry) (48 x 1) - ', 384, '2023-04-29', 'pending'),
(7, 12, 'Darew', '9234456789', 'villasor.drew@gmail.com', 'cash on delivery', 'flat no. L17 B6 Greenwoods Phase 4 Executive Village, Diamond ST. Pinagbuhatan, Pasig CIty, 1602, Pasig City, Metro Manila, Philippines - 1602', 'Kindle Scented Soy Candles (Coffee Bean) (150 x 1) - Kindle Scented Soy Wax Melts (Strawberry) (48 x 1) - ', 198, '2023-04-30', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(2, 'Kindle Scented Soy Wax Melts (Lavender)', 'Two size (30g and 60g)', 100, 'Kindle Scented Soy Wax Melts Lavender.png', 'Kindle Scented Soy Wax Melts 2.jpg', 'Kindle Scented Soy Wax Melts 3.jpg'),
(7, 'Kindle Scented Soy Wax Melts (Vanilla)', 'One size (30g)', 48, 'Kindle Scented Soy Wax Melts Vanilla.jpg', 'Kindle Scented Soy Wax Melts 2.jpg', 'Kindle Scented Soy Wax Melts 3.jpg'),
(8, 'Kindle Scented Soy Wax Melts (Strawberry)', 'One size (30g)', 48, 'Kindle Scented Soy Wax Melts Strawberry.jpg', 'Kindle Scented Soy Wax Melts 2.jpg', 'Kindle Scented Soy Wax Melts 3.jpg'),
(10, 'Kindle Scented Soy Candles (Baby Powder)', 'Classic 120 ml', 150, 'Kindle Scented Soy Candles Baby Powder.jpg', 'Kindle Scented Soy Candles Baby Powder.jpg', 'Kindle Scented Soy Candles 1.jpg'),
(13, 'Kindle Scented Soy Candles (Cherry)', 'Classic 120 ml', 150, 'Kindle Scented Soy Candles Cherry.jpg', 'Kindle Scented Soy Candles Cherry.jpg', 'Kindle Scented Soy Candles 1.jpg'),
(14, 'Kindle Scented Soy Candles (Coffee Bean)', 'Classic 120 ml', 150, 'Kindle Scented Soy Candles Coffee Bean.jpg', 'Kindle Scented Soy Candles Coffee Bean.jpg', 'Kindle Scented Soy Candles 1.jpg'),
(15, 'Kindle Scented Soy Candles (Lavender)', 'Classic 200 ml', 250, 'Kindle Scented Soy Candles Lavender.jpg', 'Kindle Scented Soy Candles Lavender.jpg', 'Kindle Scented Soy Candles 1.jpg'),
(16, 'Kindle Scented Soy Candles (Strawberry)', 'Classic 200 ml', 250, 'Kindle Scented Soy Candles Strawberry.jpg', 'Kindle Scented Soy Candles Strawberry.jpg', 'Kindle Scented Soy Candles 1.jpg'),
(17, 'Kindle Scented Soy Candles (Peppermint)', 'Classic 120 ml', 150, 'Kindle Scented Soy Candles Peppermint.jpg', 'Kindle Scented Soy Candles Peppermint.jpg', 'Kindle Scented Soy Candles 1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(5, 'darew', 'villasor.drew@gmail.com', 'c53255317bb11707d0f614696b3ce6f221d0e2f2'),
(7, 'Cen', 'cen@gmail.com', 'c53255317bb11707d0f614696b3ce6f221d0e2f2'),
(10, 'q', 'q@gmail.com', '4cd3677e5f005658864de9f78234e8eb31b1013b'),
(11, 'test18', 'test18@gmail.com', '48a9a45d910ba23b908fc15c0dad3b648a22ea3b'),
(12, 'shop', 'shop@email.com', '363c96d73c83586eb4b75931553685330f1972f4');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(6, 5, 10, 'Kindle Scented Soy Candles (Baby Powder)', 150, 'Kindle Scented Soy Candles Baby Powder.jpg'),
(7, 5, 13, 'Kindle Scented Soy Candles (Cherry)', 150, 'Kindle Scented Soy Candles Cherry.jpg'),
(8, 5, 14, 'Kindle Scented Soy Candles (Coffee Bean)', 150, 'Kindle Scented Soy Candles Coffee Bean.jpg'),
(10, 12, 2, 'Kindle Scented Soy Wax Melts (Lavender)', 48, 'Kindle Scented Soy Wax Melts Lavender.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
