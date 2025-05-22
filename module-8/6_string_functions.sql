-- Active: 1747835496638@@127.0.0.1@5432@ph

SELECT * from students;


-- 1. uppercase
SELECT upper(fist_name) from students;

-- 2. lowercase
SELECT lower(fist_name) from students;

-- 3. concat
SELECT concat( fist_name,' ' , last_name) from students;


-- 4. || (Concatenation operator)
-- Concatenates multiple strings.
SELECT 'Hello' || ' ' || 'World';

-- 5. SUBSTRING(text FROM start FOR length) 
-- here From means starting index and For means how many character i need
SELECT substring('PostgreSQL' FROM 5 FOR 3); // gre


-- 6. LEFT(text, n) 
-- Gets the first n characters from the string.

SELECT LEFT('PostgreSQL', 4);
SELECT LEFT(fist_name, 3) from students;


-- 7. RIGHT(text, n) 
-- Gets the last n characters from the string.
SELECT RIGHT('PostgreSQL', 6);
SELECT RIGHT(fist_name, 3) from students;


-- 8. LENGTH(text)
-- Returns the length of a string.
SELECT length('Shakil ahmed'); // 12
SELECT length(fist_name) as Name_Length from students;

-- 9. TRIM
-- Removes specified characters 
SELECT trim('  Hello   ');  -- Hello
-- removes x from string
SELECT trim(BOTH 'x' from 'xxPostgreSQLxxxx'); -- PostgreSQL



-- 10. REPLACE(text, from_str, to_str)
-- Replaces all occurrences of a substring.
SELECT REPLACE('I like java', 'java', 'postgreSQL'); -- I like postgreSQL

-- 11. POSITION(substring IN string)
-- Returns the position of the substring.
SELECT POSITION('gre' in 'PostgreSQL'); -- 5


-- REVERSE(text)
-- Reverses the characters in a string.

-- SELECT reverse('PostgreSQL');
SELECT reverse('Shakil'); -- likahS


-- # Summary

-- UPPER() – Converts all letters in a string to uppercase.

-- LOWER() – Converts all letters in a string to lowercase.

-- CONCAT() – Joins multiple strings into one.

-- SUBSTRING() – Extracts a part of a string from a specific position.

-- LEFT() – Returns the first N characters from a string.

-- RIGHT() – Returns the last N characters from a string.

-- LENGTH() – Returns the number of characters in a string.

-- TRIM() – Removes specified characters (default whitespace) from the beginning and/or end of a string.

-- REPLACE() – Replaces all occurrences of a substring with another string.

-- POSITION() – Returns the position of a substring within a string.

-- REVERSE() – Reverses the characters in a string.

 