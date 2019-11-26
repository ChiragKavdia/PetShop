SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: `rkown`
--

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
(1, 'Bengal Cat'),
(2, 'Rag Doll'),
(3, 'British Shorthair'),
(4, 'Persian Cat'),
(5, 'Sphynx Cat');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `product_title` varchar(1000) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `price` varchar(300) NOT NULL,
  `total_amt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
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
(1, 'Labrador'),
(2, 'Pug'),
(3, 'Siberian Husky'),
(4, 'Rottweiler'),
(5, 'Golden Retreiver');


-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `trx_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100),
  `product_brand` int(100),
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, NULL, 'Rocky', 5000, 'Good Caring Dog', '1.jpg', 'labrador dog'),
(2, 1, NULL, 'Tommy', 25000, 'Aggressive but loyal', '2.jpg', 'labrador dog'),
(3, 1, NULL, 'Lucky', 30000, 'Sweet cute puppy', '3.jpg', 'labrador dog'),
(4, 1, NULL, 'Sandy', 32000, 'Shy and sweet', '4.jpg', 'labrador dog'),
(5, 1, NULL, 'Jacky', 10000, 'Calm and quiet', '5.jpg', 'labrador dog'),
(6, 2, NULL, 'Reddy', 5000, 'Good Caring Dog', '6.jpeg', 'pug dog'),
(7, 2, NULL, 'Modi', 25000, 'Aggressive but loyal', '7.jpeg', 'pug dog'),
(8, 2, NULL, 'Shouty', 30000, 'Sweet cute puppy', '8.jpeg', 'pug dog'),
(9, 2, NULL, 'Barky', 32000, 'Shy and sweet', '9.jpeg', 'pug dog'),
(10, 2, NULL, 'Mango', 10000, 'Calm and quiet', '10.jpeg', 'pug dog'),
(11, 3, NULL, 'Litchi', 5000, 'Good Caring Dog', '11.jpeg', 'siberian husky dog'),
(12, 3, NULL, 'Chiru', 25000, 'Aggressive but loyal', '12.jpeg', 'siberian husky dog'),
(13, 3, NULL, 'Ashu', 30000, 'Sweet cute puppy', '13.jpeg', 'siberian husky dog'),
(14, 3, NULL, 'Browny', 32000, 'Shy and sweet', '14.jpeg', 'siberian husky dog'),
(15, 3, NULL, 'Belly', 10000, 'Calm and quiet', '15.jpeg', 'siberian husky dog'),
(16, 4, NULL, 'Pluto', 5000, 'Good Caring Dog', '16.jpeg', 'rottweiler dog'),
(17, 4, NULL, 'Jupyter', 25000, 'Aggressive but loyal', '17.jpeg', 'rottweiler dog'),
(18, 4, NULL, 'Drake', 30000, 'Sweet cute puppy', '18.jpeg', 'rottweiler dog'),
(19, 4, NULL, 'Dracarys', 32000, 'Shy and sweet', '19.jpeg', 'rottweiler dog'),
(20, 4, NULL, 'Valeria', 10000, 'Calm and quiet', '20.jpeg', 'rottweiler dog'),
(21, 5, NULL, 'Scooby', 5000, 'Good Caring Dog', '21.jpeg', 'golden retreiver dog'),
(22, 5, NULL, 'Mandarin', 25000, 'Aggressive but loyal', '22.jpeg', 'golden retreiver dog'),
(23, 5, NULL, 'Mars', 30000, 'Sweet cute puppy', '23.jpeg', 'golden retreiver dog'),
(24, 5, NULL, 'Moon', 32000, 'Shy and sweet', '24.jpeg', 'golden retreiver dog'),
(25, 5, NULL, 'Jon Snow', 10000, 'Calm and quiet', '25.jpeg', 'golden retreiver dog'),
(26, NULL, 1, 'Dots', 1200, 'Magestic cat', '26.jpeg', 'Bengal Cat'),
(27, NULL, 1, 'Tiger', 1400, 'Tiger looking', '27.jpeg', 'Bengal Cat'),
(28, NULL, 1, 'Magic', 1500, 'Beautifull', '28.jpeg', 'Bengal Cat'),
(29, NULL, 1, 'Browny', 600, 'Brown colour', '29.jpeg', 'Bengal Cat'),
(30, NULL, 1, 'Pots', 1000, 'Nice Cat', '30.jpeg', 'Bengal Cat'),
(31, NULL, 2, 'Slims', 3000, 'Small and short', '31.jpeg', 'ragdoll cat'),
(32, NULL, 2, 'Raggers', 1600, 'Slim', '32.jpeg', 'ragdoll cat'),
(33, NULL, 2, 'Doll', 800, 'Looks like a doll', '33.jpeg', 'ragdoll cat'),
(34, NULL, 2, 'Red', 1300, 'Pretty', '34.jpeg', 'ragdoll cat'),
(35, NULL, 2, 'Smithy', 1900, 'Fluffy', '35.jpeg', 'ragdoll cat'),
(36, NULL, 3, 'Fluffy', 7000, 'Furry', '36.jpeg', 'British Shorthair Cat'),
(37, NULL, 3, 'Blacky', 7500, 'Dark Magestic', '37.jpeg', 'British Shorthair Cat'),
(38, NULL, 3, 'Smuffer', 6500, 'Furry', '38.jpeg', 'British Shorthair Cat'),
(39, NULL, 3, 'Baby', 6900, 'Small', '39.jpeg', 'British Shorthair Cat'),
(40, NULL, 3, 'Qwert', 2500, 'Very pretty', '40.jpeg', 'British Shorthair Cat'),
(41, NULL, 4, 'White', 35000, 'White coloured', '41.jpeg', 'persian cat'),
(42, NULL, 4, 'Lighty', 1000, 'Small and cute', '42.jpeg', 'persian cat'),
(43, NULL, 4, 'Catty', 6000, 'Aggressive', '43.jpeg', 'persian cat'),
(44, NULL, 4, 'Softy', 1500, 'Shy', '44.jpeg', 'persian cat'),
(45, NULL, 4, 'Wowwy', 20000, 'Pretty', '45.jpeg', 'persian cat'),
(46, NULL, 5, 'Sweety', 3500, 'Slim', '46.jpg', 'sphynx cat'),
(47, NULL, 5, 'Rosy', 2500, 'Fat', '47.jpg', 'sphynx cat'),
(48, NULL, 5, 'Blair', 3000, 'Cute', '48.jpg', 'sphynx cat'),
(49, NULL, 5, 'Chini', 10000, 'Naughty', '49.JPG', 'sphynx cat'),
(50, NULL, 5, 'Makkhan', 10000, 'Aggressive', '50.JPG', 'sphynx cat');

-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `ammount` int(100) NOT NULL,
  `trx_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(900) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(8, 'ghost', 'rider', 'ghost@mail.com', '1138c51ef876abac92aae6d726a206a1', '0771844319', 'address', 'address'),
(9, 'rimer', 'rabit', 'test@test.com', '25f9e794323b453885f5181f1b624d0b', '3214569870', 'address1', 'address2');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
