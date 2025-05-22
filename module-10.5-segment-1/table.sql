-- Active: 1747835496638@@127.0.0.1@5432@b5_psql_cs

CREATE TABLE publishers(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

-- insert publishers data
INSERT INTO publishers (name)
VALUES 
('Penguin Random House'),
('HarperCollins'),
('Simon & Schuster'),
('Hachette Book Group'),
('Macmillan Publishers');

 
-- insert books data
CREATE TABLE books(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author_name TEXT,
    published_year INT,
    price NUMERIC(6,2),
    in_stock BOOLEAN,
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);


INSERT INTO books (title, author_name, published_year, price, in_stock, publisher_id)
VALUES 
('The Silent Patient', 'Alex Michaelides', 2019, 15.99, TRUE, 1),
('Atomic Habits', 'James Clear', 2018, 11.25, TRUE, 2),
('To Kill a Mockingbird', 'Harper Lee', 1960, 9.50, FALSE, 1),
('The Alchemist', 'Paulo Coelho', 1988, 12.80, TRUE, 3),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2011, 18.00, TRUE, 2),
('1984', 'George Orwell', 1949, 10.00, FALSE, 1),
('Rich Dad Poor Dad', 'Robert T. Kiyosaki', 1997, 13.99, TRUE, 4),
('The Subtle Art of Not Giving a F*ck', 'Mark Manson', 2016, 14.50, TRUE, 3);


 
