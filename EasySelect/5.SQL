SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- The STATION table is described as follows:

The distinct keyword is not used anywhere other than the selct statement. 

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
-- The STATION table is described as follows:

I wanted the diffrence of the count. my original query below did not do that. 

SELECT CITY
FROM STATION
WHERE CITY - DISTINCT CITY
;