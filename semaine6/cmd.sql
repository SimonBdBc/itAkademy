/* create base */
CREATE DATABASE `testDB`;

/* delete base */
DROP DATABASE `testDB`;

/* define base before select table but pas bonne pratiques */
USE `madb`;

/* delete table in base "madb" */
TRUNCATE TABLE `madb`, `matable`;

/* create table */
CREATE TABLE `madb`, `matable` (
`id` INT,
`message` TEXT,
`created_at` DATE
);

/* insert into table into base */
INSERT INTO `madb`. `matable`
VALUES (
  NULL,
  `valeur 1`,
  CURRENT_TIMESTAMP
);

INSERT INTO `madb`. `matable`
( created_at,
  messages
) VALUES (
  CURRENT_TIMESTAMP,
  `valeur 2`
);

/* delete id in task in dwm8 */
DELETE FROM `dwm8`. `task`
WHERE `id` = 1
LIMIT 1; /* limit 1 delete */

UPDATE `dwm8`. `task`
SET `text`= `nouvelle valeur`
  WHERE `id`
  LIMIT 1;

SELECT `text` FROM `dwm8`.`task`;

SELECT * FROM `dwm8`.`task`
  WHERE `id` = 3;
