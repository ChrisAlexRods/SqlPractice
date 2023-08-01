SELECT * 
FROM newspaper 
UNION 
SELECT * 
FROM online;

-- table1:

-- pokemon	type
-- Bulbasaur	Grass
-- Charmander	Fire
-- Squirtle	Water

-- table2:

-- pokemon	type
-- Snorlax	Normal

-- If we combine these two with UNION:

-- SELECT *
-- FROM table1
-- UNION
-- SELECT *
-- FROM table2;
-- The result would be:

-- pokemon	type
-- Bulbasaur	Grass
-- Charmander	Fire
-- Squirtle	Water
-- Snorlax	Normal

SQL has strict rules for appending data:

Tables must have the same number of columns.
The columns must have the same data types in the same order as the first table.