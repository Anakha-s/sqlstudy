-- ==========================================================
-- 📘 SQL SELECT STATEMENTS – QUICK REFERENCE
-- ==========================================================

-- 1️⃣ Selecting all data from a table
SELECT * 
FROM employee_demographics;

-- 2️⃣ Selecting data by specifying the database name
SELECT * 
FROM parks_and_recreation.employee_salary;

-- 3️⃣ Selecting specific columns from a table
SELECT 
    first_name, 
    last_name, 
    employee_id, 
    salary
FROM parks_and_recreation.employee_salary;

-- ==========================================================
-- 🧮 USING EXPRESSIONS AND CALCULATIONS (PEMDAS IN SQL)
-- ==========================================================
-- SQL follows the same order of operations as mathematics (PEMDAS):
-- Parentheses → Exponents → Multiplication / Division → Addition / Subtraction
-- You can perform arithmetic operations directly on numeric columns.

SELECT 
    first_name,
    age,
    age + 10 AS age_plus_10,              -- Adds 10 to age
    (age + 10) * 10 + 10 AS final_value   -- Demonstrates use of parentheses (PEMDAS)
FROM employee_demographics;

-- ==========================================================
-- 🔁 USING DISTINCT IN SQL
-- ==========================================================
-- DISTINCT removes duplicate rows from the result set.
-- It ensures each returned combination of selected columns is unique.

-- 1️⃣ DISTINCT with a single column
SELECT DISTINCT gender 
FROM employee_demographics;

-- 2️⃣ DISTINCT with multiple columns
-- Returns unique combinations of first_name and gender
SELECT DISTINCT 
    first_name, 
    gender
FROM employee_demographics;

-- ==========================================================
-- ✅ SUMMARY:
-- SELECT → Retrieves data from tables.
-- DISTINCT → Removes duplicate rows.
-- Expressions → Allow calculations using columns.
-- PEMDAS → Defines order of arithmetic operations in SQL.
-- ==========================================================
