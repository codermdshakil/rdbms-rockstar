
### 🔹 What is a **Database**?

A **database** is a structured collection of **related data** that is stored in an organized way. It helps in **efficient storage, retrieval, and management** of data.

- A database represents real-world entities like **students**, **employees**, or **products**.
- Data in a database is stored in **tables** (rows and columns).
- To store and manage this data, we need special software called **DBMS (Database Management System)**.

> ✅ Short Note:
> 
> 
> A database is an organized collection of related data managed using DBMS for quick access and updates.
> 

📌 Example:

- Student records in a school database: name, roll, class, marks.

### 🔹 What is **Data**?

**Data** is a raw fact or value that can be recorded in different forms. It has **no specific meaning** until processed.

📂 Types of data:

- **Text**
- **Audio**
- **Video**
- **Numbers**

> ✅ Short Note:
> 
> 
> Data is unprocessed raw facts that can exist in various forms like text, numbers, audio, or video.
> 

📌 Example:

- "Bangladesh", "123", "09:00 AM" — these are data.

### 🔹 What is **Information**?

**Information** is the **processed, structured, or organized** form of data. It is useful, meaningful, and helps in decision-making.

- When we analyze or organize data, it becomes information.
- Information gives **context**, **meaning**, and **insight**.

> ✅ Short Note:
> 
> 
> Information is meaningful output obtained after processing raw data.
> 

📌 Example:

- Data: 5, 4, 3, 2, 1
- Information: Student scored 5 marks in English, 4 in Math, etc.

### 🔸 What is DBMS ?

- **DBMS (Database Management System)** is the software that allows us to **create**, **store**, **manage**, and **access** databases.
- Examples: **MySQL, Oracle, PostgreSQL, MongoDB**

### 🔹 What is DBMS?

**DBMS (Database Management System)** is a **software system** that allows users to **store, retrieve, manage, and manipulate data** in a structured way.

- It provides a secure and efficient way to interact with databases.
- DBMS acts as a bridge between the user and the database.
- It eliminates the limitations of the traditional **File System**.

📌 **Problems with File System:**

1. **Unstructured data** in multiple formats.
2. **Data redundancy** (same data stored in multiple places).
3. **Data inconsistency** (conflicting versions of the same data).
4. **No concurrency control** (data corruption when accessed simultaneously).
5. **Security issues** (no proper user access control).
6. **Access complications** (manually managing data is hard).

> ✅ Short Note:
> 
> 
> DBMS is software that manages and interacts with databases in an organized, secure, and efficient way.
> 

### 🔹 What is RDBMS?

**RDBMS (Relational Database Management System)** is a type of DBMS where data is stored in **tables (relations)** with rows and columns.

- Uses **keys** to connect data across multiple tables.
- Ensures **data integrity** and **eliminates redundancy**.
- 

📌 Examples:

- MySQL
- PostgreSQL
- SQLite
- SQL Server
- 

> ✅ Short Note:
> 
> 
> RDBMS stores data in tables and uses relationships to connect data logically.
> 

### 🔹 What is SQL?

**SQL (Structured Query Language)** is the **standard language** used to communicate with DBMS and RDBMS.

- It is used to **create**, **read**, **update**, and **delete** (CRUD) data in the database.
- It can also be used for data filtering, sorting, and aggregating.

📌 Common SQL Commands:

- `SELECT` → to retrieve data
- `INSERT` → to add new data
- `UPDATE` → to modify existing data
- `DELETE` → to remove data
- `CREATE` / `DROP` → to manage tables or databases

> ✅ Short Note:
> 
> 
> SQL is the language used to interact with DBMS for managing data efficiently.
> 

### 🔹 Types of Databases

### 1. **Relational Databases**

- Store data in **tables**.
- Use **SQL** for interaction.
- **Examples:**
    - MySQL
    - PostgreSQL
    - SQLite
    - SQL Server
    

### 2. **Document-Oriented Databases**

- Store data in **documents** (usually JSON format).
- Great for **semi-structured or unstructured data**.
- **Examples:**
    - MongoDB
    - Amazon DynamoDB
    

### 3. **Key-Value Databases**

- Store data as **key-value pairs**.
- Extremely **fast** and **lightweight**.
- **Examples:**
    - Redis
    - Amazon DynamoDB (can act as both document and key-value store)
    

> ✅ Short Note on DB Types:
> 
> - **Relational**: Uses tables (MySQL)
> - **Document**: Uses documents (MongoDB)
> - **Key-Value**: Uses key-value pairs (Redis)

## 📌 Different Types of Database Models

### 🔹 1. **Hierarchical Model**

- Data is organized in a **tree-like structure**.
- Each parent can have **multiple children**, but a child has **only one parent**.
- Fast and simple for one-to-many relationships.

📌 **Example**:

Company → Departments → Employees

### 🔹 2. **Network Model**

- More flexible than hierarchical.
- A child can have **multiple parents**.
- Uses a **graph structure** with nodes and links.

📌 **Example**:

Students enrolled in multiple courses, and each course has many students.

### 🔹 3. **Relational Model**

- Data is stored in **tables (relations)** with rows and columns.
- Each row is a **record**, and each column is a **field**.
- Tables can be **linked** using **keys** (Primary Key & Foreign Key).
- Most popular model today.

📌 **Example**:

A table for Students and another for Courses linked by student_id.

### 🔹 4. **Document Model**

- Stores data as **documents** (e.g., JSON, BSON).
- Best for **semi-structured** or **unstructured** data.
- Very flexible and scalable.

📌 **Example**:

MongoDB storing a user's profile and their posts in one document.

### 🔹 5. **Key-Value Model**

- Stores data as **key-value pairs**.
- Extremely fast for **simple lookups**.
- Best for caching and real-time applications.

📌 **Example**:

`"user123": "John Doe"`

## 📌 Anatomy of a Table/Relation

| Term | Meaning |
| --- | --- |
| Table / Relation | Collection of rows and columns |
| Column / Attribute | Defines field names (e.g., name, email) |
| Row / Tuple | A single entry or record |
| Record | One row of data |
| Constraints / Domain | Rules for valid data (e.g., email format) |
| Cardinality | Total number of rows |
| Degree | Total number of columns |

:

---

## 🔑 **Keys in Relational Database**

- **Primary Key**: A column (or set of columns) that **uniquely identifies each record** in a table; **cannot be null or duplicate**.
- **Foreign Key**: A field in one table that **refers to the Primary Key** of another table to establish a **relationship** between tables.
- **Super Key**: **Any combination** of columns that can **uniquely identify** a row; may include extra attributes.
- **Candidate Key**: A **minimal super key** — no extra fields, just enough to uniquely identify records.
- **Alternate Key**: **Candidate keys that are not selected** as the primary key.
- **Composite Key**: A **primary key formed by combining two or more columns** to uniquely identify a record.

## Keys, Candidate Key, Primary Key

A Candidate Key is a minimal set of columns that can uniquely identify each record in a table.

- **Primary Key :** A Primary Key uniquely identifies each record in a table and cannot be null.

- **Alternate Key :** An Alternate Key is a candidate key that is not chosen as the primary key.

- **Composite key:** A Composite Key is a combination of two or more columns that together uniquely identify a record in a table.

- **Foreign Key :** A Foreign Key is a column in one table that refers to the Primary Key in another table, establishing a relationship between them.

### Database Design

SDLC

Planing → Analysis → System Design → Building → Testing → Deployment

Purpose of database design: Structured organization for Efficient data management and retrieval 

## Technique to design database

- Top Down → start from zero

1. Determining Entities
    1. Place, Person or thing
    2. Properties or attributes
    3. Unique Identity
    4. Singular name
    5. Should more then one instance of data
    
2. Determining attributes for each entities
    1. Should be related to the entity
    2. Should be atomic - entity small parts like person small parts - name, age, color
    3. Should have keys
    
3. Relationships among Entities or Relationship Cardinality
    
    Relationships: Connection between entity or table
    
    একটি টেবিল এর কতগুলো row আরেকটা টেবিল এর কতগুলো row এর সাথে  কিভাবে Connected সেইটাকে বুজানুর জন্য আমরা  Cardinality ব্যাবহার  করি ।
    
    - One-to-One  (1:1)
        - A person has one passport, and a passport belongs to only one person
    - One-to-Many (1:N)
        - A teacher has multiple students. but each student has just one teacher
    - Many-to-One (N:1)
        - Many employees work for one company, but each employee works for only one company.
    - Many-to-Many(N:N)
        - Student can enroll multiple course and each course has multiple students
    - Optional One-to-One (0..1:0..1)
        - A person may or may not have a drivers license .and a drivers may or may not be a associated with a person
    - Optional One-to-Many(0..1:N)
        - A department may or may not have employees but A employee must have a department

- Bottom Up → Existing → next level
- Hybrid Approaches

Entity Relationship (ER) Diagram

An Entity-Relationship (ER) diagram is a visual representation used in database design to illustrate the relationships between entities. it shows how different entities in a database relate to each other through various types of relationships like one to one, one to many, many to many

**Tooling for Er Diagram And Creating First Er Diagram**

- draw.io
- lucidChar
