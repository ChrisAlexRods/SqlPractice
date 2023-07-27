SELECT * 
FROM movies 
WHERE year > 2014
OR genre = 'action';

-- SImialr to and, or only needs one of them to be true 

SELECT * 
FROM movies 
WHERE genre = "romance" OR genre = "comedy"

-- For this statement we want all movies that are romance or comedies 