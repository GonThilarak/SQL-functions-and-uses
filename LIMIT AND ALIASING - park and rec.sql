-- LIMIT AND ALIASING

SELECT * 
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

SELECT gender, AVG(age) AS average_age
FROM employee_demographics
GROUP BY gender
;