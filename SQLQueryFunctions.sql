--- Selecting group of results with a query and using AS function to alias the results

SELECT imdb_rating AS 'reviews'
FROM movies;


--- Querying all of the unique years included in the database

SELECT DISTINCT year
FROM movies;

--- Query using the WHERE operator to only include results that occurred after the year 2010

SELECT *  
FROM movies
WHERE year > 2010;

--- Query that utilizes the LIKE operator to include movie titles that contain the specified characters

SELECT *
FROM movies
WHERE name LIKE 'Se_en';

--- The query will match any movie that begins with 'The' and are followed by any other characters

SELECT *
FROM movies
WHERE name LIKE 'The%';


--- Using the query to select the names of movies where the rating values are null

SELECT name 
FROM movies
WHERE imdb_rating IS NULL;

--- Selecting the names of movies where the rating field is not null


SELECT name 
FROM movies
WHERE imdb_rating IS NOT NULL;

--- Selecting all movies where year is between 1990 and 2000
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 2000;

--- Using AND operator to choose items in the database that fit two different criteria at once

SELECT *
FROM movies
WHERE year < 1985
  AND genre = 'horror';

--- Using OR operator to choose items in the database that fit at least one of the two criteria

SELECT *
FROM movies
WHERE genre = 'romance' 
  OR  genre = 'comedy';


--- Using the ORDER BY operator to sort by specific column in reverse descending order
SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC;


--- Using the ORDER BY operator to sort by specific column in reverse descending order but limiting to the top 3 results
SELECT * 
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;

--- Using Case function to set parameters on certain genres 

SELECT name,
  CASE
    WHEN genre = 'romance' THEN 'Chill'
    WHEN genre = 'comedy' THEN 'Chill'
    ELSE 'Intense'
  END AS 'Mood'
FROM movies;