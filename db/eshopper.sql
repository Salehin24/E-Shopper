-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2018 at 11:21 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_seip_ecoomerce23_and_24`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(3) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `email_address` varchar(256) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email_address`, `password`) VALUES
(1, 'Md. Mainul Islam', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'Sports', 'Well', 1),
(6, 'Smart Phone', 'well', 1),
(7, 'Man Fashion', 'Well', 1),
(8, 'Woman Fashion', 'well', 1),
(9, 'IT Training', 'Well', 1),
(10, 'Cricket', 'Game', 1),
(12, 'Gift', 'Gift for all', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(256) NOT NULL,
  `password` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `first_name`, `last_name`, `email_address`, `password`, `address`, `phone_number`, `district`) VALUES
(4, 'Mehedi', 'Hasan', 'mehedi@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'Mohammadpur', '01773677425', 'Dhaka'),
(5, 'Sahadat', 'Khan', 'sahadat@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Sonir Akhara', '1231234', 'Dhaka'),
(9, 'Mainul ', 'Islam', 'm.mainul99@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Dhaka', '01722541920', 'Dhaka'),
(16, 'Mohammad', 'Araf', 'm.mainul999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Dhaka', '01738565357', 'Dhaka'),
(44, 'Mainul', 'Islam', 'm.mainul333@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Kuakata', '0154576764', 'Patuakhali');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE `tbl_manufacturer` (
  `manufacturer_id` int(3) NOT NULL,
  `manufacturer_name` varchar(100) NOT NULL,
  `manufacturer_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_description`, `publication_status`) VALUES
(1, 'Samsung', 'Well', 1),
(4, 'Sony', 'Well', 0),
(5, 'Arong', 'Well', 1),
(6, 'Google', 'Google', 1),
(7, 'Nokia', 'Mobile', 1),
(8, 'Hp', 'laptop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` float(10,2) NOT NULL,
  `order_status` varchar(15) NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `order_date`) VALUES
(8, 15, 7, 10580.00, 'pending', '2018-03-22 19:37:17'),
(9, 37, 8, 29900.00, 'pending', '2018-03-24 18:55:57'),
(10, 38, 9, 30877.50, 'pending', '2018-03-24 19:31:24'),
(11, 0, 10, 8567.50, 'pending', '2018-03-24 19:36:45'),
(12, 0, 11, 51054.25, 'pending', '2018-03-24 21:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_quantity` int(7) NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(5, 4, 1, 'Samsung Galaxy DUOS', 26000.00, 3, '../assets/admin_assets/product_images/PA080545.jpg'),
(6, 5, 1, 'Samsung Galaxy DUOS', 26000.00, 1, '../assets/admin_assets/product_images/PA080545.jpg'),
(7, 5, 2, 'T-shirt', 1600.00, 1, '../assets/admin_assets/product_images/indweex.jpg'),
(8, 5, 3, 'Fashionable T-Shirt', 1800.00, 3, '../assets/admin_assets/product_images/10176430-origpic-0453e1.jpg'),
(9, 6, 1, 'Samsung Galaxy DUOS', 26000.00, 1, '../assets/admin_assets/product_images/PA080545.jpg'),
(10, 6, 7, 'book', 850.00, 1, '../assets/admin_assets/product_images/image1.png'),
(11, 6, 6, 'Bat', 5000.00, 3, '../assets/admin_assets/product_images/cricket.jpg'),
(14, 8, 5, 'Mug', 2500.00, 1, '../assets/admin_assets/product_images/images.jpg'),
(15, 8, 6, 'Bat', 5000.00, 1, '../assets/admin_assets/product_images/cricket.jpg'),
(16, 8, 7, 'book', 850.00, 2, '../assets/admin_assets/product_images/image1.png'),
(17, 9, 1, 'Samsung Galaxy DUOS', 26000.00, 1, '../assets/admin_assets/product_images/PA080545.jpg'),
(18, 10, 1, 'Samsung Galaxy DUOS', 26000.00, 1, '../assets/admin_assets/product_images/PA080545.jpg'),
(19, 10, 7, 'book', 850.00, 1, '../assets/admin_assets/product_images/image1.png'),
(20, 11, 2, 'T-shirt', 1600.00, 1, '../assets/admin_assets/product_images/indweex.jpg'),
(21, 11, 7, 'book', 850.00, 1, '../assets/admin_assets/product_images/image1.png'),
(22, 11, 6, 'Bat', 5000.00, 1, '../assets/admin_assets/product_images/cricket.jpg'),
(23, 12, 7, 'book', 850.00, 1, '../assets/admin_assets/product_images/image1.png'),
(24, 12, 8, 'Feeling Bored', 43545.00, 1, '../assets/admin_assets/product_images/cricket4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(16) NOT NULL,
  `payment_status` varchar(30) NOT NULL DEFAULT 'pending',
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `order_id`, `payment_type`, `payment_status`, `payment_date`) VALUES
(3, 3, 'cash_on_delivary', 'pending', '2016-08-03 10:06:14'),
(4, 4, 'cash_on_delivary', 'pending', '2016-08-03 10:44:42'),
(5, 5, 'cash_on_delivary', 'pending', '2018-03-22 18:51:20'),
(6, 6, 'paypal', 'pending', '2018-03-22 19:33:16'),
(7, 7, 'cash_on_delivary', 'pending', '2018-03-22 19:33:35'),
(8, 8, 'cash_on_delivary', 'pending', '2018-03-22 19:37:17'),
(9, 9, 'cash_on_delivary', 'pending', '2018-03-24 18:55:57'),
(10, 10, 'cash_on_delivary', 'pending', '2018-03-24 19:31:24'),
(11, 11, 'cash_on_delivary', 'pending', '2018-03-24 19:36:45'),
(12, 12, 'cash_on_delivary', 'pending', '2018-03-24 21:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `category_id` int(3) NOT NULL,
  `manufacturer_id` int(3) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `stock_quantity` int(7) NOT NULL,
  `product_sku` varchar(5) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `manufacturer_id`, `product_price`, `stock_quantity`, `product_sku`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`) VALUES
(1, 'Samsung Galaxy DUOS', 6, 1, 26000.00, 12, '2', 'WEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product', 'WEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product WEll product, WEll product WEll product WEll product WEll product WEll productWEll product, WEll product WEll product WEll product WEll product WEll product', '../assets/admin_assets/product_images/PA080545.jpg', 1),
(2, 'T-shirt', 7, 5, 1600.00, 50, '10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. ', '../assets/admin_assets/product_images/indweex.jpg', 1),
(3, 'Fashionable T-Shirt', 7, 5, 1800.00, 50, '5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. ', '../assets/admin_assets/product_images/10176430-origpic-0453e1.jpg', 1),
(4, 'New T-Shirt', 7, 5, 1200.00, 100, '10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. ', '../assets/admin_assets/product_images/imwerages.jpg', 1),
(5, 'Mug', 12, 6, 2500.00, 50, '5', 'It nice mug for giving gift. It looking so nice.', '<span style="font-size: 13.3333px;">It nice mug for giving gift. It looking so nice.</span><span style="font-size: 13.3333px;">It nice mug for giving gift. It looking so nice.</span><span style="font-size: 13.3333px;">It nice mug for giving gift. It looking so nice.</span>', '../assets/admin_assets/product_images/images.jpg', 1),
(6, 'Bat', 10, 6, 5000.00, 50, '5', '<span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">It is a long established fact that a reader will be distracted by the readable</span>', '<span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a&nbsp; normal distribution of letters,</span>', '../assets/admin_assets/product_images/cricket.jpg', 1),
(7, 'book', 9, 8, 850.00, 80, '5', '<span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">It is a long established fact that a reader will be distracted by the readable&nbsp;</span>', '<span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.</span>', '../assets/admin_assets/product_images/image1.png', 1),
(8, 'Feeling Bored', 10, 1, 43545.00, 45, '3', '<span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or&nbsp;</span>', '<span style="font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or&nbsp;</span>', '../assets/admin_assets/product_images/cricket4.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `full_name` varchar(256) NOT NULL,
  `email_address` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `full_name`, `email_address`, `address`, `phone_number`, `district`) VALUES
(1, 'Sonjoy Fakir', 'sm@gmail.com', 'Dholaykhal', '123123', 'PAbna'),
(2, 'Mehedi Hasan', 'mehedi@gmail.com', 'Mohammadpur', '01773677425', 'Dhaka'),
(3, 'Sahadat Khan', 'sahadat@gmail.com', 'Sonir Akhara', '1231234', 'Dhaka'),
(4, 'MD. Mehedi Hasan', 'admin@gmail.com', '', '', ''),
(5, 'MD. Mehedi Hasan', 'admin@gmail.com', 'dhaka', '0164654646', 'dhaka'),
(6, ' Mainul002', 'm.mainul99@gmail.com', 'Chawk bazar', '0201244545', 'Dhaka'),
(7, ' nnfdhdfh', 'admin@gmail.com', 'fhgjfdjh', '354345345', 'ngjhnvcnn'),
(8, 'Mohammad Araf', 'm.mainul999@gmail.com', 'Dhaka', '144445456465', 'Dhaka'),
(9, ' mvmghj', 'm.mainul999@gmail.com', 'fgjfgjh', '45756876', 'hfghfdhg'),
(10, ' kghjgjg', 'm.mainul99@gmail.com', 'jhgfjfgjgfjh', '4564646', 'jfgjfgjfdgj'),
(11, ' sdagsadg', 'gsagg@gmail.com', 'fasfasf', '57779', 'fsdafsdgsg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_cart`
--

CREATE TABLE `tbl_temp_cart` (
  `temp_cart_id` int(11) NOT NULL,
  `session_id` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_quantity` int(7) NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_temp_cart`
--

INSERT INTO `tbl_temp_cart` (`temp_cart_id`, `session_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(9, 'gruqmg0skfdicrn033i7d32da7', 1, 'Samsung Galaxy DUOS', 26000.00, 2, '../assets/admin_assets/product_images/PA080545.jpg'),
(10, 'gruqmg0skfdicrn033i7d32da7', 2, 'T-shirt', 1600.00, 1, '../assets/admin_assets/product_images/indweex.jpg'),
(11, 'v7c70ltqnekp6e8t3jni040rt1', 1, 'Samsung Galaxy DUOS', 26000.00, 1, '../assets/admin_assets/product_images/PA080545.jpg'),
(12, 'v7c70ltqnekp6e8t3jni040rt1', 3, 'Fashionable T-Shirt', 1800.00, 1, '../assets/admin_assets/product_images/10176430-origpic-0453e1.jpg'),
(13, 'v7c70ltqnekp6e8t3jni040rt1', 6, 'Bat', 5000.00, 1, '../assets/admin_assets/product_images/cricket.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_temp_cart`
--
ALTER TABLE `tbl_temp_cart`
  ADD PRIMARY KEY (`temp_cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  MODIFY `manufacturer_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_temp_cart`
--
ALTER TABLE `tbl_temp_cart`
  MODIFY `temp_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
