SELECT firstName, lastName, city, state 
FROM Person
LEFT JOIN Address ON Person.personId = Address.personId;

-- The select statement works becuase they are unique to each table. 
-- So SQL Knows where each column is from. 

-- The statement should be broken down, becuase the FROM and join 
-- statemnet are actually joining the two tables. 

-- Left join is combining the Person and Adress tables based 
-- on the personId column. 

-- LEFT JOIN: returns all rows from the left table(PERSON) along
-- with matching tables from the right table(Adress)
--     if there's no match the result is NULL for the right side
--     We start with the Person.personId becasue that's what's being 
--     left joined. 