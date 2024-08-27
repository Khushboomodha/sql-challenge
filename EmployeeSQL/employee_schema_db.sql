DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
---------------------------------------------------
create table titles(
title_id varchar primary key,
title varchar not null
);
----------------------------------------------------
create table departments(
dept_no varchar(4) primary key,
dept_name varchar not null
);
-----------------------------------------------------
create table employees(
emp_no integer primary key,
emp_title_id varchar(5) not null,
birth_date varchar not null,
first_name varchar not null,
last_name varchar not null,
sex varchar(1) not null,
hire_date varchar not null,
foreign key (emp_title_id) references titles(title_id)
);
--------------------------------------------------------

create table dept_manager(
dept_no varchar(4) not null,
emp_no integer not null,
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no),
primary key(dept_no,emp_no)
);

---------------------------------------------------
create table dept_emp(
emp_no integer not null,
dept_no varchar not null,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no),
primary key(emp_no,dept_no)
);

------------------------------------------------

create table salaries(
emp_no integer not null,
salary integer not null,
foreign key (emp_no) references employees(emp_no)
);


---------------------------------------------------

select * from titles
select * from departments
select * from employees
select * from dept_manager
select * from dept_emp
select * from salaries