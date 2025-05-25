-- Active: 1747835496638@@127.0.0.1@5432@ph

CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE department(
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES(1, 'John Doe', 101),(2, 'Jane Smith', 102);

INSERT INTO department VALUES(101, 'HR'), (102, 'Marketing');


-- CROSS JOIN
SELECT * FROM employees
CROSS JOIN department;

-- NATURAL JOIN
-- Must be one common column
-- First apply CROSS JOIN
-- Second just keep common column data


SELECT * FROM employees
NATURAL JOIN department;





SELECT * FROM employees, department;

SELECT * FROM department;

-- Summary:

-- INNER JOIN ->	Returns only matching rows from both tables.
-- LEFT JOIN ->	All rows from left table + matching from right.
-- RIGHT JOIN ->	All rows from right table + matching from left.
-- FULL JOIN ->	All rows from both tables (match or not).
-- CROSS JOIN ->	All combinations (cartesian product) of both tables.
-- NATURAL JOIN	 ->Auto-joins tables using common column(s) by name.


