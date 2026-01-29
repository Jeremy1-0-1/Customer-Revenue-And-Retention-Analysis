-- ============================================
-- Project: Customer Revenue & Retention Analysis
-- File: 04_churn_analysis.sql
-- Purpose: Analyze churned customers by segment
-- Tool: SQLite (DB Browser)
-- Author: Jeremiah Martins
-- ============================================

-- Total churned vs active customers
SELECT 
    ChurnFlag,
    COUNT(DISTINCT CustomerID) AS customer_count
FROM customer_revenue_retention
GROUP BY ChurnFlag;

-- Churn by region
SELECT 
    Region,
    COUNT(DISTINCT CustomerID) AS churned_customers
FROM customer_revenue_retention
WHERE ChurnFlag = 'Yes'
GROUP BY Region
ORDER BY churned_customers DESC;

-- Churn by product category
SELECT 
    ProductCategory,
    COUNT(DISTINCT CustomerID) AS churned_customers
FROM customer_revenue_retention
WHERE ChurnFlag = 'Yes'
GROUP BY ProductCategory
ORDER BY churned_customers DESC;

-- Churn vs tenure (average tenure of churned vs active)
SELECT 
    ChurnFlag,
    AVG(TenureMonths) AS avg_tenure_months
FROM customer_revenue_retention
GROUP BY ChurnFlag;