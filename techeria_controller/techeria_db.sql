-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 12:39 AM
-- Server version: 8.0.26
-- PHP Version: 8.0.10

-- Database: `techeria_db`
--
CREATE DATABASE `techeria_db`
use `techeria_db`
-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile_number` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `name`, `price`, `description`, `category`) VALUES
(12345678, 'iphone12_.jpg', 'Apple iPhone 12, 64 GB', 999, '-OFFER INCLUDES: An Apple iPhone and a wireless plan with unlimited data/talk/text\r\n-WIRELESS PLAN: Unlimited talk, text, and data with mobile hotspot, nationwide coverage, and international reach. No long-term contract required.\r\n-PROGRAM DETAILS: When you add this offer to cart, it will reflect 3 items: the iPhone, SIM kit, and carrier subscription\r\n-Ceramic Shield, tougher than any smartphone glass\r\n-A14 Bionic chip, the fastest chip ever in a smartphone\r\n-Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n-12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\n-Industry-leading IP68 water resistance\r\n-Supports MagSafe accessories for easy attachment and faster wireless charging\r\niOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more', 'Phones'),
(13576428, 'iphone13max.png', 'Apple iPhone 13 Pro Max, 128 GB', 729, 'https://www.amazon.com/dp/B09G9DKC87/ref=fs_a_iwp2_0#', 'Phones'),
(23456789, 'blueiphone.jpg', 'Apple iPhone 12 Pro, 128 GB', 999, '-OFFER INCLUDES: An Apple iPhone and a wireless plan with unlimited data/talk/text\r\n-WIRELESS PLAN: Unlimited talk, text, and data with mobile hotspot, nationwide coverage, and international reach. No long-term contract required.\r\n-PROGRAM DETAILS: When you add this offer to cart, it will reflect 3 items: the iPhone, SIM kit, and carrier subscription\r\n-Ceramic Shield, tougher than any smartphone glass\r\n-A14 Bionic chip, the fastest chip ever in a smartphone\r\n-LiDAR Scanner for improved AR experiences, Night mode portraits\r\n-12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\n', 'Phones'),
(33334562, 'iphone7.jpg', 'Apple iPhone 7, 128GB', 169, '-Fully unlocked and compatible with any carrier of choice (e.g. AT&T, T-Mobile, Sprint, Verizon, US-Cellular, Cricket, Metro, etc.).\r\n-The device does not come with headphones or a SIM card. It does include a charger and charging cable that may be generic, in which case it will be UL or Mfi (Made for iPhone) Certified.\r\n-Inspected and guaranteed to have minimal cosmetic damage, which is not noticeable when the device is held at arms length.', 'Phones'),
(34567891, 'lenovo13.jpg', 'Lenovo IdeaPad 3, 11.6\"', 169.99, '-Slim and lightweight, this notebook computer goes anywhere. Running on lightning-fast Chrome OS, it boots up in seconds, updates automatically, and keeps you safe with built-in virus protection\r\n-Enjoy your favorite streaming videos and music. The 3-side narrow bezel HD display delivers beautiful clarity, while dual 2W stereo speakers offer crystal-clear audio', 'Computers'),
(44433221, 'iphone11.jpg', 'Apple iPhone 11, 64GB', 479, '- This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.\r\n- There will be no visible cosmetic imperfections when held at an arm’s length.\r\n- This product will have a battery which exceeds 80% capacity relative to new.\r\n- Accessories may not be original, but will be compatible and fully functional. Product may come in generic Box.\r\n- Product will come with a SIM removal tool, a charger and a charging cable. Headphones and SIM card are not included.\r\n- This product is eligible for a replacement or refund within 90 days of receipt if you are not satisfied under the Amazon Renewed Guarantee. See terms here.', 'Phones'),
(45231256, 'acerasp.jpg', 'Acer Aspire 5, 15.6\"', 399.99, '-Powerful Productivity: AMD Ryzen 3 3350U delivers desktop-class performance and amazing battery life in a slim notebook. With Precision Boost, get up to 3.5GHz for your high-demand applications\r\n-Maximized Visuals: See even more on the stunning 15.6\" Full HD display with 82.58% screen-to-body, 16:9 aspect ratio and narrow bezels', 'Computers'),
(54774443, 'iphone12mini.jpg', 'Apple iPhone 12 Mini, 128GB', 564.99, '-Fully unlocked and compatible with any carrier of choice (e.g. AT&T, T-Mobile, Sprint, Verizon, US-Cellular, Cricket, Metro, etc.).\r\n-The device does not come with headphones or a SIM card. It does include a charger and charging cable that may be generic.', 'Phones'),
(75739287, 'dell13.jpg', 'Dell Inspiron 13, 13.3\"', 1074.51, '-WINDOW 11: Free Upgrade to Windows 11 when available (see below)\r\n-STUNNING VISUALS: Vivid color with less blue light on the 16:10 QHD display panel offers clearer, sharper images and accommodate more content\r\n-FAST CHARGE: ExpressCharge recharges your battery in a flash (up to 80% in 60 minutes*)', 'Computers'),
(98765432, 'asuschrome.jpg', 'ASUS Chromebook C223, 11.6\"', 151.05, '-Ready for productivity and performance while being on the go, with speedy performance, robust security, and instant-on convenience\r\n-Lightweight 2.2 pound body and with thin and premium metallic finish for a sleek appearance', 'Computers');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `laptops` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `image`, `name`, `price`, `description`, `category`) VALUES
(681122, 'laptop1.jpg', 'HP Laptop, 17.3\" FHD Non-Touch Display, 11th Gen Intel Core i5-1135G7 Quad-Core Processor, 16GB DDR4 Memory, 1TB PCIe NVMe SSD, Webcam, HDMI, Wi-Fi, Windows 10 Home, Silver(2021)', 899, '【Memory & Storage】Memory is 16GB high-bandwidth RAM to smoothly run multiple applications and browser tabs all at once. Hard Drive is 1TB PCIe NVMe M.2 Solid State Drive which allows to fast bootup and data transfer\r\n【Operating System】Windows 10 Home 64-bit\r\n【Processor】 11th Gen Intel Core i5-1135G7 2.40GHz Quad-Core Processor (8MB Cache, up to 4.20GHz), Intel Iris Xe Graphics', ''),
(68329389, 'laptop4.jpg', 'Dell Inspiron 17 7000 2-in-1 Touchscreen Business Laptop 17.3\" QHD, Intel Core i7-1165G7, Window 10 Pro, 32G RAM 1TB SSD, Intel iris xe Graphics, Fingerprint Reader, Backlit Keyboard', 1599.99, '[POWERFUL PERFORMANCE]: The Dell Inspiron 17 7000 2-in-1 laptop is powered with the latest 11th Generation Intel Core i7-1165G7 Processor (12MB Cache, up to 4.7 GHz) and 32GB high-bandwidth DDR4 memory, powerful processing for advanced multitasking, demanding computing, smooth gaming, multiple tabs browsing, and everyday tasks. 1TB PCIe NVMe M.2 SSD (15x faster than HDD, stay cool and quiet) offers ample storage, quick boot-ups, fast data access, and improves the overall performance.\r\n[STUNNING VISUALS]: 17.0-inch QHD+ (2560 x 1600) Truelife Touch Narrow Border IPS Display. Intel iris xe graphics with shared video memory gives you a new level of graphics performance with vibrant, lifelike color and details for internet use, fast photo/video editing, streaming, and gaming', 'laptop'),
(68329383, 'laptop5.jpg', 'Lenovo Ideapad 3 15.6\" Touch Screen Laptop - Intel Core i3 - 8GB Memory - 256GB SSD - Almond', 469.99, 'Windows 10 Home in S Mode\r\nExperience the most secure Windows ever built with fast boot times, increased responsiveness, and added protection against phishing and malware.\r\n\r\n15.6\" HD multitouch screen\r\nTouch, tap, glide and make the most of Windows 10. Typical 1366 x 768 HD resolution. Supports 720p content. Energy-efficient LED backlight.\r\n\r\n11th Gen Intel® Core™ i3-1115G4 mobile processor\r\nSmart dual-core, four-way processing performance for HD-quality computing.\r\n\r\n8GB system memory for advanced multitasking\r\nSubstantial high-bandwidth RAM to smoothly run your games and photo- and video-editing applications, as well as multiple programs and browser tabs all at once.\r\n\r\n256GB Solid State Drive (NVMe TLC)\r\nSave files fast and store more data. With massive amounts of storage and advanced communication power, NVMe TLC SSDs are great for major gaming applications, multiple servers, daily backups, and more.\r\n\r\nIntel UHD Graphics\r\nOn-processor graphics with shared video memory provide everyday image quality for Internet use, basic photo editing and casual gaming.\r\n\r\nModern aluminum design\r\nCreates a sleek, modern look with clean lines and provides a rigid but lightweight frame.\r\n\r\nWeighs 4.07lbs. and measures 0.78\" thin\r\nThin and light design with DVD/CD drive omitted for improved portability. 2-cell lithium polymer battery.\r\n\r\nWireless/Wired connectivity (WiFi 5 - 802.11 ac)\r\nConnect to a Wireless-AC router for nearly 3x the speed, more capacity and wider coverage than Wireless-N. Backward-compatible with all other Wi-Fi networks and hotspots.', 'laptop'),
(68329382, 'laptop6.jpg', 'MacBook Pro 14\" Laptop - Apple M1 Pro chip - 16GB Memory - 512GB SSD (Latest Model) - Space Gray', 1897.65, 'The new MacBook Pro delivers game-changing performance for pro users. With the powerful M1 Pro to supercharge pro-level workflows while getting amazing battery life.¹ And with an immersive 14-inch Liquid Retina XDR display and an array of pro ports, you can do more than ever with MacBook Pro.\r\n', 'laptop');


--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile_number` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table 'orders`
--
CREATE TABLE `orders` (
  `id` BIGINT(20) NOT NULL,
  `buyer_id` BIGINT(20) NOT NULL,
  `subtotal` DOUBLE NOT NULL,
  `order_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `complete` BOOLEAN NOT NULL DEFAULT '0',
  `transaction_id` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
)  ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--
-- Table structure for table 'orders_items`
--
CREATE TABLE `order_items` (
  `id` BIGINT(20) NOT NULL,
  `quantity` INT NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
--


--
-- Indexes for dumped tables
--

--
--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98765433;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;
-- --------------------------------------------------------

-- --------------------------------------------------------

-- --------------------------------------------------------

-- --------------------------------------------------------
--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;
