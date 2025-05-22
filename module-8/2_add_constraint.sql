-- Active: 1747835496638@@127.0.0.1@5432@ph


-- add constraint
ALTER Table person5
    ADD constraint unique_person5_user_age UNIQUE(user_age);

-- constraint এর নাম দিব কিভাবে?
-- কি constraint add করব তার নাম _ কোন table  এ add করব তার নাম _ কোন column এ add করব তার নাম 
-- Ex: unique_person5_user_age



-- drop / delete constraint
ALTER Table person5
    DROP CONSTRAINT unique_person5_user_age;


