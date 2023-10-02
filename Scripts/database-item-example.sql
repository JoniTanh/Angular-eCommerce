-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
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
INSERT INTO product_category(category_name) VALUES ('Armour');
INSERT INTO product_category(category_name) VALUES ('Weapons');

-- -----------------------------------------------------
-- Armour
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1000', 'Dragon Med Helm', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1001', 'Dragon Full Helm', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 20.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1002', 'Dragon Sq Shield', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1003', 'Dragon Kiteshield', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1004', 'Dragon Platelegs', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1005', 'Dragon Plateskirt', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 23.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1006', 'Dragon Chainbody', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1007', 'Dragon Platebody', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 16.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1008', 'Dragon Boots', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 25.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1009', 'Dragon Gloves', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 23.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('ARMOUR-1010', 'Dragon Defender', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 24.99, 1, NOW());

-- -----------------------------------------------------
-- Weapons
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1000', 'Granite Maul', 'Granite item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1001', 'Dragon Claws', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1002', 'Crystal Halberd', 'Crystal item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1003', 'Dragon Dagger', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1004', 'Dragon Scimitar', 'Dragon item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1005', 'Abyssal Tentacle', 'Abyssal item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1006', 'Abyssal Whip', 'Abyssal item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1007', 'Saradomin Sword', 'God item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1008', 'Abyssal Bludgeon', 'Abyssal item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('WEAPONS-1009', 'Abyssal Dagger', 'Abyssal item', 'assets/images/products/placeholder.png', 1, 100, 18.99, 2, NOW());