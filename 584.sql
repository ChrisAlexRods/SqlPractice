SELECT name FROM Customer  
WHERE referee_id != 2 or referee_id is NULL
#So the name and cutomer are easy 
#The where statements s taken from example 1 
# != is so it returns everything that's not equal to 2 
#The is null is an adge case that deals with the null 
#We are using the referee_id because we want to report the names of 
the customer that are not referred by the customer with id = 2