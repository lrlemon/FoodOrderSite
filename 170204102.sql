-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 05:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `170204102`
--
CREATE DATABASE IF NOT EXISTS `170204102` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `170204102`;

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(200) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `image` varchar(3000) NOT NULL,
  `descriptionn` varchar(3000) NOT NULL,
  `imagee` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `description`, `image`, `descriptionn`, `imagee`) VALUES
(1, 'Md.Latifur Rahman\r\nStudent of AUST                 \r\n                     \r\n                     Email: lrlemon147@gmail.com                                 \r\n           Contact No: 01796778344', 'logo.png', 'Md.Radit Chowdhury\r\nStudent of AUST         \r\n \r\n Email: raditchowdhury@gmail.com                \r\n            Contact No: 01521246401', 'logo5.png');

-- --------------------------------------------------------

--
-- Table structure for table `aboutuss`
--

CREATE TABLE `aboutuss` (
  `id` int(11) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `image` varchar(3000) NOT NULL,
  `descriptionn` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx'),
('Lemojn', 'lemon@gmail.com', '01796883455', 'no', 'ki re'),
('Latifur', 'ararabu9@gmail.com', '80956423431', 'no', 'fgthyn'),
('lemon', 'lemon@gmail.com', '01796778344', 'no', 'Hellow man');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('lemon', 'Latifur', 'lemon@gmail.com', '01796778344', 'Rajshahi', '1234'),
('Liakat', 'Latifur', 'lemon@gmail.com', '01796778344', 'Kurigram', '1234'),
('mostak', 'Latifur', 'lrlokon147@gmail.com', '01796778344', 'Rajshahi', '1234'),
('rah', 'Latifur', 'lemon@gmail.com', '01796778344', 'Jenaidha', '1234'),
('Rahman', 'Latifur', 'lemon@gmail.com', '01796778344', 'Jenaidha', '1234'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Vorta Luchi', 40, 'Luchi with various type of vorta, masala,onion', 1, 'images/l3.jpg', 'ENABLE'),
(59, 'Morog-polao', 60, 'Morog polao - A whole chicken marinate with polao and served with onions and tomatos', 2, 'images/l4.jpg', 'ENABLE'),
(60, 'Panta elish', 99, 'Panta elish - Elish with panta vat and vorta', 3, 'images/l5.jpg', 'ENABLE'),
(61, 'Fish-fenchfry', 80, 'Fish fernchfry - Sea fish with fernchfry and sauces', 1, 'images/l6.jpg', 'ENABLE'),
(62, 'Beef-Kala-Bhuna', 65, 'Beef kala vuna - Chittagong traditional kala vuna recipie', 2, 'images/l7.jpg', 'ENABLE'),
(63, 'Mutton-Kosha', 75, 'Mutton kosha - Delicious kosha Mutton Goshto with potato and onion', 3, 'images/l11.jpg', 'ENABLE'),
(65, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 4, 'images/l8.jpg', 'DISABLE'),
(66, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 4, 'images/lo9.jpg', 'DISABLE'),
(68, 'Paneer', 85, 'it', 6, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Coffee', 25, 'concentrated coffee made by forcing pressurized water through finely ground coffee beans.', 2, 'images/l8.jpg', 'ENABLE'),
(70, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 2, 'images/lo9.jpg', 'ENABLE'),
(71, 'Samosa', 40, 'Cocktail Crispy Samosa..', 2, 'images/l10.jpg', 'ENABLE'),
(72, 'Bengali_sweets', 45, 'it gives whole new dimension even to the most boring or dull vegetable', 2, 'images/l12.jpg', 'ENABLE'),
(73, 'Rasmalai', 35, 'Vegetable Puff, a snack with crisp-n-flaky outer layer and mixed vegetables stuffing', 2, 'images/l13.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'images/l14.jpg', 'DISABLE'),
(75, 'French Fries', 60, 'Pure Veg and Tasty.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Pakora', 35, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'Pizza', 200, 'Pure Vegetable and Tasty.', 2, 'images/l14.jpg', 'ENABLE'),
(78, 'Pakora', 75, 'Pure Veg and Tasty.', 2, 'images/l15.jpg', 'ENABLE'),
(79, 'Chingri curry', 45, 'TASTY', 2, 'images/l16.jpg', 'ENABLE'),
(80, 'Banjari Ghosto', 100, 'It\'s a normal Pasta', 1, 'images/l17.jpg', 'ENABLE'),
(81, 'Ghugni-chaat-recipe', 100, 'rtrt', 6, 'images/l18.jpg', 'ENABLE'),
(82, 'Fucka', 100, 'hyhrgb', 6, 'images/l19.jpg', 'ENABLE'),
(83, 'Simbon', 60, 'hjtyjhfgb', 11, 'images/burger.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi', 'aditi@gmail.com', '018654751259', 'Ulipur', 'aditi'),
('aminnikhil073', 'Nikhil', 'aminnikhil073@gmail.com', '019632587412', 'Rangpur', 'nikhil'),
('ckumar', 'Raj Kumar', 'ckj40856@gmail.com', '019487810674', 'Dhaka', 'Ckumar123'),
('dhiraj', 'Radit', 'dk123@gmail.com', '018903079750', 'Chittagong', 'Dhiraj'),
('emon', 'Latifur', 'lemon@gmail.com', '01796778344', 'Kurigram', '1234'),
('lemon', 'Latifur', 'lemon@gmail.com', '01796778344', 'Kurigram', '1234'),
('Liakat', 'Latifur', 'lemon@gmail.com', '01796778344', 'Jenaidha', '1234'),
('lokon', 'Latifur', 'lemon@gmail.com', '01796778344', 'Kurigram', '123456'),
('rabbi', 'Latifur', 'lemon@gmail.com', '01796778344', 'Kurigram', '123'),
('roshanraj07', 'Roshan ', 'roshan@gmail.com', '019541258761', 'Rajshahi', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(69, 59, 'Meurig Fish', 60, 1, '2020-09-18', 'lemon', 2),
(70, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-09-18', 'lemon', 1),
(71, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-09-18', 'lemon', 1),
(72, 69, 'Coffee', 25, 1, '2020-09-18', 'rakshithk00', 2),
(73, 69, 'Coffee', 25, 1, '2020-09-18', 'lemon', 2),
(74, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-09-18', 'lemon', 3),
(75, 59, 'Meurig Fish', 60, 1, '2020-09-18', 'lemon', 2),
(76, 59, 'Meurig Fish', 60, 1, '2020-09-18', 'lemon', 2),
(77, 63, 'Baahubali Thali', 75, 1, '2020-09-18', 'lemon', 3),
(78, 63, 'Baahubali Thali', 75, 1, '2020-09-18', 'lemon', 3),
(79, 63, 'Baahubali Thali', 75, 1, '2020-09-18', 'lemon', 3),
(80, 63, 'Baahubali Thali', 75, 1, '2020-09-18', 'lemon', 3),
(81, 63, 'Baahubali Thali', 75, 1, '2020-09-18', 'lemon', 3),
(82, 63, 'Baahubali Thali', 75, 1, '2020-09-18', 'lemon', 3),
(83, 73, 'Puff', 35, 1, '2020-09-18', 'lemon', 2),
(84, 73, 'Puff', 35, 1, '2020-09-18', 'lemon', 2),
(85, 59, 'Meurig Fish', 60, 1, '2020-09-18', 'lemon', 2),
(86, 59, 'Meurig Fish', 60, 1, '2020-09-18', 'lemon', 2),
(87, 59, 'Meurig Fish', 60, 1, '2020-09-18', 'lemon', 2),
(88, 62, 'Spring Rolls', 65, 1, '2020-09-18', 'lemon', 2),
(89, 59, 'Morog-polao', 60, 1, '2020-09-18', 'lemon', 2),
(90, 59, 'Morog-polao', 60, 1, '2020-09-18', 'lemon', 2),
(91, 59, 'Morog-polao', 60, 1, '2020-09-18', 'lemon', 2),
(92, 59, 'Morog-polao', 60, 1, '2020-09-18', 'lemon', 2),
(93, 73, 'Rasmalai', 35, 1, '2020-09-19', 'lemon', 2),
(94, 58, 'Vorta Luchi', 40, 1, '2020-09-19', 'Liakat', 1),
(95, 81, 'Ghugni-chaat-recipe', 100, 1, '2020-09-19', 'lemon', 6),
(96, 81, 'Ghugni-chaat-recipe', 100, 1, '2020-09-19', 'lemon', 6),
(97, 69, 'Coffee', 25, 1, '2020-09-19', 'lemon', 2),
(98, 59, 'Morog-polao', 60, 1, '2020-09-19', 'lemon', 2),
(99, 69, 'Coffee', 25, 1, '2020-09-19', 'lemon', 2),
(100, 59, 'Morog-polao', 60, 1, '2020-09-19', 'lemon', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'My Restaurant', 'nikhil@restaurant.com', '017998562145', 'Rangpur', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '019887546821', 'Dhaka', 'roshanraj07'),
(3, 'Lokon\'s Restaurant', 'aditi@restaurant.com', '017778564231', 'Rajshahi', 'aditi068'),
(4, 'Tasty', 'ckj40856@gmail.com', '0109487810674', 'Dhaka', 'ckumar'),
(6, 'Sultan\'s Dine', 'lecafepondi234@gmail.com', '019443369040', 'Ulipur', 'dhiraj'),
(7, 'Rigs Cafe', 'lemon@gmail.com', '01796778344', 'Kurigram', 'lemon'),
(11, 'Mera Cafe', 'lemon@gmail.com', '01796778344', 'Rajshahi', 'Liakat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aboutuss`
--
ALTER TABLE `aboutuss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aboutuss`
--
ALTER TABLE `aboutuss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
