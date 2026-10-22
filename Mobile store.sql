-- Table created
CREATE TABLE mobiles(id INT, brand VARCHAR(50), model VARCHAR(50), price INT, stock INT);
INSERT INTO mobiles(id, brand, model, price, stock)
VALUES (1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);

-- price > 13000 or stock < 15
SELECT *
FROM mobiles
WHERE price > 13000 OR stock < 15;

-- Increase stock by 5 and set price to 12500 for Narzo 50
UPDATE mobiles
SET stock = stock + 5,
    price = 12500
WHERE model = 'Narzo 50';

-- Delete id 2
DELETE FROM mobiles
WHERE id = 2;

-- lowest and highest price
SELECT MIN(price) AS lowest_price,
       MAX(price) AS highest_price
FROM mobiles;

-- Total stock
SELECT SUM(stock) AS total_stock
FROM mobiles;

-- top 2 expensive mobiles
SELECT *
FROM mobiles
ORDER BY price DESC
LIMIT 2;