-- GLOBAL SUPERSTORE DATA ANALYSIS
-- SQL Portfolio Project
-- Database: superstore2

-- 1. BASIC ANALYSIS
USE superstore_project;
SHOW TABLES;
SELECT COUNT(*) FROM superstore2;
SELECT
    MIN(`Row ID`) AS Min_ID,
    MAX(`Row ID`) AS Max_ID
FROM superstore2;

-- 2. TOTAL SALES
SELECT `Customer Name`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore2
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
--  TOTAL SALES BY CATEGORY
SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore2
GROUP BY Category;
--  TOTAL SALES BY SUB-CATEGORY
SELECT `Sub-Category`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore2
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;
-- TOTAL SALES BY COUNTRY
SELECT Country,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore2
GROUP BY Country
ORDER BY Total_Sales DESC;
-- TOTAL SALES BY PRODUCT NAME
SELECT `Product Name`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore2
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
 -- TOTAL PROFIT BY PRODUCT NAME
SELECT `Product Name`,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore2
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;
-- SEGMENT
SELECT Segment,
       ROUND(AVG(Sales),2) AS Avg_Sales
FROM superstore2
GROUP BY Segment;
-- TOTAL PROFIT BY REGION
SELECT Region,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore2
GROUP BY Region
ORDER BY Total_Profit DESC;