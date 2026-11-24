-- -----------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------
-- SALES PERFORMANCE ANALYSIS
-- Author: Zainab Danjuma 
-- -----------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------


-- SECTION 1: DATA EXPLORATION
SELECT *
FROM sales 
LIMIT 10;

-- 1. Total Records
SELECT COUNT(*) as Total_Records
FROM sales;

-- 2. Total Number of Orders
SELECT COUNT(DISTINCT ORDERNUMBER) AS Total_Orders
FROM sales;

-- 3. Number of unique Customers 
SELECT COUNT(DISTINCT CUSTOMERNAME) AS Total_Customers
FROM sales;

-- 4. Number of unique product lines
SELECT COUNT(DISTINCT PRODUCTLINE) AS Total_Product_lines
FROM sales;


-- SECTION 2: SALES PERFORMANCE
-- 5. Total Revenue
SELECT ROUND(SUM(SALES),2) AS Total_Revenue
FROM sales;

-- 6. Revenue by product_line
SELECT PRODUCTLINE AS Product_category,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales
GROUP BY PRODUCTLINE
ORDER BY Revenue DESC;

-- 7. Average sales by product_line
SELECT PRODUCTLINE AS Product_category,
       ROUND(AVG(SALES), 2) AS avg_sales
FROM sales
GROUP BY PRODUCTLINE
ORDER BY avg_sales DESC;


-- SECTION 3: CUSTOMER ANALYSIS

-- 8. Top 10 customers by revenue
SELECT CUSTOMERNAME AS Customer_name,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales 
GROUP BY CUSTOMERNAME
ORDER BY revenue DESC
LIMIT 10;

-- 9. Customers with revenue above 50,000
SELECT CUSTOMERNAME AS Customer_name,
	   ROUND(SUM(SALES),2) AS Revenue
FROM sales 
GROUP BY CUSTOMERNAME 
HAVING SUM(SALES)> 50000
ORDER BY Revenue DESC;

-- 10. Customers with revenue above average
WITH customer_revenue AS (
						SELECT CUSTOMERNAME AS Customer_name, 
		                SUM(SALES) AS Revenue
						FROM sales 
						GROUP BY CUSTOMERNAME
)
SELECT Customer_name,
	   ROUND(Revenue, 2) AS Revenue
FROM customer_revenue 
WHERE Revenue > (SELECT AVG(Revenue) FROM customer_revenue)
ORDER BY Revenue DESC;

-- 11. Rank Customers by their revenue
SELECT CUSTOMERNAME AS Customer_name,
	   ROUND(SUM(SALES), 2) AS Revenue,
	   RANK() OVER(ORDER BY SUM(SALES) DESC) AS Customer_rank
FROM sales 
GROUP BY CUSTOMERNAME
ORDER BY Customer_rank;


-- SECTION 4: GEOGRAPHIC ANALYSIS

-- 12. Revenue by country
SELECT COUNTRY AS Country,
	   ROUND(SUM(SALES), 2) AS Revenue
FROM sales 
GROUP BY COUNTRY 
ORDER BY Revenue DESC;


--13. Top cities by revenue
SELECT CITY,
	   ROUND(SUM(SALES), 2) AS Revenue
FROM sales 
GROUP BY CITY
ORDER BY Revenue DESC 
LIMIT 10;


-- SECTION 5: TIME ANALYSIS

-- 14. Revenue by year
SELECT YEAR_ID AS sales_Year,
	   ROUND(SUM(SALES), 2) AS Revenue
FROM sales 
GROUP BY YEAR_ID
ORDER BY YEAR_ID;

--15. Revenue by Quarter
SELECT  YEAR_ID  AS Sales_Year,
		QTR_ID AS Sales_Quarter,
		ROUND(SUM(SALES), 2) AS Revenue
FROM sales 
GROUP BY YEAR_ID, QTR_ID 
ORDER BY YEAR_ID, QTR_ID;
