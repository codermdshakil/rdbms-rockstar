-- Active: 1747835496638@@127.0.0.1@5432@ph

CREATE Table students(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER NOT NULL
);
 
--  insert data
-- INSERT INTO students(id, name, age) VALUES(2, 'shakil', 21);
-- INSERT INTO students VALUES(3, 'noyon', 22);

INSERT INTO students VALUES(4, 'asraf', 22), (5,'mahfuj', 22), (6, 'samiul', 23);


-- add column
ALTER TABLE students
    ADD COLUMN email VARCHAR(55) DEFAULT 'd@gmail.com';

INSERT INTO students VALUES(7, 'lalmia', 54, 'lalmia@gmail.com');

-- delete column
ALTER Table students
    DROP COLUMN email;


-- rename 
ALTER Table students
    RENAME COLUMN name to user_name;


-- rename 
ALTER Table students
    RENAME COLUMN age to user_age;


-- update constraints
ALTER Table students
    ALTER COLUMN user_age TYPE VARCHAR(20);

-- add constraints
ALTER Table students
    ALTER COLUMN user_age set NOT NULL;


-- remove constraints
ALTER Table students
    ALTER COLUMN user_age DROP NOT NULL;

-- delete table
DROP Table students;



SELECT * FROM students;



