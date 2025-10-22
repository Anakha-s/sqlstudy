# ---------------------------------------------
# SELECT STATEMENTS IN SQL - QUICK REFERENCE
# ---------------------------------------------

# 1. Selecting all data from a table
SELECT * FROM employee_demographics;

# 2. Selecting data by specifying the database name
SELECT * FROM parks_and_recreation.employee_salary;

# 3. Selecting only desired columns from a table
SELECT first_name, last_name, employee_id, salary
FROM parks_and_recreation.employee_salary;

# -----------------------------------------------------
# USING EXPRESSIONS AND CALCULATIONS (PEMDAS IN SQL)
# -----------------------------------------------------
# SQL follows PEMDAS order: Parentheses, Exponents, Multiplication/Division, Addition/Subtraction
# You can perform calculations on existing columns.

SELECT 
    first_name,
    age,
    age + 10 AS age_plus_10,              # Adds 10 to age
    (age + 10) * 10 + 10 AS final_value   # Complex calculation using PEMDAS
FROM employee_demographics;

# ---------------------------
# USING DISTINCT IN SQL
# ---------------------------
# DISTINCT removes duplicate values from the result set.

# 1. Distinct with one column
SELECT DISTINCT gender
FROM employee_demographics;

# 2. Distinct with multiple columns
SELECT DISTINCT first_name, gender
FROM employee_demographics;
