SELECT category, 
   price,
   AVG(downloads)
FROM fake_apps
GROUP BY category, price
ORDER BY 1;

-- You can order by column number i nrefrence to what the position of the columns are. 
-- 1 is id beacuse that's the first column 
-- 2 is the name becuae that's the second column 

-- When you do this you're makign sure there are no duplicate values for both category and price. 

-- https://www.codecademy.com/learn/learn-sql/modules/learn-sql-manipulation/cheatsheet
here is the cheat sheet 