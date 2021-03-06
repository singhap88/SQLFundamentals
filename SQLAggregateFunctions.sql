---Using count and AS functions to return a number of the selected movies and alias it as a separate column

SELECT COUNT(*) AS 'total_movies', rating 
FROM movies 
GROUP BY 2 
ORDER BY 1;

--- Using SUM fucntion to retrieve aggregate value of numbers in a column

SELECT SUM(salary)
FROM salary_disbursement;

--- Using MAX function to retreieve largest value in a specified column

SELECT MAX(amount) 
FROM transactions;

--- Using MIN function to retreieve smallest value in a specified column

SELECT MIN(amount) 
FROM transactions;

--- Using AVG function to retrieve the mean value in a column

SELECT AVG(salary)
FROM employees
WHERE experience < 5;

--- Using the HAVING clause to further fiter a group of results of an aggregated property

SELECT year, 
   COUNT(*) 
FROM movies 
GROUP BY year
HAVING COUNT(*) > 5;

--- Using the ROUND function to round the number to a set amount of decimal places

SELECT year, 
   ROUND(AVG(rating), 2) 
FROM movies 
WHERE year = 2015;