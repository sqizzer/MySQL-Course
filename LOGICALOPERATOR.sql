-- SELECT * FROM books
-- WHERE released_year < 1980

-- SELECT title, author_lname, released_year FROM books
-- WHERE author_lname = 'Lahiri'
-- AND released_year > 2000

-- SELECT title, pages FROM books
-- WHERE pages BETWEEN 100 AND 200

-- Select title, author_lname FROM books
-- WHERE author_lname LIKE 'S%'
-- OR author_lname LIKE'C%'

-- SELECT title, author_lname FROM books
-- WHERE SUBSTR(author_lname, 1, 1) in ('C', 'S')

-- SELECT title, author_lname,
-- CASE
-- 	WHEN title LIKE '%stories%' THEN 'short stories'
--     WHEN title = 'Just Kids' or title LIKE '%A Heartbreaking Work%' Then 'Memoir'
--     ELSE 'Novel'
-- END AS TYPE
-- FROM books;

SELECT author_fname, author_lname, COUNT(title),
	CASE
		WHEN COUNT(title) = 1 THEN COUNT(title) = '1 book'
        ELSE CONCAT(COUNT(title),' books')
    END
AS COUNT
FROM books
GROUP BY author_fname, author_lname

