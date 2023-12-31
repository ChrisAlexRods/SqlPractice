SELECT ROUND(price, 0)
FROM fake_apps;

-- For this one we are rounding to values in the column to 0 decimal places

-- ROUND() function takes two arguments inside the parenthesis:

-- a column name
-- an integer
-- It rounds the values in the column to the number of decimal places specified by the integer.

SELECT name, ROUND(price,0)
FROM fake_apps;

-- For this query we are returning the name and the rounded price. 

SELECT ROUND(AVG(price), 2)
FROM fake_apps;

-- For this one we wanted to round all the averages for the price to the second decimal place. 
-- Becuase we have avg nested in the round statement, we can add a comma and the decimal palce number.