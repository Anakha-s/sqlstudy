-- =============================================
-- 🟢 SIMPLE LEVEL (5 QUESTIONS)
-- =============================================

-- Q1: Select all columns from the employee_demographics table.
SELECT * from employee_demographics;

-- Q2: Retrieve first_name and age of all employees who are female.
select first_name, age from employee_demographics where gender = 'female';

-- Q3: Find all employees older than 40.
select * from employee_demographics where age> 40;

-- Q4: Get all male employees ordered by age in descending order.
select * from employee_demographics where gender = 'male' order by age desc;

-- Q5: Display only the first 3 rows from the employee_salary table.
select * from employee_salary limit 3;

-- =============================================
-- 🟠 INTERMEDIATE LEVEL (5 QUESTIONS)
-- =============================================

#-- Q6: Find all employees who work in the 'Parks and Recreation' department.
select * from employee_salary where occupation like	'%Parks and Recreation%';

-- Q7: Show first_name, occupation, and salary of employees earning more than 60000.
select first_name,occupation,salary from employee_salary where salary >60000;

-- Q8: List each gender and their average age.
select gender,avg(age) from employee_demographics group by gender;

-- Q9: Get the total number of employees in each department.
select occupation,count(*) AS employee_count from employee_salary group by occupation;

-- Q10: Display all employees whose first_name starts with 'A'.
select * from employee_salary where first_name like 'A%';


-- =============================================
-- 🔴 HARD LEVEL (5 QUESTIONS)
-- =============================================

-- Q11: Show employees whose salary is above the average salary.
select first_name,salary from employee_salary where salary > (select avg(salary) from employee_salary); 

-- Q12: List department names along with the total salary paid in each department.
select occupation,sum(salary) from employee_salary group by occupation;

-- Q13: Find the oldest employee in each department.
#need join will do later
-- Q14: Retrieve employees who do not have a department assigned (dept_id IS NULL).
SELECT *
FROM employee_salary
WHERE dept_id IS NULL;

-- Q15: Find the top 3 highest-paid employees.
select * from employee_salary order by salary desc limit 3;
