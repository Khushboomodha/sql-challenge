# sql-challenge
Module 9 Challenge

Data Modeling
-------------------
Saved the image of the ERD in the file name ERD. The employee table contains comprehensive details of employees and it has many to one relationship with salary, dept_emp & dept_no.

Same with title id many to one relationship while comparing employees to titles. Please refer to ERD Schema

Data Engineering
--------------------------
Please refer to the sql file employee_schema_db for the schemas created in an order to handle the foreign keys. As instructed the tables were imported in the same order as created.

Data Analysis
-------------------------

Please refer to the sqp file name Queries for data analysis wrt the following questions:

List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

For additional data analysis, please refer to the jupyter notebook file name Employee whereby i created the engine and connection through sqlalchemy. I ran the code entering the password and then replaced it with "**********".

Created a bar graph to analysis the average salary by title saved in the image folder.