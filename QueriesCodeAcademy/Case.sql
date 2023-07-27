SELECT name,
    CASE 
        WHEN genre = 'romance' THEN 'Chill'
        WHEN genre = 'comedy' THEN 'Chill'
        ELSE 'Intense'
    END AS "MOOD"
FROM movies;


-- SQL version of a if then statement 
-- WE start with the select statemnt of what we want. 
-- The CASE and END statments 
-- Then the when/then statements and the end statement. 
-- When we did END AS "MOOD", we do that to change the name becuase the column name is huge 
-- so we shorten it to jsut mood 