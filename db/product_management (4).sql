-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 03:48 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `imagePath` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(65,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `imagePath`, `description`, `price`, `category`, `createdAt`, `updatedAt`) VALUES
(1, 'HP H3-LAPTOP-15-FD0170TU+CASE', 'https://dealerapi.synnex.co.th/Images/Product/5637341337.jpg', ' Intel Processor N100/ 4GB DDR4 1DM 3200/ 256GB PCIe Value/ Intel UHD Graphics/ OST W11H6 SL APACPPP [4E9U7AV]/ Moonlight Blue (FF+) - 720p TNR PVCY ST/ 15.6 FHD Antiglare slim IPS 250 nits Narrow Border [70R35AV]/ 2Yrs onsite', '10395.00', 'NOTEBOOK PERSONAL COMPUTER', NULL, '2023-10-21'),
(2, 'DELL W268412028STH_V3020SFF_BK_W', 'https://DealerAPI.synnex.co.th/Images/Product/5637327609.jpg', 'i7-13700,16 GB(1 x 16 GB) DDR4 3200 MHz, 512GB M.2 PCIe NVMe, Integrated Intel® UHD Graphics 770, WinHome11, OfficeH&S2021, 3 Yr Onsite Service -Retail', '26868.00', 'PERSONAL COMPUTER', '2023-10-19', '2023-10-21'),
(3, 'HP-PC-TP01-3043D', 'https://DealerAPI.synnex.co.th/Images/Product/5637198823.jpg', 'INTEL Core i3-12100 3.30GHz 4 CORES / RAM 8GB(1x8GB) DDR4 2933 UDIMM NECC / SSD 512GB 2280 PCIe NVMe Val M.2 / UMA / dvdrw / Windows 11 64bit PPP SEA Countries SL/ Snow White / kbd and mouse white wired 310 / 3Yrs onsite', '13714.00', 'PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(4, 'ASUS S500TE-713700002WS', 'https://DealerAPI.synnex.co.th/Images/Product/5637330602.jpg', 'Intel® Core™ i7-13700 Processor 2.1GHz (30M Cache, up to 5.2GHz, 16 cores),16GB DDR4 U-DIMM,Memory Max.64,1TB M.2 NVMe™ PCIe® 4.0 SSD,Intel® B760 Chipset,Windows 11 Home', '26579.00', 'PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(5, 'Lenovo Desktop 5 Series', 'https://DealerAPI.synnex.co.th/Images/Product/5637199344.jpg', 'Intel-Core-i5-13400/8GB-DDR4-3200/SSD-512GB/Integrated-Intel UHD-Graphics-730/Tower-(13.6L)/Windows11-Home +Office-Home&Student-2021/3Y-On-Site-Service(Premium Care)', '18554.00', 'PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(6, 'MSI Cubi 5 12M-071TH-B51235U8GS25X11EMA', 'https://DealerAPI.synnex.co.th/Images/Product/5637199347.jpg', 'i5-1235U/Intel® Iris® Xe Graphics eligible/DDR4 8GB (8GB*1)/ 256G M.2 PCIe SSD/W11H/waranty 3 years', '16458.00', 'PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(7, 'ASUS ROG Zephyrus Duo 16', 'https://DealerAPI.synnex.co.th/Images/Product/5637200034.jpg', 'R 9-7945HX Mobile Processor/ NVIDIA® GeForce RTX™ 4090 Laptop GPU/ 16GB DDR5-4800 SO-DIMM *2/ 2TB PCIe® 4.0 NVMe™ M.2 Performance SSD/ Windows 11 Home /Office Home and Student/ Black/ 16-inch', '134235.00', 'NOTEBOOK PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(8, 'HP 16-u0054TX', 'https://DealerAPI.synnex.co.th/Images/Product/5637314488.jpg', 'Core i9-13900HX/32GB DDR5 2DM 5600/1TB PCIe 4x4/ NVIDIA GeForce RTX 4070 8GB VRAM/Windows 11 Home PLS SL/ MISC XBOX Game Pass DA ULT 1M /Shadow Black - 1080p IR TNR PVCY ST [765S8AV]/ 16.0 UWVA 2.5K (2560x1600) mini-LED AG DCI-P3 1180 nits 240Hz Narrow B', '75504.00', 'NOTEBOOK PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(9, 'LENOVO Legion Y500 Series', 'https://DealerAPI.synnex.co.th/Images/Product/5637197405.jpg', 'Intel Core i7-12700H/16GB-DDR5-4800/SSD-512GB/RTX3070-8GB- GDDR6,TGP 140W/15.6\" WQHD(2560x1440)IPS,165Hz,100% sRGB/Windows 11-Home/3YLegion-Ultimate-Support(on-site-service)+2Y ADP', '55739.00', 'NOTEBOOK PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(10, 'ACER Nitro 16 AN16-41-R6MV_Obsidian black', 'https://DealerAPI.synnex.co.th/Images/Product/5637203909.jpg', 'AMD Ryzen™ 9 7940HS/16\"/RAM 16GB DDR5/SSD 1TB NVMe PCIe/NVIDIA® GeForce® RTX™ 4060 8GB GDDR6/W11H', '48144.00', 'NOTEBOO PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(11, 'MSI PRO DP10 13M-040TH-B51340P8GS51X11EMA', 'https://DealerAPI.synnex.co.th/Images/Product/5637199261.jpg', 'i5-1340P/Intel® Iris® Xe Graphics eligible/DDR4 8GB (8GB*1) /512G M.2 PCIe SN540/W11H/warraty 3 years', '18191.00', 'PERSONAL COMPUTER', '2023-10-21', '2023-10-21'),
(17, 'Lenovo IdeaCentre 3', 'https://DealerAPI.synnex.co.th/Images/Product/5637327641.jpg', 'Intel®Core™i5-13400,10C(6P+4E)/16T/8GB-DDR4-3200/SSD512GB /INTEGRATED_GRAPHICS/NO_OPTICAL_DRIVE/Tower(7.4L)/ Windows11-Home+ Office-Home&Student-2021/3Y-On-Site-Service', '16464.00', 'PERSONAL COMPUTER', '2023-10-30', '2023-10-30'),
(18, 'Lenovo IdeaCentre 3', 'https://DealerAPI.synnex.co.th/Images/Product/5637327641.jpg', 'Intel®Core™i5-13400,10C(6P+4E)/16T/8GB-DDR4-3200/SSD512GB /INTEGRATED_GRAPHICS/NO_OPTICAL_DRIVE/Tower(7.4L)/ Windows11-Home+ Office-Home&Student-2021/3Y-On-Site-Service', '16464.00', 'PERSONAL COMPUTER', '2023-10-30', '2023-10-30'),
(20, 'Lenovo IdeaCentre 3', 'https://DealerAPI.synnex.co.th/Images/Product/5637327641.jpg', 'Intel®Core™i5-13400,10C(6P+4E)/16T/8GB-DDR4-3200/SSD512GB /INTEGRATED_GRAPHICS/NO_OPTICAL_DRIVE/Tower(7.4L)/ Windows11-Home+ Office-Home&Student-2021/3Y-On-Site-Service', '16464.00', 'PERSONAL COMPUTER', '2023-10-30', '2023-10-30'),
(21, 'Lenovo IdeaCentre 3', 'https://DealerAPI.synnex.co.th/Images/Product/5637327641.jpg', 'Intel®Core™i5-13400,10C(6P+4E)/16T/8GB-DDR4-3200/SSD512GB /INTEGRATED_GRAPHICS/NO_OPTICAL_DRIVE/Tower(7.4L)/ Windows11-Home+ Office-Home&Student-2021/3Y-On-Site-Service', '16464.00', 'PERSONAL COMPUTER', '2023-10-30', '2023-10-30'),
(22, 'Lenovo IdeaCentre 8', 'https://DealerAPI.synnex.co.th/Images/Product/5637327641.jpg', 'Intel®Core™i5-13400,10C(6P+4E)/16T/8GB-DDR4-3200/SSD512GB /INTEGRATED_GRAPHICS/NO_OPTICAL_DRIVE/Tower(7.4L)/ Windows11-Home+ Office-Home&Student-2021/3Y-On-Site-Service', '86464.00', 'PERSONAL COMPUTER', '2023-10-30', '2023-10-30');

-- --------------------------------------------------------

--
-- Table structure for table `refreshtokens`
--

CREATE TABLE `refreshtokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refreshtokens`
--

INSERT INTO `refreshtokens` (`id`, `token`, `expiryDate`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, '4f34abc2-9472-4ba6-a0c8-6f85365f2495', '2023-10-30 06:24:22', '2023-10-30 06:22:22', '2023-10-30 06:22:22', 1),
(2, '0501c233-a41e-47a6-bbbb-b5c3028503e7', '2023-10-30 06:24:33', '2023-10-30 06:22:33', '2023-10-30 06:22:33', 1),
(3, '2231ff35-3b99-4f87-a158-ffceb0ded0b9', '2023-10-30 15:41:25', '2023-10-30 15:39:25', '2023-10-30 15:39:25', 1),
(4, '3e048e7a-3203-4524-a1d2-96792a7ca590', '2023-10-30 15:50:36', '2023-10-30 15:48:36', '2023-10-30 15:48:36', 1),
(5, '49188b14-73f9-4228-bd98-6b3194a02e7b', '2023-10-30 16:18:29', '2023-10-30 16:16:29', '2023-10-30 16:16:29', 1),
(6, 'fb1b9fb4-5cbb-4413-bee1-5c411990dcda', '2023-10-30 16:21:44', '2023-10-30 16:19:44', '2023-10-30 16:19:44', 1),
(7, '03af56c9-f5a0-47eb-9d13-207d4f94862b', '2023-10-30 16:54:18', '2023-10-30 16:52:18', '2023-10-30 16:52:18', 1),
(8, '731e0679-bf97-4048-bad1-7c0cdfab329f', '2023-10-30 17:08:39', '2023-10-30 17:06:39', '2023-10-30 17:06:39', 1),
(9, '58b56dbc-490b-4f24-9f4a-5b068ba5555a', '2023-10-30 17:30:58', '2023-10-30 17:28:58', '2023-10-30 17:28:58', 1),
(10, '35d5b2ca-3032-4823-973a-4d2596905e4a', '2023-10-30 17:31:20', '2023-10-30 17:29:20', '2023-10-30 17:29:20', 1),
(11, '9529e0d7-da03-47f6-9335-5212044ac8a2', '2023-10-30 17:33:23', '2023-10-30 17:31:23', '2023-10-30 17:31:23', 1),
(12, '2fa17b6b-c4c8-48e0-a791-10b7d86cdf6d', '2023-10-30 17:48:45', '2023-10-30 17:46:45', '2023-10-30 17:46:45', 1),
(13, '17a0aa33-bf4e-4bcb-84b6-7241fe6d8e78', '2023-10-30 18:04:37', '2023-10-30 18:02:37', '2023-10-30 18:02:37', 1),
(14, '8a732285-12fd-4dbf-bafa-b7c6413a70fe', '2023-10-30 18:11:32', '2023-10-30 18:09:32', '2023-10-30 18:09:32', 1),
(15, '0baa5d39-e986-45cc-a45e-d8610a53add2', '2023-10-30 18:12:39', '2023-10-30 18:10:39', '2023-10-30 18:10:39', 1),
(16, 'bea03749-af5a-43bd-8e07-ea4bb3e9ea3a', '2023-10-30 18:13:27', '2023-10-30 18:11:27', '2023-10-30 18:11:27', 1),
(17, '7900b075-c3ad-493b-a074-fac93a7fafcf', '2023-10-30 18:13:43', '2023-10-30 18:11:43', '2023-10-30 18:11:43', 1),
(18, 'c00f566e-1eb3-4999-bab2-930630af717a', '2023-11-10 12:42:30', '2023-11-10 12:40:30', '2023-11-10 12:40:30', 2),
(19, '79846c5c-7cc7-4e8d-8769-9475b7eb20b5', '2023-11-10 12:43:56', '2023-11-10 12:41:56', '2023-11-10 12:41:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2023-10-30 06:21:40', '2023-10-30 06:21:40'),
(2, 'moderator', '2023-10-30 06:21:40', '2023-10-30 06:21:40'),
(3, 'admin', '2023-10-30 06:21:40', '2023-10-30 06:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'worapakorn', 'pupupuwora@gmail.com', '$2a$08$6q/jjFT3DqJ6g.OzI6jcsesggSX6xqq5JEoIBc2BWQVdBrT/Gs5ya', '2023-10-30 06:22:19', '2023-10-30 06:22:19'),
(2, 'worapakorn2', 'pupupuwora2@gmail.com', '$2a$08$rPGvCrkI/CyfdidXx8oCkeYukwIJzAdhOALFuKppPxPhUXi4izWea', '2023-11-10 12:40:10', '2023-11-10 12:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('2023-11-10 12:40:10', '2023-11-10 12:40:10', 1, 2),
('2023-10-30 06:22:19', '2023-10-30 06:22:19', 2, 1),
('2023-10-30 06:22:19', '2023-10-30 06:22:19', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `refreshtokens`
--
ALTER TABLE `refreshtokens`
  ADD CONSTRAINT `refreshtokens_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
