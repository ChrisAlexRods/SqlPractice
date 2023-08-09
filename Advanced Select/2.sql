-- Query the alphabetically ordered list of all names in OCCUPATIONS, followed by the first letter of each profession
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS FormattedName
FROM OCCUPATIONS
ORDER BY Name;

-- So concat gets rid of the space between the string so it smushes together.
-- I had the general layout of how the string worked, just the spacing was off  
-- The AS FormattedName is optional, but useful to calrify. 

-- Query the number of occurrences of each occupation in OCCUPATIONS
SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.') AS Occupation_Count
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation ASC;

This first line is simialr than the last, but it's a senetence rather than parenthesis 
The lower line is there to make sure that the the occupation is lowered for 
the second query. 

We used GROUP BY  to group rows that have the saem values in the 
specified columns. It's usually used with COUNT, SUM, AVG.

In our case the OCCUPATIONS table are being grouped by the 
values in the Occupation column. 
This means that all rows with the same occupation will be grouped 
together, and the COUNT(Occupation) expression will count the number 
of rows in each group, effectively giving you the count of occurrences 
for each occupation.