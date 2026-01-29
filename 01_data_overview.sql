-- ============================================
-- Project: Customer Revenue & Retention Analysis
-- File: 01_data_overview.sql
-- Purpose: Understand dataset size and structure
-- Tool: SQLite (DB Browser)
-- Author: Jeremiah Martins
-- ============================================

-- Total number of customers
SELECT 
    COUNT(DISTINCT CustomerID) AS total_customers
FROM customer_revenue_retention;

-- Total number of transactions
SELECT 
    COUNT(*) AS total_transactions
FROM customer_revenue_retention;

-- Transaction date range
SELECT
    MIN(TransactionDate) AS first_transaction_date,
    MAX(TransactionDate) AS last_transaction_date
FROM customer_revenue_retention;