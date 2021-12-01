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
CREATE DATABASE `techeria_db`;
use `techeria_db`;
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
-- Table structure for table `laptops`
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
(68329382, 'laptop6.jpg', 'MacBook Pro 14\" Laptop - Apple M1 Pro chip - 16GB Memory - 512GB SSD (Latest Model) - Space Gray', 1897.65, 'The new MacBook Pro delivers game-changing performance for pro users. With the powerful M1 Pro to supercharge pro-level workflows while getting amazing battery life.¹ And with an immersive 14-inch Liquid Retina XDR display and an array of pro ports, you can do more than ever with MacBook Pro.\r\n', 'laptop'),
(68329383, 'laptop2.jpg', 'ASUS - ROG Zephyrus 15.6\" QHD Gaming Laptop - AMD Ryzen 9 - 16GB Memory - NVIDIA GeForce RTX 3070 - 1TB SSD - Eclipse Grey - Eclipse Grey', 1549.99, 'ASUS ROG Zephyrus Gaming Laptop. Enjoy everyday gaming with this ASUS notebook PC. The AMD Ryzen 9 processor and 16GB of RAM let you run graphics-heavy games smoothly, while the potent NVIDIA GeForce RTX 3070 graphics produce high-quality visuals on the fast 15.6-inch 165hz QHD display. This ASUS notebook PC has 1TD SSD that shortens load times and offers ample storage.', 'laptop'),
(68329384, 'laptop3.jpg', 'Microsoft - Surface Laptop Go - 12.4\" Touch-Screen - Intel 10th Generation Core i5 - 8GB Memory - 128GB Solid State Drive - Sandstone', 550.23, 'Make the most of every day with the sleek style, performance, and all-day battery life² you need in the lightest Surface Laptop, all at an exceptional value. Ultra-light and portable profile, the apps* you use every day, premium materials, and a choice of must-have colors will make this your go-to laptop.\r\n²Up to 13 hours of battery life based on typical Surface device usage. Testing conducted by Microsoft in September 2020 using preproduction software and preproduction configurations of Surface Laptop Go Testing consisted of full battery discharge with a mixture of active use and modern standby. The active use portion consists of (1) a web browsing test accessing 8 popular websites over multiple open tabs, (2) a productivity test utilizing Microsoft Word, PowerPoint, Excel and Outlook, and (3) a portion of time with the device in use with idle applications. All settings were default except screen brightness was set to 150nits with Auto-Brightness disabled. Wi-Fi was connected to a network. Battery life varies significantly with settings, usage and other factors.', 'laptop'),
(68329384, 'laptop7.jpg', 'GIGABYTE - 15.6\" FHD IPS 144Hz Gaming Laptop - i5-11400H - 16GB - NVIDIA GeForce RTX 3050 512 GB SSD', 829.99, 'The G5 gaming laptop powered by NVIDIA GeForce RTX 30 Series GPU combines gaming, entertainment, work and more! Its powerful 11th Gen Intel Processor allows you to effortlessly handle multiple tasks at the same time. It features a 3 screen display output, built-in SD card slot, up to 6TB storage capacity and next-gen Wi-Fi 6 technology; with a tool for every task, this laptop provides great balance between gaming, entertainment, and work capabilities. Welcome to your new go-to laptop', 'laptop'),
(68329385, 'laptop2.jpg', 'ASUS - ZenBook Flip 15 Q528EH 15.6\" Touch-Screen Laptop - Intel Core i7 - 16GB Memory - GTX1650 Max-Q - 512GB SSD - Grey', 1199.99, 'The 1920 x 1080 resolution boasts impressive color and clarity. Energy-efficient LED backlight. Display with Pantone-Validated & Eye comfort testing by TÜV Rheinland.\r\nFeaturing true machine intelligence and a newly designed efficient architecture, the groundbreaking processor learns and adapts to your needs so you can achieve more.\r\n16GB system memory for basic multitasking\r\nAdequate high-bandwidth RAM to smoothly run multiple applications and browser tabs at the same time.512GB PCIe SSD.While offering less storage space than a hard drive, a flash-based SSD has no moving parts, resulting in faster start-up times and data access, no noise, and reduced heat production and power draw on the battery.', 'laptop'),
(68329386, 'laptop8.jpg', 'Lenovo Ideapad 3 15.6\" Touch Screen Laptop - Intel Core i3 - 8GB Memory - 256GB SSD - Almond', 538.99, 'Engineered for long-lasting performance, the Lenovo™ IdeaPad™ 3 delivers powerful performance with the latest Intel 11th Generation Processors with Intel™ UHD Graphics, in a laptop that\'s perfect for your everyday tasks, with features that you can depend Touch, tap, glide and make the most of Windows 10. Typical 1366 x 768 HD resolution. Supports 720p content. Energy-efficient LED backlight.\r\n11th Gen Intel® Core™ i3-1115G4 mobile processor\r\nSmart dual-core, four-way processing performance for HD-quality computing.\r\n8GB system memory for advanced multitasking\r\nSubstantial high-bandwidth RAM to smoothly run your games and photo- and video-editing applications, as well as multiple programs and browser tabs all at once.\r\n256GB Solid State Drive (NVMe TLC)\r\nSave files fast and store more data. With massive amounts of storage and advanced communication power, NVMe TLC SSDs are great for major gaming applications, multiple servers, daily backups, and more.', 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--
CREATE TABLE `smartphone` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `smartphone`
--

INSERT INTO `smartphone` (`id`, `image`, `name`, `price`, `description`, `category`) VALUES
(58329389, 'smartphone1.jpg', 'Samsung - Galaxy S21 Ultra 5G 128GB - Phantom Black (Verizon)', 1299.99, 'Galaxy S21 Ultra 5G for verizon is crafted so you don’t need to choose between video and photo. With a single tap, you can pull super-clear stills straight from high-resolution 8K video. Or if you’re looking to capture stunning photos, the 108MP camera feels like you’ve brought your own professional studio with you. Galaxy S21 Ultra 5G, designed to be epic in every way.', 'smartphone'),
(0, 'smartphone2.jpg', 'Apple - iPhone 13 5G 128GB - Pink (Verizon)\r\n', 769.99, '\r\niPhone 13. The most advanced dual-camera system ever on iPhone. Lightning-fast A15 Bionic chip. A big leap in battery life. Durable design. Superfast 5G.¹ And a brighter Super Retina XDR display.', 'smartphone'),
(58329390, 'smartphone3.jpg', 'Google - Pixel 6 128GB - Stormy Black (Verizon)', 549.99, 'Meet Pixel 6. It’s completely reimagined, inside and out. Powered by Tensor, Google’s first-ever processor, it’s fast, smart, and secure. The all-day battery adapts to you.* The Pixel Camera captures a moment just how you experienced it. And the Personal Safety app and the new Titan M2TM chip help protect you, your stuff, and your privacy.', 'smartphone'),
(58329391, 'smartphone4.jpg', 'Apple - iPhone 13 mini 5G 128GB - Midnight (T-Mobile)', 699.99, 'iPhone 13 mini. The most advanced dual-camera system ever on iPhone. Lightning-fast A15 Bionic chip. A leap in battery life. Durable design. Superfast 5G.¹ And a brighter Super Retina XDR display.', 'smartphone'),
(58329392, 'smartphone5.jpg', 'Motorola - Moto G Stylus (2021) 128GB Memory (Unlocked) - Aurora White', 250.99, 'With a 48MP Quad camera system, you can capture from the smallest details to grand canyon wide images. View them on the stunning 6.8” FHD+ Max Vision display and an 89% screen-to-body ratio. You don’t have to worry about battery life with a 4000mAh battery that can last up to three days.', 'smartphone'),
(58329393, 'smartphone6.jpg', 'Samsung - Galaxy A52 5G 128GB (Unlocked) - Black', 480.69, 'Good design always looks expensive, even when it\'s not. Galaxy A52 5G puts high end style within reach thanks to a modern matte finish and a super sleek design.\r\n\r\n¹ Fast Charging capability provided through charger.\r\n\r\n² 5G speeds vary and require optimal network and connection (factors include frequency, bandwidth, congestion); see carrier for availability.\r\n\r\n³ MicroSD card sold separately.\r\n\r\n⁴ Measured diagonally, the screen size is 6.5\" in the full rectangle and 6.3\" with accounting for the rounded corners. Actual viewable area is less due to the rounded corners and camera lens.\r\n\r\n⁵ Water resistant in up to 3 feet of freshwater for up to 30 minutes. Rinse residue/dry after wet.\r\nWe\'ve outfitted Galaxy A52 5G for Verizon with some of our most awesome Galaxy innovations so you can stream, capture and experience all the action at a price you\'ll love.', 'smartphone'),
(58329394, 'smartphone7.jpg', 'Samsung - Galaxy S20 FE 5G 128GB (Unlocked) - Cloud Navy', 489.99, 'Communicate with your loved ones using this Samsung Galaxy S20 5G for AT&T. The 6GB of RAM and octa-core 2.84GHz processor ensure seamless multitasking, while the 12MP rear camera captures high-quality pictures and videos. This Samsung Galaxy S20 5G boasts a 6.5-inch Infinity-O display that delivers detailed, clear images and 128GB internal capacity for all media files.', 'smartphone'),
(58329395, 'smartphone8.jpg', 'OnePlus - 9 Pro 5G 256GB (Unlocked) - Pine Green', 799.99, 'The new OnePlus 9 Pro is finally here, bringing a flagship camera experience made hand-in-hand with Hasselblad. The device offers a 120Hz Fluid Display and 12GB of RAM, providing an immersive experience wherever, whenever. Top up the massive 4,500 mAh battery with OnePlus’ signature Warp Charge 65T or Warp Charge 50 Wireless, giving you a day’s power in less than half an hour. The OnePlus 9 Pro includes Alexa and Google Assistant Built-in, providing hands-free experience.\r\nMeet Warp Charge 65T, our fastest charging solution yet, capable of delivering a day’s worth of power in only 15 minutes.', 'smartphone'),
(58329396, 'smartphone9.jpg', 'Apple - Preowned iPhone X with 256GB Memory Cell Phone (Unlocked) - Space Gray', 489.99, 'Stay connected with this preowned Apple iPhone X smartphone. The 5.8-inch Super Retina HD display and the ultrawide and telephoto cameras let you capture high-quality low-light photos, while Face ID enhances security. This slim gray Apple iPhone X smartphone has 256GB of space that handles lots of photos and videos.\r\n', 'smartphone');


-- --------------------------------------------------------

--
-- Table structure for table `techeria_app_order`
--

CREATE TABLE `techeria_app_order` (
  `id` bigint(20) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(20) NOT NULL,
  `order_note` varchar(100) NOT NULL,
  `order_total` double NOT NULL,
  `tax` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `techeria_app_orderproduct`
--

CREATE TABLE `techeria_app_orderproduct` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `techeria_app_payment`
--

CREATE TABLE `techeria_app_payment` (
  `id` bigint(20) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--
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
-- Indexes for dumped tables
--

--
-- Table structure for table `order`
--
CREATE TABLE `order` (
  `id` INT NOT NULL,
  `start_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ordered_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `odered` boolean NOT NULL DEFAULT '0',
  `buyer_id` INT NOT NULL,
  `payment_id` INT NOT NULL,
  `checkout_address_id` INT NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` INT NOT NULL,
  `item_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `odered` BOOLEAN NOT NULL DEFAULT '0',
  `buyer_id` INT NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` INT NOT NULL,
  `order_id` int NOT NULL,
  `orderitem_id` int NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Table structure for table `order_items`
--

CREATE TABLE `checkoutaddress` (
  `id` INT NOT NULL,
  `street_address` VARCHAR(100) NOT NULL,
  `apartment_address` VARCHAR(100) NOT NULL,
  `country` VARCHAR(20) NOT NULL,
  `zip` VARCHAR(255) NOT NULL,
  `buyer_id` VARCHAR(255) NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Table structure for table `order_items`
--

CREATE TABLE `payment` (
  `id` INT NOT NULL,
  `stripe_id` VARCHAR(100) NOT NULL,
  `amount` REAL NOT NULL,
  `timestamp` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `buyer_id` VARCHAR(255) NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
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
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

  --
  -- Indexes for table `techeria_app_order`
  --
  ALTER TABLE `techeria_app_order`
    ADD PRIMARY KEY (`id`),
    ADD KEY `techeria_app_order_payment_id_1cd4aab0_fk_techeria_` (`payment_id`),
    ADD KEY `techeria_app_order_user_id_1e91c823_fk_buyer_id` (`user_id`);

  --
  -- Indexes for table `techeria_app_orderproduct`
  --
  ALTER TABLE `techeria_app_orderproduct`
    ADD PRIMARY KEY (`id`),
    ADD KEY `techeria_app_orderpr_order_id_8ff1e5eb_fk_techeria_` (`order_id`),
    ADD KEY `techeria_app_orderpr_payment_id_dce4d8ed_fk_techeria_` (`payment_id`),
    ADD KEY `techeria_app_orderproduct_product_id_2843d8aa_fk_products_id` (`product_id`),
    ADD KEY `techeria_app_orderproduct_user_id_61c10e07_fk_buyer_id` (`user_id`);

  --
  -- Indexes for table `techeria_app_payment`
  --
  ALTER TABLE `techeria_app_payment`
    ADD PRIMARY KEY (`id`),
    ADD KEY `techeria_app_payment_user_id_e33f4c6e_fk_buyer_id` (`user_id`);

  
