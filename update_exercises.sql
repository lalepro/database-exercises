USE codeup_test_db;

SELECT * from albums;
UPDATE albums set sales = (sales * 10);
SELECT * from albums;

SELECT * from albums where release_date <= 1980;
UPDATE albums set release_date = 1800 where release_date <= 1980;
SELECT * from albums where release_date <= 1980;

SELECT * from albums where artist = 'Michael Jackson';
UPDATE albums set artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * from albums where artist = 'Peter Jackson';