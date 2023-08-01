SELECT *
FROM classes 
JOIN students 
  ON classes.id = students.class_id;

-- For this we have the primary keys from both tables. id and class_id. 
-- The students tables contains the ofreign key class_id which corresponds with the priamry key of classes. 

-- Each of these tables has a column that uniquely identifies each row of that table:
--   - order_id for orders
--   - subscription_id for subscriptions
--   - customer_id for customers
-- These special columns are called primary keys.

-- When the primary key for one table appears in a different table, it is called a foreign key.