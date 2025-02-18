-- GROUP BY

SELECT gender 
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age) 
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;

SELECT occupation, AVG(salary)   # Average salary of each occupation
FROM employee_salary
GROUP BY occupation
;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY first_name DESC
;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC  # Order of column is important depending on unique values
;

