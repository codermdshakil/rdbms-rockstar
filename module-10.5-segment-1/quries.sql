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


-- GROUP BY
SELECT author_name, count(*) from books
    GROUP BY author_name;


SELECT author_name, count(*) from books
    GROUP BY author_name
    HAVING count(*)>1;

-- delete foreign key
ALTER TABLE books

DROP constraint books_publisher_id_fkey;

--  delete foreign key

ALTER TABLE books
    ADD constraint books_publisher_id_fkey FOREIGN KEY(publisher_id) REFERENCES publishers(id)
    ON DELETE CASCADE;


DELETE FROM publishers
    WHERE id = 2;


-- INNER JOIN

-- must meet condition
-- null avoid

SELECT b.title, b.author_name , p.name AS publisher from books b INNER JOIN publishers p ON b.publisher_id = p.id; -- using ON add condition
 

-- LEFT JOIN
SELECT b.title, b.author_name , p.name as Publisher from books b LEFT JOIN publishers p ON b.publisher_id = p.id;

-- RIGHT JOIN
SELECT b.title, b.author_name , p.name as Publisher from books b RIGHT JOIN publishers p ON b.publisher_id = p.id;


-- FULL JOIN
SELECT b.title, b.author_name , p.name as Publisher from books b FULL JOIN publishers p ON b.publisher_id = p.id;


SELECT CURRENT_DATE;

SELECT extract(YEAR FROM CURRENT_DATE) AS Year,
extract(MONTH FROM CURRENT_DATE) AS Month,
extract(DAY FROM CURRENT_DATE) AS Day;






SELECT * from books;
SELECT * FROM publishers;


