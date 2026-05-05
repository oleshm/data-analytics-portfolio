-- Project 2: BMW Car Sales Analysis
-- Client: John, BMW dealership owner

-- 1. Top 5 best-selling BMW models
SELECT model, COUNT(*) AS total
FROM sales
GROUP BY model
ORDER BY total DESC
LIMIT 5;

-- 2. Top 5 models by average price
SELECT model, AVG(price) AS avg_price
FROM sales
GROUP BY model
ORDER BY avg_price DESC
LIMIT 5;

-- 3. Sales distribution by transmission type
SELECT transmission, COUNT(*) AS total
FROM sales
GROUP BY transmission
ORDER BY total DESC;

-- 4. Top 5 best-selling semi-automatic models
SELECT model, COUNT(*) AS total
FROM sales
WHERE transmission = 'Semi-Auto'
GROUP BY model
ORDER BY total DESC
LIMIT 5;
