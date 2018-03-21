USE bonus_db;




# 6) create a file called bonus_delete.sql that has queries for the following:
#
# - delete records that have been sold
SELECT * FROM products WHERE isSold = TRUE ;
DELETE FROM products WHERE isSold = TRUE ;
SELECT * FROM products;
# - delete all items under 50
SELECT * FROM products WHERE price < 50;
DELETE FROM products WHERE price < 50;
SELECT * FROM products;
# - delete all records
SELECT * FROM products;
TRUNCATE products;
SELECT * FROM products;
# (remember you can rerun migration and seeder files to retest selects/updates/deletes)