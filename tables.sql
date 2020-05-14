drop table departments;
drop table dept_manager;
drop table employees;
drop table salaries;
drop table titles; 
drop table dept_emp;

create table departments(
	dept_no varchar (10) not null primary key,
	dept_name varchar(50) not null);

create table dept_manager(
	dept_no varchar (30) not null,
	emp_no integer not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no));

create table employees (
	emp_no integer not null primary key, 
	emp_title_id varchar (30) not null, 
	birth_date date not null,
	first_name varchar(30) not null, 
	last_name varchar (30) not null, 
	sex varchar (10) not null, 
	hire_date date not null);

create table salaries (
	emp_no integer not null, 
	salary integer not null,
	foreign key (emp_no) references employees(emp_no));

create table titles(
	title_id varchar (30) not null primary key, 
	title varchar (30) not null);

create table dept_emp (
	emp_no int not null,
	dept_no varchar not null,
	foreign_key (emp_no) references employees(emp_no),
	foreign_key (dept_no) references departments(dept_no)); 





