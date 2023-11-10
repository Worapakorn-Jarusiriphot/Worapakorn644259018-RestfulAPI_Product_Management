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
(1, 'HP H3-LAPTOP-15-FD0170TU+CASE', 'https://dealerapi.synnex.co.th/Images/Product/5637341337.jpg', ' Intel Processor N100/ 4GB DDR4 1DM 3200/ 256GB PCIe Value/ Intel UHD Graphics/ OST W11H6 SL APACPPP [4E9U7AV]/ Moonlight Blue (FF+) - 720p TNR PVCY ST/ 15.6 FHD Antiglare slim IPS 250 nits Narrow Border [70R35AV]/ 2Yrs onsite', '10395.00', 'NOTEBOOK PERSONAL COMPUTER', NULL, '2023-10-21');