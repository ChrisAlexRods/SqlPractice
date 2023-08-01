SELECT * 
FROM newspaper 
LEFT JOIN online 
  ON newspaper.id = online.id;

-- This is returning all the newpaper subscribe to the print but not online.

SELECT * 
FROM newspaper 
LEFT JOIN online 
  ON newspaper.id = online.id
  WHERE online.id IS NULL;

-- For this query we want to show the users who do not subscribe to the online edition

-- SQL lets us do this through a command called LEFT JOIN. 
-- A left join will keep all rows from the first table, regardless
--  of whether there is a matching row in the second table.