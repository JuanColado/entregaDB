DROP database IF EXISTS JuanColado
CREATE database JuanColado
use JuanColado

CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(255),
   `email` VARCHAR(255),
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(100),
   `creation_date` DATE,
   `last_modification_date` DATE,
   `description` TEXT,
   `delete_enable` TINYINT,
   `user_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes_categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `note_id` INT NOT NULL,
   `category_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(255),
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_cedce1a3-565c-4c84-83ef-722e0494f433` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_e3830ef5-1077-439e-a746-458be68969fa` FOREIGN KEY (`note_id`) REFERENCES `notes`(`id`)  ;

ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_557c56c4-106c-4675-aade-f1e4059cc5cc` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`)  ;

INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Carlos`,`carlos@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Antonella`,`Antonella@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Juan`,`juan@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Pedro`,`pedro@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Lucia`,`lucia@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Agustina`,`agustina@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Ivan`,`ivan@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Antonela`,`antonela@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Noelia`,`noelia@gmail.com`);
INSERT INTO `users` (`id`,`name`,`email`) VALUES (NULL,`Adrian`,`adrian@gmail.com`);


INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Study`,`2021-05-23`,`2021-09-30`,`description1`,`0`,`3`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Buy`,`2021-05-23`,`2021-09-30`,`description2`,`0`,`4`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Test`,`2021-05-23`,`2021-09-30`,`description3`,`0`,`2`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Research`,`2021-05-23`,`2021-09-30`,`description4`,`0`,`7`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Practice`,`2021-05-23`,`2021-09-30`,`description5`,`0`,`1`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Read`,`2021-05-23`,`2021-09-30`,`description6`,`0`,`8`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Highlight`,`2021-05-23`,`2021-09-30`,`description7`,`0`,`7`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Remember`,`2021-05-23`,`2021-09-30`,`description8`,`0`,`9`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Redo`,`2021-05-23`,`2021-09-30`,`description9`,`0`,`10`);
INSERT INTO `notes` (`id`,`title`,`creation_date`,`last_modification_date`,`description`,`delete_enable`,`user_id`) VALUES (NULL,`Study`,`2021-05-23`,`2021-09-30`,`description10`,`0`,`6`);

INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`1`,`4`);
INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`2`,`7`);
INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`10`,`4`);
INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`9`,`8`);
INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`1`,`6`);

INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`3`,`5`);
INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`8`,`7`);
INSERT INTO `notes_categories` (`id`,`note_id`,`category_id`) VALUES (NULL,`10`,`9`);

INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`art`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`maths`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`gymnastic`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`history`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`geography`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`spanish`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`literature`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`chemestry`);
INSERT INTO `categories` (`id`,`title`) VALUES (NULL,`fisics`);
