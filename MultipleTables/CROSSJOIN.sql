SELECT COUNT(*)
FROM newspaper 
WHERE start_month <= 3 and end_month >= 3;

-- Staring off with a conditional statemnt. 
SELECT *
FROM newspaper 
CROSS JOIN months;

-- This is the crossjoin. Combining all the columns from each table into one table. 

SELECT *
FROM newspaper 
CROSS JOIN months
WHERE start_month <= month AND end_month >= month;

-- Still a cross join, but now we are adding 2 conditions with the WHERE statement. 

SELECT month, 
  COUNT(*)
FROM newspaper 
CROSS JOIN months 
WHERE start_month <= month AND end_month >= month
GROUP BY month;

-- Create a final query where you aggregate over each month to count the number of subscribers.