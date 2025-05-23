-- Active: 1747835496638@@127.0.0.1@5432@ph


-- create user table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username TEXT NOT NULL
);

-- Insert data
INSERT INTO users (user_id, username) VALUES
    (1, 'akash'),
    (2, 'batash'),
    (3, 'sagor'),
    (4, 'nodi');



CREATE Table posts(
    post_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES users(user_id)
);


SELECT * FROM users;
SELECT * FROM posts;




