-- ============================================
-- Project: Customer Revenue & Retention Analysis
-- File: 03_customer_metrics.sql
-- Purpose: Analyze customer value and tenure
-- Tool: SQLite (DB Browser)
-- Author: Jeremiah Martins
-- ============================================

-- Average Revenue Per User (ARPU)
SELECT 
    SUM(Revenue) * 1.0 / COUNT(DISTINCT CustomerID) AS arpu
FROM customer_revenue_retention;

-- Average customer tenure (months)
SELECT 
    AVG(TenureMonths) AS avg_tenure_months
FROM customer_revenue_retention;

-- Revenue and tenure per customer
SELECT
    CustomerID,
    SUM(Revenue) AS total_revenue,
    AVG(TenureMonths) AS avg_tenure_months
FROM customer_revenue_retention
GROUP BY CustomerID
ORDER BY total_revenue DESC;