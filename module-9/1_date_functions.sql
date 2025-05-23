-- Active: 1747835496638@@127.0.0.1@5432@ph

SHOW TIMEZONE;  -- Aisa/Dhaka

SELECT now(); -- 2025-05-23 16:24:26.359977+06


-- TIMESTAMP = Date + Timt + Zone
-- 1. timestamp with timezone
-- 2. timestamp without timezone


CREATE TABLE timez (
    ts TIMESTAMP WITHOUT TIME ZONE,
    tsz TIMESTAMP WITH TIME ZONE
);

INSERT INTO timez (ts, tsz)
VALUES 
  ('2025-05-23 10:00:00+06', '2025-05-23 10:00:00+06');


SELECT * FROM timez;


SELECT CURRENT_DATE;

SELECT current_time;

SELECT current_timestamp;


-- 🔹 EXTRACT()
-- Gets part of a date/time (year, month, day, etc).
SELECT EXTRACT(YEAR FROM DATE '2004-12-04');
SELECT EXTRACT(MONTH FROM DATE '2004-12-04');
SELECT EXTRACT(DAY FROM DATE '2004-12-04');


-- 🔹 AGE()  
-- 📘 Returns interval between two dates

SELECT age('2004-12-04', '2025-05-23');


-- 🔹 DATE_TRUNC()  
-- 📘 Truncates a date/time to specified precision (e.g., year, month).

SELECT DATE_TRUNC('month', TIMESTAMP '2025-05-23 14:00:00');


-- 🔹 TO_CHAR() 
-- convert any format
-- 📘 use any Formats a date/time to a string.

SELECT TO_CHAR(NOW(), 'YYYY');
SELECT TO_CHAR(NOW(), 'MM');
SELECT TO_CHAR(NOW(), 'DD');

SELECT TO_CHAR(NOW(), 'DD-MM-YYYY HH24:MI:SS'); 

SELECT TO_CHAR(NOW(), 'YYYY-MM-DD HH24:MI:SS'); 
SELECT TO_CHAR(NOW(), 'MM-DD-YYYY HH24:MI:SS'); 
 

-- 🔹 TO_DATE()
-- 📘 Converts string to date using format.

SELECT TO_DATE('23-05-2025', 'DD-MM-YYYY'); -- 2025-05-23

-- Summary
-- | Function                   | Simple Meaning                                         |
-- | ---------------------------| ------------------------------------------------------ |
-- | CURRENT_DATE               | Returns today's date only.                             |
-- ---------------------------------------------------------------------------------------
-- | CURRENT_TIME               | Returns the current time only.                         |
-- ---------------------------------------------------------------------------------------
-- | CURRENT_TIMESTAMP          | Returns current date and time.                         |
-- ---------------------------------------------------------------------------------------
-- | NOW()                      | Same as `CURRENT_TIMESTAMP`, gives date and time now.  |
-- ---------------------------------------------------------------------------------------
-- | DATE() (MySQL)             | Extracts the date part from a datetime.                |
-- ---------------------------------------------------------------------------------------
-- | EXTRACT()                  | Pulls out part of a date (like year, month, day).      |
-- ---------------------------------------------------------------------------------------
-- | AGE() (PostgreSQL)         | Calculates the age (difference) between two dates.     |
-- ---------------------------------------------------------------------------------------
-- | DATE_TRUNC() (PostgreSQL)  | Cuts off time to a specific part (like month or year). |
-- ---------------------------------------------------------------------------------------
-- | TO_CHAR() (PostgreSQL)     | Formats date/time into a readable string.              |
-- ---------------------------------------------------------------------------------------
-- | TO_DATE() (PostgreSQL)     | Converts a string into a date.                         |
-- ---------------------------------------------------------------------------------------
-- | DATE_ADD() (MySQL)         | Adds time (days/months/etc) to a date.                 |
-- ---------------------------------------------------------------------------------------
-- | DATE_SUB() (MySQL)         | Subtracts time from a date.                            |
-- ---------------------------------------------------------------------------------------
-- | DATEDIFF() (MySQL)         | Returns number of days between two dates.              |
-- ---------------------------------------------------------------------------------------
