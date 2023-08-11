# Write your MySQL query statement below
SELECT tweet_id
FROM Tweets 
WHERE LENGTH(content) > 15;

#To see how many characters are in a certain field wrap the column with the LENGTH keyword 
#From there read the question. I did less the 15 characters when it should've been more than 15. 