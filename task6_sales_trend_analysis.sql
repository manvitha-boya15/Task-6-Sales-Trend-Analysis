-- Task 6: Sales Trend Analysis Using Aggregations

-- 1. Monthly Revenue Analysis

SELECT
    substr(Date,4,2) AS Month,
    SUM([Total Revenue]) AS Monthly_Revenue
FROM online_sales
GROUP BY Month
ORDER BY Month;


-- 2. Monthly Revenue and Order Volume Analysis

SELECT
    substr(Date,7,4) AS Year,
    substr(Date,4,2) AS Month,
    SUM([Total Revenue]) AS Total_Revenue,
    COUNT(DISTINCT [Transaction ID]) AS Order_Volume
FROM online_sales
GROUP BY Year, Month
ORDER BY Year, Month;


-- 3. Top Revenue Month

SELECT
    substr(Date,4,2) AS Month,
    SUM([Total Revenue]) AS Revenue
FROM online_sales
GROUP BY Month
ORDER BY Revenue DESC
LIMIT 1;