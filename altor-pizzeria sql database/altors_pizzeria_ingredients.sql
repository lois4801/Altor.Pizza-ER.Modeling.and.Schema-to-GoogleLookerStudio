CREATE DATABASE  IF NOT EXISTS `altors_pizzeria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `altors_pizzeria`;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-03 14:34:20
