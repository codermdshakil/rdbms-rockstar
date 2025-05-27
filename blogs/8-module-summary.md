
### Alter

The `ALTER` command in PostgreSQL is used to modify the structure of an existing database object, such as adding, renaming, or changing columns and constraints.

- Add, rename or drop columns
- Change column data types
- Add or drop constraints (Like NOT NULL, UNIQUE)
- Rename tables
- Set Default values
- Change Ownership, schema pr privileges

### Install VS Code Extension → PostgreSQL

```sql
-- Editor Setup Steps
-- 1. install 'PostgreSQL' extention
-- 2. connected database with clicking database icon on sidebar using password 
-- 3. create a file and connect with database 
```

### 📚 PostgreSQL `ALTER` & `DROP` Summary

- 🔧 **Add Column**
    
    `ALTER TABLE table_name ADD COLUMN column_name data_type;`
    
- 🗑️ **Remove Column**
    
    `ALTER TABLE table_name DROP COLUMN column_name;`
    
- 📝 **Set Default Value**
    
    `ALTER TABLE table_name ALTER COLUMN column_name SET DEFAULT default_value;`
    
- 🚫 **Remove Default Value**
    
    `ALTER TABLE table_name ALTER COLUMN column_name DROP DEFAULT;`
    
- ⛓️ **Add Constraint**
    
    `ALTER TABLE table_name ADD CONSTRAINT constraint_name constraint_type;`
    
    *(e.g., UNIQUE, CHECK, FOREIGN KEY, PRIMARY KEY)*
    
- 🔓 **Remove Constraint**
    
    `ALTER TABLE table_name DROP CONSTRAINT constraint_name;`
    
- ✏️ **ALTER**
    
    Used to **modify table structure** (columns, defaults, constraints, etc.)
    
- 💣 **DROP Table**
    
    `DROP TABLE table_name;`
    
    ⚠️ Deletes the table and all its data permanently
    

### Add constraint

```sql
-- add constraint
ALTER Table person5
    ADD constraint unique_person5_user_age UNIQUE(user_age);

-- constraint এর নাম দিব কিভাবে?
-- কি constraint add করব তার নাম _ কোন table  এ add করব তার নাম _ কোন column এ add করব তার নাম 

```

### Drop / delete constraint

```sql
-- drop / delete constraint
ALTER Table person5
    DROP CONSTRAINT unique_person5_user_age;

```

### DROP vs Truncate

```sql
-- DROP - permanently delete the table and its structure. 
DROP Table person5;

-- TRUNCATE -  clear all rows from a table but keep the table and its structure. 
TRUNCATE Table person5;

-- show table structure + data
SELECT * FROM person5;

```

### SQL Commands

- **SELECT** → Used to **choose which data** to show.
- **FROM** → Tells **which table** to get the data from.
- **WHERE** → Filters data by **specific condition**.
- **ORDER BY** → Sorts the result by **one or more columns**.
- **GROUP BY** → Groups rows that have **same values**.
- **HAVING** → Filters the **grouped data**.
- **JOIN** → **Combines rows** from two or more tables.
- **DISTINCT** → Returns **only unique values**.
- **LIMIT** → Sets the **maximum number of rows** to show.
- **OFFSET** → **Skips rows** before starting to show results.

- Order by
- ASC - assending order
- DESC - dessending order
- DISTINCT → get unique value
- AND → Condition must be TRUE
- OR → Any on

# String Functions

```sql
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

```

```sql
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

 
```

## Two types of Functions

- Scaler function -
    - Scalar function operate on a single value and return a single value . Scaler functions perform an operation on each rows data independently
    - Operate for each and every row
    - Multiple Values
    

| Category | Functions | Description |
| --- | --- | --- |
| **String** | `UPPER()` | Converts text to uppercase |
|  | `LOWER()` | Converts text to lowercase |
|  | `LEN()` / `LENGTH()` | Returns length of a string |
|  | `SUBSTRING()` | Extracts part of a string |
|  | `REPLACE()` | Replaces text in a string |
|  | `TRIM()` / `LTRIM()` / `RTRIM()` | Trims spaces from strings |
| **Numeric** | `ROUND()` | Rounds a number to specified decimals |
|  | `CEILING()` | Returns smallest integer ≥ number |
|  | `FLOOR()` | Returns largest integer ≤ number |
|  | `ABS()` | Returns absolute value |
|  | `POWER()` | Raises a number to a power |
|  | `SQRT()` | Returns square root |
| **Date & Time** | `GETDATE()` / `CURRENT_DATE` | Returns current date/time |
|  | `DATEPART()` | Extracts part of date (year, month, etc.) |
|  | `DATEDIFF()` | Returns difference between two dates |
|  | `FORMAT()` | Formats date or number |
| **System / Others** | `ISNULL()` / `COALESCE()` | Replaces NULL with specified value |
|  | `CAST()` / `CONVERT()` | Converts data from one type to another |

### Aggregate function

- Give single result after operation
- Often use with GROUP BY

| Function | Description |
| --- | --- |
| `COUNT()` | Returns the number of rows |
| `SUM()` | Returns the total sum |
| `AVG()` | Returns the average value |
| `MIN()` | Returns the minimum value |
| `MAX()` | Returns the maximum value |
| `GROUP_CONCAT()` (MySQL) | Concatenates values into a string |
| `STDDEV()` | Returns standard deviation |
| `VARIANCE()` | Returns the variance |

### **Logical Negation NOT, understanding NULL and the Null-Coalescing Operator in SQL**

- **OR** – One or the other must be true.
- **AND** – Both conditions must be true.
- **IN** – Checks if a value is in a list.
- **BETWEEN** – Checks if a value is within a range.
- **LIKE** – Matches a pattern (case-sensitive).
- **ILIKE** – Matches a pattern ( not case-insensitive).

### LIMIT, OFFSET

- **LIMIT** – Restricts the number of rows returned.
- **OFFSET** – Skips a number of rows before starting to return results.
- **UPDATE** – Modifies existing records in a table.