-- ============================================
-- Example: Understanding GROUP BY in SQL
-- ============================================

-- The GROUP BY clause is used to group rows that have the same values
-- in specified columns and often used with aggregate functions (SUM, AVG, COUNT, MAX, MIN).

-- View all data first
SELECT * 
FROM employee_demographics;

-- ----------------------------------------------------------
-- 1️⃣ GROUP BY works similar to DISTINCT, 
-- but is mainly used for performing aggregate calculations.
-- ----------------------------------------------------------

SELECT DISTINCT gender 
FROM employee_demographics;      -- Shows unique genders (just distinct values)

SELECT gender 
FROM employee_demographics 
GROUP BY gender;                 -- Groups by gender (same result as DISTINCT here)

-- ----------------------------------------------------------
-- 2️⃣ Every column in SELECT must either:
--    a) Appear in the GROUP BY clause, OR
--    b) Be inside an aggregate function
-- ----------------------------------------------------------

-- ❌ This will cause an error (non-aggregated column 'age' not in GROUP BY)
SELECT gender, age 
FROM employee_demographics 
GROUP BY gender;

-- ✅ Correct version: Add 'age' also in GROUP BY
SELECT gender, age 
FROM employee_demographics 
GROUP BY gender, age;

-- ----------------------------------------------------------
-- 3️⃣ You cannot select a column that is not grouped or aggregated.
-- ----------------------------------------------------------

-- ❌ Incorrect: 'first_name' not part of GROUP BY or any aggregate
SELECT first_name 
FROM employee_demographics 
GROUP BY gender;

-- ✅ Correct: Use an aggregate function (e.g., AVG, COUNT, SUM, etc.)
SELECT gender, AVG(age) AS avg_age 
FROM employee_demographics 
GROUP BY gender;

-- ----------------------------------------------------------
-- 4️⃣ Using multiple aggregate functions in a single query
-- ----------------------------------------------------------

SELECT 
    gender,
    AVG(age) AS avg_age,       -- Average age per gender
    MAX(age) AS max_age,       -- Maximum age per gender
    MIN(age) AS min_age,       -- Minimum age per gender
    COUNT(age) AS count_age,   -- Total number of employees per gender
    SUM(age) AS total_age_sum  -- Sum of all ages per gender
FROM employee_demographics
GROUP BY gender;

-- ----------------------------------------------------------
-- ✅ Summary:
-- GROUP BY groups rows based on one or more columns.
-- Aggregate functions summarize data within each group.
-- Non-aggregated columns must be included in GROUP BY.
-- ----------------------------------------------------------
