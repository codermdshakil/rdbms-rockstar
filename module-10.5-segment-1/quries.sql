-- Active: 1747835496638@@127.0.0.1@5432@b5_psql_cs

-- ALTER
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

--  WHERE

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


-- BETWEEN, LIKE, ILIKE, IN


-- BETWEEN
SELECT * from books
    WHERE price BETWEEN 15 AND 20;

-- LIKE - case sensative
SELECT * FROM books
    WHERE title LIKE '%The%'

-- ILIKE - not case sentative
SELECT * FROM books
    WHERE title ILIKE '%the%'

--  IN
SELECT title, price, author_name FROM books
    WHERE author_name in ('James Clear', 'George Orwell');


-- Pagination
-- limit - just limited book 
-- offset - বাদ দাওয়া

SELECT * from books
    OFFSET 3 -- offset bad day first items
    LIMIT 2


-- UPDATE Operator

UPDATE books SET price = price*2;



select price from books;


