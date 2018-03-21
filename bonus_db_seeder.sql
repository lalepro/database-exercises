USE bonus_db;
TRUNCATE TABLE products;
-- insert into albums (artist, name, release_date, sales, genre) VALUES ('Michael Jackson', 'Thriller', 1982, 66, 'Pop, Rock, R&B');
insert into bonus_db.products (name, price, isSold)
VALUES
  ('bike', 250.00, TRUE),
  ('cat', 100.00, FALSE ),
  ('bat', 30.00, TRUE),
  ('fish', 50.00, FALSE ),
  ('nes', 200.00, TRUE),
  ('n64', 300.00, FALSE ),
  ('ps3', 400.00, TRUE ),
  ('dog', 75.00, FALSE ),
  ('drill', 60.00, FALSE );