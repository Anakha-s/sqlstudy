
# selecting all data from table
SELECT * from employee_demographics;
# selecting table by specifying the database
select * from parks_and_recreation.employee_salary;
# selecting nly desired data from table
SELECT first_name,last_name,employee_id,salary from parks_and_recreation.employee_salary;

# PEMDAS used for calculation and can do any calculation with existing coulumn like foolows

select 
first_name,age , age+10,(age+10)*10 +10 
from employee_demographics;

# distinct 

select distinct gender from employee_demographics;  # distinct with only 1 condition

select distinct first_name,gender from employee_demographics;  # 2 colums 

