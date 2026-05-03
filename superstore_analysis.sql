-- Project 1: Superstore Sales Analysis
-- Client: Mark, electronics store owner

-- 1. Top 5 states by revenue
SELECT State, SUM(Sales) AS total
FROM orders
GROUP BY State
ORDER BY total DESC
LIMIT 5;

-- 2. Most popular shipping method
SELECT "Ship Mode", COUNT(*) AS total_count
FROM orders
GROUP BY "Ship Mode"
ORDER BY total_count DESC;

-- 3. Sales growth by year
SELECT substr("Order Date", 7, 4) AS year, 
       SUM(Sales) AS total_sales
FROM orders
GROUP BY year
ORDER BY year ASC;
