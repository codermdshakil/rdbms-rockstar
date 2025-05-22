-- Active: 1747835496638@@127.0.0.1@5432@b5_psql_cs

-- add column
ALTER Table books   
    ADD COLUMN genre TEXT DEFAULT;

-- delete column
ALTER TABLE books
    drop COLUMN genre;

ALTER Table books
    alter COLUMN in_stock TYPE text;

ALTER Table books 
    Add COLUMN in_stock BOOLEAN DEFAULT true;




SELECT title, price FROM books;

SELECT title FROM books
    WHERE price >= 10;


SELECT * from books
    WHERE title = 'Atomic Habits';



-- scalar function
-- SELECT title, length(title) as title_length from books;
-- SELECT upper(title) from books;
-- SELECT lower(title) from books;


-- aggregate
-- SELECT count(*) from books;
-- SELECT avg(price) from books;
-- SELECT round(avg(price)) from books;
-- SELECT min(price) from books;
-- SELECT max(price) from books;
-- SELECT sum(price) from books;





select * from books;


