-- String Functions

SELECT length('sky');

SELECT first_name,length(first_name) 
FROM employee_demographics
ORDER BY length(first_name)
;

SELECT upper('sky');
SELECT lower('SKY');

SELECT rtrim('            sky     ' );

SELECT first_name, 
LEFT(first_name, 4),
right(first_name, 4),
substring(first_name,3,2)
FROM employee_demographics
;

SELECT first_name,                           #can use this data to add to a table or create temp column
birth_date,
SUBSTRING(birth_date,6,2) birth_month
FROM employee_demographics
; 

SELECT first_name, REPLACE(first_name, 'a', 'z')
FROM employee_demographics;

SELECT first_name, LOCATE('An',first_name),locate('o', first_name)
FROM employee_demographics
#WHERE LOCATE('An',first_name) = 1
;

SELECT
CONCAT(first_name,' ', last_name)
FROM employee_demographics
;

