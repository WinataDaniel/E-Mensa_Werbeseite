
USE emensawerbeseite;

INSERT INTO `allergen` (`code`, `name`, `typ`) VALUES
	('a', 'Getreideprodukte', 'Getreide (Gluten)'),
	('a1', 'Weizen', 'Allergen'),
	('a2', 'Roggen', 'Allergen'),
	('a3', 'Gerste', 'Allergen'),
	('a4', 'Dinkel', 'Allergen'),
	('a5', 'Hafer', 'Allergen'),
	('a6', 'Dinkel', 'Allergen'),
	('b', 'Fisch', 'Allergen'),
	('c', 'Krebstiere', 'Allergen'),
	('d', 'Schwefeldioxid/Sulfit', 'Allergen'),
	('e', 'Sellerie', 'Allergen'),
	('f', 'Milch und Laktose', 'Allergen'),
	('f1', 'Butter', 'Allergen'),
	('f2', 'Käse', 'Allergen'),
	('f3', 'Margarine', 'Allergen'),
	('g', 'Sesam', 'Allergen'),
	('h', 'Nüsse', 'Allergen'),
	('h1', 'Mandeln', 'Allergen'),
	('h2', 'Haselnüsse', 'Allergen'),
	('h3', 'Walnüsse', 'Allergen'),
	('i', 'Erdnüsse', 'Allergen');

INSERT INTO `gericht` (`id`, `name`, `beschreibung`, `erfasst_am`, `vegan`, `vegetarisch`, `preis_intern`, `preis_extern`) VALUES
	(1, 'Bratkartoffeln mit Speck und Zwiebeln', 'Kartoffeln mit Zwiebeln und gut Speck', '2020-08-25', 0, 0, 2.3, 4),
	(3, 'Bratkartoffeln mit Zwiebeln', 'Kartoffeln mit Zwiebeln und ohne Speck', '2020-08-25', 1, 1, 2.3, 4),
	(4, 'Grilltofu', 'Fein gewürzt und mariniert', '2020-08-25', 1, 1, 2.5, 4.5),
	(5, 'Lasagne', 'Klassisch mit Bolognesesoße und Creme Fraiche', '2020-08-24', 0, 0, 2.5, 4.5),
	(6, 'Lasagne vegetarisch', 'Klassisch mit Sojagranulatsoße und Creme Fraiche', '2020-08-24', 0, 1, 2.5, 4.5),
	(7, 'Hackbraten', 'Nicht nur für Hacker', '2020-08-25', 0, 0, 2.5, 4),
	(8, 'Gemüsepfanne', 'Gesundes aus der Region, deftig angebraten', '2020-08-25', 1, 1, 2.3, 4),
	(9, 'Hühnersuppe', 'Suppenhuhn trifft Petersilie', '2020-08-25', 0, 0, 2, 3.5),
	(10, 'Forellenfilet', 'mit Kartoffeln und Dilldip', '2020-08-22', 0, 0, 3.8, 5),
	(11, 'Kartoffel-Lauch-Suppe', 'der klassische Bauchwärmer mit frischen Kräutern', '2020-08-22', 0, 1, 2, 3),
	(12, 'Kassler mit Rosmarinkartoffeln', 'dazu Salat und Senf', '2020-08-23', 0, 0, 3.8, 5.2),
	(13, 'Drei Reibekuchen mit Apfelmus', 'grob geriebene Kartoffeln aus der Region', '2020-08-23', 0, 1, 2.5, 4.5),
	(14, 'Pilzpfanne', 'die legendäre Pfanne aus Pilzen der Saison', '2020-08-23', 0, 1, 3, 5),
	(15, 'Pilzpfanne vegan', 'die legendäre Pfanne aus Pilzen der Saison ohne Käse', '2020-08-24', 1, 1, 3, 5),
	(16, 'Käsebrötchen', 'schmeckt vor und nach dem Essen', '2020-08-24', 0, 1, 1, 1.5),
	(17, 'Schinkenbrötchen', 'schmeckt auch ohne Hunger', '2020-08-25', 0, 0, 1.25, 1.75),
	(18, 'Tomatenbrötchen', 'mit Schnittlauch und Zwiebeln', '2020-08-25', 1, 1, 1, 1.5),
	(19, 'Mousse au Chocolat', 'sahnige schweizer Schokolade rundet jedes Essen ab', '2020-08-26', 0, 1, 1.25, 1.75),
	(20, 'Suppenkreation á la Chef', 'was verschafft werden muss, gut und günstig', '2020-08-26', 0, 0, 0.5, 0.9);

INSERT INTO `gericht_hat_allergen` (`code`, `gericht_id`) VALUES
	('h', 1),	
	('a3', 1),	
	('a4', 1),	
	('f1', 3),	
	('a6', 3),	
	('i', 3),	
	('a3', 4),	
	('f1', 4),	
	('a4', 4),	
	('h3', 4),	
	('d', 6),	
	('h1',7),	
	('a2', 7),	
	('h3', 7),	
	('c', 7),	
	('a3', 8),	
	('h3', 10),	
	('d', 10),	
	('f', 10),	
	('f2', 12),	
	('h1', 12),	
	('a5',12),	
	('c', 1),	
	('a2', 9),	
	('i', 14),	
	('f1', 1),	
	('a1', 15),	
	('a4', 15),	
	('i', 15),	
	('f3', 15),	
	('h3', 15);

INSERT INTO `kategorie` (`id`, `eltern_id`, `name`, `bildname`) VALUES
	(1, NULL, 'Aktionen', 'kat_aktionen.png'),
	(2, NULL, 'Menus', 'kat_menu.gif'),
	(3, 2, 'Hauptspeisen', 'kat_menu_haupt.bmp'),
	(4, 2, 'Vorspeisen', 'kat_menu_vor.svg'),
	(5, 2, 'Desserts', 'kat_menu_dessert.pic'),
	(6, 1, 'Mensastars', 'kat_stars.tif'),
	(7, 1, 'Erstiewoche', 'kat_erties.jpg');

INSERT INTO `gericht_hat_kategorie` (`kategorie_id`, `gericht_id`) VALUES
	(3, 1),	(3, 3),	(3, 4),	(3, 5),	(3, 6),	(3, 7),	(3, 9),	(4, 16), (4, 17), (4, 18), (5, 16), (5, 17), (5, 18);

SHOW TABLES;

SELECT COUNT(*) AS allergen_amount FROM allergen;
SELECT COUNT(*) AS gericht_amount FROM gericht;
SELECT COUNT(*) AS gericht_hat_allergen_amount FROM gericht_hat_allergen;
SELECT COUNT(*) AS gericht_hat_kategorie_amount FROM gericht_hat_kategorie;
SELECT COUNT(*) AS kategorie_amount FROM kategorie;

/**
  alle Daten aller Gerichte
 */
SELECT * FROM gericht;

SELECT erfasst_am FROM gericht;

SELECT erfasst_am, name AS Gerichtname FROM gericht ORDER BY Gerichtname desc;

SELECT name, beschreibung FROM gericht ORDER BY name LIMIT 5;

SELECT name, beschreibung FROM gericht ORDER BY name LIMIT 5 OFFSET 5;

SELECT DISTINCT typ FROM allergen;

SELECT name FROM gericht WHERE name LIKE 'K%';

SELECT id, name FROM gericht WHERE name LIKE '%suppe%';

SELECT * FROM kategorie WHERE eltern_id IS NULL;

UPDATE allergen SET name = 'Kamut' WHERE code = 'a6';

INSERT INTO gericht (name, beschreibung, erfasst_am, vegetarisch, vegan, preis_intern, preis_extern)
VALUES ('Currywurst mit Pommes', 'Currywurst mit Pommes und Ketchunez','2020-08-23', 0, 0, 2, 3);
INSERT INTO gericht_hat_kategorie (gericht_id, kategorie_id) VALUES (21, 3);

SELECT * FROM gericht g INNER JOIN gericht_hat_allergen gha ON g.id = gha.gericht_id INNER JOIN allergen a ON a.code = gha.code;

SELECT * FROM gericht g LEFT JOIN gericht_hat_allergen gha ON g.id = gha.gericht_id LEFT JOIN allergen a ON a.code = gha.code;

SELECT * FROM gericht g RIGHT JOIN gericht_hat_allergen gha ON g.id = gha.gericht_id RIGHT JOIN allergen a ON a.code = gha.code;

SELECT kategorie.name AS name, COUNT(gericht.name) AS mealAmount FROM kategorie LEFT JOIN gericht_hat_kategorie ON
    kategorie_id = kategorie.id LEFT JOIN gericht ON gericht_id = gericht.id GROUP BY name ORDER BY mealAmount;

SELECT kategorie.name AS name, COUNT(gericht.name) AS mealAmount FROM kategorie LEFT JOIN gericht_hat_kategorie ON
        kategorie_id = kategorie.id LEFT JOIN gericht ON gericht_id = gericht.id GROUP BY name HAVING mealAmount > 2 ORDER BY mealAmount;

SELECT gericht.id, gericht.name, COUNT(allergen.name) AS amount, GROUP_CONCAT(gericht_hat_allergen.code) AS codes FROM gericht
    LEFT JOIN gericht_hat_allergen ON gericht.id = gericht_hat_allergen.gericht_id INNER JOIN allergen ON gericht_hat_allergen.code = allergen.code
GROUP BY gericht.name HAVING amount > 3 ORDER BY amount;

SELECT * FROM pages;

CREATE TABLE wunschgericht (
                               id INT8 PRIMARY KEY AUTO_INCREMENT,
                               name VARCHAR(80) NOT NULL,
                               beschreibung VARCHAR(80) NOT NULL,
                               datum DATE NOT NULL
);

CREATE TABLE ersteller (
                           name VARCHAR(80) NOT NULL,
                           mail VARCHAR(80) NOT NULL,
                           besitzt_wg INT8 NOT NULL REFERENCES wunschgericht(id)
);

ALTER TABLE ersteller
    ALTER name SET DEFAULT 'anonym';