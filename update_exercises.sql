USE codeup_test_db;

-- step 1
SELECT * from albums;

UPDATE albums
set sales = (sales * 10);

SELECT * from albums;

-- step 2
SELECT name,release_date from albums where release_date <= 1980;

UPDATE albums
set release_date = release_date - 100
where release_date < 1980;

SELECT * from albums where release_date <= 1980;

-- step 3

SELECT * from albums where artist = 'Michael Jackson';

UPDATE albums
set artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * from albums where artist = 'Peter Jackson';