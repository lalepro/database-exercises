drop table if exists products;
create table if not exists products(
 id int unsigned not null auto_increment,
  VARCHAR(120),
 name VARCHAR (120),
 price DECIMAL(5,2),
 isSold (tiny)
 PRIMARY KEY (id)
);