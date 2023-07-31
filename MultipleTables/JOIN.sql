SELECT *
FROM orders 
JOIN subscriptions 
  ON orders.subscription_id = subscriptions.subscription_id

-- So we joined the order table and subscription table. 
-- We specify which column name we want matched with the table name 
-- EX: orders.subscription_id and subscriptions.subscription_id

SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description = 'Fashion Magazine';

-- This is the first real join query i have. 
-- So we want to join the subscription_id from the order and subscriptions table. 
-- But, we take it one step further by filteing the subscriptions.description to equal fashion magazine as the prompt indicated
