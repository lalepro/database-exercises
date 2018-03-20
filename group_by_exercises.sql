USE employees;

SELECT count(*) FROM employees;

SELECT count(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT first_name, count(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;

SELECT hire_date, count(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;


# GROUP BY EXERCISES

# 2 In your script, use DISTINCT to find the unique
# titles in the titles table.

SELECT DISTINCT title FROM employees.titles;

# 3 Find your query for employees whose last names start
# and end with 'E'. Update the query find just the unique
# last names that start and end with 'E' using GROUP BY.



