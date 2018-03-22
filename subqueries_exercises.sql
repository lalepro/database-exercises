USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;


SELECT *
FROM employees
WHERE emp_no In (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > curdate()
)
LIMIT 10;

SELECT *
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_emp
  WHERE dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
  )
);

# SUB-QUERIES EXERCISE

# 1 Find all the employees with the
# same hire date as employee 101010 using a sub-query.

# 69 Rows

SELECT * FROM employees WHERE hire_date = (
  SELECT hire_date FROM employees WHERE emp_no = 101010
);


# 2 Find all the titles held by all employees
# with the first name Aamod.dept_no

SELECT first_name FROM employees WHERE emp_no IN (
  SELECT emp_no FROM titles WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE first_name = 'aamod'
  )
);

SELECT DISTINCT title FROM titles WHERE emp_no IN (
  SELECT emp_no FROM employees WHERE first_name = 'aamod'
);

SELECT title FROM titles WHERE emp_no IN (
  SELECT emp_no FROM employees WHERE first_name = 'aamod'
);

# SELECT title FROM employees WHERE emp_no IN (
#   SELECT emp_no FROM dept_manager WHERE emp_no = (
#     SELECT emp_no FROM titles WHERE
#   )
# )

# 3 Find all the current department managers that are female
SELECT first_name, last_name FROM employees WHERE emp_no IN (
  SELECT emp_no FROM dept_manager WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE gender = 'f' AND to_date >= curdate()
  )
);

# Find all the department names that currently have female managers.

# FEMALES

SELECT dept_name FROM departments WHERE dept_no IN (
  SELECT dept_no FROM dept_manager WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE gender = 'f' and to_date >= curdate()
  )
);

# MALES

SELECT dept_name FROM departments WHERE dept_no IN (
  SELECT dept_no FROM dept_emp WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE gender = 'M' and to_date >= curdate()
  )
);

# Find the first and last name of the employee
# with the highest salary.

SELECT first_name, last_name FROM employees WHERE emp_no = (
  SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 1
);

