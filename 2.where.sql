-- ==========================================================
-- 🧩 WHERE CONDITION IN SQL – QUICK REFERENCE
-- ==========================================================

-- The WHERE clause filters rows based on specified conditions.
-- It appears after the FROM clause and before GROUP BY / ORDER BY.

-- ----------------------------------------------------------
-- 📋 View all data from tables
-- ----------------------------------------------------------
SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;

-- ==========================================================
-- ⚖️ COMPARISON OPERATORS (=, >, >=, <, <=, !=)
-- ==========================================================

-- 1️⃣ '=' : Exact match
SELECT * 
FROM employee_salary 
WHERE first_name = 'Tom';

-- 2️⃣ '>' : Greater than (excludes the value itself)
SELECT * 
FROM employee_salary 
WHERE salary > 50000;

-- 3️⃣ '>=' : Greater than or equal to (includes 50000)
SELECT * 
FROM employee_salary 
WHERE salary >= 50000;

-- 4️⃣ '<' and '<=' : Less than / Less than or equal to
SELECT * 
FROM employee_salary 
WHERE salary < 50000;

SELECT * 
FROM employee_salary 
WHERE salary <= 50000;

-- 5️⃣ '!=' : Not equal to (some SQL engines also use '<>')
SELECT * 
FROM employee_demographics 
WHERE gender != 'Male';

-- ==========================================================
-- 🔗 LOGICAL OPERATORS (AND, OR, NOT)
-- ==========================================================

-- 1️⃣ AND → Both conditions must be TRUE
SELECT * 
FROM employee_demographics 
WHERE age > 40 AND gender = 'Female';

-- 2️⃣ OR → At least one condition must be TRUE
SELECT * 
FROM employee_demographics 
WHERE age > 40 OR gender = 'Male';

-- 3️⃣ NOT → Negates a condition
SELECT * 
FROM employee_demographics 
WHERE age > 40 OR NOT gender = 'Male';

-- 4️⃣ Combining conditions with parentheses for clarity
SELECT * 
FROM employee_demographics 
WHERE (first_name = 'Ann' AND age > 30) OR age > 45;

-- ==========================================================
-- 🔍 USING LIKE FOR PATTERN MATCHING
-- ==========================================================
-- LIKE is used to search for patterns rather than exact text.
-- Wildcards:
--   %  → any number of characters (including none)
--   _  → exactly one character
--
-- Examples:
--   WHERE name LIKE 'A%'   → names starting with A (e.g., Alice, Arun)
--   WHERE name LIKE '%a%'  → names containing 'a' (e.g., Sara, Diana)
--   WHERE code LIKE 'AB_'  → starts with AB + one more character (e.g., ABC, ABD)

-- Example 1: Names starting with 'A'
SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A%';

-- Example 2: Names containing 'a'
SELECT * 
FROM employee_demographics 
WHERE first_name LIKE '%a%';

-- Example 3: Names starting with 'A' and exactly two more characters
SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A__';

-- Example 4: Names starting with 'A' and at least two more characters
SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A__%';

-- Example 5: Pattern matching combined with another condition
SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A__%' 
  AND age > 30;

-- ==========================================================
-- ✅ SUMMARY:
-- WHERE → Filters rows before any grouping or aggregation.
-- Supports comparison, logical, and pattern-matching operators.
-- Can be combined with parentheses for complex conditions.
-- ==========================================================
