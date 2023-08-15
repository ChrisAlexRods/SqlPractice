# Write your MySQL query statement below
SELECT DISTINCT salary AS SecondHighestSalary
FROM Employee 
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- The DISTINCT ensure only unique calues are returned. NO DUPES 

-- Limit 1 is saying only one row is being returned

-- OFFEST 1 is saying to skip one row. 

-- This partially works but does not handle the null edge case. 

SELECT 
    IFNULL(
        (SELECT DISTINCT salary 
         FROM Employee 
         ORDER BY salary DESC 
         LIMIT 1 OFFSET 1), 
    NULL) AS SecondHighestSalary;

-- So the addiiotnal SELECT is used because Becuase the subquery select gets 
-- the second salary, but when there is a null we don't have anything.
-- So we need another SELECT to handle the null edge case 

-- IFNULL checks the value of first parameter. If it's not null, it 
-- return the value of the first parameter. If it is null returns the second value. 

-- The SecondHighestSalary; on the outside is because reagrdless of what happens
-- the column needs to be called SecondHighestSalary;

The additional SELECT:

The inner SELECT (subquery) aims to retrieve the second-highest salary.
However, in scenarios where there isn't a second-highest salary (like when there's only one distinct salary), the subquery will return no rows, effectively yielding a NULL for the context of the outer query.
IFNULL:

It's a conditional function that checks the first parameter.
If the first parameter is not NULL, it returns that value.
If the first parameter is NULL, it returns the second parameter.
AS SecondHighestSalary:

This is used to name the resulting column in the output as SecondHighestSalary.
It's outside the parentheses because you want the entire result (either the second-highest salary or NULL) to have this name in the resulting dataset.
Your understanding is correct!

https://leetcode.com/problems/second-highest-salary/?envType=list&envId=e97a9e5m