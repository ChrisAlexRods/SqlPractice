WITH previous_query AS (
   SELECT customer_id,
      COUNT(subscription_id) AS 'subscriptions'
   FROM orders
   GROUP BY customer_id
)
SELECT customers.customer_name, 
   previous_query.subscriptions
FROM previous_query
JOIN customers
  ON previous_query.customer_id = customers.customer_id;

the WITH keyword in this statment is creating a CTE called previous_query
Which summarizes the number of subscriptions per customer from the orders table. . 


-- The WITH clause starts the query by creating a CTE called previous_query.
-- Within this CTE, it groups the orders table by customer_id and counts the number of subscription_ids for each customer_id, which gives the number of subscriptions each customer has.
-- After the CTE is defined, it's used in the main SELECT query where it's joined with the customers table on the customer_id field.
-- The main SELECT query then returns the customer names from the customers table and the corresponding subscription counts from the previous_query CTE.
-- So, the main advantage of WITH here is to create a summarized version of the orders table, which can be easily combined with the customers table to give the final desired result.
