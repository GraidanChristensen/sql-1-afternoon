CREATE TABLE person(person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) );

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES ('Graidan Christensen', 20, 178, 'Fairview', 'White')

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES ('John John', 45, 180, 'NYC', 'Black')

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES ('Snoop Dog', 50, 183, 'LA', 'Green')

INSERT INTO person 
(name, age, height, city, favorite_color)
VALUES ('Bob The Builder', 30, 140, 'Construction Town', 'blue')

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
ORDER BY age ASC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person 
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN ('orange','Green', 'blue' );

SELECT * FROM person
WHERE favorite_color in ('Yellow', 'Purple');

CREATE TABLE orders(order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(200), product_price NUMERIC, quantity INTEGER);

INSERT INTO orders (person_id, product_name, product_price, quantity ) 
VALUES
(0, 'hat', 25.00, 2),
(1, 'shirt', 14.50, 1),
(2, 'pants', 30.39, 3),
(3, 'socks', 5.00, 2),
(4, 'jacket', 50.99, 1)

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 3;

INSERT INTO artist (artist_id, name)
VALUES 
(276, 'The Killers'),
(277, 'Bon Iver'),
(278, 'The Lumineers');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist 
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT employee_id FROM employee
WHERE first_name = 'Nancy';
SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;