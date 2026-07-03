-- -----------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------
-- SALES PERFORMANCE ANALYSIS
-- Author: Danjuma Zainab
-- -----------------------------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------------------------


-- Section 1: DATA EXLORATION
SELECT *
FROM sales 
LIMIT 10;

--1. Total Records
SELECT count(*) as Total_Records
FROM sales;

--2. Total Number of Orders
SELECT COUNT(*) AS Total_Orders
FROM sales;

--3. Number of unique Customers 
SELECT count(DISTINCT CUSTOMERNAME) AS Total_Customers
FROM sales;

-- Number4. of unique Productline 
SELECT count(DISTINCT PRODUCTLINE) AS Total_Product_lines
FROM sales;




-- SECTION 2: SALES PERFORMANCE
--4. Total Revenue
SELECT SUM(SALES) AS Total_Revenue
FROM sales;

--5. Revenue by product_line
SELECT (PRODUCTLINE) AS Product_category,
SUM(SALES) AS Revenue
FROM sales
GROUP BY PRODUCTLINE
ORDER BY Revenue DESC;

--6. Average sales by product_line
SELECT (PRODUCTLINE) AS Product_category,
        ROUND(AVG(SALES),2) AS avg_sales
FROM sales
GROUP BY PRODUCTLINE
ORDER BY avg_sales DESC;


-- SECTION 3: CUSTOMER ANALYSIS

--7. Top 10 customers by revenue
SELECT (CUSTOMERNAME) AS Customer_name,
       SUM(SALES) AS Revenue
FROM sales 
GROUP BY CUSTOMERNAME
ORDER BY revenue DESC
LIMIT 10;

--8. Customer with revenue above 50,000
SELECT (CUSTOMERNAME) AS Customer_name,
		SUM(SALES) AS Revenue
FROM sales 
GROUP BY CUSTOMERNAME 
HAVING SUM(SALES)>50000
ORDER BY Revenue DESC;

--9. Customers with revenue above average
SELECT (CUSTOMERNAME) AS Customer_name, 
		SUM(SALES) AS Revenue
FROM sales 
GROUP BY CUSTOMERNAME 
HAVING SUM(SALES)>(SELECT AVG(SALES) AS Avg_sales
FROM (
		SELECT (CUSTOMERNAME) AS Cutomer_name,
					SUM(SALES) AS Customer_sales,
					AVG(SALES) AS Avg_sales
					FROM sales 
					GROUP BY CUSTOMERNAME
)
  )
ORDER BY Revenue DESC;

--10. Rank Customers by their revenue
SELECT (CUSTOMERNAME) AS Customer_name,
		SUM(SALES) AS Revenue,
		RANK() OVER(ORDER BY SUM(SALES) DESC) AS Customer_rank
FROM sales 
GROUP BY CUSTOMERNAME 



-- SECTION 4: GEOGRAPHIC ANALYSIS

--11. Revenue by country
SELECT (COUNTRY) AS Country,
		SUM(SALES) AS Revenue
FROM sales 
GROUP BY COUNTRY 
ORDER BY Revenue DESC;


--12. Top cities by revenue
SELECT CITY,
		SUM(SALES) AS Revenue
FROM sales 
GROUP BY CITY
ORDER BY Revenue DESC 
LIMIT 10;


-- SECTION 5: TIME ANALYSIS

-- 13. Revenue by year
SELECT (YEAR_ID) AS Year,
		SUM(SALES) AS Revenue
FROM sales 
GROUP BY YEAR_ID
ORDER BY YEAR_ID;

--13. Revenue by Quarter
SELECT (QTR_ID) AS Quarter,
		SUM(SALES) AS Revenue
FROM sales 
GROUP BY QTR_ID
ORDER BY QTR_ID
