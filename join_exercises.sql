# USE join_test_db;
# DROP TABLE IF EXISTS users;
# DROP TABLE IF EXISTS roles;
#
# CREATE TABLE roles (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#   PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#   email VARCHAR(100) NOT NULL,
#   role_id INT UNSIGNED DEFAULT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#   ('bob', 'bob@example.com', 1),
#   ('joe', 'joe@example.com', 2),
#   ('sally', 'sally@example.com', 3),
#   ('adam', 'adam@example.com', 3),
#   ('jane', 'jane@example.com', null),
#   ('mike', 'mike@example.com', null),
#   ('Jerry', 'JerBear@beergut.com', 2),
#   ('Dan', 'smarterparty@me.com', 2),
#   ('Harry', 'shaveman@wow.com', 2),
#   ('Stacy', 'StacFace@hey.com', null);
#
#
# # role_id is null for people who sign up and don't yet have a role.
#
# SELECT * FROM roles;
# SELECT * FROM users;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#   left JOIN roles
#     ON users.role_id = roles.id;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM roles
#   left JOIN users
#     ON users.role_id = roles.id;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#   RIGHT JOIN roles
#     ON users.role_id = roles.id;

# SELECT roles.name as role_name, users.role_id, count(*) as role_id_count
# FROM users
#   left JOIN roles
#     ON users.role_id = roles.id
# GROUP BY role_id_count;


USE employees;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, title, d.dept_name
FROM employees as e
  JOIN dept_emp as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
  JOIN titles t
    ON e.emp_no = t.emp_no
##  WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;
LIMIT 10;

# EMPLOYEES DATABASE EXERCISE ON JOINS TOPIC

# 2 Using the example in the Associative Table
# Joins section as a guide, write a query
# that shows each department along with the
# name of the current manager for that department.

SELECT DISTINCT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
  JOIN dept_manager as m
    ON e.emp_no = m.emp_no
JOIN departments as d
    ON m.dept_no = d.dept_no
WHERE m.to_date = '9999-01-01';

# 3 Find the name of all departments currently managed by women.
SELECT DISTINCT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
  JOIN dept_manager as m
    ON e.emp_no = m.emp_no
  JOIN departments as d
    ON m.dept_no = d.dept_no
WHERE m.to_date = '9999-01-01' and e.gender = 'f';

# 4 Find the current titles of employees currently
# working in the Customer Service department.
SELECT title, count(e.emp_no) as total
FROM titles as t
  JOIN employees e
    ON t.emp_no = e.emp_no
  JOIN dept_emp emp
    ON e.emp_no = emp.emp_no
  JOIN departments d
    ON emp.dept_no = d.dept_no
WHERE t.to_date > curdate()
      and dept_name = 'customer service'
      and emp.to_date > curdate()
GROUP BY title;

SELECT dept_name FROM departments;
SELECT title, count(*) FROM titles GROUP BY title;

# 5 Find the current salary of all current managers.

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Full_Name, salary
FROM employees as e
  JOIN dept_manager as m
    ON e.emp_no = m.emp_no
  JOIN departments as d
    ON m.dept_no = d.dept_no
  JOIN salaries s
    ON m.emp_no = s.emp_no
WHERE m.to_date > curdate() and s.to_date >= curdate()
ORDER BY d.dept_name;


# Bonus Find the names of all current employees,
# their department name, and their current manager's name.

SELECT concat(e.first_name, ' ', e.last_name) as Full_Name,
  dept_name as Department_Name,
  concat(z.first_name, ' ', z.last_name) as Manager_Name
FROM employees as e
  JOIN dept_emp AS emp
    ON emp.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = emp.dept_no
  JOIN dept_manager as m
    ON emp.dept_no = m.dept_no
  JOIN employees AS z
    ON z.emp_no = m.emp_no
WHERE emp.to_date > curdate() and m.to_date > curdate()
ORDER BY e.emp_no;



-- Write a query to get the average salary current managers make by gender
-- M 79350.60
-- F 75690.00


-- Write a query to get the avg salary managers historically make by gender
-- M 72810.94
-- F 62037.21


-- get avg salary for all current employees by gender
-- M 72044.66
-- F 71963.57

-- get avg historic salary for all employees by gender
-- M 63842.25
-- F 63750.17







