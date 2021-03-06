-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: sample-project-mydb
-- ------------------------------------------------------
-- Server version	5.7.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('2839a0b3-a5a7-466a-8694-fd006d758945','John','+716789234','Eliseo@gardner.biz','laudantium enim quasi est quidem magnam voluptate ipsam eos\\ntempora quo necessitatibus\\ndolor quam autem quasi\\nreiciendis et nam sapiente accusantium'),('91e0e77d-4d4c-4a3d-9d7a-425f436a947f','Peter','+678234890','Jayne_Kuhic@sydney.com','est natus enim nihil est dolore omnis voluptatem numquam\\net omnis occaecati quod ullam at\\nvoluptatem error expedita pariatur\\nnihil sint nostrum voluptatem reiciendis et'),('d6bda0fe-25c8-4b25-8194-f288d7401751','Amy','+849367256','Nikita@garfield.biz','quia molestiae reprehenderit quasi aspernatur\\naut expedita occaecati aliquam eveniet laudantium\\nomnis quibusdam delectus saepe quia accusamus maiores nam est\\ncum et ducimus et vero voluptates excepturi deleniti ratione'),('8135dc10-3349-4651-9173-8c1a7ed02706','Hannah','+897567345','Lew@alysha.tv','non et atque\\noccaecati deserunt quas accusantium unde odit nobis qui voluptatem\\nquia voluptas consequuntur itaque dolor\\net qui rerum deleniti ut occaecati'),('4b6d19ab-ca20-41a9-a3ef-93e61cd47124','Michael','+890567123','Hayden@althea.biz','harum non quasi et ratione\\ntempore iure ex voluptates in ratione\\nharum architecto fugit inventore cupiditate\\nvoluptates magni quo et'),('228c8d98-fcd5-4c60-b999-60751ed2ec1e','Sandy','+6764253647','Slr@gmail.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida euismod lorem, at auctor velit fermentum nec. Sed aliquet augue sed quam porta vehicula eu sit amet risus. Praesent viverra et diam sit amet feugiat. Mauris tellus lectus, sollicitudin sit amet arcu in, congue fermentum lectus. Nulla facilisi. Ut leo turpis, dictum eu posuere in, ultricies id tortor. Ut luctus libero ac odio ultrices euismod. Aenean maximus a tortor eget bibendum. Nulla nibh odio, dapibus sed erat ut, placerat mattis ligula. Etiam in orci vitae ipsum dapibus placerat sed id est.'),('7d77613e-0465-4811-8286-c71d0d539db6','Betty','+985375935','Sos@hot.com','Nunc vestibulum nunc in arcu fermentum, at finibus erat laoreet. Etiam blandit commodo nibh sit amet rutrum. Phasellus pulvinar suscipit nibh, nec cursus nisl fringilla in. Sed in gravida elit, vitae congue metus. Morbi ultricies velit dapibus, faucibus est non, accumsan nunc. Aliquam commodo, nibh sed luctus congue, risus metus efficitur leo, ut gravida eros lectus eu arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In egestas rutrum nibh eu posuere. Sed convallis velit ac orci euismod, nec congue ante facilisis. Donec gravida ex ut libero tincidunt aliquet. Etiam elementum elit nec diam consectetur convallis. Morbi imperdiet, leo ac rutrum tincidunt, metus erat cursus ligula, vitae porttitor sapien augue in augue. Curabitur ac lorem vel metus porta pellentesque.'),('d7f10c28-b7d3-4588-b14b-204609164ce5','Richard','+906357146','lol@gmail.com','Curabitur blandit risus orci, vel mattis risus luctus non. Ut mauris libero, convallis et leo nec, elementum vestibulum dui. Morbi finibus sit amet mi vitae luctus. Morbi suscipit, metus ut suscipit facilisis, elit nibh consequat metus, nec ullamcorper ante ligula eget nisi. Nam nec sapien sed urna eleifend imperdiet non et elit. In purus quam, aliquam in odio vel, ornare mollis arcu. Aliquam cursus diam magna, id suscipit tortor rutrum non. Proin ut vulputate neque, eu finibus risus. Ut mollis neque sit amet tortor suscipit, nec imperdiet lorem pretium. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris et porttitor tortor. Morbi tempor, dui ac accumsan fringilla, ligula massa luctus quam, in posuere lorem orci eget ex.'),('1c22011b-1fbe-4109-843d-3b4152c149f9','Susan','+895368246','ert@gmail.com','Cras risus arcu, ultricies at libero accumsan, lacinia eleifend nibh. Nam turpis elit, maximus at nisi eget, cursus dapibus leo. Duis condimentum rutrum ligula, eget viverra est sagittis ac. Cras vitae urna ac nisl dignissim pulvinar. Vestibulum ultrices risus ac ex fermentum ultricies. Vivamus nec augue quis felis pulvinar luctus. Nam feugiat eleifend est, ut tristique nisi. Duis suscipit varius elementum.'),('b31d5a57-bfbe-4be8-b41d-8d1b6ea06666','Vicky','+95637256','sdf@gmail.com','Sed ut lacus non tellus finibus tempor. Nulla varius luctus aliquam. Fusce eleifend dui at purus elementum rutrum. Nam eu condimentum risus. Etiam consectetur fermentum arcu, eget laoreet lacus consequat id. Fusce sodales ligula sed tellus dapibus lacinia. Suspendisse aliquet nibh ac massa pulvinar efficitur. Maecenas tempus odio in quam luctus placerat. Donec eget elit pharetra, volutpat nulla eu, consectetur quam. Vivamus laoreet placerat metus, eu laoreet neque. Nullam ornare, urna at varius hendrerit, libero ipsum pellentesque massa, et suscipit dolor velit eget felis. Mauris tortor felis, consequat ut velit malesuada, luctus viverra nisl. Nullam rutrum elementum dui, id malesuada magna suscipit ut. Phasellus efficitur arcu non orci molestie, sit amet tempus libero ornare. Duis lorem arcu, laoreet at malesuada eget, efficitur sed nisl.'),('6fdfa26c-43e1-46cf-819a-916ab4b152d1','Ben','+864269468','fgh@gmail.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec gravida euismod lorem, at auctor velit fermentum nec. Sed aliquet augue sed quam porta vehicula eu sit amet risus. Praesent viverra et diam sit amet feugiat. Mauris tellus lectus, sollicitudin sit amet arcu in, congue fermentum lectus. Nulla facilisi. Ut leo turpis, dictum eu posuere in, ultricies id tortor. Ut luctus libero ac odio ultrices euismod. Aenean maximus a tortor eget bibendum. Nulla nibh odio, dapibus sed erat ut, placerat mattis ligula. Etiam in orci vitae ipsum dapibus placerat sed id est.'),('d345824b-01ef-41cd-9c6b-94cdedfa4e1b','William','+9063785839','qwe@gmail.com','Nunc vestibulum nunc in arcu fermentum, at finibus erat laoreet. Etiam blandit commodo nibh sit amet rutrum. Phasellus pulvinar suscipit nibh, nec cursus nisl fringilla in. Sed in gravida elit, vitae congue metus. Morbi ultricies velit dapibus, faucibus est non, accumsan nunc. Aliquam commodo, nibh sed luctus congue, risus metus efficitur leo, ut gravida eros lectus eu arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In egestas rutrum nibh eu posuere. Sed convallis velit ac orci euismod, nec congue ante facilisis. Donec gravida ex ut libero tincidunt aliquet. Etiam elementum elit nec diam consectetur convallis. Morbi imperdiet, leo ac rutrum tincidunt, metus erat cursus ligula, vitae porttitor sapien augue in augue. Curabitur ac lorem vel metus porta pellentesque.'),('dc317edf-00d3-4553-8e30-e33d22672708','Chuck','+935285989','vbn@gmail.com','Curabitur blandit risus orci, vel mattis risus luctus non. Ut mauris libero, convallis et leo nec, elementum vestibulum dui. Morbi finibus sit amet mi vitae luctus. Morbi suscipit, metus ut suscipit facilisis, elit nibh consequat metus, nec ullamcorper ante ligula eget nisi. Nam nec sapien sed urna eleifend imperdiet non et elit. In purus quam, aliquam in odio vel, ornare mollis arcu. Aliquam cursus diam magna, id suscipit tortor rutrum non. Proin ut vulputate neque, eu finibus risus. Ut mollis neque sit amet tortor suscipit, nec imperdiet lorem pretium. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris et porttitor tortor. Morbi tempor, dui ac accumsan fringilla, ligula massa luctus quam, in posuere lorem orci eget ex.'),('5cffcf9f-c199-411f-8fab-ecff59e7f372','Viola','+894999245','yui@gmail.com','Cras risus arcu, ultricies at libero accumsan, lacinia eleifend nibh. Nam turpis elit, maximus at nisi eget, cursus dapibus leo. Duis condimentum rutrum ligula, eget viverra est sagittis ac. Cras vitae urna ac nisl dignissim pulvinar. Vestibulum ultrices risus ac ex fermentum ultricies. Vivamus nec augue quis felis pulvinar luctus. Nam feugiat eleifend est, ut tristique nisi. Duis suscipit varius elementum.');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-21 15:03:06
