-- ============================================================
--  SUPERSTORE SALES & PROFIT ANALYSIS
--  SQL Queries for Business Intelligence Dashboard
--  Author: Sirigiri Malakonda Reddy
--  Table : superstore_data
-- ============================================================


-- ────────────────────────────────────────────────────────────
--  SECTION 1: SUMMARY KPIs
--  High-level business metrics for the KPI cards in Power BI
-- ────────────────────────────────────────────────────────────

-- Total Revenue
SELECT SUM("Sales") AS total_sales
FROM superstore_data;

-- Total Profit
SELECT SUM("Profit") AS total_profit
FROM superstore_data;

-- Total Number of Orders
SELECT COUNT("Order ID") AS total_orders
FROM superstore_data;

-- All three KPIs in one query
SELECT
    SUM("Sales")        AS total_sales,
    SUM("Profit")       AS total_profit,
    COUNT("Order ID")   AS total_orders,
    ROUND(SUM("Profit") / NULLIF(SUM("Sales"), 0) * 100, 2) AS profit_margin_pct
FROM superstore_data;


-- ────────────────────────────────────────────────────────────
--  SECTION 2: CATEGORY ANALYSIS
--  Sales and profit breakdown by product category
-- ────────────────────────────────────────────────────────────

-- Sales by Category
SELECT
    "Category",
    SUM("Sales")   AS total_sales,
    SUM("Profit")  AS total_profit
FROM superstore_data
GROUP BY "Category"
ORDER BY total_sales DESC;

-- Category performance within the West Region
SELECT
    "Category",
    SUM("Sales") AS total_sales
FROM superstore_data
WHERE "Region" = 'West'
GROUP BY "Category"
ORDER BY total_sales DESC;

-- Filter for multiple categories (Furniture and Technology)
SELECT *
FROM superstore_data
WHERE "Category" IN ('Furniture', 'Technology');


-- ────────────────────────────────────────────────────────────
--  SECTION 3: REGIONAL ANALYSIS
--  Profit and performance breakdown by US region
-- ────────────────────────────────────────────────────────────

-- Profit by Region (ranked highest to lowest)
SELECT
    "Region",
    SUM("Profit")  AS total_profit,
    SUM("Sales")   AS total_sales
FROM superstore_data
GROUP BY "Region"
ORDER BY total_profit DESC;

-- Detailed order-level data for the West Region
SELECT *
FROM superstore_data
WHERE "Region" = 'West';

-- Loss-making orders in the West Region
SELECT *
FROM superstore_data
WHERE "Region" = 'West'
  AND "Profit" < 0;


-- ────────────────────────────────────────────────────────────
--  SECTION 4: PRODUCT ANALYSIS
--  Top performers and underperforming products
-- ────────────────────────────────────────────────────────────

-- Top 5 Products by Revenue
SELECT
    "Product Name",
    SUM("Sales") AS total_sales
FROM superstore_data
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 5;

-- Products with Negative Profit (loss-makers)
SELECT
    "Product Name",
    SUM("Profit") AS total_profit
FROM superstore_data
GROUP BY "Product Name"
HAVING SUM("Profit") < 0
ORDER BY total_profit ASC;

-- High-value orders (Sales above $1,000)
SELECT *
FROM superstore_data
WHERE "Sales" > 1000
ORDER BY "Sales" DESC;


-- ────────────────────────────────────────────────────────────
--  SECTION 5: SEGMENT ANALYSIS
--  Consumer, Corporate, and Home Office breakdown
-- ────────────────────────────────────────────────────────────

-- Sales and Profit by Customer Segment
SELECT
    "Segment",
    SUM("Sales")   AS total_sales,
    SUM("Profit")  AS total_profit,
    COUNT(DISTINCT "Customer ID") AS unique_customers
FROM superstore_data
GROUP BY "Segment"
ORDER BY total_sales DESC;


