-- Active: 1747835496638@@127.0.0.1@5432@ph

SELECT * FROM students;

-- # GROUP BY - split, combine, apply

-- count how many students each country
SELECT country, count(*) AS Country_Students from students
    GROUP BY country;

-- sum of each country students all age
SELECT country,sum(age) from students
    GROUP BY country;

-- min age from each country students

SELECT country,min(age) from students


-- HAVING

SELECT country, count(*) from students
    GROUP BY country
        HAVING count(*) > 1;


SELECT country, round(avg(age)) from students
    GROUP BY country
        HAVING avg(age) < 40;



-- task - 1 
SELECT country, round(avg(age)) FROM students
    GROUP BY country
        HAVING avg(age) > 22;

-- task - 2
SELECT dob AS Dath_Of_Birth, count(*) AS Students from students
    GROUP BY dob;

SELECT EXTRACT(YEAR from dob), count(*) FROM students
    GROUP BY EXTRACT(YEAR from dob);




-- Summary:
-- - Use `GROUP BY` when you need to **summarize or categorize data.
-- - Use `HAVING` when you want to **filter those categories based on aggregates.




