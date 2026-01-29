-- ============================================
-- Project: Customer Revenue & Retention Analysis
-- File: 02_revenue_analysis.sql
-- Purpose: Identify revenue drivers by customer, region, and product
-- Tool: SQLite (DB Browser)
-- Author: Jeremiah Martins
-- ============================================

-- Total revenue
SELECT 
    SUM(Revenue) AS total_revenue
FROM customer_revenue_retention;

-- Revenue by region
SELECT 
    Region,
    SUM(Revenue) AS revenue
FROM customer_revenue_retention
GROUP BY Region
ORDER BY revenue DESC;

-- Revenue by product category
SELECT 
    ProductCategory,
    SUM(Revenue) AS revenue
FROM customer_revenue_retention
GROUP BY ProductCategory
ORDER BY revenue DESC;

-- Top 10 customers by revenue
SELECT 
    CustomerID,
    SUM(Revenue) AS total_revenue
FROM customer_revenue_retention
GROUP BY CustomerID
ORDER BY total_revenue DESC
LIMIT 10;