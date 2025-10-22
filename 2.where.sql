# WHERE CONDITION

select * from employee_demographics;

select * from employee_salary;

# check with comparison(=) 
select * FROM employee_salary where first_name = 'Tom';

# check with > when we use this it omit the mentioned data and show one above the mention data 
select * from employee_salary where salary > 50000;

# check with >= to include the mentioning data
select * from employee_salary where salary >=50000;

# simiar to < and <=
select * from employee_salary where salary <50000;
select * from employee_salary where salary <= 50000;

# using ! (not)
select * from employee_demographics where gender != 'male';

# LOGICAL OPERATOR AND OR NOT
select * from employee_demographics where age > 40 AND gender = 'Female';
select * from employee_demographics where age > 40 OR gender = 'Male';
select * from employee_demographics where age > 40 or not gender = 'male';

select * from employee_demographics where (first_name = 'Ann' AND age > 30) or age > 45;

--  LIKE statement in SQL is used to search for patterns in text data, rather than finding an exact match (as with the = operator).
-- It uses wildcard characters to represent unknown or variable parts of a string:
-- % (percent sign) – Represents any number of characters, including none.
-- Example:
-- WHERE name LIKE 'A%' → Finds all names starting with 'A' (e.g., Alice, Arun, Anita).
-- _ (underscore) – Represents exactly one character.
-- Example:
-- WHERE code LIKE 'AB_' → Finds all codes that start with 'AB' and have one more character (e.g., ABC, ABD, ABX).
-- In short:
-- Use = when you need an exact match.
-- Use LIKE when you want to find similar patterns in text data.

select * from employee_demographics where first_name like 'a%';
select * from employee_demographics where first_name like '%a%';
select * from employee_demographics where first_name like 'A__';
select * from employee_demographics where first_name like 'A__%';
select * from employee_demographics where first_name like 'A__%' AND age >30;
