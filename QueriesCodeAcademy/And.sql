SELECT * 
FROM movies 
WHERE year BETWEEN 1970 and 1979
AND imdb_rating > 8;

-- And is used to specify another conidtion. 

SELECT * 
FROM movies 
WHERE year < 1985 
AND genre = "horror"

-- For this query we wanted all movies before 1985 that are horror 
-- i got stuck in the where statement where i tried to put movie isntead of year. 