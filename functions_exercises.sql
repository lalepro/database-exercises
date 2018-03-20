USE employees;

SELECT * FROM employees;


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
      LIKE '199%'
      and birth_date
          LIKE '%-12-25'
ORDER BY
  birth_date ASC,
  hire_date DESC
LIMIT 5
OFFSET 45;

SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT concat(first_name, '', last_name, 'was born');

SELECT length('dog');

SELECT first_name, length(first_name) FROM employees;

SELECT UPPER(concat("hello"), trim("world"));

SELECT now();

SELECT curtime();

SELECT current_date;

SELECT concat('Teaching people to code for ', UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'), ' seconds');





