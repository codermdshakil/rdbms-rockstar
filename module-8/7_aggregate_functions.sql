-- Active: 1747835496638@@127.0.0.1@5432@ph


-- Aggregate Functions
-- | Function                 | Description                       |
-- | ------------------------ | --------------------------------- |
-- | COUNT()                | Returns the number of rows        |
-- | SUM()                  | Returns the total sum             |
-- | AVG()                  | Returns the average value         |
-- | MIN()                  | Returns the minimum value         |
-- | MAX()                  | Returns the maximum value         |
-- | GROUP_CONCAT() (MySQL) | Concatenates values into a string |
-- | STDDEV()               | Returns standard deviation        |
-- | VARIANCE()             | Returns the variance              |


-- 1. COUNT()   
-- SELECT count(*) as total_student from students; -- 20

-- 2. SUM()
-- SELECT sum(age) from students; -- 402


-- 3. AVG()
-- SELECT avg(age) from students;

-- 4. MIN()
-- SELECT min(age) FROM students; -- 18

-- 5. MAX()
-- SELECT max(age) FROM students;


-- find max length of students name
-- SELECT max(length(fist_name)) from students;



-- Show all table data
SELECT * FROM students;



-- Summary
-- | Function  | Simple Meaning                     
-- | --------- | ---------------------------------- 
-- | `SUM()`   | Adds all values together           
-- | `MIN()`   | Finds the smallest value           
-- | `MAX()`   | Finds the largest value            
-- | `AVG()`   | Calculates the average             
-- | `COUNT()` | Counts the number of rows or items 






