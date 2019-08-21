-- Person

CREATE TABLE person(
	id SERIAL PRIMARY KEY,
	name TEXT,
  age INTEGER,
  height DECIMAL,
  city TEXT,
  favorite_color TEXT
);

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Alex Standfield', 20, 180, 'Lindon', 'Blue'),
('Harry Potter', 14, 155, 'London', 'Green'),
('Ron Weasley', 14, 170, 'The Burrow', 'Orange'),
('Hermione Granger', 14, 140, 'London', 'Purple'),
('Tom Brady', 42, 193, 'Boston', 'Blue');

SELECT *
FROM person
ORDER BY height DESC;

SELECT *
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
WHERE age = 18;

SELECT *
FROM person
WHERE age < 20 OR age > 30;

SELECT *
FROM person
WHERE age != 27;

SELECT *
FROM person
WHERE favorite_color != 'Red';

SELECT *
FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT *
FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT *
FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT *
FROM person
WHERE favorite_color IN ('Yellow', 'Purple');


-- Orders

CREATE TABLE records(
	order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name TEXT,
  product_price NUMERIC,
  quantity INTEGER
);

INSERT INTO records
(person_id, product_name, product_price, quantity)
VALUES
(12, 'Xbox', 2200, 40),
(12, 'Tesla', 5, 1),
(1, 'Cake', 10, 2),
(400, 'House', 22000000, 1),
(930, 'Taco', 1, 1);

SELECT *
FROM records;

SELECT SUM(quantity)
FROM records;

SELECT SUM(product_price)
FROM records;

SELECT SUM(product_price * quantity)
FROM records
WHERE person_id = 12;


-- Employee

SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date)
FROM employee;

SELECT MIN(birth_date)
FROM employee;

SELECT *
FROM employee
WHERE reports_to = 2;

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';


-- Invoice

SELECT count(*)
FROM invoice
WHERE billing_country = 'USA';

SELECT max(total)
FROM invoice;

SELECT min(total)
FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT count(*)
FROM invoice
WHERE total < 5;

SELECT count(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total)
FROM invoice;

SELECT sum(total)
FROM invoice;