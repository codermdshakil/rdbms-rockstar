### ✅ **SQL Date Function Summary**

| Function | Simple Meaning |
| --- | --- |
| **`CURRENT_DATE`** | Returns today's date only. |
| **`CURRENT_TIME`** | Returns the current time only. |
| **`CURRENT_TIMESTAMP`** | Returns current date and time. |
| **`NOW()`** | Same as `CURRENT_TIMESTAMP`, gives date and time now. |
| **`DATE()`** *(MySQL)* | Extracts the date part from a datetime. |
| **`EXTRACT()`** | Pulls out part of a date (like year, month, day). |
| **`AGE()`** *(PostgreSQL)* | Calculates the age (difference) between two dates. |
| **`DATE_TRUNC()`** *(PostgreSQL)* | Cuts off time to a specific part (like month or year). |
| **`TO_CHAR()`** *(PostgreSQL)* | Formats date/time into a readable string. |
| **`TO_DATE()`** *(PostgreSQL)* | Converts a string into a date. |
| **`DATE_ADD()`** *(MySQL)* | Adds time (days/months/etc) to a date. |
| **`DATE_SUB()`** *(MySQL)* | Subtracts time from a date. |
| **`DATEDIFF()`** *(MySQL)* | Returns number of days between two dates. |

### GROUP BY

- `GROUP BY` groups rows with the same values in specified columns and lets you apply aggregate functions like `SUM()`, `COUNT()`, etc., to each group.

✅ **Use Cases for GROUP BY -**

- Total sales per region
- Count of students in each class
- Avg rating per product

### HAVING

- Use `HAVING` to filter grouped results based on aggregate values like totals or counts.

✅ **Use Cases for HAVING -**

- only show reginons with sales over 10.000
- Classes with more than 30 students
- Products with an average rating above 4.5

### 🧠 Summary:

- Use `GROUP BY` when you need to **summarize or categorize data**.
- Use `HAVING` when you want to **filter those categories based on aggregates**.

### 🔢 SQL Query Execution Order (Serial)

1. **`FROM`** → chooses the source table(s)
2. **`JOIN`** → combines tables (if any joins are used)
3. **`WHERE`** → filters individual rows before grouping
4. **`GROUP BY`** → groups rows with the same values
5. **`HAVING`** → filters grouped data (uses aggregate conditions)
6. **`SELECT`** → picks the columns or aggregates to show
7. **`ORDER BY`** → sorts the final result
8. **`LIMIT`** → restricts number of rows returned

### Foreign Key vs Primary key

- ✅ **Primary Key**: Uniquely identifies each row in a table (no duplicates, no nulls).
- 🔗 **Foreign Key**: Connects one table to another by referencing the primary key of another table.

### Joins

| **JOIN Type** | **What It Does** |
| --- | --- |
| **INNER JOIN** | Returns **only matching** rows from both tables. |
| **LEFT JOIN** | All rows from **left table** + matching from right. |
| **RIGHT JOIN** | All rows from **right table** + matching from left. |
| **FULL JOIN** | **All rows** from both tables (match or not). |
| **CROSS JOIN** | **All combinations** (cartesian product) of both tables. |
| **NATURAL JOIN** | Auto-joins tables using **common column(s)** by name. |

### Sub Quries

Views
