-- JOINS

SELECT * 
FROM employee_demographics
;

SELECT *
FROM employee_salary
;

SELECT *             								# INNER JOIN
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id  
;

SELECT dem.employee_id, age, occupation 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id  
;

SELECT *                                             # LEFT and RIGHT JOIN -- If no values in other column apart from Joining Column it will populate null values
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id  
;

-- SELF JOIN

SELECT emp1.employee_id emp_santa,
emp1.first_name first_name_santa,
emp1.last_name last_name_santa,
emp2.employee_id emp_rec,
emp2.first_name first_name_rec,
emp2.last_name last_name_rec
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1= emp2.employee_id
;

SELECT *             								# Multiple JOIN
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id 
JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;
