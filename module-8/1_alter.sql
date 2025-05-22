-- Active: 1747835496638@@127.0.0.1@5432@ph

-- add a column named email
-- ALTER TABLE person2 
--     ADD COLUMN email VARCHAR(50) DEFAULT 'default@gmail.com' NOT NULL;


-- insert multiple value using comma 
-- INSERT INTO person2 VALUES(9, 'Mia', 42, 'malek@gmail.com'), (10, 'selam', 45, 'selam@gmail.com');


-- drop or deleted a column named email
-- ALTER Table person2
--     DROP COLUMN email;


-- age rename to userAge
-- ALTER Table person2 
--     RENAME COLUMN userage to user_age


-- type update
-- ALTER Table person2
--     ALTER COLUMN username TYPE VARCHAR(55);


-- add constraint
-- ALTER Table person2
--     ALTER COLUMN user_age set NOT NULL;

-- -- remove constraint
-- ALTER Table person2
--     ALTER COLUMN user_age DROP NOT NULL;

 
-- show table data
-- SELECT * from person2;


-- drop TABLE person2;

CREATE Table person5(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    user_age INTEGER
)

INSERT INTO person5 VALUES(1, 'shakil', 21), (2, 'nadim', 22), (3, 'noyon', 23);


-- add constraint
ALTER Table person5
    ADD constraint unique_person5_user_age UNIQUE(user_age);

-- constraint এর নাম দিব কিভাবে?
-- কি constraint add করব তার নাম _ কোন table  এ add করব তার নাম _ কোন column এ add করব তার নাম 



-- drop / delete constraint
ALTER Table person5
    DROP CONSTRAINT unique_person5_user_age;


SELECT * FROM person5;


-- Editor Setup Steps
-- 1. install 'PostgreSQL' extention
-- 2. connected database with clicking database icon on sidebar using password 
-- 3. create a file and connect with database 

-- Summary
-- Alter
-- Add
-- Default
-- Drop
-- rename
-- update type
-- add constraint in existing table
-- remove constraint in existing table



