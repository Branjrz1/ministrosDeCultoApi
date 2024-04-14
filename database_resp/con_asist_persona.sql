CREATE DATABASE  IF NOT EXISTS `con_asist` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `con_asist`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: con_asist
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `ap_pat` varchar(255) NOT NULL,
  `ap_Mat` varchar(255) DEFAULT NULL,
  `Estado` varchar(255) NOT NULL,
  `Ministerio` varchar(255) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `Iglesia` varchar(255) DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `fecha_reg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Miguel Adrián','Aguirre','Moreno','MEX.','Ministro de Culto',NULL,'Emmanuel','5537320391','2024-03-30 11:34:31'),(2,'Odilón','Ambrocio','Valencia','SLP.','Ministro de Culto',NULL,'La Hermosa','4421129874','2024-03-30 11:34:31'),(3,'Eliseo','Arce','Hernández','OAX.','Ministro de Culto',NULL,'Maranatha','9512831830','2024-03-30 11:34:31'),(4,'Oseas','Arce','Hernández','OAX.','Ministro de Culto',NULL,'Maranatha','9512097940','2024-03-30 11:34:31'),(5,'Juan Adolfo','Bárbara','Charro','HGO.','Ministro de Culto',NULL,'Macedonia','7711187390','2024-03-30 11:34:31'),(6,'Fausto','Bautista','Hernández','HGO.','Ministro de Culto',NULL,'DESCONOCIDO','7713505806','2024-03-30 11:34:31'),(7,'Benjamín','Bautista','Paredes','SLP.','Ministro de Culto',NULL,'Paraíso','4831147659','2024-03-30 11:34:31'),(8,'Juventino','Becerra','Ruíz','HGO.','Ministro de Culto',NULL,'Campamento','7721130819','2024-03-30 11:34:31'),(9,'Demetrio Jesús','Calderón','Beltrán','SLP.','Ministro de Culto',NULL,'Bethel','4831294390','2024-03-30 11:34:31'),(10,'Abel','Carpiña','Rivera','EDO.','Ministro de Culto',NULL,'DESCONOCIDO','5569711980','2024-03-30 11:34:31'),(11,'J. Guadalupe','Castañon','Muhedano','SLP.','Ministro de Culto',NULL,'Getsemaní','4831104290','2024-03-30 11:34:31'),(12,'Juan Carlos','Castillo','Rivera','HGO.','Ministro de Culto',NULL,'Gracia y Fe','7721314555','2024-03-30 11:34:31'),(13,'Santiago','Cristóbal','Hernández','SLP.','Ministro de Culto',NULL,'Monte Sinaí',NULL,'2024-03-30 11:34:31'),(14,'Arturo','Cruz','Felipe','VER.','Ministro de Culto',NULL,'Las Misiones','7461069283','2024-03-30 11:34:31'),(15,'Patricio','Cruz','Ramos','PUE.','Ministro de Culto',NULL,'Vida Nueva','7971246950','2024-03-30 11:34:31'),(16,'José','De Jesús','Juárez','VER.','Ministro de Culto',NULL,'Emanuel','5535677755','2024-03-30 11:34:31'),(17,'José','De la Cruz','Hernández','VER.','Ministro de Culto',NULL,'DESCONOCIDO',NULL,'2024-03-30 11:34:31'),(18,'Emilio','De Paz','Saucedo','PUE.','Ministro de Culto',NULL,'Camino al Cielo','7641037445','2024-03-30 11:34:31'),(19,'Gerardo','Domínguez','Martínez','OAX.','Ministro de Culto',NULL,'Maranatha','9513644946','2024-03-30 11:34:31'),(20,'Filiberto','Escobedo','Soto','HGO.','Ministro de Culto',NULL,'Monte Sinaí','8999675014','2024-03-30 11:34:31'),(21,'Manuel','Fierro','Cima','MEX.','Ministro de Culto',NULL,'El Buen Pastor','5514969153','2024-03-30 11:34:31'),(22,'Pablo','García','Cruz','HGO.','Ministro de Culto',NULL,'El Buen Pastor','7295470686','2024-03-30 11:34:31'),(23,'Armando','García','Sainos','PUE.','Ministro de Culto',NULL,'Xhik Dios',NULL,'2024-03-30 11:34:31'),(24,'María Isabel','Gaspar','Cabrera','PUE.','Ministro de Culto',NULL,'Camino al Cielo','2225794628','2024-03-30 11:34:31'),(25,'Timoteo','Gaspar','López','DESCONOCIDO','Ministro de Culto',NULL,'DESCONOCIDO',NULL,'2024-03-30 11:34:31'),(26,'Josué','Gómez','Jerónimo','VER.','Ministro de Culto',NULL,'Emanuel','7841474789','2024-03-30 11:34:31'),(27,'Manuel','Gómez','Vázquez','VER.','Ministro de Culto',NULL,'El Santuario','7841265300','2024-03-30 11:34:31'),(28,'Mateo','Gómez','Vázquez','VER.','Ministro de Culto',NULL,'El Camino de Vida','5525252061','2024-03-30 11:34:31'),(29,'Joel','Gonzaga','Cordero','HGO.','Ministro de Culto',NULL,'Emmanuel','7721155150','2024-03-30 11:34:31'),(30,'Crescenciano','González','Martínez','SLP.','Ministro de Culto',NULL,'Getsemaní','4831047528','2024-03-30 11:34:31'),(31,'Bersain','González','Muñoz','MEX.','Ministro de Culto',NULL,'Mahanaim','5574279664','2024-03-30 11:34:31'),(32,'Edgar','González','Muñoz','HGO.','Ministro de Culto',NULL,'El Buen Pastor','7713400146','2024-03-30 11:34:31'),(33,'José David','González','Muñoz','HGO.','Ministro de Culto',NULL,'DESCONOCIDO','5527659906','2024-03-30 11:34:31'),(34,'Daniel','Gorgonio','López','PUE.','Ministro de Culto',NULL,'Dios Eterno','9512344437','2024-03-30 11:34:32'),(35,'Félix','Guevara','Martínez','SLP.','Ministro de Culto',NULL,'El Divino Redentor','4831095871','2024-03-30 11:34:32'),(36,'Antonio','Hernández','Alonso','DESCONOCIDO','Ministro de Culto',NULL,'DESCONOCIDO',NULL,'2024-03-30 11:34:32'),(37,'Crescencio','Hernández',NULL,'SLP.','Ministro de Culto',NULL,'El Buen Pastor',NULL,'2024-03-30 11:34:32'),(38,'Noé','Hernández','García','SLP.','Ministro de Culto',NULL,'El Divino Redentor','4831212607','2024-03-30 11:34:32'),(39,'Benjamín','Hernández','Hernández','SLP.','Ministro de Culto',NULL,'Getsemaní','4831322548','2024-03-30 11:34:32'),(40,'Daniel','Hernández','Hernández','PUE.','Ministro de Culto',NULL,'La Nueva Jerusalén','2331233292','2024-03-30 11:34:32'),(41,'Ramón','Hernández','Jerónimo','MEX.','Ministro de Culto',NULL,'Emmanuel','5517815161','2024-03-30 11:34:32'),(42,'Salvador','Hernández','López','PUE.','Ministro de Culto',NULL,'Dios Eterno','2226662391','2024-03-30 11:34:32'),(43,'Juan','Hernández','Martínez','SLP.','Ministro de Culto',NULL,'DESCONOCIDO','4831077186','2024-03-30 11:34:32'),(44,'Josué','Hernández','Ponce','HGO.','Ministro de Culto',NULL,'Instituto Bíblico','7721454370','2024-03-30 11:34:32'),(45,'Valentín','Herrera','García','MEX.','Ministro de Culto',NULL,'Camino, Verdad y Vida','5549887015','2024-03-30 11:34:32'),(46,'Manuel','Jiménez','Antonio','VER.','Ministro de Culto',NULL,'Ebenezer','7841180355','2024-03-30 11:34:32'),(47,'Alonso','Lara','Salinas','HGO.','Ministro de Culto',NULL,'La Hermosa',NULL,'2024-03-30 11:34:32'),(48,'María','López','Antonio','PUE.','Ministro de Culto',NULL,'Camino al Cielo','7647671068','2024-03-30 11:34:32'),(49,'Andrés','López','Cruz','PUE.','Ministro de Culto',NULL,'Cristo es la Roca','2331099116','2024-03-30 11:34:32'),(50,'Raúl','López','Cruz','VER.','Ministro de Culto',NULL,'DESCONOCIDO','7841226178','2024-03-30 11:34:32'),(51,'Rodolfo','Maldonado','García','MEX.','Ministro de Culto',NULL,'Filadelfía','5521837779','2024-03-30 11:34:32'),(52,'Antonio','Márquez',NULL,'VER.','Ministro de Culto',NULL,'Bethel',NULL,'2024-03-30 11:34:32'),(53,'Crispín Antonio','Martínez','Estrada','OAX.','Ministro de Culto',NULL,'ICO','9515058833','2024-03-30 11:34:32'),(54,'Jorge Iván','Martínez','Gonzaga','HGO.','Ministro de Culto',NULL,'Ebenezer','5514865356','2024-03-30 11:34:32'),(55,'Domingo','Martínez','González','SLP.','Ministro de Culto',NULL,'Betania','5562172564','2024-03-30 11:34:32'),(56,'Eustolio','Maús','Balbuena','SLP.','Ministro de Culto',NULL,'El Buen Pastor','7891301607','2024-03-30 11:34:32'),(57,'Eliazim','Maús','Reséndiz','SLP.','Ministro de Culto',NULL,'El Buen Pastor','7891301607 TMB','2024-03-30 11:34:32'),(58,'Rufino Antonio','Morales','Bautista','MEX.','Ministro de Culto',NULL,'Bethel','5515661837','2024-03-30 11:34:32'),(59,'Gerardo','Morales','Pérez','OAX.','Ministro de Culto',NULL,'Fuente de Agua Viva',NULL,'2024-03-30 11:34:32'),(60,'Josué','Olvera','García','HGO.','Ministro de Culto',NULL,'Bethel','7713654224','2024-03-30 11:34:32'),(61,'Eleazar','Olvera','Solís','PUE.','Ministro de Culto',NULL,'Eben-ezer',NULL,'2024-03-30 11:34:32'),(62,'Marciano','Ordoñez','Fierro','MEX.','Ministro de Culto',NULL,'DESCONOCIDO','5539757818','2024-03-30 11:34:32'),(63,'Abdías','Pablo','Enedina','VER.','Ministro de Culto',NULL,'El Divino Redentor','7891056847','2024-03-30 11:34:32'),(64,'Alfredo','Pérez','Martínez','MEX.','Ministro de Culto',NULL,'Torre Fuerte','5565433572','2024-03-30 11:34:32'),(65,'Pedro','Pérez','Martínez','HGO.','Ministro de Culto',NULL,'Bíblica','7712667720','2024-03-30 11:34:32'),(66,'Alberto','Pérez','Otero','MEX.','Ministro de Culto',NULL,'Fuente de Vida','5535024520','2024-03-30 11:34:32'),(67,'Aquileo','Pérez','Salazar','PUE.','Ministro de Culto',NULL,'Emmanuel','7641130570','2024-03-30 11:34:32'),(68,'Luciano','Pérez','Vázquez','PUE.','Ministro de Culto',NULL,'El Camino de Vida','7971039076','2024-03-30 11:34:32'),(69,'Samuel','Reyes','Lucas','SLP.','Ministro de Culto',NULL,'El Buen Pastor','4831107959','2024-03-30 11:34:32'),(70,'Pedro','Reyes','Márquez','DESCONOCIDO','Ministro de Culto',NULL,'DESCONOCIDO','7841367704','2024-03-30 11:34:32'),(71,'Misael','Rivera','Florentino','SLP.','Ministro de Culto',NULL,'Misión Emanuel','4831163743','2024-03-30 11:34:32'),(72,'Marciano','Romualdo',NULL,'SLP.','Ministro de Culto',NULL,'Bethel','4831098949','2024-03-30 11:34:32'),(73,'Fernando','Rubio','Rubio','SLP.','Ministro de Culto',NULL,'Getsemaní','4831077186 TMB','2024-03-30 11:34:32'),(74,'Eleuterio','Salazar',NULL,'SLP.','Ministro de Culto',NULL,'Bethel','4834880679','2024-03-30 11:34:32'),(75,'Raymundo','Sánchez','Martínez','HGO.','Ministro de Culto',NULL,'Maranatha',NULL,'2024-03-30 11:34:32'),(76,'Francisco','Santiago','Jiménez','VER.','Ministro de Culto',NULL,'Emmanuel','7841153964','2024-03-30 11:34:32'),(77,'Luis Ángel','Santiago','Martínez','SLP.','Ministro de Culto',NULL,'Jesucristo es la Roca','4831149407','2024-03-30 11:34:32'),(78,'Justino','Solís','Franco','HGO.','Ministro de Culto',NULL,'Ebenezer','7295734657','2024-03-30 11:34:32'),(79,'Mateo','Trejo','García','HGO.','Ministro de Culto',NULL,'Emmanuel','7461014692','2024-03-30 11:34:32'),(80,'Eulalio','Trejo','Zenil','HGO.','Ministro de Culto',NULL,'Ebenezer','7721533318','2024-03-30 11:34:32'),(81,'José','Vázquez','Cruz','VER.','Ministro de Culto',NULL,'Emanuel','7891019241','2024-03-30 11:34:32'),(82,'Abelardo','Vázquez','Sotero','VER.','Ministro de Culto',NULL,'Maranatha','7841108794','2024-03-30 11:34:32'),(83,'Eliseo','Velasco','Miranda','HGO.','Ministro de Culto',NULL,'DESCONOCIDO','7751800833','2024-03-30 11:34:32'),(84,'Agustín','Velázquez','Juárez','HGO.','Ministro de Culto',NULL,'IB','7721120469','2024-03-30 11:34:32'),(85,'José','Xela','Martínez','PUE.','Ministro de Culto',NULL,'Maranatha','2331050781','2024-03-30 11:34:32'),(86,'Juan Melitón','Huaxin','Baltazar','PUEB.','Ministro de Culto',NULL,'La Nueva Jerusalén','2331274940','2024-03-30 11:34:32'),(87,'Andrés','López','Laureano','VER.','Ministro de Culto',NULL,'Maranatha','7848889924','2024-03-30 11:34:32'),(88,'Pedro','Pérez','Quintero','HGO.','Ministro de Culto',NULL,'Iglesia Bíblica','7711259479','2024-03-30 11:34:32'),(89,'Filogonio','Olguín','Ponce','MEX.','Ministro de Culto',NULL,'Fuente de Vida','5523102441','2024-03-30 11:34:32'),(90,'Manuel','Francisco','Pérez','PUE','Ministro de Culto',NULL,'San Andrés','5560800549','2024-03-30 11:34:32'),(91,'Gerardo','Domínguez','Martínez','OAX.','Ministro de Culto',NULL,'Maranatha','9513644946 TMB','2024-03-30 11:34:32');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30  6:07:55
