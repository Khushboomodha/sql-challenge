
--1.List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
join salaries on employees.emp_no = salaries.emp_no;

----------------------------------------------------------------------

--2.List the employee number, last name, first name, sex, and salary of each employee.
select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date like '%1986';

--------------------------------------------------------------------------

--3.List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

---------------------------------------------------------------------

--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join departments on dept_emp.dept_no = departments.dept_no
join employees on dept_emp.emp_no = employees.emp_no;

---------------------------------------------------------------------

--5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

----------------------------------------------------------------------------

--6.List each employee in the Sales department, including their employee number, last name, and first name.
select dept_emp.emp_no, employees.last_name, employees.first_name
from dept_emp
join employees on employees.emp_no = dept_emp.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales';

-----------------------------------------------------------------------------------------

--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees on employees.emp_no = dept_emp.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-------------------------------------------------------------------------------------------

--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(*) as frequency_count
from employees 
group by last_name
order by frequency_count desc;

------------------------------------------------------------------------------------------------
