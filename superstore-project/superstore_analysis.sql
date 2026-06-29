-- ============================================
-- SUPERSTORE SALES ANALYSIS PROJECT
-- ============================================

-- Select the database
USE superstore_db;

-- --------------------------------------------
-- SECTION 1: DATA LOAD (run once only)
-- --------------------------------------------

-- Clear table before loading (prevents duplicates)
TRUNCATE TABLE orders;

-- Confirm table is empty
SELECT COUNT(*) AS row_count_should_be_zero FROM orders;

-- Load cleaned CSV into the table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Superstore_Cleaned.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Confirm correct row count (should be 9994)
SELECT COUNT(*) AS row_count_should_be_9994 FROM orders;

-- --------------------------------------------
-- SECTION 2: DATA VALIDATION
-- --------------------------------------------

-- Quick look at sample data
SELECT `Order ID`, Sales, Profit 
FROM orders 
LIMIT 10;

-- --------------------------------------------
-- SECTION 3: CATEGORY PROFITABILITY ANALYSIS
-- --------------------------------------------

-- Total sales, profit, and profit margin by category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percent
FROM orders
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Average discount and average profit per order, by category
SELECT 
    Category,
    ROUND(AVG(Discount) * 100, 2) AS Avg_Discount_Percent,
    ROUND(AVG(Profit), 2) AS Avg_Profit_Per_Order
FROM orders
GROUP BY Category
ORDER BY Avg_Discount_Percent DESC;

-- --------------------------------------------
-- SECTION 4: STATE-LEVEL PERFORMANCE
-- --------------------------------------------

-- Top 5 most profitable states
SELECT 
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 5;

-- Bottom 5 states (losing money)
SELECT 
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders
GROUP BY State
ORDER BY Total_Profit ASC
LIMIT 5;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Superstore_Cleaned.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT COUNT(*) FROM orders;
TRUNCATE TABLE orders;
SELECT COUNT(*) FROM orders;
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Superstore_Cleaned.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
SELECT COUNT(*) FROM orders;