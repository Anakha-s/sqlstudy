# ---------------------------------------------
# WHERE CONDITION IN SQL - QUICK REFERENCE
# ---------------------------------------------

# Display all data from tables
SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;

# --------------------------------------------------
# COMPARISON OPERATORS (=, >, >=, <, <=, !=)
# --------------------------------------------------

# 1. Using '=' for exact match
SELECT * 
FROM employee_salary 
WHERE first_name = 'Tom';

# 2. Using '>' (greater than)
# Shows rows with salary higher than 50000 (excludes 50000)
SELECT * 
FROM employee_salary 
WHERE salary > 50000;

# 3. Using '>=' (greater than or equal to)
# Includes 50000 and above
SELECT * 
FROM employee_salary 
WHERE salary >= 50000;

# 4. Using '<' and '<=' (less than / less than or equal to)
SELECT * 
FROM employee_salary 
WHERE salary < 50000;

SELECT * 
FROM employee_salary 
WHERE salary <= 50000;

# 5. Using '!=' (not equal to)
SELECT * 
FROM employee_demographics 
WHERE gender != 'Male';

# --------------------------------------------------
# LOGICAL OPERATORS (AND, OR, NOT)
# --------------------------------------------------

# 1. AND → Both conditions must be true
SELECT * 
FROM employee_demographics 
WHERE age > 40 AND gender = 'Female';

# 2. OR → At least one condition must be true
SELECT * 
FROM employee_demographics 
WHERE age > 40 OR gender = 'Male';

# 3. NOT → Negates a condition
SELECT * 
FROM employee_demographics 
WHERE age > 40 OR NOT gender = 'Male';

# 4. Combining conditions using parentheses
SELECT * 
FROM employee_demographics 
WHERE (first_name = 'Ann' AND age > 30) OR age > 45;

# --------------------------------------------------
# USING LIKE FOR PATTERN MATCHING
# --------------------------------------------------
# LIKE is used to search for patterns instead of exact matches.
# Wildcards:
#   %  → any number of characters (including none)
#   _  → exactly one character or a specific value
#
# Examples:
#   WHERE name LIKE 'A%'   → starts with A  (Alice, Arun)
#   WHERE name LIKE '%a%'  → contains 'a'   (Sara, Diana)
#   WHERE code LIKE 'AB_'  → starts with AB and one extra character (ABC, ABD)

# Examples using LIKE:
SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A%';        # Names starting with A

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE '%a%';       # Names containing 'a'

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A__';       # Names with A followed by two characters

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A__%';      # A + at least two more characters

SELECT * 
FROM employee_demographics 
WHERE first_name LIKE 'A__%' 
  AND age > 30;                    # Pattern match + condition
