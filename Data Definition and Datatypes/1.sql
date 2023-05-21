CREATE DATABASE `gamebar`;

CREATE TABLE `gamebar`.`employees` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL
    );
CREATE TABLE `gamebar`.`categories` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL
	);

CREATE TABLE `gamebar`.`products` (
	`id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `category_id` INT NOT NULL
    );
USE `gamebar`;

INSERT INTO `employees`(`first_name`, `last_name`) VALUES ("Pesho", "Peshov");
INSERT INTO `employees`(`first_name`, `last_name`) VALUES 
("Gosho", "Gosho"), ("Gergana", "Gergana");

ALTER TABLE `employees`
ADD COLUMN `middle_name` VARCHAR(100);

ALTER TABLE `employees`
MODIFY COLUMN `middle_name` VARCHAR(100);

ALTER TABLE products
ADD CONSTRAINT `categories_fk`
FOREIGN KEY (`category_id`)
REFERENCES `gamebar`.`categories` (`id`);