-- --------------------------------------------------------
-- CREATED A SCHEMA FOR FULL-STACK-ECOMMERCE.
-- --------------------------------------------------------

DROP SCHEMA IF EXISTS `full-stack-ecommerce`;
CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce`;

-- --------------------------------------------------------
-- CREATED A TABLE FOR PRODUCT_CATEGORY.
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Full-stack-ecommerce`.`product_category` (
`id_category` int NOT NULL auto_increment,
`category_Name` VARCHAR(255) NULL,
primary key(`id_category`)
)Engine = InnoDB
AUTO_INCREMENT = 1;


-- --------------------------------------------------------
-- CREATED A TABLE FOR PRODUCTS.
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `Full-stack-ecommerce`.`product`(
`id_product` int NOT NULL auto_increment,
`category_id` int NOT NULL,
`name` varchar(255) NOT NULL,
`sku` varchar(255),
`description` varchar(255),
`price` decimal(7,2),
`status` bit DEFAULT 1,
`stock` int(7),
`image_url` VARCHAR(255),
`date_created` DATETIME(6),
`last_update` DATETIME(6),
primary key(`id_product`),
KEY `fk_category` (`category_id`),
CONSTRAINT `fk_category` foreign key (`category_id`) REFERENCES `product_category` (`id_category`)
)
ENGINE = InnoDB
AUTO_INCREMENT = 1;

-- --------------------------------------------------------
-- INSERT VALUES TO CATEGORY AND PRODUCT TABLES.
-- --------------------------------------------------------

 INSERT INTO product_category(category_Name) Values('Componentes');

INSERT INTO product(category_id, name, sku, description, price, stock, image_url, date_created) VALUES
('1', 'CPU Intel i7', 'INTELI7001', 'Intel Core i7-9700K 3.6 GHz', 299.99, 15, 'assets/images/products/Example.jpg', NOW()),
('1', 'RAM DDR4 16GB', 'RAM16001', 'Corsair Vengeance LPX 16GB DDR4 3200MHz', 79.99, 30, 'assets/images/products/Example.jpg', NOW()),
('1', 'SSD 1TB', 'SSD10001', 'Samsung 970 EVO 1TB NVMe', 149.99, 25, 'assets/images/products/Example.jpg', NOW()),
('1', 'Motherboard ATX', 'MOBOATX01', 'MSI Z390-A PRO ATX LGA1151', 119.99, 10, 'assets/images/products/Example.jpg', NOW()),
('1', 'Power Supply 750W', 'PSU750W01', 'EVGA 750W 80+ Gold', 89.99, 20, 'assets/images/products/Example.jpg', NOW()),
('1', 'GPU NVIDIA RTX 3080', 'GPURTX3080', 'NVIDIA GeForce RTX 3080 10GB GDDR6X', 699.99, 5, 'assets/images/products/Example.jpg', NOW()),
('1', 'CPU Cooler', 'CPUCOOL01', 'Cooler Master Hyper 212 RGB', 39.99, 50, 'assets/images/products/Example.jpg', NOW()),
('1', 'HDD 2TB', 'HDD20001', 'Seagate Barracuda 2TB', 54.99, 40, 'assets/images/products/Example.jpg', NOW()),
('1', 'Case ATX', 'CASEATX01', 'NZXT H510 ATX Mid Tower', 79.99, 35, 'assets/images/products/Example.jpg', NOW()),
('1', 'Keyboard Mechanical', 'KBMECH01', 'Logitech G413 Mechanical Gaming Keyboard', 69.99, 25, 'assets/images/products/Example.jpg', NOW()),
('1', 'Mouse Gaming', 'MOUSEGM01', 'Razer DeathAdder V2 Gaming Mouse', 49.99, 45, 'assets/images/products/Example.jpg', NOW()),
('1', 'Monitor 27"', 'MON27INCH01', 'ASUS TUF Gaming 27" WQHD', 299.99, 15, 'assets/images/products/Example.jpg', NOW()),
('1', 'Headset Gaming', 'HEADSETGM01', 'SteelSeries Arctis 7 Wireless', 149.99, 20, 'assets/images/products/Example.jpg', NOW()),
('1', 'Thermal Paste', 'THERMALP01', 'Arctic MX-4 Thermal Paste', 9.99, 100, 'assets/images/products/Example.jpg', NOW()),
('1', 'RGB LED Strip', 'RGBSTRIP01', 'Corsair iCUE Lighting Node Pro RGB', 39.99, 60, 'assets/images/products/Example.jpg', NOW()),
('1', 'GPU AMD RX 6800 XT', 'GPU6800XT01', 'AMD Radeon RX 6800 XT 16GB GDDR6', 649.99, 8, 'assets/images/products/Example.jpg', NOW()),
('1', 'Motherboard MicroATX', 'MOBOuATX01', 'ASUS TUF B450M-PLUS Gaming', 89.99, 20, 'assets/images/products/Example.jpg', NOW()),
('1', 'RAM DDR4 32GB', 'RAM32002', 'G.Skill Ripjaws V 32GB DDR4 3200MHz', 159.99, 15, 'assets/images/products/Example.jpg', NOW()),
('1', 'SSD 500GB', 'SSD50002', 'Crucial P5 500GB NVMe', 59.99, 25, 'assets/images/products/Example.jpg', NOW()),
('1', 'PSU 650W', 'PSU650W02', 'Corsair RM650x 650W 80+ Gold', 99.99, 30, 'assets/images/products/Example.jpg', NOW()),
('1', 'Webcam HD', 'WEBCAMHD01', 'Logitech C920 HD Pro Webcam', 69.99, 50, 'assets/images/products/Example.jpg', NOW()),
('1', 'Mousepad XL', 'MOUSEPADXL01', 'SteelSeries QcK Gaming Mousepad XL', 19.99, 80, 'assets/images/products/Example.jpg', NOW()),
('1', 'CPU AMD Ryzen 9', 'AMDRYZEN901', 'AMD Ryzen 9 5900X 12-core 3.7 GHz', 499.99, 10, 'assets/images/products/Example.jpg', NOW()),
('1', 'GPU NVIDIA RTX 3070', 'GPURTX30701', 'NVIDIA GeForce RTX 3070 8GB GDDR6', 599.99, 10, 'assets/images/products/Example.jpg', NOW()),
('1', 'External HDD 5TB', 'HDD50001', 'WD My Passport 5TB External HDD', 129.99, 20, 'assets/images/products/Example.jpg', NOW()),
('1', 'RAM DDR4 8GB', 'RAM08002', 'Kingston HyperX Fury 8GB DDR4 2666MHz', 39.99, 40, 'assets/images/products/Example.jpg', NOW()),
('1', 'Motherboard Mini-ITX', 'MOBOITX01', 'ASRock B450M-ITX/ac Mini ITX', 109.99, 12, 'assets/images/products/Example.jpg', NOW()),
('1', 'Monitor 24"', 'MON24INCH01', 'Dell 24" FHD Monitor', 129.99, 22, 'assets/images/products/Example.jpg', NOW()),
('1', 'Wireless Adapter', 'WIFIADAPT01', 'TP-Link AC1300 USB Wi-Fi Adapter', 29.99, 60, 'assets/images/products/Example.jpg', NOW()),
('1', 'Cooling Fan 120mm', 'FAN120MM01', 'Noctua NF-P12 redux-1700 PWM 120mm Fan', 19.99, 75, 'assets/images/products/Example.jpg', NOW());


