SELECT price, 
   ROUND(AVG(downloads)),
   COUNT(*)
FROM fake_apps
GROUP BY price
HAVING COUNT(name) > 10;

-- HAVING is similar to where. You can filter a group query whereas WHERE only works on columns. 
-- So if you have the GROUP BY and COUNT tag, you can filter so it on;y shows movie with a count greater than 10.