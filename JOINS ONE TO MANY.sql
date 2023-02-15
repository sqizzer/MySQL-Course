SELECT
	first_name, 
    IFNULL(AVG(grade), 0) AS average,
    CASE
		WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
        ELSE 'failing'
    
    END AS 'pas/smash'
FROM students
LEFT JOIN papers ON papers.student_id = students.id
GROUP BY(first_name)
ORDER BY average DESC

