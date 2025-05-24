-- Active: 1747835496638@@127.0.0.1@5432@ph

CREATE Table "user"(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

INSERT INTO "user" (username) VALUES
    ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');


CREATE Table post(
    post_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(user_id) ON DELETE CASCADE
);


INSERT INTO post (title, user_id) VALUES
 ('Enjoing a sunny day with Akash!', 1),
 ('Batas just shared an amazine recipe!', 2),
 ('Exploring adventatures with sagor', 4),
 ('Nodi''s wisedom always leaves me inspired', 4);


-- INNER JOIN
SELECT title, username FROM post
JOIN "user" ON "user".user_id = post.user_id;

-- use short name
SELECT title, username FROM post p
JOIN "user" u ON u.user_id = p.user_id;

-- short name using AS
SELECT title, username FROM post AS p
JOIN "user" AS u ON u.user_id = p.user_id;



SELECT * FROM post;
SELECT * FROM "user";

SELECT * FROM post as p
JOIN "user" as u ON u.user_id = p.user_id;


-- SELECT * FROM "user" as u
-- JOIN post as p ON p.user_id = u.user_id;

-- INSERT INTO post(title, user_id) VALUES('this is test title', NULL);

-- LEFT JOIN
SELECT * FROM "user" as u
LEFT JOIN post as p ON p.user_id = u.user_id;


SELECT * FROM post as p
LEFT JOIN "user" as u ON u.user_id = p.user_id;


-- RIGHT JOIN

SELECT * FROM "user" as u
RIGHT JOIN post as p ON p.user_id = u.user_id;

SELECT * FROM post as p
RIGHT JOIN "user" as u ON u.user_id = p.user_id;

SELECT * from post;
SELECT * from "user";


-- | Join Type      | What It Returns                                         |
-- | -------------- | ------------------------------------------------------- |
-- | INNER JOIN     | Matching rows from both tables                          |
-- | LEFT JOIN      | All rows from the left table + matching rows from right |
-- | RIGHT JOIN     | All rows from the right table + matching rows from left |
