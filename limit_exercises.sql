USE employees;

SELECT * FROM employees;

# limit
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name
DESC LIMIT 10;

SELECT *
FROM employees
WHERE hire_date
      BETWEEN '1990-01-01'
      and '1999-12-31'
      and birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

SELECT *
FROM employees
WHERE hire_date
      BETWEEN '1990-01-01'
      and '1999-12-31'
      and birth_date
          LIKE '%-12-25'
ORDER BY
  birth_date ASC,
  hire_date DESC
LIMIT 5
OFFSET 45;



# offset

SELECT
  emp_no,
  first_name,
  last_name
FROM employees
WHERE first_name
      LIKE 'M%'
LIMIT 20
OFFSET 60;
