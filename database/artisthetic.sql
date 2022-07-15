-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 09:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artisthetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'kyla', 'kylavalenton09@gmail.com', '$2y$10$3Cy5uK4QMevOGWn7wICKueZkDIa3zbRM32zBWM0tj2Wa2zGMUkJMi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Deovir'),
(2, 'Craft Central'),
(3, 'Art Whale'),
(4, 'Oil Paint'),
(5, 'Pop-Up');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 1, '::1', 1, 1),
(2, 2, '::1', 1, 1),
(3, 44, '::1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Painting Material'),
(2, 'Drawing Material'),
(3, 'Craft Material');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 1, 'Drawing Pencils', 125, 100, 'Attach your creativity by a touch of a pen', 'drawingpencil.jpg', 'drawing, pencil'),
(2, 2, 1, 'drawing and sketching kit set', 459, 100, 'Attach your creativity by a touch of a pen', 'drawing and sketching set.jpg', 'drawing set, sketching set'),
(3, 2, 1, 'Art Coloring Set for Kids', 260, 100, 'Attach your creativity by a touch of a pen', 'Art coloring set.jpg', 'art coloring, coloring set'),
(4, 2, 1, 'Metallic Brush Pen Drawing', 18, 100, 'Attach your creativity by a touch of a pen', 'metalic brush pen.jpeg', 'metallic brush, metallic pen'),
(5, 2, 1, 'Electric Drawing Eraser', 65, 100, 'Attach your creativity by a touch of a pen', 'electric eraser.jpeg', 'eraser, electric eraser'),
(6, 2, 1, 'Oil Color Pencil Set', 1071, 100, 'Attach your creativity by a touch of a pen', 'oil pencil set.jpeg', 'oil pencil, pencil set'),
(7, 2, 1, 'automatic Drawing Pencil', 15, 100, 'Attach your creativity by a touch of a pen', 'automatic pencil.jpeg', 'automatic pencil'),
(8, 2, 1, 'Charcoal Pencil Set', 399, 100, 'Attach your creativity by a touch of a pen', 'charcoal pencil.jpeg', 'charcoal pencil'),
(9, 2, 1, 'Color Pencil Set', 399, 100, 'Attach your creativity by a touch of a pen', 'color pencil.jpeg', 'color pencil'),
(10, 2, 1, 'Metallic Brush Pen Drawing', 17, 100, 'Attach your creativity by a touch of a pen', 'metalic brush pen 2.jpeg', 'metallic brush, metallic pen'),
(11, 2, 1, 'Drawing Gel Ink Pen', 9, 100, 'Attach your creativity by a touch of a pen', 'gel ink pen.jpeg', 'gel pen'),
(12, 2, 1, 'Mongol Pencil', 9, 100, 'Attach your creativity by a touch of a pen', 'mongol.jpeg', 'pencil, mongol'),
(13, 2, 1, 'Touchfive Markers', 739, 100, 'Attach your creativity by a touch of a pen', 'touch5 markers.jpeg', 'touchfive marker, marker'),
(14, 2, 1, 'Retro-color Gel Ink Pen', 168, 100, 'Attach your creativity by a touch of a pen', 'retrocolor gel ink.jpeg', 'retro-color, gel ink'),
(15, 2, 1, 'Technical Sketch Pen', 228, 100, 'Attach your creativity by a touch of a pen', 'technical pen.jpeg', 'pen, technical pen'),
(16, 2, 5, 'Waterproof Sketch Book', 339, 100, 'Attach your creativity by a touch of a pen', 'waterproof sketch book.jpeg', 'sketch pad, sketch book, waterproof sketch book'),
(17, 2, 5, 'We Bare Bears Sketch Pad', 110, 100, 'Attach your creativity by a touch of a pen', 'we bare bears.jpeg', 'sketch pad, we bare bears'),
(18, 2, 5, 'Van Gogh Sketch Book', 110, 100, 'Attach your creativity by a touch of a pen', 'van gogh.jpeg', 'sketch pad, van gogh'),
(19, 2, 5, 'Big Size Sketch Pad', 35, 100, 'Attach your creativity by a touch of a pen', 'big size pad.jpeg', 'sketch pad, big size'),
(20, 2, 5, 'Disney Art Attack Sketch Pad', 36, 100, 'Attach your creativity by a touch of a pen', 'disney art attack.jpeg', 'disney, art attack, sketch pad'),
(21, 1, 3, 'Easel Stand with Tray', 1599, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'easel stand.png', 'easel, easel stand'),
(22, 1, 4, 'Acrylic Paint Set', 539, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'acrylic paint.png', 'acrylic paint'),
(23, 2, 3, 'Acrylic Paint for Kids', 15, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'acrylic for kids.png', 'acrylic paint, acrylic paint for kids'),
(24, 2, 3, 'Watercolor Set', 550, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'solid watercolor.png', 'solid watercolor, watercolor set'),
(25, 1, 3, 'Artist Nylon Hair Brush', 49, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'nylon brush.png', 'nylon brush, watercolor brush'),
(26, 1, 3, 'Children Non-toxic Painting Set', 299, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'children nontoxic.png', 'children painting set'),
(27, 2, 3, 'Canvas Painting Board Cotton', 824, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'canvas board.png', 'canva board, cotton board'),
(28, 1, 4, 'Art  Set', 645, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'painting n drawing.png', 'coloring, drawing, painting set'),
(29, 1, 3, 'Paint Brush Set', 615, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'paint brush.png', 'paint brush'),
(30, 1, 4, 'Painting Material Set', 2399, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'painting material.png', 'painting material'),
(31, 1, 3, 'Transparent Oval paint Ray ', 529, 100, 'Color your beautiful creation by a brush stroke together with a paint.', '1624349828_transparent.PNG', 'Ray palette, oval ray pallete, transparent ray pallete'),
(32, 1, 4, 'Watercolor Solid Pigment', 529, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'solid pigment.png', 'watercolor, solid watercolor, solid pigment'),
(33, 1, 4, 'DIY Acrylic Paint', 290, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'DIY.png', 'DIY paint, DIY acrylic, acrylic paint'),
(34, 1, 2, 'Aligator Clip Paint Stick', 80, 100, 'Do your wonderful creation by the use of various craft material', 'aligator clip.png', 'aligator clip'),
(35, 1, 4, 'Bundle Set of Acrylic Paint', 739, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'bundle set.png', 'bundle set acrylic paint, acrylic paint'),
(36, 1, 3, 'Acrylic Glass Paint Set', 209, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'glass paint.png', 'acrylic glass, glass paint'),
(37, 1, 4, 'Professional Gouache Watercolor', 419, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'prof watercolor.png', 'gouache watercolor, professional watercolor'),
(38, 1, 4, 'Solid Watercolor', 199, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'solid watercolor 2.png', 'solid watercolor'),
(39, 1, 4, 'Cheap Watercolor', 35, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'Cheap Watercolor.png', 'cheap watercolor, watercolor'),
(40, 1, 4, 'Watercolor Cake', 215, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'watercolor cake.png', 'watercolor cake'),
(41, 1, 1, '3D Printing Pen', 489, 100, 'Attach your creativity by a touch of a pen.', '3D Pen.png', 'printing pen, 3d pen'),
(42, 3, 2, 'Transparent Fishing Line', 9, 100, 'Do your wonderful creation by the use of various craft material', 'fish line.png', 'fish line'),
(43, 1, 3, 'Painting Template Stencil', 9, 100, 'Color your beautiful creation by a brush stroke together with a paint.', 'painting template.png', 'painting template, painting strencil'),
(44, 3, 2, 'Cute Mini Cutter', 19, 100, 'Do your wonderful creation by the use of various craft material', 'cutter.png', 'cutter'),
(45, 3, 2, 'Smiley Sticker', 5, 100, 'Do your wonderful creation by the use of various craft material', 'sticker.png', 'smiley sticker, sticker'),
(46, 3, 2, 'Wood Desk Organizer', 159, 100, 'Do your wonderful creation by the use of various craft material', 'desk.png', 'desk, wood organizer, desk organizer'),
(47, 3, 2, 'Film Masking Tape', 18, 100, 'Do your wonderful creation by the use of various craft material', 'tape.png', 'film tape, film masking tape, masking tape'),
(48, 3, 2, 'DIY Decorative Sticker', 20, 100, 'Do your wonderful creation by the use of various craft material', 'DIY sticker.png', 'DIY sticker, decorative sticker'),
(49, 3, 2, 'Tweezer Sticker', 49, 100, 'Do your wonderful creation by the use of various craft material', 'tweezer.png', 'tweezer sticker, sticker'),
(50, 3, 2, 'Journal Kit', 199, 100, 'Do your wonderful creation by the use of various craft material', 'journal kit.png', 'journal kit'),
(51, 3, 2, 'Gold Leaf Flake Luxury Resin Art', 68, 100, 'Do your wonderful creation by the use of various craft material', 'leaf.png', 'gold leaf, gold flakes, resin art'),
(52, 3, 2, 'Glitter Epoxy Resin Mold Arts', 114, 100, 'Do your wonderful creation by the use of various craft material', 'glitter.png', 'glitter epoxy resin, glitter'),
(53, 3, 2, 'Portable Paper Trimmer', 130, 100, 'Do your wonderful creation by the use of various craft material', 'trimmer.png', 'paper trimmer, trimmer'),
(54, 3, 2, 'Stationary Desk Organizer', 130, 100, 'Do your wonderful creation by the use of various craft material', 'organizer.png', 'stationary organizer'),
(55, 3, 2, 'Scrapbooking Paper', 39, 100, 'Do your wonderful creation by the use of various craft material', 'paper.png', 'scrapbook, paper'),
(56, 3, 2, 'Retro Wax Sealing Stamp Handle ', 50, 100, 'Do your wonderful creation by the use of various craft material', 'handle.png', 'sealing stamp handle'),
(57, 3, 2, 'Vintage Brown Themed Paper', 72, 100, 'Do your wonderful creation by the use of various craft material', 'vintage.png', 'vintage paper, brown paper'),
(58, 3, 2, 'Vintage Flakes Scrapbooking', 72, 100, 'Do your wonderful creation by the use of various craft material', 'flakes.png', 'vintage scrapbooking, flakes scrapbooking'),
(59, 3, 2, 'Seal Stamp Gold-plated Brass', 68, 100, 'Do your wonderful creation by the use of various craft material', 'seal.png', 'gold plated seal stamp'),
(60, 3, 2, 'Octagon Vintage Sealing Wax', 58, 100, 'Do your wonderful creation by the use of various craft material', 'stamp.png', 'sealing wax, octagon sealing wax');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'KYLA RIZELLE', 'VALENTON', 'kylavalenton09@gmail.com', '2befcefc75ba8f58aa96bcbb0e38765e', '9223906597', 'BLK. 6 LOT 39 Palao Country Homes', 'Mariveles B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
