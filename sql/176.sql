# Write your MySQL query statement below
SELECT DISTINCT salary AS SecondHighestSalary
FROM Employee 
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- The DISTINCT ensure only unique calues are returned. NO DUPES 

-- Limit 1 is saying only one row is being returned

-- OFFEST 1 is saying to skip one row. 

-- This partially works but does not handle the null edge case. 





https://leetcode.com/problems/second-highest-salary/?envType=list&envId=e97a9e5m