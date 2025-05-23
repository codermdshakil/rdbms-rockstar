-- Active: 1747835496638@@127.0.0.1@5432@ph

-- NOT

SELECT * from students
    WHERE country != 'India';

SELECT * from students
    WHERE NOT country = 'India';

-- NULL

SELECT * from students
    WHERE email IS NULL;

SELECT * from students
    WHERE email IS NOT NULL;

-- replace null value with default value

SELECT COALESCE(email, 'Email are not available!') from students;

-- | Keyword    | Meaning                          | Example Usage            |
-- | ---------- | -------------------------------- | ------------------------ |
-- | `NOT`      | Reverses a condition             | `NOT age = 18`           |
-- | `NULL`     | Represents missing/unknown value | `WHERE column IS NULL`   |
-- | `COALESCE` | Returns first non-NULL value     | `COALESCE(phone, 'N/A')` |


