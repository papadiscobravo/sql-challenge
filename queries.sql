--1
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.sex,
	salaries.salary
FROM employees
INNER JOIN salaries
ON (employees.emp_no = salaries.emp_no);

--2
SELECT
	first_name,
	last_name,
	hire_date
FROM employees
WHERE EXTRACT(year FROM hire_date) = 1986;

--3
SELECT
	dept_manager.dept_no,
	departments.dept_name,
 	dept_manager.emp_no,
 	employees.last_name,
 	employees.first_name
FROM dept_manager
JOIN departments ON (dept_manager.dept_no = departments.dept_no)
JOIN employees ON (dept_manager.emp_no = employees.emp_no);


--4
SELECT
	employees.emp_no,
	employees.last_name,
 	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN departments ON (dept_emp.dept_no = departments.dept_no);

--5
SELECT
	last_name,
 	first_name,
	sex
FROM employees
WHERE first_name = 'Hercules' AND LEFT(last_name, 1) = 'B';

--6
SELECT
	employees.emp_no,
	employees.last_name,
 	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN departments ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales';

--7
SELECT
	employees.emp_no,
	employees.last_name,
 	employees.first_name,
	departments.dept_name
FROM employees
JOIN dept_emp ON (employees.emp_no = dept_emp.emp_no)
JOIN departments ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales' or dept_name = 'Development';

--8
SELECT
	last_name,
	COUNT(last_name)
FROM employees
GROUP BY
	last_name
ORDER BY count desc;

--alt

SELECT
  last_name,
  COUNT(1) AS count
FROM employees
GROUP BY
	last_name
ORDER BY count desc;

