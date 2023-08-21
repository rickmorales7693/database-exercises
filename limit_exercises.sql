USE employees;

SELECT DISTINCT title
FROM titles;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC;

SELECT salary, emp_no
FROM salaries
ORDER BY salary DESC;

SELECT emp_no
FROM salaries
ORDER BY salary
LIMIT 5;

SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;