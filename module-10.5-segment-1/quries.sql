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


select * from books;

SELECT title, price FROM books;
