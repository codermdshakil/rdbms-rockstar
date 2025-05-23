-- Active: 1747835496638@@127.0.0.1@5432@ph

SELECT country from students;

-- OR

SELECT country from students
    WHERE country = 'India' OR country = 'Nepal';


-- IN

SELECT country from students
    WHERE country IN('India', 'Bangladesh');

SELECT country from students
    WHERE country NOT IN('India');


-- BETWEEN

SELECT age from students
    WHERE age BETWEEN 20 AND 22;


SELECT country from students
    WHERE country BETWEEN 'India' AND 'Nepal';


-- LIKE

SELECT * from students;

SELECT * FROM students
    WHERE fist_name LIKE 'A%';

-- ILIKE 
SELECT * FROM students
    WHERE fist_name ILIKE '%a%';


-- Summary
-- OR – One or the other must be true.
-- AND – Both conditions must be true.
-- IN – Checks if a value is in a list.
-- BETWEEN – Checks if a value is within a range.
-- LIKE – Matches a pattern (case-sensitive).
-- ILIKE – Matches a pattern (not case-insensitive).
