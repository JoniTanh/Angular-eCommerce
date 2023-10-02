USE `full-stack-ecommerce`;

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
(1,'FI','Finland'),
(2,'SW','Sweden');

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
(1,'Tampere',1),
(2,'Lahti',1),
(3,'Turku',1),
(4,'Helsinki',1),
(5,'Vantaa',1),
(6,'Oulu',1),
(7,'Espoo',1),
(8,'Asikkala',1),
(9,'Lammi',1),
(10,'Heinola',1),
(11,'Hämeenlinna',1),
(12,'Hollola',1),
(13,'Alberta',2),
(14,'Tukholma',2),
(15,'Haaparanta',2);

SET foreign_key_checks = 1;