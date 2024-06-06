-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: quiz_app
-- ------------------------------------------------------
-- Server version	8.0.36-2ubuntu3

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `text` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'6',0,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(2,1,'4',1,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(3,1,'2',0,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(4,2,'64',1,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(5,2,'16',0,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(6,2,'24',0,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(7,3,'x^2 + 6x + 9',0,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(8,3,'x^2 - 6x - 9',0,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(9,3,'x^2 - 6x + 9',1,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(10,4,'print()',1,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(11,4,'console.log',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(12,4,'cout <<',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(13,5,'True',1,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(14,5,'Flase',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(15,5,'0',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(16,5,'1',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(17,6,'SyntaxError',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(18,6,'5.0',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(19,6,'2.5',0,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(20,6,'2.0',1,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(21,7,'print()',0,'2024-06-02 19:58:09','2024-06-02 19:58:09'),(22,7,'console.log',0,'2024-06-02 19:58:09','2024-06-02 19:58:09'),(23,7,'cout <<',1,'2024-06-02 19:58:09','2024-06-02 19:58:09'),(24,8,'tak',1,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(25,8,'nie',0,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(26,9,'1',0,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(27,9,'3',0,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(28,9,'4',0,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(29,9,'2',1,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(30,10,'31',0,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(31,10,'221',0,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(32,10,'12',1,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(33,11,'213',1,'2024-06-03 08:59:10','2024-06-03 08:59:10'),(34,11,'32',0,'2024-06-03 08:59:10','2024-06-03 08:59:10');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'Ile to 2+2','2024-06-02 19:42:58','2024-06-02 19:42:58'),(2,1,'Ile to 8*8','2024-06-02 19:42:58','2024-06-02 19:42:58'),(3,1,'ile to (x - 3)^2','2024-06-02 19:42:58','2024-06-02 19:42:58'),(4,2,'Ja wyspisać coś w konsoli','2024-06-02 19:46:48','2024-06-02 19:46:48'),(5,2,'Co wypisze: print(bool(\'0\')','2024-06-02 19:46:48','2024-06-02 19:46:48'),(6,2,'elems = [\'a\', \'b\', \'c\' \'d\', \'e\'] print(len(elems) / 2)','2024-06-02 19:46:48','2024-06-02 19:46:48'),(7,3,'Ja wyspisać coś w konsoli','2024-06-02 19:58:09','2024-06-02 19:58:09'),(8,4,'Czy w pythonie piszemy coś','2024-06-03 08:59:10','2024-06-03 08:59:10'),(9,4,'ile razy?','2024-06-03 08:59:10','2024-06-03 08:59:10'),(10,4,'2','2024-06-03 08:59:10','2024-06-03 08:59:10'),(11,4,'231','2024-06-03 08:59:10','2024-06-03 08:59:10');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_access_codes`
--

DROP TABLE IF EXISTS `quiz_access_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_access_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `access_code` varchar(50) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `quiz_access_codes_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_access_codes`
--

LOCK TABLES `quiz_access_codes` WRITE;
/*!40000 ALTER TABLE `quiz_access_codes` DISABLE KEYS */;
INSERT INTO `quiz_access_codes` VALUES (1,1,'matematyka','2024-06-02 20:08:23','2024-06-02 19:58:22'),(2,2,'python','2024-06-02 20:08:48','2024-06-02 19:58:48'),(3,3,'c ++','2024-06-02 20:09:12','2024-06-02 19:59:12'),(4,1,'1234','2024-06-03 08:41:16','2024-06-03 08:31:16'),(5,4,'kwad','2024-06-03 09:09:25','2024-06-03 08:59:25'),(6,3,'c ++ ','2024-06-05 16:50:17','2024-06-05 16:40:16');
/*!40000 ALTER TABLE `quiz_access_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text,
  `author_id` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
INSERT INTO `quizzes` VALUES (1,'Matematyka 1','Quiz o matematyce (zakres podstawowy)',2,'2024-06-02 19:42:58','2024-06-02 19:42:58'),(2,'Python 1','Quiz o pythonie (podstawy)',2,'2024-06-02 19:46:48','2024-06-02 19:46:48'),(3,'C ++','Quiz o c++ (podstawy)',2,'2024-06-02 19:58:09','2024-06-02 19:58:09'),(4,'sprawdzian z pythona','adw',4,'2024-06-03 08:59:10','2024-06-03 08:59:10');
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `correct_answers` int DEFAULT NULL,
  `all_answers` int DEFAULT NULL,
  `score_percentage` float DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `results_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,1,1,3,3,100,'2024-06-02 19:58:34','2024-06-02 19:58:42','2024-06-02 19:58:42'),(2,1,2,3,3,100,'2024-06-02 19:58:50','2024-06-02 19:58:56','2024-06-02 19:58:55'),(3,1,3,0,1,0,'2024-06-02 19:59:14','2024-06-02 19:59:16','2024-06-02 19:59:16'),(4,1,1,1,3,33.33,'2024-06-02 20:01:55','2024-06-02 20:02:01','2024-06-02 20:02:01'),(5,1,2,1,3,33.33,'2024-06-02 20:02:10','2024-06-02 20:02:16','2024-06-02 20:02:15'),(6,1,3,1,1,100,'2024-06-02 20:02:25','2024-06-02 20:02:36','2024-06-02 20:02:36'),(7,1,1,2,3,66.67,'2024-06-03 08:31:20','2024-06-03 08:31:38','2024-06-03 08:31:38'),(8,1,1,0,0,0,'2024-06-03 08:34:14',NULL,'2024-06-03 08:34:14'),(9,3,4,1,4,25,'2024-06-03 08:59:33','2024-06-03 08:59:45','2024-06-03 08:59:45'),(10,3,4,0,0,0,'2024-06-03 09:06:03',NULL,'2024-06-03 09:06:03'),(11,3,4,2,4,50,'2024-06-03 09:09:11','2024-06-03 09:09:22','2024-06-03 09:09:21'),(12,1,3,1,1,100,'2024-06-05 16:40:22','2024-06-05 16:40:26','2024-06-05 16:40:26');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answers`
--

DROP TABLE IF EXISTS `user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer_id` int DEFAULT NULL,
  `result_id` int NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `question_id` (`question_id`),
  KEY `answer_id` (`answer_id`),
  KEY `result_id` (`result_id`),
  CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  CONSTRAINT `user_answers_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`),
  CONSTRAINT `user_answers_ibfk_4` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answers`
--

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;
INSERT INTO `user_answers` VALUES (1,1,1,2,1,1,'2024-06-02 19:58:42','2024-06-02 19:58:42'),(2,1,2,4,1,1,'2024-06-02 19:58:42','2024-06-02 19:58:42'),(3,1,3,9,1,1,'2024-06-02 19:58:42','2024-06-02 19:58:42'),(4,1,4,10,2,1,'2024-06-02 19:58:55','2024-06-02 19:58:55'),(5,1,5,13,2,1,'2024-06-02 19:58:55','2024-06-02 19:58:55'),(6,1,6,20,2,1,'2024-06-02 19:58:55','2024-06-02 19:58:55'),(7,1,7,NULL,3,0,'2024-06-02 19:59:16','2024-06-02 19:59:16'),(8,1,1,2,4,1,'2024-06-02 20:02:01','2024-06-02 20:02:01'),(9,1,2,6,4,0,'2024-06-02 20:02:01','2024-06-02 20:02:01'),(10,1,3,7,4,0,'2024-06-02 20:02:01','2024-06-02 20:02:01'),(11,1,4,10,5,1,'2024-06-02 20:02:15','2024-06-02 20:02:15'),(12,1,5,16,5,0,'2024-06-02 20:02:15','2024-06-02 20:02:15'),(13,1,6,17,5,0,'2024-06-02 20:02:15','2024-06-02 20:02:15'),(14,1,7,23,6,1,'2024-06-02 20:02:36','2024-06-02 20:02:36'),(15,1,1,2,7,1,'2024-06-03 08:31:38','2024-06-03 08:31:38'),(16,1,2,5,7,0,'2024-06-03 08:31:38','2024-06-03 08:31:38'),(17,1,3,9,7,1,'2024-06-03 08:31:38','2024-06-03 08:31:38'),(18,3,8,24,9,1,'2024-06-03 08:59:45','2024-06-03 08:59:45'),(19,3,9,27,9,0,'2024-06-03 08:59:45','2024-06-03 08:59:45'),(20,3,10,NULL,9,0,'2024-06-03 08:59:45','2024-06-03 08:59:45'),(21,3,11,34,9,0,'2024-06-03 08:59:45','2024-06-03 08:59:45'),(22,3,8,24,11,1,'2024-06-03 09:09:21','2024-06-03 09:09:21'),(23,3,9,28,11,0,'2024-06-03 09:09:21','2024-06-03 09:09:21'),(24,3,10,31,11,0,'2024-06-03 09:09:21','2024-06-03 09:09:21'),(25,3,11,33,11,1,'2024-06-03 09:09:21','2024-06-03 09:09:21'),(26,1,7,23,12,1,'2024-06-05 16:40:26','2024-06-05 16:40:26');
/*!40000 ALTER TABLE `user_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('student','teacher','admin') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Adam','Nowak','adam_uczen@gmail.com','scrypt:32768:8:1$eqw7ToB56nwwhOBL$a1ab92805e087a35b9cb979df5dd803c11c04f0f2afb53c6abed4dddbd520afbecbe3c6d2ec9679f7119cedb110f6217f765c98e04402e67ee149f07145ccd11','student','2024-06-02 19:40:56','2024-06-02 19:40:56'),(2,'adam','Mickiewicz','adam_nauczyciel@gmail.com','scrypt:32768:8:1$86KoPVCcoCIZa3f5$18370b95b9a601acaa76691090b42622802309bb1493e555c84a657c9d6fdd2994120adf54825c13a6b3c36d85022450a063dc19e5117e7540899e53672fb663','teacher','2024-06-02 19:41:53','2024-06-02 19:41:53'),(3,'Piotr','Zakrzewski','zakrzewskipiotr@gmail.com','scrypt:32768:8:1$QgALoBkpme4dNOEH$59264ef56e62db70886d5fd8dc1208cbf10fce67d866a625c7f20365082e4f76e04abb9dfb838d97811e5572fdfbd059ba9302deff35bc00d8a0dda5c82c0598','student','2024-06-03 08:56:08','2024-06-03 08:56:08'),(4,'Piotr','Zakrzewski','zakrzewskipiotrek@gmail.com','scrypt:32768:8:1$nPt13yX4ps2jAuYZ$c570d44b358f0b4e16f058bd62685c1e72166553d0ab845b0a234461052a6bd87879ef57ca046ffe722fd12fd82f8eda24dc999c2564737c8af0295ba864b906','teacher','2024-06-03 08:56:56','2024-06-03 08:56:56');
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

-- Dump completed on 2024-06-06  8:00:46
