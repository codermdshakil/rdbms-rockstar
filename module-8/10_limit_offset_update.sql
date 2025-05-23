-- Active: 1747835496638@@127.0.0.1@5432@ph

SELECT * FROM students
    OFFSET 3
    LIMIT 5; -- show data from 4 to 8 total 5;

-- Pagination data get fumula
SELECT * FROM students
    LIMIT 5 OFFSET 5*2;


SELECT * FROM students;

-- UPDATE
UPDATE students
    SET age = 40
        WHERE student_id = 6


-- Summary

-- LIMIT – Restricts the number of rows returned.
-- OFFSET – Skips a number of rows before starting to return results.
-- UPDATE – Modifies existing records in a table.