-- ==========================================================
-- 🔗 SQL JOINS – QUICK REFERENCE
-- ==========================================================

-- Joins are used to combine data from two or more tables
-- based on a related column (usually a primary key and foreign key).

-- ----------------------------------------------------------
-- 📋 View tables for reference
-- ----------------------------------------------------------
SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;

-- ==========================================================
-- 🤝 INNER JOIN (or simply JOIN)
-- ==========================================================
-- Returns only rows where there is a match in both tables.
-- Unmatched rows are excluded.

SELECT * 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;

-- Example selecting specific columns
SELECT 
    dem.employee_id,
    dem.first_name,
    sal.occupation,
    sal.salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;

-- ==========================================================
-- 👈 LEFT JOIN
-- ==========================================================
-- Returns all rows from the LEFT table (employee_demographics),
-- and matching rows from the RIGHT table (employee_salary).
-- If no match is found, NULL values are shown for right-table columns.

SELECT * 
FROM employee_demographics AS dem 
LEFT JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;

-- ==========================================================
-- 👉 RIGHT JOIN
-- ==========================================================
-- Returns all rows from the RIGHT table (employee_salary),
-- and matching rows from the LEFT table (employee_demographics).
-- If no match is found, NULL values are shown for left-table columns.

SELECT * 
FROM employee_demographics AS dem 
RIGHT JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id;

-- ==========================================================
-- 🔁 SELF JOIN
-- ==========================================================
-- A table joined with itself.
-- Useful for comparing rows within the same table.

SELECT * 
FROM employee_demographics AS dem1
JOIN employee_demographics AS dem2
    ON dem1.employee_id = dem2.employee_id;

-- Example: (hypothetical use case)
-- To find employees with the same age
-- SELECT dem1.first_name, dem2.first_name, dem1.age
-- FROM employee_demographics AS dem1
-- JOIN employee_demographics AS dem2
--   ON dem1.age = dem2.age AND dem1.employee_id <> dem2.employee_id;

-- ==========================================================
-- 🧩 MULTIPLE TABLE JOINS
-- ==========================================================
-- Joining three tables together (correct syntax)

SELECT * 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
    ON dem.employee_id = sal.employee_id
JOIN parks_departments AS dep
    ON sal.dept_id = dep.department_id;

-- ❌ INCORRECT SYNTAX EXAMPLE (for learning)
-- Multiple ON clauses separated by commas are invalid.
-- select * from employee_demographics as dem 
-- join employee_salary as sal
-- join parks_departments as dep
-- on dem.employee_id = sal.employee_id,
-- on sal.dept_id = dep.dept_id;  -- ❌ Incorrect

-- ==========================================================
-- ✅ SUMMARY:
-- INNER JOIN → Returns only matching rows.
-- LEFT JOIN  → All rows from left table + matched from right.
-- RIGHT JOIN → All rows from right table + matched from left.
-- SELF JOIN  → Joins a table to itself.
-- MULTIPLE JOINS → Combine 3+ tables using multiple ON conditions.
-- ----------------------------------------------------------
-- Always use table aliases (AS dem, AS sal) for clarity.
-- Use ON to define how the tables are related.
-- ==========================================================
