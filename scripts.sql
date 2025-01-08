CREATE DATABASE sales_database;
commit;

CREATE TABLE sales (
    id SERIAL PRIMARY KEY,
    product VARCHAR(255),
    price NUMERIC(10, 2),
    quantity INT
);
commit;

INSERT INTO sales (product, price, quantity) VALUES
('Laptop', 1000, 5),
('Phone', 700, 3),
('Tablet', 500, 2),
('Printer', 300, 4);
commit;


SELECT * 
FROM sales;

SELECT * FROM sales
LIMIT 2;


SELECT SUM(price * quantity) AS total_value
FROM sales;


SELECT 
    product,
    SUM(quantity) AS total_quantity,
    AVG(price) AS average_price
FROM sales
GROUP BY product;
