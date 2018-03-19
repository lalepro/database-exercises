USE codeup_test_db;

-- SELECT * from albums WHERE release_date >= 1991;
DELETE FROM albums WHERE release_date >= 1991;

-- SELECT * from albums where genre = disco;
DELETE FROM albums WHERE genre = 'disco';

-- select * from albums where artist = 'nirvana';
DELETE FROM albums WHERE artist = 'nirvana';