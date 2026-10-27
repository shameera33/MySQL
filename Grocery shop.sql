-- Create database
CREATE DATABASE GroceryShop;

-- Select database
USE GroceryShop;

-- products table created
CREATE TABLE products(product_id INT PRIMARY KEY, product_name VARCHAR(50), price INT);

-- New column added
ALTER TABLE products
ADD COLUMN category VARCHAR(50);

-- Remove all items from the table
TRUNCATE TABLE products;

-- Delete entire database
DROP DATABASE GroceryShop;