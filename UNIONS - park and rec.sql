-- UNIONS

SELECT *
FROM employee_demographics
UNION
SELECT *
FROM employee_salary
;

SELECT first_name, last_name
FROM employee_demographics
UNION ALL
SELECT first_name, last_name
FROM employee_salary
;

SELECT first_name, last_name, 'Old Lady' As Label
FROM employee_demographics
WHERE age > 40 AND gender = 'female'
UNION
SELECT first_name, last_name, 'Old Male' As Label
FROM employee_demographics
WHERE age > 40 AND gender = 'male'
UNION
SELECT first_name, last_name, 'High' As Label
FROM employee_salary 
WHERE salary > 70000
ORDER BY first_name
; 