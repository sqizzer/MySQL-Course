-- Good use for char is when working with fixed data, for example zip code
-- CREATE TABLE inventory(
-- 	item_name VARCHAR(50),
--     price DECIMAL(5,2),
--     quantity INT
--     );
-- Timestamp uses less memory and has different timerange
-- SELECT CURTIME()
-- SELECT CURDATE()
-- SELECT DAYOFWEEK(CURDATE());
-- SELECT DAYNAME(CURDATE())
-- SELECT CONCAT(
-- 	MONTH(CURDATE()),
--     '/',
-- 	DAY(CURDATE()),
--     '/',
-- 	YEAR(CURDATE()),
--     ' ',
--     TIME(CURTIME()))
--     AS date

-- SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y')

SELECT CONCAT(
MONTHNAME(CURDATE()),
' ',
DATE_FORMAT(CURDATE(),'%D'),
' at',
' ',
DATE_FORMAT(CURRENT_TIME, '%H:%i'))
AS date

-- CREATE TABLE tweets (
-- content VARCHAR(150),
-- Username VARCHAR(20),
-- Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP)

-- INSERT INTO tweets(content, Username) VALUES
-- ('this is my first tweet', 'Sqizzer')
-- SELECT*FROM tweets
    
        

