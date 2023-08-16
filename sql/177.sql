CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
    SELECT DISTINCT(salary) FROM Employee 
    ORDER BY salary DESC
    LIMIT 1 OFFSET N
  );
END



The first line 
- defining function getNthHighestSalary
- Function takes parameter N of type INT 
- Function does return an INT

Begin/End statement 
- wrap the body of the function. This is where you put you operations 

SET N = N-1: 
- We decrements the value of "N" by 1 
- This is so we adjust the value of N for the subsequent OFFSET statement 

-- In SQL:

-- OFFSET 0 means "don't skip any rows"
-- OFFSET 1 means "skip the first row"
-- When we want the 1st highest salary, we don't want to skip any rows, 
-- so we need OFFSET 0. But for the 2nd highest salary, we want to skip 
-- the first (highest) salary, so we need OFFSET 1.

-- By reducing N by 1 (SET N = N-1;), we match the passed number to the
--  right OFFSET. So, N=1 becomes OFFSET 0, and N=2 becomes OFFSET 1, and 
--  so on.

Get more noted from 176

SELECT DISTINCT(salary) FROM Employee 
ORDER BY salary DESC
LIMIT 1 OFFSET N

We want to show the employee salary limited by one(only one result)
Offset N is being used in conuction with N-1: to get the nth salary