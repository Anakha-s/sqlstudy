-- ==========================================================
-- 🎯 LIMIT & ALIASING IN SQL – QUICK REFERENCE
-- ==========================================================

-- The LIMIT clause is used to restrict the number of rows returned.
-- Aliasing (AS) is used to rename columns or tables for readability.

-- ----------------------------------------------------------
-- 📋 View all data
-- ----------------------------------------------------------
SELECT * 
FROM employee_demographics;

-- ==========================================================
-- 🔢 USING LIMIT TO CONTROL RESULT ROWS
-- ==========================================================

-- 1️⃣ Display only the first 2 rows
SELECT * 
FROM employee_demographics 
LIMIT 2;

-- 2️⃣ Display the last 3 rows
-- To get the "last" rows, you must use ORDER BY (descending order)
SELECT * 
FROM employee_demographics 
ORDER BY employee_id DESC 
LIMIT 3;

-- 3️⃣ Using LIMIT with OFFSET
-- Syntax: LIMIT <offset>, <row_count>
-- Example below: skip the first 2 rows, then display the next 1 row
SELECT * 
FROM employee_demographics 
ORDER BY employee_id DESC 
LIMIT 2, 1;

-- (Alternative syntax in some SQL engines like PostgreSQL or SQL Server)
-- LIMIT 1 OFFSET 2;

-- ==========================================================
-- 🏷️ USING ALIASING (AS)
-- ==========================================================
-- Aliasing gives temporary names to columns or tables.
-- Improves readability, especially for aggregate or calculated columns.

-- Example: Renaming column output using AS
SELECT 
    first_name, 
    AVG(age) AS avg_age      -- 'avg_age' is the alias name
FROM employee_demographics 
GROUP BY first_name 
HAVING AVG(age) > 40;

-- You can also alias table names:
-- SELECT e.first_name, e.age FROM employee_demographics AS e;

-- ==========================================================
-- ✅ SUMMARY:
-- LIMIT → Restricts the number of rows returned.
-- LIMIT with ORDER BY → Useful for getting "top" or "bottom" results.
-- OFFSET → Skips a specified number of rows.
-- AS → Used for aliasing (renaming) columns or tables.
-- ==========================================================
