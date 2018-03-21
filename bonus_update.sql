USE bonus_db;

# 5) create a file called bonus_update.sql that has queries for the following:

# (remember to first create selects then change to updates)

#
# - change the price of all items before id number 3 to 0
SELECT * FROM products WHERE id < 3;
UPDATE products SET price = 0 WHERE id < 3;
SELECT * FROM products WHERE id < 3;
# - change the name of ps3 to ps4, price to 500.00, and sold status to false
SELECT * FROM products WHERE name = 'ps3';
UPDATE products SET name = 'ps4', price = 500.00 WHERE name = 'ps3';
SELECT * FROM products WHERE name = 'ps4';
# - change all sold values to false
SELECT * FROM products;
UPDATE products SET isSold = FALSE;
SELECT * FROM products;
# - change all sold values of items over 200 to true
SELECT * FROM products WHERE price > 199;
UPDATE products SET isSold = TRUE WHERE price > 199;
SELECT * FROM products WHERE price > 199;

SELECT * FROM products;