# Databases, DBMS, SQL, and more

## Database Basics

- Modern programs and applications often require the storage and management of dynamically generated data, such as information on people, places, and shop items. To accomplish this, these applications utilize **databases**, which are **organized collections of structured information** stored in a computer system.
- A database is typically managed by a **Database Management System (DBMS)**, another kind of complex software enabling interaction between a user or an application and a database. As a primary means for interaction, DBMS provides **Structured Query Languages (SQL)** for data manipulation. Examples of DBMS are **MySQL**, **PostgreSQL**, **MariaDB**, and **Redis**.
- **SQL** is a **programming language** designed for **storing** and **processing** information in a **relational database**. It serves as the standard language for communicating with relational database management systems, with statements used for tasks like **updating data** or **retrieving information**.

### Key Points about Relational Databases

- **Data Organization:** In a relational database, data is structured into tables, where each table comprises **rows** and **columns**. Rows represent individual records or data points, and columns represent specific attributes or fields.
- **Relationships:** A distinctive feature of a relational database is the establishment of relationships between tables, defining how data in one table is linked to data in another, typically through keys like **primary** and **foreign keys**.

### Relationship Types

- **One-to-One (1:1) Relationship:** Each record in the first table corresponds to one record in the second table, and vice versa. For example, a person has one passport, and a passport belongs to one person.
- **One-to-Many (1:N) Relationship:** Each record in the first table can be related to multiple records in the second table, but each record in the second table is related to only one record in the first table. For instance, a department has many employees, but each employee belongs to only one department.
- **Many-to-Many (M:N) Relationship:** Each record in the first table can be related to multiple records in the second table, and vice versa. An intermediary (junction) table manages this relationship. For example, students can enroll in multiple courses, and each course can have multiple enrolled students.

## Indexing and Storage

- **Indexes** in a database are **objects that facilitate quick and efficient data retrieval operations** based on the values in one or more columns. The primary purpose of an index is to enhance the speed of data retrieval operations on a database table.
- When the **INDEX** command is executed, a **"BTree"** data structure is created in memory, similar to a "Binary Tree" data structure, with the key difference that each node in BTrees usually has more than two children.
- It's important to use **indexes** judiciously as they **come with a storage cost**. They are **beneficial for large tables** or **columns frequently used** in search conditions but may not be necessary for small tables or columns infrequently queried. Over-indexing, creating indexes on every column, can lead to increased storage requirements and maintenance overhead, so it's crucial to strike a balance between improved query performance and the associated storage tradeoff.

## Concurrency Control and SQL Injection

- SQL can encounter a **race condition** when multiple transactions or processes attempt to access and modify shared data concurrently. In such scenarios, the outcome of the operations becomes unpredictable, leading to potential issues such as data inconsistency, corruption, or unintended errors. To prevent unpredictable and potentially incorrect results, SQL databases use techniques like **locking** and **transactions**, ensuring that only one transaction can modify a piece of data at a time.
- **SQL Injection** is a security vulnerability where an attacker manipulates a database query by injecting malicious SQL code. This is often done by manipulating user input to alter the intended functionality of the SQL queries. Secure coding practices, such as **parameterized queries** and **input validation**, are crucial for mitigating the risk of SQL injection and maintaining the integrity of the database.
