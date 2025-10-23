-- ==========================================================
-- 🔗 SQL UNION & UNION ALL – QUICK REFERENCE
-- ==========================================================

-- The UNION operator is used to combine the results of two or more SELECT statements.
-- Each SELECT statement within a UNION must have:
--   1️⃣ The same number of columns.
--   2️⃣ Corresponding columns with compatible data types.
--   3️⃣ Columns in the same order.

-- ----------------------------------------------------------
-- 📋 View base tables
-- ----------------------------------------------------------
SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;

-- ==========================================================
-- 🧩 BASIC UNION USAGE
-- ==========================================================

-- UNION combines rows from multiple queries into a single result set.
-- It removes duplicate rows by default (similar to DISTINCT).

SELECT * 
FROM employee_demographics
UNION
SELECT * 
FROM employee_salary;

-- ⚠️ Note:
-- This works only if both tables have the same number of columns and compatible data types.
-- If they differ, you must explicitly select matching columns or use aliases.

-- ==========================================================
-- 🧮 UNION (removes duplicates by default)
-- ==========================================================

SELECT 
    first_name, 
    last_name 
FROM employee_demographics
UNION
SELECT 
    first_name, 
    last_name 
FROM employee_salary;

-- Explanation:
-- - The UNION operator merges results from both tables.
-- - Any duplicate (first_name, last_name) combinations will appear only once.
-- - Acts like SELECT DISTINCT on the combined dataset.

-- ==========================================================
-- ⚙️ UNION ALL (includes duplicates)
-- ==========================================================

-- UNION ALL keeps duplicates and is generally faster
-- since it skips the de-duplication step.

SELECT 
    first_name, 
    last_name 
FROM employee_demographics
UNION ALL
SELECT 
    first_name, 
    last_name 
FROM employee_salary;

-- Use UNION ALL when you need *every* record from both queries,
-- including duplicates (for example, when aggregating total counts).

-- ==========================================================
-- 🧠 UNION WITH CONSTANT VALUES & ALIASING
-- ==========================================================

-- You can use constant values or labels in SELECT statements with UNION.
-- This is useful to combine data from different conditions or datasets
-- while maintaining a consistent column structure.

SELECT 
    first_name, 
    last_name, 
    'old' AS status
FROM employee_demographics 
WHERE age > 40
UNION
SELECT 
    first_name, 
    last_name, 
    'rich' AS status
FROM employee_salary
WHERE salary > 60000
ORDER BY first_name, last_name;

-- Explanation:
-- - Both queries have the same structure: (first_name, last_name, label).
-- - UNION merges the results and removes duplicates.
-- - The 'status' column shows 'old' or 'rich' depending on the source query.
-- - ORDER BY applies to the entire result set (not individual queries).

-- ==========================================================
-- ⚖️ KEY DIFFERENCES: UNION vs UNION ALL
-- ==========================================================
-- | Feature                  | UNION                      | UNION ALL                   |
-- |--------------------------|----------------------------|-----------------------------|
-- | Removes duplicates       | ✅ Yes (DISTINCT)           | ❌ No                       |
-- | Performance              | ⏳ Slightly slower          | ⚡ Faster                   |
-- | Use case                 | When unique results needed  | When all results needed     |
-- | Memory usage             | Higher (deduplication step) | Lower                       |

-- ==========================================================
-- ⚠️ RULES & BEST PRACTICES
-- ==========================================================
-- 1️⃣ Each SELECT must have the same number of columns.
-- 2️⃣ Columns must be in the same order and have compatible data types.
-- 3️⃣ ORDER BY applies only once at the end of the full UNION query.
-- 4️⃣ Aliases must match across all SELECTs for clarity.
-- 5️⃣ Use parentheses for clarity when combining multiple UNIONs.

-- Example with multiple unions and parentheses:
-- (SELECT ... ) 
-- UNION 
-- (SELECT ... ) 
-- UNION ALL 
-- (SELECT ... );

-- ==========================================================
-- ✅ SUMMARY:
-- UNION → Combines results and removes duplicates.
-- UNION ALL → Combines results and keeps duplicates.
-- ORDER BY → Must appear at the end of the entire UNION chain.
-- Columns → Must match in number, order, and compatible data types.
-- ==========================================================
