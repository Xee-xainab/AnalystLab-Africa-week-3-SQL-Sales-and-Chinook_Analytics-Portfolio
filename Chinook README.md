# 🎵 Chinook Music Store SQL Analysis

**AnalystLab Africa Data Analyst Internship | Week 3 Task**

## Overview
This project analyses the Chinook digital music store database using PostgreSQL. It uses 10 SQL queries to find out where revenue comes from and which countries, genres, artists and customers drive sales.

## Business Questions
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


## 🗄️ Database Schema

The Chinook database is a relational database consisting of multiple linked tables.

```text
Customer
    │
    ├── Invoice
    │       │
    │       └── Invoice_Line
    │                 │
    │                 └── Track
    │                        │
    │                        ├── Album
    │                        │      │
    │                        │      └── Artist
    │                        │
    │                        ├── Genre
    │                        └── Media_Type

Employee
    │
    └── Customer (Support Representative)
```

-- This project uses SQL joins to connect these tables and analyze customer purchases, music sales, artists, genres, and revenue trends.

## Key Findings
- The store earned **$2,328.60** from **59 customers** in **24 countries**, an average of $39.47 per customer.
- The **USA** leads with $523.06 (22.5% of revenue). The top three countries (USA, Canada, France) bring in 43.9%.
- **Rock** is the top genre with $826.65 (35.5%). Rock, Latin, Metal and Alternative & Punk together make up 73.5% of sales.
- **Iron Maiden** is the top artist with $138.60, followed by U2 and Metallica. TV shows such as Lost and The Office also rank in the top ten.
- Each of the top 10 best-selling tracks sold only 2 units, so sales are spread across a large catalog rather than driven by hit songs.
- Customer spending is tightly clustered between $36.64 and $49.62. **22 of 59 customers** spend above the average.

## Recommendations
- Focus marketing on the top markets: USA, Canada, France and Brazil.
- Keep investing in Rock, Metal and Latin titles.
- Reward the 22 above-average customers with loyalty perks.
- Use curated playlists and album bundles to sell more of the long-tail catalog.
- Run targeted campaigns in the smaller, low-revenue markets.

## SQL Concepts Applied
- Aggregate functions (`SUM`, `COUNT`, `AVG`)
- `GROUP BY` and `HAVING`
- Multi-table `JOIN`s
- Window function (`RANK() OVER`)
- Subqueries
- `ORDER BY` and `LIMIT`

## Tables Used
`invoice`, `invoice_line`, `customer`, `track`, `album`, `artist`, `genre`

## Tool
PostgreSQL

## Files
- `Chinook_Music_Store_SQL_Analysis.sql`: all 10 queries
- `Chinook_Music_Store_SQL_Analysis_Report.pdf`: full report with charts

## Author
Zainab Danjuma

