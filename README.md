# SQL Analytics Portfolio: Sales Performance and Chinook Music Store

> **AnalystLab Africa Data Analyst Internship | Week 3 Projects**

## Overview
This repository holds my two Week 3 SQL projects. Each one answers business questions about where revenue comes from, using a different dataset and database.

| Project | Dataset | Database | Focus |
|---|---|---|---|
| Sales Performance Analysis | Sales Data Sample (2,823 order lines, 2003 to 2005) | SQLite | Revenue by product line, customer, country and time |
| Chinook Music Store Analysis | Chinook digital music store | PostgreSQL | Revenue by country, genre, artist and customer |

## Tools Used
- SQL (SQLite and PostgreSQL)
- DBeaver

## SQL Concepts Applied
- Aggregate functions: `SUM`, `AVG`, `COUNT`, `COUNT(DISTINCT)`
- `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT`
- CTEs and subqueries
- Window function: `RANK() OVER()`
- Multi-table `JOIN`s (Chinook)

---

## Project 1: Sales Performance Analysis

### Business Problem
A sales team needs to know which products, customers and markets drive revenue, and when sales peak.

### Dataset
- **File:** `sales_data_sample.csv`
- **Records:** 2,823 order lines | **Orders:** 307 | **Customers:** 92 | **Product lines:** 7

### Analysis Sections
1. Data Exploration
2. Sales Performance
3. Customer Analysis
4. Geographic Analysis
5. Time Analysis

### Key Insights
- Total revenue is **10,032,628.85**.
- **Classic Cars** earn the most (3,919,615.66, about 39% of revenue) and have the highest average sale. Trains earn the least.
- **Euro Shopping Channel** and **Mini Gifts Distributors** together bring in about 15.6% of revenue.
- Only **31 of 92 customers** earn more than the average customer revenue.
- The **USA** contributes about 36% of revenue; the USA, Spain and France together make up about 59%.
- Revenue grew about **34%** from 2003 to 2004, and **Q4** is the peak quarter every year. 2005 has Q1 and Q2 only.

### Recommendations
- Protect the top accounts with dedicated account management.
- Grow mid-tier customers with bundles and repeat-order offers.
- Plan stock and marketing around the Q4 peak.
- Review pricing and range for Trains and Ships.

---

## Project 2: Chinook Music Store Analysis

### Business Problem
A digital music store needs to know which countries, genres, artists and customers drive sales, and where it can grow.

### Business Questions
1. What is the total revenue?
2. How many customers does the store have?
3. Which countries generate the most revenue?
4. Which countries place the most invoices?
5. Who are the top 10 customers?
6. Which are the top 10 best-selling tracks?
7. Which are the top 10 best-selling artists?
8. Which genres generate the most revenue?
9. How do customers rank by revenue?
10. Which customers spend above the average?

### Tables Used
`invoice`, `invoice_line`, `customer`, `track`, `album`, `artist`, `genre`

### Key Insights
- The store earned **$2,328.60** from **59 customers** in **24 countries**, an average of $39.47 per customer.
- The **USA** leads with $523.06 (22.5% of revenue). The top three countries (USA, Canada, France) bring in 43.9%.
- **Rock** is the top genre with $826.65 (35.5%). Rock, Latin, Metal and Alternative & Punk together make up 73.5% of sales.
- **Iron Maiden** is the top artist with $138.60, followed by U2 and Metallica. TV shows such as Lost and The Office also rank in the top ten.
- Each of the top 10 best-selling tracks sold only 2 units, so sales are spread across a large catalog rather than driven by hit songs.
- Customer spending is tightly clustered between $36.64 and $49.62. **22 of 59 customers** spend above the average.

### Recommendations
- Focus marketing on the top markets: USA, Canada, France and Brazil.
- Keep investing in Rock, Metal and Latin titles.
- Reward the 22 above-average customers with loyalty perks.
- Use curated playlists and album bundles to sell more of the long-tail catalog.
- Run targeted campaigns in the smaller, low-revenue markets.

---

## Repository Structure
```
SQL-Analytics-Portfolio/
├── Sales-Performance-Analysis/
│   ├── Sales_SQL_Queries.sql
│   └── sales_data_sample.csv
├── Chinook-Music-Store-Analysis/
│   └── Chinook_Music_Store_SQL_Analysis.sql
├── Reports/
│   ├── SQL_Analytics_Report_Week3.pdf
│   └── Chinook_Music_Store_SQL_Analysis_Report.pdf
└── README.md
```

## How to Run
1. **Sales:** import `sales_data_sample.csv` into a SQLite database as a table named `sales`, then run `Sales_SQL_Queries.sql` section by section.
2. **Chinook:** load the Chinook database into PostgreSQL, then run `Chinook_Music_Store_SQL_Analysis.sql`.

## Author
**Zainab Danjuma**
Data Analytics student | AltSchool Africa


