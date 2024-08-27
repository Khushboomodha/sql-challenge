titles
------------
title_id pk varchar
title varchar


departments
-------------------
dept_no pk varcahr
dept_name varchar



employees
-------------------------
emp_no pk int 
emp_title_id varchar(5) FK >- titles.title_id
birth_date varchar 
first_name varchar 
last_name varchar 
sex varchar(1) 
hire_date varchar



dept_manager
-----------------------------
dept_no varchar(4) FK -  departments.dept_no 
emp_no integer FK -<  employees.emp_no


dept_emp
---------------------------
dept_no varchar FK -  departments.dept_no
emp_no integer FK -<  employees.emp_no


salaries
--------------------
emp_no integer FK -  employees.emp_no
salary integer
