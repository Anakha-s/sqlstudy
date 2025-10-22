-- Q1: Select all columns from the employee_demographics table.

SELECT * from employee_demographics;

-- Q2: Retrieve first_name and age of all employees who are female.

select first_name, age from employee_demographics where gender = 'female';

-- Q3: Find all employees older than 40.

select * from employee_demographics where age> 40;

-- Q4: Get all male employees ordered by age in descending order.

select * from employee_demographics where gender = 'male' order by age desc;

-- Q5: Display only the first 3 rows from the employee_salary table.

select * from employee_salary limit 3
