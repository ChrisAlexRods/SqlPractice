Write a query identifying the type of each record in the TRIANGLES 
table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.


SELECT 
  CASE 
    WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
    ELSE 'Scalene'
  END AS Triangle_Type
FROM TRIANGLES;

-- CASE is used to for a series of conitions. In this case the 3 triangles and one null. 
-- Then each case is a when statemenet relevant to the specific triangle. 
-- The END finishes the expression. We give it the alias Triangle_Type so that;s the new column name 
-- And we finish with the FROM statement. 
