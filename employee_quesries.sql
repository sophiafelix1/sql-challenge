SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM schema.employees
JOIN schema.salaries ON employees.emp_no = salaries.emp_no;
-----
--names and hire date 1986
SELECT first_name, last_name, hire_date
FROM schema.employees
WHERE hire_date BETWEEN '01/01/1986' AND '12/31/1986';
---
--list manager of department, dept no, deptn name, employee no, first and last
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM schema.dept_manager
JOIN schema.departments ON dept_manager.dept_no = departments.dept_no
JOIN schema.employees ON dept_manager.emp_no = employees.emp_no;
----
--employee no, last name, first name, department name
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM schema.dept_emp
JOIN schema.employees ON dept_emp.emp_no = employees.emp_no
JOIN schema.departments ON dept_emp.dept_no = departments.dept_no;
------
-- first, last, sex, hercules, letter b
SELECT first_name, last_name, sex
FROM schema.employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
-----
-- sales dpt, employee no, last name , first name
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM schema.employees
JOIN schema.dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN schema.departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';
---
---- sales and development, employee, last first, dpt name
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM schema.employees
JOIN schema.dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN schema.departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');


--- descending
SELECT last_name, COUNT(*) AS frequency
FROM schema.employees
GROUP BY last_name
ORDER BY frequency DESC;



