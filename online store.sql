-- Table created
CREATE TABLE products (
    id INT,
    name VARCHAR(50),
    category VARCHAR(50),
    price INT,
    in_stock VARCHAR(3)
);

-- Inserting values
INSERT INTO products (id, name, category, price, in_stock)
VALUES
(1, 'Laptop', 'Electronics', 45000, 'Yes'),
(2, 'Mouse', 'Electronics', 400, 'Yes'),
(3, 'Chair', 'Furniture', 2500, 'No'),
(4, 'Notebook', 'Stationery', 100, 'Yes'),
(5, 'Phone', 'Electronics', 15000, 'No'),
(6, 'Table', 'Furniture', 1200, 'Yes'),
(7, 'Pen', 'Stationery', 50, 'No'),
(8, 'Headphones', 'Electronics', 800, 'Yes');

-- all unique product
SELECT DISTINCT category
FROM products;

-- products in stock and price < 500
SELECT *
FROM products
WHERE in_stock = 'Yes'
AND price < 500;

-- not in stock or price > 1000
SELECT *
FROM products
WHERE in_stock = 'No'
OR price > 1000;

-- name.price from highest to lowest
SELECT name, price
FROM products
ORDER BY price DESC;

-- name.price with 18% tax added
SELECT name, price * 1.18 AS price_with_tax
FROM products;