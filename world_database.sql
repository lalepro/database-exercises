USE world;

SELECT * FROM city WHERE Name = 'santa monica';

# 2 FROM MYSQL EXTRA EXERCISES

# JOIN METHOD
SELECT Language, Percentage
FROM countrylanguage AS cl
JOIN country c
    ON cl.CountryCode = c.Code
JOIN city c2
    ON c.Code = c2.CountryCode
WHERE c2.Name = 'santa monica';


# SUB-Q
SELECT Language, Percentage FROM countrylanguage WHERE CountryCode IN (
  SELECT code FROM country WHERE Code = (
    SELECT CountryCode FROM city WHERE name = 'santa monica'
  )
);

