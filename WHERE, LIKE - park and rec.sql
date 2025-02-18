-- WHERE

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;

SELECT * 
FROM employee_salary
WHERE salary >= 50000
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
AND gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR gender = 'Male'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
OR NOT gender = 'Male'
;

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55
;

-- LIKE
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'Jer%'  # % - anything 
;

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a%'   # Name starting with A
;

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a__'   # Name starting and only 2 characters after
;

SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1988%'   # Name starting and only 2 characters after
;