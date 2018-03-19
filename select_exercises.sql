USE codeup_test_db;

select * from albums where artist = 'pink floyd';

-- select * from albums where artist = 'pink floyd' AS 'exercise 1';

select release_date from albums where name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre from albums where name = 'Nevermind';

select * from albums where release_date >=1990 && release_date < 2000;

-- SELECT 'which albums where released in the 90s' AS 'exercise 4';
select * from albums WHERE release_date BETWEEN 1990 and 1999;

-- select 'Where albums had less than 20 million certified sales' as 'Exercise 5';
select * from albums where sales < 20;

select name,genre from albums where genre = 'rock';


