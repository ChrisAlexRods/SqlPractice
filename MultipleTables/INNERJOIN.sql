SELECT COUNT(*) 
FROM newspaper;

SELECT COUNT(*)
FROM online;

SELECT COUNT(*)
FROM newspaper 
JOIN online 
  ON newspaper.id = online.id; 

-- We are combining the two tables, but we want the id columns from both tables to be the joining point.
-- Meaning that we get the reaminding parts of both table combind on the id column. 