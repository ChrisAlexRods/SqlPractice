Query the list of CITY names starting with vowels 
(i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[AEIOUaeiou]'

-- For this question i used a new expression REGEXP. 
-- ^ is used to represent the start of the string 
-- the values in the [] are all the vowels.
