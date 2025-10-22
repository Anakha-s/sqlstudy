-- ============================================
-- Example: Using ORDER BY in SQL
-- ============================================

-- The ORDER BY clause is used to sort the result set
-- in ascending (ASC) or descending (DESC) order.
-- ASC (ascending) is the default if not specified.

-- View all data first
SELECT * 
FROM employee_demographics;

-- ----------------------------------------------------------
-- 1️⃣ ORDER BY in ascending order (default behavior)
-- ----------------------------------------------------------

SELECT * 
FROM employee_demographics 
ORDER BY first_name;             -- Default: ascending order (A → Z)

SELECT * 
FROM employee_demographics 
ORDER BY first_name ASC;         -- Explicitly specifying ASC

-- ----------------------------------------------------------
-- 2️⃣ ORDER BY in descending order
-- ----------------------------------------------------------

SELECT * 
FROM employee_demographics 
ORDER BY first_name DESC;        -- Z → A order

-- ----------------------------------------------------------
-- 3️⃣ ORDER BY multiple columns
-- ----------------------------------------------------------

-- Sorts first by gender (A → Z), and within each gender, 
-- sorts by age in ascending order.
-- So, all Females come first (sorted by age), then Males (sorted by age).
SELECT * 
FROM employee_demographics 
ORDER BY gender, age;

-- ----------------------------------------------------------
-- 4️⃣ Changing sort priority
-- ----------------------------------------------------------

-- When age values are unique, sorting primarily by age 
-- means the gender order won’t be grouped like before.
SELECT * 
FROM employee_demographics 
ORDER BY age, gender;

-- ----------------------------------------------------------
-- 5️⃣ Mixing ASC and DESC for different columns
-- ----------------------------------------------------------

-- You can control sort direction per column.
-- Example: Sort by gender (A → Z), and within each gender,
-- show ages in descending order.
SELECT * 
FROM employee_demographics 
ORDER BY gender ASC, age DESC;

-- ----------------------------------------------------------
-- 6️⃣ Using column position numbers in ORDER BY
-- ----------------------------------------------------------

-- You can use the column's position number (based on SELECT order)
-- instead of its name. For example:
-- 5 = the 5th column in SELECT, 4 = the 4th column.
-- However, this approach is **not recommended** because:
-- - It makes queries less readable.
-- - It may break if the SELECT column order changes.

SELECT * 
FROM employee_demographics 
ORDER BY 5, 4 DESC;

-- ----------------------------------------------------------
-- ✅ Summary:
-- ORDER BY controls the sorting of query results.
-- - Default order is ASC (ascending).
-- - Can sort by one or more columns.
-- - Can mix ASC and DESC directions.
-- - Can use column positions (not recommended for maintainability).
-- ----------------------------------------------------------
