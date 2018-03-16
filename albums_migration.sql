USE codeup_test_db;
drop table if exists albums;
create table if not exists albums(
 id int unsigned not null auto_increment,
 artist VARCHAR(120),
 name VARCHAR (120),
 release_date INT,
 sales DECIMAL(6,2),
 genre VARCHAR (120),
 PRIMARY KEY (id)
);my