CREATE TABLE schema.employees(
emp_no INT NOT NULL,
emp_title_id VARCHAR NOT NULL,
birth_date VARCHAR NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date VARCHAR NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES schema.titles (title_id),
PRIMARY KEY (emp_no));

------
CREATE TABLE schema.titles(
title_id VARCHAR NOT NULL,
title VARCHAR NOT NULL,
PRIMARY KEY (title_id));
--------
SELECT * FROM schema.employees;
----
CREATE TABLE schema.salaries (
emp_no INT NOT NULL,
salary INT NOT NULL,
PRIMARY KEY (emp_no)
);
---
SELECT * FROM schema.salaries
----
CREATE TABLE schema.dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
PRIMARY KEY (emp_no));
----
SELECT * FROM schema.dept_manager
------
CREATE TABLE schema.dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL);
-----
SELECT * FROM schema.dept_emp
-----
CREATE TABLE schema.departments (
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL,
PRIMARY KEY (dept_no));
