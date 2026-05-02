
USE BikeStores;

SELECT first_name, last_name, city, phone
FROM sales.customers
WHERE state = 'CA'
AND phone IS NOT NULL


SELECT product_id, product_name, model_year, list_price
FROM production.products
ORDER BY model_year DESC, list_price ASC;


SELECT TOP 5 product_name, list_price
FROM production.products
ORDER BY list_price DESC;


SELECT TOP 5 PERCENT *
FROM production.products
ORDER BY list_price ASC;

-- Row count depends on total rows in table

-- Example: If 321 products → 5% = 16 rows

SELECT product_id, product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;


SELECT product_id, product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;


SELECT product_id, product_name, list_price
FROM production.products
ORDER BY list_price DESC
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;


SELECT DISTINCT state
FROM sales.customers
ORDER BY state ASC;


SELECT DISTINCT state, city
FROM sales.customers
ORDER BY state ASC, city ASC;


SELECT COUNT DISTINCT model_year AS total_model_years
FROM production.products;


SELECT product_id, product_name, brand_id, category_id, list_price
FROM production.products
WHERE list_price BETWEEN 500 AND 1500
AND model_year = 2019 OR model_year = 2020
ORDER BY list_price ASC;

