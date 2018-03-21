USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name
ORDER BY full_name
LIMIT 25;


SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name
ORDER BY last_name
LIMIT 25;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT hire_date, COUNT(*) as number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;

SELECT CONCAT(first_name, ', ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name
LIMIT 10;

# SELECT *
#   From employees as e, salaries as s
# WHERE e.first_name in ('irena')
# order by s.emp_no
# LIMIT 5;




# 3 Return 10 employees in a result set named 'full_name'
# in the format of 'lastname, firstname' for each employee.

SELECT concat(last_name, ', ', first_name) as full_name
FROM employees
GROUP BY emp_no
LIMIT 10;

# 4 Add the date of birth for each employee as 'DOB' to the query.
SELECT concat(last_name, ' ', first_name) as full_name, concat(birth_date) AS DOB
FROM employees
GROUP BY emp_no
LIMIT 10;

# 5 Update the query to format full name to include the employee number
# so it is formatted as 'employee number - lastname, firstname'.
SELECT concat(emp_no, ' - ',last_name, ' ', first_name) as full_name, concat(birth_date) AS DOB
FROM employees
GROUP BY full_name, DOB
LIMIT 10;

