-- To run the SQL code, you need to execute it in a database management system (DBMS) like MySQL, PostgreSQL, SQLite, or SQL Server. Here are the steps to run the SQL code using SQLite as an example:

-- 1. **Install SQLite**: If you don't have SQLite installed, download and install it from [sqlite.org](https://www.sqlite.org/download.html).

-- 2. **Create a database file**: Open a terminal or command prompt and create a new SQLite database file:
--     ```sh
--     sqlite3 test.db
--     ```

-- 3. **Run the SQL script**: Once you are in the SQLite command line, you can run your SQL script by using the `.read` command:
--     ```sh
--     .read /c:/Users/USER/.vscode/SQL/test/sql_test/test.git
--     ```

-- 4. **Verify the data**: You can verify that the data has been inserted correctly by running a `SELECT` query:
--     ```sql
--     SELECT * FROM employees;
--     ```

-- If you are using a different DBMS, the steps will be similar, but the commands to start the database and run the script may vary.
-- -- Example SQL script to create a table and insert data

-- Create a table named 'employees'
CREATE TABLE employees_list
(
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    emails TEXT NOT NULL UNIQUE,
    hire_date TEXT NOT NULL
);

-- Insert data into the 'employees' table
INSERT INTO employees_list
    (first_name, last_name, emails, hire_date)
VALUES
    ('John', 'Doe', 'john.doe@example.com', '2023-01-15'),
    ('Jane', 'Smith', 'jane.smith@example.com', '2023-02-20'),
    ('Alice', 'Johnson', 'alice.johnson@example.com', '2023-03-10');

-- Select all data from the 'employees' table
SELECT *
FROM employees_list;

