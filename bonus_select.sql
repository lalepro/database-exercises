USE bonus_db;

SELECT * FROM products;



# 4) create a file called bonus_select.sql that has queries for the following:

# - get all information for all products that have been sold
SELECT * FROM products WHERE isSold = TRUE ;
# - get all information for all products that are over 100
SELECT * FROM products WHERE price > 100;
# - get the name and sold status information for the ps3 product
SELECT name, concat(isSold) FROM products WHERE name = 'ps3';
# - get the price for the dog
SELECT price FROM products WHERE name = 'dog';
# - get the sold status for all products over 199
SELECT name, isSold FROM products WHERE price > 199;