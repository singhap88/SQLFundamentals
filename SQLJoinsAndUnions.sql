--- Using inner join to join authors on the id column

SELECT * 
FROM books
JOIN authors
  ON books.author_id = authors.id;

--- Using the left join to join table 1 and table 2 on specifeid column name

SELECT *
FROM employees
LEFT JOIN worker_records
  ON employees.id = worker_records.id;


--- Using the right join to join table 1 and table 2 on specifeid column name

SELECT *
FROM employees
RIGHT JOIN worker_records
  ON employees.id = worker_records.id;
  
  
--- Using union operator to combine the result-set of two or more SELECT statements

SELECT name
FROM first_names
UNION
SELECT name
FROM last_names


--- Using the UNION ALL operator to allow for duplicate values in the result:

SELECT name FROM first_names
UNION ALL
SELECT name FROM last_names;


--- Using  WITH clause to allow for nested sub-queries

WITH temporary_movies AS (
   SELECT *
   FROM movies
)
SELECT *
FROM temporary_movies
WHERE year BETWEEN 2000 AND 2020