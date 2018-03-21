
USE bonus_db;
drop table if exists products;
create table if not exists products (
  id int unsigned not null auto_increment,
  name VARCHAR(120) NOT NULL ,
  price DECIMAL(6,2) NOT NULL ,
  isSold TINYINT(1) NOT NULL,
  PRIMARY KEY (id)
);