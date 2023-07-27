SELECT COUNT(*)
from fake_apps;

-- We wrap the asterik with COUNT() to return how many rows are in table. 

SELECT COUNT(*)
FROM fake_apps
WHERE price = 0;

-- For this we are returning the number of free apps in the table. 
-- The mistake i made during this was adding another ; 