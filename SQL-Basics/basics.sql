-- Common Datatypes

-- INT         -- Whole numbers
-- DECIMAL(M,N)-- Decimal numbers
-- VARCHAR(2)  -- String of text of length 1
-- BLOB        -- Binary Large Object,(stores large data)
-- DATE        -- 'YYYY-MM-DD'
-- TIMESTAMP   -- 'YYYY-MM-DD HH:MM:SS'

------------------------------------------------------------

-- Create DataBase
 CREATE DATABASE school;

-- Syntax:
-- CREATE DATABASE database_name;

------------------------------------------------------------

-- Create table
CREATE TABLE students(

    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    sex VARCHAR(1)

);

-- Syntax:
-- CREATE TABLE table_name( var_name data_type );

------------------------------------------------------------

-- Select
SELECT * FROM table_name;

-- Syntax:
-- SELECT var_name  FROM table_name

------------------------------------------------------------

-- Select distinct

SELECT DISTINCT name FROM students;

-- Syntax:
-- SELECT DISTINCT var_name FROM table_name

------------------------------------------------------------

-- Where
SELECT * FROM students WHERE sex='M';

-- Syntax:
-- SELECT * FROM var_name WHERE condition;

------------------------------------------------------------

-- Conditional operators
SELECT * FROM students WHERE Age=18 AND Sex='M';

-- Syntax:
-- SELECT * FROM var_name WHERE condition operator condition ....;
-- Operators: OR AND NOT

------------------------------------------------------------

-- Insert Rows
INSERT INTO students (student_id, name, age, sex) 
VALUES (199, 'Lord El-Melloi II', 18, 'M');

-- Syntax:
-- INSERT INTO var_name (var_name,....) VALUES ( value,.....);

------------------------------------------------------------

-- NULL values
SELECT name, age, sex
FROM students
WHERE age IS NULL;

SELECT name, age, sex
FROM students
WHERE age IS NOT NULL;

-- Syntax:
-- SELECT var_name,... FROM table_name WHERE var_name IS condition

------------------------------------------------------------

-- Update table
UPDATE students
SET name = 'john wick', age= 20
WHERE student_id = 189;

------------------------------------------------------------

-- Delete column / variable
DELETE FROM students WHERE name='alfred nobel';

-- Syntax:
-- DELETE FROM var_name WHERE condition;

------------------------------------------------------------

-- Backup table

CREATE TABLE students_backup AS SELECT student_id, name, sex FROM students;

-- Syntax:
-- CREATE TABLE new_table_name AS SELECT old_table_column FROM old_table_name;

------------------------------------------------------------

-- Primary key
CREATE TABLE students(

    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    sex VARCHAR(1)

);

CREATE TABLE students(

    student_id INT,
    name VARCHAR(20),
    sex VARCHAR(1)
    PRIMARY KEY(student_id)

);

-- Syntax:
-- var_name data_type PRIMARY KEY,
-- PRIMARY KEY(var_name)

------------------------------------------------------------

-- Describe table
DESCRIBE students;

DESC students;

-- Syntax:
-- DESCRIBE table_name;
-- DESC table_name;

------------------------------------------------------------

-- Backup database

BACKUP DATABASE school TO DISK = './backup.bak';

-- Syntax:
-- BACKUP DATABASE database_name TO DISK = 'filepath' WITH DIFFERENTIAL;

-- A differential back up only backs up the parts of the database 
-- that have changed since the last full database backup.

------------------------------------------------------------

-- Delete database
DROP DATABASE school;

-- Syntax:
-- DROP DATABASE database_name;

------------------------------------------------------------

-- Delete table
DROP TABLE students;

-- Syntax:
-- DROP TABLE table_name;

------------------------------------------------------------

-- Add columns
ALTER TABLE students ADD gpa DECIMAL(3,2);

-- Syntax:
-- ALTER TABLE table_name ADD var_name date_type;

------------------------------------------------------------

-- Delete columns
ALTER TABLE students DROP COLUMN gpa  

-- Syntax:
-- ALTER TABLE table_name DROP COLUMN var_name  

------------------------------------------------------------

-- Re-assign columns
ALTER TABLE students MODIFY name VARCHAR(30);

-- Syntax:
-- ALTER TABLE table_name MODIFY var_name date_type;

------------------------------------------------------------

-- Change data_type
ALTER TABLE students ALTER COLUMN name VARCHAR(20);

-- Syntax:
-- ALTER TABLE table_name ALTER COLUMN var_name new_data_type;

------------------------------------------------------------

-- Constraints

CREATE TABLE students(

    student_id INT PRIMARY KEY,

);

CREATE TABLE students(

    student_id INT,
    PRIMARY KEY(student_id)

);

ALTER TABLE students MODIFY student_id INT PRIMARY KEY;

-- Syntax:
-- var_name data_type contraint_type
-- contraint_type(var_name)

-- NOTNULL Constraints

CREATE TABLE students(

    student_id INT PRIMARY KEY,
    name VARCHAR(20) NOTNULL,
    sex VARCHAR(1) NOTNULL

);

-- UNIQUE Constraints

CREATE TABLE students(

    student_id INT PRIMARY KEY,
    name VARCHAR(20) NOTNULL,
    sex VARCHAR(1) NOTNULL,
    phone VARCHAR(10) NOTNULL UNIQUE

);

-- PRIMARY KEY

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);


-- FOREIGN KEY

CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);









