-- =============================================
-- 🟢 SIMPLE LEVEL
-- =============================================

-- 1. Select all columns from employee_salary
select * from employee_salary;

-- 2. Get first_name and last_name of all male employees
select first_name,last_name from employee_demographics where gender = 'male';

-- 3. Show all employees who are younger than 35
select * from employee_demographics where age< 35;

-- 4. Display all employees ordered by salary ascending
select * from employee_salary order by salary asc;

-- 5. Show only the first 5 rows from employee_demographics
select * from employee_demographics limit 5;


-- =============================================
-- 🟠 INTERMEDIATE LEVEL
-- =============================================

-- 6. List all employees whose first_name contains the letter "r"
select * from employee_demographics where first_name like '%r%';

-- 7. Show all female employees whose age is greater than 40
select * from employee_demographics where gender = 'female' and age >40;

-- 8. Count how many employees have each occupation
select occupation,count(*) as count from employee_salary group by occupation;

-- 9. Find the average salary for each occupation
select occupation,avg(salary) as avg_salary from employee_salary group by occupation;

-- 10. Display employees whose salary is less than 50,000, ordered by salary descending
select * from employee_salary where salary <50000 order by salary desc;

-- =============================================
-- 🔴 ADVANCED LEVEL
-- =============================================

-- 11. Find occupations where the average salary is more than 60,000
select occupation,avg(salary) from employee_salary group by occupation having avg(salary) >60000;

-- 12. Count how many employees are older than 40 in each gender
select gender,count(*) from employee_demographics where age>40 group by gender ;

-- 13. Show the top 2 highest-paid employees per occupation
select occupation, max(salary) as max_salary
from employee_salary
group by occupation;

-- 14. Display occupations that have more than 1 employee
select occupation,count(*) from employee_salary group by occupation having count(*)>1;

-- 15. List all employees whose first_name starts with "C" or "D", ordered alphabetically
select * from employee_demographics where first_name like 'c%' or first_name like 'D%' order by first_name asc;

