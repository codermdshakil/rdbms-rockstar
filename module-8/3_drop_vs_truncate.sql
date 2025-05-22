-- Active: 1747835496638@@127.0.0.1@5432@ph

-- DROP - permanently delete the table and its structure. 
DROP Table person5;

-- TRUNCATE -  clear all rows from a table but keep the table and its structure. 
TRUNCATE Table person5;



-- show table structure + data
SELECT * FROM person5;

-- Drop vs Truncate
-- DROP     -> permanently delete the table and its structure. 
-- TRUNCATE -> clear all rows from a table but keep the table and its structure. 
