## SQL Keywords and Concepts

### DDL (Data Definition Language) Statements
- `CREATE TABLE`: Creates a new table with specified columns and their data types.
- `ALTER TABLE`: Modifies an existing table, such as adding or dropping columns.
- `DROP TABLE`: Removes an existing table from the database.

### DML (Data Manipulation Language) Statements
- `INSERT INTO`: Adds new records to a table.
- `UPDATE`: Modifies existing records in a table based on a specified condition.
- `DELETE FROM`: Removes records from a table based on a specified condition.

### Constraints
- `PRIMARY KEY`: Ensures that a column (or a set of columns) uniquely identifies each record in a table.
- `FOREIGN KEY`: Establishes a link between data in two tables, enforcing referential integrity.
- `UNIQUE`: Ensures that all values in a column are distinct.
- `CHECK`: Sets a condition that values in a column must satisfy.
- `DEFAULT`: Specifies a default value for a column when no value is explicitly provided.

### Subqueries
- `SELECT`: Retrieves data from one or more tables.
- `FROM`: Specifies the tables from which to retrieve data.
- `WHERE`: Filters the rows based on specified conditions.
- `HAVING`: Filters groups based on aggregate conditions.
- `ORDER BY`: Sorts the result set based on specified columns.
- `LIMIT/OFFSET` or `FETCH FIRST`: Limits the number of rows returned.

### Aggregate Functions
- `SUM(column)`: Calculates the sum of values in a numeric column.
- `AVG(column)`: Calculates the average value of a numeric column.
- `COUNT(column)`: Counts the number of rows in a result set.
- `MAX(column)`: Returns the maximum value in a column.
- `MIN(column)`: Returns the minimum value in a column.

### Other
- `AS`: Renames a column or table in the result set using an alias.
- `LIKE`: Searches for a specified pattern in a column.

### GROUP BY Clause
- The SQL keywords (`SELECT`, `FROM`, `WHERE`, etc.) are used mostly in conjunction with the `GROUP BY` clause and [aggregate functions](#aggregate-functions) to group rows based on specified columns. Each group is represented by a single row in the result set.  while it's less common to use GROUP BY without aggregate functions, it can be employed for the purpose of obtaining distinct values or eliminating duplicates in the specified column(s)
- Besides aggregate functions, **only** the columns that we `GROUP BY` should be selected. Otherwise it would typically result in an error, as the database engine wouldn't know which specific value to select for that column within each group.

### JOIN Operation
- The `JOIN` operation combines rows from two or more tables based on related columns. Join conditions specify how rows should match between tables. Basic join types include:
    - `INNER JOIN`: Returns records with matching values in both tables.
    - `LEFT (OUTER) JOIN`: Returns all records from the left table and matched records from the right table.
    - `RIGHT (OUTER) JOIN`: Returns all records from the right table and matched records from the left table.
    - `FULL (OUTER) JOIN`: Returns all records when there is a match in either the left or right table.

### LIKE Operator
The `LIKE` operator is used in a `WHERE` clause to search for a specified pattern in a column. It supports the use of special wildcard characters to enhance pattern matching. Here are the commonly used special characters:

- `%` (Percent Sign): Represents zero or more characters. When used at the beginning, it matches any sequence of characters at the end of the string. When used at the end, it matches any sequence of characters at the beginning of the string. When used at both ends, it matches any sequence of characters anywhere in the string.
- `_` (Underscore): Represents a single character. It is used to match any single character in the specified position.
- `[ ]` (Square Brackets): Defines a character set, allowing for matching any single character within the specified range or set. For example, `[a-e]` matches any character from 'a' to 'e'.
- `^` (Caret): Used within square brackets to negate the pattern. For example, `[^0-9]` matches any character that is not a digit.
- `\` (Backslash): Serves as an escape character. It allows you to use wildcard characters as literal characters when they need to be treated as such. For example, `100\%` matches the string '100%'.

### Transactions
- `BEGIN TRANSACTION`: Starts a new transaction.
- `COMMIT`: Saves changes made during the current transaction.
- `ROLLBACK`: Undoes changes made during the current transaction.

<hr>

### BONUS:
### CASE Expressions
- The `CASE` expression goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the **ELSE** clause. <br> If there is no ELSE part and no conditions are true, it returns **NULL**.
- If the `AS` keyword, followed by a name after the `END` of the CASE expression, is not used, the result of the CASE expression will not be given a specific name, and it will be displayed as an anonymous column in the result set
- **Syntax**:
```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END; 
```

<hr>

*For any questions on SQL, I'd suggest you to visit [w3schools](https://www.w3schools.com)*
