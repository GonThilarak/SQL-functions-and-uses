-- Case Statements

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
    WHEN age > 51 THEN 'Very Old'
    END
FROM employee_demographics
;

-- Scenerios
-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finace = 10% bonus

SELECT *
FROM employee_salary
;

SELECT *
FROM parks_departments
;

SELECT first_name, last_name, salary, 
CASE
	WHEN salary < 50000 THEN salary*1.05
    WHEN salary >= 50000 THEN salary*1.07
    END as salary_Increase,
CASE
	WHEN dept_id = 6 THEN salary*0.1
END as Bonnus
FROM employee_salary
;

