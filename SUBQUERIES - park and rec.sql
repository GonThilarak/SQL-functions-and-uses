-- Subqueries

SELECT *
FROM employee_demographics
;

SELECT *
FROM employee_demographics
WHERE employee_id in 
				(SELECT employee_id
					From employee_salary
                    WHERE dept_id = 1)
;

SELECT first_name,salary,
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary
;

SELECT * 
FROM employee_demographics
;

SELECT avg(max_age)
FROM
(SELECT gender, 
AVG(age), 
max(age) as max_age, 
Min(age), 
Count(age)
FROM employee_demographics
GROUP BY gender) AS Agg_table
;

SELECT employee_id
					From employee_salary
                    WHERE dept_id = 1
;