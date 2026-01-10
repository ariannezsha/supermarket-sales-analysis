-- Supermarket Sales Analysis
-- Author: ariannezha
-- Purpose: Answer business questions related to sales performance and customer behavior
-- Tools: SQLite

-- 1. Monthly sales analysis
-- Purpose: Identify months with highest and lowest total sales

SELECT 
    month,
    SUM(totalsales) AS total_sales
FROM supermarket_sales_2
GROUP BY month
ORDER BY total_sales DESC;

-- 2. Revenue by branch
-- Purpose: Find which branch generates the highest revenue

SELECT 
    branch,
    SUM(totalsales) AS total_revenue
FROM supermarket_sales_2
GROUP BY branch
ORDER BY total_revenue DESC;

-- 3. Customer type distribution
-- Purpose: Count number of member vs normal customers

SELECT
    customer_type,
    COUNT(*) AS total_customers
FROM supermarket_sales_2
GROUP BY customer_type;

-- 4. Product line analysis
-- Purpose: Identify most and least purchased product lines

SELECT
    product_line,
    SUM(quantity) AS total_quantity_sold
FROM supermarket_sales_2
GROUP BY product_line
ORDER BY total_quantity_sold DESC;
