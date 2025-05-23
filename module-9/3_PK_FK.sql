-- Active: 1747835496638@@127.0.0.1@5432@ph


-- create user table
CREATE TABLE "user" (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

-- Insert data
INSERT INTO "user" (username) VALUES
    ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');



CREATE Table post(
    post_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    -- user_id INTEGER REFERENCES "user"(user_id) ON DELETE CASCADE
    -- user_id INTEGER REFERENCES "user"(user_id) ON DELETE SET NULL NOT NULL
    user_id INTEGER REFERENCES "user"(user_id) ON DELETE SET DEFAULT DEFAULT 2
);

-- set NOT NULL
-- ALTER  Table post
--     ALTER COLUMN user_id set NOT NULL;



INSERT INTO post (title, user_id) VALUES
 ('Enjoing a sunny day with Akash!', 2),
 ('Batas just shared an amazine recipe!', 1),
 ('Exploring adventatures with sagor', 4),
 ('Nodi''s wisedom always leaves me inspired', 4);



INSERT INTO post (title, user_id) VALUES ('test', 1);


-- Foreign key delation

-- 0. Restrict Delation -> ON DELETE RESTRICT / ON DELETE ON ACTION (default)
-- 1. Deleting constraint on DELETE user - user  থেকে Fk key delete করে।
-- 2. Cascade Delation -> ON DELETE CASCADE - এর মানে হল যেই  user কে delete করব তার সকল Post ও delete হয়ে যাবে।
-- 3. Setting NULL -> ON DELETE SET NULL - user delete করে user_id এর জায়গায় Null set করে দিব।
-- 4. Set default value -> ON DELETE SET DEFAULT

-- Ex:2
DELETE FROM "user"
    WHERE user_id = 4;

 



DROP Table post;
DROP Table "user";

 
SELECT * FROM "user";
SELECT * FROM post;

