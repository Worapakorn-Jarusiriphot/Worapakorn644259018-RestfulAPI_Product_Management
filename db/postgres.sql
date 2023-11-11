CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  "imagePath" VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  price DECIMAL(65,2) NOT NULL,
  category VARCHAR(255) NOT NULL,
  "createdAt" DATE,
  "updatedAt" DATE
);

INSERT INTO products (id, title, "imagePath", description, price, category, "createdAt", "updatedAt") VALUES
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
(11, 'MSI PRO DP10 13M-040TH-B51340P8GS51X11EMA', 'https://DealerAPI.synnex.co.th/Images/Product/5637199261.jpg', 'i5-1340P/Intel® Iris® Xe Graphics eligible/DDR4 8GB (8GB*1) /512G M.2 PCIe SN540/W11H/warraty 3 years', '18191.00', 'PERSONAL COMPUTER', '2023-10-21', '2023-10-21');