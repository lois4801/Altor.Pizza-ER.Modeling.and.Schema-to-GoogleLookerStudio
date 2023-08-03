-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: altors_pizzeria
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `delivery_address` varchar(50) DEFAULT NULL,
  `delivery_city` varchar(50) NOT NULL,
  `delivery_zipcode` int NOT NULL,
  UNIQUE KEY `address_id` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'607 Trails End Road','Halifax',6042),(2,'25 Cliffside Drive','Dartmouth',6042),(3,'56 Concord Road','Dartmouth',6042),(4,'82 Lookout Mountain Drive','Dartmouth',6040),(5,'21 Carver Lane','Dartmouth',6040),(6,'61 Plymouth Lane','Halifax',6040),(7,'265 Slater Street','Halifax',6042),(8,'159 Adams Street','Halifax',6040),(9,'66 Pine Street','Halifax',6040),(10,'18 Cambridge Street','Halifax',6042),(11,'310 Timrod Road','Bedford',6040),(12,'44 Downey Drive','Bedford',6040),(13,'31 Buckland Hills Drive','Bedford',6042),(14,'194 Buckland Hills Drive','Bedford',6042),(15,'29 Lucian Street','Bedford',6040),(16,'138 Bolton Street','Bedford',6040),(17,'60 Desousa Drive','Lower Sackville',6040),(18,'4 Orchard Street','Lower Sackville',6040),(19,'117 Adelaide Road','Lower Sackville',6040),(20,'236 Middle Turnpike East','Lower Sackville',6040),(21,'736 Middle Turnpike East','Lower Sackville',6040),(22,'95 Briarwood Drive','Lower Sackville',6040),(23,'65 Arcellia Drive','Lower Sackville',6042),(24,'25 Edwards Street','Lower Sackville',6042),(25,'115 Waddell Road','Bedford',6040),(26,'425 Middle Turnpike East','Bedford',6040),(27,'13 Riverview Avenue','Bedford',6340),(28,'46 Lilac Street','Lower Sackville',6040),(29,'16 Ambassador Drive','Lower Sackville',6042),(30,'119 Redwood Road','Lower Sackville',6040),(31,'697 Parker Street','Halifax',6042),(32,'207 Spruce Street','Halifax',6040),(33,'34 Holyoke Road','Halifax',6040),(34,'175 Oak Street','Bedford',6040),(35,'126 Marjorie Lane','Bedford',6042),(36,'22 Star Farms Drive','Bedford',6040),(37,'89 High Ledge Circle','Bedford',6040),(38,'126 Garth Road','Dartmouth',6040),(39,'44 Colonial Road','Dartmouth',6042),(40,'31 Ashworth Street','Dartmouth',6040),(41,'145 Saint John Street','Dartmouth',6040),(42,'211 Oak Street','Dartmouth',6040),(43,'125 Summer Street','Halifax',6040),(44,'86 Highland Street','Halifax',6040),(45,'61 Hills Street','Halifax',6040),(46,'219 Bidwell Street','Lower Sackville',6040),(47,'44 Campfield Road','Lower Sackville',6040),(48,'184 Woodland Street','Lower Sackville',6042),(49,'225 Kennedy Road','Lower Sackville',6042),(50,'173 Center Street','Bedford',6040),(51,'150 Carter Street','Bedford',6040),(52,'68 Princeton Street','Bedford',6042),(53,'38 Bruce Road','Bedford',6040),(54,'208 Timrod Road','Bedford',6040),(55,'981 Groton Long Point Road','Dartmouth',6340),(56,'123 Elizabeth Drive','Dartmouth',6042),(57,'35 Lakewood Circle South','Dartmouth',6040),(58,'91 Eldridge Street','Dartmouth',6040);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_firstname` varchar(50) NOT NULL,
  `customer_lastname` varchar(50) NOT NULL,
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Destiny','Ferguson'),(2,'Maro','Atkinson'),(3,'Nicole','Brown'),(4,'Mitchell','Lopez'),(5,'Brittany','Olson'),(6,'Jenny','Richardson'),(7,'Teresa','Thompson'),(8,'William','Norman'),(9,'Jose','Sutton'),(10,'Keith','Alexander'),(11,'Michael','White'),(12,'Christine','Mathis'),(13,'Paul','Lee'),(14,'Bell','Munoz'),(15,'Eric','Walsh'),(16,'Victoria','Gomez'),(17,'Alicia','Richardson'),(18,'Joshua','Walker'),(19,'Melanie','Ruiz'),(20,'Jenna','Moore'),(21,'Vanessa','Young'),(22,'Ruben','Maddox'),(23,'Lisa','Hull'),(24,'Travis','Miller'),(25,'Rebecca','Davis'),(26,'Kerry','Brewer'),(27,'Christopher','Clarke'),(28,'Walter','Vaughn'),(29,'Chad','Lopez'),(30,'Kimberly','Hernandez'),(31,'Donald','Rodriguez'),(32,'Julia','Welch'),(33,'Victor','Vincent'),(34,'Mitchell','Woods'),(35,'Ashley','Smith'),(36,'Mitchell','Miller'),(37,'Brianna','Jones'),(38,'Diana','Martin'),(39,'Kelly','Martinez'),(40,'Kimberly','Bell'),(41,'Jennifer','Rivera'),(42,'Dana','Beck'),(43,'Shawn','Allen'),(44,'Zachary','Murray'),(45,'Rebecca','Fowler'),(46,'Destiny','Jones'),(47,'Kimberly','Miller'),(48,'Gabriela','Sherman'),(49,'William','Shah'),(50,'Shawn','Newton'),(51,'Michaela','Benitez'),(52,'Ryan','Baker'),(53,'Kelly','King'),(54,'Amy','Alexander'),(55,'Timothy','Davila'),(56,'Dave','Hall'),(57,'Shane','Reed'),(58,'Lamia','Moore'),(59,'William','Herod'),(60,'Walis','Herod');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `ingre_id` varchar(50) NOT NULL,
  `ingre_name` varchar(50) DEFAULT NULL,
  `ingre_weight` int DEFAULT NULL,
  `ingre_measure` varchar(20) NOT NULL,
  `ingre_price` decimal(10,2) DEFAULT NULL,
  UNIQUE KEY `ingre_id` (`ingre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES ('INGRE001','Pizza dough ball (8 pack)',2000,'grams',4.22),('INGRE002','Tomato sauce ',4500,'grams',3.89),('INGRE003','Mozzarella cheese',2500,'grams',14.45),('INGRE004','Dried oregano',500,'grams',5.99),('INGRE005','Spicy salami',3500,'grams',37.64),('INGRE006','Chilli pepper',1000,'grams',6.49),('INGRE007','Eggplant',1000,'grams',1.90),('INGRE008','Parmesan cheese',2500,'grams',18.75),('INGRE009','Gorgonzola cheese',3500,'grams',27.64),('INGRE010','Ricotta cheese',1500,'grams',3.99),('INGRE011','Anchovies',1000,'grams',10.99),('INGRE012','Capers',1000,'grams',4.16),('INGRE013','Pepperoni',2500,'grams',24.18),('INGRE014','Shrimp',1000,'grams',8.98),('INGRE015','Tuna',2000,'grams',7.66),('INGRE016','Calamari',2500,'grams',28.77),('INGRE017','Ham',5000,'grams',32.45),('INGRE018','Pineapple',5000,'grams',6.23),('INGRE019','Garlic and parsley butter',3000,'grams',52.10),('INGRE020','Chicken wings',6000,'grams',69.83),('INGRE021','Rotisserie chicken pieces',5000,'grams',34.45),('INGRE022','Croutons',1250,'grams',5.25),('INGRE023','Romain lettuce',7500,'grams',13.72),('INGRE024','Caesar dressing',3800,'grams',17.98),('INGRE025','Vanilla ice cream',4500,'mililitres',15.45),('INGRE026','Chocolate ice cream',4500,'mililitres',15.45),('INGRE027','Strawberry ice cream',4500,'mililitres',15.45),('INGRE028','Pistachio ice cream',4500,'mililitres',15.45),('INGRE029','Chocolate brownie',2500,'grams',4.45),('INGRE030','Banoffee pie',1200,'grams',1.15),('INGRE031','Fruit salad',5000,'grams',7.12),('INGRE032','Coca Cola Regular 33cl',1,'unit',0.41),('INGRE033','Coca Cola Regular 1.5l',1,'unit',0.96),('INGRE034','Coca Cola Diet 33cl',1,'unit',0.41),('INGRE035','Coca Cola Diet 1.5l',1,'unit',0.96),('INGRE036','Sprite Regular 33cl',1,'unit',0.41),('INGRE037','Sprite Regular 1.5l',1,'unit',0.96),('INGRE038','Sprite Diet 33cl',1,'unit',0.41),('INGRE039','Sprite Diet 1.5l',1,'unit',0.96),('INGRE040','Fanta Regular 33cl',1,'unit',0.41),('INGRE041','Fanta Regular 1.5l',1,'unit',0.96),('INGRE042','Fanta Diet 33cl',1,'unit',0.41),('INGRE043','Fanta Diet 1.5l',1,'unit',0.96),('INGRE044','San Pelligrino 33cl',1,'unit',0.36),('INGRE045','San Pelligrino 1.5l',1,'unit',0.86),('INGRE046','Perrier 33cl',1,'unit',0.36),('INGRE047','Perrier 1.5l',1,'unit',0.86);
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inv_id` int NOT NULL,
  `ingre_id` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  UNIQUE KEY `inv_id` (`inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'INGRE001',50),(2,'INGRE002',25),(3,'INGRE003',40),(4,'INGRE004',4),(5,'INGRE005',2),(6,'INGRE006',4),(7,'INGRE007',20),(8,'INGRE008',10),(9,'INGRE009',10),(10,'INGRE010',10),(11,'INGRE011',2),(12,'INGRE012',2),(13,'INGRE013',10),(14,'INGRE014',10),(15,'INGRE015',3),(16,'INGRE016',3),(17,'INGRE017',4),(18,'INGRE018',4),(19,'INGRE019',3),(20,'INGRE020',4),(21,'INGRE021',5),(22,'INGRE022',5),(23,'INGRE023',5),(24,'INGRE024',5),(25,'INGRE025',2),(26,'INGRE026',2),(27,'INGRE027',2),(28,'INGRE028',2),(29,'INGRE029',2),(30,'INGRE030',2),(31,'INGRE031',2),(32,'INGRE032',120),(33,'INGRE033',120),(34,'INGRE034',120),(35,'INGRE035',120),(36,'INGRE036',120),(37,'INGRE037',120),(38,'INGRE038',120),(39,'INGRE039',120),(40,'INGRE040',120),(41,'INGRE041',120),(42,'INGRE042',120),(43,'INGRE043',120),(44,'INGRE044',120),(45,'INGRE045',120),(46,'INGRE046',120),(47,'INGRE047',120);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` varchar(100) NOT NULL,
  `recipe_id` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_cat` varchar(100) NOT NULL,
  `item_size` varchar(50) NOT NULL,
  `item_price` int NOT NULL,
  UNIQUE KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('it_001','PIZZ-MARG-R','Pizza Margherita Reg','Pizza','Regular',12),('it_002','PIZZ-MARG-L','Pizza Margherita Large','Pizza','Large',14),('it_003','PIZZ-DIAV-R','Pizza Diavola (hot) Reg','Pizza','Regular',16),('it_004','PIZZ-DIAV-L','Pizza Diavola (hot) Large','Pizza','Large',19),('it_005','PIZZ-PARM-R','Pizza Parmigiana Reg','Pizza','Regular',15),('it_006','PIZZ-PARM-L','Pizza Parmigiana Large','Pizza','Large',18),('it_007','PIZZ-QUAT-R','Pizza Quattro Formaggi Reg','Pizza','Regular',16),('it_008','PIZZ-QUAT-L','Pizza Quattro Formaggi Large','Pizza','Large',19),('it_009','PIZZ-NAPO-R','Pizza Napolitana Reg','Pizza','Regular',16),('it_010','PIZZ-NAPO-L','Pizza Napolitana Large','Pizza','Large',18),('it_011','PIZZ-PEPP-R','Pizza Pepperoni Reg','Pizza','Regular',15),('it_012','PIZZ-PEPP-L','Pizza Pepperoni Large','Pizza','Large',17),('it_013','PIZZ-SEAF-R','Pizza Seafood Reg','Pizza','Regular',17),('it_014','PIZZ-SEAF-L','Pizza Seafood Large','Pizza','Large',20),('it_015','PIZZ-HAWA-R','Pizza Hawaiian Reg','Pizza','Regular',15),('it_016','PIZZ-HAWA-L','Pizza Hawaiian Large','Pizza','Large',17),('it_017','SIDE-GARL-R','Garlic Bread','Side','Regular',6),('it_018','SIDE-CHIC-R','Chicken Wings','Side','Regular',7),('it_019','SIDE-BREA-R','Breadsticks','Side','Regular',5),('it_020','SIDE-CAES-R','Caesar Salad','Side','Regular',7),('it_021','DESS-ICE-CHOC','Vanilla Ice cream','Dessert','Regular',6),('it_022','DESS-ICE-VANI','Chocolate Ice cream','Dessert','Regular',6),('it_023','DESS-ICE-STRA','Strawberry Ice cream','Dessert','Regular',6),('it_024','DESS-ICE-PIST','Pistachio Ice cream','Dessert','Regular',6),('it_025','DESS-CHOC-BROW','Chocolate Brownie','Dessert','Regular',5),('it_026','DESS-BANO-PIE','Banoffee Pie','Dessert','Regular',7),('it_027','DESS-FRUI-SALA','Fruit Salad','Dessert','Regular',5),('it_028','BEVA-CC-REG33','Coca Cola Regular 33cl','Drink','33cl',3),('it_029','BEVA-CC-REG1500','Coca Cola Regular 1.5l','Drink','1.5l',6),('it_030','BEVA-CC-DIE33','Coca Cola Diet 33cl','Drink','33cl',3),('it_031','BEVA-CC-DIE1500','Coca Cola Diet 1.5l','Drink','1.5l',6),('it_032','BEVA-7U-REG33','Sprite Regular 33cl','Drink','33cl',3),('it_033','BEVA-7U-REG1500','Sprite Regular 1.5l','Drink','1.5l',6),('it_034','BEVA-7U-DIE33','Sprite Diet 33cl','Drink','33cl',3),('it_035','BEVA-7U-DIE1500','Sprite Diet 1.5l','Drink','1.5l',6),('it_036','BEVA-FAN-REG33','Fanta Regular 33cl','Drink','33cl',3),('it_037','BEVA-FAN-REG1500','Fanta Regular 1.5l','Drink','1.5l',6),('it_038','BEVA-FAN-DIE33','Fanta Diet 33cl','Drink','33cl',3),('it_039','BEVA-FAN-DIE1500','Fanta Diet 1.5l','Drink','1.5l',6),('it_040','BEVA-SAN-REG33','San Pelligrino 33cl','Drink','33cl',2),('it_041','BEVA-SAN-REG1500','San Pelligrino 1.5l','Drink','1.5l',4),('it_042','BEVA-PER-REG33','Perrier 33cl','Drink','33cl',2),('it_043','BEVA-PER-REG1500','Perrier 1.5l','Drink','1.5l',4);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int DEFAULT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `quantity` int NOT NULL,
  `customer_id` int NOT NULL,
  `delivered` varchar(10) NOT NULL,
  `address_id` int NOT NULL,
  `item_id` varchar(50) NOT NULL,
  KEY `FK_Orders_Customers` (`customer_id`),
  KEY `FK_Orders_Address` (`address_id`),
  KEY `FK_Orders_Items` (`item_id`),
  CONSTRAINT `FK_Orders_Address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_Orders_Customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `FK_Orders_Items` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (109,'10/08/2022 13:22',2,60,'Yes',1,'it_001'),(110,'10/08/2022 13:53',1,2,'Yes',2,'it_003'),(111,'10/08/2022 13:32',1,3,'Yes',3,'it_001'),(111,'10/08/2022 13:32',1,3,'Yes',3,'it_003'),(112,'10/08/2022 19:19',3,4,'No',4,'it_008'),(112,'10/08/2022 19:19',5,4,'No',4,'it_019'),(112,'10/08/2022 19:19',5,4,'No',4,'it_020'),(112,'10/08/2022 19:19',1,4,'No',4,'it_023'),(112,'10/08/2022 19:19',1,4,'No',4,'it_040'),(113,'10/08/2022 19:19',1,5,'Yes',5,'it_008'),(113,'10/08/2022 20:45',1,5,'Yes',5,'it_009'),(113,'10/08/2022 20:45',2,5,'Yes',5,'it_024'),(113,'10/08/2022 20:45',1,5,'Yes',5,'it_022'),(113,'10/08/2022 20:45',3,5,'Yes',5,'it_025'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_003'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_002'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_010'),(114,'10/08/2022 12:05',1,1,'Yes',6,'it_018'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_020'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_025'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_026'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_021'),(114,'10/08/2022 12:05',1,6,'Yes',6,'it_029'),(115,'10/08/2022 12:19',2,7,'Yes',7,'it_001'),(115,'10/08/2022 12:19',4,7,'Yes',7,'it_003'),(115,'10/08/2022 12:19',2,7,'Yes',7,'it_005'),(115,'10/08/2022 12:19',3,7,'Yes',7,'it_026'),(115,'10/08/2022 12:19',5,7,'Yes',7,'it_030'),(116,'10/08/2022 13:08',3,8,'Yes',8,'it_004'),(116,'10/08/2022 13:08',3,8,'Yes',8,'it_012'),(116,'10/08/2022 13:08',1,8,'Yes',8,'it_010'),(116,'10/08/2022 13:08',1,8,'Yes',8,'it_020'),(116,'10/08/2022 13:08',5,8,'Yes',8,'it_028'),(117,'10/08/2022 20:24',1,9,'No',9,'it_003'),(117,'10/08/2022 20:24',2,9,'No',9,'it_008'),(117,'10/08/2022 20:24',2,9,'No',9,'it_018'),(117,'10/08/2022 20:24',1,9,'No',9,'it_023'),(118,'10/08/2022 19:48',3,10,'Yes',10,'it_001'),(118,'10/08/2022 19:48',2,10,'Yes',10,'it_003'),(118,'10/08/2022 19:48',4,10,'Yes',10,'it_008'),(118,'10/08/2022 19:48',2,10,'Yes',10,'it_012'),(118,'10/08/2022 19:48',1,10,'Yes',10,'it_013'),(118,'10/08/2022 19:48',1,10,'Yes',10,'it_010'),(118,'10/08/2022 19:48',5,10,'Yes',10,'it_005'),(118,'10/08/2022 19:48',4,10,'Yes',10,'it_017'),(118,'10/08/2022 19:48',4,10,'Yes',10,'it_020'),(118,'10/08/2022 19:48',10,10,'Yes',10,'it_027'),(118,'10/08/2022 19:48',5,10,'Yes',10,'it_026'),(118,'10/08/2022 19:48',10,10,'Yes',10,'it_043'),(119,'10/08/2022 22:05',1,11,'Yes',11,'it_013'),(119,'10/08/2022 22:05',1,11,'Yes',11,'it_004'),(119,'10/08/2022 22:05',1,11,'Yes',11,'it_010'),(119,'10/08/2022 22:05',2,11,'Yes',11,'it_024'),(119,'10/08/2022 22:05',3,11,'Yes',11,'it_028'),(120,'10/08/2022 14:20',1,12,'No',12,'it_033'),(120,'10/08/2022 14:20',1,12,'No',12,'it_036'),(120,'10/08/2022 14:20',1,12,'No',12,'it_026'),(120,'10/08/2022 14:20',2,12,'No',12,'it_022'),(120,'10/08/2022 14:20',1,12,'No',12,'it_019'),(120,'10/08/2022 14:20',1,12,'No',12,'it_018'),(120,'10/08/2022 14:20',1,12,'No',12,'it_004'),(121,'10/08/2022 12:05',2,13,'Yes',13,'it_004'),(121,'10/08/2022 12:05',4,13,'Yes',13,'it_009'),(121,'10/08/2022 12:05',1,13,'Yes',13,'it_019'),(121,'10/08/2022 12:05',1,13,'Yes',13,'it_033'),(122,'10/08/2022 18:34',1,14,'Yes',14,'it_012'),(122,'10/08/2022 18:34',2,14,'Yes',14,'it_020'),(122,'10/08/2022 18:34',1,14,'Yes',14,'it_025'),(122,'10/08/2022 18:34',2,14,'Yes',14,'it_037'),(123,'10/08/2022 18:43',1,15,'Yes',15,'it_007'),(123,'10/08/2022 18:43',5,15,'Yes',15,'it_012'),(123,'10/08/2022 18:43',2,15,'Yes',15,'it_009'),(123,'10/08/2022 18:43',2,15,'Yes',15,'it_019'),(123,'10/08/2022 18:43',12,15,'Yes',15,'it_022'),(123,'10/08/2022 18:43',2,15,'Yes',15,'it_041'),(123,'10/08/2022 18:43',22,15,'Yes',15,'it_036'),(123,'10/08/2022 18:43',2,15,'Yes',15,'it_033'),(124,'10/08/2022 20:01',1,16,'Yes',16,'it_014'),(124,'10/08/2022 20:01',2,16,'Yes',16,'it_019'),(124,'10/08/2022 20:01',2,16,'Yes',16,'it_020'),(125,'10/08/2022 13:08',1,17,'Yes',17,'it_041'),(125,'10/08/2022 13:08',1,17,'Yes',17,'it_008'),(125,'10/08/2022 13:08',2,17,'Yes',17,'it_009'),(125,'10/08/2022 13:08',2,17,'Yes',17,'it_019'),(125,'10/08/2022 13:08',2,17,'Yes',17,'it_018'),(125,'10/08/2022 13:08',3,17,'Yes',17,'it_020'),(125,'10/08/2022 13:08',4,17,'Yes',17,'it_026'),(125,'10/08/2022 13:08',1,17,'Yes',17,'it_030'),(125,'10/08/2022 13:08',2,17,'Yes',17,'it_028'),(126,'10/08/2022 12:46',1,18,'No',18,'it_004'),(126,'10/08/2022 12:46',1,18,'No',18,'it_018'),(126,'10/08/2022 12:46',1,18,'No',18,'it_019'),(126,'10/08/2022 12:46',1,18,'No',18,'it_025'),(126,'10/08/2022 12:46',1,18,'No',18,'it_029'),(127,'10/08/2022 13:35',1,19,'Yes',19,'it_008'),(127,'10/08/2022 13:35',1,19,'Yes',19,'it_019'),(127,'10/08/2022 13:35',1,19,'Yes',19,'it_026'),(127,'10/08/2022 13:35',1,19,'Yes',19,'it_040'),(127,'10/08/2022 13:35',1,19,'Yes',19,'it_042'),(128,'10/08/2022 21:28',1,20,'Yes',20,'it_003'),(128,'10/08/2022 21:28',1,20,'Yes',20,'it_018'),(128,'10/08/2022 21:28',1,20,'Yes',20,'it_036'),(128,'10/08/2022 21:28',1,20,'Yes',20,'it_012'),(129,'10/08/2022 19:42',1,21,'Yes',21,'it_008'),(129,'10/08/2022 19:42',1,21,'Yes',21,'it_015'),(129,'10/08/2022 19:42',1,21,'Yes',21,'it_026'),(129,'10/08/2022 19:42',2,21,'Yes',21,'it_036'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_001'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_003'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_006'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_020'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_021'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_023'),(130,'10/08/2022 19:51',2,22,'Yes',22,'it_040'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_030'),(130,'10/08/2022 19:51',1,22,'Yes',22,'it_032'),(131,'10/08/2022 13:51',1,23,'Yes',23,'it_004'),(131,'10/08/2022 13:51',1,23,'Yes',23,'it_016'),(131,'10/08/2022 13:51',1,23,'Yes',23,'it_018'),(131,'10/08/2022 13:51',1,23,'Yes',23,'it_025'),(131,'10/08/2022 13:51',1,23,'Yes',23,'it_026'),(131,'10/08/2022 13:51',1,23,'Yes',23,'it_037'),(132,'10/08/2022 13:31',1,24,'Yes',24,'it_001'),(132,'10/08/2022 13:31',1,24,'Yes',24,'it_008'),(132,'10/08/2022 13:31',1,24,'Yes',24,'it_012'),(132,'10/08/2022 13:31',1,24,'Yes',24,'it_025'),(132,'10/08/2022 13:31',2,24,'Yes',24,'it_042'),(133,'10/08/2022 20:36',1,25,'Yes',25,'it_003'),(134,'10/08/2022 19:11',2,26,'Yes',26,'it_004'),(134,'10/08/2022 19:11',1,26,'No',26,'it_007'),(134,'10/08/2022 19:11',5,26,'No',26,'it_011'),(134,'10/08/2022 19:11',5,26,'No',26,'it_019'),(134,'10/08/2022 19:11',10,26,'No',26,'it_025'),(134,'10/08/2022 19:11',5,26,'No',26,'it_026'),(134,'10/08/2022 19:11',5,26,'No',26,'it_027'),(134,'10/08/2022 19:11',20,26,'No',26,'it_022'),(134,'10/08/2022 19:11',1,26,'No',26,'it_041'),(135,'10/08/2022 13:29',3,27,'Yes',27,'it_004'),(135,'10/08/2022 13:29',2,27,'Yes',27,'it_019'),(135,'10/08/2022 13:29',3,27,'Yes',27,'it_018'),(135,'10/08/2022 13:29',2,27,'Yes',27,'it_020'),(136,'10/08/2022 18:58',2,28,'Yes',28,'it_029'),(136,'10/08/2022 18:58',2,28,'Yes',28,'it_004'),(136,'10/08/2022 18:58',4,28,'Yes',28,'it_025'),(137,'10/08/2022 13:14',1,29,'No',29,'it_003'),(137,'10/08/2022 13:14',1,29,'No',29,'it_011'),(137,'10/08/2022 13:14',1,29,'No',29,'it_017'),(137,'10/08/2022 13:14',2,29,'No',29,'it_036'),(138,'10/08/2022 13:12',1,30,'Yes',30,'it_019'),(138,'10/08/2022 13:12',2,30,'Yes',30,'it_018'),(138,'10/08/2022 13:12',1,30,'Yes',30,'it_025'),(138,'10/08/2022 13:12',1,30,'Yes',30,'it_017'),(139,'10/08/2022 19:19',1,31,'Yes',31,'it_001'),(139,'10/08/2022 19:19',1,31,'Yes',31,'it_003'),(139,'10/08/2022 19:19',1,31,'Yes',31,'it_008'),(139,'10/08/2022 19:19',1,31,'Yes',31,'it_010'),(139,'10/08/2022 19:19',1,31,'Yes',31,'it_014'),(139,'10/08/2022 19:19',1,31,'Yes',31,'it_017'),(139,'10/08/2022 19:19',6,31,'Yes',31,'it_018'),(139,'10/08/2022 19:19',9,31,'Yes',31,'it_019'),(139,'10/08/2022 19:19',1,31,'Yes',31,'it_020'),(140,'10/08/2022 13:32',2,32,'Yes',32,'it_018'),(140,'10/08/2022 13:32',1,32,'Yes',32,'it_016'),(140,'10/08/2022 13:32',1,32,'Yes',32,'it_025'),(140,'10/08/2022 13:32',1,32,'Yes',32,'it_029'),(141,'10/08/2022 21:20',1,33,'No',33,'it_026'),(141,'10/08/2022 21:20',1,33,'No',33,'it_025'),(141,'10/08/2022 21:20',1,33,'No',33,'it_006'),(141,'10/08/2022 21:20',1,33,'No',33,'it_009'),(141,'10/08/2022 21:20',1,33,'No',33,'it_008'),(142,'10/08/2022 22:02',3,34,'Yes',34,'it_001'),(142,'10/08/2022 22:02',3,34,'Yes',34,'it_019'),(142,'10/08/2022 22:02',3,34,'Yes',34,'it_023'),(142,'10/08/2022 22:02',3,34,'Yes',34,'it_033'),(143,'10/08/2022 19:02',1,35,'No',35,'it_001'),(143,'10/08/2022 19:02',1,35,'No',35,'it_003'),(143,'10/08/2022 19:02',1,35,'No',35,'it_019'),(143,'10/08/2022 19:02',1,35,'No',35,'it_026'),(144,'10/08/2022 19:44',1,36,'Yes',36,'it_004'),(144,'10/08/2022 19:44',1,36,'Yes',36,'it_007'),(144,'10/08/2022 19:44',1,36,'Yes',36,'it_027'),(144,'10/08/2022 19:44',1,36,'Yes',36,'it_021'),(144,'10/08/2022 19:44',1,36,'Yes',36,'it_032'),(144,'10/08/2022 19:44',1,36,'Yes',36,'it_028'),(145,'10/08/2022 20:04',1,37,'Yes',37,'it_004'),(145,'10/08/2022 20:04',2,37,'Yes',37,'it_013'),(145,'10/08/2022 20:04',1,37,'Yes',37,'it_006'),(145,'10/08/2022 20:04',3,37,'Yes',37,'it_018'),(145,'10/08/2022 20:04',2,37,'Yes',37,'it_020'),(145,'10/08/2022 20:04',2,37,'Yes',37,'it_027'),(145,'10/08/2022 20:04',1,37,'Yes',37,'it_041'),(146,'10/08/2022 20:34',1,38,'Yes',38,'it_005'),(146,'10/08/2022 20:34',1,38,'Yes',38,'it_007'),(146,'10/08/2022 20:34',1,38,'Yes',38,'it_004'),(146,'10/08/2022 20:34',2,38,'Yes',38,'it_026'),(146,'10/08/2022 20:34',1,38,'Yes',38,'it_034'),(146,'10/08/2022 20:34',1,38,'Yes',38,'it_030'),(147,'10/08/2022 13:24',1,39,'Yes',39,'it_039'),(147,'10/08/2022 13:24',2,39,'Yes',39,'it_025'),(147,'10/08/2022 13:24',2,39,'Yes',39,'it_009'),(148,'10/08/2022 19:44',2,40,'Yes',40,'it_004'),(148,'10/08/2022 19:44',1,40,'Yes',40,'it_001'),(148,'10/08/2022 19:44',3,40,'Yes',40,'it_003'),(149,'10/08/2022 21:02',1,41,'No',41,'it_012'),(149,'10/08/2022 21:02',1,41,'No',41,'it_004'),(149,'10/08/2022 21:02',1,41,'No',41,'it_020'),(149,'10/08/2022 21:02',1,41,'No',41,'it_017'),(149,'10/08/2022 21:02',1,41,'No',41,'it_026'),(149,'10/08/2022 21:02',1,41,'No',41,'it_025'),(149,'10/08/2022 21:02',1,41,'No',41,'it_039'),(150,'10/08/2022 22:29',2,42,'Yes',42,'it_003'),(150,'10/08/2022 22:29',1,42,'Yes',42,'it_005'),(150,'10/08/2022 22:29',2,42,'Yes',42,'it_017'),(150,'10/08/2022 22:29',1,42,'Yes',42,'it_020'),(150,'10/08/2022 22:29',1,42,'Yes',42,'it_025'),(150,'10/08/2022 22:29',1,42,'Yes',42,'it_022'),(150,'10/08/2022 22:29',1,42,'Yes',42,'it_041'),(151,'10/08/2022 13:38',4,43,'No',43,'it_025'),(151,'10/08/2022 13:38',2,43,'No',43,'it_018'),(151,'10/08/2022 13:38',1,43,'No',43,'it_004'),(151,'10/08/2022 13:38',1,43,'No',43,'it_001'),(151,'10/08/2022 13:38',1,43,'No',43,'it_007'),(151,'10/08/2022 13:38',2,43,'No',43,'it_011'),(151,'10/08/2022 13:38',3,43,'No',43,'it_010'),(151,'10/08/2022 13:38',1,43,'No',43,'it_013'),(151,'10/08/2022 13:38',2,43,'No',43,'it_019'),(151,'10/08/2022 13:38',3,43,'No',43,'it_028'),(151,'10/08/2022 13:38',3,43,'Yes',43,'it_033'),(152,'10/08/2022 13:04',1,44,'Yes',44,'it_003'),(152,'10/08/2022 13:04',1,44,'Yes',44,'it_007'),(152,'10/08/2022 13:04',1,44,'Yes',44,'it_019'),(152,'10/08/2022 13:04',1,44,'Yes',44,'it_025'),(152,'10/08/2022 13:04',1,44,'Yes',44,'it_032'),(152,'10/08/2022 13:04',1,44,'Yes',44,'it_029'),(153,'10/08/2022 13:43',1,45,'Yes',45,'it_002'),(153,'10/08/2022 13:43',1,45,'Yes',45,'it_016'),(153,'10/08/2022 13:43',1,45,'Yes',45,'it_020'),(153,'10/08/2022 13:43',1,45,'Yes',45,'it_021'),(153,'10/08/2022 13:43',1,45,'Yes',45,'it_029'),(153,'10/08/2022 13:43',1,45,'Yes',45,'it_037'),(154,'10/08/2022 22:13',1,46,'Yes',46,'it_001'),(154,'10/08/2022 22:13',1,46,'Yes',46,'it_009'),(155,'10/08/2022 21:43',1,47,'Yes',47,'it_012'),(155,'10/08/2022 21:43',1,47,'Yes',47,'it_019'),(155,'10/08/2022 21:43',2,47,'Yes',47,'it_020'),(155,'10/08/2022 21:43',1,47,'Yes',47,'it_037'),(156,'10/08/2022 22:29',20,48,'Yes',48,'it_008'),(156,'10/08/2022 22:29',1,48,'Yes',48,'it_002'),(156,'10/08/2022 22:29',8,48,'Yes',48,'it_003'),(156,'10/08/2022 22:29',5,48,'Yes',48,'it_007'),(156,'10/08/2022 22:29',1,48,'Yes',48,'it_010'),(156,'10/08/2022 22:29',1,48,'Yes',48,'it_013'),(157,'10/08/2022 22:47',1,49,'Yes',49,'it_008'),(157,'10/08/2022 22:47',1,49,'Yes',49,'it_009'),(157,'10/08/2022 22:47',2,49,'Yes',49,'it_020'),(157,'10/08/2022 22:47',1,49,'Yes',49,'it_026'),(157,'10/08/2022 22:47',1,49,'Yes',49,'it_024'),(157,'10/08/2022 22:47',2,49,'Yes',49,'it_023'),(158,'10/08/2022 12:06',1,50,'Yes',50,'it_011'),(158,'10/08/2022 12:06',1,50,'Yes',50,'it_016'),(158,'10/08/2022 12:06',1,50,'Yes',50,'it_020'),(158,'10/08/2022 12:06',2,50,'Yes',50,'it_025'),(159,'10/08/2022 13:40',1,51,'Yes',51,'it_002'),(159,'10/08/2022 13:40',1,51,'Yes',51,'it_008'),(159,'10/08/2022 13:40',2,51,'Yes',51,'it_012'),(159,'10/08/2022 13:40',2,51,'No',51,'it_016'),(159,'10/08/2022 13:40',1,51,'No',51,'it_006'),(159,'10/08/2022 13:40',2,51,'No',51,'it_017'),(159,'10/08/2022 13:40',2,51,'No',51,'it_018'),(159,'10/08/2022 13:40',2,51,'No',51,'it_019'),(159,'10/08/2022 13:40',2,51,'No',51,'it_020'),(159,'10/08/2022 13:40',1,51,'No',51,'it_022'),(159,'10/08/2022 13:40',1,51,'No',51,'it_024'),(159,'10/08/2022 13:40',1,51,'No',51,'it_023'),(159,'10/08/2022 13:40',1,51,'No',51,'it_021'),(159,'10/08/2022 13:40',5,51,'No',51,'it_025'),(159,'10/08/2022 13:40',5,51,'Yes',51,'it_026'),(159,'10/08/2022 13:40',1,51,'Yes',51,'it_027'),(159,'10/08/2022 13:40',1,51,'Yes',51,'it_037'),(160,'10/08/2022 20:15',2,52,'Yes',52,'it_004'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_011'),(160,'10/08/2022 20:15',4,52,'Yes',52,'it_006'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_020'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_019'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_018'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_017'),(160,'10/08/2022 20:15',3,52,'Yes',52,'it_021'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_025'),(160,'10/08/2022 20:15',3,52,'Yes',52,'it_041'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_036'),(160,'10/08/2022 20:15',1,52,'Yes',52,'it_033'),(161,'10/08/2022 21:42',10,53,'Yes',53,'it_007'),(162,'10/08/2022 12:51',1,54,'Yes',54,'it_006'),(162,'10/08/2022 12:51',1,54,'Yes',54,'it_008'),(162,'10/08/2022 12:51',1,54,'Yes',54,'it_017'),(163,'10/08/2022 13:00',1,55,'Yes',55,'it_006'),(163,'10/08/2022 13:00',1,55,'Yes',55,'it_002'),(163,'10/08/2022 13:00',1,55,'Yes',55,'it_017'),(164,'10/08/2022 21:01',1,56,'Yes',56,'it_002'),(164,'10/08/2022 21:01',1,56,'Yes',56,'it_004'),(164,'10/08/2022 21:01',1,56,'Yes',56,'it_012'),(164,'10/08/2022 21:01',2,57,'Yes',56,'it_019'),(164,'10/08/2022 21:01',2,57,'Yes',56,'it_020'),(164,'10/08/2022 21:01',1,57,'Yes',56,'it_026'),(164,'10/08/2022 21:01',2,57,'Yes',56,'it_029'),(165,'10/08/2022 19:19',2,58,'No',57,'it_017'),(165,'10/08/2022 19:19',1,58,'No',57,'it_004'),(165,'10/08/2022 19:19',1,58,'No',57,'it_002'),(165,'10/08/2022 19:19',1,58,'No',57,'it_026'),(165,'10/08/2022 19:19',1,59,'No',57,'it_031'),(166,'10/08/2022 14:22',1,59,'Yes',58,'it_007'),(166,'10/08/2022 14:22',1,60,'Yes',58,'it_019'),(166,'10/08/2022 14:22',1,60,'Yes',58,'it_025'),(166,'10/08/2022 14:22',1,60,'Yes',58,'it_029');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `row_id` int NOT NULL,
  `recipe_id` varchar(50) NOT NULL,
  `ingre_id` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  UNIQUE KEY `row_id` (`row_id`),
  UNIQUE KEY `ingre_id` (`ingre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'PIZZ-MARG-R','ING001',250),(2,'PIZZ-MARG-R','ING002',80),(3,'PIZZ-MARG-R','ING003',170),(4,'PIZZ-MARG-R','ING004',5),(12,'PIZZ-DIAV-R','ING005',50),(13,'PIZZ-DIAV-R','ING006',10),(22,'PIZZ-PARM-R','ING007',120),(23,'PIZZ-PARM-R','ING008',170),(33,'PIZZ-QUAT-R','ING009',150),(34,'PIZZ-QUAT-R','ING010',150),(44,'PIZZ-NAPO-R','ING011',100),(45,'PIZZ-NAPO-R','ING012',5),(54,'PIZZ-PEPP-R','ING013',200),(62,'PIZZ-HAWA-R','ING017',130),(63,'PIZZ-HAWA-R','ING018',100),(72,'PIZZ-SEAF-R','ING014',150),(73,'PIZZ-SEAF-R','ING015',150),(74,'PIZZ-SEAF-R','ING016',150),(82,'SIDE-GARL-R','ING019',15),(83,'SIDE-CHIC-R','ING020',120),(85,'SIDE-CAES-R','ING021',120),(86,'SIDE-CAES-R','ING022',50),(87,'SIDE-CAES-R','ING023',100),(88,'SIDE-CAES-R','ING024',20),(89,'DESS-ICE-CHOC','ING025',100),(90,'DESS-ICE-VANI','ING026',100),(91,'DESS-ICE-STRA','ING027',100),(92,'DESS-ICE-PIST','ING028',100),(93,'DESS-CHOC-BROW','ING029',75),(94,'DESS-BANO-PIE','ING030',120),(95,'DESS-FRUI-SALA','ING031',150),(96,'BEVA-CC-REG33','ING032',1),(97,'BEVA-CC-REG1500','ING033',1),(98,'BEVA-CC-DIE33','ING034',1),(99,'BEVA-CC-DIE1500','ING035',1),(100,'BEVA-7U-REG33','ING036',1),(101,'BEVA-7U-REG1500','ING037',1),(102,'BEVA-7U-DIE33','ING038',1),(103,'BEVA-7U-DIE1500','ING039',1),(104,'BEVA-FAN-REG33','ING040',1),(105,'BEVA-FAN-REG1500','ING041',1),(106,'BEVA-FAN-DIE33','ING042',1),(107,'BEVA-FAN-DIE1500','ING043',1),(108,'BEVA-SAN-REG33','ING044',1),(109,'BEVA-SAN-REG1500','ING045',1),(110,'BEVA-PER-REG33','ING046',1),(111,'BEVA-PER-REG1500','ING047',1);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `shift_id` varchar(20) NOT NULL,
  `day_of_week` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`shift_id`),
  UNIQUE KEY `shift_id` (`shift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES ('sh0001','Monday','10:30:00','14:30:00'),('sh0002','Monday','18:30:00','23:00:00'),('sh0003','Tuesday','10:30:00','14:30:00'),('sh0004','Tuesday','18:30:00','23:00:00'),('sh0005','Wednesday','10:30:00','14:30:00'),('sh0006','Wednesday','18:30:00','23:00:00'),('sh0007','Thursday','10:30:00','14:30:00'),('sh0008','Thursday','18:30:00','23:00:00'),('sh0009','Friday','10:30:00','14:30:00'),('sh0010','Friday','18:30:00','23:00:00'),('sh0011','Saturday','10:30:00','14:30:00'),('sh0012','Saturday','18:30:00','23:00:00'),('sh0013','Sunday','10:30:00','14:30:00'),('sh0014','Sunday','18:30:00','23:00:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `hourly_rate` int NOT NULL,
  UNIQUE KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('st0001','Mindy','Sloan','Chef',35),('st0002','Luqman','Cantu','Head chef',50),('st0003','Seren','Lindsey','Chef',35),('st0004','Arran','Hodgson','Head chef',50),('st0005','Talha','Portillo','Chef',35),('st0006','Sana','Black','Head chef',50),('st0007','Zachery','Robins','Chef',35),('st0008','Faraz','Peck','Head chef',50),('st0009','Lilly-Rose','Vaughn','Delivery rider',17),('st0010','Desiree','Gardner','Delivery rider',17),('st0011','Ivan','English','Delivery rider',17),('st0012','Johnathon','Bradford','Delivery rider',17),('st0013','Matilda','Mccarty','Delivery rider',17),('st0014','Areeb','Vasquez','Delivery rider',17),('st0015','Amiyah','Lambert','Delivery rider',17),('st0016','Amrit','Greaves','Delivery rider',17);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-03 14:51:26
