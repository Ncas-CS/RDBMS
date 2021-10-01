-- Common Datatypes

-- INT         -- Whole numbers
-- DECIMAL(M,N)-- Decimal numbers
-- VARCHAR(2)  -- String of text of length 1
-- BLOB        -- Binary Large Object,(stores large data)
-- DATE        -- 'YYYY-MM-DD'
-- TIMESTAMP   -- 'YYYY-MM-DD HH:MM:SS'

-- Table Manipulation

-- Create table
CREATE TABLE students(

    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    sex VARCHAR(1)
);
