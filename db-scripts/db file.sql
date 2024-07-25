-- -----------------------------------------------------
-- Create a new user
-- -----------------------------------------------------
-- CREATE USER 'ecommerce'@'localhost' IDENTIFIED BY 'ecommerce';

-- GRANT ALL PRIVILEGES ON * . * TO 'ecommerce'@'localhost';

-- ALTER USER 'ecommerce'@'localhost' IDENTIFIED WITH mysql_native_password BY 'ecommerce';


-- -----------------------------------------------------
-- Schema ecommerce-db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ecommerce-db`;

CREATE SCHEMA `ecommerce-db`;

USE `ecommerce-db` ;

-- -----------------------------------------------------
-- Table `ecommerce-db`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce-db`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `ecommerce-db`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce-db`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Dresses');
INSERT INTO product_category(category_name) VALUES ('Toys');


-- -----------------------------------------------------
-- Dresses
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1000', 'ComboSet ', 'comboset for girls and boys up to the age of 2-6 years', 'assets/images/products/Dresses/dress-1.jpeg', 1, 100, 1000, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1001', 'Sherwanis', 'Fabric-SilkBlend,Color-Blue,Pattern-Printed up to the age of 3-7 years', 'assets/images/products/Dresses/dress-2.jpeg', 1, 100, 500, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1002', 'Summer Set', 'Fabric-Cotton Blend,Color-Black,Pattern-Printed, up to the age of 3-7 years', 'assets/images/products/Dresses/dress-3.jpeg', 1, 100, 300, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1003', 'Cute Top and Botton sets for boys', 'Fabric-Cotton,Color-Peach and Black,Pattern-Printed,Bottom Pattern:Solid, up to the age of 5-7 years', 'assets/images/products/Dresses/dress-4.jpeg', 1, 100, 1000, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1004', 'Ethnic sets', 'Fabric-Art Silk,Color-Blue,Pattern-Printed up to the age of 3-7 years', 'assets/images/products/Dresses/dress-5.jpeg', 1, 100,500,  1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1005', 'Girls Lehenga Choli', 'Fabric-Silk,Color-Green,Pattern-Solid up to the age of 8-10 years', 'assets/images/products/Dresses/dress-6.jpeg', 1, 100, 800, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1006', 'Floral Frock', 'Fabric-Cotton,Color-Peach,Pattern-Printed up to the age of 8-12 months', 'assets/images/products/Dresses/dress-7.jpeg', 1, 100, 300, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1007', 'Elegant Frock Set', 'Fabric-Georgette,Color-Pink,Pattern-Printed up to the age of 8-13 months', 'assets/images/products/Dresses/dress-8.jpeg', 1, 100,800, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1008', 'Stylish Girl-Set', 'Fabric-Cotton,Color-NavyBlue,Pattern-Printed up to the age of 5-10 years', 'assets/images/products/Dresses/dress-9.jpeg', 1, 100, 1000,1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Dresses-1009', 'Trendy new Kurta Set', 'Fabric-Cotton&Silk,Color-lightgreen,Pattern-Printed up to the age of 8-12 years', 'assets/images/products/Dresses/dress-10.jpeg', 1, 100, 1500,1, NOW());


-- -----------------------------------------------------
-- Toys
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1000','King Toy ', 'Soft and Cuddly', 'assets/images/products/Toys/toy-1.jpeg', 1, 100, 200, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1001', 'Soft-Toys', 'Adorable Stuffed toys:Pokemon,Elephant,penguin,Kitty,', 'assets/images/products/Toys/toy-2.jpeg', 1, 100, 1000, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1002', 'Dolphin Bubble Gun ', 'Bubble gun bubble making toy with bubble solution bottles', 'assets/images/products/Toys/toy-3.jpeg', 1, 100, 500, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1003', 'Toy Thar ', 'Mahindra Thar-for kids', 'assets/images/products/Toys/toy-4.jpeg', 1, 100, 1000, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1004', 'Barbie-Set ', 'Barbie set for kids', 'assets/images/products/Toys/toy-5.jpeg', 1, 100, 200, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1005', 'Kidz-Bop ', 'Musical mike', 'assets/images/products/Toys/toy-6.jpeg', 1, 100, 300, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1006', 'Dancing Cactus ', 'Sizzling dancing cactus', 'assets/images/products/Toys/toy-7.jpeg', 1, 100, 300, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1007', 'Toy Camera ', 'Baby Camera', 'assets/images/products/Toys/toy-8.jpeg', 1, 100, 800, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1008', 'Remote Control Bike ', 'Whiskey Plastic Remote control Bike', 'assets/images/products/Toys/toy-9.jpeg', 1, 100, 1500, 2,  NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Toys-1009', 'Ride On Push ', 'Ride on & Car for kids with music* horn steering', 'assets/images/products/Toys/toy-10.jpeg', 1, 100, 2000, 2,  NOW());

USE `ecommerce-db`;

SET foreign_key_checks = 0;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` smallint unsigned NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

--
-- Data for table `country`
--

INSERT INTO `country` VALUES 
(1,'BR','Brazil'),
(2,'CA','Canada'),
(3,'DE','Germany'),
(4,'IN','India'),
(5,'TR','Turkey'),
(6,'US','United States');

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` VALUES 
(1,'Acre',1),
(2,'Alagoas',1),
(3,'Amapá',1),
(4,'Amazonas',1),
(5,'Bahia',1),
(6,'Ceará',1),
(7,'Distrito Federal',1),
(8,'Espírito Santo',1),
(9,'Goiás',1),
(10,'Maranhão',1),
(11,'Mato Grosso do Sul',1),
(12,'Mato Grosso',1),
(13,'Minas Gerais',1),
(14,'Paraná',1),
(15,'Paraíba',1),
(16,'Pará',1),
(17,'Pernambuco',1),
(18,'Piaui',1),
(19,'Rio de Janeiro',1),
(20,'Rio Grande do Norte',1),
(21,'Rio Grande do Sul',1),
(22,'Rondônia',1),
(23,'Roraima',1),
(24,'Santa Catarina',1),
(25,'Sergipe',1),
(26,'São Paulo',1),
(27,'Tocantins',1),
(28,'Alberta',2),
(29,'British Columbia',2),
(30,'Manitoba',2),
(31,'New Brunswick',2),
(32,'Newfoundland and Labrador',2),
(33,'Northwest Territories',2),
(34,'Nova Scotia',2),
(35,'Nunavut',2),
(36,'Ontario',2),
(37,'Prince Edward Island',2),
(38,'Quebec',2),
(39,'Saskatchewan',2),
(40,'Yukon',2),
(41,'Baden-Württemberg',3),
(42,'Bavaria',3),
(43,'Berlin',3),
(44,'Brandenburg',3),
(45,'Bremen',3),
(46,'Hamburg',3),
(47,'Hesse',3),
(48,'Lower Saxony',3),
(49,'Mecklenburg-Vorpommern',3),
(50,'North Rhine-Westphalia',3),
(51,'Rhineland-Palatinate',3),
(52,'Saarland',3),
(53,'Saxony',3),
(54,'Saxony-Anhalt',3),
(55,'Schleswig-Holstein',3),
(56,'Thuringia',3),
(57,'Andhra Pradesh',4),
(58,'Arunachal Pradesh',4),
(59,'Assam',4),
(60,'Bihar',4),
(61,'Chhattisgarh',4),
(62,'Goa',4),
(63,'Gujarat',4),
(64,'Haryana',4),
(65,'Himachal Pradesh',4),
(66,'Jammu & Kashmir',4),
(67,'Jharkhand',4),
(68,'Karnataka',4),
(69,'Kerala',4),
(70,'Madhya Pradesh',4),
(71,'Maharashtra',4),
(72,'Manipur',4),
(73,'Meghalaya',4),
(74,'Mizoram',4),
(75,'Nagaland',4),
(76,'Odisha',4),
(77,'Punjab',4),
(78,'Rajasthan',4),
(79,'Sikkim',4),
(80,'Tamil Nadu',4),
(81,'Telangana',4),
(82,'Tripura',4),
(83,'Uttar Pradesh',4),
(84,'Uttarakhand',4),
(85,'West Bengal',4),
(86,'Andaman and Nicobar Islands',4),
(87,'Chandigarh',4),
(88,'Dadra and Nagar Haveli',4),
(89,'Daman & Diu',4),
(90,'Lakshadweep',4),
(91,'Puducherry',4),
(92,'The Government of NCT of Delhi',4),
(93,'Alabama',6),
(94,'Alaska',6),
(95,'Arizona',6),
(96,'Arkansas',6),
(97,'California',6),
(98,'Colorado',6),
(99,'Connecticut',6),
(100,'Delaware',6),
(101,'District Of Columbia',6),
(102,'Florida',6),
(103,'Georgia',6),
(104,'Hawaii',6),
(105,'Idaho',6),
(106,'Illinois',6),
(107,'Indiana',6),
(108,'Iowa',6),
(109,'Kansas',6),
(110,'Kentucky',6),
(111,'Louisiana',6),
(112,'Maine',6),
(113,'Maryland',6),
(114,'Massachusetts',6),
(115,'Michigan',6),
(116,'Minnesota',6),
(117,'Mississippi',6),
(118,'Missouri',6),
(119,'Montana',6),
(120,'Nebraska',6),
(121,'Nevada',6),
(122,'New Hampshire',6),
(123,'New Jersey',6),
(124,'New Mexico',6),
(125,'New York',6),
(126,'North Carolina',6),
(127,'North Dakota',6),
(128,'Ohio',6),
(129,'Oklahoma',6),
(130,'Oregon',6),
(131,'Pennsylvania',6),
(132,'Rhode Island',6),
(133,'South Carolina',6),
(134,'South Dakota',6),
(135,'Tennessee',6),
(136,'Texas',6),
(137,'Utah',6),
(138,'Vermont',6),
(139,'Virginia',6),
(140,'Washington',6),
(141,'West Virginia',6),
(142,'Wisconsin',6),
(143,'Wyoming',6),
(144,'Adıyaman',5),
(145,'Afyonkarahisar',5),
(146,'Ağrı',5),
(147,'Aksaray',5),
(148,'Amasya',5),
(149,'Ankara',5),
(150,'Antalya',5),
(151,'Ardahan',5),
(152,'Artvin',5),
(153,'Aydın',5),
(154,'Balıkesir',5),
(155,'Bartın',5),
(156,'Batman',5),
(157,'Bayburt',5),
(158,'Bilecik',5),
(159,'Bingöl',5),
(160,'Bitlis',5),
(161,'Bolu',5),
(162,'Burdur',5),
(163,'Bursa',5),
(164,'Çanakkale',5),
(165,'Çankırı',5),
(166,'Çorum',5),
(167,'Denizli',5),
(168,'Diyarbakır',5),
(169,'Düzce',5),
(170,'Edirne',5),
(171,'Elazığ',5),
(172,'Erzincan',5),
(173,'Erzurum',5),
(174,'Eskişehir',5),
(175,'Gaziantep',5),
(176,'Giresun',5),
(177,'Gümüşhane',5),
(178,'Hakkâri',5),
(179,'Hatay',5),
(180,'Iğdır',5),
(181,'Isparta',5),
(182,'İstanbul',5),
(183,'İzmir',5),
(184,'Kahramanmaraş',5),
(185,'Karabük',5),
(186,'Karaman',5),
(187,'Kars',5),
(188,'Kastamonu',5),
(189,'Kayseri',5),
(190,'Kırıkkale',5),
(191,'Kırklareli',5),
(192,'Kırşehir',5),
(193,'Kilis',5),
(194,'Kocaeli',5),
(195,'Konya',5),
(196,'Kütahya',5),
(197,'Malatya',5),
(198,'Manisa',5),
(199,'Mardin',5),
(200,'Mersin',5),
(201,'Muğla',5),
(202,'Muş',5),
(203,'Nevşehir',5),
(204,'Niğde',5),
(205,'Ordu',5),
(206,'Osmaniye',5),
(207,'Rize',5),
(208,'Sakarya',5),
(209,'Samsun',5),
(210,'Siirt',5),
(211,'Sinop',5),
(212,'Sivas',5),
(213,'Şanlıurfa',5),
(214,'Şırnak',5),
(215,'Tekirdağ',5),
(216,'Tokat',5),
(217,'Trabzon',5),
(218,'Tunceli',5),
(219,'Uşak',5),
(220,'Van',5),
(221,'Yalova',5),
(222,'Yozgat',5),
(223,'Zonguldak',5);

SET foreign_key_checks = 1;


USE `ecommerce-db`;

--
-- Prep work
--
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `order_item`;
DROP TABLE IF EXISTS `orders`;
DROP TABLE IF EXISTS `customer`;
DROP TABLE IF EXISTS `address`;
SET FOREIGN_KEY_CHECKS=1;

--
-- Table structure for table `address`
--
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `customer`
--
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `orders`
--
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_tracking_number` varchar(255) DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `total_quantity` int DEFAULT NULL,
  `billing_address_id` bigint DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `shipping_address_id` bigint DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_billing_address_id` (`billing_address_id`),
  UNIQUE KEY `UK_shipping_address_id` (`shipping_address_id`),
  KEY `K_customer_id` (`customer_id`),
  CONSTRAINT `FK_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_billing_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_shipping_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `order_items`
--
CREATE TABLE `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `K_order_id` (`order_id`),
  CONSTRAINT `FK_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
