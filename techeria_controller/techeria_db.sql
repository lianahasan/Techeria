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
  `first_name` varchar(255),
  `last_name` varchar(255),
  `user_name` varchar(255),
  `date_of_birth` date,
  `email` varchar(254),
  `mobile_number` int,
  `address` varchar(255),
  `city` varchar(255),
  `state` varchar(255),
  `zip_code` varchar(255),
  `country` varchar(20),
  `user_id` int,
  `device` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


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
(681122, 'laptop1.jpg', 'HP Laptop, 17.3\" FHD Non-Touch Display, 11th Gen Intel Core i5-1135G7 Quad-Core Processor, 16GB DDR4 Memory, 1TB PCIe NVMe SSD, Webcam, HDMI, Wi-Fi, Windows 10 Home, Silver(2021)', 899, '【Memory & Storage】Memory is 16GB high-bandwidth RAM to smoothly run multiple applications and browser tabs all at once. Hard Drive is 1TB PCIe NVMe M.2 Solid State Drive which allows to fast bootup and data transfer\r\n【Operating System】Windows 10 Home 64-bit\r\n【Processor】 11th Gen Intel Core i5-1135G7 2.40GHz Quad-Core Processor (8MB Cache, up to 4.20GHz), Intel Iris Xe Graphics', ''),
(12345678, 'iphone12_.jpg', 'Apple iPhone 12, 64 GB', 999, '-OFFER INCLUDES: An Apple iPhone and a wireless plan with unlimited data/talk/text\r\n-WIRELESS PLAN: Unlimited talk, text, and data with mobile hotspot, nationwide coverage, and international reach. No long-term contract required.\r\n-PROGRAM DETAILS: When you add this offer to cart, it will reflect 3 items: the iPhone, SIM kit, and carrier subscription\r\n-Ceramic Shield, tougher than any smartphone glass\r\n-A14 Bionic chip, the fastest chip ever in a smartphone\r\n-Advanced dual-camera system with 12MP Ultra Wide and Wide cameras; Night mode, Deep Fusion, Smart HDR 3, 4K Dolby Vision HDR recording\r\n-12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\n-Industry-leading IP68 water resistance\r\n-Supports MagSafe accessories for easy attachment and faster wireless charging\r\niOS with redesigned widgets on the Home screen, all-new App Library, App Clips and more', 'Phones'),
(13576428, 'iphone13max.png', 'Apple iPhone 13 Pro Max, 128 GB', 729, 'https://www.amazon.com/dp/B09G9DKC87/ref=fs_a_iwp2_0#', 'Phones'),
(23456789, 'blueiphone.jpg', 'Apple iPhone 12 Pro, 128 GB', 999, '-OFFER INCLUDES: An Apple iPhone and a wireless plan with unlimited data/talk/text\r\n-WIRELESS PLAN: Unlimited talk, text, and data with mobile hotspot, nationwide coverage, and international reach. No long-term contract required.\r\n-PROGRAM DETAILS: When you add this offer to cart, it will reflect 3 items: the iPhone, SIM kit, and carrier subscription\r\n-Ceramic Shield, tougher than any smartphone glass\r\n-A14 Bionic chip, the fastest chip ever in a smartphone\r\n-LiDAR Scanner for improved AR experiences, Night mode portraits\r\n-12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording\r\n', 'Phones'),
(33334562, 'iphone7.jpg', 'Apple iPhone 7, 128GB', 169, '-Fully unlocked and compatible with any carrier of choice (e.g. AT&T, T-Mobile, Sprint, Verizon, US-Cellular, Cricket, Metro, etc.).\r\n-The device does not come with headphones or a SIM card. It does include a charger and charging cable that may be generic, in which case it will be UL or Mfi (Made for iPhone) Certified.\r\n-Inspected and guaranteed to have minimal cosmetic damage, which is not noticeable when the device is held at arms length.', 'Phones'),
(34567891, 'lenovo13.jpg', 'Lenovo IdeaPad 3, 11.6\"', 169.99, '-Slim and lightweight, this notebook computer goes anywhere. Running on lightning-fast Chrome OS, it boots up in seconds, updates automatically, and keeps you safe with built-in virus protection\r\n-Enjoy your favorite streaming videos and music. The 3-side narrow bezel HD display delivers beautiful clarity, while dual 2W stereo speakers offer crystal-clear audio', 'Computers'),
(38329389, 'accessories1.jpg', 'Beats by Dr. Dre - Beats Studio³ Wireless Noise Cancelling Headphones - Midnight Black', 279.99, 'Enjoy immersive listening with these midnight black Beats Studio³ headphones. Pure ANC technology and the soft ear cushions block off external noise and optimize sound output, and the battery delivers up to 40 hours of playback in low-power mode. The Class 1 Bluetooth connectivity of these Beats Studio³ headphones offers seamless music streaming from compatible devices at extended range.', 'accessories'),
(38329390, 'accessories2.jpg', 'Bose - SoundLink Wireless Around-Ear Headphones II - White', 239.99, 'Enjoy a better Bluetooth wireless experience with Bose SoundLink around- ear headphones II. Exclusive headphone technology delivers deep, immersive sound at any volume. SoundLink wireless Bluetooth headphones use the latest technology so you can easily connect to your mobile devices with seamless audio/video sync. And a dual microphone system rejects noise and wind, so you will be heard loud and clear. Switch seamlessly between 2 Bluetooth devices, and stay connected to both. And intuitive touch controls give you simple command of your music and calls. The over ear headphone design features soft ear cushions and a contoured headband, they\'re lighter and more comfortable than other comparable wireless headphones so you can enjoy them all day long. Wear them almost anywhere, and experience uncompromised wireless performance. When you\'re done listening, you can fold them flat for storage in their compact matching case.', 'accessories'),
(38329391, 'accessories3.jpg', 'Apple - AirPods Pro (with Magsafe Charging Case) - White', 232.99, 'AirPods Pro feature Active Noise Cancellation for immersive sound. Transparency mode for hearing the world around you. They’re sweat and water resistant1 and have a customizable fit for all-day comfort.', 'accessories'),
(38329392, 'accessories4.jpg', '', 148.99, 'True wireless noise cancelling Beats Studio Bud are made for music. Designed with a custom acoustic platform, Beats Studio Bud are engineered to deliver powerful, balanced sound in a compact, in-ear form factor. The result — immersive sound that pulls the emotion of music from the studio to your ears to keep you inspired. These earphones feature two listening modes, Active Noise Cancelling (ANC) and Transparency mode, to give you total control of your sound. Each earbud has up to 8 hours of listening time¹ with two additional charges provided by its pocket-sized charging case to give you up to 24 hours of combined playback.² Beats Studio Bud also offer simple one-touch pairing for Apple³ and Android⁴ devices', 'accessories'),
(38329393, 'accessories5.jpg', 'Apple Watch Series 3 (GPS) 38mm Silver Aluminum Case with White Sport Band - Silver Aluminum', 169.99, 'Low and high heart rate notifications. Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. Monthly challenges and achievement awards. You can use Walkie-Talkie, make phone calls, and send messages. Listen to Apple Music¹ and Apple Podcasts. And use Siri in all-new ways. Apple Watch Series 3 lets you do it all right from your wrist.', 'accessories'),
(38329394, 'accessories6.jpg', 'Apple - AirTag - Silver', 29.99, 'AirTag. Keep track of your keys, wallet, luggage, backpack, and more, all in the Find My app. Play a sound on the built-in speaker, or say \"Hey Siri, find my gym bag.\" With select iPhone models, Precision Finding can lead you right to your nearby AirTag.1 If its further away, hundreds of millions of Apple devices in the Find My network can help track it down. All anonymously and encrypted for privacy.', 'accessories'),
(38329395, 'accessories7.jpg', 'DJI Mini 2 Quadcopter with Remote Controller', 429.99, 'DJI Mini 2 is beginner-friendly, powerful, and well, mini. Impressive performance, stunning image quality, and creative videos are just a few taps away. Explore an entirely new perspective, capturing the moments that make your life truly yours.', 'accessories'),
(38329396, 'accessories8.jpg', 'JBL - Flip 5 Portable Bluetooth Speaker - Teal', 139.99, 'Get the party started with this JBL Flip 5 portable wireless speaker. Bluetooth 4.2 connectivity offers an effective range of up to 33 feet, and the built-in battery provides up to 12 hours of listening per charge. This JBL Flip 5 portable wireless speaker has advanced drivers that deliver clear, detailed audio and accurate bass.', 'accessories'),
(38329397, 'accessories9.jpg', 'Samsung - Galaxy Buds Pro True Wireless Earbud Headphones - Phantom Violet', 189.99, 'Samsung Galaxy Buds Pro combines crytal-clear sound with unprecedented control, making it effortless to elevate everyday moments. Use intelligent Active Noise Cancellation to escape into your music at a moment’s notice, even in a noisy crowd. Close the distance with crystal-clear calls, so it always feels like you’re in the same room. And water won’t ruin your workout since the resistant Galaxy Buds Pro keeps the beat going even with a little rain. Pair your Galaxy Buds Pro with a Galaxy S21 and find even more ways to make ordinary extraordinary.', 'accessories'),
(38329398, 'accessories10.jpg', 'Bose - QuietComfort Earbuds True Wireless Noise Cancelling In-Ear Headphones - Sandstone', 179.99, 'Better sound begins with better silence. That’s why Bose QuietComfort Earbuds are engineered with the world’s most effective noise cancelling and high-fidelity audio. Microphones inside and outside the earphones sense noise and react instantaneously to cancel the signal. Get rid of disruptions so you can turn up the music on your wireless earbuds and amplify whatever you’re most passionate about — from hiking or circuit training to coding or baking. And when you need to be more aware of your surroundings, minimize noise cancelling with a quick double tap, so you can walk down a busy street or listen for your boarding announcement. StayHear™ Max tips provide extra comfort and stability for an even better experience. Rule the Quiet with Bose QuietComfort Earbuds and get an exhilarating experience that’s tough to find in any other Bluetooth earbuds. The Bose QuietComfort Noise Cancelling Earbuds are available in Triple Black, Soapstone and limited-edition Sandstone or Stone Blue.', 'accessories'),
(44433221, 'iphone11.jpg', 'Apple iPhone 11, 64GB', 479, '- This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.\r\n- There will be no visible cosmetic imperfections when held at an arm’s length.\r\n- This product will have a battery which exceeds 80% capacity relative to new.\r\n- Accessories may not be original, but will be compatible and fully functional. Product may come in generic Box.\r\n- Product will come with a SIM removal tool, a charger and a charging cable. Headphones and SIM card are not included.\r\n- This product is eligible for a replacement or refund within 90 days of receipt if you are not satisfied under the Amazon Renewed Guarantee. See terms here.', 'Phones'),
(45231256, 'acerasp.jpg', 'Acer Aspire 5, 15.6\"', 399.99, '-Powerful Productivity: AMD Ryzen 3 3350U delivers desktop-class performance and amazing battery life in a slim notebook. With Precision Boost, get up to 3.5GHz for your high-demand applications\r\n-Maximized Visuals: See even more on the stunning 15.6\" Full HD display with 82.58% screen-to-body, 16:9 aspect ratio and narrow bezels', 'Computers'),
(48329389, 'camera1.jpg', 'Canon - EOS Rebel T7 DSLR Video Camera with 18-55mm Lens - Black', 479.99, 'Take professional-looking photos with this Canon DSLR camera bundle. The 24.1-megapixel CMOS sensor captures the smallest details, even in low light, and the optical image stabilizer technology ensures handheld shots are sharp. The 18-55mm lens included in this Canon DSLR camera bundle is suitable for taking wide-angle pictures or zooming in for portraits.', 'cameras'),
(48329390, 'camera2.jpg', 'Sony - ZV-1 20.1-Megapixel Digital Camera for Content Creators and Vloggers - Black', 630.32, 'Create outstanding content for your viewers with this Sony compact 4K digital camera. The 20-megapixel sensor captures detailed pictures and videos, while Wi-Fi functionality enables easy photo sharing across networks. This Sony compact 4K digital camera features image stabilization for clear shots while walking, and automatic exposure tracks and illuminates faces for consistency in various lighting conditions.', 'cameras'),
(48329391, 'camera3.jpg', 'Nikon - D7500 DSLR 4K Video Two Lens Kit with 18-55mm and 70-300mm Lenses - Black', 1288.99, 'Born from a desire for flagship performance and innovation in a more compact and streamlined connected camera, the D7500 delivers the game-changing resolution, ISO range, image processing and energy efficiency of the award-winning D500 in an enthusiast-level DSLR. Simply put, the D7500 is built to outperform any camera in its class with top-tier image quality, blazing speed, flawless autofocus, 4K Ultra HD video and pro-grade creative tools - all in a comfortable, rugged design. This is a camera for the generation of creators.The D7500 uses the same 20.9 MP DX-format image sensor and EXPEED 5 image processing engine as the D500, taking your photos and videos to the next level. Capture with phenomenal sharpness and tonality, especially in low light situations like concerts, sporting events, parties and events.', 'cameras'),
(48329392, 'camera4.jpg', 'Sony - Alpha 7R IV Full-frame Mirrorless Interchangeable Lens 61 MP Camera - Body Only - Black', 2288.99, 'Thanks to an evolutionary leap in image processing power and efficiency, the Alpha 7R IV combines world’s first high-resolution 61MP back-illuminated Exmor R CMOS image sensor with impressive shooting speeds at up to 10 fps with full AF/AE tracking, as well as beautiful 4K HDR video, wide 15-stop dynamic range and high sensitivity with area specific noise reduction.', 'cameras'),
(48329393, 'camera5.jpg', 'Polaroid - 16MP Waterproof Digital Camera - Red', 49.99, 'The Polaroid iS048 digital camera is the perfect adventure companion. At 16 MP, you can capture great images on-the-go and then preview them on the 2.4\" preview screen. Small and lightweight, it is easy to slip into your pocket so you\re ready to capture the next perfect moment, even if that is underwater! The Polaroid iS048 is completely waterproof up to 10 ft so feel free to jump into a pool or lake! Save your memories to a micro SD card (not included) for easy transfer to your computer or mobile device and then you can share them with all your family and friends.', 'cameras'),
(48329394, 'camera6.jpg', 'Canon - Ivy CLIQ+2 Instant Film Camera - Iridescent White', 121.99, 'Easily shoot, print, edit, and stick photos, with the IVY CLIQ+2. Capture every moment with the Canon IVY CLIQ+2 — an easy to use Instant Camera Printer that is portable so you can take it with you! Instantly shoot and print 2”x3” photos and place them almost anywhere thanks to a peel and stick backing. You can take the perfect selfies with a Large Selfie Mirror and 8 LED Ring Light. Plus, you can connect your mobile device to the Canon Mini Print App1 to print photos from your camera roll and add filters, effects, emojis and more!', 'cameras'),
(48329395, 'camera7.jpg', 'Fujifilm - X Series X-T200 Mirrorless Camera with XC 15-45mm f/3.5-5.6 OIS PZ Lens - Dark Silver', 699.99, 'Capture memories in high resolution using this 24.2MP Fujifilm X-T200 digital camera. The autofocus quickly locks on to your subject, letting you snap photos of fast-moving people or objects, and the 3.5-inch touch-screen makes it easy to change settings. After taking photos with this Fujifilm X-T200 digital camera, use the built-in Wi-Fi to instantly share them to a smartphone or tablet.', 'cameras'),
(48329396, 'camera8.jpg', 'Sony - Handycam CX405 Flash Memory Camcorder - Black', 399.99, 'Utilizing Optical SteadyShot image stabilization, a BIONZ X image processor and an Exmor R CMOS sensor, this Sony Handycam HDRCX405/B camcorder enables you to capture video footage with 1920 x 1080 resolution and sharp still images.', 'cameras'),
(48329397, 'camera9.jpg', 'Sony - ZV-1 20.1-Megapixel Digital Camera for Content Creators and Vloggers - White', 632.99, 'Create outstanding content for your viewers with this Sony compact 4K digital camera. The 20-megapixel sensor captures detailed pictures and videos, while Wi-Fi functionality enables easy photo sharing across networks. This Sony compact 4K digital camera features image stabilization for clear shots while walking, and automatic exposure tracks and illuminates faces for consistency in various lighting conditions.', 'cameras'),
(48329398, 'camera10.jpg', 'Canon - XA11 HD Flash Memory Premium Camcorder - Black', 1099.99, 'Memorialize important events with this Canon camcorder. The HD CMOS Pro Image Sensor and the DIGIC DV 4 Image Processor produce crisp HD video, and the Wide DR Gamma and Highlight Priority modes use natural colors for a realistic picture. This Canon camcorder has a five-axis image stabilization system to prevent shaky, blurry images.', 'cameras'),
(54774443, 'iphone12mini.jpg', 'Apple iPhone 12 Mini, 128GB', 564.99, '-Fully unlocked and compatible with any carrier of choice (e.g. AT&T, T-Mobile, Sprint, Verizon, US-Cellular, Cricket, Metro, etc.).\r\n-The device does not come with headphones or a SIM card. It does include a charger and charging cable that may be generic.', 'Phones'),
(58329389, 'smartphone1.jpg', 'Samsung - Galaxy S21 Ultra 5G 128GB - Phantom Black (Verizon)', 1299.99, 'Galaxy S21 Ultra 5G for verizon is crafted so you don’t need to choose between video and photo. With a single tap, you can pull super-clear stills straight from high-resolution 8K video. Or if you’re looking to capture stunning photos, the 108MP camera feels like you’ve brought your own professional studio with you. Galaxy S21 Ultra 5G, designed to be epic in every way.', 'smartphone'),
(58329390, 'smartphone2.jpg', 'Apple - iPhone 13 5G 128GB - Pink (Verizon)\r\n', 769.99, '\r\niPhone 13. The most advanced dual-camera system ever on iPhone. Lightning-fast A15 Bionic chip. A big leap in battery life. Durable design. Superfast 5G.¹ And a brighter Super Retina XDR display.', 'smartphone'),
(58329391, 'smartphone3.jpg', 'Google - Pixel 6 128GB - Stormy Black (Verizon)', 549.99, 'Meet Pixel 6. It’s completely reimagined, inside and out. Powered by Tensor, Google’s first-ever processor, it’s fast, smart, and secure. The all-day battery adapts to you.* The Pixel Camera captures a moment just how you experienced it. And the Personal Safety app and the new Titan M2TM chip help protect you, your stuff, and your privacy.', 'smartphone'),
(58329392, 'smartphone4.jpg', 'Apple - iPhone 13 mini 5G 128GB - Midnight (T-Mobile)', 699.99, 'iPhone 13 mini. The most advanced dual-camera system ever on iPhone. Lightning-fast A15 Bionic chip. A leap in battery life. Durable design. Superfast 5G.¹ And a brighter Super Retina XDR display.', 'smartphone'),
(58329393, 'smartphone5.jpg', 'Motorola - Moto G Stylus (2021) 128GB Memory (Unlocked) - Aurora White', 250.99, 'With a 48MP Quad camera system, you can capture from the smallest details to grand canyon wide images. View them on the stunning 6.8” FHD+ Max Vision display and an 89% screen-to-body ratio. You don’t have to worry about battery life with a 4000mAh battery that can last up to three days.', 'smartphone'),
(68329381, 'laptop4.jpg', 'Dell Inspiron 17 7000 2-in-1 Touchscreen Business Laptop 17.3\" QHD, Intel Core i7-1165G7, Window 10 Pro, 32G RAM 1TB SSD, Intel iris xe Graphics, Fingerprint Reader, Backlit Keyboard', 1599.99, '[POWERFUL PERFORMANCE]: The Dell Inspiron 17 7000 2-in-1 laptop is powered with the latest 11th Generation Intel Core i7-1165G7 Processor (12MB Cache, up to 4.7 GHz) and 32GB high-bandwidth DDR4 memory, powerful processing for advanced multitasking, demanding computing, smooth gaming, multiple tabs browsing, and everyday tasks. 1TB PCIe NVMe M.2 SSD (15x faster than HDD, stay cool and quiet) offers ample storage, quick boot-ups, fast data access, and improves the overall performance.\r\n[STUNNING VISUALS]: 17.0-inch QHD+ (2560 x 1600) Truelife Touch Narrow Border IPS Display. Intel iris xe graphics with shared video memory gives you a new level of graphics performance with vibrant, lifelike color and details for internet use, fast photo/video editing, streaming, and gaming', 'laptop'),
(68329382, 'laptop5.jpg', 'Lenovo Ideapad 3 15.6\" Touch Screen Laptop - Intel Core i3 - 8GB Memory - 256GB SSD - Almond', 469.99, 'Windows 10 Home in S Mode\r\nExperience the most secure Windows ever built with fast boot times, increased responsiveness, and added protection against phishing and malware.\r\n\r\n15.6\" HD multitouch screen\r\nTouch, tap, glide and make the most of Windows 10. Typical 1366 x 768 HD resolution. Supports 720p content. Energy-efficient LED backlight.\r\n\r\n11th Gen Intel® Core™ i3-1115G4 mobile processor\r\nSmart dual-core, four-way processing performance for HD-quality computing.\r\n\r\n8GB system memory for advanced multitasking\r\nSubstantial high-bandwidth RAM to smoothly run your games and photo- and video-editing applications, as well as multiple programs and browser tabs all at once.\r\n\r\n256GB Solid State Drive (NVMe TLC)\r\nSave files fast and store more data. With massive amounts of storage and advanced communication power, NVMe TLC SSDs are great for major gaming applications, multiple servers, daily backups, and more.\r\n\r\nIntel UHD Graphics\r\nOn-processor graphics with shared video memory provide everyday image quality for Internet use, basic photo editing and casual gaming.\r\n\r\nModern aluminum design\r\nCreates a sleek, modern look with clean lines and provides a rigid but lightweight frame.\r\n\r\nWeighs 4.07lbs. and measures 0.78\" thin\r\nThin and light design with DVD/CD drive omitted for improved portability. 2-cell lithium polymer battery.\r\n\r\nWireless/Wired connectivity (WiFi 5 - 802.11 ac)\r\nConnect to a Wireless-AC router for nearly 3x the speed, more capacity and wider coverage than Wireless-N. Backward-compatible with all other Wi-Fi networks and hotspots.', 'laptop'),
(68329383, 'laptop6.jpg', 'MacBook Pro 14\" Laptop - Apple M1 Pro chip - 16GB Memory - 512GB SSD (Latest Model) - Space Gray', 1897.65, 'The new MacBook Pro delivers game-changing performance for pro users. With the powerful M1 Pro to supercharge pro-level workflows while getting amazing battery life.¹ And with an immersive 14-inch Liquid Retina XDR display and an array of pro ports, you can do more than ever with MacBook Pro.\r\n', 'laptop'),
(68329384, 'laptop2.jpg', 'ASUS - ROG Zephyrus 15.6\" QHD Gaming Laptop - AMD Ryzen 9 - 16GB Memory - NVIDIA GeForce RTX 3070 - 1TB SSD - Eclipse Grey - Eclipse Grey', 1549.99, 'ASUS ROG Zephyrus Gaming Laptop. Enjoy everyday gaming with this ASUS notebook PC. The AMD Ryzen 9 processor and 16GB of RAM let you run graphics-heavy games smoothly, while the potent NVIDIA GeForce RTX 3070 graphics produce high-quality visuals on the fast 15.6-inch 165hz QHD display. This ASUS notebook PC has 1TD SSD that shortens load times and offers ample storage.', 'laptop'),
(68329385, 'laptop3.jpg', 'Microsoft - Surface Laptop Go - 12.4\" Touch-Screen - Intel 10th Generation Core i5 - 8GB Memory - 128GB Solid State Drive - Sandstone', 550.23, 'Make the most of every day with the sleek style, performance, and all-day battery life² you need in the lightest Surface Laptop, all at an exceptional value. Ultra-light and portable profile, the apps* you use every day, premium materials, and a choice of must-have colors will make this your go-to laptop.\r\n²Up to 13 hours of battery life based on typical Surface device usage. Testing conducted by Microsoft in September 2020 using preproduction software and preproduction configurations of Surface Laptop Go Testing consisted of full battery discharge with a mixture of active use and modern standby. The active use portion consists of (1) a web browsing test accessing 8 popular websites over multiple open tabs, (2) a productivity test utilizing Microsoft Word, PowerPoint, Excel and Outlook, and (3) a portion of time with the device in use with idle applications. All settings were default except screen brightness was set to 150nits with Auto-Brightness disabled. Wi-Fi was connected to a network. Battery life varies significantly with settings, usage and other factors.', 'laptop'),
(68329386, 'laptop7.jpg', 'GIGABYTE - 15.6\" FHD IPS 144Hz Gaming Laptop - i5-11400H - 16GB - NVIDIA GeForce RTX 3050 512 GB SSD', 829.99, 'The G5 gaming laptop powered by NVIDIA GeForce RTX 30 Series GPU combines gaming, entertainment, work and more! Its powerful 11th Gen Intel Processor allows you to effortlessly handle multiple tasks at the same time. It features a 3 screen display output, built-in SD card slot, up to 6TB storage capacity and next-gen Wi-Fi 6 technology; with a tool for every task, this laptop provides great balance between gaming, entertainment, and work capabilities. Welcome to your new go-to laptop', 'laptop'),
(68329387, 'laptop2.jpg', 'ASUS - ZenBook Flip 15 Q528EH 15.6\" Touch-Screen Laptop - Intel Core i7 - 16GB Memory - GTX1650 Max-Q - 512GB SSD - Grey', 1199.99, 'The 1920 x 1080 resolution boasts impressive color and clarity. Energy-efficient LED backlight. Display with Pantone-Validated & Eye comfort testing by TÜV Rheinland.\r\nFeaturing true machine intelligence and a newly designed efficient architecture, the groundbreaking processor learns and adapts to your needs so you can achieve more.\r\n16GB system memory for basic multitasking\r\nAdequate high-bandwidth RAM to smoothly run multiple applications and browser tabs at the same time.512GB PCIe SSD.While offering less storage space than a hard drive, a flash-based SSD has no moving parts, resulting in faster start-up times and data access, no noise, and reduced heat production and power draw on the battery.', 'laptop'),
(68329388, 'laptop8.jpg', 'Lenovo Ideapad 3 15.6\" Touch Screen Laptop - Intel Core i3 - 8GB Memory - 256GB SSD - Almond', 538.99, 'Engineered for long-lasting performance, the Lenovo™ IdeaPad™ 3 delivers powerful performance with the latest Intel 11th Generation Processors with Intel™ UHD Graphics, in a laptop thats perfect for your everyday tasks, with features that you can depend Touch, tap, glide and make the most of Windows 10. Typical 1366 x 768 HD resolution. Supports 720p content. Energy-efficient LED backlight.\r\n11th Gen Intel® Core™ i3-1115G4 mobile processor\r\nSmart dual-core, four-way processing performance for HD-quality computing.\r\n8GB system memory for advanced multitasking\r\nSubstantial high-bandwidth RAM to smoothly run your games and photo- and video-editing applications, as well as multiple programs and browser tabs all at once.\r\n256GB Solid State Drive (NVMe TLC)\r\nSave files fast and store more data. With massive amounts of storage and advanced communication power, NVMe TLC SSDs are great for major gaming applications, multiple servers, daily backups, and more.', 'laptop'),
(75739287, 'dell13.jpg', 'Dell Inspiron 13, 13.3\"', 1074.51, '-WINDOW 11: Free Upgrade to Windows 11 when available (see below)\r\n-STUNNING VISUALS: Vivid color with less blue light on the 16:10 QHD display panel offers clearer, sharper images and accommodate more content\r\n-FAST CHARGE: ExpressCharge recharges your battery in a flash (up to 80% in 60 minutes*)', 'Computers'),
(78329382, 'products2.jpg', 'Apple MacBook Pro 13\" Display with Touch Bar, Intel Core i5 8GB RAM - 256GB SSD (MLH12LL/A) Late 2016 - Space Gray', 1123.99, 'The 13.3\" MacBook Pro features a redesigned enclosure design and all-metal unibody construction that creates a rigid and dense notebook that is also thin and light. The 13.3\" Retina Display with a 2560 x 1600 resolution features brighter LED backlighting than its predecessor as well as an increased contrast ratio, delivering deeper blacks and brighter whites. Its larger pixel aperture and variable refresh rate make it more power efficient than previous generations. A Touch ID sensor has been integrated into the power button, so you can quickly log into your account, even when another user is logged in. You can also use it with Apple Pay to securely purchase things over the web, thanks to macOS Sierra. Thunderbolt 3 is a hardware interface that utilizes the reversible USB Type-C connector. Doubling the speed of its predecessor, Thunderbolt 3 features a maximum throughput of 40 Gb/s when used with compatible devices.', 'Laptops'),
(78329383, 'products1.jpg', 'Apple - iPhone 12 Pro Max 5G 128GB - Pacific Blue (Verizon)', 799.99, 'iPhone 12 Pro Max. 5G to download huge files on the go and stream HDR video.¹ Larger 6.7-inch Super Retina XDR display.² Ceramic Shield with 4x better drop performance.³ Incredible low-light photography with the best Pro camera system on an iPhone, and 5x optical zoom range. Cinema-grade Dolby Vision video recording, editing, and playback. Night mode portraits and next-level AR experiences with the LiDAR Scanner. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging.⁴ For infinitely spectacular possibilities.', 'Smartphone'),
(78329384, 'headphonee.jpg', 'Bets by Dr. Dre - Beats Studio³ Wireless Noise Cancelling Headphones - Shadow Gray', 233.99, 'Bets Studio³ Wireless headphones deliver a premium listening experience with Pure Adaptive Noise Cancelling (Pure ANC) to actively block external noise, and real-time audio calibration to preserve clarity, range, and emotion. It continuously pinpoints sounds to block while automatically responding to individual fit and music playback. The efficiency of the Apple W1 chip supports up to 22 hours of battery life with Pure ANC on, and Pure ANC off for low-power mode provides up to 40 hours of playback.', 'accessories'),
(78329385, 'xps21.jpg', 'Dell - xps 5000 2-in-1 14\" Touch-Screen Laptop - AMD Ryzen 5 - 8GB Memory - 256GB Solid State Drive - Blue', 1129.99, 'The xps range of laptops and 2-in1s are thoughtfully designed so you can stay connected wherever you are, with long-lasting battery life, these chic, lightweight devices can seamlessly connect your PC and smartphone with Dell Mobile Connect’s wireless integration. Equipped with the latest processors, graphics, and thermal solutions; your PC runs quickly and smoothly as you connect with confidence. Optimized with technology that simplifies your life, Inspiron laptops and 2-in-1s offer a range of easy-to-use features all packaged in a minimalist and modern design. A newly designed and ergonomically positioned lift hinge increases comfort for a better typing experience when on chat, writing lengthy emails or connecting to your world. Rest assured that your privacy is secure with the mechanical privacy camera shutter. Also, the single sign on (SSO) fingerprint reader on the power button provides a more personal, more secure instant access login experience. And that’s not all, your Inspiron, is now environmentally conscious – The Inspiron compliments not just your style but also your values.\r\n', 'laptops'),
(78329386, 'xps13.jpg', 'Dell - XPS 13\" 2-in-1 Touch FHD+ Laptop - Intel Evo Platform Core i7- 8GB RAM- 256GB SSD - Platinum Silver with Black Palmrest', 1329.99, 'Dell XPS 13\" Convertible 2-in-1 Laptop: this premium laptop comes with a platinum silver cover and a stunning, black interior. The 256GB solid state drive provides ample storage space for your work documents and applications, while the 13.4-inch FHD+ Infinity Edge touchscreen offers picture clarity and seamless operation. Powered by an 11th Gen Intel Core i7 processor and 8GB of RAM, this Dell XPS two-in-one notebook runs multiple programs simultaneously for smooth multitasking. A high end product with high end features such as a baclit keyboard with a fingerprint reader for added security, Intel Wi-Fi 6 for improved wireless connectivity, and Bluetooth 5.0. The Dell XPS 13 also comes with speakers tuned with Waves MaxxAudio for improved sound quality.', 'laptops'),
(78329387, 'samsung.jpg', 'Samsung - Galaxy Note20 Ultra 5G 128GB (T-Mobile) - Bronze', 899.99, 'The power to work. The power to play. This isn\'t the time to slow down, this is the time to forge ahead and take the opportunities that come your way. You don’t need a smartphone. You need a power phone. One as beautiful as it is intelligent with a pen that is mightier, a battery that doesn\'t leave you hanging and is as well-connected as you. Samsung Galaxy Note20 Ultra 5G Unlocked takes power to the next level with cutting-edge technology, letting you master whatever you choose to do next.\r\n', 'smartphone'),
(78329388, 'camera.jpg', 'Canon - EOS M50 Mirrorless Camera with EF-M 15-45mm f/3.5-6.3 IS STM Zoom Lens - White', 599.99, 'Explore the capabilities for high-quality image captures with this Canon EOS digital camera kit. High-resolution 4K UHD records and delivers lifelike video for your vlog, while the 24.1MP CMOS sensor grabs even high-action stills with clarity. The 24-72mm lens in this Canon EOS digital camera kit lets you take wide-angle epic landscape shots or tightly focused portrats.', 'camera'),
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
(68329381, 'laptop4.jpg', 'Dell Inspiron 17 7000 2-in-1 Touchscreen Business Laptop 17.3\" QHD, Intel Core i7-1165G7, Window 10 Pro, 32G RAM 1TB SSD, Intel iris xe Graphics, Fingerprint Reader, Backlit Keyboard', 1599.99, '[POWERFUL PERFORMANCE]: The Dell Inspiron 17 7000 2-in-1 laptop is powered with the latest 11th Generation Intel Core i7-1165G7 Processor (12MB Cache, up to 4.7 GHz) and 32GB high-bandwidth DDR4 memory, powerful processing for advanced multitasking, demanding computing, smooth gaming, multiple tabs browsing, and everyday tasks. 1TB PCIe NVMe M.2 SSD (15x faster than HDD, stay cool and quiet) offers ample storage, quick boot-ups, fast data access, and improves the overall performance.\r\n[STUNNING VISUALS]: 17.0-inch QHD+ (2560 x 1600) Truelife Touch Narrow Border IPS Display. Intel iris xe graphics with shared video memory gives you a new level of graphics performance with vibrant, lifelike color and details for internet use, fast photo/video editing, streaming, and gaming', 'laptop'),
(68329382, 'laptop5.jpg', 'Lenovo Ideapad 3 15.6\" Touch Screen Laptop - Intel Core i3 - 8GB Memory - 256GB SSD - Almond', 469.99, 'Windows 10 Home in S Mode\r\nExperience the most secure Windows ever built with fast boot times, increased responsiveness, and added protection against phishing and malware.\r\n\r\n15.6\" HD multitouch screen\r\nTouch, tap, glide and make the most of Windows 10. Typical 1366 x 768 HD resolution. Supports 720p content. Energy-efficient LED backlight.\r\n\r\n11th Gen Intel® Core™ i3-1115G4 mobile processor\r\nSmart dual-core, four-way processing performance for HD-quality computing.\r\n\r\n8GB system memory for advanced multitasking\r\nSubstantial high-bandwidth RAM to smoothly run your games and photo- and video-editing applications, as well as multiple programs and browser tabs all at once.\r\n\r\n256GB Solid State Drive (NVMe TLC)\r\nSave files fast and store more data. With massive amounts of storage and advanced communication power, NVMe TLC SSDs are great for major gaming applications, multiple servers, daily backups, and more.\r\n\r\nIntel UHD Graphics\r\nOn-processor graphics with shared video memory provide everyday image quality for Internet use, basic photo editing and casual gaming.\r\n\r\nModern aluminum design\r\nCreates a sleek, modern look with clean lines and provides a rigid but lightweight frame.\r\n\r\nWeighs 4.07lbs. and measures 0.78\" thin\r\nThin and light design with DVD/CD drive omitted for improved portability. 2-cell lithium polymer battery.\r\n\r\nWireless/Wired connectivity (WiFi 5 - 802.11 ac)\r\nConnect to a Wireless-AC router for nearly 3x the speed, more capacity and wider coverage than Wireless-N. Backward-compatible with all other Wi-Fi networks and hotspots.', 'laptop'),
(68329383, 'laptop6.jpg', 'MacBook Pro 14\" Laptop - Apple M1 Pro chip - 16GB Memory - 512GB SSD (Latest Model) - Space Gray', 1897.65, 'The new MacBook Pro delivers game-changing performance for pro users. With the powerful M1 Pro to supercharge pro-level workflows while getting amazing battery life.¹ And with an immersive 14-inch Liquid Retina XDR display and an array of pro ports, you can do more than ever with MacBook Pro.\r\n', 'laptop'),
(68329384, 'laptop2.jpg', 'ASUS - ROG Zephyrus 15.6\" QHD Gaming Laptop - AMD Ryzen 9 - 16GB Memory - NVIDIA GeForce RTX 3070 - 1TB SSD - Eclipse Grey - Eclipse Grey', 1549.99, 'ASUS ROG Zephyrus Gaming Laptop. Enjoy everyday gaming with this ASUS notebook PC. The AMD Ryzen 9 processor and 16GB of RAM let you run graphics-heavy games smoothly, while the potent NVIDIA GeForce RTX 3070 graphics produce high-quality visuals on the fast 15.6-inch 165hz QHD display. This ASUS notebook PC has 1TD SSD that shortens load times and offers ample storage.', 'laptop'),
(68329385, 'laptop3.jpg', 'Microsoft - Surface Laptop Go - 12.4\" Touch-Screen - Intel 10th Generation Core i5 - 8GB Memory - 128GB Solid State Drive - Sandstone', 550.23, 'Make the most of every day with the sleek style, performance, and all-day battery life² you need in the lightest Surface Laptop, all at an exceptional value. Ultra-light and portable profile, the apps* you use every day, premium materials, and a choice of must-have colors will make this your go-to laptop.\r\n²Up to 13 hours of battery life based on typical Surface device usage. Testing conducted by Microsoft in September 2020 using preproduction software and preproduction configurations of Surface Laptop Go Testing consisted of full battery discharge with a mixture of active use and modern standby. The active use portion consists of (1) a web browsing test accessing 8 popular websites over multiple open tabs, (2) a productivity test utilizing Microsoft Word, PowerPoint, Excel and Outlook, and (3) a portion of time with the device in use with idle applications. All settings were default except screen brightness was set to 150nits with Auto-Brightness disabled. Wi-Fi was connected to a network. Battery life varies significantly with settings, usage and other factors.', 'laptop'),
(68329386, 'laptop7.jpg', 'GIGABYTE - 15.6\" FHD IPS 144Hz Gaming Laptop - i5-11400H - 16GB - NVIDIA GeForce RTX 3050 512 GB SSD', 829.99, 'The G5 gaming laptop powered by NVIDIA GeForce RTX 30 Series GPU combines gaming, entertainment, work and more! Its powerful 11th Gen Intel Processor allows you to effortlessly handle multiple tasks at the same time. It features a 3 screen display output, built-in SD card slot, up to 6TB storage capacity and next-gen Wi-Fi 6 technology; with a tool for every task, this laptop provides great balance between gaming, entertainment, and work capabilities. Welcome to your new go-to laptop', 'laptop'),
(68329387, 'laptop2.jpg', 'ASUS - ZenBook Flip 15 Q528EH 15.6\" Touch-Screen Laptop - Intel Core i7 - 16GB Memory - GTX1650 Max-Q - 512GB SSD - Grey', 1199.99, 'The 1920 x 1080 resolution boasts impressive color and clarity. Energy-efficient LED backlight. Display with Pantone-Validated & Eye comfort testing by TÜV Rheinland.\r\nFeaturing true machine intelligence and a newly designed efficient architecture, the groundbreaking processor learns and adapts to your needs so you can achieve more.\r\n16GB system memory for basic multitasking\r\nAdequate high-bandwidth RAM to smoothly run multiple applications and browser tabs at the same time.512GB PCIe SSD.While offering less storage space than a hard drive, a flash-based SSD has no moving parts, resulting in faster start-up times and data access, no noise, and reduced heat production and power draw on the battery.', 'laptop'),
(68329388, 'laptop8.jpg', 'Lenovo Ideapad 3 15.6\" Touch Screen Laptop - Intel Core i3 - 8GB Memory - 256GB SSD - Almond', 538.99, 'Engineered for long-lasting performance, the Lenovo™ IdeaPad™ 3 delivers powerful performance with the latest Intel 11th Generation Processors with Intel™ UHD Graphics, in a laptop that\s perfect for your everyday tasks, with features that you can depend Touch, tap, glide and make the most of Windows 10. Typical 1366 x 768 HD resolution. Supports 720p content. Energy-efficient LED backlight.\r\n11th Gen Intel® Core™ i3-1115G4 mobile processor\r\nSmart dual-core, four-way processing performance for HD-quality computing.\r\n8GB system memory for advanced multitasking\r\nSubstantial high-bandwidth RAM to smoothly run your games and photo- and video-editing applications, as well as multiple programs and browser tabs all at once.\r\n256GB Solid State Drive (NVMe TLC)\r\nSave files fast and store more data. With massive amounts of storage and advanced communication power, NVMe TLC SSDs are great for major gaming applications, multiple servers, daily backups, and more.', 'laptop');

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
(58329390, 'smartphone2.jpg', 'Apple - iPhone 13 5G 128GB - Pink (Verizon)\r\n', 769.99, '\r\niPhone 13. The most advanced dual-camera system ever on iPhone. Lightning-fast A15 Bionic chip. A big leap in battery life. Durable design. Superfast 5G.¹ And a brighter Super Retina XDR display.', 'smartphone'),
(58329391, 'smartphone3.jpg', 'Google - Pixel 6 128GB - Stormy Black (Verizon)', 549.99, 'Meet Pixel 6. It’s completely reimagined, inside and out. Powered by Tensor, Google’s first-ever processor, it’s fast, smart, and secure. The all-day battery adapts to you.* The Pixel Camera captures a moment just how you experienced it. And the Personal Safety app and the new Titan M2TM chip help protect you, your stuff, and your privacy.', 'smartphone'),
(58329392, 'smartphone4.jpg', 'Apple - iPhone 13 mini 5G 128GB - Midnight (T-Mobile)', 699.99, 'iPhone 13 mini. The most advanced dual-camera system ever on iPhone. Lightning-fast A15 Bionic chip. A leap in battery life. Durable design. Superfast 5G.¹ And a brighter Super Retina XDR display.', 'smartphone'),
(58329393, 'smartphone5.jpg', 'Motorola - Moto G Stylus (2021) 128GB Memory (Unlocked) - Aurora White', 250.99, 'With a 48MP Quad camera system, you can capture from the smallest details to grand canyon wide images. View them on the stunning 6.8” FHD+ Max Vision display and an 89% screen-to-body ratio. You don’t have to worry about battery life with a 4000mAh battery that can last up to three days.', 'smartphone');



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

CREATE TABLE `orders` (
  `id` BIGINT(20) NOT NULL,
  `buyer_id` BIGINT(20) NOT NULL,
  `subtotal` DOUBLE NOT NULL,
  `order_date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `complete` BOOLEAN NOT NULL DEFAULT '0',
  `transaction_id` VARCHAR(100),
  PRIMARY KEY (`id`)
)  ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

CREATE TABLE `complete_order` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `shippingaddress` (
  `id` BIGINT(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `date_added` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `buyer_id` BIGINT(20) NOT NULL,
  `order_id` BIGINT(20) NOT NULL,
  PRIMARY KEY(`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;
-- ----------------------------------------------------------

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

CREATE TABLE `camera` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `camera` (`id`, `image`, `name`, `price`, `description`, `category`) VALUES
(48329389, 'camera1.jpg', 'Canon - EOS Rebel T7 DSLR Video Camera with 18-55mm Lens - Black', 479.99, 'Take professional-looking photos with this Canon DSLR camera bundle. The 24.1-megapixel CMOS sensor captures the smallest details, even in low light, and the optical image stabilizer technology ensures handheld shots are sharp. The 18-55mm lens included in this Canon DSLR camera bundle is suitable for taking wide-angle pictures or zooming in for portraits.', 'cameras'),
(48329390, 'camera2.jpg', 'Sony - ZV-1 20.1-Megapixel Digital Camera for Content Creators and Vloggers - Black', 630.32, 'Create outstanding content for your viewers with this Sony compact 4K digital camera. The 20-megapixel sensor captures detailed pictures and videos, while Wi-Fi functionality enables easy photo sharing across networks. This Sony compact 4K digital camera features image stabilization for clear shots while walking, and automatic exposure tracks and illuminates faces for consistency in various lighting conditions.', 'cameras'),
(48329391, 'camera3.jpg', 'Nikon - D7500 DSLR 4K Video Two Lens Kit with 18-55mm and 70-300mm Lenses - Black', 1288.99, 'Born from a desire for flagship performance and innovation in a more compact and streamlined connected camera, the D7500 delivers the game-changing resolution, ISO range, image processing and energy efficiency of the award-winning D500 in an enthusiast-level DSLR. Simply put, the D7500 is built to outperform any camera in its class with top-tier image quality, blazing speed, flawless autofocus, 4K Ultra HD video and pro-grade creative tools - all in a comfortable, rugged design. This is a camera for the generation of creators.The D7500 uses the same 20.9 MP DX-format image sensor and EXPEED 5 image processing engine as the D500, taking your photos and videos to the next level. Capture with phenomenal sharpness and tonality, especially in low light situations like concerts, sporting events, parties and events.', 'cameras'),
(48329392, 'camera4.jpg', 'Sony - Alpha 7R IV Full-frame Mirrorless Interchangeable Lens 61 MP Camera - Body Only - Black', 2288.99, 'Thanks to an evolutionary leap in image processing power and efficiency, the Alpha 7R IV combines world’s first high-resolution 61MP back-illuminated Exmor R CMOS image sensor with impressive shooting speeds at up to 10 fps with full AF/AE tracking, as well as beautiful 4K HDR video, wide 15-stop dynamic range and high sensitivity with area specific noise reduction.', 'cameras'),
(48329393, 'camera5.jpg', 'Polaroid - 16MP Waterproof Digital Camera - Red', 49.99, 'The Polaroid iS048 digital camera is the perfect adventure companion. At 16 MP, you can capture great images on-the-go and then preview them on the 2.4\" preview screen. Small and lightweight, it is easy to slip into your pocket so you\re ready to capture the next perfect moment, even if that is underwater! The Polaroid iS048 is completely waterproof up to 10 ft so feel free to jump into a pool or lake! Save your memories to a micro SD card (not included) for easy transfer to your computer or mobile device and then you can share them with all your family and friends.', 'cameras'),
(48329394, 'camera6.jpg', 'Canon - Ivy CLIQ+2 Instant Film Camera - Iridescent White', 121.99, 'Easily shoot, print, edit, and stick photos, with the IVY CLIQ+2. Capture every moment with the Canon IVY CLIQ+2 — an easy to use Instant Camera Printer that is portable so you can take it with you! Instantly shoot and print 2”x3” photos and place them almost anywhere thanks to a peel and stick backing. You can take the perfect selfies with a Large Selfie Mirror and 8 LED Ring Light. Plus, you can connect your mobile device to the Canon Mini Print App1 to print photos from your camera roll and add filters, effects, emojis and more!', 'cameras'),
(48329395, 'camera7.jpg', 'Fujifilm - X Series X-T200 Mirrorless Camera with XC 15-45mm f/3.5-5.6 OIS PZ Lens - Dark Silver', 699.99, 'Capture memories in high resolution using this 24.2MP Fujifilm X-T200 digital camera. The autofocus quickly locks on to your subject, letting you snap photos of fast-moving people or objects, and the 3.5-inch touch-screen makes it easy to change settings. After taking photos with this Fujifilm X-T200 digital camera, use the built-in Wi-Fi to instantly share them to a smartphone or tablet.', 'cameras'),
(48329396, 'camera8.jpg', 'Sony - Handycam CX405 Flash Memory Camcorder - Black', 399.99, 'Utilizing Optical SteadyShot image stabilization, a BIONZ X image processor and an Exmor R CMOS sensor, this Sony Handycam HDRCX405/B camcorder enables you to capture video footage with 1920 x 1080 resolution and sharp still images.', 'cameras'),
(48329397, 'camera9.jpg', 'Sony - ZV-1 20.1-Megapixel Digital Camera for Content Creators and Vloggers - White', 632.99, 'Create outstanding content for your viewers with this Sony compact 4K digital camera. The 20-megapixel sensor captures detailed pictures and videos, while Wi-Fi functionality enables easy photo sharing across networks. This Sony compact 4K digital camera features image stabilization for clear shots while walking, and automatic exposure tracks and illuminates faces for consistency in various lighting conditions.', 'cameras'),
(48329398, 'camera10.jpg', 'Canon - XA11 HD Flash Memory Premium Camcorder - Black', 1099.99, 'Memorialize important events with this Canon camcorder. The HD CMOS Pro Image Sensor and the DIGIC DV 4 Image Processor produce crisp HD video, and the Wide DR Gamma and Highlight Priority modes use natural colors for a realistic picture. This Canon camcorder has a five-axis image stabilization system to prevent shaky, blurry images.', 'cameras');

--
-- Indexes for dumped tables
--
-- --------------------------------------------------------

--
-- Table structure for table `accessorie`
--

CREATE TABLE `accessorie` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accessorie`
--
INSERT INTO `accessorie` (`id`, `image`, `name`, `price`, `description`, `category`) VALUES
(38329389, 'accessories1.jpg', 'Beats by Dr. Dre - Beats Studio³ Wireless Noise Cancelling Headphones - Midnight Black', 279.99, 'Enjoy immersive listening with these midnight black Beats Studio³ headphones. Pure ANC technology and the soft ear cushions block off external noise and optimize sound output, and the battery delivers up to 40 hours of playback in low-power mode. The Class 1 Bluetooth connectivity of these Beats Studio³ headphones offers seamless music streaming from compatible devices at extended range.', 'accessories'),
(38329390, 'accessories2.jpg', 'Bose - SoundLink Wireless Around-Ear Headphones II - White', 239.99, 'Enjoy a better Bluetooth wireless experience with Bose SoundLink around- ear headphones II. Exclusive headphone technology delivers deep, immersive sound at any volume. SoundLink wireless Bluetooth headphones use the latest technology so you can easily connect to your mobile devices with seamless audio/video sync. And a dual microphone system rejects noise and wind, so you will be heard loud and clear. Switch seamlessly between 2 Bluetooth devices, and stay connected to both. And intuitive touch controls give you simple command of your music and calls. The over ear headphone design features soft ear cushions and a contoured headband, they\'re lighter and more comfortable than other comparable wireless headphones so you can enjoy them all day long. Wear them almost anywhere, and experience uncompromised wireless performance. When you\'re done listening, you can fold them flat for storage in their compact matching case.', 'accessories'),
(38329391, 'accessories3.jpg', 'Apple - AirPods Pro (with Magsafe Charging Case) - White', 232.99, 'AirPods Pro feature Active Noise Cancellation for immersive sound. Transparency mode for hearing the world around you. They’re sweat and water resistant1 and have a customizable fit for all-day comfort.', 'accessories'),
(38329392, 'accessories4.jpg', '', 148.99, 'True wireless noise cancelling Beats Studio Bud are made for music. Designed with a custom acoustic platform, Beats Studio Bud are engineered to deliver powerful, balanced sound in a compact, in-ear form factor. The result — immersive sound that pulls the emotion of music from the studio to your ears to keep you inspired. These earphones feature two listening modes, Active Noise Cancelling (ANC) and Transparency mode, to give you total control of your sound. Each earbud has up to 8 hours of listening time¹ with two additional charges provided by its pocket-sized charging case to give you up to 24 hours of combined playback.² Beats Studio Bud also offer simple one-touch pairing for Apple³ and Android⁴ devices', 'accessories'),
(38329393, 'accessories5.jpg', 'Apple Watch Series 3 (GPS) 38mm Silver Aluminum Case with White Sport Band - Silver Aluminum', 169.99, 'Low and high heart rate notifications. Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. Monthly challenges and achievement awards. You can use Walkie-Talkie, make phone calls, and send messages. Listen to Apple Music¹ and Apple Podcasts. And use Siri in all-new ways. Apple Watch Series 3 lets you do it all right from your wrist.', 'accessories'),
(38329394, 'accessories6.jpg', 'Apple - AirTag - Silver', 29.99, 'AirTag. Keep track of your keys, wallet, luggage, backpack, and more, all in the Find My app. Play a sound on the built-in speaker, or say \"Hey Siri, find my gym bag.\" With select iPhone models, Precision Finding can lead you right to your nearby AirTag.1 If its further away, hundreds of millions of Apple devices in the Find My network can help track it down. All anonymously and encrypted for privacy.', 'accessories'),
(38329395, 'accessories7.jpg', 'DJI Mini 2 Quadcopter with Remote Controller', 429.99, 'DJI Mini 2 is beginner-friendly, powerful, and well, mini. Impressive performance, stunning image quality, and creative videos are just a few taps away. Explore an entirely new perspective, capturing the moments that make your life truly yours.', 'accessories'),
(38329396, 'accessories8.jpg', 'JBL - Flip 5 Portable Bluetooth Speaker - Teal', 139.99, 'Get the party started with this JBL Flip 5 portable wireless speaker. Bluetooth 4.2 connectivity offers an effective range of up to 33 feet, and the built-in battery provides up to 12 hours of listening per charge. This JBL Flip 5 portable wireless speaker has advanced drivers that deliver clear, detailed audio and accurate bass.', 'accessories'),
(38329397, 'accessories9.jpg', 'Samsung - Galaxy Buds Pro True Wireless Earbud Headphones - Phantom Violet', 189.99, 'Samsung Galaxy Buds Pro combines crytal-clear sound with unprecedented control, making it effortless to elevate everyday moments. Use intelligent Active Noise Cancellation to escape into your music at a moment’s notice, even in a noisy crowd. Close the distance with crystal-clear calls, so it always feels like you’re in the same room. And water won’t ruin your workout since the resistant Galaxy Buds Pro keeps the beat going even with a little rain. Pair your Galaxy Buds Pro with a Galaxy S21 and find even more ways to make ordinary extraordinary.', 'accessories'),
(38329398, 'accessories10.jpg', 'Bose - QuietComfort Earbuds True Wireless Noise Cancelling In-Ear Headphones - Sandstone', 179.99, 'Better sound begins with better silence. That’s why Bose QuietComfort Earbuds are engineered with the world’s most effective noise cancelling and high-fidelity audio. Microphones inside and outside the earphones sense noise and react instantaneously to cancel the signal. Get rid of disruptions so you can turn up the music on your wireless earbuds and amplify whatever you’re most passionate about — from hiking or circuit training to coding or baking. And when you need to be more aware of your surroundings, minimize noise cancelling with a quick double tap, so you can walk down a busy street or listen for your boarding announcement. StayHear™ Max tips provide extra comfort and stability for an even better experience. Rule the Quiet with Bose QuietComfort Earbuds and get an exhilarating experience that’s tough to find in any other Bluetooth earbuds. The Bose QuietComfort Noise Cancelling Earbuds are available in Triple Black, Soapstone and limited-edition Sandstone or Stone Blue.', 'accessories');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessorie`
--
ALTER TABLE `accessorie`
  ADD PRIMARY KEY (`id`);


  -- --------------------------------------------------------

  --
  -- Table structure for table `trending`
  --

  CREATE TABLE `trending` (
    `id` bigint(20) NOT NULL,
    `image` varchar(100) NOT NULL,
    `name` varchar(255) NOT NULL,
    `price` double NOT NULL,
    `description` longtext NOT NULL,
    `category` varchar(255) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

  --
  -- Dumping data for table `trending`
  --

  INSERT INTO `trending` (`id`, `image`, `name`, `price`, `description`, `category`) VALUES
  (78329382, 'products2.jpg', 'Apple MacBook Pro 13\" Display with Touch Bar, Intel Core i5 8GB RAM - 256GB SSD (MLH12LL/A) Late 2016 - Space Gray', 1123.99, 'The 13.3\" MacBook Pro features a redesigned enclosure design and all-metal unibody construction that creates a rigid and dense notebook that is also thin and light. The 13.3\" Retina Display with a 2560 x 1600 resolution features brighter LED backlighting than its predecessor as well as an increased contrast ratio, delivering deeper blacks and brighter whites. Its larger pixel aperture and variable refresh rate make it more power efficient than previous generations. A Touch ID sensor has been integrated into the power button, so you can quickly log into your account, even when another user is logged in. You can also use it with Apple Pay to securely purchase things over the web, thanks to macOS Sierra. Thunderbolt 3 is a hardware interface that utilizes the reversible USB Type-C connector. Doubling the speed of its predecessor, Thunderbolt 3 features a maximum throughput of 40 Gb/s when used with compatible devices.', 'Laptops'),
  (78329383, 'products1.jpg', 'Apple - iPhone 12 Pro Max 5G 128GB - Pacific Blue (Verizon)', 799.99, 'iPhone 12 Pro Max. 5G to download huge files on the go and stream HDR video.¹ Larger 6.7-inch Super Retina XDR display.² Ceramic Shield with 4x better drop performance.³ Incredible low-light photography with the best Pro camera system on an iPhone, and 5x optical zoom range. Cinema-grade Dolby Vision video recording, editing, and playback. Night mode portraits and next-level AR experiences with the LiDAR Scanner. Powerful A14 Bionic chip. And new MagSafe accessories for easy attach and faster wireless charging.⁴ For infinitely spectacular possibilities.', 'Smartphone'),
  (78329384, 'headphonee.jpg', 'Bets by Dr. Dre - Beats Studio³ Wireless Noise Cancelling Headphones - Shadow Gray', 233.99, 'Bets Studio³ Wireless headphones deliver a premium listening experience with Pure Adaptive Noise Cancelling (Pure ANC) to actively block external noise, and real-time audio calibration to preserve clarity, range, and emotion. It continuously pinpoints sounds to block while automatically responding to individual fit and music playback. The efficiency of the Apple W1 chip supports up to 22 hours of battery life with Pure ANC on, and Pure ANC off for low-power mode provides up to 40 hours of playback.', 'accessories'),
  (78329385, 'xps21.jpg', 'Dell - xps 5000 2-in-1 14\" Touch-Screen Laptop - AMD Ryzen 5 - 8GB Memory - 256GB Solid State Drive - Blue', 1129.99, 'The xps range of laptops and 2-in1s are thoughtfully designed so you can stay connected wherever you are, with long-lasting battery life, these chic, lightweight devices can seamlessly connect your PC and smartphone with Dell Mobile Connect’s wireless integration. Equipped with the latest processors, graphics, and thermal solutions; your PC runs quickly and smoothly as you connect with confidence. Optimized with technology that simplifies your life, Inspiron laptops and 2-in-1s offer a range of easy-to-use features all packaged in a minimalist and modern design. A newly designed and ergonomically positioned lift hinge increases comfort for a better typing experience when on chat, writing lengthy emails or connecting to your world. Rest assured that your privacy is secure with the mechanical privacy camera shutter. Also, the single sign on (SSO) fingerprint reader on the power button provides a more personal, more secure instant access login experience. And that’s not all, your Inspiron, is now environmentally conscious – The Inspiron compliments not just your style but also your values.\r\n', 'laptops'),
  (78329386, 'xps13.jpg', 'Dell - XPS 13\" 2-in-1 Touch FHD+ Laptop - Intel Evo Platform Core i7- 8GB RAM- 256GB SSD - Platinum Silver with Black Palmrest', 1329.99, 'Dell XPS 13\" Convertible 2-in-1 Laptop: this premium laptop comes with a platinum silver cover and a stunning, black interior. The 256GB solid state drive provides ample storage space for your work documents and applications, while the 13.4-inch FHD+ Infinity Edge touchscreen offers picture clarity and seamless operation. Powered by an 11th Gen Intel Core i7 processor and 8GB of RAM, this Dell XPS two-in-one notebook runs multiple programs simultaneously for smooth multitasking. A high end product with high end features such as a baclit keyboard with a fingerprint reader for added security, Intel Wi-Fi 6 for improved wireless connectivity, and Bluetooth 5.0. The Dell XPS 13 also comes with speakers tuned with Waves MaxxAudio for improved sound quality.', 'laptops'),
  (78329387, 'samsung.jpg', 'Samsung - Galaxy Note20 Ultra 5G 128GB (T-Mobile) - Bronze', 899.99, 'The power to work. The power to play. This isn\'t the time to slow down, this is the time to forge ahead and take the opportunities that come your way. You don’t need a smartphone. You need a power phone. One as beautiful as it is intelligent with a pen that is mightier, a battery that doesn\'t leave you hanging and is as well-connected as you. Samsung Galaxy Note20 Ultra 5G Unlocked takes power to the next level with cutting-edge technology, letting you master whatever you choose to do next.\r\n', 'smartphone'),
  (78329388, 'camera.jpg', 'Canon - EOS M50 Mirrorless Camera with EF-M 15-45mm f/3.5-6.3 IS STM Zoom Lens - White', 599.99, 'Explore the capabilities for high-quality image captures with this Canon EOS digital camera kit. High-resolution 4K UHD records and delivers lifelike video for your vlog, while the 24.1MP CMOS sensor grabs even high-action stills with clarity. The 24-72mm lens in this Canon EOS digital camera kit lets you take wide-angle epic landscape shots or tightly focused portrats.', 'camera');

  --
  -- Indexes for dumped tables
  --

  --
  -- Indexes for table `trending`
  --
  ALTER TABLE `trending`
    ADD PRIMARY KEY (`id`);

  --
  -- AUTO_INCREMENT for dumped tables
  --

  --
  -- AUTO_INCREMENT for table `trending`
  --
  ALTER TABLE `trending`
    MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78329389;
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessorie`
--
ALTER TABLE `accessorie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;


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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

ALTER TABLE `orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

ALTER TABLE `order_items`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
