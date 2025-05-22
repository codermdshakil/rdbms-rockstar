-- Active: 1747835496638@@127.0.0.1@5432@ph

-- SELECT country from students ORDER BY country ASC;

-- using distinct get unique values
-- SELECT DISTINCT country from students;

-- 1 : Select students from India

SELECT * from students
    WHERE country = 'India';

-- 2: Select students with a grade with Mathematics
SELECT * from students
    WHERE grade = 'A' AND course = 'Mathematics';

-- 3: Select students with specific blood group A+
SELECT fist_name, blood_group  FROM students
    WHERE blood_group = 'A+';


-- 4: Select students from India or Bangladesh

SELECT fist_name, country from students 
    WHERE country = 'India' OR country = 'Bangladesh';


-- 6: Select students from Bangladesh or India and age 20
SELECT fist_name, country, age from students 
    WHERE country = 'India' OR country = 'Bangladesh' AND age = 20;

-- 7: select students who are older then 20

SELECT fist_name,age FROM students
    WHERE age >= 20
    ORDER BY age DESC;

-- 8: select students those are not from bangladesh
SELECT fist_name, country from students
    WHERE country != 'Bangladesh';








