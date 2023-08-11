# Write your MySQL query statement below
SELECT e.name, eu.unique_id
FROM Employees e
LEFT JOIN EmployeeUNI eu ON e.id = eu.id;

-- # SELECT Employees.name, EmployeeUNIunique_id
-- # FROM Employees
-- # LEFT JOIN EmployeeUNI ON Employees.id EmployeeUNI.id;

-- #For the aliases. They are nickenames to shorten the full names. First line e is employess while eu is EmployeeUNI.

-- #When picking a column it's talble name + . + column name 

-- #For the left join returns all records from the left table(employee's) and match the records from the right table(employeeuni) 

-- #FROM Employees e specify the tables we want to select from and give it the alias e.

-- #LEFT JOIN EmployeeUNI eu ON e.id = eu.id. For the query we are joining EmployeeUNI which is eu. on the condition that id from emloyees matches the id from eu.

-- #Because it's a left join, if there are no matches, it will return NULL> 