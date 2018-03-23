CREATE DATABASE IF NOT EXISTS el_adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ad_category;

USE el_adlister_db;

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(200),
  last_name VARCHAR(200),
  email VARCHAR(200),
  password VARCHAR(200),
  PRIMARY KEY (id)
);
CREATE TABLE categories (
  cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(200),
  PRIMARY KEY (cat_id)
);

CREATE TABLE IF NOT EXISTs ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(120),
  description VARCHAR(200),
  price DECIMAL(6,2),
  PRIMARY KEY (id),
  user_id int UNSIGNED NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id)
);


CREATE TABLE IF NOT EXISTS ad_category (
  ads_id INTEGER UNSIGNED NOT NULL,
  category_id INTEGER UNSIGNED NOT NULL,
  FOREIGN KEY (ads_id) REFERENCES ads (id),
  FOREIGN KEY (category_id) REFERENCES categories (cat_id)
);

