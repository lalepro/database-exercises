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

SELECT emp_no, first_name, last_name
FROM employees
WHERE employees < 20000;

SELECT DISTINCT first_name
FROM employees;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name
ORDER BY last_name;








# GROUP BY EXERCISES

# 2 In your script, use DISTINCT to find the unique
# titles in the titles table.

SELECT DISTINCT title FROM employees.titles;

# 3 Find your query for employees whose last names start
# and end with 'E'. Update the query find just the unique
# last names that start and end with 'E' using GROUP BY.

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name
ORDER BY last_name;

# 4 Update your previous query to now find unique combinations
# of first and last name where the last name starts and ends
# with 'E'. You should get 846 rows.

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name
ORDER BY last_name;

# 5 Find the unique last names with a 'q' but not 'qu'.

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND
  last_name NOT LIKE '%qu%';

# 6 Add a COUNT() to your results and use ORDER BY to
# make it easier to find employees whose unusual name
# is shared with others.

SELECT count(DISTINCT last_name)
FROM employees
WHERE last_name LIKE '%q%' AND
      last_name NOT LIKE '%qu%';

# 7 Update your query for 'Irena', 'Vidya', or 'Maya'.
# Use count(*) and GROUP BY to find the number of
# employees for each gender with those names.

SELECT concat(count(first_name), ' ', gender)
FROM employees
  WHERE first_name
        IN ('irena', 'vidya', 'maya')
GROUP BY gender;



