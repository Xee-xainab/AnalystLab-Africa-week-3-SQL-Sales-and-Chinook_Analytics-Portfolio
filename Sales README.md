# Sales Performance Analysis (SQL)

> **AnalystLab Africa Data Analyst Internship | Week 3 Project**

## Project Overview
This project analyzes sales data with SQL to find out where revenue comes from. It looks at product lines, customers, countries and how sales changed over time.

## Business Problem
A sales team needs to know which products, customers and markets drive revenue, and when sales peak. Without this, it is hard to decide where to focus stock, marketing and account management.

## Dataset
- **File:** `sales_data_sample.csv`
- **Records:** 2,823 order lines (2003 to 2005)
- **Orders:** 307
- **Customers:** 92
- **Product lines:** 7
- **Key columns:** `ORDERNUMBER`, `QUANTITYORDERED`, `SALES`, `ORDERDATE`, `QTR_ID`, `YEAR_ID`, `PRODUCTLINE`, `CUSTOMERNAME`, `CITY`, `COUNTRY`, `DEALSIZE`

## Tools Used
- SQL (SQLite)
- DBeaver

## SQL Concepts Applied
- Aggregate functions: `SUM`, `AVG`, `COUNT`, `COUNT(DISTINCT)`
- `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`
- Common Table Expression (CTE) with a subquery
- Window function: `RANK() OVER()`
- Aliases and `ROUND`

## Analysis Sections
1. **Data Exploration:** total records, orders, customers and product lines
2. **Sales Performance:** total revenue, revenue and average sales by product line
3. **Customer Analysis:** top 10 customers, customers above 50,000, customers above the average, customer ranking
4. **Geographic Analysis:** revenue by country and by city
5. **Time Analysis:** revenue by year and by quarter

## Key Insights
- Total revenue is **10,032,628.85** from 307 orders and 92 customers.
- **Classic Cars** earn the most (3,919,615.66, about 39% of revenue) and have the highest average sale. Trains earn the least.
- **Euro Shopping Channel** and **Mini Gifts Distributors** together bring in about 15.6% of revenue.
- Only **31 of 92 customers** earn more than the average customer revenue.
- The **USA** contributes about 36% of revenue; the USA, Spain and France together make up about 59%.
- Revenue grew about **34%** from 2003 to 2004, and **Q4** is the peak quarter every year.
- 2005 has data for Q1 and Q2 only.

## Recommendations
- Protect the top accounts with dedicated account management.
- Grow mid-tier customers with bundles and repeat-order offers.
- Plan stock and marketing around the Q4 peak.
- Review pricing and range for Trains and Ships.
- Test campaigns in mid-sized countries to reduce reliance on three markets.

## Repository Structure
Sales-Performance-Analysis/
├── Sales_SQL_Queries.sql
├── sales_data_sample.csv
├── Sales_Performance_Analysis_Report.pdf
└── README.md

## How to Run
1. Import `sales_data_sample.csv` into your database as a table named `sales`.
2. Open `Sales_SQL_Queries.sql` in DBeaver or any SQL client.
3. Run the queries section by section.

## Author
**Zainab Danjuma**
Data Analytics student | AltSchool Africa
