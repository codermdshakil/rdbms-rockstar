## **Exploring PSQL and its Default Behavior, Creating Database**

- \l → show all database
- \! cls → clear terminal
- \c → to connect database
- \conninfo → to show connection info
- \q → to quit

## **User, Role and Privilege Management in POSTGRES.**

## Structured Query Language(SQL)

### 💻 What Does SQL Language Do?

**SQL (Structured Query Language)** is the standard language used to **interact with relational databases**. It allows users to **create, manage, and manipulate** data and database structures.

---

### ✅ **Main Functions of SQL**

Here’s what SQL can do, grouped into categories

---

### 1. **Data Querying**

🔍 **Retrieve data** from the database.

- Command: `SELECT`

```sql

SELECT name, age FROM students WHERE age > 18;

```

---

### 2. **Data Manipulation**

✏️ **Add, update, or delete** data in tables.

Called **DML (Data Manipulation Language)**.

- `INSERT` – Add new records
- `UPDATE` – Modify existing records
- `DELETE` – Remove records

```sql

INSERT INTO students (name, age) VALUES ('John', 20);

```

---

### 3. **Data Definition**

🛠️ **Create or change the structure** of database objects (tables, views, etc.).

Called **DDL (Data Definition Language)**.

- `CREATE` – Create a new table or object
- `ALTER` – Modify a table
- `DROP` – Delete a table or object

```sql

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

```

---

### 4. **Data Control**

🔐 **Manage permissions** (who can access or modify data).

Called **DCL (Data Control Language)**.

- `GRANT` – Give access
- `REVOKE` – Remove access

---

### 5. **Transaction Control**

📦 **Manage multiple operations as a single unit** (like a bank transaction).

Called **TCL (Transaction Control Language)**.

- `BEGIN` / `START TRANSACTION`
- `COMMIT` – Save changes
- `ROLLBACK` – Undo changes

---

### 🎯 In Simple Terms:

| SQL Does What? | Example Action |
| --- | --- |
| Retrieve data | Show list of students |
| Insert/update/delete data | Add or remove student info |
| Create/modify tables | Make a new table for courses |
| Control access | Allow a user to read the data |
| Manage transactions | Save or undo multiple changes |

## Differences between SQL and PostgreSQL

- **SQL** = Language for interacting with relational databases.
- **PostgreSQL** = A powerful open-source relational database **that uses SQL**.

## Languages are two types

- Declarative: Declarative language  গুলোতে  শুধু কাজ করতে বলা হয় আর সে কাজ করে এনে দেয়।
- Imperative:  Imperative language এ কি কাজ করবে কিভাবে করবে সব বলে দিতে হয় step by step

### SQL commands

### 1. 🛠️ **DDL – Data Definition Language**

Used to **define or change the structure** of tables and databases.

| Command | Purpose | Example |
| --- | --- | --- |
| `CREATE` | Make a new table or database | `CREATE TABLE students (id INT, name TEXT);` |
| `ALTER` | Change a table structure | `ALTER TABLE students ADD email TEXT;` |
| `DROP` | Delete a table or database | `DROP TABLE students;` |
| `TRUNCATE` | Delete all data, keep structure | `TRUNCATE TABLE students;` |

### 2. ✅ **DML – Data Manipulation Language**

Used to **work with the data inside tables**.

| Command | Purpose | Example |
| --- | --- | --- |
| `SELECT` | Get data from a table | `SELECT * FROM students;` |
| `INSERT` | Add new data | `INSERT INTO students (name, age) VALUES ('John', 20);` |
| `UPDATE` | Change existing data | `UPDATE students SET age = 21 WHERE name = 'John';` |
| `DELETE` | Remove data | `DELETE FROM students WHERE name = 'John';` |

### 3. 🔐 **DCL – Data Control Language**

Used to **control access** to the data.

| Command | Purpose | Example |
| --- | --- | --- |
| `GRANT` | Give permissions | `GRANT SELECT ON students TO 'user1';` |
| `REVOKE` | Remove permissions | `REVOKE SELECT ON students FROM 'user1';` |

### 🔐 **Granting Privileges**

**Granting privileges** means giving specific permissions to a user so they can perform certain actions on a database object like a table, view, or procedure.

### 📌 Common privileges include:

- `SELECT`: Read data from a table.
- `INSERT`: Add new rows to a table.
- `UPDATE`: Modify existing data.
- `DELETE`: Remove rows from a table.
- `ALL PRIVILEGES`: Gives all available permissions.

### 🔒 **Revoking Privileges**

**Revoking privileges** means **removing** previously granted permissions from a user, limiting what actions they can take.

| Action | Command | Purpose |
| --- | --- | --- |
| Grant | `GRANT` | Allows a user to perform certain actions |
| Revoke | `REVOKE` | Removes those permissions |

### 4. 📦 **TCL – Transaction Control Language**

Used to **manage multiple changes as one unit** (transaction).

| Command | Purpose | Example |
| --- | --- | --- |
| `BEGIN` / `START TRANSACTION` | Start a transaction | `START TRANSACTION;` |
| `COMMIT` | Save the changes | `COMMIT;` |
| `ROLLBACK` | Undo the changes | `ROLLBACK;` |

### 5. 📂 **DQL – Data Query Language**

(DQL is often grouped with DML but some consider it separately)

| Command | Purpose | Example |
| --- | --- | --- |
| `SELECT` | Query data (read-only) | `SELECT name FROM students;` |

### Summary of SQL commands

| Category | Commands | Use For |
| --- | --- | --- |
| DDL | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` | Designing and changing tables |
| DML | `SELECT`, `INSERT`, `UPDATE`, `DELETE` | Managing data |
| DCL | `GRANT`, `REVOKE` | Giving or taking permissions |
| TCL | `BEGIN`, `COMMIT`, `ROLLBACK` | Controlling transactions |
| DQL | `SELECT` | Querying data |

## User → Front-End/Back-End → SQL → PostgreSQL → Database → db1, db2, db3

## We use Graphical Interface

- valentina studio

## **Create, Update and Delete Database and Data Types in POSTGRES**

create database test;

alter database test rename to ph;

drop database ph; 

create → create database

alter → modify database

drop → delete database

### Why Data type

- Data consistency
- Performance
- Constraint enforcement
- Convenience and functionality
- Storage Efficiency

### Data types

Most of the time used

- Boolean
- Number
- Character
- UUID
- Date/Time

Rare used

- JSON
- Array
- Binary
- XML

### Boolean

- true
- false
- null

### Integer

- INT
- BITINT
- SMALLINT
Float4(Single precision)
- Float8(Double precision)
- Numeric (precision, scale)
- Serial

### Char

- CHAR - fixed length
- VARCHAR - is variable length character type contain (255 character)
- Text - is also a variable length text large amount of text

### Date

### UUID

- Make unique ID

### Constraints

| Constraint | Description |
| --- | --- |
| `NOT NULL` | Value must be present |
| `UNIQUE` | All values must be different |
| `PRIMARY KEY` | Uniquely identifies a row |
| `FOREIGN KEY` | Enforces referential integrity |
| `CHECK` | Enforces a condition |
| `DEFAULT` | Provides a default value |
| `EXCLUDE` | Prevents conflicting rows (used with ranges) |

- add constraints in table , multiple constraints in table
- insert value in table
- insert multy row value