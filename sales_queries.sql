CREATE TABLE sales (
    order_id INTEGER,
    customer_name TEXT,
    region TEXT,
    product TEXT,
    amount INTEGER,
    date TEXT
);

INSERT INTO sales VALUES
(1, 'Ali', 'North', 'Laptop', 1200, '2024-01-10'),
(2, 'Sara', 'South', 'Phone', 800, '2024-01-11'),
(3, 'Ali', 'North', 'Mouse', 50, '2024-01-12'),
(4, 'Ayesha', 'East', 'Laptop', 1500, '2024-01-13'),
(5, 'Bilal', 'West', 'Tablet', 600, '2024-01-14'),
(6, 'Sara', 'South', 'Laptop', 1100, '2024-01-15'),
(7, 'Ahmed', 'North', 'Phone', 700, '2024-01-16'),
(8, 'Ali', 'North', 'Keyboard', 100, '2024-01-17'),
(9, 'Ayesha', 'East', 'Phone', 900, '2024-01-18'),
(10, 'Hamza', 'West', 'Mouse', 40, '2024-01-19');

SELECT * FROM sales;

SELECT SUM(amount) AS total_revenue 
FROM sales;

SELECT region, SUM(amount) AS region_revenue
FROM sales
GROUP BY region;

SELECT customer_name AS name, SUM(amount) AS customer_revenue
FROM sales
GROUP BY customer_name
ORDER BY customer_revenue DESC
LIMIT 3;

SELECT product, SUM(amount) AS product_revenue
FROM sales
GROUP BY product;

SELECT region AS top_region, SUM(amount) AS region_revenue
FROM sales
GROUP BY region
ORDER BY region_revenue DESC
LIMIT 1;

SELECT product AS top_product, SUM(amount) AS product_revenue
FROM sales
GROUP BY product
ORDER BY product_revenue DESC
LIMIT 1;

SELECT customer_name AS top_customer, SUM(amount) AS customer_revenue
FROM sales
GROUP BY customer_name
ORDER BY customer_revenue DESC
LIMIT 1;