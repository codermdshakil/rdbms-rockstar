
## Anomalies

Anomalies in databases  refer to inconsistencies or unexpected issue that can occur during data manipulation and retrieval.

### Three types of Anomalies

- **Update  Anomalies:** Occurs when you can't add data to the database due to missing other data.
- **Delete  Anomalies:** Occurs when you need to **change data in multiple places** to keep it consistent.
- **Insert   Anomalies:** Occurs when ****deleting data unintentionally removes useful information

### **Normalization:** a process of organizing data into multiple related tables to eliminate redundancy and improve data integrity.

- Functional Dependency
    - একই X  এর মানের জন্য Y এর ও একই মান থাকা লাগবে তাহলে ই Functional Dependency হবে  ।

Formula 

**if the values of X are the same**, then the values of **Y must also be the same**.

- t1.x = t2.x
- t1.y = t2.y

| X | Y |
| --- | --- |
| 1 | 3 |
| 2 | 5 |
| 3 | 2 |
| 2 | 5 |

| X | Y |
| --- | --- |
| 1 | 3 |
| 2 | 6 |
| 3 | 2 |
| 2 | 5 |

### Normalization

Normalization is guideline to make database design

- Efficient
- Organized
- Free from anomalies

## Types of Normal Forms

- ONF - unorganized data
- 1NF
- 2NF
- 3NF

## 1N - Normal Forms Rules

- Atomic values
- Unique Column values
- Positional dependency of data
- Column should contain data that are of the same type
- Determine primary key

## 2N - Normal Forms Rules

- Must be in 1NF
- Must be contain any non-prime/non-key attribute that is functionally dependent on a proper subset of any candidate key of the relation.
    - Lossy decomposition - **Bad Practice**
    - Lossless decomposition - **Best Practice**

## 3N - Normal Forms Rules

- Must be in 2NF
- Must **not** contain transitive dependency
    - X → Y & Y → Z Total X → Z

| Normal Form | Goal | Rule |
| --- | --- | --- |
| **1NF** | Atomic values (no repeating groups) | Each field contains indivisible values |
| **2NF** | Remove **partial dependency** | Must be in 1NF + fully dependent on whole PK |
| **3NF** | Remove **transitive dependency** | Must be in 2NF + no indirect dependency |
| **BCNF** | Stronger version of 3NF | Every determinant is a candidate key |

### Summary:

| Normal Form | What Was Done |
| --- | --- |
| 1NF | Removed multivalued fields → atomic values |
| 2NF | Removed partial dependency |
| 3NF | Removed transitive dependency |

### Database Design

### Top down Approach

- Step - 1 : Determining Entities
- Step - 2 : Determining Entities for each entities
- Step - 3 : Relationship among Entities
- Step - 4 : Solving many to many : Solve using Intermidiate table / Junction table

# Postgres Install

- Postgres is a software : The word most advanced open source Object Relational Database Management System (ORDBMS)
- Postgres work on ORDBMS
- With can communicate with Postgres using SQL language

### Why postgres?

- Open source
- ORDBMS
- Modern
- ACID compliance
- Advanced data types
- scalability
- Indexing
- community support

## Differents between Postgres and SQL

### ✅ SQL (Structured Query Language)

- **Standard language** used to create, read, update, and delete data in relational databases.
- All relational databases (like MySQL, SQL Server, PostgreSQL) support **SQL**.
- Think of SQL like **English**, and databases like **people** who understand that language (e.g., Postgres, MySQL).

### ✅ PostgreSQL

- A **software system** that uses SQL to manage data.
- It implements SQL (and even **adds more features** like JSON support, window functions, custom data types).

### 🛠️ Analogy:

> Think of PostgreSQL as a car and SQL as the steering wheel and pedals.
> 
> 
> You use SQL to control PostgreSQL, just like you use the steering wheel to drive the car.
> 

## 🧪 Final Thoughts

**ORM = Makes your life easier.**

**Raw SQL = Gives you more control.**

The best developers **understand both** and choose based on the project's need.

## ✅ How to Pick the Right ORM (based on *your* need)

Ask yourself:

1. ✅ Am I using a popular **web framework** (e.g., Django, Laravel)? → Use its built-in ORM.
2. ✅ Do I want **speed and simplicity**? → Use something lightweight like Prisma or Peewee.
3. ✅ Do I need **more power and customization**? → Use SQLAlchemy or Sequelize.
4. ✅ Am I building a **large-scale or enterprise app**? → Go for robust ORMs like Hibernate or Entity Framework.
