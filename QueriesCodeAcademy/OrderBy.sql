SELECT name, year
FROM movies
ORDER BY name;

-- Here we are ordering aplhabetically because the name column is text. 

SELECT name, year, imdb_rating  
FROM movies 
ORDER BY imdb_rating DESC;

-- The question asked to order the table by the imdb ratings 
-- SO THE ORDER IS NOT NAME BUT THE IMDB RATING


-- We can sort the results using ORDER BY, either alphabetically 
-- or numerically. Sorting the results often makes the data more useful and easier to analyze.

-- DESC is a keyword used in ORDER BY to sort the results in descending order (high to low or Z-A).

-- ASC is a keyword used in ORDER BY to sort the results in ascending order (low to high or A-Z).