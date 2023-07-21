# Write your MySQL query statement below
SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id 
ORDER BY id;
#I got it mostly right. I had to specify distinct becuase the author could've veiwed their own article multiple times. In the example author id 4 veiwed his article twice. 

#So the the article is not spammed by multiple instances. i used the DISTINCT keyword 

#The author_id AS is was a result of the question saying ""Return the result table sorted by id in ascending order.""