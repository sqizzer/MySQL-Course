-- CREATE TABLE shirts
-- (
-- shirt_id INT AUTO_INCREMENT PRIMARY KEY,
-- article VARCHAR(15),
-- color VARCHAR(15),
-- shirts_size VARCHAR(5),
-- last_worn INT
-- );

-- INSERT INTO shirts(article, color, shirts_size, last_worn) VALUES
-- 	('t-shirt', 'white', 'S', 10),
-- 	('t-shirt', 'green', 'S', 200),
-- 	('polo shirt', 'black', 'M', 10),
-- 	('tank top', 'blue', 'S', 50),
-- 	('t-shirt', 'pink', 'S', 0),
-- 	('polo shirt', 'red', 'M', 5),
-- 	('tank top', 'white', 'S', 200),
-- 	('tank top', 'blue', 'M', 15);

-- INSERT INTO shirts (article, color, shirts_size, last_worn)
-- VALUES ('polo shirt','purple', 'M', 50);

DELETE FROM shirts WHERE last_worn = 200;
DELETE FROM shirts WHERE article = 'tank top';
DELETE FROM shirts;
DROP TABLE shirts;
SELECT * FROM shirts;


