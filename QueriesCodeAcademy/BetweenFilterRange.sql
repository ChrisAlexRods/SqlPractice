SELECT * 
FROM movies 
WHERE name BETWEEN 'D' AND 'G';

-- So the between is similar to the range of two values within the column. 
-- Just like the python range, it odesn't include the last value. 
-- Ex: if i want all the values between D and F. The between statement is  'D' AND 'G';
-- Because F isn't included i have to go to the next letter. 

SELECT * 
FROM movies 
WHERE year BETWEEN 1970 AND 1979;

-- Becuase it's numbers it includes the number?
