SELECT 
  MAX(CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END) AS Doctor,
  MAX(CASE WHEN Occupation = 'Professor' THEN Name ELSE NULL END) AS Professor,
  MAX(CASE WHEN Occupation = 'Singer' THEN Name ELSE NULL END) AS Singer,
  MAX(CASE WHEN Occupation = 'Actor' THEN Name ELSE NULL END) AS Actor
FROM (
  SELECT Occupation, Name,
         ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS Row
  FROM OCCUPATIONS
) SubQuery
GROUP BY Row;

Each profession is being turned into its column 

The PARTITION BY is dividing the groups based on occupation 
ORDER BY NAME orders the name alphabetically 
ROW_NUMBER() OVER: Assigns a unique row nubmer to each name 

MAX(CASE WHEN) AS Uses this expression to transform the occupation
group into seperate columns

CASE WHEN Occupation = 'Doctor' THEN Name ELSE NULL END. 
This checks if the occupation is DOCTOR. if it is, return the name, 
otherwise null 

MAX(...) AS DOCTOR This takes the Maximum value 