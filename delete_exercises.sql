USE codeup_test_db;

SELECT name, release_date from albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

SELECT name, genre from albums where genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

select artist,name from albums where artist LIKE 'whitney houston%';
DELETE FROM albums WHERE artist LIKE 'whitney houston%';