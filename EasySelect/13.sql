Query the Name of any student in STUDENTS who scored higher than  Marks. 
Order your output by the last three characters of each name. If two or more 
students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
secondary sort them by ascending ID.

SELECT Name 
FROM STUDENTS 
WHERE Marks > 75
ORDER BY RIGHT(Name,3)ASC,ID ASC

-- WHERE is what we used to filter by score. 
-- Whereas the ORDER BY Statement 
--     RIGHT(Name,3) function extracts the last three characters from the Name column. 
--     The ASC keyword means that the query will order the results in ascending order based on these last three characters. 
--     ID ASC: This is the secondary sort. If the last three characters of two or more names are the same 
--     (as in the 'Roberto' and 'Alberto' example), those rows are then sorted by the ID column in ascending order.