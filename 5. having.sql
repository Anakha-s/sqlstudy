-- ============================================
-- Example: WHERE vs HAVING in SQL
-- ============================================

-- The WHERE clause is used to filter rows *before* grouping.
-- The HAVING clause is used to filter groups *after* aggregation.
-- (Think of HAVING as "WHERE for aggregated data".)

-- View all data first
SELECT * 
FROM employee_salary;

-- ----------------------------------------------------------
-- 1️⃣ Incorrect example – WHERE cannot be used with aggregate functions
-- ----------------------------------------------------------

-- ❌ This will throw an error because WHERE is evaluated
-- before the GROUP BY, so it cannot use aggregate functions like AVG().
SELECT 
    occupation, 
    AVG(salary) AS avg_salary
FROM employee_salary 
GROUP BY occupation
WHERE AVG(salary) > 50000;

-- ----------------------------------------------------------
-- 2️⃣ Correct example – use HAVING to filter aggregated results
-- ----------------------------------------------------------

-- ✅ HAVING works because it is evaluated *after* GROUP BY and aggregation.
SELECT 
    occupation, 
    AVG(salary) AS avg_salary
FROM employee_salary 
GROUP BY occupation
HAVING AVG(salary) > 50000;

-- This query groups all employees by their occupation,
-- calculates the average salary for each occupation,
-- and then returns only those occupations whose average salary > 50,000.

-- ----------------------------------------------------------
-- 3️⃣ Combining WHERE and HAVING together
-- ----------------------------------------------------------

-- ✅ WHERE filters rows before grouping.
-- ✅ HAVING filters the grouped results after aggregation.
SELECT 
    occupation, 
    AVG(salary) AS avg_salary
FROM employee_salary 
WHERE occupation LIKE '%manager%'         -- filters rows before grouping
GROUP BY occupation 
HAVING AVG(salary) > 50000;               -- filters groups after aggregation

-- ----------------------------------------------------------
-- ✅ Summary:
-- WHERE  → filters individual rows (before GROUP BY)
-- HAVING → filters aggregated groups (after GROUP BY)
-- You can use both in the same query for different filtering stages.
-- ----------------------------------------------------------
