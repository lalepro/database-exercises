USE employees;

# - concat the max salaries of the first two employees

SELECT salary as ms, concat(e.first_name, ' ', e.last_name ) AS FULL_NAME
FROM employees AS e
JOIN salaries s
    ON e.emp_no = s.emp_no
  WHERE s.to_date >= curdate()
ORDER BY ms DESC
LIMIT 2;


-- get current manager name of Sales department (use subqueries)

SELECT first_name, last_name FROM employees WHERE emp_no in (
  SELECT emp_no FROM dept_manager WHERE dept_no = (
    SELECT dept_no FROM departments WHERE dept_name = 'sales' and to_date >=curdate()
  )
);



-- get all senior engineers in customer service department
SELECT title, concat(e.first_name, ' ', e.last_name) as FULL_NAME
FROM employees as e
JOIN titles t
    ON e.emp_no = t.emp_no
JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
JOIN departments d
    ON emp.dept_no = d.dept_no
WHERE title = 'senior engineer'
      and t.to_date >= curdate()
      AND d.dept_name = 'customer service';

-- get all first and last names of current Sales department employees

SELECT concat(e.first_name, ' ', e.last_name) as FULL_Name
FROM employees as e
JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
JOIN departments d
    ON emp.dept_no = d.dept_no
WHERE d.dept_name = 'sales' and emp.to_date >= curdate();

-- get the name of the employee with the highest salary

SELECT first_name, last_name FROM employees WHERE emp_no = (
  SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 1
);


# ================================= RELATIONSHIP BONUSES

-- what is the most common birthday in the company? least common?
SELECT birth_date FROM employees ORDER BY birth_date DESC;

SELECT sum(DISTINCT birth_date) FROM employees;

-- what is the average salary of managers by department?
SELECT avg(salary), dept_name
FROM employees as e
JOIN dept_manager manager ON e.emp_no = manager.emp_no
JOIN departments d ON manager.dept_no = d.dept_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE manager.to_date >curdate() GROUP BY dept_name;

SELECT sum(emp_no) FROM dept_manager;

-- how many employees currently work in each department?
SELECT count(emp.emp_no), dept_name
FROM employees as e
JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
JOIN departments d
    ON emp.dept_no = d.dept_no
WHERE to_date >= curdate()
GROUP BY dept_name;

-- what is the average salary for each department?


-- what was the average salary in the 80s? By department?
SELECT avg(salary), dept_name
FROM employees as e
  JOIN salaries s
    ON e.emp_no = s.emp_no
  JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
  JOIN departments d
    ON emp.dept_no = d.dept_no
WHERE emp.from_date = '1980-01-01' and emp.to_date = '1989-12-31' GROUP BY dept_name;

SELECT avg(salary), dept_name
FROM employees as e
  JOIN dept_manager manager ON e.emp_no = manager.emp_no
  JOIN departments d ON manager.dept_no = d.dept_no
  JOIN salaries s ON e.emp_no = s.emp_no
WHERE manager.to_date >curdate() GROUP BY dept_name;

-- how many times (on average) do employees switch titles?

-- how many times (on average) do employees get a raise?

-- what is the highest paying job title historically for women and men? For women only? For men only?

-- does the older halve of current employees make more or less than the younger halve?

-- list the oldest current employees by title in each department

-- list the 5 historically lowest paid managers


-- EXTRA HARD BONUS --

-- what employees were hired during the year Nevermind was released and after?
# (you will need to use the codeup_test_db and employees db)

