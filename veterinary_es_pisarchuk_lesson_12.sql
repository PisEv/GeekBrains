-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veterinary
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `client`
--

DROP DATABASE IF EXISTS veterinary;
CREATE DATABASE veterinary;
USE veterinary;

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
                          `id` int NOT NULL AUTO_INCREMENT,
                          `surname` text NOT NULL COMMENT 'Фамилия',
                          `Name` text NOT NULL COMMENT 'Имя',
                          `patronymic` text COMMENT 'Отчество',
                          `phone` text COMMENT 'Номер телефона',
                          `email` text COMMENT 'почта',
                          `address` text COMMENT 'Адрес',
                          `Примечание` text,
                          PRIMARY KEY (`id`),
                          UNIQUE KEY `client_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Клиенты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Самойлова','Виктория','Алексеевна','8(495)675-61-03','pissegrupreugou-2223@yopmail.com','469508, Тверская область, город Павловский Посад, бульвар Сталина, 47',NULL),(2,'Дмитриева','Аглая','Богдановна','8(495)626-71-03','xeuyepuwayeu-7627@yopmail.com','951944, Московская область, город Пушкино, въезд Косиора, 79',NULL),(3,'Гришина','Алёна','Давидовна','8(495)134-45-52','keyausolleuzi-5200@yopmail.com','361367, Тюменская область, город Клин, пр. Гагарина, 31','КОД ДОМОФОНА: 31'),(4,'Малахов','Егор','Иванович','8(495)651-46-23','koddappapreissau-4420@yopmail.com','994598, Липецкая область, город Коломна, наб. Будапештсткая, 17',NULL),(5,'Маркова','Ева','Ильинична','8(495)989-08-25','tutrussannamau-5658@yopmail.com','581673, Свердловская область, город Домодедово, бульвар Космонавтов, 51',NULL),(6,'Островский','Андрей','Гордеевич','8(495)522-63-57','safroteummeja-5341@yopmail.com','531986, Саратовская область, город Одинцово, проезд Ломоносова, 98',NULL),(7,'Филиппова','Валерия','Михайловна','8(495)928-47-11','keumaunnagreuxeu-8734@yopmail.com','738166, Читинская область, город Наро-Фоминск, ул. Гоголя, 16',NULL),(8,'Федоров','Михаил','Андреевич','8(495)639-35-36','soxucrefrasso-2458@yopmail.com','900527, Ивановская область, город Москва, наб. Домодедовская, 83',NULL),(9,'Воронина','Милана','Львовна','8(495)256-18-26','magruwajupri-6663@yopmail.com','412244, Новосибирская область, город Чехов, пер. Чехова, 77',NULL),(10,'Федосеева','Яна','Арсентьевна','8(495)480-84-82','merisseuvaxou-9271@yopmail.com','524281, Смоленская область, город Дмитров, шоссе Ладыгина, 02',NULL);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_employees`
--

DROP TABLE IF EXISTS `medical_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_employees` (
                                     `id` int NOT NULL AUTO_INCREMENT,
                                     `surname` text NOT NULL COMMENT 'Фамилия',
                                     `name` text NOT NULL COMMENT 'Имя',
                                     `patronymic` text COMMENT 'Отчество',
                                     `phone` text,
                                     `post_id` int DEFAULT NULL COMMENT 'Должность',
                                     PRIMARY KEY (`id`),
                                     UNIQUE KEY `medical_employees_id_uindex` (`id`),
                                     KEY `medical_employees_posts_id_fk` (`post_id`),
                                     CONSTRAINT `medical_employees_posts_id_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_employees`
--

LOCK TABLES `medical_employees` WRITE;
/*!40000 ALTER TABLE `medical_employees` DISABLE KEYS */;
INSERT INTO `medical_employees` VALUES (1,'Алексеев','Андрей','Андреевич','89515452145',1),(2,'Арсеньева','Алевтина','Артуровна','89485147851',3),(3,'Собакин','Сергей','Сократович','89154567894',5),(4,'Кошкин','Константин','Кириллович','89564587412',5),(5,'Черепашкина','Чулпан','Чабановна','89265587469',5),(6,'Лошадина','Лаура','Лаврентьевна','89994584478',11),(7,'Рыбкин','Ренат','Родионович','89544781236',10),(8,'Уборщик','Ульяна','Ульриховна','84574589547',4),(9,'Козлов','Евгений','Константинович','89264785486',5),(10,'Баранов','Борис','Бахрамович','89564587484',5);
/*!40000 ALTER TABLE `medical_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pets` (
                        `id` int NOT NULL AUTO_INCREMENT,
                        `nickname` text,
                        `species_id` int NOT NULL,
                        `client_id` int NOT NULL,
                        `special_marks` text,
                        `chip_code` text,
                        PRIMARY KEY (`id`),
                        UNIQUE KEY `pets_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Домашние_животные';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Кнопа',2,1,NULL,NULL),(2,'Шарик',1,2,'Агрессивный, возможно нападение. Работать только в наморднике','154785412569547'),(3,'Чипа',3,3,NULL,NULL),(4,'Чапа',3,3,NULL,NULL),(5,'Кот-обормот',2,5,NULL,NULL),(6,'Кеша',5,6,'Было повреждено правое крыло, брать осторожно',''),(7,'Ка',9,8,NULL,NULL),(8,'Хрустик',10,2,NULL,NULL),(9,'Муся',2,9,NULL,'754415978521456'),(10,'Белка',1,10,NULL,NULL);
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `Name` text NOT NULL COMMENT 'Наименование',
                         `Description` text COMMENT 'Описание',
                         `Date_start` datetime DEFAULT NULL,
                         `Date_stop` datetime DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `posts_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Должности';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Управляющий',NULL,'2020-05-01 19:34:28',NULL),(2,'Заместитель управляющего',NULL,'2020-05-01 19:34:28','2021-06-01 19:34:48'),(3,'Бухгалтер',NULL,'2020-05-01 19:34:28',NULL),(4,'Уборщица',NULL,'2020-05-01 19:34:28',NULL),(5,'Ветеринар',NULL,'2020-05-01 19:34:28',NULL),(6,'Грумер','Специалист по уходу за животным','2020-05-01 19:34:28',NULL),(7,'Зоопсихолог','Психолог, специализирующийся на поведении животных','2020-05-01 19:34:28',NULL),(8,'Хендлер','Специалист по показу собак на выставках','2020-05-01 19:34:28','2021-06-01 19:34:48'),(9,'Фелинолог','Специалист, который досконально разбирается в анатомии и физиологии домашних кошек, знает все особенности пород и их селекции, а также разводит породистых кошек и ухаживает за ними','2020-05-01 19:34:28','2021-06-01 19:34:48'),(10,'Аквариумист','Специалист, осуществляющий профессиональный уход за рыбами, другими обитателями мира за стеклом и растениями.','2020-05-01 19:34:28','2021-06-01 19:34:48'),(11,'Ипполог','Специалист, который изучает лошадей (анатомию, биологию размножения, физиологию, особенности породообразования, характер, повадки и так далее)','2020-05-01 19:34:28','2021-06-01 19:34:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
                           `id` int NOT NULL AUTO_INCREMENT,
                           `Name` text,
                           `Description` text,
                           PRIMARY KEY (`id`),
                           UNIQUE KEY `species_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='вид/порода';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'Собака',NULL),(2,'Кошка',NULL),(3,'Черепашка',NULL),(4,'Лошадь',NULL),(5,'Попугай',NULL),(6,'Козёл','Домашняя коза (Capra hircus)'),(7,'Баран',NULL),(8,'Варан',NULL),(9,'Змея',NULL),(10,'Хомячок',NULL);
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `pets_id` int DEFAULT NULL,
                             `diagnosis` text,
                             `vaccines_id` int DEFAULT NULL,
                             `start_date` datetime DEFAULT NULL,
                             `end_date` datetime DEFAULT NULL,
                             `medical_employees_id` int NOT NULL,
                             PRIMARY KEY (`id`),
                             UNIQUE KEY `treatment_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Назначенное лечение';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (1,2,'Зуд',3,'2022-01-01 20:59:59','2022-01-10 21:00:05',3),(2,2,'Блохи, клещи',8,'2022-02-03 21:00:13','2022-02-13 21:00:20',3),(3,5,'Переедание',4,'2022-03-06 21:00:27','2022-03-06 21:00:33',4),(4,9,'Недоедание',5,'2022-04-07 21:00:41','2022-05-07 21:00:51',4),(5,9,'Пересып',3,'2022-04-07 21:01:06','2022-04-07 21:01:06',4),(6,10,'Недосып',2,'2022-04-09 21:01:23','2022-04-09 21:01:23',3),(7,6,'Повреждение правого крылышка',4,'2022-04-09 21:01:23','2022-04-09 21:01:23',1),(8,6,'Блохи',5,'2022-04-11 21:01:48','2022-04-11 21:01:48',1),(9,10,'Повторное наблюдение, признаков недосыпа нет',6,'2022-04-11 21:01:48','2022-04-11 21:01:48',3),(10,10,'Переедание',1,'2022-04-11 21:01:48','2022-04-11 21:01:48',3);
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccines`
--

DROP TABLE IF EXISTS `vaccines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vaccines` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `medication` text NOT NULL COMMENT 'Препарат',
                            `manufacturer` text COMMENT 'Производитель',
                            `view` text,
                            `description` text,
                            PRIMARY KEY (`id`),
                            UNIQUE KEY `vaccines_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Вакцина';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaccines`
--

LOCK TABLES `vaccines` WRITE;
/*!40000 ALTER TABLE `vaccines` DISABLE KEYS */;
INSERT INTO `vaccines` VALUES (1,'Мелоксидил','Ceva','Суспензия',', 32 мл'),(2,'DIRONET','АВЗ','Суспензия','Диронет суспензия антигельминтик для собак,10 мл'),(3,'Vetoquinol','АпКард','Таблетки','АпКард диуретическое средство для купирования клинических признаков, связанных с застойной сердечной недостаточностью у собак, включая отеки и выпоты АпКард содержит в качестве действующего вещества торасемид 0,75 мг (в одной таблетке)'),(4,'Апоквел','Zoetis','Таблетки','Препарат для снятия зуда у собак Апоквел 16 мг 20 таблеток'),(5,'Кардалис','CEVA','Таблетки','препарат для собак для лечения общей сердечной недостаточности уп. 30 таблеток '),(6,'Лакто-Стоп','API-SAN','Раствор','Лакто-Стоп назначают собакам для лечения ложной щенности и подавления лактации по клиническим показаниям'),(7,'Ветмедин S ',NULL,'Таблетки','пимобендан, входящий в состав препарата Ветмедин, обладает положительным инотропным действием и выраженным вазодилатирующим эффектом. '),(8,'Бравекто','MSD Animal Health','Таблетки','таблетки от блох и клещей для крупных пород собак'),(9,'Кардалис','CEVA','Таблетки','Кардалис – комбинированный препарат (антагонист альдостерона + ингибитор ангиотензин превращающего фермента (АПФ).'),(10,'Дексафорт',NULL,'Суспензия для инъекций','для лечения воспалительных процессов у животных 50 мл');
/*!40000 ALTER TABLE `vaccines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-09 11:13:20
