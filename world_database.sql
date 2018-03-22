USE world;

SELECT * FROM city WHERE Name = 'santa monica';

# 2 FROM MYSQL EXTRA EXERCISES

# What languages are spoken in Santa Monica?

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

# How many different countries are in each region?
SELECT Region, count(Name) FROM country GROUP BY Region ORDER BY count(Name);

# SELECT Region FROM country GROUP BY Region;


# What is the population for each region?

SELECT Region , sum(Population) as sp FROM country GROUP BY Region ORDER BY sp DESC;


# What is the population for each continent?

SELECT Continent, sum(Population) as pop FROM country GROUP BY Continent ORDER BY pop DESC ;

# What is the average life expectancy globally?

SELECT avg(LifeExpectancy) FROM country;

SELECT name, max(LifeExpectancy) as le FROM country GROUP BY Name ORDER BY le DESC LIMIT 1;

# What is the average life expectancy for each region, each continent?
# Sort the results from shortest to longest

SELECT Continent, avg(LifeExpectancy) as le FROM country GROUP BY Continent ORDER BY le;

SELECT Region, avg(LifeExpectancy) AS le FROM country GROUP BY Region ORDER BY le;

SELECT LocalName, Name FROM country WHERE LocalName != Name;







