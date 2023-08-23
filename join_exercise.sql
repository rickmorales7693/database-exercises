USE employees;

SHOW TABLES;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
    JOIN dept_manager dm
        ON e.emp_no = dm.emp_no
    JOIN departments d
        ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees e
    JOIN dept_manager dm
        ON e.emp_no = dm.emp_no
    JOIN departments d
        ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
AND e.gender = 'F'
ORDER BY d.dept_name;


SELECT t.title AS "Title", COUNT(t.emp_no) AS "Total"
FROM titles t
    JOIN dept_emp de
        ON t.emp_no = de.emp_no
    JOIN departments d
        ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
AND t.to_date = '9999-01-01'
AND de.to_date = '9999-01-01'
GROUP BY t.title;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM employees e
    JOIN dept_manager dm
        ON e.emp_no = dm.emp_no
    JOIN departments d
        ON dm.dept_no = d.dept_no
    JOIN salaries s
        ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(managers.first_name, ' ', managers.last_name) AS Manager
FROM employees e
JOIN dept_emp de
    ON e.emp_no = de.emp_no
JOIN departments d
    ON de.dept_no = d.dept_no
JOIN dept_manager dm
    ON d.dept_no = dm.dept_no
JOIN employees managers
    ON dm.emp_no = managers.emp_no
WHERE de.to_date = '9999-01-01'
AND dm.to_date = '9999-01-01'
ORDER BY d.dept_name, managers.first_name, e.emp_no;