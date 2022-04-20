-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.28
-- created by es_pisarchuk
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catalogs` (
                            `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `id` (`id`),
                            UNIQUE KEY `unique_name` (`name`(10))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разделы интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
INSERT INTO `catalogs` VALUES (1,'Процессоры'),(2,'Материнские платы'),(3,'Видеокарты'),(4,'Жесткие диски'),(5,'Оперативная память');
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discounts` (
                             `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                             `user_id` int unsigned DEFAULT NULL,
                             `product_id` int unsigned DEFAULT NULL,
                             `discount` float unsigned DEFAULT NULL COMMENT 'Величина скидки от 0.0 до 1.0',
                             `started_at` datetime DEFAULT NULL,
                             `finished_at` datetime DEFAULT NULL,
                             `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
                             `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `id` (`id`),
                             KEY `index_of_user_id` (`user_id`),
                             KEY `index_of_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Скидки';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,1,2,5,'2022-04-20 00:00:00','2022-05-20 22:00:00','2022-04-19 19:07:42','2022-04-19 19:07:42'),(2,2,1,3,'2022-04-20 00:00:00','2022-05-20 22:00:00','2022-04-19 19:07:42','2022-04-19 19:07:42'),(3,2,1,3,'2022-04-20 00:00:00','2022-05-20 22:00:00','2022-04-19 19:07:42','2022-04-19 19:07:42');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
                          `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                          `user_id` int unsigned DEFAULT NULL,
                          `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
                          `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `id` (`id`),
                          KEY `index_of_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Заказы';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2022-04-14 19:09:32','2022-04-14 19:10:14'),(2,1,'2022-04-14 22:09:40','2022-04-14 22:10:40'),(3,1,'2022-04-15 10:03:46','2022-04-15 10:15:46'),(4,2,'2022-04-15 10:08:46','2022-04-15 10:13:46'),(5,2,'2022-04-15 10:03:46','2022-04-15 10:33:46'),(6,3,'2022-04-16 14:10:04','2022-04-16 14:10:13'),(7,4,'2022-04-16 16:20:34','2022-04-16 16:22:13'),(8,5,'2022-04-16 17:17:17','2022-04-16 17:17:42'),(9,10,'2022-04-19 12:30:40','2022-04-20 19:22:00'),(10,11,'2022-04-20 17:10:50','2022-04-20 19:22:00'),(11,6,'2022-04-20 19:21:38','2022-04-20 19:21:38'),(12,7,'2022-04-20 19:21:38','2022-04-20 19:21:38'),(13,8,'2022-04-20 19:21:38','2022-04-20 19:21:38'),(14,8,'2022-04-20 19:21:38','2022-04-20 19:21:38'),(15,9,'2022-04-20 19:21:38','2022-04-20 19:21:38');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_products` (
                                   `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                                   `order_id` int unsigned DEFAULT NULL,
                                   `product_id` int unsigned DEFAULT NULL,
                                   `total` int unsigned DEFAULT '1' COMMENT 'Количество заказанных товарных позиций',
                                   `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                   `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                   PRIMARY KEY (`id`),
                                   UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Состав заказа';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
INSERT INTO `orders_products` VALUES (1,1,1,1,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(2,2,1,2,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(3,3,3,1,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(4,4,5,1,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(5,5,2,1,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(6,6,4,2,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(7,7,5,3,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(8,8,2,1,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(9,9,7,2,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(10,10,6,3,'2022-04-20 19:14:09','2022-04-20 19:14:09'),(11,11,2,1,'2022-04-20 19:22:54','2022-04-20 19:22:54'),(12,12,1,1,'2022-04-20 19:22:54','2022-04-20 19:22:54'),(13,13,7,1,'2022-04-20 19:22:54','2022-04-20 19:22:54'),(14,14,6,3,'2022-04-20 19:22:54','2022-04-20 19:22:54'),(15,15,3,2,'2022-04-20 19:22:54','2022-04-20 19:22:54');
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
                            `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                            `name` varchar(255) DEFAULT NULL COMMENT 'Название',
                            `description` text COMMENT 'Описание',
                            `price` decimal(11,2) DEFAULT NULL COMMENT 'Цена',
                            `catalog_id` int unsigned DEFAULT NULL,
                            `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
                            `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `id` (`id`),
                            KEY `index_of_catalog_id` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Товарные позиции';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Intel Core i3-8100','Процессор для настольных персональных компьютеров, основанных на платформе Intel.',7890.00,1,'2022-04-20 19:00:43','2022-04-20 19:00:43'),(2,'Intel Core i5-7400','Процессор для настольных персональных компьютеров, основанных на платформе Intel.',12700.00,1,'2022-04-20 19:00:43','2022-04-20 19:00:43'),(3,'AMD FX-8320E','Процессор для настольных персональных компьютеров, основанных на платформе AMD.',4780.00,1,'2022-04-20 19:00:43','2022-04-20 19:00:43'),(4,'AMD FX-8320','Процессор для настольных персональных компьютеров, основанных на платформе AMD.',7120.00,1,'2022-04-20 19:00:43','2022-04-20 19:00:43'),(5,'ASUS ROG MAXIMUS X HERO','Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',19310.00,2,'2022-04-20 19:00:43','2022-04-20 19:00:43'),(6,'Gigabyte H310M S2H','Материнская плата Gigabyte H310M S2H, H310, Socket 1151-V2, DDR4, mATX',4790.00,2,'2022-04-20 19:00:43','2022-04-20 19:00:43'),(7,'MSI B250M GAMING PRO','Материнская плата MSI B250M GAMING PRO, B250, Socket 1151, DDR4, mATX',5060.00,2,'2022-04-20 19:00:43','2022-04-20 19:00:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubrics`
--

DROP TABLE IF EXISTS `rubrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubrics` (
                           `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                           `name` varchar(255) DEFAULT NULL COMMENT 'Название раздела',
                           PRIMARY KEY (`id`),
                           UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Разделы интернет-магазина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubrics`
--

LOCK TABLES `rubrics` WRITE;
/*!40000 ALTER TABLE `rubrics` DISABLE KEYS */;
INSERT INTO `rubrics` VALUES (1,'Видеокарты'),(2,'Память');
/*!40000 ALTER TABLE `rubrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses`
--

DROP TABLE IF EXISTS `storehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses` (
                               `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                               `name` varchar(255) DEFAULT NULL COMMENT 'Название',
                               `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
                               `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Склады';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses`
--

LOCK TABLES `storehouses` WRITE;
/*!40000 ALTER TABLE `storehouses` DISABLE KEYS */;
INSERT INTO `storehouses` VALUES (1,'counter','2022-04-20 19:17:01','2022-04-20 19:17:01'),(2,'warehouse 1','2022-04-20 19:17:01','2022-04-20 19:17:01'),(3,'warehouse 2','2022-04-20 19:17:01','2022-04-20 19:17:06');
/*!40000 ALTER TABLE `storehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouses_products`
--

DROP TABLE IF EXISTS `storehouses_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouses_products` (
                                        `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                                        `storehouse_id` int unsigned DEFAULT NULL,
                                        `product_id` int unsigned DEFAULT NULL,
                                        `value` int unsigned DEFAULT NULL COMMENT 'Запас товарной позиции на складе',
                                        `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
                                        `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                        PRIMARY KEY (`id`),
                                        UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Запасы на складе';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouses_products`
--

LOCK TABLES `storehouses_products` WRITE;
/*!40000 ALTER TABLE `storehouses_products` DISABLE KEYS */;
INSERT INTO `storehouses_products` VALUES (1,1,1,1,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(2,1,2,1,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(3,1,3,1,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(4,1,4,1,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(5,1,5,1,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(6,1,6,1,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(7,1,7,1,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(8,2,1,6,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(9,2,2,12,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(10,2,3,7,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(11,3,5,2,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(12,3,6,3,'2022-04-20 19:19:03','2022-04-20 19:19:03'),(13,3,7,1,'2022-04-20 19:19:03','2022-04-20 19:19:03');
/*!40000 ALTER TABLE `storehouses_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
                         `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                         `name` varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
                         `birthday_at` date DEFAULT NULL COMMENT 'Дата рождения',
                         `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
                         `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Покупатели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Геннадий','1990-10-05','2022-04-20 18:59:36','2022-04-20 18:59:36'),(2,'Наталья','1984-11-12','2022-04-20 18:59:36','2022-04-20 18:59:36'),(3,'Александр','1985-05-20','2022-04-20 18:59:36','2022-04-20 18:59:36'),(4,'Сергей','1988-02-14','2022-04-20 18:59:36','2022-04-20 18:59:36'),(5,'Иван','1998-01-12','2022-04-20 18:59:36','2022-04-20 18:59:36'),(6,'Мария','1992-08-29','2022-04-20 18:59:36','2022-04-20 18:59:36'),(7,'Женя','1990-06-20','2022-04-20 19:20:43','2022-04-20 19:20:43'),(8,'Лена','1998-08-12','2022-04-20 19:20:43','2022-04-20 19:20:43'),(9,'Андрей','1984-06-07','2022-04-20 19:20:43','2022-04-20 19:20:43'),(10,'Миша','1988-10-12','2022-04-20 19:20:43','2022-04-20 19:20:43'),(11,'Дима','1972-09-12','2022-04-20 19:20:43','2022-04-20 19:20:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-20 19:31:08
