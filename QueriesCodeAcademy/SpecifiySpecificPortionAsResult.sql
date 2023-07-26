SELECT * 
FROM movies 
WHERE name LIKE 
'%man%';

SELECT * 
FROM movies 
WHERE name LIKE 
'the %';

-- This statement is saying return all names with the word man in them. BATMAN superman(not case sensitive)
-- When you put the percent sign after the word, it means it starts with the word the
-- If you put it at the start % the, then it's movies that end with "the"