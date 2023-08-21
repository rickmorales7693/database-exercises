USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE first_name LIKE 'E%'
AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAYOFMONTH(birth_date) = 25;

SELECT birth_date
FROM employees
WHERE birth_date BETWEEN 1990 AND 1999;

SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND DAYOFMONTH(birth_date) = 25;

SELECT *
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND DAYOFMONTH(birth_date) = 25
ORDER BY hire_date DESC, birth_date;

SELECT DATEDIFF(CURDATE(), hire_date)
FROM employees
WHERE YEAR(hire_date) BETWEEN 1990 AND 1999
AND MONTH(birth_date) = 12
AND DAYOFMONTH(birth_date) = 25;