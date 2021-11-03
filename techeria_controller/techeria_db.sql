-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2021 at 05:16 AM
-- Server version: 8.0.26
-- PHP Version: 8.0.10
--
-- Database: `techeria_db`
--
CREATE DATABASE `techeria_db`;
use `techeria_db`;
-- --------------------------------------------------------
--
-- Table structure for table `products`
--
CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--
-- Dumping data for table `products`
--
INSERT INTO `products` (`id`, `name`, `price`, `description`, `category`)
VALUES (
    12345678,
    'Macbook Air 13-inch - 256GB SSD',
    999,
    'Stunning 13.3-inch Retina display Macbook Air with True Tone technology.',
    'Laptops'
  ),
  (
    87654321,
    'Apple iPhone 12',
    729.99,
    'The iPhone 12 has a user interface built with a multi-touch screen.',
    'Phones'
  );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `products`
--
ALTER TABLE `products`
ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 87654322;
COMMIT;

CREATE TABLE 'account' (
  'account_id' INTEGER PRIMARY KEY ON CONFLICT ROLLBACK AUTOINCREMENT,
  'email' STRING NOT NULL DEFAULT email UNIQUE,
  'acc_status' INTEGER DEFAULT (0) NOT NULL,
  'password' STRING (50) NOT NULL
);

CREATE TABLE 'user_acc' (
  'user_id' INT REFERENCES account (account_id) ON DELETE CASCADE ON UPDATE RESTRICT MATCH [FULL] PRIMARY KEY,
  'first_name' STRING (255) NOT NULL,
  'last_name' STRING (255) NOT NULL,
  'address' STRING (255) NOT NULL,
  'balance' DOUBLE DEFAULT (0.0) NOT NULL,
  'credit_card' STRING (16) DEFAULT none NOT NULL
);
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/* Cart table*/
CREATE TABLE 'cart' (
  'account_id' INTEGER REFERENCES account (account_id) ON DELETE CASCADE ON UPDATE RESTRICT,
  'product_id' INTEGER REFERENCES product (product_id) ON DELETE CASCADE ON UPDATE RESTRICT,
  'amount' INTEGER,
  PRIMARY KEY (account_id, product_id);
/* Order table*/

CREATE TABLE orders (
  'transaction_id' INTEGER PRIMARY KEY AUTOINCREMENT,
  'account_id' INTEGER NOT NULL,
  'subtotal' DOUBLE NOT NULL DEFAULT (0.0),
  'purchase_date' DATETIME NOT NULL,
  'tracking_no' INTEGER,
  'order_status' INTEGER DEFAULT (0) NOT NULL,
);