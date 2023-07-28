SELECT price, COUNT(*)
FROM fake_apps
GROUP BY price;

-- Here we are grouping the count for all the individual prices. 
-- Instead of a where statement for each price, GROUP by does that or us.

-- GROUP BY is a clause in SQL that is used with aggregate functions. It is used in collaboration 
-- with the SELECT statement to arrange identical data into groups.

SELECT price, COUNT(*)
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

-- The GROUP BY statement comes after any WHERE statements, but before ORDER BY or LIMIT.

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;

For this we wanted a query that calculated the total number of downlaods for each category. 
We put category and sum(downlaod) to show what we want to be seen.
Then we group by category .

-- GROUPING BY CATEGORY IS SAYING THAT want to groups by category without duplicates. 